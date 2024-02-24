%{
#include <stdio.h>
int positive_count = 0;
int negative_count = 0;
%}

%option noyywrap

%%
[+-]?[0-9]+      { 
                    if (yytext[0] == '-') 
                        negative_count++;
                    else 
                        positive_count++;
                    printf("Number: %s\n", yytext); 
                 }

[ \t\n]          ; // Ignore whitespace

.                ;

%%

int main() {
    yyin = stdin; // Read from standard input
    yylex();      // Start the lexical analysis
    printf("Positive numbers count: %d\n", positive_count);
    printf("Negative numbers count: %d\n", negative_count);
    return 0;
}
