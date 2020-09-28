; ModuleID = './GJ/HELFLMCCOOHFANMDMHGFFJGEBKLIOJDJFCKLI/syr2k_kernel/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_syr2k_kernel(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, float %3, float %4, i32 %5, i32 %6, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %7, i64 %8, i64 %9, i64 %10) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %8, 5
  %mul3.i.i = shl i64 %9, 3
  %cmp761.i = icmp sgt i32 %5, 0
  %wide.trip.count.i = zext i32 %5 to i64
  br label %pregion_for_entry.pregion_for_init.i

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_end.i, %11
  %_local_id_y.0 = phi i64 [ 0, %11 ], [ %23, %pregion_for_end.i ]
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %cmp.i = icmp slt i32 %conv2.i, %6
  %mul.i = mul nsw i32 %conv2.i, %6
  %mul9.i = mul nsw i32 %conv2.i, %5
  %12 = sext i32 %mul9.i to i64
  br i1 %cmp.i, label %pregion_for_entry.entry.i.us.preheader, label %pregion_for_end.i

pregion_for_entry.entry.i.us.preheader:           ; preds = %pregion_for_entry.pregion_for_init.i
  br label %pregion_for_entry.entry.i.us

pregion_for_entry.entry.i.us:                     ; preds = %if.end.i.us, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %22, %if.end.i.us ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp4.i.us = icmp slt i32 %conv.i.us, %6
  br i1 %cmp4.i.us, label %if.then.i.us, label %if.end.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %add.i.us = add nsw i32 %mul.i, %conv.i.us
  %idxprom.i.us = sext i32 %add.i.us to i64
  %arrayidx.i.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us
  %13 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %mul6.i.us = fmul float %13, %4
  store float %mul6.i.us, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br i1 %cmp761.i, label %for.body.lr.ph.i.us, label %if.end.i.us

for.body.lr.ph.i.us:                              ; preds = %if.then.i.us
  %mul14.i.us = mul nsw i32 %conv.i.us, %5
  %14 = sext i32 %mul14.i.us to i64
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %for.body.lr.ph.i.us
  %indvars.iv.next.i4.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %for.body.lr.ph.i.us ]
  %add33.i2.us = phi float [ %add33.i.us, %for.body.i.us ], [ %mul6.i.us, %for.body.lr.ph.i.us ]
  %15 = add nsw i64 %indvars.iv.next.i4.us, %12
  %arrayidx12.i.us = getelementptr inbounds float, float* %0, i64 %15
  %16 = load float, float* %arrayidx12.i.us, align 4, !tbaa !12
  %mul13.i.us = fmul float %16, %3
  %17 = add nsw i64 %indvars.iv.next.i4.us, %14
  %arrayidx17.i.us = getelementptr inbounds float, float* %1, i64 %17
  %18 = load float, float* %arrayidx17.i.us, align 4, !tbaa !12
  %arrayidx22.i.us = getelementptr inbounds float, float* %1, i64 %15
  %19 = load float, float* %arrayidx22.i.us, align 4, !tbaa !12
  %mul23.i.us = fmul float %19, %3
  %arrayidx27.i.us = getelementptr inbounds float, float* %0, i64 %17
  %20 = load float, float* %arrayidx27.i.us, align 4, !tbaa !12
  %mul28.i.us = fmul float %mul23.i.us, %20
  %21 = tail call float @llvm.fmuladd.f32(float %mul13.i.us, float %18, float %mul28.i.us) #2
  %add33.i.us = fadd float %add33.i2.us, %21
  store float %add33.i.us, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i4.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %if.end.i.us.loopexit, label %for.body.i.us, !llvm.loop !19

if.end.i.us.loopexit:                             ; preds = %for.body.i.us
  br label %if.end.i.us

if.end.i.us:                                      ; preds = %if.end.i.us.loopexit, %if.then.i.us, %pregion_for_entry.entry.i.us
  %22 = add nuw nsw i64 %_local_id_x.0.us, 1
  %exitcond.not = icmp eq i64 %22, 32
  br i1 %exitcond.not, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !21

pregion_for_end.i.loopexit:                       ; preds = %if.end.i.us
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %pregion_for_end.i.loopexit, %pregion_for_entry.pregion_for_init.i
  %23 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond6.not = icmp eq i64 %23, 8
  br i1 %exitcond6.not, label %syr2k_kernel.exit, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !23

syr2k_kernel.exit:                                ; preds = %pregion_for_end.i
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_syr2k_kernel_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %18 = bitcast i8** %17 to float**
  %19 = load float*, float** %18, align 8
  %20 = load float, float* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 4
  %22 = bitcast i8** %21 to float**
  %23 = load float*, float** %22, align 8
  %24 = load float, float* %23, align 4
  %25 = getelementptr i8*, i8** %0, i64 5
  %26 = bitcast i8** %25 to i32**
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr i8*, i8** %0, i64 6
  %30 = bitcast i8** %29 to i32**
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp761.i.i = icmp sgt i32 %28, 0
  %wide.trip.count.i.i = zext i32 %28 to i64
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %44, %pregion_for_end.i.i ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %32, %conv2.i.i
  %mul.i.i = mul nsw i32 %32, %conv2.i.i
  %mul9.i.i = mul nsw i32 %28, %conv2.i.i
  %33 = sext i32 %mul9.i.i to i64
  br i1 %cmp.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %43, %if.end.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %32, %conv.i.i.us
  br i1 %cmp4.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add.i.i.us = add nsw i32 %mul.i.i, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us
  %34 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %mul6.i.i.us = fmul float %24, %34
  store float %mul6.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br i1 %cmp761.i.i, label %for.body.lr.ph.i.i.us, label %if.end.i.i.us

for.body.lr.ph.i.i.us:                            ; preds = %if.then.i.i.us
  %mul14.i.i.us = mul nsw i32 %28, %conv.i.i.us
  %35 = sext i32 %mul14.i.i.us to i64
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %for.body.lr.ph.i.i.us
  %indvars.iv.next.i.i4.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %for.body.lr.ph.i.i.us ]
  %add33.i.i2.us = phi float [ %add33.i.i.us, %for.body.i.i.us ], [ %mul6.i.i.us, %for.body.lr.ph.i.i.us ]
  %36 = add nsw i64 %indvars.iv.next.i.i4.us, %33
  %arrayidx12.i.i.us = getelementptr inbounds float, float* %8, i64 %36
  %37 = load float, float* %arrayidx12.i.i.us, align 4, !tbaa !12
  %mul13.i.i.us = fmul float %20, %37
  %38 = add nsw i64 %indvars.iv.next.i.i4.us, %35
  %arrayidx17.i.i.us = getelementptr inbounds float, float* %12, i64 %38
  %39 = load float, float* %arrayidx17.i.i.us, align 4, !tbaa !12
  %arrayidx22.i.i.us = getelementptr inbounds float, float* %12, i64 %36
  %40 = load float, float* %arrayidx22.i.i.us, align 4, !tbaa !12
  %mul23.i.i.us = fmul float %20, %40
  %arrayidx27.i.i.us = getelementptr inbounds float, float* %8, i64 %38
  %41 = load float, float* %arrayidx27.i.i.us, align 4, !tbaa !12
  %mul28.i.i.us = fmul float %mul23.i.i.us, %41
  %42 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us, float %39, float %mul28.i.i.us) #2
  %add33.i.i.us = fadd float %add33.i.i2.us, %42
  store float %add33.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i4.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %if.end.i.i.us.loopexit, label %for.body.i.i.us, !llvm.loop !19

if.end.i.i.us.loopexit:                           ; preds = %for.body.i.i.us
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.end.i.i.us.loopexit, %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %43 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %43, 32
  br i1 %exitcond.not, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !21

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.i.i.us
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %pregion_for_entry.pregion_for_init.i.i
  %44 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond6.not = icmp eq i64 %44, 8
  br i1 %exitcond6.not, label %_pocl_kernel_syr2k_kernel.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !23

_pocl_kernel_syr2k_kernel.exit:                   ; preds = %pregion_for_end.i.i
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_syr2k_kernel_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 2
  %12 = bitcast i8** %11 to float**
  %13 = load float*, float** %12, align 8
  %14 = getelementptr i8*, i8** %0, i64 3
  %15 = bitcast i8** %14 to float**
  %16 = load float*, float** %15, align 8
  %17 = load float, float* %16, align 4
  %18 = getelementptr i8*, i8** %0, i64 4
  %19 = bitcast i8** %18 to float**
  %20 = load float*, float** %19, align 8
  %21 = load float, float* %20, align 4
  %22 = getelementptr i8*, i8** %0, i64 5
  %23 = bitcast i8** %22 to i32**
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr i8*, i8** %0, i64 6
  %27 = bitcast i8** %26 to i32**
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %28, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp761.i.i = icmp sgt i32 %25, 0
  %wide.trip.count.i.i = zext i32 %25 to i64
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %41, %pregion_for_end.i.i ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %29, %conv2.i.i
  %mul.i.i = mul nsw i32 %29, %conv2.i.i
  %mul9.i.i = mul nsw i32 %25, %conv2.i.i
  %30 = sext i32 %mul9.i.i to i64
  br i1 %cmp.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %40, %if.end.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %29, %conv.i.i.us
  br i1 %cmp4.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add.i.i.us = add nsw i32 %mul.i.i, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us
  %31 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %mul6.i.i.us = fmul float %21, %31
  store float %mul6.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br i1 %cmp761.i.i, label %for.body.lr.ph.i.i.us, label %if.end.i.i.us

for.body.lr.ph.i.i.us:                            ; preds = %if.then.i.i.us
  %mul14.i.i.us = mul nsw i32 %25, %conv.i.i.us
  %32 = sext i32 %mul14.i.i.us to i64
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %for.body.lr.ph.i.i.us
  %indvars.iv.next.i.i4.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %for.body.lr.ph.i.i.us ]
  %add33.i.i2.us = phi float [ %add33.i.i.us, %for.body.i.i.us ], [ %mul6.i.i.us, %for.body.lr.ph.i.i.us ]
  %33 = add nsw i64 %indvars.iv.next.i.i4.us, %30
  %arrayidx12.i.i.us = getelementptr inbounds float, float* %7, i64 %33
  %34 = load float, float* %arrayidx12.i.i.us, align 4, !tbaa !12
  %mul13.i.i.us = fmul float %17, %34
  %35 = add nsw i64 %indvars.iv.next.i.i4.us, %32
  %arrayidx17.i.i.us = getelementptr inbounds float, float* %10, i64 %35
  %36 = load float, float* %arrayidx17.i.i.us, align 4, !tbaa !12
  %arrayidx22.i.i.us = getelementptr inbounds float, float* %10, i64 %33
  %37 = load float, float* %arrayidx22.i.i.us, align 4, !tbaa !12
  %mul23.i.i.us = fmul float %17, %37
  %arrayidx27.i.i.us = getelementptr inbounds float, float* %7, i64 %35
  %38 = load float, float* %arrayidx27.i.i.us, align 4, !tbaa !12
  %mul28.i.i.us = fmul float %mul23.i.i.us, %38
  %39 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us, float %36, float %mul28.i.i.us) #2
  %add33.i.i.us = fadd float %add33.i.i2.us, %39
  store float %add33.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i4.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %if.end.i.i.us.loopexit, label %for.body.i.i.us, !llvm.loop !19

if.end.i.i.us.loopexit:                           ; preds = %for.body.i.i.us
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.end.i.i.us.loopexit, %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %40 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %40, 32
  br i1 %exitcond.not, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !21

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.i.i.us
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %pregion_for_entry.pregion_for_init.i.i
  %41 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond6.not = icmp eq i64 %41, 8
  br i1 %exitcond6.not, label %_pocl_kernel_syr2k_kernel.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !23

_pocl_kernel_syr2k_kernel.exit:                   ; preds = %pregion_for_end.i.i
  ret void
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
!5 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"DATA_TYPE", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"float", !"float", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !"", !"", !""}
!10 = !{!"a", !"b", !"c", !"alpha", !"beta", !"ni", !"nj"}
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
!22 = !{!"llvm.loop.parallel_accesses", !17}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.parallel_accesses", !18}
