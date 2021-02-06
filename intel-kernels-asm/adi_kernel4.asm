Dump of assembler code for function adi_kernel4:
=> 0x00007ffff7fcba60 <+0>:	push   %r14
   0x00007ffff7fcba62 <+2>:	push   %rbx
   0x00007ffff7fcba63 <+3>:	movslq 0x1c(%rdi),%r8
   0x00007ffff7fcba67 <+7>:	mov    0x58(%rdi),%rax
   0x00007ffff7fcba6b <+11>:	mov    (%rsi),%r9
   0x00007ffff7fcba6e <+14>:	imul   %rax,%r9
   0x00007ffff7fcba72 <+18>:	add    0x28(%rdi),%r9
   0x00007ffff7fcba76 <+22>:	add    %r9,%rax
   0x00007ffff7fcba79 <+25>:	cmp    %r8,%rax
   0x00007ffff7fcba7c <+28>:	mov    %r8,%rcx
   0x00007ffff7fcba7f <+31>:	cmovle %rax,%rcx
   0x00007ffff7fcba83 <+35>:	test   %r8,%r8
   0x00007ffff7fcba86 <+38>:	cmovs  %rax,%rcx
   0x00007ffff7fcba8a <+42>:	sub    %r9,%rcx
   0x00007ffff7fcba8d <+45>:	test   %rcx,%rcx
   0x00007ffff7fcba90 <+48>:	jle    0x7ffff7fcbb8f <adi_kernel4+303>
   0x00007ffff7fcba96 <+54>:	mov    (%rdi),%r11
   0x00007ffff7fcba99 <+57>:	mov    0x8(%rdi),%rdx
   0x00007ffff7fcba9d <+61>:	mov    0x10(%rdi),%r14
   0x00007ffff7fcbaa1 <+65>:	mov    0x18(%rdi),%edi
   0x00007ffff7fcbaa4 <+68>:	mov    %rcx,%rax
   0x00007ffff7fcbaa7 <+71>:	sar    $0x3,%rax
   0x00007ffff7fcbaab <+75>:	mov    %rcx,%r10
   0x00007ffff7fcbaae <+78>:	and    $0xfffffffffffffff8,%r10
   0x00007ffff7fcbab2 <+82>:	sub    %r10,%rcx
   0x00007ffff7fcbab5 <+85>:	test   %rax,%rax
   0x00007ffff7fcbab8 <+88>:	je     0x7ffff7fcbb20 <adi_kernel4+192>
   0x00007ffff7fcbaba <+90>:	mov    %r8d,%ebx
   0x00007ffff7fcbabd <+93>:	imul   %edi,%ebx
   0x00007ffff7fcbac0 <+96>:	lea    -0x1(%rdi),%esi
   0x00007ffff7fcbac3 <+99>:	imul   %r8d,%esi
   0x00007ffff7fcbac7 <+103>:	add    %r9d,%esi
   0x00007ffff7fcbaca <+106>:	add    %r9d,%ebx
   0x00007ffff7fcbacd <+109>:	nopl   (%rax)
   0x00007ffff7fcbad0 <+112>:	movslq %ebx,%rbx
   0x00007ffff7fcbad3 <+115>:	movslq %esi,%rsi
   0x00007ffff7fcbad6 <+118>:	vmovups (%r14,%rsi,4),%ymm0
   0x00007ffff7fcbadc <+124>:	vmulps (%r11,%rbx,4),%ymm0,%ymm0
   0x00007ffff7fcbae2 <+130>:	vdivps (%rdx,%rsi,4),%ymm0,%ymm0
   0x00007ffff7fcbae7 <+135>:	vmovups (%r14,%rbx,4),%ymm1
   0x00007ffff7fcbaed <+141>:	vsubps %ymm0,%ymm1,%ymm0
   0x00007ffff7fcbaf1 <+145>:	vmovups %ymm0,(%r14,%rbx,4)
   0x00007ffff7fcbaf7 <+151>:	vmovups (%r11,%rbx,4),%ymm0
   0x00007ffff7fcbafd <+157>:	vmulps %ymm0,%ymm0,%ymm0
   0x00007ffff7fcbb01 <+161>:	vdivps (%rdx,%rsi,4),%ymm0,%ymm0
   0x00007ffff7fcbb06 <+166>:	vmovups (%rdx,%rbx,4),%ymm1
   0x00007ffff7fcbb0b <+171>:	vsubps %ymm0,%ymm1,%ymm0
   0x00007ffff7fcbb0f <+175>:	vmovups %ymm0,(%rdx,%rbx,4)
   0x00007ffff7fcbb14 <+180>:	add    $0x8,%esi
   0x00007ffff7fcbb17 <+183>:	add    $0x8,%ebx
   0x00007ffff7fcbb1a <+186>:	add    $0xffffffffffffffff,%rax
   0x00007ffff7fcbb1e <+190>:	jne    0x7ffff7fcbad0 <adi_kernel4+112>
   0x00007ffff7fcbb20 <+192>:	test   %rcx,%rcx
   0x00007ffff7fcbb23 <+195>:	je     0x7ffff7fcbb8f <adi_kernel4+303>
   0x00007ffff7fcbb25 <+197>:	mov    %r8d,%eax
   0x00007ffff7fcbb28 <+200>:	imul   %edi,%eax
   0x00007ffff7fcbb2b <+203>:	add    $0xffffffff,%edi
   0x00007ffff7fcbb2e <+206>:	imul   %r8d,%edi
   0x00007ffff7fcbb32 <+210>:	add    %r9,%r10
   0x00007ffff7fcbb35 <+213>:	add    %r10d,%edi
   0x00007ffff7fcbb38 <+216>:	add    %r10d,%eax
   0x00007ffff7fcbb3b <+219>:	nopl   0x0(%rax,%rax,1)
   0x00007ffff7fcbb40 <+224>:	cltq   
   0x00007ffff7fcbb42 <+226>:	movslq %edi,%rdi
   0x00007ffff7fcbb45 <+229>:	vmovss (%r14,%rdi,4),%xmm0
   0x00007ffff7fcbb4b <+235>:	vmulss (%r11,%rax,4),%xmm0,%xmm0
   0x00007ffff7fcbb51 <+241>:	vdivss (%rdx,%rdi,4),%xmm0,%xmm0
   0x00007ffff7fcbb56 <+246>:	vmovss (%r14,%rax,4),%xmm1
   0x00007ffff7fcbb5c <+252>:	vsubss %xmm0,%xmm1,%xmm0
   0x00007ffff7fcbb60 <+256>:	vmovss %xmm0,(%r14,%rax,4)
   0x00007ffff7fcbb66 <+262>:	vmovss (%r11,%rax,4),%xmm0
   0x00007ffff7fcbb6c <+268>:	vmulss %xmm0,%xmm0,%xmm0
   0x00007ffff7fcbb70 <+272>:	vdivss (%rdx,%rdi,4),%xmm0,%xmm0
   0x00007ffff7fcbb75 <+277>:	vmovss (%rdx,%rax,4),%xmm1
   0x00007ffff7fcbb7a <+282>:	vsubss %xmm0,%xmm1,%xmm0
   0x00007ffff7fcbb7e <+286>:	vmovss %xmm0,(%rdx,%rax,4)
   0x00007ffff7fcbb83 <+291>:	add    $0x1,%edi
   0x00007ffff7fcbb86 <+294>:	add    $0x1,%eax
   0x00007ffff7fcbb89 <+297>:	add    $0xffffffffffffffff,%rcx
   0x00007ffff7fcbb8d <+301>:	jne    0x7ffff7fcbb40 <adi_kernel4+224>
   0x00007ffff7fcbb8f <+303>:	pop    %rbx
   0x00007ffff7fcbb90 <+304>:	pop    %r14
   0x00007ffff7fcbb92 <+306>:	vzeroupper 
   0x00007ffff7fcbb95 <+309>:	ret    
End of assembler dump.
