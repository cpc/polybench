Dump of assembler code for function adi_kernel1:
=> 0x00007ffff7fcb2a0 <+0>:	push   %rbp
   0x00007ffff7fcb2a1 <+1>:	push   %r15
   0x00007ffff7fcb2a3 <+3>:	push   %r14
   0x00007ffff7fcb2a5 <+5>:	push   %r13
   0x00007ffff7fcb2a7 <+7>:	push   %r12
   0x00007ffff7fcb2a9 <+9>:	push   %rbx
   0x00007ffff7fcb2aa <+10>:	mov    0x58(%rdi),%rax
   0x00007ffff7fcb2ae <+14>:	mov    (%rsi),%r9
   0x00007ffff7fcb2b1 <+17>:	imul   %rax,%r9
   0x00007ffff7fcb2b5 <+21>:	add    0x28(%rdi),%r9
   0x00007ffff7fcb2b9 <+25>:	movslq 0x18(%rdi),%r8
   0x00007ffff7fcb2bd <+29>:	add    %r9,%rax
   0x00007ffff7fcb2c0 <+32>:	cmp    %r8,%rax
   0x00007ffff7fcb2c3 <+35>:	mov    %r8,%r13
   0x00007ffff7fcb2c6 <+38>:	cmovle %rax,%r13
   0x00007ffff7fcb2ca <+42>:	test   %r8,%r8
   0x00007ffff7fcb2cd <+45>:	cmovs  %rax,%r13
   0x00007ffff7fcb2d1 <+49>:	cmp    $0x2,%r8
   0x00007ffff7fcb2d5 <+53>:	jl     0x7ffff7fcb647 <adi_kernel1+935>
   0x00007ffff7fcb2db <+59>:	sub    %r9,%r13
   0x00007ffff7fcb2de <+62>:	test   %r13,%r13
   0x00007ffff7fcb2e1 <+65>:	jle    0x7ffff7fcb647 <adi_kernel1+935>
   0x00007ffff7fcb2e7 <+71>:	mov    (%rdi),%rax
   0x00007ffff7fcb2ea <+74>:	mov    0x8(%rdi),%rcx
   0x00007ffff7fcb2ee <+78>:	mov    0x10(%rdi),%rdx
   0x00007ffff7fcb2f2 <+82>:	lea    -0x1(%r8),%rdi
   0x00007ffff7fcb2f6 <+86>:	lea    -0x2(%r8),%r11
   0x00007ffff7fcb2fa <+90>:	mov    %edi,%esi
   0x00007ffff7fcb2fc <+92>:	and    $0x7,%esi
   0x00007ffff7fcb2ff <+95>:	sub    %rsi,%rdi
   0x00007ffff7fcb302 <+98>:	imul   %r8d,%r9d
   0x00007ffff7fcb306 <+102>:	mov    %rcx,-0x8(%rsp)
   0x00007ffff7fcb30b <+107>:	lea    0x20(%rcx),%rcx
   0x00007ffff7fcb30f <+111>:	mov    %rcx,-0x18(%rsp)
   0x00007ffff7fcb314 <+116>:	mov    %rax,-0x10(%rsp)
   0x00007ffff7fcb319 <+121>:	lea    0x20(%rax),%rax
   0x00007ffff7fcb31d <+125>:	mov    %rax,-0x20(%rsp)
   0x00007ffff7fcb322 <+130>:	mov    %rdx,%r10
   0x00007ffff7fcb325 <+133>:	lea    0x20(%rdx),%rax
   0x00007ffff7fcb329 <+137>:	mov    %rax,-0x28(%rsp)
   0x00007ffff7fcb32e <+142>:	xor    %ebx,%ebx
   0x00007ffff7fcb330 <+144>:	movslq %r9d,%rcx
   0x00007ffff7fcb333 <+147>:	cmp    $0x7,%r11
   0x00007ffff7fcb337 <+151>:	jae    0x7ffff7fcb350 <adi_kernel1+176>
   0x00007ffff7fcb339 <+153>:	mov    $0x1,%ebp
   0x00007ffff7fcb33e <+158>:	test   %rsi,%rsi
   0x00007ffff7fcb341 <+161>:	jne    0x7ffff7fcb5c6 <adi_kernel1+806>
   0x00007ffff7fcb347 <+167>:	jmp    0x7ffff7fcb637 <adi_kernel1+919>
   0x00007ffff7fcb34c <+172>:	nopl   0x0(%rax)
   0x00007ffff7fcb350 <+176>:	mov    -0x18(%rsp),%rax
   0x00007ffff7fcb355 <+181>:	lea    (%rax,%rcx,4),%r14
   0x00007ffff7fcb359 <+185>:	mov    -0x20(%rsp),%rax
   0x00007ffff7fcb35e <+190>:	lea    (%rax,%rcx,4),%r15
   0x00007ffff7fcb362 <+194>:	mov    -0x28(%rsp),%rax
   0x00007ffff7fcb367 <+199>:	lea    (%rax,%rcx,4),%r12
   0x00007ffff7fcb36b <+203>:	xor    %eax,%eax
   0x00007ffff7fcb36d <+205>:	nopl   (%rax)
   0x00007ffff7fcb370 <+208>:	mov    %rax,%rbp
   0x00007ffff7fcb373 <+211>:	vmovss -0x20(%r12,%rbp,4),%xmm0
   0x00007ffff7fcb37a <+218>:	vmulss -0x1c(%r15,%rbp,4),%xmm0,%xmm0
   0x00007ffff7fcb381 <+225>:	vmovss -0x1c(%r12,%rbp,4),%xmm1
   0x00007ffff7fcb388 <+232>:	vdivss -0x20(%r14,%rbp,4),%xmm0,%xmm0
   0x00007ffff7fcb38f <+239>:	vsubss %xmm0,%xmm1,%xmm0
   0x00007ffff7fcb393 <+243>:	vmovss %xmm0,-0x1c(%r12,%rbp,4)
   0x00007ffff7fcb39a <+250>:	vmovss -0x1c(%r14,%rbp,4),%xmm0
   0x00007ffff7fcb3a1 <+257>:	vmovss -0x1c(%r15,%rbp,4),%xmm1
   0x00007ffff7fcb3a8 <+264>:	vmulss %xmm1,%xmm1,%xmm1
   0x00007ffff7fcb3ac <+268>:	vdivss -0x20(%r14,%rbp,4),%xmm1,%xmm1
   0x00007ffff7fcb3b3 <+275>:	vsubss %xmm1,%xmm0,%xmm0
   0x00007ffff7fcb3b7 <+279>:	vmovss %xmm0,-0x1c(%r14,%rbp,4)
   0x00007ffff7fcb3be <+286>:	vmovss -0x1c(%r12,%rbp,4),%xmm1
   0x00007ffff7fcb3c5 <+293>:	vmovss -0x18(%r12,%rbp,4),%xmm2
   0x00007ffff7fcb3cc <+300>:	vmulss -0x18(%r15,%rbp,4),%xmm1,%xmm1
   0x00007ffff7fcb3d3 <+307>:	vdivss %xmm0,%xmm1,%xmm0
   0x00007ffff7fcb3d7 <+311>:	vsubss %xmm0,%xmm2,%xmm0
   0x00007ffff7fcb3db <+315>:	vmovss %xmm0,-0x18(%r12,%rbp,4)
   0x00007ffff7fcb3e2 <+322>:	vmovss -0x18(%r14,%rbp,4),%xmm0
   0x00007ffff7fcb3e9 <+329>:	vmovss -0x18(%r15,%rbp,4),%xmm1
   0x00007ffff7fcb3f0 <+336>:	vmulss %xmm1,%xmm1,%xmm1
   0x00007ffff7fcb3f4 <+340>:	vdivss -0x1c(%r14,%rbp,4),%xmm1,%xmm1
   0x00007ffff7fcb3fb <+347>:	vsubss %xmm1,%xmm0,%xmm0
   0x00007ffff7fcb3ff <+351>:	vmovss %xmm0,-0x18(%r14,%rbp,4)
   0x00007ffff7fcb406 <+358>:	vmovss -0x18(%r12,%rbp,4),%xmm1
   0x00007ffff7fcb40d <+365>:	vmovss -0x14(%r12,%rbp,4),%xmm2
   0x00007ffff7fcb414 <+372>:	vmulss -0x14(%r15,%rbp,4),%xmm1,%xmm1
   0x00007ffff7fcb41b <+379>:	vdivss %xmm0,%xmm1,%xmm0
   0x00007ffff7fcb41f <+383>:	vsubss %xmm0,%xmm2,%xmm0
   0x00007ffff7fcb423 <+387>:	vmovss %xmm0,-0x14(%r12,%rbp,4)
   0x00007ffff7fcb42a <+394>:	vmovss -0x14(%r14,%rbp,4),%xmm0
   0x00007ffff7fcb431 <+401>:	vmovss -0x14(%r15,%rbp,4),%xmm1
   0x00007ffff7fcb438 <+408>:	vmulss %xmm1,%xmm1,%xmm1
   0x00007ffff7fcb43c <+412>:	vdivss -0x18(%r14,%rbp,4),%xmm1,%xmm1
   0x00007ffff7fcb443 <+419>:	vsubss %xmm1,%xmm0,%xmm0
   0x00007ffff7fcb447 <+423>:	vmovss %xmm0,-0x14(%r14,%rbp,4)
   0x00007ffff7fcb44e <+430>:	vmovss -0x14(%r12,%rbp,4),%xmm1
   0x00007ffff7fcb455 <+437>:	vmovss -0x10(%r12,%rbp,4),%xmm2
   0x00007ffff7fcb45c <+444>:	vmulss -0x10(%r15,%rbp,4),%xmm1,%xmm1
   0x00007ffff7fcb463 <+451>:	vdivss %xmm0,%xmm1,%xmm0
   0x00007ffff7fcb467 <+455>:	vsubss %xmm0,%xmm2,%xmm0
   0x00007ffff7fcb46b <+459>:	vmovss %xmm0,-0x10(%r12,%rbp,4)
   0x00007ffff7fcb472 <+466>:	vmovss -0x10(%r14,%rbp,4),%xmm0
   0x00007ffff7fcb479 <+473>:	vmovss -0x10(%r15,%rbp,4),%xmm1
   0x00007ffff7fcb480 <+480>:	vmulss %xmm1,%xmm1,%xmm1
   0x00007ffff7fcb484 <+484>:	vdivss -0x14(%r14,%rbp,4),%xmm1,%xmm1
   0x00007ffff7fcb48b <+491>:	vsubss %xmm1,%xmm0,%xmm0
   0x00007ffff7fcb48f <+495>:	vmovss %xmm0,-0x10(%r14,%rbp,4)
   0x00007ffff7fcb496 <+502>:	vmovss -0x10(%r12,%rbp,4),%xmm1
   0x00007ffff7fcb49d <+509>:	vmovss -0xc(%r12,%rbp,4),%xmm2
   0x00007ffff7fcb4a4 <+516>:	vmulss -0xc(%r15,%rbp,4),%xmm1,%xmm1
   0x00007ffff7fcb4ab <+523>:	vdivss %xmm0,%xmm1,%xmm0
   0x00007ffff7fcb4af <+527>:	vsubss %xmm0,%xmm2,%xmm0
   0x00007ffff7fcb4b3 <+531>:	vmovss %xmm0,-0xc(%r12,%rbp,4)
   0x00007ffff7fcb4ba <+538>:	vmovss -0xc(%r14,%rbp,4),%xmm0
   0x00007ffff7fcb4c1 <+545>:	vmovss -0xc(%r15,%rbp,4),%xmm1
   0x00007ffff7fcb4c8 <+552>:	vmulss %xmm1,%xmm1,%xmm1
   0x00007ffff7fcb4cc <+556>:	vdivss -0x10(%r14,%rbp,4),%xmm1,%xmm1
   0x00007ffff7fcb4d3 <+563>:	vsubss %xmm1,%xmm0,%xmm0
   0x00007ffff7fcb4d7 <+567>:	vmovss %xmm0,-0xc(%r14,%rbp,4)
   0x00007ffff7fcb4de <+574>:	vmovss -0xc(%r12,%rbp,4),%xmm1
   0x00007ffff7fcb4e5 <+581>:	vmovss -0x8(%r12,%rbp,4),%xmm2
   0x00007ffff7fcb4ec <+588>:	vmulss -0x8(%r15,%rbp,4),%xmm1,%xmm1
   0x00007ffff7fcb4f3 <+595>:	vdivss %xmm0,%xmm1,%xmm0
   0x00007ffff7fcb4f7 <+599>:	vsubss %xmm0,%xmm2,%xmm0
   0x00007ffff7fcb4fb <+603>:	vmovss %xmm0,-0x8(%r12,%rbp,4)
   0x00007ffff7fcb502 <+610>:	vmovss -0x8(%r14,%rbp,4),%xmm0
   0x00007ffff7fcb509 <+617>:	vmovss -0x8(%r15,%rbp,4),%xmm1
   0x00007ffff7fcb510 <+624>:	vmulss %xmm1,%xmm1,%xmm1
   0x00007ffff7fcb514 <+628>:	vdivss -0xc(%r14,%rbp,4),%xmm1,%xmm1
   0x00007ffff7fcb51b <+635>:	vsubss %xmm1,%xmm0,%xmm0
   0x00007ffff7fcb51f <+639>:	vmovss %xmm0,-0x8(%r14,%rbp,4)
   0x00007ffff7fcb526 <+646>:	vmovss -0x8(%r12,%rbp,4),%xmm1
   0x00007ffff7fcb52d <+653>:	vmovss -0x4(%r12,%rbp,4),%xmm2
   0x00007ffff7fcb534 <+660>:	vmulss -0x4(%r15,%rbp,4),%xmm1,%xmm1
   0x00007ffff7fcb53b <+667>:	vdivss %xmm0,%xmm1,%xmm0
   0x00007ffff7fcb53f <+671>:	vsubss %xmm0,%xmm2,%xmm0
   0x00007ffff7fcb543 <+675>:	vmovss %xmm0,-0x4(%r12,%rbp,4)
   0x00007ffff7fcb54a <+682>:	vmovss -0x4(%r14,%rbp,4),%xmm0
   0x00007ffff7fcb551 <+689>:	vmovss -0x4(%r15,%rbp,4),%xmm1
   0x00007ffff7fcb558 <+696>:	vmulss %xmm1,%xmm1,%xmm1
   0x00007ffff7fcb55c <+700>:	vdivss -0x8(%r14,%rbp,4),%xmm1,%xmm1
   0x00007ffff7fcb563 <+707>:	vsubss %xmm1,%xmm0,%xmm0
   0x00007ffff7fcb567 <+711>:	vmovss %xmm0,-0x4(%r14,%rbp,4)
   0x00007ffff7fcb56e <+718>:	vmovss -0x4(%r12,%rbp,4),%xmm1
   0x00007ffff7fcb575 <+725>:	vmovss (%r12,%rbp,4),%xmm2
   0x00007ffff7fcb57b <+731>:	vmulss (%r15,%rbp,4),%xmm1,%xmm1
   0x00007ffff7fcb581 <+737>:	vdivss %xmm0,%xmm1,%xmm0
   0x00007ffff7fcb585 <+741>:	vsubss %xmm0,%xmm2,%xmm0
   0x00007ffff7fcb589 <+745>:	vmovss %xmm0,(%r12,%rbp,4)
   0x00007ffff7fcb58f <+751>:	vmovss (%r14,%rbp,4),%xmm0
   0x00007ffff7fcb595 <+757>:	vmovss (%r15,%rbp,4),%xmm1
   0x00007ffff7fcb59b <+763>:	vmulss %xmm1,%xmm1,%xmm1
   0x00007ffff7fcb59f <+767>:	vdivss -0x4(%r14,%rbp,4),%xmm1,%xmm1
   0x00007ffff7fcb5a6 <+774>:	vsubss %xmm1,%xmm0,%xmm0
   0x00007ffff7fcb5aa <+778>:	lea    0x8(%rbp),%rax
   0x00007ffff7fcb5ae <+782>:	cmp    %rax,%rdi
   0x00007ffff7fcb5b1 <+785>:	vmovss %xmm0,(%r14,%rbp,4)
   0x00007ffff7fcb5b7 <+791>:	jne    0x7ffff7fcb370 <adi_kernel1+208>
   0x00007ffff7fcb5bd <+797>:	add    $0x9,%rbp
   0x00007ffff7fcb5c1 <+801>:	test   %rsi,%rsi
   0x00007ffff7fcb5c4 <+804>:	je     0x7ffff7fcb637 <adi_kernel1+919>
   0x00007ffff7fcb5c6 <+806>:	add    %rcx,%rbp
   0x00007ffff7fcb5c9 <+809>:	mov    -0x8(%rsp),%rax
   0x00007ffff7fcb5ce <+814>:	lea    (%rax,%rbp,4),%rcx
   0x00007ffff7fcb5d2 <+818>:	mov    -0x10(%rsp),%rax
   0x00007ffff7fcb5d7 <+823>:	lea    (%rax,%rbp,4),%rdx
   0x00007ffff7fcb5db <+827>:	lea    (%r10,%rbp,4),%rbp
   0x00007ffff7fcb5df <+831>:	xor    %eax,%eax
   0x00007ffff7fcb5e1 <+833>:	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb5f0 <+848>:	vmovss -0x4(%rbp,%rax,4),%xmm0
   0x00007ffff7fcb5f6 <+854>:	vmulss (%rdx,%rax,4),%xmm0,%xmm0
   0x00007ffff7fcb5fb <+859>:	vmovss 0x0(%rbp,%rax,4),%xmm1
   0x00007ffff7fcb601 <+865>:	vdivss -0x4(%rcx,%rax,4),%xmm0,%xmm0
   0x00007ffff7fcb607 <+871>:	vsubss %xmm0,%xmm1,%xmm0
   0x00007ffff7fcb60b <+875>:	vmovss %xmm0,0x0(%rbp,%rax,4)
   0x00007ffff7fcb611 <+881>:	vmovss (%rcx,%rax,4),%xmm0
   0x00007ffff7fcb616 <+886>:	vmovss (%rdx,%rax,4),%xmm1
   0x00007ffff7fcb61b <+891>:	vmulss %xmm1,%xmm1,%xmm1
   0x00007ffff7fcb61f <+895>:	vdivss -0x4(%rcx,%rax,4),%xmm1,%xmm1
   0x00007ffff7fcb625 <+901>:	vsubss %xmm1,%xmm0,%xmm0
   0x00007ffff7fcb629 <+905>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fcb62e <+910>:	add    $0x1,%rax
   0x00007ffff7fcb632 <+914>:	cmp    %rax,%rsi
   0x00007ffff7fcb635 <+917>:	jne    0x7ffff7fcb5f0 <adi_kernel1+848>
   0x00007ffff7fcb637 <+919>:	add    $0x1,%rbx
   0x00007ffff7fcb63b <+923>:	add    %r8d,%r9d
   0x00007ffff7fcb63e <+926>:	cmp    %r13,%rbx
   0x00007ffff7fcb641 <+929>:	jne    0x7ffff7fcb330 <adi_kernel1+144>
   0x00007ffff7fcb647 <+935>:	pop    %rbx
   0x00007ffff7fcb648 <+936>:	pop    %r12
   0x00007ffff7fcb64a <+938>:	pop    %r13
   0x00007ffff7fcb64c <+940>:	pop    %r14
   0x00007ffff7fcb64e <+942>:	pop    %r15
   0x00007ffff7fcb650 <+944>:	pop    %rbp
   0x00007ffff7fcb651 <+945>:	ret    
End of assembler dump.
