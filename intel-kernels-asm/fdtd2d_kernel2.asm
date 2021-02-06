Dump of assembler code for function fdtd_kernel2:
=> 0x00007ffff7fcb560 <+0>:	push   %rbp
   0x00007ffff7fcb561 <+1>:	push   %r15
   0x00007ffff7fcb563 <+3>:	push   %r14
   0x00007ffff7fcb565 <+5>:	push   %r12
   0x00007ffff7fcb567 <+7>:	push   %rbx
   0x00007ffff7fcb568 <+8>:	movslq 0x1c(%rdi),%r14
   0x00007ffff7fcb56c <+12>:	mov    0x58(%rdi),%rax
   0x00007ffff7fcb570 <+16>:	mov    0x60(%rdi),%rcx
   0x00007ffff7fcb574 <+20>:	mov    (%rsi),%rdx
   0x00007ffff7fcb577 <+23>:	imul   %rax,%rdx
   0x00007ffff7fcb57b <+27>:	add    0x28(%rdi),%rdx
   0x00007ffff7fcb57f <+31>:	mov    0x8(%rsi),%r8
   0x00007ffff7fcb583 <+35>:	imul   %rcx,%r8
   0x00007ffff7fcb587 <+39>:	add    0x30(%rdi),%r8
   0x00007ffff7fcb58b <+43>:	movslq 0x18(%rdi),%rsi
   0x00007ffff7fcb58f <+47>:	add    %r8,%rcx
   0x00007ffff7fcb592 <+50>:	cmp    %rsi,%rcx
   0x00007ffff7fcb595 <+53>:	mov    %rsi,%r12
   0x00007ffff7fcb598 <+56>:	cmovle %rcx,%r12
   0x00007ffff7fcb59c <+60>:	test   %rsi,%rsi
   0x00007ffff7fcb59f <+63>:	cmovs  %rcx,%r12
   0x00007ffff7fcb5a3 <+67>:	add    %rdx,%rax
   0x00007ffff7fcb5a6 <+70>:	test   %rdx,%rdx
   0x00007ffff7fcb5a9 <+73>:	mov    $0x1,%r9d
   0x00007ffff7fcb5af <+79>:	cmovg  %rdx,%r9
   0x00007ffff7fcb5b3 <+83>:	cmp    %r14,%rax
   0x00007ffff7fcb5b6 <+86>:	mov    %r14,%r11
   0x00007ffff7fcb5b9 <+89>:	cmovle %rax,%r11
   0x00007ffff7fcb5bd <+93>:	test   %r14,%r14
   0x00007ffff7fcb5c0 <+96>:	cmovs  %rax,%r11
   0x00007ffff7fcb5c4 <+100>:	sub    %r9,%r11
   0x00007ffff7fcb5c7 <+103>:	test   %r11,%r11
   0x00007ffff7fcb5ca <+106>:	jle    0x7ffff7fcb710 <fdtd_kernel2+432>
   0x00007ffff7fcb5d0 <+112>:	sub    %r8,%r12
   0x00007ffff7fcb5d3 <+115>:	test   %r12,%r12
   0x00007ffff7fcb5d6 <+118>:	jle    0x7ffff7fcb710 <fdtd_kernel2+432>
   0x00007ffff7fcb5dc <+124>:	mov    (%rdi),%rsi
   0x00007ffff7fcb5df <+127>:	mov    0x10(%rdi),%rdi
   0x00007ffff7fcb5e3 <+131>:	mov    %r11,%r15
   0x00007ffff7fcb5e6 <+134>:	sar    $0x3,%r15
   0x00007ffff7fcb5ea <+138>:	mov    %r11,%r10
   0x00007ffff7fcb5ed <+141>:	and    $0xfffffffffffffff8,%r10
   0x00007ffff7fcb5f1 <+145>:	sub    %r10,%r11
   0x00007ffff7fcb5f4 <+148>:	test   %r15,%r15
   0x00007ffff7fcb5f7 <+151>:	je     0x7ffff7fcb68e <fdtd_kernel2+302>
   0x00007ffff7fcb5fd <+157>:	mov    %r14d,%eax
   0x00007ffff7fcb600 <+160>:	imul   %r8d,%eax
   0x00007ffff7fcb604 <+164>:	lea    (%rax,%r9,1),%ebx
   0x00007ffff7fcb608 <+168>:	add    $0xffffffff,%ebx
   0x00007ffff7fcb60b <+171>:	xor    %eax,%eax
   0x00007ffff7fcb60d <+173>:	movabs $0x7ffff7fca050,%rcx
   0x00007ffff7fcb617 <+183>:	vbroadcastsd (%rcx),%ymm0
   0x00007ffff7fcb61c <+188>:	nopl   0x0(%rax)
   0x00007ffff7fcb620 <+192>:	mov    %ebx,%edx
   0x00007ffff7fcb622 <+194>:	mov    %r15,%rcx
   0x00007ffff7fcb625 <+197>:	data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb630 <+208>:	lea    0x1(%rdx),%ebp
   0x00007ffff7fcb633 <+211>:	movslq %ebp,%rbp
   0x00007ffff7fcb636 <+214>:	vcvtps2pd (%rsi,%rbp,4),%ymm1
   0x00007ffff7fcb63b <+219>:	vcvtps2pd 0x10(%rsi,%rbp,4),%ymm2
   0x00007ffff7fcb641 <+225>:	vmovups (%rdi,%rbp,4),%ymm3
   0x00007ffff7fcb646 <+230>:	movslq %edx,%rdx
   0x00007ffff7fcb649 <+233>:	vsubps (%rdi,%rdx,4),%ymm3,%ymm3
   0x00007ffff7fcb64e <+238>:	vcvtps2pd %xmm3,%ymm4
   0x00007ffff7fcb652 <+242>:	vextractf128 $0x1,%ymm3,%xmm3
   0x00007ffff7fcb658 <+248>:	vcvtps2pd %xmm3,%ymm3
   0x00007ffff7fcb65c <+252>:	vfnmadd213pd %ymm1,%ymm0,%ymm4
   0x00007ffff7fcb661 <+257>:	vcvtpd2ps %ymm4,%xmm1
   0x00007ffff7fcb665 <+261>:	vfnmadd213pd %ymm2,%ymm0,%ymm3
   0x00007ffff7fcb66a <+266>:	vcvtpd2ps %ymm3,%xmm2
   0x00007ffff7fcb66e <+270>:	vinsertf128 $0x1,%xmm2,%ymm1,%ymm1
   0x00007ffff7fcb674 <+276>:	vmovupd %ymm1,(%rsi,%rbp,4)
   0x00007ffff7fcb679 <+281>:	add    $0x8,%edx
   0x00007ffff7fcb67c <+284>:	add    $0xffffffffffffffff,%rcx
   0x00007ffff7fcb680 <+288>:	jne    0x7ffff7fcb630 <fdtd_kernel2+208>
   0x00007ffff7fcb682 <+290>:	add    $0x1,%rax
   0x00007ffff7fcb686 <+294>:	add    %r14d,%ebx
   0x00007ffff7fcb689 <+297>:	cmp    %r12,%rax
   0x00007ffff7fcb68c <+300>:	jne    0x7ffff7fcb620 <fdtd_kernel2+192>
   0x00007ffff7fcb68e <+302>:	test   %r11,%r11
   0x00007ffff7fcb691 <+305>:	je     0x7ffff7fcb710 <fdtd_kernel2+432>
   0x00007ffff7fcb693 <+307>:	add    %r9,%r10
   0x00007ffff7fcb696 <+310>:	imul   %r14d,%r8d
   0x00007ffff7fcb69a <+314>:	lea    (%r8,%r10,1),%r8d
   0x00007ffff7fcb69e <+318>:	add    $0xffffffff,%r8d
   0x00007ffff7fcb6a2 <+322>:	xor    %edx,%edx
   0x00007ffff7fcb6a4 <+324>:	movabs $0x7ffff7fca058,%rcx
   0x00007ffff7fcb6ae <+334>:	vmovsd (%rcx),%xmm0
   0x00007ffff7fcb6b2 <+338>:	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb6c0 <+352>:	mov    %r8d,%ebx
   0x00007ffff7fcb6c3 <+355>:	mov    %r11,%rcx
   0x00007ffff7fcb6c6 <+358>:	nopw   %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb6d0 <+368>:	movslq %ebx,%rbp
   0x00007ffff7fcb6d3 <+371>:	lea    0x1(%rbx),%ebx
   0x00007ffff7fcb6d6 <+374>:	movslq %ebx,%rax
   0x00007ffff7fcb6d9 <+377>:	vmovss (%rsi,%rax,4),%xmm1
   0x00007ffff7fcb6de <+382>:	vcvtss2sd %xmm1,%xmm1,%xmm1
   0x00007ffff7fcb6e2 <+386>:	vmovss (%rdi,%rax,4),%xmm2
   0x00007ffff7fcb6e7 <+391>:	vsubss (%rdi,%rbp,4),%xmm2,%xmm2
   0x00007ffff7fcb6ec <+396>:	vcvtss2sd %xmm2,%xmm2,%xmm2
   0x00007ffff7fcb6f0 <+400>:	vfmadd132sd %xmm0,%xmm1,%xmm2
   0x00007ffff7fcb6f5 <+405>:	vcvtsd2ss %xmm2,%xmm2,%xmm1
   0x00007ffff7fcb6f9 <+409>:	vmovss %xmm1,(%rsi,%rax,4)
   0x00007ffff7fcb6fe <+414>:	add    $0xffffffffffffffff,%rcx
   0x00007ffff7fcb702 <+418>:	jne    0x7ffff7fcb6d0 <fdtd_kernel2+368>
   0x00007ffff7fcb704 <+420>:	add    $0x1,%rdx
   0x00007ffff7fcb708 <+424>:	add    %r14d,%r8d
   0x00007ffff7fcb70b <+427>:	cmp    %r12,%rdx
   0x00007ffff7fcb70e <+430>:	jne    0x7ffff7fcb6c0 <fdtd_kernel2+352>
   0x00007ffff7fcb710 <+432>:	pop    %rbx
   0x00007ffff7fcb711 <+433>:	pop    %r12
   0x00007ffff7fcb713 <+435>:	pop    %r14
   0x00007ffff7fcb715 <+437>:	pop    %r15
   0x00007ffff7fcb717 <+439>:	pop    %rbp
   0x00007ffff7fcb718 <+440>:	vzeroupper 
   0x00007ffff7fcb71b <+443>:	ret    
End of assembler dump.
