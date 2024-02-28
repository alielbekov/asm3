
.data
hello_str: .asciiz "Hello, World\n" # String to be printed

.text
.globl main
main:
    li $v0, 4            # syscall for print_str
    la $a0, hello_str    # load address of string to print
    syscall              # make syscall

    li $v0, 10           # syscall for exit
    syscall              # make syscall
