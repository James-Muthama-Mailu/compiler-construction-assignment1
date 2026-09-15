%option noyywrap

%{
#include <stdio.h>
%}

%%

/* Keywords */
"int"                   { printf("KEYWORD: INT\n"); }
"if"                    { printf("KEYWORD: IF\n"); }
"else"                  { printf("KEYWORD: ELSE\n"); }
"return"                { printf("KEYWORD: RETURN\n"); }

/* Literals & Identifiers */
[0-9]+                  { printf("INTEGER: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]*   { printf("IDENTIFIER: %s\n", yytext); }

/* Operators */
">="                    { printf("GREATER_EQUAL: %s\n", yytext); }
"="                     { printf("ASSIGN: %s\n", yytext); }
"+"                     { printf("PLUS: %s\n", yytext); }
"-"                     { printf("MINUS: %s\n", yytext); }
"*"                     { printf("MULTIPLY: %s\n", yytext); }
"/"                     { printf("DIVIDE: %s\n", yytext); }

/* Punctuation & Delimiters */
"("                     { printf("LEFT_PAREN: %s\n", yytext); }
")"                     { printf("RIGHT_PAREN: %s\n", yytext); }
"{"                     { printf("LEFT_BRACE: %s\n", yytext); }
"}"                     { printf("RIGHT_BRACE: %s\n", yytext); }
";"                     { printf("SEMICOLON: %s\n", yytext); }

/* Whitespace & Fallback */
[ \t\n]+                { /* ignore whitespace */ }
.                       { printf("UNKNOWN: %s\n", yytext); }

%%

int main(void)
{
    yylex();
    return 0;
}