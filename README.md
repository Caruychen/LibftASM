# LibftASM

This project consists of a mini-library of several basic libc functions, written in assembly language.

The concepts explored include assembly language syntax, how the stack works, and compiler behaviour.

> [Subject pdf](https://github.com/Caruychen/42Cursus/blob/main/pdf/libft-asm.en.pdf)

## 📝 Instructions

### 📚 Library compilation
* Assembly code compiled with `nasm`
* Intel syntax, 64 bit ASM.
* Inline ASM is forbidden, only `.s` files are permitted.
* Developed with macOS Monterey, Intel Core i5

To compile the library, run `main` from the root of the repository. This will create a library file called
```
libfts.a
```

To use this library, include it in your gcc compilation with the `L` flag.

## ⚒️  Functions
### Part 1
The following functions were replicated in part 1:
* ft\_bzero
> `void ft_bzero(void *s, size_t n);`
* ft\_strcat
> `char *ft_strcat(char *s1, const char *s2);`
* ft\_isalpha
> `int ft_isalpha(int c);`
* ft\_isdigit
> `int ft_isdigit(int c);`
* ft\_isalnum
> `int ft_isalnum(int c);`
* ft\_isascii
> `int ft_isascii(int c);`
* ft\_isprint
> `int ft_isprint(int c);`
* ft\_toupper
> `int ft_toupper(int c);`
* ft\_tolower
> `int ft_tolower(int c);`
* ft\_puts
> `int ft_puts(const char *s);`

### Part 2
Part 2 functions include:
* ft\_strlen
> `size_t ft_strlen(const char *s);`
* ft\_memset
> `void *ft_memset(void *b, int c, size_t len);`
* ft\_memcpy
> `void *ft_memcpy(void *dst, const void *src, size_t n);`
* ft\_strdup
> `char *ft_strdup(const char *s1);`

### Part 3
In part 3, I re-coded `ft_cat`function, which takes a `file descriptor` as an argument, and has the same behavior as the `cat` command.
> `void ft_cat(int fd);`

### 🏁 Tests

Mandatory tests have been written for this project, in the following directories:
```
test/part1_2
test/part3
```

To test functions from parts 1 and 2:
> 1. `cd` into `test/part1_2`
> 2. run `make`
> 3. run the resulting `./test` binary

To test `ft_cat` from part 3:
> 1. `cd` into `test/part3`
> 2. run the `test.sh` shell script
