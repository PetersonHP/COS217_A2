/*-------------------------------------------------------------------*/
/* strp.c                                                            */
/* COS 217 Assignment 2: A String Module and Client                  */
/* Date: 10/5/2023                                                   */
/* Author: Hugh Peterson                                             */
/* Description: Pointer implementation of String module              */
/*-------------------------------------------------------------------*/

#include "str.h"

#include <assert.h>
#include <stdio.h>

/* /\*DEBUG*\/ */
/* #include <string.h> */

/*-------------------------------------------------------------------*/

/*
 * Returns the number of chars contained within a string excluding the 
 * null character. Str_getLength takes a const char *s and returns a 
 * size_t containing the length.
 */
size_t Str_getLength(const char *s) {
   int length = 0;
   char c;

   assert(s != NULL);
   
   while ((c = *s++) != '\0') {
      length++;
   }

   return (size_t) length;
}

/*
 * Duplicates the string s to the new string copy. Returns a pointer
 * to the first char of the new copy. Takes a pointer to a space in 
 * memory large enough to fit the copy, as well as a pointer to the 
 * string to copy.
 */
char *Str_copy(char *copy, const char *s) {
   char c;
   char *copyStart = copy;

   assert(s != NULL);
   assert(copy != NULL);

   while ((c = *s) != '\0') {
      *copy = c;
      copy++;
      s++;
   }
   *copy = '\0';

   return copyStart;
}

/*
 * Appends s to the end of cat. Returns a pointer to the newly 
 * concatenated string, takes a pointer to a sufficient space in memory
 * as well as a pointer to string s.
 */
char *Str_concat(char *cat, const char *s) {
   size_t lengthCat;
   char *startCat = cat;
   char c;

   assert(cat != NULL);
   assert(s != NULL);

   lengthCat = Str_getLength(cat);
   cat += (int) lengthCat;
   while ((c = *s++) != '\0') {
      *cat = c;
      cat++;
   }
   *cat = '\0';

   return startCat;
}

/*
 * Returns an int > 0 if s1 is lexicographically larger than s2 and an 
 * int < 0 if s1 is lexicographically smaller than s2. Returns 0 if s1 
 * and s2 are identical. Takes two strings s1 and s2.
 */
int Str_compare(const char *s1, const char *s2) {
   char c1;
   char c2;

   assert(s1 != NULL);
   assert(s2 != NULL);

   while (((c1 = *s1) != '\0') && ((c2 = *s2) != '\0')) {
      if (c1 != c2) {
         return (int) c1 - (int) c2;
      }
      s1++;
      s2++;
   }
   
   c1 = *s1;
   c2 = *s2;
   
   if (c1 != '\0') {
      return (int) c1;
   }
   if (c2 != '\0') {
      return -1 * (int) c2;
   }

   return 0;
}

/* Only compares the first n characters of each string.
 * Returns an int > 0 if s1 is lexicographically larger than s2 and an 
 * int < 0 if s1 is lexicographically smaller than s2. Returns 0 if s1 
 * and s2 are identical. Takes two strings s1 and s2, as well as an int
 * n.
 */
static int Str_compareN(const char *s1, const char *s2, const int n) {
   int i = 0;
   char c1;
   char c2;

   assert(s1 != NULL);
   assert(s2 != NULL);

   for (; i < n; i++) {
      c1 = *s1;
      c2 = *s2;
      s1++;
      s2++;

      if (c1 == '\0') {
         return -1 * (int) c2;
      }
      if (c2 == '\0') {
         return (int) c1;
      }
      if (c1 != c2) {
         return (int) c1 - (int) c2;
      }
   }

   return 0;
}

/*
 * Returns a pointer to the first instance of toFind in toSearch, 
 * otherwise, returns NULL. Takes a pointer to a string to 
 * search and a pointer to a string to find.
 */
char *Str_search(const char *toSearch, const char *toFind) {
   int lengthFind;
   char cSearch;

   assert(toSearch != NULL);
   assert(toFind != NULL);

   /* Corner cases */
   if ((*toFind == '\0') && (*toSearch != '\0')) {
      return (char *) toSearch;
   }
   else if ((*toFind != '\0') && (*toSearch == '\0')) {
      return NULL;
   }
   else if ((*toFind == '\0') && (*toSearch == '\0')) {
      return (char *) toSearch;
   }
   
   /* Main implementation */
   lengthFind = (int) Str_getLength(toFind);
   while ((cSearch = *toSearch) != '\0') {
      if (Str_compareN(toSearch, toFind, lengthFind) == 0) {
         return (char *) toSearch;
      }
      toSearch++;
   }

   return NULL;
}

/*-------------------------------------------------------------------*/

/*
 * Main method for debugging
 */

/* int main() { */
/*    char s[23] = "Test string!"; */
/*    char a[] = "abc"; */
/*    char b[] = "defg"; */
/*    char addition[] = " It works!"; */
/*    char srch[] = "abbabcbbabacc"; */
/*    char copy[13]; */
   
/*    /\* 12 *\/ */
/*    printf("%d\n", (int) Str_getLength(s)); */

/*    /\* Test string! *\/ */
/*    printf("%s\n", Str_copy(copy, s)); */

/*    Str_concat(s, addition); */

/*    /\* Test String! It works! *\/ */
/*    printf("%s\n", s); */

/*    /\* -3 *\/ */
/*    printf("%d\n", Str_compare(a, b)); */

/*    /\* 3 *\/ */
/*    printf("%d\n", Str_compare(b, a)); */

/*    /\* b *\/ */
/*    printf("%c\n", *Str_search(srch, "baba")); */

/*    /\*printf("%s\n", strstr("abcde", "abcdf"));*\/ */
/*    printf("%c\n", *Str_search("abcde", "d")); */
/*    /\* printf("%p\n", Str_search("abcde", "cd")); *\/ */

/*    return 0; */
/* } */

/*-------------------------------------------------------------------*/
