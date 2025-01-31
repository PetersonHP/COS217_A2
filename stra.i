# 0 "stra.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "stra.c"
# 9 "stra.c"
# 1 "str.h" 1
# 11 "str.h"
# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4

# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 209 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 12 "str.h" 2
# 20 "str.h"

# 20 "str.h"
size_t Str_getLength(const char *s);






char *Str_copy(char *copy, const char *s);





char *Str_concat(char *cat, const char *s);





int Str_compare(const char *s1, const char *s2);






char *Str_search(const char *toSearch, const char *toFind);
# 10 "stra.c" 2

# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 392 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 393 "/usr/include/features.h" 2 3 4
# 490 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 551 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 552 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 553 "/usr/include/sys/cdefs.h" 2 3 4
# 491 "/usr/include/features.h" 2 3 4
# 514 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4




# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 6 "/usr/include/gnu/stubs.h" 2 3 4


# 1 "/usr/include/gnu/stubs-lp64.h" 1 3 4
# 9 "/usr/include/gnu/stubs.h" 2 3 4
# 515 "/usr/include/features.h" 2 3 4
# 36 "/usr/include/assert.h" 2 3 4
# 64 "/usr/include/assert.h" 3 4




# 67 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 12 "stra.c" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 27 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 28 "/usr/include/stdio.h" 2 3 4





# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 34 "/usr/include/stdio.h" 2 3 4


# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 37 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/bits/types.h" 1 3 4
# 27 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/types.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 29 "/usr/include/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 141 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 142 "/usr/include/bits/types.h" 2 3 4
# 1 "/usr/include/bits/time64.h" 1 3 4
# 143 "/usr/include/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 39 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/__fpos_t.h" 1 3 4




# 1 "/usr/include/bits/types/__mbstate_t.h" 1 3 4
# 13 "/usr/include/bits/types/__mbstate_t.h" 3 4
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
# 6 "/usr/include/bits/types/__fpos_t.h" 2 3 4




typedef struct _G_fpos_t
{
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
# 40 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/__fpos64_t.h" 1 3 4
# 10 "/usr/include/bits/types/__fpos64_t.h" 3 4
typedef struct _G_fpos64_t
{
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;
# 41 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/__FILE.h" 1 3 4



struct _IO_FILE;
typedef struct _IO_FILE __FILE;
# 42 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/FILE.h" 1 3 4



struct _IO_FILE;


typedef struct _IO_FILE FILE;
# 43 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/struct_FILE.h" 1 3 4
# 35 "/usr/include/bits/types/struct_FILE.h" 3 4
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;




typedef void _IO_lock_t;





struct _IO_FILE
{
  int _flags;


  char *_IO_read_ptr;
  char *_IO_read_end;
  char *_IO_read_base;
  char *_IO_write_base;
  char *_IO_write_ptr;
  char *_IO_write_end;
  char *_IO_buf_base;
  char *_IO_buf_end;


  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;
  int _flags2;
  __off_t _old_offset;


  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];

  _IO_lock_t *_lock;







  __off64_t _offset;

  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  size_t __pad5;
  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
# 44 "/usr/include/stdio.h" 2 3 4
# 84 "/usr/include/stdio.h" 3 4
typedef __fpos_t fpos_t;
# 133 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/stdio_lim.h" 1 3 4
# 134 "/usr/include/stdio.h" 2 3 4



extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;






extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));
# 172 "/usr/include/stdio.h" 3 4
extern int fclose (FILE *__stream);
# 182 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile (void)
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) ;
# 199 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char[20]) __attribute__ ((__nothrow__ , __leaf__)) ;
# 224 "/usr/include/stdio.h" 3 4
extern int fflush (FILE *__stream);
# 252 "/usr/include/stdio.h" 3 4
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes)
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 322 "/usr/include/stdio.h" 3 4
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
# 344 "/usr/include/stdio.h" 3 4
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));
# 409 "/usr/include/stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));





# 1 "/usr/include/bits/floatn.h" 1 3 4
# 23 "/usr/include/bits/floatn.h" 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 24 "/usr/include/bits/floatn.h" 2 3 4
# 95 "/usr/include/bits/floatn.h" 3 4
# 1 "/usr/include/bits/floatn-common.h" 1 3 4
# 24 "/usr/include/bits/floatn-common.h" 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 25 "/usr/include/bits/floatn-common.h" 2 3 4
# 96 "/usr/include/bits/floatn.h" 2 3 4
# 425 "/usr/include/stdio.h" 2 3 4



extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")

                               ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                              ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))

                      ;
# 507 "/usr/include/stdio.h" 3 4
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);
# 543 "/usr/include/stdio.h" 3 4
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);
# 586 "/usr/include/stdio.h" 3 4
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     __attribute__ ((__access__ (__write_only__, 1, 2)));
# 599 "/usr/include/stdio.h" 3 4
extern char *gets (char *__s) __attribute__ ((__deprecated__));
# 649 "/usr/include/stdio.h" 3 4
extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
# 707 "/usr/include/stdio.h" 3 4
extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);
# 754 "/usr/include/stdio.h" 3 4
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 780 "/usr/include/stdio.h" 3 4
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
# 798 "/usr/include/stdio.h" 3 4
extern void perror (const char *__s);
# 879 "/usr/include/stdio.h" 3 4
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
# 903 "/usr/include/stdio.h" 3 4

# 13 "stra.c" 2
# 24 "stra.c"

# 24 "stra.c"
size_t Str_getLength(const char s[]) {
   int length = 0;
   char c;

   
# 28 "stra.c" 3 4
  ((
# 28 "stra.c"
  s != 
# 28 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 28 "stra.c"
  "s != NULL"
# 28 "stra.c" 3 4
  , "stra.c", 28, __extension__ __PRETTY_FUNCTION__))
# 28 "stra.c"
                   ;

   while ((c = s[length++]) != '\0');

   return (size_t) length - 1;
}







char *Str_copy(char copy[], const char s[]) {
   char c;
   int i = 0;

   
# 45 "stra.c" 3 4
  ((
# 45 "stra.c"
  s != 
# 45 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 45 "stra.c"
  "s != NULL"
# 45 "stra.c" 3 4
  , "stra.c", 45, __extension__ __PRETTY_FUNCTION__))
# 45 "stra.c"
                   ;
   
# 46 "stra.c" 3 4
  ((
# 46 "stra.c"
  copy != 
# 46 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 46 "stra.c"
  "copy != NULL"
# 46 "stra.c" 3 4
  , "stra.c", 46, __extension__ __PRETTY_FUNCTION__))
# 46 "stra.c"
                      ;

   while ((c = s[i]) != '\0') {
      copy[i++] = c;
   }
   copy[i] = '\0';

   return copy;
}






char *Str_concat(char cat[], const char s[]) {
   size_t lengthCat;
   char c;
   int i;

   
# 66 "stra.c" 3 4
  ((
# 66 "stra.c"
  cat != 
# 66 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 66 "stra.c"
  "cat != NULL"
# 66 "stra.c" 3 4
  , "stra.c", 66, __extension__ __PRETTY_FUNCTION__))
# 66 "stra.c"
                     ;
   
# 67 "stra.c" 3 4
  ((
# 67 "stra.c"
  s != 
# 67 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 67 "stra.c"
  "s != NULL"
# 67 "stra.c" 3 4
  , "stra.c", 67, __extension__ __PRETTY_FUNCTION__))
# 67 "stra.c"
                   ;

   lengthCat = Str_getLength(cat);
   i = (int) lengthCat;
   while ((c = s[i - lengthCat]) != '\0') {
      cat[i++] = c;
   }
   cat[i] = '\0';

   return cat;
}






int Str_compare(const char s1[], const char s2[]) {
   int i = 0;
   char c1;
   char c2;

   
# 89 "stra.c" 3 4
  ((
# 89 "stra.c"
  s1 != 
# 89 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 89 "stra.c"
  "s1 != NULL"
# 89 "stra.c" 3 4
  , "stra.c", 89, __extension__ __PRETTY_FUNCTION__))
# 89 "stra.c"
                    ;
   
# 90 "stra.c" 3 4
  ((
# 90 "stra.c"
  s2 != 
# 90 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 90 "stra.c"
  "s2 != NULL"
# 90 "stra.c" 3 4
  , "stra.c", 90, __extension__ __PRETTY_FUNCTION__))
# 90 "stra.c"
                    ;

   while (((c1 = s1[i]) != '\0') && ((c2 = s2[i]) != '\0')) {
      if (c1 != c2) {
         return (int) c1 - (int) c2;
      }
      i++;
   }

   c1 = s1[i];
   c2 = s2[i];

   if (c1 != '\0') {
      return (int) c1;
   }
   if (c2 != '\0') {
      return -1 * (int) c2;
   }

   return 0;
}
# 119 "stra.c"
static int Str_compareN(const char s1[], const char s2[], const int n) {
   int i = 0;
   char c1;
   char c2;

   
# 124 "stra.c" 3 4
  ((
# 124 "stra.c"
  s1 != 
# 124 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 124 "stra.c"
  "s1 != NULL"
# 124 "stra.c" 3 4
  , "stra.c", 124, __extension__ __PRETTY_FUNCTION__))
# 124 "stra.c"
                    ;
   
# 125 "stra.c" 3 4
  ((
# 125 "stra.c"
  s2 != 
# 125 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 125 "stra.c"
  "s2 != NULL"
# 125 "stra.c" 3 4
  , "stra.c", 125, __extension__ __PRETTY_FUNCTION__))
# 125 "stra.c"
                    ;

   for (; i < n; i++) {
      c1 = s1[i];
      c2 = s2[i];

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






char *Str_search(const char toSearch[], const char toFind[]) {
   int i = 0;
   int lengthFind;
   char cSearch;

   
# 155 "stra.c" 3 4
  ((
# 155 "stra.c"
  toSearch != 
# 155 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 155 "stra.c"
  "toSearch != NULL"
# 155 "stra.c" 3 4
  , "stra.c", 155, __extension__ __PRETTY_FUNCTION__))
# 155 "stra.c"
                          ;
   
# 156 "stra.c" 3 4
  ((
# 156 "stra.c"
  toFind != 
# 156 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 156 "stra.c"
  "toFind != NULL"
# 156 "stra.c" 3 4
  , "stra.c", 156, __extension__ __PRETTY_FUNCTION__))
# 156 "stra.c"
                        ;


   if ((toFind[0] == '\0') && (toSearch[0] != '\0')) {
      return (char *) toSearch;
   }
   else if ((toFind[0] != '\0') && (toSearch[0] == '\0')) {
      return 
# 163 "stra.c" 3 4
            ((void *)0)
# 163 "stra.c"
                ;
   }
   else if ((toFind[0] == '\0') && (toSearch[0] == '\0')) {
      return (char *) toSearch;
   }


   lengthFind = (int) Str_getLength(toFind);
   while ((cSearch = toSearch[i]) != '\0') {


      if (cSearch == toFind[0]) {
         if (Str_compareN(toSearch + i, toFind, lengthFind) == 0) {
            return (char *) toSearch + i;
         }
      }

      i++;
   }

   return 
# 183 "stra.c" 3 4
         ((void *)0)
# 183 "stra.c"
             ;
}
