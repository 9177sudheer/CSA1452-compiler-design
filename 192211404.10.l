
%{
#include <stdio.h>
#include <stdbool.h>
%}

%option noyywrap

%%

^[a-zA-Z]+:\/\/[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,}(:[0-9]+)?(\/\S*)?$ {
    printf("Valid URL: %s\n", yytext);
}

.|\n {
    printf("Invalid URL: %s\n", yytext);
}

%%

int main() {
    yylex();
    return 0;
}
