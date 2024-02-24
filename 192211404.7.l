%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[0-9]+          { printf("Number: %s\n", yytext); }
[a-zA-Z]+       { printf("Word: %s\n", yytext); }
[ \t\n]         ; // Ignore whitespace characters
.               ;

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
