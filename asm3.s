
.data

.text


.globl strlen
.globl bottles
.globl gcf
.globl longestSorted
.globl rotate

# String Length (strlen) function in MIPS assembly
# Accepts one argument: a pointer to a string
# Returns the length of the string excluding the null terminator
strlen:
    move $t0, $a0         # Copy the string address to $t0
    li $v0, 0             # Initialize length counter to 0

strlen_loop:
    lb $t1, 0($t0)        # Load a byte from the string into $t1
    beqz $t1, strlen_end  # If $t1 is 0 (null terminator), end loop

    # Print the current character for debugging
    li $v0, 11            # syscall for print_char
    move $a0, $t1         # Move the character to $a0
    syscall               # Print the character

    addiu $t0, $t0, 1     # Move to the next byte in the string
    addiu $v0, $v0, 1     # Increment the length counter
    j strlen_loop         # Jump back to the start of the loop

strlen_end:
    jr $ra                # Return to the calling function


bottles:
    jr $ra
gcf:
    jr $ra
longestSorted:
    jr $ra
rotate:
    jr $ra
