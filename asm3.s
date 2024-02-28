
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

    addiu $t0, $t0, 1     # Move to the next byte in the string
    addiu $v0, $v0, 1     # Increment the length counter
    j strlen_loop         # Jump back to the start of the loop

strlen_end:
    jr $ra                # Return to the calling function


# Gratest Common Factor(gfc) function in MIPS assembly
# Accepts two argunments: does not work yet 
#
gcf:
    # Prologue
    addiu $sp, $sp, -8     # Allocate space on stack for saved registers
    sw $ra, 4($sp)         # Save $ra
    sw $a1, 0($sp)         # Save $a1 (second argument)

    # Ensure a >= b
    slt $t0, $a0, $a1      # if a < b, $t0 = 1
    beq $t0, $zero, gcf_continue # if a >= b, skip swapping
    move $t1, $a0          # swap a and b
    move $a0, $a1
    move $a1, $t1

gcf_continue:
    # Base case: if b == 0, return a
    beq $a1, $zero, gcf_end # if b == 0, return a

    # Recursive case: return gcf(b, a % b)
    move $t2, $a0          # Backup a in $t2
    div $a0, $a1           # Divide a by b, result in LO (quotient), HI (remainder)
    mfhi $a0               # Move remainder (a % b) to $a0
    move $a1, $t2          # Move original a to $a1
    jal gcf                # Recursive call

gcf_end:
    # Epilogue
    lw $a1, 0($sp)         # Restore $a1
    lw $ra, 4($sp)         # Restore $ra
    addiu $sp, $sp, 8      # Deallocate stack space
    jr $ra                 # Return to caller




bottles:
    jr $ra

longestSorted:
    jr $ra
rotate:
    jr $ra
