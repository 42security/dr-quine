#include <stdio.h>
#include <unistd.h>

#define SHELLCODE "#include <stdio.h>%1$c#include <unistd.h>%1$c%1$c#define SHELLCODE %2$c%3$s%2$c%1$c#define PRINT(fd) fprintf(fd, SHELLCODE, 10, 34, SHELLCODE)%1$c#define GRACE() int main(){printf(SHELLCODE, 10, 34, SHELLCODE);}%1$c// comment%1$cGRACE()"
#define PRINT(fd) fprintf(fd, SHELLCODE, 10, 34, SHELLCODE)
#define GRACE() int main(){printf(SHELLCODE, 10, 34, SHELLCODE);}
// comment
GRACE()