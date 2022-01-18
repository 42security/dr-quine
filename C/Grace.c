#include <stdio.h>
#include <unistd.h>

#define SHELLCODE "#include <stdio.h>%1$c#include <unistd.h>%1$c%1$c#define SHELLCODE %2$c%3$s%2$c%1$c#define PRINT(fd) fprintf(fd, SHELLCODE, 10, 34, SHELLCODE)%1$c#define GRACE() int main(){FILE *fd;fd=fopen(%2$cGrace_kid.c%2$c, %2$cw%2$c);if (fd > 0){PRINT(fd);}}%1$c// comment%1$cGRACE()"
#define PRINT(fd) fprintf(fd, SHELLCODE, 10, 34, SHELLCODE)
#define GRACE() int main(){FILE *fd;fd=fopen("Grace_kid.c", "w");if (fd > 0){PRINT(fd);}}
// comment
GRACE()