#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#define SULLYC "Sully_5.c"
#define SULLY "Sully_5"
#define COMP "gcc -Wall -Wextra -Werror -o " SULLY " " SULLYC

int main()
{
int fd;
int i = 5;
char tmp[25];
char s[] = "#include <stdio.h>%1$c#include <unistd.h>%1$c#include <stdlib.h>%1$c#include <string.h>%1$c#include <sys/types.h>%1$c#include <sys/stat.h>%1$c#include <fcntl.h>%1$c%1$c#define SULLYC %2$cSully_%3$d.c%2$c%1$c#define SULLY %2$cSully_%3$d%2$c%1$c#define COMP %2$cgcc -Wall -Wextra -Werror -o %2$c SULLY %2$c %2$c SULLYC%1$c%1$cint main()%1$c{%1$cint fd;%1$cint i = %3$d;%1$cchar tmp[25];%1$cchar s[] = %2$c%4$s%2$c;%1$cif (i < 0)%1$creturn (0);%1$c--i;%1$cfd = open(SULLYC, O_CREAT | O_RDWR);%1$cdprintf(fd, s, 10, 34, i, s);%1$cclose(fd);%1$cif (i >= 0)%1$c{%1$csprintf(tmp, %2$cchmod +rw %%s%2$c, SULLYC);%1$csystem(tmp);%1$csystem(COMP);%1$cbzero(tmp, 25);%1$csprintf(tmp, %2$c./%%s%2$c, SULLY);%1$csystem(tmp);%1$c}%1$creturn (0);%1$c}";
if (i < 0)
return (0);
--i;
fd = open(SULLYC, O_CREAT | O_RDWR);
dprintf(fd, s, 10, 34, i, s);
close(fd);
if (i >= 0)
{
sprintf(tmp, "chmod +rw %s", SULLYC);
system(tmp);
system(COMP);
bzero(tmp, 25);
sprintf(tmp, "./%s", SULLY);
system(tmp);
}
return (0);
}