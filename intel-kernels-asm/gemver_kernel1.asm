Dump of assembler code for function gemver_kernel1:
=> 0x00007ffff7fab170 <+0>:	push   %rbp
   0x00007ffff7fab171 <+1>:	push   %r15
   0x00007ffff7fab173 <+3>:	push   %r14
   0x00007ffff7fab175 <+5>:	push   %r13
   0x00007ffff7fab177 <+7>:	push   %r12
   0x00007ffff7fab179 <+9>:	push   %rbx
   0x00007ffff7fab17a <+10>:	movslq 0x28(%rdi),%r9
   0x00007ffff7fab17e <+14>:	mov    0x68(%rdi),%rax
   0x00007ffff7fab182 <+18>:	mov    0x70(%rdi),%rcx
   0x00007ffff7fab186 <+22>:	mov    (%rsi),%rbx
   0x00007ffff7fab189 <+25>:	imul   %rax,%rbx
   0x00007ffff7fab18d <+29>:	add    0x38(%rdi),%rbx
   0x00007ffff7fab191 <+33>:	mov    0x8(%rsi),%rdx
   0x00007ffff7fab195 <+37>:	imul   %rcx,%rdx
   0x00007ffff7fab199 <+41>:	add    0x40(%rdi),%rdx
   0x00007ffff7fab19d <+45>:	add    %rdx,%rcx
   0x00007ffff7fab1a0 <+48>:	cmp    %r9,%rcx
   0x00007ffff7fab1a3 <+51>:	mov    %r9,%rsi
   0x00007ffff7fab1a6 <+54>:	cmovle %rcx,%rsi
   0x00007ffff7fab1aa <+58>:	add    %rbx,%rax
   0x00007ffff7fab1ad <+61>:	cmp    %r9,%rax
   0x00007ffff7fab1b0 <+64>:	mov    %r9,%rbp
   0x00007ffff7fab1b3 <+67>:	cmovle %rax,%rbp
   0x00007ffff7fab1b7 <+71>:	test   %r9,%r9
   0x00007ffff7fab1ba <+74>:	cmovs  %rcx,%rsi
   0x00007ffff7fab1be <+78>:	cmovs  %rax,%rbp
   0x00007ffff7fab1c2 <+82>:	sub    %rbx,%rbp
   0x00007ffff7fab1c5 <+85>:	mov    %rbp,%rax
   0x00007ffff7fab1c8 <+88>:	test   %rbp,%rbp
   0x00007ffff7fab1cb <+91>:	jle    0x7ffff7fab38d <gemver_kernel1+541>
   0x00007ffff7fab1d1 <+97>:	sub    %rdx,%rsi
   0x00007ffff7fab1d4 <+100>:	mov    %rsi,-0x18(%rsp)
   0x00007ffff7fab1d9 <+105>:	test   %rsi,%rsi
   0x00007ffff7fab1dc <+108>:	jle    0x7ffff7fab38d <gemver_kernel1+541>
   0x00007ffff7fab1e2 <+114>:	mov    %rbx,-0x30(%rsp)
   0x00007ffff7fab1e7 <+119>:	mov    %rdx,-0x28(%rsp)
   0x00007ffff7fab1ec <+124>:	mov    (%rdi),%rsi
   0x00007ffff7fab1ef <+127>:	mov    0x8(%rdi),%r10
   0x00007ffff7fab1f3 <+131>:	mov    0x10(%rdi),%r8
   0x00007ffff7fab1f7 <+135>:	mov    0x18(%rdi),%r13
   0x00007ffff7fab1fb <+139>:	mov    0x20(%rdi),%rdi
   0x00007ffff7fab1ff <+143>:	mov    %rax,%rdx
   0x00007ffff7fab202 <+146>:	sar    $0x3,%rdx
   0x00007ffff7fab206 <+150>:	mov    %rax,%rcx
   0x00007ffff7fab209 <+153>:	and    $0xfffffffffffffff8,%rcx
   0x00007ffff7fab20d <+157>:	mov    %rcx,-0x10(%rsp)
   0x00007ffff7fab212 <+162>:	sub    %rcx,%rax
   0x00007ffff7fab215 <+165>:	mov    %rax,-0x20(%rsp)
   0x00007ffff7fab21a <+170>:	mov    %rdx,-0x38(%rsp)
   0x00007ffff7fab21f <+175>:	test   %rdx,%rdx
   0x00007ffff7fab222 <+178>:	je     0x7ffff7fab2d1 <gemver_kernel1+353>
   0x00007ffff7fab228 <+184>:	mov    -0x30(%rsp),%rbp
   0x00007ffff7fab22d <+189>:	mov    %rbp,%rdx
   0x00007ffff7fab230 <+192>:	mov    %r9d,%eax
   0x00007ffff7fab233 <+195>:	mov    -0x28(%rsp),%r11
   0x00007ffff7fab238 <+200>:	imul   %r11d,%eax
   0x00007ffff7fab23c <+204>:	shl    $0x20,%rdx
   0x00007ffff7fab240 <+208>:	mov    %rdx,-0x8(%rsp)
   0x00007ffff7fab245 <+213>:	lea    (%rax,%rbp,1),%ebp
   0x00007ffff7fab248 <+216>:	xor    %ebx,%ebx
   0x00007ffff7fab24a <+218>:	movabs $0x800000000,%r14
   0x00007ffff7fab254 <+228>:	data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fab260 <+240>:	mov    %r9,%rcx
   0x00007ffff7fab263 <+243>:	movslq %r11d,%r15
   0x00007ffff7fab266 <+246>:	mov    %ebp,%r12d
   0x00007ffff7fab269 <+249>:	mov    -0x8(%rsp),%r9
   0x00007ffff7fab26e <+254>:	mov    -0x38(%rsp),%rax
   0x00007ffff7fab273 <+259>:	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fab280 <+272>:	mov    %r9,%rdx
   0x00007ffff7fab283 <+275>:	sar    $0x1e,%rdx
   0x00007ffff7fab287 <+279>:	vbroadcastss (%rdi,%r15,4),%ymm0
   0x00007ffff7fab28d <+285>:	vmulps (%r8,%rdx,1),%ymm0,%ymm0
   0x00007ffff7fab293 <+291>:	vbroadcastss 0x0(%r13,%r15,4),%ymm1
   0x00007ffff7fab29a <+298>:	vfmadd231ps (%r10,%rdx,1),%ymm1,%ymm0
   0x00007ffff7fab2a0 <+304>:	movslq %r12d,%r12
   0x00007ffff7fab2a3 <+307>:	vaddps (%rsi,%r12,4),%ymm0,%ymm0
   0x00007ffff7fab2a9 <+313>:	vmovups %ymm0,(%rsi,%r12,4)
   0x00007ffff7fab2af <+319>:	add    %r14,%r9
   0x00007ffff7fab2b2 <+322>:	add    $0x8,%r12d
   0x00007ffff7fab2b6 <+326>:	add    $0xffffffffffffffff,%rax
   0x00007ffff7fab2ba <+330>:	jne    0x7ffff7fab280 <gemver_kernel1+272>
   0x00007ffff7fab2bc <+332>:	add    $0x1,%rbx
   0x00007ffff7fab2c0 <+336>:	add    $0x1,%r11
   0x00007ffff7fab2c4 <+340>:	mov    %rcx,%r9
   0x00007ffff7fab2c7 <+343>:	add    %r9d,%ebp
   0x00007ffff7fab2ca <+346>:	cmp    -0x18(%rsp),%rbx
   0x00007ffff7fab2cf <+351>:	jne    0x7ffff7fab260 <gemver_kernel1+240>
   0x00007ffff7fab2d1 <+353>:	cmpq   $0x0,-0x20(%rsp)
   0x00007ffff7fab2d7 <+359>:	mov    -0x28(%rsp),%r12
   0x00007ffff7fab2dc <+364>:	mov    -0x10(%rsp),%rcx
   0x00007ffff7fab2e1 <+369>:	mov    -0x30(%rsp),%rax
   0x00007ffff7fab2e6 <+374>:	je     0x7ffff7fab38d <gemver_kernel1+541>
   0x00007ffff7fab2ec <+380>:	add    %rax,%rcx
   0x00007ffff7fab2ef <+383>:	mov    %rcx,%rdx
   0x00007ffff7fab2f2 <+386>:	mov    %r9d,%eax
   0x00007ffff7fab2f5 <+389>:	imul   %r12d,%eax
   0x00007ffff7fab2f9 <+393>:	shl    $0x20,%rdx
   0x00007ffff7fab2fd <+397>:	mov    %rdx,-0x38(%rsp)
   0x00007ffff7fab302 <+402>:	add    %eax,%ecx
   0x00007ffff7fab304 <+404>:	xor    %r11d,%r11d
   0x00007ffff7fab307 <+407>:	movabs $0x100000000,%r15
   0x00007ffff7fab311 <+417>:	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fab320 <+432>:	movslq %r12d,%rbx
   0x00007ffff7fab323 <+435>:	mov    %rcx,%r14
   0x00007ffff7fab326 <+438>:	mov    %ecx,%ebp
   0x00007ffff7fab328 <+440>:	mov    -0x38(%rsp),%rcx
   0x00007ffff7fab32d <+445>:	mov    -0x20(%rsp),%rdx
   0x00007ffff7fab332 <+450>:	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fab340 <+464>:	mov    %rcx,%rax
   0x00007ffff7fab343 <+467>:	sar    $0x1e,%rax
   0x00007ffff7fab347 <+471>:	vmovss (%rdi,%rbx,4),%xmm0
   0x00007ffff7fab34c <+476>:	vmulss (%r8,%rax,1),%xmm0,%xmm0
   0x00007ffff7fab352 <+482>:	vmovss 0x0(%r13,%rbx,4),%xmm1
   0x00007ffff7fab359 <+489>:	vfmadd231ss (%r10,%rax,1),%xmm1,%xmm0
   0x00007ffff7fab35f <+495>:	movslq %ebp,%rbp
   0x00007ffff7fab362 <+498>:	vaddss (%rsi,%rbp,4),%xmm0,%xmm0
   0x00007ffff7fab367 <+503>:	vmovss %xmm0,(%rsi,%rbp,4)
   0x00007ffff7fab36c <+508>:	add    %r15,%rcx
   0x00007ffff7fab36f <+511>:	add    $0x1,%ebp
   0x00007ffff7fab372 <+514>:	add    $0xffffffffffffffff,%rdx
   0x00007ffff7fab376 <+518>:	jne    0x7ffff7fab340 <gemver_kernel1+464>
   0x00007ffff7fab378 <+520>:	add    $0x1,%r11
   0x00007ffff7fab37c <+524>:	add    $0x1,%r12
   0x00007ffff7fab380 <+528>:	mov    %r14,%rcx
   0x00007ffff7fab383 <+531>:	add    %r9d,%ecx
   0x00007ffff7fab386 <+534>:	cmp    -0x18(%rsp),%r11
   0x00007ffff7fab38b <+539>:	jne    0x7ffff7fab320 <gemver_kernel1+432>
   0x00007ffff7fab38d <+541>:	pop    %rbx
   0x00007ffff7fab38e <+542>:	pop    %r12
   0x00007ffff7fab390 <+544>:	pop    %r13
   0x00007ffff7fab392 <+546>:	pop    %r14
   0x00007ffff7fab394 <+548>:	pop    %r15
   0x00007ffff7fab396 <+550>:	pop    %rbp
   0x00007ffff7fab397 <+551>:	vzeroupper 
   0x00007ffff7fab39a <+554>:	ret    
End of assembler dump.
