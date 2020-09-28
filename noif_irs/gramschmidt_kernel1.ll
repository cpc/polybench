; ModuleID = './DF/PDBDCFKCFBNDMNFOGMBNGLKBDJFKLEJDAFMEL/gramschmidt_kernel1/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #0

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_gramschmidt_kernel1(float* nocapture readonly %0, float* nocapture %1, float* nocapture readnone %2, i32 %3, i32 %4, i32 %5, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %6, i64 %7, i64 %8, i64 %9) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %cmp25.i = icmp sgt i32 %4, 0
  %11 = sext i32 %5 to i64
  %12 = sext i32 %3 to i64
  %wide.trip.count.i = zext i32 %4 to i64
  %mul8.i = mul nsw i32 %5, %3
  %add9.i = add nsw i32 %mul8.i, %3
  %idxprom10.i = sext i32 %add9.i to i64
  %arrayidx11.i = getelementptr inbounds float, float* %1, i64 %idxprom10.i
  br i1 %cmp25.i, label %pregion_for_entry.entry.i.us.preheader, label %pregion_for_entry.entry.i.preheader

pregion_for_entry.entry.i.us.preheader:           ; preds = %10
  br label %pregion_for_entry.entry.i.us

pregion_for_entry.entry.i.preheader:              ; preds = %10
  store float 0.000000e+00, float* %arrayidx11.i, align 4, !tbaa !12, !llvm.access.group !16
  br label %gramschmidt_kernel1.exit

pregion_for_entry.entry.i.us:                     ; preds = %for.end.loopexit.i.us.3, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %37, %for.end.loopexit.i.us.3 ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %pregion_for_entry.entry.i.us
  %13 = phi float [ %17, %for.body.i.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.us ]
  %indvars.iv.next.i1.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %pregion_for_entry.entry.i.us ]
  %14 = mul nsw i64 %indvars.iv.next.i1.us, %11
  %15 = add nsw i64 %14, %12
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %15
  %16 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %13) #3
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i1.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %for.end.loopexit.i.us, label %for.body.i.us, !llvm.loop !18

for.end.loopexit.i.us:                            ; preds = %for.body.i.us
  %.lcssa = phi float [ %17, %for.body.i.us ]
  %18 = tail call float @llvm.sqrt.f32(float %.lcssa) #3
  store float %18, float* %arrayidx11.i, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.us.1

gramschmidt_kernel1.exit.loopexit:                ; preds = %for.end.loopexit.i.us.3
  br label %gramschmidt_kernel1.exit

gramschmidt_kernel1.exit:                         ; preds = %gramschmidt_kernel1.exit.loopexit, %pregion_for_entry.entry.i.preheader
  ret void

for.body.i.us.1:                                  ; preds = %for.body.i.us.1, %for.end.loopexit.i.us
  %19 = phi float [ %23, %for.body.i.us.1 ], [ 0.000000e+00, %for.end.loopexit.i.us ]
  %indvars.iv.next.i1.us.1 = phi i64 [ %indvars.iv.next.i.us.1, %for.body.i.us.1 ], [ 0, %for.end.loopexit.i.us ]
  %20 = mul nsw i64 %indvars.iv.next.i1.us.1, %11
  %21 = add nsw i64 %20, %12
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %0, i64 %21
  %22 = load float, float* %arrayidx.i.us.1, align 4, !tbaa !12
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %19) #3
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.next.i1.us.1, 1
  %exitcond.not.i.us.1 = icmp eq i64 %indvars.iv.next.i.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.1, label %for.end.loopexit.i.us.1, label %for.body.i.us.1, !llvm.loop !18

for.end.loopexit.i.us.1:                          ; preds = %for.body.i.us.1
  %.lcssa12 = phi float [ %23, %for.body.i.us.1 ]
  %24 = tail call float @llvm.sqrt.f32(float %.lcssa12) #3
  store float %24, float* %arrayidx11.i, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.us.2

for.body.i.us.2:                                  ; preds = %for.body.i.us.2, %for.end.loopexit.i.us.1
  %25 = phi float [ %29, %for.body.i.us.2 ], [ 0.000000e+00, %for.end.loopexit.i.us.1 ]
  %indvars.iv.next.i1.us.2 = phi i64 [ %indvars.iv.next.i.us.2, %for.body.i.us.2 ], [ 0, %for.end.loopexit.i.us.1 ]
  %26 = mul nsw i64 %indvars.iv.next.i1.us.2, %11
  %27 = add nsw i64 %26, %12
  %arrayidx.i.us.2 = getelementptr inbounds float, float* %0, i64 %27
  %28 = load float, float* %arrayidx.i.us.2, align 4, !tbaa !12
  %29 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %25) #3
  %indvars.iv.next.i.us.2 = add nuw nsw i64 %indvars.iv.next.i1.us.2, 1
  %exitcond.not.i.us.2 = icmp eq i64 %indvars.iv.next.i.us.2, %wide.trip.count.i
  br i1 %exitcond.not.i.us.2, label %for.end.loopexit.i.us.2, label %for.body.i.us.2, !llvm.loop !18

for.end.loopexit.i.us.2:                          ; preds = %for.body.i.us.2
  %.lcssa13 = phi float [ %29, %for.body.i.us.2 ]
  %30 = tail call float @llvm.sqrt.f32(float %.lcssa13) #3
  store float %30, float* %arrayidx11.i, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.us.3

for.body.i.us.3:                                  ; preds = %for.body.i.us.3, %for.end.loopexit.i.us.2
  %31 = phi float [ %35, %for.body.i.us.3 ], [ 0.000000e+00, %for.end.loopexit.i.us.2 ]
  %indvars.iv.next.i1.us.3 = phi i64 [ %indvars.iv.next.i.us.3, %for.body.i.us.3 ], [ 0, %for.end.loopexit.i.us.2 ]
  %32 = mul nsw i64 %indvars.iv.next.i1.us.3, %11
  %33 = add nsw i64 %32, %12
  %arrayidx.i.us.3 = getelementptr inbounds float, float* %0, i64 %33
  %34 = load float, float* %arrayidx.i.us.3, align 4, !tbaa !12
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %31) #3
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.next.i1.us.3, 1
  %exitcond.not.i.us.3 = icmp eq i64 %indvars.iv.next.i.us.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.3, label %for.end.loopexit.i.us.3, label %for.body.i.us.3, !llvm.loop !18

for.end.loopexit.i.us.3:                          ; preds = %for.body.i.us.3
  %.lcssa14 = phi float [ %35, %for.body.i.us.3 ]
  %36 = tail call float @llvm.sqrt.f32(float %.lcssa14) #3
  store float %36, float* %arrayidx11.i, align 4, !tbaa !12, !llvm.access.group !16
  %37 = add nuw nsw i64 %_local_id_x.0.us, 4
  %exitcond.not.3 = icmp eq i64 %37, 256
  br i1 %exitcond.not.3, label %gramschmidt_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !20
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_gramschmidt_kernel1_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float***
  %7 = load float**, float*** %6, align 8
  %8 = load float*, float** %7, align 8
  %9 = getelementptr i8*, i8** %0, i64 1
  %10 = bitcast i8** %9 to float***
  %11 = load float**, float*** %10, align 8
  %12 = load float*, float** %11, align 8
  %13 = getelementptr i8*, i8** %0, i64 3
  %14 = bitcast i8** %13 to i32**
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr i8*, i8** %0, i64 4
  %18 = bitcast i8** %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 5
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  tail call void @_pocl_kernel_gramschmidt_kernel1(float* %8, float* %12, float* undef, i32 %16, i32 %20, i32 %24, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* %1, i64 undef, i64 undef, i64 undef)
  ret void
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_gramschmidt_kernel1_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 3
  %12 = bitcast i8** %11 to i32**
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr i8*, i8** %0, i64 4
  %16 = bitcast i8** %15 to i32**
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr i8*, i8** %0, i64 5
  %20 = bitcast i8** %19 to i32**
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  tail call void @_pocl_kernel_gramschmidt_kernel1(float* %7, float* %10, float* undef, i32 %14, i32 %18, i32 %22, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* %1, i64 undef, i64 undef, i64 undef)
  ret void
}

attributes #0 = { nounwind readnone speculatable willreturn }
attributes #1 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree norecurse nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!opencl.ocl.version = !{!3}
!llvm.ident = !{!4}
!opencl.spir.version = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 1, i32 2}
!4 = !{!"clang version 11.0.0 (git@github.com:llvm/llvm-project.git 91e89f9a5115b0f83b8f026e1ad0e6d1f885fa9b)"}
!5 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"int", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !"", !""}
!10 = !{!"a", !"r", !"q", !"k", !"ni", !"nj"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17}
!17 = distinct !{}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.parallel_accesses", !17}
