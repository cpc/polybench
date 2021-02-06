Dump of assembler code for function lu_kernel2:
=> 0x00007ffff7fcb2c0 <+0>:	push   %rbp
   0x00007ffff7fcb2c1 <+1>:	push   %r15
   0x00007ffff7fcb2c3 <+3>:	push   %r14
   0x00007ffff7fcb2c5 <+5>:	push   %r13
   0x00007ffff7fcb2c7 <+7>:	push   %r12
   0x00007ffff7fcb2c9 <+9>:	push   %rbx
   0x00007ffff7fcb2ca <+10>:	mov    0x8(%rdi),%r11d
   0x00007ffff7fcb2ce <+14>:	mov    0xc(%rdi),%r8d
   0x00007ffff7fcb2d2 <+18>:	lea    0x1(%r11),%r14d
   0x00007ffff7fcb2d6 <+22>:	mov    %r8d,%eax
   0x00007ffff7fcb2d9 <+25>:	sub    %r14d,%eax
   0x00007ffff7fcb2dc <+28>:	lea    -0x1(%rax),%ecx
   0x00007ffff7fcb2df <+31>:	cmp    %eax,%ecx
   0x00007ffff7fcb2e1 <+33>:	cmovle %ecx,%eax
   0x00007ffff7fcb2e4 <+36>:	cmp    %r14d,%r8d
   0x00007ffff7fcb2e7 <+39>:	mov    $0xffffffff,%ecx
   0x00007ffff7fcb2ec <+44>:	cmovg  %eax,%ecx
   0x00007ffff7fcb2ef <+47>:	movslq %ecx,%rax
   0x00007ffff7fcb2f2 <+50>:	lea    0x1(%rax),%r10
   0x00007ffff7fcb2f6 <+54>:	cmp    %r14d,%r8d
   0x00007ffff7fcb2f9 <+57>:	mov    0x48(%rdi),%r15
   0x00007ffff7fcb2fd <+61>:	mov    $0x7fffffff,%ebp
   0x00007ffff7fcb302 <+66>:	mov    $0xfffffffffffffffe,%rbx
   0x00007ffff7fcb309 <+73>:	cmovle %rbp,%rbx
   0x00007ffff7fcb30d <+77>:	mov    0x50(%rdi),%rbp
   0x00007ffff7fcb311 <+81>:	mov    $0x80000000,%ecx
   0x00007ffff7fcb316 <+86>:	cmovle %r10,%rcx
   0x00007ffff7fcb31a <+90>:	mov    (%rsi),%rdx
   0x00007ffff7fcb31d <+93>:	imul   %r15,%rdx
   0x00007ffff7fcb321 <+97>:	add    0x18(%rdi),%rdx
   0x00007ffff7fcb325 <+101>:	mov    0x8(%rsi),%r9
   0x00007ffff7fcb329 <+105>:	imul   %rbp,%r9
   0x00007ffff7fcb32d <+109>:	add    0x20(%rdi),%r9
   0x00007ffff7fcb331 <+113>:	test   %eax,%eax
   0x00007ffff7fcb333 <+115>:	cmovns %r10,%rcx
   0x00007ffff7fcb337 <+119>:	add    %r9,%rbp
   0x00007ffff7fcb33a <+122>:	cmp    %rcx,%rbp
   0x00007ffff7fcb33d <+125>:	mov    %rcx,%r13
   0x00007ffff7fcb340 <+128>:	cmovle %rbp,%r13
   0x00007ffff7fcb344 <+132>:	cmp    %rbx,%r9
   0x00007ffff7fcb347 <+135>:	cmovl  %rbx,%r9
   0x00007ffff7fcb34b <+139>:	add    %rdx,%r15
   0x00007ffff7fcb34e <+142>:	cmp    %rcx,%r15
   0x00007ffff7fcb351 <+145>:	mov    %rcx,%rax
   0x00007ffff7fcb354 <+148>:	cmovle %r15,%rax
   0x00007ffff7fcb358 <+152>:	test   %rcx,%rcx
   0x00007ffff7fcb35b <+155>:	cmovs  %rbp,%r13
   0x00007ffff7fcb35f <+159>:	cmovs  %r15,%rax
   0x00007ffff7fcb363 <+163>:	cmp    %rbx,%rdx
   0x00007ffff7fcb366 <+166>:	cmovl  %rbx,%rdx
   0x00007ffff7fcb36a <+170>:	mov    %rdx,-0x18(%rsp)
   0x00007ffff7fcb36f <+175>:	sub    %rdx,%rax
   0x00007ffff7fcb372 <+178>:	test   %rax,%rax
   0x00007ffff7fcb375 <+181>:	jle    0x7ffff7fcb4d7 <lu_kernel2+535>
   0x00007ffff7fcb37b <+187>:	sub    %r9,%r13
   0x00007ffff7fcb37e <+190>:	test   %r13,%r13
   0x00007ffff7fcb381 <+193>:	jle    0x7ffff7fcb4d7 <lu_kernel2+535>
   0x00007ffff7fcb387 <+199>:	mov    (%rdi),%rdi
   0x00007ffff7fcb38a <+202>:	mov    %rax,%r15
   0x00007ffff7fcb38d <+205>:	sar    $0x3,%r15
   0x00007ffff7fcb391 <+209>:	mov    %rax,%rcx
   0x00007ffff7fcb394 <+212>:	and    $0xfffffffffffffff8,%rcx
   0x00007ffff7fcb398 <+216>:	mov    %rcx,-0x10(%rsp)
   0x00007ffff7fcb39d <+221>:	sub    %rcx,%rax
   0x00007ffff7fcb3a0 <+224>:	mov    %rax,-0x8(%rsp)
   0x00007ffff7fcb3a5 <+229>:	test   %r15,%r15
   0x00007ffff7fcb3a8 <+232>:	je     0x7ffff7fcb43f <lu_kernel2+383>
   0x00007ffff7fcb3ae <+238>:	lea    0x1(%r8),%eax
   0x00007ffff7fcb3b2 <+242>:	imul   %r11d,%eax
   0x00007ffff7fcb3b6 <+246>:	lea    (%r11,%r9,1),%ecx
   0x00007ffff7fcb3ba <+250>:	add    $0x1,%ecx
   0x00007ffff7fcb3bd <+253>:	imul   %r8d,%ecx
   0x00007ffff7fcb3c1 <+257>:	mov    -0x18(%rsp),%rdx
   0x00007ffff7fcb3c6 <+262>:	lea    (%rax,%rdx,1),%r12d
   0x00007ffff7fcb3ca <+266>:	add    $0x1,%r12d
   0x00007ffff7fcb3ce <+270>:	add    %r11d,%ecx
   0x00007ffff7fcb3d1 <+273>:	lea    (%rdx,%rcx,1),%edx
   0x00007ffff7fcb3d4 <+276>:	add    $0x1,%edx
   0x00007ffff7fcb3d7 <+279>:	xor    %ebx,%ebx
   0x00007ffff7fcb3d9 <+281>:	mov    %r9,%rsi
   0x00007ffff7fcb3dc <+284>:	nopl   0x0(%rax)
   0x00007ffff7fcb3e0 <+288>:	lea    (%r14,%rsi,1),%eax
   0x00007ffff7fcb3e4 <+292>:	imul   %r8d,%eax
   0x00007ffff7fcb3e8 <+296>:	mov    %r11,%rbp
   0x00007ffff7fcb3eb <+299>:	add    %r11d,%eax
   0x00007ffff7fcb3ee <+302>:	cltq   
   0x00007ffff7fcb3f0 <+304>:	mov    %edx,%r11d
   0x00007ffff7fcb3f3 <+307>:	mov    %r12d,%r10d
   0x00007ffff7fcb3f6 <+310>:	mov    %r15,%rcx
   0x00007ffff7fcb3f9 <+313>:	nopl   0x0(%rax)
   0x00007ffff7fcb400 <+320>:	movslq %r11d,%r11
   0x00007ffff7fcb403 <+323>:	vbroadcastss (%rdi,%rax,4),%ymm0
   0x00007ffff7fcb409 <+329>:	movslq %r10d,%r10
   0x00007ffff7fcb40c <+332>:	vmovups (%rdi,%r10,4),%ymm1
   0x00007ffff7fcb412 <+338>:	vfnmadd213ps (%rdi,%r11,4),%ymm0,%ymm1
   0x00007ffff7fcb418 <+344>:	vmovups %ymm1,(%rdi,%r11,4)
   0x00007ffff7fcb41e <+350>:	add    $0x8,%r10d
   0x00007ffff7fcb422 <+354>:	add    $0x8,%r11d
   0x00007ffff7fcb426 <+358>:	add    $0xffffffffffffffff,%rcx
   0x00007ffff7fcb42a <+362>:	jne    0x7ffff7fcb400 <lu_kernel2+320>
   0x00007ffff7fcb42c <+364>:	add    $0x1,%rbx
   0x00007ffff7fcb430 <+368>:	add    $0x1,%rsi
   0x00007ffff7fcb434 <+372>:	add    %r8d,%edx
   0x00007ffff7fcb437 <+375>:	cmp    %r13,%rbx
   0x00007ffff7fcb43a <+378>:	mov    %rbp,%r11
   0x00007ffff7fcb43d <+381>:	jne    0x7ffff7fcb3e0 <lu_kernel2+288>
   0x00007ffff7fcb43f <+383>:	mov    -0x8(%rsp),%r15
   0x00007ffff7fcb444 <+388>:	test   %r15,%r15
   0x00007ffff7fcb447 <+391>:	je     0x7ffff7fcb4d7 <lu_kernel2+535>
   0x00007ffff7fcb44d <+397>:	mov    -0x10(%rsp),%rdx
   0x00007ffff7fcb452 <+402>:	add    -0x18(%rsp),%rdx
   0x00007ffff7fcb457 <+407>:	lea    0x1(%r8),%eax
   0x00007ffff7fcb45b <+411>:	imul   %r11d,%eax
   0x00007ffff7fcb45f <+415>:	lea    (%r11,%r9,1),%ecx
   0x00007ffff7fcb463 <+419>:	add    $0x1,%ecx
   0x00007ffff7fcb466 <+422>:	imul   %r8d,%ecx
   0x00007ffff7fcb46a <+426>:	lea    (%rax,%rdx,1),%r10d
   0x00007ffff7fcb46e <+430>:	add    $0x1,%r10d
   0x00007ffff7fcb472 <+434>:	add    %r11d,%ecx
   0x00007ffff7fcb475 <+437>:	lea    (%rdx,%rcx,1),%edx
   0x00007ffff7fcb478 <+440>:	add    $0x1,%edx
   0x00007ffff7fcb47b <+443>:	xor    %ebx,%ebx
   0x00007ffff7fcb47d <+445>:	nopl   (%rax)
   0x00007ffff7fcb480 <+448>:	lea    (%r14,%r9,1),%eax
   0x00007ffff7fcb484 <+452>:	imul   %r8d,%eax
   0x00007ffff7fcb488 <+456>:	add    %r11d,%eax
   0x00007ffff7fcb48b <+459>:	cltq   
   0x00007ffff7fcb48d <+461>:	mov    %edx,%esi
   0x00007ffff7fcb48f <+463>:	mov    %r10d,%ecx
   0x00007ffff7fcb492 <+466>:	mov    %r15,%rbp
   0x00007ffff7fcb495 <+469>:	data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb4a0 <+480>:	movslq %esi,%rsi
   0x00007ffff7fcb4a3 <+483>:	vmovss (%rdi,%rax,4),%xmm0
   0x00007ffff7fcb4a8 <+488>:	movslq %ecx,%rcx
   0x00007ffff7fcb4ab <+491>:	vmovss (%rdi,%rcx,4),%xmm1
   0x00007ffff7fcb4b0 <+496>:	vfnmadd213ss (%rdi,%rsi,4),%xmm0,%xmm1
   0x00007ffff7fcb4b6 <+502>:	vmovss %xmm1,(%rdi,%rsi,4)
   0x00007ffff7fcb4bb <+507>:	add    $0x1,%ecx
   0x00007ffff7fcb4be <+510>:	add    $0x1,%esi
   0x00007ffff7fcb4c1 <+513>:	add    $0xffffffffffffffff,%rbp
   0x00007ffff7fcb4c5 <+517>:	jne    0x7ffff7fcb4a0 <lu_kernel2+480>
   0x00007ffff7fcb4c7 <+519>:	add    $0x1,%rbx
   0x00007ffff7fcb4cb <+523>:	add    $0x1,%r9
   0x00007ffff7fcb4cf <+527>:	add    %r8d,%edx
   0x00007ffff7fcb4d2 <+530>:	cmp    %r13,%rbx
   0x00007ffff7fcb4d5 <+533>:	jne    0x7ffff7fcb480 <lu_kernel2+448>
   0x00007ffff7fcb4d7 <+535>:	pop    %rbx
   0x00007ffff7fcb4d8 <+536>:	pop    %r12
   0x00007ffff7fcb4da <+538>:	pop    %r13
   0x00007ffff7fcb4dc <+540>:	pop    %r14
   0x00007ffff7fcb4de <+542>:	pop    %r15
   0x00007ffff7fcb4e0 <+544>:	pop    %rbp
   0x00007ffff7fcb4e1 <+545>:	vzeroupper 
   0x00007ffff7fcb4e4 <+548>:	ret    
End of assembler dump.
