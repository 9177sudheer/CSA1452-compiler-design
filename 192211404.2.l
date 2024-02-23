
%{
#include <stdio.h>
%}

DIGIT [0-9]

%%

{DIGIT}     { printf("'%c' is a digit.\n", yytext[0]); }
.           { printf("'%c' is not a digit.\n", yytext[0]); }

%%

int main() {
    yylex();
    return 0;
}
