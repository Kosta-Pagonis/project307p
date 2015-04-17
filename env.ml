open Ast;;
open Store;;

(* functions to create a symbol table to pass around during evaluation. *)

type varEntry = {
  vtype: ctype;
  kind: varkind;
  loc: location; (* Location contains absolute memory location for static *)
                 (* variables, and offset from base of AR for local vars. *)
};;

type funEntry = {
  ftype: ctype;
  syms: symEntry list;
  body: stmt list;
  rv: expr
}

and symEntry = Var of varEntry | Fun of funEntry
;;

type symTable = symEntry list

let procVarDecl (vkind, symTab) (typ, name) = 
  let ventry = Var({vtype=typ; kind=vkind; loc= -1})
  in
  (vkind, symTab @ [ventry])

let procVarDecls vkind symTab decls = 
  List.fold_left procVarDecl (vkind, symTab) decls

let procDecl symTab decl = match decl with
  | VarDecl (typ, name) -> 
    let (_, symTab') = procVarDecl (Static, symTab) (typ, name) 
    in symTab'
  | FunDecl (typ, name, paramDecls, localDecls, stmts, expr) ->
    let (_, fnSymTab1) = procVarDecls Param [] paramDecls in
    let (_,  fnSymTab) = procVarDecls Local fnSymTab1 localDecls in
    let   fnEntry = Fun({ftype=typ; syms=fnSymTab; body=stmts; rv=expr}) 
    in
    symTab @ [fnEntry]

let procDecls decls = List.fold_left procDecl [] decls
;;

let lookup name symTab= List.assoc name symTab

(* Environment is a list of symbol tables. Conceptually, it represents a scope
   stack. The first element is the symbol table for the current block, the next
   element is the symbol table for the next outer level, and so on. (In C-flat,
   we need at most two symbols tables on scope stack *)

type env = symTable list;;

let initEnv decls = [(procDecls decls)];;

let binding_of env name = 
  try 
    lookup name (List.hd env)
  with Not_found ->
    lookup name (List.hd (List.tl env))
;;
