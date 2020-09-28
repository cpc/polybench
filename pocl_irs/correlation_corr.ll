; ModuleID = './KK/KIGILFKIOCMFGODNJKKCPJJIDHNBMKHCFFGPF/corr_kernel/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_corr_kernel(float* nocapture %0, float* nocapture readonly %1, i32 %2, i32 %3, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %4, i64 %5, i64 %6, i64 %7) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %5, 8
  %sub.i = add nsw i32 %2, -1
  %cmp662.i = icmp sgt i32 %3, 0
  %9 = sext i32 %2 to i64
  %wide.trip.count.i = zext i32 %3 to i64
  br i1 %cmp662.i, label %pregion_for_entry.entry.i.us.preheader, label %pregion_for_entry.entry.i.preheader

pregion_for_entry.entry.i.preheader:              ; preds = %8
  br label %pregion_for_entry.entry.i

pregion_for_entry.entry.i.us.preheader:           ; preds = %8
  br label %pregion_for_entry.entry.i.us

pregion_for_entry.entry.i.us:                     ; preds = %if.end.i.us, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %23, %if.end.i.us ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp.i.us = icmp sgt i32 %sub.i, %conv.i.us
  br i1 %cmp.i.us, label %if.then.i.us, label %if.end.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %mul.i.us = mul nsw i32 %conv.i.us, %2
  %add.i.us = add nsw i32 %mul.i.us, %conv.i.us
  %idxprom.i.us = sext i32 %add.i.us to i64
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %idxprom.i.us
  store float 1.000000e+00, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %j2.064.i.us = add nsw i32 %conv.i.us, 1
  %cmp365.i.us = icmp slt i32 %j2.064.i.us, %2
  br i1 %cmp365.i.us, label %for.cond5.preheader.lr.ph.i.us, label %if.end.i.us

for.cond5.preheader.lr.ph.i.us:                   ; preds = %if.then.i.us
  %sext.i.us = shl i64 %add1.i.i.us, 32
  %10 = ashr exact i64 %sext.i.us, 32
  %11 = add nsw i64 %10, 1
  %12 = sext i32 %mul.i.us to i64
  br label %for.cond5.preheader.us.i.us

for.cond5.preheader.us.i.us:                      ; preds = %for.end.loopexit.us.i.us, %for.cond5.preheader.lr.ph.i.us
  %indvars.iv.next71.us.i9.us = phi i64 [ %indvars.iv.next71.us.i.us, %for.end.loopexit.us.i.us ], [ %11, %for.cond5.preheader.lr.ph.i.us ]
  %13 = add nsw i64 %indvars.iv.next71.us.i9.us, %12
  %arrayidx21.us.i.us = getelementptr inbounds float, float* %0, i64 %13
  %.pre.us.i1.us11 = load float, float* %arrayidx21.us.i.us, align 4, !tbaa !12
  br label %for.body8.us.i.us

for.body8.us.i.us:                                ; preds = %for.body8.us.i.us, %for.cond5.preheader.us.i.us
  %indvars.iv.next.us.i7.us = phi i64 [ %indvars.iv.next.us.i.us, %for.body8.us.i.us ], [ 0, %for.cond5.preheader.us.i.us ]
  %14 = phi float [ %20, %for.body8.us.i.us ], [ %.pre.us.i1.us11, %for.cond5.preheader.us.i.us ]
  %15 = mul nsw i64 %indvars.iv.next.us.i7.us, %9
  %16 = add nsw i64 %15, %10
  %arrayidx12.us.i.us = getelementptr inbounds float, float* %1, i64 %16
  %17 = load float, float* %arrayidx12.us.i.us, align 4, !tbaa !12
  %18 = add nsw i64 %15, %indvars.iv.next71.us.i9.us
  %arrayidx16.us.i.us = getelementptr inbounds float, float* %1, i64 %18
  %19 = load float, float* %arrayidx16.us.i.us, align 4, !tbaa !12
  %20 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %14) #2
  store float %20, float* %arrayidx21.us.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.us.i.us = add nuw nsw i64 %indvars.iv.next.us.i7.us, 1
  %exitcond.not.us.i.us = icmp eq i64 %indvars.iv.next.us.i.us, %wide.trip.count.i
  br i1 %exitcond.not.us.i.us, label %for.end.loopexit.us.i.us, label %for.body8.us.i.us, !llvm.loop !18

for.end.loopexit.us.i.us:                         ; preds = %for.body8.us.i.us
  %.lcssa = phi float [ %20, %for.body8.us.i.us ]
  %21 = mul nsw i64 %indvars.iv.next71.us.i9.us, %9
  %22 = add nsw i64 %21, %10
  %arrayidx29.us.i.us = getelementptr inbounds float, float* %0, i64 %22
  store float %.lcssa, float* %arrayidx29.us.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next71.us.i.us = add nsw i64 %indvars.iv.next71.us.i9.us, 1
  %lftr.wideiv.us.i.us = trunc i64 %indvars.iv.next71.us.i.us to i32
  %exitcond76.not.us.i.us = icmp eq i32 %lftr.wideiv.us.i.us, %2
  br i1 %exitcond76.not.us.i.us, label %if.end.i.us.loopexit, label %for.cond5.preheader.us.i.us, !llvm.loop !20

if.end.i.us.loopexit:                             ; preds = %for.end.loopexit.us.i.us
  br label %if.end.i.us

if.end.i.us:                                      ; preds = %if.end.i.us.loopexit, %if.then.i.us, %pregion_for_entry.entry.i.us
  %23 = add nuw nsw i64 %_local_id_x.0.us, 1
  %exitcond.not = icmp eq i64 %23, 256
  br i1 %exitcond.not, label %corr_kernel.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !21

pregion_for_entry.entry.i:                        ; preds = %if.end.i, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ %33, %if.end.i ], [ 0, %pregion_for_entry.entry.i.preheader ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %cmp.i = icmp sgt i32 %sub.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %pregion_for_entry.entry.i
  %mul.i = mul nsw i32 %conv.i, %2
  %add.i = add nsw i32 %mul.i, %conv.i
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %0, i64 %idxprom.i
  store float 1.000000e+00, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %j2.064.i = add nsw i32 %conv.i, 1
  %cmp365.i = icmp slt i32 %j2.064.i, %2
  br i1 %cmp365.i, label %for.cond5.preheader.lr.ph.i, label %if.end.i

for.cond5.preheader.lr.ph.i:                      ; preds = %if.then.i
  %sext.i = shl i64 %add1.i.i, 32
  %24 = ashr exact i64 %sext.i, 32
  %25 = add nsw i64 %24, 1
  %26 = sext i32 %mul.i to i64
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.cond5.preheader.i, %for.cond5.preheader.lr.ph.i
  %indvars.iv.next71.i3 = phi i64 [ %indvars.iv.next71.i, %for.cond5.preheader.i ], [ %25, %for.cond5.preheader.lr.ph.i ]
  %27 = add nsw i64 %indvars.iv.next71.i3, %26
  %arrayidx25.i = getelementptr inbounds float, float* %0, i64 %27
  %28 = bitcast float* %arrayidx25.i to i32*
  %29 = load i32, i32* %28, align 4, !tbaa !12
  %30 = mul nsw i64 %indvars.iv.next71.i3, %9
  %31 = add nsw i64 %30, %24
  %arrayidx29.i = getelementptr inbounds float, float* %0, i64 %31
  %32 = bitcast float* %arrayidx29.i to i32*
  store i32 %29, i32* %32, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next71.i = add nsw i64 %indvars.iv.next71.i3, 1
  %lftr.wideiv.i = trunc i64 %indvars.iv.next71.i to i32
  %exitcond76.not.i = icmp eq i32 %lftr.wideiv.i, %2
  br i1 %exitcond76.not.i, label %if.end.i.loopexit, label %for.cond5.preheader.i, !llvm.loop !20

if.end.i.loopexit:                                ; preds = %for.cond5.preheader.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.loopexit, %if.then.i, %pregion_for_entry.entry.i
  %33 = add nuw nsw i64 %_local_id_x.0, 1
  %exitcond13.not = icmp eq i64 %33, 256
  br i1 %exitcond13.not, label %corr_kernel.exit.loopexit17, label %pregion_for_entry.entry.i, !llvm.loop !21

corr_kernel.exit.loopexit:                        ; preds = %if.end.i.us
  br label %corr_kernel.exit

corr_kernel.exit.loopexit17:                      ; preds = %if.end.i
  br label %corr_kernel.exit

corr_kernel.exit:                                 ; preds = %corr_kernel.exit.loopexit17, %corr_kernel.exit.loopexit
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_corr_kernel_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %sub.i.i = add nsw i32 %16, -1
  %cmp662.i.i = icmp sgt i32 %20, 0
  %21 = sext i32 %16 to i64
  %wide.trip.count.i.i = zext i32 %20 to i64
  br i1 %cmp662.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_entry.entry.i.i.preheader

pregion_for_entry.entry.i.i.preheader:            ; preds = %5
  br label %pregion_for_entry.entry.i.i

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %35, %if.end.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp sgt i32 %sub.i.i, %conv.i.i.us
  br i1 %cmp.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %mul.i.i.us = mul nsw i32 %16, %conv.i.i.us
  %add.i.i.us = add nsw i32 %mul.i.i.us, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us
  store float 1.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %j2.064.i.i.us = add nsw i32 %conv.i.i.us, 1
  %cmp365.i.i.us = icmp slt i32 %j2.064.i.i.us, %16
  br i1 %cmp365.i.i.us, label %for.cond5.preheader.lr.ph.i.i.us, label %if.end.i.i.us

for.cond5.preheader.lr.ph.i.i.us:                 ; preds = %if.then.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %22 = ashr exact i64 %sext.i.i.us, 32
  %23 = add nsw i64 %22, 1
  %24 = sext i32 %mul.i.i.us to i64
  br label %for.cond5.preheader.us.i.i.us

for.cond5.preheader.us.i.i.us:                    ; preds = %for.end.loopexit.us.i.i.us, %for.cond5.preheader.lr.ph.i.i.us
  %indvars.iv.next71.us.i.i9.us = phi i64 [ %indvars.iv.next71.us.i.i.us, %for.end.loopexit.us.i.i.us ], [ %23, %for.cond5.preheader.lr.ph.i.i.us ]
  %25 = add nsw i64 %indvars.iv.next71.us.i.i9.us, %24
  %arrayidx21.us.i.i.us = getelementptr inbounds float, float* %8, i64 %25
  %.pre.us.i.i1.us11 = load float, float* %arrayidx21.us.i.i.us, align 4, !tbaa !12
  br label %for.body8.us.i.i.us

for.body8.us.i.i.us:                              ; preds = %for.body8.us.i.i.us, %for.cond5.preheader.us.i.i.us
  %indvars.iv.next.us.i.i7.us = phi i64 [ %indvars.iv.next.us.i.i.us, %for.body8.us.i.i.us ], [ 0, %for.cond5.preheader.us.i.i.us ]
  %26 = phi float [ %32, %for.body8.us.i.i.us ], [ %.pre.us.i.i1.us11, %for.cond5.preheader.us.i.i.us ]
  %27 = mul nsw i64 %indvars.iv.next.us.i.i7.us, %21
  %28 = add nsw i64 %27, %22
  %arrayidx12.us.i.i.us = getelementptr inbounds float, float* %12, i64 %28
  %29 = load float, float* %arrayidx12.us.i.i.us, align 4, !tbaa !12
  %30 = add nsw i64 %27, %indvars.iv.next71.us.i.i9.us
  %arrayidx16.us.i.i.us = getelementptr inbounds float, float* %12, i64 %30
  %31 = load float, float* %arrayidx16.us.i.i.us, align 4, !tbaa !12
  %32 = tail call float @llvm.fmuladd.f32(float %29, float %31, float %26) #2
  store float %32, float* %arrayidx21.us.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.us.i.i.us = add nuw nsw i64 %indvars.iv.next.us.i.i7.us, 1
  %exitcond.not.us.i.i.us = icmp eq i64 %indvars.iv.next.us.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.us.i.i.us, label %for.end.loopexit.us.i.i.us, label %for.body8.us.i.i.us, !llvm.loop !18

for.end.loopexit.us.i.i.us:                       ; preds = %for.body8.us.i.i.us
  %.lcssa = phi float [ %32, %for.body8.us.i.i.us ]
  %33 = mul nsw i64 %indvars.iv.next71.us.i.i9.us, %21
  %34 = add nsw i64 %33, %22
  %arrayidx29.us.i.i.us = getelementptr inbounds float, float* %8, i64 %34
  store float %.lcssa, float* %arrayidx29.us.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next71.us.i.i.us = add nsw i64 %indvars.iv.next71.us.i.i9.us, 1
  %lftr.wideiv.us.i.i.us = trunc i64 %indvars.iv.next71.us.i.i.us to i32
  %exitcond76.not.us.i.i.us = icmp eq i32 %16, %lftr.wideiv.us.i.i.us
  br i1 %exitcond76.not.us.i.i.us, label %if.end.i.i.us.loopexit, label %for.cond5.preheader.us.i.i.us, !llvm.loop !20

if.end.i.i.us.loopexit:                           ; preds = %for.end.loopexit.us.i.i.us
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.end.i.i.us.loopexit, %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %35 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %35, 256
  br i1 %exitcond.not, label %_pocl_kernel_corr_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !21

pregion_for_entry.entry.i.i:                      ; preds = %if.end.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %45, %if.end.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %sub.i.i, %conv.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %pregion_for_entry.entry.i.i
  %mul.i.i = mul nsw i32 %16, %conv.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %8, i64 %idxprom.i.i
  store float 1.000000e+00, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %j2.064.i.i = add nsw i32 %conv.i.i, 1
  %cmp365.i.i = icmp slt i32 %j2.064.i.i, %16
  br i1 %cmp365.i.i, label %for.cond5.preheader.lr.ph.i.i, label %if.end.i.i

for.cond5.preheader.lr.ph.i.i:                    ; preds = %if.then.i.i
  %sext.i.i = shl i64 %add1.i.i.i, 32
  %36 = ashr exact i64 %sext.i.i, 32
  %37 = add nsw i64 %36, 1
  %38 = sext i32 %mul.i.i to i64
  br label %for.cond5.preheader.i.i

for.cond5.preheader.i.i:                          ; preds = %for.cond5.preheader.i.i, %for.cond5.preheader.lr.ph.i.i
  %indvars.iv.next71.i.i3 = phi i64 [ %indvars.iv.next71.i.i, %for.cond5.preheader.i.i ], [ %37, %for.cond5.preheader.lr.ph.i.i ]
  %39 = add nsw i64 %indvars.iv.next71.i.i3, %38
  %arrayidx25.i.i = getelementptr inbounds float, float* %8, i64 %39
  %40 = bitcast float* %arrayidx25.i.i to i32*
  %41 = load i32, i32* %40, align 4, !tbaa !12
  %42 = mul nsw i64 %indvars.iv.next71.i.i3, %21
  %43 = add nsw i64 %42, %36
  %arrayidx29.i.i = getelementptr inbounds float, float* %8, i64 %43
  %44 = bitcast float* %arrayidx29.i.i to i32*
  store i32 %41, i32* %44, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next71.i.i = add nsw i64 %indvars.iv.next71.i.i3, 1
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next71.i.i to i32
  %exitcond76.not.i.i = icmp eq i32 %16, %lftr.wideiv.i.i
  br i1 %exitcond76.not.i.i, label %if.end.i.i.loopexit, label %for.cond5.preheader.i.i, !llvm.loop !20

if.end.i.i.loopexit:                              ; preds = %for.cond5.preheader.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.loopexit, %if.then.i.i, %pregion_for_entry.entry.i.i
  %45 = add nuw nsw i64 %_local_id_x.i.0, 1
  %exitcond13.not = icmp eq i64 %45, 256
  br i1 %exitcond13.not, label %_pocl_kernel_corr_kernel.exit.loopexit17, label %pregion_for_entry.entry.i.i, !llvm.loop !21

_pocl_kernel_corr_kernel.exit.loopexit:           ; preds = %if.end.i.i.us
  br label %_pocl_kernel_corr_kernel.exit

_pocl_kernel_corr_kernel.exit.loopexit17:         ; preds = %if.end.i.i
  br label %_pocl_kernel_corr_kernel.exit

_pocl_kernel_corr_kernel.exit:                    ; preds = %_pocl_kernel_corr_kernel.exit.loopexit17, %_pocl_kernel_corr_kernel.exit.loopexit
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_corr_kernel_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %sub.i.i = add nsw i32 %14, -1
  %cmp662.i.i = icmp sgt i32 %18, 0
  %19 = sext i32 %14 to i64
  %wide.trip.count.i.i = zext i32 %18 to i64
  br i1 %cmp662.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_entry.entry.i.i.preheader

pregion_for_entry.entry.i.i.preheader:            ; preds = %5
  br label %pregion_for_entry.entry.i.i

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %33, %if.end.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp sgt i32 %sub.i.i, %conv.i.i.us
  br i1 %cmp.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %mul.i.i.us = mul nsw i32 %14, %conv.i.i.us
  %add.i.i.us = add nsw i32 %mul.i.i.us, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us
  store float 1.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %j2.064.i.i.us = add nsw i32 %conv.i.i.us, 1
  %cmp365.i.i.us = icmp slt i32 %j2.064.i.i.us, %14
  br i1 %cmp365.i.i.us, label %for.cond5.preheader.lr.ph.i.i.us, label %if.end.i.i.us

for.cond5.preheader.lr.ph.i.i.us:                 ; preds = %if.then.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %20 = ashr exact i64 %sext.i.i.us, 32
  %21 = add nsw i64 %20, 1
  %22 = sext i32 %mul.i.i.us to i64
  br label %for.cond5.preheader.us.i.i.us

for.cond5.preheader.us.i.i.us:                    ; preds = %for.end.loopexit.us.i.i.us, %for.cond5.preheader.lr.ph.i.i.us
  %indvars.iv.next71.us.i.i9.us = phi i64 [ %indvars.iv.next71.us.i.i.us, %for.end.loopexit.us.i.i.us ], [ %21, %for.cond5.preheader.lr.ph.i.i.us ]
  %23 = add nsw i64 %indvars.iv.next71.us.i.i9.us, %22
  %arrayidx21.us.i.i.us = getelementptr inbounds float, float* %7, i64 %23
  %.pre.us.i.i1.us11 = load float, float* %arrayidx21.us.i.i.us, align 4, !tbaa !12
  br label %for.body8.us.i.i.us

for.body8.us.i.i.us:                              ; preds = %for.body8.us.i.i.us, %for.cond5.preheader.us.i.i.us
  %indvars.iv.next.us.i.i7.us = phi i64 [ %indvars.iv.next.us.i.i.us, %for.body8.us.i.i.us ], [ 0, %for.cond5.preheader.us.i.i.us ]
  %24 = phi float [ %30, %for.body8.us.i.i.us ], [ %.pre.us.i.i1.us11, %for.cond5.preheader.us.i.i.us ]
  %25 = mul nsw i64 %indvars.iv.next.us.i.i7.us, %19
  %26 = add nsw i64 %25, %20
  %arrayidx12.us.i.i.us = getelementptr inbounds float, float* %10, i64 %26
  %27 = load float, float* %arrayidx12.us.i.i.us, align 4, !tbaa !12
  %28 = add nsw i64 %25, %indvars.iv.next71.us.i.i9.us
  %arrayidx16.us.i.i.us = getelementptr inbounds float, float* %10, i64 %28
  %29 = load float, float* %arrayidx16.us.i.i.us, align 4, !tbaa !12
  %30 = tail call float @llvm.fmuladd.f32(float %27, float %29, float %24) #2
  store float %30, float* %arrayidx21.us.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.us.i.i.us = add nuw nsw i64 %indvars.iv.next.us.i.i7.us, 1
  %exitcond.not.us.i.i.us = icmp eq i64 %indvars.iv.next.us.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.us.i.i.us, label %for.end.loopexit.us.i.i.us, label %for.body8.us.i.i.us, !llvm.loop !18

for.end.loopexit.us.i.i.us:                       ; preds = %for.body8.us.i.i.us
  %.lcssa = phi float [ %30, %for.body8.us.i.i.us ]
  %31 = mul nsw i64 %indvars.iv.next71.us.i.i9.us, %19
  %32 = add nsw i64 %31, %20
  %arrayidx29.us.i.i.us = getelementptr inbounds float, float* %7, i64 %32
  store float %.lcssa, float* %arrayidx29.us.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next71.us.i.i.us = add nsw i64 %indvars.iv.next71.us.i.i9.us, 1
  %lftr.wideiv.us.i.i.us = trunc i64 %indvars.iv.next71.us.i.i.us to i32
  %exitcond76.not.us.i.i.us = icmp eq i32 %14, %lftr.wideiv.us.i.i.us
  br i1 %exitcond76.not.us.i.i.us, label %if.end.i.i.us.loopexit, label %for.cond5.preheader.us.i.i.us, !llvm.loop !20

if.end.i.i.us.loopexit:                           ; preds = %for.end.loopexit.us.i.i.us
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.end.i.i.us.loopexit, %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %33 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %33, 256
  br i1 %exitcond.not, label %_pocl_kernel_corr_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !21

pregion_for_entry.entry.i.i:                      ; preds = %if.end.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %43, %if.end.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %sub.i.i, %conv.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %pregion_for_entry.entry.i.i
  %mul.i.i = mul nsw i32 %14, %conv.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %7, i64 %idxprom.i.i
  store float 1.000000e+00, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %j2.064.i.i = add nsw i32 %conv.i.i, 1
  %cmp365.i.i = icmp slt i32 %j2.064.i.i, %14
  br i1 %cmp365.i.i, label %for.cond5.preheader.lr.ph.i.i, label %if.end.i.i

for.cond5.preheader.lr.ph.i.i:                    ; preds = %if.then.i.i
  %sext.i.i = shl i64 %add1.i.i.i, 32
  %34 = ashr exact i64 %sext.i.i, 32
  %35 = add nsw i64 %34, 1
  %36 = sext i32 %mul.i.i to i64
  br label %for.cond5.preheader.i.i

for.cond5.preheader.i.i:                          ; preds = %for.cond5.preheader.i.i, %for.cond5.preheader.lr.ph.i.i
  %indvars.iv.next71.i.i3 = phi i64 [ %indvars.iv.next71.i.i, %for.cond5.preheader.i.i ], [ %35, %for.cond5.preheader.lr.ph.i.i ]
  %37 = add nsw i64 %indvars.iv.next71.i.i3, %36
  %arrayidx25.i.i = getelementptr inbounds float, float* %7, i64 %37
  %38 = bitcast float* %arrayidx25.i.i to i32*
  %39 = load i32, i32* %38, align 4, !tbaa !12
  %40 = mul nsw i64 %indvars.iv.next71.i.i3, %19
  %41 = add nsw i64 %40, %34
  %arrayidx29.i.i = getelementptr inbounds float, float* %7, i64 %41
  %42 = bitcast float* %arrayidx29.i.i to i32*
  store i32 %39, i32* %42, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next71.i.i = add nsw i64 %indvars.iv.next71.i.i3, 1
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next71.i.i to i32
  %exitcond76.not.i.i = icmp eq i32 %14, %lftr.wideiv.i.i
  br i1 %exitcond76.not.i.i, label %if.end.i.i.loopexit, label %for.cond5.preheader.i.i, !llvm.loop !20

if.end.i.i.loopexit:                              ; preds = %for.cond5.preheader.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.loopexit, %if.then.i.i, %pregion_for_entry.entry.i.i
  %43 = add nuw nsw i64 %_local_id_x.i.0, 1
  %exitcond13.not = icmp eq i64 %43, 256
  br i1 %exitcond13.not, label %_pocl_kernel_corr_kernel.exit.loopexit17, label %pregion_for_entry.entry.i.i, !llvm.loop !21

_pocl_kernel_corr_kernel.exit.loopexit:           ; preds = %if.end.i.i.us
  br label %_pocl_kernel_corr_kernel.exit

_pocl_kernel_corr_kernel.exit.loopexit17:         ; preds = %if.end.i.i
  br label %_pocl_kernel_corr_kernel.exit

_pocl_kernel_corr_kernel.exit:                    ; preds = %_pocl_kernel_corr_kernel.exit.loopexit17, %_pocl_kernel_corr_kernel.exit.loopexit
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
