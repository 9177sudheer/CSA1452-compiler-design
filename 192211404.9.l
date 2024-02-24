%{
#include <stdio.h>
int max_length = 0;
int current_length = 0;
%}

%%
[a-zA-Z]+ {
    current_length = yyleng; // yyleng gives the length of the matched string
    if (current_length > max_length) {
        max_length = current_length;
    }
}
\n {
    printf("Length of the longest word: %d\n", max_length);
    max_length = 0; // reset for next line
}
. {}

%%

int main() {
    yylex();
    return 0;
}
