Dump of assembler code for function mvt_kernel2:
=> 0x00007ffff7fbb7e0 <+0>:	push   %rbp
   0x00007ffff7fbb7e1 <+1>:	push   %r15
   0x00007ffff7fbb7e3 <+3>:	push   %r14
   0x00007ffff7fbb7e5 <+5>:	push   %r13
   0x00007ffff7fbb7e7 <+7>:	push   %r12
   0x00007ffff7fbb7e9 <+9>:	push   %rbx
   0x00007ffff7fbb7ea <+10>:	mov    0x58(%rdi),%rax
   0x00007ffff7fbb7ee <+14>:	mov    (%rsi),%rsi
   0x00007ffff7fbb7f1 <+17>:	imul   %rax,%rsi
   0x00007ffff7fbb7f5 <+21>:	add    0x28(%rdi),%rsi
   0x00007ffff7fbb7f9 <+25>:	movslq 0x18(%rdi),%rcx
   0x00007ffff7fbb7fd <+29>:	add    %rsi,%rax
   0x00007ffff7fbb800 <+32>:	cmp    %rcx,%rax
   0x00007ffff7fbb803 <+35>:	mov    %rcx,%rdx
   0x00007ffff7fbb806 <+38>:	cmovle %rax,%rdx
   0x00007ffff7fbb80a <+42>:	test   %rcx,%rcx
   0x00007ffff7fbb80d <+45>:	cmovs  %rax,%rdx
   0x00007ffff7fbb811 <+49>:	mov    %rcx,-0x30(%rsp)
   0x00007ffff7fbb816 <+54>:	test   %rcx,%rcx
   0x00007ffff7fbb819 <+57>:	jle    0x7ffff7fbbbce <mvt_kernel2+1006>
   0x00007ffff7fbb81f <+63>:	sub    %rsi,%rdx
   0x00007ffff7fbb822 <+66>:	mov    %rdx,%rax
   0x00007ffff7fbb825 <+69>:	test   %rdx,%rdx
   0x00007ffff7fbb828 <+72>:	jle    0x7ffff7fbbbce <mvt_kernel2+1006>
   0x00007ffff7fbb82e <+78>:	mov    %rsi,-0x20(%rsp)
   0x00007ffff7fbb833 <+83>:	mov    (%rdi),%r12
   0x00007ffff7fbb836 <+86>:	mov    0x8(%rdi),%rsi
   0x00007ffff7fbb83a <+90>:	mov    0x10(%rdi),%rdi
   0x00007ffff7fbb83e <+94>:	mov    %rax,%rcx
   0x00007ffff7fbb841 <+97>:	sar    $0x3,%rcx
   0x00007ffff7fbb845 <+101>:	mov    %rax,%r8
   0x00007ffff7fbb848 <+104>:	and    $0xfffffffffffffff8,%r8
   0x00007ffff7fbb84c <+108>:	sub    %r8,%rax
   0x00007ffff7fbb84f <+111>:	mov    %rax,-0x18(%rsp)
   0x00007ffff7fbb854 <+116>:	mov    %rcx,-0x28(%rsp)
   0x00007ffff7fbb859 <+121>:	test   %rcx,%rcx
   0x00007ffff7fbb85c <+124>:	je     0x7ffff7fbba45 <mvt_kernel2+613>
   0x00007ffff7fbb862 <+130>:	mov    -0x30(%rsp),%rdx
   0x00007ffff7fbb867 <+135>:	lea    -0x1(%rdx),%rax
   0x00007ffff7fbb86b <+139>:	mov    %rax,-0x8(%rsp)
   0x00007ffff7fbb870 <+144>:	mov    %edx,%r15d
   0x00007ffff7fbb873 <+147>:	and    $0x7,%r15d
   0x00007ffff7fbb877 <+151>:	mov    %rdx,%r14
   0x00007ffff7fbb87a <+154>:	sub    %r15,%r14
   0x00007ffff7fbb87d <+157>:	mov    -0x20(%rsp),%rax
   0x00007ffff7fbb882 <+162>:	vmovq  %rax,%xmm0
   0x00007ffff7fbb887 <+167>:	vpbroadcastq %xmm0,%ymm0
   0x00007ffff7fbb88c <+172>:	vpsllq $0x20,%ymm0,%ymm1
   0x00007ffff7fbb891 <+177>:	movabs $0x7ffff7fba020,%rax
   0x00007ffff7fbb89b <+187>:	vpaddq (%rax),%ymm1,%ymm0
   0x00007ffff7fbb89f <+191>:	movabs $0x7ffff7fba040,%rax
   0x00007ffff7fbb8a9 <+201>:	vpaddq (%rax),%ymm1,%ymm1
   0x00007ffff7fbb8ad <+205>:	vpextrq $0x1,%xmm1,%rax
   0x00007ffff7fbb8b3 <+211>:	vmovq  %xmm1,%rcx
   0x00007ffff7fbb8b8 <+216>:	sub    %rcx,%rax
   0x00007ffff7fbb8bb <+219>:	shl    $0x3,%rax
   0x00007ffff7fbb8bf <+223>:	vmovq  %rax,%xmm2
   0x00007ffff7fbb8c4 <+228>:	vpbroadcastq %xmm2,%ymm2
   0x00007ffff7fbb8c9 <+233>:	mov    %rdx,%rbx
   0x00007ffff7fbb8cc <+236>:	shl    $0x5,%rbx
   0x00007ffff7fbb8d0 <+240>:	lea    0x0(,%rdx,4),%rdx
   0x00007ffff7fbb8d8 <+248>:	mov    %r15,%rax
   0x00007ffff7fbb8db <+251>:	neg    %rax
   0x00007ffff7fbb8de <+254>:	mov    %rax,-0x10(%rsp)
   0x00007ffff7fbb8e3 <+259>:	xor    %r10d,%r10d
   0x00007ffff7fbb8e6 <+262>:	nopw   %cs:0x0(%rax,%rax,1)
   0x00007ffff7fbb8f0 <+272>:	vmovq  %xmm1,%r9
   0x00007ffff7fbb8f5 <+277>:	sar    $0x20,%r9
   0x00007ffff7fbb8f9 <+281>:	cmpq   $0x7,-0x8(%rsp)
   0x00007ffff7fbb8ff <+287>:	jae    0x7ffff7fbb920 <mvt_kernel2+320>
   0x00007ffff7fbb901 <+289>:	xor    %ecx,%ecx
   0x00007ffff7fbb903 <+291>:	test   %r15,%r15
   0x00007ffff7fbb906 <+294>:	jne    0x7ffff7fbb9f0 <mvt_kernel2+528>
   0x00007ffff7fbb90c <+300>:	jmp    0x7ffff7fbba2e <mvt_kernel2+590>
   0x00007ffff7fbb911 <+305>:	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fbb920 <+320>:	vmovups (%rsi,%r9,4),%ymm3
   0x00007ffff7fbb926 <+326>:	lea    (%r12,%r9,4),%r13
   0x00007ffff7fbb92a <+330>:	xor    %ecx,%ecx
   0x00007ffff7fbb92c <+332>:	nopl   0x0(%rax)
   0x00007ffff7fbb930 <+336>:	vbroadcastss (%rdi,%rcx,4),%ymm4
   0x00007ffff7fbb936 <+342>:	vfmadd132ps 0x0(%r13),%ymm3,%ymm4
   0x00007ffff7fbb93c <+348>:	vmovups %ymm4,(%rsi,%r9,4)
   0x00007ffff7fbb942 <+354>:	vbroadcastss 0x4(%rdi,%rcx,4),%ymm3
   0x00007ffff7fbb949 <+361>:	vfmadd132ps 0x0(%r13,%rdx,1),%ymm4,%ymm3
   0x00007ffff7fbb950 <+368>:	vmovups %ymm3,(%rsi,%r9,4)
   0x00007ffff7fbb956 <+374>:	lea    (%rdx,%r13,1),%r11
   0x00007ffff7fbb95a <+378>:	vbroadcastss 0x8(%rdi,%rcx,4),%ymm4
   0x00007ffff7fbb961 <+385>:	vfmadd132ps (%rdx,%r11,1),%ymm3,%ymm4
   0x00007ffff7fbb967 <+391>:	add    %rdx,%r11
   0x00007ffff7fbb96a <+394>:	vmovups %ymm4,(%rsi,%r9,4)
   0x00007ffff7fbb970 <+400>:	vbroadcastss 0xc(%rdi,%rcx,4),%ymm3
   0x00007ffff7fbb977 <+407>:	vfmadd132ps (%rdx,%r11,1),%ymm4,%ymm3
   0x00007ffff7fbb97d <+413>:	vmovups %ymm3,(%rsi,%r9,4)
   0x00007ffff7fbb983 <+419>:	add    %rdx,%r11
   0x00007ffff7fbb986 <+422>:	vbroadcastss 0x10(%rdi,%rcx,4),%ymm4
   0x00007ffff7fbb98d <+429>:	vfmadd132ps (%rdx,%r11,1),%ymm3,%ymm4
   0x00007ffff7fbb993 <+435>:	add    %rdx,%r11
   0x00007ffff7fbb996 <+438>:	vmovups %ymm4,(%rsi,%r9,4)
   0x00007ffff7fbb99c <+444>:	vbroadcastss 0x14(%rdi,%rcx,4),%ymm3
   0x00007ffff7fbb9a3 <+451>:	vfmadd132ps (%rdx,%r11,1),%ymm4,%ymm3
   0x00007ffff7fbb9a9 <+457>:	vmovups %ymm3,(%rsi,%r9,4)
   0x00007ffff7fbb9af <+463>:	add    %rdx,%r11
   0x00007ffff7fbb9b2 <+466>:	vbroadcastss 0x18(%rdi,%rcx,4),%ymm4
   0x00007ffff7fbb9b9 <+473>:	vfmadd132ps (%rdx,%r11,1),%ymm3,%ymm4
   0x00007ffff7fbb9bf <+479>:	add    %rdx,%r11
   0x00007ffff7fbb9c2 <+482>:	vmovups %ymm4,(%rsi,%r9,4)
   0x00007ffff7fbb9c8 <+488>:	vbroadcastss 0x1c(%rdi,%rcx,4),%ymm3
   0x00007ffff7fbb9cf <+495>:	vfmadd132ps (%rdx,%r11,1),%ymm4,%ymm3
   0x00007ffff7fbb9d5 <+501>:	vmovups %ymm3,(%rsi,%r9,4)
   0x00007ffff7fbb9db <+507>:	add    $0x8,%rcx
   0x00007ffff7fbb9df <+511>:	add    %rbx,%r13
   0x00007ffff7fbb9e2 <+514>:	cmp    %rcx,%r14
   0x00007ffff7fbb9e5 <+517>:	jne    0x7ffff7fbb930 <mvt_kernel2+336>
   0x00007ffff7fbb9eb <+523>:	test   %r15,%r15
   0x00007ffff7fbb9ee <+526>:	je     0x7ffff7fbba2e <mvt_kernel2+590>
   0x00007ffff7fbb9f0 <+528>:	vmovups (%rsi,%r9,4),%ymm3
   0x00007ffff7fbb9f6 <+534>:	lea    (%rdi,%rcx,4),%rbp
   0x00007ffff7fbb9fa <+538>:	imul   -0x30(%rsp),%rcx
   0x00007ffff7fbba00 <+544>:	add    %r9,%rcx
   0x00007ffff7fbba03 <+547>:	lea    (%r12,%rcx,4),%rcx
   0x00007ffff7fbba07 <+551>:	mov    -0x10(%rsp),%rax
   0x00007ffff7fbba0c <+556>:	nopl   0x0(%rax)
   0x00007ffff7fbba10 <+560>:	vbroadcastss 0x0(%rbp),%ymm4
   0x00007ffff7fbba16 <+566>:	vfmadd231ps (%rcx),%ymm4,%ymm3
   0x00007ffff7fbba1b <+571>:	vmovups %ymm3,(%rsi,%r9,4)
   0x00007ffff7fbba21 <+577>:	add    $0x4,%rbp
   0x00007ffff7fbba25 <+581>:	add    %rdx,%rcx
   0x00007ffff7fbba28 <+584>:	add    $0x1,%rax
   0x00007ffff7fbba2c <+588>:	jne    0x7ffff7fbba10 <mvt_kernel2+560>
   0x00007ffff7fbba2e <+590>:	add    $0x1,%r10
   0x00007ffff7fbba32 <+594>:	vpaddq %ymm2,%ymm1,%ymm1
   0x00007ffff7fbba36 <+598>:	vpaddq %ymm2,%ymm0,%ymm0
   0x00007ffff7fbba3a <+602>:	cmp    -0x28(%rsp),%r10
   0x00007ffff7fbba3f <+607>:	jne    0x7ffff7fbb8f0 <mvt_kernel2+272>
   0x00007ffff7fbba45 <+613>:	cmpq   $0x0,-0x18(%rsp)
   0x00007ffff7fbba4b <+619>:	mov    -0x20(%rsp),%rax
   0x00007ffff7fbba50 <+624>:	je     0x7ffff7fbbbce <mvt_kernel2+1006>
   0x00007ffff7fbba56 <+630>:	add    %rax,%r8
   0x00007ffff7fbba59 <+633>:	mov    -0x30(%rsp),%rax
   0x00007ffff7fbba5e <+638>:	lea    -0x1(%rax),%r9
   0x00007ffff7fbba62 <+642>:	mov    %eax,%r14d
   0x00007ffff7fbba65 <+645>:	and    $0x7,%r14d
   0x00007ffff7fbba69 <+649>:	mov    %rax,%r10
   0x00007ffff7fbba6c <+652>:	sub    %r14,%r10
   0x00007ffff7fbba6f <+655>:	mov    %rax,%r13
   0x00007ffff7fbba72 <+658>:	shl    $0x5,%r13
   0x00007ffff7fbba76 <+662>:	lea    0x0(,%rax,4),%rbp
   0x00007ffff7fbba7e <+670>:	mov    %r14,%rax
   0x00007ffff7fbba81 <+673>:	neg    %rax
   0x00007ffff7fbba84 <+676>:	mov    %rax,-0x28(%rsp)
   0x00007ffff7fbba89 <+681>:	xor    %r15d,%r15d
   0x00007ffff7fbba8c <+684>:	nopl   0x0(%rax)
   0x00007ffff7fbba90 <+688>:	movslq %r8d,%rcx
   0x00007ffff7fbba93 <+691>:	cmp    $0x7,%r9
   0x00007ffff7fbba97 <+695>:	jae    0x7ffff7fbbab0 <mvt_kernel2+720>
   0x00007ffff7fbba99 <+697>:	xor    %ebx,%ebx
   0x00007ffff7fbba9b <+699>:	test   %r14,%r14
   0x00007ffff7fbba9e <+702>:	jne    0x7ffff7fbbb76 <mvt_kernel2+918>
   0x00007ffff7fbbaa4 <+708>:	jmp    0x7ffff7fbbbbb <mvt_kernel2+987>
   0x00007ffff7fbbaa9 <+713>:	nopl   0x0(%rax)
   0x00007ffff7fbbab0 <+720>:	lea    (%r12,%rcx,4),%r11
   0x00007ffff7fbbab4 <+724>:	vmovss (%rsi,%rcx,4),%xmm0
   0x00007ffff7fbbab9 <+729>:	xor    %ebx,%ebx
   0x00007ffff7fbbabb <+731>:	nopl   0x0(%rax,%rax,1)
   0x00007ffff7fbbac0 <+736>:	vmovss (%r11),%xmm1
   0x00007ffff7fbbac5 <+741>:	vfmadd132ss (%rdi,%rbx,4),%xmm0,%xmm1
   0x00007ffff7fbbacb <+747>:	vmovss %xmm1,(%rsi,%rcx,4)
   0x00007ffff7fbbad0 <+752>:	vmovss (%r11,%rbp,1),%xmm0
   0x00007ffff7fbbad6 <+758>:	vfmadd132ss 0x4(%rdi,%rbx,4),%xmm1,%xmm0
   0x00007ffff7fbbadd <+765>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fbbae2 <+770>:	lea    (%r11,%rbp,1),%rax
   0x00007ffff7fbbae6 <+774>:	vmovss 0x0(%rbp,%rax,1),%xmm1
   0x00007ffff7fbbaec <+780>:	vfmadd132ss 0x8(%rdi,%rbx,4),%xmm0,%xmm1
   0x00007ffff7fbbaf3 <+787>:	add    %rbp,%rax
   0x00007ffff7fbbaf6 <+790>:	vmovss %xmm1,(%rsi,%rcx,4)
   0x00007ffff7fbbafb <+795>:	vmovss 0x0(%rbp,%rax,1),%xmm0
   0x00007ffff7fbbb01 <+801>:	vfmadd132ss 0xc(%rdi,%rbx,4),%xmm1,%xmm0
   0x00007ffff7fbbb08 <+808>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fbbb0d <+813>:	add    %rbp,%rax
   0x00007ffff7fbbb10 <+816>:	vmovss 0x0(%rbp,%rax,1),%xmm1
   0x00007ffff7fbbb16 <+822>:	vfmadd132ss 0x10(%rdi,%rbx,4),%xmm0,%xmm1
   0x00007ffff7fbbb1d <+829>:	add    %rbp,%rax
   0x00007ffff7fbbb20 <+832>:	vmovss %xmm1,(%rsi,%rcx,4)
   0x00007ffff7fbbb25 <+837>:	vmovss 0x0(%rbp,%rax,1),%xmm0
   0x00007ffff7fbbb2b <+843>:	vfmadd132ss 0x14(%rdi,%rbx,4),%xmm1,%xmm0
   0x00007ffff7fbbb32 <+850>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fbbb37 <+855>:	add    %rbp,%rax
   0x00007ffff7fbbb3a <+858>:	vmovss 0x0(%rbp,%rax,1),%xmm1
   0x00007ffff7fbbb40 <+864>:	vfmadd132ss 0x18(%rdi,%rbx,4),%xmm0,%xmm1
   0x00007ffff7fbbb47 <+871>:	add    %rbp,%rax
   0x00007ffff7fbbb4a <+874>:	vmovss %xmm1,(%rsi,%rcx,4)
   0x00007ffff7fbbb4f <+879>:	vmovss 0x0(%rbp,%rax,1),%xmm0
   0x00007ffff7fbbb55 <+885>:	vfmadd132ss 0x1c(%rdi,%rbx,4),%xmm1,%xmm0
   0x00007ffff7fbbb5c <+892>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fbbb61 <+897>:	add    $0x8,%rbx
   0x00007ffff7fbbb65 <+901>:	add    %r13,%r11
   0x00007ffff7fbbb68 <+904>:	cmp    %rbx,%r10
   0x00007ffff7fbbb6b <+907>:	jne    0x7ffff7fbbac0 <mvt_kernel2+736>
   0x00007ffff7fbbb71 <+913>:	test   %r14,%r14
   0x00007ffff7fbbb74 <+916>:	je     0x7ffff7fbbbbb <mvt_kernel2+987>
   0x00007ffff7fbbb76 <+918>:	vmovss (%rsi,%rcx,4),%xmm0
   0x00007ffff7fbbb7b <+923>:	lea    (%rdi,%rbx,4),%rdx
   0x00007ffff7fbbb7f <+927>:	imul   -0x30(%rsp),%rbx
   0x00007ffff7fbbb85 <+933>:	add    %rcx,%rbx
   0x00007ffff7fbbb88 <+936>:	lea    (%r12,%rbx,4),%rbx
   0x00007ffff7fbbb8c <+940>:	mov    -0x28(%rsp),%rax
   0x00007ffff7fbbb91 <+945>:	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fbbba0 <+960>:	vmovss (%rbx),%xmm1
   0x00007ffff7fbbba4 <+964>:	vfmadd231ss (%rdx),%xmm1,%xmm0
   0x00007ffff7fbbba9 <+969>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fbbbae <+974>:	add    $0x4,%rdx
   0x00007ffff7fbbbb2 <+978>:	add    %rbp,%rbx
   0x00007ffff7fbbbb5 <+981>:	add    $0x1,%rax
   0x00007ffff7fbbbb9 <+985>:	jne    0x7ffff7fbbba0 <mvt_kernel2+960>
   0x00007ffff7fbbbbb <+987>:	add    $0x1,%r15
   0x00007ffff7fbbbbf <+991>:	add    $0x1,%r8
   0x00007ffff7fbbbc3 <+995>:	cmp    -0x18(%rsp),%r15
   0x00007ffff7fbbbc8 <+1000>:	jne    0x7ffff7fbba90 <mvt_kernel2+688>
   0x00007ffff7fbbbce <+1006>:	pop    %rbx
   0x00007ffff7fbbbcf <+1007>:	pop    %r12
   0x00007ffff7fbbbd1 <+1009>:	pop    %r13
   0x00007ffff7fbbbd3 <+1011>:	pop    %r14
   0x00007ffff7fbbbd5 <+1013>:	pop    %r15
   0x00007ffff7fbbbd7 <+1015>:	pop    %rbp
   0x00007ffff7fbbbd8 <+1016>:	vzeroupper 
   0x00007ffff7fbbbdb <+1019>:	ret    
End of assembler dump.
