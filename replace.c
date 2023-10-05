/*-------------------------------------------------------------------*/
/* replace.c                                                         */
/* Author: Hugh Peterson                                             */
/*-------------------------------------------------------------------*/

#include "str.h"
#include <stdio.h>
#include <assert.h>
#include <stdlib.h>

/*-------------------------------------------------------------------*/

/* If pcFrom is the empty string, then write string pcLine to stdout
   and return 0.  Otherwise write string pcLine to stdout with each
   distinct occurrence of string pcFrom replaced with string pcTo,
   and return a count of how many replacements were made.  Make no
   assumptions about the maximum number of replacements or the
   maximum number of characters in strings pcLine, pcFrom, or pcTo. */

static size_t replaceAndWrite(const char *pcLine,
                              const char *pcFrom, const char *pcTo)
{
   char c;
   int i = 0;
   int replacements = 0;
   char *replacePoint;
   char *linePointer = (char *) pcLine;

   assert(pcLine != NULL);
   assert(pcFrom != NULL);
   assert(pcTo != NULL);

   /* if there is nothing to replace, simply print pcLine and 
      return 0. */
   if (((replacePoint = Str_search(linePointer, pcFrom)) == NULL) ||
      (*pcFrom == '\0')) {
      while ((c = *linePointer) != '\0') {
         putchar(c);
         linePointer++;
      }
      return (size_t) replacements;
   }
   
   do {
      /* increment replacements */
      replacements++;
      
      /* increment pcLine up to replacePoint and print each char along 
         the way */
      while (linePointer != replacePoint) {
         putchar(*linePointer);
         linePointer++;
      }

      /* put replacement chars */
      while((c = pcTo[i]) != '\0') {
         putchar(c);
         i++;
      }
      i = 0;
      
      /* move pcLine */
      while(pcFrom[i] != '\0') {
         linePointer++;
         i++;
      }
      i = 0;
   } while ((replacePoint = Str_search(linePointer, pcFrom)) != NULL);

   /* Print the rest of the string */
   while ((c = linePointer[i++]) != '\0') {
      putchar(c);
   }
   
   return (size_t) replacements;
}

/*-------------------------------------------------------------------*/

/* If argc is unequal to 3, then write an error message to stderr and
   return EXIT_FAILURE.  Otherwise...
   If argv[1] is the empty string, then write each line of stdin to
   stdout, write a message to stderr indicating that 0 replacements
   were made, and return 0.  Otherwise...
   Write each line of stdin to stdout with each distinct occurrence of
   argv[1] replaced with argv[2], write a message to stderr indicating
   how many replacements were made, and return 0.
   Assume that no line of stdin consists of more than MAX_LINE_SIZE-1
   characters. */

int main(int argc, char *argv[])
{
   enum {MAX_LINE_SIZE = 4096};
   enum {PROPER_ARG_COUNT = 3};

   char acLine[MAX_LINE_SIZE];
   char *pcFrom;
   char *pcTo;
   size_t uReplaceCount = 0;

   if (argc != PROPER_ARG_COUNT)
   {
      fprintf(stderr, "usage: %s fromstring tostring\n", argv[0]);
      return EXIT_FAILURE;
   }

   pcFrom = argv[1];
   pcTo = argv[2];

   while (fgets(acLine, MAX_LINE_SIZE, stdin) != NULL) {
      uReplaceCount += replaceAndWrite(acLine, pcFrom, pcTo);
   }

   fprintf(stderr, "%lu replacements\n", (unsigned long)uReplaceCount);
   return 0;
}
