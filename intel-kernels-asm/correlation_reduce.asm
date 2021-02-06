Dump of assembler code for function reduce_kernel:
=> 0x00007ffff7fcaa10 <+0>:	push   %rbp
   0x00007ffff7fcaa11 <+1>:	push   %r15
   0x00007ffff7fcaa13 <+3>:	push   %r14
   0x00007ffff7fcaa15 <+5>:	push   %r13
   0x00007ffff7fcaa17 <+7>:	push   %r12
   0x00007ffff7fcaa19 <+9>:	push   %rbx
   0x00007ffff7fcaa1a <+10>:	movslq 0x1c(%rdi),%r9
   0x00007ffff7fcaa1e <+14>:	mov    0x60(%rdi),%rax
   0x00007ffff7fcaa22 <+18>:	mov    0x68(%rdi),%rcx
   0x00007ffff7fcaa26 <+22>:	mov    (%rsi),%rbp
   0x00007ffff7fcaa29 <+25>:	imul   %rax,%rbp
   0x00007ffff7fcaa2d <+29>:	add    0x30(%rdi),%rbp
   0x00007ffff7fcaa31 <+33>:	mov    0x8(%rsi),%rsi
   0x00007ffff7fcaa35 <+37>:	imul   %rcx,%rsi
   0x00007ffff7fcaa39 <+41>:	add    0x38(%rdi),%rsi
   0x00007ffff7fcaa3d <+45>:	movslq 0x20(%rdi),%rdx
   0x00007ffff7fcaa41 <+49>:	add    %rsi,%rcx
   0x00007ffff7fcaa44 <+52>:	cmp    %rdx,%rcx
   0x00007ffff7fcaa47 <+55>:	mov    %rdx,%r12
   0x00007ffff7fcaa4a <+58>:	cmovle %rcx,%r12
   0x00007ffff7fcaa4e <+62>:	test   %rdx,%rdx
   0x00007ffff7fcaa51 <+65>:	cmovs  %rcx,%r12
   0x00007ffff7fcaa55 <+69>:	add    %rbp,%rax
   0x00007ffff7fcaa58 <+72>:	cmp    %r9,%rax
   0x00007ffff7fcaa5b <+75>:	mov    %r9,%rcx
   0x00007ffff7fcaa5e <+78>:	cmovle %rax,%rcx
   0x00007ffff7fcaa62 <+82>:	test   %r9,%r9
   0x00007ffff7fcaa65 <+85>:	cmovs  %rax,%rcx
   0x00007ffff7fcaa69 <+89>:	sub    %rbp,%rcx
   0x00007ffff7fcaa6c <+92>:	test   %rcx,%rcx
   0x00007ffff7fcaa6f <+95>:	jle    0x7ffff7fcabdf <reduce_kernel+463>
   0x00007ffff7fcaa75 <+101>:	sub    %rsi,%r12
   0x00007ffff7fcaa78 <+104>:	test   %r12,%r12
   0x00007ffff7fcaa7b <+107>:	jle    0x7ffff7fcabdf <reduce_kernel+463>
   0x00007ffff7fcaa81 <+113>:	mov    %rbp,-0x18(%rsp)
   0x00007ffff7fcaa86 <+118>:	mov    %rsi,-0x10(%rsp)
   0x00007ffff7fcaa8b <+123>:	mov    (%rdi),%rsi
   0x00007ffff7fcaa8e <+126>:	mov    0x8(%rdi),%rdx
   0x00007ffff7fcaa92 <+130>:	mov    0x10(%rdi),%rax
   0x00007ffff7fcaa96 <+134>:	vmovss 0x18(%rdi),%xmm0
   0x00007ffff7fcaa9b <+139>:	mov    %rcx,%r11
   0x00007ffff7fcaa9e <+142>:	sar    $0x3,%r11
   0x00007ffff7fcaaa2 <+146>:	mov    %rcx,%r13
   0x00007ffff7fcaaa5 <+149>:	and    $0xfffffffffffffff8,%r13
   0x00007ffff7fcaaa9 <+153>:	sub    %r13,%rcx
   0x00007ffff7fcaaac <+156>:	mov    %rcx,-0x8(%rsp)
   0x00007ffff7fcaab1 <+161>:	test   %r11,%r11
   0x00007ffff7fcaab4 <+164>:	je     0x7ffff7fcab41 <reduce_kernel+305>
   0x00007ffff7fcaaba <+170>:	vxorps %xmm1,%xmm1,%xmm1
   0x00007ffff7fcaabe <+174>:	vblendps $0x1,%xmm0,%xmm1,%xmm1
   0x00007ffff7fcaac4 <+180>:	vsqrtps %xmm1,%xmm1
   0x00007ffff7fcaac8 <+184>:	vbroadcastss %xmm1,%ymm1
   0x00007ffff7fcaacd <+189>:	mov    -0x18(%rsp),%rdi
   0x00007ffff7fcaad2 <+194>:	mov    %rdi,%r15
   0x00007ffff7fcaad5 <+197>:	mov    %r9d,%ecx
   0x00007ffff7fcaad8 <+200>:	imul   -0x10(%rsp),%ecx
   0x00007ffff7fcaadd <+205>:	shl    $0x20,%r15
   0x00007ffff7fcaae1 <+209>:	lea    (%rdi,%rcx,1),%ebp
   0x00007ffff7fcaae4 <+212>:	xor    %ebx,%ebx
   0x00007ffff7fcaae6 <+214>:	movabs $0x800000000,%rcx
   0x00007ffff7fcaaf0 <+224>:	mov    %ebp,%edi
   0x00007ffff7fcaaf2 <+226>:	mov    %r15,%r8
   0x00007ffff7fcaaf5 <+229>:	mov    %r11,%r14
   0x00007ffff7fcaaf8 <+232>:	nopl   0x0(%rax,%rax,1)
   0x00007ffff7fcab00 <+240>:	mov    %r8,%r10
   0x00007ffff7fcab03 <+243>:	sar    $0x1e,%r10
   0x00007ffff7fcab07 <+247>:	movslq %edi,%rdi
   0x00007ffff7fcab0a <+250>:	vmovups (%rax,%rdi,4),%ymm2
   0x00007ffff7fcab0f <+255>:	vsubps (%rsi,%r10,1),%ymm2,%ymm2
   0x00007ffff7fcab15 <+261>:	vmovups %ymm2,(%rax,%rdi,4)
   0x00007ffff7fcab1a <+266>:	vmulps (%rdx,%r10,1),%ymm1,%ymm3
   0x00007ffff7fcab20 <+272>:	vdivps %ymm3,%ymm2,%ymm2
   0x00007ffff7fcab24 <+276>:	vmovups %ymm2,(%rax,%rdi,4)
   0x00007ffff7fcab29 <+281>:	add    %rcx,%r8
   0x00007ffff7fcab2c <+284>:	add    $0x8,%edi
   0x00007ffff7fcab2f <+287>:	add    $0xffffffffffffffff,%r14
   0x00007ffff7fcab33 <+291>:	jne    0x7ffff7fcab00 <reduce_kernel+240>
   0x00007ffff7fcab35 <+293>:	add    $0x1,%rbx
   0x00007ffff7fcab39 <+297>:	add    %r9d,%ebp
   0x00007ffff7fcab3c <+300>:	cmp    %r12,%rbx
   0x00007ffff7fcab3f <+303>:	jne    0x7ffff7fcaaf0 <reduce_kernel+224>
   0x00007ffff7fcab41 <+305>:	mov    -0x8(%rsp),%r14
   0x00007ffff7fcab46 <+310>:	test   %r14,%r14
   0x00007ffff7fcab49 <+313>:	mov    -0x10(%rsp),%rcx
   0x00007ffff7fcab4e <+318>:	mov    -0x18(%rsp),%rdi
   0x00007ffff7fcab53 <+323>:	je     0x7ffff7fcabdf <reduce_kernel+463>
   0x00007ffff7fcab59 <+329>:	add    %rdi,%r13
   0x00007ffff7fcab5c <+332>:	vxorps %xmm1,%xmm1,%xmm1
   0x00007ffff7fcab60 <+336>:	vblendps $0x1,%xmm0,%xmm1,%xmm0
   0x00007ffff7fcab66 <+342>:	vsqrtps %xmm0,%xmm0
   0x00007ffff7fcab6a <+346>:	mov    %r13,%r10
   0x00007ffff7fcab6d <+349>:	imul   %r9d,%ecx
   0x00007ffff7fcab71 <+353>:	shl    $0x20,%r10
   0x00007ffff7fcab75 <+357>:	add    %ecx,%r13d
   0x00007ffff7fcab78 <+360>:	xor    %r11d,%r11d
   0x00007ffff7fcab7b <+363>:	movabs $0x100000000,%r8
   0x00007ffff7fcab85 <+373>:	data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcab90 <+384>:	mov    %r13d,%edi
   0x00007ffff7fcab93 <+387>:	mov    %r10,%rcx
   0x00007ffff7fcab96 <+390>:	mov    %r14,%rbp
   0x00007ffff7fcab99 <+393>:	nopl   0x0(%rax)
   0x00007ffff7fcaba0 <+400>:	mov    %rcx,%rbx
   0x00007ffff7fcaba3 <+403>:	sar    $0x1e,%rbx
   0x00007ffff7fcaba7 <+407>:	movslq %edi,%rdi
   0x00007ffff7fcabaa <+410>:	vmovss (%rax,%rdi,4),%xmm1
   0x00007ffff7fcabaf <+415>:	vsubss (%rsi,%rbx,1),%xmm1,%xmm1
   0x00007ffff7fcabb4 <+420>:	vmovss %xmm1,(%rax,%rdi,4)
   0x00007ffff7fcabb9 <+425>:	vmulss (%rdx,%rbx,1),%xmm0,%xmm2
   0x00007ffff7fcabbe <+430>:	vdivss %xmm2,%xmm1,%xmm1
   0x00007ffff7fcabc2 <+434>:	vmovss %xmm1,(%rax,%rdi,4)
   0x00007ffff7fcabc7 <+439>:	add    %r8,%rcx
   0x00007ffff7fcabca <+442>:	add    $0x1,%edi
   0x00007ffff7fcabcd <+445>:	add    $0xffffffffffffffff,%rbp
   0x00007ffff7fcabd1 <+449>:	jne    0x7ffff7fcaba0 <reduce_kernel+400>
   0x00007ffff7fcabd3 <+451>:	add    $0x1,%r11
   0x00007ffff7fcabd7 <+455>:	add    %r9d,%r13d
   0x00007ffff7fcabda <+458>:	cmp    %r12,%r11
   0x00007ffff7fcabdd <+461>:	jne    0x7ffff7fcab90 <reduce_kernel+384>
   0x00007ffff7fcabdf <+463>:	pop    %rbx
   0x00007ffff7fcabe0 <+464>:	pop    %r12
   0x00007ffff7fcabe2 <+466>:	pop    %r13
   0x00007ffff7fcabe4 <+468>:	pop    %r14
   0x00007ffff7fcabe6 <+470>:	pop    %r15
   0x00007ffff7fcabe8 <+472>:	pop    %rbp
   0x00007ffff7fcabe9 <+473>:	vzeroupper 
   0x00007ffff7fcabec <+476>:	ret    
End of assembler dump.
