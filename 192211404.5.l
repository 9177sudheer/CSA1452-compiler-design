
%{
#include <stdio.h>
#include <string.h>
%}

%option noyywrap

%%

int|char|float|double|void     { printf("Keyword: %s\n", yytext); }
if|else|for|while|do|switch    { printf("Keyword: %s\n", yytext); }
return|break|continue|case     { printf("Keyword: %s\n", yytext); }
sizeof|typedef|struct|union    { printf("Keyword: %s\n", yytext); }
goto|default|static|extern     { printf("Keyword: %s\n", yytext); }
const|volatile|register        { printf("Keyword: %s\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]*         { printf("Identifier: %s\n", yytext); }

[ \t\n]                         ; // Ignore whitespace

.                               ;

%%

int main() {
    yyin = fopen("input.c", "r"); // Open the input file
    yylex();                      // Start the lexical analysis
    fclose(yyin);                 // Close the input file
    return 0;
}
