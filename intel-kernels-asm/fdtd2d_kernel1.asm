Dump of assembler code for function fdtd_kernel1:
=> 0x00007ffff7fcb1c0 <+0>:	push   %rbp
   0x00007ffff7fcb1c1 <+1>:	push   %r15
   0x00007ffff7fcb1c3 <+3>:	push   %r14
   0x00007ffff7fcb1c5 <+5>:	push   %r13
   0x00007ffff7fcb1c7 <+7>:	push   %r12
   0x00007ffff7fcb1c9 <+9>:	push   %rbx
   0x00007ffff7fcb1ca <+10>:	movslq 0x28(%rdi),%r10
   0x00007ffff7fcb1ce <+14>:	mov    0x68(%rdi),%rax
   0x00007ffff7fcb1d2 <+18>:	mov    0x70(%rdi),%rcx
   0x00007ffff7fcb1d6 <+22>:	mov    (%rsi),%rbp
   0x00007ffff7fcb1d9 <+25>:	imul   %rax,%rbp
   0x00007ffff7fcb1dd <+29>:	add    0x38(%rdi),%rbp
   0x00007ffff7fcb1e1 <+33>:	mov    0x8(%rsi),%rsi
   0x00007ffff7fcb1e5 <+37>:	imul   %rcx,%rsi
   0x00007ffff7fcb1e9 <+41>:	add    0x40(%rdi),%rsi
   0x00007ffff7fcb1ed <+45>:	movslq 0x24(%rdi),%rdx
   0x00007ffff7fcb1f1 <+49>:	add    %rsi,%rcx
   0x00007ffff7fcb1f4 <+52>:	cmp    %rdx,%rcx
   0x00007ffff7fcb1f7 <+55>:	mov    %rdx,%r13
   0x00007ffff7fcb1fa <+58>:	cmovle %rcx,%r13
   0x00007ffff7fcb1fe <+62>:	test   %rdx,%rdx
   0x00007ffff7fcb201 <+65>:	cmovs  %rcx,%r13
   0x00007ffff7fcb205 <+69>:	add    %rbp,%rax
   0x00007ffff7fcb208 <+72>:	cmp    %r10,%rax
   0x00007ffff7fcb20b <+75>:	mov    %r10,%rcx
   0x00007ffff7fcb20e <+78>:	cmovle %rax,%rcx
   0x00007ffff7fcb212 <+82>:	test   %r10,%r10
   0x00007ffff7fcb215 <+85>:	cmovs  %rax,%rcx
   0x00007ffff7fcb219 <+89>:	mov    %rbp,-0x68(%rsp)
   0x00007ffff7fcb21e <+94>:	sub    %rbp,%rcx
   0x00007ffff7fcb221 <+97>:	mov    %rcx,%rax
   0x00007ffff7fcb224 <+100>:	test   %rcx,%rcx
   0x00007ffff7fcb227 <+103>:	jle    0x7ffff7fcb54d <fdtd_kernel1+909>
   0x00007ffff7fcb22d <+109>:	sub    %rsi,%r13
   0x00007ffff7fcb230 <+112>:	test   %r13,%r13
   0x00007ffff7fcb233 <+115>:	jle    0x7ffff7fcb54d <fdtd_kernel1+909>
   0x00007ffff7fcb239 <+121>:	mov    %rsi,-0x50(%rsp)
   0x00007ffff7fcb23e <+126>:	mov    (%rdi),%rcx
   0x00007ffff7fcb241 <+129>:	mov    %rcx,-0x38(%rsp)
   0x00007ffff7fcb246 <+134>:	mov    0x10(%rdi),%rdx
   0x00007ffff7fcb24a <+138>:	mov    0x18(%rdi),%rcx
   0x00007ffff7fcb24e <+142>:	mov    %rcx,-0x30(%rsp)
   0x00007ffff7fcb253 <+147>:	movslq 0x20(%rdi),%rcx
   0x00007ffff7fcb257 <+151>:	mov    %rcx,-0x40(%rsp)
   0x00007ffff7fcb25c <+156>:	mov    %rax,%rsi
   0x00007ffff7fcb25f <+159>:	sar    $0x3,%rsi
   0x00007ffff7fcb263 <+163>:	mov    %rax,%rcx
   0x00007ffff7fcb266 <+166>:	and    $0xfffffffffffffff8,%rcx
   0x00007ffff7fcb26a <+170>:	mov    %rcx,-0x28(%rsp)
   0x00007ffff7fcb26f <+175>:	sub    %rcx,%rax
   0x00007ffff7fcb272 <+178>:	mov    %rax,-0x48(%rsp)
   0x00007ffff7fcb277 <+183>:	mov    %rsi,-0x10(%rsp)
   0x00007ffff7fcb27c <+188>:	test   %rsi,%rsi
   0x00007ffff7fcb27f <+191>:	je     0x7ffff7fcb45b <fdtd_kernel1+667>
   0x00007ffff7fcb285 <+197>:	mov    -0x50(%rsp),%rsi
   0x00007ffff7fcb28a <+202>:	lea    -0x1(%rsi),%r12d
   0x00007ffff7fcb28e <+206>:	imul   %r10d,%r12d
   0x00007ffff7fcb292 <+210>:	mov    %esi,%ebp
   0x00007ffff7fcb294 <+212>:	imul   %r10d,%ebp
   0x00007ffff7fcb298 <+216>:	mov    -0x68(%rsp),%rcx
   0x00007ffff7fcb29d <+221>:	add    %ecx,%r12d
   0x00007ffff7fcb2a0 <+224>:	add    %ecx,%ebp
   0x00007ffff7fcb2a2 <+226>:	xor    %edi,%edi
   0x00007ffff7fcb2a4 <+228>:	movabs $0x7ffff7fca000,%rcx
   0x00007ffff7fcb2ae <+238>:	vmovdqa (%rcx),%ymm0
   0x00007ffff7fcb2b2 <+242>:	movabs $0x7ffff7fca020,%rcx
   0x00007ffff7fcb2bc <+252>:	vmovdqa (%rcx),%ymm1
   0x00007ffff7fcb2c0 <+256>:	mov    %rsi,%rcx
   0x00007ffff7fcb2c3 <+259>:	mov    %r13,-0x18(%rsp)
   0x00007ffff7fcb2c8 <+264>:	mov    %r10,-0x20(%rsp)
   0x00007ffff7fcb2cd <+269>:	nopl   (%rax)
   0x00007ffff7fcb2d0 <+272>:	mov    %rdi,-0x8(%rsp)
   0x00007ffff7fcb2d5 <+277>:	mov    -0x68(%rsp),%rsi
   0x00007ffff7fcb2da <+282>:	vmovq  %rsi,%xmm2
   0x00007ffff7fcb2df <+287>:	vpbroadcastq %xmm2,%ymm2
   0x00007ffff7fcb2e4 <+292>:	vpsllq $0x20,%ymm2,%ymm3
   0x00007ffff7fcb2e9 <+297>:	vpaddq %ymm0,%ymm3,%ymm2
   0x00007ffff7fcb2ed <+301>:	vpaddq %ymm1,%ymm3,%ymm3
   0x00007ffff7fcb2f1 <+305>:	vpextrq $0x1,%xmm3,%rsi
   0x00007ffff7fcb2f7 <+311>:	vmovq  %xmm3,%rdi
   0x00007ffff7fcb2fc <+316>:	sub    %rdi,%rsi
   0x00007ffff7fcb2ff <+319>:	shl    $0x3,%rsi
   0x00007ffff7fcb303 <+323>:	vmovq  %rsi,%xmm4
   0x00007ffff7fcb308 <+328>:	vpbroadcastq %xmm4,%ymm4
   0x00007ffff7fcb30d <+333>:	mov    %ebp,-0x54(%rsp)
   0x00007ffff7fcb311 <+337>:	mov    %ebp,%r13d
   0x00007ffff7fcb314 <+340>:	mov    %r12d,-0x60(%rsp)
   0x00007ffff7fcb319 <+345>:	mov    -0x10(%rsp),%r11
   0x00007ffff7fcb31e <+350>:	movabs $0x7ffff7fca040,%rax
   0x00007ffff7fcb328 <+360>:	nopl   0x0(%rax,%rax,1)
   0x00007ffff7fcb330 <+368>:	test   %ecx,%ecx
   0x00007ffff7fcb332 <+370>:	je     0x7ffff7fcb390 <fdtd_kernel1+464>
   0x00007ffff7fcb334 <+372>:	movslq %r13d,%rsi
   0x00007ffff7fcb337 <+375>:	vcvtps2pd (%rdx,%rsi,4),%ymm5
   0x00007ffff7fcb33c <+380>:	vcvtps2pd 0x10(%rdx,%rsi,4),%ymm6
   0x00007ffff7fcb342 <+386>:	mov    -0x30(%rsp),%rbp
   0x00007ffff7fcb347 <+391>:	vmovups 0x0(%rbp,%rsi,4),%ymm7
   0x00007ffff7fcb34d <+397>:	movslq %r12d,%rdi
   0x00007ffff7fcb350 <+400>:	vsubps 0x0(%rbp,%rdi,4),%ymm7,%ymm7
   0x00007ffff7fcb356 <+406>:	vcvtps2pd %xmm7,%ymm8
   0x00007ffff7fcb35a <+410>:	vextractf128 $0x1,%ymm7,%xmm7
   0x00007ffff7fcb360 <+416>:	vcvtps2pd %xmm7,%ymm7
   0x00007ffff7fcb364 <+420>:	vbroadcastsd (%rax),%ymm9
   0x00007ffff7fcb369 <+425>:	vfnmadd213pd %ymm6,%ymm9,%ymm7
   0x00007ffff7fcb36e <+430>:	vfnmadd213pd %ymm5,%ymm9,%ymm8
   0x00007ffff7fcb373 <+435>:	vcvtpd2ps %ymm8,%xmm5
   0x00007ffff7fcb378 <+440>:	vcvtpd2ps %ymm7,%xmm6
   0x00007ffff7fcb37c <+444>:	vinsertf128 $0x1,%xmm6,%ymm5,%ymm5
   0x00007ffff7fcb382 <+450>:	vmovupd %ymm5,(%rdx,%rsi,4)
   0x00007ffff7fcb387 <+455>:	jmp    0x7ffff7fcb412 <fdtd_kernel1+594>
   0x00007ffff7fcb38c <+460>:	nopl   0x0(%rax)
   0x00007ffff7fcb390 <+464>:	mov    -0x38(%rsp),%rsi
   0x00007ffff7fcb395 <+469>:	mov    -0x40(%rsp),%rdi
   0x00007ffff7fcb39a <+474>:	mov    (%rsi,%rdi,4),%esi
   0x00007ffff7fcb39d <+477>:	vpsrad $0x1f,%ymm2,%ymm5
   0x00007ffff7fcb3a2 <+482>:	vpshufd $0xf5,%ymm2,%ymm6
   0x00007ffff7fcb3a7 <+487>:	vpblendd $0xaa,%ymm5,%ymm6,%ymm5
   0x00007ffff7fcb3ad <+493>:	vpsrad $0x1f,%ymm3,%ymm6
   0x00007ffff7fcb3b2 <+498>:	vpshufd $0xf5,%ymm3,%ymm7
   0x00007ffff7fcb3b7 <+503>:	vpblendd $0xaa,%ymm6,%ymm7,%ymm6
   0x00007ffff7fcb3bd <+509>:	vpextrq $0x1,%xmm6,%rdi
   0x00007ffff7fcb3c3 <+515>:	vmovq  %xmm6,%r8
   0x00007ffff7fcb3c8 <+520>:	vextracti128 $0x1,%ymm6,%xmm6
   0x00007ffff7fcb3ce <+526>:	vpextrq $0x1,%xmm6,%r15
   0x00007ffff7fcb3d4 <+532>:	vmovq  %xmm6,%rbp
   0x00007ffff7fcb3d9 <+537>:	vmovq  %xmm5,%rbx
   0x00007ffff7fcb3de <+542>:	vpextrq $0x1,%xmm5,%r9
   0x00007ffff7fcb3e4 <+548>:	vextracti128 $0x1,%ymm5,%xmm5
   0x00007ffff7fcb3ea <+554>:	vmovq  %xmm5,%r10
   0x00007ffff7fcb3ef <+559>:	vpextrq $0x1,%xmm5,%r14
   0x00007ffff7fcb3f5 <+565>:	mov    %esi,(%rdx,%r8,4)
   0x00007ffff7fcb3f9 <+569>:	mov    %esi,(%rdx,%rdi,4)
   0x00007ffff7fcb3fc <+572>:	mov    %esi,(%rdx,%rbp,4)
   0x00007ffff7fcb3ff <+575>:	mov    %esi,(%rdx,%r15,4)
   0x00007ffff7fcb403 <+579>:	mov    %esi,(%rdx,%rbx,4)
   0x00007ffff7fcb406 <+582>:	mov    %esi,(%rdx,%r9,4)
   0x00007ffff7fcb40a <+586>:	mov    %esi,(%rdx,%r10,4)
   0x00007ffff7fcb40e <+590>:	mov    %esi,(%rdx,%r14,4)
   0x00007ffff7fcb412 <+594>:	vpaddq %ymm4,%ymm3,%ymm3
   0x00007ffff7fcb416 <+598>:	vpaddq %ymm4,%ymm2,%ymm2
   0x00007ffff7fcb41a <+602>:	add    $0x8,%r12d
   0x00007ffff7fcb41e <+606>:	add    $0x8,%r13d
   0x00007ffff7fcb422 <+610>:	add    $0xffffffffffffffff,%r11
   0x00007ffff7fcb426 <+614>:	jne    0x7ffff7fcb330 <fdtd_kernel1+368>
   0x00007ffff7fcb42c <+620>:	mov    -0x8(%rsp),%rdi
   0x00007ffff7fcb431 <+625>:	add    $0x1,%rdi
   0x00007ffff7fcb435 <+629>:	add    $0x1,%rcx
   0x00007ffff7fcb439 <+633>:	mov    -0x20(%rsp),%r10
   0x00007ffff7fcb43e <+638>:	mov    -0x60(%rsp),%r12d
   0x00007ffff7fcb443 <+643>:	add    %r10d,%r12d
   0x00007ffff7fcb446 <+646>:	mov    -0x54(%rsp),%ebp
   0x00007ffff7fcb44a <+650>:	add    %r10d,%ebp
   0x00007ffff7fcb44d <+653>:	mov    -0x18(%rsp),%r13
   0x00007ffff7fcb452 <+658>:	cmp    %r13,%rdi
   0x00007ffff7fcb455 <+661>:	jne    0x7ffff7fcb2d0 <fdtd_kernel1+272>
   0x00007ffff7fcb45b <+667>:	cmpq   $0x0,-0x48(%rsp)
   0x00007ffff7fcb461 <+673>:	mov    -0x50(%rsp),%r14
   0x00007ffff7fcb466 <+678>:	je     0x7ffff7fcb54d <fdtd_kernel1+909>
   0x00007ffff7fcb46c <+684>:	mov    -0x28(%rsp),%rax
   0x00007ffff7fcb471 <+689>:	add    -0x68(%rsp),%rax
   0x00007ffff7fcb476 <+694>:	mov    %rax,%rcx
   0x00007ffff7fcb479 <+697>:	shl    $0x20,%rcx
   0x00007ffff7fcb47d <+701>:	mov    %rcx,-0x60(%rsp)
   0x00007ffff7fcb482 <+706>:	lea    -0x1(%r14),%r11d
   0x00007ffff7fcb486 <+710>:	imul   %r10d,%r11d
   0x00007ffff7fcb48a <+714>:	add    %eax,%r11d
   0x00007ffff7fcb48d <+717>:	mov    %r14d,%r15d
   0x00007ffff7fcb490 <+720>:	imul   %r10d,%r15d
   0x00007ffff7fcb494 <+724>:	add    %eax,%r15d
   0x00007ffff7fcb497 <+727>:	xor    %r12d,%r12d
   0x00007ffff7fcb49a <+730>:	movabs $0x100000000,%r9
   0x00007ffff7fcb4a4 <+740>:	movabs $0x7ffff7fca048,%rcx
   0x00007ffff7fcb4ae <+750>:	vmovsd (%rcx),%xmm0
   0x00007ffff7fcb4b2 <+754>:	mov    -0x30(%rsp),%r8
   0x00007ffff7fcb4b7 <+759>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fcb4c0 <+768>:	mov    %r15d,%ebx
   0x00007ffff7fcb4c3 <+771>:	mov    %r11d,%ecx
   0x00007ffff7fcb4c6 <+774>:	mov    -0x60(%rsp),%rax
   0x00007ffff7fcb4cb <+779>:	mov    -0x48(%rsp),%rdi
   0x00007ffff7fcb4d0 <+784>:	test   %r14d,%r14d
   0x00007ffff7fcb4d3 <+787>:	je     0x7ffff7fcb510 <fdtd_kernel1+848>
   0x00007ffff7fcb4d5 <+789>:	movslq %ebx,%rsi
   0x00007ffff7fcb4d8 <+792>:	vmovss (%rdx,%rsi,4),%xmm1
   0x00007ffff7fcb4dd <+797>:	vcvtss2sd %xmm1,%xmm1,%xmm1
   0x00007ffff7fcb4e1 <+801>:	vmovss (%r8,%rsi,4),%xmm2
   0x00007ffff7fcb4e7 <+807>:	movslq %ecx,%rbp
   0x00007ffff7fcb4ea <+810>:	vsubss (%r8,%rbp,4),%xmm2,%xmm2
   0x00007ffff7fcb4f0 <+816>:	vcvtss2sd %xmm2,%xmm2,%xmm2
   0x00007ffff7fcb4f4 <+820>:	vfmadd132sd %xmm0,%xmm1,%xmm2
   0x00007ffff7fcb4f9 <+825>:	vcvtsd2ss %xmm2,%xmm2,%xmm1
   0x00007ffff7fcb4fd <+829>:	vmovd  %xmm1,(%rdx,%rsi,4)
   0x00007ffff7fcb502 <+834>:	jmp    0x7ffff7fcb527 <fdtd_kernel1+871>
   0x00007ffff7fcb504 <+836>:	data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb510 <+848>:	mov    -0x38(%rsp),%rsi
   0x00007ffff7fcb515 <+853>:	mov    -0x40(%rsp),%rbp
   0x00007ffff7fcb51a <+858>:	mov    (%rsi,%rbp,4),%ebp
   0x00007ffff7fcb51d <+861>:	mov    %rax,%rsi
   0x00007ffff7fcb520 <+864>:	sar    $0x1e,%rsi
   0x00007ffff7fcb524 <+868>:	mov    %ebp,(%rdx,%rsi,1)
   0x00007ffff7fcb527 <+871>:	add    %r9,%rax
   0x00007ffff7fcb52a <+874>:	add    $0x1,%ecx
   0x00007ffff7fcb52d <+877>:	add    $0x1,%ebx
   0x00007ffff7fcb530 <+880>:	add    $0xffffffffffffffff,%rdi
   0x00007ffff7fcb534 <+884>:	jne    0x7ffff7fcb4d0 <fdtd_kernel1+784>
   0x00007ffff7fcb536 <+886>:	add    $0x1,%r12
   0x00007ffff7fcb53a <+890>:	add    $0x1,%r14
   0x00007ffff7fcb53e <+894>:	add    %r10d,%r11d
   0x00007ffff7fcb541 <+897>:	add    %r10d,%r15d
   0x00007ffff7fcb544 <+900>:	cmp    %r13,%r12
   0x00007ffff7fcb547 <+903>:	jne    0x7ffff7fcb4c0 <fdtd_kernel1+768>
   0x00007ffff7fcb54d <+909>:	pop    %rbx
   0x00007ffff7fcb54e <+910>:	pop    %r12
   0x00007ffff7fcb550 <+912>:	pop    %r13
   0x00007ffff7fcb552 <+914>:	pop    %r14
   0x00007ffff7fcb554 <+916>:	pop    %r15
   0x00007ffff7fcb556 <+918>:	pop    %rbp
   0x00007ffff7fcb557 <+919>:	vzeroupper 
   0x00007ffff7fcb55a <+922>:	ret    
End of assembler dump.