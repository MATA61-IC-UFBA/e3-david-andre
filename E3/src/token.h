/* token.h */

typedef enum {
        ID = 256,
        NUM, 
        ARR,
        BOO,
        CHA,
        ELS,
        FAL,
        FOR,
        FUN,
        IF,
        INT,
        PRINT,
        RET,
	STRING,
	TRU,
	VOID,
	WHILE,
	LEQ = 273,
	MEQ,
	EQU,
	DEF,
	AND,
	OR,
	CHAR,
	STR,
	ERROR
} token_t; 

