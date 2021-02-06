Dump of assembler code for function std_kernel:
=> 0x00007ffff7fca560 <+0>:	push   %rbp
   0x00007ffff7fca561 <+1>:	push   %r15
   0x00007ffff7fca563 <+3>:	push   %r14
   0x00007ffff7fca565 <+5>:	push   %r13
   0x00007ffff7fca567 <+7>:	push   %r12
   0x00007ffff7fca569 <+9>:	push   %rbx
   0x00007ffff7fca56a <+10>:	mov    0x60(%rdi),%rax
   0x00007ffff7fca56e <+14>:	mov    (%rsi),%rsi
   0x00007ffff7fca571 <+17>:	imul   %rax,%rsi
   0x00007ffff7fca575 <+21>:	add    0x30(%rdi),%rsi
   0x00007ffff7fca579 <+25>:	movslq 0x20(%rdi),%rdx
   0x00007ffff7fca57d <+29>:	add    %rsi,%rax
   0x00007ffff7fca580 <+32>:	cmp    %rdx,%rax
   0x00007ffff7fca583 <+35>:	mov    %rdx,%rcx
   0x00007ffff7fca586 <+38>:	cmovle %rax,%rcx
   0x00007ffff7fca58a <+42>:	mov    %rdx,-0x30(%rsp)
   0x00007ffff7fca58f <+47>:	test   %rdx,%rdx
   0x00007ffff7fca592 <+50>:	cmovs  %rax,%rcx
   0x00007ffff7fca596 <+54>:	mov    %rsi,-0x18(%rsp)
   0x00007ffff7fca59b <+59>:	sub    %rsi,%rcx
   0x00007ffff7fca59e <+62>:	test   %rcx,%rcx
   0x00007ffff7fca5a1 <+65>:	jle    0x7ffff7fcaa01 <std_kernel+1185>
   0x00007ffff7fca5a7 <+71>:	mov    (%rdi),%rdx
   0x00007ffff7fca5aa <+74>:	mov    0x8(%rdi),%rsi
   0x00007ffff7fca5ae <+78>:	mov    0x10(%rdi),%rax
   0x00007ffff7fca5b2 <+82>:	mov    %rax,-0x28(%rsp)
   0x00007ffff7fca5b7 <+87>:	vmovss 0x18(%rdi),%xmm0
   0x00007ffff7fca5bc <+92>:	vmovss 0x1c(%rdi),%xmm1
   0x00007ffff7fca5c1 <+97>:	movslq 0x24(%rdi),%r8
   0x00007ffff7fca5c5 <+101>:	mov    %rcx,%r13
   0x00007ffff7fca5c8 <+104>:	sar    $0x3,%r13
   0x00007ffff7fca5cc <+108>:	mov    %rcx,%r11
   0x00007ffff7fca5cf <+111>:	and    $0xfffffffffffffff8,%r11
   0x00007ffff7fca5d3 <+115>:	sub    %r11,%rcx
   0x00007ffff7fca5d6 <+118>:	mov    %rcx,-0x10(%rsp)
   0x00007ffff7fca5db <+123>:	test   %r13,%r13
   0x00007ffff7fca5de <+126>:	je     0x7ffff7fca81a <std_kernel+698>
   0x00007ffff7fca5e4 <+132>:	vbroadcastss %xmm1,%ymm2
   0x00007ffff7fca5e9 <+137>:	vbroadcastss %xmm0,%ymm3
   0x00007ffff7fca5ee <+142>:	lea    -0x1(%r8),%rax
   0x00007ffff7fca5f2 <+146>:	mov    %rax,-0x20(%rsp)
   0x00007ffff7fca5f7 <+151>:	mov    %r8d,%r15d
   0x00007ffff7fca5fa <+154>:	and    $0x7,%r15d
   0x00007ffff7fca5fe <+158>:	mov    %r8,%r12
   0x00007ffff7fca601 <+161>:	mov    -0x18(%rsp),%rax
   0x00007ffff7fca606 <+166>:	vmovq  %rax,%xmm4
   0x00007ffff7fca60b <+171>:	vpbroadcastq %xmm4,%ymm4
   0x00007ffff7fca610 <+176>:	vpsllq $0x20,%ymm4,%ymm5
   0x00007ffff7fca615 <+181>:	movabs $0x7ffff7fc9040,%rax
   0x00007ffff7fca61f <+191>:	vpaddq (%rax),%ymm5,%ymm4
   0x00007ffff7fca623 <+195>:	sub    %r15,%r12
   0x00007ffff7fca626 <+198>:	movabs $0x7ffff7fc9060,%rax
   0x00007ffff7fca630 <+208>:	vpaddq (%rax),%ymm5,%ymm5
   0x00007ffff7fca634 <+212>:	vmovq  %xmm5,%rax
   0x00007ffff7fca639 <+217>:	vpextrq $0x1,%xmm5,%rcx
   0x00007ffff7fca63f <+223>:	sub    %rax,%rcx
   0x00007ffff7fca642 <+226>:	shl    $0x3,%rcx
   0x00007ffff7fca646 <+230>:	vmovq  %rcx,%xmm6
   0x00007ffff7fca64b <+235>:	vpbroadcastq %xmm6,%ymm6
   0x00007ffff7fca650 <+240>:	mov    -0x30(%rsp),%rcx
   0x00007ffff7fca655 <+245>:	mov    %rcx,%rax
   0x00007ffff7fca658 <+248>:	shl    $0x5,%rax
   0x00007ffff7fca65c <+252>:	lea    0x0(,%rcx,4),%rbx
   0x00007ffff7fca664 <+260>:	mov    %r15,%rcx
   0x00007ffff7fca667 <+263>:	neg    %rcx
   0x00007ffff7fca66a <+266>:	mov    %rcx,-0x8(%rsp)
   0x00007ffff7fca66f <+271>:	xor    %r10d,%r10d
   0x00007ffff7fca672 <+274>:	movabs $0x7ffff7fc9080,%rcx
   0x00007ffff7fca67c <+284>:	vbroadcastss (%rcx),%ymm7
   0x00007ffff7fca681 <+289>:	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fca690 <+304>:	vmovq  %xmm5,%rcx
   0x00007ffff7fca695 <+309>:	mov    %rcx,%rbp
   0x00007ffff7fca698 <+312>:	sar    $0x20,%rbp
   0x00007ffff7fca69c <+316>:	sar    $0x1e,%rcx
   0x00007ffff7fca6a0 <+320>:	vxorps %xmm8,%xmm8,%xmm8
   0x00007ffff7fca6a5 <+325>:	vmovups %ymm8,(%rsi,%rcx,1)
   0x00007ffff7fca6aa <+330>:	test   %r8d,%r8d
   0x00007ffff7fca6ad <+333>:	jle    0x7ffff7fca7ec <std_kernel+652>
   0x00007ffff7fca6b3 <+339>:	cmpq   $0x7,-0x20(%rsp)
   0x00007ffff7fca6b9 <+345>:	jae    0x7ffff7fca6d0 <std_kernel+368>
   0x00007ffff7fca6bb <+347>:	vxorps %xmm8,%xmm8,%xmm8
   0x00007ffff7fca6c0 <+352>:	xor    %ecx,%ecx
   0x00007ffff7fca6c2 <+354>:	test   %r15,%r15
   0x00007ffff7fca6c5 <+357>:	jne    0x7ffff7fca7af <std_kernel+591>
   0x00007ffff7fca6cb <+363>:	jmp    0x7ffff7fca7ec <std_kernel+652>
   0x00007ffff7fca6d0 <+368>:	mov    -0x28(%rsp),%rcx
   0x00007ffff7fca6d5 <+373>:	lea    (%rcx,%rbp,4),%r14
   0x00007ffff7fca6d9 <+377>:	vxorps %xmm8,%xmm8,%xmm8
   0x00007ffff7fca6de <+382>:	xor    %ecx,%ecx
   0x00007ffff7fca6e0 <+384>:	vmovups (%r14),%ymm9
   0x00007ffff7fca6e5 <+389>:	vsubps (%rdx,%rbp,4),%ymm9,%ymm9
   0x00007ffff7fca6ea <+394>:	vfmadd213ps %ymm8,%ymm9,%ymm9
   0x00007ffff7fca6ef <+399>:	vmovups %ymm9,(%rsi,%rbp,4)
   0x00007ffff7fca6f4 <+404>:	vmovups (%r14,%rbx,1),%ymm8
   0x00007ffff7fca6fa <+410>:	vsubps (%rdx,%rbp,4),%ymm8,%ymm8
   0x00007ffff7fca6ff <+415>:	vfmadd213ps %ymm9,%ymm8,%ymm8
   0x00007ffff7fca704 <+420>:	vmovups %ymm8,(%rsi,%rbp,4)
   0x00007ffff7fca709 <+425>:	lea    (%r14,%rbx,1),%r9
   0x00007ffff7fca70d <+429>:	vmovups (%rbx,%r9,1),%ymm9
   0x00007ffff7fca713 <+435>:	vsubps (%rdx,%rbp,4),%ymm9,%ymm9
   0x00007ffff7fca718 <+440>:	vfmadd213ps %ymm8,%ymm9,%ymm9
   0x00007ffff7fca71d <+445>:	vmovups %ymm9,(%rsi,%rbp,4)
   0x00007ffff7fca722 <+450>:	add    %rbx,%r9
   0x00007ffff7fca725 <+453>:	vmovups (%rbx,%r9,1),%ymm8
   0x00007ffff7fca72b <+459>:	vsubps (%rdx,%rbp,4),%ymm8,%ymm8
   0x00007ffff7fca730 <+464>:	vfmadd213ps %ymm9,%ymm8,%ymm8
   0x00007ffff7fca735 <+469>:	vmovups %ymm8,(%rsi,%rbp,4)
   0x00007ffff7fca73a <+474>:	add    %rbx,%r9
   0x00007ffff7fca73d <+477>:	vmovups (%rbx,%r9,1),%ymm9
   0x00007ffff7fca743 <+483>:	vsubps (%rdx,%rbp,4),%ymm9,%ymm9
   0x00007ffff7fca748 <+488>:	vfmadd213ps %ymm8,%ymm9,%ymm9
   0x00007ffff7fca74d <+493>:	vmovups %ymm9,(%rsi,%rbp,4)
   0x00007ffff7fca752 <+498>:	add    %rbx,%r9
   0x00007ffff7fca755 <+501>:	vmovups (%rbx,%r9,1),%ymm8
   0x00007ffff7fca75b <+507>:	vsubps (%rdx,%rbp,4),%ymm8,%ymm8
   0x00007ffff7fca760 <+512>:	vfmadd213ps %ymm9,%ymm8,%ymm8
   0x00007ffff7fca765 <+517>:	vmovups %ymm8,(%rsi,%rbp,4)
   0x00007ffff7fca76a <+522>:	add    %rbx,%r9
   0x00007ffff7fca76d <+525>:	vmovups (%rbx,%r9,1),%ymm9
   0x00007ffff7fca773 <+531>:	vsubps (%rdx,%rbp,4),%ymm9,%ymm9
   0x00007ffff7fca778 <+536>:	vfmadd213ps %ymm8,%ymm9,%ymm9
   0x00007ffff7fca77d <+541>:	vmovups %ymm9,(%rsi,%rbp,4)
   0x00007ffff7fca782 <+546>:	add    %rbx,%r9
   0x00007ffff7fca785 <+549>:	vmovups (%rbx,%r9,1),%ymm8
   0x00007ffff7fca78b <+555>:	vsubps (%rdx,%rbp,4),%ymm8,%ymm8
   0x00007ffff7fca790 <+560>:	vfmadd213ps %ymm9,%ymm8,%ymm8
   0x00007ffff7fca795 <+565>:	vmovups %ymm8,(%rsi,%rbp,4)
   0x00007ffff7fca79a <+570>:	add    $0x8,%rcx
   0x00007ffff7fca79e <+574>:	add    %rax,%r14
   0x00007ffff7fca7a1 <+577>:	cmp    %rcx,%r12
   0x00007ffff7fca7a4 <+580>:	jne    0x7ffff7fca6e0 <std_kernel+384>
   0x00007ffff7fca7aa <+586>:	test   %r15,%r15
   0x00007ffff7fca7ad <+589>:	je     0x7ffff7fca7ec <std_kernel+652>
   0x00007ffff7fca7af <+591>:	imul   -0x30(%rsp),%rcx
   0x00007ffff7fca7b5 <+597>:	add    %rbp,%rcx
   0x00007ffff7fca7b8 <+600>:	mov    -0x28(%rsp),%rdi
   0x00007ffff7fca7bd <+605>:	lea    (%rdi,%rcx,4),%rcx
   0x00007ffff7fca7c1 <+609>:	mov    -0x8(%rsp),%rdi
   0x00007ffff7fca7c6 <+614>:	nopw   %cs:0x0(%rax,%rax,1)
   0x00007ffff7fca7d0 <+624>:	vmovups (%rcx),%ymm9
   0x00007ffff7fca7d4 <+628>:	vsubps (%rdx,%rbp,4),%ymm9,%ymm9
   0x00007ffff7fca7d9 <+633>:	vfmadd231ps %ymm9,%ymm9,%ymm8
   0x00007ffff7fca7de <+638>:	vmovups %ymm8,(%rsi,%rbp,4)
   0x00007ffff7fca7e3 <+643>:	add    %rbx,%rcx
   0x00007ffff7fca7e6 <+646>:	add    $0x1,%rdi
   0x00007ffff7fca7ea <+650>:	jne    0x7ffff7fca7d0 <std_kernel+624>
   0x00007ffff7fca7ec <+652>:	vdivps %ymm3,%ymm8,%ymm8
   0x00007ffff7fca7f0 <+656>:	vsqrtps %ymm8,%ymm8
   0x00007ffff7fca7f5 <+661>:	vcmpnleps %ymm2,%ymm8,%ymm9
   0x00007ffff7fca7fa <+666>:	vblendvps %ymm9,%ymm8,%ymm7,%ymm8
   0x00007ffff7fca800 <+672>:	vmovups %ymm8,(%rsi,%rbp,4)
   0x00007ffff7fca805 <+677>:	add    $0x1,%r10
   0x00007ffff7fca809 <+681>:	vpaddq %ymm6,%ymm5,%ymm5
   0x00007ffff7fca80d <+685>:	vpaddq %ymm6,%ymm4,%ymm4
   0x00007ffff7fca811 <+689>:	cmp    %r13,%r10
   0x00007ffff7fca814 <+692>:	jne    0x7ffff7fca690 <std_kernel+304>
   0x00007ffff7fca81a <+698>:	mov    -0x10(%rsp),%r12
   0x00007ffff7fca81f <+703>:	test   %r12,%r12
   0x00007ffff7fca822 <+706>:	je     0x7ffff7fcaa01 <std_kernel+1185>
   0x00007ffff7fca828 <+712>:	add    -0x18(%rsp),%r11
   0x00007ffff7fca82d <+717>:	lea    -0x1(%r8),%r10
   0x00007ffff7fca831 <+721>:	mov    %r8d,%r14d
   0x00007ffff7fca834 <+724>:	and    $0x7,%r14d
   0x00007ffff7fca838 <+728>:	mov    %r8,%r9
   0x00007ffff7fca83b <+731>:	sub    %r14,%r9
   0x00007ffff7fca83e <+734>:	mov    -0x30(%rsp),%rax
   0x00007ffff7fca843 <+739>:	mov    %rax,%rdi
   0x00007ffff7fca846 <+742>:	shl    $0x5,%rdi
   0x00007ffff7fca84a <+746>:	lea    0x0(,%rax,4),%rax
   0x00007ffff7fca852 <+754>:	mov    %r14,%rcx
   0x00007ffff7fca855 <+757>:	neg    %rcx
   0x00007ffff7fca858 <+760>:	mov    %rcx,-0x20(%rsp)
   0x00007ffff7fca85d <+765>:	xor    %r13d,%r13d
   0x00007ffff7fca860 <+768>:	vxorps %xmm2,%xmm2,%xmm2
   0x00007ffff7fca864 <+772>:	movabs $0x7ffff7fc9080,%rcx
   0x00007ffff7fca86e <+782>:	vmovss (%rcx),%xmm3
   0x00007ffff7fca872 <+786>:	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fca880 <+800>:	movslq %r11d,%rbp
   0x00007ffff7fca883 <+803>:	movl   $0x0,(%rsi,%rbp,4)
   0x00007ffff7fca88a <+810>:	test   %r8d,%r8d
   0x00007ffff7fca88d <+813>:	jle    0x7ffff7fca8b0 <std_kernel+848>
   0x00007ffff7fca88f <+815>:	cmp    $0x7,%r10
   0x00007ffff7fca893 <+819>:	jae    0x7ffff7fca8c0 <std_kernel+864>
   0x00007ffff7fca895 <+821>:	vpxor  %xmm4,%xmm4,%xmm4
   0x00007ffff7fca899 <+825>:	xor    %ecx,%ecx
   0x00007ffff7fca89b <+827>:	test   %r14,%r14
   0x00007ffff7fca89e <+830>:	jne    0x7ffff7fca999 <std_kernel+1081>
   0x00007ffff7fca8a4 <+836>:	jmp    0x7ffff7fca9cc <std_kernel+1132>
   0x00007ffff7fca8a9 <+841>:	nopl   0x0(%rax)
   0x00007ffff7fca8b0 <+848>:	vpxor  %xmm4,%xmm4,%xmm4
   0x00007ffff7fca8b4 <+852>:	jmp    0x7ffff7fca9cc <std_kernel+1132>
   0x00007ffff7fca8b9 <+857>:	nopl   0x0(%rax)
   0x00007ffff7fca8c0 <+864>:	mov    -0x28(%rsp),%rcx
   0x00007ffff7fca8c5 <+869>:	lea    (%rcx,%rbp,4),%r15
   0x00007ffff7fca8c9 <+873>:	vpxor  %xmm4,%xmm4,%xmm4
   0x00007ffff7fca8cd <+877>:	xor    %ecx,%ecx
   0x00007ffff7fca8cf <+879>:	nop
   0x00007ffff7fca8d0 <+880>:	vmovss (%r15),%xmm5
   0x00007ffff7fca8d5 <+885>:	vsubss (%rdx,%rbp,4),%xmm5,%xmm5
   0x00007ffff7fca8da <+890>:	vfmadd213ss %xmm4,%xmm5,%xmm5
   0x00007ffff7fca8df <+895>:	vmovss %xmm5,(%rsi,%rbp,4)
   0x00007ffff7fca8e4 <+900>:	vmovss (%r15,%rax,1),%xmm4
   0x00007ffff7fca8ea <+906>:	vsubss (%rdx,%rbp,4),%xmm4,%xmm4
   0x00007ffff7fca8ef <+911>:	vfmadd213ss %xmm5,%xmm4,%xmm4
   0x00007ffff7fca8f4 <+916>:	vmovss %xmm4,(%rsi,%rbp,4)
   0x00007ffff7fca8f9 <+921>:	lea    (%r15,%rax,1),%rbx
   0x00007ffff7fca8fd <+925>:	vmovss (%rax,%rbx,1),%xmm5
   0x00007ffff7fca902 <+930>:	vsubss (%rdx,%rbp,4),%xmm5,%xmm5
   0x00007ffff7fca907 <+935>:	vfmadd213ss %xmm4,%xmm5,%xmm5
   0x00007ffff7fca90c <+940>:	vmovss %xmm5,(%rsi,%rbp,4)
   0x00007ffff7fca911 <+945>:	add    %rax,%rbx
   0x00007ffff7fca914 <+948>:	vmovss (%rax,%rbx,1),%xmm4
   0x00007ffff7fca919 <+953>:	vsubss (%rdx,%rbp,4),%xmm4,%xmm4
   0x00007ffff7fca91e <+958>:	vfmadd213ss %xmm5,%xmm4,%xmm4
   0x00007ffff7fca923 <+963>:	vmovss %xmm4,(%rsi,%rbp,4)
   0x00007ffff7fca928 <+968>:	add    %rax,%rbx
   0x00007ffff7fca92b <+971>:	vmovss (%rax,%rbx,1),%xmm5
   0x00007ffff7fca930 <+976>:	vsubss (%rdx,%rbp,4),%xmm5,%xmm5
   0x00007ffff7fca935 <+981>:	vfmadd213ss %xmm4,%xmm5,%xmm5
   0x00007ffff7fca93a <+986>:	vmovss %xmm5,(%rsi,%rbp,4)
   0x00007ffff7fca93f <+991>:	add    %rax,%rbx
   0x00007ffff7fca942 <+994>:	vmovss (%rax,%rbx,1),%xmm4
   0x00007ffff7fca947 <+999>:	vsubss (%rdx,%rbp,4),%xmm4,%xmm4
   0x00007ffff7fca94c <+1004>:	vfmadd213ss %xmm5,%xmm4,%xmm4
   0x00007ffff7fca951 <+1009>:	vmovss %xmm4,(%rsi,%rbp,4)
   0x00007ffff7fca956 <+1014>:	add    %rax,%rbx
   0x00007ffff7fca959 <+1017>:	vmovss (%rax,%rbx,1),%xmm5
   0x00007ffff7fca95e <+1022>:	vsubss (%rdx,%rbp,4),%xmm5,%xmm5
   0x00007ffff7fca963 <+1027>:	vfmadd213ss %xmm4,%xmm5,%xmm5
   0x00007ffff7fca968 <+1032>:	vmovss %xmm5,(%rsi,%rbp,4)
   0x00007ffff7fca96d <+1037>:	add    %rax,%rbx
   0x00007ffff7fca970 <+1040>:	vmovss (%rax,%rbx,1),%xmm4
   0x00007ffff7fca975 <+1045>:	vsubss (%rdx,%rbp,4),%xmm4,%xmm4
   0x00007ffff7fca97a <+1050>:	vfmadd213ss %xmm5,%xmm4,%xmm4
   0x00007ffff7fca97f <+1055>:	vmovss %xmm4,(%rsi,%rbp,4)
   0x00007ffff7fca984 <+1060>:	add    $0x8,%rcx
   0x00007ffff7fca988 <+1064>:	add    %rdi,%r15
   0x00007ffff7fca98b <+1067>:	cmp    %rcx,%r9
   0x00007ffff7fca98e <+1070>:	jne    0x7ffff7fca8d0 <std_kernel+880>
   0x00007ffff7fca994 <+1076>:	test   %r14,%r14
   0x00007ffff7fca997 <+1079>:	je     0x7ffff7fca9cc <std_kernel+1132>
   0x00007ffff7fca999 <+1081>:	imul   -0x30(%rsp),%rcx
   0x00007ffff7fca99f <+1087>:	add    %rbp,%rcx
   0x00007ffff7fca9a2 <+1090>:	mov    -0x28(%rsp),%rbx
   0x00007ffff7fca9a7 <+1095>:	lea    (%rbx,%rcx,4),%rcx
   0x00007ffff7fca9ab <+1099>:	mov    -0x20(%rsp),%rbx
   0x00007ffff7fca9b0 <+1104>:	vmovss (%rcx),%xmm5
   0x00007ffff7fca9b4 <+1108>:	vsubss (%rdx,%rbp,4),%xmm5,%xmm5
   0x00007ffff7fca9b9 <+1113>:	vfmadd231ss %xmm5,%xmm5,%xmm4
   0x00007ffff7fca9be <+1118>:	vmovss %xmm4,(%rsi,%rbp,4)
   0x00007ffff7fca9c3 <+1123>:	add    %rax,%rcx
   0x00007ffff7fca9c6 <+1126>:	add    $0x1,%rbx
   0x00007ffff7fca9ca <+1130>:	jne    0x7ffff7fca9b0 <std_kernel+1104>
   0x00007ffff7fca9cc <+1132>:	vdivss %xmm0,%xmm4,%xmm4
   0x00007ffff7fca9d0 <+1136>:	vblendps $0x1,%xmm4,%xmm2,%xmm4
   0x00007ffff7fca9d6 <+1142>:	vsqrtps %xmm4,%xmm4
   0x00007ffff7fca9da <+1146>:	vcmpnless %xmm1,%xmm4,%xmm5
   0x00007ffff7fca9df <+1151>:	vandps %xmm4,%xmm5,%xmm4
   0x00007ffff7fca9e3 <+1155>:	vandnps %xmm3,%xmm5,%xmm5
   0x00007ffff7fca9e7 <+1159>:	vorps  %xmm4,%xmm5,%xmm4
   0x00007ffff7fca9eb <+1163>:	vmovss %xmm4,(%rsi,%rbp,4)
   0x00007ffff7fca9f0 <+1168>:	add    $0x1,%r13
   0x00007ffff7fca9f4 <+1172>:	add    $0x1,%r11
   0x00007ffff7fca9f8 <+1176>:	cmp    %r12,%r13
   0x00007ffff7fca9fb <+1179>:	jne    0x7ffff7fca880 <std_kernel+800>
   0x00007ffff7fcaa01 <+1185>:	pop    %rbx
   0x00007ffff7fcaa02 <+1186>:	pop    %r12
   0x00007ffff7fcaa04 <+1188>:	pop    %r13
   0x00007ffff7fcaa06 <+1190>:	pop    %r14
   0x00007ffff7fcaa08 <+1192>:	pop    %r15
   0x00007ffff7fcaa0a <+1194>:	pop    %rbp
   0x00007ffff7fcaa0b <+1195>:	vzeroupper 
   0x00007ffff7fcaa0e <+1198>:	ret    
End of assembler dump.
