
%{
#include <stdio.h>
%}

DIGIT [0-9]
%%
{DIGIT}{9} {printf("Valid mobile number: %s\n", yytext);}
[789]{DIGIT}{9} {printf("Valid mobile number: %s\n", yytext);}
.|\n    ;
%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter mobile numbers (press Ctrl+D to exit):\n");
    yylex();
    return 0;
}