Dump of assembler code for function corr_kernel:
=> 0x00007ffff7fcabf0 <+0>:	push   %rbp
   0x00007ffff7fcabf1 <+1>:	push   %r15
   0x00007ffff7fcabf3 <+3>:	push   %r14
   0x00007ffff7fcabf5 <+5>:	push   %r13
   0x00007ffff7fcabf7 <+7>:	push   %r12
   0x00007ffff7fcabf9 <+9>:	push   %rbx
   0x00007ffff7fcabfa <+10>:	movslq 0x10(%rdi),%rax
   0x00007ffff7fcabfe <+14>:	mov    0x50(%rdi),%rcx
   0x00007ffff7fcac02 <+18>:	mov    (%rsi),%rbp
   0x00007ffff7fcac05 <+21>:	imul   %rcx,%rbp
   0x00007ffff7fcac09 <+25>:	add    0x20(%rdi),%rbp
   0x00007ffff7fcac0d <+29>:	lea    -0x1(%rax),%rdx
   0x00007ffff7fcac11 <+33>:	add    %rbp,%rcx
   0x00007ffff7fcac14 <+36>:	cmp    %rdx,%rcx
   0x00007ffff7fcac17 <+39>:	cmovle %rcx,%rdx
   0x00007ffff7fcac1b <+43>:	test   %rax,%rax
   0x00007ffff7fcac1e <+46>:	cmovle %rcx,%rdx
   0x00007ffff7fcac22 <+50>:	sub    %rbp,%rdx
   0x00007ffff7fcac25 <+53>:	mov    %rdx,-0x10(%rsp)
   0x00007ffff7fcac2a <+58>:	test   %rdx,%rdx
   0x00007ffff7fcac2d <+61>:	jle    0x7ffff7fcb360 <corr_kernel+1904>
   0x00007ffff7fcac33 <+67>:	mov    (%rdi),%rsi
   0x00007ffff7fcac36 <+70>:	mov    0x8(%rdi),%r13
   0x00007ffff7fcac3a <+74>:	movslq 0x14(%rdi),%rbx
   0x00007ffff7fcac3e <+78>:	lea    -0x1(%rbx),%rcx
   0x00007ffff7fcac42 <+82>:	mov    %rcx,-0x50(%rsp)
   0x00007ffff7fcac47 <+87>:	lea    0x1(%rax),%ecx
   0x00007ffff7fcac4a <+90>:	mov    %ecx,-0x44(%rsp)
   0x00007ffff7fcac4e <+94>:	lea    -0x2(%rax),%ecx
   0x00007ffff7fcac51 <+97>:	mov    %ecx,-0x78(%rsp)
   0x00007ffff7fcac55 <+101>:	lea    0x7(%rax),%edi
   0x00007ffff7fcac58 <+104>:	mov    %ebx,%edx
   0x00007ffff7fcac5a <+106>:	and    $0x7,%edx
   0x00007ffff7fcac5d <+109>:	mov    %rbx,%rcx
   0x00007ffff7fcac60 <+112>:	mov    %rcx,-0x18(%rsp)
   0x00007ffff7fcac65 <+117>:	mov    %rbx,%r12
   0x00007ffff7fcac68 <+120>:	mov    %eax,%ecx
   0x00007ffff7fcac6a <+122>:	imul   %ebp,%ecx
   0x00007ffff7fcac6d <+125>:	mov    %ecx,-0x74(%rsp)
   0x00007ffff7fcac71 <+129>:	sub    %rdx,%r12
   0x00007ffff7fcac74 <+132>:	lea    0x0(,%rax,4),%r11
   0x00007ffff7fcac7c <+140>:	mov    %edi,-0x48(%rsp)
   0x00007ffff7fcac80 <+144>:	sub    %ebp,%edi
   0x00007ffff7fcac82 <+146>:	mov    %edi,-0x7c(%rsp)
   0x00007ffff7fcac86 <+150>:	lea    0x1c(%rsi),%rcx
   0x00007ffff7fcac8a <+154>:	mov    %rcx,-0x28(%rsp)
   0x00007ffff7fcac8f <+159>:	mov    %rax,%r14
   0x00007ffff7fcac92 <+162>:	shl    $0x5,%r14
   0x00007ffff7fcac96 <+166>:	mov    %rdx,-0x58(%rsp)
   0x00007ffff7fcac9b <+171>:	neg    %rdx
   0x00007ffff7fcac9e <+174>:	mov    %rdx,-0x60(%rsp)
   0x00007ffff7fcaca3 <+179>:	lea    0x4(%r13),%rcx
   0x00007ffff7fcaca7 <+183>:	mov    %rcx,-0x20(%rsp)
   0x00007ffff7fcacac <+188>:	xor    %edi,%edi
   0x00007ffff7fcacae <+190>:	mov    %ebp,%ecx
   0x00007ffff7fcacb0 <+192>:	mov    %r12,-0x38(%rsp)
   0x00007ffff7fcacb5 <+197>:	mov    %r11,-0x40(%rsp)
   0x00007ffff7fcacba <+202>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fcacc0 <+208>:	mov    %rdi,-0x8(%rsp)
   0x00007ffff7fcacc5 <+213>:	movslq %ecx,%r9
   0x00007ffff7fcacc8 <+216>:	mov    %eax,%ecx
   0x00007ffff7fcacca <+218>:	imul   %ebp,%ecx
   0x00007ffff7fcaccd <+221>:	lea    (%rcx,%rbp,1),%edx
   0x00007ffff7fcacd0 <+224>:	movslq %edx,%rdx
   0x00007ffff7fcacd3 <+227>:	movl   $0x3f800000,(%rsi,%rdx,4)
   0x00007ffff7fcacda <+234>:	mov    %rbp,-0x70(%rsp)
   0x00007ffff7fcacdf <+239>:	lea    0x1(%rbp),%edx
   0x00007ffff7fcace2 <+242>:	cmp    %eax,%edx
   0x00007ffff7fcace4 <+244>:	jge    0x7ffff7fcb330 <corr_kernel+1856>
   0x00007ffff7fcacea <+250>:	mov    -0x70(%rsp),%rdx
   0x00007ffff7fcacef <+255>:	movslq %edx,%r15
   0x00007ffff7fcacf2 <+258>:	lea    0x1(%r15),%r8
   0x00007ffff7fcacf6 <+262>:	cmpl   $0x0,-0x18(%rsp)
   0x00007ffff7fcacfb <+267>:	jle    0x7ffff7fcad32 <corr_kernel+322>
   0x00007ffff7fcacfd <+269>:	movslq %ecx,%rbp
   0x00007ffff7fcad00 <+272>:	mov    -0x44(%rsp),%ecx
   0x00007ffff7fcad04 <+276>:	sub    %edx,%ecx
   0x00007ffff7fcad06 <+278>:	test   $0x1,%cl
   0x00007ffff7fcad09 <+281>:	je     0x7ffff7fcaf35 <corr_kernel+837>
   0x00007ffff7fcad0f <+287>:	lea    (%r8,%rbp,1),%rcx
   0x00007ffff7fcad13 <+291>:	cmpq   $0x7,-0x50(%rsp)
   0x00007ffff7fcad19 <+297>:	jae    0x7ffff7fcae09 <corr_kernel+537>
   0x00007ffff7fcad1f <+303>:	xor    %edx,%edx
   0x00007ffff7fcad21 <+305>:	cmpq   $0x0,-0x58(%rsp)
   0x00007ffff7fcad27 <+311>:	jne    0x7ffff7fcaedd <corr_kernel+749>
   0x00007ffff7fcad2d <+317>:	jmp    0x7ffff7fcaf1e <corr_kernel+814>
   0x00007ffff7fcad32 <+322>:	movslq -0x74(%rsp),%r10
   0x00007ffff7fcad37 <+327>:	mov    -0x48(%rsp),%ecx
   0x00007ffff7fcad3b <+331>:	sub    %edx,%ecx
   0x00007ffff7fcad3d <+333>:	mov    -0x78(%rsp),%ebp
   0x00007ffff7fcad41 <+337>:	sub    %edx,%ebp
   0x00007ffff7fcad43 <+339>:	test   $0x7,%cl
   0x00007ffff7fcad46 <+342>:	je     0x7ffff7fcad82 <corr_kernel+402>
   0x00007ffff7fcad48 <+344>:	lea    0x1(%r9),%rcx
   0x00007ffff7fcad4c <+348>:	imul   %rax,%rcx
   0x00007ffff7fcad50 <+352>:	add    %r9,%rcx
   0x00007ffff7fcad53 <+355>:	lea    (%rsi,%rcx,4),%rbx
   0x00007ffff7fcad57 <+359>:	lea    (%rsi,%r10,4),%rcx
   0x00007ffff7fcad5b <+363>:	mov    -0x7c(%rsp),%edx
   0x00007ffff7fcad5f <+367>:	and    $0x7,%dl
   0x00007ffff7fcad62 <+370>:	movzbl %dl,%edx
   0x00007ffff7fcad65 <+373>:	neg    %edx
   0x00007ffff7fcad67 <+375>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fcad70 <+384>:	mov    (%rcx,%r8,4),%edi
   0x00007ffff7fcad74 <+388>:	mov    %edi,(%rbx)
   0x00007ffff7fcad76 <+390>:	add    $0x1,%r8
   0x00007ffff7fcad7a <+394>:	add    %r11,%rbx
   0x00007ffff7fcad7d <+397>:	add    $0x1,%edx
   0x00007ffff7fcad80 <+400>:	jne    0x7ffff7fcad70 <corr_kernel+384>
   0x00007ffff7fcad82 <+402>:	cmp    $0x7,%ebp
   0x00007ffff7fcad85 <+405>:	jb     0x7ffff7fcb330 <corr_kernel+1856>
   0x00007ffff7fcad8b <+411>:	mov    %eax,%edx
   0x00007ffff7fcad8d <+413>:	sub    %r8d,%edx
   0x00007ffff7fcad90 <+416>:	add    %r8,%r10
   0x00007ffff7fcad93 <+419>:	mov    -0x28(%rsp),%rcx
   0x00007ffff7fcad98 <+424>:	lea    (%rcx,%r10,4),%rcx
   0x00007ffff7fcad9c <+428>:	imul   %rax,%r8
   0x00007ffff7fcada0 <+432>:	add    %r9,%r8
   0x00007ffff7fcada3 <+435>:	lea    (%rsi,%r8,4),%rbx
   0x00007ffff7fcada7 <+439>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fcadb0 <+448>:	mov    -0x1c(%rcx),%edi
   0x00007ffff7fcadb3 <+451>:	mov    %edi,(%rbx)
   0x00007ffff7fcadb5 <+453>:	mov    -0x18(%rcx),%edi
   0x00007ffff7fcadb8 <+456>:	mov    %edi,(%rbx,%r11,1)
   0x00007ffff7fcadbc <+460>:	lea    (%rbx,%r11,1),%rdi
   0x00007ffff7fcadc0 <+464>:	mov    -0x14(%rcx),%ebp
   0x00007ffff7fcadc3 <+467>:	mov    %ebp,(%r11,%rdi,1)
   0x00007ffff7fcadc7 <+471>:	add    %r11,%rdi
   0x00007ffff7fcadca <+474>:	mov    -0x10(%rcx),%ebp
   0x00007ffff7fcadcd <+477>:	mov    %ebp,(%r11,%rdi,1)
   0x00007ffff7fcadd1 <+481>:	add    %r11,%rdi
   0x00007ffff7fcadd4 <+484>:	mov    -0xc(%rcx),%ebp
   0x00007ffff7fcadd7 <+487>:	mov    %ebp,(%r11,%rdi,1)
   0x00007ffff7fcaddb <+491>:	add    %r11,%rdi
   0x00007ffff7fcadde <+494>:	mov    -0x8(%rcx),%ebp
   0x00007ffff7fcade1 <+497>:	mov    %ebp,(%r11,%rdi,1)
   0x00007ffff7fcade5 <+501>:	add    %r11,%rdi
   0x00007ffff7fcade8 <+504>:	mov    -0x4(%rcx),%ebp
   0x00007ffff7fcadeb <+507>:	mov    %ebp,(%r11,%rdi,1)
   0x00007ffff7fcadef <+511>:	add    %r11,%rdi
   0x00007ffff7fcadf2 <+514>:	mov    (%rcx),%ebp
   0x00007ffff7fcadf4 <+516>:	mov    %ebp,(%r11,%rdi,1)
   0x00007ffff7fcadf8 <+520>:	add    $0x20,%rcx
   0x00007ffff7fcadfc <+524>:	add    %r14,%rbx
   0x00007ffff7fcadff <+527>:	add    $0xfffffff8,%edx
   0x00007ffff7fcae02 <+530>:	jne    0x7ffff7fcadb0 <corr_kernel+448>
   0x00007ffff7fcae04 <+532>:	jmp    0x7ffff7fcb330 <corr_kernel+1856>
   0x00007ffff7fcae09 <+537>:	lea    0x0(,%r9,4),%rbx
   0x00007ffff7fcae11 <+545>:	add    %r13,%rbx
   0x00007ffff7fcae14 <+548>:	vmovss (%rsi,%rcx,4),%xmm0
   0x00007ffff7fcae19 <+553>:	xor    %edx,%edx
   0x00007ffff7fcae1b <+555>:	nopl   0x0(%rax,%rax,1)
   0x00007ffff7fcae20 <+560>:	vmovss (%rbx),%xmm1
   0x00007ffff7fcae24 <+564>:	vfmadd132ss 0x4(%rbx),%xmm0,%xmm1
   0x00007ffff7fcae2a <+570>:	vmovss %xmm1,(%rsi,%rcx,4)
   0x00007ffff7fcae2f <+575>:	vmovss (%rbx,%r11,1),%xmm0
   0x00007ffff7fcae35 <+581>:	vfmadd132ss 0x4(%rbx,%r11,1),%xmm1,%xmm0
   0x00007ffff7fcae3c <+588>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fcae41 <+593>:	lea    (%rbx,%r11,1),%rdi
   0x00007ffff7fcae45 <+597>:	vmovss (%r11,%rdi,1),%xmm1
   0x00007ffff7fcae4b <+603>:	vfmadd132ss 0x4(%r11,%rdi,1),%xmm0,%xmm1
   0x00007ffff7fcae52 <+610>:	lea    (%rdi,%r11,1),%rdi
   0x00007ffff7fcae56 <+614>:	vmovss %xmm1,(%rsi,%rcx,4)
   0x00007ffff7fcae5b <+619>:	vmovss (%r11,%rdi,1),%xmm0
   0x00007ffff7fcae61 <+625>:	vfmadd132ss 0x4(%r11,%rdi,1),%xmm1,%xmm0
   0x00007ffff7fcae68 <+632>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fcae6d <+637>:	lea    (%rdi,%r11,1),%rdi
   0x00007ffff7fcae71 <+641>:	vmovss (%r11,%rdi,1),%xmm1
   0x00007ffff7fcae77 <+647>:	vfmadd132ss 0x4(%r11,%rdi,1),%xmm0,%xmm1
   0x00007ffff7fcae7e <+654>:	lea    (%rdi,%r11,1),%rdi
   0x00007ffff7fcae82 <+658>:	vmovss %xmm1,(%rsi,%rcx,4)
   0x00007ffff7fcae87 <+663>:	vmovss (%r11,%rdi,1),%xmm0
   0x00007ffff7fcae8d <+669>:	vfmadd132ss 0x4(%r11,%rdi,1),%xmm1,%xmm0
   0x00007ffff7fcae94 <+676>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fcae99 <+681>:	lea    (%rdi,%r11,1),%rdi
   0x00007ffff7fcae9d <+685>:	vmovss (%r11,%rdi,1),%xmm1
   0x00007ffff7fcaea3 <+691>:	vfmadd132ss 0x4(%r11,%rdi,1),%xmm0,%xmm1
   0x00007ffff7fcaeaa <+698>:	lea    (%rdi,%r11,1),%rdi
   0x00007ffff7fcaeae <+702>:	vmovss %xmm1,(%rsi,%rcx,4)
   0x00007ffff7fcaeb3 <+707>:	vmovss (%r11,%rdi,1),%xmm0
   0x00007ffff7fcaeb9 <+713>:	vfmadd132ss 0x4(%r11,%rdi,1),%xmm1,%xmm0
   0x00007ffff7fcaec0 <+720>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fcaec5 <+725>:	add    $0x8,%rdx
   0x00007ffff7fcaec9 <+729>:	add    %r14,%rbx
   0x00007ffff7fcaecc <+732>:	cmp    %rdx,%r12
   0x00007ffff7fcaecf <+735>:	jne    0x7ffff7fcae20 <corr_kernel+560>
   0x00007ffff7fcaed5 <+741>:	cmpq   $0x0,-0x58(%rsp)
   0x00007ffff7fcaedb <+747>:	je     0x7ffff7fcaf1e <corr_kernel+814>
   0x00007ffff7fcaedd <+749>:	vmovss (%rsi,%rcx,4),%xmm0
   0x00007ffff7fcaee2 <+754>:	imul   %rax,%rdx
   0x00007ffff7fcaee6 <+758>:	add    %r9,%rdx
   0x00007ffff7fcaee9 <+761>:	mov    -0x20(%rsp),%rdi
   0x00007ffff7fcaeee <+766>:	lea    (%rdi,%rdx,4),%rdx
   0x00007ffff7fcaef2 <+770>:	mov    -0x60(%rsp),%rbx
   0x00007ffff7fcaef7 <+775>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fcaf00 <+784>:	vmovss -0x4(%rdx),%xmm1
   0x00007ffff7fcaf05 <+789>:	vfmadd231ss (%rdx),%xmm1,%xmm0
   0x00007ffff7fcaf0a <+794>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fcaf0f <+799>:	add    %r11,%rdx
   0x00007ffff7fcaf12 <+802>:	add    $0x1,%rbx
   0x00007ffff7fcaf16 <+806>:	jne    0x7ffff7fcaf00 <corr_kernel+784>
   0x00007ffff7fcaf18 <+808>:	vmovd  %xmm0,%ecx
   0x00007ffff7fcaf1c <+812>:	jmp    0x7ffff7fcaf21 <corr_kernel+817>
   0x00007ffff7fcaf1e <+814>:	mov    (%rsi,%rcx,4),%ecx
   0x00007ffff7fcaf21 <+817>:	mov    -0x70(%rsp),%rdx
   0x00007ffff7fcaf26 <+822>:	imul   %rax,%r8
   0x00007ffff7fcaf2a <+826>:	add    %r15,%r8
   0x00007ffff7fcaf2d <+829>:	mov    %ecx,(%rsi,%r8,4)
   0x00007ffff7fcaf31 <+833>:	lea    0x2(%r15),%r8
   0x00007ffff7fcaf35 <+837>:	cmp    %edx,-0x78(%rsp)
   0x00007ffff7fcaf39 <+841>:	je     0x7ffff7fcb330 <corr_kernel+1856>
   0x00007ffff7fcaf3f <+847>:	lea    0x0(,%r8,4),%r10
   0x00007ffff7fcaf47 <+855>:	lea    0x1(%r8),%rcx
   0x00007ffff7fcaf4b <+859>:	mov    %rcx,-0x30(%rsp)
   0x00007ffff7fcaf50 <+864>:	mov    %rbp,-0x68(%rsp)
   0x00007ffff7fcaf55 <+869>:	data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcaf60 <+880>:	lea    (%r8,%rbp,1),%rcx
   0x00007ffff7fcaf64 <+884>:	cmpq   $0x7,-0x50(%rsp)
   0x00007ffff7fcaf6a <+890>:	jae    0x7ffff7fcaf80 <corr_kernel+912>
   0x00007ffff7fcaf6c <+892>:	xor    %ebx,%ebx
   0x00007ffff7fcaf6e <+894>:	cmpq   $0x0,-0x58(%rsp)
   0x00007ffff7fcaf74 <+900>:	jne    0x7ffff7fcb0bc <corr_kernel+1228>
   0x00007ffff7fcaf7a <+906>:	jmp    0x7ffff7fcb100 <corr_kernel+1296>
   0x00007ffff7fcaf7f <+911>:	nop
   0x00007ffff7fcaf80 <+912>:	vmovss (%rsi,%rcx,4),%xmm0
   0x00007ffff7fcaf85 <+917>:	mov    %r13,%rdx
   0x00007ffff7fcaf88 <+920>:	xor    %ebx,%ebx
   0x00007ffff7fcaf8a <+922>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fcaf90 <+928>:	vmovss (%rdx,%r9,4),%xmm1
   0x00007ffff7fcaf96 <+934>:	vfmadd132ss (%rdx,%r10,1),%xmm0,%xmm1
   0x00007ffff7fcaf9c <+940>:	vmovss %xmm1,(%rsi,%rcx,4)
   0x00007ffff7fcafa1 <+945>:	mov    %rbx,%rdi
   0x00007ffff7fcafa4 <+948>:	or     $0x1,%rdi
   0x00007ffff7fcafa8 <+952>:	imul   %rax,%rdi
   0x00007ffff7fcafac <+956>:	lea    (%rdi,%r15,1),%rbp
   0x00007ffff7fcafb0 <+960>:	vmovss 0x0(%r13,%rbp,4),%xmm0
   0x00007ffff7fcafb7 <+967>:	add    %r8,%rdi
   0x00007ffff7fcafba <+970>:	vfmadd132ss 0x0(%r13,%rdi,4),%xmm1,%xmm0
   0x00007ffff7fcafc1 <+977>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fcafc6 <+982>:	mov    %rbx,%rdi
   0x00007ffff7fcafc9 <+985>:	or     $0x2,%rdi
   0x00007ffff7fcafcd <+989>:	imul   %rax,%rdi
   0x00007ffff7fcafd1 <+993>:	lea    (%rdi,%r15,1),%rbp
   0x00007ffff7fcafd5 <+997>:	vmovss 0x0(%r13,%rbp,4),%xmm1
   0x00007ffff7fcafdc <+1004>:	add    %r8,%rdi
   0x00007ffff7fcafdf <+1007>:	vfmadd132ss 0x0(%r13,%rdi,4),%xmm0,%xmm1
   0x00007ffff7fcafe6 <+1014>:	vmovss %xmm1,(%rsi,%rcx,4)
   0x00007ffff7fcafeb <+1019>:	mov    %rbx,%rdi
   0x00007ffff7fcafee <+1022>:	or     $0x3,%rdi
   0x00007ffff7fcaff2 <+1026>:	imul   %rax,%rdi
   0x00007ffff7fcaff6 <+1030>:	lea    (%rdi,%r15,1),%rbp
   0x00007ffff7fcaffa <+1034>:	vmovss 0x0(%r13,%rbp,4),%xmm0
   0x00007ffff7fcb001 <+1041>:	add    %r8,%rdi
   0x00007ffff7fcb004 <+1044>:	vfmadd132ss 0x0(%r13,%rdi,4),%xmm1,%xmm0
   0x00007ffff7fcb00b <+1051>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fcb010 <+1056>:	mov    %rbx,%rdi
   0x00007ffff7fcb013 <+1059>:	or     $0x4,%rdi
   0x00007ffff7fcb017 <+1063>:	imul   %rax,%rdi
   0x00007ffff7fcb01b <+1067>:	lea    (%rdi,%r15,1),%rbp
   0x00007ffff7fcb01f <+1071>:	vmovss 0x0(%r13,%rbp,4),%xmm1
   0x00007ffff7fcb026 <+1078>:	add    %r8,%rdi
   0x00007ffff7fcb029 <+1081>:	vfmadd132ss 0x0(%r13,%rdi,4),%xmm0,%xmm1
   0x00007ffff7fcb030 <+1088>:	vmovss %xmm1,(%rsi,%rcx,4)
   0x00007ffff7fcb035 <+1093>:	mov    %rbx,%rdi
   0x00007ffff7fcb038 <+1096>:	or     $0x5,%rdi
   0x00007ffff7fcb03c <+1100>:	imul   %rax,%rdi
   0x00007ffff7fcb040 <+1104>:	lea    (%rdi,%r15,1),%rbp
   0x00007ffff7fcb044 <+1108>:	vmovss 0x0(%r13,%rbp,4),%xmm0
   0x00007ffff7fcb04b <+1115>:	add    %r8,%rdi
   0x00007ffff7fcb04e <+1118>:	vfmadd132ss 0x0(%r13,%rdi,4),%xmm1,%xmm0
   0x00007ffff7fcb055 <+1125>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fcb05a <+1130>:	mov    %rbx,%rdi
   0x00007ffff7fcb05d <+1133>:	or     $0x6,%rdi
   0x00007ffff7fcb061 <+1137>:	imul   %rax,%rdi
   0x00007ffff7fcb065 <+1141>:	lea    (%rdi,%r15,1),%rbp
   0x00007ffff7fcb069 <+1145>:	vmovss 0x0(%r13,%rbp,4),%xmm1
   0x00007ffff7fcb070 <+1152>:	add    %r8,%rdi
   0x00007ffff7fcb073 <+1155>:	vfmadd132ss 0x0(%r13,%rdi,4),%xmm0,%xmm1
   0x00007ffff7fcb07a <+1162>:	vmovss %xmm1,(%rsi,%rcx,4)
   0x00007ffff7fcb07f <+1167>:	mov    %rbx,%rdi
   0x00007ffff7fcb082 <+1170>:	or     $0x7,%rdi
   0x00007ffff7fcb086 <+1174>:	imul   %rax,%rdi
   0x00007ffff7fcb08a <+1178>:	lea    (%rdi,%r15,1),%rbp
   0x00007ffff7fcb08e <+1182>:	vmovss 0x0(%r13,%rbp,4),%xmm0
   0x00007ffff7fcb095 <+1189>:	add    %r8,%rdi
   0x00007ffff7fcb098 <+1192>:	vfmadd132ss 0x0(%r13,%rdi,4),%xmm1,%xmm0
   0x00007ffff7fcb09f <+1199>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fcb0a4 <+1204>:	add    $0x8,%rbx
   0x00007ffff7fcb0a8 <+1208>:	add    %r14,%rdx
   0x00007ffff7fcb0ab <+1211>:	cmp    %rbx,%r12
   0x00007ffff7fcb0ae <+1214>:	jne    0x7ffff7fcaf90 <corr_kernel+928>
   0x00007ffff7fcb0b4 <+1220>:	cmpq   $0x0,-0x58(%rsp)
   0x00007ffff7fcb0ba <+1226>:	je     0x7ffff7fcb100 <corr_kernel+1296>
   0x00007ffff7fcb0bc <+1228>:	vmovss (%rsi,%rcx,4),%xmm0
   0x00007ffff7fcb0c1 <+1233>:	imul   %rax,%rbx
   0x00007ffff7fcb0c5 <+1237>:	lea    (%r8,%rbx,1),%rdx
   0x00007ffff7fcb0c9 <+1241>:	add    %r9,%rbx
   0x00007ffff7fcb0cc <+1244>:	mov    -0x60(%rsp),%rbp
   0x00007ffff7fcb0d1 <+1249>:	mov    %r13,%rdi
   0x00007ffff7fcb0d4 <+1252>:	data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb0e0 <+1264>:	vmovss (%rdi,%rbx,4),%xmm1
   0x00007ffff7fcb0e5 <+1269>:	vfmadd231ss (%rdi,%rdx,4),%xmm1,%xmm0
   0x00007ffff7fcb0eb <+1275>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fcb0f0 <+1280>:	add    %r11,%rdi
   0x00007ffff7fcb0f3 <+1283>:	add    $0x1,%rbp
   0x00007ffff7fcb0f7 <+1287>:	jne    0x7ffff7fcb0e0 <corr_kernel+1264>
   0x00007ffff7fcb0f9 <+1289>:	vmovd  %xmm0,%ecx
   0x00007ffff7fcb0fd <+1293>:	jmp    0x7ffff7fcb103 <corr_kernel+1299>
   0x00007ffff7fcb0ff <+1295>:	nop
   0x00007ffff7fcb100 <+1296>:	mov    (%rsi,%rcx,4),%ecx
   0x00007ffff7fcb103 <+1299>:	mov    -0x68(%rsp),%rdi
   0x00007ffff7fcb108 <+1304>:	mov    %r8,%rdx
   0x00007ffff7fcb10b <+1307>:	imul   %rax,%rdx
   0x00007ffff7fcb10f <+1311>:	add    %r15,%rdx
   0x00007ffff7fcb112 <+1314>:	lea    0x1(%r8),%r12
   0x00007ffff7fcb116 <+1318>:	mov    %ecx,(%rsi,%rdx,4)
   0x00007ffff7fcb119 <+1321>:	lea    (%r8,%rdi,1),%rcx
   0x00007ffff7fcb11d <+1325>:	add    $0x1,%rcx
   0x00007ffff7fcb121 <+1329>:	cmpq   $0x7,-0x50(%rsp)
   0x00007ffff7fcb127 <+1335>:	jae    0x7ffff7fcb150 <corr_kernel+1376>
   0x00007ffff7fcb129 <+1337>:	xor    %ebx,%ebx
   0x00007ffff7fcb12b <+1339>:	mov    %r9,%r11
   0x00007ffff7fcb12e <+1342>:	mov    %r14,%r9
   0x00007ffff7fcb131 <+1345>:	cmpq   $0x0,-0x58(%rsp)
   0x00007ffff7fcb137 <+1351>:	jne    0x7ffff7fcb29d <corr_kernel+1709>
   0x00007ffff7fcb13d <+1357>:	jmp    0x7ffff7fcb2f0 <corr_kernel+1792>
   0x00007ffff7fcb142 <+1362>:	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb150 <+1376>:	vmovss (%rsi,%rcx,4),%xmm0
   0x00007ffff7fcb155 <+1381>:	mov    %r13,%rdx
   0x00007ffff7fcb158 <+1384>:	xor    %ebx,%ebx
   0x00007ffff7fcb15a <+1386>:	mov    %r9,%r11
   0x00007ffff7fcb15d <+1389>:	mov    %r14,%r9
   0x00007ffff7fcb160 <+1392>:	mov    -0x38(%rsp),%r14
   0x00007ffff7fcb165 <+1397>:	data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb170 <+1408>:	vmovss (%rdx,%r11,4),%xmm1
   0x00007ffff7fcb176 <+1414>:	vfmadd132ss 0x4(%rdx,%r10,1),%xmm0,%xmm1
   0x00007ffff7fcb17d <+1421>:	vmovss %xmm1,(%rsi,%rcx,4)
   0x00007ffff7fcb182 <+1426>:	mov    %rbx,%rdi
   0x00007ffff7fcb185 <+1429>:	or     $0x1,%rdi
   0x00007ffff7fcb189 <+1433>:	imul   %rax,%rdi
   0x00007ffff7fcb18d <+1437>:	lea    (%rdi,%r15,1),%rbp
   0x00007ffff7fcb191 <+1441>:	vmovss 0x0(%r13,%rbp,4),%xmm0
   0x00007ffff7fcb198 <+1448>:	add    %r12,%rdi
   0x00007ffff7fcb19b <+1451>:	vfmadd132ss 0x0(%r13,%rdi,4),%xmm1,%xmm0
   0x00007ffff7fcb1a2 <+1458>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fcb1a7 <+1463>:	mov    %rbx,%rdi
   0x00007ffff7fcb1aa <+1466>:	or     $0x2,%rdi
   0x00007ffff7fcb1ae <+1470>:	imul   %rax,%rdi
   0x00007ffff7fcb1b2 <+1474>:	lea    (%rdi,%r15,1),%rbp
   0x00007ffff7fcb1b6 <+1478>:	vmovss 0x0(%r13,%rbp,4),%xmm1
   0x00007ffff7fcb1bd <+1485>:	add    %r12,%rdi
   0x00007ffff7fcb1c0 <+1488>:	vfmadd132ss 0x0(%r13,%rdi,4),%xmm0,%xmm1
   0x00007ffff7fcb1c7 <+1495>:	vmovss %xmm1,(%rsi,%rcx,4)
   0x00007ffff7fcb1cc <+1500>:	mov    %rbx,%rdi
   0x00007ffff7fcb1cf <+1503>:	or     $0x3,%rdi
   0x00007ffff7fcb1d3 <+1507>:	imul   %rax,%rdi
   0x00007ffff7fcb1d7 <+1511>:	lea    (%rdi,%r15,1),%rbp
   0x00007ffff7fcb1db <+1515>:	vmovss 0x0(%r13,%rbp,4),%xmm0
   0x00007ffff7fcb1e2 <+1522>:	add    %r12,%rdi
   0x00007ffff7fcb1e5 <+1525>:	vfmadd132ss 0x0(%r13,%rdi,4),%xmm1,%xmm0
   0x00007ffff7fcb1ec <+1532>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fcb1f1 <+1537>:	mov    %rbx,%rdi
   0x00007ffff7fcb1f4 <+1540>:	or     $0x4,%rdi
   0x00007ffff7fcb1f8 <+1544>:	imul   %rax,%rdi
   0x00007ffff7fcb1fc <+1548>:	lea    (%rdi,%r15,1),%rbp
   0x00007ffff7fcb200 <+1552>:	vmovss 0x0(%r13,%rbp,4),%xmm1
   0x00007ffff7fcb207 <+1559>:	add    %r12,%rdi
   0x00007ffff7fcb20a <+1562>:	vfmadd132ss 0x0(%r13,%rdi,4),%xmm0,%xmm1
   0x00007ffff7fcb211 <+1569>:	vmovss %xmm1,(%rsi,%rcx,4)
   0x00007ffff7fcb216 <+1574>:	mov    %rbx,%rdi
   0x00007ffff7fcb219 <+1577>:	or     $0x5,%rdi
   0x00007ffff7fcb21d <+1581>:	imul   %rax,%rdi
   0x00007ffff7fcb221 <+1585>:	lea    (%rdi,%r15,1),%rbp
   0x00007ffff7fcb225 <+1589>:	vmovss 0x0(%r13,%rbp,4),%xmm0
   0x00007ffff7fcb22c <+1596>:	add    %r12,%rdi
   0x00007ffff7fcb22f <+1599>:	vfmadd132ss 0x0(%r13,%rdi,4),%xmm1,%xmm0
   0x00007ffff7fcb236 <+1606>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fcb23b <+1611>:	mov    %rbx,%rdi
   0x00007ffff7fcb23e <+1614>:	or     $0x6,%rdi
   0x00007ffff7fcb242 <+1618>:	imul   %rax,%rdi
   0x00007ffff7fcb246 <+1622>:	lea    (%rdi,%r15,1),%rbp
   0x00007ffff7fcb24a <+1626>:	vmovss 0x0(%r13,%rbp,4),%xmm1
   0x00007ffff7fcb251 <+1633>:	add    %r12,%rdi
   0x00007ffff7fcb254 <+1636>:	vfmadd132ss 0x0(%r13,%rdi,4),%xmm0,%xmm1
   0x00007ffff7fcb25b <+1643>:	vmovss %xmm1,(%rsi,%rcx,4)
   0x00007ffff7fcb260 <+1648>:	mov    %rbx,%rdi
   0x00007ffff7fcb263 <+1651>:	or     $0x7,%rdi
   0x00007ffff7fcb267 <+1655>:	imul   %rax,%rdi
   0x00007ffff7fcb26b <+1659>:	lea    (%rdi,%r15,1),%rbp
   0x00007ffff7fcb26f <+1663>:	vmovss 0x0(%r13,%rbp,4),%xmm0
   0x00007ffff7fcb276 <+1670>:	add    %r12,%rdi
   0x00007ffff7fcb279 <+1673>:	vfmadd132ss 0x0(%r13,%rdi,4),%xmm1,%xmm0
   0x00007ffff7fcb280 <+1680>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fcb285 <+1685>:	add    $0x8,%rbx
   0x00007ffff7fcb289 <+1689>:	add    %r9,%rdx
   0x00007ffff7fcb28c <+1692>:	cmp    %rbx,%r14
   0x00007ffff7fcb28f <+1695>:	jne    0x7ffff7fcb170 <corr_kernel+1408>
   0x00007ffff7fcb295 <+1701>:	cmpq   $0x0,-0x58(%rsp)
   0x00007ffff7fcb29b <+1707>:	je     0x7ffff7fcb2f0 <corr_kernel+1792>
   0x00007ffff7fcb29d <+1709>:	vmovss (%rsi,%rcx,4),%xmm0
   0x00007ffff7fcb2a2 <+1714>:	imul   %rax,%rbx
   0x00007ffff7fcb2a6 <+1718>:	mov    -0x30(%rsp),%rdx
   0x00007ffff7fcb2ab <+1723>:	lea    (%rdx,%rbx,1),%rdx
   0x00007ffff7fcb2af <+1727>:	add    %r11,%rbx
   0x00007ffff7fcb2b2 <+1730>:	mov    -0x60(%rsp),%rbp
   0x00007ffff7fcb2b7 <+1735>:	mov    %r13,%rdi
   0x00007ffff7fcb2ba <+1738>:	mov    -0x40(%rsp),%r14
   0x00007ffff7fcb2bf <+1743>:	nop
   0x00007ffff7fcb2c0 <+1744>:	vmovss (%rdi,%rbx,4),%xmm1
   0x00007ffff7fcb2c5 <+1749>:	vfmadd231ss (%rdi,%rdx,4),%xmm1,%xmm0
   0x00007ffff7fcb2cb <+1755>:	vmovss %xmm0,(%rsi,%rcx,4)
   0x00007ffff7fcb2d0 <+1760>:	add    %r14,%rdi
   0x00007ffff7fcb2d3 <+1763>:	add    $0x1,%rbp
   0x00007ffff7fcb2d7 <+1767>:	jne    0x7ffff7fcb2c0 <corr_kernel+1744>
   0x00007ffff7fcb2d9 <+1769>:	vmovd  %xmm0,%ecx
   0x00007ffff7fcb2dd <+1773>:	mov    %r9,%rdx
   0x00007ffff7fcb2e0 <+1776>:	mov    %r11,%r9
   0x00007ffff7fcb2e3 <+1779>:	mov    %r14,%r11
   0x00007ffff7fcb2e6 <+1782>:	mov    %rdx,%r14
   0x00007ffff7fcb2e9 <+1785>:	jmp    0x7ffff7fcb2fe <corr_kernel+1806>
   0x00007ffff7fcb2eb <+1787>:	nopl   0x0(%rax,%rax,1)
   0x00007ffff7fcb2f0 <+1792>:	mov    (%rsi,%rcx,4),%ecx
   0x00007ffff7fcb2f3 <+1795>:	mov    %r9,%r14
   0x00007ffff7fcb2f6 <+1798>:	mov    %r11,%r9
   0x00007ffff7fcb2f9 <+1801>:	mov    -0x40(%rsp),%r11
   0x00007ffff7fcb2fe <+1806>:	mov    -0x68(%rsp),%rbp
   0x00007ffff7fcb303 <+1811>:	imul   %rax,%r12
   0x00007ffff7fcb307 <+1815>:	add    %r15,%r12
   0x00007ffff7fcb30a <+1818>:	mov    %ecx,(%rsi,%r12,4)
   0x00007ffff7fcb30e <+1822>:	add    $0x2,%r8
   0x00007ffff7fcb312 <+1826>:	add    $0x8,%r10
   0x00007ffff7fcb316 <+1830>:	addq   $0x2,-0x30(%rsp)
   0x00007ffff7fcb31c <+1836>:	cmp    %r8d,%eax
   0x00007ffff7fcb31f <+1839>:	mov    -0x38(%rsp),%r12
   0x00007ffff7fcb324 <+1844>:	jne    0x7ffff7fcaf60 <corr_kernel+880>
   0x00007ffff7fcb32a <+1850>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fcb330 <+1856>:	mov    -0x8(%rsp),%rdi
   0x00007ffff7fcb335 <+1861>:	add    $0x1,%rdi
   0x00007ffff7fcb339 <+1865>:	mov    -0x70(%rsp),%rbp
   0x00007ffff7fcb33e <+1870>:	add    $0x1,%rbp
   0x00007ffff7fcb342 <+1874>:	lea    0x1(%r9),%ecx
   0x00007ffff7fcb346 <+1878>:	add    %eax,-0x74(%rsp)
   0x00007ffff7fcb34a <+1882>:	mov    -0x7c(%rsp),%edx
   0x00007ffff7fcb34e <+1886>:	add    $0x7,%dl
   0x00007ffff7fcb351 <+1889>:	mov    %edx,-0x7c(%rsp)
   0x00007ffff7fcb355 <+1893>:	cmp    -0x10(%rsp),%rdi
   0x00007ffff7fcb35a <+1898>:	jne    0x7ffff7fcacc0 <corr_kernel+208>
   0x00007ffff7fcb360 <+1904>:	pop    %rbx
   0x00007ffff7fcb361 <+1905>:	pop    %r12
   0x00007ffff7fcb363 <+1907>:	pop    %r13
   0x00007ffff7fcb365 <+1909>:	pop    %r14
   0x00007ffff7fcb367 <+1911>:	pop    %r15
   0x00007ffff7fcb369 <+1913>:	pop    %rbp
   0x00007ffff7fcb36a <+1914>:	ret    
End of assembler dump.
