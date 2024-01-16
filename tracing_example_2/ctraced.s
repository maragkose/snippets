	.file	"ctraced.c"
	.text
.Ltext0:
	.file 0 "/home/maragos/snippets/tracing_example_2" "ctraced.c"
	.local	mutex1
	.comm	mutex1,40,32
	.local	mutex2
	.comm	mutex2,40,32
	.local	mutex3
	.comm	mutex3,40,32
	.local	_do_exit
	.comm	_do_exit,4,4
	.section	.rodata
.LC0:
	.string	"%s %d\n"
	.text
	.globl	f4
	.type	f4, @function
f4:
.LFB6:
	.file 1 "ctraced.c"
	.loc 1 31 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	f4(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_enter@PLT
	.loc 1 32 5
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	__FUNCTION__.3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	f4(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_exit@PLT
	.loc 1 33 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	f4, .-f4
	.type	f3, @function
f3:
.LFB7:
	.loc 1 37 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	f3(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_enter@PLT
	.loc 1 38 5
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	leaq	__FUNCTION__.1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 39 5
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	f4
	.loc 1 40 12
	movl	$80, %ebx
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	f3(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_exit@PLT
	movl	%ebx, %eax
	.loc 1 41 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	f3, .-f3
	.globl	f2
	.type	f2, @function
f2:
.LFB8:
	.loc 1 45 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	f2(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_enter@PLT
	.loc 1 46 5
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	leaq	__FUNCTION__.2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 47 5
	movl	-20(%rbp), %eax
	addl	$70, %eax
	movl	%eax, %edi
	call	f3
	.loc 1 48 12
	movl	$70, %ebx
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	f2(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_exit@PLT
	movl	%ebx, %eax
	.loc 1 49 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	f2, .-f2
	.type	f1, @function
f1:
.LFB9:
	.loc 1 53 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	f1(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_enter@PLT
	.loc 1 54 5
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	leaq	__FUNCTION__.0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 55 5
	movl	-20(%rbp), %eax
	addl	$60, %eax
	movl	%eax, %edi
	call	f2
	.loc 1 56 12
	movl	$60, %ebx
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	f1(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_exit@PLT
	movl	%ebx, %eax
	.loc 1 57 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	f1, .-f1
	.type	wrap_strerror_r, @function
wrap_strerror_r:
.LFB10:
	.loc 1 62 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	wrap_strerror_r(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_enter@PLT
	.loc 1 63 11
	movq	$0, -24(%rbp)
	.loc 1 65 5
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 66 11
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	strerror_r@PLT
	movq	%rax, -24(%rbp)
	.loc 1 68 22
	cmpq	$0, -24(%rbp)
	je	.L9
	.loc 1 68 22 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rbx
	jmp	.L10
.L9:
	.loc 1 68 22 discriminator 2
	movq	-48(%rbp), %rbx
.L10:
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	wrap_strerror_r(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_exit@PLT
	.loc 1 68 22 discriminator 4
	movq	%rbx, %rax
	.loc 1 69 1 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	wrap_strerror_r, .-wrap_strerror_r
	.section	.rodata
	.align 8
.LC1:
	.string	"Hello World! It's me, thread #%d!\n"
.LC2:
	.string	"T#%d!\n"
.LC3:
	.string	"T#%d+M2 (%s)\n"
.LC4:
	.string	"T#%d+M1 (%s)\n"
.LC5:
	.string	"T#%d-M1 (%s)\n"
.LC6:
	.string	"T#%d-M2 (%s)\n"
	.text
	.globl	thread1
	.type	thread1, @function
thread1:
.LFB11:
	.loc 1 74 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -296(%rbp)
	.loc 1 74 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	thread1(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_enter@PLT
	.loc 1 75 9
	movq	-296(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -280(%rbp)
	.loc 1 77 5
	movl	-280(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 79 11
	jmp	.L13
.L16:
.LBB2:
	.loc 1 80 14
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	.loc 1 83 9
	movl	$1, %edi
	call	sleep@PLT
	.loc 1 84 9
	movl	-280(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 86 15
	leaq	mutex2(%rip), %rax
	movq	%rax, %rdi
	call	pthread_mutex_lock@PLT
	movl	%eax, -276(%rbp)
	.loc 1 87 12
	cmpl	$0, -276(%rbp)
	jne	.L13
	.loc 1 88 13
	leaq	-272(%rbp), %rcx
	movl	-276(%rbp), %eax
	movl	$255, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	wrap_strerror_r
	movq	%rax, %rdx
	movl	-280(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 90 13
	movl	$2, %edi
	call	sleep@PLT
	.loc 1 92 16
	cmpl	$0, -276(%rbp)
	jne	.L15
	.loc 1 93 23
	leaq	mutex1(%rip), %rax
	movq	%rax, %rdi
	call	pthread_mutex_lock@PLT
	movl	%eax, -276(%rbp)
	.loc 1 94 17
	leaq	-272(%rbp), %rcx
	movl	-276(%rbp), %eax
	movl	$255, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	wrap_strerror_r
	movq	%rax, %rdx
	movl	-280(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 96 17
	movl	$1, %edi
	call	sleep@PLT
	.loc 1 98 17
	movl	$1, %edi
	call	sleep@PLT
	.loc 1 99 17
	movl	-280(%rbp), %eax
	movl	%eax, %edi
	call	f1
	.loc 1 101 23
	leaq	mutex1(%rip), %rax
	movq	%rax, %rdi
	call	pthread_mutex_unlock@PLT
	movl	%eax, -276(%rbp)
	.loc 1 102 17
	leaq	-272(%rbp), %rcx
	movl	-276(%rbp), %eax
	movl	$255, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	wrap_strerror_r
	movq	%rax, %rdx
	movl	-280(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 104 17
	movl	$1, %edi
	call	sleep@PLT
.L15:
	.loc 1 107 19
	leaq	mutex2(%rip), %rax
	movq	%rax, %rdi
	call	pthread_mutex_unlock@PLT
	movl	%eax, -276(%rbp)
	.loc 1 108 13
	leaq	-272(%rbp), %rcx
	movl	-276(%rbp), %eax
	movl	$255, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	wrap_strerror_r
	movq	%rax, %rdx
	movl	-280(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L13:
.LBE2:
	.loc 1 79 12
	movl	_do_exit(%rip), %eax
	testl	%eax, %eax
	je	.L16
	.loc 1 113 5
	movl	$0, %edi
	call	pthread_exit@PLT
	.cfi_endproc
.LFE11:
	.size	thread1, .-thread1
	.globl	thread2
	.type	thread2, @function
thread2:
.LFB12:
	.loc 1 118 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	thread2(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_enter@PLT
	.loc 1 119 9
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 120 5
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 122 11
	jmp	.L19
.L20:
	.loc 1 123 9
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 124 9
	movl	$1, %edi
	call	sleep@PLT
	.loc 1 125 9
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	f1
.L19:
	.loc 1 122 12
	movl	_do_exit(%rip), %eax
	testl	%eax, %eax
	je	.L20
	.loc 1 128 5
	movl	$0, %edi
	call	pthread_exit@PLT
	.cfi_endproc
.LFE12:
	.size	thread2, .-thread2
	.section	.rodata
.LC7:
	.string	"T#%d+M3=%d (%s)\n"
	.text
	.globl	thread3
	.type	thread3, @function
thread3:
.LFB13:
	.loc 1 133 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -296(%rbp)
	.loc 1 133 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	thread3(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_enter@PLT
	.loc 1 134 9
	movq	-296(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -280(%rbp)
	.loc 1 135 5
	movl	-280(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 137 11
	jmp	.L22
.L23:
.LBB3:
	.loc 1 139 14
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	.loc 1 141 9
	movl	$1, %edi
	call	sleep@PLT
	.loc 1 142 9
	movl	-280(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 144 15
	leaq	mutex3(%rip), %rax
	movq	%rax, %rdi
	call	pthread_mutex_trylock@PLT
	movl	%eax, -276(%rbp)
	.loc 1 145 9
	leaq	-272(%rbp), %rcx
	movl	-276(%rbp), %eax
	movl	$255, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	wrap_strerror_r
	movq	%rax, %rcx
	movl	-276(%rbp), %edx
	movl	-280(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 147 9
	movl	$2, %edi
	call	sleep@PLT
	.loc 1 149 9
	movl	-280(%rbp), %eax
	movl	%eax, %edi
	call	f1
.L22:
.LBE3:
	.loc 1 137 12
	movl	_do_exit(%rip), %eax
	testl	%eax, %eax
	je	.L23
	.loc 1 152 5
	movl	$0, %edi
	call	pthread_exit@PLT
	.cfi_endproc
.LFE13:
	.size	thread3, .-thread3
	.type	sigexit, @function
sigexit:
.LFB14:
	.loc 1 158 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	sigexit(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_enter@PLT
	.loc 1 159 14
	movl	$1, _do_exit(%rip)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	sigexit(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_exit@PLT
	.loc 1 160 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	sigexit, .-sigexit
	.type	set_signal, @function
set_signal:
.LFB15:
	.loc 1 164 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movl	%edi, -164(%rbp)
	movq	%rsi, -176(%rbp)
	.loc 1 164 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	set_signal(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_enter@PLT
	.loc 1 167 5
	leaq	-160(%rbp), %rax
	movl	$152, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 168 18
	movq	-176(%rbp), %rax
	movq	%rax, -160(%rbp)
	.loc 1 169 5
	leaq	-160(%rbp), %rcx
	movl	-164(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	sigaction@PLT
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	set_signal(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_exit@PLT
	.loc 1 170 1
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	set_signal, .-set_signal
	.section	.rodata
.LC8:
	.string	"%s: main(argc=%d)\n"
	.align 8
.LC9:
	.string	"Error: return code from pthread_create() is %d\n"
.LC10:
	.string	"%s: done.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB16:
	.loc 1 175 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	.loc 1 175 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	main(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_enter@PLT
	.loc 1 179 15
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	.loc 1 180 18
	leaq	thread1(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	thread2(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	thread3(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 1 181 6
	movl	$1, -92(%rbp)
	movl	$2, -88(%rbp)
	movl	$3, -84(%rbp)
	.loc 1 184 5
	leaq	sigexit(%rip), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	set_signal
	.loc 1 185 5
	leaq	sigexit(%rip), %rax
	movq	%rax, %rsi
	movl	$3, %edi
	call	set_signal
	.loc 1 187 5
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movl	-116(%rbp), %edx
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 189 11
	movl	$0, -100(%rbp)
	.loc 1 189 5
	jmp	.L29
.L31:
	.loc 1 190 65
	leaq	-92(%rbp), %rdx
	movl	-100(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, %rdx
	.loc 1 190 14
	movl	-100(%rbp), %eax
	cltq
	movq	-48(%rbp,%rax,8), %rax
	leaq	-80(%rbp), %rsi
	movl	-100(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	leaq	(%rsi,%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	pthread_create@PLT
	movl	%eax, -96(%rbp)
	.loc 1 191 12
	cmpl	$0, -96(%rbp)
	je	.L30
	.loc 1 192 13
	movl	-96(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 193 13
	movl	$1, %edi
	call	exit@PLT
.L30:
	.loc 1 189 23 discriminator 2
	addl	$1, -100(%rbp)
.L29:
	.loc 1 189 16 discriminator 1
	cmpl	$2, -100(%rbp)
	jle	.L31
	.loc 1 197 11
	jmp	.L32
.L33:
	.loc 1 198 9
	movl	$1, %edi
	call	sleep@PLT
.L32:
	.loc 1 197 12
	movl	_do_exit(%rip), %eax
	testl	%eax, %eax
	je	.L33
	.loc 1 200 5
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 201 11
	movl	$0, %ebx
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	leaq	main(%rip), %rax
	movq	%rax, %rdi
	call	__cyg_profile_func_exit@PLT
	.loc 1 202 1
	movl	%ebx, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L35
	call	__stack_chk_fail@PLT
.L35:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	main, .-main
	.section	.rodata
	.type	__FUNCTION__.3, @object
	.size	__FUNCTION__.3, 3
__FUNCTION__.3:
	.string	"f4"
	.type	__FUNCTION__.2, @object
	.size	__FUNCTION__.2, 3
__FUNCTION__.2:
	.string	"f2"
	.type	__FUNCTION__.1, @object
	.size	__FUNCTION__.1, 3
__FUNCTION__.1:
	.string	"f3"
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 3
__FUNCTION__.0:
	.string	"f1"
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h"
	.file 10 "/usr/include/signal.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/sigaction.h"
	.file 12 "/usr/include/stdlib.h"
	.file 13 "/usr/include/pthread.h"
	.file 14 "/usr/include/unistd.h"
	.file 15 "/usr/include/string.h"
	.file 16 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb5c
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1c
	.long	.LASF123
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x2a
	.byte	0x16
	.long	0x3c
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF10
	.byte	0x2
	.byte	0x92
	.byte	0x16
	.long	0x3c
	.uleb128 0x4
	.long	.LASF11
	.byte	0x2
	.byte	0x9a
	.byte	0xd
	.long	0x58
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0x9c
	.byte	0x12
	.long	0x6b
	.uleb128 0x1e
	.byte	0x8
	.uleb128 0x10
	.long	0x96
	.uleb128 0x5
	.long	0xa2
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x11
	.long	0xa2
	.uleb128 0x4
	.long	.LASF14
	.byte	0x3
	.byte	0xd1
	.byte	0x1b
	.long	0x43
	.uleb128 0x5
	.long	0x9d
	.uleb128 0x5
	.long	0xa9
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x7
	.byte	0x80
	.byte	0x4
	.byte	0x5
	.byte	0x9
	.long	0xe2
	.uleb128 0x1
	.long	.LASF18
	.byte	0x4
	.byte	0x7
	.byte	0x15
	.long	0xe2
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x43
	.long	0xf2
	.uleb128 0xa
	.long	0x43
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0x8
	.byte	0x3
	.long	0xcb
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF17
	.uleb128 0x15
	.long	.LASF22
	.byte	0x10
	.byte	0x5
	.byte	0x33
	.byte	0x10
	.long	0x12d
	.uleb128 0x1
	.long	.LASF19
	.byte	0x5
	.byte	0x35
	.byte	0x23
	.long	0x12d
	.byte	0
	.uleb128 0x1
	.long	.LASF20
	.byte	0x5
	.byte	0x36
	.byte	0x23
	.long	0x12d
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x105
	.uleb128 0x4
	.long	.LASF21
	.byte	0x5
	.byte	0x37
	.byte	0x3
	.long	0x105
	.uleb128 0x15
	.long	.LASF23
	.byte	0x28
	.byte	0x6
	.byte	0x16
	.byte	0x8
	.long	0x1b4
	.uleb128 0x1
	.long	.LASF24
	.byte	0x6
	.byte	0x18
	.byte	0x7
	.long	0x58
	.byte	0
	.uleb128 0x1
	.long	.LASF25
	.byte	0x6
	.byte	0x19
	.byte	0x10
	.long	0x3c
	.byte	0x4
	.uleb128 0x1
	.long	.LASF26
	.byte	0x6
	.byte	0x1a
	.byte	0x7
	.long	0x58
	.byte	0x8
	.uleb128 0x1
	.long	.LASF27
	.byte	0x6
	.byte	0x1c
	.byte	0x10
	.long	0x3c
	.byte	0xc
	.uleb128 0x1
	.long	.LASF28
	.byte	0x6
	.byte	0x20
	.byte	0x7
	.long	0x58
	.byte	0x10
	.uleb128 0x1
	.long	.LASF29
	.byte	0x6
	.byte	0x22
	.byte	0x9
	.long	0x51
	.byte	0x14
	.uleb128 0x1
	.long	.LASF30
	.byte	0x6
	.byte	0x23
	.byte	0x9
	.long	0x51
	.byte	0x16
	.uleb128 0x1
	.long	.LASF31
	.byte	0x6
	.byte	0x24
	.byte	0x14
	.long	0x132
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF32
	.byte	0x7
	.byte	0x1b
	.byte	0x1b
	.long	0x43
	.uleb128 0x17
	.long	.LASF35
	.byte	0x38
	.byte	0x7
	.byte	0x38
	.long	0x1e5
	.uleb128 0x3
	.long	.LASF33
	.byte	0x7
	.byte	0x3a
	.byte	0x8
	.long	0x1e5
	.uleb128 0x3
	.long	.LASF34
	.byte	0x7
	.byte	0x3b
	.byte	0xc
	.long	0x6b
	.byte	0
	.uleb128 0x9
	.long	0xa2
	.long	0x1f5
	.uleb128 0xa
	.long	0x43
	.byte	0x37
	.byte	0
	.uleb128 0x4
	.long	.LASF35
	.byte	0x7
	.byte	0x3e
	.byte	0x1e
	.long	0x1c0
	.uleb128 0x11
	.long	0x1f5
	.uleb128 0x12
	.byte	0x28
	.byte	0x7
	.byte	0x43
	.byte	0x9
	.long	0x234
	.uleb128 0x3
	.long	.LASF36
	.byte	0x7
	.byte	0x45
	.byte	0x1c
	.long	0x13e
	.uleb128 0x3
	.long	.LASF33
	.byte	0x7
	.byte	0x46
	.byte	0x8
	.long	0x234
	.uleb128 0x3
	.long	.LASF34
	.byte	0x7
	.byte	0x47
	.byte	0xc
	.long	0x6b
	.byte	0
	.uleb128 0x9
	.long	0xa2
	.long	0x244
	.uleb128 0xa
	.long	0x43
	.byte	0x27
	.byte	0
	.uleb128 0x4
	.long	.LASF37
	.byte	0x7
	.byte	0x48
	.byte	0x3
	.long	0x206
	.uleb128 0x17
	.long	.LASF38
	.byte	0x8
	.byte	0x8
	.byte	0x18
	.long	0x275
	.uleb128 0x3
	.long	.LASF39
	.byte	0x8
	.byte	0x1a
	.byte	0x7
	.long	0x58
	.uleb128 0x3
	.long	.LASF40
	.byte	0x8
	.byte	0x1b
	.byte	0x9
	.long	0x96
	.byte	0
	.uleb128 0x4
	.long	.LASF41
	.byte	0x8
	.byte	0x1e
	.byte	0x16
	.long	0x250
	.uleb128 0x7
	.byte	0x8
	.byte	0x9
	.byte	0x38
	.byte	0x2
	.long	0x2a5
	.uleb128 0x1
	.long	.LASF42
	.byte	0x9
	.byte	0x3a
	.byte	0xe
	.long	0x7e
	.byte	0
	.uleb128 0x1
	.long	.LASF43
	.byte	0x9
	.byte	0x3b
	.byte	0xe
	.long	0x72
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x10
	.byte	0x9
	.byte	0x3f
	.byte	0x2
	.long	0x2d6
	.uleb128 0x1
	.long	.LASF44
	.byte	0x9
	.byte	0x41
	.byte	0xa
	.long	0x58
	.byte	0
	.uleb128 0x1
	.long	.LASF45
	.byte	0x9
	.byte	0x42
	.byte	0xa
	.long	0x58
	.byte	0x4
	.uleb128 0x1
	.long	.LASF46
	.byte	0x9
	.byte	0x43
	.byte	0x11
	.long	0x275
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x10
	.byte	0x9
	.byte	0x47
	.byte	0x2
	.long	0x307
	.uleb128 0x1
	.long	.LASF42
	.byte	0x9
	.byte	0x49
	.byte	0xe
	.long	0x7e
	.byte	0
	.uleb128 0x1
	.long	.LASF43
	.byte	0x9
	.byte	0x4a
	.byte	0xe
	.long	0x72
	.byte	0x4
	.uleb128 0x1
	.long	.LASF46
	.byte	0x9
	.byte	0x4b
	.byte	0x11
	.long	0x275
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x20
	.byte	0x9
	.byte	0x4f
	.byte	0x2
	.long	0x352
	.uleb128 0x1
	.long	.LASF42
	.byte	0x9
	.byte	0x51
	.byte	0xe
	.long	0x7e
	.byte	0
	.uleb128 0x1
	.long	.LASF43
	.byte	0x9
	.byte	0x52
	.byte	0xe
	.long	0x72
	.byte	0x4
	.uleb128 0x1
	.long	.LASF47
	.byte	0x9
	.byte	0x53
	.byte	0xa
	.long	0x58
	.byte	0x8
	.uleb128 0x1
	.long	.LASF48
	.byte	0x9
	.byte	0x54
	.byte	0x10
	.long	0x8a
	.byte	0x10
	.uleb128 0x1
	.long	.LASF49
	.byte	0x9
	.byte	0x55
	.byte	0x10
	.long	0x8a
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x10
	.byte	0x9
	.byte	0x61
	.byte	0x3
	.long	0x376
	.uleb128 0x1
	.long	.LASF50
	.byte	0x9
	.byte	0x63
	.byte	0xd
	.long	0x96
	.byte	0
	.uleb128 0x1
	.long	.LASF51
	.byte	0x9
	.byte	0x64
	.byte	0xd
	.long	0x96
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.byte	0x10
	.byte	0x9
	.byte	0x5e
	.byte	0x6
	.long	0x398
	.uleb128 0x3
	.long	.LASF52
	.byte	0x9
	.byte	0x65
	.byte	0x7
	.long	0x352
	.uleb128 0x3
	.long	.LASF53
	.byte	0x9
	.byte	0x67
	.byte	0xe
	.long	0x5f
	.byte	0
	.uleb128 0x7
	.byte	0x20
	.byte	0x9
	.byte	0x59
	.byte	0x2
	.long	0x3c9
	.uleb128 0x1
	.long	.LASF54
	.byte	0x9
	.byte	0x5b
	.byte	0xc
	.long	0x96
	.byte	0
	.uleb128 0x1
	.long	.LASF55
	.byte	0x9
	.byte	0x5d
	.byte	0x10
	.long	0x51
	.byte	0x8
	.uleb128 0x1
	.long	.LASF56
	.byte	0x9
	.byte	0x68
	.byte	0xa
	.long	0x376
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x10
	.byte	0x9
	.byte	0x6c
	.byte	0x2
	.long	0x3ed
	.uleb128 0x1
	.long	.LASF57
	.byte	0x9
	.byte	0x6e
	.byte	0xf
	.long	0x6b
	.byte	0
	.uleb128 0x1
	.long	.LASF58
	.byte	0x9
	.byte	0x6f
	.byte	0xa
	.long	0x58
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x10
	.byte	0x9
	.byte	0x74
	.byte	0x2
	.long	0x41e
	.uleb128 0x1
	.long	.LASF59
	.byte	0x9
	.byte	0x76
	.byte	0xc
	.long	0x96
	.byte	0
	.uleb128 0x1
	.long	.LASF60
	.byte	0x9
	.byte	0x77
	.byte	0xa
	.long	0x58
	.byte	0x8
	.uleb128 0x1
	.long	.LASF61
	.byte	0x9
	.byte	0x78
	.byte	0x13
	.long	0x3c
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.byte	0x70
	.byte	0x9
	.byte	0x33
	.byte	0x5
	.long	0x488
	.uleb128 0x3
	.long	.LASF62
	.byte	0x9
	.byte	0x35
	.byte	0x6
	.long	0x488
	.uleb128 0x3
	.long	.LASF63
	.byte	0x9
	.byte	0x3c
	.byte	0x6
	.long	0x281
	.uleb128 0x3
	.long	.LASF64
	.byte	0x9
	.byte	0x44
	.byte	0x6
	.long	0x2a5
	.uleb128 0x1f
	.string	"_rt"
	.byte	0x9
	.byte	0x4c
	.byte	0x6
	.long	0x2d6
	.uleb128 0x3
	.long	.LASF65
	.byte	0x9
	.byte	0x56
	.byte	0x6
	.long	0x307
	.uleb128 0x3
	.long	.LASF66
	.byte	0x9
	.byte	0x69
	.byte	0x6
	.long	0x398
	.uleb128 0x3
	.long	.LASF67
	.byte	0x9
	.byte	0x70
	.byte	0x6
	.long	0x3c9
	.uleb128 0x3
	.long	.LASF68
	.byte	0x9
	.byte	0x79
	.byte	0x6
	.long	0x3ed
	.byte	0
	.uleb128 0x9
	.long	0x58
	.long	0x498
	.uleb128 0xa
	.long	0x43
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.byte	0x80
	.byte	0x9
	.byte	0x24
	.byte	0x9
	.long	0x4e3
	.uleb128 0x1
	.long	.LASF69
	.byte	0x9
	.byte	0x26
	.byte	0x9
	.long	0x58
	.byte	0
	.uleb128 0x1
	.long	.LASF70
	.byte	0x9
	.byte	0x28
	.byte	0x9
	.long	0x58
	.byte	0x4
	.uleb128 0x1
	.long	.LASF71
	.byte	0x9
	.byte	0x2a
	.byte	0x9
	.long	0x58
	.byte	0x8
	.uleb128 0x1
	.long	.LASF72
	.byte	0x9
	.byte	0x30
	.byte	0x9
	.long	0x58
	.byte	0xc
	.uleb128 0x1
	.long	.LASF73
	.byte	0x9
	.byte	0x7b
	.byte	0x9
	.long	0x41e
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF74
	.byte	0x9
	.byte	0x7c
	.byte	0x5
	.long	0x498
	.uleb128 0x4
	.long	.LASF75
	.byte	0xa
	.byte	0x48
	.byte	0x10
	.long	0x4fb
	.uleb128 0x5
	.long	0x500
	.uleb128 0x18
	.long	0x50b
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0x12
	.byte	0x8
	.byte	0xb
	.byte	0x1f
	.byte	0x5
	.long	0x52d
	.uleb128 0x3
	.long	.LASF76
	.byte	0xb
	.byte	0x22
	.byte	0x11
	.long	0x4ef
	.uleb128 0x3
	.long	.LASF77
	.byte	0xb
	.byte	0x24
	.byte	0x9
	.long	0x547
	.byte	0
	.uleb128 0x18
	.long	0x542
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x542
	.uleb128 0x2
	.long	0x96
	.byte	0
	.uleb128 0x5
	.long	0x4e3
	.uleb128 0x5
	.long	0x52d
	.uleb128 0x15
	.long	.LASF78
	.byte	0x98
	.byte	0xb
	.byte	0x1b
	.byte	0x8
	.long	0x58e
	.uleb128 0x1
	.long	.LASF79
	.byte	0xb
	.byte	0x26
	.byte	0x5
	.long	0x50b
	.byte	0
	.uleb128 0x1
	.long	.LASF80
	.byte	0xb
	.byte	0x2e
	.byte	0x10
	.long	0xf2
	.byte	0x8
	.uleb128 0x1
	.long	.LASF81
	.byte	0xb
	.byte	0x31
	.byte	0x9
	.long	0x58
	.byte	0x88
	.uleb128 0x1
	.long	.LASF82
	.byte	0xb
	.byte	0x34
	.byte	0xc
	.long	0x594
	.byte	0x90
	.byte	0
	.uleb128 0x11
	.long	0x54c
	.uleb128 0x20
	.uleb128 0x5
	.long	0x593
	.uleb128 0x21
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0xd
	.byte	0x30
	.byte	0x1
	.long	0x5de
	.uleb128 0xb
	.long	.LASF83
	.byte	0
	.uleb128 0xb
	.long	.LASF84
	.byte	0x1
	.uleb128 0xb
	.long	.LASF85
	.byte	0x2
	.uleb128 0xb
	.long	.LASF86
	.byte	0x3
	.uleb128 0xb
	.long	.LASF87
	.byte	0
	.uleb128 0xb
	.long	.LASF88
	.byte	0x1
	.uleb128 0xb
	.long	.LASF89
	.byte	0x2
	.uleb128 0xb
	.long	.LASF90
	.byte	0
	.uleb128 0xb
	.long	.LASF91
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF92
	.byte	0x17
	.byte	0x18
	.long	0x244
	.uleb128 0x9
	.byte	0x3
	.quad	mutex1
	.uleb128 0xc
	.long	.LASF93
	.byte	0x18
	.byte	0x18
	.long	0x244
	.uleb128 0x9
	.byte	0x3
	.quad	mutex2
	.uleb128 0xc
	.long	.LASF94
	.byte	0x19
	.byte	0x18
	.long	0x244
	.uleb128 0x9
	.byte	0x3
	.quad	mutex3
	.uleb128 0xc
	.long	.LASF95
	.byte	0x1b
	.byte	0xc
	.long	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	_do_exit
	.uleb128 0x22
	.long	.LASF96
	.byte	0xc
	.value	0x270
	.byte	0xd
	.long	0x645
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0x16
	.long	.LASF97
	.byte	0xd
	.byte	0xca
	.byte	0xc
	.long	0x58
	.long	0x66a
	.uleb128 0x2
	.long	0x66f
	.uleb128 0x2
	.long	0x679
	.uleb128 0x2
	.long	0x67e
	.uleb128 0x2
	.long	0x98
	.byte	0
	.uleb128 0x5
	.long	0x1b4
	.uleb128 0x10
	.long	0x66a
	.uleb128 0x5
	.long	0x201
	.uleb128 0x10
	.long	0x674
	.uleb128 0x5
	.long	0x683
	.uleb128 0x23
	.long	0x96
	.long	0x692
	.uleb128 0x2
	.long	0x96
	.byte	0
	.uleb128 0x16
	.long	.LASF78
	.byte	0xa
	.byte	0xf3
	.byte	0xc
	.long	0x58
	.long	0x6b2
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x6b7
	.uleb128 0x2
	.long	0x6c1
	.byte	0
	.uleb128 0x5
	.long	0x58e
	.uleb128 0x10
	.long	0x6b2
	.uleb128 0x5
	.long	0x54c
	.uleb128 0x10
	.long	0x6bc
	.uleb128 0xf
	.long	.LASF98
	.byte	0xd
	.value	0x316
	.byte	0xc
	.long	0x58
	.long	0x6dd
	.uleb128 0x2
	.long	0x6dd
	.byte	0
	.uleb128 0x5
	.long	0x244
	.uleb128 0x24
	.long	.LASF99
	.byte	0xd
	.byte	0xd3
	.byte	0xd
	.long	0x6f4
	.uleb128 0x2
	.long	0x96
	.byte	0
	.uleb128 0xf
	.long	.LASF100
	.byte	0xd
	.value	0x343
	.byte	0xc
	.long	0x58
	.long	0x70b
	.uleb128 0x2
	.long	0x6dd
	.byte	0
	.uleb128 0xf
	.long	.LASF101
	.byte	0xd
	.value	0x31a
	.byte	0xc
	.long	0x58
	.long	0x722
	.uleb128 0x2
	.long	0x6dd
	.byte	0
	.uleb128 0xf
	.long	.LASF102
	.byte	0xe
	.value	0x1d0
	.byte	0x15
	.long	0x3c
	.long	0x739
	.uleb128 0x2
	.long	0x3c
	.byte	0
	.uleb128 0xf
	.long	.LASF103
	.byte	0xf
	.value	0x1bc
	.byte	0xe
	.long	0x9d
	.long	0x75a
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x9d
	.uleb128 0x2
	.long	0xae
	.byte	0
	.uleb128 0x16
	.long	.LASF104
	.byte	0xf
	.byte	0x3d
	.byte	0xe
	.long	0x96
	.long	0x77a
	.uleb128 0x2
	.long	0x96
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0xae
	.byte	0
	.uleb128 0xf
	.long	.LASF105
	.byte	0x10
	.value	0x164
	.byte	0xc
	.long	0x58
	.long	0x792
	.uleb128 0x2
	.long	0xbf
	.uleb128 0x25
	.byte	0
	.uleb128 0x13
	.long	.LASF115
	.byte	0xae
	.long	0x58
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x834
	.uleb128 0xd
	.long	.LASF106
	.byte	0xae
	.byte	0xa
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0xd
	.long	.LASF107
	.byte	0xae
	.byte	0x16
	.long	0xba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x4
	.long	.LASF108
	.byte	0x1
	.byte	0xb1
	.byte	0x15
	.long	0x67e
	.uleb128 0xc
	.long	.LASF109
	.byte	0xb3
	.byte	0xf
	.long	0x834
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x9
	.long	0x7d0
	.long	0x7fb
	.uleb128 0xa
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	.LASF110
	.byte	0xb4
	.byte	0x12
	.long	0x7eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.string	"ids"
	.byte	0xb5
	.byte	0x6
	.long	0x844
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x8
	.string	"rc"
	.byte	0xb6
	.byte	0x9
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x8
	.string	"i"
	.byte	0xb6
	.byte	0xd
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x9
	.long	0x1b4
	.long	0x844
	.uleb128 0xa
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0x58
	.long	0x854
	.uleb128 0xa
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x19
	.long	.LASF113
	.byte	0xa3
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x89d
	.uleb128 0xd
	.long	.LASF111
	.byte	0xa3
	.byte	0x10
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0xd
	.long	.LASF112
	.byte	0xa3
	.byte	0x1e
	.long	0x4fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x8
	.string	"sa"
	.byte	0xa5
	.byte	0x16
	.long	0x54c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x19
	.long	.LASF114
	.byte	0x9d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c8
	.uleb128 0xd
	.long	.LASF111
	.byte	0x9d
	.byte	0xd
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF116
	.byte	0x84
	.long	0x96
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x937
	.uleb128 0xd
	.long	.LASF117
	.byte	0x84
	.byte	0xf
	.long	0x96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x8
	.string	"tid"
	.byte	0x86
	.byte	0x9
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x1a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x8
	.string	"mrc"
	.byte	0x8a
	.byte	0xd
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0xc
	.long	.LASF118
	.byte	0x8b
	.byte	0xe
	.long	0x937
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0xa2
	.long	0x947
	.uleb128 0xa
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.long	.LASF119
	.byte	0x75
	.long	0x96
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x984
	.uleb128 0xd
	.long	.LASF117
	.byte	0x75
	.byte	0xf
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"tid"
	.byte	0x77
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF120
	.byte	0x49
	.long	0x96
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x9f3
	.uleb128 0xd
	.long	.LASF117
	.byte	0x49
	.byte	0xf
	.long	0x96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x8
	.string	"tid"
	.byte	0x4b
	.byte	0x9
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x1a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xc
	.long	.LASF118
	.byte	0x50
	.byte	0xe
	.long	0x937
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x8
	.string	"mrc"
	.byte	0x51
	.byte	0xd
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF121
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.long	0x9d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xa4e
	.uleb128 0xe
	.string	"err"
	.byte	0x3d
	.byte	0x15
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.string	"buf"
	.byte	0x3d
	.byte	0x20
	.long	0x9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.string	"len"
	.byte	0x3d
	.byte	0x29
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.string	"src"
	.byte	0x3f
	.byte	0xb
	.long	0x9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1b
	.string	"f1"
	.byte	0x34
	.long	0x58
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xa8e
	.uleb128 0xe
	.string	"id"
	.byte	0x34
	.byte	0x8
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.long	.LASF122
	.long	0xa9e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.0
	.byte	0
	.uleb128 0x9
	.long	0xa9
	.long	0xa9e
	.uleb128 0xa
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.long	0xa8e
	.uleb128 0x27
	.string	"f2"
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.long	0x58
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xae5
	.uleb128 0xe
	.string	"id"
	.byte	0x2c
	.byte	0x8
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.long	.LASF122
	.long	0xa9e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.2
	.byte	0
	.uleb128 0x1b
	.string	"f3"
	.byte	0x24
	.long	0x58
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xb25
	.uleb128 0xe
	.string	"id"
	.byte	0x24
	.byte	0x8
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.long	.LASF122
	.long	0xa9e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.1
	.byte	0
	.uleb128 0x28
	.string	"f4"
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.string	"id"
	.byte	0x1e
	.byte	0x8
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.long	.LASF122
	.long	0xa9e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.3
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF53:
	.string	"_pkey"
.LASF14:
	.string	"size_t"
.LASF54:
	.string	"si_addr"
.LASF75:
	.string	"__sighandler_t"
.LASF19:
	.string	"__prev"
.LASF34:
	.string	"__align"
.LASF110:
	.string	"funcs"
.LASF92:
	.string	"mutex1"
.LASF93:
	.string	"mutex2"
.LASF94:
	.string	"mutex3"
.LASF33:
	.string	"__size"
.LASF117:
	.string	"threadid"
.LASF99:
	.string	"pthread_exit"
.LASF105:
	.string	"printf"
.LASF50:
	.string	"_lower"
.LASF17:
	.string	"long long unsigned int"
.LASF49:
	.string	"si_stime"
.LASF103:
	.string	"strerror_r"
.LASF61:
	.string	"_arch"
.LASF20:
	.string	"__next"
.LASF101:
	.string	"pthread_mutex_lock"
.LASF108:
	.string	"pthread_func"
.LASF15:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF119:
	.string	"thread2"
.LASF65:
	.string	"_sigchld"
.LASF8:
	.string	"long int"
.LASF85:
	.string	"PTHREAD_MUTEX_ERRORCHECK_NP"
.LASF51:
	.string	"_upper"
.LASF45:
	.string	"si_overrun"
.LASF56:
	.string	"_bounds"
.LASF21:
	.string	"__pthread_list_t"
.LASF23:
	.string	"__pthread_mutex_s"
.LASF46:
	.string	"si_sigval"
.LASF70:
	.string	"si_errno"
.LASF9:
	.string	"__uint32_t"
.LASF42:
	.string	"si_pid"
.LASF38:
	.string	"sigval"
.LASF60:
	.string	"_syscall"
.LASF89:
	.string	"PTHREAD_MUTEX_ERRORCHECK"
.LASF4:
	.string	"unsigned int"
.LASF18:
	.string	"__val"
.LASF48:
	.string	"si_utime"
.LASF5:
	.string	"long unsigned int"
.LASF35:
	.string	"pthread_attr_t"
.LASF28:
	.string	"__kind"
.LASF36:
	.string	"__data"
.LASF122:
	.string	"__FUNCTION__"
.LASF16:
	.string	"__sigset_t"
.LASF86:
	.string	"PTHREAD_MUTEX_ADAPTIVE_NP"
.LASF3:
	.string	"short unsigned int"
.LASF43:
	.string	"si_uid"
.LASF102:
	.string	"sleep"
.LASF74:
	.string	"siginfo_t"
.LASF109:
	.string	"threads"
.LASF39:
	.string	"sival_int"
.LASF12:
	.string	"__clock_t"
.LASF68:
	.string	"_sigsys"
.LASF26:
	.string	"__owner"
.LASF112:
	.string	"handler"
.LASF113:
	.string	"set_signal"
.LASF87:
	.string	"PTHREAD_MUTEX_NORMAL"
.LASF118:
	.string	"errbuf"
.LASF73:
	.string	"_sifields"
.LASF120:
	.string	"thread1"
.LASF111:
	.string	"signo"
.LASF116:
	.string	"thread3"
.LASF78:
	.string	"sigaction"
.LASF67:
	.string	"_sigpoll"
.LASF62:
	.string	"_pad"
.LASF44:
	.string	"si_tid"
.LASF84:
	.string	"PTHREAD_MUTEX_RECURSIVE_NP"
.LASF22:
	.string	"__pthread_internal_list"
.LASF91:
	.string	"PTHREAD_MUTEX_FAST_NP"
.LASF66:
	.string	"_sigfault"
.LASF32:
	.string	"pthread_t"
.LASF2:
	.string	"unsigned char"
.LASF52:
	.string	"_addr_bnd"
.LASF11:
	.string	"__pid_t"
.LASF7:
	.string	"short int"
.LASF59:
	.string	"_call_addr"
.LASF114:
	.string	"sigexit"
.LASF96:
	.string	"exit"
.LASF47:
	.string	"si_status"
.LASF25:
	.string	"__count"
.LASF24:
	.string	"__lock"
.LASF81:
	.string	"sa_flags"
.LASF98:
	.string	"pthread_mutex_trylock"
.LASF13:
	.string	"char"
.LASF30:
	.string	"__elision"
.LASF106:
	.string	"argc"
.LASF10:
	.string	"__uid_t"
.LASF79:
	.string	"__sigaction_handler"
.LASF121:
	.string	"wrap_strerror_r"
.LASF69:
	.string	"si_signo"
.LASF63:
	.string	"_kill"
.LASF90:
	.string	"PTHREAD_MUTEX_DEFAULT"
.LASF37:
	.string	"pthread_mutex_t"
.LASF80:
	.string	"sa_mask"
.LASF72:
	.string	"__pad0"
.LASF29:
	.string	"__spins"
.LASF82:
	.string	"sa_restorer"
.LASF55:
	.string	"si_addr_lsb"
.LASF107:
	.string	"argv"
.LASF104:
	.string	"memset"
.LASF123:
	.string	"GNU C17 11.4.0 -mtune=generic -march=x86-64 -g -finstrument-functions -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF97:
	.string	"pthread_create"
.LASF88:
	.string	"PTHREAD_MUTEX_RECURSIVE"
.LASF27:
	.string	"__nusers"
.LASF64:
	.string	"_timer"
.LASF83:
	.string	"PTHREAD_MUTEX_TIMED_NP"
.LASF58:
	.string	"si_fd"
.LASF76:
	.string	"sa_handler"
.LASF31:
	.string	"__list"
.LASF40:
	.string	"sival_ptr"
.LASF57:
	.string	"si_band"
.LASF100:
	.string	"pthread_mutex_unlock"
.LASF115:
	.string	"main"
.LASF41:
	.string	"__sigval_t"
.LASF95:
	.string	"_do_exit"
.LASF77:
	.string	"sa_sigaction"
.LASF71:
	.string	"si_code"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"ctraced.c"
.LASF1:
	.string	"/home/maragos/snippets/tracing_example_2"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
