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

open Parsing;;
let _ = parse_error;;
# 2 "Parser.mly"
open Ast;;


let parse_error s = (* Called by the parser function on error *)
  print_endline s;
  flush stdout
;;

let farr left_type bs = List.fold_left (fun t b -> Array(t, b) ) left_type bs
;;

# 63 "Parser.ml"
let yytransl_const = [|
  260 (* PLUS *);
  261 (* MINUS *);
  262 (* STAR *);
  263 (* DIVIDE *);
  264 (* UMINUS *);
  265 (* USTAR *);
  266 (* PLUSPLUS *);
  267 (* AMP *);
  268 (* EQEQ *);
  269 (* LESS *);
  270 (* AND *);
  271 (* OR *);
  272 (* NOT *);
  273 (* TRUE *);
  274 (* FALSE *);
  275 (* LBRACE *);
  276 (* RBRACE *);
  277 (* LBRACK *);
  278 (* RBRACK *);
  279 (* LPAR *);
  280 (* RPAR *);
  281 (* EQ *);
  282 (* SEMI *);
  283 (* COMMA *);
  284 (* COLON *);
  285 (* INT *);
  286 (* VOID *);
  287 (* IF *);
  288 (* THEN *);
  289 (* ELSE *);
  290 (* FUNCTION *);
  291 (* FOR *);
  292 (* WHILE *);
  293 (* SWITCH *);
  294 (* CASE *);
  295 (* BREAK *);
  296 (* CONTINUE *);
  297 (* RETURN *);
  298 (* PRINTSTR *);
  299 (* PRINTINT *);
  300 (* DEFAULT *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* NUM *);
  258 (* ID *);
  259 (* STRING *);
    0|]

let yylhs = "\255\255\
\001\000\004\000\004\000\004\000\005\000\005\000\006\000\006\000\
\007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
\007\000\007\000\007\000\007\000\007\000\007\000\008\000\008\000\
\008\000\008\000\008\000\008\000\008\000\008\000\002\000\002\000\
\009\000\009\000\010\000\010\000\003\000\003\000\014\000\014\000\
\015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
\015\000\015\000\015\000\015\000\015\000\013\000\013\000\011\000\
\011\000\016\000\016\000\017\000\012\000\012\000\018\000\018\000\
\000\000"

let yylen = "\002\000\
\003\000\001\000\001\000\002\000\000\000\001\000\001\000\003\000\
\003\000\003\000\003\000\003\000\002\000\001\000\001\000\004\000\
\002\000\002\000\004\000\002\000\002\000\003\000\003\000\003\000\
\003\000\003\000\002\000\001\000\001\000\003\000\000\000\001\000\
\001\000\002\000\004\000\010\000\000\000\001\000\001\000\002\000\
\001\000\002\000\004\000\005\000\007\000\007\000\005\000\009\000\
\002\000\002\000\005\000\005\000\003\000\003\000\002\000\000\000\
\004\000\005\000\005\000\003\000\000\000\001\000\002\000\004\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\003\000\002\000\065\000\000\000\000\000\032\000\
\000\000\015\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\041\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\038\000\000\000\000\000\004\000\
\034\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\049\000\050\000\000\000\000\000\
\001\000\000\000\000\000\000\000\000\000\020\000\000\000\000\000\
\042\000\040\000\000\000\000\000\000\000\000\000\006\000\000\000\
\053\000\022\000\000\000\028\000\029\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\062\000\035\000\
\019\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\
\043\000\000\000\000\000\000\000\008\000\030\000\000\000\000\000\
\025\000\026\000\000\000\000\000\047\000\000\000\051\000\052\000\
\057\000\000\000\000\000\000\000\000\000\000\000\000\000\064\000\
\000\000\045\000\000\000\000\000\046\000\000\000\000\000\000\000\
\000\000\000\000\048\000\000\000\055\000\000\000\036\000\000\000\
\059\000\058\000\054\000\000\000\060\000"

let yydgoto = "\002\000\
\005\000\006\000\027\000\007\000\062\000\063\000\028\000\072\000\
\008\000\009\000\061\000\086\000\138\000\029\000\030\000\127\000\
\146\000\087\000"

let yysindex = "\024\000\
\021\255\000\000\000\000\000\000\000\000\143\255\024\255\000\000\
\021\255\000\000\012\255\060\255\060\255\060\255\060\255\143\255\
\060\255\000\000\032\255\036\255\041\255\049\255\065\255\069\255\
\073\255\084\255\116\000\011\255\000\000\143\255\035\255\000\000\
\000\000\060\255\227\000\227\000\227\000\227\000\101\255\100\000\
\234\255\143\255\234\255\060\255\000\000\000\000\119\255\060\255\
\000\000\060\255\060\255\060\255\060\255\000\000\060\255\060\255\
\000\000\000\000\123\255\021\255\099\255\104\255\000\000\154\255\
\000\000\000\000\234\255\000\000\000\000\234\255\215\000\251\254\
\103\255\254\254\193\000\110\255\205\000\117\255\117\255\117\255\
\117\255\093\255\220\255\124\255\046\255\126\255\000\000\000\000\
\000\000\060\255\067\255\057\000\039\255\060\255\060\255\234\255\
\234\255\143\255\234\255\143\255\128\255\125\255\131\255\000\000\
\000\000\142\255\144\255\133\255\000\000\000\000\227\000\227\000\
\000\000\000\000\135\255\013\255\000\000\132\255\000\000\000\000\
\000\000\021\255\021\255\143\255\143\255\171\255\153\255\000\000\
\143\255\000\000\152\255\149\255\000\000\150\255\143\255\143\255\
\107\255\164\255\000\000\241\254\000\000\009\000\000\000\166\255\
\000\000\000\000\000\000\143\255\000\000"

let yyrindex = "\000\000\
\092\000\000\000\000\000\000\000\000\000\192\000\000\000\000\000\
\049\000\000\000\183\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\008\000\173\255\000\000\
\000\000\176\255\228\000\244\000\250\000\010\001\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\177\255\000\000\000\000\000\000\178\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\207\255\132\000\156\000\
\180\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\051\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\173\255\179\255\000\000\000\000\000\000\064\255\141\255\
\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\100\255\000\000\000\000\000\000\000\000\000\000\
\165\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\093\000\086\000\202\255\000\000\128\000\246\255\233\255\
\214\000\000\000\122\000\000\000\000\000\240\255\225\255\097\000\
\000\000\120\000"

let yytablesize = 549
let yytable = "\039\000\
\044\000\035\000\036\000\037\000\038\000\085\000\040\000\039\000\
\096\000\097\000\073\000\096\000\097\000\058\000\050\000\051\000\
\052\000\053\000\098\000\074\000\054\000\100\000\126\000\064\000\
\001\000\031\000\096\000\097\000\144\000\032\000\071\000\055\000\
\071\000\075\000\034\000\056\000\057\000\077\000\125\000\078\000\
\079\000\080\000\081\000\091\000\082\000\083\000\093\000\107\000\
\033\000\003\000\004\000\032\000\096\000\097\000\041\000\059\000\
\071\000\060\000\042\000\092\000\010\000\011\000\110\000\043\000\
\012\000\013\000\115\000\085\000\117\000\014\000\015\000\044\000\
\113\000\114\000\027\000\116\000\027\000\023\000\023\000\064\000\
\096\000\097\000\017\000\111\000\112\000\071\000\071\000\023\000\
\071\000\023\000\045\000\031\000\130\000\131\000\046\000\047\000\
\050\000\051\000\052\000\053\000\031\000\031\000\054\000\139\000\
\031\000\031\000\048\000\010\000\011\000\031\000\031\000\012\000\
\013\000\055\000\104\000\049\000\014\000\015\000\031\000\140\000\
\065\000\076\000\031\000\084\000\088\000\031\000\142\000\089\000\
\099\000\017\000\031\000\149\000\141\000\102\000\031\000\031\000\
\031\000\055\000\031\000\031\000\031\000\031\000\031\000\010\000\
\011\000\106\000\118\000\012\000\013\000\108\000\119\000\123\000\
\014\000\015\000\024\000\024\000\120\000\050\000\051\000\052\000\
\053\000\016\000\059\000\054\000\024\000\017\000\024\000\124\000\
\018\000\126\000\122\000\132\000\133\000\019\000\055\000\135\000\
\136\000\020\000\021\000\022\000\090\000\023\000\024\000\143\000\
\025\000\026\000\014\000\014\000\014\000\014\000\137\000\037\000\
\014\000\148\000\014\000\014\000\014\000\014\000\056\000\005\000\
\061\000\007\000\063\000\014\000\014\000\037\000\014\000\014\000\
\014\000\014\000\009\000\009\000\009\000\009\000\134\000\129\000\
\009\000\109\000\009\000\009\000\009\000\009\000\033\000\050\000\
\051\000\052\000\053\000\121\000\009\000\054\000\009\000\009\000\
\009\000\009\000\010\000\011\000\145\000\000\000\012\000\013\000\
\055\000\128\000\000\000\014\000\015\000\105\000\000\000\000\000\
\000\000\067\000\068\000\069\000\000\000\000\000\000\000\000\000\
\070\000\044\000\044\000\000\000\000\000\044\000\044\000\000\000\
\000\000\000\000\044\000\044\000\050\000\051\000\052\000\053\000\
\000\000\000\000\054\000\044\000\044\000\000\000\000\000\044\000\
\044\000\000\000\044\000\039\000\000\000\055\000\000\000\044\000\
\000\000\000\000\147\000\044\000\044\000\044\000\044\000\044\000\
\044\000\044\000\044\000\044\000\044\000\039\000\000\000\000\000\
\039\000\033\000\033\000\039\000\000\000\033\000\033\000\000\000\
\000\000\000\000\033\000\033\000\050\000\051\000\052\000\053\000\
\000\000\000\000\054\000\033\000\094\000\095\000\000\000\033\000\
\000\000\000\000\033\000\000\000\000\000\055\000\000\000\033\000\
\066\000\000\000\000\000\033\000\033\000\033\000\000\000\033\000\
\033\000\033\000\033\000\033\000\031\000\031\000\000\000\000\000\
\031\000\031\000\000\000\000\000\000\000\031\000\031\000\050\000\
\051\000\052\000\053\000\000\000\000\000\054\000\031\000\000\000\
\000\000\000\000\031\000\000\000\000\000\031\000\000\000\000\000\
\055\000\000\000\031\000\066\000\000\000\000\000\031\000\031\000\
\031\000\000\000\031\000\031\000\000\000\031\000\031\000\010\000\
\010\000\010\000\010\000\000\000\000\000\010\000\000\000\010\000\
\010\000\010\000\010\000\000\000\000\000\000\000\000\000\000\000\
\000\000\010\000\000\000\010\000\010\000\010\000\010\000\011\000\
\011\000\011\000\011\000\000\000\000\000\011\000\000\000\011\000\
\011\000\011\000\011\000\000\000\000\000\000\000\000\000\000\000\
\000\000\011\000\000\000\011\000\011\000\011\000\011\000\012\000\
\012\000\012\000\012\000\000\000\000\000\012\000\000\000\012\000\
\012\000\012\000\012\000\000\000\050\000\051\000\052\000\053\000\
\000\000\012\000\054\000\012\000\012\000\012\000\012\000\000\000\
\050\000\051\000\052\000\053\000\000\000\055\000\054\000\000\000\
\101\000\000\000\050\000\051\000\052\000\053\000\000\000\000\000\
\054\000\055\000\094\000\095\000\103\000\000\000\050\000\051\000\
\052\000\053\000\000\000\055\000\054\000\000\000\000\000\013\000\
\013\000\013\000\013\000\000\000\000\000\000\000\000\000\055\000\
\000\000\013\000\000\000\013\000\013\000\013\000\013\000\017\000\
\017\000\017\000\017\000\000\000\000\000\021\000\021\000\021\000\
\021\000\017\000\000\000\017\000\017\000\017\000\017\000\021\000\
\000\000\021\000\021\000\021\000\021\000\018\000\018\000\018\000\
\018\000\000\000\000\000\000\000\000\000\000\000\000\000\018\000\
\000\000\018\000\018\000\018\000\018\000"

let yycheck = "\016\000\
\000\000\012\000\013\000\014\000\015\000\060\000\017\000\000\000\
\014\001\015\001\042\000\014\001\015\001\030\000\004\001\005\001\
\006\001\007\001\024\001\043\000\010\001\024\001\038\001\034\000\
\001\000\002\001\014\001\015\001\044\001\006\001\041\000\021\001\
\043\000\044\000\023\001\025\001\026\001\048\000\026\001\050\000\
\051\000\052\000\053\000\067\000\055\000\056\000\070\000\002\001\
\000\000\029\001\030\001\006\001\014\001\015\001\023\001\021\001\
\067\000\023\001\023\001\070\000\001\001\002\001\024\001\023\001\
\005\001\006\001\098\000\122\000\100\000\010\001\011\001\023\001\
\096\000\097\000\024\001\099\000\026\001\014\001\015\001\090\000\
\014\001\015\001\023\001\094\000\095\000\096\000\097\000\024\001\
\099\000\026\001\026\001\000\000\124\000\125\000\026\001\023\001\
\004\001\005\001\006\001\007\001\001\001\002\001\010\001\135\000\
\005\001\006\001\023\001\001\001\002\001\010\001\011\001\005\001\
\006\001\021\001\022\001\000\000\010\001\011\001\019\001\136\000\
\020\001\003\001\023\001\001\001\026\001\026\001\137\000\024\001\
\026\001\023\001\031\001\148\000\026\001\024\001\035\001\036\001\
\037\001\021\001\039\001\040\001\041\001\042\001\043\001\001\001\
\002\001\022\001\019\001\005\001\006\001\024\001\026\001\019\001\
\010\001\011\001\014\001\015\001\026\001\004\001\005\001\006\001\
\007\001\019\001\021\001\010\001\024\001\023\001\026\001\033\001\
\026\001\038\001\027\001\001\001\020\001\031\001\021\001\024\001\
\028\001\035\001\036\001\037\001\027\001\039\001\040\001\020\001\
\042\001\043\001\004\001\005\001\006\001\007\001\041\001\000\000\
\010\001\028\001\012\001\013\001\014\001\015\001\026\001\024\001\
\024\001\024\001\024\001\021\001\022\001\041\001\024\001\025\001\
\026\001\027\001\004\001\005\001\006\001\007\001\129\000\123\000\
\010\001\090\000\012\001\013\001\014\001\015\001\009\000\004\001\
\005\001\006\001\007\001\106\000\022\001\010\001\024\001\025\001\
\026\001\027\001\001\001\002\001\140\000\255\255\005\001\006\001\
\021\001\122\000\255\255\010\001\011\001\026\001\255\255\255\255\
\255\255\016\001\017\001\018\001\255\255\255\255\255\255\255\255\
\023\001\001\001\002\001\255\255\255\255\005\001\006\001\255\255\
\255\255\255\255\010\001\011\001\004\001\005\001\006\001\007\001\
\255\255\255\255\010\001\019\001\020\001\255\255\255\255\023\001\
\024\001\255\255\026\001\020\001\255\255\021\001\255\255\031\001\
\255\255\255\255\026\001\035\001\036\001\037\001\038\001\039\001\
\040\001\041\001\042\001\043\001\044\001\038\001\255\255\255\255\
\041\001\001\001\002\001\044\001\255\255\005\001\006\001\255\255\
\255\255\255\255\010\001\011\001\004\001\005\001\006\001\007\001\
\255\255\255\255\010\001\019\001\012\001\013\001\255\255\023\001\
\255\255\255\255\026\001\255\255\255\255\021\001\255\255\031\001\
\024\001\255\255\255\255\035\001\036\001\037\001\255\255\039\001\
\040\001\041\001\042\001\043\001\001\001\002\001\255\255\255\255\
\005\001\006\001\255\255\255\255\255\255\010\001\011\001\004\001\
\005\001\006\001\007\001\255\255\255\255\010\001\019\001\255\255\
\255\255\255\255\023\001\255\255\255\255\026\001\255\255\255\255\
\021\001\255\255\031\001\024\001\255\255\255\255\035\001\036\001\
\037\001\255\255\039\001\040\001\255\255\042\001\043\001\004\001\
\005\001\006\001\007\001\255\255\255\255\010\001\255\255\012\001\
\013\001\014\001\015\001\255\255\255\255\255\255\255\255\255\255\
\255\255\022\001\255\255\024\001\025\001\026\001\027\001\004\001\
\005\001\006\001\007\001\255\255\255\255\010\001\255\255\012\001\
\013\001\014\001\015\001\255\255\255\255\255\255\255\255\255\255\
\255\255\022\001\255\255\024\001\025\001\026\001\027\001\004\001\
\005\001\006\001\007\001\255\255\255\255\010\001\255\255\012\001\
\013\001\014\001\015\001\255\255\004\001\005\001\006\001\007\001\
\255\255\022\001\010\001\024\001\025\001\026\001\027\001\255\255\
\004\001\005\001\006\001\007\001\255\255\021\001\010\001\255\255\
\024\001\255\255\004\001\005\001\006\001\007\001\255\255\255\255\
\010\001\021\001\012\001\013\001\024\001\255\255\004\001\005\001\
\006\001\007\001\255\255\021\001\010\001\255\255\255\255\012\001\
\013\001\014\001\015\001\255\255\255\255\255\255\255\255\021\001\
\255\255\022\001\255\255\024\001\025\001\026\001\027\001\012\001\
\013\001\014\001\015\001\255\255\255\255\012\001\013\001\014\001\
\015\001\022\001\255\255\024\001\025\001\026\001\027\001\022\001\
\255\255\024\001\025\001\026\001\027\001\012\001\013\001\014\001\
\015\001\255\255\255\255\255\255\255\255\255\255\255\255\022\001\
\255\255\024\001\025\001\026\001\027\001"

let yynames_const = "\
  PLUS\000\
  MINUS\000\
  STAR\000\
  DIVIDE\000\
  UMINUS\000\
  USTAR\000\
  PLUSPLUS\000\
  AMP\000\
  EQEQ\000\
  LESS\000\
  AND\000\
  OR\000\
  NOT\000\
  TRUE\000\
  FALSE\000\
  LBRACE\000\
  RBRACE\000\
  LBRACK\000\
  RBRACK\000\
  LPAR\000\
  RPAR\000\
  EQ\000\
  SEMI\000\
  COMMA\000\
  COLON\000\
  INT\000\
  VOID\000\
  IF\000\
  THEN\000\
  ELSE\000\
  FUNCTION\000\
  FOR\000\
  WHILE\000\
  SWITCH\000\
  CASE\000\
  BREAK\000\
  CONTINUE\000\
  RETURN\000\
  PRINTSTR\000\
  PRINTINT\000\
  DEFAULT\000\
  EOF\000\
  "

let yynames_block = "\
  NUM\000\
  ID\000\
  STRING\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'mdecls) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'mstmts) in
    Obj.repr(
# 36 "Parser.mly"
                                  ( (_1, _2) )
# 412 "Parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 38 "Parser.mly"
                                  ( Void )
# 418 "Parser.ml"
               : 'ctype))
; (fun __caml_parser_env ->
    Obj.repr(
# 39 "Parser.mly"
                                  ( Int )
# 424 "Parser.ml"
               : 'ctype))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'ctype) in
    Obj.repr(
# 40 "Parser.mly"
                                  ( Pointer _1 )
# 431 "Parser.ml"
               : 'ctype))
; (fun __caml_parser_env ->
    Obj.repr(
# 43 "Parser.mly"
                                 ( [] )
# 437 "Parser.ml"
               : 'margs))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'args) in
    Obj.repr(
# 44 "Parser.mly"
                                 ( _1 )
# 444 "Parser.ml"
               : 'margs))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 47 "Parser.mly"
                                 ( [_1] )
# 451 "Parser.ml"
               : 'args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'args) in
    Obj.repr(
# 48 "Parser.mly"
                                 ( _1::_3 )
# 459 "Parser.ml"
               : 'args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 50 "Parser.mly"
                                 ( Add (_1, _3) )
# 467 "Parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 51 "Parser.mly"
                                 ( Sub (_1, _3) )
# 475 "Parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 52 "Parser.mly"
                                 ( Mul (_1, _3) )
# 483 "Parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 53 "Parser.mly"
                                 ( Div (_1, _3) )
# 491 "Parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 54 "Parser.mly"
                                 ( Neg _2 )
# 498 "Parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 55 "Parser.mly"
                                 ( Id _1 )
# 505 "Parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 56 "Parser.mly"
                                 ( IntConst _1 )
# 512 "Parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 57 "Parser.mly"
                                 ( At (_1, _3) )
# 520 "Parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 58 "Parser.mly"
                                 ( Deref _2 )
# 527 "Parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 59 "Parser.mly"
                                 ( AddressOf _2 )
# 534 "Parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'margs) in
    Obj.repr(
# 60 "Parser.mly"
                                 ( Call (_1, _3) )
# 542 "Parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 61 "Parser.mly"
                                ( Post _1 )
# 549 "Parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 62 "Parser.mly"
                                ( Pre _2 )
# 556 "Parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 63 "Parser.mly"
                                 ( _2 )
# 563 "Parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 66 "Parser.mly"
                                 ( Equal (_1, _3) )
# 571 "Parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 67 "Parser.mly"
                                 ( Less (_1, _3) )
# 579 "Parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'cond) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'cond) in
    Obj.repr(
# 68 "Parser.mly"
                                 ( And (_1, _3) )
# 587 "Parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'cond) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'cond) in
    Obj.repr(
# 69 "Parser.mly"
                                 ( Or (_1, _3) )
# 595 "Parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'cond) in
    Obj.repr(
# 70 "Parser.mly"
                                 ( Not (_2) )
# 602 "Parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    Obj.repr(
# 71 "Parser.mly"
                                 ( True )
# 608 "Parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    Obj.repr(
# 72 "Parser.mly"
                                 ( False )
# 614 "Parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'cond) in
    Obj.repr(
# 73 "Parser.mly"
                                 ( _2 )
# 621 "Parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    Obj.repr(
# 75 "Parser.mly"
                ( [] )
# 627 "Parser.ml"
               : 'mdecls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'decls) in
    Obj.repr(
# 76 "Parser.mly"
                ( _1 )
# 634 "Parser.ml"
               : 'mdecls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'decl) in
    Obj.repr(
# 78 "Parser.mly"
                     ( [_1] )
# 641 "Parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'decls) in
    Obj.repr(
# 79 "Parser.mly"
                     ( _1::_2 )
# 649 "Parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'ctype) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'brackets) in
    Obj.repr(
# 81 "Parser.mly"
                                 ( VarDecl(farr _1 _3, _2) )
# 658 "Parser.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 9 : 'ctype) in
    let _2 = (Parsing.peek_val __caml_parser_env 8 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 6 : 'margns) in
    let _7 = (Parsing.peek_val __caml_parser_env 3 : 'mdecls) in
    let _8 = (Parsing.peek_val __caml_parser_env 2 : 'mstmts) in
    let _9 = (Parsing.peek_val __caml_parser_env 1 : 'return) in
    Obj.repr(
# 82 "Parser.mly"
                                                                       ( 
            FunDecl (_1,_2,_4, (List.map (fun  (VarDecl x) -> x) _7),_8,_9) 
          )
# 672 "Parser.ml"
               : 'decl))
; (fun __caml_parser_env ->
    Obj.repr(
# 87 "Parser.mly"
                ( [] )
# 678 "Parser.ml"
               : 'mstmts))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'stmts) in
    Obj.repr(
# 88 "Parser.mly"
                ( _1 )
# 685 "Parser.ml"
               : 'mstmts))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 90 "Parser.mly"
               ( [_1] )
# 692 "Parser.ml"
               : 'stmts))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmts) in
    Obj.repr(
# 91 "Parser.mly"
                     ( _1::_2 )
# 700 "Parser.ml"
               : 'stmts))
; (fun __caml_parser_env ->
    Obj.repr(
# 94 "Parser.mly"
                                           ( Empty )
# 706 "Parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 95 "Parser.mly"
                                           ( Expr _1 )
# 713 "Parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 96 "Parser.mly"
                                           ( VarAss (_1, _3) )
# 721 "Parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'cond) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 97 "Parser.mly"
                                           ( IfThen (_3, _5) )
# 729 "Parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'cond) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 98 "Parser.mly"
                                           ( IfThenElse (_3, _5, _7) )
# 738 "Parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'cases) in
    Obj.repr(
# 99 "Parser.mly"
                                                   ( let (cases, def) = _6 in Switch (_3, cases, def) )
# 746 "Parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'cond) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 100 "Parser.mly"
                                           ( While (_3, _5) )
# 754 "Parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'stmt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'cond) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 101 "Parser.mly"
                                                      ( For (_3, _5, _7, _9) )
# 764 "Parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 102 "Parser.mly"
                                           ( Break )
# 770 "Parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 103 "Parser.mly"
                                           ( Continue )
# 776 "Parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    Obj.repr(
# 104 "Parser.mly"
                                           ( PrintStr _3 )
# 783 "Parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    Obj.repr(
# 105 "Parser.mly"
                                           ( PrintInt _3 )
# 790 "Parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    Obj.repr(
# 106 "Parser.mly"
                                           ( List _2 )
# 797 "Parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 109 "Parser.mly"
                          ( _2 )
# 804 "Parser.ml"
               : 'return))
; (fun __caml_parser_env ->
    Obj.repr(
# 110 "Parser.mly"
                      ( IntConst 0 )
# 810 "Parser.ml"
               : 'return))
; (fun __caml_parser_env ->
    Obj.repr(
# 113 "Parser.mly"
                                        ( [] )
# 816 "Parser.ml"
               : 'brackets))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'brackets) in
    Obj.repr(
# 114 "Parser.mly"
                                        ( _2::_4 )
# 824 "Parser.ml"
               : 'brackets))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'default) in
    Obj.repr(
# 117 "Parser.mly"
                                       ( ([(_2,_4)],_5) )
# 833 "Parser.ml"
               : 'cases))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'cases) in
    Obj.repr(
# 118 "Parser.mly"
                                       ( let (xs,def) = _5 in ((_2,_4)::xs,def) )
# 842 "Parser.ml"
               : 'cases))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'stmts) in
    Obj.repr(
# 121 "Parser.mly"
                              ( _3 )
# 849 "Parser.ml"
               : 'default))
; (fun __caml_parser_env ->
    Obj.repr(
# 124 "Parser.mly"
                                   ( [] )
# 855 "Parser.ml"
               : 'margns))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'argns) in
    Obj.repr(
# 125 "Parser.mly"
                                   ( _1 )
# 862 "Parser.ml"
               : 'margns))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'ctype) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 128 "Parser.mly"
                                   ( [(_1,_2)] )
# 870 "Parser.ml"
               : 'argns))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'ctype) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'argns) in
    Obj.repr(
# 129 "Parser.mly"
                                   ( (_1,_2)::_4 )
# 879 "Parser.ml"
               : 'argns))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)
;;
