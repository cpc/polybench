; ModuleID = './PA/LELBNIBBPPLAHAICEBKKDAHJDMHJICOCMCALA/doitgen_kernel1/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_doitgen_kernel1(i32 %0, i32 %1, i32 %2, float* nocapture readonly %3, float* nocapture readonly %4, float* nocapture %5, i32 %6, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %7, i64 %8, i64 %9, i64 %10) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %8, 5
  %mul3.i.i = shl i64 %9, 3
  %mul3.i = mul i32 %6, %1
  %cmp62.i = icmp sgt i32 %2, 0
  %12 = zext i32 %2 to i64
  br i1 %cmp62.i, label %pregion_for_entry.pregion_for_init.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.preheader

pregion_for_entry.pregion_for_init.i.preheader:   ; preds = %11
  %conv.i = trunc i64 %mul.i.i to i32
  %13 = trunc i64 %mul.i.i to i32
  %conv.i.1 = or i32 %13, 1
  %14 = trunc i64 %mul.i.i to i32
  %conv.i.2 = or i32 %14, 2
  %15 = trunc i64 %mul.i.i to i32
  %conv.i.3 = or i32 %15, 3
  %16 = trunc i64 %mul.i.i to i32
  %conv.i.4 = or i32 %16, 4
  %17 = trunc i64 %mul.i.i to i32
  %conv.i.5 = or i32 %17, 5
  %18 = trunc i64 %mul.i.i to i32
  %conv.i.6 = or i32 %18, 6
  %19 = trunc i64 %mul.i.i to i32
  %conv.i.7 = or i32 %19, 7
  %20 = trunc i64 %mul.i.i to i32
  %conv.i.8 = or i32 %20, 8
  %21 = trunc i64 %mul.i.i to i32
  %conv.i.9 = or i32 %21, 9
  %22 = trunc i64 %mul.i.i to i32
  %conv.i.10 = or i32 %22, 10
  %23 = trunc i64 %mul.i.i to i32
  %conv.i.11 = or i32 %23, 11
  %24 = trunc i64 %mul.i.i to i32
  %conv.i.12 = or i32 %24, 12
  %25 = trunc i64 %mul.i.i to i32
  %conv.i.13 = or i32 %25, 13
  %26 = trunc i64 %mul.i.i to i32
  %conv.i.14 = or i32 %26, 14
  %27 = trunc i64 %mul.i.i to i32
  %conv.i.15 = or i32 %27, 15
  %28 = trunc i64 %mul.i.i to i32
  %conv.i.16 = or i32 %28, 16
  %29 = trunc i64 %mul.i.i to i32
  %conv.i.17 = or i32 %29, 17
  %30 = trunc i64 %mul.i.i to i32
  %conv.i.18 = or i32 %30, 18
  %31 = trunc i64 %mul.i.i to i32
  %conv.i.19 = or i32 %31, 19
  %32 = trunc i64 %mul.i.i to i32
  %conv.i.20 = or i32 %32, 20
  %33 = trunc i64 %mul.i.i to i32
  %conv.i.21 = or i32 %33, 21
  %34 = trunc i64 %mul.i.i to i32
  %conv.i.22 = or i32 %34, 22
  %35 = trunc i64 %mul.i.i to i32
  %conv.i.23 = or i32 %35, 23
  %36 = trunc i64 %mul.i.i to i32
  %conv.i.24 = or i32 %36, 24
  %37 = trunc i64 %mul.i.i to i32
  %conv.i.25 = or i32 %37, 25
  %38 = trunc i64 %mul.i.i to i32
  %conv.i.26 = or i32 %38, 26
  %39 = trunc i64 %mul.i.i to i32
  %conv.i.27 = or i32 %39, 27
  %40 = trunc i64 %mul.i.i to i32
  %conv.i.28 = or i32 %40, 28
  %41 = trunc i64 %mul.i.i to i32
  %conv.i.29 = or i32 %41, 29
  %42 = trunc i64 %mul.i.i to i32
  %conv.i.30 = or i32 %42, 30
  %43 = trunc i64 %mul.i.i to i32
  %conv.i.31 = or i32 %43, 31
  br label %pregion_for_entry.pregion_for_init.i

pregion_for_entry.pregion_for_init.i.us.preheader: ; preds = %11
  %conv2.i.us = trunc i64 %mul3.i.i to i32
  %reass.add.i.us = add i32 %mul3.i, %conv2.i.us
  %reass.mul.i.us = mul i32 %reass.add.i.us, %2
  %44 = sext i32 %reass.mul.i.us to i64
  br label %pregion_for_entry.entry.i.us.us

pregion_for_entry.entry.i.us.us:                  ; preds = %for.cond.cleanup.r_exit.i.loopexit.us.us.1142, %pregion_for_entry.pregion_for_init.i.us.preheader
  %_local_id_x.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.us.preheader ], [ %203, %for.cond.cleanup.r_exit.i.loopexit.us.us.1142 ]
  %add1.i.i.us.us = add nuw nsw i64 %_local_id_x.0.us.us, %mul.i.i
  %conv.i.us.us = trunc i64 %add1.i.i.us.us to i32
  %add5.i.us.us = add nsw i32 %reass.mul.i.us, %conv.i.us.us
  %idxprom.i.us.us = sext i32 %add5.i.us.us to i64
  %arrayidx.i.us.us = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us = shl i64 %add1.i.i.us.us, 32
  %45 = ashr exact i64 %sext.i.us.us, 32
  br label %for.body.i.us.us

for.cond.cleanup.r_exit.i.loopexit.us.us:         ; preds = %for.body.i.us.us
  %46 = or i64 %_local_id_x.0.us.us, 1
  %add1.i.i.us.us.1129 = add nuw nsw i64 %46, %mul.i.i
  %conv.i.us.us.1130 = trunc i64 %add1.i.i.us.us.1129 to i32
  %add5.i.us.us.1131 = add nsw i32 %reass.mul.i.us, %conv.i.us.us.1130
  %idxprom.i.us.us.1132 = sext i32 %add5.i.us.us.1131 to i64
  %arrayidx.i.us.us.1133 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.1132
  store float 0.000000e+00, float* %arrayidx.i.us.us.1133, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1134 = shl i64 %add1.i.i.us.us.1129, 32
  %47 = ashr exact i64 %sext.i.us.us.1134, 32
  br label %for.body.i.us.us.1141

for.body.i.us.us:                                 ; preds = %for.body.i.us.us, %pregion_for_entry.entry.i.us.us
  %indvars.iv.next.i2.us.us = phi i64 [ %indvars.iv.next.i.us.us, %for.body.i.us.us ], [ 0, %pregion_for_entry.entry.i.us.us ]
  %48 = phi float [ %54, %for.body.i.us.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us ]
  %49 = add nsw i64 %indvars.iv.next.i2.us.us, %44
  %arrayidx20.i.us.us = getelementptr inbounds float, float* %3, i64 %49
  %50 = load float, float* %arrayidx20.i.us.us, align 4, !tbaa !12
  %51 = mul nuw nsw i64 %indvars.iv.next.i2.us.us, %12
  %52 = add nsw i64 %51, %45
  %arrayidx24.i.us.us = getelementptr inbounds float, float* %4, i64 %52
  %53 = load float, float* %arrayidx24.i.us.us, align 4, !tbaa !12
  %54 = tail call float @llvm.fmuladd.f32(float %50, float %53, float %48) #2
  store float %54, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.next.i2.us.us, 1
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %12
  br i1 %exitcond.not.i.us.us, label %for.cond.cleanup.r_exit.i.loopexit.us.us, label %for.body.i.us.us, !llvm.loop !19

pregion_for_end.i.us-lcssa.us.us:                 ; preds = %for.cond.cleanup.r_exit.i.loopexit.us.us.1142
  %55 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.1 = or i32 %55, 1
  %reass.add.i.us.1 = add i32 %mul3.i, %conv2.i.us.1
  %reass.mul.i.us.1 = mul i32 %reass.add.i.us.1, %2
  %56 = sext i32 %reass.mul.i.us.1 to i64
  br label %pregion_for_entry.entry.i.us.us.1

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_entry.pregion_for_init.i, %pregion_for_entry.pregion_for_init.i.preheader
  %_local_id_y.0 = phi i64 [ %57, %pregion_for_entry.pregion_for_init.i ], [ 0, %pregion_for_entry.pregion_for_init.i.preheader ]
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %reass.add.i = add i32 %mul3.i, %conv2.i
  %reass.mul.i = mul i32 %reass.add.i, %2
  %add5.i = add nsw i32 %reass.mul.i, %conv.i
  %idxprom.i = sext i32 %add5.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %5, i64 %idxprom.i
  store float 0.000000e+00, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.1 = add nsw i32 %reass.mul.i, %conv.i.1
  %idxprom.i.1 = sext i32 %add5.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.1
  store float 0.000000e+00, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.2 = add nsw i32 %reass.mul.i, %conv.i.2
  %idxprom.i.2 = sext i32 %add5.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds float, float* %5, i64 %idxprom.i.2
  store float 0.000000e+00, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.3 = add nsw i32 %reass.mul.i, %conv.i.3
  %idxprom.i.3 = sext i32 %add5.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds float, float* %5, i64 %idxprom.i.3
  store float 0.000000e+00, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.4 = add nsw i32 %reass.mul.i, %conv.i.4
  %idxprom.i.4 = sext i32 %add5.i.4 to i64
  %arrayidx.i.4 = getelementptr inbounds float, float* %5, i64 %idxprom.i.4
  store float 0.000000e+00, float* %arrayidx.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.5 = add nsw i32 %reass.mul.i, %conv.i.5
  %idxprom.i.5 = sext i32 %add5.i.5 to i64
  %arrayidx.i.5 = getelementptr inbounds float, float* %5, i64 %idxprom.i.5
  store float 0.000000e+00, float* %arrayidx.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.6 = add nsw i32 %reass.mul.i, %conv.i.6
  %idxprom.i.6 = sext i32 %add5.i.6 to i64
  %arrayidx.i.6 = getelementptr inbounds float, float* %5, i64 %idxprom.i.6
  store float 0.000000e+00, float* %arrayidx.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.7 = add nsw i32 %reass.mul.i, %conv.i.7
  %idxprom.i.7 = sext i32 %add5.i.7 to i64
  %arrayidx.i.7 = getelementptr inbounds float, float* %5, i64 %idxprom.i.7
  store float 0.000000e+00, float* %arrayidx.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.8 = add nsw i32 %reass.mul.i, %conv.i.8
  %idxprom.i.8 = sext i32 %add5.i.8 to i64
  %arrayidx.i.8 = getelementptr inbounds float, float* %5, i64 %idxprom.i.8
  store float 0.000000e+00, float* %arrayidx.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.9 = add nsw i32 %reass.mul.i, %conv.i.9
  %idxprom.i.9 = sext i32 %add5.i.9 to i64
  %arrayidx.i.9 = getelementptr inbounds float, float* %5, i64 %idxprom.i.9
  store float 0.000000e+00, float* %arrayidx.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.10 = add nsw i32 %reass.mul.i, %conv.i.10
  %idxprom.i.10 = sext i32 %add5.i.10 to i64
  %arrayidx.i.10 = getelementptr inbounds float, float* %5, i64 %idxprom.i.10
  store float 0.000000e+00, float* %arrayidx.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.11 = add nsw i32 %reass.mul.i, %conv.i.11
  %idxprom.i.11 = sext i32 %add5.i.11 to i64
  %arrayidx.i.11 = getelementptr inbounds float, float* %5, i64 %idxprom.i.11
  store float 0.000000e+00, float* %arrayidx.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.12 = add nsw i32 %reass.mul.i, %conv.i.12
  %idxprom.i.12 = sext i32 %add5.i.12 to i64
  %arrayidx.i.12 = getelementptr inbounds float, float* %5, i64 %idxprom.i.12
  store float 0.000000e+00, float* %arrayidx.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.13 = add nsw i32 %reass.mul.i, %conv.i.13
  %idxprom.i.13 = sext i32 %add5.i.13 to i64
  %arrayidx.i.13 = getelementptr inbounds float, float* %5, i64 %idxprom.i.13
  store float 0.000000e+00, float* %arrayidx.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.14 = add nsw i32 %reass.mul.i, %conv.i.14
  %idxprom.i.14 = sext i32 %add5.i.14 to i64
  %arrayidx.i.14 = getelementptr inbounds float, float* %5, i64 %idxprom.i.14
  store float 0.000000e+00, float* %arrayidx.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.15 = add nsw i32 %reass.mul.i, %conv.i.15
  %idxprom.i.15 = sext i32 %add5.i.15 to i64
  %arrayidx.i.15 = getelementptr inbounds float, float* %5, i64 %idxprom.i.15
  store float 0.000000e+00, float* %arrayidx.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.16 = add nsw i32 %reass.mul.i, %conv.i.16
  %idxprom.i.16 = sext i32 %add5.i.16 to i64
  %arrayidx.i.16 = getelementptr inbounds float, float* %5, i64 %idxprom.i.16
  store float 0.000000e+00, float* %arrayidx.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.17 = add nsw i32 %reass.mul.i, %conv.i.17
  %idxprom.i.17 = sext i32 %add5.i.17 to i64
  %arrayidx.i.17 = getelementptr inbounds float, float* %5, i64 %idxprom.i.17
  store float 0.000000e+00, float* %arrayidx.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.18 = add nsw i32 %reass.mul.i, %conv.i.18
  %idxprom.i.18 = sext i32 %add5.i.18 to i64
  %arrayidx.i.18 = getelementptr inbounds float, float* %5, i64 %idxprom.i.18
  store float 0.000000e+00, float* %arrayidx.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.19 = add nsw i32 %reass.mul.i, %conv.i.19
  %idxprom.i.19 = sext i32 %add5.i.19 to i64
  %arrayidx.i.19 = getelementptr inbounds float, float* %5, i64 %idxprom.i.19
  store float 0.000000e+00, float* %arrayidx.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.20 = add nsw i32 %reass.mul.i, %conv.i.20
  %idxprom.i.20 = sext i32 %add5.i.20 to i64
  %arrayidx.i.20 = getelementptr inbounds float, float* %5, i64 %idxprom.i.20
  store float 0.000000e+00, float* %arrayidx.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.21 = add nsw i32 %reass.mul.i, %conv.i.21
  %idxprom.i.21 = sext i32 %add5.i.21 to i64
  %arrayidx.i.21 = getelementptr inbounds float, float* %5, i64 %idxprom.i.21
  store float 0.000000e+00, float* %arrayidx.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.22 = add nsw i32 %reass.mul.i, %conv.i.22
  %idxprom.i.22 = sext i32 %add5.i.22 to i64
  %arrayidx.i.22 = getelementptr inbounds float, float* %5, i64 %idxprom.i.22
  store float 0.000000e+00, float* %arrayidx.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.23 = add nsw i32 %reass.mul.i, %conv.i.23
  %idxprom.i.23 = sext i32 %add5.i.23 to i64
  %arrayidx.i.23 = getelementptr inbounds float, float* %5, i64 %idxprom.i.23
  store float 0.000000e+00, float* %arrayidx.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.24 = add nsw i32 %reass.mul.i, %conv.i.24
  %idxprom.i.24 = sext i32 %add5.i.24 to i64
  %arrayidx.i.24 = getelementptr inbounds float, float* %5, i64 %idxprom.i.24
  store float 0.000000e+00, float* %arrayidx.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.25 = add nsw i32 %reass.mul.i, %conv.i.25
  %idxprom.i.25 = sext i32 %add5.i.25 to i64
  %arrayidx.i.25 = getelementptr inbounds float, float* %5, i64 %idxprom.i.25
  store float 0.000000e+00, float* %arrayidx.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.26 = add nsw i32 %reass.mul.i, %conv.i.26
  %idxprom.i.26 = sext i32 %add5.i.26 to i64
  %arrayidx.i.26 = getelementptr inbounds float, float* %5, i64 %idxprom.i.26
  store float 0.000000e+00, float* %arrayidx.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.27 = add nsw i32 %reass.mul.i, %conv.i.27
  %idxprom.i.27 = sext i32 %add5.i.27 to i64
  %arrayidx.i.27 = getelementptr inbounds float, float* %5, i64 %idxprom.i.27
  store float 0.000000e+00, float* %arrayidx.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.28 = add nsw i32 %reass.mul.i, %conv.i.28
  %idxprom.i.28 = sext i32 %add5.i.28 to i64
  %arrayidx.i.28 = getelementptr inbounds float, float* %5, i64 %idxprom.i.28
  store float 0.000000e+00, float* %arrayidx.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.29 = add nsw i32 %reass.mul.i, %conv.i.29
  %idxprom.i.29 = sext i32 %add5.i.29 to i64
  %arrayidx.i.29 = getelementptr inbounds float, float* %5, i64 %idxprom.i.29
  store float 0.000000e+00, float* %arrayidx.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.30 = add nsw i32 %reass.mul.i, %conv.i.30
  %idxprom.i.30 = sext i32 %add5.i.30 to i64
  %arrayidx.i.30 = getelementptr inbounds float, float* %5, i64 %idxprom.i.30
  store float 0.000000e+00, float* %arrayidx.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.31 = add nsw i32 %reass.mul.i, %conv.i.31
  %idxprom.i.31 = sext i32 %add5.i.31 to i64
  %arrayidx.i.31 = getelementptr inbounds float, float* %5, i64 %idxprom.i.31
  store float 0.000000e+00, float* %arrayidx.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %57 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond29.not = icmp eq i64 %57, 8
  br i1 %exitcond29.not, label %doitgen_kernel1.exit.loopexit143, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !21

doitgen_kernel1.exit.loopexit:                    ; preds = %for.cond.cleanup.r_exit.i.loopexit.us.us.7.1
  br label %doitgen_kernel1.exit

doitgen_kernel1.exit.loopexit143:                 ; preds = %pregion_for_entry.pregion_for_init.i
  br label %doitgen_kernel1.exit

doitgen_kernel1.exit:                             ; preds = %doitgen_kernel1.exit.loopexit143, %doitgen_kernel1.exit.loopexit
  ret void

pregion_for_entry.entry.i.us.us.1:                ; preds = %for.cond.cleanup.r_exit.i.loopexit.us.us.1.1, %pregion_for_end.i.us-lcssa.us.us
  %_local_id_x.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us ], [ %195, %for.cond.cleanup.r_exit.i.loopexit.us.us.1.1 ]
  %add1.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.0.us.us.1, %mul.i.i
  %conv.i.us.us.1 = trunc i64 %add1.i.i.us.us.1 to i32
  %add5.i.us.us.1 = add nsw i32 %reass.mul.i.us.1, %conv.i.us.us.1
  %idxprom.i.us.us.1 = sext i32 %add5.i.us.us.1 to i64
  %arrayidx.i.us.us.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1 = shl i64 %add1.i.i.us.us.1, 32
  %58 = ashr exact i64 %sext.i.us.us.1, 32
  br label %for.body.i.us.us.1

for.body.i.us.us.1:                               ; preds = %for.body.i.us.us.1, %pregion_for_entry.entry.i.us.us.1
  %indvars.iv.next.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1, %for.body.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.us.us.1 ]
  %59 = phi float [ %65, %for.body.i.us.us.1 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.1 ]
  %60 = add nsw i64 %indvars.iv.next.i2.us.us.1, %56
  %arrayidx20.i.us.us.1 = getelementptr inbounds float, float* %3, i64 %60
  %61 = load float, float* %arrayidx20.i.us.us.1, align 4, !tbaa !12
  %62 = mul nuw nsw i64 %indvars.iv.next.i2.us.us.1, %12
  %63 = add nsw i64 %62, %58
  %arrayidx24.i.us.us.1 = getelementptr inbounds float, float* %4, i64 %63
  %64 = load float, float* %arrayidx24.i.us.us.1, align 4, !tbaa !12
  %65 = tail call float @llvm.fmuladd.f32(float %61, float %64, float %59) #2
  store float %65, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1, 1
  %exitcond.not.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.1, %12
  br i1 %exitcond.not.i.us.us.1, label %for.cond.cleanup.r_exit.i.loopexit.us.us.1, label %for.body.i.us.us.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.loopexit.us.us.1:       ; preds = %for.body.i.us.us.1
  %66 = or i64 %_local_id_x.0.us.us.1, 1
  %add1.i.i.us.us.1.1 = add nuw nsw i64 %66, %mul.i.i
  %conv.i.us.us.1.1 = trunc i64 %add1.i.i.us.us.1.1 to i32
  %add5.i.us.us.1.1 = add nsw i32 %reass.mul.i.us.1, %conv.i.us.us.1.1
  %idxprom.i.us.us.1.1 = sext i32 %add5.i.us.us.1.1 to i64
  %arrayidx.i.us.us.1.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1.1 = shl i64 %add1.i.i.us.us.1.1, 32
  %67 = ashr exact i64 %sext.i.us.us.1.1, 32
  br label %for.body.i.us.us.1.1

pregion_for_end.i.us-lcssa.us.us.1:               ; preds = %for.cond.cleanup.r_exit.i.loopexit.us.us.1.1
  %68 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.2 = or i32 %68, 2
  %reass.add.i.us.2 = add i32 %mul3.i, %conv2.i.us.2
  %reass.mul.i.us.2 = mul i32 %reass.add.i.us.2, %2
  %69 = sext i32 %reass.mul.i.us.2 to i64
  br label %pregion_for_entry.entry.i.us.us.2

pregion_for_entry.entry.i.us.us.2:                ; preds = %for.cond.cleanup.r_exit.i.loopexit.us.us.2.1, %pregion_for_end.i.us-lcssa.us.us.1
  %_local_id_x.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.1 ], [ %187, %for.cond.cleanup.r_exit.i.loopexit.us.us.2.1 ]
  %add1.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.0.us.us.2, %mul.i.i
  %conv.i.us.us.2 = trunc i64 %add1.i.i.us.us.2 to i32
  %add5.i.us.us.2 = add nsw i32 %reass.mul.i.us.2, %conv.i.us.us.2
  %idxprom.i.us.us.2 = sext i32 %add5.i.us.us.2 to i64
  %arrayidx.i.us.us.2 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2 = shl i64 %add1.i.i.us.us.2, 32
  %70 = ashr exact i64 %sext.i.us.us.2, 32
  br label %for.body.i.us.us.2

for.body.i.us.us.2:                               ; preds = %for.body.i.us.us.2, %pregion_for_entry.entry.i.us.us.2
  %indvars.iv.next.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.us.us.2, %for.body.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.us.us.2 ]
  %71 = phi float [ %77, %for.body.i.us.us.2 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.2 ]
  %72 = add nsw i64 %indvars.iv.next.i2.us.us.2, %69
  %arrayidx20.i.us.us.2 = getelementptr inbounds float, float* %3, i64 %72
  %73 = load float, float* %arrayidx20.i.us.us.2, align 4, !tbaa !12
  %74 = mul nuw nsw i64 %indvars.iv.next.i2.us.us.2, %12
  %75 = add nsw i64 %74, %70
  %arrayidx24.i.us.us.2 = getelementptr inbounds float, float* %4, i64 %75
  %76 = load float, float* %arrayidx24.i.us.us.2, align 4, !tbaa !12
  %77 = tail call float @llvm.fmuladd.f32(float %73, float %76, float %71) #2
  store float %77, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i2.us.us.2, 1
  %exitcond.not.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.us.us.2, %12
  br i1 %exitcond.not.i.us.us.2, label %for.cond.cleanup.r_exit.i.loopexit.us.us.2, label %for.body.i.us.us.2, !llvm.loop !19

for.cond.cleanup.r_exit.i.loopexit.us.us.2:       ; preds = %for.body.i.us.us.2
  %78 = or i64 %_local_id_x.0.us.us.2, 1
  %add1.i.i.us.us.2.1 = add nuw nsw i64 %78, %mul.i.i
  %conv.i.us.us.2.1 = trunc i64 %add1.i.i.us.us.2.1 to i32
  %add5.i.us.us.2.1 = add nsw i32 %reass.mul.i.us.2, %conv.i.us.us.2.1
  %idxprom.i.us.us.2.1 = sext i32 %add5.i.us.us.2.1 to i64
  %arrayidx.i.us.us.2.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2.1 = shl i64 %add1.i.i.us.us.2.1, 32
  %79 = ashr exact i64 %sext.i.us.us.2.1, 32
  br label %for.body.i.us.us.2.1

pregion_for_end.i.us-lcssa.us.us.2:               ; preds = %for.cond.cleanup.r_exit.i.loopexit.us.us.2.1
  %80 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.3 = or i32 %80, 3
  %reass.add.i.us.3 = add i32 %mul3.i, %conv2.i.us.3
  %reass.mul.i.us.3 = mul i32 %reass.add.i.us.3, %2
  %81 = sext i32 %reass.mul.i.us.3 to i64
  br label %pregion_for_entry.entry.i.us.us.3

pregion_for_entry.entry.i.us.us.3:                ; preds = %for.cond.cleanup.r_exit.i.loopexit.us.us.3.1, %pregion_for_end.i.us-lcssa.us.us.2
  %_local_id_x.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.2 ], [ %179, %for.cond.cleanup.r_exit.i.loopexit.us.us.3.1 ]
  %add1.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.0.us.us.3, %mul.i.i
  %conv.i.us.us.3 = trunc i64 %add1.i.i.us.us.3 to i32
  %add5.i.us.us.3 = add nsw i32 %reass.mul.i.us.3, %conv.i.us.us.3
  %idxprom.i.us.us.3 = sext i32 %add5.i.us.us.3 to i64
  %arrayidx.i.us.us.3 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3 = shl i64 %add1.i.i.us.us.3, 32
  %82 = ashr exact i64 %sext.i.us.us.3, 32
  br label %for.body.i.us.us.3

for.body.i.us.us.3:                               ; preds = %for.body.i.us.us.3, %pregion_for_entry.entry.i.us.us.3
  %indvars.iv.next.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.us.us.3, %for.body.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.us.us.3 ]
  %83 = phi float [ %89, %for.body.i.us.us.3 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.3 ]
  %84 = add nsw i64 %indvars.iv.next.i2.us.us.3, %81
  %arrayidx20.i.us.us.3 = getelementptr inbounds float, float* %3, i64 %84
  %85 = load float, float* %arrayidx20.i.us.us.3, align 4, !tbaa !12
  %86 = mul nuw nsw i64 %indvars.iv.next.i2.us.us.3, %12
  %87 = add nsw i64 %86, %82
  %arrayidx24.i.us.us.3 = getelementptr inbounds float, float* %4, i64 %87
  %88 = load float, float* %arrayidx24.i.us.us.3, align 4, !tbaa !12
  %89 = tail call float @llvm.fmuladd.f32(float %85, float %88, float %83) #2
  store float %89, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i2.us.us.3, 1
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.3, %12
  br i1 %exitcond.not.i.us.us.3, label %for.cond.cleanup.r_exit.i.loopexit.us.us.3, label %for.body.i.us.us.3, !llvm.loop !19

for.cond.cleanup.r_exit.i.loopexit.us.us.3:       ; preds = %for.body.i.us.us.3
  %90 = or i64 %_local_id_x.0.us.us.3, 1
  %add1.i.i.us.us.3.1 = add nuw nsw i64 %90, %mul.i.i
  %conv.i.us.us.3.1 = trunc i64 %add1.i.i.us.us.3.1 to i32
  %add5.i.us.us.3.1 = add nsw i32 %reass.mul.i.us.3, %conv.i.us.us.3.1
  %idxprom.i.us.us.3.1 = sext i32 %add5.i.us.us.3.1 to i64
  %arrayidx.i.us.us.3.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3.1 = shl i64 %add1.i.i.us.us.3.1, 32
  %91 = ashr exact i64 %sext.i.us.us.3.1, 32
  br label %for.body.i.us.us.3.1

pregion_for_end.i.us-lcssa.us.us.3:               ; preds = %for.cond.cleanup.r_exit.i.loopexit.us.us.3.1
  %92 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.4 = or i32 %92, 4
  %reass.add.i.us.4 = add i32 %mul3.i, %conv2.i.us.4
  %reass.mul.i.us.4 = mul i32 %reass.add.i.us.4, %2
  %93 = sext i32 %reass.mul.i.us.4 to i64
  br label %pregion_for_entry.entry.i.us.us.4

pregion_for_entry.entry.i.us.us.4:                ; preds = %for.cond.cleanup.r_exit.i.loopexit.us.us.4.1, %pregion_for_end.i.us-lcssa.us.us.3
  %_local_id_x.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.3 ], [ %171, %for.cond.cleanup.r_exit.i.loopexit.us.us.4.1 ]
  %add1.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.0.us.us.4, %mul.i.i
  %conv.i.us.us.4 = trunc i64 %add1.i.i.us.us.4 to i32
  %add5.i.us.us.4 = add nsw i32 %reass.mul.i.us.4, %conv.i.us.us.4
  %idxprom.i.us.us.4 = sext i32 %add5.i.us.us.4 to i64
  %arrayidx.i.us.us.4 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4 = shl i64 %add1.i.i.us.us.4, 32
  %94 = ashr exact i64 %sext.i.us.us.4, 32
  br label %for.body.i.us.us.4

for.body.i.us.us.4:                               ; preds = %for.body.i.us.us.4, %pregion_for_entry.entry.i.us.us.4
  %indvars.iv.next.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.us.us.4, %for.body.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.us.us.4 ]
  %95 = phi float [ %101, %for.body.i.us.us.4 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.4 ]
  %96 = add nsw i64 %indvars.iv.next.i2.us.us.4, %93
  %arrayidx20.i.us.us.4 = getelementptr inbounds float, float* %3, i64 %96
  %97 = load float, float* %arrayidx20.i.us.us.4, align 4, !tbaa !12
  %98 = mul nuw nsw i64 %indvars.iv.next.i2.us.us.4, %12
  %99 = add nsw i64 %98, %94
  %arrayidx24.i.us.us.4 = getelementptr inbounds float, float* %4, i64 %99
  %100 = load float, float* %arrayidx24.i.us.us.4, align 4, !tbaa !12
  %101 = tail call float @llvm.fmuladd.f32(float %97, float %100, float %95) #2
  store float %101, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i2.us.us.4, 1
  %exitcond.not.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.us.us.4, %12
  br i1 %exitcond.not.i.us.us.4, label %for.cond.cleanup.r_exit.i.loopexit.us.us.4, label %for.body.i.us.us.4, !llvm.loop !19

for.cond.cleanup.r_exit.i.loopexit.us.us.4:       ; preds = %for.body.i.us.us.4
  %102 = or i64 %_local_id_x.0.us.us.4, 1
  %add1.i.i.us.us.4.1 = add nuw nsw i64 %102, %mul.i.i
  %conv.i.us.us.4.1 = trunc i64 %add1.i.i.us.us.4.1 to i32
  %add5.i.us.us.4.1 = add nsw i32 %reass.mul.i.us.4, %conv.i.us.us.4.1
  %idxprom.i.us.us.4.1 = sext i32 %add5.i.us.us.4.1 to i64
  %arrayidx.i.us.us.4.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4.1 = shl i64 %add1.i.i.us.us.4.1, 32
  %103 = ashr exact i64 %sext.i.us.us.4.1, 32
  br label %for.body.i.us.us.4.1

pregion_for_end.i.us-lcssa.us.us.4:               ; preds = %for.cond.cleanup.r_exit.i.loopexit.us.us.4.1
  %104 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.5 = or i32 %104, 5
  %reass.add.i.us.5 = add i32 %mul3.i, %conv2.i.us.5
  %reass.mul.i.us.5 = mul i32 %reass.add.i.us.5, %2
  %105 = sext i32 %reass.mul.i.us.5 to i64
  br label %pregion_for_entry.entry.i.us.us.5

pregion_for_entry.entry.i.us.us.5:                ; preds = %for.cond.cleanup.r_exit.i.loopexit.us.us.5.1, %pregion_for_end.i.us-lcssa.us.us.4
  %_local_id_x.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.4 ], [ %163, %for.cond.cleanup.r_exit.i.loopexit.us.us.5.1 ]
  %add1.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.0.us.us.5, %mul.i.i
  %conv.i.us.us.5 = trunc i64 %add1.i.i.us.us.5 to i32
  %add5.i.us.us.5 = add nsw i32 %reass.mul.i.us.5, %conv.i.us.us.5
  %idxprom.i.us.us.5 = sext i32 %add5.i.us.us.5 to i64
  %arrayidx.i.us.us.5 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5 = shl i64 %add1.i.i.us.us.5, 32
  %106 = ashr exact i64 %sext.i.us.us.5, 32
  br label %for.body.i.us.us.5

for.body.i.us.us.5:                               ; preds = %for.body.i.us.us.5, %pregion_for_entry.entry.i.us.us.5
  %indvars.iv.next.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.us.us.5, %for.body.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.us.us.5 ]
  %107 = phi float [ %113, %for.body.i.us.us.5 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.5 ]
  %108 = add nsw i64 %indvars.iv.next.i2.us.us.5, %105
  %arrayidx20.i.us.us.5 = getelementptr inbounds float, float* %3, i64 %108
  %109 = load float, float* %arrayidx20.i.us.us.5, align 4, !tbaa !12
  %110 = mul nuw nsw i64 %indvars.iv.next.i2.us.us.5, %12
  %111 = add nsw i64 %110, %106
  %arrayidx24.i.us.us.5 = getelementptr inbounds float, float* %4, i64 %111
  %112 = load float, float* %arrayidx24.i.us.us.5, align 4, !tbaa !12
  %113 = tail call float @llvm.fmuladd.f32(float %109, float %112, float %107) #2
  store float %113, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i2.us.us.5, 1
  %exitcond.not.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.us.us.5, %12
  br i1 %exitcond.not.i.us.us.5, label %for.cond.cleanup.r_exit.i.loopexit.us.us.5, label %for.body.i.us.us.5, !llvm.loop !19

for.cond.cleanup.r_exit.i.loopexit.us.us.5:       ; preds = %for.body.i.us.us.5
  %114 = or i64 %_local_id_x.0.us.us.5, 1
  %add1.i.i.us.us.5.1 = add nuw nsw i64 %114, %mul.i.i
  %conv.i.us.us.5.1 = trunc i64 %add1.i.i.us.us.5.1 to i32
  %add5.i.us.us.5.1 = add nsw i32 %reass.mul.i.us.5, %conv.i.us.us.5.1
  %idxprom.i.us.us.5.1 = sext i32 %add5.i.us.us.5.1 to i64
  %arrayidx.i.us.us.5.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5.1 = shl i64 %add1.i.i.us.us.5.1, 32
  %115 = ashr exact i64 %sext.i.us.us.5.1, 32
  br label %for.body.i.us.us.5.1

pregion_for_end.i.us-lcssa.us.us.5:               ; preds = %for.cond.cleanup.r_exit.i.loopexit.us.us.5.1
  %116 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.6 = or i32 %116, 6
  %reass.add.i.us.6 = add i32 %mul3.i, %conv2.i.us.6
  %reass.mul.i.us.6 = mul i32 %reass.add.i.us.6, %2
  %117 = sext i32 %reass.mul.i.us.6 to i64
  br label %pregion_for_entry.entry.i.us.us.6

pregion_for_entry.entry.i.us.us.6:                ; preds = %for.cond.cleanup.r_exit.i.loopexit.us.us.6.1, %pregion_for_end.i.us-lcssa.us.us.5
  %_local_id_x.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.5 ], [ %155, %for.cond.cleanup.r_exit.i.loopexit.us.us.6.1 ]
  %add1.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.0.us.us.6, %mul.i.i
  %conv.i.us.us.6 = trunc i64 %add1.i.i.us.us.6 to i32
  %add5.i.us.us.6 = add nsw i32 %reass.mul.i.us.6, %conv.i.us.us.6
  %idxprom.i.us.us.6 = sext i32 %add5.i.us.us.6 to i64
  %arrayidx.i.us.us.6 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6 = shl i64 %add1.i.i.us.us.6, 32
  %118 = ashr exact i64 %sext.i.us.us.6, 32
  br label %for.body.i.us.us.6

for.body.i.us.us.6:                               ; preds = %for.body.i.us.us.6, %pregion_for_entry.entry.i.us.us.6
  %indvars.iv.next.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.us.us.6, %for.body.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.us.us.6 ]
  %119 = phi float [ %125, %for.body.i.us.us.6 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.6 ]
  %120 = add nsw i64 %indvars.iv.next.i2.us.us.6, %117
  %arrayidx20.i.us.us.6 = getelementptr inbounds float, float* %3, i64 %120
  %121 = load float, float* %arrayidx20.i.us.us.6, align 4, !tbaa !12
  %122 = mul nuw nsw i64 %indvars.iv.next.i2.us.us.6, %12
  %123 = add nsw i64 %122, %118
  %arrayidx24.i.us.us.6 = getelementptr inbounds float, float* %4, i64 %123
  %124 = load float, float* %arrayidx24.i.us.us.6, align 4, !tbaa !12
  %125 = tail call float @llvm.fmuladd.f32(float %121, float %124, float %119) #2
  store float %125, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i2.us.us.6, 1
  %exitcond.not.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.us.us.6, %12
  br i1 %exitcond.not.i.us.us.6, label %for.cond.cleanup.r_exit.i.loopexit.us.us.6, label %for.body.i.us.us.6, !llvm.loop !19

for.cond.cleanup.r_exit.i.loopexit.us.us.6:       ; preds = %for.body.i.us.us.6
  %126 = or i64 %_local_id_x.0.us.us.6, 1
  %add1.i.i.us.us.6.1 = add nuw nsw i64 %126, %mul.i.i
  %conv.i.us.us.6.1 = trunc i64 %add1.i.i.us.us.6.1 to i32
  %add5.i.us.us.6.1 = add nsw i32 %reass.mul.i.us.6, %conv.i.us.us.6.1
  %idxprom.i.us.us.6.1 = sext i32 %add5.i.us.us.6.1 to i64
  %arrayidx.i.us.us.6.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6.1 = shl i64 %add1.i.i.us.us.6.1, 32
  %127 = ashr exact i64 %sext.i.us.us.6.1, 32
  br label %for.body.i.us.us.6.1

pregion_for_end.i.us-lcssa.us.us.6:               ; preds = %for.cond.cleanup.r_exit.i.loopexit.us.us.6.1
  %128 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.7 = or i32 %128, 7
  %reass.add.i.us.7 = add i32 %mul3.i, %conv2.i.us.7
  %reass.mul.i.us.7 = mul i32 %reass.add.i.us.7, %2
  %129 = sext i32 %reass.mul.i.us.7 to i64
  br label %pregion_for_entry.entry.i.us.us.7

pregion_for_entry.entry.i.us.us.7:                ; preds = %for.cond.cleanup.r_exit.i.loopexit.us.us.7.1, %pregion_for_end.i.us-lcssa.us.us.6
  %_local_id_x.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.6 ], [ %147, %for.cond.cleanup.r_exit.i.loopexit.us.us.7.1 ]
  %add1.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.0.us.us.7, %mul.i.i
  %conv.i.us.us.7 = trunc i64 %add1.i.i.us.us.7 to i32
  %add5.i.us.us.7 = add nsw i32 %reass.mul.i.us.7, %conv.i.us.us.7
  %idxprom.i.us.us.7 = sext i32 %add5.i.us.us.7 to i64
  %arrayidx.i.us.us.7 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7 = shl i64 %add1.i.i.us.us.7, 32
  %130 = ashr exact i64 %sext.i.us.us.7, 32
  br label %for.body.i.us.us.7

for.body.i.us.us.7:                               ; preds = %for.body.i.us.us.7, %pregion_for_entry.entry.i.us.us.7
  %indvars.iv.next.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.us.us.7, %for.body.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.us.us.7 ]
  %131 = phi float [ %137, %for.body.i.us.us.7 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.7 ]
  %132 = add nsw i64 %indvars.iv.next.i2.us.us.7, %129
  %arrayidx20.i.us.us.7 = getelementptr inbounds float, float* %3, i64 %132
  %133 = load float, float* %arrayidx20.i.us.us.7, align 4, !tbaa !12
  %134 = mul nuw nsw i64 %indvars.iv.next.i2.us.us.7, %12
  %135 = add nsw i64 %134, %130
  %arrayidx24.i.us.us.7 = getelementptr inbounds float, float* %4, i64 %135
  %136 = load float, float* %arrayidx24.i.us.us.7, align 4, !tbaa !12
  %137 = tail call float @llvm.fmuladd.f32(float %133, float %136, float %131) #2
  store float %137, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i2.us.us.7, 1
  %exitcond.not.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.us.us.7, %12
  br i1 %exitcond.not.i.us.us.7, label %for.cond.cleanup.r_exit.i.loopexit.us.us.7, label %for.body.i.us.us.7, !llvm.loop !19

for.cond.cleanup.r_exit.i.loopexit.us.us.7:       ; preds = %for.body.i.us.us.7
  %138 = or i64 %_local_id_x.0.us.us.7, 1
  %add1.i.i.us.us.7.1 = add nuw nsw i64 %138, %mul.i.i
  %conv.i.us.us.7.1 = trunc i64 %add1.i.i.us.us.7.1 to i32
  %add5.i.us.us.7.1 = add nsw i32 %reass.mul.i.us.7, %conv.i.us.us.7.1
  %idxprom.i.us.us.7.1 = sext i32 %add5.i.us.us.7.1 to i64
  %arrayidx.i.us.us.7.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7.1 = shl i64 %add1.i.i.us.us.7.1, 32
  %139 = ashr exact i64 %sext.i.us.us.7.1, 32
  br label %for.body.i.us.us.7.1

for.body.i.us.us.7.1:                             ; preds = %for.body.i.us.us.7.1, %for.cond.cleanup.r_exit.i.loopexit.us.us.7
  %indvars.iv.next.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.us.us.7.1, %for.body.i.us.us.7.1 ], [ 0, %for.cond.cleanup.r_exit.i.loopexit.us.us.7 ]
  %140 = phi float [ %146, %for.body.i.us.us.7.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.loopexit.us.us.7 ]
  %141 = add nsw i64 %indvars.iv.next.i2.us.us.7.1, %129
  %arrayidx20.i.us.us.7.1 = getelementptr inbounds float, float* %3, i64 %141
  %142 = load float, float* %arrayidx20.i.us.us.7.1, align 4, !tbaa !12
  %143 = mul nuw nsw i64 %indvars.iv.next.i2.us.us.7.1, %12
  %144 = add nsw i64 %143, %139
  %arrayidx24.i.us.us.7.1 = getelementptr inbounds float, float* %4, i64 %144
  %145 = load float, float* %arrayidx24.i.us.us.7.1, align 4, !tbaa !12
  %146 = tail call float @llvm.fmuladd.f32(float %142, float %145, float %140) #2
  store float %146, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.7.1, 1
  %exitcond.not.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.us.us.7.1, %12
  br i1 %exitcond.not.i.us.us.7.1, label %for.cond.cleanup.r_exit.i.loopexit.us.us.7.1, label %for.body.i.us.us.7.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.loopexit.us.us.7.1:     ; preds = %for.body.i.us.us.7.1
  %147 = add nuw nsw i64 %_local_id_x.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %147, 32
  br i1 %exitcond.7.not.1, label %doitgen_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.us.us.7, !llvm.loop !24

for.body.i.us.us.6.1:                             ; preds = %for.body.i.us.us.6.1, %for.cond.cleanup.r_exit.i.loopexit.us.us.6
  %indvars.iv.next.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.us.us.6.1, %for.body.i.us.us.6.1 ], [ 0, %for.cond.cleanup.r_exit.i.loopexit.us.us.6 ]
  %148 = phi float [ %154, %for.body.i.us.us.6.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.loopexit.us.us.6 ]
  %149 = add nsw i64 %indvars.iv.next.i2.us.us.6.1, %117
  %arrayidx20.i.us.us.6.1 = getelementptr inbounds float, float* %3, i64 %149
  %150 = load float, float* %arrayidx20.i.us.us.6.1, align 4, !tbaa !12
  %151 = mul nuw nsw i64 %indvars.iv.next.i2.us.us.6.1, %12
  %152 = add nsw i64 %151, %127
  %arrayidx24.i.us.us.6.1 = getelementptr inbounds float, float* %4, i64 %152
  %153 = load float, float* %arrayidx24.i.us.us.6.1, align 4, !tbaa !12
  %154 = tail call float @llvm.fmuladd.f32(float %150, float %153, float %148) #2
  store float %154, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.6.1, 1
  %exitcond.not.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.us.us.6.1, %12
  br i1 %exitcond.not.i.us.us.6.1, label %for.cond.cleanup.r_exit.i.loopexit.us.us.6.1, label %for.body.i.us.us.6.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.loopexit.us.us.6.1:     ; preds = %for.body.i.us.us.6.1
  %155 = add nuw nsw i64 %_local_id_x.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %155, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.us.us.6, !llvm.loop !24

for.body.i.us.us.5.1:                             ; preds = %for.body.i.us.us.5.1, %for.cond.cleanup.r_exit.i.loopexit.us.us.5
  %indvars.iv.next.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.us.us.5.1, %for.body.i.us.us.5.1 ], [ 0, %for.cond.cleanup.r_exit.i.loopexit.us.us.5 ]
  %156 = phi float [ %162, %for.body.i.us.us.5.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.loopexit.us.us.5 ]
  %157 = add nsw i64 %indvars.iv.next.i2.us.us.5.1, %105
  %arrayidx20.i.us.us.5.1 = getelementptr inbounds float, float* %3, i64 %157
  %158 = load float, float* %arrayidx20.i.us.us.5.1, align 4, !tbaa !12
  %159 = mul nuw nsw i64 %indvars.iv.next.i2.us.us.5.1, %12
  %160 = add nsw i64 %159, %115
  %arrayidx24.i.us.us.5.1 = getelementptr inbounds float, float* %4, i64 %160
  %161 = load float, float* %arrayidx24.i.us.us.5.1, align 4, !tbaa !12
  %162 = tail call float @llvm.fmuladd.f32(float %158, float %161, float %156) #2
  store float %162, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.5.1, 1
  %exitcond.not.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.us.us.5.1, %12
  br i1 %exitcond.not.i.us.us.5.1, label %for.cond.cleanup.r_exit.i.loopexit.us.us.5.1, label %for.body.i.us.us.5.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.loopexit.us.us.5.1:     ; preds = %for.body.i.us.us.5.1
  %163 = add nuw nsw i64 %_local_id_x.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %163, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.us.us.5, !llvm.loop !24

for.body.i.us.us.4.1:                             ; preds = %for.body.i.us.us.4.1, %for.cond.cleanup.r_exit.i.loopexit.us.us.4
  %indvars.iv.next.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.us.us.4.1, %for.body.i.us.us.4.1 ], [ 0, %for.cond.cleanup.r_exit.i.loopexit.us.us.4 ]
  %164 = phi float [ %170, %for.body.i.us.us.4.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.loopexit.us.us.4 ]
  %165 = add nsw i64 %indvars.iv.next.i2.us.us.4.1, %93
  %arrayidx20.i.us.us.4.1 = getelementptr inbounds float, float* %3, i64 %165
  %166 = load float, float* %arrayidx20.i.us.us.4.1, align 4, !tbaa !12
  %167 = mul nuw nsw i64 %indvars.iv.next.i2.us.us.4.1, %12
  %168 = add nsw i64 %167, %103
  %arrayidx24.i.us.us.4.1 = getelementptr inbounds float, float* %4, i64 %168
  %169 = load float, float* %arrayidx24.i.us.us.4.1, align 4, !tbaa !12
  %170 = tail call float @llvm.fmuladd.f32(float %166, float %169, float %164) #2
  store float %170, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.4.1, 1
  %exitcond.not.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.us.us.4.1, %12
  br i1 %exitcond.not.i.us.us.4.1, label %for.cond.cleanup.r_exit.i.loopexit.us.us.4.1, label %for.body.i.us.us.4.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.loopexit.us.us.4.1:     ; preds = %for.body.i.us.us.4.1
  %171 = add nuw nsw i64 %_local_id_x.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %171, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.us.us.4, !llvm.loop !24

for.body.i.us.us.3.1:                             ; preds = %for.body.i.us.us.3.1, %for.cond.cleanup.r_exit.i.loopexit.us.us.3
  %indvars.iv.next.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.us.us.3.1, %for.body.i.us.us.3.1 ], [ 0, %for.cond.cleanup.r_exit.i.loopexit.us.us.3 ]
  %172 = phi float [ %178, %for.body.i.us.us.3.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.loopexit.us.us.3 ]
  %173 = add nsw i64 %indvars.iv.next.i2.us.us.3.1, %81
  %arrayidx20.i.us.us.3.1 = getelementptr inbounds float, float* %3, i64 %173
  %174 = load float, float* %arrayidx20.i.us.us.3.1, align 4, !tbaa !12
  %175 = mul nuw nsw i64 %indvars.iv.next.i2.us.us.3.1, %12
  %176 = add nsw i64 %175, %91
  %arrayidx24.i.us.us.3.1 = getelementptr inbounds float, float* %4, i64 %176
  %177 = load float, float* %arrayidx24.i.us.us.3.1, align 4, !tbaa !12
  %178 = tail call float @llvm.fmuladd.f32(float %174, float %177, float %172) #2
  store float %178, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.3.1, 1
  %exitcond.not.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.us.us.3.1, %12
  br i1 %exitcond.not.i.us.us.3.1, label %for.cond.cleanup.r_exit.i.loopexit.us.us.3.1, label %for.body.i.us.us.3.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.loopexit.us.us.3.1:     ; preds = %for.body.i.us.us.3.1
  %179 = add nuw nsw i64 %_local_id_x.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %179, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.us.us.3, !llvm.loop !24

for.body.i.us.us.2.1:                             ; preds = %for.body.i.us.us.2.1, %for.cond.cleanup.r_exit.i.loopexit.us.us.2
  %indvars.iv.next.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.us.us.2.1, %for.body.i.us.us.2.1 ], [ 0, %for.cond.cleanup.r_exit.i.loopexit.us.us.2 ]
  %180 = phi float [ %186, %for.body.i.us.us.2.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.loopexit.us.us.2 ]
  %181 = add nsw i64 %indvars.iv.next.i2.us.us.2.1, %69
  %arrayidx20.i.us.us.2.1 = getelementptr inbounds float, float* %3, i64 %181
  %182 = load float, float* %arrayidx20.i.us.us.2.1, align 4, !tbaa !12
  %183 = mul nuw nsw i64 %indvars.iv.next.i2.us.us.2.1, %12
  %184 = add nsw i64 %183, %79
  %arrayidx24.i.us.us.2.1 = getelementptr inbounds float, float* %4, i64 %184
  %185 = load float, float* %arrayidx24.i.us.us.2.1, align 4, !tbaa !12
  %186 = tail call float @llvm.fmuladd.f32(float %182, float %185, float %180) #2
  store float %186, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.2.1, 1
  %exitcond.not.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.us.us.2.1, %12
  br i1 %exitcond.not.i.us.us.2.1, label %for.cond.cleanup.r_exit.i.loopexit.us.us.2.1, label %for.body.i.us.us.2.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.loopexit.us.us.2.1:     ; preds = %for.body.i.us.us.2.1
  %187 = add nuw nsw i64 %_local_id_x.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %187, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.us.us.2, !llvm.loop !24

for.body.i.us.us.1.1:                             ; preds = %for.body.i.us.us.1.1, %for.cond.cleanup.r_exit.i.loopexit.us.us.1
  %indvars.iv.next.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.us.us.1.1, %for.body.i.us.us.1.1 ], [ 0, %for.cond.cleanup.r_exit.i.loopexit.us.us.1 ]
  %188 = phi float [ %194, %for.body.i.us.us.1.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.loopexit.us.us.1 ]
  %189 = add nsw i64 %indvars.iv.next.i2.us.us.1.1, %56
  %arrayidx20.i.us.us.1.1 = getelementptr inbounds float, float* %3, i64 %189
  %190 = load float, float* %arrayidx20.i.us.us.1.1, align 4, !tbaa !12
  %191 = mul nuw nsw i64 %indvars.iv.next.i2.us.us.1.1, %12
  %192 = add nsw i64 %191, %67
  %arrayidx24.i.us.us.1.1 = getelementptr inbounds float, float* %4, i64 %192
  %193 = load float, float* %arrayidx24.i.us.us.1.1, align 4, !tbaa !12
  %194 = tail call float @llvm.fmuladd.f32(float %190, float %193, float %188) #2
  store float %194, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1.1, 1
  %exitcond.not.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.us.us.1.1, %12
  br i1 %exitcond.not.i.us.us.1.1, label %for.cond.cleanup.r_exit.i.loopexit.us.us.1.1, label %for.body.i.us.us.1.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.loopexit.us.us.1.1:     ; preds = %for.body.i.us.us.1.1
  %195 = add nuw nsw i64 %_local_id_x.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %195, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.us.us.1, !llvm.loop !24

for.body.i.us.us.1141:                            ; preds = %for.body.i.us.us.1141, %for.cond.cleanup.r_exit.i.loopexit.us.us
  %indvars.iv.next.i2.us.us.1136 = phi i64 [ %indvars.iv.next.i.us.us.1139, %for.body.i.us.us.1141 ], [ 0, %for.cond.cleanup.r_exit.i.loopexit.us.us ]
  %196 = phi float [ %202, %for.body.i.us.us.1141 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.loopexit.us.us ]
  %197 = add nsw i64 %indvars.iv.next.i2.us.us.1136, %44
  %arrayidx20.i.us.us.1137 = getelementptr inbounds float, float* %3, i64 %197
  %198 = load float, float* %arrayidx20.i.us.us.1137, align 4, !tbaa !12
  %199 = mul nuw nsw i64 %indvars.iv.next.i2.us.us.1136, %12
  %200 = add nsw i64 %199, %47
  %arrayidx24.i.us.us.1138 = getelementptr inbounds float, float* %4, i64 %200
  %201 = load float, float* %arrayidx24.i.us.us.1138, align 4, !tbaa !12
  %202 = tail call float @llvm.fmuladd.f32(float %198, float %201, float %196) #2
  store float %202, float* %arrayidx.i.us.us.1133, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1139 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1136, 1
  %exitcond.not.i.us.us.1140 = icmp eq i64 %indvars.iv.next.i.us.us.1139, %12
  br i1 %exitcond.not.i.us.us.1140, label %for.cond.cleanup.r_exit.i.loopexit.us.us.1142, label %for.body.i.us.us.1141, !llvm.loop !19

for.cond.cleanup.r_exit.i.loopexit.us.us.1142:    ; preds = %for.body.i.us.us.1141
  %203 = add nuw nsw i64 %_local_id_x.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %203, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.us.us, !llvm.loop !24
}

; Function Attrs: nounwind
define void @_pocl_kernel_doitgen_kernel1_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = getelementptr i8*, i8** %0, i64 1
  %7 = bitcast i8** %6 to i32**
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr i8*, i8** %0, i64 2
  %11 = bitcast i8** %10 to i32**
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr i8*, i8** %0, i64 3
  %15 = bitcast i8** %14 to float***
  %16 = load float**, float*** %15, align 8
  %17 = load float*, float** %16, align 8
  %18 = getelementptr i8*, i8** %0, i64 4
  %19 = bitcast i8** %18 to float***
  %20 = load float**, float*** %19, align 8
  %21 = load float*, float** %20, align 8
  %22 = getelementptr i8*, i8** %0, i64 5
  %23 = bitcast i8** %22 to float***
  %24 = load float**, float*** %23, align 8
  %25 = load float*, float** %24, align 8
  %26 = getelementptr i8*, i8** %0, i64 6
  %27 = bitcast i8** %26 to i32**
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %28, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %mul3.i.i = mul i32 %29, %9
  %cmp62.i.i = icmp sgt i32 %13, 0
  %30 = zext i32 %13 to i64
  br i1 %cmp62.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  %conv.i.i = trunc i64 %mul.i.i.i to i32
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.1 = or i32 %31, 1
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.2 = or i32 %32, 2
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.3 = or i32 %33, 3
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.4 = or i32 %34, 4
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.5 = or i32 %35, 5
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.6 = or i32 %36, 6
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.7 = or i32 %37, 7
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.8 = or i32 %38, 8
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.9 = or i32 %39, 9
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.10 = or i32 %40, 10
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.11 = or i32 %41, 11
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.12 = or i32 %42, 12
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.13 = or i32 %43, 13
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.14 = or i32 %44, 14
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.15 = or i32 %45, 15
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.16 = or i32 %46, 16
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.17 = or i32 %47, 17
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.18 = or i32 %48, 18
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.19 = or i32 %49, 19
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.20 = or i32 %50, 20
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.21 = or i32 %51, 21
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.22 = or i32 %52, 22
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.23 = or i32 %53, 23
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.24 = or i32 %54, 24
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.25 = or i32 %55, 25
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.26 = or i32 %56, 26
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.27 = or i32 %57, 27
  %58 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.28 = or i32 %58, 28
  %59 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.29 = or i32 %59, 29
  %60 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.30 = or i32 %60, 30
  %61 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.31 = or i32 %61, 31
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %reass.add.i.i.us = add i32 %mul3.i.i, %conv2.i.i.us
  %reass.mul.i.i.us = mul i32 %reass.add.i.i.us, %13
  %62 = sext i32 %reass.mul.i.i.us to i64
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_entry.entry.i.i.us.us:                ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1142, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.i.us.preheader ], [ %221, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1142 ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %add5.i.i.us.us = add nsw i32 %reass.mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add5.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %63 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

for.cond.cleanup.r_exit.i.i.loopexit.us.us:       ; preds = %for.body.i.i.us.us
  %64 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.1129 = add nuw nsw i64 %64, %mul.i.i.i
  %conv.i.i.us.us.1130 = trunc i64 %add1.i.i.i.us.us.1129 to i32
  %add5.i.i.us.us.1131 = add nsw i32 %reass.mul.i.i.us, %conv.i.i.us.us.1130
  %idxprom.i.i.us.us.1132 = sext i32 %add5.i.i.us.us.1131 to i64
  %arrayidx.i.i.us.us.1133 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.1132
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1133, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1134 = shl i64 %add1.i.i.i.us.us.1129, 32
  %65 = ashr exact i64 %sext.i.i.us.us.1134, 32
  br label %for.body.i.i.us.us.1141

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %pregion_for_entry.entry.i.i.us.us
  %indvars.iv.next.i.i2.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us ]
  %66 = phi float [ %72, %for.body.i.i.us.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us ]
  %67 = add nsw i64 %indvars.iv.next.i.i2.us.us, %62
  %arrayidx20.i.i.us.us = getelementptr inbounds float, float* %17, i64 %67
  %68 = load float, float* %arrayidx20.i.i.us.us, align 4, !tbaa !12
  %69 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us, %30
  %70 = add nsw i64 %69, %63
  %arrayidx24.i.i.us.us = getelementptr inbounds float, float* %21, i64 %70
  %71 = load float, float* %arrayidx24.i.i.us.us, align 4, !tbaa !12
  %72 = tail call float @llvm.fmuladd.f32(float %68, float %71, float %66) #2
  store float %72, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i2.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %30
  br i1 %exitcond.not.i.i.us.us, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us:               ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1142
  %73 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %73, 1
  %reass.add.i.i.us.1 = add i32 %mul3.i.i, %conv2.i.i.us.1
  %reass.mul.i.i.us.1 = mul i32 %reass.add.i.i.us.1, %13
  %74 = sext i32 %reass.mul.i.i.us.1 to i64
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader
  %_local_id_y.i.0 = phi i64 [ %75, %pregion_for_entry.pregion_for_init.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %reass.add.i.i = add i32 %mul3.i.i, %conv2.i.i
  %reass.mul.i.i = mul i32 %reass.add.i.i, %13
  %add5.i.i = add nsw i32 %reass.mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add5.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %25, i64 %idxprom.i.i
  store float 0.000000e+00, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.1 = add nsw i32 %reass.mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add5.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.1
  store float 0.000000e+00, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.2 = add nsw i32 %reass.mul.i.i, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add5.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.2
  store float 0.000000e+00, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.3 = add nsw i32 %reass.mul.i.i, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add5.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.3
  store float 0.000000e+00, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.4 = add nsw i32 %reass.mul.i.i, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add5.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.4
  store float 0.000000e+00, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.5 = add nsw i32 %reass.mul.i.i, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add5.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.5
  store float 0.000000e+00, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.6 = add nsw i32 %reass.mul.i.i, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add5.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.6
  store float 0.000000e+00, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.7 = add nsw i32 %reass.mul.i.i, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add5.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.7
  store float 0.000000e+00, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.8 = add nsw i32 %reass.mul.i.i, %conv.i.i.8
  %idxprom.i.i.8 = sext i32 %add5.i.i.8 to i64
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.8
  store float 0.000000e+00, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.9 = add nsw i32 %reass.mul.i.i, %conv.i.i.9
  %idxprom.i.i.9 = sext i32 %add5.i.i.9 to i64
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.9
  store float 0.000000e+00, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.10 = add nsw i32 %reass.mul.i.i, %conv.i.i.10
  %idxprom.i.i.10 = sext i32 %add5.i.i.10 to i64
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.10
  store float 0.000000e+00, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.11 = add nsw i32 %reass.mul.i.i, %conv.i.i.11
  %idxprom.i.i.11 = sext i32 %add5.i.i.11 to i64
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.11
  store float 0.000000e+00, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.12 = add nsw i32 %reass.mul.i.i, %conv.i.i.12
  %idxprom.i.i.12 = sext i32 %add5.i.i.12 to i64
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.12
  store float 0.000000e+00, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.13 = add nsw i32 %reass.mul.i.i, %conv.i.i.13
  %idxprom.i.i.13 = sext i32 %add5.i.i.13 to i64
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.13
  store float 0.000000e+00, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.14 = add nsw i32 %reass.mul.i.i, %conv.i.i.14
  %idxprom.i.i.14 = sext i32 %add5.i.i.14 to i64
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.14
  store float 0.000000e+00, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.15 = add nsw i32 %reass.mul.i.i, %conv.i.i.15
  %idxprom.i.i.15 = sext i32 %add5.i.i.15 to i64
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.15
  store float 0.000000e+00, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.16 = add nsw i32 %reass.mul.i.i, %conv.i.i.16
  %idxprom.i.i.16 = sext i32 %add5.i.i.16 to i64
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.16
  store float 0.000000e+00, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.17 = add nsw i32 %reass.mul.i.i, %conv.i.i.17
  %idxprom.i.i.17 = sext i32 %add5.i.i.17 to i64
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.17
  store float 0.000000e+00, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.18 = add nsw i32 %reass.mul.i.i, %conv.i.i.18
  %idxprom.i.i.18 = sext i32 %add5.i.i.18 to i64
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.18
  store float 0.000000e+00, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.19 = add nsw i32 %reass.mul.i.i, %conv.i.i.19
  %idxprom.i.i.19 = sext i32 %add5.i.i.19 to i64
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.19
  store float 0.000000e+00, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.20 = add nsw i32 %reass.mul.i.i, %conv.i.i.20
  %idxprom.i.i.20 = sext i32 %add5.i.i.20 to i64
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.20
  store float 0.000000e+00, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.21 = add nsw i32 %reass.mul.i.i, %conv.i.i.21
  %idxprom.i.i.21 = sext i32 %add5.i.i.21 to i64
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.21
  store float 0.000000e+00, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.22 = add nsw i32 %reass.mul.i.i, %conv.i.i.22
  %idxprom.i.i.22 = sext i32 %add5.i.i.22 to i64
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.22
  store float 0.000000e+00, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.23 = add nsw i32 %reass.mul.i.i, %conv.i.i.23
  %idxprom.i.i.23 = sext i32 %add5.i.i.23 to i64
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.23
  store float 0.000000e+00, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.24 = add nsw i32 %reass.mul.i.i, %conv.i.i.24
  %idxprom.i.i.24 = sext i32 %add5.i.i.24 to i64
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.24
  store float 0.000000e+00, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.25 = add nsw i32 %reass.mul.i.i, %conv.i.i.25
  %idxprom.i.i.25 = sext i32 %add5.i.i.25 to i64
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.25
  store float 0.000000e+00, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.26 = add nsw i32 %reass.mul.i.i, %conv.i.i.26
  %idxprom.i.i.26 = sext i32 %add5.i.i.26 to i64
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.26
  store float 0.000000e+00, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.27 = add nsw i32 %reass.mul.i.i, %conv.i.i.27
  %idxprom.i.i.27 = sext i32 %add5.i.i.27 to i64
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.27
  store float 0.000000e+00, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.28 = add nsw i32 %reass.mul.i.i, %conv.i.i.28
  %idxprom.i.i.28 = sext i32 %add5.i.i.28 to i64
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.28
  store float 0.000000e+00, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.29 = add nsw i32 %reass.mul.i.i, %conv.i.i.29
  %idxprom.i.i.29 = sext i32 %add5.i.i.29 to i64
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.29
  store float 0.000000e+00, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.30 = add nsw i32 %reass.mul.i.i, %conv.i.i.30
  %idxprom.i.i.30 = sext i32 %add5.i.i.30 to i64
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.30
  store float 0.000000e+00, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.31 = add nsw i32 %reass.mul.i.i, %conv.i.i.31
  %idxprom.i.i.31 = sext i32 %add5.i.i.31 to i64
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.31
  store float 0.000000e+00, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %75 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond29.not = icmp eq i64 %75, 8
  br i1 %exitcond29.not, label %_pocl_kernel_doitgen_kernel1.exit.loopexit143, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !26

_pocl_kernel_doitgen_kernel1.exit.loopexit:       ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.7.1
  br label %_pocl_kernel_doitgen_kernel1.exit

_pocl_kernel_doitgen_kernel1.exit.loopexit143:    ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %_pocl_kernel_doitgen_kernel1.exit

_pocl_kernel_doitgen_kernel1.exit:                ; preds = %_pocl_kernel_doitgen_kernel1.exit.loopexit143, %_pocl_kernel_doitgen_kernel1.exit.loopexit
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1.1, %pregion_for_end.i.i.us-lcssa.us.us
  %_local_id_x.i.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us ], [ %213, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1.1 ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %add5.i.i.us.us.1 = add nsw i32 %reass.mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add5.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %76 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1
  %indvars.iv.next.i.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1 ]
  %77 = phi float [ %83, %for.body.i.i.us.us.1 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.1 ]
  %78 = add nsw i64 %indvars.iv.next.i.i2.us.us.1, %74
  %arrayidx20.i.i.us.us.1 = getelementptr inbounds float, float* %17, i64 %78
  %79 = load float, float* %arrayidx20.i.i.us.us.1, align 4, !tbaa !12
  %80 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.1, %30
  %81 = add nsw i64 %80, %76
  %arrayidx24.i.i.us.us.1 = getelementptr inbounds float, float* %21, i64 %81
  %82 = load float, float* %arrayidx24.i.i.us.us.1, align 4, !tbaa !12
  %83 = tail call float @llvm.fmuladd.f32(float %79, float %82, float %77) #2
  store float %83, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %30
  br i1 %exitcond.not.i.i.us.us.1, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1, label %for.body.i.i.us.us.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.1:     ; preds = %for.body.i.i.us.us.1
  %84 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %84, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %add5.i.i.us.us.1.1 = add nsw i32 %reass.mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add5.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1.1 = shl i64 %add1.i.i.i.us.us.1.1, 32
  %85 = ashr exact i64 %sext.i.i.us.us.1.1, 32
  br label %for.body.i.i.us.us.1.1

pregion_for_end.i.i.us-lcssa.us.us.1:             ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1.1
  %86 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %86, 2
  %reass.add.i.i.us.2 = add i32 %mul3.i.i, %conv2.i.i.us.2
  %reass.mul.i.i.us.2 = mul i32 %reass.add.i.i.us.2, %13
  %87 = sext i32 %reass.mul.i.i.us.2 to i64
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.2.1, %pregion_for_end.i.i.us-lcssa.us.us.1
  %_local_id_x.i.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.1 ], [ %205, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.2.1 ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %add5.i.i.us.us.2 = add nsw i32 %reass.mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add5.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %88 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2
  %indvars.iv.next.i.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2 ]
  %89 = phi float [ %95, %for.body.i.i.us.us.2 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.2 ]
  %90 = add nsw i64 %indvars.iv.next.i.i2.us.us.2, %87
  %arrayidx20.i.i.us.us.2 = getelementptr inbounds float, float* %17, i64 %90
  %91 = load float, float* %arrayidx20.i.i.us.us.2, align 4, !tbaa !12
  %92 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.2, %30
  %93 = add nsw i64 %92, %88
  %arrayidx24.i.i.us.us.2 = getelementptr inbounds float, float* %21, i64 %93
  %94 = load float, float* %arrayidx24.i.i.us.us.2, align 4, !tbaa !12
  %95 = tail call float @llvm.fmuladd.f32(float %91, float %94, float %89) #2
  store float %95, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %30
  br i1 %exitcond.not.i.i.us.us.2, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.2, label %for.body.i.i.us.us.2, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.2:     ; preds = %for.body.i.i.us.us.2
  %96 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %96, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %add5.i.i.us.us.2.1 = add nsw i32 %reass.mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add5.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2.1 = shl i64 %add1.i.i.i.us.us.2.1, 32
  %97 = ashr exact i64 %sext.i.i.us.us.2.1, 32
  br label %for.body.i.i.us.us.2.1

pregion_for_end.i.i.us-lcssa.us.us.2:             ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.2.1
  %98 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %98, 3
  %reass.add.i.i.us.3 = add i32 %mul3.i.i, %conv2.i.i.us.3
  %reass.mul.i.i.us.3 = mul i32 %reass.add.i.i.us.3, %13
  %99 = sext i32 %reass.mul.i.i.us.3 to i64
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.3.1, %pregion_for_end.i.i.us-lcssa.us.us.2
  %_local_id_x.i.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.2 ], [ %197, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.3.1 ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %add5.i.i.us.us.3 = add nsw i32 %reass.mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add5.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %100 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3
  %indvars.iv.next.i.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3 ]
  %101 = phi float [ %107, %for.body.i.i.us.us.3 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.3 ]
  %102 = add nsw i64 %indvars.iv.next.i.i2.us.us.3, %99
  %arrayidx20.i.i.us.us.3 = getelementptr inbounds float, float* %17, i64 %102
  %103 = load float, float* %arrayidx20.i.i.us.us.3, align 4, !tbaa !12
  %104 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.3, %30
  %105 = add nsw i64 %104, %100
  %arrayidx24.i.i.us.us.3 = getelementptr inbounds float, float* %21, i64 %105
  %106 = load float, float* %arrayidx24.i.i.us.us.3, align 4, !tbaa !12
  %107 = tail call float @llvm.fmuladd.f32(float %103, float %106, float %101) #2
  store float %107, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %30
  br i1 %exitcond.not.i.i.us.us.3, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.3, label %for.body.i.i.us.us.3, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.3:     ; preds = %for.body.i.i.us.us.3
  %108 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %108, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %add5.i.i.us.us.3.1 = add nsw i32 %reass.mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add5.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3.1 = shl i64 %add1.i.i.i.us.us.3.1, 32
  %109 = ashr exact i64 %sext.i.i.us.us.3.1, 32
  br label %for.body.i.i.us.us.3.1

pregion_for_end.i.i.us-lcssa.us.us.3:             ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.3.1
  %110 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %110, 4
  %reass.add.i.i.us.4 = add i32 %mul3.i.i, %conv2.i.i.us.4
  %reass.mul.i.i.us.4 = mul i32 %reass.add.i.i.us.4, %13
  %111 = sext i32 %reass.mul.i.i.us.4 to i64
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.4.1, %pregion_for_end.i.i.us-lcssa.us.us.3
  %_local_id_x.i.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.3 ], [ %189, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.4.1 ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %add5.i.i.us.us.4 = add nsw i32 %reass.mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add5.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %112 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4
  %indvars.iv.next.i.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4 ]
  %113 = phi float [ %119, %for.body.i.i.us.us.4 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.4 ]
  %114 = add nsw i64 %indvars.iv.next.i.i2.us.us.4, %111
  %arrayidx20.i.i.us.us.4 = getelementptr inbounds float, float* %17, i64 %114
  %115 = load float, float* %arrayidx20.i.i.us.us.4, align 4, !tbaa !12
  %116 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.4, %30
  %117 = add nsw i64 %116, %112
  %arrayidx24.i.i.us.us.4 = getelementptr inbounds float, float* %21, i64 %117
  %118 = load float, float* %arrayidx24.i.i.us.us.4, align 4, !tbaa !12
  %119 = tail call float @llvm.fmuladd.f32(float %115, float %118, float %113) #2
  store float %119, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %30
  br i1 %exitcond.not.i.i.us.us.4, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.4, label %for.body.i.i.us.us.4, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.4:     ; preds = %for.body.i.i.us.us.4
  %120 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %120, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %add5.i.i.us.us.4.1 = add nsw i32 %reass.mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add5.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4.1 = shl i64 %add1.i.i.i.us.us.4.1, 32
  %121 = ashr exact i64 %sext.i.i.us.us.4.1, 32
  br label %for.body.i.i.us.us.4.1

pregion_for_end.i.i.us-lcssa.us.us.4:             ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.4.1
  %122 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %122, 5
  %reass.add.i.i.us.5 = add i32 %mul3.i.i, %conv2.i.i.us.5
  %reass.mul.i.i.us.5 = mul i32 %reass.add.i.i.us.5, %13
  %123 = sext i32 %reass.mul.i.i.us.5 to i64
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.5.1, %pregion_for_end.i.i.us-lcssa.us.us.4
  %_local_id_x.i.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.4 ], [ %181, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.5.1 ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %add5.i.i.us.us.5 = add nsw i32 %reass.mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add5.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %124 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5
  %indvars.iv.next.i.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5 ]
  %125 = phi float [ %131, %for.body.i.i.us.us.5 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.5 ]
  %126 = add nsw i64 %indvars.iv.next.i.i2.us.us.5, %123
  %arrayidx20.i.i.us.us.5 = getelementptr inbounds float, float* %17, i64 %126
  %127 = load float, float* %arrayidx20.i.i.us.us.5, align 4, !tbaa !12
  %128 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.5, %30
  %129 = add nsw i64 %128, %124
  %arrayidx24.i.i.us.us.5 = getelementptr inbounds float, float* %21, i64 %129
  %130 = load float, float* %arrayidx24.i.i.us.us.5, align 4, !tbaa !12
  %131 = tail call float @llvm.fmuladd.f32(float %127, float %130, float %125) #2
  store float %131, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %30
  br i1 %exitcond.not.i.i.us.us.5, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.5, label %for.body.i.i.us.us.5, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.5:     ; preds = %for.body.i.i.us.us.5
  %132 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %132, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %add5.i.i.us.us.5.1 = add nsw i32 %reass.mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add5.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5.1 = shl i64 %add1.i.i.i.us.us.5.1, 32
  %133 = ashr exact i64 %sext.i.i.us.us.5.1, 32
  br label %for.body.i.i.us.us.5.1

pregion_for_end.i.i.us-lcssa.us.us.5:             ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.5.1
  %134 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %134, 6
  %reass.add.i.i.us.6 = add i32 %mul3.i.i, %conv2.i.i.us.6
  %reass.mul.i.i.us.6 = mul i32 %reass.add.i.i.us.6, %13
  %135 = sext i32 %reass.mul.i.i.us.6 to i64
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.6.1, %pregion_for_end.i.i.us-lcssa.us.us.5
  %_local_id_x.i.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.5 ], [ %173, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.6.1 ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %add5.i.i.us.us.6 = add nsw i32 %reass.mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add5.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %136 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6
  %indvars.iv.next.i.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6 ]
  %137 = phi float [ %143, %for.body.i.i.us.us.6 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.6 ]
  %138 = add nsw i64 %indvars.iv.next.i.i2.us.us.6, %135
  %arrayidx20.i.i.us.us.6 = getelementptr inbounds float, float* %17, i64 %138
  %139 = load float, float* %arrayidx20.i.i.us.us.6, align 4, !tbaa !12
  %140 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.6, %30
  %141 = add nsw i64 %140, %136
  %arrayidx24.i.i.us.us.6 = getelementptr inbounds float, float* %21, i64 %141
  %142 = load float, float* %arrayidx24.i.i.us.us.6, align 4, !tbaa !12
  %143 = tail call float @llvm.fmuladd.f32(float %139, float %142, float %137) #2
  store float %143, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %30
  br i1 %exitcond.not.i.i.us.us.6, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.6, label %for.body.i.i.us.us.6, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.6:     ; preds = %for.body.i.i.us.us.6
  %144 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %144, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %add5.i.i.us.us.6.1 = add nsw i32 %reass.mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add5.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6.1 = shl i64 %add1.i.i.i.us.us.6.1, 32
  %145 = ashr exact i64 %sext.i.i.us.us.6.1, 32
  br label %for.body.i.i.us.us.6.1

pregion_for_end.i.i.us-lcssa.us.us.6:             ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.6.1
  %146 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %146, 7
  %reass.add.i.i.us.7 = add i32 %mul3.i.i, %conv2.i.i.us.7
  %reass.mul.i.i.us.7 = mul i32 %reass.add.i.i.us.7, %13
  %147 = sext i32 %reass.mul.i.i.us.7 to i64
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.7.1, %pregion_for_end.i.i.us-lcssa.us.us.6
  %_local_id_x.i.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.6 ], [ %165, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.7.1 ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %add5.i.i.us.us.7 = add nsw i32 %reass.mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add5.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %148 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7
  %indvars.iv.next.i.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7 ]
  %149 = phi float [ %155, %for.body.i.i.us.us.7 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.7 ]
  %150 = add nsw i64 %indvars.iv.next.i.i2.us.us.7, %147
  %arrayidx20.i.i.us.us.7 = getelementptr inbounds float, float* %17, i64 %150
  %151 = load float, float* %arrayidx20.i.i.us.us.7, align 4, !tbaa !12
  %152 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.7, %30
  %153 = add nsw i64 %152, %148
  %arrayidx24.i.i.us.us.7 = getelementptr inbounds float, float* %21, i64 %153
  %154 = load float, float* %arrayidx24.i.i.us.us.7, align 4, !tbaa !12
  %155 = tail call float @llvm.fmuladd.f32(float %151, float %154, float %149) #2
  store float %155, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %30
  br i1 %exitcond.not.i.i.us.us.7, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.7, label %for.body.i.i.us.us.7, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.7:     ; preds = %for.body.i.i.us.us.7
  %156 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %156, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %add5.i.i.us.us.7.1 = add nsw i32 %reass.mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add5.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7.1 = shl i64 %add1.i.i.i.us.us.7.1, 32
  %157 = ashr exact i64 %sext.i.i.us.us.7.1, 32
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.7
  %indvars.iv.next.i.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.7 ]
  %158 = phi float [ %164, %for.body.i.i.us.us.7.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.7 ]
  %159 = add nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %147
  %arrayidx20.i.i.us.us.7.1 = getelementptr inbounds float, float* %17, i64 %159
  %160 = load float, float* %arrayidx20.i.i.us.us.7.1, align 4, !tbaa !12
  %161 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %30
  %162 = add nsw i64 %161, %157
  %arrayidx24.i.i.us.us.7.1 = getelementptr inbounds float, float* %21, i64 %162
  %163 = load float, float* %arrayidx24.i.i.us.us.7.1, align 4, !tbaa !12
  %164 = tail call float @llvm.fmuladd.f32(float %160, float %163, float %158) #2
  store float %164, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %30
  br i1 %exitcond.not.i.i.us.us.7.1, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.7.1, label %for.body.i.i.us.us.7.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.7.1:   ; preds = %for.body.i.i.us.us.7.1
  %165 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %165, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_doitgen_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !24

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.6
  %indvars.iv.next.i.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.6 ]
  %166 = phi float [ %172, %for.body.i.i.us.us.6.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.6 ]
  %167 = add nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %135
  %arrayidx20.i.i.us.us.6.1 = getelementptr inbounds float, float* %17, i64 %167
  %168 = load float, float* %arrayidx20.i.i.us.us.6.1, align 4, !tbaa !12
  %169 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %30
  %170 = add nsw i64 %169, %145
  %arrayidx24.i.i.us.us.6.1 = getelementptr inbounds float, float* %21, i64 %170
  %171 = load float, float* %arrayidx24.i.i.us.us.6.1, align 4, !tbaa !12
  %172 = tail call float @llvm.fmuladd.f32(float %168, float %171, float %166) #2
  store float %172, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %30
  br i1 %exitcond.not.i.i.us.us.6.1, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.6.1, label %for.body.i.i.us.us.6.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.6.1:   ; preds = %for.body.i.i.us.us.6.1
  %173 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %173, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !24

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.5
  %indvars.iv.next.i.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.5 ]
  %174 = phi float [ %180, %for.body.i.i.us.us.5.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.5 ]
  %175 = add nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %123
  %arrayidx20.i.i.us.us.5.1 = getelementptr inbounds float, float* %17, i64 %175
  %176 = load float, float* %arrayidx20.i.i.us.us.5.1, align 4, !tbaa !12
  %177 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %30
  %178 = add nsw i64 %177, %133
  %arrayidx24.i.i.us.us.5.1 = getelementptr inbounds float, float* %21, i64 %178
  %179 = load float, float* %arrayidx24.i.i.us.us.5.1, align 4, !tbaa !12
  %180 = tail call float @llvm.fmuladd.f32(float %176, float %179, float %174) #2
  store float %180, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %30
  br i1 %exitcond.not.i.i.us.us.5.1, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.5.1, label %for.body.i.i.us.us.5.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.5.1:   ; preds = %for.body.i.i.us.us.5.1
  %181 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %181, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !24

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.4
  %indvars.iv.next.i.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.4 ]
  %182 = phi float [ %188, %for.body.i.i.us.us.4.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.4 ]
  %183 = add nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %111
  %arrayidx20.i.i.us.us.4.1 = getelementptr inbounds float, float* %17, i64 %183
  %184 = load float, float* %arrayidx20.i.i.us.us.4.1, align 4, !tbaa !12
  %185 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %30
  %186 = add nsw i64 %185, %121
  %arrayidx24.i.i.us.us.4.1 = getelementptr inbounds float, float* %21, i64 %186
  %187 = load float, float* %arrayidx24.i.i.us.us.4.1, align 4, !tbaa !12
  %188 = tail call float @llvm.fmuladd.f32(float %184, float %187, float %182) #2
  store float %188, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %30
  br i1 %exitcond.not.i.i.us.us.4.1, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.4.1, label %for.body.i.i.us.us.4.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.4.1:   ; preds = %for.body.i.i.us.us.4.1
  %189 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %189, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !24

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.3
  %indvars.iv.next.i.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.3 ]
  %190 = phi float [ %196, %for.body.i.i.us.us.3.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.3 ]
  %191 = add nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %99
  %arrayidx20.i.i.us.us.3.1 = getelementptr inbounds float, float* %17, i64 %191
  %192 = load float, float* %arrayidx20.i.i.us.us.3.1, align 4, !tbaa !12
  %193 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %30
  %194 = add nsw i64 %193, %109
  %arrayidx24.i.i.us.us.3.1 = getelementptr inbounds float, float* %21, i64 %194
  %195 = load float, float* %arrayidx24.i.i.us.us.3.1, align 4, !tbaa !12
  %196 = tail call float @llvm.fmuladd.f32(float %192, float %195, float %190) #2
  store float %196, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %30
  br i1 %exitcond.not.i.i.us.us.3.1, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.3.1, label %for.body.i.i.us.us.3.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.3.1:   ; preds = %for.body.i.i.us.us.3.1
  %197 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %197, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !24

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.2
  %indvars.iv.next.i.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.2 ]
  %198 = phi float [ %204, %for.body.i.i.us.us.2.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.2 ]
  %199 = add nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %87
  %arrayidx20.i.i.us.us.2.1 = getelementptr inbounds float, float* %17, i64 %199
  %200 = load float, float* %arrayidx20.i.i.us.us.2.1, align 4, !tbaa !12
  %201 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %30
  %202 = add nsw i64 %201, %97
  %arrayidx24.i.i.us.us.2.1 = getelementptr inbounds float, float* %21, i64 %202
  %203 = load float, float* %arrayidx24.i.i.us.us.2.1, align 4, !tbaa !12
  %204 = tail call float @llvm.fmuladd.f32(float %200, float %203, float %198) #2
  store float %204, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %30
  br i1 %exitcond.not.i.i.us.us.2.1, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.2.1, label %for.body.i.i.us.us.2.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.2.1:   ; preds = %for.body.i.i.us.us.2.1
  %205 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %205, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !24

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1
  %indvars.iv.next.i.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1 ]
  %206 = phi float [ %212, %for.body.i.i.us.us.1.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1 ]
  %207 = add nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %74
  %arrayidx20.i.i.us.us.1.1 = getelementptr inbounds float, float* %17, i64 %207
  %208 = load float, float* %arrayidx20.i.i.us.us.1.1, align 4, !tbaa !12
  %209 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %30
  %210 = add nsw i64 %209, %85
  %arrayidx24.i.i.us.us.1.1 = getelementptr inbounds float, float* %21, i64 %210
  %211 = load float, float* %arrayidx24.i.i.us.us.1.1, align 4, !tbaa !12
  %212 = tail call float @llvm.fmuladd.f32(float %208, float %211, float %206) #2
  store float %212, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %30
  br i1 %exitcond.not.i.i.us.us.1.1, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1.1, label %for.body.i.i.us.us.1.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.1.1:   ; preds = %for.body.i.i.us.us.1.1
  %213 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %213, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !24

for.body.i.i.us.us.1141:                          ; preds = %for.body.i.i.us.us.1141, %for.cond.cleanup.r_exit.i.i.loopexit.us.us
  %indvars.iv.next.i.i2.us.us.1136 = phi i64 [ %indvars.iv.next.i.i.us.us.1139, %for.body.i.i.us.us.1141 ], [ 0, %for.cond.cleanup.r_exit.i.i.loopexit.us.us ]
  %214 = phi float [ %220, %for.body.i.i.us.us.1141 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.i.loopexit.us.us ]
  %215 = add nsw i64 %indvars.iv.next.i.i2.us.us.1136, %62
  %arrayidx20.i.i.us.us.1137 = getelementptr inbounds float, float* %17, i64 %215
  %216 = load float, float* %arrayidx20.i.i.us.us.1137, align 4, !tbaa !12
  %217 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.1136, %30
  %218 = add nsw i64 %217, %65
  %arrayidx24.i.i.us.us.1138 = getelementptr inbounds float, float* %21, i64 %218
  %219 = load float, float* %arrayidx24.i.i.us.us.1138, align 4, !tbaa !12
  %220 = tail call float @llvm.fmuladd.f32(float %216, float %219, float %214) #2
  store float %220, float* %arrayidx.i.i.us.us.1133, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1139 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1136, 1
  %exitcond.not.i.i.us.us.1140 = icmp eq i64 %indvars.iv.next.i.i.us.us.1139, %30
  br i1 %exitcond.not.i.i.us.us.1140, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1142, label %for.body.i.i.us.us.1141, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.1142:  ; preds = %for.body.i.i.us.us.1141
  %221 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %221, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !24
}

; Function Attrs: nounwind
define void @_pocl_kernel_doitgen_kernel1_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = getelementptr i8*, i8** %0, i64 1
  %7 = bitcast i8** %6 to i32**
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr i8*, i8** %0, i64 2
  %11 = bitcast i8** %10 to i32**
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr i8*, i8** %0, i64 3
  %15 = bitcast i8** %14 to float**
  %16 = load float*, float** %15, align 8
  %17 = getelementptr i8*, i8** %0, i64 4
  %18 = bitcast i8** %17 to float**
  %19 = load float*, float** %18, align 8
  %20 = getelementptr i8*, i8** %0, i64 5
  %21 = bitcast i8** %20 to float**
  %22 = load float*, float** %21, align 8
  %23 = getelementptr i8*, i8** %0, i64 6
  %24 = bitcast i8** %23 to i32**
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %25, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %mul3.i.i = mul i32 %26, %9
  %cmp62.i.i = icmp sgt i32 %13, 0
  %27 = zext i32 %13 to i64
  br i1 %cmp62.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  %conv.i.i = trunc i64 %mul.i.i.i to i32
  %28 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.1 = or i32 %28, 1
  %29 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.2 = or i32 %29, 2
  %30 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.3 = or i32 %30, 3
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.4 = or i32 %31, 4
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.5 = or i32 %32, 5
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.6 = or i32 %33, 6
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.7 = or i32 %34, 7
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.8 = or i32 %35, 8
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.9 = or i32 %36, 9
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.10 = or i32 %37, 10
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.11 = or i32 %38, 11
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.12 = or i32 %39, 12
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.13 = or i32 %40, 13
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.14 = or i32 %41, 14
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.15 = or i32 %42, 15
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.16 = or i32 %43, 16
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.17 = or i32 %44, 17
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.18 = or i32 %45, 18
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.19 = or i32 %46, 19
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.20 = or i32 %47, 20
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.21 = or i32 %48, 21
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.22 = or i32 %49, 22
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.23 = or i32 %50, 23
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.24 = or i32 %51, 24
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.25 = or i32 %52, 25
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.26 = or i32 %53, 26
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.27 = or i32 %54, 27
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.28 = or i32 %55, 28
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.29 = or i32 %56, 29
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.30 = or i32 %57, 30
  %58 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.31 = or i32 %58, 31
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %reass.add.i.i.us = add i32 %mul3.i.i, %conv2.i.i.us
  %reass.mul.i.i.us = mul i32 %reass.add.i.i.us, %13
  %59 = sext i32 %reass.mul.i.i.us to i64
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_entry.entry.i.i.us.us:                ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1142, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.i.us.preheader ], [ %218, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1142 ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %add5.i.i.us.us = add nsw i32 %reass.mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add5.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %60 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

for.cond.cleanup.r_exit.i.i.loopexit.us.us:       ; preds = %for.body.i.i.us.us
  %61 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.1129 = add nuw nsw i64 %61, %mul.i.i.i
  %conv.i.i.us.us.1130 = trunc i64 %add1.i.i.i.us.us.1129 to i32
  %add5.i.i.us.us.1131 = add nsw i32 %reass.mul.i.i.us, %conv.i.i.us.us.1130
  %idxprom.i.i.us.us.1132 = sext i32 %add5.i.i.us.us.1131 to i64
  %arrayidx.i.i.us.us.1133 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.1132
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1133, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1134 = shl i64 %add1.i.i.i.us.us.1129, 32
  %62 = ashr exact i64 %sext.i.i.us.us.1134, 32
  br label %for.body.i.i.us.us.1141

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %pregion_for_entry.entry.i.i.us.us
  %indvars.iv.next.i.i2.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us ]
  %63 = phi float [ %69, %for.body.i.i.us.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us ]
  %64 = add nsw i64 %indvars.iv.next.i.i2.us.us, %59
  %arrayidx20.i.i.us.us = getelementptr inbounds float, float* %16, i64 %64
  %65 = load float, float* %arrayidx20.i.i.us.us, align 4, !tbaa !12
  %66 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us, %27
  %67 = add nsw i64 %66, %60
  %arrayidx24.i.i.us.us = getelementptr inbounds float, float* %19, i64 %67
  %68 = load float, float* %arrayidx24.i.i.us.us, align 4, !tbaa !12
  %69 = tail call float @llvm.fmuladd.f32(float %65, float %68, float %63) #2
  store float %69, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i2.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %27
  br i1 %exitcond.not.i.i.us.us, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us:               ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1142
  %70 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %70, 1
  %reass.add.i.i.us.1 = add i32 %mul3.i.i, %conv2.i.i.us.1
  %reass.mul.i.i.us.1 = mul i32 %reass.add.i.i.us.1, %13
  %71 = sext i32 %reass.mul.i.i.us.1 to i64
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader
  %_local_id_y.i.0 = phi i64 [ %72, %pregion_for_entry.pregion_for_init.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %reass.add.i.i = add i32 %mul3.i.i, %conv2.i.i
  %reass.mul.i.i = mul i32 %reass.add.i.i, %13
  %add5.i.i = add nsw i32 %reass.mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add5.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %22, i64 %idxprom.i.i
  store float 0.000000e+00, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.1 = add nsw i32 %reass.mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add5.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.1
  store float 0.000000e+00, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.2 = add nsw i32 %reass.mul.i.i, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add5.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.2
  store float 0.000000e+00, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.3 = add nsw i32 %reass.mul.i.i, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add5.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.3
  store float 0.000000e+00, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.4 = add nsw i32 %reass.mul.i.i, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add5.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.4
  store float 0.000000e+00, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.5 = add nsw i32 %reass.mul.i.i, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add5.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.5
  store float 0.000000e+00, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.6 = add nsw i32 %reass.mul.i.i, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add5.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.6
  store float 0.000000e+00, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.7 = add nsw i32 %reass.mul.i.i, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add5.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.7
  store float 0.000000e+00, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.8 = add nsw i32 %reass.mul.i.i, %conv.i.i.8
  %idxprom.i.i.8 = sext i32 %add5.i.i.8 to i64
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.8
  store float 0.000000e+00, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.9 = add nsw i32 %reass.mul.i.i, %conv.i.i.9
  %idxprom.i.i.9 = sext i32 %add5.i.i.9 to i64
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.9
  store float 0.000000e+00, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.10 = add nsw i32 %reass.mul.i.i, %conv.i.i.10
  %idxprom.i.i.10 = sext i32 %add5.i.i.10 to i64
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.10
  store float 0.000000e+00, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.11 = add nsw i32 %reass.mul.i.i, %conv.i.i.11
  %idxprom.i.i.11 = sext i32 %add5.i.i.11 to i64
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.11
  store float 0.000000e+00, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.12 = add nsw i32 %reass.mul.i.i, %conv.i.i.12
  %idxprom.i.i.12 = sext i32 %add5.i.i.12 to i64
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.12
  store float 0.000000e+00, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.13 = add nsw i32 %reass.mul.i.i, %conv.i.i.13
  %idxprom.i.i.13 = sext i32 %add5.i.i.13 to i64
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.13
  store float 0.000000e+00, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.14 = add nsw i32 %reass.mul.i.i, %conv.i.i.14
  %idxprom.i.i.14 = sext i32 %add5.i.i.14 to i64
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.14
  store float 0.000000e+00, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.15 = add nsw i32 %reass.mul.i.i, %conv.i.i.15
  %idxprom.i.i.15 = sext i32 %add5.i.i.15 to i64
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.15
  store float 0.000000e+00, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.16 = add nsw i32 %reass.mul.i.i, %conv.i.i.16
  %idxprom.i.i.16 = sext i32 %add5.i.i.16 to i64
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.16
  store float 0.000000e+00, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.17 = add nsw i32 %reass.mul.i.i, %conv.i.i.17
  %idxprom.i.i.17 = sext i32 %add5.i.i.17 to i64
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.17
  store float 0.000000e+00, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.18 = add nsw i32 %reass.mul.i.i, %conv.i.i.18
  %idxprom.i.i.18 = sext i32 %add5.i.i.18 to i64
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.18
  store float 0.000000e+00, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.19 = add nsw i32 %reass.mul.i.i, %conv.i.i.19
  %idxprom.i.i.19 = sext i32 %add5.i.i.19 to i64
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.19
  store float 0.000000e+00, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.20 = add nsw i32 %reass.mul.i.i, %conv.i.i.20
  %idxprom.i.i.20 = sext i32 %add5.i.i.20 to i64
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.20
  store float 0.000000e+00, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.21 = add nsw i32 %reass.mul.i.i, %conv.i.i.21
  %idxprom.i.i.21 = sext i32 %add5.i.i.21 to i64
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.21
  store float 0.000000e+00, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.22 = add nsw i32 %reass.mul.i.i, %conv.i.i.22
  %idxprom.i.i.22 = sext i32 %add5.i.i.22 to i64
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.22
  store float 0.000000e+00, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.23 = add nsw i32 %reass.mul.i.i, %conv.i.i.23
  %idxprom.i.i.23 = sext i32 %add5.i.i.23 to i64
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.23
  store float 0.000000e+00, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.24 = add nsw i32 %reass.mul.i.i, %conv.i.i.24
  %idxprom.i.i.24 = sext i32 %add5.i.i.24 to i64
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.24
  store float 0.000000e+00, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.25 = add nsw i32 %reass.mul.i.i, %conv.i.i.25
  %idxprom.i.i.25 = sext i32 %add5.i.i.25 to i64
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.25
  store float 0.000000e+00, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.26 = add nsw i32 %reass.mul.i.i, %conv.i.i.26
  %idxprom.i.i.26 = sext i32 %add5.i.i.26 to i64
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.26
  store float 0.000000e+00, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.27 = add nsw i32 %reass.mul.i.i, %conv.i.i.27
  %idxprom.i.i.27 = sext i32 %add5.i.i.27 to i64
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.27
  store float 0.000000e+00, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.28 = add nsw i32 %reass.mul.i.i, %conv.i.i.28
  %idxprom.i.i.28 = sext i32 %add5.i.i.28 to i64
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.28
  store float 0.000000e+00, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.29 = add nsw i32 %reass.mul.i.i, %conv.i.i.29
  %idxprom.i.i.29 = sext i32 %add5.i.i.29 to i64
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.29
  store float 0.000000e+00, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.30 = add nsw i32 %reass.mul.i.i, %conv.i.i.30
  %idxprom.i.i.30 = sext i32 %add5.i.i.30 to i64
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.30
  store float 0.000000e+00, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.31 = add nsw i32 %reass.mul.i.i, %conv.i.i.31
  %idxprom.i.i.31 = sext i32 %add5.i.i.31 to i64
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.31
  store float 0.000000e+00, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %72 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond29.not = icmp eq i64 %72, 8
  br i1 %exitcond29.not, label %_pocl_kernel_doitgen_kernel1.exit.loopexit143, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !27

_pocl_kernel_doitgen_kernel1.exit.loopexit:       ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.7.1
  br label %_pocl_kernel_doitgen_kernel1.exit

_pocl_kernel_doitgen_kernel1.exit.loopexit143:    ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %_pocl_kernel_doitgen_kernel1.exit

_pocl_kernel_doitgen_kernel1.exit:                ; preds = %_pocl_kernel_doitgen_kernel1.exit.loopexit143, %_pocl_kernel_doitgen_kernel1.exit.loopexit
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1.1, %pregion_for_end.i.i.us-lcssa.us.us
  %_local_id_x.i.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us ], [ %210, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1.1 ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %add5.i.i.us.us.1 = add nsw i32 %reass.mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add5.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %73 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1
  %indvars.iv.next.i.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1 ]
  %74 = phi float [ %80, %for.body.i.i.us.us.1 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.1 ]
  %75 = add nsw i64 %indvars.iv.next.i.i2.us.us.1, %71
  %arrayidx20.i.i.us.us.1 = getelementptr inbounds float, float* %16, i64 %75
  %76 = load float, float* %arrayidx20.i.i.us.us.1, align 4, !tbaa !12
  %77 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.1, %27
  %78 = add nsw i64 %77, %73
  %arrayidx24.i.i.us.us.1 = getelementptr inbounds float, float* %19, i64 %78
  %79 = load float, float* %arrayidx24.i.i.us.us.1, align 4, !tbaa !12
  %80 = tail call float @llvm.fmuladd.f32(float %76, float %79, float %74) #2
  store float %80, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %27
  br i1 %exitcond.not.i.i.us.us.1, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1, label %for.body.i.i.us.us.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.1:     ; preds = %for.body.i.i.us.us.1
  %81 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %81, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %add5.i.i.us.us.1.1 = add nsw i32 %reass.mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add5.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1.1 = shl i64 %add1.i.i.i.us.us.1.1, 32
  %82 = ashr exact i64 %sext.i.i.us.us.1.1, 32
  br label %for.body.i.i.us.us.1.1

pregion_for_end.i.i.us-lcssa.us.us.1:             ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1.1
  %83 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %83, 2
  %reass.add.i.i.us.2 = add i32 %mul3.i.i, %conv2.i.i.us.2
  %reass.mul.i.i.us.2 = mul i32 %reass.add.i.i.us.2, %13
  %84 = sext i32 %reass.mul.i.i.us.2 to i64
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.2.1, %pregion_for_end.i.i.us-lcssa.us.us.1
  %_local_id_x.i.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.1 ], [ %202, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.2.1 ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %add5.i.i.us.us.2 = add nsw i32 %reass.mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add5.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %85 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2
  %indvars.iv.next.i.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2 ]
  %86 = phi float [ %92, %for.body.i.i.us.us.2 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.2 ]
  %87 = add nsw i64 %indvars.iv.next.i.i2.us.us.2, %84
  %arrayidx20.i.i.us.us.2 = getelementptr inbounds float, float* %16, i64 %87
  %88 = load float, float* %arrayidx20.i.i.us.us.2, align 4, !tbaa !12
  %89 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.2, %27
  %90 = add nsw i64 %89, %85
  %arrayidx24.i.i.us.us.2 = getelementptr inbounds float, float* %19, i64 %90
  %91 = load float, float* %arrayidx24.i.i.us.us.2, align 4, !tbaa !12
  %92 = tail call float @llvm.fmuladd.f32(float %88, float %91, float %86) #2
  store float %92, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %27
  br i1 %exitcond.not.i.i.us.us.2, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.2, label %for.body.i.i.us.us.2, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.2:     ; preds = %for.body.i.i.us.us.2
  %93 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %93, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %add5.i.i.us.us.2.1 = add nsw i32 %reass.mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add5.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2.1 = shl i64 %add1.i.i.i.us.us.2.1, 32
  %94 = ashr exact i64 %sext.i.i.us.us.2.1, 32
  br label %for.body.i.i.us.us.2.1

pregion_for_end.i.i.us-lcssa.us.us.2:             ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.2.1
  %95 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %95, 3
  %reass.add.i.i.us.3 = add i32 %mul3.i.i, %conv2.i.i.us.3
  %reass.mul.i.i.us.3 = mul i32 %reass.add.i.i.us.3, %13
  %96 = sext i32 %reass.mul.i.i.us.3 to i64
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.3.1, %pregion_for_end.i.i.us-lcssa.us.us.2
  %_local_id_x.i.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.2 ], [ %194, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.3.1 ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %add5.i.i.us.us.3 = add nsw i32 %reass.mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add5.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %97 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3
  %indvars.iv.next.i.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3 ]
  %98 = phi float [ %104, %for.body.i.i.us.us.3 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.3 ]
  %99 = add nsw i64 %indvars.iv.next.i.i2.us.us.3, %96
  %arrayidx20.i.i.us.us.3 = getelementptr inbounds float, float* %16, i64 %99
  %100 = load float, float* %arrayidx20.i.i.us.us.3, align 4, !tbaa !12
  %101 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.3, %27
  %102 = add nsw i64 %101, %97
  %arrayidx24.i.i.us.us.3 = getelementptr inbounds float, float* %19, i64 %102
  %103 = load float, float* %arrayidx24.i.i.us.us.3, align 4, !tbaa !12
  %104 = tail call float @llvm.fmuladd.f32(float %100, float %103, float %98) #2
  store float %104, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %27
  br i1 %exitcond.not.i.i.us.us.3, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.3, label %for.body.i.i.us.us.3, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.3:     ; preds = %for.body.i.i.us.us.3
  %105 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %105, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %add5.i.i.us.us.3.1 = add nsw i32 %reass.mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add5.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3.1 = shl i64 %add1.i.i.i.us.us.3.1, 32
  %106 = ashr exact i64 %sext.i.i.us.us.3.1, 32
  br label %for.body.i.i.us.us.3.1

pregion_for_end.i.i.us-lcssa.us.us.3:             ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.3.1
  %107 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %107, 4
  %reass.add.i.i.us.4 = add i32 %mul3.i.i, %conv2.i.i.us.4
  %reass.mul.i.i.us.4 = mul i32 %reass.add.i.i.us.4, %13
  %108 = sext i32 %reass.mul.i.i.us.4 to i64
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.4.1, %pregion_for_end.i.i.us-lcssa.us.us.3
  %_local_id_x.i.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.3 ], [ %186, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.4.1 ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %add5.i.i.us.us.4 = add nsw i32 %reass.mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add5.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %109 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4
  %indvars.iv.next.i.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4 ]
  %110 = phi float [ %116, %for.body.i.i.us.us.4 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.4 ]
  %111 = add nsw i64 %indvars.iv.next.i.i2.us.us.4, %108
  %arrayidx20.i.i.us.us.4 = getelementptr inbounds float, float* %16, i64 %111
  %112 = load float, float* %arrayidx20.i.i.us.us.4, align 4, !tbaa !12
  %113 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.4, %27
  %114 = add nsw i64 %113, %109
  %arrayidx24.i.i.us.us.4 = getelementptr inbounds float, float* %19, i64 %114
  %115 = load float, float* %arrayidx24.i.i.us.us.4, align 4, !tbaa !12
  %116 = tail call float @llvm.fmuladd.f32(float %112, float %115, float %110) #2
  store float %116, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %27
  br i1 %exitcond.not.i.i.us.us.4, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.4, label %for.body.i.i.us.us.4, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.4:     ; preds = %for.body.i.i.us.us.4
  %117 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %117, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %add5.i.i.us.us.4.1 = add nsw i32 %reass.mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add5.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4.1 = shl i64 %add1.i.i.i.us.us.4.1, 32
  %118 = ashr exact i64 %sext.i.i.us.us.4.1, 32
  br label %for.body.i.i.us.us.4.1

pregion_for_end.i.i.us-lcssa.us.us.4:             ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.4.1
  %119 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %119, 5
  %reass.add.i.i.us.5 = add i32 %mul3.i.i, %conv2.i.i.us.5
  %reass.mul.i.i.us.5 = mul i32 %reass.add.i.i.us.5, %13
  %120 = sext i32 %reass.mul.i.i.us.5 to i64
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.5.1, %pregion_for_end.i.i.us-lcssa.us.us.4
  %_local_id_x.i.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.4 ], [ %178, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.5.1 ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %add5.i.i.us.us.5 = add nsw i32 %reass.mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add5.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %121 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5
  %indvars.iv.next.i.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5 ]
  %122 = phi float [ %128, %for.body.i.i.us.us.5 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.5 ]
  %123 = add nsw i64 %indvars.iv.next.i.i2.us.us.5, %120
  %arrayidx20.i.i.us.us.5 = getelementptr inbounds float, float* %16, i64 %123
  %124 = load float, float* %arrayidx20.i.i.us.us.5, align 4, !tbaa !12
  %125 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.5, %27
  %126 = add nsw i64 %125, %121
  %arrayidx24.i.i.us.us.5 = getelementptr inbounds float, float* %19, i64 %126
  %127 = load float, float* %arrayidx24.i.i.us.us.5, align 4, !tbaa !12
  %128 = tail call float @llvm.fmuladd.f32(float %124, float %127, float %122) #2
  store float %128, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %27
  br i1 %exitcond.not.i.i.us.us.5, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.5, label %for.body.i.i.us.us.5, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.5:     ; preds = %for.body.i.i.us.us.5
  %129 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %129, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %add5.i.i.us.us.5.1 = add nsw i32 %reass.mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add5.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5.1 = shl i64 %add1.i.i.i.us.us.5.1, 32
  %130 = ashr exact i64 %sext.i.i.us.us.5.1, 32
  br label %for.body.i.i.us.us.5.1

pregion_for_end.i.i.us-lcssa.us.us.5:             ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.5.1
  %131 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %131, 6
  %reass.add.i.i.us.6 = add i32 %mul3.i.i, %conv2.i.i.us.6
  %reass.mul.i.i.us.6 = mul i32 %reass.add.i.i.us.6, %13
  %132 = sext i32 %reass.mul.i.i.us.6 to i64
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.6.1, %pregion_for_end.i.i.us-lcssa.us.us.5
  %_local_id_x.i.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.5 ], [ %170, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.6.1 ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %add5.i.i.us.us.6 = add nsw i32 %reass.mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add5.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %133 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6
  %indvars.iv.next.i.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6 ]
  %134 = phi float [ %140, %for.body.i.i.us.us.6 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.6 ]
  %135 = add nsw i64 %indvars.iv.next.i.i2.us.us.6, %132
  %arrayidx20.i.i.us.us.6 = getelementptr inbounds float, float* %16, i64 %135
  %136 = load float, float* %arrayidx20.i.i.us.us.6, align 4, !tbaa !12
  %137 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.6, %27
  %138 = add nsw i64 %137, %133
  %arrayidx24.i.i.us.us.6 = getelementptr inbounds float, float* %19, i64 %138
  %139 = load float, float* %arrayidx24.i.i.us.us.6, align 4, !tbaa !12
  %140 = tail call float @llvm.fmuladd.f32(float %136, float %139, float %134) #2
  store float %140, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %27
  br i1 %exitcond.not.i.i.us.us.6, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.6, label %for.body.i.i.us.us.6, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.6:     ; preds = %for.body.i.i.us.us.6
  %141 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %141, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %add5.i.i.us.us.6.1 = add nsw i32 %reass.mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add5.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6.1 = shl i64 %add1.i.i.i.us.us.6.1, 32
  %142 = ashr exact i64 %sext.i.i.us.us.6.1, 32
  br label %for.body.i.i.us.us.6.1

pregion_for_end.i.i.us-lcssa.us.us.6:             ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.6.1
  %143 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %143, 7
  %reass.add.i.i.us.7 = add i32 %mul3.i.i, %conv2.i.i.us.7
  %reass.mul.i.i.us.7 = mul i32 %reass.add.i.i.us.7, %13
  %144 = sext i32 %reass.mul.i.i.us.7 to i64
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %for.cond.cleanup.r_exit.i.i.loopexit.us.us.7.1, %pregion_for_end.i.i.us-lcssa.us.us.6
  %_local_id_x.i.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.6 ], [ %162, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.7.1 ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %add5.i.i.us.us.7 = add nsw i32 %reass.mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add5.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %145 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7
  %indvars.iv.next.i.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7 ]
  %146 = phi float [ %152, %for.body.i.i.us.us.7 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.7 ]
  %147 = add nsw i64 %indvars.iv.next.i.i2.us.us.7, %144
  %arrayidx20.i.i.us.us.7 = getelementptr inbounds float, float* %16, i64 %147
  %148 = load float, float* %arrayidx20.i.i.us.us.7, align 4, !tbaa !12
  %149 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.7, %27
  %150 = add nsw i64 %149, %145
  %arrayidx24.i.i.us.us.7 = getelementptr inbounds float, float* %19, i64 %150
  %151 = load float, float* %arrayidx24.i.i.us.us.7, align 4, !tbaa !12
  %152 = tail call float @llvm.fmuladd.f32(float %148, float %151, float %146) #2
  store float %152, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %27
  br i1 %exitcond.not.i.i.us.us.7, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.7, label %for.body.i.i.us.us.7, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.7:     ; preds = %for.body.i.i.us.us.7
  %153 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %153, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %add5.i.i.us.us.7.1 = add nsw i32 %reass.mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add5.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7.1 = shl i64 %add1.i.i.i.us.us.7.1, 32
  %154 = ashr exact i64 %sext.i.i.us.us.7.1, 32
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.7
  %indvars.iv.next.i.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.7 ]
  %155 = phi float [ %161, %for.body.i.i.us.us.7.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.7 ]
  %156 = add nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %144
  %arrayidx20.i.i.us.us.7.1 = getelementptr inbounds float, float* %16, i64 %156
  %157 = load float, float* %arrayidx20.i.i.us.us.7.1, align 4, !tbaa !12
  %158 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %27
  %159 = add nsw i64 %158, %154
  %arrayidx24.i.i.us.us.7.1 = getelementptr inbounds float, float* %19, i64 %159
  %160 = load float, float* %arrayidx24.i.i.us.us.7.1, align 4, !tbaa !12
  %161 = tail call float @llvm.fmuladd.f32(float %157, float %160, float %155) #2
  store float %161, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %27
  br i1 %exitcond.not.i.i.us.us.7.1, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.7.1, label %for.body.i.i.us.us.7.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.7.1:   ; preds = %for.body.i.i.us.us.7.1
  %162 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %162, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_doitgen_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !24

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.6
  %indvars.iv.next.i.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.6 ]
  %163 = phi float [ %169, %for.body.i.i.us.us.6.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.6 ]
  %164 = add nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %132
  %arrayidx20.i.i.us.us.6.1 = getelementptr inbounds float, float* %16, i64 %164
  %165 = load float, float* %arrayidx20.i.i.us.us.6.1, align 4, !tbaa !12
  %166 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %27
  %167 = add nsw i64 %166, %142
  %arrayidx24.i.i.us.us.6.1 = getelementptr inbounds float, float* %19, i64 %167
  %168 = load float, float* %arrayidx24.i.i.us.us.6.1, align 4, !tbaa !12
  %169 = tail call float @llvm.fmuladd.f32(float %165, float %168, float %163) #2
  store float %169, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %27
  br i1 %exitcond.not.i.i.us.us.6.1, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.6.1, label %for.body.i.i.us.us.6.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.6.1:   ; preds = %for.body.i.i.us.us.6.1
  %170 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %170, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !24

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.5
  %indvars.iv.next.i.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.5 ]
  %171 = phi float [ %177, %for.body.i.i.us.us.5.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.5 ]
  %172 = add nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %120
  %arrayidx20.i.i.us.us.5.1 = getelementptr inbounds float, float* %16, i64 %172
  %173 = load float, float* %arrayidx20.i.i.us.us.5.1, align 4, !tbaa !12
  %174 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %27
  %175 = add nsw i64 %174, %130
  %arrayidx24.i.i.us.us.5.1 = getelementptr inbounds float, float* %19, i64 %175
  %176 = load float, float* %arrayidx24.i.i.us.us.5.1, align 4, !tbaa !12
  %177 = tail call float @llvm.fmuladd.f32(float %173, float %176, float %171) #2
  store float %177, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %27
  br i1 %exitcond.not.i.i.us.us.5.1, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.5.1, label %for.body.i.i.us.us.5.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.5.1:   ; preds = %for.body.i.i.us.us.5.1
  %178 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %178, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !24

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.4
  %indvars.iv.next.i.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.4 ]
  %179 = phi float [ %185, %for.body.i.i.us.us.4.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.4 ]
  %180 = add nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %108
  %arrayidx20.i.i.us.us.4.1 = getelementptr inbounds float, float* %16, i64 %180
  %181 = load float, float* %arrayidx20.i.i.us.us.4.1, align 4, !tbaa !12
  %182 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %27
  %183 = add nsw i64 %182, %118
  %arrayidx24.i.i.us.us.4.1 = getelementptr inbounds float, float* %19, i64 %183
  %184 = load float, float* %arrayidx24.i.i.us.us.4.1, align 4, !tbaa !12
  %185 = tail call float @llvm.fmuladd.f32(float %181, float %184, float %179) #2
  store float %185, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %27
  br i1 %exitcond.not.i.i.us.us.4.1, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.4.1, label %for.body.i.i.us.us.4.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.4.1:   ; preds = %for.body.i.i.us.us.4.1
  %186 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %186, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !24

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.3
  %indvars.iv.next.i.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.3 ]
  %187 = phi float [ %193, %for.body.i.i.us.us.3.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.3 ]
  %188 = add nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %96
  %arrayidx20.i.i.us.us.3.1 = getelementptr inbounds float, float* %16, i64 %188
  %189 = load float, float* %arrayidx20.i.i.us.us.3.1, align 4, !tbaa !12
  %190 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %27
  %191 = add nsw i64 %190, %106
  %arrayidx24.i.i.us.us.3.1 = getelementptr inbounds float, float* %19, i64 %191
  %192 = load float, float* %arrayidx24.i.i.us.us.3.1, align 4, !tbaa !12
  %193 = tail call float @llvm.fmuladd.f32(float %189, float %192, float %187) #2
  store float %193, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %27
  br i1 %exitcond.not.i.i.us.us.3.1, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.3.1, label %for.body.i.i.us.us.3.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.3.1:   ; preds = %for.body.i.i.us.us.3.1
  %194 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %194, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !24

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.2
  %indvars.iv.next.i.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.2 ]
  %195 = phi float [ %201, %for.body.i.i.us.us.2.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.2 ]
  %196 = add nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %84
  %arrayidx20.i.i.us.us.2.1 = getelementptr inbounds float, float* %16, i64 %196
  %197 = load float, float* %arrayidx20.i.i.us.us.2.1, align 4, !tbaa !12
  %198 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %27
  %199 = add nsw i64 %198, %94
  %arrayidx24.i.i.us.us.2.1 = getelementptr inbounds float, float* %19, i64 %199
  %200 = load float, float* %arrayidx24.i.i.us.us.2.1, align 4, !tbaa !12
  %201 = tail call float @llvm.fmuladd.f32(float %197, float %200, float %195) #2
  store float %201, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %27
  br i1 %exitcond.not.i.i.us.us.2.1, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.2.1, label %for.body.i.i.us.us.2.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.2.1:   ; preds = %for.body.i.i.us.us.2.1
  %202 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %202, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !24

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1
  %indvars.iv.next.i.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1 ]
  %203 = phi float [ %209, %for.body.i.i.us.us.1.1 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1 ]
  %204 = add nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %71
  %arrayidx20.i.i.us.us.1.1 = getelementptr inbounds float, float* %16, i64 %204
  %205 = load float, float* %arrayidx20.i.i.us.us.1.1, align 4, !tbaa !12
  %206 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %27
  %207 = add nsw i64 %206, %82
  %arrayidx24.i.i.us.us.1.1 = getelementptr inbounds float, float* %19, i64 %207
  %208 = load float, float* %arrayidx24.i.i.us.us.1.1, align 4, !tbaa !12
  %209 = tail call float @llvm.fmuladd.f32(float %205, float %208, float %203) #2
  store float %209, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %27
  br i1 %exitcond.not.i.i.us.us.1.1, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1.1, label %for.body.i.i.us.us.1.1, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.1.1:   ; preds = %for.body.i.i.us.us.1.1
  %210 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %210, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !24

for.body.i.i.us.us.1141:                          ; preds = %for.body.i.i.us.us.1141, %for.cond.cleanup.r_exit.i.i.loopexit.us.us
  %indvars.iv.next.i.i2.us.us.1136 = phi i64 [ %indvars.iv.next.i.i.us.us.1139, %for.body.i.i.us.us.1141 ], [ 0, %for.cond.cleanup.r_exit.i.i.loopexit.us.us ]
  %211 = phi float [ %217, %for.body.i.i.us.us.1141 ], [ 0.000000e+00, %for.cond.cleanup.r_exit.i.i.loopexit.us.us ]
  %212 = add nsw i64 %indvars.iv.next.i.i2.us.us.1136, %59
  %arrayidx20.i.i.us.us.1137 = getelementptr inbounds float, float* %16, i64 %212
  %213 = load float, float* %arrayidx20.i.i.us.us.1137, align 4, !tbaa !12
  %214 = mul nuw nsw i64 %indvars.iv.next.i.i2.us.us.1136, %27
  %215 = add nsw i64 %214, %62
  %arrayidx24.i.i.us.us.1138 = getelementptr inbounds float, float* %19, i64 %215
  %216 = load float, float* %arrayidx24.i.i.us.us.1138, align 4, !tbaa !12
  %217 = tail call float @llvm.fmuladd.f32(float %213, float %216, float %211) #2
  store float %217, float* %arrayidx.i.i.us.us.1133, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1139 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1136, 1
  %exitcond.not.i.i.us.us.1140 = icmp eq i64 %indvars.iv.next.i.i.us.us.1139, %27
  br i1 %exitcond.not.i.i.us.us.1140, label %for.cond.cleanup.r_exit.i.i.loopexit.us.us.1142, label %for.body.i.i.us.us.1141, !llvm.loop !19

for.cond.cleanup.r_exit.i.i.loopexit.us.us.1142:  ; preds = %for.body.i.i.us.us.1141
  %218 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %218, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !24
}

attributes #0 = { nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!opencl.ocl.version = !{!3}
!llvm.ident = !{!4}
!opencl.spir.version = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 1, i32 2}
!4 = !{!"clang version 11.0.0 (git@github.com:llvm/llvm-project.git 91e89f9a5115b0f83b8f026e1ad0e6d1f885fa9b)"}
!5 = !{i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"int", !"int", !"int", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int"}
!8 = !{!"int", !"int", !"int", !"float*", !"float*", !"float*", !"int"}
!9 = !{!"", !"", !"", !"", !"", !"", !""}
!10 = !{!"nr", !"nq", !"np", !"A", !"C4", !"sum", !"r"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17, !18}
!17 = distinct !{}
!18 = distinct !{}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.parallel_accesses", !18}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.parallel_accesses", !17}
!26 = distinct !{!26, !22, !23}
!27 = distinct !{!27, !22, !23}
