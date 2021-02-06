Dump of assembler code for function adi_kernel2:
=> 0x00007ffff7fcb660 <+0>:	movslq 0x18(%rdi),%rax
   0x00007ffff7fcb664 <+4>:	mov    0x58(%rdi),%r8
   0x00007ffff7fcb668 <+8>:	mov    (%rsi),%rcx
   0x00007ffff7fcb66b <+11>:	imul   %r8,%rcx
   0x00007ffff7fcb66f <+15>:	add    0x28(%rdi),%rcx
   0x00007ffff7fcb673 <+19>:	add    %rcx,%r8
   0x00007ffff7fcb676 <+22>:	cmp    %rax,%r8
   0x00007ffff7fcb679 <+25>:	mov    %rax,%rdx
   0x00007ffff7fcb67c <+28>:	cmovle %r8,%rdx
   0x00007ffff7fcb680 <+32>:	test   %rax,%rax
   0x00007ffff7fcb683 <+35>:	cmovs  %r8,%rdx
   0x00007ffff7fcb687 <+39>:	sub    %rcx,%rdx
   0x00007ffff7fcb68a <+42>:	test   %rdx,%rdx
   0x00007ffff7fcb68d <+45>:	jle    0x7ffff7fcb6ba <adi_kernel2+90>
   0x00007ffff7fcb68f <+47>:	mov    0x8(%rdi),%rsi
   0x00007ffff7fcb693 <+51>:	mov    0x10(%rdi),%rdi
   0x00007ffff7fcb697 <+55>:	add    $0x1,%ecx
   0x00007ffff7fcb69a <+58>:	imul   %eax,%ecx
   0x00007ffff7fcb69d <+61>:	add    $0xffffffff,%ecx
   0x00007ffff7fcb6a0 <+64>:	movslq %ecx,%rcx
   0x00007ffff7fcb6a3 <+67>:	vmovss (%rdi,%rcx,4),%xmm0
   0x00007ffff7fcb6a8 <+72>:	vdivss (%rsi,%rcx,4),%xmm0,%xmm0
   0x00007ffff7fcb6ad <+77>:	vmovss %xmm0,(%rdi,%rcx,4)
   0x00007ffff7fcb6b2 <+82>:	add    %eax,%ecx
   0x00007ffff7fcb6b4 <+84>:	add    $0xffffffffffffffff,%rdx
   0x00007ffff7fcb6b8 <+88>:	jne    0x7ffff7fcb6a0 <adi_kernel2+64>
   0x00007ffff7fcb6ba <+90>:	ret    
End of assembler dump.
