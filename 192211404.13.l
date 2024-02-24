%{
#include <stdio.h>
#include <string.h>

#define MAX_LENGTH 100

char old_word[] = "old_word";
char new_word[] = "new_word";
%}

%%
{old_word} { 
    printf("%s", new_word);
}

. { 
    printf("%c", yytext[0]); 
}

%%

int main(int argc, char* argv[]) {
    if(argc != 2) {
        printf("Usage: %s <input_file>\n", argv[0]);
        return 1;
    }

    FILE* file = fopen(argv[1], "r");
    if(!file) {
        perror("Error opening file");
        return 1;
    }

    yyin = file;
    yylex();

    fclose(file);
    return 0;
}
