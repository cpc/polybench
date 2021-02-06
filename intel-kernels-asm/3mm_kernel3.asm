Dump of assembler code for function mm3_kernel3:
=> 0x00007ffff7fcad50 <+0>:	push   %rbp
   0x00007ffff7fcad51 <+1>:	push   %r15
   0x00007ffff7fcad53 <+3>:	push   %r14
   0x00007ffff7fcad55 <+5>:	push   %r13
   0x00007ffff7fcad57 <+7>:	push   %r12
   0x00007ffff7fcad59 <+9>:	push   %rbx
   0x00007ffff7fcad5a <+10>:	mov    0x60(%rdi),%r8
   0x00007ffff7fcad5e <+14>:	mov    0x68(%rdi),%rcx
   0x00007ffff7fcad62 <+18>:	mov    (%rsi),%rax
   0x00007ffff7fcad65 <+21>:	imul   %r8,%rax
   0x00007ffff7fcad69 <+25>:	add    0x30(%rdi),%rax
   0x00007ffff7fcad6d <+29>:	mov    0x8(%rsi),%rsi
   0x00007ffff7fcad71 <+33>:	imul   %rcx,%rsi
   0x00007ffff7fcad75 <+37>:	add    0x38(%rdi),%rsi
   0x00007ffff7fcad79 <+41>:	movslq 0x18(%rdi),%rbp
   0x00007ffff7fcad7d <+45>:	add    %rsi,%rcx
   0x00007ffff7fcad80 <+48>:	cmp    %rbp,%rcx
   0x00007ffff7fcad83 <+51>:	mov    %rbp,%rdx
   0x00007ffff7fcad86 <+54>:	cmovle %rcx,%rdx
   0x00007ffff7fcad8a <+58>:	test   %rbp,%rbp
   0x00007ffff7fcad8d <+61>:	movslq 0x1c(%rdi),%rbx
   0x00007ffff7fcad91 <+65>:	cmovs  %rcx,%rdx
   0x00007ffff7fcad95 <+69>:	add    %rax,%r8
   0x00007ffff7fcad98 <+72>:	cmp    %rbx,%r8
   0x00007ffff7fcad9b <+75>:	mov    %rbx,%rbp
   0x00007ffff7fcad9e <+78>:	cmovle %r8,%rbp
   0x00007ffff7fcada2 <+82>:	mov    %rbx,%rcx
   0x00007ffff7fcada5 <+85>:	mov    %rcx,-0x80(%rsp)
   0x00007ffff7fcadaa <+90>:	test   %rbx,%rbx
   0x00007ffff7fcadad <+93>:	cmovs  %r8,%rbp
   0x00007ffff7fcadb1 <+97>:	mov    %rax,-0x70(%rsp)
   0x00007ffff7fcadb6 <+102>:	sub    %rax,%rbp
   0x00007ffff7fcadb9 <+105>:	mov    %rbp,%rax
   0x00007ffff7fcadbc <+108>:	test   %rbp,%rbp
   0x00007ffff7fcadbf <+111>:	jle    0x7ffff7fcb303 <mm3_kernel3+1459>
   0x00007ffff7fcadc5 <+117>:	sub    %rsi,%rdx
   0x00007ffff7fcadc8 <+120>:	mov    %rdx,-0x18(%rsp)
   0x00007ffff7fcadcd <+125>:	test   %rdx,%rdx
   0x00007ffff7fcadd0 <+128>:	jle    0x7ffff7fcb303 <mm3_kernel3+1459>
   0x00007ffff7fcadd6 <+134>:	mov    %rsi,-0x68(%rsp)
   0x00007ffff7fcaddb <+139>:	mov    (%rdi),%rcx
   0x00007ffff7fcadde <+142>:	mov    %rcx,-0x60(%rsp)
   0x00007ffff7fcade3 <+147>:	mov    0x8(%rdi),%rcx
   0x00007ffff7fcade7 <+151>:	mov    %rcx,-0x58(%rsp)
   0x00007ffff7fcadec <+156>:	mov    0x10(%rdi),%rcx
   0x00007ffff7fcadf0 <+160>:	movslq 0x20(%rdi),%rdx
   0x00007ffff7fcadf4 <+164>:	mov    %rdx,-0x78(%rsp)
   0x00007ffff7fcadf9 <+169>:	mov    %rax,%rsi
   0x00007ffff7fcadfc <+172>:	sar    $0x3,%rsi
   0x00007ffff7fcae00 <+176>:	mov    %rax,%rdx
   0x00007ffff7fcae03 <+179>:	and    $0xfffffffffffffff8,%rdx
   0x00007ffff7fcae07 <+183>:	mov    %rdx,-0x20(%rsp)
   0x00007ffff7fcae0c <+188>:	sub    %rdx,%rax
   0x00007ffff7fcae0f <+191>:	mov    %rax,-0x10(%rsp)
   0x00007ffff7fcae14 <+196>:	test   %rsi,%rsi
   0x00007ffff7fcae17 <+199>:	je     0x7ffff7fcb0cb <mm3_kernel3+891>
   0x00007ffff7fcae1d <+205>:	mov    -0x78(%rsp),%rbp
   0x00007ffff7fcae22 <+210>:	lea    -0x1(%rbp),%rax
   0x00007ffff7fcae26 <+214>:	mov    %rax,-0x28(%rsp)
   0x00007ffff7fcae2b <+219>:	mov    %ebp,%r13d
   0x00007ffff7fcae2e <+222>:	and    $0x7,%r13d
   0x00007ffff7fcae32 <+226>:	mov    %rbp,%rdi
   0x00007ffff7fcae35 <+229>:	sub    %r13,%rdi
   0x00007ffff7fcae38 <+232>:	mov    -0x60(%rsp),%rax
   0x00007ffff7fcae3d <+237>:	lea    0x1c(%rax),%rax
   0x00007ffff7fcae41 <+241>:	mov    %rax,-0x8(%rsp)
   0x00007ffff7fcae46 <+246>:	mov    -0x68(%rsp),%rdx
   0x00007ffff7fcae4b <+251>:	mov    %edx,%ebx
   0x00007ffff7fcae4d <+253>:	imul   %ebp,%ebx
   0x00007ffff7fcae50 <+256>:	mov    -0x80(%rsp),%rax
   0x00007ffff7fcae55 <+261>:	mov    %rax,%r15
   0x00007ffff7fcae58 <+264>:	shl    $0x5,%r15
   0x00007ffff7fcae5c <+268>:	lea    0x0(,%rax,4),%r8
   0x00007ffff7fcae64 <+276>:	mov    %r13,%rax
   0x00007ffff7fcae67 <+279>:	neg    %rax
   0x00007ffff7fcae6a <+282>:	mov    %rax,-0x38(%rsp)
   0x00007ffff7fcae6f <+287>:	xor    %ebp,%ebp
   0x00007ffff7fcae71 <+289>:	movabs $0x7ffff7fc9080,%rax
   0x00007ffff7fcae7b <+299>:	vmovdqa (%rax),%ymm0
   0x00007ffff7fcae7f <+303>:	movabs $0x7ffff7fc90a0,%rax
   0x00007ffff7fcae89 <+313>:	vmovdqa (%rax),%ymm1
   0x00007ffff7fcae8d <+317>:	vxorps %xmm2,%xmm2,%xmm2
   0x00007ffff7fcae91 <+321>:	mov    %rdx,%rax
   0x00007ffff7fcae94 <+324>:	data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcaea0 <+336>:	mov    %rbp,-0x48(%rsp)
   0x00007ffff7fcaea5 <+341>:	mov    %ebx,-0x40(%rsp)
   0x00007ffff7fcaea9 <+345>:	movslq %ebx,%rdx
   0x00007ffff7fcaeac <+348>:	mov    %rax,-0x50(%rsp)
   0x00007ffff7fcaeb1 <+353>:	mov    %eax,%ebp
   0x00007ffff7fcaeb3 <+355>:	imul   -0x80(%rsp),%ebp
   0x00007ffff7fcaeb8 <+360>:	mov    -0x8(%rsp),%rax
   0x00007ffff7fcaebd <+365>:	mov    %rdx,-0x30(%rsp)
   0x00007ffff7fcaec2 <+370>:	lea    (%rax,%rdx,4),%r14
   0x00007ffff7fcaec6 <+374>:	mov    -0x70(%rsp),%r11
   0x00007ffff7fcaecb <+379>:	vmovq  %r11,%xmm3
   0x00007ffff7fcaed0 <+384>:	vpbroadcastq %xmm3,%ymm3
   0x00007ffff7fcaed5 <+389>:	vpsllq $0x20,%ymm3,%ymm4
   0x00007ffff7fcaeda <+394>:	vpaddq %ymm0,%ymm4,%ymm3
   0x00007ffff7fcaede <+398>:	vpaddq %ymm1,%ymm4,%ymm4
   0x00007ffff7fcaee2 <+402>:	vmovq  %xmm4,%rax
   0x00007ffff7fcaee7 <+407>:	vpextrq $0x1,%xmm4,%rdx
   0x00007ffff7fcaeed <+413>:	sub    %rax,%rdx
   0x00007ffff7fcaef0 <+416>:	shl    $0x3,%rdx
   0x00007ffff7fcaef4 <+420>:	vmovq  %rdx,%xmm5
   0x00007ffff7fcaef9 <+425>:	vpbroadcastq %xmm5,%ymm5
   0x00007ffff7fcaefe <+430>:	xor    %r10d,%r10d
   0x00007ffff7fcaf01 <+433>:	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcaf10 <+448>:	lea    (%r11,%rbp,1),%eax
   0x00007ffff7fcaf14 <+452>:	movslq %eax,%r12
   0x00007ffff7fcaf17 <+455>:	vmovups %ymm2,(%rcx,%r12,4)
   0x00007ffff7fcaf1d <+461>:	cmpl   $0x0,-0x78(%rsp)
   0x00007ffff7fcaf22 <+466>:	jle    0x7ffff7fcb08d <mm3_kernel3+829>
   0x00007ffff7fcaf28 <+472>:	vpsrad $0x1f,%ymm4,%ymm6
   0x00007ffff7fcaf2d <+477>:	vpshufd $0xf5,%ymm4,%ymm7
   0x00007ffff7fcaf32 <+482>:	vpblendd $0xaa,%ymm6,%ymm7,%ymm6
   0x00007ffff7fcaf38 <+488>:	cmpq   $0x7,-0x28(%rsp)
   0x00007ffff7fcaf3e <+494>:	jae    0x7ffff7fcaf60 <mm3_kernel3+528>
   0x00007ffff7fcaf40 <+496>:	vpxor  %xmm7,%xmm7,%xmm7
   0x00007ffff7fcaf44 <+500>:	xor    %eax,%eax
   0x00007ffff7fcaf46 <+502>:	test   %r13,%r13
   0x00007ffff7fcaf49 <+505>:	jne    0x7ffff7fcb03e <mm3_kernel3+750>
   0x00007ffff7fcaf4f <+511>:	jmp    0x7ffff7fcb08d <mm3_kernel3+829>
   0x00007ffff7fcaf54 <+516>:	data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcaf60 <+528>:	vmovq  %xmm6,%rax
   0x00007ffff7fcaf65 <+533>:	mov    -0x58(%rsp),%rdx
   0x00007ffff7fcaf6a <+538>:	lea    (%rdx,%rax,4),%rbx
   0x00007ffff7fcaf6e <+542>:	vpxor  %xmm7,%xmm7,%xmm7
   0x00007ffff7fcaf72 <+546>:	xor    %eax,%eax
   0x00007ffff7fcaf74 <+548>:	data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcaf80 <+560>:	vbroadcastss -0x1c(%r14,%rax,4),%ymm8
   0x00007ffff7fcaf87 <+567>:	vfmadd132ps (%rbx),%ymm7,%ymm8
   0x00007ffff7fcaf8c <+572>:	vmovups %ymm8,(%rcx,%r12,4)
   0x00007ffff7fcaf92 <+578>:	vbroadcastss -0x18(%r14,%rax,4),%ymm7
   0x00007ffff7fcaf99 <+585>:	vfmadd132ps (%rbx,%r8,1),%ymm8,%ymm7
   0x00007ffff7fcaf9f <+591>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fcafa5 <+597>:	lea    (%rbx,%r8,1),%r9
   0x00007ffff7fcafa9 <+601>:	vbroadcastss -0x14(%r14,%rax,4),%ymm8
   0x00007ffff7fcafb0 <+608>:	vfmadd132ps (%r8,%r9,1),%ymm7,%ymm8
   0x00007ffff7fcafb6 <+614>:	add    %r8,%r9
   0x00007ffff7fcafb9 <+617>:	vmovups %ymm8,(%rcx,%r12,4)
   0x00007ffff7fcafbf <+623>:	vbroadcastss -0x10(%r14,%rax,4),%ymm7
   0x00007ffff7fcafc6 <+630>:	vfmadd132ps (%r8,%r9,1),%ymm8,%ymm7
   0x00007ffff7fcafcc <+636>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fcafd2 <+642>:	add    %r8,%r9
   0x00007ffff7fcafd5 <+645>:	vbroadcastss -0xc(%r14,%rax,4),%ymm8
   0x00007ffff7fcafdc <+652>:	vfmadd132ps (%r8,%r9,1),%ymm7,%ymm8
   0x00007ffff7fcafe2 <+658>:	add    %r8,%r9
   0x00007ffff7fcafe5 <+661>:	vmovups %ymm8,(%rcx,%r12,4)
   0x00007ffff7fcafeb <+667>:	vbroadcastss -0x8(%r14,%rax,4),%ymm7
   0x00007ffff7fcaff2 <+674>:	vfmadd132ps (%r8,%r9,1),%ymm8,%ymm7
   0x00007ffff7fcaff8 <+680>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fcaffe <+686>:	add    %r8,%r9
   0x00007ffff7fcb001 <+689>:	vbroadcastss -0x4(%r14,%rax,4),%ymm8
   0x00007ffff7fcb008 <+696>:	vfmadd132ps (%r8,%r9,1),%ymm7,%ymm8
   0x00007ffff7fcb00e <+702>:	add    %r8,%r9
   0x00007ffff7fcb011 <+705>:	vmovups %ymm8,(%rcx,%r12,4)
   0x00007ffff7fcb017 <+711>:	vbroadcastss (%r14,%rax,4),%ymm7
   0x00007ffff7fcb01d <+717>:	vfmadd132ps (%r8,%r9,1),%ymm8,%ymm7
   0x00007ffff7fcb023 <+723>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fcb029 <+729>:	add    $0x8,%rax
   0x00007ffff7fcb02d <+733>:	add    %r15,%rbx
   0x00007ffff7fcb030 <+736>:	cmp    %rax,%rdi
   0x00007ffff7fcb033 <+739>:	jne    0x7ffff7fcaf80 <mm3_kernel3+560>
   0x00007ffff7fcb039 <+745>:	test   %r13,%r13
   0x00007ffff7fcb03c <+748>:	je     0x7ffff7fcb08d <mm3_kernel3+829>
   0x00007ffff7fcb03e <+750>:	vmovq  %xmm6,%rdx
   0x00007ffff7fcb043 <+755>:	mov    -0x80(%rsp),%rbx
   0x00007ffff7fcb048 <+760>:	imul   %rax,%rbx
   0x00007ffff7fcb04c <+764>:	add    %rdx,%rbx
   0x00007ffff7fcb04f <+767>:	mov    -0x58(%rsp),%rdx
   0x00007ffff7fcb054 <+772>:	lea    (%rdx,%rbx,4),%rbx
   0x00007ffff7fcb058 <+776>:	add    -0x30(%rsp),%rax
   0x00007ffff7fcb05d <+781>:	mov    -0x60(%rsp),%rdx
   0x00007ffff7fcb062 <+786>:	lea    (%rdx,%rax,4),%rax
   0x00007ffff7fcb066 <+790>:	mov    -0x38(%rsp),%rdx
   0x00007ffff7fcb06b <+795>:	nopl   0x0(%rax,%rax,1)
   0x00007ffff7fcb070 <+800>:	vbroadcastss (%rax),%ymm6
   0x00007ffff7fcb075 <+805>:	vfmadd231ps (%rbx),%ymm6,%ymm7
   0x00007ffff7fcb07a <+810>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fcb080 <+816>:	add    %r8,%rbx
   0x00007ffff7fcb083 <+819>:	add    $0x4,%rax
   0x00007ffff7fcb087 <+823>:	add    $0x1,%rdx
   0x00007ffff7fcb08b <+827>:	jne    0x7ffff7fcb070 <mm3_kernel3+800>
   0x00007ffff7fcb08d <+829>:	add    $0x1,%r10
   0x00007ffff7fcb091 <+833>:	add    $0x8,%r11
   0x00007ffff7fcb095 <+837>:	vpaddq %ymm5,%ymm4,%ymm4
   0x00007ffff7fcb099 <+841>:	vpaddq %ymm5,%ymm3,%ymm3
   0x00007ffff7fcb09d <+845>:	cmp    %rsi,%r10
   0x00007ffff7fcb0a0 <+848>:	jne    0x7ffff7fcaf10 <mm3_kernel3+448>
   0x00007ffff7fcb0a6 <+854>:	mov    -0x48(%rsp),%rbp
   0x00007ffff7fcb0ab <+859>:	add    $0x1,%rbp
   0x00007ffff7fcb0af <+863>:	mov    -0x50(%rsp),%rax
   0x00007ffff7fcb0b4 <+868>:	add    $0x1,%rax
   0x00007ffff7fcb0b8 <+872>:	mov    -0x40(%rsp),%ebx
   0x00007ffff7fcb0bc <+876>:	add    -0x78(%rsp),%ebx
   0x00007ffff7fcb0c0 <+880>:	cmp    -0x18(%rsp),%rbp
   0x00007ffff7fcb0c5 <+885>:	jne    0x7ffff7fcaea0 <mm3_kernel3+336>
   0x00007ffff7fcb0cb <+891>:	cmpq   $0x0,-0x10(%rsp)
   0x00007ffff7fcb0d1 <+897>:	mov    -0x68(%rsp),%rax
   0x00007ffff7fcb0d6 <+902>:	je     0x7ffff7fcb303 <mm3_kernel3+1459>
   0x00007ffff7fcb0dc <+908>:	mov    -0x70(%rsp),%rdx
   0x00007ffff7fcb0e1 <+913>:	add    %rdx,-0x20(%rsp)
   0x00007ffff7fcb0e6 <+918>:	mov    -0x78(%rsp),%rsi
   0x00007ffff7fcb0eb <+923>:	lea    -0x1(%rsi),%rdx
   0x00007ffff7fcb0ef <+927>:	mov    %rdx,-0x28(%rsp)
   0x00007ffff7fcb0f4 <+932>:	mov    %esi,%edi
   0x00007ffff7fcb0f6 <+934>:	and    $0x7,%edi
   0x00007ffff7fcb0f9 <+937>:	mov    %rsi,%r14
   0x00007ffff7fcb0fc <+940>:	sub    %rdi,%r14
   0x00007ffff7fcb0ff <+943>:	mov    -0x60(%rsp),%rdx
   0x00007ffff7fcb104 <+948>:	lea    0x1c(%rdx),%rdx
   0x00007ffff7fcb108 <+952>:	mov    %rdx,-0x70(%rsp)
   0x00007ffff7fcb10d <+957>:	mov    %eax,%ebp
   0x00007ffff7fcb10f <+959>:	imul   %esi,%ebp
   0x00007ffff7fcb112 <+962>:	mov    -0x80(%rsp),%rdx
   0x00007ffff7fcb117 <+967>:	mov    %rdx,%r11
   0x00007ffff7fcb11a <+970>:	shl    $0x5,%r11
   0x00007ffff7fcb11e <+974>:	lea    0x0(,%rdx,4),%rdx
   0x00007ffff7fcb126 <+982>:	mov    %rdi,-0x30(%rsp)
   0x00007ffff7fcb12b <+987>:	neg    %rdi
   0x00007ffff7fcb12e <+990>:	mov    %rdi,-0x40(%rsp)
   0x00007ffff7fcb133 <+995>:	xor    %esi,%esi
   0x00007ffff7fcb135 <+997>:	data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb140 <+1008>:	mov    %rsi,-0x50(%rsp)
   0x00007ffff7fcb145 <+1013>:	mov    %ebp,-0x48(%rsp)
   0x00007ffff7fcb149 <+1017>:	movslq %ebp,%rdi
   0x00007ffff7fcb14c <+1020>:	mov    -0x70(%rsp),%rsi
   0x00007ffff7fcb151 <+1025>:	mov    %rdi,-0x38(%rsp)
   0x00007ffff7fcb156 <+1030>:	lea    (%rsi,%rdi,4),%rsi
   0x00007ffff7fcb15a <+1034>:	mov    %rax,-0x68(%rsp)
   0x00007ffff7fcb15f <+1039>:	mov    %eax,%r8d
   0x00007ffff7fcb162 <+1042>:	imul   -0x80(%rsp),%r8d
   0x00007ffff7fcb168 <+1048>:	xor    %r9d,%r9d
   0x00007ffff7fcb16b <+1051>:	mov    -0x20(%rsp),%r13
   0x00007ffff7fcb170 <+1056>:	lea    (%r8,%r13,1),%eax
   0x00007ffff7fcb174 <+1060>:	cltq   
   0x00007ffff7fcb176 <+1062>:	movl   $0x0,(%rcx,%rax,4)
   0x00007ffff7fcb17d <+1069>:	cmpl   $0x0,-0x78(%rsp)
   0x00007ffff7fcb182 <+1074>:	jle    0x7ffff7fcb2cb <mm3_kernel3+1403>
   0x00007ffff7fcb188 <+1080>:	movslq %r13d,%r12
   0x00007ffff7fcb18b <+1083>:	cmpq   $0x7,-0x28(%rsp)
   0x00007ffff7fcb191 <+1089>:	jae    0x7ffff7fcb1b0 <mm3_kernel3+1120>
   0x00007ffff7fcb193 <+1091>:	vpxor  %xmm0,%xmm0,%xmm0
   0x00007ffff7fcb197 <+1095>:	xor    %ebx,%ebx
   0x00007ffff7fcb199 <+1097>:	cmpq   $0x0,-0x30(%rsp)
   0x00007ffff7fcb19f <+1103>:	jne    0x7ffff7fcb271 <mm3_kernel3+1313>
   0x00007ffff7fcb1a5 <+1109>:	jmp    0x7ffff7fcb2cb <mm3_kernel3+1403>
   0x00007ffff7fcb1aa <+1114>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fcb1b0 <+1120>:	mov    -0x58(%rsp),%rdi
   0x00007ffff7fcb1b5 <+1125>:	lea    (%rdi,%r12,4),%r15
   0x00007ffff7fcb1b9 <+1129>:	vpxor  %xmm0,%xmm0,%xmm0
   0x00007ffff7fcb1bd <+1133>:	xor    %ebx,%ebx
   0x00007ffff7fcb1bf <+1135>:	nop
   0x00007ffff7fcb1c0 <+1136>:	vmovss -0x1c(%rsi,%rbx,4),%xmm1
   0x00007ffff7fcb1c6 <+1142>:	vfmadd132ss (%r15),%xmm0,%xmm1
   0x00007ffff7fcb1cb <+1147>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fcb1d0 <+1152>:	vmovss -0x18(%rsi,%rbx,4),%xmm0
   0x00007ffff7fcb1d6 <+1158>:	vfmadd132ss (%r15,%rdx,1),%xmm1,%xmm0
   0x00007ffff7fcb1dc <+1164>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fcb1e1 <+1169>:	lea    (%r15,%rdx,1),%r10
   0x00007ffff7fcb1e5 <+1173>:	vmovss -0x14(%rsi,%rbx,4),%xmm1
   0x00007ffff7fcb1eb <+1179>:	vfmadd132ss (%rdx,%r10,1),%xmm0,%xmm1
   0x00007ffff7fcb1f1 <+1185>:	add    %rdx,%r10
   0x00007ffff7fcb1f4 <+1188>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fcb1f9 <+1193>:	vmovss -0x10(%rsi,%rbx,4),%xmm0
   0x00007ffff7fcb1ff <+1199>:	vfmadd132ss (%rdx,%r10,1),%xmm1,%xmm0
   0x00007ffff7fcb205 <+1205>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fcb20a <+1210>:	add    %rdx,%r10
   0x00007ffff7fcb20d <+1213>:	vmovss -0xc(%rsi,%rbx,4),%xmm1
   0x00007ffff7fcb213 <+1219>:	vfmadd132ss (%rdx,%r10,1),%xmm0,%xmm1
   0x00007ffff7fcb219 <+1225>:	add    %rdx,%r10
   0x00007ffff7fcb21c <+1228>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fcb221 <+1233>:	vmovss -0x8(%rsi,%rbx,4),%xmm0
   0x00007ffff7fcb227 <+1239>:	vfmadd132ss (%rdx,%r10,1),%xmm1,%xmm0
   0x00007ffff7fcb22d <+1245>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fcb232 <+1250>:	add    %rdx,%r10
   0x00007ffff7fcb235 <+1253>:	vmovss -0x4(%rsi,%rbx,4),%xmm1
   0x00007ffff7fcb23b <+1259>:	vfmadd132ss (%rdx,%r10,1),%xmm0,%xmm1
   0x00007ffff7fcb241 <+1265>:	add    %rdx,%r10
   0x00007ffff7fcb244 <+1268>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fcb249 <+1273>:	vmovss (%rsi,%rbx,4),%xmm0
   0x00007ffff7fcb24e <+1278>:	vfmadd132ss (%rdx,%r10,1),%xmm1,%xmm0
   0x00007ffff7fcb254 <+1284>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fcb259 <+1289>:	add    $0x8,%rbx
   0x00007ffff7fcb25d <+1293>:	add    %r11,%r15
   0x00007ffff7fcb260 <+1296>:	cmp    %rbx,%r14
   0x00007ffff7fcb263 <+1299>:	jne    0x7ffff7fcb1c0 <mm3_kernel3+1136>
   0x00007ffff7fcb269 <+1305>:	cmpq   $0x0,-0x30(%rsp)
   0x00007ffff7fcb26f <+1311>:	je     0x7ffff7fcb2cb <mm3_kernel3+1403>
   0x00007ffff7fcb271 <+1313>:	mov    -0x80(%rsp),%rdi
   0x00007ffff7fcb276 <+1318>:	imul   %rbx,%rdi
   0x00007ffff7fcb27a <+1322>:	add    %r12,%rdi
   0x00007ffff7fcb27d <+1325>:	mov    -0x58(%rsp),%rbp
   0x00007ffff7fcb282 <+1330>:	lea    0x0(,%rdi,4),%rdi
   0x00007ffff7fcb28a <+1338>:	add    %rbp,%rdi
   0x00007ffff7fcb28d <+1341>:	add    -0x38(%rsp),%rbx
   0x00007ffff7fcb292 <+1346>:	mov    -0x60(%rsp),%rbp
   0x00007ffff7fcb297 <+1351>:	lea    0x0(,%rbx,4),%rbx
   0x00007ffff7fcb29f <+1359>:	add    %rbp,%rbx
   0x00007ffff7fcb2a2 <+1362>:	mov    -0x40(%rsp),%rbp
   0x00007ffff7fcb2a7 <+1367>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fcb2b0 <+1376>:	vmovss (%rbx),%xmm1
   0x00007ffff7fcb2b4 <+1380>:	vfmadd231ss (%rdi),%xmm1,%xmm0
   0x00007ffff7fcb2b9 <+1385>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fcb2be <+1390>:	add    %rdx,%rdi
   0x00007ffff7fcb2c1 <+1393>:	add    $0x4,%rbx
   0x00007ffff7fcb2c5 <+1397>:	add    $0x1,%rbp
   0x00007ffff7fcb2c9 <+1401>:	jne    0x7ffff7fcb2b0 <mm3_kernel3+1376>
   0x00007ffff7fcb2cb <+1403>:	add    $0x1,%r9
   0x00007ffff7fcb2cf <+1407>:	add    $0x1,%r13
   0x00007ffff7fcb2d3 <+1411>:	cmp    -0x10(%rsp),%r9
   0x00007ffff7fcb2d8 <+1416>:	jne    0x7ffff7fcb170 <mm3_kernel3+1056>
   0x00007ffff7fcb2de <+1422>:	mov    -0x50(%rsp),%rsi
   0x00007ffff7fcb2e3 <+1427>:	add    $0x1,%rsi
   0x00007ffff7fcb2e7 <+1431>:	mov    -0x68(%rsp),%rax
   0x00007ffff7fcb2ec <+1436>:	add    $0x1,%rax
   0x00007ffff7fcb2f0 <+1440>:	mov    -0x48(%rsp),%ebp
   0x00007ffff7fcb2f4 <+1444>:	add    -0x78(%rsp),%ebp
   0x00007ffff7fcb2f8 <+1448>:	cmp    -0x18(%rsp),%rsi
   0x00007ffff7fcb2fd <+1453>:	jne    0x7ffff7fcb140 <mm3_kernel3+1008>
   0x00007ffff7fcb303 <+1459>:	pop    %rbx
   0x00007ffff7fcb304 <+1460>:	pop    %r12
   0x00007ffff7fcb306 <+1462>:	pop    %r13
   0x00007ffff7fcb308 <+1464>:	pop    %r14
   0x00007ffff7fcb30a <+1466>:	pop    %r15
   0x00007ffff7fcb30c <+1468>:	pop    %rbp
   0x00007ffff7fcb30d <+1469>:	vzeroupper 
   0x00007ffff7fcb310 <+1472>:	ret    
End of assembler dump.
