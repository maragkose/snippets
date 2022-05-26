#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>


char * upper_string(char *ss) {
   char *s = strdup(ss);
   int c = 0;

   while (s[c] != '\0') {
      if (s[c] >= 'a' && s[c] <= 'z') {
         s[c] = s[c] - 32;
      }
      c++;
   }
   return s;
}

int main() {
    
    char * hello = "hello";
    char * upper = upper_string(hello);
    printf("--%s", upper);
}
