Dump of assembler code for function fdtd_kernel3:
=> 0x00007ffff7fcb720 <+0>:	push   %rbp
   0x00007ffff7fcb721 <+1>:	push   %r15
   0x00007ffff7fcb723 <+3>:	push   %r14
   0x00007ffff7fcb725 <+5>:	push   %r13
   0x00007ffff7fcb727 <+7>:	push   %r12
   0x00007ffff7fcb729 <+9>:	push   %rbx
   0x00007ffff7fcb72a <+10>:	movslq 0x18(%rdi),%rax
   0x00007ffff7fcb72e <+14>:	movslq 0x1c(%rdi),%r12
   0x00007ffff7fcb732 <+18>:	mov    0x58(%rdi),%rcx
   0x00007ffff7fcb736 <+22>:	mov    0x60(%rdi),%rdx
   0x00007ffff7fcb73a <+26>:	mov    (%rsi),%rbp
   0x00007ffff7fcb73d <+29>:	imul   %rcx,%rbp
   0x00007ffff7fcb741 <+33>:	add    0x28(%rdi),%rbp
   0x00007ffff7fcb745 <+37>:	mov    0x8(%rsi),%rsi
   0x00007ffff7fcb749 <+41>:	imul   %rdx,%rsi
   0x00007ffff7fcb74d <+45>:	add    0x30(%rdi),%rsi
   0x00007ffff7fcb751 <+49>:	lea    -0x1(%rax),%r15
   0x00007ffff7fcb755 <+53>:	lea    -0x1(%r12),%r8
   0x00007ffff7fcb75a <+58>:	add    %rsi,%rdx
   0x00007ffff7fcb75d <+61>:	cmp    %r15,%rdx
   0x00007ffff7fcb760 <+64>:	cmovle %rdx,%r15
   0x00007ffff7fcb764 <+68>:	test   %rax,%rax
   0x00007ffff7fcb767 <+71>:	cmovle %rdx,%r15
   0x00007ffff7fcb76b <+75>:	add    %rbp,%rcx
   0x00007ffff7fcb76e <+78>:	cmp    %r8,%rcx
   0x00007ffff7fcb771 <+81>:	cmovle %rcx,%r8
   0x00007ffff7fcb775 <+85>:	test   %r12,%r12
   0x00007ffff7fcb778 <+88>:	cmovle %rcx,%r8
   0x00007ffff7fcb77c <+92>:	sub    %rbp,%r8
   0x00007ffff7fcb77f <+95>:	test   %r8,%r8
   0x00007ffff7fcb782 <+98>:	jle    0x7ffff7fcb935 <fdtd_kernel3+533>
   0x00007ffff7fcb788 <+104>:	sub    %rsi,%r15
   0x00007ffff7fcb78b <+107>:	test   %r15,%r15
   0x00007ffff7fcb78e <+110>:	jle    0x7ffff7fcb935 <fdtd_kernel3+533>
   0x00007ffff7fcb794 <+116>:	mov    %rbp,-0x18(%rsp)
   0x00007ffff7fcb799 <+121>:	mov    %rsi,-0x10(%rsp)
   0x00007ffff7fcb79e <+126>:	mov    (%rdi),%rsi
   0x00007ffff7fcb7a1 <+129>:	mov    0x8(%rdi),%rdx
   0x00007ffff7fcb7a5 <+133>:	mov    0x10(%rdi),%rdi
   0x00007ffff7fcb7a9 <+137>:	mov    %r8,%r11
   0x00007ffff7fcb7ac <+140>:	sar    $0x3,%r11
   0x00007ffff7fcb7b0 <+144>:	mov    %r8,%rax
   0x00007ffff7fcb7b3 <+147>:	and    $0xfffffffffffffff8,%rax
   0x00007ffff7fcb7b7 <+151>:	mov    %rax,-0x8(%rsp)
   0x00007ffff7fcb7bc <+156>:	sub    %rax,%r8
   0x00007ffff7fcb7bf <+159>:	test   %r11,%r11
   0x00007ffff7fcb7c2 <+162>:	je     0x7ffff7fcb885 <fdtd_kernel3+357>
   0x00007ffff7fcb7c8 <+168>:	mov    -0x10(%rsp),%rax
   0x00007ffff7fcb7cd <+173>:	lea    0x1(%rax),%r13d
   0x00007ffff7fcb7d1 <+177>:	imul   %r12d,%r13d
   0x00007ffff7fcb7d5 <+181>:	mov    -0x18(%rsp),%rcx
   0x00007ffff7fcb7da <+186>:	add    %ecx,%r13d
   0x00007ffff7fcb7dd <+189>:	imul   %r12d,%eax
   0x00007ffff7fcb7e1 <+193>:	lea    (%rax,%rcx,1),%r9d
   0x00007ffff7fcb7e5 <+197>:	add    $0x1,%r9d
   0x00007ffff7fcb7e9 <+201>:	xor    %ecx,%ecx
   0x00007ffff7fcb7eb <+203>:	movabs $0x7ffff7fca060,%rax
   0x00007ffff7fcb7f5 <+213>:	vbroadcastsd (%rax),%ymm0
   0x00007ffff7fcb7fa <+218>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fcb800 <+224>:	mov    %r9d,%eax
   0x00007ffff7fcb803 <+227>:	mov    %r13d,%ebp
   0x00007ffff7fcb806 <+230>:	mov    %r11,%r14
   0x00007ffff7fcb809 <+233>:	nopl   0x0(%rax)
   0x00007ffff7fcb810 <+240>:	lea    -0x1(%rax),%r10d
   0x00007ffff7fcb814 <+244>:	movslq %r10d,%rbx
   0x00007ffff7fcb817 <+247>:	vcvtps2pd (%rdi,%rbx,4),%ymm1
   0x00007ffff7fcb81c <+252>:	vcvtps2pd 0x10(%rdi,%rbx,4),%ymm2
   0x00007ffff7fcb822 <+258>:	cltq   
   0x00007ffff7fcb824 <+260>:	vmovups (%rsi,%rax,4),%ymm3
   0x00007ffff7fcb829 <+265>:	vsubps (%rsi,%rbx,4),%ymm3,%ymm3
   0x00007ffff7fcb82e <+270>:	movslq %ebp,%rbp
   0x00007ffff7fcb831 <+273>:	vaddps (%rdx,%rbp,4),%ymm3,%ymm3
   0x00007ffff7fcb836 <+278>:	vsubps (%rdx,%rbx,4),%ymm3,%ymm3
   0x00007ffff7fcb83b <+283>:	vcvtps2pd %xmm3,%ymm4
   0x00007ffff7fcb83f <+287>:	vextractf128 $0x1,%ymm3,%xmm3
   0x00007ffff7fcb845 <+293>:	vcvtps2pd %xmm3,%ymm3
   0x00007ffff7fcb849 <+297>:	vfnmadd213pd %ymm2,%ymm0,%ymm3
   0x00007ffff7fcb84e <+302>:	vfnmadd213pd %ymm1,%ymm0,%ymm4
   0x00007ffff7fcb853 <+307>:	vcvtpd2ps %ymm4,%xmm1
   0x00007ffff7fcb857 <+311>:	vcvtpd2ps %ymm3,%xmm2
   0x00007ffff7fcb85b <+315>:	vinsertf128 $0x1,%xmm2,%ymm1,%ymm1
   0x00007ffff7fcb861 <+321>:	vmovupd %ymm1,(%rdi,%rbx,4)
   0x00007ffff7fcb866 <+326>:	add    $0x8,%ebp
   0x00007ffff7fcb869 <+329>:	add    $0x8,%eax
   0x00007ffff7fcb86c <+332>:	add    $0xffffffffffffffff,%r14
   0x00007ffff7fcb870 <+336>:	jne    0x7ffff7fcb810 <fdtd_kernel3+240>
   0x00007ffff7fcb872 <+338>:	add    $0x1,%rcx
   0x00007ffff7fcb876 <+342>:	add    %r12d,%r13d
   0x00007ffff7fcb879 <+345>:	add    %r12d,%r9d
   0x00007ffff7fcb87c <+348>:	cmp    %r15,%rcx
   0x00007ffff7fcb87f <+351>:	jne    0x7ffff7fcb800 <fdtd_kernel3+224>
   0x00007ffff7fcb885 <+357>:	test   %r8,%r8
   0x00007ffff7fcb888 <+360>:	mov    -0x10(%rsp),%rax
   0x00007ffff7fcb88d <+365>:	mov    -0x18(%rsp),%rcx
   0x00007ffff7fcb892 <+370>:	je     0x7ffff7fcb935 <fdtd_kernel3+533>
   0x00007ffff7fcb898 <+376>:	mov    -0x8(%rsp),%rbp
   0x00007ffff7fcb89d <+381>:	add    %rcx,%rbp
   0x00007ffff7fcb8a0 <+384>:	lea    0x1(%rax),%r10d
   0x00007ffff7fcb8a4 <+388>:	imul   %r12d,%r10d
   0x00007ffff7fcb8a8 <+392>:	add    %ebp,%r10d
   0x00007ffff7fcb8ab <+395>:	imul   %r12d,%eax
   0x00007ffff7fcb8af <+399>:	lea    (%rax,%rbp,1),%r9d
   0x00007ffff7fcb8b3 <+403>:	add    $0x1,%r9d
   0x00007ffff7fcb8b7 <+407>:	xor    %r11d,%r11d
   0x00007ffff7fcb8ba <+410>:	movabs $0x7ffff7fca068,%rax
   0x00007ffff7fcb8c4 <+420>:	vmovsd (%rax),%xmm0
   0x00007ffff7fcb8c8 <+424>:	nopl   0x0(%rax,%rax,1)
   0x00007ffff7fcb8d0 <+432>:	mov    %r9d,%eax
   0x00007ffff7fcb8d3 <+435>:	mov    %r10d,%ebp
   0x00007ffff7fcb8d6 <+438>:	mov    %r8,%rcx
   0x00007ffff7fcb8d9 <+441>:	nopl   0x0(%rax)
   0x00007ffff7fcb8e0 <+448>:	lea    -0x1(%rax),%ebx
   0x00007ffff7fcb8e3 <+451>:	movslq %ebx,%rbx
   0x00007ffff7fcb8e6 <+454>:	vmovss (%rdi,%rbx,4),%xmm1
   0x00007ffff7fcb8eb <+459>:	vcvtss2sd %xmm1,%xmm1,%xmm1
   0x00007ffff7fcb8ef <+463>:	cltq   
   0x00007ffff7fcb8f1 <+465>:	vmovss (%rsi,%rax,4),%xmm2
   0x00007ffff7fcb8f6 <+470>:	vsubss (%rsi,%rbx,4),%xmm2,%xmm2
   0x00007ffff7fcb8fb <+475>:	movslq %ebp,%rbp
   0x00007ffff7fcb8fe <+478>:	vaddss (%rdx,%rbp,4),%xmm2,%xmm2
   0x00007ffff7fcb903 <+483>:	vsubss (%rdx,%rbx,4),%xmm2,%xmm2
   0x00007ffff7fcb908 <+488>:	vcvtss2sd %xmm2,%xmm2,%xmm2
   0x00007ffff7fcb90c <+492>:	vfmadd132sd %xmm0,%xmm1,%xmm2
   0x00007ffff7fcb911 <+497>:	vcvtsd2ss %xmm2,%xmm2,%xmm1
   0x00007ffff7fcb915 <+501>:	vmovss %xmm1,(%rdi,%rbx,4)
   0x00007ffff7fcb91a <+506>:	add    $0x1,%ebp
   0x00007ffff7fcb91d <+509>:	add    $0x1,%eax
   0x00007ffff7fcb920 <+512>:	add    $0xffffffffffffffff,%rcx
   0x00007ffff7fcb924 <+516>:	jne    0x7ffff7fcb8e0 <fdtd_kernel3+448>
   0x00007ffff7fcb926 <+518>:	add    $0x1,%r11
   0x00007ffff7fcb92a <+522>:	add    %r12d,%r10d
   0x00007ffff7fcb92d <+525>:	add    %r12d,%r9d
   0x00007ffff7fcb930 <+528>:	cmp    %r15,%r11
   0x00007ffff7fcb933 <+531>:	jne    0x7ffff7fcb8d0 <fdtd_kernel3+432>
   0x00007ffff7fcb935 <+533>:	pop    %rbx
   0x00007ffff7fcb936 <+534>:	pop    %r12
   0x00007ffff7fcb938 <+536>:	pop    %r13
   0x00007ffff7fcb93a <+538>:	pop    %r14
   0x00007ffff7fcb93c <+540>:	pop    %r15
   0x00007ffff7fcb93e <+542>:	pop    %rbp
   0x00007ffff7fcb93f <+543>:	vzeroupper 
   0x00007ffff7fcb942 <+546>:	ret    
End of assembler dump.
