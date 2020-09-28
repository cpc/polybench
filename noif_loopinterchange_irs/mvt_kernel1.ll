; ModuleID = './AD/JHCGIMMOKPLLGCOHDOELBPGNHNLJKOOAOECAO/mvt_kernel1/32-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_mvt_kernel1(float* nocapture readonly %0, float* nocapture %1, float* nocapture readonly %2, i32 %3, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %4, i64 %5, i64 %6, i64 %7) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %5, 5
  %cmp14.i = icmp sgt i32 %3, 0
  %wide.trip.count.i = zext i32 %3 to i64
  br i1 %cmp14.i, label %pregion_for_entry.entry.i.us.preheader, label %mvt_kernel1.exit

pregion_for_entry.entry.i.us.preheader:           ; preds = %8
  br label %pregion_for_entry.entry.i.us

pregion_for_entry.entry.i.us:                     ; preds = %for.end.r_exit.i.loopexit.us.1, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %22, %for.end.r_exit.i.loopexit.us.1 ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %mul.i.us = mul nsw i32 %conv.i.us, %3
  %sext.i.us = shl i64 %add1.i.i.us, 32
  %idxprom5.i.us = ashr exact i64 %sext.i.us, 32
  %arrayidx6.i.us = getelementptr inbounds float, float* %1, i64 %idxprom5.i.us
  %9 = sext i32 %mul.i.us to i64
  %.pre.i1.us4 = load float, float* %arrayidx6.i.us, align 4, !tbaa !12
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %pregion_for_entry.entry.i.us
  %indvars.iv.next.i3.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %pregion_for_entry.entry.i.us ]
  %10 = phi float [ %14, %for.body.i.us ], [ %.pre.i1.us4, %pregion_for_entry.entry.i.us ]
  %11 = add nsw i64 %indvars.iv.next.i3.us, %9
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %11
  %12 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %arrayidx3.i.us = getelementptr inbounds float, float* %2, i64 %indvars.iv.next.i3.us
  %13 = load float, float* %arrayidx3.i.us, align 4, !tbaa !12
  %14 = tail call float @llvm.fmuladd.f32(float %12, float %13, float %10) #2
  store float %14, float* %arrayidx6.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i3.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %for.end.r_exit.i.loopexit.us, label %for.body.i.us, !llvm.loop !18

for.end.r_exit.i.loopexit.us:                     ; preds = %for.body.i.us
  %15 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1 = add nuw nsw i64 %15, %mul.i.i
  %conv.i.us.1 = trunc i64 %add1.i.i.us.1 to i32
  %mul.i.us.1 = mul nsw i32 %conv.i.us.1, %3
  %sext.i.us.1 = shl i64 %add1.i.i.us.1, 32
  %idxprom5.i.us.1 = ashr exact i64 %sext.i.us.1, 32
  %arrayidx6.i.us.1 = getelementptr inbounds float, float* %1, i64 %idxprom5.i.us.1
  %16 = sext i32 %mul.i.us.1 to i64
  %.pre.i1.us4.1 = load float, float* %arrayidx6.i.us.1, align 4, !tbaa !12
  br label %for.body.i.us.1

mvt_kernel1.exit.loopexit:                        ; preds = %for.end.r_exit.i.loopexit.us.1
  br label %mvt_kernel1.exit

mvt_kernel1.exit:                                 ; preds = %mvt_kernel1.exit.loopexit, %8
  ret void

for.body.i.us.1:                                  ; preds = %for.body.i.us.1, %for.end.r_exit.i.loopexit.us
  %indvars.iv.next.i3.us.1 = phi i64 [ %indvars.iv.next.i.us.1, %for.body.i.us.1 ], [ 0, %for.end.r_exit.i.loopexit.us ]
  %17 = phi float [ %21, %for.body.i.us.1 ], [ %.pre.i1.us4.1, %for.end.r_exit.i.loopexit.us ]
  %18 = add nsw i64 %indvars.iv.next.i3.us.1, %16
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %0, i64 %18
  %19 = load float, float* %arrayidx.i.us.1, align 4, !tbaa !12
  %arrayidx3.i.us.1 = getelementptr inbounds float, float* %2, i64 %indvars.iv.next.i3.us.1
  %20 = load float, float* %arrayidx3.i.us.1, align 4, !tbaa !12
  %21 = tail call float @llvm.fmuladd.f32(float %19, float %20, float %17) #2
  store float %21, float* %arrayidx6.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.next.i3.us.1, 1
  %exitcond.not.i.us.1 = icmp eq i64 %indvars.iv.next.i.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.1, label %for.end.r_exit.i.loopexit.us.1, label %for.body.i.us.1, !llvm.loop !18

for.end.r_exit.i.loopexit.us.1:                   ; preds = %for.body.i.us.1
  %22 = add nuw nsw i64 %_local_id_x.0.us, 2
  %exitcond.not.1 = icmp eq i64 %22, 32
  br i1 %exitcond.not.1, label %mvt_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !20
}

; Function Attrs: nounwind
define void @_pocl_kernel_mvt_kernel1_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %mul.i.i.i = shl i64 %2, 5
  %cmp14.i.i = icmp sgt i32 %20, 0
  %wide.trip.count.i.i = zext i32 %20 to i64
  br i1 %cmp14.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %_pocl_kernel_mvt_kernel1.exit

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.us:                   ; preds = %for.end.r_exit.i.i.loopexit.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %34, %for.end.r_exit.i.i.loopexit.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %mul.i.i.us = mul nsw i32 %20, %conv.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom5.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx6.i.i.us = getelementptr inbounds float, float* %12, i64 %idxprom5.i.i.us
  %21 = sext i32 %mul.i.i.us to i64
  %.pre.i.i1.us4 = load float, float* %arrayidx6.i.i.us, align 4, !tbaa !12
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %pregion_for_entry.entry.i.i.us
  %indvars.iv.next.i.i3.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us ]
  %22 = phi float [ %26, %for.body.i.i.us ], [ %.pre.i.i1.us4, %pregion_for_entry.entry.i.i.us ]
  %23 = add nsw i64 %indvars.iv.next.i.i3.us, %21
  %arrayidx.i.i.us = getelementptr inbounds float, float* %8, i64 %23
  %24 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %arrayidx3.i.i.us = getelementptr inbounds float, float* %16, i64 %indvars.iv.next.i.i3.us
  %25 = load float, float* %arrayidx3.i.i.us, align 4, !tbaa !12
  %26 = tail call float @llvm.fmuladd.f32(float %24, float %25, float %22) #2
  store float %26, float* %arrayidx6.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i3.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.r_exit.i.i.loopexit.us, label %for.body.i.i.us, !llvm.loop !18

for.end.r_exit.i.i.loopexit.us:                   ; preds = %for.body.i.i.us
  %27 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %27, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %mul.i.i.us.1 = mul nsw i32 %20, %conv.i.i.us.1
  %sext.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom5.i.i.us.1 = ashr exact i64 %sext.i.i.us.1, 32
  %arrayidx6.i.i.us.1 = getelementptr inbounds float, float* %12, i64 %idxprom5.i.i.us.1
  %28 = sext i32 %mul.i.i.us.1 to i64
  %.pre.i.i1.us4.1 = load float, float* %arrayidx6.i.i.us.1, align 4, !tbaa !12
  br label %for.body.i.i.us.1

_pocl_kernel_mvt_kernel1.exit.loopexit:           ; preds = %for.end.r_exit.i.i.loopexit.us.1
  br label %_pocl_kernel_mvt_kernel1.exit

_pocl_kernel_mvt_kernel1.exit:                    ; preds = %_pocl_kernel_mvt_kernel1.exit.loopexit, %5
  ret void

for.body.i.i.us.1:                                ; preds = %for.body.i.i.us.1, %for.end.r_exit.i.i.loopexit.us
  %indvars.iv.next.i.i3.us.1 = phi i64 [ %indvars.iv.next.i.i.us.1, %for.body.i.i.us.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us ]
  %29 = phi float [ %33, %for.body.i.i.us.1 ], [ %.pre.i.i1.us4.1, %for.end.r_exit.i.i.loopexit.us ]
  %30 = add nsw i64 %indvars.iv.next.i.i3.us.1, %28
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %8, i64 %30
  %31 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %arrayidx3.i.i.us.1 = getelementptr inbounds float, float* %16, i64 %indvars.iv.next.i.i3.us.1
  %32 = load float, float* %arrayidx3.i.i.us.1, align 4, !tbaa !12
  %33 = tail call float @llvm.fmuladd.f32(float %31, float %32, float %29) #2
  store float %33, float* %arrayidx6.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.1, 1
  %exitcond.not.i.i.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.1, label %for.end.r_exit.i.i.loopexit.us.1, label %for.body.i.i.us.1, !llvm.loop !18

for.end.r_exit.i.i.loopexit.us.1:                 ; preds = %for.body.i.i.us.1
  %34 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %34, 32
  br i1 %exitcond.not.1, label %_pocl_kernel_mvt_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !20
}

; Function Attrs: nounwind
define void @_pocl_kernel_mvt_kernel1_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %mul.i.i.i = shl i64 %2, 5
  %cmp14.i.i = icmp sgt i32 %17, 0
  %wide.trip.count.i.i = zext i32 %17 to i64
  br i1 %cmp14.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %_pocl_kernel_mvt_kernel1.exit

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.us:                   ; preds = %for.end.r_exit.i.i.loopexit.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %31, %for.end.r_exit.i.i.loopexit.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %mul.i.i.us = mul nsw i32 %17, %conv.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom5.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx6.i.i.us = getelementptr inbounds float, float* %10, i64 %idxprom5.i.i.us
  %18 = sext i32 %mul.i.i.us to i64
  %.pre.i.i1.us4 = load float, float* %arrayidx6.i.i.us, align 4, !tbaa !12
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %pregion_for_entry.entry.i.i.us
  %indvars.iv.next.i.i3.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us ]
  %19 = phi float [ %23, %for.body.i.i.us ], [ %.pre.i.i1.us4, %pregion_for_entry.entry.i.i.us ]
  %20 = add nsw i64 %indvars.iv.next.i.i3.us, %18
  %arrayidx.i.i.us = getelementptr inbounds float, float* %7, i64 %20
  %21 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %arrayidx3.i.i.us = getelementptr inbounds float, float* %13, i64 %indvars.iv.next.i.i3.us
  %22 = load float, float* %arrayidx3.i.i.us, align 4, !tbaa !12
  %23 = tail call float @llvm.fmuladd.f32(float %21, float %22, float %19) #2
  store float %23, float* %arrayidx6.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i3.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.r_exit.i.i.loopexit.us, label %for.body.i.i.us, !llvm.loop !18

for.end.r_exit.i.i.loopexit.us:                   ; preds = %for.body.i.i.us
  %24 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %24, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %mul.i.i.us.1 = mul nsw i32 %17, %conv.i.i.us.1
  %sext.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom5.i.i.us.1 = ashr exact i64 %sext.i.i.us.1, 32
  %arrayidx6.i.i.us.1 = getelementptr inbounds float, float* %10, i64 %idxprom5.i.i.us.1
  %25 = sext i32 %mul.i.i.us.1 to i64
  %.pre.i.i1.us4.1 = load float, float* %arrayidx6.i.i.us.1, align 4, !tbaa !12
  br label %for.body.i.i.us.1

_pocl_kernel_mvt_kernel1.exit.loopexit:           ; preds = %for.end.r_exit.i.i.loopexit.us.1
  br label %_pocl_kernel_mvt_kernel1.exit

_pocl_kernel_mvt_kernel1.exit:                    ; preds = %_pocl_kernel_mvt_kernel1.exit.loopexit, %5
  ret void

for.body.i.i.us.1:                                ; preds = %for.body.i.i.us.1, %for.end.r_exit.i.i.loopexit.us
  %indvars.iv.next.i.i3.us.1 = phi i64 [ %indvars.iv.next.i.i.us.1, %for.body.i.i.us.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us ]
  %26 = phi float [ %30, %for.body.i.i.us.1 ], [ %.pre.i.i1.us4.1, %for.end.r_exit.i.i.loopexit.us ]
  %27 = add nsw i64 %indvars.iv.next.i.i3.us.1, %25
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %7, i64 %27
  %28 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %arrayidx3.i.i.us.1 = getelementptr inbounds float, float* %13, i64 %indvars.iv.next.i.i3.us.1
  %29 = load float, float* %arrayidx3.i.i.us.1, align 4, !tbaa !12
  %30 = tail call float @llvm.fmuladd.f32(float %28, float %29, float %26) #2
  store float %30, float* %arrayidx6.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.1, 1
  %exitcond.not.i.i.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.1, label %for.end.r_exit.i.i.loopexit.us.1, label %for.body.i.i.us.1, !llvm.loop !18

for.end.r_exit.i.i.loopexit.us.1:                 ; preds = %for.body.i.i.us.1
  %31 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %31, 32
  br i1 %exitcond.not.1, label %_pocl_kernel_mvt_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !20
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
!5 = !{i32 1, i32 1, i32 1, i32 0}
!6 = !{!"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"int"}
!9 = !{!"", !"", !"", !""}
!10 = !{!"a", !"x1", !"y1", !"n"}
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
