Dump of assembler code for function mm2_kernel2:
=> 0x00007ffff7fcb730 <+0>:	push   %rbp
   0x00007ffff7fcb731 <+1>:	push   %r15
   0x00007ffff7fcb733 <+3>:	push   %r14
   0x00007ffff7fcb735 <+5>:	push   %r13
   0x00007ffff7fcb737 <+7>:	push   %r12
   0x00007ffff7fcb739 <+9>:	push   %rbx
   0x00007ffff7fcb73a <+10>:	mov    0x68(%rdi),%r8
   0x00007ffff7fcb73e <+14>:	mov    0x70(%rdi),%rcx
   0x00007ffff7fcb742 <+18>:	mov    (%rsi),%rax
   0x00007ffff7fcb745 <+21>:	imul   %r8,%rax
   0x00007ffff7fcb749 <+25>:	add    0x38(%rdi),%rax
   0x00007ffff7fcb74d <+29>:	mov    0x8(%rsi),%rsi
   0x00007ffff7fcb751 <+33>:	imul   %rcx,%rsi
   0x00007ffff7fcb755 <+37>:	add    0x40(%rdi),%rsi
   0x00007ffff7fcb759 <+41>:	movslq 0x18(%rdi),%rbp
   0x00007ffff7fcb75d <+45>:	add    %rsi,%rcx
   0x00007ffff7fcb760 <+48>:	cmp    %rbp,%rcx
   0x00007ffff7fcb763 <+51>:	mov    %rbp,%rdx
   0x00007ffff7fcb766 <+54>:	cmovle %rcx,%rdx
   0x00007ffff7fcb76a <+58>:	test   %rbp,%rbp
   0x00007ffff7fcb76d <+61>:	movslq 0x24(%rdi),%rbx
   0x00007ffff7fcb771 <+65>:	cmovs  %rcx,%rdx
   0x00007ffff7fcb775 <+69>:	add    %rax,%r8
   0x00007ffff7fcb778 <+72>:	cmp    %rbx,%r8
   0x00007ffff7fcb77b <+75>:	mov    %rbx,%rbp
   0x00007ffff7fcb77e <+78>:	cmovle %r8,%rbp
   0x00007ffff7fcb782 <+82>:	mov    %rbx,%rcx
   0x00007ffff7fcb785 <+85>:	mov    %rcx,-0x80(%rsp)
   0x00007ffff7fcb78a <+90>:	test   %rbx,%rbx
   0x00007ffff7fcb78d <+93>:	cmovs  %r8,%rbp
   0x00007ffff7fcb791 <+97>:	mov    %rax,-0x70(%rsp)
   0x00007ffff7fcb796 <+102>:	sub    %rax,%rbp
   0x00007ffff7fcb799 <+105>:	mov    %rbp,%rax
   0x00007ffff7fcb79c <+108>:	test   %rbp,%rbp
   0x00007ffff7fcb79f <+111>:	jle    0x7ffff7fcbcd3 <mm2_kernel2+1443>
   0x00007ffff7fcb7a5 <+117>:	sub    %rsi,%rdx
   0x00007ffff7fcb7a8 <+120>:	mov    %rdx,-0x18(%rsp)
   0x00007ffff7fcb7ad <+125>:	test   %rdx,%rdx
   0x00007ffff7fcb7b0 <+128>:	jle    0x7ffff7fcbcd3 <mm2_kernel2+1443>
   0x00007ffff7fcb7b6 <+134>:	mov    %rsi,-0x68(%rsp)
   0x00007ffff7fcb7bb <+139>:	mov    (%rdi),%rcx
   0x00007ffff7fcb7be <+142>:	mov    %rcx,-0x60(%rsp)
   0x00007ffff7fcb7c3 <+147>:	mov    0x8(%rdi),%rcx
   0x00007ffff7fcb7c7 <+151>:	mov    %rcx,-0x58(%rsp)
   0x00007ffff7fcb7cc <+156>:	mov    0x10(%rdi),%rcx
   0x00007ffff7fcb7d0 <+160>:	movslq 0x1c(%rdi),%rdx
   0x00007ffff7fcb7d4 <+164>:	mov    %rdx,-0x78(%rsp)
   0x00007ffff7fcb7d9 <+169>:	vmovss 0x2c(%rdi),%xmm0
   0x00007ffff7fcb7de <+174>:	mov    %rax,%rsi
   0x00007ffff7fcb7e1 <+177>:	sar    $0x3,%rsi
   0x00007ffff7fcb7e5 <+181>:	mov    %rax,%rdx
   0x00007ffff7fcb7e8 <+184>:	and    $0xfffffffffffffff8,%rdx
   0x00007ffff7fcb7ec <+188>:	mov    %rdx,-0x20(%rsp)
   0x00007ffff7fcb7f1 <+193>:	sub    %rdx,%rax
   0x00007ffff7fcb7f4 <+196>:	mov    %rax,-0x10(%rsp)
   0x00007ffff7fcb7f9 <+201>:	test   %rsi,%rsi
   0x00007ffff7fcb7fc <+204>:	je     0x7ffff7fcba9b <mm2_kernel2+875>
   0x00007ffff7fcb802 <+210>:	vbroadcastss %xmm0,%ymm1
   0x00007ffff7fcb807 <+215>:	mov    -0x78(%rsp),%rbp
   0x00007ffff7fcb80c <+220>:	lea    -0x1(%rbp),%rax
   0x00007ffff7fcb810 <+224>:	mov    %rax,-0x28(%rsp)
   0x00007ffff7fcb815 <+229>:	mov    %ebp,%r13d
   0x00007ffff7fcb818 <+232>:	and    $0x7,%r13d
   0x00007ffff7fcb81c <+236>:	mov    %rbp,%rdx
   0x00007ffff7fcb81f <+239>:	sub    %r13,%rdx
   0x00007ffff7fcb822 <+242>:	mov    -0x60(%rsp),%rax
   0x00007ffff7fcb827 <+247>:	lea    0x1c(%rax),%rax
   0x00007ffff7fcb82b <+251>:	mov    %rax,-0x8(%rsp)
   0x00007ffff7fcb830 <+256>:	mov    -0x68(%rsp),%rdi
   0x00007ffff7fcb835 <+261>:	mov    %edi,%ebx
   0x00007ffff7fcb837 <+263>:	imul   %ebp,%ebx
   0x00007ffff7fcb83a <+266>:	mov    -0x80(%rsp),%rax
   0x00007ffff7fcb83f <+271>:	mov    %rax,%r11
   0x00007ffff7fcb842 <+274>:	shl    $0x5,%r11
   0x00007ffff7fcb846 <+278>:	lea    0x0(,%rax,4),%r8
   0x00007ffff7fcb84e <+286>:	mov    %r13,%rax
   0x00007ffff7fcb851 <+289>:	neg    %rax
   0x00007ffff7fcb854 <+292>:	mov    %rax,-0x38(%rsp)
   0x00007ffff7fcb859 <+297>:	xor    %ebp,%ebp
   0x00007ffff7fcb85b <+299>:	movabs $0x7ffff7fca040,%rax
   0x00007ffff7fcb865 <+309>:	vmovdqa (%rax),%ymm2
   0x00007ffff7fcb869 <+313>:	movabs $0x7ffff7fca060,%rax
   0x00007ffff7fcb873 <+323>:	vmovdqa (%rax),%ymm3
   0x00007ffff7fcb877 <+327>:	mov    %rdi,%rax
   0x00007ffff7fcb87a <+330>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fcb880 <+336>:	mov    %rbp,-0x48(%rsp)
   0x00007ffff7fcb885 <+341>:	mov    %ebx,-0x40(%rsp)
   0x00007ffff7fcb889 <+345>:	movslq %ebx,%rdi
   0x00007ffff7fcb88c <+348>:	mov    %rax,-0x50(%rsp)
   0x00007ffff7fcb891 <+353>:	mov    %eax,%ebp
   0x00007ffff7fcb893 <+355>:	imul   -0x80(%rsp),%ebp
   0x00007ffff7fcb898 <+360>:	mov    -0x8(%rsp),%rax
   0x00007ffff7fcb89d <+365>:	mov    %rdi,-0x30(%rsp)
   0x00007ffff7fcb8a2 <+370>:	lea    (%rax,%rdi,4),%r10
   0x00007ffff7fcb8a6 <+374>:	mov    -0x70(%rsp),%r15
   0x00007ffff7fcb8ab <+379>:	vmovq  %r15,%xmm4
   0x00007ffff7fcb8b0 <+384>:	vpbroadcastq %xmm4,%ymm4
   0x00007ffff7fcb8b5 <+389>:	vpsllq $0x20,%ymm4,%ymm5
   0x00007ffff7fcb8ba <+394>:	vpaddq %ymm2,%ymm5,%ymm4
   0x00007ffff7fcb8be <+398>:	vpaddq %ymm3,%ymm5,%ymm5
   0x00007ffff7fcb8c2 <+402>:	vmovq  %xmm5,%rax
   0x00007ffff7fcb8c7 <+407>:	vpextrq $0x1,%xmm5,%rdi
   0x00007ffff7fcb8cd <+413>:	sub    %rax,%rdi
   0x00007ffff7fcb8d0 <+416>:	shl    $0x3,%rdi
   0x00007ffff7fcb8d4 <+420>:	vmovq  %rdi,%xmm6
   0x00007ffff7fcb8d9 <+425>:	vpbroadcastq %xmm6,%ymm6
   0x00007ffff7fcb8de <+430>:	xor    %r14d,%r14d
   0x00007ffff7fcb8e1 <+433>:	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb8f0 <+448>:	lea    (%r15,%rbp,1),%eax
   0x00007ffff7fcb8f4 <+452>:	movslq %eax,%r12
   0x00007ffff7fcb8f7 <+455>:	vmulps (%rcx,%r12,4),%ymm1,%ymm7
   0x00007ffff7fcb8fd <+461>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fcb903 <+467>:	cmpl   $0x0,-0x78(%rsp)
   0x00007ffff7fcb908 <+472>:	jle    0x7ffff7fcba5d <mm2_kernel2+813>
   0x00007ffff7fcb90e <+478>:	vpsrad $0x1f,%ymm5,%ymm8
   0x00007ffff7fcb913 <+483>:	vpshufd $0xf5,%ymm5,%ymm9
   0x00007ffff7fcb918 <+488>:	vpblendd $0xaa,%ymm8,%ymm9,%ymm8
   0x00007ffff7fcb91e <+494>:	cmpq   $0x7,-0x28(%rsp)
   0x00007ffff7fcb924 <+500>:	jae    0x7ffff7fcb940 <mm2_kernel2+528>
   0x00007ffff7fcb926 <+502>:	xor    %eax,%eax
   0x00007ffff7fcb928 <+504>:	test   %r13,%r13
   0x00007ffff7fcb92b <+507>:	jne    0x7ffff7fcba0e <mm2_kernel2+734>
   0x00007ffff7fcb931 <+513>:	jmp    0x7ffff7fcba5d <mm2_kernel2+813>
   0x00007ffff7fcb936 <+518>:	nopw   %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcb940 <+528>:	vmovq  %xmm8,%rax
   0x00007ffff7fcb945 <+533>:	mov    -0x58(%rsp),%rdi
   0x00007ffff7fcb94a <+538>:	lea    (%rdi,%rax,4),%rbx
   0x00007ffff7fcb94e <+542>:	xor    %eax,%eax
   0x00007ffff7fcb950 <+544>:	vbroadcastss -0x1c(%r10,%rax,4),%ymm9
   0x00007ffff7fcb957 <+551>:	vfmadd132ps (%rbx),%ymm7,%ymm9
   0x00007ffff7fcb95c <+556>:	vmovups %ymm9,(%rcx,%r12,4)
   0x00007ffff7fcb962 <+562>:	vbroadcastss -0x18(%r10,%rax,4),%ymm7
   0x00007ffff7fcb969 <+569>:	vfmadd132ps (%rbx,%r8,1),%ymm9,%ymm7
   0x00007ffff7fcb96f <+575>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fcb975 <+581>:	lea    (%rbx,%r8,1),%r9
   0x00007ffff7fcb979 <+585>:	vbroadcastss -0x14(%r10,%rax,4),%ymm9
   0x00007ffff7fcb980 <+592>:	vfmadd132ps (%r8,%r9,1),%ymm7,%ymm9
   0x00007ffff7fcb986 <+598>:	add    %r8,%r9
   0x00007ffff7fcb989 <+601>:	vmovups %ymm9,(%rcx,%r12,4)
   0x00007ffff7fcb98f <+607>:	vbroadcastss -0x10(%r10,%rax,4),%ymm7
   0x00007ffff7fcb996 <+614>:	vfmadd132ps (%r8,%r9,1),%ymm9,%ymm7
   0x00007ffff7fcb99c <+620>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fcb9a2 <+626>:	add    %r8,%r9
   0x00007ffff7fcb9a5 <+629>:	vbroadcastss -0xc(%r10,%rax,4),%ymm9
   0x00007ffff7fcb9ac <+636>:	vfmadd132ps (%r8,%r9,1),%ymm7,%ymm9
   0x00007ffff7fcb9b2 <+642>:	add    %r8,%r9
   0x00007ffff7fcb9b5 <+645>:	vmovups %ymm9,(%rcx,%r12,4)
   0x00007ffff7fcb9bb <+651>:	vbroadcastss -0x8(%r10,%rax,4),%ymm7
   0x00007ffff7fcb9c2 <+658>:	vfmadd132ps (%r8,%r9,1),%ymm9,%ymm7
   0x00007ffff7fcb9c8 <+664>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fcb9ce <+670>:	add    %r8,%r9
   0x00007ffff7fcb9d1 <+673>:	vbroadcastss -0x4(%r10,%rax,4),%ymm9
   0x00007ffff7fcb9d8 <+680>:	vfmadd132ps (%r8,%r9,1),%ymm7,%ymm9
   0x00007ffff7fcb9de <+686>:	add    %r8,%r9
   0x00007ffff7fcb9e1 <+689>:	vmovups %ymm9,(%rcx,%r12,4)
   0x00007ffff7fcb9e7 <+695>:	vbroadcastss (%r10,%rax,4),%ymm7
   0x00007ffff7fcb9ed <+701>:	vfmadd132ps (%r8,%r9,1),%ymm9,%ymm7
   0x00007ffff7fcb9f3 <+707>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fcb9f9 <+713>:	add    $0x8,%rax
   0x00007ffff7fcb9fd <+717>:	add    %r11,%rbx
   0x00007ffff7fcba00 <+720>:	cmp    %rax,%rdx
   0x00007ffff7fcba03 <+723>:	jne    0x7ffff7fcb950 <mm2_kernel2+544>
   0x00007ffff7fcba09 <+729>:	test   %r13,%r13
   0x00007ffff7fcba0c <+732>:	je     0x7ffff7fcba5d <mm2_kernel2+813>
   0x00007ffff7fcba0e <+734>:	vmovq  %xmm8,%rdi
   0x00007ffff7fcba13 <+739>:	mov    -0x80(%rsp),%rbx
   0x00007ffff7fcba18 <+744>:	imul   %rax,%rbx
   0x00007ffff7fcba1c <+748>:	add    %rdi,%rbx
   0x00007ffff7fcba1f <+751>:	mov    -0x58(%rsp),%rdi
   0x00007ffff7fcba24 <+756>:	lea    (%rdi,%rbx,4),%rbx
   0x00007ffff7fcba28 <+760>:	add    -0x30(%rsp),%rax
   0x00007ffff7fcba2d <+765>:	mov    -0x60(%rsp),%rdi
   0x00007ffff7fcba32 <+770>:	lea    (%rdi,%rax,4),%rax
   0x00007ffff7fcba36 <+774>:	mov    -0x38(%rsp),%rdi
   0x00007ffff7fcba3b <+779>:	nopl   0x0(%rax,%rax,1)
   0x00007ffff7fcba40 <+784>:	vbroadcastss (%rax),%ymm8
   0x00007ffff7fcba45 <+789>:	vfmadd231ps (%rbx),%ymm8,%ymm7
   0x00007ffff7fcba4a <+794>:	vmovups %ymm7,(%rcx,%r12,4)
   0x00007ffff7fcba50 <+800>:	add    %r8,%rbx
   0x00007ffff7fcba53 <+803>:	add    $0x4,%rax
   0x00007ffff7fcba57 <+807>:	add    $0x1,%rdi
   0x00007ffff7fcba5b <+811>:	jne    0x7ffff7fcba40 <mm2_kernel2+784>
   0x00007ffff7fcba5d <+813>:	add    $0x1,%r14
   0x00007ffff7fcba61 <+817>:	add    $0x8,%r15
   0x00007ffff7fcba65 <+821>:	vpaddq %ymm6,%ymm5,%ymm5
   0x00007ffff7fcba69 <+825>:	vpaddq %ymm6,%ymm4,%ymm4
   0x00007ffff7fcba6d <+829>:	cmp    %rsi,%r14
   0x00007ffff7fcba70 <+832>:	jne    0x7ffff7fcb8f0 <mm2_kernel2+448>
   0x00007ffff7fcba76 <+838>:	mov    -0x48(%rsp),%rbp
   0x00007ffff7fcba7b <+843>:	add    $0x1,%rbp
   0x00007ffff7fcba7f <+847>:	mov    -0x50(%rsp),%rax
   0x00007ffff7fcba84 <+852>:	add    $0x1,%rax
   0x00007ffff7fcba88 <+856>:	mov    -0x40(%rsp),%ebx
   0x00007ffff7fcba8c <+860>:	add    -0x78(%rsp),%ebx
   0x00007ffff7fcba90 <+864>:	cmp    -0x18(%rsp),%rbp
   0x00007ffff7fcba95 <+869>:	jne    0x7ffff7fcb880 <mm2_kernel2+336>
   0x00007ffff7fcba9b <+875>:	cmpq   $0x0,-0x10(%rsp)
   0x00007ffff7fcbaa1 <+881>:	mov    -0x68(%rsp),%rax
   0x00007ffff7fcbaa6 <+886>:	je     0x7ffff7fcbcd3 <mm2_kernel2+1443>
   0x00007ffff7fcbaac <+892>:	mov    -0x70(%rsp),%rdx
   0x00007ffff7fcbab1 <+897>:	add    %rdx,-0x20(%rsp)
   0x00007ffff7fcbab6 <+902>:	mov    -0x78(%rsp),%rsi
   0x00007ffff7fcbabb <+907>:	lea    -0x1(%rsi),%rdx
   0x00007ffff7fcbabf <+911>:	mov    %rdx,-0x28(%rsp)
   0x00007ffff7fcbac4 <+916>:	mov    %esi,%edi
   0x00007ffff7fcbac6 <+918>:	and    $0x7,%edi
   0x00007ffff7fcbac9 <+921>:	mov    %rsi,%r11
   0x00007ffff7fcbacc <+924>:	sub    %rdi,%r11
   0x00007ffff7fcbacf <+927>:	mov    -0x60(%rsp),%rdx
   0x00007ffff7fcbad4 <+932>:	lea    0x1c(%rdx),%rdx
   0x00007ffff7fcbad8 <+936>:	mov    %rdx,-0x70(%rsp)
   0x00007ffff7fcbadd <+941>:	mov    %eax,%ebp
   0x00007ffff7fcbadf <+943>:	imul   %esi,%ebp
   0x00007ffff7fcbae2 <+946>:	mov    -0x80(%rsp),%rdx
   0x00007ffff7fcbae7 <+951>:	mov    %rdx,%r15
   0x00007ffff7fcbaea <+954>:	shl    $0x5,%r15
   0x00007ffff7fcbaee <+958>:	lea    0x0(,%rdx,4),%rdx
   0x00007ffff7fcbaf6 <+966>:	mov    %rdi,-0x30(%rsp)
   0x00007ffff7fcbafb <+971>:	neg    %rdi
   0x00007ffff7fcbafe <+974>:	mov    %rdi,-0x40(%rsp)
   0x00007ffff7fcbb03 <+979>:	xor    %esi,%esi
   0x00007ffff7fcbb05 <+981>:	data16 nopw %cs:0x0(%rax,%rax,1)
   0x00007ffff7fcbb10 <+992>:	mov    %rsi,-0x50(%rsp)
   0x00007ffff7fcbb15 <+997>:	mov    %ebp,-0x48(%rsp)
   0x00007ffff7fcbb19 <+1001>:	movslq %ebp,%rdi
   0x00007ffff7fcbb1c <+1004>:	mov    -0x70(%rsp),%rsi
   0x00007ffff7fcbb21 <+1009>:	mov    %rdi,-0x38(%rsp)
   0x00007ffff7fcbb26 <+1014>:	lea    (%rsi,%rdi,4),%rsi
   0x00007ffff7fcbb2a <+1018>:	mov    %rax,-0x68(%rsp)
   0x00007ffff7fcbb2f <+1023>:	mov    %eax,%r8d
   0x00007ffff7fcbb32 <+1026>:	imul   -0x80(%rsp),%r8d
   0x00007ffff7fcbb38 <+1032>:	xor    %r9d,%r9d
   0x00007ffff7fcbb3b <+1035>:	mov    -0x20(%rsp),%r13
   0x00007ffff7fcbb40 <+1040>:	lea    (%r8,%r13,1),%eax
   0x00007ffff7fcbb44 <+1044>:	cltq   
   0x00007ffff7fcbb46 <+1046>:	vmulss (%rcx,%rax,4),%xmm0,%xmm1
   0x00007ffff7fcbb4b <+1051>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fcbb50 <+1056>:	cmpl   $0x0,-0x78(%rsp)
   0x00007ffff7fcbb55 <+1061>:	jle    0x7ffff7fcbc9b <mm2_kernel2+1387>
   0x00007ffff7fcbb5b <+1067>:	movslq %r13d,%r12
   0x00007ffff7fcbb5e <+1070>:	cmpq   $0x7,-0x28(%rsp)
   0x00007ffff7fcbb64 <+1076>:	jae    0x7ffff7fcbb80 <mm2_kernel2+1104>
   0x00007ffff7fcbb66 <+1078>:	xor    %ebx,%ebx
   0x00007ffff7fcbb68 <+1080>:	cmpq   $0x0,-0x30(%rsp)
   0x00007ffff7fcbb6e <+1086>:	jne    0x7ffff7fcbc41 <mm2_kernel2+1297>
   0x00007ffff7fcbb74 <+1092>:	jmp    0x7ffff7fcbc9b <mm2_kernel2+1387>
   0x00007ffff7fcbb79 <+1097>:	nopl   0x0(%rax)
   0x00007ffff7fcbb80 <+1104>:	mov    -0x58(%rsp),%rdi
   0x00007ffff7fcbb85 <+1109>:	lea    (%rdi,%r12,4),%r14
   0x00007ffff7fcbb89 <+1113>:	xor    %ebx,%ebx
   0x00007ffff7fcbb8b <+1115>:	nopl   0x0(%rax,%rax,1)
   0x00007ffff7fcbb90 <+1120>:	vmovss -0x1c(%rsi,%rbx,4),%xmm2
   0x00007ffff7fcbb96 <+1126>:	vfmadd132ss (%r14),%xmm1,%xmm2
   0x00007ffff7fcbb9b <+1131>:	vmovss %xmm2,(%rcx,%rax,4)
   0x00007ffff7fcbba0 <+1136>:	vmovss -0x18(%rsi,%rbx,4),%xmm1
   0x00007ffff7fcbba6 <+1142>:	vfmadd132ss (%r14,%rdx,1),%xmm2,%xmm1
   0x00007ffff7fcbbac <+1148>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fcbbb1 <+1153>:	lea    (%r14,%rdx,1),%r10
   0x00007ffff7fcbbb5 <+1157>:	vmovss -0x14(%rsi,%rbx,4),%xmm2
   0x00007ffff7fcbbbb <+1163>:	vfmadd132ss (%rdx,%r10,1),%xmm1,%xmm2
   0x00007ffff7fcbbc1 <+1169>:	add    %rdx,%r10
   0x00007ffff7fcbbc4 <+1172>:	vmovss %xmm2,(%rcx,%rax,4)
   0x00007ffff7fcbbc9 <+1177>:	vmovss -0x10(%rsi,%rbx,4),%xmm1
   0x00007ffff7fcbbcf <+1183>:	vfmadd132ss (%rdx,%r10,1),%xmm2,%xmm1
   0x00007ffff7fcbbd5 <+1189>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fcbbda <+1194>:	add    %rdx,%r10
   0x00007ffff7fcbbdd <+1197>:	vmovss -0xc(%rsi,%rbx,4),%xmm2
   0x00007ffff7fcbbe3 <+1203>:	vfmadd132ss (%rdx,%r10,1),%xmm1,%xmm2
   0x00007ffff7fcbbe9 <+1209>:	add    %rdx,%r10
   0x00007ffff7fcbbec <+1212>:	vmovss %xmm2,(%rcx,%rax,4)
   0x00007ffff7fcbbf1 <+1217>:	vmovss -0x8(%rsi,%rbx,4),%xmm1
   0x00007ffff7fcbbf7 <+1223>:	vfmadd132ss (%rdx,%r10,1),%xmm2,%xmm1
   0x00007ffff7fcbbfd <+1229>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fcbc02 <+1234>:	add    %rdx,%r10
   0x00007ffff7fcbc05 <+1237>:	vmovss -0x4(%rsi,%rbx,4),%xmm2
   0x00007ffff7fcbc0b <+1243>:	vfmadd132ss (%rdx,%r10,1),%xmm1,%xmm2
   0x00007ffff7fcbc11 <+1249>:	add    %rdx,%r10
   0x00007ffff7fcbc14 <+1252>:	vmovss %xmm2,(%rcx,%rax,4)
   0x00007ffff7fcbc19 <+1257>:	vmovss (%rsi,%rbx,4),%xmm1
   0x00007ffff7fcbc1e <+1262>:	vfmadd132ss (%rdx,%r10,1),%xmm2,%xmm1
   0x00007ffff7fcbc24 <+1268>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fcbc29 <+1273>:	add    $0x8,%rbx
   0x00007ffff7fcbc2d <+1277>:	add    %r15,%r14
   0x00007ffff7fcbc30 <+1280>:	cmp    %rbx,%r11
   0x00007ffff7fcbc33 <+1283>:	jne    0x7ffff7fcbb90 <mm2_kernel2+1120>
   0x00007ffff7fcbc39 <+1289>:	cmpq   $0x0,-0x30(%rsp)
   0x00007ffff7fcbc3f <+1295>:	je     0x7ffff7fcbc9b <mm2_kernel2+1387>
   0x00007ffff7fcbc41 <+1297>:	mov    -0x80(%rsp),%rdi
   0x00007ffff7fcbc46 <+1302>:	imul   %rbx,%rdi
   0x00007ffff7fcbc4a <+1306>:	add    %r12,%rdi
   0x00007ffff7fcbc4d <+1309>:	mov    -0x58(%rsp),%rbp
   0x00007ffff7fcbc52 <+1314>:	lea    0x0(,%rdi,4),%rdi
   0x00007ffff7fcbc5a <+1322>:	add    %rbp,%rdi
   0x00007ffff7fcbc5d <+1325>:	add    -0x38(%rsp),%rbx
   0x00007ffff7fcbc62 <+1330>:	mov    -0x60(%rsp),%rbp
   0x00007ffff7fcbc67 <+1335>:	lea    0x0(,%rbx,4),%rbx
   0x00007ffff7fcbc6f <+1343>:	add    %rbp,%rbx
   0x00007ffff7fcbc72 <+1346>:	mov    -0x40(%rsp),%rbp
   0x00007ffff7fcbc77 <+1351>:	nopw   0x0(%rax,%rax,1)
   0x00007ffff7fcbc80 <+1360>:	vmovss (%rbx),%xmm2
   0x00007ffff7fcbc84 <+1364>:	vfmadd231ss (%rdi),%xmm2,%xmm1
   0x00007ffff7fcbc89 <+1369>:	vmovss %xmm1,(%rcx,%rax,4)
   0x00007ffff7fcbc8e <+1374>:	add    %rdx,%rdi
   0x00007ffff7fcbc91 <+1377>:	add    $0x4,%rbx
   0x00007ffff7fcbc95 <+1381>:	add    $0x1,%rbp
   0x00007ffff7fcbc99 <+1385>:	jne    0x7ffff7fcbc80 <mm2_kernel2+1360>
   0x00007ffff7fcbc9b <+1387>:	add    $0x1,%r9
   0x00007ffff7fcbc9f <+1391>:	add    $0x1,%r13
   0x00007ffff7fcbca3 <+1395>:	cmp    -0x10(%rsp),%r9
   0x00007ffff7fcbca8 <+1400>:	jne    0x7ffff7fcbb40 <mm2_kernel2+1040>
   0x00007ffff7fcbcae <+1406>:	mov    -0x50(%rsp),%rsi
   0x00007ffff7fcbcb3 <+1411>:	add    $0x1,%rsi
   0x00007ffff7fcbcb7 <+1415>:	mov    -0x68(%rsp),%rax
   0x00007ffff7fcbcbc <+1420>:	add    $0x1,%rax
   0x00007ffff7fcbcc0 <+1424>:	mov    -0x48(%rsp),%ebp
   0x00007ffff7fcbcc4 <+1428>:	add    -0x78(%rsp),%ebp
   0x00007ffff7fcbcc8 <+1432>:	cmp    -0x18(%rsp),%rsi
   0x00007ffff7fcbccd <+1437>:	jne    0x7ffff7fcbb10 <mm2_kernel2+992>
   0x00007ffff7fcbcd3 <+1443>:	pop    %rbx
   0x00007ffff7fcbcd4 <+1444>:	pop    %r12
   0x00007ffff7fcbcd6 <+1446>:	pop    %r13
   0x00007ffff7fcbcd8 <+1448>:	pop    %r14
   0x00007ffff7fcbcda <+1450>:	pop    %r15
   0x00007ffff7fcbcdc <+1452>:	pop    %rbp
   0x00007ffff7fcbcdd <+1453>:	vzeroupper 
   0x00007ffff7fcbce0 <+1456>:	ret    
End of assembler dump.
