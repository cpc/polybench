Dump of assembler code for function adi_kernel5:
=> 0x00007ffff7fcbba0 <+0>:	movslq 0x18(%rdi),%r8
   0x00007ffff7fcbba4 <+4>:	mov    0x58(%rdi),%rax
   0x00007ffff7fcbba8 <+8>:	mov    (%rsi),%r9
   0x00007ffff7fcbbab <+11>:	imul   %rax,%r9
   0x00007ffff7fcbbaf <+15>:	add    0x28(%rdi),%r9
   0x00007ffff7fcbbb3 <+19>:	add    %r9,%rax
   0x00007ffff7fcbbb6 <+22>:	cmp    %r8,%rax
   0x00007ffff7fcbbb9 <+25>:	mov    %r8,%rdx
   0x00007ffff7fcbbbc <+28>:	cmovle %rax,%rdx
   0x00007ffff7fcbbc0 <+32>:	test   %r8,%r8
   0x00007ffff7fcbbc3 <+35>:	cmovs  %rax,%rdx
   0x00007ffff7fcbbc7 <+39>:	sub    %r9,%rdx
   0x00007ffff7fcbbca <+42>:	test   %rdx,%rdx
   0x00007ffff7fcbbcd <+45>:	jle    0x7ffff7fcbc4c <adi_kernel5+172>
   0x00007ffff7fcbbcf <+47>:	mov    0x8(%rdi),%r10
   0x00007ffff7fcbbd3 <+51>:	mov    0x10(%rdi),%rsi
   0x00007ffff7fcbbd7 <+55>:	mov    %rdx,%rax
   0x00007ffff7fcbbda <+58>:	sar    $0x3,%rax
   0x00007ffff7fcbbde <+62>:	mov    %rdx,%rdi
   0x00007ffff7fcbbe1 <+65>:	and    $0xfffffffffffffff8,%rdi
   0x00007ffff7fcbbe5 <+69>:	sub    %rdi,%rdx
   0x00007ffff7fcbbe8 <+72>:	test   %rax,%rax
   0x00007ffff7fcbbeb <+75>:	je     0x7ffff7fcbc1c <adi_kernel5+124>
   0x00007ffff7fcbbed <+77>:	lea    -0x1(%r8),%ecx
   0x00007ffff7fcbbf1 <+81>:	imul   %r8d,%ecx
   0x00007ffff7fcbbf5 <+85>:	lea    (%r9,%rcx,1),%ecx
   0x00007ffff7fcbbf9 <+89>:	nopl   0x0(%rax)
   0x00007ffff7fcbc00 <+96>:	movslq %ecx,%rcx
   0x00007ffff7fcbc03 <+99>:	vmovups (%rsi,%rcx,4),%ymm0
   0x00007ffff7fcbc08 <+104>:	vdivps (%r10,%rcx,4),%ymm0,%ymm0
   0x00007ffff7fcbc0e <+110>:	vmovups %ymm0,(%rsi,%rcx,4)
   0x00007ffff7fcbc13 <+115>:	add    $0x8,%ecx
   0x00007ffff7fcbc16 <+118>:	add    $0xffffffffffffffff,%rax
   0x00007ffff7fcbc1a <+122>:	jne    0x7ffff7fcbc00 <adi_kernel5+96>
   0x00007ffff7fcbc1c <+124>:	test   %rdx,%rdx
   0x00007ffff7fcbc1f <+127>:	je     0x7ffff7fcbc4c <adi_kernel5+172>
   0x00007ffff7fcbc21 <+129>:	add    %r9,%rdi
   0x00007ffff7fcbc24 <+132>:	lea    -0x1(%r8),%eax
   0x00007ffff7fcbc28 <+136>:	imul   %r8d,%eax
   0x00007ffff7fcbc2c <+140>:	add    %eax,%edi
   0x00007ffff7fcbc2e <+142>:	xchg   %ax,%ax
   0x00007ffff7fcbc30 <+144>:	movslq %edi,%rdi
   0x00007ffff7fcbc33 <+147>:	vmovss (%rsi,%rdi,4),%xmm0
   0x00007ffff7fcbc38 <+152>:	vdivss (%r10,%rdi,4),%xmm0,%xmm0
   0x00007ffff7fcbc3e <+158>:	vmovss %xmm0,(%rsi,%rdi,4)
   0x00007ffff7fcbc43 <+163>:	add    $0x1,%edi
   0x00007ffff7fcbc46 <+166>:	add    $0xffffffffffffffff,%rdx
   0x00007ffff7fcbc4a <+170>:	jne    0x7ffff7fcbc30 <adi_kernel5+144>
   0x00007ffff7fcbc4c <+172>:	vzeroupper 
   0x00007ffff7fcbc4f <+175>:	ret    
End of assembler dump.
