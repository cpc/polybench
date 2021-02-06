Dump of assembler code for function gemver_kernel2:
=> 0x00007ffff7fab3a0 <+0>:	push   %rbp
   0x00007ffff7fab3a1 <+1>:	push   %r15
   0x00007ffff7fab3a3 <+3>:	push   %r14
   0x00007ffff7fab3a5 <+5>:	push   %r13
   0x00007ffff7fab3a7 <+7>:	push   %r12
   0x00007ffff7fab3a9 <+9>:	push   %rbx
   0x00007ffff7fab3aa <+10>:	mov    0x60(%rdi),%rax
   0x00007ffff7fab3ae <+14>:	mov    (%rsi),%rdx
   0x00007ffff7fab3b1 <+17>:	imul   %rax,%rdx
   0x00007ffff7fab3b5 <+21>:	add    0x30(%rdi),%rdx
   0x00007ffff7fab3b9 <+25>:	movslq 0x24(%rdi),%r11
   0x00007ffff7fab3bd <+29>:	add    %rdx,%rax
   0x00007ffff7fab3c0 <+32>:	cmp    %r11,%rax
   0x00007ffff7fab3c3 <+35>:	mov    %r11,%rcx
   0x00007ffff7fab3c6 <+38>:	cmovle %rax,%rcx
   0x00007ffff7fab3ca <+42>:	test   %r11,%r11
   0x00007ffff7fab3cd <+45>:	cmovs  %rax,%rcx
   0x00007ffff7fab3d1 <+49>:	mov    %rdx,-0x20(%rsp)
   0x00007ffff7fab3d6 <+54>:	sub    %rdx,%rcx
   0x00007ffff7fab3d9 <+57>:	mov    %rcx,%rax
   0x00007ffff7fab3dc <+60>:	test   %rcx,%rcx
   0x00007ffff7fab3df <+63>:	jle    0x7ffff7fab7f3 <gemver_kernel2+1107>
   0x00007ffff7fab3e5 <+69>:	mov    (%rdi),%rcx
   0x00007ffff7fab3e8 <+72>:	mov    %rcx,-0x38(%rsp)
   0x00007ffff7fab3ed <+77>:	mov    0x8(%rdi),%rsi
   0x00007ffff7fab3f1 <+81>:	mov    0x10(%rdi),%rdx
   0x00007ffff7fab3f5 <+85>:	mov    0x18(%rdi),%rcx
   0x00007ffff7fab3f9 <+89>:	mov    %rcx,-0x10(%rsp)
   0x00007ffff7fab3fe <+94>:	vmovss 0x20(%rdi),%xmm0
   0x00007ffff7fab403 <+99>:	mov    %rax,%r12
   0x00007ffff7fab406 <+102>:	sar    $0x3,%r12
   0x00007ffff7fab40a <+106>:	mov    %rax,%r9
   0x00007ffff7fab40d <+109>:	and    $0xfffffffffffffff8,%r9
   0x00007ffff7fab411 <+113>:	sub    %r9,%rax
   0x00007ffff7fab414 <+116>:	mov    %rax,-0x18(%rsp)
   0x00007ffff7fab419 <+121>:	test   %r12,%r12
   0x00007ffff7fab41c <+124>:	je     0x7ffff7fab639 <gemver_kernel2+665>
   0x00007ffff7fab422 <+130>:	vbroadcastss %xmm0,%ymm1
   0x00007ffff7fab427 <+135>:	lea    -0x1(%r11),%rax
   0x00007ffff7fab42b <+139>:	mov    %rax,-0x28(%rsp)
   0x00007ffff7fab430 <+144>:	mov    %r11d,%edi
   0x00007ffff7fab433 <+147>:	and    $0x7,%edi
   0x00007ffff7fab436 <+150>:	mov    %r11,%r13
   0x00007ffff7fab439 <+153>:	sub    %rdi,%r13
   0x00007ffff7fab43c <+156>:	mov    -0x20(%rsp),%rax
   0x00007ffff7fab441 <+161>:	vmovq  %rax,%xmm2
   0x00007ffff7fab446 <+166>:	vpbroadcastq %xmm2,%ymm2
   0x00007ffff7fab44b <+171>:	vpsllq $0x20,%ymm2,%ymm3
   0x00007ffff7fab450 <+176>:	movabs $0x7ffff7faa000,%rax
   0x00007ffff7fab45a <+186>:	vpaddq (%rax),%ymm3,%ymm2
   0x00007ffff7fab45e <+190>:	movabs $0x7ffff7faa020,%rax
   0x00007ffff7fab468 <+200>:	vpaddq (%rax),%ymm3,%ymm3
   0x00007ffff7fab46c <+204>:	vpextrq $0x1,%xmm3,%rax
   0x00007ffff7fab472 <+210>:	vmovq  %xmm3,%rcx
   0x00007ffff7fab477 <+215>:	sub    %rcx,%rax
   0x00007ffff7fab47a <+218>:	shl    $0x3,%rax
   0x00007ffff7fab47e <+222>:	vmovq  %rax,%xmm4
   0x00007ffff7fab483 <+227>:	vpbroadcastq %xmm4,%ymm4
   0x00007ffff7fab488 <+232>:	mov    %r11,%r14
   0x00007ffff7fab48b <+235>:	shl    $0x5,%r14
   0x00007ffff7fab48f <+239>:	lea    0x0(,%r11,4),%rcx
   0x00007ffff7fab497 <+247>:	mov    %rdi,-0x30(%rsp)
   0x00007ffff7fab49c <+252>:	neg    %rdi
   0x00007ffff7fab49f <+255>:	mov    %rdi,-0x8(%rsp)
   0x00007ffff7fab4a4 <+260>:	xor    %r10d,%r10d
   0x00007ffff7fab4a7 <+263>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fab4b0 <+272>:	vmovq  %xmm3,%rbp
   0x00007ffff7fab4b5 <+277>:	sar    $0x20,%rbp
   0x00007ffff7fab4b9 <+281>:	test   %r11d,%r11d
   0x00007ffff7fab4bc <+284>:	jle    0x7ffff7fab610 <gemver_kernel2+624>
   0x00007ffff7fab4c2 <+290>:	cmpq   $0x7,-0x28(%rsp)
   0x00007ffff7fab4c8 <+296>:	jae    0x7ffff7fab4e0 <gemver_kernel2+320>
   0x00007ffff7fab4ca <+298>:	xor    %edi,%edi
   0x00007ffff7fab4cc <+300>:	cmpq   $0x0,-0x30(%rsp)
   0x00007ffff7fab4d2 <+306>:	jne    0x7ffff7fab5d1 <gemver_kernel2+561>
   0x00007ffff7fab4d8 <+312>:	jmp    0x7ffff7fab610 <gemver_kernel2+624>
   0x00007ffff7fab4dd <+317>:	nopl   (%rax)
   0x00007ffff7fab4e0 <+320>:	vmovups (%rsi,%rbp,4),%ymm5
   0x00007ffff7fab4e5 <+325>:	mov    -0x38(%rsp),%rax
   0x00007ffff7fab4ea <+330>:	lea    (%rax,%rbp,4),%r8
   0x00007ffff7fab4ee <+334>:	xor    %edi,%edi
   0x00007ffff7fab4f0 <+336>:	vmulps (%r8),%ymm1,%ymm6
   0x00007ffff7fab4f5 <+341>:	vbroadcastss (%rdx,%rdi,4),%ymm7
   0x00007ffff7fab4fb <+347>:	vfmadd213ps %ymm5,%ymm6,%ymm7
   0x00007ffff7fab500 <+352>:	vmovups %ymm7,(%rsi,%rbp,4)
   0x00007ffff7fab505 <+357>:	lea    (%r8,%rcx,1),%r15
   0x00007ffff7fab509 <+361>:	vmulps (%r8,%rcx,1),%ymm1,%ymm5
   0x00007ffff7fab50f <+367>:	vbroadcastss 0x4(%rdx,%rdi,4),%ymm6
   0x00007ffff7fab516 <+374>:	vfmadd213ps %ymm7,%ymm5,%ymm6
   0x00007ffff7fab51b <+379>:	vmovups %ymm6,(%rsi,%rbp,4)
   0x00007ffff7fab520 <+384>:	vmulps (%rcx,%r15,1),%ymm1,%ymm5
   0x00007ffff7fab526 <+390>:	add    %rcx,%r15
   0x00007ffff7fab529 <+393>:	vbroadcastss 0x8(%rdx,%rdi,4),%ymm7
   0x00007ffff7fab530 <+400>:	vfmadd213ps %ymm6,%ymm5,%ymm7
   0x00007ffff7fab535 <+405>:	vmovups %ymm7,(%rsi,%rbp,4)
   0x00007ffff7fab53a <+410>:	vmulps (%rcx,%r15,1),%ymm1,%ymm5
   0x00007ffff7fab540 <+416>:	add    %rcx,%r15
   0x00007ffff7fab543 <+419>:	vbroadcastss 0xc(%rdx,%rdi,4),%ymm6
   0x00007ffff7fab54a <+426>:	vfmadd213ps %ymm7,%ymm5,%ymm6
   0x00007ffff7fab54f <+431>:	vmovups %ymm6,(%rsi,%rbp,4)
   0x00007ffff7fab554 <+436>:	vmulps (%rcx,%r15,1),%ymm1,%ymm5
   0x00007ffff7fab55a <+442>:	add    %rcx,%r15
   0x00007ffff7fab55d <+445>:	vbroadcastss 0x10(%rdx,%rdi,4),%ymm7
   0x00007ffff7fab564 <+452>:	vfmadd213ps %ymm6,%ymm5,%ymm7
   0x00007ffff7fab569 <+457>:	vmovups %ymm7,(%rsi,%rbp,4)
   0x00007ffff7fab56e <+462>:	vmulps (%rcx,%r15,1),%ymm1,%ymm5
   0x00007ffff7fab574 <+468>:	add    %rcx,%r15
   0x00007ffff7fab577 <+471>:	vbroadcastss 0x14(%rdx,%rdi,4),%ymm6
   0x00007ffff7fab57e <+478>:	vfmadd213ps %ymm7,%ymm5,%ymm6
   0x00007ffff7fab583 <+483>:	vmovups %ymm6,(%rsi,%rbp,4)
   0x00007ffff7fab588 <+488>:	vmulps (%rcx,%r15,1),%ymm1,%ymm5
   0x00007ffff7fab58e <+494>:	add    %rcx,%r15
   0x00007ffff7fab591 <+497>:	vbroadcastss 0x18(%rdx,%rdi,4),%ymm7
   0x00007ffff7fab598 <+504>:	vfmadd213ps %ymm6,%ymm5,%ymm7
   0x00007ffff7fab59d <+509>:	vmovups %ymm7,(%rsi,%rbp,4)
   0x00007ffff7fab5a2 <+514>:	vmulps (%rcx,%r15,1),%ymm1,%ymm6
   0x00007ffff7fab5a8 <+520>:	vbroadcastss 0x1c(%rdx,%rdi,4),%ymm5
   0x00007ffff7fab5af <+527>:	vfmadd213ps %ymm7,%ymm6,%ymm5
   0x00007ffff7fab5b4 <+532>:	vmovups %ymm5,(%rsi,%rbp,4)
   0x00007ffff7fab5b9 <+537>:	add    $0x8,%rdi
   0x00007ffff7fab5bd <+541>:	add    %r14,%r8
   0x00007ffff7fab5c0 <+544>:	cmp    %rdi,%r13
   0x00007ffff7fab5c3 <+547>:	jne    0x7ffff7fab4f0 <gemver_kernel2+336>
   0x00007ffff7fab5c9 <+553>:	cmpq   $0x0,-0x30(%rsp)
   0x00007ffff7fab5cf <+559>:	je     0x7ffff7fab610 <gemver_kernel2+624>
   0x00007ffff7fab5d1 <+561>:	vmovups (%rsi,%rbp,4),%ymm5
   0x00007ffff7fab5d6 <+566>:	lea    (%rdx,%rdi,4),%rax
   0x00007ffff7fab5da <+570>:	imul   %r11,%rdi
   0x00007ffff7fab5de <+574>:	add    %rbp,%rdi
   0x00007ffff7fab5e1 <+577>:	mov    -0x38(%rsp),%rbx
   0x00007ffff7fab5e6 <+582>:	lea    (%rbx,%rdi,4),%rdi
   0x00007ffff7fab5ea <+586>:	mov    -0x8(%rsp),%rbx
   0x00007ffff7fab5ef <+591>:	nop
   0x00007ffff7fab5f0 <+592>:	vmulps (%rdi),%ymm1,%ymm6
   0x00007ffff7fab5f4 <+596>:	vbroadcastss (%rax),%ymm7
   0x00007ffff7fab5f9 <+601>:	vfmadd231ps %ymm7,%ymm6,%ymm5
   0x00007ffff7fab5fe <+606>:	vmovups %ymm5,(%rsi,%rbp,4)
   0x00007ffff7fab603 <+611>:	add    $0x4,%rax
   0x00007ffff7fab607 <+615>:	add    %rcx,%rdi
   0x00007ffff7fab60a <+618>:	add    $0x1,%rbx
   0x00007ffff7fab60e <+622>:	jne    0x7ffff7fab5f0 <gemver_kernel2+592>
   0x00007ffff7fab610 <+624>:	mov    -0x10(%rsp),%rax
   0x00007ffff7fab615 <+629>:	vmovups (%rax,%rbp,4),%ymm5
   0x00007ffff7fab61a <+634>:	vaddps (%rsi,%rbp,4),%ymm5,%ymm5
   0x00007ffff7fab61f <+639>:	vmovups %ymm5,(%rsi,%rbp,4)
   0x00007ffff7fab624 <+644>:	add    $0x1,%r10
   0x00007ffff7fab628 <+648>:	vpaddq %ymm4,%ymm3,%ymm3
   0x00007ffff7fab62c <+652>:	vpaddq %ymm4,%ymm2,%ymm2
   0x00007ffff7fab630 <+656>:	cmp    %r12,%r10
   0x00007ffff7fab633 <+659>:	jne    0x7ffff7fab4b0 <gemver_kernel2+272>
   0x00007ffff7fab639 <+665>:	cmpq   $0x0,-0x18(%rsp)
   0x00007ffff7fab63f <+671>:	je     0x7ffff7fab7f3 <gemver_kernel2+1107>
   0x00007ffff7fab645 <+677>:	add    -0x20(%rsp),%r9
   0x00007ffff7fab64a <+682>:	lea    -0x1(%r11),%rax
   0x00007ffff7fab64e <+686>:	mov    %rax,-0x28(%rsp)
   0x00007ffff7fab653 <+691>:	mov    %r11d,%r15d
   0x00007ffff7fab656 <+694>:	and    $0x7,%r15d
   0x00007ffff7fab65a <+698>:	mov    %r11,%r14
   0x00007ffff7fab65d <+701>:	sub    %r15,%r14
   0x00007ffff7fab660 <+704>:	mov    %r11,%r13
   0x00007ffff7fab663 <+707>:	shl    $0x5,%r13
   0x00007ffff7fab667 <+711>:	lea    0x0(,%r11,4),%rax
   0x00007ffff7fab66f <+719>:	mov    %r15,%rcx
   0x00007ffff7fab672 <+722>:	neg    %rcx
   0x00007ffff7fab675 <+725>:	mov    %rcx,-0x30(%rsp)
   0x00007ffff7fab67a <+730>:	xor    %r8d,%r8d
   0x00007ffff7fab67d <+733>:	nopl   (%rax)
   0x00007ffff7fab680 <+736>:	movslq %r9d,%rdi
   0x00007ffff7fab683 <+739>:	test   %r11d,%r11d
   0x00007ffff7fab686 <+742>:	jle    0x7ffff7fab7cc <gemver_kernel2+1068>
   0x00007ffff7fab68c <+748>:	cmpq   $0x7,-0x28(%rsp)
   0x00007ffff7fab692 <+754>:	jae    0x7ffff7fab6b0 <gemver_kernel2+784>
   0x00007ffff7fab694 <+756>:	xor    %r12d,%r12d
   0x00007ffff7fab697 <+759>:	test   %r15,%r15
   0x00007ffff7fab69a <+762>:	jne    0x7ffff7fab784 <gemver_kernel2+996>
   0x00007ffff7fab6a0 <+768>:	jmp    0x7ffff7fab7cc <gemver_kernel2+1068>
   0x00007ffff7fab6a5 <+773>:	data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fab6b0 <+784>:	mov    -0x38(%rsp),%rcx
   0x00007ffff7fab6b5 <+789>:	lea    (%rcx,%rdi,4),%rcx
   0x00007ffff7fab6b9 <+793>:	vmovss (%rsi,%rdi,4),%xmm1
   0x00007ffff7fab6be <+798>:	xor    %r12d,%r12d
   0x00007ffff7fab6c1 <+801>:	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fab6d0 <+816>:	vmulss (%rcx),%xmm0,%xmm2
   0x00007ffff7fab6d4 <+820>:	vfmadd132ss (%rdx,%r12,4),%xmm1,%xmm2
   0x00007ffff7fab6da <+826>:	vmovss %xmm2,(%rsi,%rdi,4)
   0x00007ffff7fab6df <+831>:	lea    (%rcx,%rax,1),%r10
   0x00007ffff7fab6e3 <+835>:	vmulss (%rcx,%rax,1),%xmm0,%xmm1
   0x00007ffff7fab6e8 <+840>:	vfmadd132ss 0x4(%rdx,%r12,4),%xmm2,%xmm1
   0x00007ffff7fab6ef <+847>:	vmovss %xmm1,(%rsi,%rdi,4)
   0x00007ffff7fab6f4 <+852>:	vmulss (%rax,%r10,1),%xmm0,%xmm2
   0x00007ffff7fab6fa <+858>:	add    %rax,%r10
   0x00007ffff7fab6fd <+861>:	vfmadd132ss 0x8(%rdx,%r12,4),%xmm1,%xmm2
   0x00007ffff7fab704 <+868>:	vmovss %xmm2,(%rsi,%rdi,4)
   0x00007ffff7fab709 <+873>:	vmulss (%rax,%r10,1),%xmm0,%xmm1
   0x00007ffff7fab70f <+879>:	add    %rax,%r10
   0x00007ffff7fab712 <+882>:	vfmadd132ss 0xc(%rdx,%r12,4),%xmm2,%xmm1
   0x00007ffff7fab719 <+889>:	vmovss %xmm1,(%rsi,%rdi,4)
   0x00007ffff7fab71e <+894>:	vmulss (%rax,%r10,1),%xmm0,%xmm2
   0x00007ffff7fab724 <+900>:	add    %rax,%r10
   0x00007ffff7fab727 <+903>:	vfmadd132ss 0x10(%rdx,%r12,4),%xmm1,%xmm2
   0x00007ffff7fab72e <+910>:	vmovss %xmm2,(%rsi,%rdi,4)
   0x00007ffff7fab733 <+915>:	vmulss (%rax,%r10,1),%xmm0,%xmm1
   0x00007ffff7fab739 <+921>:	add    %rax,%r10
   0x00007ffff7fab73c <+924>:	vfmadd132ss 0x14(%rdx,%r12,4),%xmm2,%xmm1
   0x00007ffff7fab743 <+931>:	vmovss %xmm1,(%rsi,%rdi,4)
   0x00007ffff7fab748 <+936>:	vmulss (%rax,%r10,1),%xmm0,%xmm2
   0x00007ffff7fab74e <+942>:	add    %rax,%r10
   0x00007ffff7fab751 <+945>:	vfmadd132ss 0x18(%rdx,%r12,4),%xmm1,%xmm2
   0x00007ffff7fab758 <+952>:	vmovss %xmm2,(%rsi,%rdi,4)
   0x00007ffff7fab75d <+957>:	vmulss (%rax,%r10,1),%xmm0,%xmm1
   0x00007ffff7fab763 <+963>:	vfmadd132ss 0x1c(%rdx,%r12,4),%xmm2,%xmm1
   0x00007ffff7fab76a <+970>:	vmovss %xmm1,(%rsi,%rdi,4)
   0x00007ffff7fab76f <+975>:	add    $0x8,%r12
   0x00007ffff7fab773 <+979>:	add    %r13,%rcx
   0x00007ffff7fab776 <+982>:	cmp    %r12,%r14
   0x00007ffff7fab779 <+985>:	jne    0x7ffff7fab6d0 <gemver_kernel2+816>
   0x00007ffff7fab77f <+991>:	test   %r15,%r15
   0x00007ffff7fab782 <+994>:	je     0x7ffff7fab7cc <gemver_kernel2+1068>
   0x00007ffff7fab784 <+996>:	vmovss (%rsi,%rdi,4),%xmm1
   0x00007ffff7fab789 <+1001>:	lea    (%rdx,%r12,4),%rcx
   0x00007ffff7fab78d <+1005>:	imul   %r11,%r12
   0x00007ffff7fab791 <+1009>:	add    %rdi,%r12
   0x00007ffff7fab794 <+1012>:	mov    -0x38(%rsp),%rbp
   0x00007ffff7fab799 <+1017>:	lea    0x0(%rbp,%r12,4),%rbp
   0x00007ffff7fab79e <+1022>:	mov    -0x30(%rsp),%rbx
   0x00007ffff7fab7a3 <+1027>:	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fab7b0 <+1040>:	vmulss 0x0(%rbp),%xmm0,%xmm2
   0x00007ffff7fab7b5 <+1045>:	vfmadd231ss (%rcx),%xmm2,%xmm1
   0x00007ffff7fab7ba <+1050>:	vmovss %xmm1,(%rsi,%rdi,4)
   0x00007ffff7fab7bf <+1055>:	add    $0x4,%rcx
   0x00007ffff7fab7c3 <+1059>:	add    %rax,%rbp
   0x00007ffff7fab7c6 <+1062>:	add    $0x1,%rbx
   0x00007ffff7fab7ca <+1066>:	jne    0x7ffff7fab7b0 <gemver_kernel2+1040>
   0x00007ffff7fab7cc <+1068>:	mov    -0x10(%rsp),%rcx
   0x00007ffff7fab7d1 <+1073>:	vmovss (%rcx,%rdi,4),%xmm1
   0x00007ffff7fab7d6 <+1078>:	vaddss (%rsi,%rdi,4),%xmm1,%xmm1
   0x00007ffff7fab7db <+1083>:	vmovss %xmm1,(%rsi,%rdi,4)
   0x00007ffff7fab7e0 <+1088>:	add    $0x1,%r8
   0x00007ffff7fab7e4 <+1092>:	add    $0x1,%r9
   0x00007ffff7fab7e8 <+1096>:	cmp    -0x18(%rsp),%r8
   0x00007ffff7fab7ed <+1101>:	jne    0x7ffff7fab680 <gemver_kernel2+736>
   0x00007ffff7fab7f3 <+1107>:	pop    %rbx
   0x00007ffff7fab7f4 <+1108>:	pop    %r12
   0x00007ffff7fab7f6 <+1110>:	pop    %r13
   0x00007ffff7fab7f8 <+1112>:	pop    %r14
   0x00007ffff7fab7fa <+1114>:	pop    %r15
   0x00007ffff7fab7fc <+1116>:	pop    %rbp
   0x00007ffff7fab7fd <+1117>:	vzeroupper 
   0x00007ffff7fab800 <+1120>:	ret    
End of assembler dump.
