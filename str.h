/*-------------------------------------------------------------------*/
/* str.h                                                             */
/* COS 217 Assignment 2: A String Module and Client                  */
/* Date: 10/5/2023                                                   */
/* Author: Hugh Peterson                                             */
/*-------------------------------------------------------------------*/

#ifndef STR_INCLUDED
#define STR_INCLUDED

/*-------------------------------------------------------------------*/

/*
 * Returns the number of chars contained within a string excluding the 
 * null character.
 */
size_t Str_getLength(const char s[]);

/*
 * Duplicates the string s to the new string copy
 */
char Str_copy(char copy[], const char s[]);

/*-------------------------------------------------------------------*/

#endif
