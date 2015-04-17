open Ast;;
open Env;;
open Store;;

type basePtr = int;;

=======
let allocateMem env = env;; (* TODO: implement this function *)

(* eval_expr and eval_cond don't return a store, but you might have to modify
that because in full C-flat they do have side effets (pre- and post-increment,
function calls) *)

(* eval_expr: expr -> basePtr -> env -> store -> value *)
let rec eval_expr expr bp env store = match expr with
    Add (e1, e2) -> 
      let r1 = eval_expr e1 bp env store in
      let r2 = eval_expr e2 bp env store in
      r1 + r2
(* eval_expr: expr -> proc_state -> env -> store -> value *)
let rec eval_expr expr ps env store = match expr with
    Add (e1, e2) -> 
      let r1 = eval_expr e1 ps env store in
      let r2 = eval_expr e2 ps env store in
      r1 + r2

  | Sub (e1, e2) ->
      let r1 = eval_expr e1 ps env store in
      let r2 = eval_expr e2 ps env store in
      r1 - r2
  | Mul (e1, e2)->
      let r1 = eval_expr e1 ps env store in
      let r2 = eval_expr e2 ps env store in
      r1 * r2 
  | Div (e1, e2)->
      let r1 = eval_expr e1 ps env store in
      let r2 = eval_expr e2 ps env store in
      r1 / r2
  | Neg (e1) ->
      let r1 = eval_expr e1 ps env store in
      -r1
  | IntConst i -> i
(* TODO: add more *)
;;

(* eval_expr: expr -> basePtr -> env -> store -> value *)
let rec eval_cond cond bp env store = match cond with
  Equal (e1, e2) ->
    let r1 = eval_expr e1 bp env store in
    let r2 = eval_expr e2 bp env store in
(* eval_expr: expr -> proc_state -> env -> store -> value *)
let rec eval_cond cond ps env store = match cond with
  Equal (e1, e2) ->
    let r1 = eval_expr e1 ps env store in
    let r2 = eval_expr e2 ps env store in
    r1 == r2
(* TODO: add more *)
;;

type stmtEvalRes = Next | Break | Continue;;

(* eval_stmt: stmt -> basePtr -> env -> store -> stmtEvalRes*basePtr*store *)
let rec eval_stmt stmt bp env store = match stmt with
| PrintInt e ->
    let r = eval_expr e bp env store in
    print_int r; (Next, bp, store)
| PrintStr s ->
    print_string (Str.global_replace (Str.regexp "\\\\n") "\n" s); 
    (* Escaping characters here because it's not done in the parser *)
    (Next, bp, store)
| List (stmt1::stmts) -> eval_stmt stmt1 bp env store
type stmtEvalRes = Next | BreakOut | ContinueOn;;

(* eval_stmt: stmt -> proc_state -> env -> store -> stmtEvalRes*proc_state *)
let rec eval_stmt stmt ps env store = match stmt with
| PrintInt e ->
    let r = eval_expr e ps env store in
    print_int r; (Next, ps, store)
| PrintStr s ->
    print_string (Str.global_replace (Str.regexp "\\\\n") "\n" s); 
    (* Escaping characters here because it's not done in the parser *)
    (Next, ps, store)
| List (stmt1::stmts) -> eval_stmt stmt1 ps env store
  (* TODO: complete this case so that all statements in the list evaluated *)
;;

