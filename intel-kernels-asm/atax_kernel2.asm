Dump of assembler code for function atax_kernel2:
=> 0x00007ffff7fbf7e0 <+0>:	push   %rbp
   0x00007ffff7fbf7e1 <+1>:	push   %r15
   0x00007ffff7fbf7e3 <+3>:	push   %r14
   0x00007ffff7fbf7e5 <+5>:	push   %r13
   0x00007ffff7fbf7e7 <+7>:	push   %r12
   0x00007ffff7fbf7e9 <+9>:	push   %rbx
   0x00007ffff7fbf7ea <+10>:	movslq 0x18(%rdi),%r15
   0x00007ffff7fbf7ee <+14>:	mov    0x58(%rdi),%rax
   0x00007ffff7fbf7f2 <+18>:	mov    (%rsi),%rsi
   0x00007ffff7fbf7f5 <+21>:	imul   %rax,%rsi
   0x00007ffff7fbf7f9 <+25>:	add    0x28(%rdi),%rsi
   0x00007ffff7fbf7fd <+29>:	movslq 0x1c(%rdi),%rcx
   0x00007ffff7fbf801 <+33>:	add    %rsi,%rax
   0x00007ffff7fbf804 <+36>:	cmp    %rcx,%rax
   0x00007ffff7fbf807 <+39>:	mov    %rcx,%rdx
   0x00007ffff7fbf80a <+42>:	cmovle %rax,%rdx
   0x00007ffff7fbf80e <+46>:	mov    %rcx,-0x38(%rsp)
   0x00007ffff7fbf813 <+51>:	test   %rcx,%rcx
   0x00007ffff7fbf816 <+54>:	cmovs  %rax,%rdx
   0x00007ffff7fbf81a <+58>:	test   %r15,%r15
   0x00007ffff7fbf81d <+61>:	jle    0x7ffff7fbfbbe <atax_kernel2+990>
   0x00007ffff7fbf823 <+67>:	sub    %rsi,%rdx
   0x00007ffff7fbf826 <+70>:	mov    %rdx,%rax
   0x00007ffff7fbf829 <+73>:	test   %rdx,%rdx
   0x00007ffff7fbf82c <+76>:	jle    0x7ffff7fbfbbe <atax_kernel2+990>
   0x00007ffff7fbf832 <+82>:	mov    %rsi,-0x30(%rsp)
   0x00007ffff7fbf837 <+87>:	mov    (%rdi),%r12
   0x00007ffff7fbf83a <+90>:	mov    0x8(%rdi),%rcx
   0x00007ffff7fbf83e <+94>:	mov    0x10(%rdi),%rdi
   0x00007ffff7fbf842 <+98>:	mov    %rax,%rdx
   0x00007ffff7fbf845 <+101>:	sar    $0x3,%rdx
   0x00007ffff7fbf849 <+105>:	mov    %rax,%r13
   0x00007ffff7fbf84c <+108>:	and    $0xfffffffffffffff8,%r13
   0x00007ffff7fbf850 <+112>:	sub    %r13,%rax
   0x00007ffff7fbf853 <+115>:	mov    %rax,-0x28(%rsp)
   0x00007ffff7fbf858 <+120>:	mov    %rdx,-0x8(%rsp)
   0x00007ffff7fbf85d <+125>:	test   %rdx,%rdx
   0x00007ffff7fbf860 <+128>:	je     0x7ffff7fbfa43 <atax_kernel2+611>
   0x00007ffff7fbf866 <+134>:	lea    -0x1(%r15),%rax
   0x00007ffff7fbf86a <+138>:	mov    %rax,-0x10(%rsp)
   0x00007ffff7fbf86f <+143>:	mov    %r15d,%esi
   0x00007ffff7fbf872 <+146>:	and    $0x7,%esi
   0x00007ffff7fbf875 <+149>:	mov    %r15,%r9
   0x00007ffff7fbf878 <+152>:	sub    %rsi,%r9
   0x00007ffff7fbf87b <+155>:	mov    -0x30(%rsp),%rax
   0x00007ffff7fbf880 <+160>:	vmovq  %rax,%xmm0
   0x00007ffff7fbf885 <+165>:	vpbroadcastq %xmm0,%ymm0
   0x00007ffff7fbf88a <+170>:	vpsllq $0x20,%ymm0,%ymm1
   0x00007ffff7fbf88f <+175>:	movabs $0x7ffff7fbe020,%rax
   0x00007ffff7fbf899 <+185>:	vpaddq (%rax),%ymm1,%ymm0
   0x00007ffff7fbf89d <+189>:	movabs $0x7ffff7fbe040,%rax
   0x00007ffff7fbf8a7 <+199>:	vpaddq (%rax),%ymm1,%ymm1
   0x00007ffff7fbf8ab <+203>:	vpextrq $0x1,%xmm1,%rax
   0x00007ffff7fbf8b1 <+209>:	vmovq  %xmm1,%rdx
   0x00007ffff7fbf8b6 <+214>:	sub    %rdx,%rax
   0x00007ffff7fbf8b9 <+217>:	shl    $0x3,%rax
   0x00007ffff7fbf8bd <+221>:	vmovq  %rax,%xmm2
   0x00007ffff7fbf8c2 <+226>:	vpbroadcastq %xmm2,%ymm2
   0x00007ffff7fbf8c7 <+231>:	mov    -0x38(%rsp),%rax
   0x00007ffff7fbf8cc <+236>:	mov    %rax,%r11
   0x00007ffff7fbf8cf <+239>:	shl    $0x5,%r11
   0x00007ffff7fbf8d3 <+243>:	lea    0x0(,%rax,4),%rdx
   0x00007ffff7fbf8db <+251>:	mov    %rsi,-0x18(%rsp)
   0x00007ffff7fbf8e0 <+256>:	neg    %rsi
   0x00007ffff7fbf8e3 <+259>:	mov    %rsi,-0x20(%rsp)
   0x00007ffff7fbf8e8 <+264>:	xor    %r10d,%r10d
   0x00007ffff7fbf8eb <+267>:	nopl   0x0(%rax,%rax,1)
   0x00007ffff7fbf8f0 <+272>:	vmovq  %xmm1,%rbp
   0x00007ffff7fbf8f5 <+277>:	sar    $0x20,%rbp
   0x00007ffff7fbf8f9 <+281>:	cmpq   $0x7,-0x10(%rsp)
   0x00007ffff7fbf8ff <+287>:	jae    0x7ffff7fbf920 <atax_kernel2+320>
   0x00007ffff7fbf901 <+289>:	xor    %r8d,%r8d
   0x00007ffff7fbf904 <+292>:	cmpq   $0x0,-0x18(%rsp)
   0x00007ffff7fbf90a <+298>:	jne    0x7ffff7fbf9e9 <atax_kernel2+521>
   0x00007ffff7fbf910 <+304>:	jmp    0x7ffff7fbfa2c <atax_kernel2+588>
   0x00007ffff7fbf915 <+309>:	data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fbf920 <+320>:	vmovups (%rcx,%rbp,4),%ymm3
   0x00007ffff7fbf925 <+325>:	lea    (%r12,%rbp,4),%rbx
   0x00007ffff7fbf929 <+329>:	xor    %r8d,%r8d
   0x00007ffff7fbf92c <+332>:	nopl   0x0(%rax)
   0x00007ffff7fbf930 <+336>:	vbroadcastss (%rdi,%r8,4),%ymm4
   0x00007ffff7fbf936 <+342>:	vfmadd132ps (%rbx),%ymm3,%ymm4
   0x00007ffff7fbf93b <+347>:	vmovups %ymm4,(%rcx,%rbp,4)
   0x00007ffff7fbf940 <+352>:	vbroadcastss 0x4(%rdi,%r8,4),%ymm3
   0x00007ffff7fbf947 <+359>:	vfmadd132ps (%rbx,%rdx,1),%ymm4,%ymm3
   0x00007ffff7fbf94d <+365>:	vmovups %ymm3,(%rcx,%rbp,4)
   0x00007ffff7fbf952 <+370>:	lea    (%rbx,%rdx,1),%r14
   0x00007ffff7fbf956 <+374>:	vbroadcastss 0x8(%rdi,%r8,4),%ymm4
   0x00007ffff7fbf95d <+381>:	vfmadd132ps (%rdx,%r14,1),%ymm3,%ymm4
   0x00007ffff7fbf963 <+387>:	add    %rdx,%r14
   0x00007ffff7fbf966 <+390>:	vmovups %ymm4,(%rcx,%rbp,4)
   0x00007ffff7fbf96b <+395>:	vbroadcastss 0xc(%rdi,%r8,4),%ymm3
   0x00007ffff7fbf972 <+402>:	vfmadd132ps (%rdx,%r14,1),%ymm4,%ymm3
   0x00007ffff7fbf978 <+408>:	vmovups %ymm3,(%rcx,%rbp,4)
   0x00007ffff7fbf97d <+413>:	add    %rdx,%r14
   0x00007ffff7fbf980 <+416>:	vbroadcastss 0x10(%rdi,%r8,4),%ymm4
   0x00007ffff7fbf987 <+423>:	vfmadd132ps (%rdx,%r14,1),%ymm3,%ymm4
   0x00007ffff7fbf98d <+429>:	add    %rdx,%r14
   0x00007ffff7fbf990 <+432>:	vmovups %ymm4,(%rcx,%rbp,4)
   0x00007ffff7fbf995 <+437>:	vbroadcastss 0x14(%rdi,%r8,4),%ymm3
   0x00007ffff7fbf99c <+444>:	vfmadd132ps (%rdx,%r14,1),%ymm4,%ymm3
   0x00007ffff7fbf9a2 <+450>:	vmovups %ymm3,(%rcx,%rbp,4)
   0x00007ffff7fbf9a7 <+455>:	add    %rdx,%r14
   0x00007ffff7fbf9aa <+458>:	vbroadcastss 0x18(%rdi,%r8,4),%ymm4
   0x00007ffff7fbf9b1 <+465>:	vfmadd132ps (%rdx,%r14,1),%ymm3,%ymm4
   0x00007ffff7fbf9b7 <+471>:	add    %rdx,%r14
   0x00007ffff7fbf9ba <+474>:	vmovups %ymm4,(%rcx,%rbp,4)
   0x00007ffff7fbf9bf <+479>:	vbroadcastss 0x1c(%rdi,%r8,4),%ymm3
   0x00007ffff7fbf9c6 <+486>:	vfmadd132ps (%rdx,%r14,1),%ymm4,%ymm3
   0x00007ffff7fbf9cc <+492>:	vmovups %ymm3,(%rcx,%rbp,4)
   0x00007ffff7fbf9d1 <+497>:	add    $0x8,%r8
   0x00007ffff7fbf9d5 <+501>:	add    %r11,%rbx
   0x00007ffff7fbf9d8 <+504>:	cmp    %r8,%r9
   0x00007ffff7fbf9db <+507>:	jne    0x7ffff7fbf930 <atax_kernel2+336>
   0x00007ffff7fbf9e1 <+513>:	cmpq   $0x0,-0x18(%rsp)
   0x00007ffff7fbf9e7 <+519>:	je     0x7ffff7fbfa2c <atax_kernel2+588>
   0x00007ffff7fbf9e9 <+521>:	vmovups (%rcx,%rbp,4),%ymm3
   0x00007ffff7fbf9ee <+526>:	lea    (%rdi,%r8,4),%rbx
   0x00007ffff7fbf9f2 <+530>:	imul   -0x38(%rsp),%r8
   0x00007ffff7fbf9f8 <+536>:	add    %rbp,%r8
   0x00007ffff7fbf9fb <+539>:	lea    (%r12,%r8,4),%rax
   0x00007ffff7fbf9ff <+543>:	mov    -0x20(%rsp),%rsi
   0x00007ffff7fbfa04 <+548>:	data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fbfa10 <+560>:	vbroadcastss (%rbx),%ymm4
   0x00007ffff7fbfa15 <+565>:	vfmadd231ps (%rax),%ymm4,%ymm3
   0x00007ffff7fbfa1a <+570>:	vmovups %ymm3,(%rcx,%rbp,4)
   0x00007ffff7fbfa1f <+575>:	add    $0x4,%rbx
   0x00007ffff7fbfa23 <+579>:	add    %rdx,%rax
   0x00007ffff7fbfa26 <+582>:	add    $0x1,%rsi
   0x00007ffff7fbfa2a <+586>:	jne    0x7ffff7fbfa10 <atax_kernel2+560>
   0x00007ffff7fbfa2c <+588>:	add    $0x1,%r10
   0x00007ffff7fbfa30 <+592>:	vpaddq %ymm2,%ymm1,%ymm1
   0x00007ffff7fbfa34 <+596>:	vpaddq %ymm2,%ymm0,%ymm0
   0x00007ffff7fbfa38 <+600>:	cmp    -0x8(%rsp),%r10
   0x00007ffff7fbfa3d <+605>:	jne    0x7ffff7fbf8f0 <atax_kernel2+272>
   0x00007ffff7fbfa43 <+611>:	cmpq   $0x0,-0x28(%rsp)
   0x00007ffff7fbfa49 <+617>:	mov    -0x30(%rsp),%rax
   0x00007ffff7fbfa4e <+622>:	je     0x7ffff7fbfbbe <atax_kernel2+990>
   0x00007ffff7fbfa54 <+628>:	add    %rax,%r13
   0x00007ffff7fbfa57 <+631>:	mov    %r15d,%r14d
   0x00007ffff7fbfa5a <+634>:	and    $0x7,%r14d
   0x00007ffff7fbfa5e <+638>:	lea    -0x1(%r15),%r11
   0x00007ffff7fbfa62 <+642>:	sub    %r14,%r15
   0x00007ffff7fbfa65 <+645>:	mov    -0x38(%rsp),%rax
   0x00007ffff7fbfa6a <+650>:	mov    %rax,%r9
   0x00007ffff7fbfa6d <+653>:	shl    $0x5,%r9
   0x00007ffff7fbfa71 <+657>:	lea    0x0(,%rax,4),%rbp
   0x00007ffff7fbfa79 <+665>:	mov    %r14,%r10
   0x00007ffff7fbfa7c <+668>:	neg    %r10
   0x00007ffff7fbfa7f <+671>:	xor    %r8d,%r8d
   0x00007ffff7fbfa82 <+674>:	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fbfa90 <+688>:	movslq %r13d,%rax
   0x00007ffff7fbfa93 <+691>:	cmp    $0x7,%r11
   0x00007ffff7fbfa97 <+695>:	jae    0x7ffff7fbfab0 <atax_kernel2+720>
   0x00007ffff7fbfa99 <+697>:	xor    %ebx,%ebx
   0x00007ffff7fbfa9b <+699>:	test   %r14,%r14
   0x00007ffff7fbfa9e <+702>:	jne    0x7ffff7fbfb74 <atax_kernel2+916>
   0x00007ffff7fbfaa4 <+708>:	jmp    0x7ffff7fbfbab <atax_kernel2+971>
   0x00007ffff7fbfaa9 <+713>:	nopl   0x0(%rax)
   0x00007ffff7fbfab0 <+720>:	lea    (%r12,%rax,4),%rsi
   0x00007ffff7fbfab4 <+724>:	vmovss (%rcx,%rax,4),%xmm0
   0x00007ffff7fbfab9 <+729>:	xor    %ebx,%ebx
   0x00007ffff7fbfabb <+731>:	nopl   0x0(%rax,%rax,1)
   0x00007ffff7fbfac0 <+736>:	vmovss (%rsi),%xmm1
   0x00007ffff7fbfac4 <+740>:	vfmadd132ss (%rdi,%rbx,4),%xmm0,%xmm1
   0x00007ffff7fbfaca <+746>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fbfacf <+751>:	vmovss (%rsi,%rbp,1),%xmm0
   0x00007ffff7fbfad4 <+756>:	vfmadd132ss 0x4(%rdi,%rbx,4),%xmm1,%xmm0
   0x00007ffff7fbfadb <+763>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fbfae0 <+768>:	lea    (%rsi,%rbp,1),%rdx
   0x00007ffff7fbfae4 <+772>:	vmovss 0x0(%rbp,%rdx,1),%xmm1
   0x00007ffff7fbfaea <+778>:	vfmadd132ss 0x8(%rdi,%rbx,4),%xmm0,%xmm1
   0x00007ffff7fbfaf1 <+785>:	add    %rbp,%rdx
   0x00007ffff7fbfaf4 <+788>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fbfaf9 <+793>:	vmovss 0x0(%rbp,%rdx,1),%xmm0
   0x00007ffff7fbfaff <+799>:	vfmadd132ss 0xc(%rdi,%rbx,4),%xmm1,%xmm0
   0x00007ffff7fbfb06 <+806>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fbfb0b <+811>:	add    %rbp,%rdx
   0x00007ffff7fbfb0e <+814>:	vmovss 0x0(%rbp,%rdx,1),%xmm1
   0x00007ffff7fbfb14 <+820>:	vfmadd132ss 0x10(%rdi,%rbx,4),%xmm0,%xmm1
   0x00007ffff7fbfb1b <+827>:	add    %rbp,%rdx
   0x00007ffff7fbfb1e <+830>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fbfb23 <+835>:	vmovss 0x0(%rbp,%rdx,1),%xmm0
   0x00007ffff7fbfb29 <+841>:	vfmadd132ss 0x14(%rdi,%rbx,4),%xmm1,%xmm0
   0x00007ffff7fbfb30 <+848>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fbfb35 <+853>:	add    %rbp,%rdx
   0x00007ffff7fbfb38 <+856>:	vmovss 0x0(%rbp,%rdx,1),%xmm1
   0x00007ffff7fbfb3e <+862>:	vfmadd132ss 0x18(%rdi,%rbx,4),%xmm0,%xmm1
   0x00007ffff7fbfb45 <+869>:	add    %rbp,%rdx
   0x00007ffff7fbfb48 <+872>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fbfb4d <+877>:	vmovss 0x0(%rbp,%rdx,1),%xmm0
   0x00007ffff7fbfb53 <+883>:	vfmadd132ss 0x1c(%rdi,%rbx,4),%xmm1,%xmm0
   0x00007ffff7fbfb5a <+890>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fbfb5f <+895>:	add    $0x8,%rbx
   0x00007ffff7fbfb63 <+899>:	add    %r9,%rsi
   0x00007ffff7fbfb66 <+902>:	cmp    %rbx,%r15
   0x00007ffff7fbfb69 <+905>:	jne    0x7ffff7fbfac0 <atax_kernel2+736>
   0x00007ffff7fbfb6f <+911>:	test   %r14,%r14
   0x00007ffff7fbfb72 <+914>:	je     0x7ffff7fbfbab <atax_kernel2+971>
   0x00007ffff7fbfb74 <+916>:	vmovss (%rcx,%rax,4),%xmm0
   0x00007ffff7fbfb79 <+921>:	lea    (%rdi,%rbx,4),%rsi
   0x00007ffff7fbfb7d <+925>:	imul   -0x38(%rsp),%rbx
   0x00007ffff7fbfb83 <+931>:	add    %rax,%rbx
   0x00007ffff7fbfb86 <+934>:	lea    (%r12,%rbx,4),%rbx
   0x00007ffff7fbfb8a <+938>:	mov    %r10,%rdx
   0x00007ffff7fbfb8d <+941>:	nopl   (%rax)
   0x00007ffff7fbfb90 <+944>:	vmovss (%rbx),%xmm1
   0x00007ffff7fbfb94 <+948>:	vfmadd231ss (%rsi),%xmm1,%xmm0
   0x00007ffff7fbfb99 <+953>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fbfb9e <+958>:	add    $0x4,%rsi
   0x00007ffff7fbfba2 <+962>:	add    %rbp,%rbx
   0x00007ffff7fbfba5 <+965>:	add    $0x1,%rdx
   0x00007ffff7fbfba9 <+969>:	jne    0x7ffff7fbfb90 <atax_kernel2+944>
   0x00007ffff7fbfbab <+971>:	add    $0x1,%r8
   0x00007ffff7fbfbaf <+975>:	add    $0x1,%r13
   0x00007ffff7fbfbb3 <+979>:	cmp    -0x28(%rsp),%r8
   0x00007ffff7fbfbb8 <+984>:	jne    0x7ffff7fbfa90 <atax_kernel2+688>
   0x00007ffff7fbfbbe <+990>:	pop    %rbx
   0x00007ffff7fbfbbf <+991>:	pop    %r12
   0x00007ffff7fbfbc1 <+993>:	pop    %r13
   0x00007ffff7fbfbc3 <+995>:	pop    %r14
   0x00007ffff7fbfbc5 <+997>:	pop    %r15
   0x00007ffff7fbfbc7 <+999>:	pop    %rbp
   0x00007ffff7fbfbc8 <+1000>:	vzeroupper 
   0x00007ffff7fbfbcb <+1003>:	ret    
End of assembler dump.
