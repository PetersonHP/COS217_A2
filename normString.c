#include <string.h>
#include <stdio.h>

int main() {
   char s1[] = "abc";
   char s2[] = "defg";

   printf("1 comp 2 = %d\n", strcmp(s1, s2));
   printf("2 comp 1 = %d\n", strcmp(s2, s1));
   
   return 0;
}
