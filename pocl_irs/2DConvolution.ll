; ModuleID = './EO/HGGEHAFHLIKHOAJGBNGCHLPIOLBMKCAFLHJGK/Convolution2D_kernel/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_Convolution2D_kernel(float* nocapture readonly %0, float* nocapture %1, i32 %2, i32 %3, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %4, i64 %5, i64 %6, i64 %7) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %5, 5
  %mul3.i.i = shl i64 %6, 3
  %sub.i = add nsw i32 %2, -1
  %sub4.i = add nsw i32 %3, -1
  br label %pregion_for_entry.pregion_for_init.i

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_end.i, %8
  %_local_id_y.0 = phi i64 [ 0, %8 ], [ %27, %pregion_for_end.i ]
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %cmp.i = icmp sgt i32 %sub.i, %conv2.i
  %cmp8.i = icmp sgt i32 %conv2.i, 0
  %sub13.i = add nsw i32 %conv2.i, -1
  %mul.i = mul nsw i32 %sub13.i, %3
  %mul31.i = mul nsw i32 %conv2.i, %3
  %add51.i = add nuw nsw i32 %conv2.i, 1
  %mul52.i = mul nsw i32 %add51.i, %3
  br i1 %cmp.i, label %pregion_for_entry.entry.i.us.preheader, label %pregion_for_end.i

pregion_for_entry.entry.i.us.preheader:           ; preds = %pregion_for_entry.pregion_for_init.i
  br label %pregion_for_entry.entry.i.us

pregion_for_entry.entry.i.us:                     ; preds = %if.end.i.us, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %26, %if.end.i.us ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp5.i.us = icmp sgt i32 %sub4.i, %conv.i.us
  %or.cond.i.us = and i1 %cmp8.i, %cmp5.i.us
  %cmp11.i.us = icmp sgt i32 %conv.i.us, 0
  %or.cond76.i.us = and i1 %cmp11.i.us, %or.cond.i.us
  br i1 %or.cond76.i.us, label %if.then.i.us, label %if.end.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %sub14.i.us = add nsw i32 %conv.i.us, -1
  %add.i.us = add nsw i32 %sub14.i.us, %mul.i
  %idxprom.i.us = sext i32 %add.i.us to i64
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %idxprom.i.us
  %9 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %add19.i.us = add nsw i32 %mul.i, %conv.i.us
  %idxprom20.i.us = sext i32 %add19.i.us to i64
  %arrayidx21.i.us = getelementptr inbounds float, float* %0, i64 %idxprom20.i.us
  %10 = load float, float* %arrayidx21.i.us, align 4, !tbaa !12
  %mul22.i.us = fmul float %10, 5.000000e-01
  %11 = tail call float @llvm.fmuladd.f32(float %9, float 0x3FC99999A0000000, float %mul22.i.us) #3
  %add25.i.us = add nuw nsw i32 %conv.i.us, 1
  %add26.i.us = add nsw i32 %add25.i.us, %mul.i
  %idxprom27.i.us = sext i32 %add26.i.us to i64
  %arrayidx28.i.us = getelementptr inbounds float, float* %0, i64 %idxprom27.i.us
  %12 = load float, float* %arrayidx28.i.us, align 4, !tbaa !12
  %13 = tail call float @llvm.fmuladd.f32(float %12, float 0xBFE99999A0000000, float %11) #3
  %add33.i.us = add nsw i32 %sub14.i.us, %mul31.i
  %idxprom34.i.us = sext i32 %add33.i.us to i64
  %arrayidx35.i.us = getelementptr inbounds float, float* %0, i64 %idxprom34.i.us
  %14 = load float, float* %arrayidx35.i.us, align 4, !tbaa !12
  %15 = tail call float @llvm.fmuladd.f32(float %14, float 0xBFD3333340000000, float %13) #3
  %add40.i.us = add nsw i32 %mul31.i, %conv.i.us
  %idxprom41.i.us = sext i32 %add40.i.us to i64
  %arrayidx42.i.us = getelementptr inbounds float, float* %0, i64 %idxprom41.i.us
  %16 = load float, float* %arrayidx42.i.us, align 4, !tbaa !12
  %17 = tail call float @llvm.fmuladd.f32(float %16, float 0x3FE3333340000000, float %15) #3
  %add47.i.us = add nsw i32 %add25.i.us, %mul31.i
  %idxprom48.i.us = sext i32 %add47.i.us to i64
  %arrayidx49.i.us = getelementptr inbounds float, float* %0, i64 %idxprom48.i.us
  %18 = load float, float* %arrayidx49.i.us, align 4, !tbaa !12
  %19 = tail call float @llvm.fmuladd.f32(float %18, float 0xBFECCCCCC0000000, float %17) #3
  %add54.i.us = add nsw i32 %sub14.i.us, %mul52.i
  %idxprom55.i.us = sext i32 %add54.i.us to i64
  %arrayidx56.i.us = getelementptr inbounds float, float* %0, i64 %idxprom55.i.us
  %20 = load float, float* %arrayidx56.i.us, align 4, !tbaa !12
  %21 = tail call float @llvm.fmuladd.f32(float %20, float 0x3FD99999A0000000, float %19) #3
  %add61.i.us = add nsw i32 %mul52.i, %conv.i.us
  %idxprom62.i.us = sext i32 %add61.i.us to i64
  %arrayidx63.i.us = getelementptr inbounds float, float* %0, i64 %idxprom62.i.us
  %22 = load float, float* %arrayidx63.i.us, align 4, !tbaa !12
  %23 = tail call float @llvm.fmuladd.f32(float %22, float 0x3FE6666660000000, float %21) #3
  %add68.i.us = add nsw i32 %add25.i.us, %mul52.i
  %idxprom69.i.us = sext i32 %add68.i.us to i64
  %arrayidx70.i.us = getelementptr inbounds float, float* %0, i64 %idxprom69.i.us
  %24 = load float, float* %arrayidx70.i.us, align 4, !tbaa !12
  %25 = tail call float @llvm.fmuladd.f32(float %24, float 0x3FB99999A0000000, float %23) #3
  %arrayidx75.i.us = getelementptr inbounds float, float* %1, i64 %idxprom41.i.us
  store float %25, float* %arrayidx75.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us

if.end.i.us:                                      ; preds = %if.then.i.us, %pregion_for_entry.entry.i.us
  %26 = add nuw nsw i64 %_local_id_x.0.us, 1
  %exitcond.not = icmp eq i64 %26, 32
  br i1 %exitcond.not, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !19

pregion_for_end.i.loopexit:                       ; preds = %if.end.i.us
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %pregion_for_end.i.loopexit, %pregion_for_entry.pregion_for_init.i
  %27 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond2.not = icmp eq i64 %27, 8
  br i1 %exitcond2.not, label %Convolution2D_kernel.exit, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !21

Convolution2D_kernel.exit:                        ; preds = %pregion_for_end.i
  ret void
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_Convolution2D_kernel_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %sub.i.i = add nsw i32 %16, -1
  %sub4.i.i = add nsw i32 %20, -1
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %39, %pregion_for_end.i.i ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %sub.i.i, %conv2.i.i
  %cmp8.i.i = icmp sgt i32 %conv2.i.i, 0
  %sub13.i.i = add nsw i32 %conv2.i.i, -1
  %mul.i.i = mul nsw i32 %sub13.i.i, %20
  %mul31.i.i = mul nsw i32 %20, %conv2.i.i
  %add51.i.i = add nuw nsw i32 %conv2.i.i, 1
  %mul52.i.i = mul nsw i32 %add51.i.i, %20
  br i1 %cmp.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %38, %if.end.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp5.i.i.us = icmp sgt i32 %sub4.i.i, %conv.i.i.us
  %or.cond.i.i.us = and i1 %cmp8.i.i, %cmp5.i.i.us
  %cmp11.i.i.us = icmp sgt i32 %conv.i.i.us, 0
  %or.cond76.i.i.us = and i1 %cmp11.i.i.us, %or.cond.i.i.us
  br i1 %or.cond76.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %sub14.i.i.us = add nsw i32 %conv.i.i.us, -1
  %add.i.i.us = add nsw i32 %sub14.i.i.us, %mul.i.i
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us
  %21 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %add19.i.i.us = add nsw i32 %mul.i.i, %conv.i.i.us
  %idxprom20.i.i.us = sext i32 %add19.i.i.us to i64
  %arrayidx21.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom20.i.i.us
  %22 = load float, float* %arrayidx21.i.i.us, align 4, !tbaa !12
  %mul22.i.i.us = fmul float %22, 5.000000e-01
  %23 = tail call float @llvm.fmuladd.f32(float %21, float 0x3FC99999A0000000, float %mul22.i.i.us) #3
  %add25.i.i.us = add nuw nsw i32 %conv.i.i.us, 1
  %add26.i.i.us = add nsw i32 %add25.i.i.us, %mul.i.i
  %idxprom27.i.i.us = sext i32 %add26.i.i.us to i64
  %arrayidx28.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom27.i.i.us
  %24 = load float, float* %arrayidx28.i.i.us, align 4, !tbaa !12
  %25 = tail call float @llvm.fmuladd.f32(float %24, float 0xBFE99999A0000000, float %23) #3
  %add33.i.i.us = add nsw i32 %sub14.i.i.us, %mul31.i.i
  %idxprom34.i.i.us = sext i32 %add33.i.i.us to i64
  %arrayidx35.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom34.i.i.us
  %26 = load float, float* %arrayidx35.i.i.us, align 4, !tbaa !12
  %27 = tail call float @llvm.fmuladd.f32(float %26, float 0xBFD3333340000000, float %25) #3
  %add40.i.i.us = add nsw i32 %mul31.i.i, %conv.i.i.us
  %idxprom41.i.i.us = sext i32 %add40.i.i.us to i64
  %arrayidx42.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom41.i.i.us
  %28 = load float, float* %arrayidx42.i.i.us, align 4, !tbaa !12
  %29 = tail call float @llvm.fmuladd.f32(float %28, float 0x3FE3333340000000, float %27) #3
  %add47.i.i.us = add nsw i32 %add25.i.i.us, %mul31.i.i
  %idxprom48.i.i.us = sext i32 %add47.i.i.us to i64
  %arrayidx49.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom48.i.i.us
  %30 = load float, float* %arrayidx49.i.i.us, align 4, !tbaa !12
  %31 = tail call float @llvm.fmuladd.f32(float %30, float 0xBFECCCCCC0000000, float %29) #3
  %add54.i.i.us = add nsw i32 %sub14.i.i.us, %mul52.i.i
  %idxprom55.i.i.us = sext i32 %add54.i.i.us to i64
  %arrayidx56.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom55.i.i.us
  %32 = load float, float* %arrayidx56.i.i.us, align 4, !tbaa !12
  %33 = tail call float @llvm.fmuladd.f32(float %32, float 0x3FD99999A0000000, float %31) #3
  %add61.i.i.us = add nsw i32 %mul52.i.i, %conv.i.i.us
  %idxprom62.i.i.us = sext i32 %add61.i.i.us to i64
  %arrayidx63.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom62.i.i.us
  %34 = load float, float* %arrayidx63.i.i.us, align 4, !tbaa !12
  %35 = tail call float @llvm.fmuladd.f32(float %34, float 0x3FE6666660000000, float %33) #3
  %add68.i.i.us = add nsw i32 %add25.i.i.us, %mul52.i.i
  %idxprom69.i.i.us = sext i32 %add68.i.i.us to i64
  %arrayidx70.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom69.i.i.us
  %36 = load float, float* %arrayidx70.i.i.us, align 4, !tbaa !12
  %37 = tail call float @llvm.fmuladd.f32(float %36, float 0x3FB99999A0000000, float %35) #3
  %arrayidx75.i.i.us = getelementptr inbounds float, float* %12, i64 %idxprom41.i.i.us
  store float %37, float* %arrayidx75.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %38 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %38, 32
  br i1 %exitcond.not, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !19

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.i.i.us
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %pregion_for_entry.pregion_for_init.i.i
  %39 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond2.not = icmp eq i64 %39, 8
  br i1 %exitcond2.not, label %_pocl_kernel_Convolution2D_kernel.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !21

_pocl_kernel_Convolution2D_kernel.exit:           ; preds = %pregion_for_end.i.i
  ret void
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_Convolution2D_kernel_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %sub.i.i = add nsw i32 %14, -1
  %sub4.i.i = add nsw i32 %18, -1
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %37, %pregion_for_end.i.i ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %sub.i.i, %conv2.i.i
  %cmp8.i.i = icmp sgt i32 %conv2.i.i, 0
  %sub13.i.i = add nsw i32 %conv2.i.i, -1
  %mul.i.i = mul nsw i32 %sub13.i.i, %18
  %mul31.i.i = mul nsw i32 %18, %conv2.i.i
  %add51.i.i = add nuw nsw i32 %conv2.i.i, 1
  %mul52.i.i = mul nsw i32 %add51.i.i, %18
  br i1 %cmp.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %36, %if.end.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp5.i.i.us = icmp sgt i32 %sub4.i.i, %conv.i.i.us
  %or.cond.i.i.us = and i1 %cmp8.i.i, %cmp5.i.i.us
  %cmp11.i.i.us = icmp sgt i32 %conv.i.i.us, 0
  %or.cond76.i.i.us = and i1 %cmp11.i.i.us, %or.cond.i.i.us
  br i1 %or.cond76.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %sub14.i.i.us = add nsw i32 %conv.i.i.us, -1
  %add.i.i.us = add nsw i32 %sub14.i.i.us, %mul.i.i
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us
  %19 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %add19.i.i.us = add nsw i32 %mul.i.i, %conv.i.i.us
  %idxprom20.i.i.us = sext i32 %add19.i.i.us to i64
  %arrayidx21.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom20.i.i.us
  %20 = load float, float* %arrayidx21.i.i.us, align 4, !tbaa !12
  %mul22.i.i.us = fmul float %20, 5.000000e-01
  %21 = tail call float @llvm.fmuladd.f32(float %19, float 0x3FC99999A0000000, float %mul22.i.i.us) #3
  %add25.i.i.us = add nuw nsw i32 %conv.i.i.us, 1
  %add26.i.i.us = add nsw i32 %add25.i.i.us, %mul.i.i
  %idxprom27.i.i.us = sext i32 %add26.i.i.us to i64
  %arrayidx28.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom27.i.i.us
  %22 = load float, float* %arrayidx28.i.i.us, align 4, !tbaa !12
  %23 = tail call float @llvm.fmuladd.f32(float %22, float 0xBFE99999A0000000, float %21) #3
  %add33.i.i.us = add nsw i32 %sub14.i.i.us, %mul31.i.i
  %idxprom34.i.i.us = sext i32 %add33.i.i.us to i64
  %arrayidx35.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom34.i.i.us
  %24 = load float, float* %arrayidx35.i.i.us, align 4, !tbaa !12
  %25 = tail call float @llvm.fmuladd.f32(float %24, float 0xBFD3333340000000, float %23) #3
  %add40.i.i.us = add nsw i32 %mul31.i.i, %conv.i.i.us
  %idxprom41.i.i.us = sext i32 %add40.i.i.us to i64
  %arrayidx42.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom41.i.i.us
  %26 = load float, float* %arrayidx42.i.i.us, align 4, !tbaa !12
  %27 = tail call float @llvm.fmuladd.f32(float %26, float 0x3FE3333340000000, float %25) #3
  %add47.i.i.us = add nsw i32 %add25.i.i.us, %mul31.i.i
  %idxprom48.i.i.us = sext i32 %add47.i.i.us to i64
  %arrayidx49.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom48.i.i.us
  %28 = load float, float* %arrayidx49.i.i.us, align 4, !tbaa !12
  %29 = tail call float @llvm.fmuladd.f32(float %28, float 0xBFECCCCCC0000000, float %27) #3
  %add54.i.i.us = add nsw i32 %sub14.i.i.us, %mul52.i.i
  %idxprom55.i.i.us = sext i32 %add54.i.i.us to i64
  %arrayidx56.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom55.i.i.us
  %30 = load float, float* %arrayidx56.i.i.us, align 4, !tbaa !12
  %31 = tail call float @llvm.fmuladd.f32(float %30, float 0x3FD99999A0000000, float %29) #3
  %add61.i.i.us = add nsw i32 %mul52.i.i, %conv.i.i.us
  %idxprom62.i.i.us = sext i32 %add61.i.i.us to i64
  %arrayidx63.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom62.i.i.us
  %32 = load float, float* %arrayidx63.i.i.us, align 4, !tbaa !12
  %33 = tail call float @llvm.fmuladd.f32(float %32, float 0x3FE6666660000000, float %31) #3
  %add68.i.i.us = add nsw i32 %add25.i.i.us, %mul52.i.i
  %idxprom69.i.i.us = sext i32 %add68.i.i.us to i64
  %arrayidx70.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom69.i.i.us
  %34 = load float, float* %arrayidx70.i.i.us, align 4, !tbaa !12
  %35 = tail call float @llvm.fmuladd.f32(float %34, float 0x3FB99999A0000000, float %33) #3
  %arrayidx75.i.i.us = getelementptr inbounds float, float* %10, i64 %idxprom41.i.i.us
  store float %35, float* %arrayidx75.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %36 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %36, 32
  br i1 %exitcond.not, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !19

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.i.i.us
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %pregion_for_entry.pregion_for_init.i.i
  %37 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond2.not = icmp eq i64 %37, 8
  br i1 %exitcond2.not, label %_pocl_kernel_Convolution2D_kernel.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !21

_pocl_kernel_Convolution2D_kernel.exit:           ; preds = %pregion_for_end.i.i
  ret void
}

attributes #0 = { nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind }
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
!5 = !{i32 1, i32 1, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int"}
!8 = !{!"float*", !"float*", !"int", !"int"}
!9 = !{!"", !"", !"", !""}
!10 = !{!"A", !"B", !"ni", !"nj"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17, !18}
!17 = distinct !{}
!18 = distinct !{}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.parallel_accesses", !17}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.parallel_accesses", !18}
