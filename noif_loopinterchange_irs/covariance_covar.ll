; ModuleID = './JM/OPIFJOLNKBFBEAIHGDIPGEAHODEIHHEIHPEGM/covar_kernel/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_covar_kernel(float* nocapture %0, float* nocapture readonly %1, i32 %2, i32 %3, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %4, i64 %5, i64 %6, i64 %7) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %5, 8
  %cmp357.i = icmp sgt i32 %3, 0
  %9 = sext i32 %2 to i64
  %wide.trip.count.i = zext i32 %3 to i64
  br i1 %cmp357.i, label %pregion_for_entry.entry.i.us.preheader, label %pregion_for_entry.entry.i.preheader

pregion_for_entry.entry.i.preheader:              ; preds = %8
  br label %pregion_for_entry.entry.i

pregion_for_entry.entry.i.us.preheader:           ; preds = %8
  br label %pregion_for_entry.entry.i.us

pregion_for_entry.entry.i.us:                     ; preds = %for.end29.i.us, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %22, %for.end29.i.us ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp59.i.us = icmp slt i32 %conv.i.us, %2
  br i1 %cmp59.i.us, label %for.body.lr.ph.i.us, label %for.end29.i.us

for.body.lr.ph.i.us:                              ; preds = %pregion_for_entry.entry.i.us
  %mul.i.us = mul nsw i32 %conv.i.us, %2
  %sext.i.us = shl i64 %add1.i.i.us, 32
  %10 = ashr exact i64 %sext.i.us, 32
  %11 = sext i32 %mul.i.us to i64
  br label %for.body.us.i.us

for.body.us.i.us:                                 ; preds = %for.end.loopexit.us.i.us, %for.body.lr.ph.i.us
  %indvars.iv.next66.us.i8.us = phi i64 [ %indvars.iv.next66.us.i.us, %for.end.loopexit.us.i.us ], [ %10, %for.body.lr.ph.i.us ]
  %12 = add nsw i64 %indvars.iv.next66.us.i8.us, %11
  %arrayidx.us.i.us = getelementptr inbounds float, float* %0, i64 %12
  store float 0.000000e+00, float* %arrayidx.us.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body5.us.i.us

for.body5.us.i.us:                                ; preds = %for.body5.us.i.us, %for.body.us.i.us
  %indvars.iv.next.us.i6.us = phi i64 [ %indvars.iv.next.us.i.us, %for.body5.us.i.us ], [ 0, %for.body.us.i.us ]
  %13 = phi float [ %19, %for.body5.us.i.us ], [ 0.000000e+00, %for.body.us.i.us ]
  %14 = mul nsw i64 %indvars.iv.next.us.i6.us, %9
  %15 = add nsw i64 %14, %10
  %arrayidx9.us.i.us = getelementptr inbounds float, float* %1, i64 %15
  %16 = load float, float* %arrayidx9.us.i.us, align 4, !tbaa !12
  %17 = add nsw i64 %14, %indvars.iv.next66.us.i8.us
  %arrayidx13.us.i.us = getelementptr inbounds float, float* %1, i64 %17
  %18 = load float, float* %arrayidx13.us.i.us, align 4, !tbaa !12
  %19 = tail call float @llvm.fmuladd.f32(float %16, float %18, float %13) #2
  store float %19, float* %arrayidx.us.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.us.i.us = add nuw nsw i64 %indvars.iv.next.us.i6.us, 1
  %exitcond.not.us.i.us = icmp eq i64 %indvars.iv.next.us.i.us, %wide.trip.count.i
  br i1 %exitcond.not.us.i.us, label %for.end.loopexit.us.i.us, label %for.body5.us.i.us, !llvm.loop !18

for.end.loopexit.us.i.us:                         ; preds = %for.body5.us.i.us
  %.lcssa = phi float [ %19, %for.body5.us.i.us ]
  %20 = mul nsw i64 %indvars.iv.next66.us.i8.us, %9
  %21 = add nsw i64 %20, %10
  %arrayidx26.us.i.us = getelementptr inbounds float, float* %0, i64 %21
  store float %.lcssa, float* %arrayidx26.us.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next66.us.i.us = add nsw i64 %indvars.iv.next66.us.i8.us, 1
  %exitcond71.not.us.i.us = icmp eq i64 %indvars.iv.next66.us.i.us, %9
  br i1 %exitcond71.not.us.i.us, label %for.end29.i.us.loopexit, label %for.body.us.i.us, !llvm.loop !20

for.end29.i.us.loopexit:                          ; preds = %for.end.loopexit.us.i.us
  br label %for.end29.i.us

for.end29.i.us:                                   ; preds = %for.end29.i.us.loopexit, %pregion_for_entry.entry.i.us
  %22 = add nuw nsw i64 %_local_id_x.0.us, 1
  %exitcond.not = icmp eq i64 %22, 256
  br i1 %exitcond.not, label %covar_kernel.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !21

pregion_for_entry.entry.i:                        ; preds = %for.end29.i.1, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ %36, %for.end29.i.1 ], [ 0, %pregion_for_entry.entry.i.preheader ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %cmp59.i = icmp slt i32 %conv.i, %2
  br i1 %cmp59.i, label %for.body.lr.ph.i, label %for.end29.i

for.body.lr.ph.i:                                 ; preds = %pregion_for_entry.entry.i
  %mul.i = mul nsw i32 %conv.i, %2
  %sext.i = shl i64 %add1.i.i, 32
  %23 = ashr exact i64 %sext.i, 32
  %24 = sext i32 %mul.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.next66.i2 = phi i64 [ %indvars.iv.next66.i, %for.body.i ], [ %23, %for.body.lr.ph.i ]
  %25 = add nsw i64 %indvars.iv.next66.i2, %24
  %arrayidx.i = getelementptr inbounds float, float* %0, i64 %25
  store float 0.000000e+00, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %26 = mul nsw i64 %indvars.iv.next66.i2, %9
  %27 = add nsw i64 %26, %23
  %arrayidx26.i = getelementptr inbounds float, float* %0, i64 %27
  %28 = bitcast float* %arrayidx26.i to i32*
  store i32 0, i32* %28, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next66.i = add nsw i64 %indvars.iv.next66.i2, 1
  %exitcond71.not.i = icmp eq i64 %indvars.iv.next66.i, %9
  br i1 %exitcond71.not.i, label %for.end29.i.loopexit, label %for.body.i, !llvm.loop !20

for.end29.i.loopexit:                             ; preds = %for.body.i
  br label %for.end29.i

for.end29.i:                                      ; preds = %for.end29.i.loopexit, %pregion_for_entry.entry.i
  %29 = or i64 %_local_id_x.0, 1
  %add1.i.i.1 = add nuw nsw i64 %29, %mul.i.i
  %conv.i.1 = trunc i64 %add1.i.i.1 to i32
  %cmp59.i.1 = icmp slt i32 %conv.i.1, %2
  br i1 %cmp59.i.1, label %for.body.lr.ph.i.1, label %for.end29.i.1

covar_kernel.exit.loopexit:                       ; preds = %for.end29.i.us
  br label %covar_kernel.exit

covar_kernel.exit.loopexit16:                     ; preds = %for.end29.i.1
  br label %covar_kernel.exit

covar_kernel.exit:                                ; preds = %covar_kernel.exit.loopexit16, %covar_kernel.exit.loopexit
  ret void

for.body.lr.ph.i.1:                               ; preds = %for.end29.i
  %mul.i.1 = mul nsw i32 %conv.i.1, %2
  %sext.i.1 = shl i64 %add1.i.i.1, 32
  %30 = ashr exact i64 %sext.i.1, 32
  %31 = sext i32 %mul.i.1 to i64
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.body.i.1, %for.body.lr.ph.i.1
  %indvars.iv.next66.i2.1 = phi i64 [ %indvars.iv.next66.i.1, %for.body.i.1 ], [ %30, %for.body.lr.ph.i.1 ]
  %32 = add nsw i64 %indvars.iv.next66.i2.1, %31
  %arrayidx.i.1 = getelementptr inbounds float, float* %0, i64 %32
  store float 0.000000e+00, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %33 = mul nsw i64 %indvars.iv.next66.i2.1, %9
  %34 = add nsw i64 %33, %30
  %arrayidx26.i.1 = getelementptr inbounds float, float* %0, i64 %34
  %35 = bitcast float* %arrayidx26.i.1 to i32*
  store i32 0, i32* %35, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next66.i.1 = add nsw i64 %indvars.iv.next66.i2.1, 1
  %exitcond71.not.i.1 = icmp eq i64 %indvars.iv.next66.i.1, %9
  br i1 %exitcond71.not.i.1, label %for.end29.i.1.loopexit, label %for.body.i.1, !llvm.loop !20

for.end29.i.1.loopexit:                           ; preds = %for.body.i.1
  br label %for.end29.i.1

for.end29.i.1:                                    ; preds = %for.end29.i.1.loopexit, %for.end29.i
  %36 = add nuw nsw i64 %_local_id_x.0, 2
  %exitcond12.not.1 = icmp eq i64 %36, 256
  br i1 %exitcond12.not.1, label %covar_kernel.exit.loopexit16, label %pregion_for_entry.entry.i, !llvm.loop !21
}

; Function Attrs: nounwind
define void @_pocl_kernel_covar_kernel_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %17 = getelementptr i8*, i8** %0, i64 3
  %18 = bitcast i8** %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp357.i.i = icmp sgt i32 %20, 0
  %21 = sext i32 %16 to i64
  %wide.trip.count.i.i = zext i32 %20 to i64
  br i1 %cmp357.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_entry.entry.i.i.preheader

pregion_for_entry.entry.i.i.preheader:            ; preds = %5
  br label %pregion_for_entry.entry.i.i

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.us:                   ; preds = %for.end29.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %34, %for.end29.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp59.i.i.us = icmp sgt i32 %16, %conv.i.i.us
  br i1 %cmp59.i.i.us, label %for.body.lr.ph.i.i.us, label %for.end29.i.i.us

for.body.lr.ph.i.i.us:                            ; preds = %pregion_for_entry.entry.i.i.us
  %mul.i.i.us = mul nsw i32 %16, %conv.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %22 = ashr exact i64 %sext.i.i.us, 32
  %23 = sext i32 %mul.i.i.us to i64
  br label %for.body.us.i.i.us

for.body.us.i.i.us:                               ; preds = %for.end.loopexit.us.i.i.us, %for.body.lr.ph.i.i.us
  %indvars.iv.next66.us.i.i8.us = phi i64 [ %indvars.iv.next66.us.i.i.us, %for.end.loopexit.us.i.i.us ], [ %22, %for.body.lr.ph.i.i.us ]
  %24 = add nsw i64 %indvars.iv.next66.us.i.i8.us, %23
  %arrayidx.us.i.i.us = getelementptr inbounds float, float* %8, i64 %24
  store float 0.000000e+00, float* %arrayidx.us.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body5.us.i.i.us

for.body5.us.i.i.us:                              ; preds = %for.body5.us.i.i.us, %for.body.us.i.i.us
  %indvars.iv.next.us.i.i6.us = phi i64 [ %indvars.iv.next.us.i.i.us, %for.body5.us.i.i.us ], [ 0, %for.body.us.i.i.us ]
  %25 = phi float [ %31, %for.body5.us.i.i.us ], [ 0.000000e+00, %for.body.us.i.i.us ]
  %26 = mul nsw i64 %indvars.iv.next.us.i.i6.us, %21
  %27 = add nsw i64 %26, %22
  %arrayidx9.us.i.i.us = getelementptr inbounds float, float* %12, i64 %27
  %28 = load float, float* %arrayidx9.us.i.i.us, align 4, !tbaa !12
  %29 = add nsw i64 %26, %indvars.iv.next66.us.i.i8.us
  %arrayidx13.us.i.i.us = getelementptr inbounds float, float* %12, i64 %29
  %30 = load float, float* %arrayidx13.us.i.i.us, align 4, !tbaa !12
  %31 = tail call float @llvm.fmuladd.f32(float %28, float %30, float %25) #2
  store float %31, float* %arrayidx.us.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.us.i.i.us = add nuw nsw i64 %indvars.iv.next.us.i.i6.us, 1
  %exitcond.not.us.i.i.us = icmp eq i64 %indvars.iv.next.us.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.us.i.i.us, label %for.end.loopexit.us.i.i.us, label %for.body5.us.i.i.us, !llvm.loop !18

for.end.loopexit.us.i.i.us:                       ; preds = %for.body5.us.i.i.us
  %.lcssa = phi float [ %31, %for.body5.us.i.i.us ]
  %32 = mul nsw i64 %indvars.iv.next66.us.i.i8.us, %21
  %33 = add nsw i64 %32, %22
  %arrayidx26.us.i.i.us = getelementptr inbounds float, float* %8, i64 %33
  store float %.lcssa, float* %arrayidx26.us.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next66.us.i.i.us = add nsw i64 %indvars.iv.next66.us.i.i8.us, 1
  %exitcond71.not.us.i.i.us = icmp eq i64 %indvars.iv.next66.us.i.i.us, %21
  br i1 %exitcond71.not.us.i.i.us, label %for.end29.i.i.us.loopexit, label %for.body.us.i.i.us, !llvm.loop !20

for.end29.i.i.us.loopexit:                        ; preds = %for.end.loopexit.us.i.i.us
  br label %for.end29.i.i.us

for.end29.i.i.us:                                 ; preds = %for.end29.i.i.us.loopexit, %pregion_for_entry.entry.i.i.us
  %34 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %34, 256
  br i1 %exitcond.not, label %_pocl_kernel_covar_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !21

pregion_for_entry.entry.i.i:                      ; preds = %for.end29.i.i.1, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %48, %for.end29.i.i.1 ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp59.i.i = icmp sgt i32 %16, %conv.i.i
  br i1 %cmp59.i.i, label %for.body.lr.ph.i.i, label %for.end29.i.i

for.body.lr.ph.i.i:                               ; preds = %pregion_for_entry.entry.i.i
  %mul.i.i = mul nsw i32 %16, %conv.i.i
  %sext.i.i = shl i64 %add1.i.i.i, 32
  %35 = ashr exact i64 %sext.i.i, 32
  %36 = sext i32 %mul.i.i to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.lr.ph.i.i
  %indvars.iv.next66.i.i2 = phi i64 [ %indvars.iv.next66.i.i, %for.body.i.i ], [ %35, %for.body.lr.ph.i.i ]
  %37 = add nsw i64 %indvars.iv.next66.i.i2, %36
  %arrayidx.i.i = getelementptr inbounds float, float* %8, i64 %37
  store float 0.000000e+00, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %38 = mul nsw i64 %indvars.iv.next66.i.i2, %21
  %39 = add nsw i64 %38, %35
  %arrayidx26.i.i = getelementptr inbounds float, float* %8, i64 %39
  %40 = bitcast float* %arrayidx26.i.i to i32*
  store i32 0, i32* %40, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next66.i.i = add nsw i64 %indvars.iv.next66.i.i2, 1
  %exitcond71.not.i.i = icmp eq i64 %indvars.iv.next66.i.i, %21
  br i1 %exitcond71.not.i.i, label %for.end29.i.i.loopexit, label %for.body.i.i, !llvm.loop !20

for.end29.i.i.loopexit:                           ; preds = %for.body.i.i
  br label %for.end29.i.i

for.end29.i.i:                                    ; preds = %for.end29.i.i.loopexit, %pregion_for_entry.entry.i.i
  %41 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %41, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %cmp59.i.i.1 = icmp sgt i32 %16, %conv.i.i.1
  br i1 %cmp59.i.i.1, label %for.body.lr.ph.i.i.1, label %for.end29.i.i.1

_pocl_kernel_covar_kernel.exit.loopexit:          ; preds = %for.end29.i.i.us
  br label %_pocl_kernel_covar_kernel.exit

_pocl_kernel_covar_kernel.exit.loopexit16:        ; preds = %for.end29.i.i.1
  br label %_pocl_kernel_covar_kernel.exit

_pocl_kernel_covar_kernel.exit:                   ; preds = %_pocl_kernel_covar_kernel.exit.loopexit16, %_pocl_kernel_covar_kernel.exit.loopexit
  ret void

for.body.lr.ph.i.i.1:                             ; preds = %for.end29.i.i
  %mul.i.i.1 = mul nsw i32 %16, %conv.i.i.1
  %sext.i.i.1 = shl i64 %add1.i.i.i.1, 32
  %42 = ashr exact i64 %sext.i.i.1, 32
  %43 = sext i32 %mul.i.i.1 to i64
  br label %for.body.i.i.1

for.body.i.i.1:                                   ; preds = %for.body.i.i.1, %for.body.lr.ph.i.i.1
  %indvars.iv.next66.i.i2.1 = phi i64 [ %indvars.iv.next66.i.i.1, %for.body.i.i.1 ], [ %42, %for.body.lr.ph.i.i.1 ]
  %44 = add nsw i64 %indvars.iv.next66.i.i2.1, %43
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %8, i64 %44
  store float 0.000000e+00, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %45 = mul nsw i64 %indvars.iv.next66.i.i2.1, %21
  %46 = add nsw i64 %45, %42
  %arrayidx26.i.i.1 = getelementptr inbounds float, float* %8, i64 %46
  %47 = bitcast float* %arrayidx26.i.i.1 to i32*
  store i32 0, i32* %47, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next66.i.i.1 = add nsw i64 %indvars.iv.next66.i.i2.1, 1
  %exitcond71.not.i.i.1 = icmp eq i64 %indvars.iv.next66.i.i.1, %21
  br i1 %exitcond71.not.i.i.1, label %for.end29.i.i.1.loopexit, label %for.body.i.i.1, !llvm.loop !20

for.end29.i.i.1.loopexit:                         ; preds = %for.body.i.i.1
  br label %for.end29.i.i.1

for.end29.i.i.1:                                  ; preds = %for.end29.i.i.1.loopexit, %for.end29.i.i
  %48 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond12.not.1 = icmp eq i64 %48, 256
  br i1 %exitcond12.not.1, label %_pocl_kernel_covar_kernel.exit.loopexit16, label %pregion_for_entry.entry.i.i, !llvm.loop !21
}

; Function Attrs: nounwind
define void @_pocl_kernel_covar_kernel_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 2
  %12 = bitcast i8** %11 to i32**
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr i8*, i8** %0, i64 3
  %16 = bitcast i8** %15 to i32**
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp357.i.i = icmp sgt i32 %18, 0
  %19 = sext i32 %14 to i64
  %wide.trip.count.i.i = zext i32 %18 to i64
  br i1 %cmp357.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_entry.entry.i.i.preheader

pregion_for_entry.entry.i.i.preheader:            ; preds = %5
  br label %pregion_for_entry.entry.i.i

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.us:                   ; preds = %for.end29.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %32, %for.end29.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp59.i.i.us = icmp sgt i32 %14, %conv.i.i.us
  br i1 %cmp59.i.i.us, label %for.body.lr.ph.i.i.us, label %for.end29.i.i.us

for.body.lr.ph.i.i.us:                            ; preds = %pregion_for_entry.entry.i.i.us
  %mul.i.i.us = mul nsw i32 %14, %conv.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %20 = ashr exact i64 %sext.i.i.us, 32
  %21 = sext i32 %mul.i.i.us to i64
  br label %for.body.us.i.i.us

for.body.us.i.i.us:                               ; preds = %for.end.loopexit.us.i.i.us, %for.body.lr.ph.i.i.us
  %indvars.iv.next66.us.i.i8.us = phi i64 [ %indvars.iv.next66.us.i.i.us, %for.end.loopexit.us.i.i.us ], [ %20, %for.body.lr.ph.i.i.us ]
  %22 = add nsw i64 %indvars.iv.next66.us.i.i8.us, %21
  %arrayidx.us.i.i.us = getelementptr inbounds float, float* %7, i64 %22
  store float 0.000000e+00, float* %arrayidx.us.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body5.us.i.i.us

for.body5.us.i.i.us:                              ; preds = %for.body5.us.i.i.us, %for.body.us.i.i.us
  %indvars.iv.next.us.i.i6.us = phi i64 [ %indvars.iv.next.us.i.i.us, %for.body5.us.i.i.us ], [ 0, %for.body.us.i.i.us ]
  %23 = phi float [ %29, %for.body5.us.i.i.us ], [ 0.000000e+00, %for.body.us.i.i.us ]
  %24 = mul nsw i64 %indvars.iv.next.us.i.i6.us, %19
  %25 = add nsw i64 %24, %20
  %arrayidx9.us.i.i.us = getelementptr inbounds float, float* %10, i64 %25
  %26 = load float, float* %arrayidx9.us.i.i.us, align 4, !tbaa !12
  %27 = add nsw i64 %24, %indvars.iv.next66.us.i.i8.us
  %arrayidx13.us.i.i.us = getelementptr inbounds float, float* %10, i64 %27
  %28 = load float, float* %arrayidx13.us.i.i.us, align 4, !tbaa !12
  %29 = tail call float @llvm.fmuladd.f32(float %26, float %28, float %23) #2
  store float %29, float* %arrayidx.us.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.us.i.i.us = add nuw nsw i64 %indvars.iv.next.us.i.i6.us, 1
  %exitcond.not.us.i.i.us = icmp eq i64 %indvars.iv.next.us.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.us.i.i.us, label %for.end.loopexit.us.i.i.us, label %for.body5.us.i.i.us, !llvm.loop !18

for.end.loopexit.us.i.i.us:                       ; preds = %for.body5.us.i.i.us
  %.lcssa = phi float [ %29, %for.body5.us.i.i.us ]
  %30 = mul nsw i64 %indvars.iv.next66.us.i.i8.us, %19
  %31 = add nsw i64 %30, %20
  %arrayidx26.us.i.i.us = getelementptr inbounds float, float* %7, i64 %31
  store float %.lcssa, float* %arrayidx26.us.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next66.us.i.i.us = add nsw i64 %indvars.iv.next66.us.i.i8.us, 1
  %exitcond71.not.us.i.i.us = icmp eq i64 %indvars.iv.next66.us.i.i.us, %19
  br i1 %exitcond71.not.us.i.i.us, label %for.end29.i.i.us.loopexit, label %for.body.us.i.i.us, !llvm.loop !20

for.end29.i.i.us.loopexit:                        ; preds = %for.end.loopexit.us.i.i.us
  br label %for.end29.i.i.us

for.end29.i.i.us:                                 ; preds = %for.end29.i.i.us.loopexit, %pregion_for_entry.entry.i.i.us
  %32 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %32, 256
  br i1 %exitcond.not, label %_pocl_kernel_covar_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !21

pregion_for_entry.entry.i.i:                      ; preds = %for.end29.i.i.1, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %46, %for.end29.i.i.1 ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp59.i.i = icmp sgt i32 %14, %conv.i.i
  br i1 %cmp59.i.i, label %for.body.lr.ph.i.i, label %for.end29.i.i

for.body.lr.ph.i.i:                               ; preds = %pregion_for_entry.entry.i.i
  %mul.i.i = mul nsw i32 %14, %conv.i.i
  %sext.i.i = shl i64 %add1.i.i.i, 32
  %33 = ashr exact i64 %sext.i.i, 32
  %34 = sext i32 %mul.i.i to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.lr.ph.i.i
  %indvars.iv.next66.i.i2 = phi i64 [ %indvars.iv.next66.i.i, %for.body.i.i ], [ %33, %for.body.lr.ph.i.i ]
  %35 = add nsw i64 %indvars.iv.next66.i.i2, %34
  %arrayidx.i.i = getelementptr inbounds float, float* %7, i64 %35
  store float 0.000000e+00, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %36 = mul nsw i64 %indvars.iv.next66.i.i2, %19
  %37 = add nsw i64 %36, %33
  %arrayidx26.i.i = getelementptr inbounds float, float* %7, i64 %37
  %38 = bitcast float* %arrayidx26.i.i to i32*
  store i32 0, i32* %38, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next66.i.i = add nsw i64 %indvars.iv.next66.i.i2, 1
  %exitcond71.not.i.i = icmp eq i64 %indvars.iv.next66.i.i, %19
  br i1 %exitcond71.not.i.i, label %for.end29.i.i.loopexit, label %for.body.i.i, !llvm.loop !20

for.end29.i.i.loopexit:                           ; preds = %for.body.i.i
  br label %for.end29.i.i

for.end29.i.i:                                    ; preds = %for.end29.i.i.loopexit, %pregion_for_entry.entry.i.i
  %39 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %39, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %cmp59.i.i.1 = icmp sgt i32 %14, %conv.i.i.1
  br i1 %cmp59.i.i.1, label %for.body.lr.ph.i.i.1, label %for.end29.i.i.1

_pocl_kernel_covar_kernel.exit.loopexit:          ; preds = %for.end29.i.i.us
  br label %_pocl_kernel_covar_kernel.exit

_pocl_kernel_covar_kernel.exit.loopexit16:        ; preds = %for.end29.i.i.1
  br label %_pocl_kernel_covar_kernel.exit

_pocl_kernel_covar_kernel.exit:                   ; preds = %_pocl_kernel_covar_kernel.exit.loopexit16, %_pocl_kernel_covar_kernel.exit.loopexit
  ret void

for.body.lr.ph.i.i.1:                             ; preds = %for.end29.i.i
  %mul.i.i.1 = mul nsw i32 %14, %conv.i.i.1
  %sext.i.i.1 = shl i64 %add1.i.i.i.1, 32
  %40 = ashr exact i64 %sext.i.i.1, 32
  %41 = sext i32 %mul.i.i.1 to i64
  br label %for.body.i.i.1

for.body.i.i.1:                                   ; preds = %for.body.i.i.1, %for.body.lr.ph.i.i.1
  %indvars.iv.next66.i.i2.1 = phi i64 [ %indvars.iv.next66.i.i.1, %for.body.i.i.1 ], [ %40, %for.body.lr.ph.i.i.1 ]
  %42 = add nsw i64 %indvars.iv.next66.i.i2.1, %41
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %7, i64 %42
  store float 0.000000e+00, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %43 = mul nsw i64 %indvars.iv.next66.i.i2.1, %19
  %44 = add nsw i64 %43, %40
  %arrayidx26.i.i.1 = getelementptr inbounds float, float* %7, i64 %44
  %45 = bitcast float* %arrayidx26.i.i.1 to i32*
  store i32 0, i32* %45, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next66.i.i.1 = add nsw i64 %indvars.iv.next66.i.i2.1, 1
  %exitcond71.not.i.i.1 = icmp eq i64 %indvars.iv.next66.i.i.1, %19
  br i1 %exitcond71.not.i.i.1, label %for.end29.i.i.1.loopexit, label %for.body.i.i.1, !llvm.loop !20

for.end29.i.i.1.loopexit:                         ; preds = %for.body.i.i.1
  br label %for.end29.i.i.1

for.end29.i.i.1:                                  ; preds = %for.end29.i.i.1.loopexit, %for.end29.i.i
  %46 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond12.not.1 = icmp eq i64 %46, 256
  br i1 %exitcond12.not.1, label %_pocl_kernel_covar_kernel.exit.loopexit16, label %pregion_for_entry.entry.i.i, !llvm.loop !21
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
!5 = !{i32 1, i32 1, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int"}
!8 = !{!"float*", !"float*", !"int", !"int"}
!9 = !{!"", !"", !"", !""}
!10 = !{!"symmat", !"data", !"m", !"n"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17}
!17 = distinct !{}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.parallel_accesses", !17}
