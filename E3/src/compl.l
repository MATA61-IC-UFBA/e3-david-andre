%option noyywrap yylineno
%{

// noyywrap    - no need to deal with multiple input files
// yylineno    - variable to track line numbers 
//               that copies otherwise unmatched input to yyout.

#include "token.h"

%}

%%

array { return ARR; }

char { return CHA; }

string { return STRING; }

boolean { return BOO; }

else { return ELS; }

false { return FAL; }

for { return FOR; }

function { return FUN; }

if { return IF; }

integer { return INT; }

print { return PRINT; }

return { return RET; }

true { return TRU; }

void { return VOID; }

while { return WHILE; }

[0-9]+ { return NUM; }

"+" { return 43; }

"-" { return 45; }

"*" { return 42; }

"/" { return 47; }

"%" { return 37; }

"!" { return 33; }

"<" { return 60; }

">" { return 62; }

"=" { return 61; }

":" { return 58; }

";" { return 59; }

"," { return 44; }

"(" { return 40; }

")" { return 41; }

"{" { return 123; }

"}" { return 125; }

"[" { return 91; }

"]" { return 93; }

">=" { return MEQ; }

"<=" { return LEQ; }

"==" { return EQU; }

"!=" { return DEF; }

"&&" { return AND; }

"||" { return OR; }

[a-zA-Z0-9]+ { return ID; }

"\""[^\n\"]*"\""   { return STR;  }

'([^'\n\\]|\\.)' { return CHAR; }

[ \t\n\r]  { }

[//]{2}.*        {  }



. 				{ return ERROR; }


%%


