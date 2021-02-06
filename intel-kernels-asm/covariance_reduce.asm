Dump of assembler code for function reduce_kernel:
=> 0x00007ffff7fcb4f0 <+0>:	push   %rbp
   0x00007ffff7fcb4f1 <+1>:	push   %r15
   0x00007ffff7fcb4f3 <+3>:	push   %r14
   0x00007ffff7fcb4f5 <+5>:	push   %r13
   0x00007ffff7fcb4f7 <+7>:	push   %r12
   0x00007ffff7fcb4f9 <+9>:	push   %rbx
   0x00007ffff7fcb4fa <+10>:	movslq 0x10(%rdi),%r11
   0x00007ffff7fcb4fe <+14>:	mov    0x50(%rdi),%rax
   0x00007ffff7fcb502 <+18>:	mov    0x58(%rdi),%rcx
   0x00007ffff7fcb506 <+22>:	mov    (%rsi),%rbp
   0x00007ffff7fcb509 <+25>:	imul   %rax,%rbp
   0x00007ffff7fcb50d <+29>:	add    0x20(%rdi),%rbp
   0x00007ffff7fcb511 <+33>:	mov    0x8(%rsi),%rsi
   0x00007ffff7fcb515 <+37>:	imul   %rcx,%rsi
   0x00007ffff7fcb519 <+41>:	add    0x28(%rdi),%rsi
   0x00007ffff7fcb51d <+45>:	movslq 0x14(%rdi),%rdx
   0x00007ffff7fcb521 <+49>:	add    %rsi,%rcx
   0x00007ffff7fcb524 <+52>:	cmp    %rdx,%rcx
   0x00007ffff7fcb527 <+55>:	mov    %rdx,%r12
   0x00007ffff7fcb52a <+58>:	cmovle %rcx,%r12
   0x00007ffff7fcb52e <+62>:	test   %rdx,%rdx
   0x00007ffff7fcb531 <+65>:	cmovs  %rcx,%r12
   0x00007ffff7fcb535 <+69>:	add    %rbp,%rax
   0x00007ffff7fcb538 <+72>:	cmp    %r11,%rax
   0x00007ffff7fcb53b <+75>:	mov    %r11,%r8
   0x00007ffff7fcb53e <+78>:	cmovle %rax,%r8
   0x00007ffff7fcb542 <+82>:	test   %r11,%r11
   0x00007ffff7fcb545 <+85>:	cmovs  %rax,%r8
   0x00007ffff7fcb549 <+89>:	sub    %rbp,%r8
   0x00007ffff7fcb54c <+92>:	test   %r8,%r8
   0x00007ffff7fcb54f <+95>:	jle    0x7ffff7fcb661 <reduce_kernel+369>
   0x00007ffff7fcb555 <+101>:	sub    %rsi,%r12
   0x00007ffff7fcb558 <+104>:	test   %r12,%r12
   0x00007ffff7fcb55b <+107>:	jle    0x7ffff7fcb661 <reduce_kernel+369>
   0x00007ffff7fcb561 <+113>:	mov    %rbp,-0x10(%rsp)
   0x00007ffff7fcb566 <+118>:	mov    %rsi,-0x8(%rsp)
   0x00007ffff7fcb56b <+123>:	mov    (%rdi),%rsi
   0x00007ffff7fcb56e <+126>:	mov    0x8(%rdi),%rdi
   0x00007ffff7fcb572 <+130>:	mov    %r8,%r9
   0x00007ffff7fcb575 <+133>:	sar    $0x3,%r9
   0x00007ffff7fcb579 <+137>:	mov    %r8,%r13
   0x00007ffff7fcb57c <+140>:	and    $0xfffffffffffffff8,%r13
   0x00007ffff7fcb580 <+144>:	sub    %r13,%r8
   0x00007ffff7fcb583 <+147>:	test   %r9,%r9
   0x00007ffff7fcb586 <+150>:	je     0x7ffff7fcb5f2 <reduce_kernel+258>
   0x00007ffff7fcb588 <+152>:	mov    -0x10(%rsp),%rcx
   0x00007ffff7fcb58d <+157>:	mov    %rcx,%r15
   0x00007ffff7fcb590 <+160>:	mov    %r11d,%eax
   0x00007ffff7fcb593 <+163>:	imul   -0x8(%rsp),%eax
   0x00007ffff7fcb598 <+168>:	shl    $0x20,%r15
   0x00007ffff7fcb59c <+172>:	lea    (%rcx,%rax,1),%ebp
   0x00007ffff7fcb59f <+175>:	xor    %eax,%eax
   0x00007ffff7fcb5a1 <+177>:	movabs $0x800000000,%rbx
   0x00007ffff7fcb5ab <+187>:	nopl   0x0(%rax,%rax,1)
   0x00007ffff7fcb5b0 <+192>:	mov    %ebp,%ecx
   0x00007ffff7fcb5b2 <+194>:	mov    %r15,%rdx
   0x00007ffff7fcb5b5 <+197>:	mov    %r9,%r14
   0x00007ffff7fcb5b8 <+200>:	nopl   0x0(%rax,%rax,1)
   0x00007ffff7fcb5c0 <+208>:	mov    %rdx,%r10
   0x00007ffff7fcb5c3 <+211>:	sar    $0x1e,%r10
   0x00007ffff7fcb5c7 <+215>:	movslq %ecx,%rcx
   0x00007ffff7fcb5ca <+218>:	vmovups (%rdi,%rcx,4),%ymm0
   0x00007ffff7fcb5cf <+223>:	vsubps (%rsi,%r10,1),%ymm0,%ymm0
   0x00007ffff7fcb5d5 <+229>:	vmovups %ymm0,(%rdi,%rcx,4)
   0x00007ffff7fcb5da <+234>:	add    %rbx,%rdx
   0x00007ffff7fcb5dd <+237>:	add    $0x8,%ecx
   0x00007ffff7fcb5e0 <+240>:	add    $0xffffffffffffffff,%r14
   0x00007ffff7fcb5e4 <+244>:	jne    0x7ffff7fcb5c0 <reduce_kernel+208>
   0x00007ffff7fcb5e6 <+246>:	add    $0x1,%rax
   0x00007ffff7fcb5ea <+250>:	add    %r11d,%ebp
   0x00007ffff7fcb5ed <+253>:	cmp    %r12,%rax
   0x00007ffff7fcb5f0 <+256>:	jne    0x7ffff7fcb5b0 <reduce_kernel+192>
   0x00007ffff7fcb5f2 <+258>:	test   %r8,%r8
   0x00007ffff7fcb5f5 <+261>:	mov    -0x8(%rsp),%rax
   0x00007ffff7fcb5fa <+266>:	mov    -0x10(%rsp),%rcx
   0x00007ffff7fcb5ff <+271>:	je     0x7ffff7fcb661 <reduce_kernel+369>
   0x00007ffff7fcb601 <+273>:	add    %rcx,%r13
   0x00007ffff7fcb604 <+276>:	mov    %r13,%r9
   0x00007ffff7fcb607 <+279>:	imul   %r11d,%eax
   0x00007ffff7fcb60b <+283>:	shl    $0x20,%r9
   0x00007ffff7fcb60f <+287>:	add    %eax,%r13d
   0x00007ffff7fcb612 <+290>:	xor    %r10d,%r10d
   0x00007ffff7fcb615 <+293>:	movabs $0x100000000,%rbx
   0x00007ffff7fcb61f <+303>:	nop
   0x00007ffff7fcb620 <+304>:	mov    %r13d,%ecx
   0x00007ffff7fcb623 <+307>:	mov    %r9,%rdx
   0x00007ffff7fcb626 <+310>:	mov    %r8,%rax
   0x00007ffff7fcb629 <+313>:	nopl   0x0(%rax)
   0x00007ffff7fcb630 <+320>:	mov    %rdx,%rbp
   0x00007ffff7fcb633 <+323>:	sar    $0x1e,%rbp
   0x00007ffff7fcb637 <+327>:	movslq %ecx,%rcx
   0x00007ffff7fcb63a <+330>:	vmovss (%rdi,%rcx,4),%xmm0
   0x00007ffff7fcb63f <+335>:	vsubss (%rsi,%rbp,1),%xmm0,%xmm0
   0x00007ffff7fcb644 <+340>:	vmovss %xmm0,(%rdi,%rcx,4)
   0x00007ffff7fcb649 <+345>:	add    %rbx,%rdx
   0x00007ffff7fcb64c <+348>:	add    $0x1,%ecx
   0x00007ffff7fcb64f <+351>:	add    $0xffffffffffffffff,%rax
   0x00007ffff7fcb653 <+355>:	jne    0x7ffff7fcb630 <reduce_kernel+320>
   0x00007ffff7fcb655 <+357>:	add    $0x1,%r10
   0x00007ffff7fcb659 <+361>:	add    %r11d,%r13d
   0x00007ffff7fcb65c <+364>:	cmp    %r12,%r10
   0x00007ffff7fcb65f <+367>:	jne    0x7ffff7fcb620 <reduce_kernel+304>
   0x00007ffff7fcb661 <+369>:	pop    %rbx
   0x00007ffff7fcb662 <+370>:	pop    %r12
   0x00007ffff7fcb664 <+372>:	pop    %r13
   0x00007ffff7fcb666 <+374>:	pop    %r14
   0x00007ffff7fcb668 <+376>:	pop    %r15
   0x00007ffff7fcb66a <+378>:	pop    %rbp
   0x00007ffff7fcb66b <+379>:	vzeroupper 
   0x00007ffff7fcb66e <+382>:	ret    
End of assembler dump.
