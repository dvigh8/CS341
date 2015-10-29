#include <stdio.h>
#include <stdlib.h>
main()
{
	int tok;
	while(1){
		tok = get_token();
		
		
		
		
	}
}

// recursive decent parser

// handlers
E()
{
	
}
T()
{
	if(current_token == 0) {
		T();
		match ('*');
		F();
		
	}
	else{
		F();
	}
	
}

F()
{
	if(current_token == '(') {
		match ( '(');
		E();
		match ( ')');
	}
	else if (current_token == NUM){
		match(NUM);
	}
	else{error("Illegal token in factor");}
	
}
void match(int token(){
	if(current_token == token){
		current_token == get_token();
	}
	else{
		error("unexpected tolken");
	}
}



void get_token(){

	int c; 
	int value;
	while(1){
	switch( c = getchar()){
		case '+' :
			fprintf(stderr, "[op:%c]", c);
			return c ;
		case '*' :
			fprintf(stderr, "[op:%c]", c);
			return c ;
		case '(' : case ')'
			fprintf(stderr, "[%c]", c);
			return c ;
		case ' ' : case '\t'
			continue;
		case '\n' :
			fprintf(stderr, "%c", c);
			return c ;
		/* the rest*/
		default:
			
	}
	}
}
	