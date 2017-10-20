.global main
.section .rodata

prompt: .asciz "Hello! Welcome to Two Integers."
print_firstint: .asciz " Enter an integer for first number: "
scan_firstint: .asciz "%d"
print_secondint: .asciz "Enter an integer for the second number: "
scan_secondint: .asciz "%d"

sum_output: .asciz "The sum of %d and %d is %d \n\n"
difference_output: .asciz "The difference of %d and %d is %d\n\n"
product_output: .asciz " The product of %d and %d is %d\n\n"

.section .data
value: .word 0, 0
.section .text

main:
	push {lr}

	ldr r0, =prompt
	bl printf

	ldr r0, =print_firstint
	bl printf

	ldr r0, =scan_firstint
	ldr r1, =value
	bl scanf

	ldr r0,=print_secondint
	bl printf

	ldr r0,=scan_secondint
	ldr r1, =value
	add r1, #4
	bl scanf

	ldr r4, =value
	ldr r4, [r4]
	ldr r5, =value
	add r5, #4
	ldr r5, [r5]

	add r6, r4, r5

	sub r7, r4, r5

	mul r8, r4, r5

	ldr r0, =sum_output
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl printf

	ldr r0, =difference_output
	mov r1, r4
	mov r2, r5
	mov r3, r7
	bl printf

	ldr r0, =product_output
	mov r1, r4
	mov r2, r5
	mov r3, r8
	bl printf

	mov r0, #0

	pop {pc}


