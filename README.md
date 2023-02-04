# LibftASM

This project consists of a mini-library of several basic libc functions.

The concepts explored include assembly language syntax, how the stack works, and compiler behaviour.

> [Subject pdf](https://github.com/Caruychen/42Cursus/blob/main/pdf/libft-asm.en.pdf)

## Instructions

### Library
* Assembly code compiled with `nasm`
* Intel syntax, 64 bit ASM.

To compile the library, run `main` from the root of the repository. This will create a library file called
```
libfts.a
```

To use this library, include it in your gcc compilation with the `L` flag.

### Functions

The following functions were replicated in part 1:

* ft\_bzero
> `void ft_bzero(void *s, size_t n);`
* ft\_strcat
* ft\_isalpha
* ft\_isdigit
* ft\_isalnum
* ft\_isascii
* ft\_isprint
* ft\_toupper
* ft\_tolower
* ft\_puts

Part 2 functions include:
* ft\_strlen
* ft\_memset
* ft\_memcpy
* ft\_strdup

In part 3, I re-coded `ft_cat`function, which takes a `file descriptor` as an argument, and has the same behavior as the `cat` command.

### Tests

Mandatory tests have been written for this project, in the following directories:
```
test/part1_2
test/part3
```

