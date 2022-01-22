#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main()
{
FILE *fd;
int i = 5;
char tmp[150];
char s[] = "#include <stdio.h>%1$c#include <unistd.h>%1$c#include <stdlib.h>%1$c#include <string.h>%1$c#include <sys/types.h>%1$c#include <sys/stat.h>%1$c#include <fcntl.h>%1$c%1$cint main()%1$c{%1$cFILE *fd;%1$cint i = %3$d;%1$cchar tmp[150];%1$cchar s[] = %2$c%4$s%2$c;%1$cchar sully[8];%1$cchar sullyc[10];%1$cif (i < 0)%1$creturn (0);%1$cif (access(%2$cSully_5.c%2$c, F_OK) != -1)%1$c--i;%1$csprintf(sully,%2$cSully_%%d%2$c, i);%1$csprintf(sullyc,%2$cSully_%%d.c%2$c, i);%1$cfd = fopen(sullyc, %2$cw%2$c);%1$cfprintf(fd, s, 10, 34, i, s);%1$cfclose(fd);%1$cif (i >= 0)%1$c{%1$csprintf(tmp, %2$cgcc -Wall -Wextra -Werror -o %%s %%s%2$c, sully, sullyc);%1$csystem(tmp);%1$cbzero(tmp, 150);%1$csprintf(tmp, %2$c./%%s%2$c, sully);%1$csystem(tmp);%1$c}%1$creturn (0);%1$c}";
char sully[8];
char sullyc[10];
if (i < 0)
return (0);
if (access("Sully_5.c", F_OK) != -1)
--i;
sprintf(sully,"Sully_%d", i);
sprintf(sullyc,"Sully_%d.c", i);
fd = fopen(sullyc, "w");
fprintf(fd, s, 10, 34, i, s);
fclose(fd);
if (i >= 0)
{
sprintf(tmp, "gcc -Wall -Wextra -Werror -o %s %s", sully, sullyc);
system(tmp);
bzero(tmp, 150);
sprintf(tmp, "./%s", sully);
system(tmp);
}
return (0);
}