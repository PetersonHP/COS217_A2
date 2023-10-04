/*-------------------------------------------------------------------*/
/* str.h                                                             */
/* COS 217 Assignment 2: A String Module and Client                  */
/* Date: 10/5/2023                                                   */
/* Author: Hugh Peterson                                             */
/*-------------------------------------------------------------------*/

#ifndef STR_INCLUDED
#define STR_INCLUDED

#include <stddef.h>

/*-------------------------------------------------------------------*/

/*
 * Returns the number of chars contained within a string excluding the 
 * null character. Str_getLength takes a const char *s and returns a 
 * size_t containing the length.
 */
size_t Str_getLength(const char *s);

/*
 * Duplicates the string s to the new string copy. 
 * Str_copy takes in a char *copy and const char *s and returns a 
 * char *
 */
char *Str_copy(char *copy, const char *s);

/*
 * Appends s to the end of cat. Str_concat takes in a char *cat and a 
 * const char *s and returns a char *
 */
char *Str_concat(char *cat, const char *s);

/*
 * Returns the lexicographic difference between s1 and s2. Takes in 
 * two char *'s s1 and s2.
 */
int Str_compare(const char *s1, const char *s2);

/*
 * Returns a pointer to the first instance of toFind in toSearch, 
 * otherwise, returns NULL. Takes a pointer to a string to 
 * search and a pointer to a string to find.
 */
char *Str_search(const char *toSearch, const char *toFind);

/*-------------------------------------------------------------------*/

#endif
