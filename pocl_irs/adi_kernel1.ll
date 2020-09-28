; ModuleID = './BF/DFFLECFOLOBPKCKMNEPCKIANKJKKLLHBOGBCO/adi_kernel1/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_adi_kernel1(float* nocapture readonly %0, float* nocapture %1, float* nocapture %2, i32 %3, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %4, i64 %5, i64 %6, i64 %7) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %5, 8
  %cmp288.i = icmp sgt i32 %3, 1
  %wide.trip.count.i = zext i32 %3 to i64
  br i1 %cmp288.i, label %pregion_for_entry.entry.i.us.preheader, label %adi_kernel1.exit

pregion_for_entry.entry.i.us.preheader:           ; preds = %8
  %scevgep19 = getelementptr float, float* %2, i64 %wide.trip.count.i
  %scevgep24 = getelementptr float, float* %1, i64 %wide.trip.count.i
  %9 = trunc i64 %5 to i32
  %10 = mul i32 %9, %3
  %11 = shl i32 %10, 8
  %bound0 = icmp ugt float* %scevgep24, %2
  %bound1 = icmp ugt float* %scevgep19, %1
  %found.conflict = and i1 %bound0, %bound1
  br label %pregion_for_entry.entry.i.us

pregion_for_entry.entry.i.us:                     ; preds = %if.end.i.us, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %37, %if.end.i.us ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %12 = trunc i64 %_local_id_x.0.us to i32
  %13 = mul i32 %12, %3
  %14 = add i32 %13, %11
  %15 = sext i32 %14 to i64
  %scevgep27 = getelementptr float, float* %2, i64 %15
  %scevgep28 = getelementptr float, float* %1, i64 %15
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp.i.us = icmp slt i32 %conv.i.us, %3
  br i1 %cmp.i.us, label %for.body.lver.check.i.us, label %if.end.i.us

for.body.lver.check.i.us:                         ; preds = %pregion_for_entry.entry.i.us
  %mul.i.us = mul nsw i32 %conv.i.us, %3
  %16 = sext i32 %mul.i.us to i64
  %scevgep.i.us = getelementptr float, float* %2, i64 %16
  %17 = add nsw i64 %16, %wide.trip.count.i
  %scevgep94.i.us = getelementptr float, float* %2, i64 %17
  %scevgep96.i.us = getelementptr float, float* %1, i64 %16
  %scevgep98.i.us = getelementptr float, float* %1, i64 %17
  %bound0.i.us = icmp ult float* %scevgep.i.us, %scevgep98.i.us
  %bound1.i.us = icmp ult float* %scevgep96.i.us, %scevgep94.i.us
  %found.conflict.i.us = and i1 %bound0.i.us, %bound1.i.us
  br i1 %found.conflict.i.us, label %for.body.lver.orig.lver.orig.i.us.lver.check, label %for.body.ph.i.us

for.body.lver.orig.lver.orig.i.us.lver.check:     ; preds = %for.body.lver.check.i.us
  br i1 %found.conflict, label %for.body.lver.orig.lver.orig.i.us.lver.orig.preheader, label %for.body.lver.orig.lver.orig.i.us.ph

for.body.lver.orig.lver.orig.i.us.lver.orig.preheader: ; preds = %for.body.lver.orig.lver.orig.i.us.lver.check
  br label %for.body.lver.orig.lver.orig.i.us.lver.orig

for.body.lver.orig.lver.orig.i.us.lver.orig:      ; preds = %for.body.lver.orig.lver.orig.i.us.lver.orig, %for.body.lver.orig.lver.orig.i.us.lver.orig.preheader
  %indvars.iv.next.lver.orig.lver.orig.i12.us.lver.orig = phi i64 [ %indvars.iv.next.lver.orig.lver.orig.i.us.lver.orig, %for.body.lver.orig.lver.orig.i.us.lver.orig ], [ 1, %for.body.lver.orig.lver.orig.i.us.lver.orig.preheader ]
  %18 = add nsw i64 %indvars.iv.next.lver.orig.lver.orig.i12.us.lver.orig, %16
  %arrayidx.lver.orig.lver.orig.i.us.lver.orig = getelementptr inbounds float, float* %2, i64 %18
  %19 = load float, float* %arrayidx.lver.orig.lver.orig.i.us.lver.orig, align 4, !tbaa !12
  %20 = add nsw i64 %18, -1
  %arrayidx7.lver.orig.lver.orig.i.us.lver.orig = getelementptr inbounds float, float* %2, i64 %20
  %21 = load float, float* %arrayidx7.lver.orig.lver.orig.i.us.lver.orig, align 4, !tbaa !12
  %arrayidx11.lver.orig.lver.orig.i.us.lver.orig = getelementptr inbounds float, float* %0, i64 %18
  %22 = load float, float* %arrayidx11.lver.orig.lver.orig.i.us.lver.orig, align 4, !tbaa !12
  %mul12.lver.orig.lver.orig.i.us.lver.orig = fmul float %21, %22
  %arrayidx17.lver.orig.lver.orig.i.us.lver.orig = getelementptr inbounds float, float* %1, i64 %20
  %23 = load float, float* %arrayidx17.lver.orig.lver.orig.i.us.lver.orig, align 4, !tbaa !12
  %div.lver.orig.lver.orig.i.us.lver.orig = fdiv float %mul12.lver.orig.lver.orig.i.us.lver.orig, %23, !fpmath !16
  %sub18.lver.orig.lver.orig.i.us.lver.orig = fsub float %19, %div.lver.orig.lver.orig.i.us.lver.orig
  store float %sub18.lver.orig.lver.orig.i.us.lver.orig, float* %arrayidx.lver.orig.lver.orig.i.us.lver.orig, align 4, !tbaa !12, !llvm.access.group !17
  %arrayidx26.lver.orig.lver.orig.i.us.lver.orig = getelementptr inbounds float, float* %1, i64 %18
  %24 = load float, float* %arrayidx26.lver.orig.lver.orig.i.us.lver.orig, align 4, !tbaa !12
  %25 = load float, float* %arrayidx11.lver.orig.lver.orig.i.us.lver.orig, align 4, !tbaa !12
  %mul35.lver.orig.lver.orig.i.us.lver.orig = fmul float %25, %25
  %26 = load float, float* %arrayidx17.lver.orig.lver.orig.i.us.lver.orig, align 4, !tbaa !12
  %div41.lver.orig.lver.orig.i.us.lver.orig = fdiv float %mul35.lver.orig.lver.orig.i.us.lver.orig, %26, !fpmath !16
  %sub42.lver.orig.lver.orig.i.us.lver.orig = fsub float %24, %div41.lver.orig.lver.orig.i.us.lver.orig
  store float %sub42.lver.orig.lver.orig.i.us.lver.orig, float* %arrayidx26.lver.orig.lver.orig.i.us.lver.orig, align 4, !tbaa !12, !llvm.access.group !17
  %indvars.iv.next.lver.orig.lver.orig.i.us.lver.orig = add nuw nsw i64 %indvars.iv.next.lver.orig.lver.orig.i12.us.lver.orig, 1
  %exitcond.not.lver.orig.lver.orig.i.us.lver.orig = icmp eq i64 %indvars.iv.next.lver.orig.lver.orig.i.us.lver.orig, %wide.trip.count.i
  br i1 %exitcond.not.lver.orig.lver.orig.i.us.lver.orig, label %if.end.i.us.loopexit, label %for.body.lver.orig.lver.orig.i.us.lver.orig, !llvm.loop !19

for.body.lver.orig.lver.orig.i.us.ph:             ; preds = %for.body.lver.orig.lver.orig.i.us.lver.check
  %load_initial = load float, float* %scevgep27, align 4
  %load_initial29 = load float, float* %scevgep28, align 4
  br label %for.body.lver.orig.lver.orig.i.us

for.body.ph.i.us:                                 ; preds = %for.body.lver.check.i.us
  %load_initial.i1.us13 = load float, float* %scevgep.i.us, align 4
  %load_initial102.i2.us14 = load float, float* %scevgep96.i.us, align 4
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %for.body.ph.i.us
  %indvars.iv.next.i10.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 1, %for.body.ph.i.us ]
  %sub18.i8.us = phi float [ %sub18.i.us, %for.body.i.us ], [ %load_initial.i1.us13, %for.body.ph.i.us ]
  %sub42.i6.us = phi float [ %sub42.i.us, %for.body.i.us ], [ %load_initial102.i2.us14, %for.body.ph.i.us ]
  %27 = add nsw i64 %indvars.iv.next.i10.us, %16
  %arrayidx.i.us = getelementptr inbounds float, float* %2, i64 %27
  %28 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %arrayidx11.i.us = getelementptr inbounds float, float* %0, i64 %27
  %29 = load float, float* %arrayidx11.i.us, align 4, !tbaa !12
  %mul12.i.us = fmul float %sub18.i8.us, %29
  %div.i.us = fdiv float %mul12.i.us, %sub42.i6.us, !fpmath !16
  %sub18.i.us = fsub float %28, %div.i.us
  store float %sub18.i.us, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !17
  %arrayidx26.i.us = getelementptr inbounds float, float* %1, i64 %27
  %30 = load float, float* %arrayidx26.i.us, align 4, !tbaa !12
  %31 = load float, float* %arrayidx11.i.us, align 4, !tbaa !12
  %mul35.i.us = fmul float %31, %31
  %div41.i.us = fdiv float %mul35.i.us, %sub42.i6.us, !fpmath !16
  %sub42.i.us = fsub float %30, %div41.i.us
  store float %sub42.i.us, float* %arrayidx26.i.us, align 4, !tbaa !12, !llvm.access.group !17
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i10.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %if.end.i.us.loopexit36, label %for.body.i.us, !llvm.loop !19

for.body.lver.orig.lver.orig.i.us:                ; preds = %for.body.lver.orig.lver.orig.i.us, %for.body.lver.orig.lver.orig.i.us.ph
  %store_forwarded32 = phi float [ %load_initial29, %for.body.lver.orig.lver.orig.i.us.ph ], [ %sub42.lver.orig.lver.orig.i.us, %for.body.lver.orig.lver.orig.i.us ]
  %store_forwarded = phi float [ %load_initial, %for.body.lver.orig.lver.orig.i.us.ph ], [ %sub18.lver.orig.lver.orig.i.us, %for.body.lver.orig.lver.orig.i.us ]
  %indvars.iv.next.lver.orig.lver.orig.i12.us = phi i64 [ 1, %for.body.lver.orig.lver.orig.i.us.ph ], [ %indvars.iv.next.lver.orig.lver.orig.i.us, %for.body.lver.orig.lver.orig.i.us ]
  %32 = add nsw i64 %indvars.iv.next.lver.orig.lver.orig.i12.us, %16
  %arrayidx.lver.orig.lver.orig.i.us = getelementptr inbounds float, float* %2, i64 %32
  %33 = load float, float* %arrayidx.lver.orig.lver.orig.i.us, align 4, !tbaa !12
  %arrayidx11.lver.orig.lver.orig.i.us = getelementptr inbounds float, float* %0, i64 %32
  %34 = load float, float* %arrayidx11.lver.orig.lver.orig.i.us, align 4, !tbaa !12
  %mul12.lver.orig.lver.orig.i.us = fmul float %store_forwarded, %34
  %div.lver.orig.lver.orig.i.us = fdiv float %mul12.lver.orig.lver.orig.i.us, %store_forwarded32, !fpmath !16
  %sub18.lver.orig.lver.orig.i.us = fsub float %33, %div.lver.orig.lver.orig.i.us
  store float %sub18.lver.orig.lver.orig.i.us, float* %arrayidx.lver.orig.lver.orig.i.us, align 4, !tbaa !12, !llvm.access.group !17
  %arrayidx26.lver.orig.lver.orig.i.us = getelementptr inbounds float, float* %1, i64 %32
  %35 = load float, float* %arrayidx26.lver.orig.lver.orig.i.us, align 4, !tbaa !12
  %36 = load float, float* %arrayidx11.lver.orig.lver.orig.i.us, align 4, !tbaa !12
  %mul35.lver.orig.lver.orig.i.us = fmul float %36, %36
  %div41.lver.orig.lver.orig.i.us = fdiv float %mul35.lver.orig.lver.orig.i.us, %store_forwarded32, !fpmath !16
  %sub42.lver.orig.lver.orig.i.us = fsub float %35, %div41.lver.orig.lver.orig.i.us
  store float %sub42.lver.orig.lver.orig.i.us, float* %arrayidx26.lver.orig.lver.orig.i.us, align 4, !tbaa !12, !llvm.access.group !17
  %indvars.iv.next.lver.orig.lver.orig.i.us = add nuw nsw i64 %indvars.iv.next.lver.orig.lver.orig.i12.us, 1
  %exitcond.not.lver.orig.lver.orig.i.us = icmp eq i64 %indvars.iv.next.lver.orig.lver.orig.i.us, %wide.trip.count.i
  br i1 %exitcond.not.lver.orig.lver.orig.i.us, label %if.end.i.us.loopexit35, label %for.body.lver.orig.lver.orig.i.us, !llvm.loop !19

if.end.i.us.loopexit:                             ; preds = %for.body.lver.orig.lver.orig.i.us.lver.orig
  br label %if.end.i.us

if.end.i.us.loopexit35:                           ; preds = %for.body.lver.orig.lver.orig.i.us
  br label %if.end.i.us

if.end.i.us.loopexit36:                           ; preds = %for.body.i.us
  br label %if.end.i.us

if.end.i.us:                                      ; preds = %if.end.i.us.loopexit36, %if.end.i.us.loopexit35, %if.end.i.us.loopexit, %pregion_for_entry.entry.i.us
  %37 = add nuw nsw i64 %_local_id_x.0.us, 1
  %exitcond.not = icmp eq i64 %37, 256
  br i1 %exitcond.not, label %adi_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !21

adi_kernel1.exit.loopexit:                        ; preds = %if.end.i.us
  br label %adi_kernel1.exit

adi_kernel1.exit:                                 ; preds = %adi_kernel1.exit.loopexit, %8
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_adi_kernel1_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
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
  %mul.i.i.i = shl i64 %2, 8
  %cmp288.i.i = icmp sgt i32 %20, 1
  %wide.trip.count.i.i = zext i32 %20 to i64
  br i1 %cmp288.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %_pocl_kernel_adi_kernel1.exit

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  %scevgep19 = getelementptr float, float* %16, i64 %wide.trip.count.i.i
  %scevgep24 = getelementptr float, float* %12, i64 %wide.trip.count.i.i
  %21 = trunc i64 %2 to i32
  %22 = mul i32 %20, %21
  %23 = shl i32 %22, 8
  %bound0 = icmp ult float* %16, %scevgep24
  %bound1 = icmp ult float* %12, %scevgep19
  %found.conflict = and i1 %bound0, %bound1
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %49, %if.end.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %24 = trunc i64 %_local_id_x.i.0.us to i32
  %25 = mul i32 %20, %24
  %26 = add i32 %25, %23
  %27 = sext i32 %26 to i64
  %scevgep27 = getelementptr float, float* %16, i64 %27
  %scevgep28 = getelementptr float, float* %12, i64 %27
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp sgt i32 %20, %conv.i.i.us
  br i1 %cmp.i.i.us, label %for.body.lver.check.i.i.us, label %if.end.i.i.us

for.body.lver.check.i.i.us:                       ; preds = %pregion_for_entry.entry.i.i.us
  %mul.i.i.us = mul nsw i32 %20, %conv.i.i.us
  %28 = sext i32 %mul.i.i.us to i64
  %scevgep.i.i.us = getelementptr float, float* %16, i64 %28
  %29 = add nsw i64 %28, %wide.trip.count.i.i
  %scevgep94.i.i.us = getelementptr float, float* %16, i64 %29
  %scevgep96.i.i.us = getelementptr float, float* %12, i64 %28
  %scevgep98.i.i.us = getelementptr float, float* %12, i64 %29
  %bound0.i.i.us = icmp ult float* %scevgep.i.i.us, %scevgep98.i.i.us
  %bound1.i.i.us = icmp ult float* %scevgep96.i.i.us, %scevgep94.i.i.us
  %found.conflict.i.i.us = and i1 %bound0.i.i.us, %bound1.i.i.us
  br i1 %found.conflict.i.i.us, label %for.body.lver.orig.lver.orig.i.i.us.lver.check, label %for.body.ph.i.i.us

for.body.lver.orig.lver.orig.i.i.us.lver.check:   ; preds = %for.body.lver.check.i.i.us
  br i1 %found.conflict, label %for.body.lver.orig.lver.orig.i.i.us.lver.orig.preheader, label %for.body.lver.orig.lver.orig.i.i.us.ph

for.body.lver.orig.lver.orig.i.i.us.lver.orig.preheader: ; preds = %for.body.lver.orig.lver.orig.i.i.us.lver.check
  br label %for.body.lver.orig.lver.orig.i.i.us.lver.orig

for.body.lver.orig.lver.orig.i.i.us.lver.orig:    ; preds = %for.body.lver.orig.lver.orig.i.i.us.lver.orig, %for.body.lver.orig.lver.orig.i.i.us.lver.orig.preheader
  %indvars.iv.next.lver.orig.lver.orig.i.i12.us.lver.orig = phi i64 [ %indvars.iv.next.lver.orig.lver.orig.i.i.us.lver.orig, %for.body.lver.orig.lver.orig.i.i.us.lver.orig ], [ 1, %for.body.lver.orig.lver.orig.i.i.us.lver.orig.preheader ]
  %30 = add nsw i64 %indvars.iv.next.lver.orig.lver.orig.i.i12.us.lver.orig, %28
  %arrayidx.lver.orig.lver.orig.i.i.us.lver.orig = getelementptr inbounds float, float* %16, i64 %30
  %31 = load float, float* %arrayidx.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12
  %32 = add nsw i64 %30, -1
  %arrayidx7.lver.orig.lver.orig.i.i.us.lver.orig = getelementptr inbounds float, float* %16, i64 %32
  %33 = load float, float* %arrayidx7.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12
  %arrayidx11.lver.orig.lver.orig.i.i.us.lver.orig = getelementptr inbounds float, float* %8, i64 %30
  %34 = load float, float* %arrayidx11.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12
  %mul12.lver.orig.lver.orig.i.i.us.lver.orig = fmul float %33, %34
  %arrayidx17.lver.orig.lver.orig.i.i.us.lver.orig = getelementptr inbounds float, float* %12, i64 %32
  %35 = load float, float* %arrayidx17.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12
  %div.lver.orig.lver.orig.i.i.us.lver.orig = fdiv float %mul12.lver.orig.lver.orig.i.i.us.lver.orig, %35, !fpmath !16
  %sub18.lver.orig.lver.orig.i.i.us.lver.orig = fsub float %31, %div.lver.orig.lver.orig.i.i.us.lver.orig
  store float %sub18.lver.orig.lver.orig.i.i.us.lver.orig, float* %arrayidx.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12, !llvm.access.group !17
  %arrayidx26.lver.orig.lver.orig.i.i.us.lver.orig = getelementptr inbounds float, float* %12, i64 %30
  %36 = load float, float* %arrayidx26.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12
  %37 = load float, float* %arrayidx11.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12
  %mul35.lver.orig.lver.orig.i.i.us.lver.orig = fmul float %37, %37
  %38 = load float, float* %arrayidx17.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12
  %div41.lver.orig.lver.orig.i.i.us.lver.orig = fdiv float %mul35.lver.orig.lver.orig.i.i.us.lver.orig, %38, !fpmath !16
  %sub42.lver.orig.lver.orig.i.i.us.lver.orig = fsub float %36, %div41.lver.orig.lver.orig.i.i.us.lver.orig
  store float %sub42.lver.orig.lver.orig.i.i.us.lver.orig, float* %arrayidx26.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12, !llvm.access.group !17
  %indvars.iv.next.lver.orig.lver.orig.i.i.us.lver.orig = add nuw nsw i64 %indvars.iv.next.lver.orig.lver.orig.i.i12.us.lver.orig, 1
  %exitcond.not.lver.orig.lver.orig.i.i.us.lver.orig = icmp eq i64 %indvars.iv.next.lver.orig.lver.orig.i.i.us.lver.orig, %wide.trip.count.i.i
  br i1 %exitcond.not.lver.orig.lver.orig.i.i.us.lver.orig, label %if.end.i.i.us.loopexit, label %for.body.lver.orig.lver.orig.i.i.us.lver.orig, !llvm.loop !19

for.body.lver.orig.lver.orig.i.i.us.ph:           ; preds = %for.body.lver.orig.lver.orig.i.i.us.lver.check
  %load_initial = load float, float* %scevgep27, align 4
  %load_initial29 = load float, float* %scevgep28, align 4
  br label %for.body.lver.orig.lver.orig.i.i.us

for.body.ph.i.i.us:                               ; preds = %for.body.lver.check.i.i.us
  %load_initial.i.i1.us13 = load float, float* %scevgep.i.i.us, align 4
  %load_initial102.i.i2.us14 = load float, float* %scevgep96.i.i.us, align 4
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %for.body.ph.i.i.us
  %indvars.iv.next.i.i10.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 1, %for.body.ph.i.i.us ]
  %sub18.i.i8.us = phi float [ %sub18.i.i.us, %for.body.i.i.us ], [ %load_initial.i.i1.us13, %for.body.ph.i.i.us ]
  %sub42.i.i6.us = phi float [ %sub42.i.i.us, %for.body.i.i.us ], [ %load_initial102.i.i2.us14, %for.body.ph.i.i.us ]
  %39 = add nsw i64 %indvars.iv.next.i.i10.us, %28
  %arrayidx.i.i.us = getelementptr inbounds float, float* %16, i64 %39
  %40 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %arrayidx11.i.i.us = getelementptr inbounds float, float* %8, i64 %39
  %41 = load float, float* %arrayidx11.i.i.us, align 4, !tbaa !12
  %mul12.i.i.us = fmul float %sub18.i.i8.us, %41
  %div.i.i.us = fdiv float %mul12.i.i.us, %sub42.i.i6.us, !fpmath !16
  %sub18.i.i.us = fsub float %40, %div.i.i.us
  store float %sub18.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !17
  %arrayidx26.i.i.us = getelementptr inbounds float, float* %12, i64 %39
  %42 = load float, float* %arrayidx26.i.i.us, align 4, !tbaa !12
  %43 = load float, float* %arrayidx11.i.i.us, align 4, !tbaa !12
  %mul35.i.i.us = fmul float %43, %43
  %div41.i.i.us = fdiv float %mul35.i.i.us, %sub42.i.i6.us, !fpmath !16
  %sub42.i.i.us = fsub float %42, %div41.i.i.us
  store float %sub42.i.i.us, float* %arrayidx26.i.i.us, align 4, !tbaa !12, !llvm.access.group !17
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i10.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %if.end.i.i.us.loopexit36, label %for.body.i.i.us, !llvm.loop !19

for.body.lver.orig.lver.orig.i.i.us:              ; preds = %for.body.lver.orig.lver.orig.i.i.us, %for.body.lver.orig.lver.orig.i.i.us.ph
  %store_forwarded32 = phi float [ %load_initial29, %for.body.lver.orig.lver.orig.i.i.us.ph ], [ %sub42.lver.orig.lver.orig.i.i.us, %for.body.lver.orig.lver.orig.i.i.us ]
  %store_forwarded = phi float [ %load_initial, %for.body.lver.orig.lver.orig.i.i.us.ph ], [ %sub18.lver.orig.lver.orig.i.i.us, %for.body.lver.orig.lver.orig.i.i.us ]
  %indvars.iv.next.lver.orig.lver.orig.i.i12.us = phi i64 [ 1, %for.body.lver.orig.lver.orig.i.i.us.ph ], [ %indvars.iv.next.lver.orig.lver.orig.i.i.us, %for.body.lver.orig.lver.orig.i.i.us ]
  %44 = add nsw i64 %indvars.iv.next.lver.orig.lver.orig.i.i12.us, %28
  %arrayidx.lver.orig.lver.orig.i.i.us = getelementptr inbounds float, float* %16, i64 %44
  %45 = load float, float* %arrayidx.lver.orig.lver.orig.i.i.us, align 4, !tbaa !12
  %arrayidx11.lver.orig.lver.orig.i.i.us = getelementptr inbounds float, float* %8, i64 %44
  %46 = load float, float* %arrayidx11.lver.orig.lver.orig.i.i.us, align 4, !tbaa !12
  %mul12.lver.orig.lver.orig.i.i.us = fmul float %store_forwarded, %46
  %div.lver.orig.lver.orig.i.i.us = fdiv float %mul12.lver.orig.lver.orig.i.i.us, %store_forwarded32, !fpmath !16
  %sub18.lver.orig.lver.orig.i.i.us = fsub float %45, %div.lver.orig.lver.orig.i.i.us
  store float %sub18.lver.orig.lver.orig.i.i.us, float* %arrayidx.lver.orig.lver.orig.i.i.us, align 4, !tbaa !12, !llvm.access.group !17
  %arrayidx26.lver.orig.lver.orig.i.i.us = getelementptr inbounds float, float* %12, i64 %44
  %47 = load float, float* %arrayidx26.lver.orig.lver.orig.i.i.us, align 4, !tbaa !12
  %48 = load float, float* %arrayidx11.lver.orig.lver.orig.i.i.us, align 4, !tbaa !12
  %mul35.lver.orig.lver.orig.i.i.us = fmul float %48, %48
  %div41.lver.orig.lver.orig.i.i.us = fdiv float %mul35.lver.orig.lver.orig.i.i.us, %store_forwarded32, !fpmath !16
  %sub42.lver.orig.lver.orig.i.i.us = fsub float %47, %div41.lver.orig.lver.orig.i.i.us
  store float %sub42.lver.orig.lver.orig.i.i.us, float* %arrayidx26.lver.orig.lver.orig.i.i.us, align 4, !tbaa !12, !llvm.access.group !17
  %indvars.iv.next.lver.orig.lver.orig.i.i.us = add nuw nsw i64 %indvars.iv.next.lver.orig.lver.orig.i.i12.us, 1
  %exitcond.not.lver.orig.lver.orig.i.i.us = icmp eq i64 %indvars.iv.next.lver.orig.lver.orig.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.lver.orig.lver.orig.i.i.us, label %if.end.i.i.us.loopexit35, label %for.body.lver.orig.lver.orig.i.i.us, !llvm.loop !19

if.end.i.i.us.loopexit:                           ; preds = %for.body.lver.orig.lver.orig.i.i.us.lver.orig
  br label %if.end.i.i.us

if.end.i.i.us.loopexit35:                         ; preds = %for.body.lver.orig.lver.orig.i.i.us
  br label %if.end.i.i.us

if.end.i.i.us.loopexit36:                         ; preds = %for.body.i.i.us
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.end.i.i.us.loopexit36, %if.end.i.i.us.loopexit35, %if.end.i.i.us.loopexit, %pregion_for_entry.entry.i.i.us
  %49 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %49, 256
  br i1 %exitcond.not, label %_pocl_kernel_adi_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !21

_pocl_kernel_adi_kernel1.exit.loopexit:           ; preds = %if.end.i.i.us
  br label %_pocl_kernel_adi_kernel1.exit

_pocl_kernel_adi_kernel1.exit:                    ; preds = %_pocl_kernel_adi_kernel1.exit.loopexit, %5
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_adi_kernel1_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
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
  %mul.i.i.i = shl i64 %2, 8
  %cmp288.i.i = icmp sgt i32 %17, 1
  %wide.trip.count.i.i = zext i32 %17 to i64
  br i1 %cmp288.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %_pocl_kernel_adi_kernel1.exit

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  %scevgep19 = getelementptr float, float* %13, i64 %wide.trip.count.i.i
  %scevgep24 = getelementptr float, float* %10, i64 %wide.trip.count.i.i
  %18 = trunc i64 %2 to i32
  %19 = mul i32 %17, %18
  %20 = shl i32 %19, 8
  %bound0 = icmp ult float* %13, %scevgep24
  %bound1 = icmp ult float* %10, %scevgep19
  %found.conflict = and i1 %bound0, %bound1
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %46, %if.end.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %21 = trunc i64 %_local_id_x.i.0.us to i32
  %22 = mul i32 %17, %21
  %23 = add i32 %22, %20
  %24 = sext i32 %23 to i64
  %scevgep27 = getelementptr float, float* %13, i64 %24
  %scevgep28 = getelementptr float, float* %10, i64 %24
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp sgt i32 %17, %conv.i.i.us
  br i1 %cmp.i.i.us, label %for.body.lver.check.i.i.us, label %if.end.i.i.us

for.body.lver.check.i.i.us:                       ; preds = %pregion_for_entry.entry.i.i.us
  %mul.i.i.us = mul nsw i32 %17, %conv.i.i.us
  %25 = sext i32 %mul.i.i.us to i64
  %scevgep.i.i.us = getelementptr float, float* %13, i64 %25
  %26 = add nsw i64 %25, %wide.trip.count.i.i
  %scevgep94.i.i.us = getelementptr float, float* %13, i64 %26
  %scevgep96.i.i.us = getelementptr float, float* %10, i64 %25
  %scevgep98.i.i.us = getelementptr float, float* %10, i64 %26
  %bound0.i.i.us = icmp ult float* %scevgep.i.i.us, %scevgep98.i.i.us
  %bound1.i.i.us = icmp ult float* %scevgep96.i.i.us, %scevgep94.i.i.us
  %found.conflict.i.i.us = and i1 %bound0.i.i.us, %bound1.i.i.us
  br i1 %found.conflict.i.i.us, label %for.body.lver.orig.lver.orig.i.i.us.lver.check, label %for.body.ph.i.i.us

for.body.lver.orig.lver.orig.i.i.us.lver.check:   ; preds = %for.body.lver.check.i.i.us
  br i1 %found.conflict, label %for.body.lver.orig.lver.orig.i.i.us.lver.orig.preheader, label %for.body.lver.orig.lver.orig.i.i.us.ph

for.body.lver.orig.lver.orig.i.i.us.lver.orig.preheader: ; preds = %for.body.lver.orig.lver.orig.i.i.us.lver.check
  br label %for.body.lver.orig.lver.orig.i.i.us.lver.orig

for.body.lver.orig.lver.orig.i.i.us.lver.orig:    ; preds = %for.body.lver.orig.lver.orig.i.i.us.lver.orig, %for.body.lver.orig.lver.orig.i.i.us.lver.orig.preheader
  %indvars.iv.next.lver.orig.lver.orig.i.i12.us.lver.orig = phi i64 [ %indvars.iv.next.lver.orig.lver.orig.i.i.us.lver.orig, %for.body.lver.orig.lver.orig.i.i.us.lver.orig ], [ 1, %for.body.lver.orig.lver.orig.i.i.us.lver.orig.preheader ]
  %27 = add nsw i64 %indvars.iv.next.lver.orig.lver.orig.i.i12.us.lver.orig, %25
  %arrayidx.lver.orig.lver.orig.i.i.us.lver.orig = getelementptr inbounds float, float* %13, i64 %27
  %28 = load float, float* %arrayidx.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12
  %29 = add nsw i64 %27, -1
  %arrayidx7.lver.orig.lver.orig.i.i.us.lver.orig = getelementptr inbounds float, float* %13, i64 %29
  %30 = load float, float* %arrayidx7.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12
  %arrayidx11.lver.orig.lver.orig.i.i.us.lver.orig = getelementptr inbounds float, float* %7, i64 %27
  %31 = load float, float* %arrayidx11.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12
  %mul12.lver.orig.lver.orig.i.i.us.lver.orig = fmul float %30, %31
  %arrayidx17.lver.orig.lver.orig.i.i.us.lver.orig = getelementptr inbounds float, float* %10, i64 %29
  %32 = load float, float* %arrayidx17.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12
  %div.lver.orig.lver.orig.i.i.us.lver.orig = fdiv float %mul12.lver.orig.lver.orig.i.i.us.lver.orig, %32, !fpmath !16
  %sub18.lver.orig.lver.orig.i.i.us.lver.orig = fsub float %28, %div.lver.orig.lver.orig.i.i.us.lver.orig
  store float %sub18.lver.orig.lver.orig.i.i.us.lver.orig, float* %arrayidx.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12, !llvm.access.group !17
  %arrayidx26.lver.orig.lver.orig.i.i.us.lver.orig = getelementptr inbounds float, float* %10, i64 %27
  %33 = load float, float* %arrayidx26.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12
  %34 = load float, float* %arrayidx11.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12
  %mul35.lver.orig.lver.orig.i.i.us.lver.orig = fmul float %34, %34
  %35 = load float, float* %arrayidx17.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12
  %div41.lver.orig.lver.orig.i.i.us.lver.orig = fdiv float %mul35.lver.orig.lver.orig.i.i.us.lver.orig, %35, !fpmath !16
  %sub42.lver.orig.lver.orig.i.i.us.lver.orig = fsub float %33, %div41.lver.orig.lver.orig.i.i.us.lver.orig
  store float %sub42.lver.orig.lver.orig.i.i.us.lver.orig, float* %arrayidx26.lver.orig.lver.orig.i.i.us.lver.orig, align 4, !tbaa !12, !llvm.access.group !17
  %indvars.iv.next.lver.orig.lver.orig.i.i.us.lver.orig = add nuw nsw i64 %indvars.iv.next.lver.orig.lver.orig.i.i12.us.lver.orig, 1
  %exitcond.not.lver.orig.lver.orig.i.i.us.lver.orig = icmp eq i64 %indvars.iv.next.lver.orig.lver.orig.i.i.us.lver.orig, %wide.trip.count.i.i
  br i1 %exitcond.not.lver.orig.lver.orig.i.i.us.lver.orig, label %if.end.i.i.us.loopexit, label %for.body.lver.orig.lver.orig.i.i.us.lver.orig, !llvm.loop !19

for.body.lver.orig.lver.orig.i.i.us.ph:           ; preds = %for.body.lver.orig.lver.orig.i.i.us.lver.check
  %load_initial = load float, float* %scevgep27, align 4
  %load_initial29 = load float, float* %scevgep28, align 4
  br label %for.body.lver.orig.lver.orig.i.i.us

for.body.ph.i.i.us:                               ; preds = %for.body.lver.check.i.i.us
  %load_initial.i.i1.us13 = load float, float* %scevgep.i.i.us, align 4
  %load_initial102.i.i2.us14 = load float, float* %scevgep96.i.i.us, align 4
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %for.body.ph.i.i.us
  %indvars.iv.next.i.i10.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 1, %for.body.ph.i.i.us ]
  %sub18.i.i8.us = phi float [ %sub18.i.i.us, %for.body.i.i.us ], [ %load_initial.i.i1.us13, %for.body.ph.i.i.us ]
  %sub42.i.i6.us = phi float [ %sub42.i.i.us, %for.body.i.i.us ], [ %load_initial102.i.i2.us14, %for.body.ph.i.i.us ]
  %36 = add nsw i64 %indvars.iv.next.i.i10.us, %25
  %arrayidx.i.i.us = getelementptr inbounds float, float* %13, i64 %36
  %37 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %arrayidx11.i.i.us = getelementptr inbounds float, float* %7, i64 %36
  %38 = load float, float* %arrayidx11.i.i.us, align 4, !tbaa !12
  %mul12.i.i.us = fmul float %sub18.i.i8.us, %38
  %div.i.i.us = fdiv float %mul12.i.i.us, %sub42.i.i6.us, !fpmath !16
  %sub18.i.i.us = fsub float %37, %div.i.i.us
  store float %sub18.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !17
  %arrayidx26.i.i.us = getelementptr inbounds float, float* %10, i64 %36
  %39 = load float, float* %arrayidx26.i.i.us, align 4, !tbaa !12
  %40 = load float, float* %arrayidx11.i.i.us, align 4, !tbaa !12
  %mul35.i.i.us = fmul float %40, %40
  %div41.i.i.us = fdiv float %mul35.i.i.us, %sub42.i.i6.us, !fpmath !16
  %sub42.i.i.us = fsub float %39, %div41.i.i.us
  store float %sub42.i.i.us, float* %arrayidx26.i.i.us, align 4, !tbaa !12, !llvm.access.group !17
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i10.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %if.end.i.i.us.loopexit36, label %for.body.i.i.us, !llvm.loop !19

for.body.lver.orig.lver.orig.i.i.us:              ; preds = %for.body.lver.orig.lver.orig.i.i.us, %for.body.lver.orig.lver.orig.i.i.us.ph
  %store_forwarded32 = phi float [ %load_initial29, %for.body.lver.orig.lver.orig.i.i.us.ph ], [ %sub42.lver.orig.lver.orig.i.i.us, %for.body.lver.orig.lver.orig.i.i.us ]
  %store_forwarded = phi float [ %load_initial, %for.body.lver.orig.lver.orig.i.i.us.ph ], [ %sub18.lver.orig.lver.orig.i.i.us, %for.body.lver.orig.lver.orig.i.i.us ]
  %indvars.iv.next.lver.orig.lver.orig.i.i12.us = phi i64 [ 1, %for.body.lver.orig.lver.orig.i.i.us.ph ], [ %indvars.iv.next.lver.orig.lver.orig.i.i.us, %for.body.lver.orig.lver.orig.i.i.us ]
  %41 = add nsw i64 %indvars.iv.next.lver.orig.lver.orig.i.i12.us, %25
  %arrayidx.lver.orig.lver.orig.i.i.us = getelementptr inbounds float, float* %13, i64 %41
  %42 = load float, float* %arrayidx.lver.orig.lver.orig.i.i.us, align 4, !tbaa !12
  %arrayidx11.lver.orig.lver.orig.i.i.us = getelementptr inbounds float, float* %7, i64 %41
  %43 = load float, float* %arrayidx11.lver.orig.lver.orig.i.i.us, align 4, !tbaa !12
  %mul12.lver.orig.lver.orig.i.i.us = fmul float %store_forwarded, %43
  %div.lver.orig.lver.orig.i.i.us = fdiv float %mul12.lver.orig.lver.orig.i.i.us, %store_forwarded32, !fpmath !16
  %sub18.lver.orig.lver.orig.i.i.us = fsub float %42, %div.lver.orig.lver.orig.i.i.us
  store float %sub18.lver.orig.lver.orig.i.i.us, float* %arrayidx.lver.orig.lver.orig.i.i.us, align 4, !tbaa !12, !llvm.access.group !17
  %arrayidx26.lver.orig.lver.orig.i.i.us = getelementptr inbounds float, float* %10, i64 %41
  %44 = load float, float* %arrayidx26.lver.orig.lver.orig.i.i.us, align 4, !tbaa !12
  %45 = load float, float* %arrayidx11.lver.orig.lver.orig.i.i.us, align 4, !tbaa !12
  %mul35.lver.orig.lver.orig.i.i.us = fmul float %45, %45
  %div41.lver.orig.lver.orig.i.i.us = fdiv float %mul35.lver.orig.lver.orig.i.i.us, %store_forwarded32, !fpmath !16
  %sub42.lver.orig.lver.orig.i.i.us = fsub float %44, %div41.lver.orig.lver.orig.i.i.us
  store float %sub42.lver.orig.lver.orig.i.i.us, float* %arrayidx26.lver.orig.lver.orig.i.i.us, align 4, !tbaa !12, !llvm.access.group !17
  %indvars.iv.next.lver.orig.lver.orig.i.i.us = add nuw nsw i64 %indvars.iv.next.lver.orig.lver.orig.i.i12.us, 1
  %exitcond.not.lver.orig.lver.orig.i.i.us = icmp eq i64 %indvars.iv.next.lver.orig.lver.orig.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.lver.orig.lver.orig.i.i.us, label %if.end.i.i.us.loopexit35, label %for.body.lver.orig.lver.orig.i.i.us, !llvm.loop !19

if.end.i.i.us.loopexit:                           ; preds = %for.body.lver.orig.lver.orig.i.i.us.lver.orig
  br label %if.end.i.i.us

if.end.i.i.us.loopexit35:                         ; preds = %for.body.lver.orig.lver.orig.i.i.us
  br label %if.end.i.i.us

if.end.i.i.us.loopexit36:                         ; preds = %for.body.i.i.us
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.end.i.i.us.loopexit36, %if.end.i.i.us.loopexit35, %if.end.i.i.us.loopexit, %pregion_for_entry.entry.i.i.us
  %46 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %46, 256
  br i1 %exitcond.not, label %_pocl_kernel_adi_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !21

_pocl_kernel_adi_kernel1.exit.loopexit:           ; preds = %if.end.i.i.us
  br label %_pocl_kernel_adi_kernel1.exit

_pocl_kernel_adi_kernel1.exit:                    ; preds = %_pocl_kernel_adi_kernel1.exit.loopexit, %5
  ret void
}

attributes #0 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

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
!10 = !{!"A", !"B", !"X", !"n"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{float 2.500000e+00}
!17 = !{!18}
!18 = distinct !{}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.parallel_accesses", !18}
