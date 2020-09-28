; ModuleID = './EC/AOFIJPJJDGBDGAAGPPJIBOAFNDFEMPBMCHKBI/doitgen_kernel1/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_doitgen_kernel1(i32 %0, i32 %1, i32 %2, float* nocapture readonly %3, float* nocapture readonly %4, float* nocapture %5, i32 %6, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %7, i64 %8, i64 %9, i64 %10) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %8, 5
  %mul3.i.i = shl i64 %9, 3
  %mul6.i = mul i32 %6, %1
  %cmp970.i = icmp sgt i32 %2, 0
  %12 = zext i32 %2 to i64
  br i1 %cmp970.i, label %pregion_for_entry.pregion_for_init.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.preheader

pregion_for_entry.pregion_for_init.i.preheader:   ; preds = %11
  %conv.i.us = trunc i64 %mul.i.i to i32
  %cmp.i.us = icmp slt i32 %conv.i.us, %2
  %13 = trunc i64 %mul.i.i to i32
  %conv.i.us.1 = or i32 %13, 1
  %cmp.i.us.1 = icmp slt i32 %conv.i.us.1, %2
  %14 = trunc i64 %mul.i.i to i32
  %conv.i.us.2 = or i32 %14, 2
  %cmp.i.us.2 = icmp slt i32 %conv.i.us.2, %2
  %15 = trunc i64 %mul.i.i to i32
  %conv.i.us.3 = or i32 %15, 3
  %cmp.i.us.3 = icmp slt i32 %conv.i.us.3, %2
  %16 = trunc i64 %mul.i.i to i32
  %conv.i.us.4 = or i32 %16, 4
  %cmp.i.us.4 = icmp slt i32 %conv.i.us.4, %2
  %17 = trunc i64 %mul.i.i to i32
  %conv.i.us.5 = or i32 %17, 5
  %cmp.i.us.5 = icmp slt i32 %conv.i.us.5, %2
  %18 = trunc i64 %mul.i.i to i32
  %conv.i.us.6 = or i32 %18, 6
  %cmp.i.us.6 = icmp slt i32 %conv.i.us.6, %2
  %19 = trunc i64 %mul.i.i to i32
  %conv.i.us.7 = or i32 %19, 7
  %cmp.i.us.7 = icmp slt i32 %conv.i.us.7, %2
  %20 = trunc i64 %mul.i.i to i32
  %conv.i.us.8 = or i32 %20, 8
  %cmp.i.us.8 = icmp slt i32 %conv.i.us.8, %2
  %21 = trunc i64 %mul.i.i to i32
  %conv.i.us.9 = or i32 %21, 9
  %cmp.i.us.9 = icmp slt i32 %conv.i.us.9, %2
  %22 = trunc i64 %mul.i.i to i32
  %conv.i.us.10 = or i32 %22, 10
  %cmp.i.us.10 = icmp slt i32 %conv.i.us.10, %2
  %23 = trunc i64 %mul.i.i to i32
  %conv.i.us.11 = or i32 %23, 11
  %cmp.i.us.11 = icmp slt i32 %conv.i.us.11, %2
  %24 = trunc i64 %mul.i.i to i32
  %conv.i.us.12 = or i32 %24, 12
  %cmp.i.us.12 = icmp slt i32 %conv.i.us.12, %2
  %25 = trunc i64 %mul.i.i to i32
  %conv.i.us.13 = or i32 %25, 13
  %cmp.i.us.13 = icmp slt i32 %conv.i.us.13, %2
  %26 = trunc i64 %mul.i.i to i32
  %conv.i.us.14 = or i32 %26, 14
  %cmp.i.us.14 = icmp slt i32 %conv.i.us.14, %2
  %27 = trunc i64 %mul.i.i to i32
  %conv.i.us.15 = or i32 %27, 15
  %cmp.i.us.15 = icmp slt i32 %conv.i.us.15, %2
  %28 = trunc i64 %mul.i.i to i32
  %conv.i.us.16 = or i32 %28, 16
  %cmp.i.us.16 = icmp slt i32 %conv.i.us.16, %2
  %29 = trunc i64 %mul.i.i to i32
  %conv.i.us.17 = or i32 %29, 17
  %cmp.i.us.17 = icmp slt i32 %conv.i.us.17, %2
  %30 = trunc i64 %mul.i.i to i32
  %conv.i.us.18 = or i32 %30, 18
  %cmp.i.us.18 = icmp slt i32 %conv.i.us.18, %2
  %31 = trunc i64 %mul.i.i to i32
  %conv.i.us.19 = or i32 %31, 19
  %cmp.i.us.19 = icmp slt i32 %conv.i.us.19, %2
  %32 = trunc i64 %mul.i.i to i32
  %conv.i.us.20 = or i32 %32, 20
  %cmp.i.us.20 = icmp slt i32 %conv.i.us.20, %2
  %33 = trunc i64 %mul.i.i to i32
  %conv.i.us.21 = or i32 %33, 21
  %cmp.i.us.21 = icmp slt i32 %conv.i.us.21, %2
  %34 = trunc i64 %mul.i.i to i32
  %conv.i.us.22 = or i32 %34, 22
  %cmp.i.us.22 = icmp slt i32 %conv.i.us.22, %2
  %35 = trunc i64 %mul.i.i to i32
  %conv.i.us.23 = or i32 %35, 23
  %cmp.i.us.23 = icmp slt i32 %conv.i.us.23, %2
  %36 = trunc i64 %mul.i.i to i32
  %conv.i.us.24 = or i32 %36, 24
  %cmp.i.us.24 = icmp slt i32 %conv.i.us.24, %2
  %37 = trunc i64 %mul.i.i to i32
  %conv.i.us.25 = or i32 %37, 25
  %cmp.i.us.25 = icmp slt i32 %conv.i.us.25, %2
  %38 = trunc i64 %mul.i.i to i32
  %conv.i.us.26 = or i32 %38, 26
  %cmp.i.us.26 = icmp slt i32 %conv.i.us.26, %2
  %39 = trunc i64 %mul.i.i to i32
  %conv.i.us.27 = or i32 %39, 27
  %cmp.i.us.27 = icmp slt i32 %conv.i.us.27, %2
  %40 = trunc i64 %mul.i.i to i32
  %conv.i.us.28 = or i32 %40, 28
  %cmp.i.us.28 = icmp slt i32 %conv.i.us.28, %2
  %41 = trunc i64 %mul.i.i to i32
  %conv.i.us.29 = or i32 %41, 29
  %cmp.i.us.29 = icmp slt i32 %conv.i.us.29, %2
  %42 = trunc i64 %mul.i.i to i32
  %conv.i.us.30 = or i32 %42, 30
  %cmp.i.us.30 = icmp slt i32 %conv.i.us.30, %2
  %43 = trunc i64 %mul.i.i to i32
  %conv.i.us.31 = or i32 %43, 31
  %cmp.i.us.31 = icmp slt i32 %conv.i.us.31, %2
  br label %pregion_for_entry.pregion_for_init.i

pregion_for_entry.pregion_for_init.i.us.preheader: ; preds = %11
  %conv2.i.us = trunc i64 %mul3.i.i to i32
  %cmp4.i.us = icmp slt i32 %conv2.i.us, %1
  %reass.add.i.us = add i32 %mul6.i, %conv2.i.us
  %reass.mul.i.us = mul i32 %reass.add.i.us, %2
  %44 = sext i32 %reass.mul.i.us to i64
  br i1 %cmp4.i.us, label %pregion_for_entry.entry.i.us.us.preheader, label %pregion_for_end.i.us

pregion_for_entry.entry.i.us.us.preheader:        ; preds = %pregion_for_entry.pregion_for_init.i.us.preheader
  br label %pregion_for_entry.entry.i.us.us

pregion_for_end.i.us.loopexit:                    ; preds = %if.end.i.us.us.153
  br label %pregion_for_end.i.us

pregion_for_end.i.us:                             ; preds = %pregion_for_end.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.us.preheader
  %45 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.1 = or i32 %45, 1
  %cmp4.i.us.1 = icmp slt i32 %conv2.i.us.1, %1
  %reass.add.i.us.1 = add i32 %mul6.i, %conv2.i.us.1
  %reass.mul.i.us.1 = mul i32 %reass.add.i.us.1, %2
  %46 = sext i32 %reass.mul.i.us.1 to i64
  br i1 %cmp4.i.us.1, label %pregion_for_entry.entry.i.us.us.1.preheader, label %pregion_for_end.i.us.1

pregion_for_entry.entry.i.us.us.1.preheader:      ; preds = %pregion_for_end.i.us
  br label %pregion_for_entry.entry.i.us.us.1

pregion_for_entry.entry.i.us.us:                  ; preds = %if.end.i.us.us.153, %pregion_for_entry.entry.i.us.us.preheader
  %_local_id_x.0.us.us = phi i64 [ %203, %if.end.i.us.us.153 ], [ 0, %pregion_for_entry.entry.i.us.us.preheader ]
  %add1.i.i.us.us = add nuw nsw i64 %_local_id_x.0.us.us, %mul.i.i
  %conv.i.us.us = trunc i64 %add1.i.i.us.us to i32
  %cmp.i.us.us = icmp slt i32 %conv.i.us.us, %2
  br i1 %cmp.i.us.us, label %if.then.i.us.us, label %if.end.i.us.us

if.then.i.us.us:                                  ; preds = %pregion_for_entry.entry.i.us.us
  %add8.i.us.us = add nsw i32 %reass.mul.i.us, %conv.i.us.us
  %idxprom.i.us.us = sext i32 %add8.i.us.us to i64
  %arrayidx.i.us.us = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us = shl i64 %add1.i.i.us.us, 32
  %47 = ashr exact i64 %sext.i.us.us, 32
  br label %for.body.i.us.us

if.end.i.us.us.loopexit:                          ; preds = %for.body.i.us.us
  br label %if.end.i.us.us

if.end.i.us.us:                                   ; preds = %if.end.i.us.us.loopexit, %pregion_for_entry.entry.i.us.us
  %48 = or i64 %_local_id_x.0.us.us, 1
  %add1.i.i.us.us.138 = add nuw nsw i64 %48, %mul.i.i
  %conv.i.us.us.139 = trunc i64 %add1.i.i.us.us.138 to i32
  %cmp.i.us.us.140 = icmp slt i32 %conv.i.us.us.139, %2
  br i1 %cmp.i.us.us.140, label %if.then.i.us.us.146, label %if.end.i.us.us.153

for.body.i.us.us:                                 ; preds = %for.body.i.us.us, %if.then.i.us.us
  %indvars.iv.next.i3.us.us = phi i64 [ %indvars.iv.next.i.us.us, %for.body.i.us.us ], [ 0, %if.then.i.us.us ]
  %49 = phi float [ %55, %for.body.i.us.us ], [ 0.000000e+00, %if.then.i.us.us ]
  %50 = add nsw i64 %indvars.iv.next.i3.us.us, %44
  %arrayidx24.i.us.us = getelementptr inbounds float, float* %3, i64 %50
  %51 = load float, float* %arrayidx24.i.us.us, align 4, !tbaa !12
  %52 = mul nuw nsw i64 %indvars.iv.next.i3.us.us, %12
  %53 = add nsw i64 %52, %47
  %arrayidx28.i.us.us = getelementptr inbounds float, float* %4, i64 %53
  %54 = load float, float* %arrayidx28.i.us.us, align 4, !tbaa !12
  %55 = tail call float @llvm.fmuladd.f32(float %51, float %54, float %49) #2
  store float %55, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.next.i3.us.us, 1
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %12
  br i1 %exitcond.not.i.us.us, label %if.end.i.us.us.loopexit, label %for.body.i.us.us, !llvm.loop !19

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_end.i, %pregion_for_entry.pregion_for_init.i.preheader
  %_local_id_y.0 = phi i64 [ %56, %pregion_for_end.i ], [ 0, %pregion_for_entry.pregion_for_init.i.preheader ]
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %cmp4.i = icmp slt i32 %conv2.i, %1
  %reass.add.i = add i32 %mul6.i, %conv2.i
  %reass.mul.i = mul i32 %reass.add.i, %2
  br i1 %cmp4.i, label %pregion_for_entry.entry.i.us.preheader, label %pregion_for_end.i

pregion_for_entry.entry.i.us.preheader:           ; preds = %pregion_for_entry.pregion_for_init.i
  br i1 %cmp.i.us, label %if.then.i.us, label %if.end.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us.preheader
  %add8.i.us = add nsw i32 %reass.mul.i, %conv.i.us
  %idxprom.i.us = sext i32 %add8.i.us to i64
  %arrayidx.i.us = getelementptr inbounds float, float* %5, i64 %idxprom.i.us
  store float 0.000000e+00, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us

if.end.i.us:                                      ; preds = %if.then.i.us, %pregion_for_entry.entry.i.us.preheader
  br i1 %cmp.i.us.1, label %if.then.i.us.1, label %if.end.i.us.1

pregion_for_end.i:                                ; preds = %if.then.i.us.31, %if.end.i.us.30, %pregion_for_entry.pregion_for_init.i
  %56 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond33.not = icmp eq i64 %56, 8
  br i1 %exitcond33.not, label %doitgen_kernel1.exit.loopexit54, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !21

doitgen_kernel1.exit.loopexit:                    ; preds = %if.end.i.us.us.7.1
  br label %doitgen_kernel1.exit

doitgen_kernel1.exit.loopexit54:                  ; preds = %pregion_for_end.i
  br label %doitgen_kernel1.exit

doitgen_kernel1.exit:                             ; preds = %pregion_for_end.i.us.6, %doitgen_kernel1.exit.loopexit54, %doitgen_kernel1.exit.loopexit
  ret void

pregion_for_entry.entry.i.us.us.1:                ; preds = %if.end.i.us.us.1.1, %pregion_for_entry.entry.i.us.us.1.preheader
  %_local_id_x.0.us.us.1 = phi i64 [ %194, %if.end.i.us.us.1.1 ], [ 0, %pregion_for_entry.entry.i.us.us.1.preheader ]
  %add1.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.0.us.us.1, %mul.i.i
  %conv.i.us.us.1 = trunc i64 %add1.i.i.us.us.1 to i32
  %cmp.i.us.us.1 = icmp slt i32 %conv.i.us.us.1, %2
  br i1 %cmp.i.us.us.1, label %if.then.i.us.us.1, label %if.end.i.us.us.1

if.then.i.us.us.1:                                ; preds = %pregion_for_entry.entry.i.us.us.1
  %add8.i.us.us.1 = add nsw i32 %reass.mul.i.us.1, %conv.i.us.us.1
  %idxprom.i.us.us.1 = sext i32 %add8.i.us.us.1 to i64
  %arrayidx.i.us.us.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1 = shl i64 %add1.i.i.us.us.1, 32
  %57 = ashr exact i64 %sext.i.us.us.1, 32
  br label %for.body.i.us.us.1

for.body.i.us.us.1:                               ; preds = %for.body.i.us.us.1, %if.then.i.us.us.1
  %indvars.iv.next.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1, %for.body.i.us.us.1 ], [ 0, %if.then.i.us.us.1 ]
  %58 = phi float [ %64, %for.body.i.us.us.1 ], [ 0.000000e+00, %if.then.i.us.us.1 ]
  %59 = add nsw i64 %indvars.iv.next.i3.us.us.1, %46
  %arrayidx24.i.us.us.1 = getelementptr inbounds float, float* %3, i64 %59
  %60 = load float, float* %arrayidx24.i.us.us.1, align 4, !tbaa !12
  %61 = mul nuw nsw i64 %indvars.iv.next.i3.us.us.1, %12
  %62 = add nsw i64 %61, %57
  %arrayidx28.i.us.us.1 = getelementptr inbounds float, float* %4, i64 %62
  %63 = load float, float* %arrayidx28.i.us.us.1, align 4, !tbaa !12
  %64 = tail call float @llvm.fmuladd.f32(float %60, float %63, float %58) #2
  store float %64, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.1, 1
  %exitcond.not.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.1, %12
  br i1 %exitcond.not.i.us.us.1, label %if.end.i.us.us.1.loopexit, label %for.body.i.us.us.1, !llvm.loop !19

if.end.i.us.us.1.loopexit:                        ; preds = %for.body.i.us.us.1
  br label %if.end.i.us.us.1

if.end.i.us.us.1:                                 ; preds = %if.end.i.us.us.1.loopexit, %pregion_for_entry.entry.i.us.us.1
  %65 = or i64 %_local_id_x.0.us.us.1, 1
  %add1.i.i.us.us.1.1 = add nuw nsw i64 %65, %mul.i.i
  %conv.i.us.us.1.1 = trunc i64 %add1.i.i.us.us.1.1 to i32
  %cmp.i.us.us.1.1 = icmp slt i32 %conv.i.us.us.1.1, %2
  br i1 %cmp.i.us.us.1.1, label %if.then.i.us.us.1.1, label %if.end.i.us.us.1.1

pregion_for_end.i.us.1.loopexit:                  ; preds = %if.end.i.us.us.1.1
  br label %pregion_for_end.i.us.1

pregion_for_end.i.us.1:                           ; preds = %pregion_for_end.i.us.1.loopexit, %pregion_for_end.i.us
  %66 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.2 = or i32 %66, 2
  %cmp4.i.us.2 = icmp slt i32 %conv2.i.us.2, %1
  %reass.add.i.us.2 = add i32 %mul6.i, %conv2.i.us.2
  %reass.mul.i.us.2 = mul i32 %reass.add.i.us.2, %2
  %67 = sext i32 %reass.mul.i.us.2 to i64
  br i1 %cmp4.i.us.2, label %pregion_for_entry.entry.i.us.us.2.preheader, label %pregion_for_end.i.us.2

pregion_for_entry.entry.i.us.us.2.preheader:      ; preds = %pregion_for_end.i.us.1
  br label %pregion_for_entry.entry.i.us.us.2

pregion_for_entry.entry.i.us.us.2:                ; preds = %if.end.i.us.us.2.1, %pregion_for_entry.entry.i.us.us.2.preheader
  %_local_id_x.0.us.us.2 = phi i64 [ %185, %if.end.i.us.us.2.1 ], [ 0, %pregion_for_entry.entry.i.us.us.2.preheader ]
  %add1.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.0.us.us.2, %mul.i.i
  %conv.i.us.us.2 = trunc i64 %add1.i.i.us.us.2 to i32
  %cmp.i.us.us.2 = icmp slt i32 %conv.i.us.us.2, %2
  br i1 %cmp.i.us.us.2, label %if.then.i.us.us.2, label %if.end.i.us.us.2

if.then.i.us.us.2:                                ; preds = %pregion_for_entry.entry.i.us.us.2
  %add8.i.us.us.2 = add nsw i32 %reass.mul.i.us.2, %conv.i.us.us.2
  %idxprom.i.us.us.2 = sext i32 %add8.i.us.us.2 to i64
  %arrayidx.i.us.us.2 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2 = shl i64 %add1.i.i.us.us.2, 32
  %68 = ashr exact i64 %sext.i.us.us.2, 32
  br label %for.body.i.us.us.2

for.body.i.us.us.2:                               ; preds = %for.body.i.us.us.2, %if.then.i.us.us.2
  %indvars.iv.next.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.us.us.2, %for.body.i.us.us.2 ], [ 0, %if.then.i.us.us.2 ]
  %69 = phi float [ %75, %for.body.i.us.us.2 ], [ 0.000000e+00, %if.then.i.us.us.2 ]
  %70 = add nsw i64 %indvars.iv.next.i3.us.us.2, %67
  %arrayidx24.i.us.us.2 = getelementptr inbounds float, float* %3, i64 %70
  %71 = load float, float* %arrayidx24.i.us.us.2, align 4, !tbaa !12
  %72 = mul nuw nsw i64 %indvars.iv.next.i3.us.us.2, %12
  %73 = add nsw i64 %72, %68
  %arrayidx28.i.us.us.2 = getelementptr inbounds float, float* %4, i64 %73
  %74 = load float, float* %arrayidx28.i.us.us.2, align 4, !tbaa !12
  %75 = tail call float @llvm.fmuladd.f32(float %71, float %74, float %69) #2
  store float %75, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i3.us.us.2, 1
  %exitcond.not.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.us.us.2, %12
  br i1 %exitcond.not.i.us.us.2, label %if.end.i.us.us.2.loopexit, label %for.body.i.us.us.2, !llvm.loop !19

if.end.i.us.us.2.loopexit:                        ; preds = %for.body.i.us.us.2
  br label %if.end.i.us.us.2

if.end.i.us.us.2:                                 ; preds = %if.end.i.us.us.2.loopexit, %pregion_for_entry.entry.i.us.us.2
  %76 = or i64 %_local_id_x.0.us.us.2, 1
  %add1.i.i.us.us.2.1 = add nuw nsw i64 %76, %mul.i.i
  %conv.i.us.us.2.1 = trunc i64 %add1.i.i.us.us.2.1 to i32
  %cmp.i.us.us.2.1 = icmp slt i32 %conv.i.us.us.2.1, %2
  br i1 %cmp.i.us.us.2.1, label %if.then.i.us.us.2.1, label %if.end.i.us.us.2.1

pregion_for_end.i.us.2.loopexit:                  ; preds = %if.end.i.us.us.2.1
  br label %pregion_for_end.i.us.2

pregion_for_end.i.us.2:                           ; preds = %pregion_for_end.i.us.2.loopexit, %pregion_for_end.i.us.1
  %77 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.3 = or i32 %77, 3
  %cmp4.i.us.3 = icmp slt i32 %conv2.i.us.3, %1
  %reass.add.i.us.3 = add i32 %mul6.i, %conv2.i.us.3
  %reass.mul.i.us.3 = mul i32 %reass.add.i.us.3, %2
  %78 = sext i32 %reass.mul.i.us.3 to i64
  br i1 %cmp4.i.us.3, label %pregion_for_entry.entry.i.us.us.3.preheader, label %pregion_for_end.i.us.3

pregion_for_entry.entry.i.us.us.3.preheader:      ; preds = %pregion_for_end.i.us.2
  br label %pregion_for_entry.entry.i.us.us.3

pregion_for_entry.entry.i.us.us.3:                ; preds = %if.end.i.us.us.3.1, %pregion_for_entry.entry.i.us.us.3.preheader
  %_local_id_x.0.us.us.3 = phi i64 [ %176, %if.end.i.us.us.3.1 ], [ 0, %pregion_for_entry.entry.i.us.us.3.preheader ]
  %add1.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.0.us.us.3, %mul.i.i
  %conv.i.us.us.3 = trunc i64 %add1.i.i.us.us.3 to i32
  %cmp.i.us.us.3 = icmp slt i32 %conv.i.us.us.3, %2
  br i1 %cmp.i.us.us.3, label %if.then.i.us.us.3, label %if.end.i.us.us.3

if.then.i.us.us.3:                                ; preds = %pregion_for_entry.entry.i.us.us.3
  %add8.i.us.us.3 = add nsw i32 %reass.mul.i.us.3, %conv.i.us.us.3
  %idxprom.i.us.us.3 = sext i32 %add8.i.us.us.3 to i64
  %arrayidx.i.us.us.3 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3 = shl i64 %add1.i.i.us.us.3, 32
  %79 = ashr exact i64 %sext.i.us.us.3, 32
  br label %for.body.i.us.us.3

for.body.i.us.us.3:                               ; preds = %for.body.i.us.us.3, %if.then.i.us.us.3
  %indvars.iv.next.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.us.us.3, %for.body.i.us.us.3 ], [ 0, %if.then.i.us.us.3 ]
  %80 = phi float [ %86, %for.body.i.us.us.3 ], [ 0.000000e+00, %if.then.i.us.us.3 ]
  %81 = add nsw i64 %indvars.iv.next.i3.us.us.3, %78
  %arrayidx24.i.us.us.3 = getelementptr inbounds float, float* %3, i64 %81
  %82 = load float, float* %arrayidx24.i.us.us.3, align 4, !tbaa !12
  %83 = mul nuw nsw i64 %indvars.iv.next.i3.us.us.3, %12
  %84 = add nsw i64 %83, %79
  %arrayidx28.i.us.us.3 = getelementptr inbounds float, float* %4, i64 %84
  %85 = load float, float* %arrayidx28.i.us.us.3, align 4, !tbaa !12
  %86 = tail call float @llvm.fmuladd.f32(float %82, float %85, float %80) #2
  store float %86, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i3.us.us.3, 1
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.3, %12
  br i1 %exitcond.not.i.us.us.3, label %if.end.i.us.us.3.loopexit, label %for.body.i.us.us.3, !llvm.loop !19

if.end.i.us.us.3.loopexit:                        ; preds = %for.body.i.us.us.3
  br label %if.end.i.us.us.3

if.end.i.us.us.3:                                 ; preds = %if.end.i.us.us.3.loopexit, %pregion_for_entry.entry.i.us.us.3
  %87 = or i64 %_local_id_x.0.us.us.3, 1
  %add1.i.i.us.us.3.1 = add nuw nsw i64 %87, %mul.i.i
  %conv.i.us.us.3.1 = trunc i64 %add1.i.i.us.us.3.1 to i32
  %cmp.i.us.us.3.1 = icmp slt i32 %conv.i.us.us.3.1, %2
  br i1 %cmp.i.us.us.3.1, label %if.then.i.us.us.3.1, label %if.end.i.us.us.3.1

pregion_for_end.i.us.3.loopexit:                  ; preds = %if.end.i.us.us.3.1
  br label %pregion_for_end.i.us.3

pregion_for_end.i.us.3:                           ; preds = %pregion_for_end.i.us.3.loopexit, %pregion_for_end.i.us.2
  %88 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.4 = or i32 %88, 4
  %cmp4.i.us.4 = icmp slt i32 %conv2.i.us.4, %1
  %reass.add.i.us.4 = add i32 %mul6.i, %conv2.i.us.4
  %reass.mul.i.us.4 = mul i32 %reass.add.i.us.4, %2
  %89 = sext i32 %reass.mul.i.us.4 to i64
  br i1 %cmp4.i.us.4, label %pregion_for_entry.entry.i.us.us.4.preheader, label %pregion_for_end.i.us.4

pregion_for_entry.entry.i.us.us.4.preheader:      ; preds = %pregion_for_end.i.us.3
  br label %pregion_for_entry.entry.i.us.us.4

pregion_for_entry.entry.i.us.us.4:                ; preds = %if.end.i.us.us.4.1, %pregion_for_entry.entry.i.us.us.4.preheader
  %_local_id_x.0.us.us.4 = phi i64 [ %167, %if.end.i.us.us.4.1 ], [ 0, %pregion_for_entry.entry.i.us.us.4.preheader ]
  %add1.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.0.us.us.4, %mul.i.i
  %conv.i.us.us.4 = trunc i64 %add1.i.i.us.us.4 to i32
  %cmp.i.us.us.4 = icmp slt i32 %conv.i.us.us.4, %2
  br i1 %cmp.i.us.us.4, label %if.then.i.us.us.4, label %if.end.i.us.us.4

if.then.i.us.us.4:                                ; preds = %pregion_for_entry.entry.i.us.us.4
  %add8.i.us.us.4 = add nsw i32 %reass.mul.i.us.4, %conv.i.us.us.4
  %idxprom.i.us.us.4 = sext i32 %add8.i.us.us.4 to i64
  %arrayidx.i.us.us.4 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4 = shl i64 %add1.i.i.us.us.4, 32
  %90 = ashr exact i64 %sext.i.us.us.4, 32
  br label %for.body.i.us.us.4

for.body.i.us.us.4:                               ; preds = %for.body.i.us.us.4, %if.then.i.us.us.4
  %indvars.iv.next.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.us.us.4, %for.body.i.us.us.4 ], [ 0, %if.then.i.us.us.4 ]
  %91 = phi float [ %97, %for.body.i.us.us.4 ], [ 0.000000e+00, %if.then.i.us.us.4 ]
  %92 = add nsw i64 %indvars.iv.next.i3.us.us.4, %89
  %arrayidx24.i.us.us.4 = getelementptr inbounds float, float* %3, i64 %92
  %93 = load float, float* %arrayidx24.i.us.us.4, align 4, !tbaa !12
  %94 = mul nuw nsw i64 %indvars.iv.next.i3.us.us.4, %12
  %95 = add nsw i64 %94, %90
  %arrayidx28.i.us.us.4 = getelementptr inbounds float, float* %4, i64 %95
  %96 = load float, float* %arrayidx28.i.us.us.4, align 4, !tbaa !12
  %97 = tail call float @llvm.fmuladd.f32(float %93, float %96, float %91) #2
  store float %97, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i3.us.us.4, 1
  %exitcond.not.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.us.us.4, %12
  br i1 %exitcond.not.i.us.us.4, label %if.end.i.us.us.4.loopexit, label %for.body.i.us.us.4, !llvm.loop !19

if.end.i.us.us.4.loopexit:                        ; preds = %for.body.i.us.us.4
  br label %if.end.i.us.us.4

if.end.i.us.us.4:                                 ; preds = %if.end.i.us.us.4.loopexit, %pregion_for_entry.entry.i.us.us.4
  %98 = or i64 %_local_id_x.0.us.us.4, 1
  %add1.i.i.us.us.4.1 = add nuw nsw i64 %98, %mul.i.i
  %conv.i.us.us.4.1 = trunc i64 %add1.i.i.us.us.4.1 to i32
  %cmp.i.us.us.4.1 = icmp slt i32 %conv.i.us.us.4.1, %2
  br i1 %cmp.i.us.us.4.1, label %if.then.i.us.us.4.1, label %if.end.i.us.us.4.1

pregion_for_end.i.us.4.loopexit:                  ; preds = %if.end.i.us.us.4.1
  br label %pregion_for_end.i.us.4

pregion_for_end.i.us.4:                           ; preds = %pregion_for_end.i.us.4.loopexit, %pregion_for_end.i.us.3
  %99 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.5 = or i32 %99, 5
  %cmp4.i.us.5 = icmp slt i32 %conv2.i.us.5, %1
  %reass.add.i.us.5 = add i32 %mul6.i, %conv2.i.us.5
  %reass.mul.i.us.5 = mul i32 %reass.add.i.us.5, %2
  %100 = sext i32 %reass.mul.i.us.5 to i64
  br i1 %cmp4.i.us.5, label %pregion_for_entry.entry.i.us.us.5.preheader, label %pregion_for_end.i.us.5

pregion_for_entry.entry.i.us.us.5.preheader:      ; preds = %pregion_for_end.i.us.4
  br label %pregion_for_entry.entry.i.us.us.5

pregion_for_entry.entry.i.us.us.5:                ; preds = %if.end.i.us.us.5.1, %pregion_for_entry.entry.i.us.us.5.preheader
  %_local_id_x.0.us.us.5 = phi i64 [ %158, %if.end.i.us.us.5.1 ], [ 0, %pregion_for_entry.entry.i.us.us.5.preheader ]
  %add1.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.0.us.us.5, %mul.i.i
  %conv.i.us.us.5 = trunc i64 %add1.i.i.us.us.5 to i32
  %cmp.i.us.us.5 = icmp slt i32 %conv.i.us.us.5, %2
  br i1 %cmp.i.us.us.5, label %if.then.i.us.us.5, label %if.end.i.us.us.5

if.then.i.us.us.5:                                ; preds = %pregion_for_entry.entry.i.us.us.5
  %add8.i.us.us.5 = add nsw i32 %reass.mul.i.us.5, %conv.i.us.us.5
  %idxprom.i.us.us.5 = sext i32 %add8.i.us.us.5 to i64
  %arrayidx.i.us.us.5 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5 = shl i64 %add1.i.i.us.us.5, 32
  %101 = ashr exact i64 %sext.i.us.us.5, 32
  br label %for.body.i.us.us.5

for.body.i.us.us.5:                               ; preds = %for.body.i.us.us.5, %if.then.i.us.us.5
  %indvars.iv.next.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.us.us.5, %for.body.i.us.us.5 ], [ 0, %if.then.i.us.us.5 ]
  %102 = phi float [ %108, %for.body.i.us.us.5 ], [ 0.000000e+00, %if.then.i.us.us.5 ]
  %103 = add nsw i64 %indvars.iv.next.i3.us.us.5, %100
  %arrayidx24.i.us.us.5 = getelementptr inbounds float, float* %3, i64 %103
  %104 = load float, float* %arrayidx24.i.us.us.5, align 4, !tbaa !12
  %105 = mul nuw nsw i64 %indvars.iv.next.i3.us.us.5, %12
  %106 = add nsw i64 %105, %101
  %arrayidx28.i.us.us.5 = getelementptr inbounds float, float* %4, i64 %106
  %107 = load float, float* %arrayidx28.i.us.us.5, align 4, !tbaa !12
  %108 = tail call float @llvm.fmuladd.f32(float %104, float %107, float %102) #2
  store float %108, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i3.us.us.5, 1
  %exitcond.not.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.us.us.5, %12
  br i1 %exitcond.not.i.us.us.5, label %if.end.i.us.us.5.loopexit, label %for.body.i.us.us.5, !llvm.loop !19

if.end.i.us.us.5.loopexit:                        ; preds = %for.body.i.us.us.5
  br label %if.end.i.us.us.5

if.end.i.us.us.5:                                 ; preds = %if.end.i.us.us.5.loopexit, %pregion_for_entry.entry.i.us.us.5
  %109 = or i64 %_local_id_x.0.us.us.5, 1
  %add1.i.i.us.us.5.1 = add nuw nsw i64 %109, %mul.i.i
  %conv.i.us.us.5.1 = trunc i64 %add1.i.i.us.us.5.1 to i32
  %cmp.i.us.us.5.1 = icmp slt i32 %conv.i.us.us.5.1, %2
  br i1 %cmp.i.us.us.5.1, label %if.then.i.us.us.5.1, label %if.end.i.us.us.5.1

pregion_for_end.i.us.5.loopexit:                  ; preds = %if.end.i.us.us.5.1
  br label %pregion_for_end.i.us.5

pregion_for_end.i.us.5:                           ; preds = %pregion_for_end.i.us.5.loopexit, %pregion_for_end.i.us.4
  %110 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.6 = or i32 %110, 6
  %cmp4.i.us.6 = icmp slt i32 %conv2.i.us.6, %1
  %reass.add.i.us.6 = add i32 %mul6.i, %conv2.i.us.6
  %reass.mul.i.us.6 = mul i32 %reass.add.i.us.6, %2
  %111 = sext i32 %reass.mul.i.us.6 to i64
  br i1 %cmp4.i.us.6, label %pregion_for_entry.entry.i.us.us.6.preheader, label %pregion_for_end.i.us.6

pregion_for_entry.entry.i.us.us.6.preheader:      ; preds = %pregion_for_end.i.us.5
  br label %pregion_for_entry.entry.i.us.us.6

pregion_for_entry.entry.i.us.us.6:                ; preds = %if.end.i.us.us.6.1, %pregion_for_entry.entry.i.us.us.6.preheader
  %_local_id_x.0.us.us.6 = phi i64 [ %149, %if.end.i.us.us.6.1 ], [ 0, %pregion_for_entry.entry.i.us.us.6.preheader ]
  %add1.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.0.us.us.6, %mul.i.i
  %conv.i.us.us.6 = trunc i64 %add1.i.i.us.us.6 to i32
  %cmp.i.us.us.6 = icmp slt i32 %conv.i.us.us.6, %2
  br i1 %cmp.i.us.us.6, label %if.then.i.us.us.6, label %if.end.i.us.us.6

if.then.i.us.us.6:                                ; preds = %pregion_for_entry.entry.i.us.us.6
  %add8.i.us.us.6 = add nsw i32 %reass.mul.i.us.6, %conv.i.us.us.6
  %idxprom.i.us.us.6 = sext i32 %add8.i.us.us.6 to i64
  %arrayidx.i.us.us.6 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6 = shl i64 %add1.i.i.us.us.6, 32
  %112 = ashr exact i64 %sext.i.us.us.6, 32
  br label %for.body.i.us.us.6

for.body.i.us.us.6:                               ; preds = %for.body.i.us.us.6, %if.then.i.us.us.6
  %indvars.iv.next.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.us.us.6, %for.body.i.us.us.6 ], [ 0, %if.then.i.us.us.6 ]
  %113 = phi float [ %119, %for.body.i.us.us.6 ], [ 0.000000e+00, %if.then.i.us.us.6 ]
  %114 = add nsw i64 %indvars.iv.next.i3.us.us.6, %111
  %arrayidx24.i.us.us.6 = getelementptr inbounds float, float* %3, i64 %114
  %115 = load float, float* %arrayidx24.i.us.us.6, align 4, !tbaa !12
  %116 = mul nuw nsw i64 %indvars.iv.next.i3.us.us.6, %12
  %117 = add nsw i64 %116, %112
  %arrayidx28.i.us.us.6 = getelementptr inbounds float, float* %4, i64 %117
  %118 = load float, float* %arrayidx28.i.us.us.6, align 4, !tbaa !12
  %119 = tail call float @llvm.fmuladd.f32(float %115, float %118, float %113) #2
  store float %119, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i3.us.us.6, 1
  %exitcond.not.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.us.us.6, %12
  br i1 %exitcond.not.i.us.us.6, label %if.end.i.us.us.6.loopexit, label %for.body.i.us.us.6, !llvm.loop !19

if.end.i.us.us.6.loopexit:                        ; preds = %for.body.i.us.us.6
  br label %if.end.i.us.us.6

if.end.i.us.us.6:                                 ; preds = %if.end.i.us.us.6.loopexit, %pregion_for_entry.entry.i.us.us.6
  %120 = or i64 %_local_id_x.0.us.us.6, 1
  %add1.i.i.us.us.6.1 = add nuw nsw i64 %120, %mul.i.i
  %conv.i.us.us.6.1 = trunc i64 %add1.i.i.us.us.6.1 to i32
  %cmp.i.us.us.6.1 = icmp slt i32 %conv.i.us.us.6.1, %2
  br i1 %cmp.i.us.us.6.1, label %if.then.i.us.us.6.1, label %if.end.i.us.us.6.1

pregion_for_end.i.us.6.loopexit:                  ; preds = %if.end.i.us.us.6.1
  br label %pregion_for_end.i.us.6

pregion_for_end.i.us.6:                           ; preds = %pregion_for_end.i.us.6.loopexit, %pregion_for_end.i.us.5
  %121 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.7 = or i32 %121, 7
  %cmp4.i.us.7 = icmp slt i32 %conv2.i.us.7, %1
  %reass.add.i.us.7 = add i32 %mul6.i, %conv2.i.us.7
  %reass.mul.i.us.7 = mul i32 %reass.add.i.us.7, %2
  %122 = sext i32 %reass.mul.i.us.7 to i64
  br i1 %cmp4.i.us.7, label %pregion_for_entry.entry.i.us.us.7.preheader, label %doitgen_kernel1.exit

pregion_for_entry.entry.i.us.us.7.preheader:      ; preds = %pregion_for_end.i.us.6
  br label %pregion_for_entry.entry.i.us.us.7

pregion_for_entry.entry.i.us.us.7:                ; preds = %if.end.i.us.us.7.1, %pregion_for_entry.entry.i.us.us.7.preheader
  %_local_id_x.0.us.us.7 = phi i64 [ %140, %if.end.i.us.us.7.1 ], [ 0, %pregion_for_entry.entry.i.us.us.7.preheader ]
  %add1.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.0.us.us.7, %mul.i.i
  %conv.i.us.us.7 = trunc i64 %add1.i.i.us.us.7 to i32
  %cmp.i.us.us.7 = icmp slt i32 %conv.i.us.us.7, %2
  br i1 %cmp.i.us.us.7, label %if.then.i.us.us.7, label %if.end.i.us.us.7

if.then.i.us.us.7:                                ; preds = %pregion_for_entry.entry.i.us.us.7
  %add8.i.us.us.7 = add nsw i32 %reass.mul.i.us.7, %conv.i.us.us.7
  %idxprom.i.us.us.7 = sext i32 %add8.i.us.us.7 to i64
  %arrayidx.i.us.us.7 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7 = shl i64 %add1.i.i.us.us.7, 32
  %123 = ashr exact i64 %sext.i.us.us.7, 32
  br label %for.body.i.us.us.7

for.body.i.us.us.7:                               ; preds = %for.body.i.us.us.7, %if.then.i.us.us.7
  %indvars.iv.next.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.us.us.7, %for.body.i.us.us.7 ], [ 0, %if.then.i.us.us.7 ]
  %124 = phi float [ %130, %for.body.i.us.us.7 ], [ 0.000000e+00, %if.then.i.us.us.7 ]
  %125 = add nsw i64 %indvars.iv.next.i3.us.us.7, %122
  %arrayidx24.i.us.us.7 = getelementptr inbounds float, float* %3, i64 %125
  %126 = load float, float* %arrayidx24.i.us.us.7, align 4, !tbaa !12
  %127 = mul nuw nsw i64 %indvars.iv.next.i3.us.us.7, %12
  %128 = add nsw i64 %127, %123
  %arrayidx28.i.us.us.7 = getelementptr inbounds float, float* %4, i64 %128
  %129 = load float, float* %arrayidx28.i.us.us.7, align 4, !tbaa !12
  %130 = tail call float @llvm.fmuladd.f32(float %126, float %129, float %124) #2
  store float %130, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i3.us.us.7, 1
  %exitcond.not.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.us.us.7, %12
  br i1 %exitcond.not.i.us.us.7, label %if.end.i.us.us.7.loopexit, label %for.body.i.us.us.7, !llvm.loop !19

if.end.i.us.us.7.loopexit:                        ; preds = %for.body.i.us.us.7
  br label %if.end.i.us.us.7

if.end.i.us.us.7:                                 ; preds = %if.end.i.us.us.7.loopexit, %pregion_for_entry.entry.i.us.us.7
  %131 = or i64 %_local_id_x.0.us.us.7, 1
  %add1.i.i.us.us.7.1 = add nuw nsw i64 %131, %mul.i.i
  %conv.i.us.us.7.1 = trunc i64 %add1.i.i.us.us.7.1 to i32
  %cmp.i.us.us.7.1 = icmp slt i32 %conv.i.us.us.7.1, %2
  br i1 %cmp.i.us.us.7.1, label %if.then.i.us.us.7.1, label %if.end.i.us.us.7.1

if.then.i.us.1:                                   ; preds = %if.end.i.us
  %add8.i.us.1 = add nsw i32 %reass.mul.i, %conv.i.us.1
  %idxprom.i.us.1 = sext i32 %add8.i.us.1 to i64
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1

if.end.i.us.1:                                    ; preds = %if.then.i.us.1, %if.end.i.us
  br i1 %cmp.i.us.2, label %if.then.i.us.2, label %if.end.i.us.2

if.then.i.us.2:                                   ; preds = %if.end.i.us.1
  %add8.i.us.2 = add nsw i32 %reass.mul.i, %conv.i.us.2
  %idxprom.i.us.2 = sext i32 %add8.i.us.2 to i64
  %arrayidx.i.us.2 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.2
  store float 0.000000e+00, float* %arrayidx.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2

if.end.i.us.2:                                    ; preds = %if.then.i.us.2, %if.end.i.us.1
  br i1 %cmp.i.us.3, label %if.then.i.us.3, label %if.end.i.us.3

if.then.i.us.3:                                   ; preds = %if.end.i.us.2
  %add8.i.us.3 = add nsw i32 %reass.mul.i, %conv.i.us.3
  %idxprom.i.us.3 = sext i32 %add8.i.us.3 to i64
  %arrayidx.i.us.3 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.3
  store float 0.000000e+00, float* %arrayidx.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3

if.end.i.us.3:                                    ; preds = %if.then.i.us.3, %if.end.i.us.2
  br i1 %cmp.i.us.4, label %if.then.i.us.4, label %if.end.i.us.4

if.then.i.us.4:                                   ; preds = %if.end.i.us.3
  %add8.i.us.4 = add nsw i32 %reass.mul.i, %conv.i.us.4
  %idxprom.i.us.4 = sext i32 %add8.i.us.4 to i64
  %arrayidx.i.us.4 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.4
  store float 0.000000e+00, float* %arrayidx.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.4

if.end.i.us.4:                                    ; preds = %if.then.i.us.4, %if.end.i.us.3
  br i1 %cmp.i.us.5, label %if.then.i.us.5, label %if.end.i.us.5

if.then.i.us.5:                                   ; preds = %if.end.i.us.4
  %add8.i.us.5 = add nsw i32 %reass.mul.i, %conv.i.us.5
  %idxprom.i.us.5 = sext i32 %add8.i.us.5 to i64
  %arrayidx.i.us.5 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.5
  store float 0.000000e+00, float* %arrayidx.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.5

if.end.i.us.5:                                    ; preds = %if.then.i.us.5, %if.end.i.us.4
  br i1 %cmp.i.us.6, label %if.then.i.us.6, label %if.end.i.us.6

if.then.i.us.6:                                   ; preds = %if.end.i.us.5
  %add8.i.us.6 = add nsw i32 %reass.mul.i, %conv.i.us.6
  %idxprom.i.us.6 = sext i32 %add8.i.us.6 to i64
  %arrayidx.i.us.6 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.6
  store float 0.000000e+00, float* %arrayidx.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.6

if.end.i.us.6:                                    ; preds = %if.then.i.us.6, %if.end.i.us.5
  br i1 %cmp.i.us.7, label %if.then.i.us.7, label %if.end.i.us.7

if.then.i.us.7:                                   ; preds = %if.end.i.us.6
  %add8.i.us.7 = add nsw i32 %reass.mul.i, %conv.i.us.7
  %idxprom.i.us.7 = sext i32 %add8.i.us.7 to i64
  %arrayidx.i.us.7 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.7
  store float 0.000000e+00, float* %arrayidx.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.7

if.end.i.us.7:                                    ; preds = %if.then.i.us.7, %if.end.i.us.6
  br i1 %cmp.i.us.8, label %if.then.i.us.8, label %if.end.i.us.8

if.then.i.us.8:                                   ; preds = %if.end.i.us.7
  %add8.i.us.8 = add nsw i32 %reass.mul.i, %conv.i.us.8
  %idxprom.i.us.8 = sext i32 %add8.i.us.8 to i64
  %arrayidx.i.us.8 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.8
  store float 0.000000e+00, float* %arrayidx.i.us.8, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.8

if.end.i.us.8:                                    ; preds = %if.then.i.us.8, %if.end.i.us.7
  br i1 %cmp.i.us.9, label %if.then.i.us.9, label %if.end.i.us.9

if.then.i.us.9:                                   ; preds = %if.end.i.us.8
  %add8.i.us.9 = add nsw i32 %reass.mul.i, %conv.i.us.9
  %idxprom.i.us.9 = sext i32 %add8.i.us.9 to i64
  %arrayidx.i.us.9 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.9
  store float 0.000000e+00, float* %arrayidx.i.us.9, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.9

if.end.i.us.9:                                    ; preds = %if.then.i.us.9, %if.end.i.us.8
  br i1 %cmp.i.us.10, label %if.then.i.us.10, label %if.end.i.us.10

if.then.i.us.10:                                  ; preds = %if.end.i.us.9
  %add8.i.us.10 = add nsw i32 %reass.mul.i, %conv.i.us.10
  %idxprom.i.us.10 = sext i32 %add8.i.us.10 to i64
  %arrayidx.i.us.10 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.10
  store float 0.000000e+00, float* %arrayidx.i.us.10, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.10

if.end.i.us.10:                                   ; preds = %if.then.i.us.10, %if.end.i.us.9
  br i1 %cmp.i.us.11, label %if.then.i.us.11, label %if.end.i.us.11

if.then.i.us.11:                                  ; preds = %if.end.i.us.10
  %add8.i.us.11 = add nsw i32 %reass.mul.i, %conv.i.us.11
  %idxprom.i.us.11 = sext i32 %add8.i.us.11 to i64
  %arrayidx.i.us.11 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.11
  store float 0.000000e+00, float* %arrayidx.i.us.11, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.11

if.end.i.us.11:                                   ; preds = %if.then.i.us.11, %if.end.i.us.10
  br i1 %cmp.i.us.12, label %if.then.i.us.12, label %if.end.i.us.12

if.then.i.us.12:                                  ; preds = %if.end.i.us.11
  %add8.i.us.12 = add nsw i32 %reass.mul.i, %conv.i.us.12
  %idxprom.i.us.12 = sext i32 %add8.i.us.12 to i64
  %arrayidx.i.us.12 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.12
  store float 0.000000e+00, float* %arrayidx.i.us.12, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.12

if.end.i.us.12:                                   ; preds = %if.then.i.us.12, %if.end.i.us.11
  br i1 %cmp.i.us.13, label %if.then.i.us.13, label %if.end.i.us.13

if.then.i.us.13:                                  ; preds = %if.end.i.us.12
  %add8.i.us.13 = add nsw i32 %reass.mul.i, %conv.i.us.13
  %idxprom.i.us.13 = sext i32 %add8.i.us.13 to i64
  %arrayidx.i.us.13 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.13
  store float 0.000000e+00, float* %arrayidx.i.us.13, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.13

if.end.i.us.13:                                   ; preds = %if.then.i.us.13, %if.end.i.us.12
  br i1 %cmp.i.us.14, label %if.then.i.us.14, label %if.end.i.us.14

if.then.i.us.14:                                  ; preds = %if.end.i.us.13
  %add8.i.us.14 = add nsw i32 %reass.mul.i, %conv.i.us.14
  %idxprom.i.us.14 = sext i32 %add8.i.us.14 to i64
  %arrayidx.i.us.14 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.14
  store float 0.000000e+00, float* %arrayidx.i.us.14, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.14

if.end.i.us.14:                                   ; preds = %if.then.i.us.14, %if.end.i.us.13
  br i1 %cmp.i.us.15, label %if.then.i.us.15, label %if.end.i.us.15

if.then.i.us.15:                                  ; preds = %if.end.i.us.14
  %add8.i.us.15 = add nsw i32 %reass.mul.i, %conv.i.us.15
  %idxprom.i.us.15 = sext i32 %add8.i.us.15 to i64
  %arrayidx.i.us.15 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.15
  store float 0.000000e+00, float* %arrayidx.i.us.15, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.15

if.end.i.us.15:                                   ; preds = %if.then.i.us.15, %if.end.i.us.14
  br i1 %cmp.i.us.16, label %if.then.i.us.16, label %if.end.i.us.16

if.then.i.us.16:                                  ; preds = %if.end.i.us.15
  %add8.i.us.16 = add nsw i32 %reass.mul.i, %conv.i.us.16
  %idxprom.i.us.16 = sext i32 %add8.i.us.16 to i64
  %arrayidx.i.us.16 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.16
  store float 0.000000e+00, float* %arrayidx.i.us.16, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.16

if.end.i.us.16:                                   ; preds = %if.then.i.us.16, %if.end.i.us.15
  br i1 %cmp.i.us.17, label %if.then.i.us.17, label %if.end.i.us.17

if.then.i.us.17:                                  ; preds = %if.end.i.us.16
  %add8.i.us.17 = add nsw i32 %reass.mul.i, %conv.i.us.17
  %idxprom.i.us.17 = sext i32 %add8.i.us.17 to i64
  %arrayidx.i.us.17 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.17
  store float 0.000000e+00, float* %arrayidx.i.us.17, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.17

if.end.i.us.17:                                   ; preds = %if.then.i.us.17, %if.end.i.us.16
  br i1 %cmp.i.us.18, label %if.then.i.us.18, label %if.end.i.us.18

if.then.i.us.18:                                  ; preds = %if.end.i.us.17
  %add8.i.us.18 = add nsw i32 %reass.mul.i, %conv.i.us.18
  %idxprom.i.us.18 = sext i32 %add8.i.us.18 to i64
  %arrayidx.i.us.18 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.18
  store float 0.000000e+00, float* %arrayidx.i.us.18, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.18

if.end.i.us.18:                                   ; preds = %if.then.i.us.18, %if.end.i.us.17
  br i1 %cmp.i.us.19, label %if.then.i.us.19, label %if.end.i.us.19

if.then.i.us.19:                                  ; preds = %if.end.i.us.18
  %add8.i.us.19 = add nsw i32 %reass.mul.i, %conv.i.us.19
  %idxprom.i.us.19 = sext i32 %add8.i.us.19 to i64
  %arrayidx.i.us.19 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.19
  store float 0.000000e+00, float* %arrayidx.i.us.19, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.19

if.end.i.us.19:                                   ; preds = %if.then.i.us.19, %if.end.i.us.18
  br i1 %cmp.i.us.20, label %if.then.i.us.20, label %if.end.i.us.20

if.then.i.us.20:                                  ; preds = %if.end.i.us.19
  %add8.i.us.20 = add nsw i32 %reass.mul.i, %conv.i.us.20
  %idxprom.i.us.20 = sext i32 %add8.i.us.20 to i64
  %arrayidx.i.us.20 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.20
  store float 0.000000e+00, float* %arrayidx.i.us.20, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.20

if.end.i.us.20:                                   ; preds = %if.then.i.us.20, %if.end.i.us.19
  br i1 %cmp.i.us.21, label %if.then.i.us.21, label %if.end.i.us.21

if.then.i.us.21:                                  ; preds = %if.end.i.us.20
  %add8.i.us.21 = add nsw i32 %reass.mul.i, %conv.i.us.21
  %idxprom.i.us.21 = sext i32 %add8.i.us.21 to i64
  %arrayidx.i.us.21 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.21
  store float 0.000000e+00, float* %arrayidx.i.us.21, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.21

if.end.i.us.21:                                   ; preds = %if.then.i.us.21, %if.end.i.us.20
  br i1 %cmp.i.us.22, label %if.then.i.us.22, label %if.end.i.us.22

if.then.i.us.22:                                  ; preds = %if.end.i.us.21
  %add8.i.us.22 = add nsw i32 %reass.mul.i, %conv.i.us.22
  %idxprom.i.us.22 = sext i32 %add8.i.us.22 to i64
  %arrayidx.i.us.22 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.22
  store float 0.000000e+00, float* %arrayidx.i.us.22, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.22

if.end.i.us.22:                                   ; preds = %if.then.i.us.22, %if.end.i.us.21
  br i1 %cmp.i.us.23, label %if.then.i.us.23, label %if.end.i.us.23

if.then.i.us.23:                                  ; preds = %if.end.i.us.22
  %add8.i.us.23 = add nsw i32 %reass.mul.i, %conv.i.us.23
  %idxprom.i.us.23 = sext i32 %add8.i.us.23 to i64
  %arrayidx.i.us.23 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.23
  store float 0.000000e+00, float* %arrayidx.i.us.23, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.23

if.end.i.us.23:                                   ; preds = %if.then.i.us.23, %if.end.i.us.22
  br i1 %cmp.i.us.24, label %if.then.i.us.24, label %if.end.i.us.24

if.then.i.us.24:                                  ; preds = %if.end.i.us.23
  %add8.i.us.24 = add nsw i32 %reass.mul.i, %conv.i.us.24
  %idxprom.i.us.24 = sext i32 %add8.i.us.24 to i64
  %arrayidx.i.us.24 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.24
  store float 0.000000e+00, float* %arrayidx.i.us.24, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.24

if.end.i.us.24:                                   ; preds = %if.then.i.us.24, %if.end.i.us.23
  br i1 %cmp.i.us.25, label %if.then.i.us.25, label %if.end.i.us.25

if.then.i.us.25:                                  ; preds = %if.end.i.us.24
  %add8.i.us.25 = add nsw i32 %reass.mul.i, %conv.i.us.25
  %idxprom.i.us.25 = sext i32 %add8.i.us.25 to i64
  %arrayidx.i.us.25 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.25
  store float 0.000000e+00, float* %arrayidx.i.us.25, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.25

if.end.i.us.25:                                   ; preds = %if.then.i.us.25, %if.end.i.us.24
  br i1 %cmp.i.us.26, label %if.then.i.us.26, label %if.end.i.us.26

if.then.i.us.26:                                  ; preds = %if.end.i.us.25
  %add8.i.us.26 = add nsw i32 %reass.mul.i, %conv.i.us.26
  %idxprom.i.us.26 = sext i32 %add8.i.us.26 to i64
  %arrayidx.i.us.26 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.26
  store float 0.000000e+00, float* %arrayidx.i.us.26, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.26

if.end.i.us.26:                                   ; preds = %if.then.i.us.26, %if.end.i.us.25
  br i1 %cmp.i.us.27, label %if.then.i.us.27, label %if.end.i.us.27

if.then.i.us.27:                                  ; preds = %if.end.i.us.26
  %add8.i.us.27 = add nsw i32 %reass.mul.i, %conv.i.us.27
  %idxprom.i.us.27 = sext i32 %add8.i.us.27 to i64
  %arrayidx.i.us.27 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.27
  store float 0.000000e+00, float* %arrayidx.i.us.27, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.27

if.end.i.us.27:                                   ; preds = %if.then.i.us.27, %if.end.i.us.26
  br i1 %cmp.i.us.28, label %if.then.i.us.28, label %if.end.i.us.28

if.then.i.us.28:                                  ; preds = %if.end.i.us.27
  %add8.i.us.28 = add nsw i32 %reass.mul.i, %conv.i.us.28
  %idxprom.i.us.28 = sext i32 %add8.i.us.28 to i64
  %arrayidx.i.us.28 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.28
  store float 0.000000e+00, float* %arrayidx.i.us.28, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.28

if.end.i.us.28:                                   ; preds = %if.then.i.us.28, %if.end.i.us.27
  br i1 %cmp.i.us.29, label %if.then.i.us.29, label %if.end.i.us.29

if.then.i.us.29:                                  ; preds = %if.end.i.us.28
  %add8.i.us.29 = add nsw i32 %reass.mul.i, %conv.i.us.29
  %idxprom.i.us.29 = sext i32 %add8.i.us.29 to i64
  %arrayidx.i.us.29 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.29
  store float 0.000000e+00, float* %arrayidx.i.us.29, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.29

if.end.i.us.29:                                   ; preds = %if.then.i.us.29, %if.end.i.us.28
  br i1 %cmp.i.us.30, label %if.then.i.us.30, label %if.end.i.us.30

if.then.i.us.30:                                  ; preds = %if.end.i.us.29
  %add8.i.us.30 = add nsw i32 %reass.mul.i, %conv.i.us.30
  %idxprom.i.us.30 = sext i32 %add8.i.us.30 to i64
  %arrayidx.i.us.30 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.30
  store float 0.000000e+00, float* %arrayidx.i.us.30, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.30

if.end.i.us.30:                                   ; preds = %if.then.i.us.30, %if.end.i.us.29
  br i1 %cmp.i.us.31, label %if.then.i.us.31, label %pregion_for_end.i

if.then.i.us.31:                                  ; preds = %if.end.i.us.30
  %add8.i.us.31 = add nsw i32 %reass.mul.i, %conv.i.us.31
  %idxprom.i.us.31 = sext i32 %add8.i.us.31 to i64
  %arrayidx.i.us.31 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.31
  store float 0.000000e+00, float* %arrayidx.i.us.31, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i

if.then.i.us.us.7.1:                              ; preds = %if.end.i.us.us.7
  %add8.i.us.us.7.1 = add nsw i32 %reass.mul.i.us.7, %conv.i.us.us.7.1
  %idxprom.i.us.us.7.1 = sext i32 %add8.i.us.us.7.1 to i64
  %arrayidx.i.us.us.7.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7.1 = shl i64 %add1.i.i.us.us.7.1, 32
  %132 = ashr exact i64 %sext.i.us.us.7.1, 32
  br label %for.body.i.us.us.7.1

for.body.i.us.us.7.1:                             ; preds = %for.body.i.us.us.7.1, %if.then.i.us.us.7.1
  %indvars.iv.next.i3.us.us.7.1 = phi i64 [ %indvars.iv.next.i.us.us.7.1, %for.body.i.us.us.7.1 ], [ 0, %if.then.i.us.us.7.1 ]
  %133 = phi float [ %139, %for.body.i.us.us.7.1 ], [ 0.000000e+00, %if.then.i.us.us.7.1 ]
  %134 = add nsw i64 %indvars.iv.next.i3.us.us.7.1, %122
  %arrayidx24.i.us.us.7.1 = getelementptr inbounds float, float* %3, i64 %134
  %135 = load float, float* %arrayidx24.i.us.us.7.1, align 4, !tbaa !12
  %136 = mul nuw nsw i64 %indvars.iv.next.i3.us.us.7.1, %12
  %137 = add nsw i64 %136, %132
  %arrayidx28.i.us.us.7.1 = getelementptr inbounds float, float* %4, i64 %137
  %138 = load float, float* %arrayidx28.i.us.us.7.1, align 4, !tbaa !12
  %139 = tail call float @llvm.fmuladd.f32(float %135, float %138, float %133) #2
  store float %139, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.7.1, 1
  %exitcond.not.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.us.us.7.1, %12
  br i1 %exitcond.not.i.us.us.7.1, label %if.end.i.us.us.7.1.loopexit, label %for.body.i.us.us.7.1, !llvm.loop !19

if.end.i.us.us.7.1.loopexit:                      ; preds = %for.body.i.us.us.7.1
  br label %if.end.i.us.us.7.1

if.end.i.us.us.7.1:                               ; preds = %if.end.i.us.us.7.1.loopexit, %if.end.i.us.us.7
  %140 = add nuw nsw i64 %_local_id_x.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %140, 32
  br i1 %exitcond.7.not.1, label %doitgen_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.us.us.7, !llvm.loop !23

if.then.i.us.us.6.1:                              ; preds = %if.end.i.us.us.6
  %add8.i.us.us.6.1 = add nsw i32 %reass.mul.i.us.6, %conv.i.us.us.6.1
  %idxprom.i.us.us.6.1 = sext i32 %add8.i.us.us.6.1 to i64
  %arrayidx.i.us.us.6.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6.1 = shl i64 %add1.i.i.us.us.6.1, 32
  %141 = ashr exact i64 %sext.i.us.us.6.1, 32
  br label %for.body.i.us.us.6.1

for.body.i.us.us.6.1:                             ; preds = %for.body.i.us.us.6.1, %if.then.i.us.us.6.1
  %indvars.iv.next.i3.us.us.6.1 = phi i64 [ %indvars.iv.next.i.us.us.6.1, %for.body.i.us.us.6.1 ], [ 0, %if.then.i.us.us.6.1 ]
  %142 = phi float [ %148, %for.body.i.us.us.6.1 ], [ 0.000000e+00, %if.then.i.us.us.6.1 ]
  %143 = add nsw i64 %indvars.iv.next.i3.us.us.6.1, %111
  %arrayidx24.i.us.us.6.1 = getelementptr inbounds float, float* %3, i64 %143
  %144 = load float, float* %arrayidx24.i.us.us.6.1, align 4, !tbaa !12
  %145 = mul nuw nsw i64 %indvars.iv.next.i3.us.us.6.1, %12
  %146 = add nsw i64 %145, %141
  %arrayidx28.i.us.us.6.1 = getelementptr inbounds float, float* %4, i64 %146
  %147 = load float, float* %arrayidx28.i.us.us.6.1, align 4, !tbaa !12
  %148 = tail call float @llvm.fmuladd.f32(float %144, float %147, float %142) #2
  store float %148, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.6.1, 1
  %exitcond.not.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.us.us.6.1, %12
  br i1 %exitcond.not.i.us.us.6.1, label %if.end.i.us.us.6.1.loopexit, label %for.body.i.us.us.6.1, !llvm.loop !19

if.end.i.us.us.6.1.loopexit:                      ; preds = %for.body.i.us.us.6.1
  br label %if.end.i.us.us.6.1

if.end.i.us.us.6.1:                               ; preds = %if.end.i.us.us.6.1.loopexit, %if.end.i.us.us.6
  %149 = add nuw nsw i64 %_local_id_x.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %149, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.us.6.loopexit, label %pregion_for_entry.entry.i.us.us.6, !llvm.loop !23

if.then.i.us.us.5.1:                              ; preds = %if.end.i.us.us.5
  %add8.i.us.us.5.1 = add nsw i32 %reass.mul.i.us.5, %conv.i.us.us.5.1
  %idxprom.i.us.us.5.1 = sext i32 %add8.i.us.us.5.1 to i64
  %arrayidx.i.us.us.5.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5.1 = shl i64 %add1.i.i.us.us.5.1, 32
  %150 = ashr exact i64 %sext.i.us.us.5.1, 32
  br label %for.body.i.us.us.5.1

for.body.i.us.us.5.1:                             ; preds = %for.body.i.us.us.5.1, %if.then.i.us.us.5.1
  %indvars.iv.next.i3.us.us.5.1 = phi i64 [ %indvars.iv.next.i.us.us.5.1, %for.body.i.us.us.5.1 ], [ 0, %if.then.i.us.us.5.1 ]
  %151 = phi float [ %157, %for.body.i.us.us.5.1 ], [ 0.000000e+00, %if.then.i.us.us.5.1 ]
  %152 = add nsw i64 %indvars.iv.next.i3.us.us.5.1, %100
  %arrayidx24.i.us.us.5.1 = getelementptr inbounds float, float* %3, i64 %152
  %153 = load float, float* %arrayidx24.i.us.us.5.1, align 4, !tbaa !12
  %154 = mul nuw nsw i64 %indvars.iv.next.i3.us.us.5.1, %12
  %155 = add nsw i64 %154, %150
  %arrayidx28.i.us.us.5.1 = getelementptr inbounds float, float* %4, i64 %155
  %156 = load float, float* %arrayidx28.i.us.us.5.1, align 4, !tbaa !12
  %157 = tail call float @llvm.fmuladd.f32(float %153, float %156, float %151) #2
  store float %157, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.5.1, 1
  %exitcond.not.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.us.us.5.1, %12
  br i1 %exitcond.not.i.us.us.5.1, label %if.end.i.us.us.5.1.loopexit, label %for.body.i.us.us.5.1, !llvm.loop !19

if.end.i.us.us.5.1.loopexit:                      ; preds = %for.body.i.us.us.5.1
  br label %if.end.i.us.us.5.1

if.end.i.us.us.5.1:                               ; preds = %if.end.i.us.us.5.1.loopexit, %if.end.i.us.us.5
  %158 = add nuw nsw i64 %_local_id_x.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %158, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.us.5.loopexit, label %pregion_for_entry.entry.i.us.us.5, !llvm.loop !23

if.then.i.us.us.4.1:                              ; preds = %if.end.i.us.us.4
  %add8.i.us.us.4.1 = add nsw i32 %reass.mul.i.us.4, %conv.i.us.us.4.1
  %idxprom.i.us.us.4.1 = sext i32 %add8.i.us.us.4.1 to i64
  %arrayidx.i.us.us.4.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4.1 = shl i64 %add1.i.i.us.us.4.1, 32
  %159 = ashr exact i64 %sext.i.us.us.4.1, 32
  br label %for.body.i.us.us.4.1

for.body.i.us.us.4.1:                             ; preds = %for.body.i.us.us.4.1, %if.then.i.us.us.4.1
  %indvars.iv.next.i3.us.us.4.1 = phi i64 [ %indvars.iv.next.i.us.us.4.1, %for.body.i.us.us.4.1 ], [ 0, %if.then.i.us.us.4.1 ]
  %160 = phi float [ %166, %for.body.i.us.us.4.1 ], [ 0.000000e+00, %if.then.i.us.us.4.1 ]
  %161 = add nsw i64 %indvars.iv.next.i3.us.us.4.1, %89
  %arrayidx24.i.us.us.4.1 = getelementptr inbounds float, float* %3, i64 %161
  %162 = load float, float* %arrayidx24.i.us.us.4.1, align 4, !tbaa !12
  %163 = mul nuw nsw i64 %indvars.iv.next.i3.us.us.4.1, %12
  %164 = add nsw i64 %163, %159
  %arrayidx28.i.us.us.4.1 = getelementptr inbounds float, float* %4, i64 %164
  %165 = load float, float* %arrayidx28.i.us.us.4.1, align 4, !tbaa !12
  %166 = tail call float @llvm.fmuladd.f32(float %162, float %165, float %160) #2
  store float %166, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.4.1, 1
  %exitcond.not.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.us.us.4.1, %12
  br i1 %exitcond.not.i.us.us.4.1, label %if.end.i.us.us.4.1.loopexit, label %for.body.i.us.us.4.1, !llvm.loop !19

if.end.i.us.us.4.1.loopexit:                      ; preds = %for.body.i.us.us.4.1
  br label %if.end.i.us.us.4.1

if.end.i.us.us.4.1:                               ; preds = %if.end.i.us.us.4.1.loopexit, %if.end.i.us.us.4
  %167 = add nuw nsw i64 %_local_id_x.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %167, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.us.4.loopexit, label %pregion_for_entry.entry.i.us.us.4, !llvm.loop !23

if.then.i.us.us.3.1:                              ; preds = %if.end.i.us.us.3
  %add8.i.us.us.3.1 = add nsw i32 %reass.mul.i.us.3, %conv.i.us.us.3.1
  %idxprom.i.us.us.3.1 = sext i32 %add8.i.us.us.3.1 to i64
  %arrayidx.i.us.us.3.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3.1 = shl i64 %add1.i.i.us.us.3.1, 32
  %168 = ashr exact i64 %sext.i.us.us.3.1, 32
  br label %for.body.i.us.us.3.1

for.body.i.us.us.3.1:                             ; preds = %for.body.i.us.us.3.1, %if.then.i.us.us.3.1
  %indvars.iv.next.i3.us.us.3.1 = phi i64 [ %indvars.iv.next.i.us.us.3.1, %for.body.i.us.us.3.1 ], [ 0, %if.then.i.us.us.3.1 ]
  %169 = phi float [ %175, %for.body.i.us.us.3.1 ], [ 0.000000e+00, %if.then.i.us.us.3.1 ]
  %170 = add nsw i64 %indvars.iv.next.i3.us.us.3.1, %78
  %arrayidx24.i.us.us.3.1 = getelementptr inbounds float, float* %3, i64 %170
  %171 = load float, float* %arrayidx24.i.us.us.3.1, align 4, !tbaa !12
  %172 = mul nuw nsw i64 %indvars.iv.next.i3.us.us.3.1, %12
  %173 = add nsw i64 %172, %168
  %arrayidx28.i.us.us.3.1 = getelementptr inbounds float, float* %4, i64 %173
  %174 = load float, float* %arrayidx28.i.us.us.3.1, align 4, !tbaa !12
  %175 = tail call float @llvm.fmuladd.f32(float %171, float %174, float %169) #2
  store float %175, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.3.1, 1
  %exitcond.not.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.us.us.3.1, %12
  br i1 %exitcond.not.i.us.us.3.1, label %if.end.i.us.us.3.1.loopexit, label %for.body.i.us.us.3.1, !llvm.loop !19

if.end.i.us.us.3.1.loopexit:                      ; preds = %for.body.i.us.us.3.1
  br label %if.end.i.us.us.3.1

if.end.i.us.us.3.1:                               ; preds = %if.end.i.us.us.3.1.loopexit, %if.end.i.us.us.3
  %176 = add nuw nsw i64 %_local_id_x.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %176, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.us.3.loopexit, label %pregion_for_entry.entry.i.us.us.3, !llvm.loop !23

if.then.i.us.us.2.1:                              ; preds = %if.end.i.us.us.2
  %add8.i.us.us.2.1 = add nsw i32 %reass.mul.i.us.2, %conv.i.us.us.2.1
  %idxprom.i.us.us.2.1 = sext i32 %add8.i.us.us.2.1 to i64
  %arrayidx.i.us.us.2.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2.1 = shl i64 %add1.i.i.us.us.2.1, 32
  %177 = ashr exact i64 %sext.i.us.us.2.1, 32
  br label %for.body.i.us.us.2.1

for.body.i.us.us.2.1:                             ; preds = %for.body.i.us.us.2.1, %if.then.i.us.us.2.1
  %indvars.iv.next.i3.us.us.2.1 = phi i64 [ %indvars.iv.next.i.us.us.2.1, %for.body.i.us.us.2.1 ], [ 0, %if.then.i.us.us.2.1 ]
  %178 = phi float [ %184, %for.body.i.us.us.2.1 ], [ 0.000000e+00, %if.then.i.us.us.2.1 ]
  %179 = add nsw i64 %indvars.iv.next.i3.us.us.2.1, %67
  %arrayidx24.i.us.us.2.1 = getelementptr inbounds float, float* %3, i64 %179
  %180 = load float, float* %arrayidx24.i.us.us.2.1, align 4, !tbaa !12
  %181 = mul nuw nsw i64 %indvars.iv.next.i3.us.us.2.1, %12
  %182 = add nsw i64 %181, %177
  %arrayidx28.i.us.us.2.1 = getelementptr inbounds float, float* %4, i64 %182
  %183 = load float, float* %arrayidx28.i.us.us.2.1, align 4, !tbaa !12
  %184 = tail call float @llvm.fmuladd.f32(float %180, float %183, float %178) #2
  store float %184, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.2.1, 1
  %exitcond.not.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.us.us.2.1, %12
  br i1 %exitcond.not.i.us.us.2.1, label %if.end.i.us.us.2.1.loopexit, label %for.body.i.us.us.2.1, !llvm.loop !19

if.end.i.us.us.2.1.loopexit:                      ; preds = %for.body.i.us.us.2.1
  br label %if.end.i.us.us.2.1

if.end.i.us.us.2.1:                               ; preds = %if.end.i.us.us.2.1.loopexit, %if.end.i.us.us.2
  %185 = add nuw nsw i64 %_local_id_x.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %185, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.us.2.loopexit, label %pregion_for_entry.entry.i.us.us.2, !llvm.loop !23

if.then.i.us.us.1.1:                              ; preds = %if.end.i.us.us.1
  %add8.i.us.us.1.1 = add nsw i32 %reass.mul.i.us.1, %conv.i.us.us.1.1
  %idxprom.i.us.us.1.1 = sext i32 %add8.i.us.us.1.1 to i64
  %arrayidx.i.us.us.1.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1.1 = shl i64 %add1.i.i.us.us.1.1, 32
  %186 = ashr exact i64 %sext.i.us.us.1.1, 32
  br label %for.body.i.us.us.1.1

for.body.i.us.us.1.1:                             ; preds = %for.body.i.us.us.1.1, %if.then.i.us.us.1.1
  %indvars.iv.next.i3.us.us.1.1 = phi i64 [ %indvars.iv.next.i.us.us.1.1, %for.body.i.us.us.1.1 ], [ 0, %if.then.i.us.us.1.1 ]
  %187 = phi float [ %193, %for.body.i.us.us.1.1 ], [ 0.000000e+00, %if.then.i.us.us.1.1 ]
  %188 = add nsw i64 %indvars.iv.next.i3.us.us.1.1, %46
  %arrayidx24.i.us.us.1.1 = getelementptr inbounds float, float* %3, i64 %188
  %189 = load float, float* %arrayidx24.i.us.us.1.1, align 4, !tbaa !12
  %190 = mul nuw nsw i64 %indvars.iv.next.i3.us.us.1.1, %12
  %191 = add nsw i64 %190, %186
  %arrayidx28.i.us.us.1.1 = getelementptr inbounds float, float* %4, i64 %191
  %192 = load float, float* %arrayidx28.i.us.us.1.1, align 4, !tbaa !12
  %193 = tail call float @llvm.fmuladd.f32(float %189, float %192, float %187) #2
  store float %193, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.1.1, 1
  %exitcond.not.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.us.us.1.1, %12
  br i1 %exitcond.not.i.us.us.1.1, label %if.end.i.us.us.1.1.loopexit, label %for.body.i.us.us.1.1, !llvm.loop !19

if.end.i.us.us.1.1.loopexit:                      ; preds = %for.body.i.us.us.1.1
  br label %if.end.i.us.us.1.1

if.end.i.us.us.1.1:                               ; preds = %if.end.i.us.us.1.1.loopexit, %if.end.i.us.us.1
  %194 = add nuw nsw i64 %_local_id_x.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %194, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.us.1.loopexit, label %pregion_for_entry.entry.i.us.us.1, !llvm.loop !23

if.then.i.us.us.146:                              ; preds = %if.end.i.us.us
  %add8.i.us.us.142 = add nsw i32 %reass.mul.i.us, %conv.i.us.us.139
  %idxprom.i.us.us.143 = sext i32 %add8.i.us.us.142 to i64
  %arrayidx.i.us.us.144 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.us.143
  store float 0.000000e+00, float* %arrayidx.i.us.us.144, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.145 = shl i64 %add1.i.i.us.us.138, 32
  %195 = ashr exact i64 %sext.i.us.us.145, 32
  br label %for.body.i.us.us.152

for.body.i.us.us.152:                             ; preds = %for.body.i.us.us.152, %if.then.i.us.us.146
  %indvars.iv.next.i3.us.us.147 = phi i64 [ %indvars.iv.next.i.us.us.150, %for.body.i.us.us.152 ], [ 0, %if.then.i.us.us.146 ]
  %196 = phi float [ %202, %for.body.i.us.us.152 ], [ 0.000000e+00, %if.then.i.us.us.146 ]
  %197 = add nsw i64 %indvars.iv.next.i3.us.us.147, %44
  %arrayidx24.i.us.us.148 = getelementptr inbounds float, float* %3, i64 %197
  %198 = load float, float* %arrayidx24.i.us.us.148, align 4, !tbaa !12
  %199 = mul nuw nsw i64 %indvars.iv.next.i3.us.us.147, %12
  %200 = add nsw i64 %199, %195
  %arrayidx28.i.us.us.149 = getelementptr inbounds float, float* %4, i64 %200
  %201 = load float, float* %arrayidx28.i.us.us.149, align 4, !tbaa !12
  %202 = tail call float @llvm.fmuladd.f32(float %198, float %201, float %196) #2
  store float %202, float* %arrayidx.i.us.us.144, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.150 = add nuw nsw i64 %indvars.iv.next.i3.us.us.147, 1
  %exitcond.not.i.us.us.151 = icmp eq i64 %indvars.iv.next.i.us.us.150, %12
  br i1 %exitcond.not.i.us.us.151, label %if.end.i.us.us.153.loopexit, label %for.body.i.us.us.152, !llvm.loop !19

if.end.i.us.us.153.loopexit:                      ; preds = %for.body.i.us.us.152
  br label %if.end.i.us.us.153

if.end.i.us.us.153:                               ; preds = %if.end.i.us.us.153.loopexit, %if.end.i.us.us
  %203 = add nuw nsw i64 %_local_id_x.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %203, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.us.loopexit, label %pregion_for_entry.entry.i.us.us, !llvm.loop !23
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
  %mul6.i.i = mul i32 %29, %9
  %cmp970.i.i = icmp sgt i32 %13, 0
  %30 = zext i32 %13 to i64
  br i1 %cmp970.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  %conv.i.i.us = trunc i64 %mul.i.i.i to i32
  %cmp.i.i.us = icmp sgt i32 %13, %conv.i.i.us
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.1 = or i32 %31, 1
  %cmp.i.i.us.1 = icmp sgt i32 %13, %conv.i.i.us.1
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.2 = or i32 %32, 2
  %cmp.i.i.us.2 = icmp sgt i32 %13, %conv.i.i.us.2
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.3 = or i32 %33, 3
  %cmp.i.i.us.3 = icmp sgt i32 %13, %conv.i.i.us.3
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.4 = or i32 %34, 4
  %cmp.i.i.us.4 = icmp sgt i32 %13, %conv.i.i.us.4
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.5 = or i32 %35, 5
  %cmp.i.i.us.5 = icmp sgt i32 %13, %conv.i.i.us.5
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.6 = or i32 %36, 6
  %cmp.i.i.us.6 = icmp sgt i32 %13, %conv.i.i.us.6
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.7 = or i32 %37, 7
  %cmp.i.i.us.7 = icmp sgt i32 %13, %conv.i.i.us.7
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.8 = or i32 %38, 8
  %cmp.i.i.us.8 = icmp sgt i32 %13, %conv.i.i.us.8
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.9 = or i32 %39, 9
  %cmp.i.i.us.9 = icmp sgt i32 %13, %conv.i.i.us.9
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.10 = or i32 %40, 10
  %cmp.i.i.us.10 = icmp sgt i32 %13, %conv.i.i.us.10
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.11 = or i32 %41, 11
  %cmp.i.i.us.11 = icmp sgt i32 %13, %conv.i.i.us.11
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.12 = or i32 %42, 12
  %cmp.i.i.us.12 = icmp sgt i32 %13, %conv.i.i.us.12
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.13 = or i32 %43, 13
  %cmp.i.i.us.13 = icmp sgt i32 %13, %conv.i.i.us.13
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.14 = or i32 %44, 14
  %cmp.i.i.us.14 = icmp sgt i32 %13, %conv.i.i.us.14
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.15 = or i32 %45, 15
  %cmp.i.i.us.15 = icmp sgt i32 %13, %conv.i.i.us.15
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.16 = or i32 %46, 16
  %cmp.i.i.us.16 = icmp sgt i32 %13, %conv.i.i.us.16
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.17 = or i32 %47, 17
  %cmp.i.i.us.17 = icmp sgt i32 %13, %conv.i.i.us.17
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.18 = or i32 %48, 18
  %cmp.i.i.us.18 = icmp sgt i32 %13, %conv.i.i.us.18
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.19 = or i32 %49, 19
  %cmp.i.i.us.19 = icmp sgt i32 %13, %conv.i.i.us.19
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.20 = or i32 %50, 20
  %cmp.i.i.us.20 = icmp sgt i32 %13, %conv.i.i.us.20
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.21 = or i32 %51, 21
  %cmp.i.i.us.21 = icmp sgt i32 %13, %conv.i.i.us.21
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.22 = or i32 %52, 22
  %cmp.i.i.us.22 = icmp sgt i32 %13, %conv.i.i.us.22
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.23 = or i32 %53, 23
  %cmp.i.i.us.23 = icmp sgt i32 %13, %conv.i.i.us.23
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.24 = or i32 %54, 24
  %cmp.i.i.us.24 = icmp sgt i32 %13, %conv.i.i.us.24
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.25 = or i32 %55, 25
  %cmp.i.i.us.25 = icmp sgt i32 %13, %conv.i.i.us.25
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.26 = or i32 %56, 26
  %cmp.i.i.us.26 = icmp sgt i32 %13, %conv.i.i.us.26
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.27 = or i32 %57, 27
  %cmp.i.i.us.27 = icmp sgt i32 %13, %conv.i.i.us.27
  %58 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.28 = or i32 %58, 28
  %cmp.i.i.us.28 = icmp sgt i32 %13, %conv.i.i.us.28
  %59 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.29 = or i32 %59, 29
  %cmp.i.i.us.29 = icmp sgt i32 %13, %conv.i.i.us.29
  %60 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.30 = or i32 %60, 30
  %cmp.i.i.us.30 = icmp sgt i32 %13, %conv.i.i.us.30
  %61 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.31 = or i32 %61, 31
  %cmp.i.i.us.31 = icmp sgt i32 %13, %conv.i.i.us.31
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %cmp4.i.i.us = icmp sgt i32 %9, %conv2.i.i.us
  %reass.add.i.i.us = add i32 %mul6.i.i, %conv2.i.i.us
  %reass.mul.i.i.us = mul i32 %reass.add.i.i.us, %13
  %62 = sext i32 %reass.mul.i.i.us to i64
  br i1 %cmp4.i.i.us, label %pregion_for_entry.entry.i.i.us.us.preheader, label %pregion_for_end.i.i.us

pregion_for_entry.entry.i.i.us.us.preheader:      ; preds = %pregion_for_entry.pregion_for_init.i.i.us.preheader
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_end.i.i.us.loopexit:                  ; preds = %if.end.i.i.us.us.153
  br label %pregion_for_end.i.i.us

pregion_for_end.i.i.us:                           ; preds = %pregion_for_end.i.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %63 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %63, 1
  %cmp4.i.i.us.1 = icmp sgt i32 %9, %conv2.i.i.us.1
  %reass.add.i.i.us.1 = add i32 %mul6.i.i, %conv2.i.i.us.1
  %reass.mul.i.i.us.1 = mul i32 %reass.add.i.i.us.1, %13
  %64 = sext i32 %reass.mul.i.i.us.1 to i64
  br i1 %cmp4.i.i.us.1, label %pregion_for_entry.entry.i.i.us.us.1.preheader, label %pregion_for_end.i.i.us.1

pregion_for_entry.entry.i.i.us.us.1.preheader:    ; preds = %pregion_for_end.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.entry.i.i.us.us:                ; preds = %if.end.i.i.us.us.153, %pregion_for_entry.entry.i.i.us.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ %221, %if.end.i.i.us.us.153 ], [ 0, %pregion_for_entry.entry.i.i.us.us.preheader ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %cmp.i.i.us.us = icmp sgt i32 %13, %conv.i.i.us.us
  br i1 %cmp.i.i.us.us, label %if.then.i.i.us.us, label %if.end.i.i.us.us

if.then.i.i.us.us:                                ; preds = %pregion_for_entry.entry.i.i.us.us
  %add8.i.i.us.us = add nsw i32 %reass.mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add8.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %65 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

if.end.i.i.us.us.loopexit:                        ; preds = %for.body.i.i.us.us
  br label %if.end.i.i.us.us

if.end.i.i.us.us:                                 ; preds = %if.end.i.i.us.us.loopexit, %pregion_for_entry.entry.i.i.us.us
  %66 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.138 = add nuw nsw i64 %66, %mul.i.i.i
  %conv.i.i.us.us.139 = trunc i64 %add1.i.i.i.us.us.138 to i32
  %cmp.i.i.us.us.140 = icmp sgt i32 %13, %conv.i.i.us.us.139
  br i1 %cmp.i.i.us.us.140, label %if.then.i.i.us.us.146, label %if.end.i.i.us.us.153

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %if.then.i.i.us.us
  %indvars.iv.next.i.i3.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %if.then.i.i.us.us ]
  %67 = phi float [ %73, %for.body.i.i.us.us ], [ 0.000000e+00, %if.then.i.i.us.us ]
  %68 = add nsw i64 %indvars.iv.next.i.i3.us.us, %62
  %arrayidx24.i.i.us.us = getelementptr inbounds float, float* %17, i64 %68
  %69 = load float, float* %arrayidx24.i.i.us.us, align 4, !tbaa !12
  %70 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us, %30
  %71 = add nsw i64 %70, %65
  %arrayidx28.i.i.us.us = getelementptr inbounds float, float* %21, i64 %71
  %72 = load float, float* %arrayidx28.i.i.us.us, align 4, !tbaa !12
  %73 = tail call float @llvm.fmuladd.f32(float %69, float %72, float %67) #2
  store float %73, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i3.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %30
  br i1 %exitcond.not.i.i.us.us, label %if.end.i.i.us.us.loopexit, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader
  %_local_id_y.i.0 = phi i64 [ %74, %pregion_for_end.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %cmp4.i.i = icmp sgt i32 %9, %conv2.i.i
  %reass.add.i.i = add i32 %mul6.i.i, %conv2.i.i
  %reass.mul.i.i = mul i32 %reass.add.i.i, %13
  br i1 %cmp4.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %pregion_for_entry.pregion_for_init.i.i
  br i1 %cmp.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us.preheader
  %add8.i.i.us = add nsw i32 %reass.mul.i.i, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add8.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  br i1 %cmp.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

pregion_for_end.i.i:                              ; preds = %if.then.i.i.us.31, %if.end.i.i.us.30, %pregion_for_entry.pregion_for_init.i.i
  %74 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond33.not = icmp eq i64 %74, 8
  br i1 %exitcond33.not, label %_pocl_kernel_doitgen_kernel1.exit.loopexit54, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !21

_pocl_kernel_doitgen_kernel1.exit.loopexit:       ; preds = %if.end.i.i.us.us.7.1
  br label %_pocl_kernel_doitgen_kernel1.exit

_pocl_kernel_doitgen_kernel1.exit.loopexit54:     ; preds = %pregion_for_end.i.i
  br label %_pocl_kernel_doitgen_kernel1.exit

_pocl_kernel_doitgen_kernel1.exit:                ; preds = %pregion_for_end.i.i.us.6, %_pocl_kernel_doitgen_kernel1.exit.loopexit54, %_pocl_kernel_doitgen_kernel1.exit.loopexit
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %if.end.i.i.us.us.1.1, %pregion_for_entry.entry.i.i.us.us.1.preheader
  %_local_id_x.i.0.us.us.1 = phi i64 [ %212, %if.end.i.i.us.us.1.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1.preheader ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %cmp.i.i.us.us.1 = icmp sgt i32 %13, %conv.i.i.us.us.1
  br i1 %cmp.i.i.us.us.1, label %if.then.i.i.us.us.1, label %if.end.i.i.us.us.1

if.then.i.i.us.us.1:                              ; preds = %pregion_for_entry.entry.i.i.us.us.1
  %add8.i.i.us.us.1 = add nsw i32 %reass.mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add8.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %75 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %if.then.i.i.us.us.1
  %indvars.iv.next.i.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %if.then.i.i.us.us.1 ]
  %76 = phi float [ %82, %for.body.i.i.us.us.1 ], [ 0.000000e+00, %if.then.i.i.us.us.1 ]
  %77 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %64
  %arrayidx24.i.i.us.us.1 = getelementptr inbounds float, float* %17, i64 %77
  %78 = load float, float* %arrayidx24.i.i.us.us.1, align 4, !tbaa !12
  %79 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.1, %30
  %80 = add nsw i64 %79, %75
  %arrayidx28.i.i.us.us.1 = getelementptr inbounds float, float* %21, i64 %80
  %81 = load float, float* %arrayidx28.i.i.us.us.1, align 4, !tbaa !12
  %82 = tail call float @llvm.fmuladd.f32(float %78, float %81, float %76) #2
  store float %82, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %30
  br i1 %exitcond.not.i.i.us.us.1, label %if.end.i.i.us.us.1.loopexit, label %for.body.i.i.us.us.1, !llvm.loop !19

if.end.i.i.us.us.1.loopexit:                      ; preds = %for.body.i.i.us.us.1
  br label %if.end.i.i.us.us.1

if.end.i.i.us.us.1:                               ; preds = %if.end.i.i.us.us.1.loopexit, %pregion_for_entry.entry.i.i.us.us.1
  %83 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %83, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %cmp.i.i.us.us.1.1 = icmp sgt i32 %13, %conv.i.i.us.us.1.1
  br i1 %cmp.i.i.us.us.1.1, label %if.then.i.i.us.us.1.1, label %if.end.i.i.us.us.1.1

pregion_for_end.i.i.us.1.loopexit:                ; preds = %if.end.i.i.us.us.1.1
  br label %pregion_for_end.i.i.us.1

pregion_for_end.i.i.us.1:                         ; preds = %pregion_for_end.i.i.us.1.loopexit, %pregion_for_end.i.i.us
  %84 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %84, 2
  %cmp4.i.i.us.2 = icmp sgt i32 %9, %conv2.i.i.us.2
  %reass.add.i.i.us.2 = add i32 %mul6.i.i, %conv2.i.i.us.2
  %reass.mul.i.i.us.2 = mul i32 %reass.add.i.i.us.2, %13
  %85 = sext i32 %reass.mul.i.i.us.2 to i64
  br i1 %cmp4.i.i.us.2, label %pregion_for_entry.entry.i.i.us.us.2.preheader, label %pregion_for_end.i.i.us.2

pregion_for_entry.entry.i.i.us.us.2.preheader:    ; preds = %pregion_for_end.i.i.us.1
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %if.end.i.i.us.us.2.1, %pregion_for_entry.entry.i.i.us.us.2.preheader
  %_local_id_x.i.0.us.us.2 = phi i64 [ %203, %if.end.i.i.us.us.2.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2.preheader ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %cmp.i.i.us.us.2 = icmp sgt i32 %13, %conv.i.i.us.us.2
  br i1 %cmp.i.i.us.us.2, label %if.then.i.i.us.us.2, label %if.end.i.i.us.us.2

if.then.i.i.us.us.2:                              ; preds = %pregion_for_entry.entry.i.i.us.us.2
  %add8.i.i.us.us.2 = add nsw i32 %reass.mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add8.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %86 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %if.then.i.i.us.us.2
  %indvars.iv.next.i.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %if.then.i.i.us.us.2 ]
  %87 = phi float [ %93, %for.body.i.i.us.us.2 ], [ 0.000000e+00, %if.then.i.i.us.us.2 ]
  %88 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %85
  %arrayidx24.i.i.us.us.2 = getelementptr inbounds float, float* %17, i64 %88
  %89 = load float, float* %arrayidx24.i.i.us.us.2, align 4, !tbaa !12
  %90 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.2, %30
  %91 = add nsw i64 %90, %86
  %arrayidx28.i.i.us.us.2 = getelementptr inbounds float, float* %21, i64 %91
  %92 = load float, float* %arrayidx28.i.i.us.us.2, align 4, !tbaa !12
  %93 = tail call float @llvm.fmuladd.f32(float %89, float %92, float %87) #2
  store float %93, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %30
  br i1 %exitcond.not.i.i.us.us.2, label %if.end.i.i.us.us.2.loopexit, label %for.body.i.i.us.us.2, !llvm.loop !19

if.end.i.i.us.us.2.loopexit:                      ; preds = %for.body.i.i.us.us.2
  br label %if.end.i.i.us.us.2

if.end.i.i.us.us.2:                               ; preds = %if.end.i.i.us.us.2.loopexit, %pregion_for_entry.entry.i.i.us.us.2
  %94 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %94, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %cmp.i.i.us.us.2.1 = icmp sgt i32 %13, %conv.i.i.us.us.2.1
  br i1 %cmp.i.i.us.us.2.1, label %if.then.i.i.us.us.2.1, label %if.end.i.i.us.us.2.1

pregion_for_end.i.i.us.2.loopexit:                ; preds = %if.end.i.i.us.us.2.1
  br label %pregion_for_end.i.i.us.2

pregion_for_end.i.i.us.2:                         ; preds = %pregion_for_end.i.i.us.2.loopexit, %pregion_for_end.i.i.us.1
  %95 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %95, 3
  %cmp4.i.i.us.3 = icmp sgt i32 %9, %conv2.i.i.us.3
  %reass.add.i.i.us.3 = add i32 %mul6.i.i, %conv2.i.i.us.3
  %reass.mul.i.i.us.3 = mul i32 %reass.add.i.i.us.3, %13
  %96 = sext i32 %reass.mul.i.i.us.3 to i64
  br i1 %cmp4.i.i.us.3, label %pregion_for_entry.entry.i.i.us.us.3.preheader, label %pregion_for_end.i.i.us.3

pregion_for_entry.entry.i.i.us.us.3.preheader:    ; preds = %pregion_for_end.i.i.us.2
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %if.end.i.i.us.us.3.1, %pregion_for_entry.entry.i.i.us.us.3.preheader
  %_local_id_x.i.0.us.us.3 = phi i64 [ %194, %if.end.i.i.us.us.3.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3.preheader ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %cmp.i.i.us.us.3 = icmp sgt i32 %13, %conv.i.i.us.us.3
  br i1 %cmp.i.i.us.us.3, label %if.then.i.i.us.us.3, label %if.end.i.i.us.us.3

if.then.i.i.us.us.3:                              ; preds = %pregion_for_entry.entry.i.i.us.us.3
  %add8.i.i.us.us.3 = add nsw i32 %reass.mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add8.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %97 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %if.then.i.i.us.us.3
  %indvars.iv.next.i.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %if.then.i.i.us.us.3 ]
  %98 = phi float [ %104, %for.body.i.i.us.us.3 ], [ 0.000000e+00, %if.then.i.i.us.us.3 ]
  %99 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %96
  %arrayidx24.i.i.us.us.3 = getelementptr inbounds float, float* %17, i64 %99
  %100 = load float, float* %arrayidx24.i.i.us.us.3, align 4, !tbaa !12
  %101 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.3, %30
  %102 = add nsw i64 %101, %97
  %arrayidx28.i.i.us.us.3 = getelementptr inbounds float, float* %21, i64 %102
  %103 = load float, float* %arrayidx28.i.i.us.us.3, align 4, !tbaa !12
  %104 = tail call float @llvm.fmuladd.f32(float %100, float %103, float %98) #2
  store float %104, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %30
  br i1 %exitcond.not.i.i.us.us.3, label %if.end.i.i.us.us.3.loopexit, label %for.body.i.i.us.us.3, !llvm.loop !19

if.end.i.i.us.us.3.loopexit:                      ; preds = %for.body.i.i.us.us.3
  br label %if.end.i.i.us.us.3

if.end.i.i.us.us.3:                               ; preds = %if.end.i.i.us.us.3.loopexit, %pregion_for_entry.entry.i.i.us.us.3
  %105 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %105, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %cmp.i.i.us.us.3.1 = icmp sgt i32 %13, %conv.i.i.us.us.3.1
  br i1 %cmp.i.i.us.us.3.1, label %if.then.i.i.us.us.3.1, label %if.end.i.i.us.us.3.1

pregion_for_end.i.i.us.3.loopexit:                ; preds = %if.end.i.i.us.us.3.1
  br label %pregion_for_end.i.i.us.3

pregion_for_end.i.i.us.3:                         ; preds = %pregion_for_end.i.i.us.3.loopexit, %pregion_for_end.i.i.us.2
  %106 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %106, 4
  %cmp4.i.i.us.4 = icmp sgt i32 %9, %conv2.i.i.us.4
  %reass.add.i.i.us.4 = add i32 %mul6.i.i, %conv2.i.i.us.4
  %reass.mul.i.i.us.4 = mul i32 %reass.add.i.i.us.4, %13
  %107 = sext i32 %reass.mul.i.i.us.4 to i64
  br i1 %cmp4.i.i.us.4, label %pregion_for_entry.entry.i.i.us.us.4.preheader, label %pregion_for_end.i.i.us.4

pregion_for_entry.entry.i.i.us.us.4.preheader:    ; preds = %pregion_for_end.i.i.us.3
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %if.end.i.i.us.us.4.1, %pregion_for_entry.entry.i.i.us.us.4.preheader
  %_local_id_x.i.0.us.us.4 = phi i64 [ %185, %if.end.i.i.us.us.4.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4.preheader ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %cmp.i.i.us.us.4 = icmp sgt i32 %13, %conv.i.i.us.us.4
  br i1 %cmp.i.i.us.us.4, label %if.then.i.i.us.us.4, label %if.end.i.i.us.us.4

if.then.i.i.us.us.4:                              ; preds = %pregion_for_entry.entry.i.i.us.us.4
  %add8.i.i.us.us.4 = add nsw i32 %reass.mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add8.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %108 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %if.then.i.i.us.us.4
  %indvars.iv.next.i.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %if.then.i.i.us.us.4 ]
  %109 = phi float [ %115, %for.body.i.i.us.us.4 ], [ 0.000000e+00, %if.then.i.i.us.us.4 ]
  %110 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %107
  %arrayidx24.i.i.us.us.4 = getelementptr inbounds float, float* %17, i64 %110
  %111 = load float, float* %arrayidx24.i.i.us.us.4, align 4, !tbaa !12
  %112 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.4, %30
  %113 = add nsw i64 %112, %108
  %arrayidx28.i.i.us.us.4 = getelementptr inbounds float, float* %21, i64 %113
  %114 = load float, float* %arrayidx28.i.i.us.us.4, align 4, !tbaa !12
  %115 = tail call float @llvm.fmuladd.f32(float %111, float %114, float %109) #2
  store float %115, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %30
  br i1 %exitcond.not.i.i.us.us.4, label %if.end.i.i.us.us.4.loopexit, label %for.body.i.i.us.us.4, !llvm.loop !19

if.end.i.i.us.us.4.loopexit:                      ; preds = %for.body.i.i.us.us.4
  br label %if.end.i.i.us.us.4

if.end.i.i.us.us.4:                               ; preds = %if.end.i.i.us.us.4.loopexit, %pregion_for_entry.entry.i.i.us.us.4
  %116 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %116, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %cmp.i.i.us.us.4.1 = icmp sgt i32 %13, %conv.i.i.us.us.4.1
  br i1 %cmp.i.i.us.us.4.1, label %if.then.i.i.us.us.4.1, label %if.end.i.i.us.us.4.1

pregion_for_end.i.i.us.4.loopexit:                ; preds = %if.end.i.i.us.us.4.1
  br label %pregion_for_end.i.i.us.4

pregion_for_end.i.i.us.4:                         ; preds = %pregion_for_end.i.i.us.4.loopexit, %pregion_for_end.i.i.us.3
  %117 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %117, 5
  %cmp4.i.i.us.5 = icmp sgt i32 %9, %conv2.i.i.us.5
  %reass.add.i.i.us.5 = add i32 %mul6.i.i, %conv2.i.i.us.5
  %reass.mul.i.i.us.5 = mul i32 %reass.add.i.i.us.5, %13
  %118 = sext i32 %reass.mul.i.i.us.5 to i64
  br i1 %cmp4.i.i.us.5, label %pregion_for_entry.entry.i.i.us.us.5.preheader, label %pregion_for_end.i.i.us.5

pregion_for_entry.entry.i.i.us.us.5.preheader:    ; preds = %pregion_for_end.i.i.us.4
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %if.end.i.i.us.us.5.1, %pregion_for_entry.entry.i.i.us.us.5.preheader
  %_local_id_x.i.0.us.us.5 = phi i64 [ %176, %if.end.i.i.us.us.5.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5.preheader ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %cmp.i.i.us.us.5 = icmp sgt i32 %13, %conv.i.i.us.us.5
  br i1 %cmp.i.i.us.us.5, label %if.then.i.i.us.us.5, label %if.end.i.i.us.us.5

if.then.i.i.us.us.5:                              ; preds = %pregion_for_entry.entry.i.i.us.us.5
  %add8.i.i.us.us.5 = add nsw i32 %reass.mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add8.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %119 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %if.then.i.i.us.us.5
  %indvars.iv.next.i.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %if.then.i.i.us.us.5 ]
  %120 = phi float [ %126, %for.body.i.i.us.us.5 ], [ 0.000000e+00, %if.then.i.i.us.us.5 ]
  %121 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %118
  %arrayidx24.i.i.us.us.5 = getelementptr inbounds float, float* %17, i64 %121
  %122 = load float, float* %arrayidx24.i.i.us.us.5, align 4, !tbaa !12
  %123 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.5, %30
  %124 = add nsw i64 %123, %119
  %arrayidx28.i.i.us.us.5 = getelementptr inbounds float, float* %21, i64 %124
  %125 = load float, float* %arrayidx28.i.i.us.us.5, align 4, !tbaa !12
  %126 = tail call float @llvm.fmuladd.f32(float %122, float %125, float %120) #2
  store float %126, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %30
  br i1 %exitcond.not.i.i.us.us.5, label %if.end.i.i.us.us.5.loopexit, label %for.body.i.i.us.us.5, !llvm.loop !19

if.end.i.i.us.us.5.loopexit:                      ; preds = %for.body.i.i.us.us.5
  br label %if.end.i.i.us.us.5

if.end.i.i.us.us.5:                               ; preds = %if.end.i.i.us.us.5.loopexit, %pregion_for_entry.entry.i.i.us.us.5
  %127 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %127, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %cmp.i.i.us.us.5.1 = icmp sgt i32 %13, %conv.i.i.us.us.5.1
  br i1 %cmp.i.i.us.us.5.1, label %if.then.i.i.us.us.5.1, label %if.end.i.i.us.us.5.1

pregion_for_end.i.i.us.5.loopexit:                ; preds = %if.end.i.i.us.us.5.1
  br label %pregion_for_end.i.i.us.5

pregion_for_end.i.i.us.5:                         ; preds = %pregion_for_end.i.i.us.5.loopexit, %pregion_for_end.i.i.us.4
  %128 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %128, 6
  %cmp4.i.i.us.6 = icmp sgt i32 %9, %conv2.i.i.us.6
  %reass.add.i.i.us.6 = add i32 %mul6.i.i, %conv2.i.i.us.6
  %reass.mul.i.i.us.6 = mul i32 %reass.add.i.i.us.6, %13
  %129 = sext i32 %reass.mul.i.i.us.6 to i64
  br i1 %cmp4.i.i.us.6, label %pregion_for_entry.entry.i.i.us.us.6.preheader, label %pregion_for_end.i.i.us.6

pregion_for_entry.entry.i.i.us.us.6.preheader:    ; preds = %pregion_for_end.i.i.us.5
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %if.end.i.i.us.us.6.1, %pregion_for_entry.entry.i.i.us.us.6.preheader
  %_local_id_x.i.0.us.us.6 = phi i64 [ %167, %if.end.i.i.us.us.6.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6.preheader ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %cmp.i.i.us.us.6 = icmp sgt i32 %13, %conv.i.i.us.us.6
  br i1 %cmp.i.i.us.us.6, label %if.then.i.i.us.us.6, label %if.end.i.i.us.us.6

if.then.i.i.us.us.6:                              ; preds = %pregion_for_entry.entry.i.i.us.us.6
  %add8.i.i.us.us.6 = add nsw i32 %reass.mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add8.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %130 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %if.then.i.i.us.us.6
  %indvars.iv.next.i.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %if.then.i.i.us.us.6 ]
  %131 = phi float [ %137, %for.body.i.i.us.us.6 ], [ 0.000000e+00, %if.then.i.i.us.us.6 ]
  %132 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %129
  %arrayidx24.i.i.us.us.6 = getelementptr inbounds float, float* %17, i64 %132
  %133 = load float, float* %arrayidx24.i.i.us.us.6, align 4, !tbaa !12
  %134 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.6, %30
  %135 = add nsw i64 %134, %130
  %arrayidx28.i.i.us.us.6 = getelementptr inbounds float, float* %21, i64 %135
  %136 = load float, float* %arrayidx28.i.i.us.us.6, align 4, !tbaa !12
  %137 = tail call float @llvm.fmuladd.f32(float %133, float %136, float %131) #2
  store float %137, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %30
  br i1 %exitcond.not.i.i.us.us.6, label %if.end.i.i.us.us.6.loopexit, label %for.body.i.i.us.us.6, !llvm.loop !19

if.end.i.i.us.us.6.loopexit:                      ; preds = %for.body.i.i.us.us.6
  br label %if.end.i.i.us.us.6

if.end.i.i.us.us.6:                               ; preds = %if.end.i.i.us.us.6.loopexit, %pregion_for_entry.entry.i.i.us.us.6
  %138 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %138, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %cmp.i.i.us.us.6.1 = icmp sgt i32 %13, %conv.i.i.us.us.6.1
  br i1 %cmp.i.i.us.us.6.1, label %if.then.i.i.us.us.6.1, label %if.end.i.i.us.us.6.1

pregion_for_end.i.i.us.6.loopexit:                ; preds = %if.end.i.i.us.us.6.1
  br label %pregion_for_end.i.i.us.6

pregion_for_end.i.i.us.6:                         ; preds = %pregion_for_end.i.i.us.6.loopexit, %pregion_for_end.i.i.us.5
  %139 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %139, 7
  %cmp4.i.i.us.7 = icmp sgt i32 %9, %conv2.i.i.us.7
  %reass.add.i.i.us.7 = add i32 %mul6.i.i, %conv2.i.i.us.7
  %reass.mul.i.i.us.7 = mul i32 %reass.add.i.i.us.7, %13
  %140 = sext i32 %reass.mul.i.i.us.7 to i64
  br i1 %cmp4.i.i.us.7, label %pregion_for_entry.entry.i.i.us.us.7.preheader, label %_pocl_kernel_doitgen_kernel1.exit

pregion_for_entry.entry.i.i.us.us.7.preheader:    ; preds = %pregion_for_end.i.i.us.6
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %if.end.i.i.us.us.7.1, %pregion_for_entry.entry.i.i.us.us.7.preheader
  %_local_id_x.i.0.us.us.7 = phi i64 [ %158, %if.end.i.i.us.us.7.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7.preheader ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %cmp.i.i.us.us.7 = icmp sgt i32 %13, %conv.i.i.us.us.7
  br i1 %cmp.i.i.us.us.7, label %if.then.i.i.us.us.7, label %if.end.i.i.us.us.7

if.then.i.i.us.us.7:                              ; preds = %pregion_for_entry.entry.i.i.us.us.7
  %add8.i.i.us.us.7 = add nsw i32 %reass.mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add8.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %141 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %if.then.i.i.us.us.7
  %indvars.iv.next.i.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %if.then.i.i.us.us.7 ]
  %142 = phi float [ %148, %for.body.i.i.us.us.7 ], [ 0.000000e+00, %if.then.i.i.us.us.7 ]
  %143 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %140
  %arrayidx24.i.i.us.us.7 = getelementptr inbounds float, float* %17, i64 %143
  %144 = load float, float* %arrayidx24.i.i.us.us.7, align 4, !tbaa !12
  %145 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.7, %30
  %146 = add nsw i64 %145, %141
  %arrayidx28.i.i.us.us.7 = getelementptr inbounds float, float* %21, i64 %146
  %147 = load float, float* %arrayidx28.i.i.us.us.7, align 4, !tbaa !12
  %148 = tail call float @llvm.fmuladd.f32(float %144, float %147, float %142) #2
  store float %148, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %30
  br i1 %exitcond.not.i.i.us.us.7, label %if.end.i.i.us.us.7.loopexit, label %for.body.i.i.us.us.7, !llvm.loop !19

if.end.i.i.us.us.7.loopexit:                      ; preds = %for.body.i.i.us.us.7
  br label %if.end.i.i.us.us.7

if.end.i.i.us.us.7:                               ; preds = %if.end.i.i.us.us.7.loopexit, %pregion_for_entry.entry.i.i.us.us.7
  %149 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %149, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %cmp.i.i.us.us.7.1 = icmp sgt i32 %13, %conv.i.i.us.us.7.1
  br i1 %cmp.i.i.us.us.7.1, label %if.then.i.i.us.us.7.1, label %if.end.i.i.us.us.7.1

if.then.i.i.us.1:                                 ; preds = %if.end.i.i.us
  %add8.i.i.us.1 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.1
  %idxprom.i.i.us.1 = sext i32 %add8.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.then.i.i.us.1, %if.end.i.i.us
  br i1 %cmp.i.i.us.2, label %if.then.i.i.us.2, label %if.end.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %if.end.i.i.us.1
  %add8.i.i.us.2 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.2
  %idxprom.i.i.us.2 = sext i32 %add8.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2

if.end.i.i.us.2:                                  ; preds = %if.then.i.i.us.2, %if.end.i.i.us.1
  br i1 %cmp.i.i.us.3, label %if.then.i.i.us.3, label %if.end.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %if.end.i.i.us.2
  %add8.i.i.us.3 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.3
  %idxprom.i.i.us.3 = sext i32 %add8.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3

if.end.i.i.us.3:                                  ; preds = %if.then.i.i.us.3, %if.end.i.i.us.2
  br i1 %cmp.i.i.us.4, label %if.then.i.i.us.4, label %if.end.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %if.end.i.i.us.3
  %add8.i.i.us.4 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.4
  %idxprom.i.i.us.4 = sext i32 %add8.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4

if.end.i.i.us.4:                                  ; preds = %if.then.i.i.us.4, %if.end.i.i.us.3
  br i1 %cmp.i.i.us.5, label %if.then.i.i.us.5, label %if.end.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %if.end.i.i.us.4
  %add8.i.i.us.5 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.5
  %idxprom.i.i.us.5 = sext i32 %add8.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5

if.end.i.i.us.5:                                  ; preds = %if.then.i.i.us.5, %if.end.i.i.us.4
  br i1 %cmp.i.i.us.6, label %if.then.i.i.us.6, label %if.end.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %if.end.i.i.us.5
  %add8.i.i.us.6 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.6
  %idxprom.i.i.us.6 = sext i32 %add8.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6

if.end.i.i.us.6:                                  ; preds = %if.then.i.i.us.6, %if.end.i.i.us.5
  br i1 %cmp.i.i.us.7, label %if.then.i.i.us.7, label %if.end.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %if.end.i.i.us.6
  %add8.i.i.us.7 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.7
  %idxprom.i.i.us.7 = sext i32 %add8.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7

if.end.i.i.us.7:                                  ; preds = %if.then.i.i.us.7, %if.end.i.i.us.6
  br i1 %cmp.i.i.us.8, label %if.then.i.i.us.8, label %if.end.i.i.us.8

if.then.i.i.us.8:                                 ; preds = %if.end.i.i.us.7
  %add8.i.i.us.8 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.8
  %idxprom.i.i.us.8 = sext i32 %add8.i.i.us.8 to i64
  %arrayidx.i.i.us.8 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.8
  store float 0.000000e+00, float* %arrayidx.i.i.us.8, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.8

if.end.i.i.us.8:                                  ; preds = %if.then.i.i.us.8, %if.end.i.i.us.7
  br i1 %cmp.i.i.us.9, label %if.then.i.i.us.9, label %if.end.i.i.us.9

if.then.i.i.us.9:                                 ; preds = %if.end.i.i.us.8
  %add8.i.i.us.9 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.9
  %idxprom.i.i.us.9 = sext i32 %add8.i.i.us.9 to i64
  %arrayidx.i.i.us.9 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.9
  store float 0.000000e+00, float* %arrayidx.i.i.us.9, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.9

if.end.i.i.us.9:                                  ; preds = %if.then.i.i.us.9, %if.end.i.i.us.8
  br i1 %cmp.i.i.us.10, label %if.then.i.i.us.10, label %if.end.i.i.us.10

if.then.i.i.us.10:                                ; preds = %if.end.i.i.us.9
  %add8.i.i.us.10 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.10
  %idxprom.i.i.us.10 = sext i32 %add8.i.i.us.10 to i64
  %arrayidx.i.i.us.10 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.10
  store float 0.000000e+00, float* %arrayidx.i.i.us.10, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.10

if.end.i.i.us.10:                                 ; preds = %if.then.i.i.us.10, %if.end.i.i.us.9
  br i1 %cmp.i.i.us.11, label %if.then.i.i.us.11, label %if.end.i.i.us.11

if.then.i.i.us.11:                                ; preds = %if.end.i.i.us.10
  %add8.i.i.us.11 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.11
  %idxprom.i.i.us.11 = sext i32 %add8.i.i.us.11 to i64
  %arrayidx.i.i.us.11 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.11
  store float 0.000000e+00, float* %arrayidx.i.i.us.11, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.11

if.end.i.i.us.11:                                 ; preds = %if.then.i.i.us.11, %if.end.i.i.us.10
  br i1 %cmp.i.i.us.12, label %if.then.i.i.us.12, label %if.end.i.i.us.12

if.then.i.i.us.12:                                ; preds = %if.end.i.i.us.11
  %add8.i.i.us.12 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.12
  %idxprom.i.i.us.12 = sext i32 %add8.i.i.us.12 to i64
  %arrayidx.i.i.us.12 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.12
  store float 0.000000e+00, float* %arrayidx.i.i.us.12, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.12

if.end.i.i.us.12:                                 ; preds = %if.then.i.i.us.12, %if.end.i.i.us.11
  br i1 %cmp.i.i.us.13, label %if.then.i.i.us.13, label %if.end.i.i.us.13

if.then.i.i.us.13:                                ; preds = %if.end.i.i.us.12
  %add8.i.i.us.13 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.13
  %idxprom.i.i.us.13 = sext i32 %add8.i.i.us.13 to i64
  %arrayidx.i.i.us.13 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.13
  store float 0.000000e+00, float* %arrayidx.i.i.us.13, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.13

if.end.i.i.us.13:                                 ; preds = %if.then.i.i.us.13, %if.end.i.i.us.12
  br i1 %cmp.i.i.us.14, label %if.then.i.i.us.14, label %if.end.i.i.us.14

if.then.i.i.us.14:                                ; preds = %if.end.i.i.us.13
  %add8.i.i.us.14 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.14
  %idxprom.i.i.us.14 = sext i32 %add8.i.i.us.14 to i64
  %arrayidx.i.i.us.14 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.14
  store float 0.000000e+00, float* %arrayidx.i.i.us.14, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.14

if.end.i.i.us.14:                                 ; preds = %if.then.i.i.us.14, %if.end.i.i.us.13
  br i1 %cmp.i.i.us.15, label %if.then.i.i.us.15, label %if.end.i.i.us.15

if.then.i.i.us.15:                                ; preds = %if.end.i.i.us.14
  %add8.i.i.us.15 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.15
  %idxprom.i.i.us.15 = sext i32 %add8.i.i.us.15 to i64
  %arrayidx.i.i.us.15 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.15
  store float 0.000000e+00, float* %arrayidx.i.i.us.15, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.15

if.end.i.i.us.15:                                 ; preds = %if.then.i.i.us.15, %if.end.i.i.us.14
  br i1 %cmp.i.i.us.16, label %if.then.i.i.us.16, label %if.end.i.i.us.16

if.then.i.i.us.16:                                ; preds = %if.end.i.i.us.15
  %add8.i.i.us.16 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.16
  %idxprom.i.i.us.16 = sext i32 %add8.i.i.us.16 to i64
  %arrayidx.i.i.us.16 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.16
  store float 0.000000e+00, float* %arrayidx.i.i.us.16, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.16

if.end.i.i.us.16:                                 ; preds = %if.then.i.i.us.16, %if.end.i.i.us.15
  br i1 %cmp.i.i.us.17, label %if.then.i.i.us.17, label %if.end.i.i.us.17

if.then.i.i.us.17:                                ; preds = %if.end.i.i.us.16
  %add8.i.i.us.17 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.17
  %idxprom.i.i.us.17 = sext i32 %add8.i.i.us.17 to i64
  %arrayidx.i.i.us.17 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.17
  store float 0.000000e+00, float* %arrayidx.i.i.us.17, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.17

if.end.i.i.us.17:                                 ; preds = %if.then.i.i.us.17, %if.end.i.i.us.16
  br i1 %cmp.i.i.us.18, label %if.then.i.i.us.18, label %if.end.i.i.us.18

if.then.i.i.us.18:                                ; preds = %if.end.i.i.us.17
  %add8.i.i.us.18 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.18
  %idxprom.i.i.us.18 = sext i32 %add8.i.i.us.18 to i64
  %arrayidx.i.i.us.18 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.18
  store float 0.000000e+00, float* %arrayidx.i.i.us.18, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.18

if.end.i.i.us.18:                                 ; preds = %if.then.i.i.us.18, %if.end.i.i.us.17
  br i1 %cmp.i.i.us.19, label %if.then.i.i.us.19, label %if.end.i.i.us.19

if.then.i.i.us.19:                                ; preds = %if.end.i.i.us.18
  %add8.i.i.us.19 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.19
  %idxprom.i.i.us.19 = sext i32 %add8.i.i.us.19 to i64
  %arrayidx.i.i.us.19 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.19
  store float 0.000000e+00, float* %arrayidx.i.i.us.19, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.19

if.end.i.i.us.19:                                 ; preds = %if.then.i.i.us.19, %if.end.i.i.us.18
  br i1 %cmp.i.i.us.20, label %if.then.i.i.us.20, label %if.end.i.i.us.20

if.then.i.i.us.20:                                ; preds = %if.end.i.i.us.19
  %add8.i.i.us.20 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.20
  %idxprom.i.i.us.20 = sext i32 %add8.i.i.us.20 to i64
  %arrayidx.i.i.us.20 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.20
  store float 0.000000e+00, float* %arrayidx.i.i.us.20, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.20

if.end.i.i.us.20:                                 ; preds = %if.then.i.i.us.20, %if.end.i.i.us.19
  br i1 %cmp.i.i.us.21, label %if.then.i.i.us.21, label %if.end.i.i.us.21

if.then.i.i.us.21:                                ; preds = %if.end.i.i.us.20
  %add8.i.i.us.21 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.21
  %idxprom.i.i.us.21 = sext i32 %add8.i.i.us.21 to i64
  %arrayidx.i.i.us.21 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.21
  store float 0.000000e+00, float* %arrayidx.i.i.us.21, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.21

if.end.i.i.us.21:                                 ; preds = %if.then.i.i.us.21, %if.end.i.i.us.20
  br i1 %cmp.i.i.us.22, label %if.then.i.i.us.22, label %if.end.i.i.us.22

if.then.i.i.us.22:                                ; preds = %if.end.i.i.us.21
  %add8.i.i.us.22 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.22
  %idxprom.i.i.us.22 = sext i32 %add8.i.i.us.22 to i64
  %arrayidx.i.i.us.22 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.22
  store float 0.000000e+00, float* %arrayidx.i.i.us.22, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.22

if.end.i.i.us.22:                                 ; preds = %if.then.i.i.us.22, %if.end.i.i.us.21
  br i1 %cmp.i.i.us.23, label %if.then.i.i.us.23, label %if.end.i.i.us.23

if.then.i.i.us.23:                                ; preds = %if.end.i.i.us.22
  %add8.i.i.us.23 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.23
  %idxprom.i.i.us.23 = sext i32 %add8.i.i.us.23 to i64
  %arrayidx.i.i.us.23 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.23
  store float 0.000000e+00, float* %arrayidx.i.i.us.23, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.23

if.end.i.i.us.23:                                 ; preds = %if.then.i.i.us.23, %if.end.i.i.us.22
  br i1 %cmp.i.i.us.24, label %if.then.i.i.us.24, label %if.end.i.i.us.24

if.then.i.i.us.24:                                ; preds = %if.end.i.i.us.23
  %add8.i.i.us.24 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.24
  %idxprom.i.i.us.24 = sext i32 %add8.i.i.us.24 to i64
  %arrayidx.i.i.us.24 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.24
  store float 0.000000e+00, float* %arrayidx.i.i.us.24, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.24

if.end.i.i.us.24:                                 ; preds = %if.then.i.i.us.24, %if.end.i.i.us.23
  br i1 %cmp.i.i.us.25, label %if.then.i.i.us.25, label %if.end.i.i.us.25

if.then.i.i.us.25:                                ; preds = %if.end.i.i.us.24
  %add8.i.i.us.25 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.25
  %idxprom.i.i.us.25 = sext i32 %add8.i.i.us.25 to i64
  %arrayidx.i.i.us.25 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.25
  store float 0.000000e+00, float* %arrayidx.i.i.us.25, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.25

if.end.i.i.us.25:                                 ; preds = %if.then.i.i.us.25, %if.end.i.i.us.24
  br i1 %cmp.i.i.us.26, label %if.then.i.i.us.26, label %if.end.i.i.us.26

if.then.i.i.us.26:                                ; preds = %if.end.i.i.us.25
  %add8.i.i.us.26 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.26
  %idxprom.i.i.us.26 = sext i32 %add8.i.i.us.26 to i64
  %arrayidx.i.i.us.26 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.26
  store float 0.000000e+00, float* %arrayidx.i.i.us.26, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.26

if.end.i.i.us.26:                                 ; preds = %if.then.i.i.us.26, %if.end.i.i.us.25
  br i1 %cmp.i.i.us.27, label %if.then.i.i.us.27, label %if.end.i.i.us.27

if.then.i.i.us.27:                                ; preds = %if.end.i.i.us.26
  %add8.i.i.us.27 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.27
  %idxprom.i.i.us.27 = sext i32 %add8.i.i.us.27 to i64
  %arrayidx.i.i.us.27 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.27
  store float 0.000000e+00, float* %arrayidx.i.i.us.27, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.27

if.end.i.i.us.27:                                 ; preds = %if.then.i.i.us.27, %if.end.i.i.us.26
  br i1 %cmp.i.i.us.28, label %if.then.i.i.us.28, label %if.end.i.i.us.28

if.then.i.i.us.28:                                ; preds = %if.end.i.i.us.27
  %add8.i.i.us.28 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.28
  %idxprom.i.i.us.28 = sext i32 %add8.i.i.us.28 to i64
  %arrayidx.i.i.us.28 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.28
  store float 0.000000e+00, float* %arrayidx.i.i.us.28, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.28

if.end.i.i.us.28:                                 ; preds = %if.then.i.i.us.28, %if.end.i.i.us.27
  br i1 %cmp.i.i.us.29, label %if.then.i.i.us.29, label %if.end.i.i.us.29

if.then.i.i.us.29:                                ; preds = %if.end.i.i.us.28
  %add8.i.i.us.29 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.29
  %idxprom.i.i.us.29 = sext i32 %add8.i.i.us.29 to i64
  %arrayidx.i.i.us.29 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.29
  store float 0.000000e+00, float* %arrayidx.i.i.us.29, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.29

if.end.i.i.us.29:                                 ; preds = %if.then.i.i.us.29, %if.end.i.i.us.28
  br i1 %cmp.i.i.us.30, label %if.then.i.i.us.30, label %if.end.i.i.us.30

if.then.i.i.us.30:                                ; preds = %if.end.i.i.us.29
  %add8.i.i.us.30 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.30
  %idxprom.i.i.us.30 = sext i32 %add8.i.i.us.30 to i64
  %arrayidx.i.i.us.30 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.30
  store float 0.000000e+00, float* %arrayidx.i.i.us.30, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.30

if.end.i.i.us.30:                                 ; preds = %if.then.i.i.us.30, %if.end.i.i.us.29
  br i1 %cmp.i.i.us.31, label %if.then.i.i.us.31, label %pregion_for_end.i.i

if.then.i.i.us.31:                                ; preds = %if.end.i.i.us.30
  %add8.i.i.us.31 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.31
  %idxprom.i.i.us.31 = sext i32 %add8.i.i.us.31 to i64
  %arrayidx.i.i.us.31 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.31
  store float 0.000000e+00, float* %arrayidx.i.i.us.31, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

if.then.i.i.us.us.7.1:                            ; preds = %if.end.i.i.us.us.7
  %add8.i.i.us.us.7.1 = add nsw i32 %reass.mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add8.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7.1 = shl i64 %add1.i.i.i.us.us.7.1, 32
  %150 = ashr exact i64 %sext.i.i.us.us.7.1, 32
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %if.then.i.i.us.us.7.1
  %indvars.iv.next.i.i3.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %if.then.i.i.us.us.7.1 ]
  %151 = phi float [ %157, %for.body.i.i.us.us.7.1 ], [ 0.000000e+00, %if.then.i.i.us.us.7.1 ]
  %152 = add nsw i64 %indvars.iv.next.i.i3.us.us.7.1, %140
  %arrayidx24.i.i.us.us.7.1 = getelementptr inbounds float, float* %17, i64 %152
  %153 = load float, float* %arrayidx24.i.i.us.us.7.1, align 4, !tbaa !12
  %154 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.7.1, %30
  %155 = add nsw i64 %154, %150
  %arrayidx28.i.i.us.us.7.1 = getelementptr inbounds float, float* %21, i64 %155
  %156 = load float, float* %arrayidx28.i.i.us.us.7.1, align 4, !tbaa !12
  %157 = tail call float @llvm.fmuladd.f32(float %153, float %156, float %151) #2
  store float %157, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %30
  br i1 %exitcond.not.i.i.us.us.7.1, label %if.end.i.i.us.us.7.1.loopexit, label %for.body.i.i.us.us.7.1, !llvm.loop !19

if.end.i.i.us.us.7.1.loopexit:                    ; preds = %for.body.i.i.us.us.7.1
  br label %if.end.i.i.us.us.7.1

if.end.i.i.us.us.7.1:                             ; preds = %if.end.i.i.us.us.7.1.loopexit, %if.end.i.i.us.us.7
  %158 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %158, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_doitgen_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !23

if.then.i.i.us.us.6.1:                            ; preds = %if.end.i.i.us.us.6
  %add8.i.i.us.us.6.1 = add nsw i32 %reass.mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add8.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6.1 = shl i64 %add1.i.i.i.us.us.6.1, 32
  %159 = ashr exact i64 %sext.i.i.us.us.6.1, 32
  br label %for.body.i.i.us.us.6.1

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %if.then.i.i.us.us.6.1
  %indvars.iv.next.i.i3.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %if.then.i.i.us.us.6.1 ]
  %160 = phi float [ %166, %for.body.i.i.us.us.6.1 ], [ 0.000000e+00, %if.then.i.i.us.us.6.1 ]
  %161 = add nsw i64 %indvars.iv.next.i.i3.us.us.6.1, %129
  %arrayidx24.i.i.us.us.6.1 = getelementptr inbounds float, float* %17, i64 %161
  %162 = load float, float* %arrayidx24.i.i.us.us.6.1, align 4, !tbaa !12
  %163 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.6.1, %30
  %164 = add nsw i64 %163, %159
  %arrayidx28.i.i.us.us.6.1 = getelementptr inbounds float, float* %21, i64 %164
  %165 = load float, float* %arrayidx28.i.i.us.us.6.1, align 4, !tbaa !12
  %166 = tail call float @llvm.fmuladd.f32(float %162, float %165, float %160) #2
  store float %166, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %30
  br i1 %exitcond.not.i.i.us.us.6.1, label %if.end.i.i.us.us.6.1.loopexit, label %for.body.i.i.us.us.6.1, !llvm.loop !19

if.end.i.i.us.us.6.1.loopexit:                    ; preds = %for.body.i.i.us.us.6.1
  br label %if.end.i.i.us.us.6.1

if.end.i.i.us.us.6.1:                             ; preds = %if.end.i.i.us.us.6.1.loopexit, %if.end.i.i.us.us.6
  %167 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %167, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us.6.loopexit, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !23

if.then.i.i.us.us.5.1:                            ; preds = %if.end.i.i.us.us.5
  %add8.i.i.us.us.5.1 = add nsw i32 %reass.mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add8.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5.1 = shl i64 %add1.i.i.i.us.us.5.1, 32
  %168 = ashr exact i64 %sext.i.i.us.us.5.1, 32
  br label %for.body.i.i.us.us.5.1

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %if.then.i.i.us.us.5.1
  %indvars.iv.next.i.i3.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %if.then.i.i.us.us.5.1 ]
  %169 = phi float [ %175, %for.body.i.i.us.us.5.1 ], [ 0.000000e+00, %if.then.i.i.us.us.5.1 ]
  %170 = add nsw i64 %indvars.iv.next.i.i3.us.us.5.1, %118
  %arrayidx24.i.i.us.us.5.1 = getelementptr inbounds float, float* %17, i64 %170
  %171 = load float, float* %arrayidx24.i.i.us.us.5.1, align 4, !tbaa !12
  %172 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.5.1, %30
  %173 = add nsw i64 %172, %168
  %arrayidx28.i.i.us.us.5.1 = getelementptr inbounds float, float* %21, i64 %173
  %174 = load float, float* %arrayidx28.i.i.us.us.5.1, align 4, !tbaa !12
  %175 = tail call float @llvm.fmuladd.f32(float %171, float %174, float %169) #2
  store float %175, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %30
  br i1 %exitcond.not.i.i.us.us.5.1, label %if.end.i.i.us.us.5.1.loopexit, label %for.body.i.i.us.us.5.1, !llvm.loop !19

if.end.i.i.us.us.5.1.loopexit:                    ; preds = %for.body.i.i.us.us.5.1
  br label %if.end.i.i.us.us.5.1

if.end.i.i.us.us.5.1:                             ; preds = %if.end.i.i.us.us.5.1.loopexit, %if.end.i.i.us.us.5
  %176 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %176, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us.5.loopexit, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !23

if.then.i.i.us.us.4.1:                            ; preds = %if.end.i.i.us.us.4
  %add8.i.i.us.us.4.1 = add nsw i32 %reass.mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add8.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4.1 = shl i64 %add1.i.i.i.us.us.4.1, 32
  %177 = ashr exact i64 %sext.i.i.us.us.4.1, 32
  br label %for.body.i.i.us.us.4.1

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %if.then.i.i.us.us.4.1
  %indvars.iv.next.i.i3.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %if.then.i.i.us.us.4.1 ]
  %178 = phi float [ %184, %for.body.i.i.us.us.4.1 ], [ 0.000000e+00, %if.then.i.i.us.us.4.1 ]
  %179 = add nsw i64 %indvars.iv.next.i.i3.us.us.4.1, %107
  %arrayidx24.i.i.us.us.4.1 = getelementptr inbounds float, float* %17, i64 %179
  %180 = load float, float* %arrayidx24.i.i.us.us.4.1, align 4, !tbaa !12
  %181 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.4.1, %30
  %182 = add nsw i64 %181, %177
  %arrayidx28.i.i.us.us.4.1 = getelementptr inbounds float, float* %21, i64 %182
  %183 = load float, float* %arrayidx28.i.i.us.us.4.1, align 4, !tbaa !12
  %184 = tail call float @llvm.fmuladd.f32(float %180, float %183, float %178) #2
  store float %184, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %30
  br i1 %exitcond.not.i.i.us.us.4.1, label %if.end.i.i.us.us.4.1.loopexit, label %for.body.i.i.us.us.4.1, !llvm.loop !19

if.end.i.i.us.us.4.1.loopexit:                    ; preds = %for.body.i.i.us.us.4.1
  br label %if.end.i.i.us.us.4.1

if.end.i.i.us.us.4.1:                             ; preds = %if.end.i.i.us.us.4.1.loopexit, %if.end.i.i.us.us.4
  %185 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %185, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us.4.loopexit, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !23

if.then.i.i.us.us.3.1:                            ; preds = %if.end.i.i.us.us.3
  %add8.i.i.us.us.3.1 = add nsw i32 %reass.mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add8.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3.1 = shl i64 %add1.i.i.i.us.us.3.1, 32
  %186 = ashr exact i64 %sext.i.i.us.us.3.1, 32
  br label %for.body.i.i.us.us.3.1

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %if.then.i.i.us.us.3.1
  %indvars.iv.next.i.i3.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %if.then.i.i.us.us.3.1 ]
  %187 = phi float [ %193, %for.body.i.i.us.us.3.1 ], [ 0.000000e+00, %if.then.i.i.us.us.3.1 ]
  %188 = add nsw i64 %indvars.iv.next.i.i3.us.us.3.1, %96
  %arrayidx24.i.i.us.us.3.1 = getelementptr inbounds float, float* %17, i64 %188
  %189 = load float, float* %arrayidx24.i.i.us.us.3.1, align 4, !tbaa !12
  %190 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.3.1, %30
  %191 = add nsw i64 %190, %186
  %arrayidx28.i.i.us.us.3.1 = getelementptr inbounds float, float* %21, i64 %191
  %192 = load float, float* %arrayidx28.i.i.us.us.3.1, align 4, !tbaa !12
  %193 = tail call float @llvm.fmuladd.f32(float %189, float %192, float %187) #2
  store float %193, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %30
  br i1 %exitcond.not.i.i.us.us.3.1, label %if.end.i.i.us.us.3.1.loopexit, label %for.body.i.i.us.us.3.1, !llvm.loop !19

if.end.i.i.us.us.3.1.loopexit:                    ; preds = %for.body.i.i.us.us.3.1
  br label %if.end.i.i.us.us.3.1

if.end.i.i.us.us.3.1:                             ; preds = %if.end.i.i.us.us.3.1.loopexit, %if.end.i.i.us.us.3
  %194 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %194, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us.3.loopexit, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !23

if.then.i.i.us.us.2.1:                            ; preds = %if.end.i.i.us.us.2
  %add8.i.i.us.us.2.1 = add nsw i32 %reass.mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add8.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2.1 = shl i64 %add1.i.i.i.us.us.2.1, 32
  %195 = ashr exact i64 %sext.i.i.us.us.2.1, 32
  br label %for.body.i.i.us.us.2.1

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %if.then.i.i.us.us.2.1
  %indvars.iv.next.i.i3.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %if.then.i.i.us.us.2.1 ]
  %196 = phi float [ %202, %for.body.i.i.us.us.2.1 ], [ 0.000000e+00, %if.then.i.i.us.us.2.1 ]
  %197 = add nsw i64 %indvars.iv.next.i.i3.us.us.2.1, %85
  %arrayidx24.i.i.us.us.2.1 = getelementptr inbounds float, float* %17, i64 %197
  %198 = load float, float* %arrayidx24.i.i.us.us.2.1, align 4, !tbaa !12
  %199 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.2.1, %30
  %200 = add nsw i64 %199, %195
  %arrayidx28.i.i.us.us.2.1 = getelementptr inbounds float, float* %21, i64 %200
  %201 = load float, float* %arrayidx28.i.i.us.us.2.1, align 4, !tbaa !12
  %202 = tail call float @llvm.fmuladd.f32(float %198, float %201, float %196) #2
  store float %202, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %30
  br i1 %exitcond.not.i.i.us.us.2.1, label %if.end.i.i.us.us.2.1.loopexit, label %for.body.i.i.us.us.2.1, !llvm.loop !19

if.end.i.i.us.us.2.1.loopexit:                    ; preds = %for.body.i.i.us.us.2.1
  br label %if.end.i.i.us.us.2.1

if.end.i.i.us.us.2.1:                             ; preds = %if.end.i.i.us.us.2.1.loopexit, %if.end.i.i.us.us.2
  %203 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %203, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us.2.loopexit, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !23

if.then.i.i.us.us.1.1:                            ; preds = %if.end.i.i.us.us.1
  %add8.i.i.us.us.1.1 = add nsw i32 %reass.mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add8.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1.1 = shl i64 %add1.i.i.i.us.us.1.1, 32
  %204 = ashr exact i64 %sext.i.i.us.us.1.1, 32
  br label %for.body.i.i.us.us.1.1

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %if.then.i.i.us.us.1.1
  %indvars.iv.next.i.i3.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %if.then.i.i.us.us.1.1 ]
  %205 = phi float [ %211, %for.body.i.i.us.us.1.1 ], [ 0.000000e+00, %if.then.i.i.us.us.1.1 ]
  %206 = add nsw i64 %indvars.iv.next.i.i3.us.us.1.1, %64
  %arrayidx24.i.i.us.us.1.1 = getelementptr inbounds float, float* %17, i64 %206
  %207 = load float, float* %arrayidx24.i.i.us.us.1.1, align 4, !tbaa !12
  %208 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.1.1, %30
  %209 = add nsw i64 %208, %204
  %arrayidx28.i.i.us.us.1.1 = getelementptr inbounds float, float* %21, i64 %209
  %210 = load float, float* %arrayidx28.i.i.us.us.1.1, align 4, !tbaa !12
  %211 = tail call float @llvm.fmuladd.f32(float %207, float %210, float %205) #2
  store float %211, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %30
  br i1 %exitcond.not.i.i.us.us.1.1, label %if.end.i.i.us.us.1.1.loopexit, label %for.body.i.i.us.us.1.1, !llvm.loop !19

if.end.i.i.us.us.1.1.loopexit:                    ; preds = %for.body.i.i.us.us.1.1
  br label %if.end.i.i.us.us.1.1

if.end.i.i.us.us.1.1:                             ; preds = %if.end.i.i.us.us.1.1.loopexit, %if.end.i.i.us.us.1
  %212 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %212, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us.1.loopexit, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !23

if.then.i.i.us.us.146:                            ; preds = %if.end.i.i.us.us
  %add8.i.i.us.us.142 = add nsw i32 %reass.mul.i.i.us, %conv.i.i.us.us.139
  %idxprom.i.i.us.us.143 = sext i32 %add8.i.i.us.us.142 to i64
  %arrayidx.i.i.us.us.144 = getelementptr inbounds float, float* %25, i64 %idxprom.i.i.us.us.143
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.144, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.145 = shl i64 %add1.i.i.i.us.us.138, 32
  %213 = ashr exact i64 %sext.i.i.us.us.145, 32
  br label %for.body.i.i.us.us.152

for.body.i.i.us.us.152:                           ; preds = %for.body.i.i.us.us.152, %if.then.i.i.us.us.146
  %indvars.iv.next.i.i3.us.us.147 = phi i64 [ %indvars.iv.next.i.i.us.us.150, %for.body.i.i.us.us.152 ], [ 0, %if.then.i.i.us.us.146 ]
  %214 = phi float [ %220, %for.body.i.i.us.us.152 ], [ 0.000000e+00, %if.then.i.i.us.us.146 ]
  %215 = add nsw i64 %indvars.iv.next.i.i3.us.us.147, %62
  %arrayidx24.i.i.us.us.148 = getelementptr inbounds float, float* %17, i64 %215
  %216 = load float, float* %arrayidx24.i.i.us.us.148, align 4, !tbaa !12
  %217 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.147, %30
  %218 = add nsw i64 %217, %213
  %arrayidx28.i.i.us.us.149 = getelementptr inbounds float, float* %21, i64 %218
  %219 = load float, float* %arrayidx28.i.i.us.us.149, align 4, !tbaa !12
  %220 = tail call float @llvm.fmuladd.f32(float %216, float %219, float %214) #2
  store float %220, float* %arrayidx.i.i.us.us.144, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.150 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.147, 1
  %exitcond.not.i.i.us.us.151 = icmp eq i64 %indvars.iv.next.i.i.us.us.150, %30
  br i1 %exitcond.not.i.i.us.us.151, label %if.end.i.i.us.us.153.loopexit, label %for.body.i.i.us.us.152, !llvm.loop !19

if.end.i.i.us.us.153.loopexit:                    ; preds = %for.body.i.i.us.us.152
  br label %if.end.i.i.us.us.153

if.end.i.i.us.us.153:                             ; preds = %if.end.i.i.us.us.153.loopexit, %if.end.i.i.us.us
  %221 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %221, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us.loopexit, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !23
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
  %mul6.i.i = mul i32 %26, %9
  %cmp970.i.i = icmp sgt i32 %13, 0
  %27 = zext i32 %13 to i64
  br i1 %cmp970.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  %conv.i.i.us = trunc i64 %mul.i.i.i to i32
  %cmp.i.i.us = icmp sgt i32 %13, %conv.i.i.us
  %28 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.1 = or i32 %28, 1
  %cmp.i.i.us.1 = icmp sgt i32 %13, %conv.i.i.us.1
  %29 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.2 = or i32 %29, 2
  %cmp.i.i.us.2 = icmp sgt i32 %13, %conv.i.i.us.2
  %30 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.3 = or i32 %30, 3
  %cmp.i.i.us.3 = icmp sgt i32 %13, %conv.i.i.us.3
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.4 = or i32 %31, 4
  %cmp.i.i.us.4 = icmp sgt i32 %13, %conv.i.i.us.4
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.5 = or i32 %32, 5
  %cmp.i.i.us.5 = icmp sgt i32 %13, %conv.i.i.us.5
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.6 = or i32 %33, 6
  %cmp.i.i.us.6 = icmp sgt i32 %13, %conv.i.i.us.6
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.7 = or i32 %34, 7
  %cmp.i.i.us.7 = icmp sgt i32 %13, %conv.i.i.us.7
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.8 = or i32 %35, 8
  %cmp.i.i.us.8 = icmp sgt i32 %13, %conv.i.i.us.8
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.9 = or i32 %36, 9
  %cmp.i.i.us.9 = icmp sgt i32 %13, %conv.i.i.us.9
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.10 = or i32 %37, 10
  %cmp.i.i.us.10 = icmp sgt i32 %13, %conv.i.i.us.10
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.11 = or i32 %38, 11
  %cmp.i.i.us.11 = icmp sgt i32 %13, %conv.i.i.us.11
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.12 = or i32 %39, 12
  %cmp.i.i.us.12 = icmp sgt i32 %13, %conv.i.i.us.12
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.13 = or i32 %40, 13
  %cmp.i.i.us.13 = icmp sgt i32 %13, %conv.i.i.us.13
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.14 = or i32 %41, 14
  %cmp.i.i.us.14 = icmp sgt i32 %13, %conv.i.i.us.14
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.15 = or i32 %42, 15
  %cmp.i.i.us.15 = icmp sgt i32 %13, %conv.i.i.us.15
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.16 = or i32 %43, 16
  %cmp.i.i.us.16 = icmp sgt i32 %13, %conv.i.i.us.16
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.17 = or i32 %44, 17
  %cmp.i.i.us.17 = icmp sgt i32 %13, %conv.i.i.us.17
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.18 = or i32 %45, 18
  %cmp.i.i.us.18 = icmp sgt i32 %13, %conv.i.i.us.18
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.19 = or i32 %46, 19
  %cmp.i.i.us.19 = icmp sgt i32 %13, %conv.i.i.us.19
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.20 = or i32 %47, 20
  %cmp.i.i.us.20 = icmp sgt i32 %13, %conv.i.i.us.20
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.21 = or i32 %48, 21
  %cmp.i.i.us.21 = icmp sgt i32 %13, %conv.i.i.us.21
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.22 = or i32 %49, 22
  %cmp.i.i.us.22 = icmp sgt i32 %13, %conv.i.i.us.22
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.23 = or i32 %50, 23
  %cmp.i.i.us.23 = icmp sgt i32 %13, %conv.i.i.us.23
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.24 = or i32 %51, 24
  %cmp.i.i.us.24 = icmp sgt i32 %13, %conv.i.i.us.24
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.25 = or i32 %52, 25
  %cmp.i.i.us.25 = icmp sgt i32 %13, %conv.i.i.us.25
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.26 = or i32 %53, 26
  %cmp.i.i.us.26 = icmp sgt i32 %13, %conv.i.i.us.26
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.27 = or i32 %54, 27
  %cmp.i.i.us.27 = icmp sgt i32 %13, %conv.i.i.us.27
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.28 = or i32 %55, 28
  %cmp.i.i.us.28 = icmp sgt i32 %13, %conv.i.i.us.28
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.29 = or i32 %56, 29
  %cmp.i.i.us.29 = icmp sgt i32 %13, %conv.i.i.us.29
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.30 = or i32 %57, 30
  %cmp.i.i.us.30 = icmp sgt i32 %13, %conv.i.i.us.30
  %58 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.31 = or i32 %58, 31
  %cmp.i.i.us.31 = icmp sgt i32 %13, %conv.i.i.us.31
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %cmp4.i.i.us = icmp sgt i32 %9, %conv2.i.i.us
  %reass.add.i.i.us = add i32 %mul6.i.i, %conv2.i.i.us
  %reass.mul.i.i.us = mul i32 %reass.add.i.i.us, %13
  %59 = sext i32 %reass.mul.i.i.us to i64
  br i1 %cmp4.i.i.us, label %pregion_for_entry.entry.i.i.us.us.preheader, label %pregion_for_end.i.i.us

pregion_for_entry.entry.i.i.us.us.preheader:      ; preds = %pregion_for_entry.pregion_for_init.i.i.us.preheader
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_end.i.i.us.loopexit:                  ; preds = %if.end.i.i.us.us.153
  br label %pregion_for_end.i.i.us

pregion_for_end.i.i.us:                           ; preds = %pregion_for_end.i.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %60 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %60, 1
  %cmp4.i.i.us.1 = icmp sgt i32 %9, %conv2.i.i.us.1
  %reass.add.i.i.us.1 = add i32 %mul6.i.i, %conv2.i.i.us.1
  %reass.mul.i.i.us.1 = mul i32 %reass.add.i.i.us.1, %13
  %61 = sext i32 %reass.mul.i.i.us.1 to i64
  br i1 %cmp4.i.i.us.1, label %pregion_for_entry.entry.i.i.us.us.1.preheader, label %pregion_for_end.i.i.us.1

pregion_for_entry.entry.i.i.us.us.1.preheader:    ; preds = %pregion_for_end.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.entry.i.i.us.us:                ; preds = %if.end.i.i.us.us.153, %pregion_for_entry.entry.i.i.us.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ %218, %if.end.i.i.us.us.153 ], [ 0, %pregion_for_entry.entry.i.i.us.us.preheader ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %cmp.i.i.us.us = icmp sgt i32 %13, %conv.i.i.us.us
  br i1 %cmp.i.i.us.us, label %if.then.i.i.us.us, label %if.end.i.i.us.us

if.then.i.i.us.us:                                ; preds = %pregion_for_entry.entry.i.i.us.us
  %add8.i.i.us.us = add nsw i32 %reass.mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add8.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %62 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

if.end.i.i.us.us.loopexit:                        ; preds = %for.body.i.i.us.us
  br label %if.end.i.i.us.us

if.end.i.i.us.us:                                 ; preds = %if.end.i.i.us.us.loopexit, %pregion_for_entry.entry.i.i.us.us
  %63 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.138 = add nuw nsw i64 %63, %mul.i.i.i
  %conv.i.i.us.us.139 = trunc i64 %add1.i.i.i.us.us.138 to i32
  %cmp.i.i.us.us.140 = icmp sgt i32 %13, %conv.i.i.us.us.139
  br i1 %cmp.i.i.us.us.140, label %if.then.i.i.us.us.146, label %if.end.i.i.us.us.153

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %if.then.i.i.us.us
  %indvars.iv.next.i.i3.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %if.then.i.i.us.us ]
  %64 = phi float [ %70, %for.body.i.i.us.us ], [ 0.000000e+00, %if.then.i.i.us.us ]
  %65 = add nsw i64 %indvars.iv.next.i.i3.us.us, %59
  %arrayidx24.i.i.us.us = getelementptr inbounds float, float* %16, i64 %65
  %66 = load float, float* %arrayidx24.i.i.us.us, align 4, !tbaa !12
  %67 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us, %27
  %68 = add nsw i64 %67, %62
  %arrayidx28.i.i.us.us = getelementptr inbounds float, float* %19, i64 %68
  %69 = load float, float* %arrayidx28.i.i.us.us, align 4, !tbaa !12
  %70 = tail call float @llvm.fmuladd.f32(float %66, float %69, float %64) #2
  store float %70, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i3.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %27
  br i1 %exitcond.not.i.i.us.us, label %if.end.i.i.us.us.loopexit, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader
  %_local_id_y.i.0 = phi i64 [ %71, %pregion_for_end.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %cmp4.i.i = icmp sgt i32 %9, %conv2.i.i
  %reass.add.i.i = add i32 %mul6.i.i, %conv2.i.i
  %reass.mul.i.i = mul i32 %reass.add.i.i, %13
  br i1 %cmp4.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %pregion_for_entry.pregion_for_init.i.i
  br i1 %cmp.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us.preheader
  %add8.i.i.us = add nsw i32 %reass.mul.i.i, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add8.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  br i1 %cmp.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

pregion_for_end.i.i:                              ; preds = %if.then.i.i.us.31, %if.end.i.i.us.30, %pregion_for_entry.pregion_for_init.i.i
  %71 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond33.not = icmp eq i64 %71, 8
  br i1 %exitcond33.not, label %_pocl_kernel_doitgen_kernel1.exit.loopexit54, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !21

_pocl_kernel_doitgen_kernel1.exit.loopexit:       ; preds = %if.end.i.i.us.us.7.1
  br label %_pocl_kernel_doitgen_kernel1.exit

_pocl_kernel_doitgen_kernel1.exit.loopexit54:     ; preds = %pregion_for_end.i.i
  br label %_pocl_kernel_doitgen_kernel1.exit

_pocl_kernel_doitgen_kernel1.exit:                ; preds = %pregion_for_end.i.i.us.6, %_pocl_kernel_doitgen_kernel1.exit.loopexit54, %_pocl_kernel_doitgen_kernel1.exit.loopexit
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %if.end.i.i.us.us.1.1, %pregion_for_entry.entry.i.i.us.us.1.preheader
  %_local_id_x.i.0.us.us.1 = phi i64 [ %209, %if.end.i.i.us.us.1.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1.preheader ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %cmp.i.i.us.us.1 = icmp sgt i32 %13, %conv.i.i.us.us.1
  br i1 %cmp.i.i.us.us.1, label %if.then.i.i.us.us.1, label %if.end.i.i.us.us.1

if.then.i.i.us.us.1:                              ; preds = %pregion_for_entry.entry.i.i.us.us.1
  %add8.i.i.us.us.1 = add nsw i32 %reass.mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add8.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %72 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %if.then.i.i.us.us.1
  %indvars.iv.next.i.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %if.then.i.i.us.us.1 ]
  %73 = phi float [ %79, %for.body.i.i.us.us.1 ], [ 0.000000e+00, %if.then.i.i.us.us.1 ]
  %74 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %61
  %arrayidx24.i.i.us.us.1 = getelementptr inbounds float, float* %16, i64 %74
  %75 = load float, float* %arrayidx24.i.i.us.us.1, align 4, !tbaa !12
  %76 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.1, %27
  %77 = add nsw i64 %76, %72
  %arrayidx28.i.i.us.us.1 = getelementptr inbounds float, float* %19, i64 %77
  %78 = load float, float* %arrayidx28.i.i.us.us.1, align 4, !tbaa !12
  %79 = tail call float @llvm.fmuladd.f32(float %75, float %78, float %73) #2
  store float %79, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %27
  br i1 %exitcond.not.i.i.us.us.1, label %if.end.i.i.us.us.1.loopexit, label %for.body.i.i.us.us.1, !llvm.loop !19

if.end.i.i.us.us.1.loopexit:                      ; preds = %for.body.i.i.us.us.1
  br label %if.end.i.i.us.us.1

if.end.i.i.us.us.1:                               ; preds = %if.end.i.i.us.us.1.loopexit, %pregion_for_entry.entry.i.i.us.us.1
  %80 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %80, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %cmp.i.i.us.us.1.1 = icmp sgt i32 %13, %conv.i.i.us.us.1.1
  br i1 %cmp.i.i.us.us.1.1, label %if.then.i.i.us.us.1.1, label %if.end.i.i.us.us.1.1

pregion_for_end.i.i.us.1.loopexit:                ; preds = %if.end.i.i.us.us.1.1
  br label %pregion_for_end.i.i.us.1

pregion_for_end.i.i.us.1:                         ; preds = %pregion_for_end.i.i.us.1.loopexit, %pregion_for_end.i.i.us
  %81 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %81, 2
  %cmp4.i.i.us.2 = icmp sgt i32 %9, %conv2.i.i.us.2
  %reass.add.i.i.us.2 = add i32 %mul6.i.i, %conv2.i.i.us.2
  %reass.mul.i.i.us.2 = mul i32 %reass.add.i.i.us.2, %13
  %82 = sext i32 %reass.mul.i.i.us.2 to i64
  br i1 %cmp4.i.i.us.2, label %pregion_for_entry.entry.i.i.us.us.2.preheader, label %pregion_for_end.i.i.us.2

pregion_for_entry.entry.i.i.us.us.2.preheader:    ; preds = %pregion_for_end.i.i.us.1
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %if.end.i.i.us.us.2.1, %pregion_for_entry.entry.i.i.us.us.2.preheader
  %_local_id_x.i.0.us.us.2 = phi i64 [ %200, %if.end.i.i.us.us.2.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2.preheader ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %cmp.i.i.us.us.2 = icmp sgt i32 %13, %conv.i.i.us.us.2
  br i1 %cmp.i.i.us.us.2, label %if.then.i.i.us.us.2, label %if.end.i.i.us.us.2

if.then.i.i.us.us.2:                              ; preds = %pregion_for_entry.entry.i.i.us.us.2
  %add8.i.i.us.us.2 = add nsw i32 %reass.mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add8.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %83 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %if.then.i.i.us.us.2
  %indvars.iv.next.i.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %if.then.i.i.us.us.2 ]
  %84 = phi float [ %90, %for.body.i.i.us.us.2 ], [ 0.000000e+00, %if.then.i.i.us.us.2 ]
  %85 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %82
  %arrayidx24.i.i.us.us.2 = getelementptr inbounds float, float* %16, i64 %85
  %86 = load float, float* %arrayidx24.i.i.us.us.2, align 4, !tbaa !12
  %87 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.2, %27
  %88 = add nsw i64 %87, %83
  %arrayidx28.i.i.us.us.2 = getelementptr inbounds float, float* %19, i64 %88
  %89 = load float, float* %arrayidx28.i.i.us.us.2, align 4, !tbaa !12
  %90 = tail call float @llvm.fmuladd.f32(float %86, float %89, float %84) #2
  store float %90, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %27
  br i1 %exitcond.not.i.i.us.us.2, label %if.end.i.i.us.us.2.loopexit, label %for.body.i.i.us.us.2, !llvm.loop !19

if.end.i.i.us.us.2.loopexit:                      ; preds = %for.body.i.i.us.us.2
  br label %if.end.i.i.us.us.2

if.end.i.i.us.us.2:                               ; preds = %if.end.i.i.us.us.2.loopexit, %pregion_for_entry.entry.i.i.us.us.2
  %91 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %91, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %cmp.i.i.us.us.2.1 = icmp sgt i32 %13, %conv.i.i.us.us.2.1
  br i1 %cmp.i.i.us.us.2.1, label %if.then.i.i.us.us.2.1, label %if.end.i.i.us.us.2.1

pregion_for_end.i.i.us.2.loopexit:                ; preds = %if.end.i.i.us.us.2.1
  br label %pregion_for_end.i.i.us.2

pregion_for_end.i.i.us.2:                         ; preds = %pregion_for_end.i.i.us.2.loopexit, %pregion_for_end.i.i.us.1
  %92 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %92, 3
  %cmp4.i.i.us.3 = icmp sgt i32 %9, %conv2.i.i.us.3
  %reass.add.i.i.us.3 = add i32 %mul6.i.i, %conv2.i.i.us.3
  %reass.mul.i.i.us.3 = mul i32 %reass.add.i.i.us.3, %13
  %93 = sext i32 %reass.mul.i.i.us.3 to i64
  br i1 %cmp4.i.i.us.3, label %pregion_for_entry.entry.i.i.us.us.3.preheader, label %pregion_for_end.i.i.us.3

pregion_for_entry.entry.i.i.us.us.3.preheader:    ; preds = %pregion_for_end.i.i.us.2
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %if.end.i.i.us.us.3.1, %pregion_for_entry.entry.i.i.us.us.3.preheader
  %_local_id_x.i.0.us.us.3 = phi i64 [ %191, %if.end.i.i.us.us.3.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3.preheader ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %cmp.i.i.us.us.3 = icmp sgt i32 %13, %conv.i.i.us.us.3
  br i1 %cmp.i.i.us.us.3, label %if.then.i.i.us.us.3, label %if.end.i.i.us.us.3

if.then.i.i.us.us.3:                              ; preds = %pregion_for_entry.entry.i.i.us.us.3
  %add8.i.i.us.us.3 = add nsw i32 %reass.mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add8.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %94 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %if.then.i.i.us.us.3
  %indvars.iv.next.i.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %if.then.i.i.us.us.3 ]
  %95 = phi float [ %101, %for.body.i.i.us.us.3 ], [ 0.000000e+00, %if.then.i.i.us.us.3 ]
  %96 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %93
  %arrayidx24.i.i.us.us.3 = getelementptr inbounds float, float* %16, i64 %96
  %97 = load float, float* %arrayidx24.i.i.us.us.3, align 4, !tbaa !12
  %98 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.3, %27
  %99 = add nsw i64 %98, %94
  %arrayidx28.i.i.us.us.3 = getelementptr inbounds float, float* %19, i64 %99
  %100 = load float, float* %arrayidx28.i.i.us.us.3, align 4, !tbaa !12
  %101 = tail call float @llvm.fmuladd.f32(float %97, float %100, float %95) #2
  store float %101, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %27
  br i1 %exitcond.not.i.i.us.us.3, label %if.end.i.i.us.us.3.loopexit, label %for.body.i.i.us.us.3, !llvm.loop !19

if.end.i.i.us.us.3.loopexit:                      ; preds = %for.body.i.i.us.us.3
  br label %if.end.i.i.us.us.3

if.end.i.i.us.us.3:                               ; preds = %if.end.i.i.us.us.3.loopexit, %pregion_for_entry.entry.i.i.us.us.3
  %102 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %102, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %cmp.i.i.us.us.3.1 = icmp sgt i32 %13, %conv.i.i.us.us.3.1
  br i1 %cmp.i.i.us.us.3.1, label %if.then.i.i.us.us.3.1, label %if.end.i.i.us.us.3.1

pregion_for_end.i.i.us.3.loopexit:                ; preds = %if.end.i.i.us.us.3.1
  br label %pregion_for_end.i.i.us.3

pregion_for_end.i.i.us.3:                         ; preds = %pregion_for_end.i.i.us.3.loopexit, %pregion_for_end.i.i.us.2
  %103 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %103, 4
  %cmp4.i.i.us.4 = icmp sgt i32 %9, %conv2.i.i.us.4
  %reass.add.i.i.us.4 = add i32 %mul6.i.i, %conv2.i.i.us.4
  %reass.mul.i.i.us.4 = mul i32 %reass.add.i.i.us.4, %13
  %104 = sext i32 %reass.mul.i.i.us.4 to i64
  br i1 %cmp4.i.i.us.4, label %pregion_for_entry.entry.i.i.us.us.4.preheader, label %pregion_for_end.i.i.us.4

pregion_for_entry.entry.i.i.us.us.4.preheader:    ; preds = %pregion_for_end.i.i.us.3
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %if.end.i.i.us.us.4.1, %pregion_for_entry.entry.i.i.us.us.4.preheader
  %_local_id_x.i.0.us.us.4 = phi i64 [ %182, %if.end.i.i.us.us.4.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4.preheader ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %cmp.i.i.us.us.4 = icmp sgt i32 %13, %conv.i.i.us.us.4
  br i1 %cmp.i.i.us.us.4, label %if.then.i.i.us.us.4, label %if.end.i.i.us.us.4

if.then.i.i.us.us.4:                              ; preds = %pregion_for_entry.entry.i.i.us.us.4
  %add8.i.i.us.us.4 = add nsw i32 %reass.mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add8.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %105 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %if.then.i.i.us.us.4
  %indvars.iv.next.i.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %if.then.i.i.us.us.4 ]
  %106 = phi float [ %112, %for.body.i.i.us.us.4 ], [ 0.000000e+00, %if.then.i.i.us.us.4 ]
  %107 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %104
  %arrayidx24.i.i.us.us.4 = getelementptr inbounds float, float* %16, i64 %107
  %108 = load float, float* %arrayidx24.i.i.us.us.4, align 4, !tbaa !12
  %109 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.4, %27
  %110 = add nsw i64 %109, %105
  %arrayidx28.i.i.us.us.4 = getelementptr inbounds float, float* %19, i64 %110
  %111 = load float, float* %arrayidx28.i.i.us.us.4, align 4, !tbaa !12
  %112 = tail call float @llvm.fmuladd.f32(float %108, float %111, float %106) #2
  store float %112, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %27
  br i1 %exitcond.not.i.i.us.us.4, label %if.end.i.i.us.us.4.loopexit, label %for.body.i.i.us.us.4, !llvm.loop !19

if.end.i.i.us.us.4.loopexit:                      ; preds = %for.body.i.i.us.us.4
  br label %if.end.i.i.us.us.4

if.end.i.i.us.us.4:                               ; preds = %if.end.i.i.us.us.4.loopexit, %pregion_for_entry.entry.i.i.us.us.4
  %113 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %113, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %cmp.i.i.us.us.4.1 = icmp sgt i32 %13, %conv.i.i.us.us.4.1
  br i1 %cmp.i.i.us.us.4.1, label %if.then.i.i.us.us.4.1, label %if.end.i.i.us.us.4.1

pregion_for_end.i.i.us.4.loopexit:                ; preds = %if.end.i.i.us.us.4.1
  br label %pregion_for_end.i.i.us.4

pregion_for_end.i.i.us.4:                         ; preds = %pregion_for_end.i.i.us.4.loopexit, %pregion_for_end.i.i.us.3
  %114 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %114, 5
  %cmp4.i.i.us.5 = icmp sgt i32 %9, %conv2.i.i.us.5
  %reass.add.i.i.us.5 = add i32 %mul6.i.i, %conv2.i.i.us.5
  %reass.mul.i.i.us.5 = mul i32 %reass.add.i.i.us.5, %13
  %115 = sext i32 %reass.mul.i.i.us.5 to i64
  br i1 %cmp4.i.i.us.5, label %pregion_for_entry.entry.i.i.us.us.5.preheader, label %pregion_for_end.i.i.us.5

pregion_for_entry.entry.i.i.us.us.5.preheader:    ; preds = %pregion_for_end.i.i.us.4
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %if.end.i.i.us.us.5.1, %pregion_for_entry.entry.i.i.us.us.5.preheader
  %_local_id_x.i.0.us.us.5 = phi i64 [ %173, %if.end.i.i.us.us.5.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5.preheader ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %cmp.i.i.us.us.5 = icmp sgt i32 %13, %conv.i.i.us.us.5
  br i1 %cmp.i.i.us.us.5, label %if.then.i.i.us.us.5, label %if.end.i.i.us.us.5

if.then.i.i.us.us.5:                              ; preds = %pregion_for_entry.entry.i.i.us.us.5
  %add8.i.i.us.us.5 = add nsw i32 %reass.mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add8.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %116 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %if.then.i.i.us.us.5
  %indvars.iv.next.i.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %if.then.i.i.us.us.5 ]
  %117 = phi float [ %123, %for.body.i.i.us.us.5 ], [ 0.000000e+00, %if.then.i.i.us.us.5 ]
  %118 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %115
  %arrayidx24.i.i.us.us.5 = getelementptr inbounds float, float* %16, i64 %118
  %119 = load float, float* %arrayidx24.i.i.us.us.5, align 4, !tbaa !12
  %120 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.5, %27
  %121 = add nsw i64 %120, %116
  %arrayidx28.i.i.us.us.5 = getelementptr inbounds float, float* %19, i64 %121
  %122 = load float, float* %arrayidx28.i.i.us.us.5, align 4, !tbaa !12
  %123 = tail call float @llvm.fmuladd.f32(float %119, float %122, float %117) #2
  store float %123, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %27
  br i1 %exitcond.not.i.i.us.us.5, label %if.end.i.i.us.us.5.loopexit, label %for.body.i.i.us.us.5, !llvm.loop !19

if.end.i.i.us.us.5.loopexit:                      ; preds = %for.body.i.i.us.us.5
  br label %if.end.i.i.us.us.5

if.end.i.i.us.us.5:                               ; preds = %if.end.i.i.us.us.5.loopexit, %pregion_for_entry.entry.i.i.us.us.5
  %124 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %124, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %cmp.i.i.us.us.5.1 = icmp sgt i32 %13, %conv.i.i.us.us.5.1
  br i1 %cmp.i.i.us.us.5.1, label %if.then.i.i.us.us.5.1, label %if.end.i.i.us.us.5.1

pregion_for_end.i.i.us.5.loopexit:                ; preds = %if.end.i.i.us.us.5.1
  br label %pregion_for_end.i.i.us.5

pregion_for_end.i.i.us.5:                         ; preds = %pregion_for_end.i.i.us.5.loopexit, %pregion_for_end.i.i.us.4
  %125 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %125, 6
  %cmp4.i.i.us.6 = icmp sgt i32 %9, %conv2.i.i.us.6
  %reass.add.i.i.us.6 = add i32 %mul6.i.i, %conv2.i.i.us.6
  %reass.mul.i.i.us.6 = mul i32 %reass.add.i.i.us.6, %13
  %126 = sext i32 %reass.mul.i.i.us.6 to i64
  br i1 %cmp4.i.i.us.6, label %pregion_for_entry.entry.i.i.us.us.6.preheader, label %pregion_for_end.i.i.us.6

pregion_for_entry.entry.i.i.us.us.6.preheader:    ; preds = %pregion_for_end.i.i.us.5
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %if.end.i.i.us.us.6.1, %pregion_for_entry.entry.i.i.us.us.6.preheader
  %_local_id_x.i.0.us.us.6 = phi i64 [ %164, %if.end.i.i.us.us.6.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6.preheader ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %cmp.i.i.us.us.6 = icmp sgt i32 %13, %conv.i.i.us.us.6
  br i1 %cmp.i.i.us.us.6, label %if.then.i.i.us.us.6, label %if.end.i.i.us.us.6

if.then.i.i.us.us.6:                              ; preds = %pregion_for_entry.entry.i.i.us.us.6
  %add8.i.i.us.us.6 = add nsw i32 %reass.mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add8.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %127 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %if.then.i.i.us.us.6
  %indvars.iv.next.i.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %if.then.i.i.us.us.6 ]
  %128 = phi float [ %134, %for.body.i.i.us.us.6 ], [ 0.000000e+00, %if.then.i.i.us.us.6 ]
  %129 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %126
  %arrayidx24.i.i.us.us.6 = getelementptr inbounds float, float* %16, i64 %129
  %130 = load float, float* %arrayidx24.i.i.us.us.6, align 4, !tbaa !12
  %131 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.6, %27
  %132 = add nsw i64 %131, %127
  %arrayidx28.i.i.us.us.6 = getelementptr inbounds float, float* %19, i64 %132
  %133 = load float, float* %arrayidx28.i.i.us.us.6, align 4, !tbaa !12
  %134 = tail call float @llvm.fmuladd.f32(float %130, float %133, float %128) #2
  store float %134, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %27
  br i1 %exitcond.not.i.i.us.us.6, label %if.end.i.i.us.us.6.loopexit, label %for.body.i.i.us.us.6, !llvm.loop !19

if.end.i.i.us.us.6.loopexit:                      ; preds = %for.body.i.i.us.us.6
  br label %if.end.i.i.us.us.6

if.end.i.i.us.us.6:                               ; preds = %if.end.i.i.us.us.6.loopexit, %pregion_for_entry.entry.i.i.us.us.6
  %135 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %135, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %cmp.i.i.us.us.6.1 = icmp sgt i32 %13, %conv.i.i.us.us.6.1
  br i1 %cmp.i.i.us.us.6.1, label %if.then.i.i.us.us.6.1, label %if.end.i.i.us.us.6.1

pregion_for_end.i.i.us.6.loopexit:                ; preds = %if.end.i.i.us.us.6.1
  br label %pregion_for_end.i.i.us.6

pregion_for_end.i.i.us.6:                         ; preds = %pregion_for_end.i.i.us.6.loopexit, %pregion_for_end.i.i.us.5
  %136 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %136, 7
  %cmp4.i.i.us.7 = icmp sgt i32 %9, %conv2.i.i.us.7
  %reass.add.i.i.us.7 = add i32 %mul6.i.i, %conv2.i.i.us.7
  %reass.mul.i.i.us.7 = mul i32 %reass.add.i.i.us.7, %13
  %137 = sext i32 %reass.mul.i.i.us.7 to i64
  br i1 %cmp4.i.i.us.7, label %pregion_for_entry.entry.i.i.us.us.7.preheader, label %_pocl_kernel_doitgen_kernel1.exit

pregion_for_entry.entry.i.i.us.us.7.preheader:    ; preds = %pregion_for_end.i.i.us.6
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %if.end.i.i.us.us.7.1, %pregion_for_entry.entry.i.i.us.us.7.preheader
  %_local_id_x.i.0.us.us.7 = phi i64 [ %155, %if.end.i.i.us.us.7.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7.preheader ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %cmp.i.i.us.us.7 = icmp sgt i32 %13, %conv.i.i.us.us.7
  br i1 %cmp.i.i.us.us.7, label %if.then.i.i.us.us.7, label %if.end.i.i.us.us.7

if.then.i.i.us.us.7:                              ; preds = %pregion_for_entry.entry.i.i.us.us.7
  %add8.i.i.us.us.7 = add nsw i32 %reass.mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add8.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %138 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %if.then.i.i.us.us.7
  %indvars.iv.next.i.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %if.then.i.i.us.us.7 ]
  %139 = phi float [ %145, %for.body.i.i.us.us.7 ], [ 0.000000e+00, %if.then.i.i.us.us.7 ]
  %140 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %137
  %arrayidx24.i.i.us.us.7 = getelementptr inbounds float, float* %16, i64 %140
  %141 = load float, float* %arrayidx24.i.i.us.us.7, align 4, !tbaa !12
  %142 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.7, %27
  %143 = add nsw i64 %142, %138
  %arrayidx28.i.i.us.us.7 = getelementptr inbounds float, float* %19, i64 %143
  %144 = load float, float* %arrayidx28.i.i.us.us.7, align 4, !tbaa !12
  %145 = tail call float @llvm.fmuladd.f32(float %141, float %144, float %139) #2
  store float %145, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %27
  br i1 %exitcond.not.i.i.us.us.7, label %if.end.i.i.us.us.7.loopexit, label %for.body.i.i.us.us.7, !llvm.loop !19

if.end.i.i.us.us.7.loopexit:                      ; preds = %for.body.i.i.us.us.7
  br label %if.end.i.i.us.us.7

if.end.i.i.us.us.7:                               ; preds = %if.end.i.i.us.us.7.loopexit, %pregion_for_entry.entry.i.i.us.us.7
  %146 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %146, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %cmp.i.i.us.us.7.1 = icmp sgt i32 %13, %conv.i.i.us.us.7.1
  br i1 %cmp.i.i.us.us.7.1, label %if.then.i.i.us.us.7.1, label %if.end.i.i.us.us.7.1

if.then.i.i.us.1:                                 ; preds = %if.end.i.i.us
  %add8.i.i.us.1 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.1
  %idxprom.i.i.us.1 = sext i32 %add8.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.then.i.i.us.1, %if.end.i.i.us
  br i1 %cmp.i.i.us.2, label %if.then.i.i.us.2, label %if.end.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %if.end.i.i.us.1
  %add8.i.i.us.2 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.2
  %idxprom.i.i.us.2 = sext i32 %add8.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2

if.end.i.i.us.2:                                  ; preds = %if.then.i.i.us.2, %if.end.i.i.us.1
  br i1 %cmp.i.i.us.3, label %if.then.i.i.us.3, label %if.end.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %if.end.i.i.us.2
  %add8.i.i.us.3 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.3
  %idxprom.i.i.us.3 = sext i32 %add8.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3

if.end.i.i.us.3:                                  ; preds = %if.then.i.i.us.3, %if.end.i.i.us.2
  br i1 %cmp.i.i.us.4, label %if.then.i.i.us.4, label %if.end.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %if.end.i.i.us.3
  %add8.i.i.us.4 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.4
  %idxprom.i.i.us.4 = sext i32 %add8.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4

if.end.i.i.us.4:                                  ; preds = %if.then.i.i.us.4, %if.end.i.i.us.3
  br i1 %cmp.i.i.us.5, label %if.then.i.i.us.5, label %if.end.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %if.end.i.i.us.4
  %add8.i.i.us.5 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.5
  %idxprom.i.i.us.5 = sext i32 %add8.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5

if.end.i.i.us.5:                                  ; preds = %if.then.i.i.us.5, %if.end.i.i.us.4
  br i1 %cmp.i.i.us.6, label %if.then.i.i.us.6, label %if.end.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %if.end.i.i.us.5
  %add8.i.i.us.6 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.6
  %idxprom.i.i.us.6 = sext i32 %add8.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6

if.end.i.i.us.6:                                  ; preds = %if.then.i.i.us.6, %if.end.i.i.us.5
  br i1 %cmp.i.i.us.7, label %if.then.i.i.us.7, label %if.end.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %if.end.i.i.us.6
  %add8.i.i.us.7 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.7
  %idxprom.i.i.us.7 = sext i32 %add8.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7

if.end.i.i.us.7:                                  ; preds = %if.then.i.i.us.7, %if.end.i.i.us.6
  br i1 %cmp.i.i.us.8, label %if.then.i.i.us.8, label %if.end.i.i.us.8

if.then.i.i.us.8:                                 ; preds = %if.end.i.i.us.7
  %add8.i.i.us.8 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.8
  %idxprom.i.i.us.8 = sext i32 %add8.i.i.us.8 to i64
  %arrayidx.i.i.us.8 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.8
  store float 0.000000e+00, float* %arrayidx.i.i.us.8, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.8

if.end.i.i.us.8:                                  ; preds = %if.then.i.i.us.8, %if.end.i.i.us.7
  br i1 %cmp.i.i.us.9, label %if.then.i.i.us.9, label %if.end.i.i.us.9

if.then.i.i.us.9:                                 ; preds = %if.end.i.i.us.8
  %add8.i.i.us.9 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.9
  %idxprom.i.i.us.9 = sext i32 %add8.i.i.us.9 to i64
  %arrayidx.i.i.us.9 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.9
  store float 0.000000e+00, float* %arrayidx.i.i.us.9, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.9

if.end.i.i.us.9:                                  ; preds = %if.then.i.i.us.9, %if.end.i.i.us.8
  br i1 %cmp.i.i.us.10, label %if.then.i.i.us.10, label %if.end.i.i.us.10

if.then.i.i.us.10:                                ; preds = %if.end.i.i.us.9
  %add8.i.i.us.10 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.10
  %idxprom.i.i.us.10 = sext i32 %add8.i.i.us.10 to i64
  %arrayidx.i.i.us.10 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.10
  store float 0.000000e+00, float* %arrayidx.i.i.us.10, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.10

if.end.i.i.us.10:                                 ; preds = %if.then.i.i.us.10, %if.end.i.i.us.9
  br i1 %cmp.i.i.us.11, label %if.then.i.i.us.11, label %if.end.i.i.us.11

if.then.i.i.us.11:                                ; preds = %if.end.i.i.us.10
  %add8.i.i.us.11 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.11
  %idxprom.i.i.us.11 = sext i32 %add8.i.i.us.11 to i64
  %arrayidx.i.i.us.11 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.11
  store float 0.000000e+00, float* %arrayidx.i.i.us.11, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.11

if.end.i.i.us.11:                                 ; preds = %if.then.i.i.us.11, %if.end.i.i.us.10
  br i1 %cmp.i.i.us.12, label %if.then.i.i.us.12, label %if.end.i.i.us.12

if.then.i.i.us.12:                                ; preds = %if.end.i.i.us.11
  %add8.i.i.us.12 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.12
  %idxprom.i.i.us.12 = sext i32 %add8.i.i.us.12 to i64
  %arrayidx.i.i.us.12 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.12
  store float 0.000000e+00, float* %arrayidx.i.i.us.12, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.12

if.end.i.i.us.12:                                 ; preds = %if.then.i.i.us.12, %if.end.i.i.us.11
  br i1 %cmp.i.i.us.13, label %if.then.i.i.us.13, label %if.end.i.i.us.13

if.then.i.i.us.13:                                ; preds = %if.end.i.i.us.12
  %add8.i.i.us.13 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.13
  %idxprom.i.i.us.13 = sext i32 %add8.i.i.us.13 to i64
  %arrayidx.i.i.us.13 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.13
  store float 0.000000e+00, float* %arrayidx.i.i.us.13, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.13

if.end.i.i.us.13:                                 ; preds = %if.then.i.i.us.13, %if.end.i.i.us.12
  br i1 %cmp.i.i.us.14, label %if.then.i.i.us.14, label %if.end.i.i.us.14

if.then.i.i.us.14:                                ; preds = %if.end.i.i.us.13
  %add8.i.i.us.14 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.14
  %idxprom.i.i.us.14 = sext i32 %add8.i.i.us.14 to i64
  %arrayidx.i.i.us.14 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.14
  store float 0.000000e+00, float* %arrayidx.i.i.us.14, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.14

if.end.i.i.us.14:                                 ; preds = %if.then.i.i.us.14, %if.end.i.i.us.13
  br i1 %cmp.i.i.us.15, label %if.then.i.i.us.15, label %if.end.i.i.us.15

if.then.i.i.us.15:                                ; preds = %if.end.i.i.us.14
  %add8.i.i.us.15 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.15
  %idxprom.i.i.us.15 = sext i32 %add8.i.i.us.15 to i64
  %arrayidx.i.i.us.15 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.15
  store float 0.000000e+00, float* %arrayidx.i.i.us.15, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.15

if.end.i.i.us.15:                                 ; preds = %if.then.i.i.us.15, %if.end.i.i.us.14
  br i1 %cmp.i.i.us.16, label %if.then.i.i.us.16, label %if.end.i.i.us.16

if.then.i.i.us.16:                                ; preds = %if.end.i.i.us.15
  %add8.i.i.us.16 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.16
  %idxprom.i.i.us.16 = sext i32 %add8.i.i.us.16 to i64
  %arrayidx.i.i.us.16 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.16
  store float 0.000000e+00, float* %arrayidx.i.i.us.16, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.16

if.end.i.i.us.16:                                 ; preds = %if.then.i.i.us.16, %if.end.i.i.us.15
  br i1 %cmp.i.i.us.17, label %if.then.i.i.us.17, label %if.end.i.i.us.17

if.then.i.i.us.17:                                ; preds = %if.end.i.i.us.16
  %add8.i.i.us.17 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.17
  %idxprom.i.i.us.17 = sext i32 %add8.i.i.us.17 to i64
  %arrayidx.i.i.us.17 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.17
  store float 0.000000e+00, float* %arrayidx.i.i.us.17, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.17

if.end.i.i.us.17:                                 ; preds = %if.then.i.i.us.17, %if.end.i.i.us.16
  br i1 %cmp.i.i.us.18, label %if.then.i.i.us.18, label %if.end.i.i.us.18

if.then.i.i.us.18:                                ; preds = %if.end.i.i.us.17
  %add8.i.i.us.18 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.18
  %idxprom.i.i.us.18 = sext i32 %add8.i.i.us.18 to i64
  %arrayidx.i.i.us.18 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.18
  store float 0.000000e+00, float* %arrayidx.i.i.us.18, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.18

if.end.i.i.us.18:                                 ; preds = %if.then.i.i.us.18, %if.end.i.i.us.17
  br i1 %cmp.i.i.us.19, label %if.then.i.i.us.19, label %if.end.i.i.us.19

if.then.i.i.us.19:                                ; preds = %if.end.i.i.us.18
  %add8.i.i.us.19 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.19
  %idxprom.i.i.us.19 = sext i32 %add8.i.i.us.19 to i64
  %arrayidx.i.i.us.19 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.19
  store float 0.000000e+00, float* %arrayidx.i.i.us.19, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.19

if.end.i.i.us.19:                                 ; preds = %if.then.i.i.us.19, %if.end.i.i.us.18
  br i1 %cmp.i.i.us.20, label %if.then.i.i.us.20, label %if.end.i.i.us.20

if.then.i.i.us.20:                                ; preds = %if.end.i.i.us.19
  %add8.i.i.us.20 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.20
  %idxprom.i.i.us.20 = sext i32 %add8.i.i.us.20 to i64
  %arrayidx.i.i.us.20 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.20
  store float 0.000000e+00, float* %arrayidx.i.i.us.20, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.20

if.end.i.i.us.20:                                 ; preds = %if.then.i.i.us.20, %if.end.i.i.us.19
  br i1 %cmp.i.i.us.21, label %if.then.i.i.us.21, label %if.end.i.i.us.21

if.then.i.i.us.21:                                ; preds = %if.end.i.i.us.20
  %add8.i.i.us.21 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.21
  %idxprom.i.i.us.21 = sext i32 %add8.i.i.us.21 to i64
  %arrayidx.i.i.us.21 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.21
  store float 0.000000e+00, float* %arrayidx.i.i.us.21, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.21

if.end.i.i.us.21:                                 ; preds = %if.then.i.i.us.21, %if.end.i.i.us.20
  br i1 %cmp.i.i.us.22, label %if.then.i.i.us.22, label %if.end.i.i.us.22

if.then.i.i.us.22:                                ; preds = %if.end.i.i.us.21
  %add8.i.i.us.22 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.22
  %idxprom.i.i.us.22 = sext i32 %add8.i.i.us.22 to i64
  %arrayidx.i.i.us.22 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.22
  store float 0.000000e+00, float* %arrayidx.i.i.us.22, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.22

if.end.i.i.us.22:                                 ; preds = %if.then.i.i.us.22, %if.end.i.i.us.21
  br i1 %cmp.i.i.us.23, label %if.then.i.i.us.23, label %if.end.i.i.us.23

if.then.i.i.us.23:                                ; preds = %if.end.i.i.us.22
  %add8.i.i.us.23 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.23
  %idxprom.i.i.us.23 = sext i32 %add8.i.i.us.23 to i64
  %arrayidx.i.i.us.23 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.23
  store float 0.000000e+00, float* %arrayidx.i.i.us.23, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.23

if.end.i.i.us.23:                                 ; preds = %if.then.i.i.us.23, %if.end.i.i.us.22
  br i1 %cmp.i.i.us.24, label %if.then.i.i.us.24, label %if.end.i.i.us.24

if.then.i.i.us.24:                                ; preds = %if.end.i.i.us.23
  %add8.i.i.us.24 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.24
  %idxprom.i.i.us.24 = sext i32 %add8.i.i.us.24 to i64
  %arrayidx.i.i.us.24 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.24
  store float 0.000000e+00, float* %arrayidx.i.i.us.24, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.24

if.end.i.i.us.24:                                 ; preds = %if.then.i.i.us.24, %if.end.i.i.us.23
  br i1 %cmp.i.i.us.25, label %if.then.i.i.us.25, label %if.end.i.i.us.25

if.then.i.i.us.25:                                ; preds = %if.end.i.i.us.24
  %add8.i.i.us.25 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.25
  %idxprom.i.i.us.25 = sext i32 %add8.i.i.us.25 to i64
  %arrayidx.i.i.us.25 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.25
  store float 0.000000e+00, float* %arrayidx.i.i.us.25, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.25

if.end.i.i.us.25:                                 ; preds = %if.then.i.i.us.25, %if.end.i.i.us.24
  br i1 %cmp.i.i.us.26, label %if.then.i.i.us.26, label %if.end.i.i.us.26

if.then.i.i.us.26:                                ; preds = %if.end.i.i.us.25
  %add8.i.i.us.26 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.26
  %idxprom.i.i.us.26 = sext i32 %add8.i.i.us.26 to i64
  %arrayidx.i.i.us.26 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.26
  store float 0.000000e+00, float* %arrayidx.i.i.us.26, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.26

if.end.i.i.us.26:                                 ; preds = %if.then.i.i.us.26, %if.end.i.i.us.25
  br i1 %cmp.i.i.us.27, label %if.then.i.i.us.27, label %if.end.i.i.us.27

if.then.i.i.us.27:                                ; preds = %if.end.i.i.us.26
  %add8.i.i.us.27 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.27
  %idxprom.i.i.us.27 = sext i32 %add8.i.i.us.27 to i64
  %arrayidx.i.i.us.27 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.27
  store float 0.000000e+00, float* %arrayidx.i.i.us.27, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.27

if.end.i.i.us.27:                                 ; preds = %if.then.i.i.us.27, %if.end.i.i.us.26
  br i1 %cmp.i.i.us.28, label %if.then.i.i.us.28, label %if.end.i.i.us.28

if.then.i.i.us.28:                                ; preds = %if.end.i.i.us.27
  %add8.i.i.us.28 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.28
  %idxprom.i.i.us.28 = sext i32 %add8.i.i.us.28 to i64
  %arrayidx.i.i.us.28 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.28
  store float 0.000000e+00, float* %arrayidx.i.i.us.28, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.28

if.end.i.i.us.28:                                 ; preds = %if.then.i.i.us.28, %if.end.i.i.us.27
  br i1 %cmp.i.i.us.29, label %if.then.i.i.us.29, label %if.end.i.i.us.29

if.then.i.i.us.29:                                ; preds = %if.end.i.i.us.28
  %add8.i.i.us.29 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.29
  %idxprom.i.i.us.29 = sext i32 %add8.i.i.us.29 to i64
  %arrayidx.i.i.us.29 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.29
  store float 0.000000e+00, float* %arrayidx.i.i.us.29, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.29

if.end.i.i.us.29:                                 ; preds = %if.then.i.i.us.29, %if.end.i.i.us.28
  br i1 %cmp.i.i.us.30, label %if.then.i.i.us.30, label %if.end.i.i.us.30

if.then.i.i.us.30:                                ; preds = %if.end.i.i.us.29
  %add8.i.i.us.30 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.30
  %idxprom.i.i.us.30 = sext i32 %add8.i.i.us.30 to i64
  %arrayidx.i.i.us.30 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.30
  store float 0.000000e+00, float* %arrayidx.i.i.us.30, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.30

if.end.i.i.us.30:                                 ; preds = %if.then.i.i.us.30, %if.end.i.i.us.29
  br i1 %cmp.i.i.us.31, label %if.then.i.i.us.31, label %pregion_for_end.i.i

if.then.i.i.us.31:                                ; preds = %if.end.i.i.us.30
  %add8.i.i.us.31 = add nsw i32 %reass.mul.i.i, %conv.i.i.us.31
  %idxprom.i.i.us.31 = sext i32 %add8.i.i.us.31 to i64
  %arrayidx.i.i.us.31 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.31
  store float 0.000000e+00, float* %arrayidx.i.i.us.31, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

if.then.i.i.us.us.7.1:                            ; preds = %if.end.i.i.us.us.7
  %add8.i.i.us.us.7.1 = add nsw i32 %reass.mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add8.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7.1 = shl i64 %add1.i.i.i.us.us.7.1, 32
  %147 = ashr exact i64 %sext.i.i.us.us.7.1, 32
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %if.then.i.i.us.us.7.1
  %indvars.iv.next.i.i3.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %if.then.i.i.us.us.7.1 ]
  %148 = phi float [ %154, %for.body.i.i.us.us.7.1 ], [ 0.000000e+00, %if.then.i.i.us.us.7.1 ]
  %149 = add nsw i64 %indvars.iv.next.i.i3.us.us.7.1, %137
  %arrayidx24.i.i.us.us.7.1 = getelementptr inbounds float, float* %16, i64 %149
  %150 = load float, float* %arrayidx24.i.i.us.us.7.1, align 4, !tbaa !12
  %151 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.7.1, %27
  %152 = add nsw i64 %151, %147
  %arrayidx28.i.i.us.us.7.1 = getelementptr inbounds float, float* %19, i64 %152
  %153 = load float, float* %arrayidx28.i.i.us.us.7.1, align 4, !tbaa !12
  %154 = tail call float @llvm.fmuladd.f32(float %150, float %153, float %148) #2
  store float %154, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %27
  br i1 %exitcond.not.i.i.us.us.7.1, label %if.end.i.i.us.us.7.1.loopexit, label %for.body.i.i.us.us.7.1, !llvm.loop !19

if.end.i.i.us.us.7.1.loopexit:                    ; preds = %for.body.i.i.us.us.7.1
  br label %if.end.i.i.us.us.7.1

if.end.i.i.us.us.7.1:                             ; preds = %if.end.i.i.us.us.7.1.loopexit, %if.end.i.i.us.us.7
  %155 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %155, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_doitgen_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !23

if.then.i.i.us.us.6.1:                            ; preds = %if.end.i.i.us.us.6
  %add8.i.i.us.us.6.1 = add nsw i32 %reass.mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add8.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6.1 = shl i64 %add1.i.i.i.us.us.6.1, 32
  %156 = ashr exact i64 %sext.i.i.us.us.6.1, 32
  br label %for.body.i.i.us.us.6.1

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %if.then.i.i.us.us.6.1
  %indvars.iv.next.i.i3.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %if.then.i.i.us.us.6.1 ]
  %157 = phi float [ %163, %for.body.i.i.us.us.6.1 ], [ 0.000000e+00, %if.then.i.i.us.us.6.1 ]
  %158 = add nsw i64 %indvars.iv.next.i.i3.us.us.6.1, %126
  %arrayidx24.i.i.us.us.6.1 = getelementptr inbounds float, float* %16, i64 %158
  %159 = load float, float* %arrayidx24.i.i.us.us.6.1, align 4, !tbaa !12
  %160 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.6.1, %27
  %161 = add nsw i64 %160, %156
  %arrayidx28.i.i.us.us.6.1 = getelementptr inbounds float, float* %19, i64 %161
  %162 = load float, float* %arrayidx28.i.i.us.us.6.1, align 4, !tbaa !12
  %163 = tail call float @llvm.fmuladd.f32(float %159, float %162, float %157) #2
  store float %163, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %27
  br i1 %exitcond.not.i.i.us.us.6.1, label %if.end.i.i.us.us.6.1.loopexit, label %for.body.i.i.us.us.6.1, !llvm.loop !19

if.end.i.i.us.us.6.1.loopexit:                    ; preds = %for.body.i.i.us.us.6.1
  br label %if.end.i.i.us.us.6.1

if.end.i.i.us.us.6.1:                             ; preds = %if.end.i.i.us.us.6.1.loopexit, %if.end.i.i.us.us.6
  %164 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %164, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us.6.loopexit, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !23

if.then.i.i.us.us.5.1:                            ; preds = %if.end.i.i.us.us.5
  %add8.i.i.us.us.5.1 = add nsw i32 %reass.mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add8.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5.1 = shl i64 %add1.i.i.i.us.us.5.1, 32
  %165 = ashr exact i64 %sext.i.i.us.us.5.1, 32
  br label %for.body.i.i.us.us.5.1

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %if.then.i.i.us.us.5.1
  %indvars.iv.next.i.i3.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %if.then.i.i.us.us.5.1 ]
  %166 = phi float [ %172, %for.body.i.i.us.us.5.1 ], [ 0.000000e+00, %if.then.i.i.us.us.5.1 ]
  %167 = add nsw i64 %indvars.iv.next.i.i3.us.us.5.1, %115
  %arrayidx24.i.i.us.us.5.1 = getelementptr inbounds float, float* %16, i64 %167
  %168 = load float, float* %arrayidx24.i.i.us.us.5.1, align 4, !tbaa !12
  %169 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.5.1, %27
  %170 = add nsw i64 %169, %165
  %arrayidx28.i.i.us.us.5.1 = getelementptr inbounds float, float* %19, i64 %170
  %171 = load float, float* %arrayidx28.i.i.us.us.5.1, align 4, !tbaa !12
  %172 = tail call float @llvm.fmuladd.f32(float %168, float %171, float %166) #2
  store float %172, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %27
  br i1 %exitcond.not.i.i.us.us.5.1, label %if.end.i.i.us.us.5.1.loopexit, label %for.body.i.i.us.us.5.1, !llvm.loop !19

if.end.i.i.us.us.5.1.loopexit:                    ; preds = %for.body.i.i.us.us.5.1
  br label %if.end.i.i.us.us.5.1

if.end.i.i.us.us.5.1:                             ; preds = %if.end.i.i.us.us.5.1.loopexit, %if.end.i.i.us.us.5
  %173 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %173, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us.5.loopexit, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !23

if.then.i.i.us.us.4.1:                            ; preds = %if.end.i.i.us.us.4
  %add8.i.i.us.us.4.1 = add nsw i32 %reass.mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add8.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4.1 = shl i64 %add1.i.i.i.us.us.4.1, 32
  %174 = ashr exact i64 %sext.i.i.us.us.4.1, 32
  br label %for.body.i.i.us.us.4.1

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %if.then.i.i.us.us.4.1
  %indvars.iv.next.i.i3.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %if.then.i.i.us.us.4.1 ]
  %175 = phi float [ %181, %for.body.i.i.us.us.4.1 ], [ 0.000000e+00, %if.then.i.i.us.us.4.1 ]
  %176 = add nsw i64 %indvars.iv.next.i.i3.us.us.4.1, %104
  %arrayidx24.i.i.us.us.4.1 = getelementptr inbounds float, float* %16, i64 %176
  %177 = load float, float* %arrayidx24.i.i.us.us.4.1, align 4, !tbaa !12
  %178 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.4.1, %27
  %179 = add nsw i64 %178, %174
  %arrayidx28.i.i.us.us.4.1 = getelementptr inbounds float, float* %19, i64 %179
  %180 = load float, float* %arrayidx28.i.i.us.us.4.1, align 4, !tbaa !12
  %181 = tail call float @llvm.fmuladd.f32(float %177, float %180, float %175) #2
  store float %181, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %27
  br i1 %exitcond.not.i.i.us.us.4.1, label %if.end.i.i.us.us.4.1.loopexit, label %for.body.i.i.us.us.4.1, !llvm.loop !19

if.end.i.i.us.us.4.1.loopexit:                    ; preds = %for.body.i.i.us.us.4.1
  br label %if.end.i.i.us.us.4.1

if.end.i.i.us.us.4.1:                             ; preds = %if.end.i.i.us.us.4.1.loopexit, %if.end.i.i.us.us.4
  %182 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %182, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us.4.loopexit, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !23

if.then.i.i.us.us.3.1:                            ; preds = %if.end.i.i.us.us.3
  %add8.i.i.us.us.3.1 = add nsw i32 %reass.mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add8.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3.1 = shl i64 %add1.i.i.i.us.us.3.1, 32
  %183 = ashr exact i64 %sext.i.i.us.us.3.1, 32
  br label %for.body.i.i.us.us.3.1

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %if.then.i.i.us.us.3.1
  %indvars.iv.next.i.i3.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %if.then.i.i.us.us.3.1 ]
  %184 = phi float [ %190, %for.body.i.i.us.us.3.1 ], [ 0.000000e+00, %if.then.i.i.us.us.3.1 ]
  %185 = add nsw i64 %indvars.iv.next.i.i3.us.us.3.1, %93
  %arrayidx24.i.i.us.us.3.1 = getelementptr inbounds float, float* %16, i64 %185
  %186 = load float, float* %arrayidx24.i.i.us.us.3.1, align 4, !tbaa !12
  %187 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.3.1, %27
  %188 = add nsw i64 %187, %183
  %arrayidx28.i.i.us.us.3.1 = getelementptr inbounds float, float* %19, i64 %188
  %189 = load float, float* %arrayidx28.i.i.us.us.3.1, align 4, !tbaa !12
  %190 = tail call float @llvm.fmuladd.f32(float %186, float %189, float %184) #2
  store float %190, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %27
  br i1 %exitcond.not.i.i.us.us.3.1, label %if.end.i.i.us.us.3.1.loopexit, label %for.body.i.i.us.us.3.1, !llvm.loop !19

if.end.i.i.us.us.3.1.loopexit:                    ; preds = %for.body.i.i.us.us.3.1
  br label %if.end.i.i.us.us.3.1

if.end.i.i.us.us.3.1:                             ; preds = %if.end.i.i.us.us.3.1.loopexit, %if.end.i.i.us.us.3
  %191 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %191, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us.3.loopexit, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !23

if.then.i.i.us.us.2.1:                            ; preds = %if.end.i.i.us.us.2
  %add8.i.i.us.us.2.1 = add nsw i32 %reass.mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add8.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2.1 = shl i64 %add1.i.i.i.us.us.2.1, 32
  %192 = ashr exact i64 %sext.i.i.us.us.2.1, 32
  br label %for.body.i.i.us.us.2.1

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %if.then.i.i.us.us.2.1
  %indvars.iv.next.i.i3.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %if.then.i.i.us.us.2.1 ]
  %193 = phi float [ %199, %for.body.i.i.us.us.2.1 ], [ 0.000000e+00, %if.then.i.i.us.us.2.1 ]
  %194 = add nsw i64 %indvars.iv.next.i.i3.us.us.2.1, %82
  %arrayidx24.i.i.us.us.2.1 = getelementptr inbounds float, float* %16, i64 %194
  %195 = load float, float* %arrayidx24.i.i.us.us.2.1, align 4, !tbaa !12
  %196 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.2.1, %27
  %197 = add nsw i64 %196, %192
  %arrayidx28.i.i.us.us.2.1 = getelementptr inbounds float, float* %19, i64 %197
  %198 = load float, float* %arrayidx28.i.i.us.us.2.1, align 4, !tbaa !12
  %199 = tail call float @llvm.fmuladd.f32(float %195, float %198, float %193) #2
  store float %199, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %27
  br i1 %exitcond.not.i.i.us.us.2.1, label %if.end.i.i.us.us.2.1.loopexit, label %for.body.i.i.us.us.2.1, !llvm.loop !19

if.end.i.i.us.us.2.1.loopexit:                    ; preds = %for.body.i.i.us.us.2.1
  br label %if.end.i.i.us.us.2.1

if.end.i.i.us.us.2.1:                             ; preds = %if.end.i.i.us.us.2.1.loopexit, %if.end.i.i.us.us.2
  %200 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %200, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us.2.loopexit, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !23

if.then.i.i.us.us.1.1:                            ; preds = %if.end.i.i.us.us.1
  %add8.i.i.us.us.1.1 = add nsw i32 %reass.mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add8.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1.1 = shl i64 %add1.i.i.i.us.us.1.1, 32
  %201 = ashr exact i64 %sext.i.i.us.us.1.1, 32
  br label %for.body.i.i.us.us.1.1

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %if.then.i.i.us.us.1.1
  %indvars.iv.next.i.i3.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %if.then.i.i.us.us.1.1 ]
  %202 = phi float [ %208, %for.body.i.i.us.us.1.1 ], [ 0.000000e+00, %if.then.i.i.us.us.1.1 ]
  %203 = add nsw i64 %indvars.iv.next.i.i3.us.us.1.1, %61
  %arrayidx24.i.i.us.us.1.1 = getelementptr inbounds float, float* %16, i64 %203
  %204 = load float, float* %arrayidx24.i.i.us.us.1.1, align 4, !tbaa !12
  %205 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.1.1, %27
  %206 = add nsw i64 %205, %201
  %arrayidx28.i.i.us.us.1.1 = getelementptr inbounds float, float* %19, i64 %206
  %207 = load float, float* %arrayidx28.i.i.us.us.1.1, align 4, !tbaa !12
  %208 = tail call float @llvm.fmuladd.f32(float %204, float %207, float %202) #2
  store float %208, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %27
  br i1 %exitcond.not.i.i.us.us.1.1, label %if.end.i.i.us.us.1.1.loopexit, label %for.body.i.i.us.us.1.1, !llvm.loop !19

if.end.i.i.us.us.1.1.loopexit:                    ; preds = %for.body.i.i.us.us.1.1
  br label %if.end.i.i.us.us.1.1

if.end.i.i.us.us.1.1:                             ; preds = %if.end.i.i.us.us.1.1.loopexit, %if.end.i.i.us.us.1
  %209 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %209, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us.1.loopexit, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !23

if.then.i.i.us.us.146:                            ; preds = %if.end.i.i.us.us
  %add8.i.i.us.us.142 = add nsw i32 %reass.mul.i.i.us, %conv.i.i.us.us.139
  %idxprom.i.i.us.us.143 = sext i32 %add8.i.i.us.us.142 to i64
  %arrayidx.i.i.us.us.144 = getelementptr inbounds float, float* %22, i64 %idxprom.i.i.us.us.143
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.144, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.145 = shl i64 %add1.i.i.i.us.us.138, 32
  %210 = ashr exact i64 %sext.i.i.us.us.145, 32
  br label %for.body.i.i.us.us.152

for.body.i.i.us.us.152:                           ; preds = %for.body.i.i.us.us.152, %if.then.i.i.us.us.146
  %indvars.iv.next.i.i3.us.us.147 = phi i64 [ %indvars.iv.next.i.i.us.us.150, %for.body.i.i.us.us.152 ], [ 0, %if.then.i.i.us.us.146 ]
  %211 = phi float [ %217, %for.body.i.i.us.us.152 ], [ 0.000000e+00, %if.then.i.i.us.us.146 ]
  %212 = add nsw i64 %indvars.iv.next.i.i3.us.us.147, %59
  %arrayidx24.i.i.us.us.148 = getelementptr inbounds float, float* %16, i64 %212
  %213 = load float, float* %arrayidx24.i.i.us.us.148, align 4, !tbaa !12
  %214 = mul nuw nsw i64 %indvars.iv.next.i.i3.us.us.147, %27
  %215 = add nsw i64 %214, %210
  %arrayidx28.i.i.us.us.149 = getelementptr inbounds float, float* %19, i64 %215
  %216 = load float, float* %arrayidx28.i.i.us.us.149, align 4, !tbaa !12
  %217 = tail call float @llvm.fmuladd.f32(float %213, float %216, float %211) #2
  store float %217, float* %arrayidx.i.i.us.us.144, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.150 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.147, 1
  %exitcond.not.i.i.us.us.151 = icmp eq i64 %indvars.iv.next.i.i.us.us.150, %27
  br i1 %exitcond.not.i.i.us.us.151, label %if.end.i.i.us.us.153.loopexit, label %for.body.i.i.us.us.152, !llvm.loop !19

if.end.i.i.us.us.153.loopexit:                    ; preds = %for.body.i.i.us.us.152
  br label %if.end.i.i.us.us.153

if.end.i.i.us.us.153:                             ; preds = %if.end.i.i.us.us.153.loopexit, %if.end.i.i.us.us
  %218 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %218, 32
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
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.parallel_accesses", !18}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.parallel_accesses", !17}
