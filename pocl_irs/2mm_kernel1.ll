; ModuleID = './AE/OAMONJBAJKCKPFEIFGGGJLBIMMFAJGMJFHHDO/mm2_kernel1/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_mm2_kernel1(float* nocapture %0, float* nocapture readonly %1, float* nocapture readonly %2, i32 %3, i32 %4, i32 %5, i32 %6, float %7, float %8, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %9, i64 %10, i64 %11, i64 %12) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %10, 5
  %mul3.i.i = shl i64 %11, 3
  %cmp639.i = icmp sgt i32 %5, 0
  %14 = sext i32 %4 to i64
  %wide.trip.count.i = zext i32 %5 to i64
  br i1 %cmp639.i, label %pregion_for_entry.pregion_for_init.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.preheader

pregion_for_entry.pregion_for_init.i.preheader:   ; preds = %13
  %conv.i.us = trunc i64 %mul.i.i to i32
  %cmp4.i.us = icmp slt i32 %conv.i.us, %4
  %15 = trunc i64 %mul.i.i to i32
  %conv.i.us.1 = or i32 %15, 1
  %cmp4.i.us.1 = icmp slt i32 %conv.i.us.1, %4
  %16 = trunc i64 %mul.i.i to i32
  %conv.i.us.2 = or i32 %16, 2
  %cmp4.i.us.2 = icmp slt i32 %conv.i.us.2, %4
  %17 = trunc i64 %mul.i.i to i32
  %conv.i.us.3 = or i32 %17, 3
  %cmp4.i.us.3 = icmp slt i32 %conv.i.us.3, %4
  %18 = trunc i64 %mul.i.i to i32
  %conv.i.us.4 = or i32 %18, 4
  %cmp4.i.us.4 = icmp slt i32 %conv.i.us.4, %4
  %19 = trunc i64 %mul.i.i to i32
  %conv.i.us.5 = or i32 %19, 5
  %cmp4.i.us.5 = icmp slt i32 %conv.i.us.5, %4
  %20 = trunc i64 %mul.i.i to i32
  %conv.i.us.6 = or i32 %20, 6
  %cmp4.i.us.6 = icmp slt i32 %conv.i.us.6, %4
  %21 = trunc i64 %mul.i.i to i32
  %conv.i.us.7 = or i32 %21, 7
  %cmp4.i.us.7 = icmp slt i32 %conv.i.us.7, %4
  %22 = trunc i64 %mul.i.i to i32
  %conv.i.us.8 = or i32 %22, 8
  %cmp4.i.us.8 = icmp slt i32 %conv.i.us.8, %4
  %23 = trunc i64 %mul.i.i to i32
  %conv.i.us.9 = or i32 %23, 9
  %cmp4.i.us.9 = icmp slt i32 %conv.i.us.9, %4
  %24 = trunc i64 %mul.i.i to i32
  %conv.i.us.10 = or i32 %24, 10
  %cmp4.i.us.10 = icmp slt i32 %conv.i.us.10, %4
  %25 = trunc i64 %mul.i.i to i32
  %conv.i.us.11 = or i32 %25, 11
  %cmp4.i.us.11 = icmp slt i32 %conv.i.us.11, %4
  %26 = trunc i64 %mul.i.i to i32
  %conv.i.us.12 = or i32 %26, 12
  %cmp4.i.us.12 = icmp slt i32 %conv.i.us.12, %4
  %27 = trunc i64 %mul.i.i to i32
  %conv.i.us.13 = or i32 %27, 13
  %cmp4.i.us.13 = icmp slt i32 %conv.i.us.13, %4
  %28 = trunc i64 %mul.i.i to i32
  %conv.i.us.14 = or i32 %28, 14
  %cmp4.i.us.14 = icmp slt i32 %conv.i.us.14, %4
  %29 = trunc i64 %mul.i.i to i32
  %conv.i.us.15 = or i32 %29, 15
  %cmp4.i.us.15 = icmp slt i32 %conv.i.us.15, %4
  %30 = trunc i64 %mul.i.i to i32
  %conv.i.us.16 = or i32 %30, 16
  %cmp4.i.us.16 = icmp slt i32 %conv.i.us.16, %4
  %31 = trunc i64 %mul.i.i to i32
  %conv.i.us.17 = or i32 %31, 17
  %cmp4.i.us.17 = icmp slt i32 %conv.i.us.17, %4
  %32 = trunc i64 %mul.i.i to i32
  %conv.i.us.18 = or i32 %32, 18
  %cmp4.i.us.18 = icmp slt i32 %conv.i.us.18, %4
  %33 = trunc i64 %mul.i.i to i32
  %conv.i.us.19 = or i32 %33, 19
  %cmp4.i.us.19 = icmp slt i32 %conv.i.us.19, %4
  %34 = trunc i64 %mul.i.i to i32
  %conv.i.us.20 = or i32 %34, 20
  %cmp4.i.us.20 = icmp slt i32 %conv.i.us.20, %4
  %35 = trunc i64 %mul.i.i to i32
  %conv.i.us.21 = or i32 %35, 21
  %cmp4.i.us.21 = icmp slt i32 %conv.i.us.21, %4
  %36 = trunc i64 %mul.i.i to i32
  %conv.i.us.22 = or i32 %36, 22
  %cmp4.i.us.22 = icmp slt i32 %conv.i.us.22, %4
  %37 = trunc i64 %mul.i.i to i32
  %conv.i.us.23 = or i32 %37, 23
  %cmp4.i.us.23 = icmp slt i32 %conv.i.us.23, %4
  %38 = trunc i64 %mul.i.i to i32
  %conv.i.us.24 = or i32 %38, 24
  %cmp4.i.us.24 = icmp slt i32 %conv.i.us.24, %4
  %39 = trunc i64 %mul.i.i to i32
  %conv.i.us.25 = or i32 %39, 25
  %cmp4.i.us.25 = icmp slt i32 %conv.i.us.25, %4
  %40 = trunc i64 %mul.i.i to i32
  %conv.i.us.26 = or i32 %40, 26
  %cmp4.i.us.26 = icmp slt i32 %conv.i.us.26, %4
  %41 = trunc i64 %mul.i.i to i32
  %conv.i.us.27 = or i32 %41, 27
  %cmp4.i.us.27 = icmp slt i32 %conv.i.us.27, %4
  %42 = trunc i64 %mul.i.i to i32
  %conv.i.us.28 = or i32 %42, 28
  %cmp4.i.us.28 = icmp slt i32 %conv.i.us.28, %4
  %43 = trunc i64 %mul.i.i to i32
  %conv.i.us.29 = or i32 %43, 29
  %cmp4.i.us.29 = icmp slt i32 %conv.i.us.29, %4
  %44 = trunc i64 %mul.i.i to i32
  %conv.i.us.30 = or i32 %44, 30
  %cmp4.i.us.30 = icmp slt i32 %conv.i.us.30, %4
  %45 = trunc i64 %mul.i.i to i32
  %conv.i.us.31 = or i32 %45, 31
  %cmp4.i.us.31 = icmp slt i32 %conv.i.us.31, %4
  br label %pregion_for_entry.pregion_for_init.i

pregion_for_entry.pregion_for_init.i.us.preheader: ; preds = %13
  %conv2.i.us = trunc i64 %mul3.i.i to i32
  %cmp.i.us = icmp slt i32 %conv2.i.us, %3
  %mul.i.us = mul nsw i32 %conv2.i.us, %4
  %mul8.i.us = mul nsw i32 %conv2.i.us, %5
  %46 = sext i32 %mul8.i.us to i64
  br i1 %cmp.i.us, label %pregion_for_entry.entry.i.us.us.preheader, label %pregion_for_end.i.us

pregion_for_entry.entry.i.us.us.preheader:        ; preds = %pregion_for_entry.pregion_for_init.i.us.preheader
  br label %pregion_for_entry.entry.i.us.us

pregion_for_end.i.us.loopexit:                    ; preds = %if.end.i.us.us.155
  br label %pregion_for_end.i.us

pregion_for_end.i.us:                             ; preds = %pregion_for_end.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.us.preheader
  %47 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.1 = or i32 %47, 1
  %cmp.i.us.1 = icmp slt i32 %conv2.i.us.1, %3
  %mul.i.us.1 = mul nsw i32 %conv2.i.us.1, %4
  %mul8.i.us.1 = mul nsw i32 %conv2.i.us.1, %5
  %48 = sext i32 %mul8.i.us.1 to i64
  br i1 %cmp.i.us.1, label %pregion_for_entry.entry.i.us.us.1.preheader, label %pregion_for_end.i.us.1

pregion_for_entry.entry.i.us.us.1.preheader:      ; preds = %pregion_for_end.i.us
  br label %pregion_for_entry.entry.i.us.us.1

pregion_for_entry.entry.i.us.us:                  ; preds = %if.end.i.us.us.155, %pregion_for_entry.entry.i.us.us.preheader
  %_local_id_x.0.us.us = phi i64 [ %205, %if.end.i.us.us.155 ], [ 0, %pregion_for_entry.entry.i.us.us.preheader ]
  %add1.i.i.us.us = add nuw nsw i64 %_local_id_x.0.us.us, %mul.i.i
  %conv.i.us.us = trunc i64 %add1.i.i.us.us to i32
  %cmp4.i.us.us = icmp slt i32 %conv.i.us.us, %4
  br i1 %cmp4.i.us.us, label %if.then.i.us.us, label %if.end.i.us.us

if.then.i.us.us:                                  ; preds = %pregion_for_entry.entry.i.us.us
  %add.i.us.us = add nsw i32 %mul.i.us, %conv.i.us.us
  %idxprom.i.us.us = sext i32 %add.i.us.us to i64
  %arrayidx.i.us.us = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us = shl i64 %add1.i.i.us.us, 32
  %49 = ashr exact i64 %sext.i.us.us, 32
  br label %for.body.i.us.us

if.end.i.us.us.loopexit:                          ; preds = %for.body.i.us.us
  br label %if.end.i.us.us

if.end.i.us.us:                                   ; preds = %if.end.i.us.us.loopexit, %pregion_for_entry.entry.i.us.us
  %50 = or i64 %_local_id_x.0.us.us, 1
  %add1.i.i.us.us.139 = add nuw nsw i64 %50, %mul.i.i
  %conv.i.us.us.140 = trunc i64 %add1.i.i.us.us.139 to i32
  %cmp4.i.us.us.141 = icmp slt i32 %conv.i.us.us.140, %4
  br i1 %cmp4.i.us.us.141, label %if.then.i.us.us.147, label %if.end.i.us.us.155

for.body.i.us.us:                                 ; preds = %for.body.i.us.us, %if.then.i.us.us
  %indvars.iv.next.i3.us.us = phi i64 [ %indvars.iv.next.i.us.us, %for.body.i.us.us ], [ 0, %if.then.i.us.us ]
  %51 = phi float [ %57, %for.body.i.us.us ], [ 0.000000e+00, %if.then.i.us.us ]
  %52 = add nsw i64 %indvars.iv.next.i3.us.us, %46
  %arrayidx11.i.us.us = getelementptr inbounds float, float* %1, i64 %52
  %53 = load float, float* %arrayidx11.i.us.us, align 4, !tbaa !12
  %mul12.i.us.us = fmul float %53, %7
  %54 = mul nsw i64 %indvars.iv.next.i3.us.us, %14
  %55 = add nsw i64 %54, %49
  %arrayidx16.i.us.us = getelementptr inbounds float, float* %2, i64 %55
  %56 = load float, float* %arrayidx16.i.us.us, align 4, !tbaa !12
  %57 = tail call float @llvm.fmuladd.f32(float %mul12.i.us.us, float %56, float %51) #2
  store float %57, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.next.i3.us.us, 1
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %if.end.i.us.us.loopexit, label %for.body.i.us.us, !llvm.loop !19

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_end.i, %pregion_for_entry.pregion_for_init.i.preheader
  %_local_id_y.0 = phi i64 [ %58, %pregion_for_end.i ], [ 0, %pregion_for_entry.pregion_for_init.i.preheader ]
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %cmp.i = icmp slt i32 %conv2.i, %3
  %mul.i = mul nsw i32 %conv2.i, %4
  br i1 %cmp.i, label %pregion_for_entry.entry.i.us.preheader, label %pregion_for_end.i

pregion_for_entry.entry.i.us.preheader:           ; preds = %pregion_for_entry.pregion_for_init.i
  br i1 %cmp4.i.us, label %if.then.i.us, label %if.end.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us.preheader
  %add.i.us = add nsw i32 %mul.i, %conv.i.us
  %idxprom.i.us = sext i32 %add.i.us to i64
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %idxprom.i.us
  store float 0.000000e+00, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us

if.end.i.us:                                      ; preds = %if.then.i.us, %pregion_for_entry.entry.i.us.preheader
  br i1 %cmp4.i.us.1, label %if.then.i.us.1, label %if.end.i.us.1

pregion_for_end.i:                                ; preds = %if.then.i.us.31, %if.end.i.us.30, %pregion_for_entry.pregion_for_init.i
  %58 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond34.not = icmp eq i64 %58, 8
  br i1 %exitcond34.not, label %mm2_kernel1.exit.loopexit56, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !21

mm2_kernel1.exit.loopexit:                        ; preds = %if.end.i.us.us.7.1
  br label %mm2_kernel1.exit

mm2_kernel1.exit.loopexit56:                      ; preds = %pregion_for_end.i
  br label %mm2_kernel1.exit

mm2_kernel1.exit:                                 ; preds = %pregion_for_end.i.us.6, %mm2_kernel1.exit.loopexit56, %mm2_kernel1.exit.loopexit
  ret void

pregion_for_entry.entry.i.us.us.1:                ; preds = %if.end.i.us.us.1.1, %pregion_for_entry.entry.i.us.us.1.preheader
  %_local_id_x.0.us.us.1 = phi i64 [ %196, %if.end.i.us.us.1.1 ], [ 0, %pregion_for_entry.entry.i.us.us.1.preheader ]
  %add1.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.0.us.us.1, %mul.i.i
  %conv.i.us.us.1 = trunc i64 %add1.i.i.us.us.1 to i32
  %cmp4.i.us.us.1 = icmp slt i32 %conv.i.us.us.1, %4
  br i1 %cmp4.i.us.us.1, label %if.then.i.us.us.1, label %if.end.i.us.us.1

if.then.i.us.us.1:                                ; preds = %pregion_for_entry.entry.i.us.us.1
  %add.i.us.us.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1
  %idxprom.i.us.us.1 = sext i32 %add.i.us.us.1 to i64
  %arrayidx.i.us.us.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1 = shl i64 %add1.i.i.us.us.1, 32
  %59 = ashr exact i64 %sext.i.us.us.1, 32
  br label %for.body.i.us.us.1

for.body.i.us.us.1:                               ; preds = %for.body.i.us.us.1, %if.then.i.us.us.1
  %indvars.iv.next.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1, %for.body.i.us.us.1 ], [ 0, %if.then.i.us.us.1 ]
  %60 = phi float [ %66, %for.body.i.us.us.1 ], [ 0.000000e+00, %if.then.i.us.us.1 ]
  %61 = add nsw i64 %indvars.iv.next.i3.us.us.1, %48
  %arrayidx11.i.us.us.1 = getelementptr inbounds float, float* %1, i64 %61
  %62 = load float, float* %arrayidx11.i.us.us.1, align 4, !tbaa !12
  %mul12.i.us.us.1 = fmul float %62, %7
  %63 = mul nsw i64 %indvars.iv.next.i3.us.us.1, %14
  %64 = add nsw i64 %63, %59
  %arrayidx16.i.us.us.1 = getelementptr inbounds float, float* %2, i64 %64
  %65 = load float, float* %arrayidx16.i.us.us.1, align 4, !tbaa !12
  %66 = tail call float @llvm.fmuladd.f32(float %mul12.i.us.us.1, float %65, float %60) #2
  store float %66, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.1, 1
  %exitcond.not.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1, label %if.end.i.us.us.1.loopexit, label %for.body.i.us.us.1, !llvm.loop !19

if.end.i.us.us.1.loopexit:                        ; preds = %for.body.i.us.us.1
  br label %if.end.i.us.us.1

if.end.i.us.us.1:                                 ; preds = %if.end.i.us.us.1.loopexit, %pregion_for_entry.entry.i.us.us.1
  %67 = or i64 %_local_id_x.0.us.us.1, 1
  %add1.i.i.us.us.1.1 = add nuw nsw i64 %67, %mul.i.i
  %conv.i.us.us.1.1 = trunc i64 %add1.i.i.us.us.1.1 to i32
  %cmp4.i.us.us.1.1 = icmp slt i32 %conv.i.us.us.1.1, %4
  br i1 %cmp4.i.us.us.1.1, label %if.then.i.us.us.1.1, label %if.end.i.us.us.1.1

pregion_for_end.i.us.1.loopexit:                  ; preds = %if.end.i.us.us.1.1
  br label %pregion_for_end.i.us.1

pregion_for_end.i.us.1:                           ; preds = %pregion_for_end.i.us.1.loopexit, %pregion_for_end.i.us
  %68 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.2 = or i32 %68, 2
  %cmp.i.us.2 = icmp slt i32 %conv2.i.us.2, %3
  %mul.i.us.2 = mul nsw i32 %conv2.i.us.2, %4
  %mul8.i.us.2 = mul nsw i32 %conv2.i.us.2, %5
  %69 = sext i32 %mul8.i.us.2 to i64
  br i1 %cmp.i.us.2, label %pregion_for_entry.entry.i.us.us.2.preheader, label %pregion_for_end.i.us.2

pregion_for_entry.entry.i.us.us.2.preheader:      ; preds = %pregion_for_end.i.us.1
  br label %pregion_for_entry.entry.i.us.us.2

pregion_for_entry.entry.i.us.us.2:                ; preds = %if.end.i.us.us.2.1, %pregion_for_entry.entry.i.us.us.2.preheader
  %_local_id_x.0.us.us.2 = phi i64 [ %187, %if.end.i.us.us.2.1 ], [ 0, %pregion_for_entry.entry.i.us.us.2.preheader ]
  %add1.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.0.us.us.2, %mul.i.i
  %conv.i.us.us.2 = trunc i64 %add1.i.i.us.us.2 to i32
  %cmp4.i.us.us.2 = icmp slt i32 %conv.i.us.us.2, %4
  br i1 %cmp4.i.us.us.2, label %if.then.i.us.us.2, label %if.end.i.us.us.2

if.then.i.us.us.2:                                ; preds = %pregion_for_entry.entry.i.us.us.2
  %add.i.us.us.2 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2
  %idxprom.i.us.us.2 = sext i32 %add.i.us.us.2 to i64
  %arrayidx.i.us.us.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2 = shl i64 %add1.i.i.us.us.2, 32
  %70 = ashr exact i64 %sext.i.us.us.2, 32
  br label %for.body.i.us.us.2

for.body.i.us.us.2:                               ; preds = %for.body.i.us.us.2, %if.then.i.us.us.2
  %indvars.iv.next.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.us.us.2, %for.body.i.us.us.2 ], [ 0, %if.then.i.us.us.2 ]
  %71 = phi float [ %77, %for.body.i.us.us.2 ], [ 0.000000e+00, %if.then.i.us.us.2 ]
  %72 = add nsw i64 %indvars.iv.next.i3.us.us.2, %69
  %arrayidx11.i.us.us.2 = getelementptr inbounds float, float* %1, i64 %72
  %73 = load float, float* %arrayidx11.i.us.us.2, align 4, !tbaa !12
  %mul12.i.us.us.2 = fmul float %73, %7
  %74 = mul nsw i64 %indvars.iv.next.i3.us.us.2, %14
  %75 = add nsw i64 %74, %70
  %arrayidx16.i.us.us.2 = getelementptr inbounds float, float* %2, i64 %75
  %76 = load float, float* %arrayidx16.i.us.us.2, align 4, !tbaa !12
  %77 = tail call float @llvm.fmuladd.f32(float %mul12.i.us.us.2, float %76, float %71) #2
  store float %77, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i3.us.us.2, 1
  %exitcond.not.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.us.us.2, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2, label %if.end.i.us.us.2.loopexit, label %for.body.i.us.us.2, !llvm.loop !19

if.end.i.us.us.2.loopexit:                        ; preds = %for.body.i.us.us.2
  br label %if.end.i.us.us.2

if.end.i.us.us.2:                                 ; preds = %if.end.i.us.us.2.loopexit, %pregion_for_entry.entry.i.us.us.2
  %78 = or i64 %_local_id_x.0.us.us.2, 1
  %add1.i.i.us.us.2.1 = add nuw nsw i64 %78, %mul.i.i
  %conv.i.us.us.2.1 = trunc i64 %add1.i.i.us.us.2.1 to i32
  %cmp4.i.us.us.2.1 = icmp slt i32 %conv.i.us.us.2.1, %4
  br i1 %cmp4.i.us.us.2.1, label %if.then.i.us.us.2.1, label %if.end.i.us.us.2.1

pregion_for_end.i.us.2.loopexit:                  ; preds = %if.end.i.us.us.2.1
  br label %pregion_for_end.i.us.2

pregion_for_end.i.us.2:                           ; preds = %pregion_for_end.i.us.2.loopexit, %pregion_for_end.i.us.1
  %79 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.3 = or i32 %79, 3
  %cmp.i.us.3 = icmp slt i32 %conv2.i.us.3, %3
  %mul.i.us.3 = mul nsw i32 %conv2.i.us.3, %4
  %mul8.i.us.3 = mul nsw i32 %conv2.i.us.3, %5
  %80 = sext i32 %mul8.i.us.3 to i64
  br i1 %cmp.i.us.3, label %pregion_for_entry.entry.i.us.us.3.preheader, label %pregion_for_end.i.us.3

pregion_for_entry.entry.i.us.us.3.preheader:      ; preds = %pregion_for_end.i.us.2
  br label %pregion_for_entry.entry.i.us.us.3

pregion_for_entry.entry.i.us.us.3:                ; preds = %if.end.i.us.us.3.1, %pregion_for_entry.entry.i.us.us.3.preheader
  %_local_id_x.0.us.us.3 = phi i64 [ %178, %if.end.i.us.us.3.1 ], [ 0, %pregion_for_entry.entry.i.us.us.3.preheader ]
  %add1.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.0.us.us.3, %mul.i.i
  %conv.i.us.us.3 = trunc i64 %add1.i.i.us.us.3 to i32
  %cmp4.i.us.us.3 = icmp slt i32 %conv.i.us.us.3, %4
  br i1 %cmp4.i.us.us.3, label %if.then.i.us.us.3, label %if.end.i.us.us.3

if.then.i.us.us.3:                                ; preds = %pregion_for_entry.entry.i.us.us.3
  %add.i.us.us.3 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3
  %idxprom.i.us.us.3 = sext i32 %add.i.us.us.3 to i64
  %arrayidx.i.us.us.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3 = shl i64 %add1.i.i.us.us.3, 32
  %81 = ashr exact i64 %sext.i.us.us.3, 32
  br label %for.body.i.us.us.3

for.body.i.us.us.3:                               ; preds = %for.body.i.us.us.3, %if.then.i.us.us.3
  %indvars.iv.next.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.us.us.3, %for.body.i.us.us.3 ], [ 0, %if.then.i.us.us.3 ]
  %82 = phi float [ %88, %for.body.i.us.us.3 ], [ 0.000000e+00, %if.then.i.us.us.3 ]
  %83 = add nsw i64 %indvars.iv.next.i3.us.us.3, %80
  %arrayidx11.i.us.us.3 = getelementptr inbounds float, float* %1, i64 %83
  %84 = load float, float* %arrayidx11.i.us.us.3, align 4, !tbaa !12
  %mul12.i.us.us.3 = fmul float %84, %7
  %85 = mul nsw i64 %indvars.iv.next.i3.us.us.3, %14
  %86 = add nsw i64 %85, %81
  %arrayidx16.i.us.us.3 = getelementptr inbounds float, float* %2, i64 %86
  %87 = load float, float* %arrayidx16.i.us.us.3, align 4, !tbaa !12
  %88 = tail call float @llvm.fmuladd.f32(float %mul12.i.us.us.3, float %87, float %82) #2
  store float %88, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i3.us.us.3, 1
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3, label %if.end.i.us.us.3.loopexit, label %for.body.i.us.us.3, !llvm.loop !19

if.end.i.us.us.3.loopexit:                        ; preds = %for.body.i.us.us.3
  br label %if.end.i.us.us.3

if.end.i.us.us.3:                                 ; preds = %if.end.i.us.us.3.loopexit, %pregion_for_entry.entry.i.us.us.3
  %89 = or i64 %_local_id_x.0.us.us.3, 1
  %add1.i.i.us.us.3.1 = add nuw nsw i64 %89, %mul.i.i
  %conv.i.us.us.3.1 = trunc i64 %add1.i.i.us.us.3.1 to i32
  %cmp4.i.us.us.3.1 = icmp slt i32 %conv.i.us.us.3.1, %4
  br i1 %cmp4.i.us.us.3.1, label %if.then.i.us.us.3.1, label %if.end.i.us.us.3.1

pregion_for_end.i.us.3.loopexit:                  ; preds = %if.end.i.us.us.3.1
  br label %pregion_for_end.i.us.3

pregion_for_end.i.us.3:                           ; preds = %pregion_for_end.i.us.3.loopexit, %pregion_for_end.i.us.2
  %90 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.4 = or i32 %90, 4
  %cmp.i.us.4 = icmp slt i32 %conv2.i.us.4, %3
  %mul.i.us.4 = mul nsw i32 %conv2.i.us.4, %4
  %mul8.i.us.4 = mul nsw i32 %conv2.i.us.4, %5
  %91 = sext i32 %mul8.i.us.4 to i64
  br i1 %cmp.i.us.4, label %pregion_for_entry.entry.i.us.us.4.preheader, label %pregion_for_end.i.us.4

pregion_for_entry.entry.i.us.us.4.preheader:      ; preds = %pregion_for_end.i.us.3
  br label %pregion_for_entry.entry.i.us.us.4

pregion_for_entry.entry.i.us.us.4:                ; preds = %if.end.i.us.us.4.1, %pregion_for_entry.entry.i.us.us.4.preheader
  %_local_id_x.0.us.us.4 = phi i64 [ %169, %if.end.i.us.us.4.1 ], [ 0, %pregion_for_entry.entry.i.us.us.4.preheader ]
  %add1.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.0.us.us.4, %mul.i.i
  %conv.i.us.us.4 = trunc i64 %add1.i.i.us.us.4 to i32
  %cmp4.i.us.us.4 = icmp slt i32 %conv.i.us.us.4, %4
  br i1 %cmp4.i.us.us.4, label %if.then.i.us.us.4, label %if.end.i.us.us.4

if.then.i.us.us.4:                                ; preds = %pregion_for_entry.entry.i.us.us.4
  %add.i.us.us.4 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4
  %idxprom.i.us.us.4 = sext i32 %add.i.us.us.4 to i64
  %arrayidx.i.us.us.4 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4 = shl i64 %add1.i.i.us.us.4, 32
  %92 = ashr exact i64 %sext.i.us.us.4, 32
  br label %for.body.i.us.us.4

for.body.i.us.us.4:                               ; preds = %for.body.i.us.us.4, %if.then.i.us.us.4
  %indvars.iv.next.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.us.us.4, %for.body.i.us.us.4 ], [ 0, %if.then.i.us.us.4 ]
  %93 = phi float [ %99, %for.body.i.us.us.4 ], [ 0.000000e+00, %if.then.i.us.us.4 ]
  %94 = add nsw i64 %indvars.iv.next.i3.us.us.4, %91
  %arrayidx11.i.us.us.4 = getelementptr inbounds float, float* %1, i64 %94
  %95 = load float, float* %arrayidx11.i.us.us.4, align 4, !tbaa !12
  %mul12.i.us.us.4 = fmul float %95, %7
  %96 = mul nsw i64 %indvars.iv.next.i3.us.us.4, %14
  %97 = add nsw i64 %96, %92
  %arrayidx16.i.us.us.4 = getelementptr inbounds float, float* %2, i64 %97
  %98 = load float, float* %arrayidx16.i.us.us.4, align 4, !tbaa !12
  %99 = tail call float @llvm.fmuladd.f32(float %mul12.i.us.us.4, float %98, float %93) #2
  store float %99, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i3.us.us.4, 1
  %exitcond.not.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.us.us.4, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4, label %if.end.i.us.us.4.loopexit, label %for.body.i.us.us.4, !llvm.loop !19

if.end.i.us.us.4.loopexit:                        ; preds = %for.body.i.us.us.4
  br label %if.end.i.us.us.4

if.end.i.us.us.4:                                 ; preds = %if.end.i.us.us.4.loopexit, %pregion_for_entry.entry.i.us.us.4
  %100 = or i64 %_local_id_x.0.us.us.4, 1
  %add1.i.i.us.us.4.1 = add nuw nsw i64 %100, %mul.i.i
  %conv.i.us.us.4.1 = trunc i64 %add1.i.i.us.us.4.1 to i32
  %cmp4.i.us.us.4.1 = icmp slt i32 %conv.i.us.us.4.1, %4
  br i1 %cmp4.i.us.us.4.1, label %if.then.i.us.us.4.1, label %if.end.i.us.us.4.1

pregion_for_end.i.us.4.loopexit:                  ; preds = %if.end.i.us.us.4.1
  br label %pregion_for_end.i.us.4

pregion_for_end.i.us.4:                           ; preds = %pregion_for_end.i.us.4.loopexit, %pregion_for_end.i.us.3
  %101 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.5 = or i32 %101, 5
  %cmp.i.us.5 = icmp slt i32 %conv2.i.us.5, %3
  %mul.i.us.5 = mul nsw i32 %conv2.i.us.5, %4
  %mul8.i.us.5 = mul nsw i32 %conv2.i.us.5, %5
  %102 = sext i32 %mul8.i.us.5 to i64
  br i1 %cmp.i.us.5, label %pregion_for_entry.entry.i.us.us.5.preheader, label %pregion_for_end.i.us.5

pregion_for_entry.entry.i.us.us.5.preheader:      ; preds = %pregion_for_end.i.us.4
  br label %pregion_for_entry.entry.i.us.us.5

pregion_for_entry.entry.i.us.us.5:                ; preds = %if.end.i.us.us.5.1, %pregion_for_entry.entry.i.us.us.5.preheader
  %_local_id_x.0.us.us.5 = phi i64 [ %160, %if.end.i.us.us.5.1 ], [ 0, %pregion_for_entry.entry.i.us.us.5.preheader ]
  %add1.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.0.us.us.5, %mul.i.i
  %conv.i.us.us.5 = trunc i64 %add1.i.i.us.us.5 to i32
  %cmp4.i.us.us.5 = icmp slt i32 %conv.i.us.us.5, %4
  br i1 %cmp4.i.us.us.5, label %if.then.i.us.us.5, label %if.end.i.us.us.5

if.then.i.us.us.5:                                ; preds = %pregion_for_entry.entry.i.us.us.5
  %add.i.us.us.5 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5
  %idxprom.i.us.us.5 = sext i32 %add.i.us.us.5 to i64
  %arrayidx.i.us.us.5 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5 = shl i64 %add1.i.i.us.us.5, 32
  %103 = ashr exact i64 %sext.i.us.us.5, 32
  br label %for.body.i.us.us.5

for.body.i.us.us.5:                               ; preds = %for.body.i.us.us.5, %if.then.i.us.us.5
  %indvars.iv.next.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.us.us.5, %for.body.i.us.us.5 ], [ 0, %if.then.i.us.us.5 ]
  %104 = phi float [ %110, %for.body.i.us.us.5 ], [ 0.000000e+00, %if.then.i.us.us.5 ]
  %105 = add nsw i64 %indvars.iv.next.i3.us.us.5, %102
  %arrayidx11.i.us.us.5 = getelementptr inbounds float, float* %1, i64 %105
  %106 = load float, float* %arrayidx11.i.us.us.5, align 4, !tbaa !12
  %mul12.i.us.us.5 = fmul float %106, %7
  %107 = mul nsw i64 %indvars.iv.next.i3.us.us.5, %14
  %108 = add nsw i64 %107, %103
  %arrayidx16.i.us.us.5 = getelementptr inbounds float, float* %2, i64 %108
  %109 = load float, float* %arrayidx16.i.us.us.5, align 4, !tbaa !12
  %110 = tail call float @llvm.fmuladd.f32(float %mul12.i.us.us.5, float %109, float %104) #2
  store float %110, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i3.us.us.5, 1
  %exitcond.not.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.us.us.5, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5, label %if.end.i.us.us.5.loopexit, label %for.body.i.us.us.5, !llvm.loop !19

if.end.i.us.us.5.loopexit:                        ; preds = %for.body.i.us.us.5
  br label %if.end.i.us.us.5

if.end.i.us.us.5:                                 ; preds = %if.end.i.us.us.5.loopexit, %pregion_for_entry.entry.i.us.us.5
  %111 = or i64 %_local_id_x.0.us.us.5, 1
  %add1.i.i.us.us.5.1 = add nuw nsw i64 %111, %mul.i.i
  %conv.i.us.us.5.1 = trunc i64 %add1.i.i.us.us.5.1 to i32
  %cmp4.i.us.us.5.1 = icmp slt i32 %conv.i.us.us.5.1, %4
  br i1 %cmp4.i.us.us.5.1, label %if.then.i.us.us.5.1, label %if.end.i.us.us.5.1

pregion_for_end.i.us.5.loopexit:                  ; preds = %if.end.i.us.us.5.1
  br label %pregion_for_end.i.us.5

pregion_for_end.i.us.5:                           ; preds = %pregion_for_end.i.us.5.loopexit, %pregion_for_end.i.us.4
  %112 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.6 = or i32 %112, 6
  %cmp.i.us.6 = icmp slt i32 %conv2.i.us.6, %3
  %mul.i.us.6 = mul nsw i32 %conv2.i.us.6, %4
  %mul8.i.us.6 = mul nsw i32 %conv2.i.us.6, %5
  %113 = sext i32 %mul8.i.us.6 to i64
  br i1 %cmp.i.us.6, label %pregion_for_entry.entry.i.us.us.6.preheader, label %pregion_for_end.i.us.6

pregion_for_entry.entry.i.us.us.6.preheader:      ; preds = %pregion_for_end.i.us.5
  br label %pregion_for_entry.entry.i.us.us.6

pregion_for_entry.entry.i.us.us.6:                ; preds = %if.end.i.us.us.6.1, %pregion_for_entry.entry.i.us.us.6.preheader
  %_local_id_x.0.us.us.6 = phi i64 [ %151, %if.end.i.us.us.6.1 ], [ 0, %pregion_for_entry.entry.i.us.us.6.preheader ]
  %add1.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.0.us.us.6, %mul.i.i
  %conv.i.us.us.6 = trunc i64 %add1.i.i.us.us.6 to i32
  %cmp4.i.us.us.6 = icmp slt i32 %conv.i.us.us.6, %4
  br i1 %cmp4.i.us.us.6, label %if.then.i.us.us.6, label %if.end.i.us.us.6

if.then.i.us.us.6:                                ; preds = %pregion_for_entry.entry.i.us.us.6
  %add.i.us.us.6 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6
  %idxprom.i.us.us.6 = sext i32 %add.i.us.us.6 to i64
  %arrayidx.i.us.us.6 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6 = shl i64 %add1.i.i.us.us.6, 32
  %114 = ashr exact i64 %sext.i.us.us.6, 32
  br label %for.body.i.us.us.6

for.body.i.us.us.6:                               ; preds = %for.body.i.us.us.6, %if.then.i.us.us.6
  %indvars.iv.next.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.us.us.6, %for.body.i.us.us.6 ], [ 0, %if.then.i.us.us.6 ]
  %115 = phi float [ %121, %for.body.i.us.us.6 ], [ 0.000000e+00, %if.then.i.us.us.6 ]
  %116 = add nsw i64 %indvars.iv.next.i3.us.us.6, %113
  %arrayidx11.i.us.us.6 = getelementptr inbounds float, float* %1, i64 %116
  %117 = load float, float* %arrayidx11.i.us.us.6, align 4, !tbaa !12
  %mul12.i.us.us.6 = fmul float %117, %7
  %118 = mul nsw i64 %indvars.iv.next.i3.us.us.6, %14
  %119 = add nsw i64 %118, %114
  %arrayidx16.i.us.us.6 = getelementptr inbounds float, float* %2, i64 %119
  %120 = load float, float* %arrayidx16.i.us.us.6, align 4, !tbaa !12
  %121 = tail call float @llvm.fmuladd.f32(float %mul12.i.us.us.6, float %120, float %115) #2
  store float %121, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i3.us.us.6, 1
  %exitcond.not.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.us.us.6, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6, label %if.end.i.us.us.6.loopexit, label %for.body.i.us.us.6, !llvm.loop !19

if.end.i.us.us.6.loopexit:                        ; preds = %for.body.i.us.us.6
  br label %if.end.i.us.us.6

if.end.i.us.us.6:                                 ; preds = %if.end.i.us.us.6.loopexit, %pregion_for_entry.entry.i.us.us.6
  %122 = or i64 %_local_id_x.0.us.us.6, 1
  %add1.i.i.us.us.6.1 = add nuw nsw i64 %122, %mul.i.i
  %conv.i.us.us.6.1 = trunc i64 %add1.i.i.us.us.6.1 to i32
  %cmp4.i.us.us.6.1 = icmp slt i32 %conv.i.us.us.6.1, %4
  br i1 %cmp4.i.us.us.6.1, label %if.then.i.us.us.6.1, label %if.end.i.us.us.6.1

pregion_for_end.i.us.6.loopexit:                  ; preds = %if.end.i.us.us.6.1
  br label %pregion_for_end.i.us.6

pregion_for_end.i.us.6:                           ; preds = %pregion_for_end.i.us.6.loopexit, %pregion_for_end.i.us.5
  %123 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.7 = or i32 %123, 7
  %cmp.i.us.7 = icmp slt i32 %conv2.i.us.7, %3
  %mul.i.us.7 = mul nsw i32 %conv2.i.us.7, %4
  %mul8.i.us.7 = mul nsw i32 %conv2.i.us.7, %5
  %124 = sext i32 %mul8.i.us.7 to i64
  br i1 %cmp.i.us.7, label %pregion_for_entry.entry.i.us.us.7.preheader, label %mm2_kernel1.exit

pregion_for_entry.entry.i.us.us.7.preheader:      ; preds = %pregion_for_end.i.us.6
  br label %pregion_for_entry.entry.i.us.us.7

pregion_for_entry.entry.i.us.us.7:                ; preds = %if.end.i.us.us.7.1, %pregion_for_entry.entry.i.us.us.7.preheader
  %_local_id_x.0.us.us.7 = phi i64 [ %142, %if.end.i.us.us.7.1 ], [ 0, %pregion_for_entry.entry.i.us.us.7.preheader ]
  %add1.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.0.us.us.7, %mul.i.i
  %conv.i.us.us.7 = trunc i64 %add1.i.i.us.us.7 to i32
  %cmp4.i.us.us.7 = icmp slt i32 %conv.i.us.us.7, %4
  br i1 %cmp4.i.us.us.7, label %if.then.i.us.us.7, label %if.end.i.us.us.7

if.then.i.us.us.7:                                ; preds = %pregion_for_entry.entry.i.us.us.7
  %add.i.us.us.7 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7
  %idxprom.i.us.us.7 = sext i32 %add.i.us.us.7 to i64
  %arrayidx.i.us.us.7 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7 = shl i64 %add1.i.i.us.us.7, 32
  %125 = ashr exact i64 %sext.i.us.us.7, 32
  br label %for.body.i.us.us.7

for.body.i.us.us.7:                               ; preds = %for.body.i.us.us.7, %if.then.i.us.us.7
  %indvars.iv.next.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.us.us.7, %for.body.i.us.us.7 ], [ 0, %if.then.i.us.us.7 ]
  %126 = phi float [ %132, %for.body.i.us.us.7 ], [ 0.000000e+00, %if.then.i.us.us.7 ]
  %127 = add nsw i64 %indvars.iv.next.i3.us.us.7, %124
  %arrayidx11.i.us.us.7 = getelementptr inbounds float, float* %1, i64 %127
  %128 = load float, float* %arrayidx11.i.us.us.7, align 4, !tbaa !12
  %mul12.i.us.us.7 = fmul float %128, %7
  %129 = mul nsw i64 %indvars.iv.next.i3.us.us.7, %14
  %130 = add nsw i64 %129, %125
  %arrayidx16.i.us.us.7 = getelementptr inbounds float, float* %2, i64 %130
  %131 = load float, float* %arrayidx16.i.us.us.7, align 4, !tbaa !12
  %132 = tail call float @llvm.fmuladd.f32(float %mul12.i.us.us.7, float %131, float %126) #2
  store float %132, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i3.us.us.7, 1
  %exitcond.not.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.us.us.7, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7, label %if.end.i.us.us.7.loopexit, label %for.body.i.us.us.7, !llvm.loop !19

if.end.i.us.us.7.loopexit:                        ; preds = %for.body.i.us.us.7
  br label %if.end.i.us.us.7

if.end.i.us.us.7:                                 ; preds = %if.end.i.us.us.7.loopexit, %pregion_for_entry.entry.i.us.us.7
  %133 = or i64 %_local_id_x.0.us.us.7, 1
  %add1.i.i.us.us.7.1 = add nuw nsw i64 %133, %mul.i.i
  %conv.i.us.us.7.1 = trunc i64 %add1.i.i.us.us.7.1 to i32
  %cmp4.i.us.us.7.1 = icmp slt i32 %conv.i.us.us.7.1, %4
  br i1 %cmp4.i.us.us.7.1, label %if.then.i.us.us.7.1, label %if.end.i.us.us.7.1

if.then.i.us.1:                                   ; preds = %if.end.i.us
  %add.i.us.1 = add nsw i32 %mul.i, %conv.i.us.1
  %idxprom.i.us.1 = sext i32 %add.i.us.1 to i64
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1

if.end.i.us.1:                                    ; preds = %if.then.i.us.1, %if.end.i.us
  br i1 %cmp4.i.us.2, label %if.then.i.us.2, label %if.end.i.us.2

if.then.i.us.2:                                   ; preds = %if.end.i.us.1
  %add.i.us.2 = add nsw i32 %mul.i, %conv.i.us.2
  %idxprom.i.us.2 = sext i32 %add.i.us.2 to i64
  %arrayidx.i.us.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.2
  store float 0.000000e+00, float* %arrayidx.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2

if.end.i.us.2:                                    ; preds = %if.then.i.us.2, %if.end.i.us.1
  br i1 %cmp4.i.us.3, label %if.then.i.us.3, label %if.end.i.us.3

if.then.i.us.3:                                   ; preds = %if.end.i.us.2
  %add.i.us.3 = add nsw i32 %mul.i, %conv.i.us.3
  %idxprom.i.us.3 = sext i32 %add.i.us.3 to i64
  %arrayidx.i.us.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.3
  store float 0.000000e+00, float* %arrayidx.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3

if.end.i.us.3:                                    ; preds = %if.then.i.us.3, %if.end.i.us.2
  br i1 %cmp4.i.us.4, label %if.then.i.us.4, label %if.end.i.us.4

if.then.i.us.4:                                   ; preds = %if.end.i.us.3
  %add.i.us.4 = add nsw i32 %mul.i, %conv.i.us.4
  %idxprom.i.us.4 = sext i32 %add.i.us.4 to i64
  %arrayidx.i.us.4 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.4
  store float 0.000000e+00, float* %arrayidx.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.4

if.end.i.us.4:                                    ; preds = %if.then.i.us.4, %if.end.i.us.3
  br i1 %cmp4.i.us.5, label %if.then.i.us.5, label %if.end.i.us.5

if.then.i.us.5:                                   ; preds = %if.end.i.us.4
  %add.i.us.5 = add nsw i32 %mul.i, %conv.i.us.5
  %idxprom.i.us.5 = sext i32 %add.i.us.5 to i64
  %arrayidx.i.us.5 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.5
  store float 0.000000e+00, float* %arrayidx.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.5

if.end.i.us.5:                                    ; preds = %if.then.i.us.5, %if.end.i.us.4
  br i1 %cmp4.i.us.6, label %if.then.i.us.6, label %if.end.i.us.6

if.then.i.us.6:                                   ; preds = %if.end.i.us.5
  %add.i.us.6 = add nsw i32 %mul.i, %conv.i.us.6
  %idxprom.i.us.6 = sext i32 %add.i.us.6 to i64
  %arrayidx.i.us.6 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.6
  store float 0.000000e+00, float* %arrayidx.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.6

if.end.i.us.6:                                    ; preds = %if.then.i.us.6, %if.end.i.us.5
  br i1 %cmp4.i.us.7, label %if.then.i.us.7, label %if.end.i.us.7

if.then.i.us.7:                                   ; preds = %if.end.i.us.6
  %add.i.us.7 = add nsw i32 %mul.i, %conv.i.us.7
  %idxprom.i.us.7 = sext i32 %add.i.us.7 to i64
  %arrayidx.i.us.7 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.7
  store float 0.000000e+00, float* %arrayidx.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.7

if.end.i.us.7:                                    ; preds = %if.then.i.us.7, %if.end.i.us.6
  br i1 %cmp4.i.us.8, label %if.then.i.us.8, label %if.end.i.us.8

if.then.i.us.8:                                   ; preds = %if.end.i.us.7
  %add.i.us.8 = add nsw i32 %mul.i, %conv.i.us.8
  %idxprom.i.us.8 = sext i32 %add.i.us.8 to i64
  %arrayidx.i.us.8 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.8
  store float 0.000000e+00, float* %arrayidx.i.us.8, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.8

if.end.i.us.8:                                    ; preds = %if.then.i.us.8, %if.end.i.us.7
  br i1 %cmp4.i.us.9, label %if.then.i.us.9, label %if.end.i.us.9

if.then.i.us.9:                                   ; preds = %if.end.i.us.8
  %add.i.us.9 = add nsw i32 %mul.i, %conv.i.us.9
  %idxprom.i.us.9 = sext i32 %add.i.us.9 to i64
  %arrayidx.i.us.9 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.9
  store float 0.000000e+00, float* %arrayidx.i.us.9, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.9

if.end.i.us.9:                                    ; preds = %if.then.i.us.9, %if.end.i.us.8
  br i1 %cmp4.i.us.10, label %if.then.i.us.10, label %if.end.i.us.10

if.then.i.us.10:                                  ; preds = %if.end.i.us.9
  %add.i.us.10 = add nsw i32 %mul.i, %conv.i.us.10
  %idxprom.i.us.10 = sext i32 %add.i.us.10 to i64
  %arrayidx.i.us.10 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.10
  store float 0.000000e+00, float* %arrayidx.i.us.10, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.10

if.end.i.us.10:                                   ; preds = %if.then.i.us.10, %if.end.i.us.9
  br i1 %cmp4.i.us.11, label %if.then.i.us.11, label %if.end.i.us.11

if.then.i.us.11:                                  ; preds = %if.end.i.us.10
  %add.i.us.11 = add nsw i32 %mul.i, %conv.i.us.11
  %idxprom.i.us.11 = sext i32 %add.i.us.11 to i64
  %arrayidx.i.us.11 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.11
  store float 0.000000e+00, float* %arrayidx.i.us.11, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.11

if.end.i.us.11:                                   ; preds = %if.then.i.us.11, %if.end.i.us.10
  br i1 %cmp4.i.us.12, label %if.then.i.us.12, label %if.end.i.us.12

if.then.i.us.12:                                  ; preds = %if.end.i.us.11
  %add.i.us.12 = add nsw i32 %mul.i, %conv.i.us.12
  %idxprom.i.us.12 = sext i32 %add.i.us.12 to i64
  %arrayidx.i.us.12 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.12
  store float 0.000000e+00, float* %arrayidx.i.us.12, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.12

if.end.i.us.12:                                   ; preds = %if.then.i.us.12, %if.end.i.us.11
  br i1 %cmp4.i.us.13, label %if.then.i.us.13, label %if.end.i.us.13

if.then.i.us.13:                                  ; preds = %if.end.i.us.12
  %add.i.us.13 = add nsw i32 %mul.i, %conv.i.us.13
  %idxprom.i.us.13 = sext i32 %add.i.us.13 to i64
  %arrayidx.i.us.13 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.13
  store float 0.000000e+00, float* %arrayidx.i.us.13, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.13

if.end.i.us.13:                                   ; preds = %if.then.i.us.13, %if.end.i.us.12
  br i1 %cmp4.i.us.14, label %if.then.i.us.14, label %if.end.i.us.14

if.then.i.us.14:                                  ; preds = %if.end.i.us.13
  %add.i.us.14 = add nsw i32 %mul.i, %conv.i.us.14
  %idxprom.i.us.14 = sext i32 %add.i.us.14 to i64
  %arrayidx.i.us.14 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.14
  store float 0.000000e+00, float* %arrayidx.i.us.14, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.14

if.end.i.us.14:                                   ; preds = %if.then.i.us.14, %if.end.i.us.13
  br i1 %cmp4.i.us.15, label %if.then.i.us.15, label %if.end.i.us.15

if.then.i.us.15:                                  ; preds = %if.end.i.us.14
  %add.i.us.15 = add nsw i32 %mul.i, %conv.i.us.15
  %idxprom.i.us.15 = sext i32 %add.i.us.15 to i64
  %arrayidx.i.us.15 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.15
  store float 0.000000e+00, float* %arrayidx.i.us.15, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.15

if.end.i.us.15:                                   ; preds = %if.then.i.us.15, %if.end.i.us.14
  br i1 %cmp4.i.us.16, label %if.then.i.us.16, label %if.end.i.us.16

if.then.i.us.16:                                  ; preds = %if.end.i.us.15
  %add.i.us.16 = add nsw i32 %mul.i, %conv.i.us.16
  %idxprom.i.us.16 = sext i32 %add.i.us.16 to i64
  %arrayidx.i.us.16 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.16
  store float 0.000000e+00, float* %arrayidx.i.us.16, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.16

if.end.i.us.16:                                   ; preds = %if.then.i.us.16, %if.end.i.us.15
  br i1 %cmp4.i.us.17, label %if.then.i.us.17, label %if.end.i.us.17

if.then.i.us.17:                                  ; preds = %if.end.i.us.16
  %add.i.us.17 = add nsw i32 %mul.i, %conv.i.us.17
  %idxprom.i.us.17 = sext i32 %add.i.us.17 to i64
  %arrayidx.i.us.17 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.17
  store float 0.000000e+00, float* %arrayidx.i.us.17, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.17

if.end.i.us.17:                                   ; preds = %if.then.i.us.17, %if.end.i.us.16
  br i1 %cmp4.i.us.18, label %if.then.i.us.18, label %if.end.i.us.18

if.then.i.us.18:                                  ; preds = %if.end.i.us.17
  %add.i.us.18 = add nsw i32 %mul.i, %conv.i.us.18
  %idxprom.i.us.18 = sext i32 %add.i.us.18 to i64
  %arrayidx.i.us.18 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.18
  store float 0.000000e+00, float* %arrayidx.i.us.18, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.18

if.end.i.us.18:                                   ; preds = %if.then.i.us.18, %if.end.i.us.17
  br i1 %cmp4.i.us.19, label %if.then.i.us.19, label %if.end.i.us.19

if.then.i.us.19:                                  ; preds = %if.end.i.us.18
  %add.i.us.19 = add nsw i32 %mul.i, %conv.i.us.19
  %idxprom.i.us.19 = sext i32 %add.i.us.19 to i64
  %arrayidx.i.us.19 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.19
  store float 0.000000e+00, float* %arrayidx.i.us.19, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.19

if.end.i.us.19:                                   ; preds = %if.then.i.us.19, %if.end.i.us.18
  br i1 %cmp4.i.us.20, label %if.then.i.us.20, label %if.end.i.us.20

if.then.i.us.20:                                  ; preds = %if.end.i.us.19
  %add.i.us.20 = add nsw i32 %mul.i, %conv.i.us.20
  %idxprom.i.us.20 = sext i32 %add.i.us.20 to i64
  %arrayidx.i.us.20 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.20
  store float 0.000000e+00, float* %arrayidx.i.us.20, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.20

if.end.i.us.20:                                   ; preds = %if.then.i.us.20, %if.end.i.us.19
  br i1 %cmp4.i.us.21, label %if.then.i.us.21, label %if.end.i.us.21

if.then.i.us.21:                                  ; preds = %if.end.i.us.20
  %add.i.us.21 = add nsw i32 %mul.i, %conv.i.us.21
  %idxprom.i.us.21 = sext i32 %add.i.us.21 to i64
  %arrayidx.i.us.21 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.21
  store float 0.000000e+00, float* %arrayidx.i.us.21, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.21

if.end.i.us.21:                                   ; preds = %if.then.i.us.21, %if.end.i.us.20
  br i1 %cmp4.i.us.22, label %if.then.i.us.22, label %if.end.i.us.22

if.then.i.us.22:                                  ; preds = %if.end.i.us.21
  %add.i.us.22 = add nsw i32 %mul.i, %conv.i.us.22
  %idxprom.i.us.22 = sext i32 %add.i.us.22 to i64
  %arrayidx.i.us.22 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.22
  store float 0.000000e+00, float* %arrayidx.i.us.22, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.22

if.end.i.us.22:                                   ; preds = %if.then.i.us.22, %if.end.i.us.21
  br i1 %cmp4.i.us.23, label %if.then.i.us.23, label %if.end.i.us.23

if.then.i.us.23:                                  ; preds = %if.end.i.us.22
  %add.i.us.23 = add nsw i32 %mul.i, %conv.i.us.23
  %idxprom.i.us.23 = sext i32 %add.i.us.23 to i64
  %arrayidx.i.us.23 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.23
  store float 0.000000e+00, float* %arrayidx.i.us.23, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.23

if.end.i.us.23:                                   ; preds = %if.then.i.us.23, %if.end.i.us.22
  br i1 %cmp4.i.us.24, label %if.then.i.us.24, label %if.end.i.us.24

if.then.i.us.24:                                  ; preds = %if.end.i.us.23
  %add.i.us.24 = add nsw i32 %mul.i, %conv.i.us.24
  %idxprom.i.us.24 = sext i32 %add.i.us.24 to i64
  %arrayidx.i.us.24 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.24
  store float 0.000000e+00, float* %arrayidx.i.us.24, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.24

if.end.i.us.24:                                   ; preds = %if.then.i.us.24, %if.end.i.us.23
  br i1 %cmp4.i.us.25, label %if.then.i.us.25, label %if.end.i.us.25

if.then.i.us.25:                                  ; preds = %if.end.i.us.24
  %add.i.us.25 = add nsw i32 %mul.i, %conv.i.us.25
  %idxprom.i.us.25 = sext i32 %add.i.us.25 to i64
  %arrayidx.i.us.25 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.25
  store float 0.000000e+00, float* %arrayidx.i.us.25, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.25

if.end.i.us.25:                                   ; preds = %if.then.i.us.25, %if.end.i.us.24
  br i1 %cmp4.i.us.26, label %if.then.i.us.26, label %if.end.i.us.26

if.then.i.us.26:                                  ; preds = %if.end.i.us.25
  %add.i.us.26 = add nsw i32 %mul.i, %conv.i.us.26
  %idxprom.i.us.26 = sext i32 %add.i.us.26 to i64
  %arrayidx.i.us.26 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.26
  store float 0.000000e+00, float* %arrayidx.i.us.26, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.26

if.end.i.us.26:                                   ; preds = %if.then.i.us.26, %if.end.i.us.25
  br i1 %cmp4.i.us.27, label %if.then.i.us.27, label %if.end.i.us.27

if.then.i.us.27:                                  ; preds = %if.end.i.us.26
  %add.i.us.27 = add nsw i32 %mul.i, %conv.i.us.27
  %idxprom.i.us.27 = sext i32 %add.i.us.27 to i64
  %arrayidx.i.us.27 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.27
  store float 0.000000e+00, float* %arrayidx.i.us.27, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.27

if.end.i.us.27:                                   ; preds = %if.then.i.us.27, %if.end.i.us.26
  br i1 %cmp4.i.us.28, label %if.then.i.us.28, label %if.end.i.us.28

if.then.i.us.28:                                  ; preds = %if.end.i.us.27
  %add.i.us.28 = add nsw i32 %mul.i, %conv.i.us.28
  %idxprom.i.us.28 = sext i32 %add.i.us.28 to i64
  %arrayidx.i.us.28 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.28
  store float 0.000000e+00, float* %arrayidx.i.us.28, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.28

if.end.i.us.28:                                   ; preds = %if.then.i.us.28, %if.end.i.us.27
  br i1 %cmp4.i.us.29, label %if.then.i.us.29, label %if.end.i.us.29

if.then.i.us.29:                                  ; preds = %if.end.i.us.28
  %add.i.us.29 = add nsw i32 %mul.i, %conv.i.us.29
  %idxprom.i.us.29 = sext i32 %add.i.us.29 to i64
  %arrayidx.i.us.29 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.29
  store float 0.000000e+00, float* %arrayidx.i.us.29, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.29

if.end.i.us.29:                                   ; preds = %if.then.i.us.29, %if.end.i.us.28
  br i1 %cmp4.i.us.30, label %if.then.i.us.30, label %if.end.i.us.30

if.then.i.us.30:                                  ; preds = %if.end.i.us.29
  %add.i.us.30 = add nsw i32 %mul.i, %conv.i.us.30
  %idxprom.i.us.30 = sext i32 %add.i.us.30 to i64
  %arrayidx.i.us.30 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.30
  store float 0.000000e+00, float* %arrayidx.i.us.30, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.30

if.end.i.us.30:                                   ; preds = %if.then.i.us.30, %if.end.i.us.29
  br i1 %cmp4.i.us.31, label %if.then.i.us.31, label %pregion_for_end.i

if.then.i.us.31:                                  ; preds = %if.end.i.us.30
  %add.i.us.31 = add nsw i32 %mul.i, %conv.i.us.31
  %idxprom.i.us.31 = sext i32 %add.i.us.31 to i64
  %arrayidx.i.us.31 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.31
  store float 0.000000e+00, float* %arrayidx.i.us.31, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i

if.then.i.us.us.7.1:                              ; preds = %if.end.i.us.us.7
  %add.i.us.us.7.1 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7.1
  %idxprom.i.us.us.7.1 = sext i32 %add.i.us.us.7.1 to i64
  %arrayidx.i.us.us.7.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7.1 = shl i64 %add1.i.i.us.us.7.1, 32
  %134 = ashr exact i64 %sext.i.us.us.7.1, 32
  br label %for.body.i.us.us.7.1

for.body.i.us.us.7.1:                             ; preds = %for.body.i.us.us.7.1, %if.then.i.us.us.7.1
  %indvars.iv.next.i3.us.us.7.1 = phi i64 [ %indvars.iv.next.i.us.us.7.1, %for.body.i.us.us.7.1 ], [ 0, %if.then.i.us.us.7.1 ]
  %135 = phi float [ %141, %for.body.i.us.us.7.1 ], [ 0.000000e+00, %if.then.i.us.us.7.1 ]
  %136 = add nsw i64 %indvars.iv.next.i3.us.us.7.1, %124
  %arrayidx11.i.us.us.7.1 = getelementptr inbounds float, float* %1, i64 %136
  %137 = load float, float* %arrayidx11.i.us.us.7.1, align 4, !tbaa !12
  %mul12.i.us.us.7.1 = fmul float %137, %7
  %138 = mul nsw i64 %indvars.iv.next.i3.us.us.7.1, %14
  %139 = add nsw i64 %138, %134
  %arrayidx16.i.us.us.7.1 = getelementptr inbounds float, float* %2, i64 %139
  %140 = load float, float* %arrayidx16.i.us.us.7.1, align 4, !tbaa !12
  %141 = tail call float @llvm.fmuladd.f32(float %mul12.i.us.us.7.1, float %140, float %135) #2
  store float %141, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.7.1, 1
  %exitcond.not.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.us.us.7.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7.1, label %if.end.i.us.us.7.1.loopexit, label %for.body.i.us.us.7.1, !llvm.loop !19

if.end.i.us.us.7.1.loopexit:                      ; preds = %for.body.i.us.us.7.1
  br label %if.end.i.us.us.7.1

if.end.i.us.us.7.1:                               ; preds = %if.end.i.us.us.7.1.loopexit, %if.end.i.us.us.7
  %142 = add nuw nsw i64 %_local_id_x.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %142, 32
  br i1 %exitcond.7.not.1, label %mm2_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.us.us.7, !llvm.loop !23

if.then.i.us.us.6.1:                              ; preds = %if.end.i.us.us.6
  %add.i.us.us.6.1 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6.1
  %idxprom.i.us.us.6.1 = sext i32 %add.i.us.us.6.1 to i64
  %arrayidx.i.us.us.6.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6.1 = shl i64 %add1.i.i.us.us.6.1, 32
  %143 = ashr exact i64 %sext.i.us.us.6.1, 32
  br label %for.body.i.us.us.6.1

for.body.i.us.us.6.1:                             ; preds = %for.body.i.us.us.6.1, %if.then.i.us.us.6.1
  %indvars.iv.next.i3.us.us.6.1 = phi i64 [ %indvars.iv.next.i.us.us.6.1, %for.body.i.us.us.6.1 ], [ 0, %if.then.i.us.us.6.1 ]
  %144 = phi float [ %150, %for.body.i.us.us.6.1 ], [ 0.000000e+00, %if.then.i.us.us.6.1 ]
  %145 = add nsw i64 %indvars.iv.next.i3.us.us.6.1, %113
  %arrayidx11.i.us.us.6.1 = getelementptr inbounds float, float* %1, i64 %145
  %146 = load float, float* %arrayidx11.i.us.us.6.1, align 4, !tbaa !12
  %mul12.i.us.us.6.1 = fmul float %146, %7
  %147 = mul nsw i64 %indvars.iv.next.i3.us.us.6.1, %14
  %148 = add nsw i64 %147, %143
  %arrayidx16.i.us.us.6.1 = getelementptr inbounds float, float* %2, i64 %148
  %149 = load float, float* %arrayidx16.i.us.us.6.1, align 4, !tbaa !12
  %150 = tail call float @llvm.fmuladd.f32(float %mul12.i.us.us.6.1, float %149, float %144) #2
  store float %150, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.6.1, 1
  %exitcond.not.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.us.us.6.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6.1, label %if.end.i.us.us.6.1.loopexit, label %for.body.i.us.us.6.1, !llvm.loop !19

if.end.i.us.us.6.1.loopexit:                      ; preds = %for.body.i.us.us.6.1
  br label %if.end.i.us.us.6.1

if.end.i.us.us.6.1:                               ; preds = %if.end.i.us.us.6.1.loopexit, %if.end.i.us.us.6
  %151 = add nuw nsw i64 %_local_id_x.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %151, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.us.6.loopexit, label %pregion_for_entry.entry.i.us.us.6, !llvm.loop !23

if.then.i.us.us.5.1:                              ; preds = %if.end.i.us.us.5
  %add.i.us.us.5.1 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5.1
  %idxprom.i.us.us.5.1 = sext i32 %add.i.us.us.5.1 to i64
  %arrayidx.i.us.us.5.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5.1 = shl i64 %add1.i.i.us.us.5.1, 32
  %152 = ashr exact i64 %sext.i.us.us.5.1, 32
  br label %for.body.i.us.us.5.1

for.body.i.us.us.5.1:                             ; preds = %for.body.i.us.us.5.1, %if.then.i.us.us.5.1
  %indvars.iv.next.i3.us.us.5.1 = phi i64 [ %indvars.iv.next.i.us.us.5.1, %for.body.i.us.us.5.1 ], [ 0, %if.then.i.us.us.5.1 ]
  %153 = phi float [ %159, %for.body.i.us.us.5.1 ], [ 0.000000e+00, %if.then.i.us.us.5.1 ]
  %154 = add nsw i64 %indvars.iv.next.i3.us.us.5.1, %102
  %arrayidx11.i.us.us.5.1 = getelementptr inbounds float, float* %1, i64 %154
  %155 = load float, float* %arrayidx11.i.us.us.5.1, align 4, !tbaa !12
  %mul12.i.us.us.5.1 = fmul float %155, %7
  %156 = mul nsw i64 %indvars.iv.next.i3.us.us.5.1, %14
  %157 = add nsw i64 %156, %152
  %arrayidx16.i.us.us.5.1 = getelementptr inbounds float, float* %2, i64 %157
  %158 = load float, float* %arrayidx16.i.us.us.5.1, align 4, !tbaa !12
  %159 = tail call float @llvm.fmuladd.f32(float %mul12.i.us.us.5.1, float %158, float %153) #2
  store float %159, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.5.1, 1
  %exitcond.not.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.us.us.5.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5.1, label %if.end.i.us.us.5.1.loopexit, label %for.body.i.us.us.5.1, !llvm.loop !19

if.end.i.us.us.5.1.loopexit:                      ; preds = %for.body.i.us.us.5.1
  br label %if.end.i.us.us.5.1

if.end.i.us.us.5.1:                               ; preds = %if.end.i.us.us.5.1.loopexit, %if.end.i.us.us.5
  %160 = add nuw nsw i64 %_local_id_x.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %160, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.us.5.loopexit, label %pregion_for_entry.entry.i.us.us.5, !llvm.loop !23

if.then.i.us.us.4.1:                              ; preds = %if.end.i.us.us.4
  %add.i.us.us.4.1 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4.1
  %idxprom.i.us.us.4.1 = sext i32 %add.i.us.us.4.1 to i64
  %arrayidx.i.us.us.4.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4.1 = shl i64 %add1.i.i.us.us.4.1, 32
  %161 = ashr exact i64 %sext.i.us.us.4.1, 32
  br label %for.body.i.us.us.4.1

for.body.i.us.us.4.1:                             ; preds = %for.body.i.us.us.4.1, %if.then.i.us.us.4.1
  %indvars.iv.next.i3.us.us.4.1 = phi i64 [ %indvars.iv.next.i.us.us.4.1, %for.body.i.us.us.4.1 ], [ 0, %if.then.i.us.us.4.1 ]
  %162 = phi float [ %168, %for.body.i.us.us.4.1 ], [ 0.000000e+00, %if.then.i.us.us.4.1 ]
  %163 = add nsw i64 %indvars.iv.next.i3.us.us.4.1, %91
  %arrayidx11.i.us.us.4.1 = getelementptr inbounds float, float* %1, i64 %163
  %164 = load float, float* %arrayidx11.i.us.us.4.1, align 4, !tbaa !12
  %mul12.i.us.us.4.1 = fmul float %164, %7
  %165 = mul nsw i64 %indvars.iv.next.i3.us.us.4.1, %14
  %166 = add nsw i64 %165, %161
  %arrayidx16.i.us.us.4.1 = getelementptr inbounds float, float* %2, i64 %166
  %167 = load float, float* %arrayidx16.i.us.us.4.1, align 4, !tbaa !12
  %168 = tail call float @llvm.fmuladd.f32(float %mul12.i.us.us.4.1, float %167, float %162) #2
  store float %168, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.4.1, 1
  %exitcond.not.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.us.us.4.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4.1, label %if.end.i.us.us.4.1.loopexit, label %for.body.i.us.us.4.1, !llvm.loop !19

if.end.i.us.us.4.1.loopexit:                      ; preds = %for.body.i.us.us.4.1
  br label %if.end.i.us.us.4.1

if.end.i.us.us.4.1:                               ; preds = %if.end.i.us.us.4.1.loopexit, %if.end.i.us.us.4
  %169 = add nuw nsw i64 %_local_id_x.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %169, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.us.4.loopexit, label %pregion_for_entry.entry.i.us.us.4, !llvm.loop !23

if.then.i.us.us.3.1:                              ; preds = %if.end.i.us.us.3
  %add.i.us.us.3.1 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3.1
  %idxprom.i.us.us.3.1 = sext i32 %add.i.us.us.3.1 to i64
  %arrayidx.i.us.us.3.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3.1 = shl i64 %add1.i.i.us.us.3.1, 32
  %170 = ashr exact i64 %sext.i.us.us.3.1, 32
  br label %for.body.i.us.us.3.1

for.body.i.us.us.3.1:                             ; preds = %for.body.i.us.us.3.1, %if.then.i.us.us.3.1
  %indvars.iv.next.i3.us.us.3.1 = phi i64 [ %indvars.iv.next.i.us.us.3.1, %for.body.i.us.us.3.1 ], [ 0, %if.then.i.us.us.3.1 ]
  %171 = phi float [ %177, %for.body.i.us.us.3.1 ], [ 0.000000e+00, %if.then.i.us.us.3.1 ]
  %172 = add nsw i64 %indvars.iv.next.i3.us.us.3.1, %80
  %arrayidx11.i.us.us.3.1 = getelementptr inbounds float, float* %1, i64 %172
  %173 = load float, float* %arrayidx11.i.us.us.3.1, align 4, !tbaa !12
  %mul12.i.us.us.3.1 = fmul float %173, %7
  %174 = mul nsw i64 %indvars.iv.next.i3.us.us.3.1, %14
  %175 = add nsw i64 %174, %170
  %arrayidx16.i.us.us.3.1 = getelementptr inbounds float, float* %2, i64 %175
  %176 = load float, float* %arrayidx16.i.us.us.3.1, align 4, !tbaa !12
  %177 = tail call float @llvm.fmuladd.f32(float %mul12.i.us.us.3.1, float %176, float %171) #2
  store float %177, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.3.1, 1
  %exitcond.not.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.us.us.3.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3.1, label %if.end.i.us.us.3.1.loopexit, label %for.body.i.us.us.3.1, !llvm.loop !19

if.end.i.us.us.3.1.loopexit:                      ; preds = %for.body.i.us.us.3.1
  br label %if.end.i.us.us.3.1

if.end.i.us.us.3.1:                               ; preds = %if.end.i.us.us.3.1.loopexit, %if.end.i.us.us.3
  %178 = add nuw nsw i64 %_local_id_x.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %178, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.us.3.loopexit, label %pregion_for_entry.entry.i.us.us.3, !llvm.loop !23

if.then.i.us.us.2.1:                              ; preds = %if.end.i.us.us.2
  %add.i.us.us.2.1 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2.1
  %idxprom.i.us.us.2.1 = sext i32 %add.i.us.us.2.1 to i64
  %arrayidx.i.us.us.2.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2.1 = shl i64 %add1.i.i.us.us.2.1, 32
  %179 = ashr exact i64 %sext.i.us.us.2.1, 32
  br label %for.body.i.us.us.2.1

for.body.i.us.us.2.1:                             ; preds = %for.body.i.us.us.2.1, %if.then.i.us.us.2.1
  %indvars.iv.next.i3.us.us.2.1 = phi i64 [ %indvars.iv.next.i.us.us.2.1, %for.body.i.us.us.2.1 ], [ 0, %if.then.i.us.us.2.1 ]
  %180 = phi float [ %186, %for.body.i.us.us.2.1 ], [ 0.000000e+00, %if.then.i.us.us.2.1 ]
  %181 = add nsw i64 %indvars.iv.next.i3.us.us.2.1, %69
  %arrayidx11.i.us.us.2.1 = getelementptr inbounds float, float* %1, i64 %181
  %182 = load float, float* %arrayidx11.i.us.us.2.1, align 4, !tbaa !12
  %mul12.i.us.us.2.1 = fmul float %182, %7
  %183 = mul nsw i64 %indvars.iv.next.i3.us.us.2.1, %14
  %184 = add nsw i64 %183, %179
  %arrayidx16.i.us.us.2.1 = getelementptr inbounds float, float* %2, i64 %184
  %185 = load float, float* %arrayidx16.i.us.us.2.1, align 4, !tbaa !12
  %186 = tail call float @llvm.fmuladd.f32(float %mul12.i.us.us.2.1, float %185, float %180) #2
  store float %186, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.2.1, 1
  %exitcond.not.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.us.us.2.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2.1, label %if.end.i.us.us.2.1.loopexit, label %for.body.i.us.us.2.1, !llvm.loop !19

if.end.i.us.us.2.1.loopexit:                      ; preds = %for.body.i.us.us.2.1
  br label %if.end.i.us.us.2.1

if.end.i.us.us.2.1:                               ; preds = %if.end.i.us.us.2.1.loopexit, %if.end.i.us.us.2
  %187 = add nuw nsw i64 %_local_id_x.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %187, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.us.2.loopexit, label %pregion_for_entry.entry.i.us.us.2, !llvm.loop !23

if.then.i.us.us.1.1:                              ; preds = %if.end.i.us.us.1
  %add.i.us.us.1.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1.1
  %idxprom.i.us.us.1.1 = sext i32 %add.i.us.us.1.1 to i64
  %arrayidx.i.us.us.1.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1.1 = shl i64 %add1.i.i.us.us.1.1, 32
  %188 = ashr exact i64 %sext.i.us.us.1.1, 32
  br label %for.body.i.us.us.1.1

for.body.i.us.us.1.1:                             ; preds = %for.body.i.us.us.1.1, %if.then.i.us.us.1.1
  %indvars.iv.next.i3.us.us.1.1 = phi i64 [ %indvars.iv.next.i.us.us.1.1, %for.body.i.us.us.1.1 ], [ 0, %if.then.i.us.us.1.1 ]
  %189 = phi float [ %195, %for.body.i.us.us.1.1 ], [ 0.000000e+00, %if.then.i.us.us.1.1 ]
  %190 = add nsw i64 %indvars.iv.next.i3.us.us.1.1, %48
  %arrayidx11.i.us.us.1.1 = getelementptr inbounds float, float* %1, i64 %190
  %191 = load float, float* %arrayidx11.i.us.us.1.1, align 4, !tbaa !12
  %mul12.i.us.us.1.1 = fmul float %191, %7
  %192 = mul nsw i64 %indvars.iv.next.i3.us.us.1.1, %14
  %193 = add nsw i64 %192, %188
  %arrayidx16.i.us.us.1.1 = getelementptr inbounds float, float* %2, i64 %193
  %194 = load float, float* %arrayidx16.i.us.us.1.1, align 4, !tbaa !12
  %195 = tail call float @llvm.fmuladd.f32(float %mul12.i.us.us.1.1, float %194, float %189) #2
  store float %195, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.1.1, 1
  %exitcond.not.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.us.us.1.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1.1, label %if.end.i.us.us.1.1.loopexit, label %for.body.i.us.us.1.1, !llvm.loop !19

if.end.i.us.us.1.1.loopexit:                      ; preds = %for.body.i.us.us.1.1
  br label %if.end.i.us.us.1.1

if.end.i.us.us.1.1:                               ; preds = %if.end.i.us.us.1.1.loopexit, %if.end.i.us.us.1
  %196 = add nuw nsw i64 %_local_id_x.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %196, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.us.1.loopexit, label %pregion_for_entry.entry.i.us.us.1, !llvm.loop !23

if.then.i.us.us.147:                              ; preds = %if.end.i.us.us
  %add.i.us.us.143 = add nsw i32 %mul.i.us, %conv.i.us.us.140
  %idxprom.i.us.us.144 = sext i32 %add.i.us.us.143 to i64
  %arrayidx.i.us.us.145 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.144
  store float 0.000000e+00, float* %arrayidx.i.us.us.145, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.146 = shl i64 %add1.i.i.us.us.139, 32
  %197 = ashr exact i64 %sext.i.us.us.146, 32
  br label %for.body.i.us.us.154

for.body.i.us.us.154:                             ; preds = %for.body.i.us.us.154, %if.then.i.us.us.147
  %indvars.iv.next.i3.us.us.148 = phi i64 [ %indvars.iv.next.i.us.us.152, %for.body.i.us.us.154 ], [ 0, %if.then.i.us.us.147 ]
  %198 = phi float [ %204, %for.body.i.us.us.154 ], [ 0.000000e+00, %if.then.i.us.us.147 ]
  %199 = add nsw i64 %indvars.iv.next.i3.us.us.148, %46
  %arrayidx11.i.us.us.149 = getelementptr inbounds float, float* %1, i64 %199
  %200 = load float, float* %arrayidx11.i.us.us.149, align 4, !tbaa !12
  %mul12.i.us.us.150 = fmul float %200, %7
  %201 = mul nsw i64 %indvars.iv.next.i3.us.us.148, %14
  %202 = add nsw i64 %201, %197
  %arrayidx16.i.us.us.151 = getelementptr inbounds float, float* %2, i64 %202
  %203 = load float, float* %arrayidx16.i.us.us.151, align 4, !tbaa !12
  %204 = tail call float @llvm.fmuladd.f32(float %mul12.i.us.us.150, float %203, float %198) #2
  store float %204, float* %arrayidx.i.us.us.145, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.152 = add nuw nsw i64 %indvars.iv.next.i3.us.us.148, 1
  %exitcond.not.i.us.us.153 = icmp eq i64 %indvars.iv.next.i.us.us.152, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.153, label %if.end.i.us.us.155.loopexit, label %for.body.i.us.us.154, !llvm.loop !19

if.end.i.us.us.155.loopexit:                      ; preds = %for.body.i.us.us.154
  br label %if.end.i.us.us.155

if.end.i.us.us.155:                               ; preds = %if.end.i.us.us.155.loopexit, %if.end.i.us.us
  %205 = add nuw nsw i64 %_local_id_x.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %205, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.us.loopexit, label %pregion_for_entry.entry.i.us.us, !llvm.loop !23
}

; Function Attrs: nounwind
define void @_pocl_kernel_mm2_kernel1_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float***
  %7 = load float**, float*** %6, align 8
  %8 = load float*, float** %7, align 8
  %9 = getelementptr i8*, i8** %0, i64 1
  %10 = bitcast i8** %9 to float***
  %11 = load float**, float*** %10, align 8
  %12 = load float*, float** %11, align 8
  %13 = getelementptr i8*, i8** %0, i64 2
  %14 = bitcast i8** %13 to float***
  %15 = load float**, float*** %14, align 8
  %16 = load float*, float** %15, align 8
  %17 = getelementptr i8*, i8** %0, i64 3
  %18 = bitcast i8** %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 4
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr i8*, i8** %0, i64 5
  %26 = bitcast i8** %25 to i32**
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr i8*, i8** %0, i64 7
  %30 = bitcast i8** %29 to float**
  %31 = load float*, float** %30, align 8
  %32 = load float, float* %31, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp639.i.i = icmp sgt i32 %28, 0
  %33 = sext i32 %24 to i64
  %wide.trip.count.i.i = zext i32 %28 to i64
  br i1 %cmp639.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  %conv.i.i.us = trunc i64 %mul.i.i.i to i32
  %cmp4.i.i.us = icmp sgt i32 %24, %conv.i.i.us
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.1 = or i32 %34, 1
  %cmp4.i.i.us.1 = icmp sgt i32 %24, %conv.i.i.us.1
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.2 = or i32 %35, 2
  %cmp4.i.i.us.2 = icmp sgt i32 %24, %conv.i.i.us.2
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.3 = or i32 %36, 3
  %cmp4.i.i.us.3 = icmp sgt i32 %24, %conv.i.i.us.3
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.4 = or i32 %37, 4
  %cmp4.i.i.us.4 = icmp sgt i32 %24, %conv.i.i.us.4
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.5 = or i32 %38, 5
  %cmp4.i.i.us.5 = icmp sgt i32 %24, %conv.i.i.us.5
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.6 = or i32 %39, 6
  %cmp4.i.i.us.6 = icmp sgt i32 %24, %conv.i.i.us.6
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.7 = or i32 %40, 7
  %cmp4.i.i.us.7 = icmp sgt i32 %24, %conv.i.i.us.7
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.8 = or i32 %41, 8
  %cmp4.i.i.us.8 = icmp sgt i32 %24, %conv.i.i.us.8
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.9 = or i32 %42, 9
  %cmp4.i.i.us.9 = icmp sgt i32 %24, %conv.i.i.us.9
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.10 = or i32 %43, 10
  %cmp4.i.i.us.10 = icmp sgt i32 %24, %conv.i.i.us.10
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.11 = or i32 %44, 11
  %cmp4.i.i.us.11 = icmp sgt i32 %24, %conv.i.i.us.11
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.12 = or i32 %45, 12
  %cmp4.i.i.us.12 = icmp sgt i32 %24, %conv.i.i.us.12
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.13 = or i32 %46, 13
  %cmp4.i.i.us.13 = icmp sgt i32 %24, %conv.i.i.us.13
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.14 = or i32 %47, 14
  %cmp4.i.i.us.14 = icmp sgt i32 %24, %conv.i.i.us.14
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.15 = or i32 %48, 15
  %cmp4.i.i.us.15 = icmp sgt i32 %24, %conv.i.i.us.15
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.16 = or i32 %49, 16
  %cmp4.i.i.us.16 = icmp sgt i32 %24, %conv.i.i.us.16
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.17 = or i32 %50, 17
  %cmp4.i.i.us.17 = icmp sgt i32 %24, %conv.i.i.us.17
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.18 = or i32 %51, 18
  %cmp4.i.i.us.18 = icmp sgt i32 %24, %conv.i.i.us.18
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.19 = or i32 %52, 19
  %cmp4.i.i.us.19 = icmp sgt i32 %24, %conv.i.i.us.19
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.20 = or i32 %53, 20
  %cmp4.i.i.us.20 = icmp sgt i32 %24, %conv.i.i.us.20
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.21 = or i32 %54, 21
  %cmp4.i.i.us.21 = icmp sgt i32 %24, %conv.i.i.us.21
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.22 = or i32 %55, 22
  %cmp4.i.i.us.22 = icmp sgt i32 %24, %conv.i.i.us.22
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.23 = or i32 %56, 23
  %cmp4.i.i.us.23 = icmp sgt i32 %24, %conv.i.i.us.23
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.24 = or i32 %57, 24
  %cmp4.i.i.us.24 = icmp sgt i32 %24, %conv.i.i.us.24
  %58 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.25 = or i32 %58, 25
  %cmp4.i.i.us.25 = icmp sgt i32 %24, %conv.i.i.us.25
  %59 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.26 = or i32 %59, 26
  %cmp4.i.i.us.26 = icmp sgt i32 %24, %conv.i.i.us.26
  %60 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.27 = or i32 %60, 27
  %cmp4.i.i.us.27 = icmp sgt i32 %24, %conv.i.i.us.27
  %61 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.28 = or i32 %61, 28
  %cmp4.i.i.us.28 = icmp sgt i32 %24, %conv.i.i.us.28
  %62 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.29 = or i32 %62, 29
  %cmp4.i.i.us.29 = icmp sgt i32 %24, %conv.i.i.us.29
  %63 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.30 = or i32 %63, 30
  %cmp4.i.i.us.30 = icmp sgt i32 %24, %conv.i.i.us.30
  %64 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.31 = or i32 %64, 31
  %cmp4.i.i.us.31 = icmp sgt i32 %24, %conv.i.i.us.31
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i.us = icmp sgt i32 %20, %conv2.i.i.us
  %mul.i.i.us = mul nsw i32 %24, %conv2.i.i.us
  %mul8.i.i.us = mul nsw i32 %28, %conv2.i.i.us
  %65 = sext i32 %mul8.i.i.us to i64
  br i1 %cmp.i.i.us, label %pregion_for_entry.entry.i.i.us.us.preheader, label %pregion_for_end.i.i.us

pregion_for_entry.entry.i.i.us.us.preheader:      ; preds = %pregion_for_entry.pregion_for_init.i.i.us.preheader
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_end.i.i.us.loopexit:                  ; preds = %if.end.i.i.us.us.155
  br label %pregion_for_end.i.i.us

pregion_for_end.i.i.us:                           ; preds = %pregion_for_end.i.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %66 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %66, 1
  %cmp.i.i.us.1 = icmp sgt i32 %20, %conv2.i.i.us.1
  %mul.i.i.us.1 = mul nsw i32 %24, %conv2.i.i.us.1
  %mul8.i.i.us.1 = mul nsw i32 %28, %conv2.i.i.us.1
  %67 = sext i32 %mul8.i.i.us.1 to i64
  br i1 %cmp.i.i.us.1, label %pregion_for_entry.entry.i.i.us.us.1.preheader, label %pregion_for_end.i.i.us.1

pregion_for_entry.entry.i.i.us.us.1.preheader:    ; preds = %pregion_for_end.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.entry.i.i.us.us:                ; preds = %if.end.i.i.us.us.155, %pregion_for_entry.entry.i.i.us.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ %224, %if.end.i.i.us.us.155 ], [ 0, %pregion_for_entry.entry.i.i.us.us.preheader ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %cmp4.i.i.us.us = icmp sgt i32 %24, %conv.i.i.us.us
  br i1 %cmp4.i.i.us.us, label %if.then.i.i.us.us, label %if.end.i.i.us.us

if.then.i.i.us.us:                                ; preds = %pregion_for_entry.entry.i.i.us.us
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %68 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

if.end.i.i.us.us.loopexit:                        ; preds = %for.body.i.i.us.us
  br label %if.end.i.i.us.us

if.end.i.i.us.us:                                 ; preds = %if.end.i.i.us.us.loopexit, %pregion_for_entry.entry.i.i.us.us
  %69 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.139 = add nuw nsw i64 %69, %mul.i.i.i
  %conv.i.i.us.us.140 = trunc i64 %add1.i.i.i.us.us.139 to i32
  %cmp4.i.i.us.us.141 = icmp sgt i32 %24, %conv.i.i.us.us.140
  br i1 %cmp4.i.i.us.us.141, label %if.then.i.i.us.us.147, label %if.end.i.i.us.us.155

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %if.then.i.i.us.us
  %indvars.iv.next.i.i3.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %if.then.i.i.us.us ]
  %70 = phi float [ %76, %for.body.i.i.us.us ], [ 0.000000e+00, %if.then.i.i.us.us ]
  %71 = add nsw i64 %indvars.iv.next.i.i3.us.us, %65
  %arrayidx11.i.i.us.us = getelementptr inbounds float, float* %12, i64 %71
  %72 = load float, float* %arrayidx11.i.i.us.us, align 4, !tbaa !12
  %mul12.i.i.us.us = fmul float %32, %72
  %73 = mul nsw i64 %indvars.iv.next.i.i3.us.us, %33
  %74 = add nsw i64 %73, %68
  %arrayidx16.i.i.us.us = getelementptr inbounds float, float* %16, i64 %74
  %75 = load float, float* %arrayidx16.i.i.us.us, align 4, !tbaa !12
  %76 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us, float %75, float %70) #2
  store float %76, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i3.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %if.end.i.i.us.us.loopexit, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader
  %_local_id_y.i.0 = phi i64 [ %77, %pregion_for_end.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %20, %conv2.i.i
  %mul.i.i = mul nsw i32 %24, %conv2.i.i
  br i1 %cmp.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %pregion_for_entry.pregion_for_init.i.i
  br i1 %cmp4.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us.preheader
  %add.i.i.us = add nsw i32 %mul.i.i, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  br i1 %cmp4.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

pregion_for_end.i.i:                              ; preds = %if.then.i.i.us.31, %if.end.i.i.us.30, %pregion_for_entry.pregion_for_init.i.i
  %77 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond34.not = icmp eq i64 %77, 8
  br i1 %exitcond34.not, label %_pocl_kernel_mm2_kernel1.exit.loopexit56, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !21

_pocl_kernel_mm2_kernel1.exit.loopexit:           ; preds = %if.end.i.i.us.us.7.1
  br label %_pocl_kernel_mm2_kernel1.exit

_pocl_kernel_mm2_kernel1.exit.loopexit56:         ; preds = %pregion_for_end.i.i
  br label %_pocl_kernel_mm2_kernel1.exit

_pocl_kernel_mm2_kernel1.exit:                    ; preds = %pregion_for_end.i.i.us.6, %_pocl_kernel_mm2_kernel1.exit.loopexit56, %_pocl_kernel_mm2_kernel1.exit.loopexit
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %if.end.i.i.us.us.1.1, %pregion_for_entry.entry.i.i.us.us.1.preheader
  %_local_id_x.i.0.us.us.1 = phi i64 [ %215, %if.end.i.i.us.us.1.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1.preheader ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %cmp4.i.i.us.us.1 = icmp sgt i32 %24, %conv.i.i.us.us.1
  br i1 %cmp4.i.i.us.us.1, label %if.then.i.i.us.us.1, label %if.end.i.i.us.us.1

if.then.i.i.us.us.1:                              ; preds = %pregion_for_entry.entry.i.i.us.us.1
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %78 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %if.then.i.i.us.us.1
  %indvars.iv.next.i.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %if.then.i.i.us.us.1 ]
  %79 = phi float [ %85, %for.body.i.i.us.us.1 ], [ 0.000000e+00, %if.then.i.i.us.us.1 ]
  %80 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %67
  %arrayidx11.i.i.us.us.1 = getelementptr inbounds float, float* %12, i64 %80
  %81 = load float, float* %arrayidx11.i.i.us.us.1, align 4, !tbaa !12
  %mul12.i.i.us.us.1 = fmul float %32, %81
  %82 = mul nsw i64 %indvars.iv.next.i.i3.us.us.1, %33
  %83 = add nsw i64 %82, %78
  %arrayidx16.i.i.us.us.1 = getelementptr inbounds float, float* %16, i64 %83
  %84 = load float, float* %arrayidx16.i.i.us.us.1, align 4, !tbaa !12
  %85 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.1, float %84, float %79) #2
  store float %85, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %if.end.i.i.us.us.1.loopexit, label %for.body.i.i.us.us.1, !llvm.loop !19

if.end.i.i.us.us.1.loopexit:                      ; preds = %for.body.i.i.us.us.1
  br label %if.end.i.i.us.us.1

if.end.i.i.us.us.1:                               ; preds = %if.end.i.i.us.us.1.loopexit, %pregion_for_entry.entry.i.i.us.us.1
  %86 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %86, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %cmp4.i.i.us.us.1.1 = icmp sgt i32 %24, %conv.i.i.us.us.1.1
  br i1 %cmp4.i.i.us.us.1.1, label %if.then.i.i.us.us.1.1, label %if.end.i.i.us.us.1.1

pregion_for_end.i.i.us.1.loopexit:                ; preds = %if.end.i.i.us.us.1.1
  br label %pregion_for_end.i.i.us.1

pregion_for_end.i.i.us.1:                         ; preds = %pregion_for_end.i.i.us.1.loopexit, %pregion_for_end.i.i.us
  %87 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %87, 2
  %cmp.i.i.us.2 = icmp sgt i32 %20, %conv2.i.i.us.2
  %mul.i.i.us.2 = mul nsw i32 %24, %conv2.i.i.us.2
  %mul8.i.i.us.2 = mul nsw i32 %28, %conv2.i.i.us.2
  %88 = sext i32 %mul8.i.i.us.2 to i64
  br i1 %cmp.i.i.us.2, label %pregion_for_entry.entry.i.i.us.us.2.preheader, label %pregion_for_end.i.i.us.2

pregion_for_entry.entry.i.i.us.us.2.preheader:    ; preds = %pregion_for_end.i.i.us.1
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %if.end.i.i.us.us.2.1, %pregion_for_entry.entry.i.i.us.us.2.preheader
  %_local_id_x.i.0.us.us.2 = phi i64 [ %206, %if.end.i.i.us.us.2.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2.preheader ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %cmp4.i.i.us.us.2 = icmp sgt i32 %24, %conv.i.i.us.us.2
  br i1 %cmp4.i.i.us.us.2, label %if.then.i.i.us.us.2, label %if.end.i.i.us.us.2

if.then.i.i.us.us.2:                              ; preds = %pregion_for_entry.entry.i.i.us.us.2
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %89 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %if.then.i.i.us.us.2
  %indvars.iv.next.i.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %if.then.i.i.us.us.2 ]
  %90 = phi float [ %96, %for.body.i.i.us.us.2 ], [ 0.000000e+00, %if.then.i.i.us.us.2 ]
  %91 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %88
  %arrayidx11.i.i.us.us.2 = getelementptr inbounds float, float* %12, i64 %91
  %92 = load float, float* %arrayidx11.i.i.us.us.2, align 4, !tbaa !12
  %mul12.i.i.us.us.2 = fmul float %32, %92
  %93 = mul nsw i64 %indvars.iv.next.i.i3.us.us.2, %33
  %94 = add nsw i64 %93, %89
  %arrayidx16.i.i.us.us.2 = getelementptr inbounds float, float* %16, i64 %94
  %95 = load float, float* %arrayidx16.i.i.us.us.2, align 4, !tbaa !12
  %96 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.2, float %95, float %90) #2
  store float %96, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %if.end.i.i.us.us.2.loopexit, label %for.body.i.i.us.us.2, !llvm.loop !19

if.end.i.i.us.us.2.loopexit:                      ; preds = %for.body.i.i.us.us.2
  br label %if.end.i.i.us.us.2

if.end.i.i.us.us.2:                               ; preds = %if.end.i.i.us.us.2.loopexit, %pregion_for_entry.entry.i.i.us.us.2
  %97 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %97, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %cmp4.i.i.us.us.2.1 = icmp sgt i32 %24, %conv.i.i.us.us.2.1
  br i1 %cmp4.i.i.us.us.2.1, label %if.then.i.i.us.us.2.1, label %if.end.i.i.us.us.2.1

pregion_for_end.i.i.us.2.loopexit:                ; preds = %if.end.i.i.us.us.2.1
  br label %pregion_for_end.i.i.us.2

pregion_for_end.i.i.us.2:                         ; preds = %pregion_for_end.i.i.us.2.loopexit, %pregion_for_end.i.i.us.1
  %98 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %98, 3
  %cmp.i.i.us.3 = icmp sgt i32 %20, %conv2.i.i.us.3
  %mul.i.i.us.3 = mul nsw i32 %24, %conv2.i.i.us.3
  %mul8.i.i.us.3 = mul nsw i32 %28, %conv2.i.i.us.3
  %99 = sext i32 %mul8.i.i.us.3 to i64
  br i1 %cmp.i.i.us.3, label %pregion_for_entry.entry.i.i.us.us.3.preheader, label %pregion_for_end.i.i.us.3

pregion_for_entry.entry.i.i.us.us.3.preheader:    ; preds = %pregion_for_end.i.i.us.2
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %if.end.i.i.us.us.3.1, %pregion_for_entry.entry.i.i.us.us.3.preheader
  %_local_id_x.i.0.us.us.3 = phi i64 [ %197, %if.end.i.i.us.us.3.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3.preheader ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %cmp4.i.i.us.us.3 = icmp sgt i32 %24, %conv.i.i.us.us.3
  br i1 %cmp4.i.i.us.us.3, label %if.then.i.i.us.us.3, label %if.end.i.i.us.us.3

if.then.i.i.us.us.3:                              ; preds = %pregion_for_entry.entry.i.i.us.us.3
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %100 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %if.then.i.i.us.us.3
  %indvars.iv.next.i.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %if.then.i.i.us.us.3 ]
  %101 = phi float [ %107, %for.body.i.i.us.us.3 ], [ 0.000000e+00, %if.then.i.i.us.us.3 ]
  %102 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %99
  %arrayidx11.i.i.us.us.3 = getelementptr inbounds float, float* %12, i64 %102
  %103 = load float, float* %arrayidx11.i.i.us.us.3, align 4, !tbaa !12
  %mul12.i.i.us.us.3 = fmul float %32, %103
  %104 = mul nsw i64 %indvars.iv.next.i.i3.us.us.3, %33
  %105 = add nsw i64 %104, %100
  %arrayidx16.i.i.us.us.3 = getelementptr inbounds float, float* %16, i64 %105
  %106 = load float, float* %arrayidx16.i.i.us.us.3, align 4, !tbaa !12
  %107 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.3, float %106, float %101) #2
  store float %107, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %if.end.i.i.us.us.3.loopexit, label %for.body.i.i.us.us.3, !llvm.loop !19

if.end.i.i.us.us.3.loopexit:                      ; preds = %for.body.i.i.us.us.3
  br label %if.end.i.i.us.us.3

if.end.i.i.us.us.3:                               ; preds = %if.end.i.i.us.us.3.loopexit, %pregion_for_entry.entry.i.i.us.us.3
  %108 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %108, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %cmp4.i.i.us.us.3.1 = icmp sgt i32 %24, %conv.i.i.us.us.3.1
  br i1 %cmp4.i.i.us.us.3.1, label %if.then.i.i.us.us.3.1, label %if.end.i.i.us.us.3.1

pregion_for_end.i.i.us.3.loopexit:                ; preds = %if.end.i.i.us.us.3.1
  br label %pregion_for_end.i.i.us.3

pregion_for_end.i.i.us.3:                         ; preds = %pregion_for_end.i.i.us.3.loopexit, %pregion_for_end.i.i.us.2
  %109 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %109, 4
  %cmp.i.i.us.4 = icmp sgt i32 %20, %conv2.i.i.us.4
  %mul.i.i.us.4 = mul nsw i32 %24, %conv2.i.i.us.4
  %mul8.i.i.us.4 = mul nsw i32 %28, %conv2.i.i.us.4
  %110 = sext i32 %mul8.i.i.us.4 to i64
  br i1 %cmp.i.i.us.4, label %pregion_for_entry.entry.i.i.us.us.4.preheader, label %pregion_for_end.i.i.us.4

pregion_for_entry.entry.i.i.us.us.4.preheader:    ; preds = %pregion_for_end.i.i.us.3
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %if.end.i.i.us.us.4.1, %pregion_for_entry.entry.i.i.us.us.4.preheader
  %_local_id_x.i.0.us.us.4 = phi i64 [ %188, %if.end.i.i.us.us.4.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4.preheader ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %cmp4.i.i.us.us.4 = icmp sgt i32 %24, %conv.i.i.us.us.4
  br i1 %cmp4.i.i.us.us.4, label %if.then.i.i.us.us.4, label %if.end.i.i.us.us.4

if.then.i.i.us.us.4:                              ; preds = %pregion_for_entry.entry.i.i.us.us.4
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %111 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %if.then.i.i.us.us.4
  %indvars.iv.next.i.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %if.then.i.i.us.us.4 ]
  %112 = phi float [ %118, %for.body.i.i.us.us.4 ], [ 0.000000e+00, %if.then.i.i.us.us.4 ]
  %113 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %110
  %arrayidx11.i.i.us.us.4 = getelementptr inbounds float, float* %12, i64 %113
  %114 = load float, float* %arrayidx11.i.i.us.us.4, align 4, !tbaa !12
  %mul12.i.i.us.us.4 = fmul float %32, %114
  %115 = mul nsw i64 %indvars.iv.next.i.i3.us.us.4, %33
  %116 = add nsw i64 %115, %111
  %arrayidx16.i.i.us.us.4 = getelementptr inbounds float, float* %16, i64 %116
  %117 = load float, float* %arrayidx16.i.i.us.us.4, align 4, !tbaa !12
  %118 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.4, float %117, float %112) #2
  store float %118, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %if.end.i.i.us.us.4.loopexit, label %for.body.i.i.us.us.4, !llvm.loop !19

if.end.i.i.us.us.4.loopexit:                      ; preds = %for.body.i.i.us.us.4
  br label %if.end.i.i.us.us.4

if.end.i.i.us.us.4:                               ; preds = %if.end.i.i.us.us.4.loopexit, %pregion_for_entry.entry.i.i.us.us.4
  %119 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %119, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %cmp4.i.i.us.us.4.1 = icmp sgt i32 %24, %conv.i.i.us.us.4.1
  br i1 %cmp4.i.i.us.us.4.1, label %if.then.i.i.us.us.4.1, label %if.end.i.i.us.us.4.1

pregion_for_end.i.i.us.4.loopexit:                ; preds = %if.end.i.i.us.us.4.1
  br label %pregion_for_end.i.i.us.4

pregion_for_end.i.i.us.4:                         ; preds = %pregion_for_end.i.i.us.4.loopexit, %pregion_for_end.i.i.us.3
  %120 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %120, 5
  %cmp.i.i.us.5 = icmp sgt i32 %20, %conv2.i.i.us.5
  %mul.i.i.us.5 = mul nsw i32 %24, %conv2.i.i.us.5
  %mul8.i.i.us.5 = mul nsw i32 %28, %conv2.i.i.us.5
  %121 = sext i32 %mul8.i.i.us.5 to i64
  br i1 %cmp.i.i.us.5, label %pregion_for_entry.entry.i.i.us.us.5.preheader, label %pregion_for_end.i.i.us.5

pregion_for_entry.entry.i.i.us.us.5.preheader:    ; preds = %pregion_for_end.i.i.us.4
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %if.end.i.i.us.us.5.1, %pregion_for_entry.entry.i.i.us.us.5.preheader
  %_local_id_x.i.0.us.us.5 = phi i64 [ %179, %if.end.i.i.us.us.5.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5.preheader ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %cmp4.i.i.us.us.5 = icmp sgt i32 %24, %conv.i.i.us.us.5
  br i1 %cmp4.i.i.us.us.5, label %if.then.i.i.us.us.5, label %if.end.i.i.us.us.5

if.then.i.i.us.us.5:                              ; preds = %pregion_for_entry.entry.i.i.us.us.5
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %122 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %if.then.i.i.us.us.5
  %indvars.iv.next.i.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %if.then.i.i.us.us.5 ]
  %123 = phi float [ %129, %for.body.i.i.us.us.5 ], [ 0.000000e+00, %if.then.i.i.us.us.5 ]
  %124 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %121
  %arrayidx11.i.i.us.us.5 = getelementptr inbounds float, float* %12, i64 %124
  %125 = load float, float* %arrayidx11.i.i.us.us.5, align 4, !tbaa !12
  %mul12.i.i.us.us.5 = fmul float %32, %125
  %126 = mul nsw i64 %indvars.iv.next.i.i3.us.us.5, %33
  %127 = add nsw i64 %126, %122
  %arrayidx16.i.i.us.us.5 = getelementptr inbounds float, float* %16, i64 %127
  %128 = load float, float* %arrayidx16.i.i.us.us.5, align 4, !tbaa !12
  %129 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.5, float %128, float %123) #2
  store float %129, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %if.end.i.i.us.us.5.loopexit, label %for.body.i.i.us.us.5, !llvm.loop !19

if.end.i.i.us.us.5.loopexit:                      ; preds = %for.body.i.i.us.us.5
  br label %if.end.i.i.us.us.5

if.end.i.i.us.us.5:                               ; preds = %if.end.i.i.us.us.5.loopexit, %pregion_for_entry.entry.i.i.us.us.5
  %130 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %130, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %cmp4.i.i.us.us.5.1 = icmp sgt i32 %24, %conv.i.i.us.us.5.1
  br i1 %cmp4.i.i.us.us.5.1, label %if.then.i.i.us.us.5.1, label %if.end.i.i.us.us.5.1

pregion_for_end.i.i.us.5.loopexit:                ; preds = %if.end.i.i.us.us.5.1
  br label %pregion_for_end.i.i.us.5

pregion_for_end.i.i.us.5:                         ; preds = %pregion_for_end.i.i.us.5.loopexit, %pregion_for_end.i.i.us.4
  %131 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %131, 6
  %cmp.i.i.us.6 = icmp sgt i32 %20, %conv2.i.i.us.6
  %mul.i.i.us.6 = mul nsw i32 %24, %conv2.i.i.us.6
  %mul8.i.i.us.6 = mul nsw i32 %28, %conv2.i.i.us.6
  %132 = sext i32 %mul8.i.i.us.6 to i64
  br i1 %cmp.i.i.us.6, label %pregion_for_entry.entry.i.i.us.us.6.preheader, label %pregion_for_end.i.i.us.6

pregion_for_entry.entry.i.i.us.us.6.preheader:    ; preds = %pregion_for_end.i.i.us.5
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %if.end.i.i.us.us.6.1, %pregion_for_entry.entry.i.i.us.us.6.preheader
  %_local_id_x.i.0.us.us.6 = phi i64 [ %170, %if.end.i.i.us.us.6.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6.preheader ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %cmp4.i.i.us.us.6 = icmp sgt i32 %24, %conv.i.i.us.us.6
  br i1 %cmp4.i.i.us.us.6, label %if.then.i.i.us.us.6, label %if.end.i.i.us.us.6

if.then.i.i.us.us.6:                              ; preds = %pregion_for_entry.entry.i.i.us.us.6
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %133 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %if.then.i.i.us.us.6
  %indvars.iv.next.i.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %if.then.i.i.us.us.6 ]
  %134 = phi float [ %140, %for.body.i.i.us.us.6 ], [ 0.000000e+00, %if.then.i.i.us.us.6 ]
  %135 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %132
  %arrayidx11.i.i.us.us.6 = getelementptr inbounds float, float* %12, i64 %135
  %136 = load float, float* %arrayidx11.i.i.us.us.6, align 4, !tbaa !12
  %mul12.i.i.us.us.6 = fmul float %32, %136
  %137 = mul nsw i64 %indvars.iv.next.i.i3.us.us.6, %33
  %138 = add nsw i64 %137, %133
  %arrayidx16.i.i.us.us.6 = getelementptr inbounds float, float* %16, i64 %138
  %139 = load float, float* %arrayidx16.i.i.us.us.6, align 4, !tbaa !12
  %140 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.6, float %139, float %134) #2
  store float %140, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %if.end.i.i.us.us.6.loopexit, label %for.body.i.i.us.us.6, !llvm.loop !19

if.end.i.i.us.us.6.loopexit:                      ; preds = %for.body.i.i.us.us.6
  br label %if.end.i.i.us.us.6

if.end.i.i.us.us.6:                               ; preds = %if.end.i.i.us.us.6.loopexit, %pregion_for_entry.entry.i.i.us.us.6
  %141 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %141, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %cmp4.i.i.us.us.6.1 = icmp sgt i32 %24, %conv.i.i.us.us.6.1
  br i1 %cmp4.i.i.us.us.6.1, label %if.then.i.i.us.us.6.1, label %if.end.i.i.us.us.6.1

pregion_for_end.i.i.us.6.loopexit:                ; preds = %if.end.i.i.us.us.6.1
  br label %pregion_for_end.i.i.us.6

pregion_for_end.i.i.us.6:                         ; preds = %pregion_for_end.i.i.us.6.loopexit, %pregion_for_end.i.i.us.5
  %142 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %142, 7
  %cmp.i.i.us.7 = icmp sgt i32 %20, %conv2.i.i.us.7
  %mul.i.i.us.7 = mul nsw i32 %24, %conv2.i.i.us.7
  %mul8.i.i.us.7 = mul nsw i32 %28, %conv2.i.i.us.7
  %143 = sext i32 %mul8.i.i.us.7 to i64
  br i1 %cmp.i.i.us.7, label %pregion_for_entry.entry.i.i.us.us.7.preheader, label %_pocl_kernel_mm2_kernel1.exit

pregion_for_entry.entry.i.i.us.us.7.preheader:    ; preds = %pregion_for_end.i.i.us.6
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %if.end.i.i.us.us.7.1, %pregion_for_entry.entry.i.i.us.us.7.preheader
  %_local_id_x.i.0.us.us.7 = phi i64 [ %161, %if.end.i.i.us.us.7.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7.preheader ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %cmp4.i.i.us.us.7 = icmp sgt i32 %24, %conv.i.i.us.us.7
  br i1 %cmp4.i.i.us.us.7, label %if.then.i.i.us.us.7, label %if.end.i.i.us.us.7

if.then.i.i.us.us.7:                              ; preds = %pregion_for_entry.entry.i.i.us.us.7
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %144 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %if.then.i.i.us.us.7
  %indvars.iv.next.i.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %if.then.i.i.us.us.7 ]
  %145 = phi float [ %151, %for.body.i.i.us.us.7 ], [ 0.000000e+00, %if.then.i.i.us.us.7 ]
  %146 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %143
  %arrayidx11.i.i.us.us.7 = getelementptr inbounds float, float* %12, i64 %146
  %147 = load float, float* %arrayidx11.i.i.us.us.7, align 4, !tbaa !12
  %mul12.i.i.us.us.7 = fmul float %32, %147
  %148 = mul nsw i64 %indvars.iv.next.i.i3.us.us.7, %33
  %149 = add nsw i64 %148, %144
  %arrayidx16.i.i.us.us.7 = getelementptr inbounds float, float* %16, i64 %149
  %150 = load float, float* %arrayidx16.i.i.us.us.7, align 4, !tbaa !12
  %151 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.7, float %150, float %145) #2
  store float %151, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %if.end.i.i.us.us.7.loopexit, label %for.body.i.i.us.us.7, !llvm.loop !19

if.end.i.i.us.us.7.loopexit:                      ; preds = %for.body.i.i.us.us.7
  br label %if.end.i.i.us.us.7

if.end.i.i.us.us.7:                               ; preds = %if.end.i.i.us.us.7.loopexit, %pregion_for_entry.entry.i.i.us.us.7
  %152 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %152, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %cmp4.i.i.us.us.7.1 = icmp sgt i32 %24, %conv.i.i.us.us.7.1
  br i1 %cmp4.i.i.us.us.7.1, label %if.then.i.i.us.us.7.1, label %if.end.i.i.us.us.7.1

if.then.i.i.us.1:                                 ; preds = %if.end.i.i.us
  %add.i.i.us.1 = add nsw i32 %mul.i.i, %conv.i.i.us.1
  %idxprom.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.then.i.i.us.1, %if.end.i.i.us
  br i1 %cmp4.i.i.us.2, label %if.then.i.i.us.2, label %if.end.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %if.end.i.i.us.1
  %add.i.i.us.2 = add nsw i32 %mul.i.i, %conv.i.i.us.2
  %idxprom.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2

if.end.i.i.us.2:                                  ; preds = %if.then.i.i.us.2, %if.end.i.i.us.1
  br i1 %cmp4.i.i.us.3, label %if.then.i.i.us.3, label %if.end.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %if.end.i.i.us.2
  %add.i.i.us.3 = add nsw i32 %mul.i.i, %conv.i.i.us.3
  %idxprom.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3

if.end.i.i.us.3:                                  ; preds = %if.then.i.i.us.3, %if.end.i.i.us.2
  br i1 %cmp4.i.i.us.4, label %if.then.i.i.us.4, label %if.end.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %if.end.i.i.us.3
  %add.i.i.us.4 = add nsw i32 %mul.i.i, %conv.i.i.us.4
  %idxprom.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4

if.end.i.i.us.4:                                  ; preds = %if.then.i.i.us.4, %if.end.i.i.us.3
  br i1 %cmp4.i.i.us.5, label %if.then.i.i.us.5, label %if.end.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %if.end.i.i.us.4
  %add.i.i.us.5 = add nsw i32 %mul.i.i, %conv.i.i.us.5
  %idxprom.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5

if.end.i.i.us.5:                                  ; preds = %if.then.i.i.us.5, %if.end.i.i.us.4
  br i1 %cmp4.i.i.us.6, label %if.then.i.i.us.6, label %if.end.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %if.end.i.i.us.5
  %add.i.i.us.6 = add nsw i32 %mul.i.i, %conv.i.i.us.6
  %idxprom.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6

if.end.i.i.us.6:                                  ; preds = %if.then.i.i.us.6, %if.end.i.i.us.5
  br i1 %cmp4.i.i.us.7, label %if.then.i.i.us.7, label %if.end.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %if.end.i.i.us.6
  %add.i.i.us.7 = add nsw i32 %mul.i.i, %conv.i.i.us.7
  %idxprom.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7

if.end.i.i.us.7:                                  ; preds = %if.then.i.i.us.7, %if.end.i.i.us.6
  br i1 %cmp4.i.i.us.8, label %if.then.i.i.us.8, label %if.end.i.i.us.8

if.then.i.i.us.8:                                 ; preds = %if.end.i.i.us.7
  %add.i.i.us.8 = add nsw i32 %mul.i.i, %conv.i.i.us.8
  %idxprom.i.i.us.8 = sext i32 %add.i.i.us.8 to i64
  %arrayidx.i.i.us.8 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.8
  store float 0.000000e+00, float* %arrayidx.i.i.us.8, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.8

if.end.i.i.us.8:                                  ; preds = %if.then.i.i.us.8, %if.end.i.i.us.7
  br i1 %cmp4.i.i.us.9, label %if.then.i.i.us.9, label %if.end.i.i.us.9

if.then.i.i.us.9:                                 ; preds = %if.end.i.i.us.8
  %add.i.i.us.9 = add nsw i32 %mul.i.i, %conv.i.i.us.9
  %idxprom.i.i.us.9 = sext i32 %add.i.i.us.9 to i64
  %arrayidx.i.i.us.9 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.9
  store float 0.000000e+00, float* %arrayidx.i.i.us.9, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.9

if.end.i.i.us.9:                                  ; preds = %if.then.i.i.us.9, %if.end.i.i.us.8
  br i1 %cmp4.i.i.us.10, label %if.then.i.i.us.10, label %if.end.i.i.us.10

if.then.i.i.us.10:                                ; preds = %if.end.i.i.us.9
  %add.i.i.us.10 = add nsw i32 %mul.i.i, %conv.i.i.us.10
  %idxprom.i.i.us.10 = sext i32 %add.i.i.us.10 to i64
  %arrayidx.i.i.us.10 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.10
  store float 0.000000e+00, float* %arrayidx.i.i.us.10, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.10

if.end.i.i.us.10:                                 ; preds = %if.then.i.i.us.10, %if.end.i.i.us.9
  br i1 %cmp4.i.i.us.11, label %if.then.i.i.us.11, label %if.end.i.i.us.11

if.then.i.i.us.11:                                ; preds = %if.end.i.i.us.10
  %add.i.i.us.11 = add nsw i32 %mul.i.i, %conv.i.i.us.11
  %idxprom.i.i.us.11 = sext i32 %add.i.i.us.11 to i64
  %arrayidx.i.i.us.11 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.11
  store float 0.000000e+00, float* %arrayidx.i.i.us.11, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.11

if.end.i.i.us.11:                                 ; preds = %if.then.i.i.us.11, %if.end.i.i.us.10
  br i1 %cmp4.i.i.us.12, label %if.then.i.i.us.12, label %if.end.i.i.us.12

if.then.i.i.us.12:                                ; preds = %if.end.i.i.us.11
  %add.i.i.us.12 = add nsw i32 %mul.i.i, %conv.i.i.us.12
  %idxprom.i.i.us.12 = sext i32 %add.i.i.us.12 to i64
  %arrayidx.i.i.us.12 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.12
  store float 0.000000e+00, float* %arrayidx.i.i.us.12, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.12

if.end.i.i.us.12:                                 ; preds = %if.then.i.i.us.12, %if.end.i.i.us.11
  br i1 %cmp4.i.i.us.13, label %if.then.i.i.us.13, label %if.end.i.i.us.13

if.then.i.i.us.13:                                ; preds = %if.end.i.i.us.12
  %add.i.i.us.13 = add nsw i32 %mul.i.i, %conv.i.i.us.13
  %idxprom.i.i.us.13 = sext i32 %add.i.i.us.13 to i64
  %arrayidx.i.i.us.13 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.13
  store float 0.000000e+00, float* %arrayidx.i.i.us.13, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.13

if.end.i.i.us.13:                                 ; preds = %if.then.i.i.us.13, %if.end.i.i.us.12
  br i1 %cmp4.i.i.us.14, label %if.then.i.i.us.14, label %if.end.i.i.us.14

if.then.i.i.us.14:                                ; preds = %if.end.i.i.us.13
  %add.i.i.us.14 = add nsw i32 %mul.i.i, %conv.i.i.us.14
  %idxprom.i.i.us.14 = sext i32 %add.i.i.us.14 to i64
  %arrayidx.i.i.us.14 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.14
  store float 0.000000e+00, float* %arrayidx.i.i.us.14, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.14

if.end.i.i.us.14:                                 ; preds = %if.then.i.i.us.14, %if.end.i.i.us.13
  br i1 %cmp4.i.i.us.15, label %if.then.i.i.us.15, label %if.end.i.i.us.15

if.then.i.i.us.15:                                ; preds = %if.end.i.i.us.14
  %add.i.i.us.15 = add nsw i32 %mul.i.i, %conv.i.i.us.15
  %idxprom.i.i.us.15 = sext i32 %add.i.i.us.15 to i64
  %arrayidx.i.i.us.15 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.15
  store float 0.000000e+00, float* %arrayidx.i.i.us.15, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.15

if.end.i.i.us.15:                                 ; preds = %if.then.i.i.us.15, %if.end.i.i.us.14
  br i1 %cmp4.i.i.us.16, label %if.then.i.i.us.16, label %if.end.i.i.us.16

if.then.i.i.us.16:                                ; preds = %if.end.i.i.us.15
  %add.i.i.us.16 = add nsw i32 %mul.i.i, %conv.i.i.us.16
  %idxprom.i.i.us.16 = sext i32 %add.i.i.us.16 to i64
  %arrayidx.i.i.us.16 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.16
  store float 0.000000e+00, float* %arrayidx.i.i.us.16, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.16

if.end.i.i.us.16:                                 ; preds = %if.then.i.i.us.16, %if.end.i.i.us.15
  br i1 %cmp4.i.i.us.17, label %if.then.i.i.us.17, label %if.end.i.i.us.17

if.then.i.i.us.17:                                ; preds = %if.end.i.i.us.16
  %add.i.i.us.17 = add nsw i32 %mul.i.i, %conv.i.i.us.17
  %idxprom.i.i.us.17 = sext i32 %add.i.i.us.17 to i64
  %arrayidx.i.i.us.17 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.17
  store float 0.000000e+00, float* %arrayidx.i.i.us.17, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.17

if.end.i.i.us.17:                                 ; preds = %if.then.i.i.us.17, %if.end.i.i.us.16
  br i1 %cmp4.i.i.us.18, label %if.then.i.i.us.18, label %if.end.i.i.us.18

if.then.i.i.us.18:                                ; preds = %if.end.i.i.us.17
  %add.i.i.us.18 = add nsw i32 %mul.i.i, %conv.i.i.us.18
  %idxprom.i.i.us.18 = sext i32 %add.i.i.us.18 to i64
  %arrayidx.i.i.us.18 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.18
  store float 0.000000e+00, float* %arrayidx.i.i.us.18, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.18

if.end.i.i.us.18:                                 ; preds = %if.then.i.i.us.18, %if.end.i.i.us.17
  br i1 %cmp4.i.i.us.19, label %if.then.i.i.us.19, label %if.end.i.i.us.19

if.then.i.i.us.19:                                ; preds = %if.end.i.i.us.18
  %add.i.i.us.19 = add nsw i32 %mul.i.i, %conv.i.i.us.19
  %idxprom.i.i.us.19 = sext i32 %add.i.i.us.19 to i64
  %arrayidx.i.i.us.19 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.19
  store float 0.000000e+00, float* %arrayidx.i.i.us.19, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.19

if.end.i.i.us.19:                                 ; preds = %if.then.i.i.us.19, %if.end.i.i.us.18
  br i1 %cmp4.i.i.us.20, label %if.then.i.i.us.20, label %if.end.i.i.us.20

if.then.i.i.us.20:                                ; preds = %if.end.i.i.us.19
  %add.i.i.us.20 = add nsw i32 %mul.i.i, %conv.i.i.us.20
  %idxprom.i.i.us.20 = sext i32 %add.i.i.us.20 to i64
  %arrayidx.i.i.us.20 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.20
  store float 0.000000e+00, float* %arrayidx.i.i.us.20, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.20

if.end.i.i.us.20:                                 ; preds = %if.then.i.i.us.20, %if.end.i.i.us.19
  br i1 %cmp4.i.i.us.21, label %if.then.i.i.us.21, label %if.end.i.i.us.21

if.then.i.i.us.21:                                ; preds = %if.end.i.i.us.20
  %add.i.i.us.21 = add nsw i32 %mul.i.i, %conv.i.i.us.21
  %idxprom.i.i.us.21 = sext i32 %add.i.i.us.21 to i64
  %arrayidx.i.i.us.21 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.21
  store float 0.000000e+00, float* %arrayidx.i.i.us.21, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.21

if.end.i.i.us.21:                                 ; preds = %if.then.i.i.us.21, %if.end.i.i.us.20
  br i1 %cmp4.i.i.us.22, label %if.then.i.i.us.22, label %if.end.i.i.us.22

if.then.i.i.us.22:                                ; preds = %if.end.i.i.us.21
  %add.i.i.us.22 = add nsw i32 %mul.i.i, %conv.i.i.us.22
  %idxprom.i.i.us.22 = sext i32 %add.i.i.us.22 to i64
  %arrayidx.i.i.us.22 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.22
  store float 0.000000e+00, float* %arrayidx.i.i.us.22, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.22

if.end.i.i.us.22:                                 ; preds = %if.then.i.i.us.22, %if.end.i.i.us.21
  br i1 %cmp4.i.i.us.23, label %if.then.i.i.us.23, label %if.end.i.i.us.23

if.then.i.i.us.23:                                ; preds = %if.end.i.i.us.22
  %add.i.i.us.23 = add nsw i32 %mul.i.i, %conv.i.i.us.23
  %idxprom.i.i.us.23 = sext i32 %add.i.i.us.23 to i64
  %arrayidx.i.i.us.23 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.23
  store float 0.000000e+00, float* %arrayidx.i.i.us.23, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.23

if.end.i.i.us.23:                                 ; preds = %if.then.i.i.us.23, %if.end.i.i.us.22
  br i1 %cmp4.i.i.us.24, label %if.then.i.i.us.24, label %if.end.i.i.us.24

if.then.i.i.us.24:                                ; preds = %if.end.i.i.us.23
  %add.i.i.us.24 = add nsw i32 %mul.i.i, %conv.i.i.us.24
  %idxprom.i.i.us.24 = sext i32 %add.i.i.us.24 to i64
  %arrayidx.i.i.us.24 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.24
  store float 0.000000e+00, float* %arrayidx.i.i.us.24, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.24

if.end.i.i.us.24:                                 ; preds = %if.then.i.i.us.24, %if.end.i.i.us.23
  br i1 %cmp4.i.i.us.25, label %if.then.i.i.us.25, label %if.end.i.i.us.25

if.then.i.i.us.25:                                ; preds = %if.end.i.i.us.24
  %add.i.i.us.25 = add nsw i32 %mul.i.i, %conv.i.i.us.25
  %idxprom.i.i.us.25 = sext i32 %add.i.i.us.25 to i64
  %arrayidx.i.i.us.25 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.25
  store float 0.000000e+00, float* %arrayidx.i.i.us.25, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.25

if.end.i.i.us.25:                                 ; preds = %if.then.i.i.us.25, %if.end.i.i.us.24
  br i1 %cmp4.i.i.us.26, label %if.then.i.i.us.26, label %if.end.i.i.us.26

if.then.i.i.us.26:                                ; preds = %if.end.i.i.us.25
  %add.i.i.us.26 = add nsw i32 %mul.i.i, %conv.i.i.us.26
  %idxprom.i.i.us.26 = sext i32 %add.i.i.us.26 to i64
  %arrayidx.i.i.us.26 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.26
  store float 0.000000e+00, float* %arrayidx.i.i.us.26, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.26

if.end.i.i.us.26:                                 ; preds = %if.then.i.i.us.26, %if.end.i.i.us.25
  br i1 %cmp4.i.i.us.27, label %if.then.i.i.us.27, label %if.end.i.i.us.27

if.then.i.i.us.27:                                ; preds = %if.end.i.i.us.26
  %add.i.i.us.27 = add nsw i32 %mul.i.i, %conv.i.i.us.27
  %idxprom.i.i.us.27 = sext i32 %add.i.i.us.27 to i64
  %arrayidx.i.i.us.27 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.27
  store float 0.000000e+00, float* %arrayidx.i.i.us.27, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.27

if.end.i.i.us.27:                                 ; preds = %if.then.i.i.us.27, %if.end.i.i.us.26
  br i1 %cmp4.i.i.us.28, label %if.then.i.i.us.28, label %if.end.i.i.us.28

if.then.i.i.us.28:                                ; preds = %if.end.i.i.us.27
  %add.i.i.us.28 = add nsw i32 %mul.i.i, %conv.i.i.us.28
  %idxprom.i.i.us.28 = sext i32 %add.i.i.us.28 to i64
  %arrayidx.i.i.us.28 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.28
  store float 0.000000e+00, float* %arrayidx.i.i.us.28, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.28

if.end.i.i.us.28:                                 ; preds = %if.then.i.i.us.28, %if.end.i.i.us.27
  br i1 %cmp4.i.i.us.29, label %if.then.i.i.us.29, label %if.end.i.i.us.29

if.then.i.i.us.29:                                ; preds = %if.end.i.i.us.28
  %add.i.i.us.29 = add nsw i32 %mul.i.i, %conv.i.i.us.29
  %idxprom.i.i.us.29 = sext i32 %add.i.i.us.29 to i64
  %arrayidx.i.i.us.29 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.29
  store float 0.000000e+00, float* %arrayidx.i.i.us.29, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.29

if.end.i.i.us.29:                                 ; preds = %if.then.i.i.us.29, %if.end.i.i.us.28
  br i1 %cmp4.i.i.us.30, label %if.then.i.i.us.30, label %if.end.i.i.us.30

if.then.i.i.us.30:                                ; preds = %if.end.i.i.us.29
  %add.i.i.us.30 = add nsw i32 %mul.i.i, %conv.i.i.us.30
  %idxprom.i.i.us.30 = sext i32 %add.i.i.us.30 to i64
  %arrayidx.i.i.us.30 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.30
  store float 0.000000e+00, float* %arrayidx.i.i.us.30, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.30

if.end.i.i.us.30:                                 ; preds = %if.then.i.i.us.30, %if.end.i.i.us.29
  br i1 %cmp4.i.i.us.31, label %if.then.i.i.us.31, label %pregion_for_end.i.i

if.then.i.i.us.31:                                ; preds = %if.end.i.i.us.30
  %add.i.i.us.31 = add nsw i32 %mul.i.i, %conv.i.i.us.31
  %idxprom.i.i.us.31 = sext i32 %add.i.i.us.31 to i64
  %arrayidx.i.i.us.31 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.31
  store float 0.000000e+00, float* %arrayidx.i.i.us.31, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

if.then.i.i.us.us.7.1:                            ; preds = %if.end.i.i.us.us.7
  %add.i.i.us.us.7.1 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7.1 = shl i64 %add1.i.i.i.us.us.7.1, 32
  %153 = ashr exact i64 %sext.i.i.us.us.7.1, 32
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %if.then.i.i.us.us.7.1
  %indvars.iv.next.i.i3.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %if.then.i.i.us.us.7.1 ]
  %154 = phi float [ %160, %for.body.i.i.us.us.7.1 ], [ 0.000000e+00, %if.then.i.i.us.us.7.1 ]
  %155 = add nsw i64 %indvars.iv.next.i.i3.us.us.7.1, %143
  %arrayidx11.i.i.us.us.7.1 = getelementptr inbounds float, float* %12, i64 %155
  %156 = load float, float* %arrayidx11.i.i.us.us.7.1, align 4, !tbaa !12
  %mul12.i.i.us.us.7.1 = fmul float %32, %156
  %157 = mul nsw i64 %indvars.iv.next.i.i3.us.us.7.1, %33
  %158 = add nsw i64 %157, %153
  %arrayidx16.i.i.us.us.7.1 = getelementptr inbounds float, float* %16, i64 %158
  %159 = load float, float* %arrayidx16.i.i.us.us.7.1, align 4, !tbaa !12
  %160 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.7.1, float %159, float %154) #2
  store float %160, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7.1, label %if.end.i.i.us.us.7.1.loopexit, label %for.body.i.i.us.us.7.1, !llvm.loop !19

if.end.i.i.us.us.7.1.loopexit:                    ; preds = %for.body.i.i.us.us.7.1
  br label %if.end.i.i.us.us.7.1

if.end.i.i.us.us.7.1:                             ; preds = %if.end.i.i.us.us.7.1.loopexit, %if.end.i.i.us.us.7
  %161 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %161, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_mm2_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !23

if.then.i.i.us.us.6.1:                            ; preds = %if.end.i.i.us.us.6
  %add.i.i.us.us.6.1 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6.1 = shl i64 %add1.i.i.i.us.us.6.1, 32
  %162 = ashr exact i64 %sext.i.i.us.us.6.1, 32
  br label %for.body.i.i.us.us.6.1

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %if.then.i.i.us.us.6.1
  %indvars.iv.next.i.i3.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %if.then.i.i.us.us.6.1 ]
  %163 = phi float [ %169, %for.body.i.i.us.us.6.1 ], [ 0.000000e+00, %if.then.i.i.us.us.6.1 ]
  %164 = add nsw i64 %indvars.iv.next.i.i3.us.us.6.1, %132
  %arrayidx11.i.i.us.us.6.1 = getelementptr inbounds float, float* %12, i64 %164
  %165 = load float, float* %arrayidx11.i.i.us.us.6.1, align 4, !tbaa !12
  %mul12.i.i.us.us.6.1 = fmul float %32, %165
  %166 = mul nsw i64 %indvars.iv.next.i.i3.us.us.6.1, %33
  %167 = add nsw i64 %166, %162
  %arrayidx16.i.i.us.us.6.1 = getelementptr inbounds float, float* %16, i64 %167
  %168 = load float, float* %arrayidx16.i.i.us.us.6.1, align 4, !tbaa !12
  %169 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.6.1, float %168, float %163) #2
  store float %169, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6.1, label %if.end.i.i.us.us.6.1.loopexit, label %for.body.i.i.us.us.6.1, !llvm.loop !19

if.end.i.i.us.us.6.1.loopexit:                    ; preds = %for.body.i.i.us.us.6.1
  br label %if.end.i.i.us.us.6.1

if.end.i.i.us.us.6.1:                             ; preds = %if.end.i.i.us.us.6.1.loopexit, %if.end.i.i.us.us.6
  %170 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %170, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us.6.loopexit, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !23

if.then.i.i.us.us.5.1:                            ; preds = %if.end.i.i.us.us.5
  %add.i.i.us.us.5.1 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5.1 = shl i64 %add1.i.i.i.us.us.5.1, 32
  %171 = ashr exact i64 %sext.i.i.us.us.5.1, 32
  br label %for.body.i.i.us.us.5.1

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %if.then.i.i.us.us.5.1
  %indvars.iv.next.i.i3.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %if.then.i.i.us.us.5.1 ]
  %172 = phi float [ %178, %for.body.i.i.us.us.5.1 ], [ 0.000000e+00, %if.then.i.i.us.us.5.1 ]
  %173 = add nsw i64 %indvars.iv.next.i.i3.us.us.5.1, %121
  %arrayidx11.i.i.us.us.5.1 = getelementptr inbounds float, float* %12, i64 %173
  %174 = load float, float* %arrayidx11.i.i.us.us.5.1, align 4, !tbaa !12
  %mul12.i.i.us.us.5.1 = fmul float %32, %174
  %175 = mul nsw i64 %indvars.iv.next.i.i3.us.us.5.1, %33
  %176 = add nsw i64 %175, %171
  %arrayidx16.i.i.us.us.5.1 = getelementptr inbounds float, float* %16, i64 %176
  %177 = load float, float* %arrayidx16.i.i.us.us.5.1, align 4, !tbaa !12
  %178 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.5.1, float %177, float %172) #2
  store float %178, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5.1, label %if.end.i.i.us.us.5.1.loopexit, label %for.body.i.i.us.us.5.1, !llvm.loop !19

if.end.i.i.us.us.5.1.loopexit:                    ; preds = %for.body.i.i.us.us.5.1
  br label %if.end.i.i.us.us.5.1

if.end.i.i.us.us.5.1:                             ; preds = %if.end.i.i.us.us.5.1.loopexit, %if.end.i.i.us.us.5
  %179 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %179, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us.5.loopexit, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !23

if.then.i.i.us.us.4.1:                            ; preds = %if.end.i.i.us.us.4
  %add.i.i.us.us.4.1 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4.1 = shl i64 %add1.i.i.i.us.us.4.1, 32
  %180 = ashr exact i64 %sext.i.i.us.us.4.1, 32
  br label %for.body.i.i.us.us.4.1

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %if.then.i.i.us.us.4.1
  %indvars.iv.next.i.i3.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %if.then.i.i.us.us.4.1 ]
  %181 = phi float [ %187, %for.body.i.i.us.us.4.1 ], [ 0.000000e+00, %if.then.i.i.us.us.4.1 ]
  %182 = add nsw i64 %indvars.iv.next.i.i3.us.us.4.1, %110
  %arrayidx11.i.i.us.us.4.1 = getelementptr inbounds float, float* %12, i64 %182
  %183 = load float, float* %arrayidx11.i.i.us.us.4.1, align 4, !tbaa !12
  %mul12.i.i.us.us.4.1 = fmul float %32, %183
  %184 = mul nsw i64 %indvars.iv.next.i.i3.us.us.4.1, %33
  %185 = add nsw i64 %184, %180
  %arrayidx16.i.i.us.us.4.1 = getelementptr inbounds float, float* %16, i64 %185
  %186 = load float, float* %arrayidx16.i.i.us.us.4.1, align 4, !tbaa !12
  %187 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.4.1, float %186, float %181) #2
  store float %187, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4.1, label %if.end.i.i.us.us.4.1.loopexit, label %for.body.i.i.us.us.4.1, !llvm.loop !19

if.end.i.i.us.us.4.1.loopexit:                    ; preds = %for.body.i.i.us.us.4.1
  br label %if.end.i.i.us.us.4.1

if.end.i.i.us.us.4.1:                             ; preds = %if.end.i.i.us.us.4.1.loopexit, %if.end.i.i.us.us.4
  %188 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %188, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us.4.loopexit, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !23

if.then.i.i.us.us.3.1:                            ; preds = %if.end.i.i.us.us.3
  %add.i.i.us.us.3.1 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3.1 = shl i64 %add1.i.i.i.us.us.3.1, 32
  %189 = ashr exact i64 %sext.i.i.us.us.3.1, 32
  br label %for.body.i.i.us.us.3.1

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %if.then.i.i.us.us.3.1
  %indvars.iv.next.i.i3.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %if.then.i.i.us.us.3.1 ]
  %190 = phi float [ %196, %for.body.i.i.us.us.3.1 ], [ 0.000000e+00, %if.then.i.i.us.us.3.1 ]
  %191 = add nsw i64 %indvars.iv.next.i.i3.us.us.3.1, %99
  %arrayidx11.i.i.us.us.3.1 = getelementptr inbounds float, float* %12, i64 %191
  %192 = load float, float* %arrayidx11.i.i.us.us.3.1, align 4, !tbaa !12
  %mul12.i.i.us.us.3.1 = fmul float %32, %192
  %193 = mul nsw i64 %indvars.iv.next.i.i3.us.us.3.1, %33
  %194 = add nsw i64 %193, %189
  %arrayidx16.i.i.us.us.3.1 = getelementptr inbounds float, float* %16, i64 %194
  %195 = load float, float* %arrayidx16.i.i.us.us.3.1, align 4, !tbaa !12
  %196 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.3.1, float %195, float %190) #2
  store float %196, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3.1, label %if.end.i.i.us.us.3.1.loopexit, label %for.body.i.i.us.us.3.1, !llvm.loop !19

if.end.i.i.us.us.3.1.loopexit:                    ; preds = %for.body.i.i.us.us.3.1
  br label %if.end.i.i.us.us.3.1

if.end.i.i.us.us.3.1:                             ; preds = %if.end.i.i.us.us.3.1.loopexit, %if.end.i.i.us.us.3
  %197 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %197, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us.3.loopexit, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !23

if.then.i.i.us.us.2.1:                            ; preds = %if.end.i.i.us.us.2
  %add.i.i.us.us.2.1 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2.1 = shl i64 %add1.i.i.i.us.us.2.1, 32
  %198 = ashr exact i64 %sext.i.i.us.us.2.1, 32
  br label %for.body.i.i.us.us.2.1

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %if.then.i.i.us.us.2.1
  %indvars.iv.next.i.i3.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %if.then.i.i.us.us.2.1 ]
  %199 = phi float [ %205, %for.body.i.i.us.us.2.1 ], [ 0.000000e+00, %if.then.i.i.us.us.2.1 ]
  %200 = add nsw i64 %indvars.iv.next.i.i3.us.us.2.1, %88
  %arrayidx11.i.i.us.us.2.1 = getelementptr inbounds float, float* %12, i64 %200
  %201 = load float, float* %arrayidx11.i.i.us.us.2.1, align 4, !tbaa !12
  %mul12.i.i.us.us.2.1 = fmul float %32, %201
  %202 = mul nsw i64 %indvars.iv.next.i.i3.us.us.2.1, %33
  %203 = add nsw i64 %202, %198
  %arrayidx16.i.i.us.us.2.1 = getelementptr inbounds float, float* %16, i64 %203
  %204 = load float, float* %arrayidx16.i.i.us.us.2.1, align 4, !tbaa !12
  %205 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.2.1, float %204, float %199) #2
  store float %205, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2.1, label %if.end.i.i.us.us.2.1.loopexit, label %for.body.i.i.us.us.2.1, !llvm.loop !19

if.end.i.i.us.us.2.1.loopexit:                    ; preds = %for.body.i.i.us.us.2.1
  br label %if.end.i.i.us.us.2.1

if.end.i.i.us.us.2.1:                             ; preds = %if.end.i.i.us.us.2.1.loopexit, %if.end.i.i.us.us.2
  %206 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %206, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us.2.loopexit, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !23

if.then.i.i.us.us.1.1:                            ; preds = %if.end.i.i.us.us.1
  %add.i.i.us.us.1.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1.1 = shl i64 %add1.i.i.i.us.us.1.1, 32
  %207 = ashr exact i64 %sext.i.i.us.us.1.1, 32
  br label %for.body.i.i.us.us.1.1

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %if.then.i.i.us.us.1.1
  %indvars.iv.next.i.i3.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %if.then.i.i.us.us.1.1 ]
  %208 = phi float [ %214, %for.body.i.i.us.us.1.1 ], [ 0.000000e+00, %if.then.i.i.us.us.1.1 ]
  %209 = add nsw i64 %indvars.iv.next.i.i3.us.us.1.1, %67
  %arrayidx11.i.i.us.us.1.1 = getelementptr inbounds float, float* %12, i64 %209
  %210 = load float, float* %arrayidx11.i.i.us.us.1.1, align 4, !tbaa !12
  %mul12.i.i.us.us.1.1 = fmul float %32, %210
  %211 = mul nsw i64 %indvars.iv.next.i.i3.us.us.1.1, %33
  %212 = add nsw i64 %211, %207
  %arrayidx16.i.i.us.us.1.1 = getelementptr inbounds float, float* %16, i64 %212
  %213 = load float, float* %arrayidx16.i.i.us.us.1.1, align 4, !tbaa !12
  %214 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.1.1, float %213, float %208) #2
  store float %214, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1.1, label %if.end.i.i.us.us.1.1.loopexit, label %for.body.i.i.us.us.1.1, !llvm.loop !19

if.end.i.i.us.us.1.1.loopexit:                    ; preds = %for.body.i.i.us.us.1.1
  br label %if.end.i.i.us.us.1.1

if.end.i.i.us.us.1.1:                             ; preds = %if.end.i.i.us.us.1.1.loopexit, %if.end.i.i.us.us.1
  %215 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %215, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us.1.loopexit, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !23

if.then.i.i.us.us.147:                            ; preds = %if.end.i.i.us.us
  %add.i.i.us.us.143 = add nsw i32 %mul.i.i.us, %conv.i.i.us.us.140
  %idxprom.i.i.us.us.144 = sext i32 %add.i.i.us.us.143 to i64
  %arrayidx.i.i.us.us.145 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.144
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.145, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.146 = shl i64 %add1.i.i.i.us.us.139, 32
  %216 = ashr exact i64 %sext.i.i.us.us.146, 32
  br label %for.body.i.i.us.us.154

for.body.i.i.us.us.154:                           ; preds = %for.body.i.i.us.us.154, %if.then.i.i.us.us.147
  %indvars.iv.next.i.i3.us.us.148 = phi i64 [ %indvars.iv.next.i.i.us.us.152, %for.body.i.i.us.us.154 ], [ 0, %if.then.i.i.us.us.147 ]
  %217 = phi float [ %223, %for.body.i.i.us.us.154 ], [ 0.000000e+00, %if.then.i.i.us.us.147 ]
  %218 = add nsw i64 %indvars.iv.next.i.i3.us.us.148, %65
  %arrayidx11.i.i.us.us.149 = getelementptr inbounds float, float* %12, i64 %218
  %219 = load float, float* %arrayidx11.i.i.us.us.149, align 4, !tbaa !12
  %mul12.i.i.us.us.150 = fmul float %32, %219
  %220 = mul nsw i64 %indvars.iv.next.i.i3.us.us.148, %33
  %221 = add nsw i64 %220, %216
  %arrayidx16.i.i.us.us.151 = getelementptr inbounds float, float* %16, i64 %221
  %222 = load float, float* %arrayidx16.i.i.us.us.151, align 4, !tbaa !12
  %223 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.150, float %222, float %217) #2
  store float %223, float* %arrayidx.i.i.us.us.145, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.152 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.148, 1
  %exitcond.not.i.i.us.us.153 = icmp eq i64 %indvars.iv.next.i.i.us.us.152, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.153, label %if.end.i.i.us.us.155.loopexit, label %for.body.i.i.us.us.154, !llvm.loop !19

if.end.i.i.us.us.155.loopexit:                    ; preds = %for.body.i.i.us.us.154
  br label %if.end.i.i.us.us.155

if.end.i.i.us.us.155:                             ; preds = %if.end.i.i.us.us.155.loopexit, %if.end.i.i.us.us
  %224 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %224, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us.loopexit, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !23
}

; Function Attrs: nounwind
define void @_pocl_kernel_mm2_kernel1_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 2
  %12 = bitcast i8** %11 to float**
  %13 = load float*, float** %12, align 8
  %14 = getelementptr i8*, i8** %0, i64 3
  %15 = bitcast i8** %14 to i32**
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr i8*, i8** %0, i64 4
  %19 = bitcast i8** %18 to i32**
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr i8*, i8** %0, i64 5
  %23 = bitcast i8** %22 to i32**
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr i8*, i8** %0, i64 7
  %27 = bitcast i8** %26 to float**
  %28 = load float*, float** %27, align 8
  %29 = load float, float* %28, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp639.i.i = icmp sgt i32 %25, 0
  %30 = sext i32 %21 to i64
  %wide.trip.count.i.i = zext i32 %25 to i64
  br i1 %cmp639.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  %conv.i.i.us = trunc i64 %mul.i.i.i to i32
  %cmp4.i.i.us = icmp sgt i32 %21, %conv.i.i.us
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.1 = or i32 %31, 1
  %cmp4.i.i.us.1 = icmp sgt i32 %21, %conv.i.i.us.1
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.2 = or i32 %32, 2
  %cmp4.i.i.us.2 = icmp sgt i32 %21, %conv.i.i.us.2
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.3 = or i32 %33, 3
  %cmp4.i.i.us.3 = icmp sgt i32 %21, %conv.i.i.us.3
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.4 = or i32 %34, 4
  %cmp4.i.i.us.4 = icmp sgt i32 %21, %conv.i.i.us.4
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.5 = or i32 %35, 5
  %cmp4.i.i.us.5 = icmp sgt i32 %21, %conv.i.i.us.5
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.6 = or i32 %36, 6
  %cmp4.i.i.us.6 = icmp sgt i32 %21, %conv.i.i.us.6
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.7 = or i32 %37, 7
  %cmp4.i.i.us.7 = icmp sgt i32 %21, %conv.i.i.us.7
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.8 = or i32 %38, 8
  %cmp4.i.i.us.8 = icmp sgt i32 %21, %conv.i.i.us.8
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.9 = or i32 %39, 9
  %cmp4.i.i.us.9 = icmp sgt i32 %21, %conv.i.i.us.9
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.10 = or i32 %40, 10
  %cmp4.i.i.us.10 = icmp sgt i32 %21, %conv.i.i.us.10
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.11 = or i32 %41, 11
  %cmp4.i.i.us.11 = icmp sgt i32 %21, %conv.i.i.us.11
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.12 = or i32 %42, 12
  %cmp4.i.i.us.12 = icmp sgt i32 %21, %conv.i.i.us.12
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.13 = or i32 %43, 13
  %cmp4.i.i.us.13 = icmp sgt i32 %21, %conv.i.i.us.13
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.14 = or i32 %44, 14
  %cmp4.i.i.us.14 = icmp sgt i32 %21, %conv.i.i.us.14
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.15 = or i32 %45, 15
  %cmp4.i.i.us.15 = icmp sgt i32 %21, %conv.i.i.us.15
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.16 = or i32 %46, 16
  %cmp4.i.i.us.16 = icmp sgt i32 %21, %conv.i.i.us.16
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.17 = or i32 %47, 17
  %cmp4.i.i.us.17 = icmp sgt i32 %21, %conv.i.i.us.17
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.18 = or i32 %48, 18
  %cmp4.i.i.us.18 = icmp sgt i32 %21, %conv.i.i.us.18
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.19 = or i32 %49, 19
  %cmp4.i.i.us.19 = icmp sgt i32 %21, %conv.i.i.us.19
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.20 = or i32 %50, 20
  %cmp4.i.i.us.20 = icmp sgt i32 %21, %conv.i.i.us.20
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.21 = or i32 %51, 21
  %cmp4.i.i.us.21 = icmp sgt i32 %21, %conv.i.i.us.21
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.22 = or i32 %52, 22
  %cmp4.i.i.us.22 = icmp sgt i32 %21, %conv.i.i.us.22
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.23 = or i32 %53, 23
  %cmp4.i.i.us.23 = icmp sgt i32 %21, %conv.i.i.us.23
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.24 = or i32 %54, 24
  %cmp4.i.i.us.24 = icmp sgt i32 %21, %conv.i.i.us.24
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.25 = or i32 %55, 25
  %cmp4.i.i.us.25 = icmp sgt i32 %21, %conv.i.i.us.25
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.26 = or i32 %56, 26
  %cmp4.i.i.us.26 = icmp sgt i32 %21, %conv.i.i.us.26
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.27 = or i32 %57, 27
  %cmp4.i.i.us.27 = icmp sgt i32 %21, %conv.i.i.us.27
  %58 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.28 = or i32 %58, 28
  %cmp4.i.i.us.28 = icmp sgt i32 %21, %conv.i.i.us.28
  %59 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.29 = or i32 %59, 29
  %cmp4.i.i.us.29 = icmp sgt i32 %21, %conv.i.i.us.29
  %60 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.30 = or i32 %60, 30
  %cmp4.i.i.us.30 = icmp sgt i32 %21, %conv.i.i.us.30
  %61 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.31 = or i32 %61, 31
  %cmp4.i.i.us.31 = icmp sgt i32 %21, %conv.i.i.us.31
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i.us = icmp sgt i32 %17, %conv2.i.i.us
  %mul.i.i.us = mul nsw i32 %21, %conv2.i.i.us
  %mul8.i.i.us = mul nsw i32 %25, %conv2.i.i.us
  %62 = sext i32 %mul8.i.i.us to i64
  br i1 %cmp.i.i.us, label %pregion_for_entry.entry.i.i.us.us.preheader, label %pregion_for_end.i.i.us

pregion_for_entry.entry.i.i.us.us.preheader:      ; preds = %pregion_for_entry.pregion_for_init.i.i.us.preheader
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_end.i.i.us.loopexit:                  ; preds = %if.end.i.i.us.us.155
  br label %pregion_for_end.i.i.us

pregion_for_end.i.i.us:                           ; preds = %pregion_for_end.i.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %63 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %63, 1
  %cmp.i.i.us.1 = icmp sgt i32 %17, %conv2.i.i.us.1
  %mul.i.i.us.1 = mul nsw i32 %21, %conv2.i.i.us.1
  %mul8.i.i.us.1 = mul nsw i32 %25, %conv2.i.i.us.1
  %64 = sext i32 %mul8.i.i.us.1 to i64
  br i1 %cmp.i.i.us.1, label %pregion_for_entry.entry.i.i.us.us.1.preheader, label %pregion_for_end.i.i.us.1

pregion_for_entry.entry.i.i.us.us.1.preheader:    ; preds = %pregion_for_end.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.entry.i.i.us.us:                ; preds = %if.end.i.i.us.us.155, %pregion_for_entry.entry.i.i.us.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ %221, %if.end.i.i.us.us.155 ], [ 0, %pregion_for_entry.entry.i.i.us.us.preheader ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %cmp4.i.i.us.us = icmp sgt i32 %21, %conv.i.i.us.us
  br i1 %cmp4.i.i.us.us, label %if.then.i.i.us.us, label %if.end.i.i.us.us

if.then.i.i.us.us:                                ; preds = %pregion_for_entry.entry.i.i.us.us
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %65 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

if.end.i.i.us.us.loopexit:                        ; preds = %for.body.i.i.us.us
  br label %if.end.i.i.us.us

if.end.i.i.us.us:                                 ; preds = %if.end.i.i.us.us.loopexit, %pregion_for_entry.entry.i.i.us.us
  %66 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.139 = add nuw nsw i64 %66, %mul.i.i.i
  %conv.i.i.us.us.140 = trunc i64 %add1.i.i.i.us.us.139 to i32
  %cmp4.i.i.us.us.141 = icmp sgt i32 %21, %conv.i.i.us.us.140
  br i1 %cmp4.i.i.us.us.141, label %if.then.i.i.us.us.147, label %if.end.i.i.us.us.155

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %if.then.i.i.us.us
  %indvars.iv.next.i.i3.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %if.then.i.i.us.us ]
  %67 = phi float [ %73, %for.body.i.i.us.us ], [ 0.000000e+00, %if.then.i.i.us.us ]
  %68 = add nsw i64 %indvars.iv.next.i.i3.us.us, %62
  %arrayidx11.i.i.us.us = getelementptr inbounds float, float* %10, i64 %68
  %69 = load float, float* %arrayidx11.i.i.us.us, align 4, !tbaa !12
  %mul12.i.i.us.us = fmul float %29, %69
  %70 = mul nsw i64 %indvars.iv.next.i.i3.us.us, %30
  %71 = add nsw i64 %70, %65
  %arrayidx16.i.i.us.us = getelementptr inbounds float, float* %13, i64 %71
  %72 = load float, float* %arrayidx16.i.i.us.us, align 4, !tbaa !12
  %73 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us, float %72, float %67) #2
  store float %73, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i3.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %if.end.i.i.us.us.loopexit, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader
  %_local_id_y.i.0 = phi i64 [ %74, %pregion_for_end.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %17, %conv2.i.i
  %mul.i.i = mul nsw i32 %21, %conv2.i.i
  br i1 %cmp.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %pregion_for_entry.pregion_for_init.i.i
  br i1 %cmp4.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us.preheader
  %add.i.i.us = add nsw i32 %mul.i.i, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  br i1 %cmp4.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

pregion_for_end.i.i:                              ; preds = %if.then.i.i.us.31, %if.end.i.i.us.30, %pregion_for_entry.pregion_for_init.i.i
  %74 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond34.not = icmp eq i64 %74, 8
  br i1 %exitcond34.not, label %_pocl_kernel_mm2_kernel1.exit.loopexit56, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !21

_pocl_kernel_mm2_kernel1.exit.loopexit:           ; preds = %if.end.i.i.us.us.7.1
  br label %_pocl_kernel_mm2_kernel1.exit

_pocl_kernel_mm2_kernel1.exit.loopexit56:         ; preds = %pregion_for_end.i.i
  br label %_pocl_kernel_mm2_kernel1.exit

_pocl_kernel_mm2_kernel1.exit:                    ; preds = %pregion_for_end.i.i.us.6, %_pocl_kernel_mm2_kernel1.exit.loopexit56, %_pocl_kernel_mm2_kernel1.exit.loopexit
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %if.end.i.i.us.us.1.1, %pregion_for_entry.entry.i.i.us.us.1.preheader
  %_local_id_x.i.0.us.us.1 = phi i64 [ %212, %if.end.i.i.us.us.1.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1.preheader ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %cmp4.i.i.us.us.1 = icmp sgt i32 %21, %conv.i.i.us.us.1
  br i1 %cmp4.i.i.us.us.1, label %if.then.i.i.us.us.1, label %if.end.i.i.us.us.1

if.then.i.i.us.us.1:                              ; preds = %pregion_for_entry.entry.i.i.us.us.1
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %75 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %if.then.i.i.us.us.1
  %indvars.iv.next.i.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %if.then.i.i.us.us.1 ]
  %76 = phi float [ %82, %for.body.i.i.us.us.1 ], [ 0.000000e+00, %if.then.i.i.us.us.1 ]
  %77 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %64
  %arrayidx11.i.i.us.us.1 = getelementptr inbounds float, float* %10, i64 %77
  %78 = load float, float* %arrayidx11.i.i.us.us.1, align 4, !tbaa !12
  %mul12.i.i.us.us.1 = fmul float %29, %78
  %79 = mul nsw i64 %indvars.iv.next.i.i3.us.us.1, %30
  %80 = add nsw i64 %79, %75
  %arrayidx16.i.i.us.us.1 = getelementptr inbounds float, float* %13, i64 %80
  %81 = load float, float* %arrayidx16.i.i.us.us.1, align 4, !tbaa !12
  %82 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.1, float %81, float %76) #2
  store float %82, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %if.end.i.i.us.us.1.loopexit, label %for.body.i.i.us.us.1, !llvm.loop !19

if.end.i.i.us.us.1.loopexit:                      ; preds = %for.body.i.i.us.us.1
  br label %if.end.i.i.us.us.1

if.end.i.i.us.us.1:                               ; preds = %if.end.i.i.us.us.1.loopexit, %pregion_for_entry.entry.i.i.us.us.1
  %83 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %83, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %cmp4.i.i.us.us.1.1 = icmp sgt i32 %21, %conv.i.i.us.us.1.1
  br i1 %cmp4.i.i.us.us.1.1, label %if.then.i.i.us.us.1.1, label %if.end.i.i.us.us.1.1

pregion_for_end.i.i.us.1.loopexit:                ; preds = %if.end.i.i.us.us.1.1
  br label %pregion_for_end.i.i.us.1

pregion_for_end.i.i.us.1:                         ; preds = %pregion_for_end.i.i.us.1.loopexit, %pregion_for_end.i.i.us
  %84 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %84, 2
  %cmp.i.i.us.2 = icmp sgt i32 %17, %conv2.i.i.us.2
  %mul.i.i.us.2 = mul nsw i32 %21, %conv2.i.i.us.2
  %mul8.i.i.us.2 = mul nsw i32 %25, %conv2.i.i.us.2
  %85 = sext i32 %mul8.i.i.us.2 to i64
  br i1 %cmp.i.i.us.2, label %pregion_for_entry.entry.i.i.us.us.2.preheader, label %pregion_for_end.i.i.us.2

pregion_for_entry.entry.i.i.us.us.2.preheader:    ; preds = %pregion_for_end.i.i.us.1
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %if.end.i.i.us.us.2.1, %pregion_for_entry.entry.i.i.us.us.2.preheader
  %_local_id_x.i.0.us.us.2 = phi i64 [ %203, %if.end.i.i.us.us.2.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2.preheader ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %cmp4.i.i.us.us.2 = icmp sgt i32 %21, %conv.i.i.us.us.2
  br i1 %cmp4.i.i.us.us.2, label %if.then.i.i.us.us.2, label %if.end.i.i.us.us.2

if.then.i.i.us.us.2:                              ; preds = %pregion_for_entry.entry.i.i.us.us.2
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %86 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %if.then.i.i.us.us.2
  %indvars.iv.next.i.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %if.then.i.i.us.us.2 ]
  %87 = phi float [ %93, %for.body.i.i.us.us.2 ], [ 0.000000e+00, %if.then.i.i.us.us.2 ]
  %88 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %85
  %arrayidx11.i.i.us.us.2 = getelementptr inbounds float, float* %10, i64 %88
  %89 = load float, float* %arrayidx11.i.i.us.us.2, align 4, !tbaa !12
  %mul12.i.i.us.us.2 = fmul float %29, %89
  %90 = mul nsw i64 %indvars.iv.next.i.i3.us.us.2, %30
  %91 = add nsw i64 %90, %86
  %arrayidx16.i.i.us.us.2 = getelementptr inbounds float, float* %13, i64 %91
  %92 = load float, float* %arrayidx16.i.i.us.us.2, align 4, !tbaa !12
  %93 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.2, float %92, float %87) #2
  store float %93, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %if.end.i.i.us.us.2.loopexit, label %for.body.i.i.us.us.2, !llvm.loop !19

if.end.i.i.us.us.2.loopexit:                      ; preds = %for.body.i.i.us.us.2
  br label %if.end.i.i.us.us.2

if.end.i.i.us.us.2:                               ; preds = %if.end.i.i.us.us.2.loopexit, %pregion_for_entry.entry.i.i.us.us.2
  %94 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %94, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %cmp4.i.i.us.us.2.1 = icmp sgt i32 %21, %conv.i.i.us.us.2.1
  br i1 %cmp4.i.i.us.us.2.1, label %if.then.i.i.us.us.2.1, label %if.end.i.i.us.us.2.1

pregion_for_end.i.i.us.2.loopexit:                ; preds = %if.end.i.i.us.us.2.1
  br label %pregion_for_end.i.i.us.2

pregion_for_end.i.i.us.2:                         ; preds = %pregion_for_end.i.i.us.2.loopexit, %pregion_for_end.i.i.us.1
  %95 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %95, 3
  %cmp.i.i.us.3 = icmp sgt i32 %17, %conv2.i.i.us.3
  %mul.i.i.us.3 = mul nsw i32 %21, %conv2.i.i.us.3
  %mul8.i.i.us.3 = mul nsw i32 %25, %conv2.i.i.us.3
  %96 = sext i32 %mul8.i.i.us.3 to i64
  br i1 %cmp.i.i.us.3, label %pregion_for_entry.entry.i.i.us.us.3.preheader, label %pregion_for_end.i.i.us.3

pregion_for_entry.entry.i.i.us.us.3.preheader:    ; preds = %pregion_for_end.i.i.us.2
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %if.end.i.i.us.us.3.1, %pregion_for_entry.entry.i.i.us.us.3.preheader
  %_local_id_x.i.0.us.us.3 = phi i64 [ %194, %if.end.i.i.us.us.3.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3.preheader ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %cmp4.i.i.us.us.3 = icmp sgt i32 %21, %conv.i.i.us.us.3
  br i1 %cmp4.i.i.us.us.3, label %if.then.i.i.us.us.3, label %if.end.i.i.us.us.3

if.then.i.i.us.us.3:                              ; preds = %pregion_for_entry.entry.i.i.us.us.3
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %97 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %if.then.i.i.us.us.3
  %indvars.iv.next.i.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %if.then.i.i.us.us.3 ]
  %98 = phi float [ %104, %for.body.i.i.us.us.3 ], [ 0.000000e+00, %if.then.i.i.us.us.3 ]
  %99 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %96
  %arrayidx11.i.i.us.us.3 = getelementptr inbounds float, float* %10, i64 %99
  %100 = load float, float* %arrayidx11.i.i.us.us.3, align 4, !tbaa !12
  %mul12.i.i.us.us.3 = fmul float %29, %100
  %101 = mul nsw i64 %indvars.iv.next.i.i3.us.us.3, %30
  %102 = add nsw i64 %101, %97
  %arrayidx16.i.i.us.us.3 = getelementptr inbounds float, float* %13, i64 %102
  %103 = load float, float* %arrayidx16.i.i.us.us.3, align 4, !tbaa !12
  %104 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.3, float %103, float %98) #2
  store float %104, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %if.end.i.i.us.us.3.loopexit, label %for.body.i.i.us.us.3, !llvm.loop !19

if.end.i.i.us.us.3.loopexit:                      ; preds = %for.body.i.i.us.us.3
  br label %if.end.i.i.us.us.3

if.end.i.i.us.us.3:                               ; preds = %if.end.i.i.us.us.3.loopexit, %pregion_for_entry.entry.i.i.us.us.3
  %105 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %105, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %cmp4.i.i.us.us.3.1 = icmp sgt i32 %21, %conv.i.i.us.us.3.1
  br i1 %cmp4.i.i.us.us.3.1, label %if.then.i.i.us.us.3.1, label %if.end.i.i.us.us.3.1

pregion_for_end.i.i.us.3.loopexit:                ; preds = %if.end.i.i.us.us.3.1
  br label %pregion_for_end.i.i.us.3

pregion_for_end.i.i.us.3:                         ; preds = %pregion_for_end.i.i.us.3.loopexit, %pregion_for_end.i.i.us.2
  %106 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %106, 4
  %cmp.i.i.us.4 = icmp sgt i32 %17, %conv2.i.i.us.4
  %mul.i.i.us.4 = mul nsw i32 %21, %conv2.i.i.us.4
  %mul8.i.i.us.4 = mul nsw i32 %25, %conv2.i.i.us.4
  %107 = sext i32 %mul8.i.i.us.4 to i64
  br i1 %cmp.i.i.us.4, label %pregion_for_entry.entry.i.i.us.us.4.preheader, label %pregion_for_end.i.i.us.4

pregion_for_entry.entry.i.i.us.us.4.preheader:    ; preds = %pregion_for_end.i.i.us.3
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %if.end.i.i.us.us.4.1, %pregion_for_entry.entry.i.i.us.us.4.preheader
  %_local_id_x.i.0.us.us.4 = phi i64 [ %185, %if.end.i.i.us.us.4.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4.preheader ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %cmp4.i.i.us.us.4 = icmp sgt i32 %21, %conv.i.i.us.us.4
  br i1 %cmp4.i.i.us.us.4, label %if.then.i.i.us.us.4, label %if.end.i.i.us.us.4

if.then.i.i.us.us.4:                              ; preds = %pregion_for_entry.entry.i.i.us.us.4
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %108 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %if.then.i.i.us.us.4
  %indvars.iv.next.i.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %if.then.i.i.us.us.4 ]
  %109 = phi float [ %115, %for.body.i.i.us.us.4 ], [ 0.000000e+00, %if.then.i.i.us.us.4 ]
  %110 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %107
  %arrayidx11.i.i.us.us.4 = getelementptr inbounds float, float* %10, i64 %110
  %111 = load float, float* %arrayidx11.i.i.us.us.4, align 4, !tbaa !12
  %mul12.i.i.us.us.4 = fmul float %29, %111
  %112 = mul nsw i64 %indvars.iv.next.i.i3.us.us.4, %30
  %113 = add nsw i64 %112, %108
  %arrayidx16.i.i.us.us.4 = getelementptr inbounds float, float* %13, i64 %113
  %114 = load float, float* %arrayidx16.i.i.us.us.4, align 4, !tbaa !12
  %115 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.4, float %114, float %109) #2
  store float %115, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %if.end.i.i.us.us.4.loopexit, label %for.body.i.i.us.us.4, !llvm.loop !19

if.end.i.i.us.us.4.loopexit:                      ; preds = %for.body.i.i.us.us.4
  br label %if.end.i.i.us.us.4

if.end.i.i.us.us.4:                               ; preds = %if.end.i.i.us.us.4.loopexit, %pregion_for_entry.entry.i.i.us.us.4
  %116 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %116, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %cmp4.i.i.us.us.4.1 = icmp sgt i32 %21, %conv.i.i.us.us.4.1
  br i1 %cmp4.i.i.us.us.4.1, label %if.then.i.i.us.us.4.1, label %if.end.i.i.us.us.4.1

pregion_for_end.i.i.us.4.loopexit:                ; preds = %if.end.i.i.us.us.4.1
  br label %pregion_for_end.i.i.us.4

pregion_for_end.i.i.us.4:                         ; preds = %pregion_for_end.i.i.us.4.loopexit, %pregion_for_end.i.i.us.3
  %117 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %117, 5
  %cmp.i.i.us.5 = icmp sgt i32 %17, %conv2.i.i.us.5
  %mul.i.i.us.5 = mul nsw i32 %21, %conv2.i.i.us.5
  %mul8.i.i.us.5 = mul nsw i32 %25, %conv2.i.i.us.5
  %118 = sext i32 %mul8.i.i.us.5 to i64
  br i1 %cmp.i.i.us.5, label %pregion_for_entry.entry.i.i.us.us.5.preheader, label %pregion_for_end.i.i.us.5

pregion_for_entry.entry.i.i.us.us.5.preheader:    ; preds = %pregion_for_end.i.i.us.4
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %if.end.i.i.us.us.5.1, %pregion_for_entry.entry.i.i.us.us.5.preheader
  %_local_id_x.i.0.us.us.5 = phi i64 [ %176, %if.end.i.i.us.us.5.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5.preheader ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %cmp4.i.i.us.us.5 = icmp sgt i32 %21, %conv.i.i.us.us.5
  br i1 %cmp4.i.i.us.us.5, label %if.then.i.i.us.us.5, label %if.end.i.i.us.us.5

if.then.i.i.us.us.5:                              ; preds = %pregion_for_entry.entry.i.i.us.us.5
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %119 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %if.then.i.i.us.us.5
  %indvars.iv.next.i.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %if.then.i.i.us.us.5 ]
  %120 = phi float [ %126, %for.body.i.i.us.us.5 ], [ 0.000000e+00, %if.then.i.i.us.us.5 ]
  %121 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %118
  %arrayidx11.i.i.us.us.5 = getelementptr inbounds float, float* %10, i64 %121
  %122 = load float, float* %arrayidx11.i.i.us.us.5, align 4, !tbaa !12
  %mul12.i.i.us.us.5 = fmul float %29, %122
  %123 = mul nsw i64 %indvars.iv.next.i.i3.us.us.5, %30
  %124 = add nsw i64 %123, %119
  %arrayidx16.i.i.us.us.5 = getelementptr inbounds float, float* %13, i64 %124
  %125 = load float, float* %arrayidx16.i.i.us.us.5, align 4, !tbaa !12
  %126 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.5, float %125, float %120) #2
  store float %126, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %if.end.i.i.us.us.5.loopexit, label %for.body.i.i.us.us.5, !llvm.loop !19

if.end.i.i.us.us.5.loopexit:                      ; preds = %for.body.i.i.us.us.5
  br label %if.end.i.i.us.us.5

if.end.i.i.us.us.5:                               ; preds = %if.end.i.i.us.us.5.loopexit, %pregion_for_entry.entry.i.i.us.us.5
  %127 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %127, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %cmp4.i.i.us.us.5.1 = icmp sgt i32 %21, %conv.i.i.us.us.5.1
  br i1 %cmp4.i.i.us.us.5.1, label %if.then.i.i.us.us.5.1, label %if.end.i.i.us.us.5.1

pregion_for_end.i.i.us.5.loopexit:                ; preds = %if.end.i.i.us.us.5.1
  br label %pregion_for_end.i.i.us.5

pregion_for_end.i.i.us.5:                         ; preds = %pregion_for_end.i.i.us.5.loopexit, %pregion_for_end.i.i.us.4
  %128 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %128, 6
  %cmp.i.i.us.6 = icmp sgt i32 %17, %conv2.i.i.us.6
  %mul.i.i.us.6 = mul nsw i32 %21, %conv2.i.i.us.6
  %mul8.i.i.us.6 = mul nsw i32 %25, %conv2.i.i.us.6
  %129 = sext i32 %mul8.i.i.us.6 to i64
  br i1 %cmp.i.i.us.6, label %pregion_for_entry.entry.i.i.us.us.6.preheader, label %pregion_for_end.i.i.us.6

pregion_for_entry.entry.i.i.us.us.6.preheader:    ; preds = %pregion_for_end.i.i.us.5
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %if.end.i.i.us.us.6.1, %pregion_for_entry.entry.i.i.us.us.6.preheader
  %_local_id_x.i.0.us.us.6 = phi i64 [ %167, %if.end.i.i.us.us.6.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6.preheader ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %cmp4.i.i.us.us.6 = icmp sgt i32 %21, %conv.i.i.us.us.6
  br i1 %cmp4.i.i.us.us.6, label %if.then.i.i.us.us.6, label %if.end.i.i.us.us.6

if.then.i.i.us.us.6:                              ; preds = %pregion_for_entry.entry.i.i.us.us.6
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %130 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %if.then.i.i.us.us.6
  %indvars.iv.next.i.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %if.then.i.i.us.us.6 ]
  %131 = phi float [ %137, %for.body.i.i.us.us.6 ], [ 0.000000e+00, %if.then.i.i.us.us.6 ]
  %132 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %129
  %arrayidx11.i.i.us.us.6 = getelementptr inbounds float, float* %10, i64 %132
  %133 = load float, float* %arrayidx11.i.i.us.us.6, align 4, !tbaa !12
  %mul12.i.i.us.us.6 = fmul float %29, %133
  %134 = mul nsw i64 %indvars.iv.next.i.i3.us.us.6, %30
  %135 = add nsw i64 %134, %130
  %arrayidx16.i.i.us.us.6 = getelementptr inbounds float, float* %13, i64 %135
  %136 = load float, float* %arrayidx16.i.i.us.us.6, align 4, !tbaa !12
  %137 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.6, float %136, float %131) #2
  store float %137, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %if.end.i.i.us.us.6.loopexit, label %for.body.i.i.us.us.6, !llvm.loop !19

if.end.i.i.us.us.6.loopexit:                      ; preds = %for.body.i.i.us.us.6
  br label %if.end.i.i.us.us.6

if.end.i.i.us.us.6:                               ; preds = %if.end.i.i.us.us.6.loopexit, %pregion_for_entry.entry.i.i.us.us.6
  %138 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %138, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %cmp4.i.i.us.us.6.1 = icmp sgt i32 %21, %conv.i.i.us.us.6.1
  br i1 %cmp4.i.i.us.us.6.1, label %if.then.i.i.us.us.6.1, label %if.end.i.i.us.us.6.1

pregion_for_end.i.i.us.6.loopexit:                ; preds = %if.end.i.i.us.us.6.1
  br label %pregion_for_end.i.i.us.6

pregion_for_end.i.i.us.6:                         ; preds = %pregion_for_end.i.i.us.6.loopexit, %pregion_for_end.i.i.us.5
  %139 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %139, 7
  %cmp.i.i.us.7 = icmp sgt i32 %17, %conv2.i.i.us.7
  %mul.i.i.us.7 = mul nsw i32 %21, %conv2.i.i.us.7
  %mul8.i.i.us.7 = mul nsw i32 %25, %conv2.i.i.us.7
  %140 = sext i32 %mul8.i.i.us.7 to i64
  br i1 %cmp.i.i.us.7, label %pregion_for_entry.entry.i.i.us.us.7.preheader, label %_pocl_kernel_mm2_kernel1.exit

pregion_for_entry.entry.i.i.us.us.7.preheader:    ; preds = %pregion_for_end.i.i.us.6
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %if.end.i.i.us.us.7.1, %pregion_for_entry.entry.i.i.us.us.7.preheader
  %_local_id_x.i.0.us.us.7 = phi i64 [ %158, %if.end.i.i.us.us.7.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7.preheader ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %cmp4.i.i.us.us.7 = icmp sgt i32 %21, %conv.i.i.us.us.7
  br i1 %cmp4.i.i.us.us.7, label %if.then.i.i.us.us.7, label %if.end.i.i.us.us.7

if.then.i.i.us.us.7:                              ; preds = %pregion_for_entry.entry.i.i.us.us.7
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %141 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %if.then.i.i.us.us.7
  %indvars.iv.next.i.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %if.then.i.i.us.us.7 ]
  %142 = phi float [ %148, %for.body.i.i.us.us.7 ], [ 0.000000e+00, %if.then.i.i.us.us.7 ]
  %143 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %140
  %arrayidx11.i.i.us.us.7 = getelementptr inbounds float, float* %10, i64 %143
  %144 = load float, float* %arrayidx11.i.i.us.us.7, align 4, !tbaa !12
  %mul12.i.i.us.us.7 = fmul float %29, %144
  %145 = mul nsw i64 %indvars.iv.next.i.i3.us.us.7, %30
  %146 = add nsw i64 %145, %141
  %arrayidx16.i.i.us.us.7 = getelementptr inbounds float, float* %13, i64 %146
  %147 = load float, float* %arrayidx16.i.i.us.us.7, align 4, !tbaa !12
  %148 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.7, float %147, float %142) #2
  store float %148, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %if.end.i.i.us.us.7.loopexit, label %for.body.i.i.us.us.7, !llvm.loop !19

if.end.i.i.us.us.7.loopexit:                      ; preds = %for.body.i.i.us.us.7
  br label %if.end.i.i.us.us.7

if.end.i.i.us.us.7:                               ; preds = %if.end.i.i.us.us.7.loopexit, %pregion_for_entry.entry.i.i.us.us.7
  %149 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %149, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %cmp4.i.i.us.us.7.1 = icmp sgt i32 %21, %conv.i.i.us.us.7.1
  br i1 %cmp4.i.i.us.us.7.1, label %if.then.i.i.us.us.7.1, label %if.end.i.i.us.us.7.1

if.then.i.i.us.1:                                 ; preds = %if.end.i.i.us
  %add.i.i.us.1 = add nsw i32 %mul.i.i, %conv.i.i.us.1
  %idxprom.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.then.i.i.us.1, %if.end.i.i.us
  br i1 %cmp4.i.i.us.2, label %if.then.i.i.us.2, label %if.end.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %if.end.i.i.us.1
  %add.i.i.us.2 = add nsw i32 %mul.i.i, %conv.i.i.us.2
  %idxprom.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2

if.end.i.i.us.2:                                  ; preds = %if.then.i.i.us.2, %if.end.i.i.us.1
  br i1 %cmp4.i.i.us.3, label %if.then.i.i.us.3, label %if.end.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %if.end.i.i.us.2
  %add.i.i.us.3 = add nsw i32 %mul.i.i, %conv.i.i.us.3
  %idxprom.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3

if.end.i.i.us.3:                                  ; preds = %if.then.i.i.us.3, %if.end.i.i.us.2
  br i1 %cmp4.i.i.us.4, label %if.then.i.i.us.4, label %if.end.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %if.end.i.i.us.3
  %add.i.i.us.4 = add nsw i32 %mul.i.i, %conv.i.i.us.4
  %idxprom.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4

if.end.i.i.us.4:                                  ; preds = %if.then.i.i.us.4, %if.end.i.i.us.3
  br i1 %cmp4.i.i.us.5, label %if.then.i.i.us.5, label %if.end.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %if.end.i.i.us.4
  %add.i.i.us.5 = add nsw i32 %mul.i.i, %conv.i.i.us.5
  %idxprom.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5

if.end.i.i.us.5:                                  ; preds = %if.then.i.i.us.5, %if.end.i.i.us.4
  br i1 %cmp4.i.i.us.6, label %if.then.i.i.us.6, label %if.end.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %if.end.i.i.us.5
  %add.i.i.us.6 = add nsw i32 %mul.i.i, %conv.i.i.us.6
  %idxprom.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6

if.end.i.i.us.6:                                  ; preds = %if.then.i.i.us.6, %if.end.i.i.us.5
  br i1 %cmp4.i.i.us.7, label %if.then.i.i.us.7, label %if.end.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %if.end.i.i.us.6
  %add.i.i.us.7 = add nsw i32 %mul.i.i, %conv.i.i.us.7
  %idxprom.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7

if.end.i.i.us.7:                                  ; preds = %if.then.i.i.us.7, %if.end.i.i.us.6
  br i1 %cmp4.i.i.us.8, label %if.then.i.i.us.8, label %if.end.i.i.us.8

if.then.i.i.us.8:                                 ; preds = %if.end.i.i.us.7
  %add.i.i.us.8 = add nsw i32 %mul.i.i, %conv.i.i.us.8
  %idxprom.i.i.us.8 = sext i32 %add.i.i.us.8 to i64
  %arrayidx.i.i.us.8 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.8
  store float 0.000000e+00, float* %arrayidx.i.i.us.8, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.8

if.end.i.i.us.8:                                  ; preds = %if.then.i.i.us.8, %if.end.i.i.us.7
  br i1 %cmp4.i.i.us.9, label %if.then.i.i.us.9, label %if.end.i.i.us.9

if.then.i.i.us.9:                                 ; preds = %if.end.i.i.us.8
  %add.i.i.us.9 = add nsw i32 %mul.i.i, %conv.i.i.us.9
  %idxprom.i.i.us.9 = sext i32 %add.i.i.us.9 to i64
  %arrayidx.i.i.us.9 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.9
  store float 0.000000e+00, float* %arrayidx.i.i.us.9, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.9

if.end.i.i.us.9:                                  ; preds = %if.then.i.i.us.9, %if.end.i.i.us.8
  br i1 %cmp4.i.i.us.10, label %if.then.i.i.us.10, label %if.end.i.i.us.10

if.then.i.i.us.10:                                ; preds = %if.end.i.i.us.9
  %add.i.i.us.10 = add nsw i32 %mul.i.i, %conv.i.i.us.10
  %idxprom.i.i.us.10 = sext i32 %add.i.i.us.10 to i64
  %arrayidx.i.i.us.10 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.10
  store float 0.000000e+00, float* %arrayidx.i.i.us.10, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.10

if.end.i.i.us.10:                                 ; preds = %if.then.i.i.us.10, %if.end.i.i.us.9
  br i1 %cmp4.i.i.us.11, label %if.then.i.i.us.11, label %if.end.i.i.us.11

if.then.i.i.us.11:                                ; preds = %if.end.i.i.us.10
  %add.i.i.us.11 = add nsw i32 %mul.i.i, %conv.i.i.us.11
  %idxprom.i.i.us.11 = sext i32 %add.i.i.us.11 to i64
  %arrayidx.i.i.us.11 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.11
  store float 0.000000e+00, float* %arrayidx.i.i.us.11, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.11

if.end.i.i.us.11:                                 ; preds = %if.then.i.i.us.11, %if.end.i.i.us.10
  br i1 %cmp4.i.i.us.12, label %if.then.i.i.us.12, label %if.end.i.i.us.12

if.then.i.i.us.12:                                ; preds = %if.end.i.i.us.11
  %add.i.i.us.12 = add nsw i32 %mul.i.i, %conv.i.i.us.12
  %idxprom.i.i.us.12 = sext i32 %add.i.i.us.12 to i64
  %arrayidx.i.i.us.12 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.12
  store float 0.000000e+00, float* %arrayidx.i.i.us.12, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.12

if.end.i.i.us.12:                                 ; preds = %if.then.i.i.us.12, %if.end.i.i.us.11
  br i1 %cmp4.i.i.us.13, label %if.then.i.i.us.13, label %if.end.i.i.us.13

if.then.i.i.us.13:                                ; preds = %if.end.i.i.us.12
  %add.i.i.us.13 = add nsw i32 %mul.i.i, %conv.i.i.us.13
  %idxprom.i.i.us.13 = sext i32 %add.i.i.us.13 to i64
  %arrayidx.i.i.us.13 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.13
  store float 0.000000e+00, float* %arrayidx.i.i.us.13, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.13

if.end.i.i.us.13:                                 ; preds = %if.then.i.i.us.13, %if.end.i.i.us.12
  br i1 %cmp4.i.i.us.14, label %if.then.i.i.us.14, label %if.end.i.i.us.14

if.then.i.i.us.14:                                ; preds = %if.end.i.i.us.13
  %add.i.i.us.14 = add nsw i32 %mul.i.i, %conv.i.i.us.14
  %idxprom.i.i.us.14 = sext i32 %add.i.i.us.14 to i64
  %arrayidx.i.i.us.14 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.14
  store float 0.000000e+00, float* %arrayidx.i.i.us.14, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.14

if.end.i.i.us.14:                                 ; preds = %if.then.i.i.us.14, %if.end.i.i.us.13
  br i1 %cmp4.i.i.us.15, label %if.then.i.i.us.15, label %if.end.i.i.us.15

if.then.i.i.us.15:                                ; preds = %if.end.i.i.us.14
  %add.i.i.us.15 = add nsw i32 %mul.i.i, %conv.i.i.us.15
  %idxprom.i.i.us.15 = sext i32 %add.i.i.us.15 to i64
  %arrayidx.i.i.us.15 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.15
  store float 0.000000e+00, float* %arrayidx.i.i.us.15, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.15

if.end.i.i.us.15:                                 ; preds = %if.then.i.i.us.15, %if.end.i.i.us.14
  br i1 %cmp4.i.i.us.16, label %if.then.i.i.us.16, label %if.end.i.i.us.16

if.then.i.i.us.16:                                ; preds = %if.end.i.i.us.15
  %add.i.i.us.16 = add nsw i32 %mul.i.i, %conv.i.i.us.16
  %idxprom.i.i.us.16 = sext i32 %add.i.i.us.16 to i64
  %arrayidx.i.i.us.16 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.16
  store float 0.000000e+00, float* %arrayidx.i.i.us.16, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.16

if.end.i.i.us.16:                                 ; preds = %if.then.i.i.us.16, %if.end.i.i.us.15
  br i1 %cmp4.i.i.us.17, label %if.then.i.i.us.17, label %if.end.i.i.us.17

if.then.i.i.us.17:                                ; preds = %if.end.i.i.us.16
  %add.i.i.us.17 = add nsw i32 %mul.i.i, %conv.i.i.us.17
  %idxprom.i.i.us.17 = sext i32 %add.i.i.us.17 to i64
  %arrayidx.i.i.us.17 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.17
  store float 0.000000e+00, float* %arrayidx.i.i.us.17, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.17

if.end.i.i.us.17:                                 ; preds = %if.then.i.i.us.17, %if.end.i.i.us.16
  br i1 %cmp4.i.i.us.18, label %if.then.i.i.us.18, label %if.end.i.i.us.18

if.then.i.i.us.18:                                ; preds = %if.end.i.i.us.17
  %add.i.i.us.18 = add nsw i32 %mul.i.i, %conv.i.i.us.18
  %idxprom.i.i.us.18 = sext i32 %add.i.i.us.18 to i64
  %arrayidx.i.i.us.18 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.18
  store float 0.000000e+00, float* %arrayidx.i.i.us.18, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.18

if.end.i.i.us.18:                                 ; preds = %if.then.i.i.us.18, %if.end.i.i.us.17
  br i1 %cmp4.i.i.us.19, label %if.then.i.i.us.19, label %if.end.i.i.us.19

if.then.i.i.us.19:                                ; preds = %if.end.i.i.us.18
  %add.i.i.us.19 = add nsw i32 %mul.i.i, %conv.i.i.us.19
  %idxprom.i.i.us.19 = sext i32 %add.i.i.us.19 to i64
  %arrayidx.i.i.us.19 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.19
  store float 0.000000e+00, float* %arrayidx.i.i.us.19, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.19

if.end.i.i.us.19:                                 ; preds = %if.then.i.i.us.19, %if.end.i.i.us.18
  br i1 %cmp4.i.i.us.20, label %if.then.i.i.us.20, label %if.end.i.i.us.20

if.then.i.i.us.20:                                ; preds = %if.end.i.i.us.19
  %add.i.i.us.20 = add nsw i32 %mul.i.i, %conv.i.i.us.20
  %idxprom.i.i.us.20 = sext i32 %add.i.i.us.20 to i64
  %arrayidx.i.i.us.20 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.20
  store float 0.000000e+00, float* %arrayidx.i.i.us.20, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.20

if.end.i.i.us.20:                                 ; preds = %if.then.i.i.us.20, %if.end.i.i.us.19
  br i1 %cmp4.i.i.us.21, label %if.then.i.i.us.21, label %if.end.i.i.us.21

if.then.i.i.us.21:                                ; preds = %if.end.i.i.us.20
  %add.i.i.us.21 = add nsw i32 %mul.i.i, %conv.i.i.us.21
  %idxprom.i.i.us.21 = sext i32 %add.i.i.us.21 to i64
  %arrayidx.i.i.us.21 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.21
  store float 0.000000e+00, float* %arrayidx.i.i.us.21, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.21

if.end.i.i.us.21:                                 ; preds = %if.then.i.i.us.21, %if.end.i.i.us.20
  br i1 %cmp4.i.i.us.22, label %if.then.i.i.us.22, label %if.end.i.i.us.22

if.then.i.i.us.22:                                ; preds = %if.end.i.i.us.21
  %add.i.i.us.22 = add nsw i32 %mul.i.i, %conv.i.i.us.22
  %idxprom.i.i.us.22 = sext i32 %add.i.i.us.22 to i64
  %arrayidx.i.i.us.22 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.22
  store float 0.000000e+00, float* %arrayidx.i.i.us.22, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.22

if.end.i.i.us.22:                                 ; preds = %if.then.i.i.us.22, %if.end.i.i.us.21
  br i1 %cmp4.i.i.us.23, label %if.then.i.i.us.23, label %if.end.i.i.us.23

if.then.i.i.us.23:                                ; preds = %if.end.i.i.us.22
  %add.i.i.us.23 = add nsw i32 %mul.i.i, %conv.i.i.us.23
  %idxprom.i.i.us.23 = sext i32 %add.i.i.us.23 to i64
  %arrayidx.i.i.us.23 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.23
  store float 0.000000e+00, float* %arrayidx.i.i.us.23, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.23

if.end.i.i.us.23:                                 ; preds = %if.then.i.i.us.23, %if.end.i.i.us.22
  br i1 %cmp4.i.i.us.24, label %if.then.i.i.us.24, label %if.end.i.i.us.24

if.then.i.i.us.24:                                ; preds = %if.end.i.i.us.23
  %add.i.i.us.24 = add nsw i32 %mul.i.i, %conv.i.i.us.24
  %idxprom.i.i.us.24 = sext i32 %add.i.i.us.24 to i64
  %arrayidx.i.i.us.24 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.24
  store float 0.000000e+00, float* %arrayidx.i.i.us.24, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.24

if.end.i.i.us.24:                                 ; preds = %if.then.i.i.us.24, %if.end.i.i.us.23
  br i1 %cmp4.i.i.us.25, label %if.then.i.i.us.25, label %if.end.i.i.us.25

if.then.i.i.us.25:                                ; preds = %if.end.i.i.us.24
  %add.i.i.us.25 = add nsw i32 %mul.i.i, %conv.i.i.us.25
  %idxprom.i.i.us.25 = sext i32 %add.i.i.us.25 to i64
  %arrayidx.i.i.us.25 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.25
  store float 0.000000e+00, float* %arrayidx.i.i.us.25, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.25

if.end.i.i.us.25:                                 ; preds = %if.then.i.i.us.25, %if.end.i.i.us.24
  br i1 %cmp4.i.i.us.26, label %if.then.i.i.us.26, label %if.end.i.i.us.26

if.then.i.i.us.26:                                ; preds = %if.end.i.i.us.25
  %add.i.i.us.26 = add nsw i32 %mul.i.i, %conv.i.i.us.26
  %idxprom.i.i.us.26 = sext i32 %add.i.i.us.26 to i64
  %arrayidx.i.i.us.26 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.26
  store float 0.000000e+00, float* %arrayidx.i.i.us.26, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.26

if.end.i.i.us.26:                                 ; preds = %if.then.i.i.us.26, %if.end.i.i.us.25
  br i1 %cmp4.i.i.us.27, label %if.then.i.i.us.27, label %if.end.i.i.us.27

if.then.i.i.us.27:                                ; preds = %if.end.i.i.us.26
  %add.i.i.us.27 = add nsw i32 %mul.i.i, %conv.i.i.us.27
  %idxprom.i.i.us.27 = sext i32 %add.i.i.us.27 to i64
  %arrayidx.i.i.us.27 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.27
  store float 0.000000e+00, float* %arrayidx.i.i.us.27, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.27

if.end.i.i.us.27:                                 ; preds = %if.then.i.i.us.27, %if.end.i.i.us.26
  br i1 %cmp4.i.i.us.28, label %if.then.i.i.us.28, label %if.end.i.i.us.28

if.then.i.i.us.28:                                ; preds = %if.end.i.i.us.27
  %add.i.i.us.28 = add nsw i32 %mul.i.i, %conv.i.i.us.28
  %idxprom.i.i.us.28 = sext i32 %add.i.i.us.28 to i64
  %arrayidx.i.i.us.28 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.28
  store float 0.000000e+00, float* %arrayidx.i.i.us.28, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.28

if.end.i.i.us.28:                                 ; preds = %if.then.i.i.us.28, %if.end.i.i.us.27
  br i1 %cmp4.i.i.us.29, label %if.then.i.i.us.29, label %if.end.i.i.us.29

if.then.i.i.us.29:                                ; preds = %if.end.i.i.us.28
  %add.i.i.us.29 = add nsw i32 %mul.i.i, %conv.i.i.us.29
  %idxprom.i.i.us.29 = sext i32 %add.i.i.us.29 to i64
  %arrayidx.i.i.us.29 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.29
  store float 0.000000e+00, float* %arrayidx.i.i.us.29, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.29

if.end.i.i.us.29:                                 ; preds = %if.then.i.i.us.29, %if.end.i.i.us.28
  br i1 %cmp4.i.i.us.30, label %if.then.i.i.us.30, label %if.end.i.i.us.30

if.then.i.i.us.30:                                ; preds = %if.end.i.i.us.29
  %add.i.i.us.30 = add nsw i32 %mul.i.i, %conv.i.i.us.30
  %idxprom.i.i.us.30 = sext i32 %add.i.i.us.30 to i64
  %arrayidx.i.i.us.30 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.30
  store float 0.000000e+00, float* %arrayidx.i.i.us.30, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.30

if.end.i.i.us.30:                                 ; preds = %if.then.i.i.us.30, %if.end.i.i.us.29
  br i1 %cmp4.i.i.us.31, label %if.then.i.i.us.31, label %pregion_for_end.i.i

if.then.i.i.us.31:                                ; preds = %if.end.i.i.us.30
  %add.i.i.us.31 = add nsw i32 %mul.i.i, %conv.i.i.us.31
  %idxprom.i.i.us.31 = sext i32 %add.i.i.us.31 to i64
  %arrayidx.i.i.us.31 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.31
  store float 0.000000e+00, float* %arrayidx.i.i.us.31, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

if.then.i.i.us.us.7.1:                            ; preds = %if.end.i.i.us.us.7
  %add.i.i.us.us.7.1 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7.1 = shl i64 %add1.i.i.i.us.us.7.1, 32
  %150 = ashr exact i64 %sext.i.i.us.us.7.1, 32
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %if.then.i.i.us.us.7.1
  %indvars.iv.next.i.i3.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %if.then.i.i.us.us.7.1 ]
  %151 = phi float [ %157, %for.body.i.i.us.us.7.1 ], [ 0.000000e+00, %if.then.i.i.us.us.7.1 ]
  %152 = add nsw i64 %indvars.iv.next.i.i3.us.us.7.1, %140
  %arrayidx11.i.i.us.us.7.1 = getelementptr inbounds float, float* %10, i64 %152
  %153 = load float, float* %arrayidx11.i.i.us.us.7.1, align 4, !tbaa !12
  %mul12.i.i.us.us.7.1 = fmul float %29, %153
  %154 = mul nsw i64 %indvars.iv.next.i.i3.us.us.7.1, %30
  %155 = add nsw i64 %154, %150
  %arrayidx16.i.i.us.us.7.1 = getelementptr inbounds float, float* %13, i64 %155
  %156 = load float, float* %arrayidx16.i.i.us.us.7.1, align 4, !tbaa !12
  %157 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.7.1, float %156, float %151) #2
  store float %157, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7.1, label %if.end.i.i.us.us.7.1.loopexit, label %for.body.i.i.us.us.7.1, !llvm.loop !19

if.end.i.i.us.us.7.1.loopexit:                    ; preds = %for.body.i.i.us.us.7.1
  br label %if.end.i.i.us.us.7.1

if.end.i.i.us.us.7.1:                             ; preds = %if.end.i.i.us.us.7.1.loopexit, %if.end.i.i.us.us.7
  %158 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %158, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_mm2_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !23

if.then.i.i.us.us.6.1:                            ; preds = %if.end.i.i.us.us.6
  %add.i.i.us.us.6.1 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6.1 = shl i64 %add1.i.i.i.us.us.6.1, 32
  %159 = ashr exact i64 %sext.i.i.us.us.6.1, 32
  br label %for.body.i.i.us.us.6.1

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %if.then.i.i.us.us.6.1
  %indvars.iv.next.i.i3.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %if.then.i.i.us.us.6.1 ]
  %160 = phi float [ %166, %for.body.i.i.us.us.6.1 ], [ 0.000000e+00, %if.then.i.i.us.us.6.1 ]
  %161 = add nsw i64 %indvars.iv.next.i.i3.us.us.6.1, %129
  %arrayidx11.i.i.us.us.6.1 = getelementptr inbounds float, float* %10, i64 %161
  %162 = load float, float* %arrayidx11.i.i.us.us.6.1, align 4, !tbaa !12
  %mul12.i.i.us.us.6.1 = fmul float %29, %162
  %163 = mul nsw i64 %indvars.iv.next.i.i3.us.us.6.1, %30
  %164 = add nsw i64 %163, %159
  %arrayidx16.i.i.us.us.6.1 = getelementptr inbounds float, float* %13, i64 %164
  %165 = load float, float* %arrayidx16.i.i.us.us.6.1, align 4, !tbaa !12
  %166 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.6.1, float %165, float %160) #2
  store float %166, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6.1, label %if.end.i.i.us.us.6.1.loopexit, label %for.body.i.i.us.us.6.1, !llvm.loop !19

if.end.i.i.us.us.6.1.loopexit:                    ; preds = %for.body.i.i.us.us.6.1
  br label %if.end.i.i.us.us.6.1

if.end.i.i.us.us.6.1:                             ; preds = %if.end.i.i.us.us.6.1.loopexit, %if.end.i.i.us.us.6
  %167 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %167, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us.6.loopexit, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !23

if.then.i.i.us.us.5.1:                            ; preds = %if.end.i.i.us.us.5
  %add.i.i.us.us.5.1 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5.1 = shl i64 %add1.i.i.i.us.us.5.1, 32
  %168 = ashr exact i64 %sext.i.i.us.us.5.1, 32
  br label %for.body.i.i.us.us.5.1

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %if.then.i.i.us.us.5.1
  %indvars.iv.next.i.i3.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %if.then.i.i.us.us.5.1 ]
  %169 = phi float [ %175, %for.body.i.i.us.us.5.1 ], [ 0.000000e+00, %if.then.i.i.us.us.5.1 ]
  %170 = add nsw i64 %indvars.iv.next.i.i3.us.us.5.1, %118
  %arrayidx11.i.i.us.us.5.1 = getelementptr inbounds float, float* %10, i64 %170
  %171 = load float, float* %arrayidx11.i.i.us.us.5.1, align 4, !tbaa !12
  %mul12.i.i.us.us.5.1 = fmul float %29, %171
  %172 = mul nsw i64 %indvars.iv.next.i.i3.us.us.5.1, %30
  %173 = add nsw i64 %172, %168
  %arrayidx16.i.i.us.us.5.1 = getelementptr inbounds float, float* %13, i64 %173
  %174 = load float, float* %arrayidx16.i.i.us.us.5.1, align 4, !tbaa !12
  %175 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.5.1, float %174, float %169) #2
  store float %175, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5.1, label %if.end.i.i.us.us.5.1.loopexit, label %for.body.i.i.us.us.5.1, !llvm.loop !19

if.end.i.i.us.us.5.1.loopexit:                    ; preds = %for.body.i.i.us.us.5.1
  br label %if.end.i.i.us.us.5.1

if.end.i.i.us.us.5.1:                             ; preds = %if.end.i.i.us.us.5.1.loopexit, %if.end.i.i.us.us.5
  %176 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %176, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us.5.loopexit, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !23

if.then.i.i.us.us.4.1:                            ; preds = %if.end.i.i.us.us.4
  %add.i.i.us.us.4.1 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4.1 = shl i64 %add1.i.i.i.us.us.4.1, 32
  %177 = ashr exact i64 %sext.i.i.us.us.4.1, 32
  br label %for.body.i.i.us.us.4.1

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %if.then.i.i.us.us.4.1
  %indvars.iv.next.i.i3.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %if.then.i.i.us.us.4.1 ]
  %178 = phi float [ %184, %for.body.i.i.us.us.4.1 ], [ 0.000000e+00, %if.then.i.i.us.us.4.1 ]
  %179 = add nsw i64 %indvars.iv.next.i.i3.us.us.4.1, %107
  %arrayidx11.i.i.us.us.4.1 = getelementptr inbounds float, float* %10, i64 %179
  %180 = load float, float* %arrayidx11.i.i.us.us.4.1, align 4, !tbaa !12
  %mul12.i.i.us.us.4.1 = fmul float %29, %180
  %181 = mul nsw i64 %indvars.iv.next.i.i3.us.us.4.1, %30
  %182 = add nsw i64 %181, %177
  %arrayidx16.i.i.us.us.4.1 = getelementptr inbounds float, float* %13, i64 %182
  %183 = load float, float* %arrayidx16.i.i.us.us.4.1, align 4, !tbaa !12
  %184 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.4.1, float %183, float %178) #2
  store float %184, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4.1, label %if.end.i.i.us.us.4.1.loopexit, label %for.body.i.i.us.us.4.1, !llvm.loop !19

if.end.i.i.us.us.4.1.loopexit:                    ; preds = %for.body.i.i.us.us.4.1
  br label %if.end.i.i.us.us.4.1

if.end.i.i.us.us.4.1:                             ; preds = %if.end.i.i.us.us.4.1.loopexit, %if.end.i.i.us.us.4
  %185 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %185, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us.4.loopexit, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !23

if.then.i.i.us.us.3.1:                            ; preds = %if.end.i.i.us.us.3
  %add.i.i.us.us.3.1 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3.1 = shl i64 %add1.i.i.i.us.us.3.1, 32
  %186 = ashr exact i64 %sext.i.i.us.us.3.1, 32
  br label %for.body.i.i.us.us.3.1

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %if.then.i.i.us.us.3.1
  %indvars.iv.next.i.i3.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %if.then.i.i.us.us.3.1 ]
  %187 = phi float [ %193, %for.body.i.i.us.us.3.1 ], [ 0.000000e+00, %if.then.i.i.us.us.3.1 ]
  %188 = add nsw i64 %indvars.iv.next.i.i3.us.us.3.1, %96
  %arrayidx11.i.i.us.us.3.1 = getelementptr inbounds float, float* %10, i64 %188
  %189 = load float, float* %arrayidx11.i.i.us.us.3.1, align 4, !tbaa !12
  %mul12.i.i.us.us.3.1 = fmul float %29, %189
  %190 = mul nsw i64 %indvars.iv.next.i.i3.us.us.3.1, %30
  %191 = add nsw i64 %190, %186
  %arrayidx16.i.i.us.us.3.1 = getelementptr inbounds float, float* %13, i64 %191
  %192 = load float, float* %arrayidx16.i.i.us.us.3.1, align 4, !tbaa !12
  %193 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.3.1, float %192, float %187) #2
  store float %193, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3.1, label %if.end.i.i.us.us.3.1.loopexit, label %for.body.i.i.us.us.3.1, !llvm.loop !19

if.end.i.i.us.us.3.1.loopexit:                    ; preds = %for.body.i.i.us.us.3.1
  br label %if.end.i.i.us.us.3.1

if.end.i.i.us.us.3.1:                             ; preds = %if.end.i.i.us.us.3.1.loopexit, %if.end.i.i.us.us.3
  %194 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %194, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us.3.loopexit, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !23

if.then.i.i.us.us.2.1:                            ; preds = %if.end.i.i.us.us.2
  %add.i.i.us.us.2.1 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2.1 = shl i64 %add1.i.i.i.us.us.2.1, 32
  %195 = ashr exact i64 %sext.i.i.us.us.2.1, 32
  br label %for.body.i.i.us.us.2.1

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %if.then.i.i.us.us.2.1
  %indvars.iv.next.i.i3.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %if.then.i.i.us.us.2.1 ]
  %196 = phi float [ %202, %for.body.i.i.us.us.2.1 ], [ 0.000000e+00, %if.then.i.i.us.us.2.1 ]
  %197 = add nsw i64 %indvars.iv.next.i.i3.us.us.2.1, %85
  %arrayidx11.i.i.us.us.2.1 = getelementptr inbounds float, float* %10, i64 %197
  %198 = load float, float* %arrayidx11.i.i.us.us.2.1, align 4, !tbaa !12
  %mul12.i.i.us.us.2.1 = fmul float %29, %198
  %199 = mul nsw i64 %indvars.iv.next.i.i3.us.us.2.1, %30
  %200 = add nsw i64 %199, %195
  %arrayidx16.i.i.us.us.2.1 = getelementptr inbounds float, float* %13, i64 %200
  %201 = load float, float* %arrayidx16.i.i.us.us.2.1, align 4, !tbaa !12
  %202 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.2.1, float %201, float %196) #2
  store float %202, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2.1, label %if.end.i.i.us.us.2.1.loopexit, label %for.body.i.i.us.us.2.1, !llvm.loop !19

if.end.i.i.us.us.2.1.loopexit:                    ; preds = %for.body.i.i.us.us.2.1
  br label %if.end.i.i.us.us.2.1

if.end.i.i.us.us.2.1:                             ; preds = %if.end.i.i.us.us.2.1.loopexit, %if.end.i.i.us.us.2
  %203 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %203, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us.2.loopexit, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !23

if.then.i.i.us.us.1.1:                            ; preds = %if.end.i.i.us.us.1
  %add.i.i.us.us.1.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1.1 = shl i64 %add1.i.i.i.us.us.1.1, 32
  %204 = ashr exact i64 %sext.i.i.us.us.1.1, 32
  br label %for.body.i.i.us.us.1.1

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %if.then.i.i.us.us.1.1
  %indvars.iv.next.i.i3.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %if.then.i.i.us.us.1.1 ]
  %205 = phi float [ %211, %for.body.i.i.us.us.1.1 ], [ 0.000000e+00, %if.then.i.i.us.us.1.1 ]
  %206 = add nsw i64 %indvars.iv.next.i.i3.us.us.1.1, %64
  %arrayidx11.i.i.us.us.1.1 = getelementptr inbounds float, float* %10, i64 %206
  %207 = load float, float* %arrayidx11.i.i.us.us.1.1, align 4, !tbaa !12
  %mul12.i.i.us.us.1.1 = fmul float %29, %207
  %208 = mul nsw i64 %indvars.iv.next.i.i3.us.us.1.1, %30
  %209 = add nsw i64 %208, %204
  %arrayidx16.i.i.us.us.1.1 = getelementptr inbounds float, float* %13, i64 %209
  %210 = load float, float* %arrayidx16.i.i.us.us.1.1, align 4, !tbaa !12
  %211 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.1.1, float %210, float %205) #2
  store float %211, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1.1, label %if.end.i.i.us.us.1.1.loopexit, label %for.body.i.i.us.us.1.1, !llvm.loop !19

if.end.i.i.us.us.1.1.loopexit:                    ; preds = %for.body.i.i.us.us.1.1
  br label %if.end.i.i.us.us.1.1

if.end.i.i.us.us.1.1:                             ; preds = %if.end.i.i.us.us.1.1.loopexit, %if.end.i.i.us.us.1
  %212 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %212, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us.1.loopexit, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !23

if.then.i.i.us.us.147:                            ; preds = %if.end.i.i.us.us
  %add.i.i.us.us.143 = add nsw i32 %mul.i.i.us, %conv.i.i.us.us.140
  %idxprom.i.i.us.us.144 = sext i32 %add.i.i.us.us.143 to i64
  %arrayidx.i.i.us.us.145 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.144
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.145, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.146 = shl i64 %add1.i.i.i.us.us.139, 32
  %213 = ashr exact i64 %sext.i.i.us.us.146, 32
  br label %for.body.i.i.us.us.154

for.body.i.i.us.us.154:                           ; preds = %for.body.i.i.us.us.154, %if.then.i.i.us.us.147
  %indvars.iv.next.i.i3.us.us.148 = phi i64 [ %indvars.iv.next.i.i.us.us.152, %for.body.i.i.us.us.154 ], [ 0, %if.then.i.i.us.us.147 ]
  %214 = phi float [ %220, %for.body.i.i.us.us.154 ], [ 0.000000e+00, %if.then.i.i.us.us.147 ]
  %215 = add nsw i64 %indvars.iv.next.i.i3.us.us.148, %62
  %arrayidx11.i.i.us.us.149 = getelementptr inbounds float, float* %10, i64 %215
  %216 = load float, float* %arrayidx11.i.i.us.us.149, align 4, !tbaa !12
  %mul12.i.i.us.us.150 = fmul float %29, %216
  %217 = mul nsw i64 %indvars.iv.next.i.i3.us.us.148, %30
  %218 = add nsw i64 %217, %213
  %arrayidx16.i.i.us.us.151 = getelementptr inbounds float, float* %13, i64 %218
  %219 = load float, float* %arrayidx16.i.i.us.us.151, align 4, !tbaa !12
  %220 = tail call float @llvm.fmuladd.f32(float %mul12.i.i.us.us.150, float %219, float %214) #2
  store float %220, float* %arrayidx.i.i.us.us.145, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.152 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.148, 1
  %exitcond.not.i.i.us.us.153 = icmp eq i64 %indvars.iv.next.i.i.us.us.152, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.153, label %if.end.i.i.us.us.155.loopexit, label %for.body.i.i.us.us.154, !llvm.loop !19

if.end.i.i.us.us.155.loopexit:                    ; preds = %for.body.i.i.us.us.154
  br label %if.end.i.i.us.us.155

if.end.i.i.us.us.155:                             ; preds = %if.end.i.i.us.us.155.loopexit, %if.end.i.i.us.us
  %221 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %221, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us.loopexit, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !23
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
!5 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int", !"int", !"int", !"DATA_TYPE", !"DATA_TYPE"}
!8 = !{!"float*", !"float*", !"float*", !"int", !"int", !"int", !"int", !"float", !"float"}
!9 = !{!"", !"", !"", !"", !"", !"", !"", !"", !""}
!10 = !{!"tmp", !"A", !"B", !"ni", !"nj", !"nk", !"nl", !"alpha", !"beta"}
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
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.parallel_accesses", !18}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.parallel_accesses", !17}
