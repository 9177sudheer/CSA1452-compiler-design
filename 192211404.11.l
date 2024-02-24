%{
#include <stdio.h>
%}

%option noyywrap

DIGIT   [0-9]
DAY     (0[1-9]|[1-2][0-9]|3[0-1])
MONTH   (0[1-9]|1[0-2])
YEAR    (19|20)[0-9][0-9]
DOB     {MONTH}/{DAY}/{YEAR}

%%

{DOB} {
    printf("Valid Date of Birth: %s\n", yytext);
}

.|\n {
    printf("Invalid Date of Birth: %s\n", yytext);
}

%%

int main() {
    yylex();
    return 0;
}
