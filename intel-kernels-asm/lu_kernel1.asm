Dump of assembler code for function lu_kernel1:
=> 0x00007ffff7fcb180 <+0>:	push   %r14
   0x00007ffff7fcb182 <+2>:	push   %rbx
   0x00007ffff7fcb183 <+3>:	mov    0x8(%rdi),%r8d
   0x00007ffff7fcb187 <+7>:	mov    0xc(%rdi),%r9d
   0x00007ffff7fcb18b <+11>:	lea    0x1(%r8),%eax
   0x00007ffff7fcb18f <+15>:	mov    %r9d,%ecx
   0x00007ffff7fcb192 <+18>:	sub    %eax,%ecx
   0x00007ffff7fcb194 <+20>:	lea    -0x1(%rcx),%edx
   0x00007ffff7fcb197 <+23>:	cmp    %ecx,%edx
   0x00007ffff7fcb199 <+25>:	cmovle %edx,%ecx
   0x00007ffff7fcb19c <+28>:	cmp    %eax,%r9d
   0x00007ffff7fcb19f <+31>:	mov    $0xffffffff,%edx
   0x00007ffff7fcb1a4 <+36>:	cmovg  %ecx,%edx
   0x00007ffff7fcb1a7 <+39>:	movslq %edx,%r14
   0x00007ffff7fcb1aa <+42>:	lea    0x1(%r14),%r10
   0x00007ffff7fcb1ae <+46>:	cmp    %eax,%r9d
   0x00007ffff7fcb1b1 <+49>:	mov    $0x7fffffff,%eax
   0x00007ffff7fcb1b6 <+54>:	mov    $0xfffffffffffffffe,%rdx
   0x00007ffff7fcb1bd <+61>:	cmovle %rax,%rdx
   0x00007ffff7fcb1c1 <+65>:	mov    0x48(%rdi),%rbx
   0x00007ffff7fcb1c5 <+69>:	mov    $0x80000000,%ecx
   0x00007ffff7fcb1ca <+74>:	cmovle %r10,%rcx
   0x00007ffff7fcb1ce <+78>:	mov    (%rsi),%r11
   0x00007ffff7fcb1d1 <+81>:	imul   %rbx,%r11
   0x00007ffff7fcb1d5 <+85>:	add    0x18(%rdi),%r11
   0x00007ffff7fcb1d9 <+89>:	test   %r14d,%r14d
   0x00007ffff7fcb1dc <+92>:	cmovns %r10,%rcx
   0x00007ffff7fcb1e0 <+96>:	add    %r11,%rbx
   0x00007ffff7fcb1e3 <+99>:	cmp    %rcx,%rbx
   0x00007ffff7fcb1e6 <+102>:	mov    %rcx,%rax
   0x00007ffff7fcb1e9 <+105>:	cmovle %rbx,%rax
   0x00007ffff7fcb1ed <+109>:	test   %rcx,%rcx
   0x00007ffff7fcb1f0 <+112>:	cmovs  %rbx,%rax
   0x00007ffff7fcb1f4 <+116>:	cmp    %rdx,%r11
   0x00007ffff7fcb1f7 <+119>:	cmovl  %rdx,%r11
   0x00007ffff7fcb1fb <+123>:	sub    %r11,%rax
   0x00007ffff7fcb1fe <+126>:	test   %rax,%rax
   0x00007ffff7fcb201 <+129>:	jle    0x7ffff7fcb2ab <lu_kernel1+299>
   0x00007ffff7fcb207 <+135>:	mov    (%rdi),%rsi
   0x00007ffff7fcb20a <+138>:	mov    %rax,%rdx
   0x00007ffff7fcb20d <+141>:	sar    $0x3,%rdx
   0x00007ffff7fcb211 <+145>:	mov    %rax,%r10
   0x00007ffff7fcb214 <+148>:	and    $0xfffffffffffffff8,%r10
   0x00007ffff7fcb218 <+152>:	sub    %r10,%rax
   0x00007ffff7fcb21b <+155>:	test   %rdx,%rdx
   0x00007ffff7fcb21e <+158>:	je     0x7ffff7fcb260 <lu_kernel1+224>
   0x00007ffff7fcb220 <+160>:	mov    %r9d,%ecx
   0x00007ffff7fcb223 <+163>:	imul   %r8d,%ecx
   0x00007ffff7fcb227 <+167>:	add    %r8d,%ecx
   0x00007ffff7fcb22a <+170>:	movslq %ecx,%rdi
   0x00007ffff7fcb22d <+173>:	lea    0x1(%r9),%ecx
   0x00007ffff7fcb231 <+177>:	imul   %r8d,%ecx
   0x00007ffff7fcb235 <+181>:	lea    (%rcx,%r11,1),%ecx
   0x00007ffff7fcb239 <+185>:	add    $0x1,%ecx
   0x00007ffff7fcb23c <+188>:	nopl   0x0(%rax)
   0x00007ffff7fcb240 <+192>:	movslq %ecx,%rcx
   0x00007ffff7fcb243 <+195>:	vmovups (%rsi,%rcx,4),%ymm0
   0x00007ffff7fcb248 <+200>:	vbroadcastss (%rsi,%rdi,4),%ymm1
   0x00007ffff7fcb24e <+206>:	vdivps %ymm1,%ymm0,%ymm0
   0x00007ffff7fcb252 <+210>:	vmovups %ymm0,(%rsi,%rcx,4)
   0x00007ffff7fcb257 <+215>:	add    $0x8,%ecx
   0x00007ffff7fcb25a <+218>:	add    $0xffffffffffffffff,%rdx
   0x00007ffff7fcb25e <+222>:	jne    0x7ffff7fcb240 <lu_kernel1+192>
   0x00007ffff7fcb260 <+224>:	test   %rax,%rax
   0x00007ffff7fcb263 <+227>:	je     0x7ffff7fcb2ab <lu_kernel1+299>
   0x00007ffff7fcb265 <+229>:	mov    %r9d,%ecx
   0x00007ffff7fcb268 <+232>:	imul   %r8d,%ecx
   0x00007ffff7fcb26c <+236>:	add    %r11,%r10
   0x00007ffff7fcb26f <+239>:	add    %r8d,%ecx
   0x00007ffff7fcb272 <+242>:	movslq %ecx,%rcx
   0x00007ffff7fcb275 <+245>:	add    $0x1,%r9d
   0x00007ffff7fcb279 <+249>:	imul   %r8d,%r9d
   0x00007ffff7fcb27d <+253>:	lea    (%r9,%r10,1),%edx
   0x00007ffff7fcb281 <+257>:	add    $0x1,%edx
   0x00007ffff7fcb284 <+260>:	data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb290 <+272>:	movslq %edx,%rdx
   0x00007ffff7fcb293 <+275>:	vmovss (%rsi,%rdx,4),%xmm0
   0x00007ffff7fcb298 <+280>:	vdivss (%rsi,%rcx,4),%xmm0,%xmm0
   0x00007ffff7fcb29d <+285>:	vmovss %xmm0,(%rsi,%rdx,4)
   0x00007ffff7fcb2a2 <+290>:	add    $0x1,%edx
   0x00007ffff7fcb2a5 <+293>:	add    $0xffffffffffffffff,%rax
   0x00007ffff7fcb2a9 <+297>:	jne    0x7ffff7fcb290 <lu_kernel1+272>
   0x00007ffff7fcb2ab <+299>:	pop    %rbx
   0x00007ffff7fcb2ac <+300>:	pop    %r14
   0x00007ffff7fcb2ae <+302>:	vzeroupper 
   0x00007ffff7fcb2b1 <+305>:	ret    
End of assembler dump.
