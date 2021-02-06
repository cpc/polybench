Dump of assembler code for function mean_kernel:
=> 0x00007ffff7fcb150 <+0>:	push   %rbp
   0x00007ffff7fcb151 <+1>:	push   %r15
   0x00007ffff7fcb153 <+3>:	push   %r14
   0x00007ffff7fcb155 <+5>:	push   %r13
   0x00007ffff7fcb157 <+7>:	push   %r12
   0x00007ffff7fcb159 <+9>:	push   %rbx
   0x00007ffff7fcb15a <+10>:	mov    0x58(%rdi),%rax
   0x00007ffff7fcb15e <+14>:	mov    (%rsi),%rdx
   0x00007ffff7fcb161 <+17>:	imul   %rax,%rdx
   0x00007ffff7fcb165 <+21>:	add    0x28(%rdi),%rdx
   0x00007ffff7fcb169 <+25>:	movslq 0x14(%rdi),%rcx
   0x00007ffff7fcb16d <+29>:	add    %rdx,%rax
   0x00007ffff7fcb170 <+32>:	cmp    %rcx,%rax
   0x00007ffff7fcb173 <+35>:	mov    %rcx,%r8
   0x00007ffff7fcb176 <+38>:	cmovle %rax,%r8
   0x00007ffff7fcb17a <+42>:	mov    %rcx,-0x20(%rsp)
   0x00007ffff7fcb17f <+47>:	test   %rcx,%rcx
   0x00007ffff7fcb182 <+50>:	cmovs  %rax,%r8
   0x00007ffff7fcb186 <+54>:	mov    %rdx,-0x10(%rsp)
   0x00007ffff7fcb18b <+59>:	sub    %rdx,%r8
   0x00007ffff7fcb18e <+62>:	test   %r8,%r8
   0x00007ffff7fcb191 <+65>:	jle    0x7ffff7fcb4dc <mean_kernel+908>
   0x00007ffff7fcb197 <+71>:	mov    (%rdi),%rdx
   0x00007ffff7fcb19a <+74>:	mov    0x8(%rdi),%r10
   0x00007ffff7fcb19e <+78>:	vmovss 0x10(%rdi),%xmm0
   0x00007ffff7fcb1a3 <+83>:	movslq 0x18(%rdi),%r13
   0x00007ffff7fcb1a7 <+87>:	mov    %r8,%r12
   0x00007ffff7fcb1aa <+90>:	sar    $0x3,%r12
   0x00007ffff7fcb1ae <+94>:	mov    %r8,%r15
   0x00007ffff7fcb1b1 <+97>:	and    $0xfffffffffffffff8,%r15
   0x00007ffff7fcb1b5 <+101>:	sub    %r15,%r8
   0x00007ffff7fcb1b8 <+104>:	test   %r12,%r12
   0x00007ffff7fcb1bb <+107>:	je     0x7ffff7fcb372 <mean_kernel+546>
   0x00007ffff7fcb1c1 <+113>:	vbroadcastss %xmm0,%ymm1
   0x00007ffff7fcb1c6 <+118>:	lea    -0x1(%r13),%rax
   0x00007ffff7fcb1ca <+122>:	mov    %rax,-0x18(%rsp)
   0x00007ffff7fcb1cf <+127>:	mov    %r13d,%r14d
   0x00007ffff7fcb1d2 <+130>:	and    $0x7,%r14d
   0x00007ffff7fcb1d6 <+134>:	mov    %r13,%rdi
   0x00007ffff7fcb1d9 <+137>:	sub    %r14,%rdi
   0x00007ffff7fcb1dc <+140>:	mov    -0x10(%rsp),%rax
   0x00007ffff7fcb1e1 <+145>:	vmovq  %rax,%xmm2
   0x00007ffff7fcb1e6 <+150>:	vpbroadcastq %xmm2,%ymm2
   0x00007ffff7fcb1eb <+155>:	vpsllq $0x20,%ymm2,%ymm3
   0x00007ffff7fcb1f0 <+160>:	movabs $0x7ffff7fca000,%rax
   0x00007ffff7fcb1fa <+170>:	vpaddq (%rax),%ymm3,%ymm2
   0x00007ffff7fcb1fe <+174>:	movabs $0x7ffff7fca020,%rax
   0x00007ffff7fcb208 <+184>:	vpaddq (%rax),%ymm3,%ymm3
   0x00007ffff7fcb20c <+188>:	vpextrq $0x1,%xmm3,%rax
   0x00007ffff7fcb212 <+194>:	vmovq  %xmm3,%rcx
   0x00007ffff7fcb217 <+199>:	sub    %rcx,%rax
   0x00007ffff7fcb21a <+202>:	shl    $0x3,%rax
   0x00007ffff7fcb21e <+206>:	vmovq  %rax,%xmm4
   0x00007ffff7fcb223 <+211>:	vpbroadcastq %xmm4,%ymm4
   0x00007ffff7fcb228 <+216>:	mov    -0x20(%rsp),%rax
   0x00007ffff7fcb22d <+221>:	mov    %rax,%rsi
   0x00007ffff7fcb230 <+224>:	shl    $0x5,%rsi
   0x00007ffff7fcb234 <+228>:	lea    0x0(,%rax,4),%rax
   0x00007ffff7fcb23c <+236>:	mov    %r14,%rcx
   0x00007ffff7fcb23f <+239>:	neg    %rcx
   0x00007ffff7fcb242 <+242>:	mov    %rcx,-0x8(%rsp)
   0x00007ffff7fcb247 <+247>:	xor    %ebp,%ebp
   0x00007ffff7fcb249 <+249>:	nopl   0x0(%rax)
   0x00007ffff7fcb250 <+256>:	vmovq  %xmm3,%rcx
   0x00007ffff7fcb255 <+261>:	mov    %rcx,%r9
   0x00007ffff7fcb258 <+264>:	sar    $0x20,%r9
   0x00007ffff7fcb25c <+268>:	sar    $0x1e,%rcx
   0x00007ffff7fcb260 <+272>:	vxorps %xmm5,%xmm5,%xmm5
   0x00007ffff7fcb264 <+276>:	vmovups %ymm5,(%rdx,%rcx,1)
   0x00007ffff7fcb269 <+281>:	test   %r13d,%r13d
   0x00007ffff7fcb26c <+284>:	jle    0x7ffff7fcb353 <mean_kernel+515>
   0x00007ffff7fcb272 <+290>:	cmpq   $0x7,-0x18(%rsp)
   0x00007ffff7fcb278 <+296>:	jae    0x7ffff7fcb290 <mean_kernel+320>
   0x00007ffff7fcb27a <+298>:	vxorps %xmm5,%xmm5,%xmm5
   0x00007ffff7fcb27e <+302>:	xor    %ebx,%ebx
   0x00007ffff7fcb280 <+304>:	test   %r14,%r14
   0x00007ffff7fcb283 <+307>:	jne    0x7ffff7fcb321 <mean_kernel+465>
   0x00007ffff7fcb289 <+313>:	jmp    0x7ffff7fcb353 <mean_kernel+515>
   0x00007ffff7fcb28e <+318>:	xchg   %ax,%ax
   0x00007ffff7fcb290 <+320>:	lea    (%r10,%r9,4),%rcx
   0x00007ffff7fcb294 <+324>:	vxorps %xmm5,%xmm5,%xmm5
   0x00007ffff7fcb298 <+328>:	xor    %ebx,%ebx
   0x00007ffff7fcb29a <+330>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fcb2a0 <+336>:	vaddps (%rcx),%ymm5,%ymm5
   0x00007ffff7fcb2a4 <+340>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fcb2aa <+346>:	vaddps (%rcx,%rax,1),%ymm5,%ymm5
   0x00007ffff7fcb2af <+351>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fcb2b5 <+357>:	lea    (%rcx,%rax,1),%r11
   0x00007ffff7fcb2b9 <+361>:	vaddps (%rax,%r11,1),%ymm5,%ymm5
   0x00007ffff7fcb2bf <+367>:	add    %rax,%r11
   0x00007ffff7fcb2c2 <+370>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fcb2c8 <+376>:	vaddps (%rax,%r11,1),%ymm5,%ymm5
   0x00007ffff7fcb2ce <+382>:	add    %rax,%r11
   0x00007ffff7fcb2d1 <+385>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fcb2d7 <+391>:	vaddps (%rax,%r11,1),%ymm5,%ymm5
   0x00007ffff7fcb2dd <+397>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fcb2e3 <+403>:	add    %rax,%r11
   0x00007ffff7fcb2e6 <+406>:	vaddps (%rax,%r11,1),%ymm5,%ymm5
   0x00007ffff7fcb2ec <+412>:	add    %rax,%r11
   0x00007ffff7fcb2ef <+415>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fcb2f5 <+421>:	vaddps (%rax,%r11,1),%ymm5,%ymm5
   0x00007ffff7fcb2fb <+427>:	add    %rax,%r11
   0x00007ffff7fcb2fe <+430>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fcb304 <+436>:	vaddps (%rax,%r11,1),%ymm5,%ymm5
   0x00007ffff7fcb30a <+442>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fcb310 <+448>:	add    $0x8,%rbx
   0x00007ffff7fcb314 <+452>:	add    %rsi,%rcx
   0x00007ffff7fcb317 <+455>:	cmp    %rbx,%rdi
   0x00007ffff7fcb31a <+458>:	jne    0x7ffff7fcb2a0 <mean_kernel+336>
   0x00007ffff7fcb31c <+460>:	test   %r14,%r14
   0x00007ffff7fcb31f <+463>:	je     0x7ffff7fcb353 <mean_kernel+515>
   0x00007ffff7fcb321 <+465>:	imul   -0x20(%rsp),%rbx
   0x00007ffff7fcb327 <+471>:	add    %r9,%rbx
   0x00007ffff7fcb32a <+474>:	lea    (%r10,%rbx,4),%rcx
   0x00007ffff7fcb32e <+478>:	mov    -0x8(%rsp),%rbx
   0x00007ffff7fcb333 <+483>:	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb340 <+496>:	vaddps (%rcx),%ymm5,%ymm5
   0x00007ffff7fcb344 <+500>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fcb34a <+506>:	add    %rax,%rcx
   0x00007ffff7fcb34d <+509>:	add    $0x1,%rbx
   0x00007ffff7fcb351 <+513>:	jne    0x7ffff7fcb340 <mean_kernel+496>
   0x00007ffff7fcb353 <+515>:	vdivps %ymm1,%ymm5,%ymm5
   0x00007ffff7fcb357 <+519>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fcb35d <+525>:	add    $0x1,%rbp
   0x00007ffff7fcb361 <+529>:	vpaddq %ymm4,%ymm3,%ymm3
   0x00007ffff7fcb365 <+533>:	vpaddq %ymm4,%ymm2,%ymm2
   0x00007ffff7fcb369 <+537>:	cmp    %r12,%rbp
   0x00007ffff7fcb36c <+540>:	jne    0x7ffff7fcb250 <mean_kernel+256>
   0x00007ffff7fcb372 <+546>:	test   %r8,%r8
   0x00007ffff7fcb375 <+549>:	je     0x7ffff7fcb4dc <mean_kernel+908>
   0x00007ffff7fcb37b <+555>:	add    -0x10(%rsp),%r15
   0x00007ffff7fcb380 <+560>:	lea    -0x1(%r13),%r9
   0x00007ffff7fcb384 <+564>:	mov    %r13d,%r14d
   0x00007ffff7fcb387 <+567>:	and    $0x7,%r14d
   0x00007ffff7fcb38b <+571>:	mov    %r13,%rdi
   0x00007ffff7fcb38e <+574>:	sub    %r14,%rdi
   0x00007ffff7fcb391 <+577>:	mov    -0x20(%rsp),%rcx
   0x00007ffff7fcb396 <+582>:	mov    %rcx,%rax
   0x00007ffff7fcb399 <+585>:	shl    $0x5,%rax
   0x00007ffff7fcb39d <+589>:	lea    0x0(,%rcx,4),%rbp
   0x00007ffff7fcb3a5 <+597>:	mov    %r14,%rcx
   0x00007ffff7fcb3a8 <+600>:	neg    %rcx
   0x00007ffff7fcb3ab <+603>:	mov    %rcx,-0x18(%rsp)
   0x00007ffff7fcb3b0 <+608>:	xor    %r12d,%r12d
   0x00007ffff7fcb3b3 <+611>:	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb3c0 <+624>:	movslq %r15d,%rbx
   0x00007ffff7fcb3c3 <+627>:	movl   $0x0,(%rdx,%rbx,4)
   0x00007ffff7fcb3ca <+634>:	test   %r13d,%r13d
   0x00007ffff7fcb3cd <+637>:	jle    0x7ffff7fcb3f0 <mean_kernel+672>
   0x00007ffff7fcb3cf <+639>:	cmp    $0x7,%r9
   0x00007ffff7fcb3d3 <+643>:	jae    0x7ffff7fcb400 <mean_kernel+688>
   0x00007ffff7fcb3d5 <+645>:	vxorps %xmm1,%xmm1,%xmm1
   0x00007ffff7fcb3d9 <+649>:	xor    %ecx,%ecx
   0x00007ffff7fcb3db <+651>:	test   %r14,%r14
   0x00007ffff7fcb3de <+654>:	jne    0x7ffff7fcb48f <mean_kernel+831>
   0x00007ffff7fcb3e4 <+660>:	jmp    0x7ffff7fcb4c2 <mean_kernel+882>
   0x00007ffff7fcb3e9 <+665>:	nopl   0x0(%rax)
   0x00007ffff7fcb3f0 <+672>:	vxorps %xmm1,%xmm1,%xmm1
   0x00007ffff7fcb3f4 <+676>:	jmp    0x7ffff7fcb4c2 <mean_kernel+882>
   0x00007ffff7fcb3f9 <+681>:	nopl   0x0(%rax)
   0x00007ffff7fcb400 <+688>:	lea    (%r10,%rbx,4),%rsi
   0x00007ffff7fcb404 <+692>:	vxorps %xmm1,%xmm1,%xmm1
   0x00007ffff7fcb408 <+696>:	xor    %ecx,%ecx
   0x00007ffff7fcb40a <+698>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fcb410 <+704>:	vaddss (%rsi),%xmm1,%xmm1
   0x00007ffff7fcb414 <+708>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fcb419 <+713>:	vaddss (%rsi,%rbp,1),%xmm1,%xmm1
   0x00007ffff7fcb41e <+718>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fcb423 <+723>:	lea    (%rsi,%rbp,1),%r11
   0x00007ffff7fcb427 <+727>:	vaddss 0x0(%rbp,%r11,1),%xmm1,%xmm1
   0x00007ffff7fcb42e <+734>:	add    %rbp,%r11
   0x00007ffff7fcb431 <+737>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fcb436 <+742>:	vaddss 0x0(%rbp,%r11,1),%xmm1,%xmm1
   0x00007ffff7fcb43d <+749>:	add    %rbp,%r11
   0x00007ffff7fcb440 <+752>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fcb445 <+757>:	vaddss 0x0(%rbp,%r11,1),%xmm1,%xmm1
   0x00007ffff7fcb44c <+764>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fcb451 <+769>:	add    %rbp,%r11
   0x00007ffff7fcb454 <+772>:	vaddss 0x0(%rbp,%r11,1),%xmm1,%xmm1
   0x00007ffff7fcb45b <+779>:	add    %rbp,%r11
   0x00007ffff7fcb45e <+782>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fcb463 <+787>:	vaddss 0x0(%rbp,%r11,1),%xmm1,%xmm1
   0x00007ffff7fcb46a <+794>:	add    %rbp,%r11
   0x00007ffff7fcb46d <+797>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fcb472 <+802>:	vaddss 0x0(%rbp,%r11,1),%xmm1,%xmm1
   0x00007ffff7fcb479 <+809>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fcb47e <+814>:	add    $0x8,%rcx
   0x00007ffff7fcb482 <+818>:	add    %rax,%rsi
   0x00007ffff7fcb485 <+821>:	cmp    %rcx,%rdi
   0x00007ffff7fcb488 <+824>:	jne    0x7ffff7fcb410 <mean_kernel+704>
   0x00007ffff7fcb48a <+826>:	test   %r14,%r14
   0x00007ffff7fcb48d <+829>:	je     0x7ffff7fcb4c2 <mean_kernel+882>
   0x00007ffff7fcb48f <+831>:	imul   -0x20(%rsp),%rcx
   0x00007ffff7fcb495 <+837>:	add    %rbx,%rcx
   0x00007ffff7fcb498 <+840>:	lea    (%r10,%rcx,4),%rcx
   0x00007ffff7fcb49c <+844>:	mov    -0x18(%rsp),%rsi
   0x00007ffff7fcb4a1 <+849>:	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb4b0 <+864>:	vaddss (%rcx),%xmm1,%xmm1
   0x00007ffff7fcb4b4 <+868>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fcb4b9 <+873>:	add    %rbp,%rcx
   0x00007ffff7fcb4bc <+876>:	add    $0x1,%rsi
   0x00007ffff7fcb4c0 <+880>:	jne    0x7ffff7fcb4b0 <mean_kernel+864>
   0x00007ffff7fcb4c2 <+882>:	vdivss %xmm0,%xmm1,%xmm1
   0x00007ffff7fcb4c6 <+886>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fcb4cb <+891>:	add    $0x1,%r12
   0x00007ffff7fcb4cf <+895>:	add    $0x1,%r15
   0x00007ffff7fcb4d3 <+899>:	cmp    %r8,%r12
   0x00007ffff7fcb4d6 <+902>:	jne    0x7ffff7fcb3c0 <mean_kernel+624>
   0x00007ffff7fcb4dc <+908>:	pop    %rbx
   0x00007ffff7fcb4dd <+909>:	pop    %r12
   0x00007ffff7fcb4df <+911>:	pop    %r13
   0x00007ffff7fcb4e1 <+913>:	pop    %r14
   0x00007ffff7fcb4e3 <+915>:	pop    %r15
   0x00007ffff7fcb4e5 <+917>:	pop    %rbp
   0x00007ffff7fcb4e6 <+918>:	vzeroupper 
   0x00007ffff7fcb4e9 <+921>:	ret    
End of assembler dump.
