Dump of assembler code for function gramschmidt_kernel1:
=> 0x00007ffff7fcb2d0 <+0>:	push   %r15
   0x00007ffff7fcb2d2 <+2>:	push   %r14
   0x00007ffff7fcb2d4 <+4>:	push   %rbx
   0x00007ffff7fcb2d5 <+5>:	mov    0x60(%rdi),%rax
   0x00007ffff7fcb2d9 <+9>:	mov    (%rsi),%rcx
   0x00007ffff7fcb2dc <+12>:	imul   %rax,%rcx
   0x00007ffff7fcb2e0 <+16>:	add    0x30(%rdi),%rcx
   0x00007ffff7fcb2e4 <+20>:	xor    %edx,%edx
   0x00007ffff7fcb2e6 <+22>:	add    %rcx,%rax
   0x00007ffff7fcb2e9 <+25>:	setne  %dl
   0x00007ffff7fcb2ec <+28>:	sub    %rcx,%rdx
   0x00007ffff7fcb2ef <+31>:	test   %rdx,%rdx
   0x00007ffff7fcb2f2 <+34>:	jle    0x7ffff7fcb430 <gramschmidt_kernel1+352>
   0x00007ffff7fcb2f8 <+40>:	mov    0x8(%rdi),%r8
   0x00007ffff7fcb2fc <+44>:	movslq 0x18(%rdi),%r10
   0x00007ffff7fcb300 <+48>:	movslq 0x1c(%rdi),%r14
   0x00007ffff7fcb304 <+52>:	movslq 0x20(%rdi),%r15
   0x00007ffff7fcb308 <+56>:	test   %r14d,%r14d
   0x00007ffff7fcb30b <+59>:	jle    0x7ffff7fcb334 <gramschmidt_kernel1+100>
   0x00007ffff7fcb30d <+61>:	mov    (%rdi),%r9
   0x00007ffff7fcb310 <+64>:	lea    -0x1(%r14),%rcx
   0x00007ffff7fcb314 <+68>:	mov    %r14d,%esi
   0x00007ffff7fcb317 <+71>:	and    $0x7,%esi
   0x00007ffff7fcb31a <+74>:	cmp    $0x7,%rcx
   0x00007ffff7fcb31e <+78>:	jae    0x7ffff7fcb33d <gramschmidt_kernel1+109>
   0x00007ffff7fcb320 <+80>:	vxorps %xmm0,%xmm0,%xmm0
   0x00007ffff7fcb324 <+84>:	xor    %edi,%edi
   0x00007ffff7fcb326 <+86>:	test   %rsi,%rsi
   0x00007ffff7fcb329 <+89>:	jne    0x7ffff7fcb3db <gramschmidt_kernel1+267>
   0x00007ffff7fcb32f <+95>:	jmp    0x7ffff7fcb412 <gramschmidt_kernel1+322>
   0x00007ffff7fcb334 <+100>:	vxorps %xmm0,%xmm0,%xmm0
   0x00007ffff7fcb338 <+104>:	jmp    0x7ffff7fcb412 <gramschmidt_kernel1+322>
   0x00007ffff7fcb33d <+109>:	sub    %rsi,%r14
   0x00007ffff7fcb340 <+112>:	lea    (%r9,%r10,4),%rcx
   0x00007ffff7fcb344 <+116>:	mov    %r15,%r11
   0x00007ffff7fcb347 <+119>:	shl    $0x5,%r11
   0x00007ffff7fcb34b <+123>:	lea    0x0(,%r15,4),%rbx
   0x00007ffff7fcb353 <+131>:	vxorps %xmm0,%xmm0,%xmm0
   0x00007ffff7fcb357 <+135>:	xor    %edi,%edi
   0x00007ffff7fcb359 <+137>:	nopl   0x0(%rax)
   0x00007ffff7fcb360 <+144>:	vmovss (%rcx),%xmm1
   0x00007ffff7fcb364 <+148>:	vfmadd213ss %xmm0,%xmm1,%xmm1
   0x00007ffff7fcb369 <+153>:	lea    (%rcx,%rbx,1),%rax
   0x00007ffff7fcb36d <+157>:	vmovss (%rcx,%r15,4),%xmm0
   0x00007ffff7fcb373 <+163>:	vfmadd213ss %xmm1,%xmm0,%xmm0
   0x00007ffff7fcb378 <+168>:	add    %rbx,%rax
   0x00007ffff7fcb37b <+171>:	vmovss (%rcx,%r15,8),%xmm1
   0x00007ffff7fcb381 <+177>:	vfmadd213ss %xmm0,%xmm1,%xmm1
   0x00007ffff7fcb386 <+182>:	lea    (%rax,%rbx,1),%rdx
   0x00007ffff7fcb38a <+186>:	vmovss (%rax,%r15,4),%xmm0
   0x00007ffff7fcb390 <+192>:	vfmadd213ss %xmm1,%xmm0,%xmm0
   0x00007ffff7fcb395 <+197>:	add    %rbx,%rdx
   0x00007ffff7fcb398 <+200>:	vmovss (%rax,%r15,8),%xmm1
   0x00007ffff7fcb39e <+206>:	vfmadd213ss %xmm0,%xmm1,%xmm1
   0x00007ffff7fcb3a3 <+211>:	vmovss (%rdx,%r15,4),%xmm0
   0x00007ffff7fcb3a9 <+217>:	add    %rbx,%rdx
   0x00007ffff7fcb3ac <+220>:	vfmadd213ss %xmm1,%xmm0,%xmm0
   0x00007ffff7fcb3b1 <+225>:	vmovss (%rdx,%r15,4),%xmm1
   0x00007ffff7fcb3b7 <+231>:	add    %rbx,%rdx
   0x00007ffff7fcb3ba <+234>:	vfmadd213ss %xmm0,%xmm1,%xmm1
   0x00007ffff7fcb3bf <+239>:	vmovss (%rdx,%r15,4),%xmm0
   0x00007ffff7fcb3c5 <+245>:	vfmadd213ss %xmm1,%xmm0,%xmm0
   0x00007ffff7fcb3ca <+250>:	add    $0x8,%rdi
   0x00007ffff7fcb3ce <+254>:	add    %r11,%rcx
   0x00007ffff7fcb3d1 <+257>:	cmp    %rdi,%r14
   0x00007ffff7fcb3d4 <+260>:	jne    0x7ffff7fcb360 <gramschmidt_kernel1+144>
   0x00007ffff7fcb3d6 <+262>:	test   %rsi,%rsi
   0x00007ffff7fcb3d9 <+265>:	je     0x7ffff7fcb412 <gramschmidt_kernel1+322>
   0x00007ffff7fcb3db <+267>:	imul   %r15,%rdi
   0x00007ffff7fcb3df <+271>:	add    %r10,%rdi
   0x00007ffff7fcb3e2 <+274>:	lea    (%r9,%rdi,4),%rax
   0x00007ffff7fcb3e6 <+278>:	lea    0x0(,%r15,4),%rcx
   0x00007ffff7fcb3ee <+286>:	neg    %rsi
   0x00007ffff7fcb3f1 <+289>:	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb400 <+304>:	vmovss (%rax),%xmm1
   0x00007ffff7fcb404 <+308>:	vfmadd231ss %xmm1,%xmm1,%xmm0
   0x00007ffff7fcb409 <+313>:	add    %rcx,%rax
   0x00007ffff7fcb40c <+316>:	add    $0x1,%rsi
   0x00007ffff7fcb410 <+320>:	jne    0x7ffff7fcb400 <gramschmidt_kernel1+304>
   0x00007ffff7fcb412 <+322>:	vxorps %xmm1,%xmm1,%xmm1
   0x00007ffff7fcb416 <+326>:	vblendps $0x1,%xmm0,%xmm1,%xmm0
   0x00007ffff7fcb41c <+332>:	vsqrtps %xmm0,%xmm0
   0x00007ffff7fcb420 <+336>:	imul   %r10d,%r15d
   0x00007ffff7fcb424 <+340>:	add    %r10d,%r15d
   0x00007ffff7fcb427 <+343>:	movslq %r15d,%rax
   0x00007ffff7fcb42a <+346>:	vmovss %xmm0,(%r8,%rax,4)
   0x00007ffff7fcb430 <+352>:	pop    %rbx
   0x00007ffff7fcb431 <+353>:	pop    %r14
   0x00007ffff7fcb433 <+355>:	pop    %r15
   0x00007ffff7fcb435 <+357>:	ret    
End of assembler dump.
