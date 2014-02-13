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
	.byte 0x74, 0x00 
	xor %r9, %r9
	inc %r10
	subsd %xmm0, %xmm1
	cmp $43, %r9
	cmp $43, %r9
	.byte 0x75, 0x00 
	.byte 0x74, 0x00 
	cmp $43, %r9
	subsd %xmm0, %xmm1
	xor %r9, %r9
	mulsd %xmm2, %xmm3
	cmp %rsi, %rdx
	cmp $43, %r9
	nop 
	cmp %rsi, %rdx
	lea 8(%rax), %r10
	.byte 0x75, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	addsd %xmm0, %xmm1
	test %ebx, %ecx
	test %ebx, %ecx
	inc %r10
	nop 
	divsd %xmm2, %xmm3
	.byte 0x75, 0x00 
	divsd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	addpd %xmm0, %xmm1
	mulsd %xmm2, %xmm3
	divpd %xmm2, %xmm3
	cmp $43, %r9
	subsd %xmm0, %xmm1
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	nop 
	cmp %rsi, %rdx
	nop 
	.byte 0x74, 0x00 
	cmp %rsi, %rdx
	addpd %xmm0, %xmm1
	.byte 0x74, 0x00 
	.byte 0x75, 0x00 
	add $43, %r9
	cmp %rsi, %rdx
	cmp %rsi, %rdx
	inc %r10
	lea 8(%rax), %r10
	test %ebx, %ecx
	mulsd %xmm2, %xmm3
	test %ebx, %ecx
	cmp $43, %r9
	addpd %xmm0, %xmm1
	cmp $43, %r9
	subsd %xmm0, %xmm1
	mulsd %xmm2, %xmm3
	cmp %rsi, %rdx
	addsd %xmm0, %xmm1
	test %ebx, %ecx
	.byte 0x74, 0x00 
	addsd %xmm0, %xmm1
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	.byte 0x74, 0x00 
	nop 
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	cmp %rsi, %rdx
	mulsd %xmm2, %xmm3
	inc %r10
	lea 8(%rax), %r10
	divsd %xmm2, %xmm3
	.byte 0x75, 0x00 
	subsd %xmm0, %xmm1
	add $43, %r9
	divpd %xmm2, %xmm3
	inc %r10
	.byte 0x75, 0x00 
	addsd %xmm0, %xmm1
	inc %r10
	cmp $43, %r9
	.byte 0x74, 0x00 
	cmp %rsi, %rdx
	inc %r10
	inc %r10
	xor %r9, %r9
	nop 
	addsd %xmm0, %xmm1
	cmp $43, %r9
	.byte 0x74, 0x00 
	mulpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	addpd %xmm0, %xmm1
	lea 8(%rax), %r10
	test %ebx, %ecx
	cmp $43, %r9
	mulpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	test %ebx, %ecx
	#Unrolling, iteration 2 out of 8
	.byte 0x74, 0x00 
	xor %r9, %r9
	inc %r10
	subsd %xmm0, %xmm1
	cmp $43, %r9
	cmp $43, %r9
	.byte 0x75, 0x00 
	.byte 0x74, 0x00 
	cmp $43, %r9
	subsd %xmm0, %xmm1
	xor %r9, %r9
	mulsd %xmm2, %xmm3
	cmp %rsi, %rdx
	cmp $43, %r9
	nop 
	cmp %rsi, %rdx
	lea 8(%rax), %r10
	.byte 0x75, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	addsd %xmm0, %xmm1
	test %ebx, %ecx
	test %ebx, %ecx
	inc %r10
	nop 
	divsd %xmm2, %xmm3
	.byte 0x75, 0x00 
	divsd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	addpd %xmm0, %xmm1
	mulsd %xmm2, %xmm3
	divpd %xmm2, %xmm3
	cmp $43, %r9
	subsd %xmm0, %xmm1
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	nop 
	cmp %rsi, %rdx
	nop 
	.byte 0x74, 0x00 
	cmp %rsi, %rdx
	addpd %xmm0, %xmm1
	.byte 0x74, 0x00 
	.byte 0x75, 0x00 
	add $43, %r9
	cmp %rsi, %rdx
	cmp %rsi, %rdx
	inc %r10
	lea 8(%rax), %r10
	test %ebx, %ecx
	mulsd %xmm2, %xmm3
	test %ebx, %ecx
	cmp $43, %r9
	addpd %xmm0, %xmm1
	cmp $43, %r9
	subsd %xmm0, %xmm1
	mulsd %xmm2, %xmm3
	cmp %rsi, %rdx
	addsd %xmm0, %xmm1
	test %ebx, %ecx
	.byte 0x74, 0x00 
	addsd %xmm0, %xmm1
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	.byte 0x74, 0x00 
	nop 
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	cmp %rsi, %rdx
	mulsd %xmm2, %xmm3
	inc %r10
	lea 8(%rax), %r10
	divsd %xmm2, %xmm3
	.byte 0x75, 0x00 
	subsd %xmm0, %xmm1
	add $43, %r9
	divpd %xmm2, %xmm3
	inc %r10
	.byte 0x75, 0x00 
	addsd %xmm0, %xmm1
	inc %r10
	cmp $43, %r9
	.byte 0x74, 0x00 
	cmp %rsi, %rdx
	inc %r10
	inc %r10
	xor %r9, %r9
	nop 
	addsd %xmm0, %xmm1
	cmp $43, %r9
	.byte 0x74, 0x00 
	mulpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	addpd %xmm0, %xmm1
	lea 8(%rax), %r10
	test %ebx, %ecx
	cmp $43, %r9
	mulpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	test %ebx, %ecx
	#Unrolling, iteration 3 out of 8
	.byte 0x74, 0x00 
	xor %r9, %r9
	inc %r10
	subsd %xmm0, %xmm1
	cmp $43, %r9
	cmp $43, %r9
	.byte 0x75, 0x00 
	.byte 0x74, 0x00 
	cmp $43, %r9
	subsd %xmm0, %xmm1
	xor %r9, %r9
	mulsd %xmm2, %xmm3
	cmp %rsi, %rdx
	cmp $43, %r9
	nop 
	cmp %rsi, %rdx
	lea 8(%rax), %r10
	.byte 0x75, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	addsd %xmm0, %xmm1
	test %ebx, %ecx
	test %ebx, %ecx
	inc %r10
	nop 
	divsd %xmm2, %xmm3
	.byte 0x75, 0x00 
	divsd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	addpd %xmm0, %xmm1
	mulsd %xmm2, %xmm3
	divpd %xmm2, %xmm3
	cmp $43, %r9
	subsd %xmm0, %xmm1
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	nop 
	cmp %rsi, %rdx
	nop 
	.byte 0x74, 0x00 
	cmp %rsi, %rdx
	addpd %xmm0, %xmm1
	.byte 0x74, 0x00 
	.byte 0x75, 0x00 
	add $43, %r9
	cmp %rsi, %rdx
	cmp %rsi, %rdx
	inc %r10
	lea 8(%rax), %r10
	test %ebx, %ecx
	mulsd %xmm2, %xmm3
	test %ebx, %ecx
	cmp $43, %r9
	addpd %xmm0, %xmm1
	cmp $43, %r9
	subsd %xmm0, %xmm1
	mulsd %xmm2, %xmm3
	cmp %rsi, %rdx
	addsd %xmm0, %xmm1
	test %ebx, %ecx
	.byte 0x74, 0x00 
	addsd %xmm0, %xmm1
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	.byte 0x74, 0x00 
	nop 
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	cmp %rsi, %rdx
	mulsd %xmm2, %xmm3
	inc %r10
	lea 8(%rax), %r10
	divsd %xmm2, %xmm3
	.byte 0x75, 0x00 
	subsd %xmm0, %xmm1
	add $43, %r9
	divpd %xmm2, %xmm3
	inc %r10
	.byte 0x75, 0x00 
	addsd %xmm0, %xmm1
	inc %r10
	cmp $43, %r9
	.byte 0x74, 0x00 
	cmp %rsi, %rdx
	inc %r10
	inc %r10
	xor %r9, %r9
	nop 
	addsd %xmm0, %xmm1
	cmp $43, %r9
	.byte 0x74, 0x00 
	mulpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	addpd %xmm0, %xmm1
	lea 8(%rax), %r10
	test %ebx, %ecx
	cmp $43, %r9
	mulpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	test %ebx, %ecx
	#Unrolling, iteration 4 out of 8
	.byte 0x74, 0x00 
	xor %r9, %r9
	inc %r10
	subsd %xmm0, %xmm1
	cmp $43, %r9
	cmp $43, %r9
	.byte 0x75, 0x00 
	.byte 0x74, 0x00 
	cmp $43, %r9
	subsd %xmm0, %xmm1
	xor %r9, %r9
	mulsd %xmm2, %xmm3
	cmp %rsi, %rdx
	cmp $43, %r9
	nop 
	cmp %rsi, %rdx
	lea 8(%rax), %r10
	.byte 0x75, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	addsd %xmm0, %xmm1
	test %ebx, %ecx
	test %ebx, %ecx
	inc %r10
	nop 
	divsd %xmm2, %xmm3
	.byte 0x75, 0x00 
	divsd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	addpd %xmm0, %xmm1
	mulsd %xmm2, %xmm3
	divpd %xmm2, %xmm3
	cmp $43, %r9
	subsd %xmm0, %xmm1
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	nop 
	cmp %rsi, %rdx
	nop 
	.byte 0x74, 0x00 
	cmp %rsi, %rdx
	addpd %xmm0, %xmm1
	.byte 0x74, 0x00 
	.byte 0x75, 0x00 
	add $43, %r9
	cmp %rsi, %rdx
	cmp %rsi, %rdx
	inc %r10
	lea 8(%rax), %r10
	test %ebx, %ecx
	mulsd %xmm2, %xmm3
	test %ebx, %ecx
	cmp $43, %r9
	addpd %xmm0, %xmm1
	cmp $43, %r9
	subsd %xmm0, %xmm1
	mulsd %xmm2, %xmm3
	cmp %rsi, %rdx
	addsd %xmm0, %xmm1
	test %ebx, %ecx
	.byte 0x74, 0x00 
	addsd %xmm0, %xmm1
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	.byte 0x74, 0x00 
	nop 
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	cmp %rsi, %rdx
	mulsd %xmm2, %xmm3
	inc %r10
	lea 8(%rax), %r10
	divsd %xmm2, %xmm3
	.byte 0x75, 0x00 
	subsd %xmm0, %xmm1
	add $43, %r9
	divpd %xmm2, %xmm3
	inc %r10
	.byte 0x75, 0x00 
	addsd %xmm0, %xmm1
	inc %r10
	cmp $43, %r9
	.byte 0x74, 0x00 
	cmp %rsi, %rdx
	inc %r10
	inc %r10
	xor %r9, %r9
	nop 
	addsd %xmm0, %xmm1
	cmp $43, %r9
	.byte 0x74, 0x00 
	mulpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	addpd %xmm0, %xmm1
	lea 8(%rax), %r10
	test %ebx, %ecx
	cmp $43, %r9
	mulpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	test %ebx, %ecx
	#Unrolling, iteration 5 out of 8
	.byte 0x74, 0x00 
	xor %r9, %r9
	inc %r10
	subsd %xmm0, %xmm1
	cmp $43, %r9
	cmp $43, %r9
	.byte 0x75, 0x00 
	.byte 0x74, 0x00 
	cmp $43, %r9
	subsd %xmm0, %xmm1
	xor %r9, %r9
	mulsd %xmm2, %xmm3
	cmp %rsi, %rdx
	cmp $43, %r9
	nop 
	cmp %rsi, %rdx
	lea 8(%rax), %r10
	.byte 0x75, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	addsd %xmm0, %xmm1
	test %ebx, %ecx
	test %ebx, %ecx
	inc %r10
	nop 
	divsd %xmm2, %xmm3
	.byte 0x75, 0x00 
	divsd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	addpd %xmm0, %xmm1
	mulsd %xmm2, %xmm3
	divpd %xmm2, %xmm3
	cmp $43, %r9
	subsd %xmm0, %xmm1
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	nop 
	cmp %rsi, %rdx
	nop 
	.byte 0x74, 0x00 
	cmp %rsi, %rdx
	addpd %xmm0, %xmm1
	.byte 0x74, 0x00 
	.byte 0x75, 0x00 
	add $43, %r9
	cmp %rsi, %rdx
	cmp %rsi, %rdx
	inc %r10
	lea 8(%rax), %r10
	test %ebx, %ecx
	mulsd %xmm2, %xmm3
	test %ebx, %ecx
	cmp $43, %r9
	addpd %xmm0, %xmm1
	cmp $43, %r9
	subsd %xmm0, %xmm1
	mulsd %xmm2, %xmm3
	cmp %rsi, %rdx
	addsd %xmm0, %xmm1
	test %ebx, %ecx
	.byte 0x74, 0x00 
	addsd %xmm0, %xmm1
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	.byte 0x74, 0x00 
	nop 
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	cmp %rsi, %rdx
	mulsd %xmm2, %xmm3
	inc %r10
	lea 8(%rax), %r10
	divsd %xmm2, %xmm3
	.byte 0x75, 0x00 
	subsd %xmm0, %xmm1
	add $43, %r9
	divpd %xmm2, %xmm3
	inc %r10
	.byte 0x75, 0x00 
	addsd %xmm0, %xmm1
	inc %r10
	cmp $43, %r9
	.byte 0x74, 0x00 
	cmp %rsi, %rdx
	inc %r10
	inc %r10
	xor %r9, %r9
	nop 
	addsd %xmm0, %xmm1
	cmp $43, %r9
	.byte 0x74, 0x00 
	mulpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	addpd %xmm0, %xmm1
	lea 8(%rax), %r10
	test %ebx, %ecx
	cmp $43, %r9
	mulpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	test %ebx, %ecx
	#Unrolling, iteration 6 out of 8
	.byte 0x74, 0x00 
	xor %r9, %r9
	inc %r10
	subsd %xmm0, %xmm1
	cmp $43, %r9
	cmp $43, %r9
	.byte 0x75, 0x00 
	.byte 0x74, 0x00 
	cmp $43, %r9
	subsd %xmm0, %xmm1
	xor %r9, %r9
	mulsd %xmm2, %xmm3
	cmp %rsi, %rdx
	cmp $43, %r9
	nop 
	cmp %rsi, %rdx
	lea 8(%rax), %r10
	.byte 0x75, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	addsd %xmm0, %xmm1
	test %ebx, %ecx
	test %ebx, %ecx
	inc %r10
	nop 
	divsd %xmm2, %xmm3
	.byte 0x75, 0x00 
	divsd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	addpd %xmm0, %xmm1
	mulsd %xmm2, %xmm3
	divpd %xmm2, %xmm3
	cmp $43, %r9
	subsd %xmm0, %xmm1
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	nop 
	cmp %rsi, %rdx
	nop 
	.byte 0x74, 0x00 
	cmp %rsi, %rdx
	addpd %xmm0, %xmm1
	.byte 0x74, 0x00 
	.byte 0x75, 0x00 
	add $43, %r9
	cmp %rsi, %rdx
	cmp %rsi, %rdx
	inc %r10
	lea 8(%rax), %r10
	test %ebx, %ecx
	mulsd %xmm2, %xmm3
	test %ebx, %ecx
	cmp $43, %r9
	addpd %xmm0, %xmm1
	cmp $43, %r9
	subsd %xmm0, %xmm1
	mulsd %xmm2, %xmm3
	cmp %rsi, %rdx
	addsd %xmm0, %xmm1
	test %ebx, %ecx
	.byte 0x74, 0x00 
	addsd %xmm0, %xmm1
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	.byte 0x74, 0x00 
	nop 
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	cmp %rsi, %rdx
	mulsd %xmm2, %xmm3
	inc %r10
	lea 8(%rax), %r10
	divsd %xmm2, %xmm3
	.byte 0x75, 0x00 
	subsd %xmm0, %xmm1
	add $43, %r9
	divpd %xmm2, %xmm3
	inc %r10
	.byte 0x75, 0x00 
	addsd %xmm0, %xmm1
	inc %r10
	cmp $43, %r9
	.byte 0x74, 0x00 
	cmp %rsi, %rdx
	inc %r10
	inc %r10
	xor %r9, %r9
	nop 
	addsd %xmm0, %xmm1
	cmp $43, %r9
	.byte 0x74, 0x00 
	mulpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	addpd %xmm0, %xmm1
	lea 8(%rax), %r10
	test %ebx, %ecx
	cmp $43, %r9
	mulpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	test %ebx, %ecx
	#Unrolling, iteration 7 out of 8
	.byte 0x74, 0x00 
	xor %r9, %r9
	inc %r10
	subsd %xmm0, %xmm1
	cmp $43, %r9
	cmp $43, %r9
	.byte 0x75, 0x00 
	.byte 0x74, 0x00 
	cmp $43, %r9
	subsd %xmm0, %xmm1
	xor %r9, %r9
	mulsd %xmm2, %xmm3
	cmp %rsi, %rdx
	cmp $43, %r9
	nop 
	cmp %rsi, %rdx
	lea 8(%rax), %r10
	.byte 0x75, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	addsd %xmm0, %xmm1
	test %ebx, %ecx
	test %ebx, %ecx
	inc %r10
	nop 
	divsd %xmm2, %xmm3
	.byte 0x75, 0x00 
	divsd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	addpd %xmm0, %xmm1
	mulsd %xmm2, %xmm3
	divpd %xmm2, %xmm3
	cmp $43, %r9
	subsd %xmm0, %xmm1
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	nop 
	cmp %rsi, %rdx
	nop 
	.byte 0x74, 0x00 
	cmp %rsi, %rdx
	addpd %xmm0, %xmm1
	.byte 0x74, 0x00 
	.byte 0x75, 0x00 
	add $43, %r9
	cmp %rsi, %rdx
	cmp %rsi, %rdx
	inc %r10
	lea 8(%rax), %r10
	test %ebx, %ecx
	mulsd %xmm2, %xmm3
	test %ebx, %ecx
	cmp $43, %r9
	addpd %xmm0, %xmm1
	cmp $43, %r9
	subsd %xmm0, %xmm1
	mulsd %xmm2, %xmm3
	cmp %rsi, %rdx
	addsd %xmm0, %xmm1
	test %ebx, %ecx
	.byte 0x74, 0x00 
	addsd %xmm0, %xmm1
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	.byte 0x74, 0x00 
	nop 
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	cmp %rsi, %rdx
	mulsd %xmm2, %xmm3
	inc %r10
	lea 8(%rax), %r10
	divsd %xmm2, %xmm3
	.byte 0x75, 0x00 
	subsd %xmm0, %xmm1
	add $43, %r9
	divpd %xmm2, %xmm3
	inc %r10
	.byte 0x75, 0x00 
	addsd %xmm0, %xmm1
	inc %r10
	cmp $43, %r9
	.byte 0x74, 0x00 
	cmp %rsi, %rdx
	inc %r10
	inc %r10
	xor %r9, %r9
	nop 
	addsd %xmm0, %xmm1
	cmp $43, %r9
	.byte 0x74, 0x00 
	mulpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	addpd %xmm0, %xmm1
	lea 8(%rax), %r10
	test %ebx, %ecx
	cmp $43, %r9
	mulpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	test %ebx, %ecx
	#Unrolling, iteration 8 out of 8
	.byte 0x74, 0x00 
	xor %r9, %r9
	inc %r10
	subsd %xmm0, %xmm1
	cmp $43, %r9
	cmp $43, %r9
	.byte 0x75, 0x00 
	.byte 0x74, 0x00 
	cmp $43, %r9
	subsd %xmm0, %xmm1
	xor %r9, %r9
	mulsd %xmm2, %xmm3
	cmp %rsi, %rdx
	cmp $43, %r9
	nop 
	cmp %rsi, %rdx
	lea 8(%rax), %r10
	.byte 0x75, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	addsd %xmm0, %xmm1
	test %ebx, %ecx
	test %ebx, %ecx
	inc %r10
	nop 
	divsd %xmm2, %xmm3
	.byte 0x75, 0x00 
	divsd %xmm2, %xmm3
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	addpd %xmm0, %xmm1
	mulsd %xmm2, %xmm3
	divpd %xmm2, %xmm3
	cmp $43, %r9
	subsd %xmm0, %xmm1
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	nop 
	cmp %rsi, %rdx
	nop 
	.byte 0x74, 0x00 
	cmp %rsi, %rdx
	addpd %xmm0, %xmm1
	.byte 0x74, 0x00 
	.byte 0x75, 0x00 
	add $43, %r9
	cmp %rsi, %rdx
	cmp %rsi, %rdx
	inc %r10
	lea 8(%rax), %r10
	test %ebx, %ecx
	mulsd %xmm2, %xmm3
	test %ebx, %ecx
	cmp $43, %r9
	addpd %xmm0, %xmm1
	cmp $43, %r9
	subsd %xmm0, %xmm1
	mulsd %xmm2, %xmm3
	cmp %rsi, %rdx
	addsd %xmm0, %xmm1
	test %ebx, %ecx
	.byte 0x74, 0x00 
	addsd %xmm0, %xmm1
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	.byte 0x74, 0x00 
	nop 
	add $43, %r9
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	cmp %rsi, %rdx
	mulsd %xmm2, %xmm3
	inc %r10
	lea 8(%rax), %r10
	divsd %xmm2, %xmm3
	.byte 0x75, 0x00 
	subsd %xmm0, %xmm1
	add $43, %r9
	divpd %xmm2, %xmm3
	inc %r10
	.byte 0x75, 0x00 
	addsd %xmm0, %xmm1
	inc %r10
	cmp $43, %r9
	.byte 0x74, 0x00 
	cmp %rsi, %rdx
	inc %r10
	inc %r10
	xor %r9, %r9
	nop 
	addsd %xmm0, %xmm1
	cmp $43, %r9
	.byte 0x74, 0x00 
	mulpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	addpd %xmm0, %xmm1
	lea 8(%rax), %r10
	test %ebx, %ecx
	cmp $43, %r9
	mulpd %xmm2, %xmm3
	.byte 0x75, 0x00 
	.byte 0xe9, 0x00, 0x00, 0x00, 0x00 
	test %ebx, %ecx
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

