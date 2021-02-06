Dump of assembler code for function mean_kernel:
=> 0x00007ffff7fca1c0 <+0>:	push   %rbp
   0x00007ffff7fca1c1 <+1>:	push   %r15
   0x00007ffff7fca1c3 <+3>:	push   %r14
   0x00007ffff7fca1c5 <+5>:	push   %r13
   0x00007ffff7fca1c7 <+7>:	push   %r12
   0x00007ffff7fca1c9 <+9>:	push   %rbx
   0x00007ffff7fca1ca <+10>:	mov    0x58(%rdi),%rax
   0x00007ffff7fca1ce <+14>:	mov    (%rsi),%rdx
   0x00007ffff7fca1d1 <+17>:	imul   %rax,%rdx
   0x00007ffff7fca1d5 <+21>:	add    0x28(%rdi),%rdx
   0x00007ffff7fca1d9 <+25>:	movslq 0x14(%rdi),%rcx
   0x00007ffff7fca1dd <+29>:	add    %rdx,%rax
   0x00007ffff7fca1e0 <+32>:	cmp    %rcx,%rax
   0x00007ffff7fca1e3 <+35>:	mov    %rcx,%r8
   0x00007ffff7fca1e6 <+38>:	cmovle %rax,%r8
   0x00007ffff7fca1ea <+42>:	mov    %rcx,-0x20(%rsp)
   0x00007ffff7fca1ef <+47>:	test   %rcx,%rcx
   0x00007ffff7fca1f2 <+50>:	cmovs  %rax,%r8
   0x00007ffff7fca1f6 <+54>:	mov    %rdx,-0x10(%rsp)
   0x00007ffff7fca1fb <+59>:	sub    %rdx,%r8
   0x00007ffff7fca1fe <+62>:	test   %r8,%r8
   0x00007ffff7fca201 <+65>:	jle    0x7ffff7fca54c <mean_kernel+908>
   0x00007ffff7fca207 <+71>:	mov    (%rdi),%rdx
   0x00007ffff7fca20a <+74>:	mov    0x8(%rdi),%r10
   0x00007ffff7fca20e <+78>:	vmovss 0x10(%rdi),%xmm0
   0x00007ffff7fca213 <+83>:	movslq 0x18(%rdi),%r13
   0x00007ffff7fca217 <+87>:	mov    %r8,%r12
   0x00007ffff7fca21a <+90>:	sar    $0x3,%r12
   0x00007ffff7fca21e <+94>:	mov    %r8,%r15
   0x00007ffff7fca221 <+97>:	and    $0xfffffffffffffff8,%r15
   0x00007ffff7fca225 <+101>:	sub    %r15,%r8
   0x00007ffff7fca228 <+104>:	test   %r12,%r12
   0x00007ffff7fca22b <+107>:	je     0x7ffff7fca3e2 <mean_kernel+546>
   0x00007ffff7fca231 <+113>:	vbroadcastss %xmm0,%ymm1
   0x00007ffff7fca236 <+118>:	lea    -0x1(%r13),%rax
   0x00007ffff7fca23a <+122>:	mov    %rax,-0x18(%rsp)
   0x00007ffff7fca23f <+127>:	mov    %r13d,%r14d
   0x00007ffff7fca242 <+130>:	and    $0x7,%r14d
   0x00007ffff7fca246 <+134>:	mov    %r13,%rdi
   0x00007ffff7fca249 <+137>:	sub    %r14,%rdi
   0x00007ffff7fca24c <+140>:	mov    -0x10(%rsp),%rax
   0x00007ffff7fca251 <+145>:	vmovq  %rax,%xmm2
   0x00007ffff7fca256 <+150>:	vpbroadcastq %xmm2,%ymm2
   0x00007ffff7fca25b <+155>:	vpsllq $0x20,%ymm2,%ymm3
   0x00007ffff7fca260 <+160>:	movabs $0x7ffff7fc9000,%rax
   0x00007ffff7fca26a <+170>:	vpaddq (%rax),%ymm3,%ymm2
   0x00007ffff7fca26e <+174>:	movabs $0x7ffff7fc9020,%rax
   0x00007ffff7fca278 <+184>:	vpaddq (%rax),%ymm3,%ymm3
   0x00007ffff7fca27c <+188>:	vpextrq $0x1,%xmm3,%rax
   0x00007ffff7fca282 <+194>:	vmovq  %xmm3,%rcx
   0x00007ffff7fca287 <+199>:	sub    %rcx,%rax
   0x00007ffff7fca28a <+202>:	shl    $0x3,%rax
   0x00007ffff7fca28e <+206>:	vmovq  %rax,%xmm4
   0x00007ffff7fca293 <+211>:	vpbroadcastq %xmm4,%ymm4
   0x00007ffff7fca298 <+216>:	mov    -0x20(%rsp),%rax
   0x00007ffff7fca29d <+221>:	mov    %rax,%rsi
   0x00007ffff7fca2a0 <+224>:	shl    $0x5,%rsi
   0x00007ffff7fca2a4 <+228>:	lea    0x0(,%rax,4),%rax
   0x00007ffff7fca2ac <+236>:	mov    %r14,%rcx
   0x00007ffff7fca2af <+239>:	neg    %rcx
   0x00007ffff7fca2b2 <+242>:	mov    %rcx,-0x8(%rsp)
   0x00007ffff7fca2b7 <+247>:	xor    %ebp,%ebp
   0x00007ffff7fca2b9 <+249>:	nopl   0x0(%rax)
   0x00007ffff7fca2c0 <+256>:	vmovq  %xmm3,%rcx
   0x00007ffff7fca2c5 <+261>:	mov    %rcx,%r9
   0x00007ffff7fca2c8 <+264>:	sar    $0x20,%r9
   0x00007ffff7fca2cc <+268>:	sar    $0x1e,%rcx
   0x00007ffff7fca2d0 <+272>:	vxorps %xmm5,%xmm5,%xmm5
   0x00007ffff7fca2d4 <+276>:	vmovups %ymm5,(%rdx,%rcx,1)
   0x00007ffff7fca2d9 <+281>:	test   %r13d,%r13d
   0x00007ffff7fca2dc <+284>:	jle    0x7ffff7fca3c3 <mean_kernel+515>
   0x00007ffff7fca2e2 <+290>:	cmpq   $0x7,-0x18(%rsp)
   0x00007ffff7fca2e8 <+296>:	jae    0x7ffff7fca300 <mean_kernel+320>
   0x00007ffff7fca2ea <+298>:	vxorps %xmm5,%xmm5,%xmm5
   0x00007ffff7fca2ee <+302>:	xor    %ebx,%ebx
   0x00007ffff7fca2f0 <+304>:	test   %r14,%r14
   0x00007ffff7fca2f3 <+307>:	jne    0x7ffff7fca391 <mean_kernel+465>
   0x00007ffff7fca2f9 <+313>:	jmp    0x7ffff7fca3c3 <mean_kernel+515>
   0x00007ffff7fca2fe <+318>:	xchg   %ax,%ax
   0x00007ffff7fca300 <+320>:	lea    (%r10,%r9,4),%rcx
   0x00007ffff7fca304 <+324>:	vxorps %xmm5,%xmm5,%xmm5
   0x00007ffff7fca308 <+328>:	xor    %ebx,%ebx
   0x00007ffff7fca30a <+330>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fca310 <+336>:	vaddps (%rcx),%ymm5,%ymm5
   0x00007ffff7fca314 <+340>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fca31a <+346>:	vaddps (%rcx,%rax,1),%ymm5,%ymm5
   0x00007ffff7fca31f <+351>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fca325 <+357>:	lea    (%rcx,%rax,1),%r11
   0x00007ffff7fca329 <+361>:	vaddps (%rax,%r11,1),%ymm5,%ymm5
   0x00007ffff7fca32f <+367>:	add    %rax,%r11
   0x00007ffff7fca332 <+370>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fca338 <+376>:	vaddps (%rax,%r11,1),%ymm5,%ymm5
   0x00007ffff7fca33e <+382>:	add    %rax,%r11
   0x00007ffff7fca341 <+385>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fca347 <+391>:	vaddps (%rax,%r11,1),%ymm5,%ymm5
   0x00007ffff7fca34d <+397>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fca353 <+403>:	add    %rax,%r11
   0x00007ffff7fca356 <+406>:	vaddps (%rax,%r11,1),%ymm5,%ymm5
   0x00007ffff7fca35c <+412>:	add    %rax,%r11
   0x00007ffff7fca35f <+415>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fca365 <+421>:	vaddps (%rax,%r11,1),%ymm5,%ymm5
   0x00007ffff7fca36b <+427>:	add    %rax,%r11
   0x00007ffff7fca36e <+430>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fca374 <+436>:	vaddps (%rax,%r11,1),%ymm5,%ymm5
   0x00007ffff7fca37a <+442>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fca380 <+448>:	add    $0x8,%rbx
   0x00007ffff7fca384 <+452>:	add    %rsi,%rcx
   0x00007ffff7fca387 <+455>:	cmp    %rbx,%rdi
   0x00007ffff7fca38a <+458>:	jne    0x7ffff7fca310 <mean_kernel+336>
   0x00007ffff7fca38c <+460>:	test   %r14,%r14
   0x00007ffff7fca38f <+463>:	je     0x7ffff7fca3c3 <mean_kernel+515>
   0x00007ffff7fca391 <+465>:	imul   -0x20(%rsp),%rbx
   0x00007ffff7fca397 <+471>:	add    %r9,%rbx
   0x00007ffff7fca39a <+474>:	lea    (%r10,%rbx,4),%rcx
   0x00007ffff7fca39e <+478>:	mov    -0x8(%rsp),%rbx
   0x00007ffff7fca3a3 <+483>:	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fca3b0 <+496>:	vaddps (%rcx),%ymm5,%ymm5
   0x00007ffff7fca3b4 <+500>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fca3ba <+506>:	add    %rax,%rcx
   0x00007ffff7fca3bd <+509>:	add    $0x1,%rbx
   0x00007ffff7fca3c1 <+513>:	jne    0x7ffff7fca3b0 <mean_kernel+496>
   0x00007ffff7fca3c3 <+515>:	vdivps %ymm1,%ymm5,%ymm5
   0x00007ffff7fca3c7 <+519>:	vmovups %ymm5,(%rdx,%r9,4)
   0x00007ffff7fca3cd <+525>:	add    $0x1,%rbp
   0x00007ffff7fca3d1 <+529>:	vpaddq %ymm4,%ymm3,%ymm3
   0x00007ffff7fca3d5 <+533>:	vpaddq %ymm4,%ymm2,%ymm2
   0x00007ffff7fca3d9 <+537>:	cmp    %r12,%rbp
   0x00007ffff7fca3dc <+540>:	jne    0x7ffff7fca2c0 <mean_kernel+256>
   0x00007ffff7fca3e2 <+546>:	test   %r8,%r8
   0x00007ffff7fca3e5 <+549>:	je     0x7ffff7fca54c <mean_kernel+908>
   0x00007ffff7fca3eb <+555>:	add    -0x10(%rsp),%r15
   0x00007ffff7fca3f0 <+560>:	lea    -0x1(%r13),%r9
   0x00007ffff7fca3f4 <+564>:	mov    %r13d,%r14d
   0x00007ffff7fca3f7 <+567>:	and    $0x7,%r14d
   0x00007ffff7fca3fb <+571>:	mov    %r13,%rdi
   0x00007ffff7fca3fe <+574>:	sub    %r14,%rdi
   0x00007ffff7fca401 <+577>:	mov    -0x20(%rsp),%rcx
   0x00007ffff7fca406 <+582>:	mov    %rcx,%rax
   0x00007ffff7fca409 <+585>:	shl    $0x5,%rax
   0x00007ffff7fca40d <+589>:	lea    0x0(,%rcx,4),%rbp
   0x00007ffff7fca415 <+597>:	mov    %r14,%rcx
   0x00007ffff7fca418 <+600>:	neg    %rcx
   0x00007ffff7fca41b <+603>:	mov    %rcx,-0x18(%rsp)
   0x00007ffff7fca420 <+608>:	xor    %r12d,%r12d
   0x00007ffff7fca423 <+611>:	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fca430 <+624>:	movslq %r15d,%rbx
   0x00007ffff7fca433 <+627>:	movl   $0x0,(%rdx,%rbx,4)
   0x00007ffff7fca43a <+634>:	test   %r13d,%r13d
   0x00007ffff7fca43d <+637>:	jle    0x7ffff7fca460 <mean_kernel+672>
   0x00007ffff7fca43f <+639>:	cmp    $0x7,%r9
   0x00007ffff7fca443 <+643>:	jae    0x7ffff7fca470 <mean_kernel+688>
   0x00007ffff7fca445 <+645>:	vxorps %xmm1,%xmm1,%xmm1
   0x00007ffff7fca449 <+649>:	xor    %ecx,%ecx
   0x00007ffff7fca44b <+651>:	test   %r14,%r14
   0x00007ffff7fca44e <+654>:	jne    0x7ffff7fca4ff <mean_kernel+831>
   0x00007ffff7fca454 <+660>:	jmp    0x7ffff7fca532 <mean_kernel+882>
   0x00007ffff7fca459 <+665>:	nopl   0x0(%rax)
   0x00007ffff7fca460 <+672>:	vxorps %xmm1,%xmm1,%xmm1
   0x00007ffff7fca464 <+676>:	jmp    0x7ffff7fca532 <mean_kernel+882>
   0x00007ffff7fca469 <+681>:	nopl   0x0(%rax)
   0x00007ffff7fca470 <+688>:	lea    (%r10,%rbx,4),%rsi
   0x00007ffff7fca474 <+692>:	vxorps %xmm1,%xmm1,%xmm1
   0x00007ffff7fca478 <+696>:	xor    %ecx,%ecx
   0x00007ffff7fca47a <+698>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fca480 <+704>:	vaddss (%rsi),%xmm1,%xmm1
   0x00007ffff7fca484 <+708>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fca489 <+713>:	vaddss (%rsi,%rbp,1),%xmm1,%xmm1
   0x00007ffff7fca48e <+718>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fca493 <+723>:	lea    (%rsi,%rbp,1),%r11
   0x00007ffff7fca497 <+727>:	vaddss 0x0(%rbp,%r11,1),%xmm1,%xmm1
   0x00007ffff7fca49e <+734>:	add    %rbp,%r11
   0x00007ffff7fca4a1 <+737>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fca4a6 <+742>:	vaddss 0x0(%rbp,%r11,1),%xmm1,%xmm1
   0x00007ffff7fca4ad <+749>:	add    %rbp,%r11
   0x00007ffff7fca4b0 <+752>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fca4b5 <+757>:	vaddss 0x0(%rbp,%r11,1),%xmm1,%xmm1
   0x00007ffff7fca4bc <+764>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fca4c1 <+769>:	add    %rbp,%r11
   0x00007ffff7fca4c4 <+772>:	vaddss 0x0(%rbp,%r11,1),%xmm1,%xmm1
   0x00007ffff7fca4cb <+779>:	add    %rbp,%r11
   0x00007ffff7fca4ce <+782>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fca4d3 <+787>:	vaddss 0x0(%rbp,%r11,1),%xmm1,%xmm1
   0x00007ffff7fca4da <+794>:	add    %rbp,%r11
   0x00007ffff7fca4dd <+797>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fca4e2 <+802>:	vaddss 0x0(%rbp,%r11,1),%xmm1,%xmm1
   0x00007ffff7fca4e9 <+809>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fca4ee <+814>:	add    $0x8,%rcx
   0x00007ffff7fca4f2 <+818>:	add    %rax,%rsi
   0x00007ffff7fca4f5 <+821>:	cmp    %rcx,%rdi
   0x00007ffff7fca4f8 <+824>:	jne    0x7ffff7fca480 <mean_kernel+704>
   0x00007ffff7fca4fa <+826>:	test   %r14,%r14
   0x00007ffff7fca4fd <+829>:	je     0x7ffff7fca532 <mean_kernel+882>
   0x00007ffff7fca4ff <+831>:	imul   -0x20(%rsp),%rcx
   0x00007ffff7fca505 <+837>:	add    %rbx,%rcx
   0x00007ffff7fca508 <+840>:	lea    (%r10,%rcx,4),%rcx
   0x00007ffff7fca50c <+844>:	mov    -0x18(%rsp),%rsi
   0x00007ffff7fca511 <+849>:	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fca520 <+864>:	vaddss (%rcx),%xmm1,%xmm1
   0x00007ffff7fca524 <+868>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fca529 <+873>:	add    %rbp,%rcx
   0x00007ffff7fca52c <+876>:	add    $0x1,%rsi
   0x00007ffff7fca530 <+880>:	jne    0x7ffff7fca520 <mean_kernel+864>
   0x00007ffff7fca532 <+882>:	vdivss %xmm0,%xmm1,%xmm1
   0x00007ffff7fca536 <+886>:	vmovss %xmm1,(%rdx,%rbx,4)
   0x00007ffff7fca53b <+891>:	add    $0x1,%r12
   0x00007ffff7fca53f <+895>:	add    $0x1,%r15
   0x00007ffff7fca543 <+899>:	cmp    %r8,%r12
   0x00007ffff7fca546 <+902>:	jne    0x7ffff7fca430 <mean_kernel+624>
   0x00007ffff7fca54c <+908>:	pop    %rbx
   0x00007ffff7fca54d <+909>:	pop    %r12
   0x00007ffff7fca54f <+911>:	pop    %r13
   0x00007ffff7fca551 <+913>:	pop    %r14
   0x00007ffff7fca553 <+915>:	pop    %r15
   0x00007ffff7fca555 <+917>:	pop    %rbp
   0x00007ffff7fca556 <+918>:	vzeroupper 
   0x00007ffff7fca559 <+921>:	ret    
End of assembler dump.
