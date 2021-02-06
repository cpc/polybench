Dump of assembler code for function adi_kernel6:
=> 0x00007ffff7fcbc50 <+0>:	push   %r14
   0x00007ffff7fcbc52 <+2>:	push   %rbx
   0x00007ffff7fcbc53 <+3>:	movslq 0x1c(%rdi),%r8
   0x00007ffff7fcbc57 <+7>:	mov    0x58(%rdi),%rax
   0x00007ffff7fcbc5b <+11>:	mov    (%rsi),%r9
   0x00007ffff7fcbc5e <+14>:	imul   %rax,%r9
   0x00007ffff7fcbc62 <+18>:	add    0x28(%rdi),%r9
   0x00007ffff7fcbc66 <+22>:	add    %r9,%rax
   0x00007ffff7fcbc69 <+25>:	cmp    %r8,%rax
   0x00007ffff7fcbc6c <+28>:	mov    %r8,%rcx
   0x00007ffff7fcbc6f <+31>:	cmovle %rax,%rcx
   0x00007ffff7fcbc73 <+35>:	test   %r8,%r8
   0x00007ffff7fcbc76 <+38>:	cmovs  %rax,%rcx
   0x00007ffff7fcbc7a <+42>:	sub    %r9,%rcx
   0x00007ffff7fcbc7d <+45>:	test   %rcx,%rcx
   0x00007ffff7fcbc80 <+48>:	jle    0x7ffff7fcbd5c <adi_kernel6+268>
   0x00007ffff7fcbc86 <+54>:	mov    (%rdi),%r11
   0x00007ffff7fcbc89 <+57>:	mov    0x8(%rdi),%rdx
   0x00007ffff7fcbc8d <+61>:	mov    0x10(%rdi),%rsi
   0x00007ffff7fcbc91 <+65>:	mov    0x18(%rdi),%r10d
   0x00007ffff7fcbc95 <+69>:	mov    %rcx,%rax
   0x00007ffff7fcbc98 <+72>:	sar    $0x3,%rax
   0x00007ffff7fcbc9c <+76>:	mov    %rcx,%r14
   0x00007ffff7fcbc9f <+79>:	and    $0xfffffffffffffff8,%r14
   0x00007ffff7fcbca3 <+83>:	sub    %r14,%rcx
   0x00007ffff7fcbca6 <+86>:	test   %rax,%rax
   0x00007ffff7fcbca9 <+89>:	je     0x7ffff7fcbcfd <adi_kernel6+173>
   0x00007ffff7fcbcab <+91>:	mov    $0xfffffffe,%ebx
   0x00007ffff7fcbcb0 <+96>:	sub    %r10d,%ebx
   0x00007ffff7fcbcb3 <+99>:	add    %r8d,%ebx
   0x00007ffff7fcbcb6 <+102>:	imul   %r8d,%ebx
   0x00007ffff7fcbcba <+106>:	mov    $0xfffffffd,%edi
   0x00007ffff7fcbcbf <+111>:	sub    %r10d,%edi
   0x00007ffff7fcbcc2 <+114>:	add    %r8d,%edi
   0x00007ffff7fcbcc5 <+117>:	imul   %r8d,%edi
   0x00007ffff7fcbcc9 <+121>:	add    %r9d,%edi
   0x00007ffff7fcbccc <+124>:	add    %r9d,%ebx
   0x00007ffff7fcbccf <+127>:	nop
   0x00007ffff7fcbcd0 <+128>:	movslq %ebx,%rbx
   0x00007ffff7fcbcd3 <+131>:	movslq %edi,%rdi
   0x00007ffff7fcbcd6 <+134>:	vmovups (%rsi,%rdi,4),%ymm0
   0x00007ffff7fcbcdb <+139>:	vmovups (%r11,%rdi,4),%ymm1
   0x00007ffff7fcbce1 <+145>:	vfnmadd213ps (%rsi,%rbx,4),%ymm0,%ymm1
   0x00007ffff7fcbce7 <+151>:	vdivps (%rdx,%rbx,4),%ymm1,%ymm0
   0x00007ffff7fcbcec <+156>:	vmovups %ymm0,(%rsi,%rbx,4)
   0x00007ffff7fcbcf1 <+161>:	add    $0x8,%edi
   0x00007ffff7fcbcf4 <+164>:	add    $0x8,%ebx
   0x00007ffff7fcbcf7 <+167>:	add    $0xffffffffffffffff,%rax
   0x00007ffff7fcbcfb <+171>:	jne    0x7ffff7fcbcd0 <adi_kernel6+128>
   0x00007ffff7fcbcfd <+173>:	test   %rcx,%rcx
   0x00007ffff7fcbd00 <+176>:	je     0x7ffff7fcbd5c <adi_kernel6+268>
   0x00007ffff7fcbd02 <+178>:	mov    $0xfffffffe,%eax
   0x00007ffff7fcbd07 <+183>:	sub    %r10d,%eax
   0x00007ffff7fcbd0a <+186>:	mov    $0xfffffffd,%edi
   0x00007ffff7fcbd0f <+191>:	sub    %r10d,%edi
   0x00007ffff7fcbd12 <+194>:	add    %r8d,%eax
   0x00007ffff7fcbd15 <+197>:	imul   %r8d,%eax
   0x00007ffff7fcbd19 <+201>:	add    %r8d,%edi
   0x00007ffff7fcbd1c <+204>:	imul   %r8d,%edi
   0x00007ffff7fcbd20 <+208>:	add    %r9,%r14
   0x00007ffff7fcbd23 <+211>:	add    %r14d,%edi
   0x00007ffff7fcbd26 <+214>:	add    %r14d,%eax
   0x00007ffff7fcbd29 <+217>:	nopl   0x0(%rax)
   0x00007ffff7fcbd30 <+224>:	cltq   
   0x00007ffff7fcbd32 <+226>:	movslq %edi,%rdi
   0x00007ffff7fcbd35 <+229>:	vmovss (%rsi,%rdi,4),%xmm0
   0x00007ffff7fcbd3a <+234>:	vmovss (%r11,%rdi,4),%xmm1
   0x00007ffff7fcbd40 <+240>:	vfnmadd213ss (%rsi,%rax,4),%xmm0,%xmm1
   0x00007ffff7fcbd46 <+246>:	vdivss (%rdx,%rax,4),%xmm1,%xmm0
   0x00007ffff7fcbd4b <+251>:	vmovss %xmm0,(%rsi,%rax,4)
   0x00007ffff7fcbd50 <+256>:	add    $0x1,%edi
   0x00007ffff7fcbd53 <+259>:	add    $0x1,%eax
   0x00007ffff7fcbd56 <+262>:	add    $0xffffffffffffffff,%rcx
   0x00007ffff7fcbd5a <+266>:	jne    0x7ffff7fcbd30 <adi_kernel6+224>
   0x00007ffff7fcbd5c <+268>:	pop    %rbx
   0x00007ffff7fcbd5d <+269>:	pop    %r14
   0x00007ffff7fcbd5f <+271>:	vzeroupper 
   0x00007ffff7fcbd62 <+274>:	ret    
End of assembler dump.
