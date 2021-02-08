Dump of assembler code for function _pocl_kernel_mvt_kernel1_workgroup:
=> 0x00007fffe838d250 <+0>:	sub    $0x18,%rsp
   0x00007fffe838d254 <+4>:	mov    0x18(%rdi),%rax
   0x00007fffe838d258 <+8>:	mov    (%rax),%r8d
   0x00007fffe838d25b <+11>:	test   %r8d,%r8d
   0x00007fffe838d25e <+14>:	jle    0x7fffe838d49e <_pocl_kernel_mvt_kernel1_workgroup+590>
   0x00007fffe838d264 <+20>:	mov    (%rdi),%rax
   0x00007fffe838d267 <+23>:	mov    0x8(%rdi),%rcx
   0x00007fffe838d26b <+27>:	mov    (%rax),%rax
   0x00007fffe838d26e <+30>:	mov    (%rcx),%rcx
   0x00007fffe838d271 <+33>:	mov    0x10(%rdi),%rsi
   0x00007fffe838d275 <+37>:	mov    (%rsi),%rsi
   0x00007fffe838d278 <+40>:	shl    $0x5,%rdx
   0x00007fffe838d27c <+44>:	vmovq  %rdx,%xmm0
   0x00007fffe838d281 <+49>:	vpbroadcastq %xmm0,%ymm0
   0x00007fffe838d286 <+54>:	vmovdqu %ymm0,-0x20(%rsp)
   0x00007fffe838d28c <+60>:	vmovd  %r8d,%xmm1
   0x00007fffe838d291 <+65>:	vpbroadcastd %xmm1,%ymm0
   0x00007fffe838d296 <+70>:	vmovdqu %ymm0,-0x40(%rsp)
   0x00007fffe838d29c <+76>:	vmovq  %r8,%xmm2
   0x00007fffe838d2a1 <+81>:	vpbroadcastq %xmm2,%ymm2
   0x00007fffe838d2a6 <+86>:	vmovdqa 0xd52(%rip),%ymm3        # 0x7fffe838e000
   0x00007fffe838d2ae <+94>:	vmovdqa 0xd6a(%rip),%ymm4        # 0x7fffe838e020
   0x00007fffe838d2b6 <+102>:	xor    %edx,%edx
   0x00007fffe838d2b8 <+104>:	vmovq  %rcx,%xmm6
   0x00007fffe838d2bd <+109>:	vpbroadcastq %xmm6,%ymm0
   0x00007fffe838d2c2 <+114>:	vmovdqu %ymm0,-0x60(%rsp)
   0x00007fffe838d2c8 <+120>:	vpcmpeqd %ymm7,%ymm7,%ymm7
   0x00007fffe838d2cc <+124>:	vpbroadcastq 0xd8b(%rip),%ymm0        # 0x7fffe838e060
   0x00007fffe838d2d5 <+133>:	vmovdqu %ymm0,-0x80(%rsp)
   0x00007fffe838d2db <+139>:	nopl   0x0(%rax,%rax,1)
   0x00007fffe838d2e0 <+144>:	vmovdqu -0x20(%rsp),%ymm0
   0x00007fffe838d2e6 <+150>:	vpaddq %ymm0,%ymm3,%ymm9
   0x00007fffe838d2ea <+154>:	vpaddq %ymm0,%ymm4,%ymm10
   0x00007fffe838d2ee <+158>:	vmovdqa 0xd4a(%rip),%ymm0        # 0x7fffe838e040
   0x00007fffe838d2f6 <+166>:	vpermd %ymm10,%ymm0,%ymm11
   0x00007fffe838d2fb <+171>:	vpermd %ymm9,%ymm0,%ymm12
   0x00007fffe838d300 <+176>:	vinserti128 $0x1,%xmm12,%ymm11,%ymm11
   0x00007fffe838d306 <+182>:	vpmulld -0x40(%rsp),%ymm11,%ymm12
   0x00007fffe838d30d <+189>:	vpsllq $0x20,%ymm9,%ymm11
   0x00007fffe838d313 <+195>:	vpsllq $0x20,%ymm10,%ymm9
   0x00007fffe838d319 <+201>:	vpsrad $0x1f,%ymm9,%ymm10
   0x00007fffe838d31f <+207>:	vpshufd $0xf5,%ymm9,%ymm13
   0x00007fffe838d325 <+213>:	vpblendd $0xaa,%ymm10,%ymm13,%ymm13
   0x00007fffe838d32b <+219>:	vpsrad $0x1f,%ymm11,%ymm10
   0x00007fffe838d331 <+225>:	vpshufd $0xf5,%ymm11,%ymm14
   0x00007fffe838d337 <+231>:	vpblendd $0xaa,%ymm10,%ymm14,%ymm14
   0x00007fffe838d33d <+237>:	vpsrad $0x1e,%ymm9,%ymm10
   0x00007fffe838d343 <+243>:	vpsrlq $0x1e,%ymm9,%ymm9
   0x00007fffe838d349 <+249>:	vpblendd $0xaa,%ymm10,%ymm9,%ymm9
   0x00007fffe838d34f <+255>:	vmovdqu -0x60(%rsp),%ymm0
   0x00007fffe838d355 <+261>:	vpaddq %ymm0,%ymm9,%ymm9
   0x00007fffe838d359 <+265>:	vpsrad $0x1e,%ymm11,%ymm10
   0x00007fffe838d35f <+271>:	vpsrlq $0x1e,%ymm11,%ymm11
   0x00007fffe838d365 <+277>:	vpblendd $0xaa,%ymm10,%ymm11,%ymm10
   0x00007fffe838d36b <+283>:	vpaddq %ymm0,%ymm10,%ymm10
   0x00007fffe838d36f <+287>:	vpcmpeqd %xmm1,%xmm1,%xmm1
   0x00007fffe838d373 <+291>:	vgatherqps %xmm1,(%rcx,%ymm14,4),%xmm5
   0x00007fffe838d379 <+297>:	vpcmpeqd %xmm1,%xmm1,%xmm1
   0x00007fffe838d37d <+301>:	vgatherqps %xmm1,(%rcx,%ymm13,4),%xmm14
   0x00007fffe838d383 <+307>:	vextracti128 $0x1,%ymm12,%xmm1
   0x00007fffe838d389 <+313>:	vpmovsxdq %xmm1,%ymm11
   0x00007fffe838d38e <+318>:	vpmovsxdq %xmm12,%ymm12
   0x00007fffe838d393 <+323>:	vinsertf128 $0x1,%xmm5,%ymm14,%ymm13
   0x00007fffe838d399 <+329>:	vxorps %xmm14,%xmm14,%xmm14
   0x00007fffe838d39e <+334>:	vpxor  %xmm15,%xmm15,%xmm15
   0x00007fffe838d3a3 <+339>:	nopw   %cs:0x0(%rax,%rax,1)
   0x00007fffe838d3ad <+349>:	nopl   (%rax)
   0x00007fffe838d3b0 <+352>:	vpaddq %ymm12,%ymm14,%ymm1
   0x00007fffe838d3b5 <+357>:	vpaddq %ymm11,%ymm15,%ymm5
   0x00007fffe838d3ba <+362>:	vpcmpeqd %xmm0,%xmm0,%xmm0
   0x00007fffe838d3be <+366>:	vgatherqps %xmm0,(%rax,%ymm5,4),%xmm6
   0x00007fffe838d3c4 <+372>:	vpcmpeqd %xmm0,%xmm0,%xmm0
   0x00007fffe838d3c8 <+376>:	vgatherqps %xmm0,(%rax,%ymm1,4),%xmm5
   0x00007fffe838d3ce <+382>:	vpcmpeqd %xmm0,%xmm0,%xmm0
   0x00007fffe838d3d2 <+386>:	vgatherqps %xmm0,(%rsi,%ymm15,4),%xmm1
   0x00007fffe838d3d8 <+392>:	vpcmpeqd %xmm0,%xmm0,%xmm0
   0x00007fffe838d3dc <+396>:	vgatherqps %xmm0,(%rsi,%ymm14,4),%xmm8
   0x00007fffe838d3e2 <+402>:	vinsertf128 $0x1,%xmm6,%ymm5,%ymm0
   0x00007fffe838d3e8 <+408>:	vinsertf128 $0x1,%xmm1,%ymm8,%ymm1
   0x00007fffe838d3ee <+414>:	vfmadd231ps %ymm1,%ymm0,%ymm13
   0x00007fffe838d3f3 <+419>:	vmovq  %xmm9,%rdi
   0x00007fffe838d3f8 <+424>:	vmovss %xmm13,(%rdi)
   0x00007fffe838d3fc <+428>:	vpextrq $0x1,%xmm9,%rdi
   0x00007fffe838d402 <+434>:	vextractps $0x1,%xmm13,(%rdi)
   0x00007fffe838d408 <+440>:	vextracti128 $0x1,%ymm9,%xmm0
   0x00007fffe838d40e <+446>:	vmovq  %xmm0,%rdi
   0x00007fffe838d413 <+451>:	vextractps $0x2,%xmm13,(%rdi)
   0x00007fffe838d419 <+457>:	vpextrq $0x1,%xmm0,%rdi
   0x00007fffe838d41f <+463>:	vextractps $0x3,%xmm13,(%rdi)
   0x00007fffe838d425 <+469>:	vextractf128 $0x1,%ymm13,%xmm0
   0x00007fffe838d42b <+475>:	vmovq  %xmm10,%rdi
   0x00007fffe838d430 <+480>:	vmovss %xmm0,(%rdi)
   0x00007fffe838d434 <+484>:	vpextrq $0x1,%xmm10,%rdi
   0x00007fffe838d43a <+490>:	vextractps $0x1,%xmm0,(%rdi)
   0x00007fffe838d440 <+496>:	vextracti128 $0x1,%ymm10,%xmm1
   0x00007fffe838d446 <+502>:	vmovq  %xmm1,%rdi
   0x00007fffe838d44b <+507>:	vextractps $0x2,%xmm0,(%rdi)
   0x00007fffe838d451 <+513>:	vpextrq $0x1,%xmm1,%rdi
   0x00007fffe838d457 <+519>:	vextractps $0x3,%xmm0,(%rdi)
   0x00007fffe838d45d <+525>:	vpsubq %ymm7,%ymm15,%ymm15
   0x00007fffe838d461 <+529>:	vpsubq %ymm7,%ymm14,%ymm14
   0x00007fffe838d465 <+533>:	vpcmpeqq %xmm2,%xmm14,%xmm0
   0x00007fffe838d46a <+538>:	vpackssdw %xmm0,%xmm0,%xmm0
   0x00007fffe838d46e <+542>:	vpackssdw %xmm0,%xmm0,%xmm0
   0x00007fffe838d472 <+546>:	vpextrb $0x0,%xmm0,%edi
   0x00007fffe838d478 <+552>:	test   $0x1,%dil
   0x00007fffe838d47c <+556>:	je     0x7fffe838d3b0 <_pocl_kernel_mvt_kernel1_workgroup+352>
   0x00007fffe838d482 <+562>:	add    $0x8,%rdx
   0x00007fffe838d486 <+566>:	vmovdqu -0x80(%rsp),%ymm0
   0x00007fffe838d48c <+572>:	vpaddq %ymm0,%ymm4,%ymm4
   0x00007fffe838d490 <+576>:	vpaddq %ymm0,%ymm3,%ymm3
   0x00007fffe838d494 <+580>:	cmp    $0x20,%rdx
   0x00007fffe838d498 <+584>:	jne    0x7fffe838d2e0 <_pocl_kernel_mvt_kernel1_workgroup+144>
   0x00007fffe838d49e <+590>:	add    $0x18,%rsp
   0x00007fffe838d4a2 <+594>:	vzeroupper 
   0x00007fffe838d4a5 <+597>:	ret    
End of assembler dump.
