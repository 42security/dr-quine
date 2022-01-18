#include <stdio.h>
/*
	comment
*/
void colleen() {}

int main()
{
	colleen();
	/*
		comment
	*/
	char s[]="#include <stdio.h>%1$c/*%1$c%2$ccomment%1$c*/%1$cvoid colleen() {}%1$c%1$cint main()%1$c{%1$c%2$ccolleen();%1$c%2$c/*%1$c%2$c%2$ccomment%1$c%2$c*/%1$c%2$cchar s[]=%3$c%4$s%3$c;%1$c%2$cprintf(s, 10, 9, 34, s);%1$c}";
	printf(s, 10, 9, 34, s);
}