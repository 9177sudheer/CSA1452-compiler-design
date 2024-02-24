%{
#include <stdio.h>
%}

%option noyywrap

%%

[a-zA-Z]+ {
    printf("Word: %s\n", yytext);
}

"=="|"!="|"<="|">="|"<"|">" {
    printf("Relational Operator: %s\n", yytext);
}

.|\n {
    // Ignore other characters
}

%%

int main() {
    yylex();
    return 0;
}
