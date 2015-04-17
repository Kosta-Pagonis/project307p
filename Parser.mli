<<<<<<< HEAD
type token =
  | NUM of (int)
  | ID of (string)
  | STRING of (string)
  | PLUS
  | MINUS
  | STAR
  | DIVIDE
  | UMINUS
  | USTAR
  | PLUSPLUS
  | AMP
  | EQEQ
  | LESS
  | AND
  | OR
  | NOT
  | TRUE
  | FALSE
  | LBRACE
  | RBRACE
  | LBRACK
  | RBRACK
  | LPAR
  | RPAR
  | EQ
  | SEMI
  | COMMA
  | COLON
  | INT
  | VOID
  | IF
  | THEN
  | ELSE
  | FUNCTION
  | FOR
  | WHILE
  | SWITCH
  | CASE
  | BREAK
  | CONTINUE
  | RETURN
  | PRINTSTR
  | PRINTINT
  | DEFAULT
  | EOF

val program :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.program
=======
type token =
  | NUM of (int)
  | ID of (string)
  | STRING of (string)
  | PLUS
  | MINUS
  | STAR
  | DIVIDE
  | UMINUS
  | USTAR
  | PLUSPLUS
  | AMP
  | EQEQ
  | LESS
  | AND
  | OR
  | NOT
  | TRUE
  | FALSE
  | LBRACE
  | RBRACE
  | LBRACK
  | RBRACK
  | LPAR
  | RPAR
  | EQ
  | SEMI
  | COMMA
  | COLON
  | INT
  | VOID
  | IF
  | THEN
  | ELSE
  | FUNCTION
  | FOR
  | WHILE
  | SWITCH
  | CASE
  | BREAK
  | CONTINUE
  | RETURN
  | PRINTSTR
  | PRINTINT
  | DEFAULT
  | EOF

val program :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.program
>>>>>>> d68aeae57ff6fd3d10adab4bd85b031b409a0028
