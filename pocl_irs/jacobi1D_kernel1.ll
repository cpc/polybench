; ModuleID = './BM/NHBDLHALCILAIHDELFFBPNKBMKDJOKFCBHJHI/runJacobi1D_kernel1/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_runJacobi1D_kernel1(float* nocapture readonly %0, float* nocapture %1, i32 %2, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %3, i64 %4, i64 %5, i64 %6) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %4, 8
  %sub.i = add nsw i32 %2, -1
  br label %pregion_for_entry.entry.i

pregion_for_entry.entry.i:                        ; preds = %if.end.r_exit.i.1, %7
  %_local_id_x.0 = phi i64 [ 0, %7 ], [ %17, %if.end.r_exit.i.1 ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %cmp.i = icmp sgt i32 %conv.i, 0
  %cmp2.i = icmp sgt i32 %sub.i, %conv.i
  %or.cond.i = and i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.r_exit.i

if.then.i:                                        ; preds = %pregion_for_entry.entry.i
  %sub4.i = add i64 %add1.i.i, 4294967295
  %8 = and i64 %sub4.i, 4294967295
  %arrayidx.i = getelementptr inbounds float, float* %0, i64 %8
  %9 = load float, float* %arrayidx.i, align 4, !tbaa !12
  %sext.i = shl i64 %add1.i.i, 32
  %idxprom5.i = ashr exact i64 %sext.i, 32
  %arrayidx6.i = getelementptr inbounds float, float* %0, i64 %idxprom5.i
  %10 = load float, float* %arrayidx6.i, align 4, !tbaa !12
  %add.i = fadd float %9, %10
  %sext21.i = ashr exact i64 %sext.i, 32
  %idxprom8.i = or i64 %sext21.i, 1
  %arrayidx9.i = getelementptr inbounds float, float* %0, i64 %idxprom8.i
  %11 = load float, float* %arrayidx9.i, align 4, !tbaa !12
  %add10.i = fadd float %add.i, %11
  %mul.i = fmul float %add10.i, 0x3FD5554760000000
  %arrayidx12.i = getelementptr inbounds float, float* %1, i64 %idxprom5.i
  store float %mul.i, float* %arrayidx12.i, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i

if.end.r_exit.i:                                  ; preds = %if.then.i, %pregion_for_entry.entry.i
  %12 = or i64 %_local_id_x.0, 1
  %add1.i.i.1 = add nuw nsw i64 %12, %mul.i.i
  %conv.i.1 = trunc i64 %add1.i.i.1 to i32
  %cmp.i.1 = icmp sgt i32 %conv.i.1, 0
  %cmp2.i.1 = icmp sgt i32 %sub.i, %conv.i.1
  %or.cond.i.1 = and i1 %cmp.i.1, %cmp2.i.1
  br i1 %or.cond.i.1, label %if.then.i.1, label %if.end.r_exit.i.1

runJacobi1D_kernel1.exit:                         ; preds = %if.end.r_exit.i.1
  ret void

if.then.i.1:                                      ; preds = %if.end.r_exit.i
  %sub4.i.1 = add i64 %add1.i.i.1, 4294967295
  %13 = and i64 %sub4.i.1, 4294967294
  %arrayidx.i.1 = getelementptr inbounds float, float* %0, i64 %13
  %14 = load float, float* %arrayidx.i.1, align 4, !tbaa !12
  %sext.i.1 = shl i64 %add1.i.i.1, 32
  %idxprom5.i.1 = ashr exact i64 %sext.i.1, 32
  %arrayidx6.i.1 = getelementptr inbounds float, float* %0, i64 %idxprom5.i.1
  %15 = load float, float* %arrayidx6.i.1, align 4, !tbaa !12
  %add.i.1 = fadd float %14, %15
  %sext21.i.1 = add i64 %sext.i.1, 4294967296
  %idxprom8.i.1 = ashr exact i64 %sext21.i.1, 32
  %arrayidx9.i.1 = getelementptr inbounds float, float* %0, i64 %idxprom8.i.1
  %16 = load float, float* %arrayidx9.i.1, align 4, !tbaa !12
  %add10.i.1 = fadd float %add.i.1, %16
  %mul.i.1 = fmul float %add10.i.1, 0x3FD5554760000000
  %arrayidx12.i.1 = getelementptr inbounds float, float* %1, i64 %idxprom5.i.1
  store float %mul.i.1, float* %arrayidx12.i.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.1

if.end.r_exit.i.1:                                ; preds = %if.then.i.1, %if.end.r_exit.i
  %17 = add nuw nsw i64 %_local_id_x.0, 2
  %exitcond.not.1 = icmp eq i64 %17, 256
  br i1 %exitcond.not.1, label %runJacobi1D_kernel1.exit, label %pregion_for_entry.entry.i, !llvm.loop !18
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_runJacobi1D_kernel1_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
  %6 = bitcast i8** %0 to float***
  %7 = load float**, float*** %6, align 8
  %8 = load float*, float** %7, align 8
  %9 = getelementptr i8*, i8** %0, i64 1
  %10 = bitcast i8** %9 to float***
  %11 = load float**, float*** %10, align 8
  %12 = load float*, float** %11, align 8
  %13 = getelementptr i8*, i8** %0, i64 2
  %14 = bitcast i8** %13 to i32**
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %mul.i.i.i = shl i64 %2, 8
  %sub.i.i = add nsw i32 %16, -1
  br label %pregion_for_entry.entry.i.i

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i.1, %5
  %_local_id_x.i.0 = phi i64 [ 0, %5 ], [ %26, %if.end.r_exit.i.i.1 ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %conv.i.i, 0
  %cmp2.i.i = icmp sgt i32 %sub.i.i, %conv.i.i
  %or.cond.i.i = and i1 %cmp.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end.r_exit.i.i

if.then.i.i:                                      ; preds = %pregion_for_entry.entry.i.i
  %sub4.i.i = add i64 %add1.i.i.i, 4294967295
  %17 = and i64 %sub4.i.i, 4294967295
  %arrayidx.i.i = getelementptr inbounds float, float* %8, i64 %17
  %18 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %sext.i.i = shl i64 %add1.i.i.i, 32
  %idxprom5.i.i = ashr exact i64 %sext.i.i, 32
  %arrayidx6.i.i = getelementptr inbounds float, float* %8, i64 %idxprom5.i.i
  %19 = load float, float* %arrayidx6.i.i, align 4, !tbaa !12
  %add.i.i = fadd float %18, %19
  %sext21.i.i = ashr exact i64 %sext.i.i, 32
  %idxprom8.i.i = or i64 %sext21.i.i, 1
  %arrayidx9.i.i = getelementptr inbounds float, float* %8, i64 %idxprom8.i.i
  %20 = load float, float* %arrayidx9.i.i, align 4, !tbaa !12
  %add10.i.i = fadd float %add.i.i, %20
  %mul.i.i = fmul float %add10.i.i, 0x3FD5554760000000
  %arrayidx12.i.i = getelementptr inbounds float, float* %12, i64 %idxprom5.i.i
  store float %mul.i.i, float* %arrayidx12.i.i, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %if.then.i.i, %pregion_for_entry.entry.i.i
  %21 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %21, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %cmp.i.i.1 = icmp sgt i32 %conv.i.i.1, 0
  %cmp2.i.i.1 = icmp sgt i32 %sub.i.i, %conv.i.i.1
  %or.cond.i.i.1 = and i1 %cmp.i.i.1, %cmp2.i.i.1
  br i1 %or.cond.i.i.1, label %if.then.i.i.1, label %if.end.r_exit.i.i.1

_pocl_kernel_runJacobi1D_kernel1.exit:            ; preds = %if.end.r_exit.i.i.1
  ret void

if.then.i.i.1:                                    ; preds = %if.end.r_exit.i.i
  %sub4.i.i.1 = add i64 %add1.i.i.i.1, 4294967295
  %22 = and i64 %sub4.i.i.1, 4294967294
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %8, i64 %22
  %23 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12
  %sext.i.i.1 = shl i64 %add1.i.i.i.1, 32
  %idxprom5.i.i.1 = ashr exact i64 %sext.i.i.1, 32
  %arrayidx6.i.i.1 = getelementptr inbounds float, float* %8, i64 %idxprom5.i.i.1
  %24 = load float, float* %arrayidx6.i.i.1, align 4, !tbaa !12
  %add.i.i.1 = fadd float %23, %24
  %sext21.i.i.1 = add i64 %sext.i.i.1, 4294967296
  %idxprom8.i.i.1 = ashr exact i64 %sext21.i.i.1, 32
  %arrayidx9.i.i.1 = getelementptr inbounds float, float* %8, i64 %idxprom8.i.i.1
  %25 = load float, float* %arrayidx9.i.i.1, align 4, !tbaa !12
  %add10.i.i.1 = fadd float %add.i.i.1, %25
  %mul.i.i.1 = fmul float %add10.i.i.1, 0x3FD5554760000000
  %arrayidx12.i.i.1 = getelementptr inbounds float, float* %12, i64 %idxprom5.i.i.1
  store float %mul.i.i.1, float* %arrayidx12.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.1

if.end.r_exit.i.i.1:                              ; preds = %if.then.i.i.1, %if.end.r_exit.i.i
  %26 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %26, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_runJacobi1D_kernel1.exit, label %pregion_for_entry.entry.i.i, !llvm.loop !18
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_runJacobi1D_kernel1_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 2
  %12 = bitcast i8** %11 to i32**
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %mul.i.i.i = shl i64 %2, 8
  %sub.i.i = add nsw i32 %14, -1
  br label %pregion_for_entry.entry.i.i

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i.1, %5
  %_local_id_x.i.0 = phi i64 [ 0, %5 ], [ %24, %if.end.r_exit.i.i.1 ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %conv.i.i, 0
  %cmp2.i.i = icmp sgt i32 %sub.i.i, %conv.i.i
  %or.cond.i.i = and i1 %cmp.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end.r_exit.i.i

if.then.i.i:                                      ; preds = %pregion_for_entry.entry.i.i
  %sub4.i.i = add i64 %add1.i.i.i, 4294967295
  %15 = and i64 %sub4.i.i, 4294967295
  %arrayidx.i.i = getelementptr inbounds float, float* %7, i64 %15
  %16 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %sext.i.i = shl i64 %add1.i.i.i, 32
  %idxprom5.i.i = ashr exact i64 %sext.i.i, 32
  %arrayidx6.i.i = getelementptr inbounds float, float* %7, i64 %idxprom5.i.i
  %17 = load float, float* %arrayidx6.i.i, align 4, !tbaa !12
  %add.i.i = fadd float %16, %17
  %sext21.i.i = ashr exact i64 %sext.i.i, 32
  %idxprom8.i.i = or i64 %sext21.i.i, 1
  %arrayidx9.i.i = getelementptr inbounds float, float* %7, i64 %idxprom8.i.i
  %18 = load float, float* %arrayidx9.i.i, align 4, !tbaa !12
  %add10.i.i = fadd float %add.i.i, %18
  %mul.i.i = fmul float %add10.i.i, 0x3FD5554760000000
  %arrayidx12.i.i = getelementptr inbounds float, float* %10, i64 %idxprom5.i.i
  store float %mul.i.i, float* %arrayidx12.i.i, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %if.then.i.i, %pregion_for_entry.entry.i.i
  %19 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %19, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %cmp.i.i.1 = icmp sgt i32 %conv.i.i.1, 0
  %cmp2.i.i.1 = icmp sgt i32 %sub.i.i, %conv.i.i.1
  %or.cond.i.i.1 = and i1 %cmp.i.i.1, %cmp2.i.i.1
  br i1 %or.cond.i.i.1, label %if.then.i.i.1, label %if.end.r_exit.i.i.1

_pocl_kernel_runJacobi1D_kernel1.exit:            ; preds = %if.end.r_exit.i.i.1
  ret void

if.then.i.i.1:                                    ; preds = %if.end.r_exit.i.i
  %sub4.i.i.1 = add i64 %add1.i.i.i.1, 4294967295
  %20 = and i64 %sub4.i.i.1, 4294967294
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %7, i64 %20
  %21 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12
  %sext.i.i.1 = shl i64 %add1.i.i.i.1, 32
  %idxprom5.i.i.1 = ashr exact i64 %sext.i.i.1, 32
  %arrayidx6.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom5.i.i.1
  %22 = load float, float* %arrayidx6.i.i.1, align 4, !tbaa !12
  %add.i.i.1 = fadd float %21, %22
  %sext21.i.i.1 = add i64 %sext.i.i.1, 4294967296
  %idxprom8.i.i.1 = ashr exact i64 %sext21.i.i.1, 32
  %arrayidx9.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom8.i.i.1
  %23 = load float, float* %arrayidx9.i.i.1, align 4, !tbaa !12
  %add10.i.i.1 = fadd float %add.i.i.1, %23
  %mul.i.i.1 = fmul float %add10.i.i.1, 0x3FD5554760000000
  %arrayidx12.i.i.1 = getelementptr inbounds float, float* %10, i64 %idxprom5.i.i.1
  store float %mul.i.i.1, float* %arrayidx12.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.1

if.end.r_exit.i.i.1:                              ; preds = %if.then.i.i.1, %if.end.r_exit.i.i
  %24 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %24, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_runJacobi1D_kernel1.exit, label %pregion_for_entry.entry.i.i, !llvm.loop !18
}

attributes #0 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree norecurse nounwind }

!llvm.module.flags = !{!0, !1, !2}
!opencl.ocl.version = !{!3}
!llvm.ident = !{!4}
!opencl.spir.version = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 1, i32 2}
!4 = !{!"clang version 11.0.0 (git@github.com:llvm/llvm-project.git 91e89f9a5115b0f83b8f026e1ad0e6d1f885fa9b)"}
!5 = !{i32 1, i32 1, i32 0}
!6 = !{!"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"int"}
!8 = !{!"float*", !"float*", !"int"}
!9 = !{!"", !"", !""}
!10 = !{!"A", !"B", !"n"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17}
!17 = distinct !{}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.parallel_accesses", !17}
