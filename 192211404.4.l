%{
/* Definitions section */
int vowel_count = 0;
int consonant_count = 0;
%}

/* Rules section */
%%
[aAeEiIoOuU]   { vowel_count++; }
[bBcCdDfFgGhHjJkKlLmMnNpPqQrRsStTvVwWxXyYzZ]   { consonant_count++; }
.   /* Ignore all other characters */
%%

/* User-defined functions (optional) */
int get_vowel_count() {
    return vowel_count;
}

int get_consonant_count() {
    return consonant_count;
}

/* Main function (optional) */
int main() {
    yylex();
    printf("Number of vowels: %d\n", get_vowel_count());
    printf("Number of consonants: %d\n", get_consonant_count());
    return 0;
}
