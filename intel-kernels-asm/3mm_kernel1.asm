Dump of assembler code for function mm3_kernel1:
=> 0x00007ffff7fca1b0 <+0>:	push   %rbp
   0x00007ffff7fca1b1 <+1>:	push   %r15
   0x00007ffff7fca1b3 <+3>:	push   %r14
   0x00007ffff7fca1b5 <+5>:	push   %r13
   0x00007ffff7fca1b7 <+7>:	push   %r12
   0x00007ffff7fca1b9 <+9>:	push   %rbx
   0x00007ffff7fca1ba <+10>:	mov    0x60(%rdi),%r8
   0x00007ffff7fca1be <+14>:	mov    0x68(%rdi),%rcx
   0x00007ffff7fca1c2 <+18>:	mov    (%rsi),%rax
   0x00007ffff7fca1c5 <+21>:	imul   %r8,%rax
   0x00007ffff7fca1c9 <+25>:	add    0x30(%rdi),%rax
   0x00007ffff7fca1cd <+29>:	mov    0x8(%rsi),%rsi
   0x00007ffff7fca1d1 <+33>:	imul   %rcx,%rsi
   0x00007ffff7fca1d5 <+37>:	add    0x38(%rdi),%rsi
   0x00007ffff7fca1d9 <+41>:	movslq 0x18(%rdi),%rbp
   0x00007ffff7fca1dd <+45>:	add    %rsi,%rcx
   0x00007ffff7fca1e0 <+48>:	cmp    %rbp,%rcx
   0x00007ffff7fca1e3 <+51>:	mov    %rbp,%rdx
   0x00007ffff7fca1e6 <+54>:	cmovle %rcx,%rdx
   0x00007ffff7fca1ea <+58>:	test   %rbp,%rbp
   0x00007ffff7fca1ed <+61>:	movslq 0x1c(%rdi),%rbx
   0x00007ffff7fca1f1 <+65>:	cmovs  %rcx,%rdx
   0x00007ffff7fca1f5 <+69>:	add    %rax,%r8
   0x00007ffff7fca1f8 <+72>:	cmp    %rbx,%r8
   0x00007ffff7fca1fb <+75>:	mov    %rbx,%rbp
   0x00007ffff7fca1fe <+78>:	cmovle %r8,%rbp
   0x00007ffff7fca202 <+82>:	mov    %rbx,%rcx
   0x00007ffff7fca205 <+85>:	mov    %rcx,-0x80(%rsp)
   0x00007ffff7fca20a <+90>:	test   %rbx,%rbx
   0x00007ffff7fca20d <+93>:	cmovs  %r8,%rbp
   0x00007ffff7fca211 <+97>:	mov    %rax,-0x70(%rsp)
   0x00007ffff7fca216 <+102>:	sub    %rax,%rbp
   0x00007ffff7fca219 <+105>:	mov    %rbp,%rax
   0x00007ffff7fca21c <+108>:	test   %rbp,%rbp
   0x00007ffff7fca21f <+111>:	jle    0x7ffff7fca763 <mm3_kernel1+1459>
   0x00007ffff7fca225 <+117>:	sub    %rsi,%rdx
   0x00007ffff7fca228 <+120>:	mov    %rdx,-0x18(%rsp)
   0x00007ffff7fca22d <+125>:	test   %rdx,%rdx
   0x00007ffff7fca230 <+128>:	jle    0x7ffff7fca763 <mm3_kernel1+1459>
   0x00007ffff7fca236 <+134>:	mov    %rsi,-0x68(%rsp)
   0x00007ffff7fca23b <+139>:	mov    (%rdi),%rcx
   0x00007ffff7fca23e <+142>:	mov    %rcx,-0x60(%rsp)
   0x00007ffff7fca243 <+147>:	mov    0x8(%rdi),%rcx
   0x00007ffff7fca247 <+151>:	mov    %rcx,-0x58(%rsp)
   0x00007ffff7fca24c <+156>:	mov    0x10(%rdi),%rcx
   0x00007ffff7fca250 <+160>:	movslq 0x20(%rdi),%rdx
   0x00007ffff7fca254 <+164>:	mov    %rdx,-0x78(%rsp)
   0x00007ffff7fca259 <+169>:	mov    %rax,%rsi
   0x00007ffff7fca25c <+172>:	sar    $0x3,%rsi
   0x00007ffff7fca260 <+176>:	mov    %rax,%rdx
   0x00007ffff7fca263 <+179>:	and    $0xfffffffffffffff8,%rdx
   0x00007ffff7fca267 <+183>:	mov    %rdx,-0x20(%rsp)
   0x00007ffff7fca26c <+188>:	sub    %rdx,%rax
   0x00007ffff7fca26f <+191>:	mov    %rax,-0x10(%rsp)
   0x00007ffff7fca274 <+196>:	test   %rsi,%rsi
   0x00007ffff7fca277 <+199>:	je     0x7ffff7fca52b <mm3_kernel1+891>
   0x00007ffff7fca27d <+205>:	mov    -0x78(%rsp),%rbp
   0x00007ffff7fca282 <+210>:	lea    -0x1(%rbp),%rax
   0x00007ffff7fca286 <+214>:	mov    %rax,-0x28(%rsp)
   0x00007ffff7fca28b <+219>:	mov    %ebp,%r13d
   0x00007ffff7fca28e <+222>:	and    $0x7,%r13d
   0x00007ffff7fca292 <+226>:	mov    %rbp,%rdi
   0x00007ffff7fca295 <+229>:	sub    %r13,%rdi
   0x00007ffff7fca298 <+232>:	mov    -0x60(%rsp),%rax
   0x00007ffff7fca29d <+237>:	lea    0x1c(%rax),%rax
   0x00007ffff7fca2a1 <+241>:	mov    %rax,-0x8(%rsp)
   0x00007ffff7fca2a6 <+246>:	mov    -0x68(%rsp),%rdx
   0x00007ffff7fca2ab <+251>:	mov    %edx,%ebx
   0x00007ffff7fca2ad <+253>:	imul   %ebp,%ebx
   0x00007ffff7fca2b0 <+256>:	mov    -0x80(%rsp),%rax
   0x00007ffff7fca2b5 <+261>:	mov    %rax,%r15
   0x00007ffff7fca2b8 <+264>:	shl    $0x5,%r15
   0x00007ffff7fca2bc <+268>:	lea    0x0(,%rax,4),%r8
   0x00007ffff7fca2c4 <+276>:	mov    %r13,%rax
   0x00007ffff7fca2c7 <+279>:	neg    %rax
   0x00007ffff7fca2ca <+282>:	mov    %rax,-0x38(%rsp)
   0x00007ffff7fca2cf <+287>:	xor    %ebp,%ebp
   0x00007ffff7fca2d1 <+289>:	movabs $0x7ffff7fc9000,%rax
   0x00007ffff7fca2db <+299>:	vmovdqa (%rax),%ymm0
   0x00007ffff7fca2df <+303>:	movabs $0x7ffff7fc9020,%rax
   0x00007ffff7fca2e9 <+313>:	vmovdqa (%rax),%ymm1
   0x00007ffff7fca2ed <+317>:	vxorps %xmm2,%xmm2,%xmm2
   0x00007ffff7fca2f1 <+321>:	mov    %rdx,%rax
   0x00007ffff7fca2f4 <+324>:	data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fca300 <+336>:	mov    %rbp,-0x48(%rsp)
   0x00007ffff7fca305 <+341>:	mov    %ebx,-0x40(%rsp)
   0x00007ffff7fca309 <+345>:	movslq %ebx,%rdx
   0x00007ffff7fca30c <+348>:	mov    %rax,-0x50(%rsp)
   0x00007ffff7fca311 <+353>:	mov    %eax,%ebp
   0x00007ffff7fca313 <+355>:	imul   -0x80(%rsp),%ebp
   0x00007ffff7fca318 <+360>:	mov    -0x8(%rsp),%rax
   0x00007ffff7fca31d <+365>:	mov    %rdx,-0x30(%rsp)
   0x00007ffff7fca322 <+370>:	lea    (%rax,%rdx,4),%r14
   0x00007ffff7fca326 <+374>:	mov    -0x70(%rsp),%r11
   0x00007ffff7fca32b <+379>:	vmovq  %r11,%xmm3
   0x00007ffff7fca330 <+384>:	vpbroadcastq %xmm3,%ymm3
   0x00007ffff7fca335 <+389>:	vpsllq $0x20,%ymm3,%ymm4
   0x00007ffff7fca33a <+394>:	vpaddq %ymm0,%ymm4,%ymm3
   0x00007ffff7fca33e <+398>:	vpaddq %ymm1,%ymm4,%ymm4
   0x00007ffff7fca342 <+402>:	vmovq  %xmm4,%rax
   0x00007ffff7fca347 <+407>:	vpextrq $0x1,%xmm4,%rdx
   0x00007ffff7fca34d <+413>:	sub    %rax,%rdx
   0x00007ffff7fca350 <+416>:	shl    $0x3,%rdx
   0x00007ffff7fca354 <+420>:	vmovq  %rdx,%xmm5
   0x00007ffff7fca359 <+425>:	vpbroadcastq %xmm5,%ymm5
   0x00007ffff7fca35e <+430>:	xor    %r10d,%r10d
   0x00007ffff7fca361 <+433>:	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fca370 <+448>:	lea    (%r11,%rbp,1),%eax
   0x00007ffff7fca374 <+452>:	movslq %eax,%r12
   0x00007ffff7fca377 <+455>:	vmovups %ymm2,(%rcx,%r12,4)
   0x00007ffff7fca37d <+461>:	cmpl   $0x0,-0x78(%rsp)
   0x00007ffff7fca382 <+466>:	jle    0x7ffff7fca4ed <mm3_kernel1+829>
   0x00007ffff7fca388 <+472>:	vpsrad $0x1f,%ymm4,%ymm6
   0x00007ffff7fca38d <+477>:	vpshufd $0xf5,%ymm4,%ymm7
   0x00007ffff7fca392 <+482>:	vpblendd $0xaa,%ymm6,%ymm7,%ymm6
   0x00007ffff7fca398 <+488>:	cmpq   $0x7,-0x28(%rsp)
   0x00007ffff7fca39e <+494>:	jae    0x7ffff7fca3c0 <mm3_kernel1+528>
   0x00007ffff7fca3a0 <+496>:	vpxor  %xmm7,%xmm7,%xmm7
   0x00007ffff7fca3a4 <+500>:	xor    %eax,%eax
   0x00007ffff7fca3a6 <+502>:	test   %r13,%r13
   0x00007ffff7fca3a9 <+505>:	jne    0x7ffff7fca49e <mm3_kernel1+750>
   0x00007ffff7fca3af <+511>:	jmp    0x7ffff7fca4ed <mm3_kernel1+829>
   0x00007ffff7fca3b4 <+516>:	data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fca3c0 <+528>:	vmovq  %xmm6,%rax
   0x00007ffff7fca3c5 <+533>:	mov    -0x58(%rsp),%rdx
   0x00007ffff7fca3ca <+538>:	lea    (%rdx,%rax,4),%rbx
   0x00007ffff7fca3ce <+542>:	vpxor  %xmm7,%xmm7,%xmm7
   0x00007ffff7fca3d2 <+546>:	xor    %eax,%eax
   0x00007ffff7fca3d4 <+548>:	data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fca3e0 <+560>:	vbroadcastss -0x1c(%r14,%rax,4),%ymm8
   0x00007ffff7fca3e7 <+567>:	vfmadd132ps (%rbx),%ymm7,%ymm8
   0x00007ffff7fca3ec <+572>:	vmovups %ymm8,(%rcx,%r12,4)
   0x00007ffff7fca3f2 <+578>:	vbroadcastss -0x18(%r14,%rax,4),%ymm7
   0x00007ffff7fca3f9 <+585>:	vfmadd132ps (%rbx,%r8,1),%ymm8,%ymm7
   0x00007ffff7fca3ff <+591>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fca405 <+597>:	lea    (%rbx,%r8,1),%r9
   0x00007ffff7fca409 <+601>:	vbroadcastss -0x14(%r14,%rax,4),%ymm8
   0x00007ffff7fca410 <+608>:	vfmadd132ps (%r8,%r9,1),%ymm7,%ymm8
   0x00007ffff7fca416 <+614>:	add    %r8,%r9
   0x00007ffff7fca419 <+617>:	vmovups %ymm8,(%rcx,%r12,4)
   0x00007ffff7fca41f <+623>:	vbroadcastss -0x10(%r14,%rax,4),%ymm7
   0x00007ffff7fca426 <+630>:	vfmadd132ps (%r8,%r9,1),%ymm8,%ymm7
   0x00007ffff7fca42c <+636>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fca432 <+642>:	add    %r8,%r9
   0x00007ffff7fca435 <+645>:	vbroadcastss -0xc(%r14,%rax,4),%ymm8
   0x00007ffff7fca43c <+652>:	vfmadd132ps (%r8,%r9,1),%ymm7,%ymm8
   0x00007ffff7fca442 <+658>:	add    %r8,%r9
   0x00007ffff7fca445 <+661>:	vmovups %ymm8,(%rcx,%r12,4)
   0x00007ffff7fca44b <+667>:	vbroadcastss -0x8(%r14,%rax,4),%ymm7
   0x00007ffff7fca452 <+674>:	vfmadd132ps (%r8,%r9,1),%ymm8,%ymm7
   0x00007ffff7fca458 <+680>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fca45e <+686>:	add    %r8,%r9
   0x00007ffff7fca461 <+689>:	vbroadcastss -0x4(%r14,%rax,4),%ymm8
   0x00007ffff7fca468 <+696>:	vfmadd132ps (%r8,%r9,1),%ymm7,%ymm8
   0x00007ffff7fca46e <+702>:	add    %r8,%r9
   0x00007ffff7fca471 <+705>:	vmovups %ymm8,(%rcx,%r12,4)
   0x00007ffff7fca477 <+711>:	vbroadcastss (%r14,%rax,4),%ymm7
   0x00007ffff7fca47d <+717>:	vfmadd132ps (%r8,%r9,1),%ymm8,%ymm7
   0x00007ffff7fca483 <+723>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fca489 <+729>:	add    $0x8,%rax
   0x00007ffff7fca48d <+733>:	add    %r15,%rbx
   0x00007ffff7fca490 <+736>:	cmp    %rax,%rdi
   0x00007ffff7fca493 <+739>:	jne    0x7ffff7fca3e0 <mm3_kernel1+560>
   0x00007ffff7fca499 <+745>:	test   %r13,%r13
   0x00007ffff7fca49c <+748>:	je     0x7ffff7fca4ed <mm3_kernel1+829>
   0x00007ffff7fca49e <+750>:	vmovq  %xmm6,%rdx
   0x00007ffff7fca4a3 <+755>:	mov    -0x80(%rsp),%rbx
   0x00007ffff7fca4a8 <+760>:	imul   %rax,%rbx
   0x00007ffff7fca4ac <+764>:	add    %rdx,%rbx
   0x00007ffff7fca4af <+767>:	mov    -0x58(%rsp),%rdx
   0x00007ffff7fca4b4 <+772>:	lea    (%rdx,%rbx,4),%rbx
   0x00007ffff7fca4b8 <+776>:	add    -0x30(%rsp),%rax
   0x00007ffff7fca4bd <+781>:	mov    -0x60(%rsp),%rdx
   0x00007ffff7fca4c2 <+786>:	lea    (%rdx,%rax,4),%rax
   0x00007ffff7fca4c6 <+790>:	mov    -0x38(%rsp),%rdx
   0x00007ffff7fca4cb <+795>:	nopl   0x0(%rax,%rax,1)
   0x00007ffff7fca4d0 <+800>:	vbroadcastss (%rax),%ymm6
   0x00007ffff7fca4d5 <+805>:	vfmadd231ps (%rbx),%ymm6,%ymm7
   0x00007ffff7fca4da <+810>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fca4e0 <+816>:	add    %r8,%rbx
   0x00007ffff7fca4e3 <+819>:	add    $0x4,%rax
   0x00007ffff7fca4e7 <+823>:	add    $0x1,%rdx
   0x00007ffff7fca4eb <+827>:	jne    0x7ffff7fca4d0 <mm3_kernel1+800>
   0x00007ffff7fca4ed <+829>:	add    $0x1,%r10
   0x00007ffff7fca4f1 <+833>:	add    $0x8,%r11
   0x00007ffff7fca4f5 <+837>:	vpaddq %ymm5,%ymm4,%ymm4
   0x00007ffff7fca4f9 <+841>:	vpaddq %ymm5,%ymm3,%ymm3
   0x00007ffff7fca4fd <+845>:	cmp    %rsi,%r10
   0x00007ffff7fca500 <+848>:	jne    0x7ffff7fca370 <mm3_kernel1+448>
   0x00007ffff7fca506 <+854>:	mov    -0x48(%rsp),%rbp
   0x00007ffff7fca50b <+859>:	add    $0x1,%rbp
   0x00007ffff7fca50f <+863>:	mov    -0x50(%rsp),%rax
   0x00007ffff7fca514 <+868>:	add    $0x1,%rax
   0x00007ffff7fca518 <+872>:	mov    -0x40(%rsp),%ebx
   0x00007ffff7fca51c <+876>:	add    -0x78(%rsp),%ebx
   0x00007ffff7fca520 <+880>:	cmp    -0x18(%rsp),%rbp
   0x00007ffff7fca525 <+885>:	jne    0x7ffff7fca300 <mm3_kernel1+336>
   0x00007ffff7fca52b <+891>:	cmpq   $0x0,-0x10(%rsp)
   0x00007ffff7fca531 <+897>:	mov    -0x68(%rsp),%rax
   0x00007ffff7fca536 <+902>:	je     0x7ffff7fca763 <mm3_kernel1+1459>
   0x00007ffff7fca53c <+908>:	mov    -0x70(%rsp),%rdx
   0x00007ffff7fca541 <+913>:	add    %rdx,-0x20(%rsp)
   0x00007ffff7fca546 <+918>:	mov    -0x78(%rsp),%rsi
   0x00007ffff7fca54b <+923>:	lea    -0x1(%rsi),%rdx
   0x00007ffff7fca54f <+927>:	mov    %rdx,-0x28(%rsp)
   0x00007ffff7fca554 <+932>:	mov    %esi,%edi
   0x00007ffff7fca556 <+934>:	and    $0x7,%edi
   0x00007ffff7fca559 <+937>:	mov    %rsi,%r14
   0x00007ffff7fca55c <+940>:	sub    %rdi,%r14
   0x00007ffff7fca55f <+943>:	mov    -0x60(%rsp),%rdx
   0x00007ffff7fca564 <+948>:	lea    0x1c(%rdx),%rdx
   0x00007ffff7fca568 <+952>:	mov    %rdx,-0x70(%rsp)
   0x00007ffff7fca56d <+957>:	mov    %eax,%ebp
   0x00007ffff7fca56f <+959>:	imul   %esi,%ebp
   0x00007ffff7fca572 <+962>:	mov    -0x80(%rsp),%rdx
   0x00007ffff7fca577 <+967>:	mov    %rdx,%r11
   0x00007ffff7fca57a <+970>:	shl    $0x5,%r11
   0x00007ffff7fca57e <+974>:	lea    0x0(,%rdx,4),%rdx
   0x00007ffff7fca586 <+982>:	mov    %rdi,-0x30(%rsp)
   0x00007ffff7fca58b <+987>:	neg    %rdi
   0x00007ffff7fca58e <+990>:	mov    %rdi,-0x40(%rsp)
   0x00007ffff7fca593 <+995>:	xor    %esi,%esi
   0x00007ffff7fca595 <+997>:	data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fca5a0 <+1008>:	mov    %rsi,-0x50(%rsp)
   0x00007ffff7fca5a5 <+1013>:	mov    %ebp,-0x48(%rsp)
   0x00007ffff7fca5a9 <+1017>:	movslq %ebp,%rdi
   0x00007ffff7fca5ac <+1020>:	mov    -0x70(%rsp),%rsi
   0x00007ffff7fca5b1 <+1025>:	mov    %rdi,-0x38(%rsp)
   0x00007ffff7fca5b6 <+1030>:	lea    (%rsi,%rdi,4),%rsi
   0x00007ffff7fca5ba <+1034>:	mov    %rax,-0x68(%rsp)
   0x00007ffff7fca5bf <+1039>:	mov    %eax,%r8d
   0x00007ffff7fca5c2 <+1042>:	imul   -0x80(%rsp),%r8d
   0x00007ffff7fca5c8 <+1048>:	xor    %r9d,%r9d
   0x00007ffff7fca5cb <+1051>:	mov    -0x20(%rsp),%r13
   0x00007ffff7fca5d0 <+1056>:	lea    (%r8,%r13,1),%eax
   0x00007ffff7fca5d4 <+1060>:	cltq   
   0x00007ffff7fca5d6 <+1062>:	movl   $0x0,(%rcx,%rax,4)
   0x00007ffff7fca5dd <+1069>:	cmpl   $0x0,-0x78(%rsp)
   0x00007ffff7fca5e2 <+1074>:	jle    0x7ffff7fca72b <mm3_kernel1+1403>
   0x00007ffff7fca5e8 <+1080>:	movslq %r13d,%r12
   0x00007ffff7fca5eb <+1083>:	cmpq   $0x7,-0x28(%rsp)
   0x00007ffff7fca5f1 <+1089>:	jae    0x7ffff7fca610 <mm3_kernel1+1120>
   0x00007ffff7fca5f3 <+1091>:	vpxor  %xmm0,%xmm0,%xmm0
   0x00007ffff7fca5f7 <+1095>:	xor    %ebx,%ebx
   0x00007ffff7fca5f9 <+1097>:	cmpq   $0x0,-0x30(%rsp)
   0x00007ffff7fca5ff <+1103>:	jne    0x7ffff7fca6d1 <mm3_kernel1+1313>
   0x00007ffff7fca605 <+1109>:	jmp    0x7ffff7fca72b <mm3_kernel1+1403>
   0x00007ffff7fca60a <+1114>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fca610 <+1120>:	mov    -0x58(%rsp),%rdi
   0x00007ffff7fca615 <+1125>:	lea    (%rdi,%r12,4),%r15
   0x00007ffff7fca619 <+1129>:	vpxor  %xmm0,%xmm0,%xmm0
   0x00007ffff7fca61d <+1133>:	xor    %ebx,%ebx
   0x00007ffff7fca61f <+1135>:	nop
   0x00007ffff7fca620 <+1136>:	vmovss -0x1c(%rsi,%rbx,4),%xmm1
   0x00007ffff7fca626 <+1142>:	vfmadd132ss (%r15),%xmm0,%xmm1
   0x00007ffff7fca62b <+1147>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fca630 <+1152>:	vmovss -0x18(%rsi,%rbx,4),%xmm0
   0x00007ffff7fca636 <+1158>:	vfmadd132ss (%r15,%rdx,1),%xmm1,%xmm0
   0x00007ffff7fca63c <+1164>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fca641 <+1169>:	lea    (%r15,%rdx,1),%r10
   0x00007ffff7fca645 <+1173>:	vmovss -0x14(%rsi,%rbx,4),%xmm1
   0x00007ffff7fca64b <+1179>:	vfmadd132ss (%rdx,%r10,1),%xmm0,%xmm1
   0x00007ffff7fca651 <+1185>:	add    %rdx,%r10
   0x00007ffff7fca654 <+1188>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fca659 <+1193>:	vmovss -0x10(%rsi,%rbx,4),%xmm0
   0x00007ffff7fca65f <+1199>:	vfmadd132ss (%rdx,%r10,1),%xmm1,%xmm0
   0x00007ffff7fca665 <+1205>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fca66a <+1210>:	add    %rdx,%r10
   0x00007ffff7fca66d <+1213>:	vmovss -0xc(%rsi,%rbx,4),%xmm1
   0x00007ffff7fca673 <+1219>:	vfmadd132ss (%rdx,%r10,1),%xmm0,%xmm1
   0x00007ffff7fca679 <+1225>:	add    %rdx,%r10
   0x00007ffff7fca67c <+1228>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fca681 <+1233>:	vmovss -0x8(%rsi,%rbx,4),%xmm0
   0x00007ffff7fca687 <+1239>:	vfmadd132ss (%rdx,%r10,1),%xmm1,%xmm0
   0x00007ffff7fca68d <+1245>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fca692 <+1250>:	add    %rdx,%r10
   0x00007ffff7fca695 <+1253>:	vmovss -0x4(%rsi,%rbx,4),%xmm1
   0x00007ffff7fca69b <+1259>:	vfmadd132ss (%rdx,%r10,1),%xmm0,%xmm1
   0x00007ffff7fca6a1 <+1265>:	add    %rdx,%r10
   0x00007ffff7fca6a4 <+1268>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fca6a9 <+1273>:	vmovss (%rsi,%rbx,4),%xmm0
   0x00007ffff7fca6ae <+1278>:	vfmadd132ss (%rdx,%r10,1),%xmm1,%xmm0
   0x00007ffff7fca6b4 <+1284>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fca6b9 <+1289>:	add    $0x8,%rbx
   0x00007ffff7fca6bd <+1293>:	add    %r11,%r15
   0x00007ffff7fca6c0 <+1296>:	cmp    %rbx,%r14
   0x00007ffff7fca6c3 <+1299>:	jne    0x7ffff7fca620 <mm3_kernel1+1136>
   0x00007ffff7fca6c9 <+1305>:	cmpq   $0x0,-0x30(%rsp)
   0x00007ffff7fca6cf <+1311>:	je     0x7ffff7fca72b <mm3_kernel1+1403>
   0x00007ffff7fca6d1 <+1313>:	mov    -0x80(%rsp),%rdi
   0x00007ffff7fca6d6 <+1318>:	imul   %rbx,%rdi
   0x00007ffff7fca6da <+1322>:	add    %r12,%rdi
   0x00007ffff7fca6dd <+1325>:	mov    -0x58(%rsp),%rbp
   0x00007ffff7fca6e2 <+1330>:	lea    0x0(,%rdi,4),%rdi
   0x00007ffff7fca6ea <+1338>:	add    %rbp,%rdi
   0x00007ffff7fca6ed <+1341>:	add    -0x38(%rsp),%rbx
   0x00007ffff7fca6f2 <+1346>:	mov    -0x60(%rsp),%rbp
   0x00007ffff7fca6f7 <+1351>:	lea    0x0(,%rbx,4),%rbx
   0x00007ffff7fca6ff <+1359>:	add    %rbp,%rbx
   0x00007ffff7fca702 <+1362>:	mov    -0x40(%rsp),%rbp
   0x00007ffff7fca707 <+1367>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fca710 <+1376>:	vmovss (%rbx),%xmm1
   0x00007ffff7fca714 <+1380>:	vfmadd231ss (%rdi),%xmm1,%xmm0
   0x00007ffff7fca719 <+1385>:	vmovss %xmm0,(%rcx,%rax,4)
   0x00007ffff7fca71e <+1390>:	add    %rdx,%rdi
   0x00007ffff7fca721 <+1393>:	add    $0x4,%rbx
   0x00007ffff7fca725 <+1397>:	add    $0x1,%rbp
   0x00007ffff7fca729 <+1401>:	jne    0x7ffff7fca710 <mm3_kernel1+1376>
   0x00007ffff7fca72b <+1403>:	add    $0x1,%r9
   0x00007ffff7fca72f <+1407>:	add    $0x1,%r13
   0x00007ffff7fca733 <+1411>:	cmp    -0x10(%rsp),%r9
   0x00007ffff7fca738 <+1416>:	jne    0x7ffff7fca5d0 <mm3_kernel1+1056>
   0x00007ffff7fca73e <+1422>:	mov    -0x50(%rsp),%rsi
   0x00007ffff7fca743 <+1427>:	add    $0x1,%rsi
   0x00007ffff7fca747 <+1431>:	mov    -0x68(%rsp),%rax
   0x00007ffff7fca74c <+1436>:	add    $0x1,%rax
   0x00007ffff7fca750 <+1440>:	mov    -0x48(%rsp),%ebp
   0x00007ffff7fca754 <+1444>:	add    -0x78(%rsp),%ebp
   0x00007ffff7fca758 <+1448>:	cmp    -0x18(%rsp),%rsi
   0x00007ffff7fca75d <+1453>:	jne    0x7ffff7fca5a0 <mm3_kernel1+1008>
   0x00007ffff7fca763 <+1459>:	pop    %rbx
   0x00007ffff7fca764 <+1460>:	pop    %r12
   0x00007ffff7fca766 <+1462>:	pop    %r13
   0x00007ffff7fca768 <+1464>:	pop    %r14
   0x00007ffff7fca76a <+1466>:	pop    %r15
   0x00007ffff7fca76c <+1468>:	pop    %rbp
   0x00007ffff7fca76d <+1469>:	vzeroupper 
   0x00007ffff7fca770 <+1472>:	ret    
End of assembler dump.
