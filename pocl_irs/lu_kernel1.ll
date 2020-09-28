; ModuleID = './AH/OFKPFPHEIHFOOLEHKEIHHOHEKJAJACOLOPAPI/lu_kernel1/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_lu_kernel1(float* nocapture %0, i32 %1, i32 %2, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %3, i64 %4, i64 %5, i64 %6) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %4, 8
  %add.i = add nsw i32 %1, 1
  %mul.i = mul nsw i32 %2, %1
  %add6.i = add nsw i32 %mul.i, %1
  %idxprom7.i = sext i32 %add6.i to i64
  %arrayidx8.i = getelementptr inbounds float, float* %0, i64 %idxprom7.i
  br label %pregion_for_entry.entry.i

pregion_for_entry.entry.i:                        ; preds = %if.end.r_exit.i.1, %7
  %_local_id_x.0 = phi i64 [ 0, %7 ], [ %15, %if.end.r_exit.i.1 ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %8 = trunc i64 %add1.i.i to i32
  %conv2.i = add i32 %add.i, %8
  %cmp.i = icmp slt i32 %conv2.i, %2
  br i1 %cmp.i, label %if.then.i, label %if.end.r_exit.i

if.then.i:                                        ; preds = %pregion_for_entry.entry.i
  %add4.i = add nsw i32 %conv2.i, %mul.i
  %idxprom.i = sext i32 %add4.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %0, i64 %idxprom.i
  %9 = load float, float* %arrayidx.i, align 4, !tbaa !12
  %10 = load float, float* %arrayidx8.i, align 4, !tbaa !12
  %div.i = fdiv float %9, %10, !fpmath !16
  store float %div.i, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !17
  br label %if.end.r_exit.i

if.end.r_exit.i:                                  ; preds = %if.then.i, %pregion_for_entry.entry.i
  %11 = or i64 %_local_id_x.0, 1
  %add1.i.i.1 = add nuw nsw i64 %11, %mul.i.i
  %12 = trunc i64 %add1.i.i.1 to i32
  %conv2.i.1 = add i32 %add.i, %12
  %cmp.i.1 = icmp slt i32 %conv2.i.1, %2
  br i1 %cmp.i.1, label %if.then.i.1, label %if.end.r_exit.i.1

lu_kernel1.exit:                                  ; preds = %if.end.r_exit.i.1
  ret void

if.then.i.1:                                      ; preds = %if.end.r_exit.i
  %add4.i.1 = add nsw i32 %conv2.i.1, %mul.i
  %idxprom.i.1 = sext i32 %add4.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.1
  %13 = load float, float* %arrayidx.i.1, align 4, !tbaa !12
  %14 = load float, float* %arrayidx8.i, align 4, !tbaa !12
  %div.i.1 = fdiv float %13, %14, !fpmath !16
  store float %div.i.1, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !17
  br label %if.end.r_exit.i.1

if.end.r_exit.i.1:                                ; preds = %if.then.i.1, %if.end.r_exit.i
  %15 = add nuw nsw i64 %_local_id_x.0, 2
  %exitcond.not.1 = icmp eq i64 %15, 256
  br i1 %exitcond.not.1, label %lu_kernel1.exit, label %pregion_for_entry.entry.i, !llvm.loop !19
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_lu_kernel1_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
  %6 = bitcast i8** %0 to float***
  %7 = load float**, float*** %6, align 8
  %8 = load float*, float** %7, align 8
  %9 = getelementptr i8*, i8** %0, i64 1
  %10 = bitcast i8** %9 to i32**
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr i8*, i8** %0, i64 2
  %14 = bitcast i8** %13 to i32**
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %mul.i.i.i = shl i64 %2, 8
  %add.i.i = add nsw i32 %12, 1
  %mul.i.i = mul nsw i32 %16, %12
  %add6.i.i = add nsw i32 %mul.i.i, %12
  %idxprom7.i.i = sext i32 %add6.i.i to i64
  %arrayidx8.i.i = getelementptr inbounds float, float* %8, i64 %idxprom7.i.i
  br label %pregion_for_entry.entry.i.i

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i.1, %5
  %_local_id_x.i.0 = phi i64 [ 0, %5 ], [ %24, %if.end.r_exit.i.i.1 ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %17 = trunc i64 %add1.i.i.i to i32
  %conv2.i.i = add i32 %add.i.i, %17
  %cmp.i.i = icmp slt i32 %conv2.i.i, %16
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.r_exit.i.i

if.then.i.i:                                      ; preds = %pregion_for_entry.entry.i.i
  %add4.i.i = add nsw i32 %conv2.i.i, %mul.i.i
  %idxprom.i.i = sext i32 %add4.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %8, i64 %idxprom.i.i
  %18 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %19 = load float, float* %arrayidx8.i.i, align 4, !tbaa !12
  %div.i.i = fdiv float %18, %19, !fpmath !16
  store float %div.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !17
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %if.then.i.i, %pregion_for_entry.entry.i.i
  %20 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %20, %mul.i.i.i
  %21 = trunc i64 %add1.i.i.i.1 to i32
  %conv2.i.i.1 = add i32 %add.i.i, %21
  %cmp.i.i.1 = icmp slt i32 %conv2.i.i.1, %16
  br i1 %cmp.i.i.1, label %if.then.i.i.1, label %if.end.r_exit.i.i.1

_pocl_kernel_lu_kernel1.exit:                     ; preds = %if.end.r_exit.i.i.1
  ret void

if.then.i.i.1:                                    ; preds = %if.end.r_exit.i.i
  %add4.i.i.1 = add nsw i32 %conv2.i.i.1, %mul.i.i
  %idxprom.i.i.1 = sext i32 %add4.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.1
  %22 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12
  %23 = load float, float* %arrayidx8.i.i, align 4, !tbaa !12
  %div.i.i.1 = fdiv float %22, %23, !fpmath !16
  store float %div.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !17
  br label %if.end.r_exit.i.i.1

if.end.r_exit.i.i.1:                              ; preds = %if.then.i.i.1, %if.end.r_exit.i.i
  %24 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %24, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_lu_kernel1.exit, label %pregion_for_entry.entry.i.i, !llvm.loop !19
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_lu_kernel1_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to i32**
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr i8*, i8** %0, i64 2
  %13 = bitcast i8** %12 to i32**
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %mul.i.i.i = shl i64 %2, 8
  %add.i.i = add nsw i32 %11, 1
  %mul.i.i = mul nsw i32 %15, %11
  %add6.i.i = add nsw i32 %mul.i.i, %11
  %idxprom7.i.i = sext i32 %add6.i.i to i64
  %arrayidx8.i.i = getelementptr inbounds float, float* %7, i64 %idxprom7.i.i
  br label %pregion_for_entry.entry.i.i

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i.1, %5
  %_local_id_x.i.0 = phi i64 [ 0, %5 ], [ %23, %if.end.r_exit.i.i.1 ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %16 = trunc i64 %add1.i.i.i to i32
  %conv2.i.i = add i32 %add.i.i, %16
  %cmp.i.i = icmp slt i32 %conv2.i.i, %15
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.r_exit.i.i

if.then.i.i:                                      ; preds = %pregion_for_entry.entry.i.i
  %add4.i.i = add nsw i32 %conv2.i.i, %mul.i.i
  %idxprom.i.i = sext i32 %add4.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %7, i64 %idxprom.i.i
  %17 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %18 = load float, float* %arrayidx8.i.i, align 4, !tbaa !12
  %div.i.i = fdiv float %17, %18, !fpmath !16
  store float %div.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !17
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %if.then.i.i, %pregion_for_entry.entry.i.i
  %19 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %19, %mul.i.i.i
  %20 = trunc i64 %add1.i.i.i.1 to i32
  %conv2.i.i.1 = add i32 %add.i.i, %20
  %cmp.i.i.1 = icmp slt i32 %conv2.i.i.1, %15
  br i1 %cmp.i.i.1, label %if.then.i.i.1, label %if.end.r_exit.i.i.1

_pocl_kernel_lu_kernel1.exit:                     ; preds = %if.end.r_exit.i.i.1
  ret void

if.then.i.i.1:                                    ; preds = %if.end.r_exit.i.i
  %add4.i.i.1 = add nsw i32 %conv2.i.i.1, %mul.i.i
  %idxprom.i.i.1 = sext i32 %add4.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.1
  %21 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12
  %22 = load float, float* %arrayidx8.i.i, align 4, !tbaa !12
  %div.i.i.1 = fdiv float %21, %22, !fpmath !16
  store float %div.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !17
  br label %if.end.r_exit.i.i.1

if.end.r_exit.i.i.1:                              ; preds = %if.then.i.i.1, %if.end.r_exit.i.i
  %23 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %23, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_lu_kernel1.exit, label %pregion_for_entry.entry.i.i, !llvm.loop !19
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
!5 = !{i32 1, i32 0, i32 0}
!6 = !{!"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"int", !"int"}
!8 = !{!"float*", !"int", !"int"}
!9 = !{!"", !"", !""}
!10 = !{!"A", !"k", !"n"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{float 2.500000e+00}
!17 = !{!18}
!18 = distinct !{}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.parallel_accesses", !18}
