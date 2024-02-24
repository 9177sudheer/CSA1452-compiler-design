
%{
#include <stdio.h>
#include <stdlib.h>
%}

%option noyywrap

%%
[0-9]+ {
    printf("Number: %s\n", yytext);
}

[-+*/] {
    printf("Operator: %c\n", yytext[0]);
}

\n {
    // Ignore newline characters
}

. {
    printf("Invalid character: %c\n", yytext[0]);
}
%%

int main() {
    yylex();
    return 0;
}
