Dump of assembler code for function mm3_kernel2:
=> 0x00007ffff7fca780 <+0>:	push   %rbp
   0x00007ffff7fca781 <+1>:	push   %r15
   0x00007ffff7fca783 <+3>:	push   %r14
   0x00007ffff7fca785 <+5>:	push   %r13
   0x00007ffff7fca787 <+7>:	push   %r12
   0x00007ffff7fca789 <+9>:	push   %rbx
   0x00007ffff7fca78a <+10>:	mov    0x60(%rdi),%r8
   0x00007ffff7fca78e <+14>:	mov    0x68(%rdi),%rcx
   0x00007ffff7fca792 <+18>:	mov    (%rsi),%rax
   0x00007ffff7fca795 <+21>:	imul   %r8,%rax
   0x00007ffff7fca799 <+25>:	add    0x30(%rdi),%rax
   0x00007ffff7fca79d <+29>:	mov    0x8(%rsi),%rsi
   0x00007ffff7fca7a1 <+33>:	imul   %rcx,%rsi
   0x00007ffff7fca7a5 <+37>:	add    0x38(%rdi),%rsi
   0x00007ffff7fca7a9 <+41>:	movslq 0x18(%rdi),%rbp
   0x00007ffff7fca7ad <+45>:	add    %rsi,%rcx
   0x00007ffff7fca7b0 <+48>:	cmp    %rbp,%rcx
   0x00007ffff7fca7b3 <+51>:	mov    %rbp,%rdx
   0x00007ffff7fca7b6 <+54>:	cmovle %rcx,%rdx
   0x00007ffff7fca7ba <+58>:	test   %rbp,%rbp
   0x00007ffff7fca7bd <+61>:	movslq 0x1c(%rdi),%rbx
   0x00007ffff7fca7c1 <+65>:	cmovs  %rcx,%rdx
   0x00007ffff7fca7c5 <+69>:	add    %rax,%r8
   0x00007ffff7fca7c8 <+72>:	cmp    %rbx,%r8
   0x00007ffff7fca7cb <+75>:	mov    %rbx,%rbp
   0x00007ffff7fca7ce <+78>:	cmovle %r8,%rbp
   0x00007ffff7fca7d2 <+82>:	mov    %rbx,%rcx
   0x00007ffff7fca7d5 <+85>:	mov    %rcx,-0x80(%rsp)
   0x00007ffff7fca7da <+90>:	test   %rbx,%rbx
   0x00007ffff7fca7dd <+93>:	cmovs  %r8,%rbp
   0x00007ffff7fca7e1 <+97>:	mov    %rax,-0x70(%rsp)
   0x00007ffff7fca7e6 <+102>:	sub    %rax,%rbp
   0x00007ffff7fca7e9 <+105>:	mov    %rbp,%rax
   0x00007ffff7fca7ec <+108>:	test   %rbp,%rbp
   0x00007ffff7fca7ef <+111>:	jle    0x7ffff7fcad33 <mm3_kernel2+1459>
   0x00007ffff7fca7f5 <+117>:	sub    %rsi,%rdx
   0x00007ffff7fca7f8 <+120>:	mov    %rdx,-0x18(%rsp)
   0x00007ffff7fca7fd <+125>:	test   %rdx,%rdx
   0x00007ffff7fca800 <+128>:	jle    0x7ffff7fcad33 <mm3_kernel2+1459>
   0x00007ffff7fca806 <+134>:	mov    %rsi,-0x68(%rsp)
   0x00007ffff7fca80b <+139>:	mov    (%rdi),%rcx
   0x00007ffff7fca80e <+142>:	mov    %rcx,-0x60(%rsp)
   0x00007ffff7fca813 <+147>:	mov    0x8(%rdi),%rcx
   0x00007ffff7fca817 <+151>:	mov    %rcx,-0x58(%rsp)
   0x00007ffff7fca81c <+156>:	mov    0x10(%rdi),%rcx
   0x00007ffff7fca820 <+160>:	movslq 0x20(%rdi),%rdx
   0x00007ffff7fca824 <+164>:	mov    %rdx,-0x78(%rsp)
   0x00007ffff7fca829 <+169>:	mov    %rax,%rsi
   0x00007ffff7fca82c <+172>:	sar    $0x3,%rsi
   0x00007ffff7fca830 <+176>:	mov    %rax,%rdx
   0x00007ffff7fca833 <+179>:	and    $0xfffffffffffffff8,%rdx
   0x00007ffff7fca837 <+183>:	mov    %rdx,-0x20(%rsp)
   0x00007ffff7fca83c <+188>:	sub    %rdx,%rax
   0x00007ffff7fca83f <+191>:	mov    %rax,-0x10(%rsp)
   0x00007ffff7fca844 <+196>:	test   %rsi,%rsi
   0x00007ffff7fca847 <+199>:	je     0x7ffff7fcaafb <mm3_kernel2+891>
   0x00007ffff7fca84d <+205>:	mov    -0x78(%rsp),%rbp
   0x00007ffff7fca852 <+210>:	lea    -0x1(%rbp),%rax
   0x00007ffff7fca856 <+214>:	mov    %rax,-0x28(%rsp)
   0x00007ffff7fca85b <+219>:	mov    %ebp,%r13d
   0x00007ffff7fca85e <+222>:	and    $0x7,%r13d
   0x00007ffff7fca862 <+226>:	mov    %rbp,%rdi
   0x00007ffff7fca865 <+229>:	sub    %r13,%rdi
   0x00007ffff7fca868 <+232>:	mov    -0x60(%rsp),%rax
   0x00007ffff7fca86d <+237>:	lea    0x1c(%rax),%rax
   0x00007ffff7fca871 <+241>:	mov    %rax,-0x8(%rsp)
   0x00007ffff7fca876 <+246>:	mov    -0x68(%rsp),%rdx
   0x00007ffff7fca87b <+251>:	mov    %edx,%ebx
   0x00007ffff7fca87d <+253>:	imul   %ebp,%ebx
   0x00007ffff7fca880 <+256>:	mov    -0x80(%rsp),%rax
   0x00007ffff7fca885 <+261>:	mov    %rax,%r15
   0x00007ffff7fca888 <+264>:	shl    $0x5,%r15
   0x00007ffff7fca88c <+268>:	lea    0x0(,%rax,4),%r8
   0x00007ffff7fca894 <+276>:	mov    %r13,%rax
   0x00007ffff7fca897 <+279>:	neg    %rax
   0x00007ffff7fca89a <+282>:	mov    %rax,-0x38(%rsp)
   0x00007ffff7fca89f <+287>:	xor    %ebp,%ebp
   0x00007ffff7fca8a1 <+289>:	movabs $0x7ffff7fc9040,%rax
   0x00007ffff7fca8ab <+299>:	vmovdqa (%rax),%ymm0
   0x00007ffff7fca8af <+303>:	movabs $0x7ffff7fc9060,%rax
   0x00007ffff7fca8b9 <+313>:	vmovdqa (%rax),%ymm1
   0x00007ffff7fca8bd <+317>:	vxorps %xmm2,%xmm2,%xmm2
   0x00007ffff7fca8c1 <+321>:	mov    %rdx,%rax
   0x00007ffff7fca8c4 <+324>:	data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fca8d0 <+336>:	mov    %rbp,-0x48(%rsp)
   0x00007ffff7fca8d5 <+341>:	mov    %ebx,-0x40(%rsp)
   0x00007ffff7fca8d9 <+345>:	movslq %ebx,%rdx
   0x00007ffff7fca8dc <+348>:	mov    %rax,-0x50(%rsp)
   0x00007ffff7fca8e1 <+353>:	mov    %eax,%ebp
   0x00007ffff7fca8e3 <+355>:	imul   -0x80(%rsp),%ebp
   0x00007ffff7fca8e8 <+360>:	mov    -0x8(%rsp),%rax
   0x00007ffff7fca8ed <+365>:	mov    %rdx,-0x30(%rsp)
   0x00007ffff7fca8f2 <+370>:	lea    (%rax,%rdx,4),%r14
   0x00007ffff7fca8f6 <+374>:	mov    -0x70(%rsp),%r11
   0x00007ffff7fca8fb <+379>:	vmovq  %r11,%xmm3
   0x00007ffff7fca900 <+384>:	vpbroadcastq %xmm3,%ymm3
   0x00007ffff7fca905 <+389>:	vpsllq $0x20,%ymm3,%ymm4
   0x00007ffff7fca90a <+394>:	vpaddq %ymm0,%ymm4,%ymm3
   0x00007ffff7fca90e <+398>:	vpaddq %ymm1,%ymm4,%ymm4
   0x00007ffff7fca912 <+402>:	vmovq  %xmm4,%rax
   0x00007ffff7fca917 <+407>:	vpextrq $0x1,%xmm4,%rdx
   0x00007ffff7fca91d <+413>:	sub    %rax,%rdx
   0x00007ffff7fca920 <+416>:	shl    $0x3,%rdx
   0x00007ffff7fca924 <+420>:	vmovq  %rdx,%xmm5
   0x00007ffff7fca929 <+425>:	vpbroadcastq %xmm5,%ymm5
   0x00007ffff7fca92e <+430>:	xor    %r10d,%r10d
   0x00007ffff7fca931 <+433>:	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fca940 <+448>:	lea    (%r11,%rbp,1),%eax
   0x00007ffff7fca944 <+452>:	movslq %eax,%r12
   0x00007ffff7fca947 <+455>:	vmovups %ymm2,(%rcx,%r12,4)
   0x00007ffff7fca94d <+461>:	cmpl   $0x0,-0x78(%rsp)
   0x00007ffff7fca952 <+466>:	jle    0x7ffff7fcaabd <mm3_kernel2+829>
   0x00007ffff7fca958 <+472>:	vpsrad $0x1f,%ymm4,%ymm6
   0x00007ffff7fca95d <+477>:	vpshufd $0xf5,%ymm4,%ymm7
   0x00007ffff7fca962 <+482>:	vpblendd $0xaa,%ymm6,%ymm7,%ymm6
   0x00007ffff7fca968 <+488>:	cmpq   $0x7,-0x28(%rsp)
   0x00007ffff7fca96e <+494>:	jae    0x7ffff7fca990 <mm3_kernel2+528>
   0x00007ffff7fca970 <+496>:	vpxor  %xmm7,%xmm7,%xmm7
   0x00007ffff7fca974 <+500>:	xor    %eax,%eax
   0x00007ffff7fca976 <+502>:	test   %r13,%r13
   0x00007ffff7fca979 <+505>:	jne    0x7ffff7fcaa6e <mm3_kernel2+750>
   0x00007ffff7fca97f <+511>:	jmp    0x7ffff7fcaabd <mm3_kernel2+829>
   0x00007ffff7fca984 <+516>:	data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fca990 <+528>:	vmovq  %xmm6,%rax
   0x00007ffff7fca995 <+533>:	mov    -0x58(%rsp),%rdx
   0x00007ffff7fca99a <+538>:	lea    (%rdx,%rax,4),%rbx
   0x00007ffff7fca99e <+542>:	vpxor  %xmm7,%xmm7,%xmm7
   0x00007ffff7fca9a2 <+546>:	xor    %eax,%eax
   0x00007ffff7fca9a4 <+548>:	data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fca9b0 <+560>:	vbroadcastss -0x1c(%r14,%rax,4),%ymm8
   0x00007ffff7fca9b7 <+567>:	vfmadd132ps (%rbx),%ymm7,%ymm8
   0x00007ffff7fca9bc <+572>:	vmovups %ymm8,(%rcx,%r12,4)
   0x00007ffff7fca9c2 <+578>:	vbroadcastss -0x18(%r14,%rax,4),%ymm7
   0x00007ffff7fca9c9 <+585>:	vfmadd132ps (%rbx,%r8,1),%ymm8,%ymm7
   0x00007ffff7fca9cf <+591>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fca9d5 <+597>:	lea    (%rbx,%r8,1),%r9
   0x00007ffff7fca9d9 <+601>:	vbroadcastss -0x14(%r14,%rax,4),%ymm8
   0x00007ffff7fca9e0 <+608>:	vfmadd132ps (%r8,%r9,1),%ymm7,%ymm8
   0x00007ffff7fca9e6 <+614>:	add    %r8,%r9
   0x00007ffff7fca9e9 <+617>:	vmovups %ymm8,(%rcx,%r12,4)
   0x00007ffff7fca9ef <+623>:	vbroadcastss -0x10(%r14,%rax,4),%ymm7
   0x00007ffff7fca9f6 <+630>:	vfmadd132ps (%r8,%r9,1),%ymm8,%ymm7
   0x00007ffff7fca9fc <+636>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fcaa02 <+642>:	add    %r8,%r9
   0x00007ffff7fcaa05 <+645>:	vbroadcastss -0xc(%r14,%rax,4),%ymm8
   0x00007ffff7fcaa0c <+652>:	vfmadd132ps (%r8,%r9,1),%ymm7,%ymm8
   0x00007ffff7fcaa12 <+658>:	add    %r8,%r9
   0x00007ffff7fcaa15 <+661>:	vmovups %ymm8,(%rcx,%r12,4)
   0x00007ffff7fcaa1b <+667>:	vbroadcastss -0x8(%r14,%rax,4),%ymm7
   0x00007ffff7fcaa22 <+674>:	vfmadd132ps (%r8,%r9,1),%ymm8,%ymm7
   0x00007ffff7fcaa28 <+680>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fcaa2e <+686>:	add    %r8,%r9
   0x00007ffff7fcaa31 <+689>:	vbroadcastss -0x4(%r14,%rax,4),%ymm8
   0x00007ffff7fcaa38 <+696>:	vfmadd132ps (%r8,%r9,1),%ymm7,%ymm8
   0x00007ffff7fcaa3e <+702>:	add    %r8,%r9
   0x00007ffff7fcaa41 <+705>:	vmovups %ymm8,(%rcx,%r12,4)
   0x00007ffff7fcaa47 <+711>:	vbroadcastss (%r14,%rax,4),%ymm7
   0x00007ffff7fcaa4d <+717>:	vfmadd132ps (%r8,%r9,1),%ymm8,%ymm7
   0x00007ffff7fcaa53 <+723>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fcaa59 <+729>:	add    $0x8,%rax
   0x00007ffff7fcaa5d <+733>:	add    %r15,%rbx
   0x00007ffff7fcaa60 <+736>:	cmp    %rax,%rdi
   0x00007ffff7fcaa63 <+739>:	jne    0x7ffff7fca9b0 <mm3_kernel2+560>
   0x00007ffff7fcaa69 <+745>:	test   %r13,%r13
   0x00007ffff7fcaa6c <+748>:	je     0x7ffff7fcaabd <mm3_kernel2+829>
   0x00007ffff7fcaa6e <+750>:	vmovq  %xmm6,%rdx
   0x00007ffff7fcaa73 <+755>:	mov    -0x80(%rsp),%rbx
   0x00007ffff7fcaa78 <+760>:	imul   %rax,%rbx
   0x00007ffff7fcaa7c <+764>:	add    %rdx,%rbx
   0x00007ffff7fcaa7f <+767>:	mov    -0x58(%rsp),%rdx
   0x00007ffff7fcaa84 <+772>:	lea    (%rdx,%rbx,4),%rbx
   0x00007ffff7fcaa88 <+776>:	add    -0x30(%rsp),%rax
   0x00007ffff7fcaa8d <+781>:	mov    -0x60(%rsp),%rdx
   0x00007ffff7fcaa92 <+786>:	lea    (%rdx,%rax,4),%rax
   0x00007ffff7fcaa96 <+790>:	mov    -0x38(%rsp),%rdx
   0x00007ffff7fcaa9b <+795>:	nopl   0x0(%rax,%rax,1)
   0x00007ffff7fcaaa0 <+800>:	vbroadcastss (%rax),%ymm6
   0x00007ffff7fcaaa5 <+805>:	vfmadd231ps (%rbx),%ymm6,%ymm7
   0x00007ffff7fcaaaa <+810>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fcaab0 <+816>:	add    %r8,%rbx
   0x00007ffff7fcaab3 <+819>:	add    $0x4,%rax
   0x00007ffff7fcaab7 <+823>:	add    $0x1,%rdx
   0x00007ffff7fcaabb <+827>:	jne    0x7ffff7fcaaa0 <mm3_kernel2+800>
   0x00007ffff7fcaabd <+829>:	add    $0x1,%r10
   0x00007ffff7fcaac1 <+833>:	add    $0x8,%r11
   0x00007ffff7fcaac5 <+837>:	vpaddq %ymm5,%ymm4,%ymm4
   0x00007ffff7fcaac9 <+841>:	vpaddq %ymm5,%ymm3,%ymm3
   0x00007ffff7fcaacd <+845>:	cmp    %rsi,%r10
   0x00007ffff7fcaad0 <+848>:	jne    0x7ffff7fca940 <mm3_kernel2+448>
   0x00007ffff7fcaad6 <+854>:	mov    -0x48(%rsp),%rbp
   0x00007ffff7fcaadb <+859>:	add    $0x1,%rbp
   0x00007ffff7fcaadf <+863>:	mov    -0x50(%rsp),%rax
   0x00007ffff7fcaae4 <+868>:	add    $0x1,%rax
   0x00007ffff7fcaae8 <+872>:	mov    -0x40(%rsp),%ebx
   0x00007ffff7fcaaec <+876>:	add    -0x78(%rsp),%ebx
   0x00007ffff7fcaaf0 <+880>:	cmp    -0x18(%rsp),%rbp
   0x00007ffff7fcaaf5 <+885>:	jne    0x7ffff7fca8d0 <mm3_kernel2+336>
   0x00007ffff7fcaafb <+891>:	cmpq   $0x0,-0x10(%rsp)
   0x00007ffff7fcab01 <+897>:	mov    -0x68(%rsp),%rax
   0x00007ffff7fcab06 <+902>:	je     0x7ffff7fcad33 <mm3_kernel2+1459>
   0x00007ffff7fcab0c <+908>:	mov    -0x70(%rsp),%rdx
   0x00007ffff7fcab11 <+913>:	add    %rdx,-0x20(%rsp)
   0x00007ffff7fcab16 <+918>:	mov    -0x78(%rsp),%rsi
   0x00007ffff7fcab1b <+923>:	lea    -0x1(%rsi),%rdx
   0x00007ffff7fcab1f <+927>:	mov    %rdx,-0x28(%rsp)
   0x00007ffff7fcab24 <+932>:	mov    %esi,%edi
   0x00007ffff7fcab26 <+934>:	and    $0x7,%edi
   0x00007ffff7fcab29 <+937>:	mov    %rsi,%r14
   0x00007ffff7fcab2c <+940>:	sub    %rdi,%r14
   0x00007ffff7fcab2f <+943>:	mov    -0x60(%rsp),%rdx
   0x00007ffff7fcab34 <+948>:	lea    0x1c(%rdx),%rdx
   0x00007ffff7fcab38 <+952>:	mov    %rdx,-0x70(%rsp)
   0x00007ffff7fcab3d <+957>:	mov    %eax,%ebp
   0x00007ffff7fcab3f <+959>:	imul   %esi,%ebp
   0x00007ffff7fcab42 <+962>:	mov    -0x80(%rsp),%rdx
   0x00007ffff7fcab47 <+967>:	mov    %rdx,%r11
   0x00007ffff7fcab4a <+970>:	shl    $0x5,%r11
   0x00007ffff7fcab4e <+974>:	lea    0x0(,%rdx,4),%rdx
   0x00007ffff7fcab56 <+982>:	mov    %rdi,-0x30(%rsp)
   0x00007ffff7fcab5b <+987>:	neg    %rdi
   0x00007ffff7fcab5e <+990>:	mov    %rdi,-0x40(%rsp)
   0x00007ffff7fcab63 <+995>:	xor    %esi,%esi
   0x00007ffff7fcab65 <+997>:	data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcab70 <+1008>:	mov    %rsi,-0x50(%rsp)
   0x00007ffff7fcab75 <+1013>:	mov    %ebp,-0x48(%rsp)
   0x00007ffff7fcab79 <+1017>:	movslq %ebp,%rdi
   0x00007ffff7fcab7c <+1020>:	mov    -0x70(%rsp),%rsi
   0x00007ffff7fcab81 <+1025>:	mov    %rdi,-0x38(%rsp)
   0x00007ffff7fcab86 <+1030>:	lea    (%rsi,%rdi,4),%rsi
   0x00007ffff7fcab8a <+1034>:	mov    %rax,-0x68(%rsp)
   0x00007ffff7fcab8f <+1039>:	mov    %eax,%r8d
   0x00007ffff7fcab92 <+1042>:	imul   -0x80(%rsp),%r8d
   0x00007ffff7fcab98 <+1048>:	xor    %r9d,%r9d
   0x00007ffff7fcab9b <+1051>:	mov    -0x20(%rsp),%r13
   0x00007ffff7fcaba0 <+1056>:	lea    (%r8,%r13,1),%eax
   0x00007ffff7fcaba4 <+1060>:	cltq   
   0x00007ffff7fcaba6 <+1062>:	movl   $0x0,(%rcx,%rax,4)
   0x00007ffff7fcabad <+1069>:	cmpl   $0x0,-0x78(%rsp)
   0x00007ffff7fcabb2 <+1074>:	jle    0x7ffff7fcacfb <mm3_kernel2+1403>
   0x00007ffff7fcabb8 <+1080>:	movslq %r13d,%r12
   0x00007ffff7fcabbb <+1083>:	cmpq   $0x7,-0x28(%rsp)
   0x00007ffff7fcabc1 <+1089>:	jae    0x7ffff7fcabe0 <mm3_kernel2+1120>
   0x00007ffff7fcabc3 <+1091>:	vpxor  %xmm0,%xmm0,%xmm0
   0x00007ffff7fcabc7 <+1095>:	xor    %ebx,%ebx
   0x00007ffff7fcabc9 <+1097>:	cmpq   $0x0,-0x30(%rsp)
   0x00007ffff7fcabcf <+1103>:	jne    0x7ffff7fcaca1 <mm3_kernel2+1313>
   0x00007ffff7fcabd5 <+1109>:	jmp    0x7ffff7fcacfb <mm3_kernel2+1403>
   0x00007ffff7fcabda <+1114>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fcabe0 <+1120>:	mov    -0x58(%rsp),%rdi
   0x00007ffff7fcabe5 <+1125>:	lea    (%rdi,%r12,4),%r15
   0x00007ffff7fcabe9 <+1129>:	vpxor  %xmm0,%xmm0,%xmm0
   0x00007ffff7fcabed <+1133>:	xor    %ebx,%ebx
   0x00007ffff7fcabef <+1135>:	nop
   0x00007ffff7fcabf0 <+1136>:	vmovss -0x1c(%rsi,%rbx,4),%xmm1
   0x00007ffff7fcabf6 <+1142>:	vfmadd132ss (%r15),%xmm0,%xmm1
   0x00007ffff7fcabfb <+1147>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fcac00 <+1152>:	vmovss -0x18(%rsi,%rbx,4),%xmm0
   0x00007ffff7fcac06 <+1158>:	vfmadd132ss (%r15,%rdx,1),%xmm1,%xmm0
   0x00007ffff7fcac0c <+1164>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fcac11 <+1169>:	lea    (%r15,%rdx,1),%r10
   0x00007ffff7fcac15 <+1173>:	vmovss -0x14(%rsi,%rbx,4),%xmm1
   0x00007ffff7fcac1b <+1179>:	vfmadd132ss (%rdx,%r10,1),%xmm0,%xmm1
   0x00007ffff7fcac21 <+1185>:	add    %rdx,%r10
   0x00007ffff7fcac24 <+1188>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fcac29 <+1193>:	vmovss -0x10(%rsi,%rbx,4),%xmm0
   0x00007ffff7fcac2f <+1199>:	vfmadd132ss (%rdx,%r10,1),%xmm1,%xmm0
   0x00007ffff7fcac35 <+1205>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fcac3a <+1210>:	add    %rdx,%r10
   0x00007ffff7fcac3d <+1213>:	vmovss -0xc(%rsi,%rbx,4),%xmm1
   0x00007ffff7fcac43 <+1219>:	vfmadd132ss (%rdx,%r10,1),%xmm0,%xmm1
   0x00007ffff7fcac49 <+1225>:	add    %rdx,%r10
   0x00007ffff7fcac4c <+1228>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fcac51 <+1233>:	vmovss -0x8(%rsi,%rbx,4),%xmm0
   0x00007ffff7fcac57 <+1239>:	vfmadd132ss (%rdx,%r10,1),%xmm1,%xmm0
   0x00007ffff7fcac5d <+1245>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fcac62 <+1250>:	add    %rdx,%r10
   0x00007ffff7fcac65 <+1253>:	vmovss -0x4(%rsi,%rbx,4),%xmm1
   0x00007ffff7fcac6b <+1259>:	vfmadd132ss (%rdx,%r10,1),%xmm0,%xmm1
   0x00007ffff7fcac71 <+1265>:	add    %rdx,%r10
   0x00007ffff7fcac74 <+1268>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fcac79 <+1273>:	vmovss (%rsi,%rbx,4),%xmm0
   0x00007ffff7fcac7e <+1278>:	vfmadd132ss (%rdx,%r10,1),%xmm1,%xmm0
   0x00007ffff7fcac84 <+1284>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fcac89 <+1289>:	add    $0x8,%rbx
   0x00007ffff7fcac8d <+1293>:	add    %r11,%r15
   0x00007ffff7fcac90 <+1296>:	cmp    %rbx,%r14
   0x00007ffff7fcac93 <+1299>:	jne    0x7ffff7fcabf0 <mm3_kernel2+1136>
   0x00007ffff7fcac99 <+1305>:	cmpq   $0x0,-0x30(%rsp)
   0x00007ffff7fcac9f <+1311>:	je     0x7ffff7fcacfb <mm3_kernel2+1403>
   0x00007ffff7fcaca1 <+1313>:	mov    -0x80(%rsp),%rdi
   0x00007ffff7fcaca6 <+1318>:	imul   %rbx,%rdi
   0x00007ffff7fcacaa <+1322>:	add    %r12,%rdi
   0x00007ffff7fcacad <+1325>:	mov    -0x58(%rsp),%rbp
   0x00007ffff7fcacb2 <+1330>:	lea    0x0(,%rdi,4),%rdi
   0x00007ffff7fcacba <+1338>:	add    %rbp,%rdi
   0x00007ffff7fcacbd <+1341>:	add    -0x38(%rsp),%rbx
   0x00007ffff7fcacc2 <+1346>:	mov    -0x60(%rsp),%rbp
   0x00007ffff7fcacc7 <+1351>:	lea    0x0(,%rbx,4),%rbx
   0x00007ffff7fcaccf <+1359>:	add    %rbp,%rbx
   0x00007ffff7fcacd2 <+1362>:	mov    -0x40(%rsp),%rbp
   0x00007ffff7fcacd7 <+1367>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fcace0 <+1376>:	vmovss (%rbx),%xmm1
   0x00007ffff7fcace4 <+1380>:	vfmadd231ss (%rdi),%xmm1,%xmm0
   0x00007ffff7fcace9 <+1385>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fcacee <+1390>:	add    %rdx,%rdi
   0x00007ffff7fcacf1 <+1393>:	add    $0x4,%rbx
   0x00007ffff7fcacf5 <+1397>:	add    $0x1,%rbp
   0x00007ffff7fcacf9 <+1401>:	jne    0x7ffff7fcace0 <mm3_kernel2+1376>
   0x00007ffff7fcacfb <+1403>:	add    $0x1,%r9
   0x00007ffff7fcacff <+1407>:	add    $0x1,%r13
   0x00007ffff7fcad03 <+1411>:	cmp    -0x10(%rsp),%r9
   0x00007ffff7fcad08 <+1416>:	jne    0x7ffff7fcaba0 <mm3_kernel2+1056>
   0x00007ffff7fcad0e <+1422>:	mov    -0x50(%rsp),%rsi
   0x00007ffff7fcad13 <+1427>:	add    $0x1,%rsi
   0x00007ffff7fcad17 <+1431>:	mov    -0x68(%rsp),%rax
   0x00007ffff7fcad1c <+1436>:	add    $0x1,%rax
   0x00007ffff7fcad20 <+1440>:	mov    -0x48(%rsp),%ebp
   0x00007ffff7fcad24 <+1444>:	add    -0x78(%rsp),%ebp
   0x00007ffff7fcad28 <+1448>:	cmp    -0x18(%rsp),%rsi
   0x00007ffff7fcad2d <+1453>:	jne    0x7ffff7fcab70 <mm3_kernel2+1008>
   0x00007ffff7fcad33 <+1459>:	pop    %rbx
   0x00007ffff7fcad34 <+1460>:	pop    %r12
   0x00007ffff7fcad36 <+1462>:	pop    %r13
   0x00007ffff7fcad38 <+1464>:	pop    %r14
   0x00007ffff7fcad3a <+1466>:	pop    %r15
   0x00007ffff7fcad3c <+1468>:	pop    %rbp
   0x00007ffff7fcad3d <+1469>:	vzeroupper 
   0x00007ffff7fcad40 <+1472>:	ret    
End of assembler dump.
