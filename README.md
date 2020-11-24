# 42_libft
Recreating the standard C library and more

## Description
The libft library contains 73 basic functions, written without any usage of standard library except for system calls (malloc, write, etc).

## Usage

```
git clone <repo> <dir>
cd <dir>
make
```
The `libft.a` library file will be created.
To use the library, include `libft.h` header to your source files and compile with the relevant flags.

## Stdlib functions

The following functions are recoded from their in stdlib counterparts:
* ft_memset
* ft_bzero
* ft_memcpy
* ft_memccpy
* ft_memmove
* ft_memchr
* ft_memcmp
* ft_strlen
* ft_strlcpy
* ft_strlcat
* ft_strchr
* ft_strrchr
* ft_strnstr
* ft_strncmp
* ft_atoi
* ft_isalpha
* ft_isdigit
* ft_isalnum
* ft_isascii
* ft_isprint
* ft_toupper
* ft_tolower
* ft_calloc
* ft_strdup

## Custom functions

The following functions were written for implementing other projects.

### String manipulation

* ft_substr
* ft_strjoin
* ft_strtrim
* ft_split
* ft_strmapi
* ft_charstr
* ft_strpad
* ft_strconv
* ft_strins
* ft_strdel
* ft_strsubst

### Conversions

* ft_itoa
* ft_itoa_base
* ft_convert_double
* ft_round_double
* ft_stripzeros
* ft_dtoa

### Wide chars and UTF-8
* ft_wchar_to_utf8
* ft_wstr_to_utf8
* ft_isutf8
* ft_substr_utf8

### Memory operations
* ft_realloc
* ft_memprint

### Math and floating point
* ft_math_floor
* ft_math_log10
* ft_math_pow
* ft_math_ipow
* ft_math_frexp
* ft_math_arclen
* ft_isnan
* ft_isposinf
* ft_isneginf
* ft_signbit
* ft_absd
 
### Linked lists
* ft_lstnew
* ft_lstadd_front
* ft_lstadd_back
* ft_lstsize
* ft_lstlast
* ft_lstdelone
* ft_lstclear
* ft_lstiter
* ft_lstmap
  
### Reading input
* get_next_line
