	.file	"stride.c"
	.text
	.p2align 4,,15
.globl entryPoint
	.type	entryPoint, @function
entryPoint:
.LFB22:
	.cfi_startproc
    sub $48, %rsp
    #Store r10~r13
    mov %r10, 0(%rsp)
    mov %r11, 8(%rsp)
    mov %r12, 16(%rsp)
    mov %r13, 24(%rsp)
    mov %r14, 32(%rsp)
    mov %r15, 40(%rsp)
    #Load r10~r12
    mov 56(%rsp), %r10
    mov 64(%rsp), %r11
    mov 72(%rsp), %r12
    #Reset eax, r13
	 xorl	%eax, %eax
    xor %r13, %r13
    #To be safe, remove a bit...
    sub     $4, %rdi
    testq	%rdi, %rdi
	 je	.L3
	 .p2align 4,,10
	 .p2align 3



.L6:

	#Unroll beginning
	#Unrolling, iteration 1 out of 8
	xor %r9, %r9
	cmp %rsi, %rdx
	xor %r9, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	mulpd %xmm2, %xmm3
	add $43, %r9
	divsd %xmm2, %xmm3
	xor %r9, %r9
	test %ebx, %ecx
	xor %r9, %r9
	cmp %rsi, %rdx
	add $43, %r9
	cmp %rsi, %rdx
	add $43, %r9
	divpd %xmm2, %xmm3
	addpd %xmm0, %xmm1
	nop 
	.byte 0x75, 0x00 
	mulsd %xmm2, %xmm3
	test %ebx, %ecx
	test %ebx, %ecx
	addsd %xmm0, %xmm1
	nop 
	xor %r9, %r9
	nop 
	nop 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	mulsd %xmm2, %xmm3
	.byte 0x74, 0x00 
	subsd %xmm0, %xmm1
	divpd %xmm2, %xmm3
	cmp %rsi, %rdx
	mulpd %xmm2, %xmm3
	divpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	cmp %rsi, %rdx
	.byte 0x74, 0x00 
	test %ebx, %ecx
	mulpd %xmm2, %xmm3
	.byte 0x74, 0x00 
	addsd %xmm0, %xmm1
	divpd %xmm2, %xmm3
	mulsd %xmm2, %xmm3
	mulpd %xmm2, %xmm3
	addsd %xmm0, %xmm1
	inc %r10
	addsd %xmm0, %xmm1
	nop 
	mulpd %xmm2, %xmm3
	add $43, %r9
	test %ebx, %ecx
	divpd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	addpd %xmm0, %xmm1
	cmp $43, %r9
	divpd %xmm2, %xmm3
	.byte 0x74, 0x00 
	add $43, %r9
	divpd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	lea 8(%rax), %r10
	test %ebx, %ecx
	subsd %xmm0, %xmm1
	.byte 0x75, 0x00 
	divpd %xmm2, %xmm3
	subsd %xmm0, %xmm1
	inc %r10
	divsd %xmm2, %xmm3
	test %ebx, %ecx
	cmp $43, %r9
	add $43, %r9
	mulsd %xmm2, %xmm3
	lea 8(%rax), %r10
	test %ebx, %ecx
	cmp %rsi, %rdx
	subsd %xmm0, %xmm1
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	divpd %xmm2, %xmm3
	mulsd %xmm2, %xmm3
	mulpd %xmm2, %xmm3
	cmp %rsi, %rdx
	nop 
	cmp %rsi, %rdx
	.byte 0x75, 0x00 
	subsd %xmm0, %xmm1
	divsd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	test %ebx, %ecx
	cmp %rsi, %rdx
	test %ebx, %ecx
	xor %r9, %r9
	mulpd %xmm2, %xmm3
	inc %r10
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	xor %r9, %r9
	lea 8(%rax), %r10
	#Unrolling, iteration 2 out of 8
	xor %r9, %r9
	cmp %rsi, %rdx
	xor %r9, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	mulpd %xmm2, %xmm3
	add $43, %r9
	divsd %xmm2, %xmm3
	xor %r9, %r9
	test %ebx, %ecx
	xor %r9, %r9
	cmp %rsi, %rdx
	add $43, %r9
	cmp %rsi, %rdx
	add $43, %r9
	divpd %xmm2, %xmm3
	addpd %xmm0, %xmm1
	nop 
	.byte 0x75, 0x00 
	mulsd %xmm2, %xmm3
	test %ebx, %ecx
	test %ebx, %ecx
	addsd %xmm0, %xmm1
	nop 
	xor %r9, %r9
	nop 
	nop 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	mulsd %xmm2, %xmm3
	.byte 0x74, 0x00 
	subsd %xmm0, %xmm1
	divpd %xmm2, %xmm3
	cmp %rsi, %rdx
	mulpd %xmm2, %xmm3
	divpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	cmp %rsi, %rdx
	.byte 0x74, 0x00 
	test %ebx, %ecx
	mulpd %xmm2, %xmm3
	.byte 0x74, 0x00 
	addsd %xmm0, %xmm1
	divpd %xmm2, %xmm3
	mulsd %xmm2, %xmm3
	mulpd %xmm2, %xmm3
	addsd %xmm0, %xmm1
	inc %r10
	addsd %xmm0, %xmm1
	nop 
	mulpd %xmm2, %xmm3
	add $43, %r9
	test %ebx, %ecx
	divpd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	addpd %xmm0, %xmm1
	cmp $43, %r9
	divpd %xmm2, %xmm3
	.byte 0x74, 0x00 
	add $43, %r9
	divpd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	lea 8(%rax), %r10
	test %ebx, %ecx
	subsd %xmm0, %xmm1
	.byte 0x75, 0x00 
	divpd %xmm2, %xmm3
	subsd %xmm0, %xmm1
	inc %r10
	divsd %xmm2, %xmm3
	test %ebx, %ecx
	cmp $43, %r9
	add $43, %r9
	mulsd %xmm2, %xmm3
	lea 8(%rax), %r10
	test %ebx, %ecx
	cmp %rsi, %rdx
	subsd %xmm0, %xmm1
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	divpd %xmm2, %xmm3
	mulsd %xmm2, %xmm3
	mulpd %xmm2, %xmm3
	cmp %rsi, %rdx
	nop 
	cmp %rsi, %rdx
	.byte 0x75, 0x00 
	subsd %xmm0, %xmm1
	divsd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	test %ebx, %ecx
	cmp %rsi, %rdx
	test %ebx, %ecx
	xor %r9, %r9
	mulpd %xmm2, %xmm3
	inc %r10
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	xor %r9, %r9
	lea 8(%rax), %r10
	#Unrolling, iteration 3 out of 8
	xor %r9, %r9
	cmp %rsi, %rdx
	xor %r9, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	mulpd %xmm2, %xmm3
	add $43, %r9
	divsd %xmm2, %xmm3
	xor %r9, %r9
	test %ebx, %ecx
	xor %r9, %r9
	cmp %rsi, %rdx
	add $43, %r9
	cmp %rsi, %rdx
	add $43, %r9
	divpd %xmm2, %xmm3
	addpd %xmm0, %xmm1
	nop 
	.byte 0x75, 0x00 
	mulsd %xmm2, %xmm3
	test %ebx, %ecx
	test %ebx, %ecx
	addsd %xmm0, %xmm1
	nop 
	xor %r9, %r9
	nop 
	nop 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	mulsd %xmm2, %xmm3
	.byte 0x74, 0x00 
	subsd %xmm0, %xmm1
	divpd %xmm2, %xmm3
	cmp %rsi, %rdx
	mulpd %xmm2, %xmm3
	divpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	cmp %rsi, %rdx
	.byte 0x74, 0x00 
	test %ebx, %ecx
	mulpd %xmm2, %xmm3
	.byte 0x74, 0x00 
	addsd %xmm0, %xmm1
	divpd %xmm2, %xmm3
	mulsd %xmm2, %xmm3
	mulpd %xmm2, %xmm3
	addsd %xmm0, %xmm1
	inc %r10
	addsd %xmm0, %xmm1
	nop 
	mulpd %xmm2, %xmm3
	add $43, %r9
	test %ebx, %ecx
	divpd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	addpd %xmm0, %xmm1
	cmp $43, %r9
	divpd %xmm2, %xmm3
	.byte 0x74, 0x00 
	add $43, %r9
	divpd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	lea 8(%rax), %r10
	test %ebx, %ecx
	subsd %xmm0, %xmm1
	.byte 0x75, 0x00 
	divpd %xmm2, %xmm3
	subsd %xmm0, %xmm1
	inc %r10
	divsd %xmm2, %xmm3
	test %ebx, %ecx
	cmp $43, %r9
	add $43, %r9
	mulsd %xmm2, %xmm3
	lea 8(%rax), %r10
	test %ebx, %ecx
	cmp %rsi, %rdx
	subsd %xmm0, %xmm1
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	divpd %xmm2, %xmm3
	mulsd %xmm2, %xmm3
	mulpd %xmm2, %xmm3
	cmp %rsi, %rdx
	nop 
	cmp %rsi, %rdx
	.byte 0x75, 0x00 
	subsd %xmm0, %xmm1
	divsd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	test %ebx, %ecx
	cmp %rsi, %rdx
	test %ebx, %ecx
	xor %r9, %r9
	mulpd %xmm2, %xmm3
	inc %r10
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	xor %r9, %r9
	lea 8(%rax), %r10
	#Unrolling, iteration 4 out of 8
	xor %r9, %r9
	cmp %rsi, %rdx
	xor %r9, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	mulpd %xmm2, %xmm3
	add $43, %r9
	divsd %xmm2, %xmm3
	xor %r9, %r9
	test %ebx, %ecx
	xor %r9, %r9
	cmp %rsi, %rdx
	add $43, %r9
	cmp %rsi, %rdx
	add $43, %r9
	divpd %xmm2, %xmm3
	addpd %xmm0, %xmm1
	nop 
	.byte 0x75, 0x00 
	mulsd %xmm2, %xmm3
	test %ebx, %ecx
	test %ebx, %ecx
	addsd %xmm0, %xmm1
	nop 
	xor %r9, %r9
	nop 
	nop 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	mulsd %xmm2, %xmm3
	.byte 0x74, 0x00 
	subsd %xmm0, %xmm1
	divpd %xmm2, %xmm3
	cmp %rsi, %rdx
	mulpd %xmm2, %xmm3
	divpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	cmp %rsi, %rdx
	.byte 0x74, 0x00 
	test %ebx, %ecx
	mulpd %xmm2, %xmm3
	.byte 0x74, 0x00 
	addsd %xmm0, %xmm1
	divpd %xmm2, %xmm3
	mulsd %xmm2, %xmm3
	mulpd %xmm2, %xmm3
	addsd %xmm0, %xmm1
	inc %r10
	addsd %xmm0, %xmm1
	nop 
	mulpd %xmm2, %xmm3
	add $43, %r9
	test %ebx, %ecx
	divpd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	addpd %xmm0, %xmm1
	cmp $43, %r9
	divpd %xmm2, %xmm3
	.byte 0x74, 0x00 
	add $43, %r9
	divpd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	lea 8(%rax), %r10
	test %ebx, %ecx
	subsd %xmm0, %xmm1
	.byte 0x75, 0x00 
	divpd %xmm2, %xmm3
	subsd %xmm0, %xmm1
	inc %r10
	divsd %xmm2, %xmm3
	test %ebx, %ecx
	cmp $43, %r9
	add $43, %r9
	mulsd %xmm2, %xmm3
	lea 8(%rax), %r10
	test %ebx, %ecx
	cmp %rsi, %rdx
	subsd %xmm0, %xmm1
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	divpd %xmm2, %xmm3
	mulsd %xmm2, %xmm3
	mulpd %xmm2, %xmm3
	cmp %rsi, %rdx
	nop 
	cmp %rsi, %rdx
	.byte 0x75, 0x00 
	subsd %xmm0, %xmm1
	divsd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	test %ebx, %ecx
	cmp %rsi, %rdx
	test %ebx, %ecx
	xor %r9, %r9
	mulpd %xmm2, %xmm3
	inc %r10
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	xor %r9, %r9
	lea 8(%rax), %r10
	#Unrolling, iteration 5 out of 8
	xor %r9, %r9
	cmp %rsi, %rdx
	xor %r9, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	mulpd %xmm2, %xmm3
	add $43, %r9
	divsd %xmm2, %xmm3
	xor %r9, %r9
	test %ebx, %ecx
	xor %r9, %r9
	cmp %rsi, %rdx
	add $43, %r9
	cmp %rsi, %rdx
	add $43, %r9
	divpd %xmm2, %xmm3
	addpd %xmm0, %xmm1
	nop 
	.byte 0x75, 0x00 
	mulsd %xmm2, %xmm3
	test %ebx, %ecx
	test %ebx, %ecx
	addsd %xmm0, %xmm1
	nop 
	xor %r9, %r9
	nop 
	nop 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	mulsd %xmm2, %xmm3
	.byte 0x74, 0x00 
	subsd %xmm0, %xmm1
	divpd %xmm2, %xmm3
	cmp %rsi, %rdx
	mulpd %xmm2, %xmm3
	divpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	cmp %rsi, %rdx
	.byte 0x74, 0x00 
	test %ebx, %ecx
	mulpd %xmm2, %xmm3
	.byte 0x74, 0x00 
	addsd %xmm0, %xmm1
	divpd %xmm2, %xmm3
	mulsd %xmm2, %xmm3
	mulpd %xmm2, %xmm3
	addsd %xmm0, %xmm1
	inc %r10
	addsd %xmm0, %xmm1
	nop 
	mulpd %xmm2, %xmm3
	add $43, %r9
	test %ebx, %ecx
	divpd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	addpd %xmm0, %xmm1
	cmp $43, %r9
	divpd %xmm2, %xmm3
	.byte 0x74, 0x00 
	add $43, %r9
	divpd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	lea 8(%rax), %r10
	test %ebx, %ecx
	subsd %xmm0, %xmm1
	.byte 0x75, 0x00 
	divpd %xmm2, %xmm3
	subsd %xmm0, %xmm1
	inc %r10
	divsd %xmm2, %xmm3
	test %ebx, %ecx
	cmp $43, %r9
	add $43, %r9
	mulsd %xmm2, %xmm3
	lea 8(%rax), %r10
	test %ebx, %ecx
	cmp %rsi, %rdx
	subsd %xmm0, %xmm1
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	divpd %xmm2, %xmm3
	mulsd %xmm2, %xmm3
	mulpd %xmm2, %xmm3
	cmp %rsi, %rdx
	nop 
	cmp %rsi, %rdx
	.byte 0x75, 0x00 
	subsd %xmm0, %xmm1
	divsd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	test %ebx, %ecx
	cmp %rsi, %rdx
	test %ebx, %ecx
	xor %r9, %r9
	mulpd %xmm2, %xmm3
	inc %r10
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	xor %r9, %r9
	lea 8(%rax), %r10
	#Unrolling, iteration 6 out of 8
	xor %r9, %r9
	cmp %rsi, %rdx
	xor %r9, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	mulpd %xmm2, %xmm3
	add $43, %r9
	divsd %xmm2, %xmm3
	xor %r9, %r9
	test %ebx, %ecx
	xor %r9, %r9
	cmp %rsi, %rdx
	add $43, %r9
	cmp %rsi, %rdx
	add $43, %r9
	divpd %xmm2, %xmm3
	addpd %xmm0, %xmm1
	nop 
	.byte 0x75, 0x00 
	mulsd %xmm2, %xmm3
	test %ebx, %ecx
	test %ebx, %ecx
	addsd %xmm0, %xmm1
	nop 
	xor %r9, %r9
	nop 
	nop 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	mulsd %xmm2, %xmm3
	.byte 0x74, 0x00 
	subsd %xmm0, %xmm1
	divpd %xmm2, %xmm3
	cmp %rsi, %rdx
	mulpd %xmm2, %xmm3
	divpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	cmp %rsi, %rdx
	.byte 0x74, 0x00 
	test %ebx, %ecx
	mulpd %xmm2, %xmm3
	.byte 0x74, 0x00 
	addsd %xmm0, %xmm1
	divpd %xmm2, %xmm3
	mulsd %xmm2, %xmm3
	mulpd %xmm2, %xmm3
	addsd %xmm0, %xmm1
	inc %r10
	addsd %xmm0, %xmm1
	nop 
	mulpd %xmm2, %xmm3
	add $43, %r9
	test %ebx, %ecx
	divpd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	addpd %xmm0, %xmm1
	cmp $43, %r9
	divpd %xmm2, %xmm3
	.byte 0x74, 0x00 
	add $43, %r9
	divpd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	lea 8(%rax), %r10
	test %ebx, %ecx
	subsd %xmm0, %xmm1
	.byte 0x75, 0x00 
	divpd %xmm2, %xmm3
	subsd %xmm0, %xmm1
	inc %r10
	divsd %xmm2, %xmm3
	test %ebx, %ecx
	cmp $43, %r9
	add $43, %r9
	mulsd %xmm2, %xmm3
	lea 8(%rax), %r10
	test %ebx, %ecx
	cmp %rsi, %rdx
	subsd %xmm0, %xmm1
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	divpd %xmm2, %xmm3
	mulsd %xmm2, %xmm3
	mulpd %xmm2, %xmm3
	cmp %rsi, %rdx
	nop 
	cmp %rsi, %rdx
	.byte 0x75, 0x00 
	subsd %xmm0, %xmm1
	divsd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	test %ebx, %ecx
	cmp %rsi, %rdx
	test %ebx, %ecx
	xor %r9, %r9
	mulpd %xmm2, %xmm3
	inc %r10
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	xor %r9, %r9
	lea 8(%rax), %r10
	#Unrolling, iteration 7 out of 8
	xor %r9, %r9
	cmp %rsi, %rdx
	xor %r9, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	mulpd %xmm2, %xmm3
	add $43, %r9
	divsd %xmm2, %xmm3
	xor %r9, %r9
	test %ebx, %ecx
	xor %r9, %r9
	cmp %rsi, %rdx
	add $43, %r9
	cmp %rsi, %rdx
	add $43, %r9
	divpd %xmm2, %xmm3
	addpd %xmm0, %xmm1
	nop 
	.byte 0x75, 0x00 
	mulsd %xmm2, %xmm3
	test %ebx, %ecx
	test %ebx, %ecx
	addsd %xmm0, %xmm1
	nop 
	xor %r9, %r9
	nop 
	nop 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	mulsd %xmm2, %xmm3
	.byte 0x74, 0x00 
	subsd %xmm0, %xmm1
	divpd %xmm2, %xmm3
	cmp %rsi, %rdx
	mulpd %xmm2, %xmm3
	divpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	cmp %rsi, %rdx
	.byte 0x74, 0x00 
	test %ebx, %ecx
	mulpd %xmm2, %xmm3
	.byte 0x74, 0x00 
	addsd %xmm0, %xmm1
	divpd %xmm2, %xmm3
	mulsd %xmm2, %xmm3
	mulpd %xmm2, %xmm3
	addsd %xmm0, %xmm1
	inc %r10
	addsd %xmm0, %xmm1
	nop 
	mulpd %xmm2, %xmm3
	add $43, %r9
	test %ebx, %ecx
	divpd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	addpd %xmm0, %xmm1
	cmp $43, %r9
	divpd %xmm2, %xmm3
	.byte 0x74, 0x00 
	add $43, %r9
	divpd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	lea 8(%rax), %r10
	test %ebx, %ecx
	subsd %xmm0, %xmm1
	.byte 0x75, 0x00 
	divpd %xmm2, %xmm3
	subsd %xmm0, %xmm1
	inc %r10
	divsd %xmm2, %xmm3
	test %ebx, %ecx
	cmp $43, %r9
	add $43, %r9
	mulsd %xmm2, %xmm3
	lea 8(%rax), %r10
	test %ebx, %ecx
	cmp %rsi, %rdx
	subsd %xmm0, %xmm1
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	divpd %xmm2, %xmm3
	mulsd %xmm2, %xmm3
	mulpd %xmm2, %xmm3
	cmp %rsi, %rdx
	nop 
	cmp %rsi, %rdx
	.byte 0x75, 0x00 
	subsd %xmm0, %xmm1
	divsd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	test %ebx, %ecx
	cmp %rsi, %rdx
	test %ebx, %ecx
	xor %r9, %r9
	mulpd %xmm2, %xmm3
	inc %r10
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	xor %r9, %r9
	lea 8(%rax), %r10
	#Unrolling, iteration 8 out of 8
	xor %r9, %r9
	cmp %rsi, %rdx
	xor %r9, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	mulpd %xmm2, %xmm3
	add $43, %r9
	divsd %xmm2, %xmm3
	xor %r9, %r9
	test %ebx, %ecx
	xor %r9, %r9
	cmp %rsi, %rdx
	add $43, %r9
	cmp %rsi, %rdx
	add $43, %r9
	divpd %xmm2, %xmm3
	addpd %xmm0, %xmm1
	nop 
	.byte 0x75, 0x00 
	mulsd %xmm2, %xmm3
	test %ebx, %ecx
	test %ebx, %ecx
	addsd %xmm0, %xmm1
	nop 
	xor %r9, %r9
	nop 
	nop 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	mulsd %xmm2, %xmm3
	.byte 0x74, 0x00 
	subsd %xmm0, %xmm1
	divpd %xmm2, %xmm3
	cmp %rsi, %rdx
	mulpd %xmm2, %xmm3
	divpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	cmp %rsi, %rdx
	.byte 0x74, 0x00 
	test %ebx, %ecx
	mulpd %xmm2, %xmm3
	.byte 0x74, 0x00 
	addsd %xmm0, %xmm1
	divpd %xmm2, %xmm3
	mulsd %xmm2, %xmm3
	mulpd %xmm2, %xmm3
	addsd %xmm0, %xmm1
	inc %r10
	addsd %xmm0, %xmm1
	nop 
	mulpd %xmm2, %xmm3
	add $43, %r9
	test %ebx, %ecx
	divpd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	divsd %xmm2, %xmm3
	addpd %xmm0, %xmm1
	cmp $43, %r9
	divpd %xmm2, %xmm3
	.byte 0x74, 0x00 
	add $43, %r9
	divpd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	lea 8(%rax), %r10
	test %ebx, %ecx
	subsd %xmm0, %xmm1
	.byte 0x75, 0x00 
	divpd %xmm2, %xmm3
	subsd %xmm0, %xmm1
	inc %r10
	divsd %xmm2, %xmm3
	test %ebx, %ecx
	cmp $43, %r9
	add $43, %r9
	mulsd %xmm2, %xmm3
	lea 8(%rax), %r10
	test %ebx, %ecx
	cmp %rsi, %rdx
	subsd %xmm0, %xmm1
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	divpd %xmm2, %xmm3
	mulsd %xmm2, %xmm3
	mulpd %xmm2, %xmm3
	cmp %rsi, %rdx
	nop 
	cmp %rsi, %rdx
	.byte 0x75, 0x00 
	subsd %xmm0, %xmm1
	divsd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	test %ebx, %ecx
	cmp %rsi, %rdx
	test %ebx, %ecx
	xor %r9, %r9
	mulpd %xmm2, %xmm3
	inc %r10
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	xor %r9, %r9
	lea 8(%rax), %r10
	#Unroll ending
	#Induction variables
	##Induction variable: 1 , 1 , 1
	add $1, %eax
	##Induction variable: 8 , 16 , 8
	add $128, %rsi
	sub $128, %rdi
	jge .L6

.L3:
    mov 0(%rsp), %r10
    mov 8(%rsp), %r11
    mov 16(%rsp), %r12
    mov 24(%rsp), %r13
    mov 32(%rsp), %r14
    mov 40(%rsp), %r15
    add $48, %rsp

	ret
	.cfi_endproc
.LFE22:
	.size	entryPoint, .-entryPoint
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5) 4.4.3"
	.section	.note.GNU-stack,"",@progbits

