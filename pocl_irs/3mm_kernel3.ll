; ModuleID = './CF/DAJJACGEKBAPHIEIKFDOEEKGMOBCBEEPDHBEI/mm3_kernel3/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_mm3_kernel3(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, i32 %3, i32 %4, i32 %5, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %6, i64 %7, i64 %8, i64 %9) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %7, 5
  %mul3.i.i = shl i64 %8, 3
  %cmp638.i = icmp sgt i32 %5, 0
  %11 = sext i32 %4 to i64
  %wide.trip.count.i = zext i32 %5 to i64
  br i1 %cmp638.i, label %pregion_for_entry.pregion_for_init.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.preheader

pregion_for_entry.pregion_for_init.i.preheader:   ; preds = %10
  %conv.i.us = trunc i64 %mul.i.i to i32
  %cmp4.i.us = icmp slt i32 %conv.i.us, %4
  %12 = trunc i64 %mul.i.i to i32
  %conv.i.us.1 = or i32 %12, 1
  %cmp4.i.us.1 = icmp slt i32 %conv.i.us.1, %4
  %13 = trunc i64 %mul.i.i to i32
  %conv.i.us.2 = or i32 %13, 2
  %cmp4.i.us.2 = icmp slt i32 %conv.i.us.2, %4
  %14 = trunc i64 %mul.i.i to i32
  %conv.i.us.3 = or i32 %14, 3
  %cmp4.i.us.3 = icmp slt i32 %conv.i.us.3, %4
  %15 = trunc i64 %mul.i.i to i32
  %conv.i.us.4 = or i32 %15, 4
  %cmp4.i.us.4 = icmp slt i32 %conv.i.us.4, %4
  %16 = trunc i64 %mul.i.i to i32
  %conv.i.us.5 = or i32 %16, 5
  %cmp4.i.us.5 = icmp slt i32 %conv.i.us.5, %4
  %17 = trunc i64 %mul.i.i to i32
  %conv.i.us.6 = or i32 %17, 6
  %cmp4.i.us.6 = icmp slt i32 %conv.i.us.6, %4
  %18 = trunc i64 %mul.i.i to i32
  %conv.i.us.7 = or i32 %18, 7
  %cmp4.i.us.7 = icmp slt i32 %conv.i.us.7, %4
  %19 = trunc i64 %mul.i.i to i32
  %conv.i.us.8 = or i32 %19, 8
  %cmp4.i.us.8 = icmp slt i32 %conv.i.us.8, %4
  %20 = trunc i64 %mul.i.i to i32
  %conv.i.us.9 = or i32 %20, 9
  %cmp4.i.us.9 = icmp slt i32 %conv.i.us.9, %4
  %21 = trunc i64 %mul.i.i to i32
  %conv.i.us.10 = or i32 %21, 10
  %cmp4.i.us.10 = icmp slt i32 %conv.i.us.10, %4
  %22 = trunc i64 %mul.i.i to i32
  %conv.i.us.11 = or i32 %22, 11
  %cmp4.i.us.11 = icmp slt i32 %conv.i.us.11, %4
  %23 = trunc i64 %mul.i.i to i32
  %conv.i.us.12 = or i32 %23, 12
  %cmp4.i.us.12 = icmp slt i32 %conv.i.us.12, %4
  %24 = trunc i64 %mul.i.i to i32
  %conv.i.us.13 = or i32 %24, 13
  %cmp4.i.us.13 = icmp slt i32 %conv.i.us.13, %4
  %25 = trunc i64 %mul.i.i to i32
  %conv.i.us.14 = or i32 %25, 14
  %cmp4.i.us.14 = icmp slt i32 %conv.i.us.14, %4
  %26 = trunc i64 %mul.i.i to i32
  %conv.i.us.15 = or i32 %26, 15
  %cmp4.i.us.15 = icmp slt i32 %conv.i.us.15, %4
  %27 = trunc i64 %mul.i.i to i32
  %conv.i.us.16 = or i32 %27, 16
  %cmp4.i.us.16 = icmp slt i32 %conv.i.us.16, %4
  %28 = trunc i64 %mul.i.i to i32
  %conv.i.us.17 = or i32 %28, 17
  %cmp4.i.us.17 = icmp slt i32 %conv.i.us.17, %4
  %29 = trunc i64 %mul.i.i to i32
  %conv.i.us.18 = or i32 %29, 18
  %cmp4.i.us.18 = icmp slt i32 %conv.i.us.18, %4
  %30 = trunc i64 %mul.i.i to i32
  %conv.i.us.19 = or i32 %30, 19
  %cmp4.i.us.19 = icmp slt i32 %conv.i.us.19, %4
  %31 = trunc i64 %mul.i.i to i32
  %conv.i.us.20 = or i32 %31, 20
  %cmp4.i.us.20 = icmp slt i32 %conv.i.us.20, %4
  %32 = trunc i64 %mul.i.i to i32
  %conv.i.us.21 = or i32 %32, 21
  %cmp4.i.us.21 = icmp slt i32 %conv.i.us.21, %4
  %33 = trunc i64 %mul.i.i to i32
  %conv.i.us.22 = or i32 %33, 22
  %cmp4.i.us.22 = icmp slt i32 %conv.i.us.22, %4
  %34 = trunc i64 %mul.i.i to i32
  %conv.i.us.23 = or i32 %34, 23
  %cmp4.i.us.23 = icmp slt i32 %conv.i.us.23, %4
  %35 = trunc i64 %mul.i.i to i32
  %conv.i.us.24 = or i32 %35, 24
  %cmp4.i.us.24 = icmp slt i32 %conv.i.us.24, %4
  %36 = trunc i64 %mul.i.i to i32
  %conv.i.us.25 = or i32 %36, 25
  %cmp4.i.us.25 = icmp slt i32 %conv.i.us.25, %4
  %37 = trunc i64 %mul.i.i to i32
  %conv.i.us.26 = or i32 %37, 26
  %cmp4.i.us.26 = icmp slt i32 %conv.i.us.26, %4
  %38 = trunc i64 %mul.i.i to i32
  %conv.i.us.27 = or i32 %38, 27
  %cmp4.i.us.27 = icmp slt i32 %conv.i.us.27, %4
  %39 = trunc i64 %mul.i.i to i32
  %conv.i.us.28 = or i32 %39, 28
  %cmp4.i.us.28 = icmp slt i32 %conv.i.us.28, %4
  %40 = trunc i64 %mul.i.i to i32
  %conv.i.us.29 = or i32 %40, 29
  %cmp4.i.us.29 = icmp slt i32 %conv.i.us.29, %4
  %41 = trunc i64 %mul.i.i to i32
  %conv.i.us.30 = or i32 %41, 30
  %cmp4.i.us.30 = icmp slt i32 %conv.i.us.30, %4
  %42 = trunc i64 %mul.i.i to i32
  %conv.i.us.31 = or i32 %42, 31
  %cmp4.i.us.31 = icmp slt i32 %conv.i.us.31, %4
  br label %pregion_for_entry.pregion_for_init.i

pregion_for_entry.pregion_for_init.i.us.preheader: ; preds = %10
  %conv2.i.us = trunc i64 %mul3.i.i to i32
  %cmp.i.us = icmp slt i32 %conv2.i.us, %3
  %mul.i.us = mul nsw i32 %conv2.i.us, %4
  %mul8.i.us = mul nsw i32 %conv2.i.us, %5
  %43 = sext i32 %mul8.i.us to i64
  br i1 %cmp.i.us, label %pregion_for_entry.entry.i.us.us.preheader, label %pregion_for_end.i.us

pregion_for_entry.entry.i.us.us.preheader:        ; preds = %pregion_for_entry.pregion_for_init.i.us.preheader
  br label %pregion_for_entry.entry.i.us.us

pregion_for_end.i.us.loopexit:                    ; preds = %if.end.i.us.us.153
  br label %pregion_for_end.i.us

pregion_for_end.i.us:                             ; preds = %pregion_for_end.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.us.preheader
  %44 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.1 = or i32 %44, 1
  %cmp.i.us.1 = icmp slt i32 %conv2.i.us.1, %3
  %mul.i.us.1 = mul nsw i32 %conv2.i.us.1, %4
  %mul8.i.us.1 = mul nsw i32 %conv2.i.us.1, %5
  %45 = sext i32 %mul8.i.us.1 to i64
  br i1 %cmp.i.us.1, label %pregion_for_entry.entry.i.us.us.1.preheader, label %pregion_for_end.i.us.1

pregion_for_entry.entry.i.us.us.1.preheader:      ; preds = %pregion_for_end.i.us
  br label %pregion_for_entry.entry.i.us.us.1

pregion_for_entry.entry.i.us.us:                  ; preds = %if.end.i.us.us.153, %pregion_for_entry.entry.i.us.us.preheader
  %_local_id_x.0.us.us = phi i64 [ %202, %if.end.i.us.us.153 ], [ 0, %pregion_for_entry.entry.i.us.us.preheader ]
  %add1.i.i.us.us = add nuw nsw i64 %_local_id_x.0.us.us, %mul.i.i
  %conv.i.us.us = trunc i64 %add1.i.i.us.us to i32
  %cmp4.i.us.us = icmp slt i32 %conv.i.us.us, %4
  br i1 %cmp4.i.us.us, label %if.then.i.us.us, label %if.end.i.us.us

if.then.i.us.us:                                  ; preds = %pregion_for_entry.entry.i.us.us
  %add.i.us.us = add nsw i32 %mul.i.us, %conv.i.us.us
  %idxprom.i.us.us = sext i32 %add.i.us.us to i64
  %arrayidx.i.us.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us = shl i64 %add1.i.i.us.us, 32
  %46 = ashr exact i64 %sext.i.us.us, 32
  br label %for.body.i.us.us

if.end.i.us.us.loopexit:                          ; preds = %for.body.i.us.us
  br label %if.end.i.us.us

if.end.i.us.us:                                   ; preds = %if.end.i.us.us.loopexit, %pregion_for_entry.entry.i.us.us
  %47 = or i64 %_local_id_x.0.us.us, 1
  %add1.i.i.us.us.138 = add nuw nsw i64 %47, %mul.i.i
  %conv.i.us.us.139 = trunc i64 %add1.i.i.us.us.138 to i32
  %cmp4.i.us.us.140 = icmp slt i32 %conv.i.us.us.139, %4
  br i1 %cmp4.i.us.us.140, label %if.then.i.us.us.146, label %if.end.i.us.us.153

for.body.i.us.us:                                 ; preds = %for.body.i.us.us, %if.then.i.us.us
  %indvars.iv.next.i3.us.us = phi i64 [ %indvars.iv.next.i.us.us, %for.body.i.us.us ], [ 0, %if.then.i.us.us ]
  %48 = phi float [ %54, %for.body.i.us.us ], [ 0.000000e+00, %if.then.i.us.us ]
  %49 = add nsw i64 %indvars.iv.next.i3.us.us, %43
  %arrayidx11.i.us.us = getelementptr inbounds float, float* %0, i64 %49
  %50 = load float, float* %arrayidx11.i.us.us, align 4, !tbaa !12
  %51 = mul nsw i64 %indvars.iv.next.i3.us.us, %11
  %52 = add nsw i64 %51, %46
  %arrayidx15.i.us.us = getelementptr inbounds float, float* %1, i64 %52
  %53 = load float, float* %arrayidx15.i.us.us, align 4, !tbaa !12
  %54 = tail call float @llvm.fmuladd.f32(float %50, float %53, float %48) #2
  store float %54, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.next.i3.us.us, 1
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %if.end.i.us.us.loopexit, label %for.body.i.us.us, !llvm.loop !19

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_end.i, %pregion_for_entry.pregion_for_init.i.preheader
  %_local_id_y.0 = phi i64 [ %55, %pregion_for_end.i ], [ 0, %pregion_for_entry.pregion_for_init.i.preheader ]
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
  %arrayidx.i.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us
  store float 0.000000e+00, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us

if.end.i.us:                                      ; preds = %if.then.i.us, %pregion_for_entry.entry.i.us.preheader
  br i1 %cmp4.i.us.1, label %if.then.i.us.1, label %if.end.i.us.1

pregion_for_end.i:                                ; preds = %if.then.i.us.31, %if.end.i.us.30, %pregion_for_entry.pregion_for_init.i
  %55 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond33.not = icmp eq i64 %55, 8
  br i1 %exitcond33.not, label %mm3_kernel3.exit.loopexit54, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !21

mm3_kernel3.exit.loopexit:                        ; preds = %if.end.i.us.us.7.1
  br label %mm3_kernel3.exit

mm3_kernel3.exit.loopexit54:                      ; preds = %pregion_for_end.i
  br label %mm3_kernel3.exit

mm3_kernel3.exit:                                 ; preds = %pregion_for_end.i.us.6, %mm3_kernel3.exit.loopexit54, %mm3_kernel3.exit.loopexit
  ret void

pregion_for_entry.entry.i.us.us.1:                ; preds = %if.end.i.us.us.1.1, %pregion_for_entry.entry.i.us.us.1.preheader
  %_local_id_x.0.us.us.1 = phi i64 [ %193, %if.end.i.us.us.1.1 ], [ 0, %pregion_for_entry.entry.i.us.us.1.preheader ]
  %add1.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.0.us.us.1, %mul.i.i
  %conv.i.us.us.1 = trunc i64 %add1.i.i.us.us.1 to i32
  %cmp4.i.us.us.1 = icmp slt i32 %conv.i.us.us.1, %4
  br i1 %cmp4.i.us.us.1, label %if.then.i.us.us.1, label %if.end.i.us.us.1

if.then.i.us.us.1:                                ; preds = %pregion_for_entry.entry.i.us.us.1
  %add.i.us.us.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1
  %idxprom.i.us.us.1 = sext i32 %add.i.us.us.1 to i64
  %arrayidx.i.us.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1 = shl i64 %add1.i.i.us.us.1, 32
  %56 = ashr exact i64 %sext.i.us.us.1, 32
  br label %for.body.i.us.us.1

for.body.i.us.us.1:                               ; preds = %for.body.i.us.us.1, %if.then.i.us.us.1
  %indvars.iv.next.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1, %for.body.i.us.us.1 ], [ 0, %if.then.i.us.us.1 ]
  %57 = phi float [ %63, %for.body.i.us.us.1 ], [ 0.000000e+00, %if.then.i.us.us.1 ]
  %58 = add nsw i64 %indvars.iv.next.i3.us.us.1, %45
  %arrayidx11.i.us.us.1 = getelementptr inbounds float, float* %0, i64 %58
  %59 = load float, float* %arrayidx11.i.us.us.1, align 4, !tbaa !12
  %60 = mul nsw i64 %indvars.iv.next.i3.us.us.1, %11
  %61 = add nsw i64 %60, %56
  %arrayidx15.i.us.us.1 = getelementptr inbounds float, float* %1, i64 %61
  %62 = load float, float* %arrayidx15.i.us.us.1, align 4, !tbaa !12
  %63 = tail call float @llvm.fmuladd.f32(float %59, float %62, float %57) #2
  store float %63, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.1, 1
  %exitcond.not.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1, label %if.end.i.us.us.1.loopexit, label %for.body.i.us.us.1, !llvm.loop !19

if.end.i.us.us.1.loopexit:                        ; preds = %for.body.i.us.us.1
  br label %if.end.i.us.us.1

if.end.i.us.us.1:                                 ; preds = %if.end.i.us.us.1.loopexit, %pregion_for_entry.entry.i.us.us.1
  %64 = or i64 %_local_id_x.0.us.us.1, 1
  %add1.i.i.us.us.1.1 = add nuw nsw i64 %64, %mul.i.i
  %conv.i.us.us.1.1 = trunc i64 %add1.i.i.us.us.1.1 to i32
  %cmp4.i.us.us.1.1 = icmp slt i32 %conv.i.us.us.1.1, %4
  br i1 %cmp4.i.us.us.1.1, label %if.then.i.us.us.1.1, label %if.end.i.us.us.1.1

pregion_for_end.i.us.1.loopexit:                  ; preds = %if.end.i.us.us.1.1
  br label %pregion_for_end.i.us.1

pregion_for_end.i.us.1:                           ; preds = %pregion_for_end.i.us.1.loopexit, %pregion_for_end.i.us
  %65 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.2 = or i32 %65, 2
  %cmp.i.us.2 = icmp slt i32 %conv2.i.us.2, %3
  %mul.i.us.2 = mul nsw i32 %conv2.i.us.2, %4
  %mul8.i.us.2 = mul nsw i32 %conv2.i.us.2, %5
  %66 = sext i32 %mul8.i.us.2 to i64
  br i1 %cmp.i.us.2, label %pregion_for_entry.entry.i.us.us.2.preheader, label %pregion_for_end.i.us.2

pregion_for_entry.entry.i.us.us.2.preheader:      ; preds = %pregion_for_end.i.us.1
  br label %pregion_for_entry.entry.i.us.us.2

pregion_for_entry.entry.i.us.us.2:                ; preds = %if.end.i.us.us.2.1, %pregion_for_entry.entry.i.us.us.2.preheader
  %_local_id_x.0.us.us.2 = phi i64 [ %184, %if.end.i.us.us.2.1 ], [ 0, %pregion_for_entry.entry.i.us.us.2.preheader ]
  %add1.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.0.us.us.2, %mul.i.i
  %conv.i.us.us.2 = trunc i64 %add1.i.i.us.us.2 to i32
  %cmp4.i.us.us.2 = icmp slt i32 %conv.i.us.us.2, %4
  br i1 %cmp4.i.us.us.2, label %if.then.i.us.us.2, label %if.end.i.us.us.2

if.then.i.us.us.2:                                ; preds = %pregion_for_entry.entry.i.us.us.2
  %add.i.us.us.2 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2
  %idxprom.i.us.us.2 = sext i32 %add.i.us.us.2 to i64
  %arrayidx.i.us.us.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2 = shl i64 %add1.i.i.us.us.2, 32
  %67 = ashr exact i64 %sext.i.us.us.2, 32
  br label %for.body.i.us.us.2

for.body.i.us.us.2:                               ; preds = %for.body.i.us.us.2, %if.then.i.us.us.2
  %indvars.iv.next.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.us.us.2, %for.body.i.us.us.2 ], [ 0, %if.then.i.us.us.2 ]
  %68 = phi float [ %74, %for.body.i.us.us.2 ], [ 0.000000e+00, %if.then.i.us.us.2 ]
  %69 = add nsw i64 %indvars.iv.next.i3.us.us.2, %66
  %arrayidx11.i.us.us.2 = getelementptr inbounds float, float* %0, i64 %69
  %70 = load float, float* %arrayidx11.i.us.us.2, align 4, !tbaa !12
  %71 = mul nsw i64 %indvars.iv.next.i3.us.us.2, %11
  %72 = add nsw i64 %71, %67
  %arrayidx15.i.us.us.2 = getelementptr inbounds float, float* %1, i64 %72
  %73 = load float, float* %arrayidx15.i.us.us.2, align 4, !tbaa !12
  %74 = tail call float @llvm.fmuladd.f32(float %70, float %73, float %68) #2
  store float %74, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i3.us.us.2, 1
  %exitcond.not.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.us.us.2, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2, label %if.end.i.us.us.2.loopexit, label %for.body.i.us.us.2, !llvm.loop !19

if.end.i.us.us.2.loopexit:                        ; preds = %for.body.i.us.us.2
  br label %if.end.i.us.us.2

if.end.i.us.us.2:                                 ; preds = %if.end.i.us.us.2.loopexit, %pregion_for_entry.entry.i.us.us.2
  %75 = or i64 %_local_id_x.0.us.us.2, 1
  %add1.i.i.us.us.2.1 = add nuw nsw i64 %75, %mul.i.i
  %conv.i.us.us.2.1 = trunc i64 %add1.i.i.us.us.2.1 to i32
  %cmp4.i.us.us.2.1 = icmp slt i32 %conv.i.us.us.2.1, %4
  br i1 %cmp4.i.us.us.2.1, label %if.then.i.us.us.2.1, label %if.end.i.us.us.2.1

pregion_for_end.i.us.2.loopexit:                  ; preds = %if.end.i.us.us.2.1
  br label %pregion_for_end.i.us.2

pregion_for_end.i.us.2:                           ; preds = %pregion_for_end.i.us.2.loopexit, %pregion_for_end.i.us.1
  %76 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.3 = or i32 %76, 3
  %cmp.i.us.3 = icmp slt i32 %conv2.i.us.3, %3
  %mul.i.us.3 = mul nsw i32 %conv2.i.us.3, %4
  %mul8.i.us.3 = mul nsw i32 %conv2.i.us.3, %5
  %77 = sext i32 %mul8.i.us.3 to i64
  br i1 %cmp.i.us.3, label %pregion_for_entry.entry.i.us.us.3.preheader, label %pregion_for_end.i.us.3

pregion_for_entry.entry.i.us.us.3.preheader:      ; preds = %pregion_for_end.i.us.2
  br label %pregion_for_entry.entry.i.us.us.3

pregion_for_entry.entry.i.us.us.3:                ; preds = %if.end.i.us.us.3.1, %pregion_for_entry.entry.i.us.us.3.preheader
  %_local_id_x.0.us.us.3 = phi i64 [ %175, %if.end.i.us.us.3.1 ], [ 0, %pregion_for_entry.entry.i.us.us.3.preheader ]
  %add1.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.0.us.us.3, %mul.i.i
  %conv.i.us.us.3 = trunc i64 %add1.i.i.us.us.3 to i32
  %cmp4.i.us.us.3 = icmp slt i32 %conv.i.us.us.3, %4
  br i1 %cmp4.i.us.us.3, label %if.then.i.us.us.3, label %if.end.i.us.us.3

if.then.i.us.us.3:                                ; preds = %pregion_for_entry.entry.i.us.us.3
  %add.i.us.us.3 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3
  %idxprom.i.us.us.3 = sext i32 %add.i.us.us.3 to i64
  %arrayidx.i.us.us.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3 = shl i64 %add1.i.i.us.us.3, 32
  %78 = ashr exact i64 %sext.i.us.us.3, 32
  br label %for.body.i.us.us.3

for.body.i.us.us.3:                               ; preds = %for.body.i.us.us.3, %if.then.i.us.us.3
  %indvars.iv.next.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.us.us.3, %for.body.i.us.us.3 ], [ 0, %if.then.i.us.us.3 ]
  %79 = phi float [ %85, %for.body.i.us.us.3 ], [ 0.000000e+00, %if.then.i.us.us.3 ]
  %80 = add nsw i64 %indvars.iv.next.i3.us.us.3, %77
  %arrayidx11.i.us.us.3 = getelementptr inbounds float, float* %0, i64 %80
  %81 = load float, float* %arrayidx11.i.us.us.3, align 4, !tbaa !12
  %82 = mul nsw i64 %indvars.iv.next.i3.us.us.3, %11
  %83 = add nsw i64 %82, %78
  %arrayidx15.i.us.us.3 = getelementptr inbounds float, float* %1, i64 %83
  %84 = load float, float* %arrayidx15.i.us.us.3, align 4, !tbaa !12
  %85 = tail call float @llvm.fmuladd.f32(float %81, float %84, float %79) #2
  store float %85, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i3.us.us.3, 1
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3, label %if.end.i.us.us.3.loopexit, label %for.body.i.us.us.3, !llvm.loop !19

if.end.i.us.us.3.loopexit:                        ; preds = %for.body.i.us.us.3
  br label %if.end.i.us.us.3

if.end.i.us.us.3:                                 ; preds = %if.end.i.us.us.3.loopexit, %pregion_for_entry.entry.i.us.us.3
  %86 = or i64 %_local_id_x.0.us.us.3, 1
  %add1.i.i.us.us.3.1 = add nuw nsw i64 %86, %mul.i.i
  %conv.i.us.us.3.1 = trunc i64 %add1.i.i.us.us.3.1 to i32
  %cmp4.i.us.us.3.1 = icmp slt i32 %conv.i.us.us.3.1, %4
  br i1 %cmp4.i.us.us.3.1, label %if.then.i.us.us.3.1, label %if.end.i.us.us.3.1

pregion_for_end.i.us.3.loopexit:                  ; preds = %if.end.i.us.us.3.1
  br label %pregion_for_end.i.us.3

pregion_for_end.i.us.3:                           ; preds = %pregion_for_end.i.us.3.loopexit, %pregion_for_end.i.us.2
  %87 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.4 = or i32 %87, 4
  %cmp.i.us.4 = icmp slt i32 %conv2.i.us.4, %3
  %mul.i.us.4 = mul nsw i32 %conv2.i.us.4, %4
  %mul8.i.us.4 = mul nsw i32 %conv2.i.us.4, %5
  %88 = sext i32 %mul8.i.us.4 to i64
  br i1 %cmp.i.us.4, label %pregion_for_entry.entry.i.us.us.4.preheader, label %pregion_for_end.i.us.4

pregion_for_entry.entry.i.us.us.4.preheader:      ; preds = %pregion_for_end.i.us.3
  br label %pregion_for_entry.entry.i.us.us.4

pregion_for_entry.entry.i.us.us.4:                ; preds = %if.end.i.us.us.4.1, %pregion_for_entry.entry.i.us.us.4.preheader
  %_local_id_x.0.us.us.4 = phi i64 [ %166, %if.end.i.us.us.4.1 ], [ 0, %pregion_for_entry.entry.i.us.us.4.preheader ]
  %add1.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.0.us.us.4, %mul.i.i
  %conv.i.us.us.4 = trunc i64 %add1.i.i.us.us.4 to i32
  %cmp4.i.us.us.4 = icmp slt i32 %conv.i.us.us.4, %4
  br i1 %cmp4.i.us.us.4, label %if.then.i.us.us.4, label %if.end.i.us.us.4

if.then.i.us.us.4:                                ; preds = %pregion_for_entry.entry.i.us.us.4
  %add.i.us.us.4 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4
  %idxprom.i.us.us.4 = sext i32 %add.i.us.us.4 to i64
  %arrayidx.i.us.us.4 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4 = shl i64 %add1.i.i.us.us.4, 32
  %89 = ashr exact i64 %sext.i.us.us.4, 32
  br label %for.body.i.us.us.4

for.body.i.us.us.4:                               ; preds = %for.body.i.us.us.4, %if.then.i.us.us.4
  %indvars.iv.next.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.us.us.4, %for.body.i.us.us.4 ], [ 0, %if.then.i.us.us.4 ]
  %90 = phi float [ %96, %for.body.i.us.us.4 ], [ 0.000000e+00, %if.then.i.us.us.4 ]
  %91 = add nsw i64 %indvars.iv.next.i3.us.us.4, %88
  %arrayidx11.i.us.us.4 = getelementptr inbounds float, float* %0, i64 %91
  %92 = load float, float* %arrayidx11.i.us.us.4, align 4, !tbaa !12
  %93 = mul nsw i64 %indvars.iv.next.i3.us.us.4, %11
  %94 = add nsw i64 %93, %89
  %arrayidx15.i.us.us.4 = getelementptr inbounds float, float* %1, i64 %94
  %95 = load float, float* %arrayidx15.i.us.us.4, align 4, !tbaa !12
  %96 = tail call float @llvm.fmuladd.f32(float %92, float %95, float %90) #2
  store float %96, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i3.us.us.4, 1
  %exitcond.not.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.us.us.4, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4, label %if.end.i.us.us.4.loopexit, label %for.body.i.us.us.4, !llvm.loop !19

if.end.i.us.us.4.loopexit:                        ; preds = %for.body.i.us.us.4
  br label %if.end.i.us.us.4

if.end.i.us.us.4:                                 ; preds = %if.end.i.us.us.4.loopexit, %pregion_for_entry.entry.i.us.us.4
  %97 = or i64 %_local_id_x.0.us.us.4, 1
  %add1.i.i.us.us.4.1 = add nuw nsw i64 %97, %mul.i.i
  %conv.i.us.us.4.1 = trunc i64 %add1.i.i.us.us.4.1 to i32
  %cmp4.i.us.us.4.1 = icmp slt i32 %conv.i.us.us.4.1, %4
  br i1 %cmp4.i.us.us.4.1, label %if.then.i.us.us.4.1, label %if.end.i.us.us.4.1

pregion_for_end.i.us.4.loopexit:                  ; preds = %if.end.i.us.us.4.1
  br label %pregion_for_end.i.us.4

pregion_for_end.i.us.4:                           ; preds = %pregion_for_end.i.us.4.loopexit, %pregion_for_end.i.us.3
  %98 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.5 = or i32 %98, 5
  %cmp.i.us.5 = icmp slt i32 %conv2.i.us.5, %3
  %mul.i.us.5 = mul nsw i32 %conv2.i.us.5, %4
  %mul8.i.us.5 = mul nsw i32 %conv2.i.us.5, %5
  %99 = sext i32 %mul8.i.us.5 to i64
  br i1 %cmp.i.us.5, label %pregion_for_entry.entry.i.us.us.5.preheader, label %pregion_for_end.i.us.5

pregion_for_entry.entry.i.us.us.5.preheader:      ; preds = %pregion_for_end.i.us.4
  br label %pregion_for_entry.entry.i.us.us.5

pregion_for_entry.entry.i.us.us.5:                ; preds = %if.end.i.us.us.5.1, %pregion_for_entry.entry.i.us.us.5.preheader
  %_local_id_x.0.us.us.5 = phi i64 [ %157, %if.end.i.us.us.5.1 ], [ 0, %pregion_for_entry.entry.i.us.us.5.preheader ]
  %add1.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.0.us.us.5, %mul.i.i
  %conv.i.us.us.5 = trunc i64 %add1.i.i.us.us.5 to i32
  %cmp4.i.us.us.5 = icmp slt i32 %conv.i.us.us.5, %4
  br i1 %cmp4.i.us.us.5, label %if.then.i.us.us.5, label %if.end.i.us.us.5

if.then.i.us.us.5:                                ; preds = %pregion_for_entry.entry.i.us.us.5
  %add.i.us.us.5 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5
  %idxprom.i.us.us.5 = sext i32 %add.i.us.us.5 to i64
  %arrayidx.i.us.us.5 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5 = shl i64 %add1.i.i.us.us.5, 32
  %100 = ashr exact i64 %sext.i.us.us.5, 32
  br label %for.body.i.us.us.5

for.body.i.us.us.5:                               ; preds = %for.body.i.us.us.5, %if.then.i.us.us.5
  %indvars.iv.next.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.us.us.5, %for.body.i.us.us.5 ], [ 0, %if.then.i.us.us.5 ]
  %101 = phi float [ %107, %for.body.i.us.us.5 ], [ 0.000000e+00, %if.then.i.us.us.5 ]
  %102 = add nsw i64 %indvars.iv.next.i3.us.us.5, %99
  %arrayidx11.i.us.us.5 = getelementptr inbounds float, float* %0, i64 %102
  %103 = load float, float* %arrayidx11.i.us.us.5, align 4, !tbaa !12
  %104 = mul nsw i64 %indvars.iv.next.i3.us.us.5, %11
  %105 = add nsw i64 %104, %100
  %arrayidx15.i.us.us.5 = getelementptr inbounds float, float* %1, i64 %105
  %106 = load float, float* %arrayidx15.i.us.us.5, align 4, !tbaa !12
  %107 = tail call float @llvm.fmuladd.f32(float %103, float %106, float %101) #2
  store float %107, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i3.us.us.5, 1
  %exitcond.not.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.us.us.5, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5, label %if.end.i.us.us.5.loopexit, label %for.body.i.us.us.5, !llvm.loop !19

if.end.i.us.us.5.loopexit:                        ; preds = %for.body.i.us.us.5
  br label %if.end.i.us.us.5

if.end.i.us.us.5:                                 ; preds = %if.end.i.us.us.5.loopexit, %pregion_for_entry.entry.i.us.us.5
  %108 = or i64 %_local_id_x.0.us.us.5, 1
  %add1.i.i.us.us.5.1 = add nuw nsw i64 %108, %mul.i.i
  %conv.i.us.us.5.1 = trunc i64 %add1.i.i.us.us.5.1 to i32
  %cmp4.i.us.us.5.1 = icmp slt i32 %conv.i.us.us.5.1, %4
  br i1 %cmp4.i.us.us.5.1, label %if.then.i.us.us.5.1, label %if.end.i.us.us.5.1

pregion_for_end.i.us.5.loopexit:                  ; preds = %if.end.i.us.us.5.1
  br label %pregion_for_end.i.us.5

pregion_for_end.i.us.5:                           ; preds = %pregion_for_end.i.us.5.loopexit, %pregion_for_end.i.us.4
  %109 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.6 = or i32 %109, 6
  %cmp.i.us.6 = icmp slt i32 %conv2.i.us.6, %3
  %mul.i.us.6 = mul nsw i32 %conv2.i.us.6, %4
  %mul8.i.us.6 = mul nsw i32 %conv2.i.us.6, %5
  %110 = sext i32 %mul8.i.us.6 to i64
  br i1 %cmp.i.us.6, label %pregion_for_entry.entry.i.us.us.6.preheader, label %pregion_for_end.i.us.6

pregion_for_entry.entry.i.us.us.6.preheader:      ; preds = %pregion_for_end.i.us.5
  br label %pregion_for_entry.entry.i.us.us.6

pregion_for_entry.entry.i.us.us.6:                ; preds = %if.end.i.us.us.6.1, %pregion_for_entry.entry.i.us.us.6.preheader
  %_local_id_x.0.us.us.6 = phi i64 [ %148, %if.end.i.us.us.6.1 ], [ 0, %pregion_for_entry.entry.i.us.us.6.preheader ]
  %add1.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.0.us.us.6, %mul.i.i
  %conv.i.us.us.6 = trunc i64 %add1.i.i.us.us.6 to i32
  %cmp4.i.us.us.6 = icmp slt i32 %conv.i.us.us.6, %4
  br i1 %cmp4.i.us.us.6, label %if.then.i.us.us.6, label %if.end.i.us.us.6

if.then.i.us.us.6:                                ; preds = %pregion_for_entry.entry.i.us.us.6
  %add.i.us.us.6 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6
  %idxprom.i.us.us.6 = sext i32 %add.i.us.us.6 to i64
  %arrayidx.i.us.us.6 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6 = shl i64 %add1.i.i.us.us.6, 32
  %111 = ashr exact i64 %sext.i.us.us.6, 32
  br label %for.body.i.us.us.6

for.body.i.us.us.6:                               ; preds = %for.body.i.us.us.6, %if.then.i.us.us.6
  %indvars.iv.next.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.us.us.6, %for.body.i.us.us.6 ], [ 0, %if.then.i.us.us.6 ]
  %112 = phi float [ %118, %for.body.i.us.us.6 ], [ 0.000000e+00, %if.then.i.us.us.6 ]
  %113 = add nsw i64 %indvars.iv.next.i3.us.us.6, %110
  %arrayidx11.i.us.us.6 = getelementptr inbounds float, float* %0, i64 %113
  %114 = load float, float* %arrayidx11.i.us.us.6, align 4, !tbaa !12
  %115 = mul nsw i64 %indvars.iv.next.i3.us.us.6, %11
  %116 = add nsw i64 %115, %111
  %arrayidx15.i.us.us.6 = getelementptr inbounds float, float* %1, i64 %116
  %117 = load float, float* %arrayidx15.i.us.us.6, align 4, !tbaa !12
  %118 = tail call float @llvm.fmuladd.f32(float %114, float %117, float %112) #2
  store float %118, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i3.us.us.6, 1
  %exitcond.not.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.us.us.6, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6, label %if.end.i.us.us.6.loopexit, label %for.body.i.us.us.6, !llvm.loop !19

if.end.i.us.us.6.loopexit:                        ; preds = %for.body.i.us.us.6
  br label %if.end.i.us.us.6

if.end.i.us.us.6:                                 ; preds = %if.end.i.us.us.6.loopexit, %pregion_for_entry.entry.i.us.us.6
  %119 = or i64 %_local_id_x.0.us.us.6, 1
  %add1.i.i.us.us.6.1 = add nuw nsw i64 %119, %mul.i.i
  %conv.i.us.us.6.1 = trunc i64 %add1.i.i.us.us.6.1 to i32
  %cmp4.i.us.us.6.1 = icmp slt i32 %conv.i.us.us.6.1, %4
  br i1 %cmp4.i.us.us.6.1, label %if.then.i.us.us.6.1, label %if.end.i.us.us.6.1

pregion_for_end.i.us.6.loopexit:                  ; preds = %if.end.i.us.us.6.1
  br label %pregion_for_end.i.us.6

pregion_for_end.i.us.6:                           ; preds = %pregion_for_end.i.us.6.loopexit, %pregion_for_end.i.us.5
  %120 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.7 = or i32 %120, 7
  %cmp.i.us.7 = icmp slt i32 %conv2.i.us.7, %3
  %mul.i.us.7 = mul nsw i32 %conv2.i.us.7, %4
  %mul8.i.us.7 = mul nsw i32 %conv2.i.us.7, %5
  %121 = sext i32 %mul8.i.us.7 to i64
  br i1 %cmp.i.us.7, label %pregion_for_entry.entry.i.us.us.7.preheader, label %mm3_kernel3.exit

pregion_for_entry.entry.i.us.us.7.preheader:      ; preds = %pregion_for_end.i.us.6
  br label %pregion_for_entry.entry.i.us.us.7

pregion_for_entry.entry.i.us.us.7:                ; preds = %if.end.i.us.us.7.1, %pregion_for_entry.entry.i.us.us.7.preheader
  %_local_id_x.0.us.us.7 = phi i64 [ %139, %if.end.i.us.us.7.1 ], [ 0, %pregion_for_entry.entry.i.us.us.7.preheader ]
  %add1.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.0.us.us.7, %mul.i.i
  %conv.i.us.us.7 = trunc i64 %add1.i.i.us.us.7 to i32
  %cmp4.i.us.us.7 = icmp slt i32 %conv.i.us.us.7, %4
  br i1 %cmp4.i.us.us.7, label %if.then.i.us.us.7, label %if.end.i.us.us.7

if.then.i.us.us.7:                                ; preds = %pregion_for_entry.entry.i.us.us.7
  %add.i.us.us.7 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7
  %idxprom.i.us.us.7 = sext i32 %add.i.us.us.7 to i64
  %arrayidx.i.us.us.7 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7 = shl i64 %add1.i.i.us.us.7, 32
  %122 = ashr exact i64 %sext.i.us.us.7, 32
  br label %for.body.i.us.us.7

for.body.i.us.us.7:                               ; preds = %for.body.i.us.us.7, %if.then.i.us.us.7
  %indvars.iv.next.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.us.us.7, %for.body.i.us.us.7 ], [ 0, %if.then.i.us.us.7 ]
  %123 = phi float [ %129, %for.body.i.us.us.7 ], [ 0.000000e+00, %if.then.i.us.us.7 ]
  %124 = add nsw i64 %indvars.iv.next.i3.us.us.7, %121
  %arrayidx11.i.us.us.7 = getelementptr inbounds float, float* %0, i64 %124
  %125 = load float, float* %arrayidx11.i.us.us.7, align 4, !tbaa !12
  %126 = mul nsw i64 %indvars.iv.next.i3.us.us.7, %11
  %127 = add nsw i64 %126, %122
  %arrayidx15.i.us.us.7 = getelementptr inbounds float, float* %1, i64 %127
  %128 = load float, float* %arrayidx15.i.us.us.7, align 4, !tbaa !12
  %129 = tail call float @llvm.fmuladd.f32(float %125, float %128, float %123) #2
  store float %129, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i3.us.us.7, 1
  %exitcond.not.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.us.us.7, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7, label %if.end.i.us.us.7.loopexit, label %for.body.i.us.us.7, !llvm.loop !19

if.end.i.us.us.7.loopexit:                        ; preds = %for.body.i.us.us.7
  br label %if.end.i.us.us.7

if.end.i.us.us.7:                                 ; preds = %if.end.i.us.us.7.loopexit, %pregion_for_entry.entry.i.us.us.7
  %130 = or i64 %_local_id_x.0.us.us.7, 1
  %add1.i.i.us.us.7.1 = add nuw nsw i64 %130, %mul.i.i
  %conv.i.us.us.7.1 = trunc i64 %add1.i.i.us.us.7.1 to i32
  %cmp4.i.us.us.7.1 = icmp slt i32 %conv.i.us.us.7.1, %4
  br i1 %cmp4.i.us.us.7.1, label %if.then.i.us.us.7.1, label %if.end.i.us.us.7.1

if.then.i.us.1:                                   ; preds = %if.end.i.us
  %add.i.us.1 = add nsw i32 %mul.i, %conv.i.us.1
  %idxprom.i.us.1 = sext i32 %add.i.us.1 to i64
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1

if.end.i.us.1:                                    ; preds = %if.then.i.us.1, %if.end.i.us
  br i1 %cmp4.i.us.2, label %if.then.i.us.2, label %if.end.i.us.2

if.then.i.us.2:                                   ; preds = %if.end.i.us.1
  %add.i.us.2 = add nsw i32 %mul.i, %conv.i.us.2
  %idxprom.i.us.2 = sext i32 %add.i.us.2 to i64
  %arrayidx.i.us.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.2
  store float 0.000000e+00, float* %arrayidx.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2

if.end.i.us.2:                                    ; preds = %if.then.i.us.2, %if.end.i.us.1
  br i1 %cmp4.i.us.3, label %if.then.i.us.3, label %if.end.i.us.3

if.then.i.us.3:                                   ; preds = %if.end.i.us.2
  %add.i.us.3 = add nsw i32 %mul.i, %conv.i.us.3
  %idxprom.i.us.3 = sext i32 %add.i.us.3 to i64
  %arrayidx.i.us.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.3
  store float 0.000000e+00, float* %arrayidx.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3

if.end.i.us.3:                                    ; preds = %if.then.i.us.3, %if.end.i.us.2
  br i1 %cmp4.i.us.4, label %if.then.i.us.4, label %if.end.i.us.4

if.then.i.us.4:                                   ; preds = %if.end.i.us.3
  %add.i.us.4 = add nsw i32 %mul.i, %conv.i.us.4
  %idxprom.i.us.4 = sext i32 %add.i.us.4 to i64
  %arrayidx.i.us.4 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.4
  store float 0.000000e+00, float* %arrayidx.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.4

if.end.i.us.4:                                    ; preds = %if.then.i.us.4, %if.end.i.us.3
  br i1 %cmp4.i.us.5, label %if.then.i.us.5, label %if.end.i.us.5

if.then.i.us.5:                                   ; preds = %if.end.i.us.4
  %add.i.us.5 = add nsw i32 %mul.i, %conv.i.us.5
  %idxprom.i.us.5 = sext i32 %add.i.us.5 to i64
  %arrayidx.i.us.5 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.5
  store float 0.000000e+00, float* %arrayidx.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.5

if.end.i.us.5:                                    ; preds = %if.then.i.us.5, %if.end.i.us.4
  br i1 %cmp4.i.us.6, label %if.then.i.us.6, label %if.end.i.us.6

if.then.i.us.6:                                   ; preds = %if.end.i.us.5
  %add.i.us.6 = add nsw i32 %mul.i, %conv.i.us.6
  %idxprom.i.us.6 = sext i32 %add.i.us.6 to i64
  %arrayidx.i.us.6 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.6
  store float 0.000000e+00, float* %arrayidx.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.6

if.end.i.us.6:                                    ; preds = %if.then.i.us.6, %if.end.i.us.5
  br i1 %cmp4.i.us.7, label %if.then.i.us.7, label %if.end.i.us.7

if.then.i.us.7:                                   ; preds = %if.end.i.us.6
  %add.i.us.7 = add nsw i32 %mul.i, %conv.i.us.7
  %idxprom.i.us.7 = sext i32 %add.i.us.7 to i64
  %arrayidx.i.us.7 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.7
  store float 0.000000e+00, float* %arrayidx.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.7

if.end.i.us.7:                                    ; preds = %if.then.i.us.7, %if.end.i.us.6
  br i1 %cmp4.i.us.8, label %if.then.i.us.8, label %if.end.i.us.8

if.then.i.us.8:                                   ; preds = %if.end.i.us.7
  %add.i.us.8 = add nsw i32 %mul.i, %conv.i.us.8
  %idxprom.i.us.8 = sext i32 %add.i.us.8 to i64
  %arrayidx.i.us.8 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.8
  store float 0.000000e+00, float* %arrayidx.i.us.8, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.8

if.end.i.us.8:                                    ; preds = %if.then.i.us.8, %if.end.i.us.7
  br i1 %cmp4.i.us.9, label %if.then.i.us.9, label %if.end.i.us.9

if.then.i.us.9:                                   ; preds = %if.end.i.us.8
  %add.i.us.9 = add nsw i32 %mul.i, %conv.i.us.9
  %idxprom.i.us.9 = sext i32 %add.i.us.9 to i64
  %arrayidx.i.us.9 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.9
  store float 0.000000e+00, float* %arrayidx.i.us.9, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.9

if.end.i.us.9:                                    ; preds = %if.then.i.us.9, %if.end.i.us.8
  br i1 %cmp4.i.us.10, label %if.then.i.us.10, label %if.end.i.us.10

if.then.i.us.10:                                  ; preds = %if.end.i.us.9
  %add.i.us.10 = add nsw i32 %mul.i, %conv.i.us.10
  %idxprom.i.us.10 = sext i32 %add.i.us.10 to i64
  %arrayidx.i.us.10 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.10
  store float 0.000000e+00, float* %arrayidx.i.us.10, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.10

if.end.i.us.10:                                   ; preds = %if.then.i.us.10, %if.end.i.us.9
  br i1 %cmp4.i.us.11, label %if.then.i.us.11, label %if.end.i.us.11

if.then.i.us.11:                                  ; preds = %if.end.i.us.10
  %add.i.us.11 = add nsw i32 %mul.i, %conv.i.us.11
  %idxprom.i.us.11 = sext i32 %add.i.us.11 to i64
  %arrayidx.i.us.11 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.11
  store float 0.000000e+00, float* %arrayidx.i.us.11, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.11

if.end.i.us.11:                                   ; preds = %if.then.i.us.11, %if.end.i.us.10
  br i1 %cmp4.i.us.12, label %if.then.i.us.12, label %if.end.i.us.12

if.then.i.us.12:                                  ; preds = %if.end.i.us.11
  %add.i.us.12 = add nsw i32 %mul.i, %conv.i.us.12
  %idxprom.i.us.12 = sext i32 %add.i.us.12 to i64
  %arrayidx.i.us.12 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.12
  store float 0.000000e+00, float* %arrayidx.i.us.12, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.12

if.end.i.us.12:                                   ; preds = %if.then.i.us.12, %if.end.i.us.11
  br i1 %cmp4.i.us.13, label %if.then.i.us.13, label %if.end.i.us.13

if.then.i.us.13:                                  ; preds = %if.end.i.us.12
  %add.i.us.13 = add nsw i32 %mul.i, %conv.i.us.13
  %idxprom.i.us.13 = sext i32 %add.i.us.13 to i64
  %arrayidx.i.us.13 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.13
  store float 0.000000e+00, float* %arrayidx.i.us.13, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.13

if.end.i.us.13:                                   ; preds = %if.then.i.us.13, %if.end.i.us.12
  br i1 %cmp4.i.us.14, label %if.then.i.us.14, label %if.end.i.us.14

if.then.i.us.14:                                  ; preds = %if.end.i.us.13
  %add.i.us.14 = add nsw i32 %mul.i, %conv.i.us.14
  %idxprom.i.us.14 = sext i32 %add.i.us.14 to i64
  %arrayidx.i.us.14 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.14
  store float 0.000000e+00, float* %arrayidx.i.us.14, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.14

if.end.i.us.14:                                   ; preds = %if.then.i.us.14, %if.end.i.us.13
  br i1 %cmp4.i.us.15, label %if.then.i.us.15, label %if.end.i.us.15

if.then.i.us.15:                                  ; preds = %if.end.i.us.14
  %add.i.us.15 = add nsw i32 %mul.i, %conv.i.us.15
  %idxprom.i.us.15 = sext i32 %add.i.us.15 to i64
  %arrayidx.i.us.15 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.15
  store float 0.000000e+00, float* %arrayidx.i.us.15, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.15

if.end.i.us.15:                                   ; preds = %if.then.i.us.15, %if.end.i.us.14
  br i1 %cmp4.i.us.16, label %if.then.i.us.16, label %if.end.i.us.16

if.then.i.us.16:                                  ; preds = %if.end.i.us.15
  %add.i.us.16 = add nsw i32 %mul.i, %conv.i.us.16
  %idxprom.i.us.16 = sext i32 %add.i.us.16 to i64
  %arrayidx.i.us.16 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.16
  store float 0.000000e+00, float* %arrayidx.i.us.16, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.16

if.end.i.us.16:                                   ; preds = %if.then.i.us.16, %if.end.i.us.15
  br i1 %cmp4.i.us.17, label %if.then.i.us.17, label %if.end.i.us.17

if.then.i.us.17:                                  ; preds = %if.end.i.us.16
  %add.i.us.17 = add nsw i32 %mul.i, %conv.i.us.17
  %idxprom.i.us.17 = sext i32 %add.i.us.17 to i64
  %arrayidx.i.us.17 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.17
  store float 0.000000e+00, float* %arrayidx.i.us.17, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.17

if.end.i.us.17:                                   ; preds = %if.then.i.us.17, %if.end.i.us.16
  br i1 %cmp4.i.us.18, label %if.then.i.us.18, label %if.end.i.us.18

if.then.i.us.18:                                  ; preds = %if.end.i.us.17
  %add.i.us.18 = add nsw i32 %mul.i, %conv.i.us.18
  %idxprom.i.us.18 = sext i32 %add.i.us.18 to i64
  %arrayidx.i.us.18 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.18
  store float 0.000000e+00, float* %arrayidx.i.us.18, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.18

if.end.i.us.18:                                   ; preds = %if.then.i.us.18, %if.end.i.us.17
  br i1 %cmp4.i.us.19, label %if.then.i.us.19, label %if.end.i.us.19

if.then.i.us.19:                                  ; preds = %if.end.i.us.18
  %add.i.us.19 = add nsw i32 %mul.i, %conv.i.us.19
  %idxprom.i.us.19 = sext i32 %add.i.us.19 to i64
  %arrayidx.i.us.19 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.19
  store float 0.000000e+00, float* %arrayidx.i.us.19, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.19

if.end.i.us.19:                                   ; preds = %if.then.i.us.19, %if.end.i.us.18
  br i1 %cmp4.i.us.20, label %if.then.i.us.20, label %if.end.i.us.20

if.then.i.us.20:                                  ; preds = %if.end.i.us.19
  %add.i.us.20 = add nsw i32 %mul.i, %conv.i.us.20
  %idxprom.i.us.20 = sext i32 %add.i.us.20 to i64
  %arrayidx.i.us.20 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.20
  store float 0.000000e+00, float* %arrayidx.i.us.20, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.20

if.end.i.us.20:                                   ; preds = %if.then.i.us.20, %if.end.i.us.19
  br i1 %cmp4.i.us.21, label %if.then.i.us.21, label %if.end.i.us.21

if.then.i.us.21:                                  ; preds = %if.end.i.us.20
  %add.i.us.21 = add nsw i32 %mul.i, %conv.i.us.21
  %idxprom.i.us.21 = sext i32 %add.i.us.21 to i64
  %arrayidx.i.us.21 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.21
  store float 0.000000e+00, float* %arrayidx.i.us.21, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.21

if.end.i.us.21:                                   ; preds = %if.then.i.us.21, %if.end.i.us.20
  br i1 %cmp4.i.us.22, label %if.then.i.us.22, label %if.end.i.us.22

if.then.i.us.22:                                  ; preds = %if.end.i.us.21
  %add.i.us.22 = add nsw i32 %mul.i, %conv.i.us.22
  %idxprom.i.us.22 = sext i32 %add.i.us.22 to i64
  %arrayidx.i.us.22 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.22
  store float 0.000000e+00, float* %arrayidx.i.us.22, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.22

if.end.i.us.22:                                   ; preds = %if.then.i.us.22, %if.end.i.us.21
  br i1 %cmp4.i.us.23, label %if.then.i.us.23, label %if.end.i.us.23

if.then.i.us.23:                                  ; preds = %if.end.i.us.22
  %add.i.us.23 = add nsw i32 %mul.i, %conv.i.us.23
  %idxprom.i.us.23 = sext i32 %add.i.us.23 to i64
  %arrayidx.i.us.23 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.23
  store float 0.000000e+00, float* %arrayidx.i.us.23, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.23

if.end.i.us.23:                                   ; preds = %if.then.i.us.23, %if.end.i.us.22
  br i1 %cmp4.i.us.24, label %if.then.i.us.24, label %if.end.i.us.24

if.then.i.us.24:                                  ; preds = %if.end.i.us.23
  %add.i.us.24 = add nsw i32 %mul.i, %conv.i.us.24
  %idxprom.i.us.24 = sext i32 %add.i.us.24 to i64
  %arrayidx.i.us.24 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.24
  store float 0.000000e+00, float* %arrayidx.i.us.24, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.24

if.end.i.us.24:                                   ; preds = %if.then.i.us.24, %if.end.i.us.23
  br i1 %cmp4.i.us.25, label %if.then.i.us.25, label %if.end.i.us.25

if.then.i.us.25:                                  ; preds = %if.end.i.us.24
  %add.i.us.25 = add nsw i32 %mul.i, %conv.i.us.25
  %idxprom.i.us.25 = sext i32 %add.i.us.25 to i64
  %arrayidx.i.us.25 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.25
  store float 0.000000e+00, float* %arrayidx.i.us.25, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.25

if.end.i.us.25:                                   ; preds = %if.then.i.us.25, %if.end.i.us.24
  br i1 %cmp4.i.us.26, label %if.then.i.us.26, label %if.end.i.us.26

if.then.i.us.26:                                  ; preds = %if.end.i.us.25
  %add.i.us.26 = add nsw i32 %mul.i, %conv.i.us.26
  %idxprom.i.us.26 = sext i32 %add.i.us.26 to i64
  %arrayidx.i.us.26 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.26
  store float 0.000000e+00, float* %arrayidx.i.us.26, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.26

if.end.i.us.26:                                   ; preds = %if.then.i.us.26, %if.end.i.us.25
  br i1 %cmp4.i.us.27, label %if.then.i.us.27, label %if.end.i.us.27

if.then.i.us.27:                                  ; preds = %if.end.i.us.26
  %add.i.us.27 = add nsw i32 %mul.i, %conv.i.us.27
  %idxprom.i.us.27 = sext i32 %add.i.us.27 to i64
  %arrayidx.i.us.27 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.27
  store float 0.000000e+00, float* %arrayidx.i.us.27, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.27

if.end.i.us.27:                                   ; preds = %if.then.i.us.27, %if.end.i.us.26
  br i1 %cmp4.i.us.28, label %if.then.i.us.28, label %if.end.i.us.28

if.then.i.us.28:                                  ; preds = %if.end.i.us.27
  %add.i.us.28 = add nsw i32 %mul.i, %conv.i.us.28
  %idxprom.i.us.28 = sext i32 %add.i.us.28 to i64
  %arrayidx.i.us.28 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.28
  store float 0.000000e+00, float* %arrayidx.i.us.28, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.28

if.end.i.us.28:                                   ; preds = %if.then.i.us.28, %if.end.i.us.27
  br i1 %cmp4.i.us.29, label %if.then.i.us.29, label %if.end.i.us.29

if.then.i.us.29:                                  ; preds = %if.end.i.us.28
  %add.i.us.29 = add nsw i32 %mul.i, %conv.i.us.29
  %idxprom.i.us.29 = sext i32 %add.i.us.29 to i64
  %arrayidx.i.us.29 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.29
  store float 0.000000e+00, float* %arrayidx.i.us.29, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.29

if.end.i.us.29:                                   ; preds = %if.then.i.us.29, %if.end.i.us.28
  br i1 %cmp4.i.us.30, label %if.then.i.us.30, label %if.end.i.us.30

if.then.i.us.30:                                  ; preds = %if.end.i.us.29
  %add.i.us.30 = add nsw i32 %mul.i, %conv.i.us.30
  %idxprom.i.us.30 = sext i32 %add.i.us.30 to i64
  %arrayidx.i.us.30 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.30
  store float 0.000000e+00, float* %arrayidx.i.us.30, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.30

if.end.i.us.30:                                   ; preds = %if.then.i.us.30, %if.end.i.us.29
  br i1 %cmp4.i.us.31, label %if.then.i.us.31, label %pregion_for_end.i

if.then.i.us.31:                                  ; preds = %if.end.i.us.30
  %add.i.us.31 = add nsw i32 %mul.i, %conv.i.us.31
  %idxprom.i.us.31 = sext i32 %add.i.us.31 to i64
  %arrayidx.i.us.31 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.31
  store float 0.000000e+00, float* %arrayidx.i.us.31, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i

if.then.i.us.us.7.1:                              ; preds = %if.end.i.us.us.7
  %add.i.us.us.7.1 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7.1
  %idxprom.i.us.us.7.1 = sext i32 %add.i.us.us.7.1 to i64
  %arrayidx.i.us.us.7.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7.1 = shl i64 %add1.i.i.us.us.7.1, 32
  %131 = ashr exact i64 %sext.i.us.us.7.1, 32
  br label %for.body.i.us.us.7.1

for.body.i.us.us.7.1:                             ; preds = %for.body.i.us.us.7.1, %if.then.i.us.us.7.1
  %indvars.iv.next.i3.us.us.7.1 = phi i64 [ %indvars.iv.next.i.us.us.7.1, %for.body.i.us.us.7.1 ], [ 0, %if.then.i.us.us.7.1 ]
  %132 = phi float [ %138, %for.body.i.us.us.7.1 ], [ 0.000000e+00, %if.then.i.us.us.7.1 ]
  %133 = add nsw i64 %indvars.iv.next.i3.us.us.7.1, %121
  %arrayidx11.i.us.us.7.1 = getelementptr inbounds float, float* %0, i64 %133
  %134 = load float, float* %arrayidx11.i.us.us.7.1, align 4, !tbaa !12
  %135 = mul nsw i64 %indvars.iv.next.i3.us.us.7.1, %11
  %136 = add nsw i64 %135, %131
  %arrayidx15.i.us.us.7.1 = getelementptr inbounds float, float* %1, i64 %136
  %137 = load float, float* %arrayidx15.i.us.us.7.1, align 4, !tbaa !12
  %138 = tail call float @llvm.fmuladd.f32(float %134, float %137, float %132) #2
  store float %138, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.7.1, 1
  %exitcond.not.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.us.us.7.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7.1, label %if.end.i.us.us.7.1.loopexit, label %for.body.i.us.us.7.1, !llvm.loop !19

if.end.i.us.us.7.1.loopexit:                      ; preds = %for.body.i.us.us.7.1
  br label %if.end.i.us.us.7.1

if.end.i.us.us.7.1:                               ; preds = %if.end.i.us.us.7.1.loopexit, %if.end.i.us.us.7
  %139 = add nuw nsw i64 %_local_id_x.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %139, 32
  br i1 %exitcond.7.not.1, label %mm3_kernel3.exit.loopexit, label %pregion_for_entry.entry.i.us.us.7, !llvm.loop !23

if.then.i.us.us.6.1:                              ; preds = %if.end.i.us.us.6
  %add.i.us.us.6.1 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6.1
  %idxprom.i.us.us.6.1 = sext i32 %add.i.us.us.6.1 to i64
  %arrayidx.i.us.us.6.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6.1 = shl i64 %add1.i.i.us.us.6.1, 32
  %140 = ashr exact i64 %sext.i.us.us.6.1, 32
  br label %for.body.i.us.us.6.1

for.body.i.us.us.6.1:                             ; preds = %for.body.i.us.us.6.1, %if.then.i.us.us.6.1
  %indvars.iv.next.i3.us.us.6.1 = phi i64 [ %indvars.iv.next.i.us.us.6.1, %for.body.i.us.us.6.1 ], [ 0, %if.then.i.us.us.6.1 ]
  %141 = phi float [ %147, %for.body.i.us.us.6.1 ], [ 0.000000e+00, %if.then.i.us.us.6.1 ]
  %142 = add nsw i64 %indvars.iv.next.i3.us.us.6.1, %110
  %arrayidx11.i.us.us.6.1 = getelementptr inbounds float, float* %0, i64 %142
  %143 = load float, float* %arrayidx11.i.us.us.6.1, align 4, !tbaa !12
  %144 = mul nsw i64 %indvars.iv.next.i3.us.us.6.1, %11
  %145 = add nsw i64 %144, %140
  %arrayidx15.i.us.us.6.1 = getelementptr inbounds float, float* %1, i64 %145
  %146 = load float, float* %arrayidx15.i.us.us.6.1, align 4, !tbaa !12
  %147 = tail call float @llvm.fmuladd.f32(float %143, float %146, float %141) #2
  store float %147, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.6.1, 1
  %exitcond.not.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.us.us.6.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6.1, label %if.end.i.us.us.6.1.loopexit, label %for.body.i.us.us.6.1, !llvm.loop !19

if.end.i.us.us.6.1.loopexit:                      ; preds = %for.body.i.us.us.6.1
  br label %if.end.i.us.us.6.1

if.end.i.us.us.6.1:                               ; preds = %if.end.i.us.us.6.1.loopexit, %if.end.i.us.us.6
  %148 = add nuw nsw i64 %_local_id_x.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %148, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.us.6.loopexit, label %pregion_for_entry.entry.i.us.us.6, !llvm.loop !23

if.then.i.us.us.5.1:                              ; preds = %if.end.i.us.us.5
  %add.i.us.us.5.1 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5.1
  %idxprom.i.us.us.5.1 = sext i32 %add.i.us.us.5.1 to i64
  %arrayidx.i.us.us.5.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5.1 = shl i64 %add1.i.i.us.us.5.1, 32
  %149 = ashr exact i64 %sext.i.us.us.5.1, 32
  br label %for.body.i.us.us.5.1

for.body.i.us.us.5.1:                             ; preds = %for.body.i.us.us.5.1, %if.then.i.us.us.5.1
  %indvars.iv.next.i3.us.us.5.1 = phi i64 [ %indvars.iv.next.i.us.us.5.1, %for.body.i.us.us.5.1 ], [ 0, %if.then.i.us.us.5.1 ]
  %150 = phi float [ %156, %for.body.i.us.us.5.1 ], [ 0.000000e+00, %if.then.i.us.us.5.1 ]
  %151 = add nsw i64 %indvars.iv.next.i3.us.us.5.1, %99
  %arrayidx11.i.us.us.5.1 = getelementptr inbounds float, float* %0, i64 %151
  %152 = load float, float* %arrayidx11.i.us.us.5.1, align 4, !tbaa !12
  %153 = mul nsw i64 %indvars.iv.next.i3.us.us.5.1, %11
  %154 = add nsw i64 %153, %149
  %arrayidx15.i.us.us.5.1 = getelementptr inbounds float, float* %1, i64 %154
  %155 = load float, float* %arrayidx15.i.us.us.5.1, align 4, !tbaa !12
  %156 = tail call float @llvm.fmuladd.f32(float %152, float %155, float %150) #2
  store float %156, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.5.1, 1
  %exitcond.not.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.us.us.5.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5.1, label %if.end.i.us.us.5.1.loopexit, label %for.body.i.us.us.5.1, !llvm.loop !19

if.end.i.us.us.5.1.loopexit:                      ; preds = %for.body.i.us.us.5.1
  br label %if.end.i.us.us.5.1

if.end.i.us.us.5.1:                               ; preds = %if.end.i.us.us.5.1.loopexit, %if.end.i.us.us.5
  %157 = add nuw nsw i64 %_local_id_x.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %157, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.us.5.loopexit, label %pregion_for_entry.entry.i.us.us.5, !llvm.loop !23

if.then.i.us.us.4.1:                              ; preds = %if.end.i.us.us.4
  %add.i.us.us.4.1 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4.1
  %idxprom.i.us.us.4.1 = sext i32 %add.i.us.us.4.1 to i64
  %arrayidx.i.us.us.4.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4.1 = shl i64 %add1.i.i.us.us.4.1, 32
  %158 = ashr exact i64 %sext.i.us.us.4.1, 32
  br label %for.body.i.us.us.4.1

for.body.i.us.us.4.1:                             ; preds = %for.body.i.us.us.4.1, %if.then.i.us.us.4.1
  %indvars.iv.next.i3.us.us.4.1 = phi i64 [ %indvars.iv.next.i.us.us.4.1, %for.body.i.us.us.4.1 ], [ 0, %if.then.i.us.us.4.1 ]
  %159 = phi float [ %165, %for.body.i.us.us.4.1 ], [ 0.000000e+00, %if.then.i.us.us.4.1 ]
  %160 = add nsw i64 %indvars.iv.next.i3.us.us.4.1, %88
  %arrayidx11.i.us.us.4.1 = getelementptr inbounds float, float* %0, i64 %160
  %161 = load float, float* %arrayidx11.i.us.us.4.1, align 4, !tbaa !12
  %162 = mul nsw i64 %indvars.iv.next.i3.us.us.4.1, %11
  %163 = add nsw i64 %162, %158
  %arrayidx15.i.us.us.4.1 = getelementptr inbounds float, float* %1, i64 %163
  %164 = load float, float* %arrayidx15.i.us.us.4.1, align 4, !tbaa !12
  %165 = tail call float @llvm.fmuladd.f32(float %161, float %164, float %159) #2
  store float %165, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.4.1, 1
  %exitcond.not.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.us.us.4.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4.1, label %if.end.i.us.us.4.1.loopexit, label %for.body.i.us.us.4.1, !llvm.loop !19

if.end.i.us.us.4.1.loopexit:                      ; preds = %for.body.i.us.us.4.1
  br label %if.end.i.us.us.4.1

if.end.i.us.us.4.1:                               ; preds = %if.end.i.us.us.4.1.loopexit, %if.end.i.us.us.4
  %166 = add nuw nsw i64 %_local_id_x.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %166, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.us.4.loopexit, label %pregion_for_entry.entry.i.us.us.4, !llvm.loop !23

if.then.i.us.us.3.1:                              ; preds = %if.end.i.us.us.3
  %add.i.us.us.3.1 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3.1
  %idxprom.i.us.us.3.1 = sext i32 %add.i.us.us.3.1 to i64
  %arrayidx.i.us.us.3.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3.1 = shl i64 %add1.i.i.us.us.3.1, 32
  %167 = ashr exact i64 %sext.i.us.us.3.1, 32
  br label %for.body.i.us.us.3.1

for.body.i.us.us.3.1:                             ; preds = %for.body.i.us.us.3.1, %if.then.i.us.us.3.1
  %indvars.iv.next.i3.us.us.3.1 = phi i64 [ %indvars.iv.next.i.us.us.3.1, %for.body.i.us.us.3.1 ], [ 0, %if.then.i.us.us.3.1 ]
  %168 = phi float [ %174, %for.body.i.us.us.3.1 ], [ 0.000000e+00, %if.then.i.us.us.3.1 ]
  %169 = add nsw i64 %indvars.iv.next.i3.us.us.3.1, %77
  %arrayidx11.i.us.us.3.1 = getelementptr inbounds float, float* %0, i64 %169
  %170 = load float, float* %arrayidx11.i.us.us.3.1, align 4, !tbaa !12
  %171 = mul nsw i64 %indvars.iv.next.i3.us.us.3.1, %11
  %172 = add nsw i64 %171, %167
  %arrayidx15.i.us.us.3.1 = getelementptr inbounds float, float* %1, i64 %172
  %173 = load float, float* %arrayidx15.i.us.us.3.1, align 4, !tbaa !12
  %174 = tail call float @llvm.fmuladd.f32(float %170, float %173, float %168) #2
  store float %174, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.3.1, 1
  %exitcond.not.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.us.us.3.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3.1, label %if.end.i.us.us.3.1.loopexit, label %for.body.i.us.us.3.1, !llvm.loop !19

if.end.i.us.us.3.1.loopexit:                      ; preds = %for.body.i.us.us.3.1
  br label %if.end.i.us.us.3.1

if.end.i.us.us.3.1:                               ; preds = %if.end.i.us.us.3.1.loopexit, %if.end.i.us.us.3
  %175 = add nuw nsw i64 %_local_id_x.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %175, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.us.3.loopexit, label %pregion_for_entry.entry.i.us.us.3, !llvm.loop !23

if.then.i.us.us.2.1:                              ; preds = %if.end.i.us.us.2
  %add.i.us.us.2.1 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2.1
  %idxprom.i.us.us.2.1 = sext i32 %add.i.us.us.2.1 to i64
  %arrayidx.i.us.us.2.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2.1 = shl i64 %add1.i.i.us.us.2.1, 32
  %176 = ashr exact i64 %sext.i.us.us.2.1, 32
  br label %for.body.i.us.us.2.1

for.body.i.us.us.2.1:                             ; preds = %for.body.i.us.us.2.1, %if.then.i.us.us.2.1
  %indvars.iv.next.i3.us.us.2.1 = phi i64 [ %indvars.iv.next.i.us.us.2.1, %for.body.i.us.us.2.1 ], [ 0, %if.then.i.us.us.2.1 ]
  %177 = phi float [ %183, %for.body.i.us.us.2.1 ], [ 0.000000e+00, %if.then.i.us.us.2.1 ]
  %178 = add nsw i64 %indvars.iv.next.i3.us.us.2.1, %66
  %arrayidx11.i.us.us.2.1 = getelementptr inbounds float, float* %0, i64 %178
  %179 = load float, float* %arrayidx11.i.us.us.2.1, align 4, !tbaa !12
  %180 = mul nsw i64 %indvars.iv.next.i3.us.us.2.1, %11
  %181 = add nsw i64 %180, %176
  %arrayidx15.i.us.us.2.1 = getelementptr inbounds float, float* %1, i64 %181
  %182 = load float, float* %arrayidx15.i.us.us.2.1, align 4, !tbaa !12
  %183 = tail call float @llvm.fmuladd.f32(float %179, float %182, float %177) #2
  store float %183, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.2.1, 1
  %exitcond.not.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.us.us.2.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2.1, label %if.end.i.us.us.2.1.loopexit, label %for.body.i.us.us.2.1, !llvm.loop !19

if.end.i.us.us.2.1.loopexit:                      ; preds = %for.body.i.us.us.2.1
  br label %if.end.i.us.us.2.1

if.end.i.us.us.2.1:                               ; preds = %if.end.i.us.us.2.1.loopexit, %if.end.i.us.us.2
  %184 = add nuw nsw i64 %_local_id_x.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %184, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.us.2.loopexit, label %pregion_for_entry.entry.i.us.us.2, !llvm.loop !23

if.then.i.us.us.1.1:                              ; preds = %if.end.i.us.us.1
  %add.i.us.us.1.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1.1
  %idxprom.i.us.us.1.1 = sext i32 %add.i.us.us.1.1 to i64
  %arrayidx.i.us.us.1.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1.1 = shl i64 %add1.i.i.us.us.1.1, 32
  %185 = ashr exact i64 %sext.i.us.us.1.1, 32
  br label %for.body.i.us.us.1.1

for.body.i.us.us.1.1:                             ; preds = %for.body.i.us.us.1.1, %if.then.i.us.us.1.1
  %indvars.iv.next.i3.us.us.1.1 = phi i64 [ %indvars.iv.next.i.us.us.1.1, %for.body.i.us.us.1.1 ], [ 0, %if.then.i.us.us.1.1 ]
  %186 = phi float [ %192, %for.body.i.us.us.1.1 ], [ 0.000000e+00, %if.then.i.us.us.1.1 ]
  %187 = add nsw i64 %indvars.iv.next.i3.us.us.1.1, %45
  %arrayidx11.i.us.us.1.1 = getelementptr inbounds float, float* %0, i64 %187
  %188 = load float, float* %arrayidx11.i.us.us.1.1, align 4, !tbaa !12
  %189 = mul nsw i64 %indvars.iv.next.i3.us.us.1.1, %11
  %190 = add nsw i64 %189, %185
  %arrayidx15.i.us.us.1.1 = getelementptr inbounds float, float* %1, i64 %190
  %191 = load float, float* %arrayidx15.i.us.us.1.1, align 4, !tbaa !12
  %192 = tail call float @llvm.fmuladd.f32(float %188, float %191, float %186) #2
  store float %192, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.1.1, 1
  %exitcond.not.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.us.us.1.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1.1, label %if.end.i.us.us.1.1.loopexit, label %for.body.i.us.us.1.1, !llvm.loop !19

if.end.i.us.us.1.1.loopexit:                      ; preds = %for.body.i.us.us.1.1
  br label %if.end.i.us.us.1.1

if.end.i.us.us.1.1:                               ; preds = %if.end.i.us.us.1.1.loopexit, %if.end.i.us.us.1
  %193 = add nuw nsw i64 %_local_id_x.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %193, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.us.1.loopexit, label %pregion_for_entry.entry.i.us.us.1, !llvm.loop !23

if.then.i.us.us.146:                              ; preds = %if.end.i.us.us
  %add.i.us.us.142 = add nsw i32 %mul.i.us, %conv.i.us.us.139
  %idxprom.i.us.us.143 = sext i32 %add.i.us.us.142 to i64
  %arrayidx.i.us.us.144 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.143
  store float 0.000000e+00, float* %arrayidx.i.us.us.144, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.145 = shl i64 %add1.i.i.us.us.138, 32
  %194 = ashr exact i64 %sext.i.us.us.145, 32
  br label %for.body.i.us.us.152

for.body.i.us.us.152:                             ; preds = %for.body.i.us.us.152, %if.then.i.us.us.146
  %indvars.iv.next.i3.us.us.147 = phi i64 [ %indvars.iv.next.i.us.us.150, %for.body.i.us.us.152 ], [ 0, %if.then.i.us.us.146 ]
  %195 = phi float [ %201, %for.body.i.us.us.152 ], [ 0.000000e+00, %if.then.i.us.us.146 ]
  %196 = add nsw i64 %indvars.iv.next.i3.us.us.147, %43
  %arrayidx11.i.us.us.148 = getelementptr inbounds float, float* %0, i64 %196
  %197 = load float, float* %arrayidx11.i.us.us.148, align 4, !tbaa !12
  %198 = mul nsw i64 %indvars.iv.next.i3.us.us.147, %11
  %199 = add nsw i64 %198, %194
  %arrayidx15.i.us.us.149 = getelementptr inbounds float, float* %1, i64 %199
  %200 = load float, float* %arrayidx15.i.us.us.149, align 4, !tbaa !12
  %201 = tail call float @llvm.fmuladd.f32(float %197, float %200, float %195) #2
  store float %201, float* %arrayidx.i.us.us.144, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.150 = add nuw nsw i64 %indvars.iv.next.i3.us.us.147, 1
  %exitcond.not.i.us.us.151 = icmp eq i64 %indvars.iv.next.i.us.us.150, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.151, label %if.end.i.us.us.153.loopexit, label %for.body.i.us.us.152, !llvm.loop !19

if.end.i.us.us.153.loopexit:                      ; preds = %for.body.i.us.us.152
  br label %if.end.i.us.us.153

if.end.i.us.us.153:                               ; preds = %if.end.i.us.us.153.loopexit, %if.end.i.us.us
  %202 = add nuw nsw i64 %_local_id_x.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %202, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.us.loopexit, label %pregion_for_entry.entry.i.us.us, !llvm.loop !23
}

; Function Attrs: nounwind
define void @_pocl_kernel_mm3_kernel3_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp638.i.i = icmp sgt i32 %28, 0
  %29 = sext i32 %24 to i64
  %wide.trip.count.i.i = zext i32 %28 to i64
  br i1 %cmp638.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  %conv.i.i.us = trunc i64 %mul.i.i.i to i32
  %cmp4.i.i.us = icmp sgt i32 %24, %conv.i.i.us
  %30 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.1 = or i32 %30, 1
  %cmp4.i.i.us.1 = icmp sgt i32 %24, %conv.i.i.us.1
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.2 = or i32 %31, 2
  %cmp4.i.i.us.2 = icmp sgt i32 %24, %conv.i.i.us.2
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.3 = or i32 %32, 3
  %cmp4.i.i.us.3 = icmp sgt i32 %24, %conv.i.i.us.3
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.4 = or i32 %33, 4
  %cmp4.i.i.us.4 = icmp sgt i32 %24, %conv.i.i.us.4
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.5 = or i32 %34, 5
  %cmp4.i.i.us.5 = icmp sgt i32 %24, %conv.i.i.us.5
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.6 = or i32 %35, 6
  %cmp4.i.i.us.6 = icmp sgt i32 %24, %conv.i.i.us.6
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.7 = or i32 %36, 7
  %cmp4.i.i.us.7 = icmp sgt i32 %24, %conv.i.i.us.7
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.8 = or i32 %37, 8
  %cmp4.i.i.us.8 = icmp sgt i32 %24, %conv.i.i.us.8
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.9 = or i32 %38, 9
  %cmp4.i.i.us.9 = icmp sgt i32 %24, %conv.i.i.us.9
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.10 = or i32 %39, 10
  %cmp4.i.i.us.10 = icmp sgt i32 %24, %conv.i.i.us.10
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.11 = or i32 %40, 11
  %cmp4.i.i.us.11 = icmp sgt i32 %24, %conv.i.i.us.11
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.12 = or i32 %41, 12
  %cmp4.i.i.us.12 = icmp sgt i32 %24, %conv.i.i.us.12
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.13 = or i32 %42, 13
  %cmp4.i.i.us.13 = icmp sgt i32 %24, %conv.i.i.us.13
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.14 = or i32 %43, 14
  %cmp4.i.i.us.14 = icmp sgt i32 %24, %conv.i.i.us.14
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.15 = or i32 %44, 15
  %cmp4.i.i.us.15 = icmp sgt i32 %24, %conv.i.i.us.15
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.16 = or i32 %45, 16
  %cmp4.i.i.us.16 = icmp sgt i32 %24, %conv.i.i.us.16
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.17 = or i32 %46, 17
  %cmp4.i.i.us.17 = icmp sgt i32 %24, %conv.i.i.us.17
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.18 = or i32 %47, 18
  %cmp4.i.i.us.18 = icmp sgt i32 %24, %conv.i.i.us.18
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.19 = or i32 %48, 19
  %cmp4.i.i.us.19 = icmp sgt i32 %24, %conv.i.i.us.19
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.20 = or i32 %49, 20
  %cmp4.i.i.us.20 = icmp sgt i32 %24, %conv.i.i.us.20
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.21 = or i32 %50, 21
  %cmp4.i.i.us.21 = icmp sgt i32 %24, %conv.i.i.us.21
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.22 = or i32 %51, 22
  %cmp4.i.i.us.22 = icmp sgt i32 %24, %conv.i.i.us.22
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.23 = or i32 %52, 23
  %cmp4.i.i.us.23 = icmp sgt i32 %24, %conv.i.i.us.23
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.24 = or i32 %53, 24
  %cmp4.i.i.us.24 = icmp sgt i32 %24, %conv.i.i.us.24
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.25 = or i32 %54, 25
  %cmp4.i.i.us.25 = icmp sgt i32 %24, %conv.i.i.us.25
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.26 = or i32 %55, 26
  %cmp4.i.i.us.26 = icmp sgt i32 %24, %conv.i.i.us.26
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.27 = or i32 %56, 27
  %cmp4.i.i.us.27 = icmp sgt i32 %24, %conv.i.i.us.27
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.28 = or i32 %57, 28
  %cmp4.i.i.us.28 = icmp sgt i32 %24, %conv.i.i.us.28
  %58 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.29 = or i32 %58, 29
  %cmp4.i.i.us.29 = icmp sgt i32 %24, %conv.i.i.us.29
  %59 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.30 = or i32 %59, 30
  %cmp4.i.i.us.30 = icmp sgt i32 %24, %conv.i.i.us.30
  %60 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.31 = or i32 %60, 31
  %cmp4.i.i.us.31 = icmp sgt i32 %24, %conv.i.i.us.31
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i.us = icmp sgt i32 %20, %conv2.i.i.us
  %mul.i.i.us = mul nsw i32 %24, %conv2.i.i.us
  %mul8.i.i.us = mul nsw i32 %28, %conv2.i.i.us
  %61 = sext i32 %mul8.i.i.us to i64
  br i1 %cmp.i.i.us, label %pregion_for_entry.entry.i.i.us.us.preheader, label %pregion_for_end.i.i.us

pregion_for_entry.entry.i.i.us.us.preheader:      ; preds = %pregion_for_entry.pregion_for_init.i.i.us.preheader
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_end.i.i.us.loopexit:                  ; preds = %if.end.i.i.us.us.153
  br label %pregion_for_end.i.i.us

pregion_for_end.i.i.us:                           ; preds = %pregion_for_end.i.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %62 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %62, 1
  %cmp.i.i.us.1 = icmp sgt i32 %20, %conv2.i.i.us.1
  %mul.i.i.us.1 = mul nsw i32 %24, %conv2.i.i.us.1
  %mul8.i.i.us.1 = mul nsw i32 %28, %conv2.i.i.us.1
  %63 = sext i32 %mul8.i.i.us.1 to i64
  br i1 %cmp.i.i.us.1, label %pregion_for_entry.entry.i.i.us.us.1.preheader, label %pregion_for_end.i.i.us.1

pregion_for_entry.entry.i.i.us.us.1.preheader:    ; preds = %pregion_for_end.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.entry.i.i.us.us:                ; preds = %if.end.i.i.us.us.153, %pregion_for_entry.entry.i.i.us.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ %220, %if.end.i.i.us.us.153 ], [ 0, %pregion_for_entry.entry.i.i.us.us.preheader ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %cmp4.i.i.us.us = icmp sgt i32 %24, %conv.i.i.us.us
  br i1 %cmp4.i.i.us.us, label %if.then.i.i.us.us, label %if.end.i.i.us.us

if.then.i.i.us.us:                                ; preds = %pregion_for_entry.entry.i.i.us.us
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %64 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

if.end.i.i.us.us.loopexit:                        ; preds = %for.body.i.i.us.us
  br label %if.end.i.i.us.us

if.end.i.i.us.us:                                 ; preds = %if.end.i.i.us.us.loopexit, %pregion_for_entry.entry.i.i.us.us
  %65 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.138 = add nuw nsw i64 %65, %mul.i.i.i
  %conv.i.i.us.us.139 = trunc i64 %add1.i.i.i.us.us.138 to i32
  %cmp4.i.i.us.us.140 = icmp sgt i32 %24, %conv.i.i.us.us.139
  br i1 %cmp4.i.i.us.us.140, label %if.then.i.i.us.us.146, label %if.end.i.i.us.us.153

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %if.then.i.i.us.us
  %indvars.iv.next.i.i3.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %if.then.i.i.us.us ]
  %66 = phi float [ %72, %for.body.i.i.us.us ], [ 0.000000e+00, %if.then.i.i.us.us ]
  %67 = add nsw i64 %indvars.iv.next.i.i3.us.us, %61
  %arrayidx11.i.i.us.us = getelementptr inbounds float, float* %8, i64 %67
  %68 = load float, float* %arrayidx11.i.i.us.us, align 4, !tbaa !12
  %69 = mul nsw i64 %indvars.iv.next.i.i3.us.us, %29
  %70 = add nsw i64 %69, %64
  %arrayidx15.i.i.us.us = getelementptr inbounds float, float* %12, i64 %70
  %71 = load float, float* %arrayidx15.i.i.us.us, align 4, !tbaa !12
  %72 = tail call float @llvm.fmuladd.f32(float %68, float %71, float %66) #2
  store float %72, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i3.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %if.end.i.i.us.us.loopexit, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader
  %_local_id_y.i.0 = phi i64 [ %73, %pregion_for_end.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader ]
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
  %arrayidx.i.i.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  br i1 %cmp4.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

pregion_for_end.i.i:                              ; preds = %if.then.i.i.us.31, %if.end.i.i.us.30, %pregion_for_entry.pregion_for_init.i.i
  %73 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond33.not = icmp eq i64 %73, 8
  br i1 %exitcond33.not, label %_pocl_kernel_mm3_kernel3.exit.loopexit54, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !21

_pocl_kernel_mm3_kernel3.exit.loopexit:           ; preds = %if.end.i.i.us.us.7.1
  br label %_pocl_kernel_mm3_kernel3.exit

_pocl_kernel_mm3_kernel3.exit.loopexit54:         ; preds = %pregion_for_end.i.i
  br label %_pocl_kernel_mm3_kernel3.exit

_pocl_kernel_mm3_kernel3.exit:                    ; preds = %pregion_for_end.i.i.us.6, %_pocl_kernel_mm3_kernel3.exit.loopexit54, %_pocl_kernel_mm3_kernel3.exit.loopexit
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %if.end.i.i.us.us.1.1, %pregion_for_entry.entry.i.i.us.us.1.preheader
  %_local_id_x.i.0.us.us.1 = phi i64 [ %211, %if.end.i.i.us.us.1.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1.preheader ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %cmp4.i.i.us.us.1 = icmp sgt i32 %24, %conv.i.i.us.us.1
  br i1 %cmp4.i.i.us.us.1, label %if.then.i.i.us.us.1, label %if.end.i.i.us.us.1

if.then.i.i.us.us.1:                              ; preds = %pregion_for_entry.entry.i.i.us.us.1
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %74 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %if.then.i.i.us.us.1
  %indvars.iv.next.i.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %if.then.i.i.us.us.1 ]
  %75 = phi float [ %81, %for.body.i.i.us.us.1 ], [ 0.000000e+00, %if.then.i.i.us.us.1 ]
  %76 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %63
  %arrayidx11.i.i.us.us.1 = getelementptr inbounds float, float* %8, i64 %76
  %77 = load float, float* %arrayidx11.i.i.us.us.1, align 4, !tbaa !12
  %78 = mul nsw i64 %indvars.iv.next.i.i3.us.us.1, %29
  %79 = add nsw i64 %78, %74
  %arrayidx15.i.i.us.us.1 = getelementptr inbounds float, float* %12, i64 %79
  %80 = load float, float* %arrayidx15.i.i.us.us.1, align 4, !tbaa !12
  %81 = tail call float @llvm.fmuladd.f32(float %77, float %80, float %75) #2
  store float %81, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %if.end.i.i.us.us.1.loopexit, label %for.body.i.i.us.us.1, !llvm.loop !19

if.end.i.i.us.us.1.loopexit:                      ; preds = %for.body.i.i.us.us.1
  br label %if.end.i.i.us.us.1

if.end.i.i.us.us.1:                               ; preds = %if.end.i.i.us.us.1.loopexit, %pregion_for_entry.entry.i.i.us.us.1
  %82 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %82, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %cmp4.i.i.us.us.1.1 = icmp sgt i32 %24, %conv.i.i.us.us.1.1
  br i1 %cmp4.i.i.us.us.1.1, label %if.then.i.i.us.us.1.1, label %if.end.i.i.us.us.1.1

pregion_for_end.i.i.us.1.loopexit:                ; preds = %if.end.i.i.us.us.1.1
  br label %pregion_for_end.i.i.us.1

pregion_for_end.i.i.us.1:                         ; preds = %pregion_for_end.i.i.us.1.loopexit, %pregion_for_end.i.i.us
  %83 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %83, 2
  %cmp.i.i.us.2 = icmp sgt i32 %20, %conv2.i.i.us.2
  %mul.i.i.us.2 = mul nsw i32 %24, %conv2.i.i.us.2
  %mul8.i.i.us.2 = mul nsw i32 %28, %conv2.i.i.us.2
  %84 = sext i32 %mul8.i.i.us.2 to i64
  br i1 %cmp.i.i.us.2, label %pregion_for_entry.entry.i.i.us.us.2.preheader, label %pregion_for_end.i.i.us.2

pregion_for_entry.entry.i.i.us.us.2.preheader:    ; preds = %pregion_for_end.i.i.us.1
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %if.end.i.i.us.us.2.1, %pregion_for_entry.entry.i.i.us.us.2.preheader
  %_local_id_x.i.0.us.us.2 = phi i64 [ %202, %if.end.i.i.us.us.2.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2.preheader ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %cmp4.i.i.us.us.2 = icmp sgt i32 %24, %conv.i.i.us.us.2
  br i1 %cmp4.i.i.us.us.2, label %if.then.i.i.us.us.2, label %if.end.i.i.us.us.2

if.then.i.i.us.us.2:                              ; preds = %pregion_for_entry.entry.i.i.us.us.2
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %85 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %if.then.i.i.us.us.2
  %indvars.iv.next.i.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %if.then.i.i.us.us.2 ]
  %86 = phi float [ %92, %for.body.i.i.us.us.2 ], [ 0.000000e+00, %if.then.i.i.us.us.2 ]
  %87 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %84
  %arrayidx11.i.i.us.us.2 = getelementptr inbounds float, float* %8, i64 %87
  %88 = load float, float* %arrayidx11.i.i.us.us.2, align 4, !tbaa !12
  %89 = mul nsw i64 %indvars.iv.next.i.i3.us.us.2, %29
  %90 = add nsw i64 %89, %85
  %arrayidx15.i.i.us.us.2 = getelementptr inbounds float, float* %12, i64 %90
  %91 = load float, float* %arrayidx15.i.i.us.us.2, align 4, !tbaa !12
  %92 = tail call float @llvm.fmuladd.f32(float %88, float %91, float %86) #2
  store float %92, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %if.end.i.i.us.us.2.loopexit, label %for.body.i.i.us.us.2, !llvm.loop !19

if.end.i.i.us.us.2.loopexit:                      ; preds = %for.body.i.i.us.us.2
  br label %if.end.i.i.us.us.2

if.end.i.i.us.us.2:                               ; preds = %if.end.i.i.us.us.2.loopexit, %pregion_for_entry.entry.i.i.us.us.2
  %93 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %93, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %cmp4.i.i.us.us.2.1 = icmp sgt i32 %24, %conv.i.i.us.us.2.1
  br i1 %cmp4.i.i.us.us.2.1, label %if.then.i.i.us.us.2.1, label %if.end.i.i.us.us.2.1

pregion_for_end.i.i.us.2.loopexit:                ; preds = %if.end.i.i.us.us.2.1
  br label %pregion_for_end.i.i.us.2

pregion_for_end.i.i.us.2:                         ; preds = %pregion_for_end.i.i.us.2.loopexit, %pregion_for_end.i.i.us.1
  %94 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %94, 3
  %cmp.i.i.us.3 = icmp sgt i32 %20, %conv2.i.i.us.3
  %mul.i.i.us.3 = mul nsw i32 %24, %conv2.i.i.us.3
  %mul8.i.i.us.3 = mul nsw i32 %28, %conv2.i.i.us.3
  %95 = sext i32 %mul8.i.i.us.3 to i64
  br i1 %cmp.i.i.us.3, label %pregion_for_entry.entry.i.i.us.us.3.preheader, label %pregion_for_end.i.i.us.3

pregion_for_entry.entry.i.i.us.us.3.preheader:    ; preds = %pregion_for_end.i.i.us.2
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %if.end.i.i.us.us.3.1, %pregion_for_entry.entry.i.i.us.us.3.preheader
  %_local_id_x.i.0.us.us.3 = phi i64 [ %193, %if.end.i.i.us.us.3.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3.preheader ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %cmp4.i.i.us.us.3 = icmp sgt i32 %24, %conv.i.i.us.us.3
  br i1 %cmp4.i.i.us.us.3, label %if.then.i.i.us.us.3, label %if.end.i.i.us.us.3

if.then.i.i.us.us.3:                              ; preds = %pregion_for_entry.entry.i.i.us.us.3
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %96 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %if.then.i.i.us.us.3
  %indvars.iv.next.i.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %if.then.i.i.us.us.3 ]
  %97 = phi float [ %103, %for.body.i.i.us.us.3 ], [ 0.000000e+00, %if.then.i.i.us.us.3 ]
  %98 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %95
  %arrayidx11.i.i.us.us.3 = getelementptr inbounds float, float* %8, i64 %98
  %99 = load float, float* %arrayidx11.i.i.us.us.3, align 4, !tbaa !12
  %100 = mul nsw i64 %indvars.iv.next.i.i3.us.us.3, %29
  %101 = add nsw i64 %100, %96
  %arrayidx15.i.i.us.us.3 = getelementptr inbounds float, float* %12, i64 %101
  %102 = load float, float* %arrayidx15.i.i.us.us.3, align 4, !tbaa !12
  %103 = tail call float @llvm.fmuladd.f32(float %99, float %102, float %97) #2
  store float %103, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %if.end.i.i.us.us.3.loopexit, label %for.body.i.i.us.us.3, !llvm.loop !19

if.end.i.i.us.us.3.loopexit:                      ; preds = %for.body.i.i.us.us.3
  br label %if.end.i.i.us.us.3

if.end.i.i.us.us.3:                               ; preds = %if.end.i.i.us.us.3.loopexit, %pregion_for_entry.entry.i.i.us.us.3
  %104 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %104, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %cmp4.i.i.us.us.3.1 = icmp sgt i32 %24, %conv.i.i.us.us.3.1
  br i1 %cmp4.i.i.us.us.3.1, label %if.then.i.i.us.us.3.1, label %if.end.i.i.us.us.3.1

pregion_for_end.i.i.us.3.loopexit:                ; preds = %if.end.i.i.us.us.3.1
  br label %pregion_for_end.i.i.us.3

pregion_for_end.i.i.us.3:                         ; preds = %pregion_for_end.i.i.us.3.loopexit, %pregion_for_end.i.i.us.2
  %105 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %105, 4
  %cmp.i.i.us.4 = icmp sgt i32 %20, %conv2.i.i.us.4
  %mul.i.i.us.4 = mul nsw i32 %24, %conv2.i.i.us.4
  %mul8.i.i.us.4 = mul nsw i32 %28, %conv2.i.i.us.4
  %106 = sext i32 %mul8.i.i.us.4 to i64
  br i1 %cmp.i.i.us.4, label %pregion_for_entry.entry.i.i.us.us.4.preheader, label %pregion_for_end.i.i.us.4

pregion_for_entry.entry.i.i.us.us.4.preheader:    ; preds = %pregion_for_end.i.i.us.3
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %if.end.i.i.us.us.4.1, %pregion_for_entry.entry.i.i.us.us.4.preheader
  %_local_id_x.i.0.us.us.4 = phi i64 [ %184, %if.end.i.i.us.us.4.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4.preheader ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %cmp4.i.i.us.us.4 = icmp sgt i32 %24, %conv.i.i.us.us.4
  br i1 %cmp4.i.i.us.us.4, label %if.then.i.i.us.us.4, label %if.end.i.i.us.us.4

if.then.i.i.us.us.4:                              ; preds = %pregion_for_entry.entry.i.i.us.us.4
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %107 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %if.then.i.i.us.us.4
  %indvars.iv.next.i.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %if.then.i.i.us.us.4 ]
  %108 = phi float [ %114, %for.body.i.i.us.us.4 ], [ 0.000000e+00, %if.then.i.i.us.us.4 ]
  %109 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %106
  %arrayidx11.i.i.us.us.4 = getelementptr inbounds float, float* %8, i64 %109
  %110 = load float, float* %arrayidx11.i.i.us.us.4, align 4, !tbaa !12
  %111 = mul nsw i64 %indvars.iv.next.i.i3.us.us.4, %29
  %112 = add nsw i64 %111, %107
  %arrayidx15.i.i.us.us.4 = getelementptr inbounds float, float* %12, i64 %112
  %113 = load float, float* %arrayidx15.i.i.us.us.4, align 4, !tbaa !12
  %114 = tail call float @llvm.fmuladd.f32(float %110, float %113, float %108) #2
  store float %114, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %if.end.i.i.us.us.4.loopexit, label %for.body.i.i.us.us.4, !llvm.loop !19

if.end.i.i.us.us.4.loopexit:                      ; preds = %for.body.i.i.us.us.4
  br label %if.end.i.i.us.us.4

if.end.i.i.us.us.4:                               ; preds = %if.end.i.i.us.us.4.loopexit, %pregion_for_entry.entry.i.i.us.us.4
  %115 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %115, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %cmp4.i.i.us.us.4.1 = icmp sgt i32 %24, %conv.i.i.us.us.4.1
  br i1 %cmp4.i.i.us.us.4.1, label %if.then.i.i.us.us.4.1, label %if.end.i.i.us.us.4.1

pregion_for_end.i.i.us.4.loopexit:                ; preds = %if.end.i.i.us.us.4.1
  br label %pregion_for_end.i.i.us.4

pregion_for_end.i.i.us.4:                         ; preds = %pregion_for_end.i.i.us.4.loopexit, %pregion_for_end.i.i.us.3
  %116 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %116, 5
  %cmp.i.i.us.5 = icmp sgt i32 %20, %conv2.i.i.us.5
  %mul.i.i.us.5 = mul nsw i32 %24, %conv2.i.i.us.5
  %mul8.i.i.us.5 = mul nsw i32 %28, %conv2.i.i.us.5
  %117 = sext i32 %mul8.i.i.us.5 to i64
  br i1 %cmp.i.i.us.5, label %pregion_for_entry.entry.i.i.us.us.5.preheader, label %pregion_for_end.i.i.us.5

pregion_for_entry.entry.i.i.us.us.5.preheader:    ; preds = %pregion_for_end.i.i.us.4
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %if.end.i.i.us.us.5.1, %pregion_for_entry.entry.i.i.us.us.5.preheader
  %_local_id_x.i.0.us.us.5 = phi i64 [ %175, %if.end.i.i.us.us.5.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5.preheader ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %cmp4.i.i.us.us.5 = icmp sgt i32 %24, %conv.i.i.us.us.5
  br i1 %cmp4.i.i.us.us.5, label %if.then.i.i.us.us.5, label %if.end.i.i.us.us.5

if.then.i.i.us.us.5:                              ; preds = %pregion_for_entry.entry.i.i.us.us.5
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %118 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %if.then.i.i.us.us.5
  %indvars.iv.next.i.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %if.then.i.i.us.us.5 ]
  %119 = phi float [ %125, %for.body.i.i.us.us.5 ], [ 0.000000e+00, %if.then.i.i.us.us.5 ]
  %120 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %117
  %arrayidx11.i.i.us.us.5 = getelementptr inbounds float, float* %8, i64 %120
  %121 = load float, float* %arrayidx11.i.i.us.us.5, align 4, !tbaa !12
  %122 = mul nsw i64 %indvars.iv.next.i.i3.us.us.5, %29
  %123 = add nsw i64 %122, %118
  %arrayidx15.i.i.us.us.5 = getelementptr inbounds float, float* %12, i64 %123
  %124 = load float, float* %arrayidx15.i.i.us.us.5, align 4, !tbaa !12
  %125 = tail call float @llvm.fmuladd.f32(float %121, float %124, float %119) #2
  store float %125, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %if.end.i.i.us.us.5.loopexit, label %for.body.i.i.us.us.5, !llvm.loop !19

if.end.i.i.us.us.5.loopexit:                      ; preds = %for.body.i.i.us.us.5
  br label %if.end.i.i.us.us.5

if.end.i.i.us.us.5:                               ; preds = %if.end.i.i.us.us.5.loopexit, %pregion_for_entry.entry.i.i.us.us.5
  %126 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %126, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %cmp4.i.i.us.us.5.1 = icmp sgt i32 %24, %conv.i.i.us.us.5.1
  br i1 %cmp4.i.i.us.us.5.1, label %if.then.i.i.us.us.5.1, label %if.end.i.i.us.us.5.1

pregion_for_end.i.i.us.5.loopexit:                ; preds = %if.end.i.i.us.us.5.1
  br label %pregion_for_end.i.i.us.5

pregion_for_end.i.i.us.5:                         ; preds = %pregion_for_end.i.i.us.5.loopexit, %pregion_for_end.i.i.us.4
  %127 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %127, 6
  %cmp.i.i.us.6 = icmp sgt i32 %20, %conv2.i.i.us.6
  %mul.i.i.us.6 = mul nsw i32 %24, %conv2.i.i.us.6
  %mul8.i.i.us.6 = mul nsw i32 %28, %conv2.i.i.us.6
  %128 = sext i32 %mul8.i.i.us.6 to i64
  br i1 %cmp.i.i.us.6, label %pregion_for_entry.entry.i.i.us.us.6.preheader, label %pregion_for_end.i.i.us.6

pregion_for_entry.entry.i.i.us.us.6.preheader:    ; preds = %pregion_for_end.i.i.us.5
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %if.end.i.i.us.us.6.1, %pregion_for_entry.entry.i.i.us.us.6.preheader
  %_local_id_x.i.0.us.us.6 = phi i64 [ %166, %if.end.i.i.us.us.6.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6.preheader ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %cmp4.i.i.us.us.6 = icmp sgt i32 %24, %conv.i.i.us.us.6
  br i1 %cmp4.i.i.us.us.6, label %if.then.i.i.us.us.6, label %if.end.i.i.us.us.6

if.then.i.i.us.us.6:                              ; preds = %pregion_for_entry.entry.i.i.us.us.6
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %129 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %if.then.i.i.us.us.6
  %indvars.iv.next.i.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %if.then.i.i.us.us.6 ]
  %130 = phi float [ %136, %for.body.i.i.us.us.6 ], [ 0.000000e+00, %if.then.i.i.us.us.6 ]
  %131 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %128
  %arrayidx11.i.i.us.us.6 = getelementptr inbounds float, float* %8, i64 %131
  %132 = load float, float* %arrayidx11.i.i.us.us.6, align 4, !tbaa !12
  %133 = mul nsw i64 %indvars.iv.next.i.i3.us.us.6, %29
  %134 = add nsw i64 %133, %129
  %arrayidx15.i.i.us.us.6 = getelementptr inbounds float, float* %12, i64 %134
  %135 = load float, float* %arrayidx15.i.i.us.us.6, align 4, !tbaa !12
  %136 = tail call float @llvm.fmuladd.f32(float %132, float %135, float %130) #2
  store float %136, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %if.end.i.i.us.us.6.loopexit, label %for.body.i.i.us.us.6, !llvm.loop !19

if.end.i.i.us.us.6.loopexit:                      ; preds = %for.body.i.i.us.us.6
  br label %if.end.i.i.us.us.6

if.end.i.i.us.us.6:                               ; preds = %if.end.i.i.us.us.6.loopexit, %pregion_for_entry.entry.i.i.us.us.6
  %137 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %137, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %cmp4.i.i.us.us.6.1 = icmp sgt i32 %24, %conv.i.i.us.us.6.1
  br i1 %cmp4.i.i.us.us.6.1, label %if.then.i.i.us.us.6.1, label %if.end.i.i.us.us.6.1

pregion_for_end.i.i.us.6.loopexit:                ; preds = %if.end.i.i.us.us.6.1
  br label %pregion_for_end.i.i.us.6

pregion_for_end.i.i.us.6:                         ; preds = %pregion_for_end.i.i.us.6.loopexit, %pregion_for_end.i.i.us.5
  %138 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %138, 7
  %cmp.i.i.us.7 = icmp sgt i32 %20, %conv2.i.i.us.7
  %mul.i.i.us.7 = mul nsw i32 %24, %conv2.i.i.us.7
  %mul8.i.i.us.7 = mul nsw i32 %28, %conv2.i.i.us.7
  %139 = sext i32 %mul8.i.i.us.7 to i64
  br i1 %cmp.i.i.us.7, label %pregion_for_entry.entry.i.i.us.us.7.preheader, label %_pocl_kernel_mm3_kernel3.exit

pregion_for_entry.entry.i.i.us.us.7.preheader:    ; preds = %pregion_for_end.i.i.us.6
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %if.end.i.i.us.us.7.1, %pregion_for_entry.entry.i.i.us.us.7.preheader
  %_local_id_x.i.0.us.us.7 = phi i64 [ %157, %if.end.i.i.us.us.7.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7.preheader ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %cmp4.i.i.us.us.7 = icmp sgt i32 %24, %conv.i.i.us.us.7
  br i1 %cmp4.i.i.us.us.7, label %if.then.i.i.us.us.7, label %if.end.i.i.us.us.7

if.then.i.i.us.us.7:                              ; preds = %pregion_for_entry.entry.i.i.us.us.7
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %140 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %if.then.i.i.us.us.7
  %indvars.iv.next.i.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %if.then.i.i.us.us.7 ]
  %141 = phi float [ %147, %for.body.i.i.us.us.7 ], [ 0.000000e+00, %if.then.i.i.us.us.7 ]
  %142 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %139
  %arrayidx11.i.i.us.us.7 = getelementptr inbounds float, float* %8, i64 %142
  %143 = load float, float* %arrayidx11.i.i.us.us.7, align 4, !tbaa !12
  %144 = mul nsw i64 %indvars.iv.next.i.i3.us.us.7, %29
  %145 = add nsw i64 %144, %140
  %arrayidx15.i.i.us.us.7 = getelementptr inbounds float, float* %12, i64 %145
  %146 = load float, float* %arrayidx15.i.i.us.us.7, align 4, !tbaa !12
  %147 = tail call float @llvm.fmuladd.f32(float %143, float %146, float %141) #2
  store float %147, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %if.end.i.i.us.us.7.loopexit, label %for.body.i.i.us.us.7, !llvm.loop !19

if.end.i.i.us.us.7.loopexit:                      ; preds = %for.body.i.i.us.us.7
  br label %if.end.i.i.us.us.7

if.end.i.i.us.us.7:                               ; preds = %if.end.i.i.us.us.7.loopexit, %pregion_for_entry.entry.i.i.us.us.7
  %148 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %148, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %cmp4.i.i.us.us.7.1 = icmp sgt i32 %24, %conv.i.i.us.us.7.1
  br i1 %cmp4.i.i.us.us.7.1, label %if.then.i.i.us.us.7.1, label %if.end.i.i.us.us.7.1

if.then.i.i.us.1:                                 ; preds = %if.end.i.i.us
  %add.i.i.us.1 = add nsw i32 %mul.i.i, %conv.i.i.us.1
  %idxprom.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.then.i.i.us.1, %if.end.i.i.us
  br i1 %cmp4.i.i.us.2, label %if.then.i.i.us.2, label %if.end.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %if.end.i.i.us.1
  %add.i.i.us.2 = add nsw i32 %mul.i.i, %conv.i.i.us.2
  %idxprom.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2

if.end.i.i.us.2:                                  ; preds = %if.then.i.i.us.2, %if.end.i.i.us.1
  br i1 %cmp4.i.i.us.3, label %if.then.i.i.us.3, label %if.end.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %if.end.i.i.us.2
  %add.i.i.us.3 = add nsw i32 %mul.i.i, %conv.i.i.us.3
  %idxprom.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3

if.end.i.i.us.3:                                  ; preds = %if.then.i.i.us.3, %if.end.i.i.us.2
  br i1 %cmp4.i.i.us.4, label %if.then.i.i.us.4, label %if.end.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %if.end.i.i.us.3
  %add.i.i.us.4 = add nsw i32 %mul.i.i, %conv.i.i.us.4
  %idxprom.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4

if.end.i.i.us.4:                                  ; preds = %if.then.i.i.us.4, %if.end.i.i.us.3
  br i1 %cmp4.i.i.us.5, label %if.then.i.i.us.5, label %if.end.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %if.end.i.i.us.4
  %add.i.i.us.5 = add nsw i32 %mul.i.i, %conv.i.i.us.5
  %idxprom.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5

if.end.i.i.us.5:                                  ; preds = %if.then.i.i.us.5, %if.end.i.i.us.4
  br i1 %cmp4.i.i.us.6, label %if.then.i.i.us.6, label %if.end.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %if.end.i.i.us.5
  %add.i.i.us.6 = add nsw i32 %mul.i.i, %conv.i.i.us.6
  %idxprom.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6

if.end.i.i.us.6:                                  ; preds = %if.then.i.i.us.6, %if.end.i.i.us.5
  br i1 %cmp4.i.i.us.7, label %if.then.i.i.us.7, label %if.end.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %if.end.i.i.us.6
  %add.i.i.us.7 = add nsw i32 %mul.i.i, %conv.i.i.us.7
  %idxprom.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7

if.end.i.i.us.7:                                  ; preds = %if.then.i.i.us.7, %if.end.i.i.us.6
  br i1 %cmp4.i.i.us.8, label %if.then.i.i.us.8, label %if.end.i.i.us.8

if.then.i.i.us.8:                                 ; preds = %if.end.i.i.us.7
  %add.i.i.us.8 = add nsw i32 %mul.i.i, %conv.i.i.us.8
  %idxprom.i.i.us.8 = sext i32 %add.i.i.us.8 to i64
  %arrayidx.i.i.us.8 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.8
  store float 0.000000e+00, float* %arrayidx.i.i.us.8, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.8

if.end.i.i.us.8:                                  ; preds = %if.then.i.i.us.8, %if.end.i.i.us.7
  br i1 %cmp4.i.i.us.9, label %if.then.i.i.us.9, label %if.end.i.i.us.9

if.then.i.i.us.9:                                 ; preds = %if.end.i.i.us.8
  %add.i.i.us.9 = add nsw i32 %mul.i.i, %conv.i.i.us.9
  %idxprom.i.i.us.9 = sext i32 %add.i.i.us.9 to i64
  %arrayidx.i.i.us.9 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.9
  store float 0.000000e+00, float* %arrayidx.i.i.us.9, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.9

if.end.i.i.us.9:                                  ; preds = %if.then.i.i.us.9, %if.end.i.i.us.8
  br i1 %cmp4.i.i.us.10, label %if.then.i.i.us.10, label %if.end.i.i.us.10

if.then.i.i.us.10:                                ; preds = %if.end.i.i.us.9
  %add.i.i.us.10 = add nsw i32 %mul.i.i, %conv.i.i.us.10
  %idxprom.i.i.us.10 = sext i32 %add.i.i.us.10 to i64
  %arrayidx.i.i.us.10 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.10
  store float 0.000000e+00, float* %arrayidx.i.i.us.10, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.10

if.end.i.i.us.10:                                 ; preds = %if.then.i.i.us.10, %if.end.i.i.us.9
  br i1 %cmp4.i.i.us.11, label %if.then.i.i.us.11, label %if.end.i.i.us.11

if.then.i.i.us.11:                                ; preds = %if.end.i.i.us.10
  %add.i.i.us.11 = add nsw i32 %mul.i.i, %conv.i.i.us.11
  %idxprom.i.i.us.11 = sext i32 %add.i.i.us.11 to i64
  %arrayidx.i.i.us.11 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.11
  store float 0.000000e+00, float* %arrayidx.i.i.us.11, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.11

if.end.i.i.us.11:                                 ; preds = %if.then.i.i.us.11, %if.end.i.i.us.10
  br i1 %cmp4.i.i.us.12, label %if.then.i.i.us.12, label %if.end.i.i.us.12

if.then.i.i.us.12:                                ; preds = %if.end.i.i.us.11
  %add.i.i.us.12 = add nsw i32 %mul.i.i, %conv.i.i.us.12
  %idxprom.i.i.us.12 = sext i32 %add.i.i.us.12 to i64
  %arrayidx.i.i.us.12 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.12
  store float 0.000000e+00, float* %arrayidx.i.i.us.12, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.12

if.end.i.i.us.12:                                 ; preds = %if.then.i.i.us.12, %if.end.i.i.us.11
  br i1 %cmp4.i.i.us.13, label %if.then.i.i.us.13, label %if.end.i.i.us.13

if.then.i.i.us.13:                                ; preds = %if.end.i.i.us.12
  %add.i.i.us.13 = add nsw i32 %mul.i.i, %conv.i.i.us.13
  %idxprom.i.i.us.13 = sext i32 %add.i.i.us.13 to i64
  %arrayidx.i.i.us.13 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.13
  store float 0.000000e+00, float* %arrayidx.i.i.us.13, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.13

if.end.i.i.us.13:                                 ; preds = %if.then.i.i.us.13, %if.end.i.i.us.12
  br i1 %cmp4.i.i.us.14, label %if.then.i.i.us.14, label %if.end.i.i.us.14

if.then.i.i.us.14:                                ; preds = %if.end.i.i.us.13
  %add.i.i.us.14 = add nsw i32 %mul.i.i, %conv.i.i.us.14
  %idxprom.i.i.us.14 = sext i32 %add.i.i.us.14 to i64
  %arrayidx.i.i.us.14 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.14
  store float 0.000000e+00, float* %arrayidx.i.i.us.14, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.14

if.end.i.i.us.14:                                 ; preds = %if.then.i.i.us.14, %if.end.i.i.us.13
  br i1 %cmp4.i.i.us.15, label %if.then.i.i.us.15, label %if.end.i.i.us.15

if.then.i.i.us.15:                                ; preds = %if.end.i.i.us.14
  %add.i.i.us.15 = add nsw i32 %mul.i.i, %conv.i.i.us.15
  %idxprom.i.i.us.15 = sext i32 %add.i.i.us.15 to i64
  %arrayidx.i.i.us.15 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.15
  store float 0.000000e+00, float* %arrayidx.i.i.us.15, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.15

if.end.i.i.us.15:                                 ; preds = %if.then.i.i.us.15, %if.end.i.i.us.14
  br i1 %cmp4.i.i.us.16, label %if.then.i.i.us.16, label %if.end.i.i.us.16

if.then.i.i.us.16:                                ; preds = %if.end.i.i.us.15
  %add.i.i.us.16 = add nsw i32 %mul.i.i, %conv.i.i.us.16
  %idxprom.i.i.us.16 = sext i32 %add.i.i.us.16 to i64
  %arrayidx.i.i.us.16 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.16
  store float 0.000000e+00, float* %arrayidx.i.i.us.16, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.16

if.end.i.i.us.16:                                 ; preds = %if.then.i.i.us.16, %if.end.i.i.us.15
  br i1 %cmp4.i.i.us.17, label %if.then.i.i.us.17, label %if.end.i.i.us.17

if.then.i.i.us.17:                                ; preds = %if.end.i.i.us.16
  %add.i.i.us.17 = add nsw i32 %mul.i.i, %conv.i.i.us.17
  %idxprom.i.i.us.17 = sext i32 %add.i.i.us.17 to i64
  %arrayidx.i.i.us.17 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.17
  store float 0.000000e+00, float* %arrayidx.i.i.us.17, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.17

if.end.i.i.us.17:                                 ; preds = %if.then.i.i.us.17, %if.end.i.i.us.16
  br i1 %cmp4.i.i.us.18, label %if.then.i.i.us.18, label %if.end.i.i.us.18

if.then.i.i.us.18:                                ; preds = %if.end.i.i.us.17
  %add.i.i.us.18 = add nsw i32 %mul.i.i, %conv.i.i.us.18
  %idxprom.i.i.us.18 = sext i32 %add.i.i.us.18 to i64
  %arrayidx.i.i.us.18 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.18
  store float 0.000000e+00, float* %arrayidx.i.i.us.18, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.18

if.end.i.i.us.18:                                 ; preds = %if.then.i.i.us.18, %if.end.i.i.us.17
  br i1 %cmp4.i.i.us.19, label %if.then.i.i.us.19, label %if.end.i.i.us.19

if.then.i.i.us.19:                                ; preds = %if.end.i.i.us.18
  %add.i.i.us.19 = add nsw i32 %mul.i.i, %conv.i.i.us.19
  %idxprom.i.i.us.19 = sext i32 %add.i.i.us.19 to i64
  %arrayidx.i.i.us.19 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.19
  store float 0.000000e+00, float* %arrayidx.i.i.us.19, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.19

if.end.i.i.us.19:                                 ; preds = %if.then.i.i.us.19, %if.end.i.i.us.18
  br i1 %cmp4.i.i.us.20, label %if.then.i.i.us.20, label %if.end.i.i.us.20

if.then.i.i.us.20:                                ; preds = %if.end.i.i.us.19
  %add.i.i.us.20 = add nsw i32 %mul.i.i, %conv.i.i.us.20
  %idxprom.i.i.us.20 = sext i32 %add.i.i.us.20 to i64
  %arrayidx.i.i.us.20 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.20
  store float 0.000000e+00, float* %arrayidx.i.i.us.20, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.20

if.end.i.i.us.20:                                 ; preds = %if.then.i.i.us.20, %if.end.i.i.us.19
  br i1 %cmp4.i.i.us.21, label %if.then.i.i.us.21, label %if.end.i.i.us.21

if.then.i.i.us.21:                                ; preds = %if.end.i.i.us.20
  %add.i.i.us.21 = add nsw i32 %mul.i.i, %conv.i.i.us.21
  %idxprom.i.i.us.21 = sext i32 %add.i.i.us.21 to i64
  %arrayidx.i.i.us.21 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.21
  store float 0.000000e+00, float* %arrayidx.i.i.us.21, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.21

if.end.i.i.us.21:                                 ; preds = %if.then.i.i.us.21, %if.end.i.i.us.20
  br i1 %cmp4.i.i.us.22, label %if.then.i.i.us.22, label %if.end.i.i.us.22

if.then.i.i.us.22:                                ; preds = %if.end.i.i.us.21
  %add.i.i.us.22 = add nsw i32 %mul.i.i, %conv.i.i.us.22
  %idxprom.i.i.us.22 = sext i32 %add.i.i.us.22 to i64
  %arrayidx.i.i.us.22 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.22
  store float 0.000000e+00, float* %arrayidx.i.i.us.22, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.22

if.end.i.i.us.22:                                 ; preds = %if.then.i.i.us.22, %if.end.i.i.us.21
  br i1 %cmp4.i.i.us.23, label %if.then.i.i.us.23, label %if.end.i.i.us.23

if.then.i.i.us.23:                                ; preds = %if.end.i.i.us.22
  %add.i.i.us.23 = add nsw i32 %mul.i.i, %conv.i.i.us.23
  %idxprom.i.i.us.23 = sext i32 %add.i.i.us.23 to i64
  %arrayidx.i.i.us.23 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.23
  store float 0.000000e+00, float* %arrayidx.i.i.us.23, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.23

if.end.i.i.us.23:                                 ; preds = %if.then.i.i.us.23, %if.end.i.i.us.22
  br i1 %cmp4.i.i.us.24, label %if.then.i.i.us.24, label %if.end.i.i.us.24

if.then.i.i.us.24:                                ; preds = %if.end.i.i.us.23
  %add.i.i.us.24 = add nsw i32 %mul.i.i, %conv.i.i.us.24
  %idxprom.i.i.us.24 = sext i32 %add.i.i.us.24 to i64
  %arrayidx.i.i.us.24 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.24
  store float 0.000000e+00, float* %arrayidx.i.i.us.24, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.24

if.end.i.i.us.24:                                 ; preds = %if.then.i.i.us.24, %if.end.i.i.us.23
  br i1 %cmp4.i.i.us.25, label %if.then.i.i.us.25, label %if.end.i.i.us.25

if.then.i.i.us.25:                                ; preds = %if.end.i.i.us.24
  %add.i.i.us.25 = add nsw i32 %mul.i.i, %conv.i.i.us.25
  %idxprom.i.i.us.25 = sext i32 %add.i.i.us.25 to i64
  %arrayidx.i.i.us.25 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.25
  store float 0.000000e+00, float* %arrayidx.i.i.us.25, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.25

if.end.i.i.us.25:                                 ; preds = %if.then.i.i.us.25, %if.end.i.i.us.24
  br i1 %cmp4.i.i.us.26, label %if.then.i.i.us.26, label %if.end.i.i.us.26

if.then.i.i.us.26:                                ; preds = %if.end.i.i.us.25
  %add.i.i.us.26 = add nsw i32 %mul.i.i, %conv.i.i.us.26
  %idxprom.i.i.us.26 = sext i32 %add.i.i.us.26 to i64
  %arrayidx.i.i.us.26 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.26
  store float 0.000000e+00, float* %arrayidx.i.i.us.26, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.26

if.end.i.i.us.26:                                 ; preds = %if.then.i.i.us.26, %if.end.i.i.us.25
  br i1 %cmp4.i.i.us.27, label %if.then.i.i.us.27, label %if.end.i.i.us.27

if.then.i.i.us.27:                                ; preds = %if.end.i.i.us.26
  %add.i.i.us.27 = add nsw i32 %mul.i.i, %conv.i.i.us.27
  %idxprom.i.i.us.27 = sext i32 %add.i.i.us.27 to i64
  %arrayidx.i.i.us.27 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.27
  store float 0.000000e+00, float* %arrayidx.i.i.us.27, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.27

if.end.i.i.us.27:                                 ; preds = %if.then.i.i.us.27, %if.end.i.i.us.26
  br i1 %cmp4.i.i.us.28, label %if.then.i.i.us.28, label %if.end.i.i.us.28

if.then.i.i.us.28:                                ; preds = %if.end.i.i.us.27
  %add.i.i.us.28 = add nsw i32 %mul.i.i, %conv.i.i.us.28
  %idxprom.i.i.us.28 = sext i32 %add.i.i.us.28 to i64
  %arrayidx.i.i.us.28 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.28
  store float 0.000000e+00, float* %arrayidx.i.i.us.28, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.28

if.end.i.i.us.28:                                 ; preds = %if.then.i.i.us.28, %if.end.i.i.us.27
  br i1 %cmp4.i.i.us.29, label %if.then.i.i.us.29, label %if.end.i.i.us.29

if.then.i.i.us.29:                                ; preds = %if.end.i.i.us.28
  %add.i.i.us.29 = add nsw i32 %mul.i.i, %conv.i.i.us.29
  %idxprom.i.i.us.29 = sext i32 %add.i.i.us.29 to i64
  %arrayidx.i.i.us.29 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.29
  store float 0.000000e+00, float* %arrayidx.i.i.us.29, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.29

if.end.i.i.us.29:                                 ; preds = %if.then.i.i.us.29, %if.end.i.i.us.28
  br i1 %cmp4.i.i.us.30, label %if.then.i.i.us.30, label %if.end.i.i.us.30

if.then.i.i.us.30:                                ; preds = %if.end.i.i.us.29
  %add.i.i.us.30 = add nsw i32 %mul.i.i, %conv.i.i.us.30
  %idxprom.i.i.us.30 = sext i32 %add.i.i.us.30 to i64
  %arrayidx.i.i.us.30 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.30
  store float 0.000000e+00, float* %arrayidx.i.i.us.30, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.30

if.end.i.i.us.30:                                 ; preds = %if.then.i.i.us.30, %if.end.i.i.us.29
  br i1 %cmp4.i.i.us.31, label %if.then.i.i.us.31, label %pregion_for_end.i.i

if.then.i.i.us.31:                                ; preds = %if.end.i.i.us.30
  %add.i.i.us.31 = add nsw i32 %mul.i.i, %conv.i.i.us.31
  %idxprom.i.i.us.31 = sext i32 %add.i.i.us.31 to i64
  %arrayidx.i.i.us.31 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.31
  store float 0.000000e+00, float* %arrayidx.i.i.us.31, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

if.then.i.i.us.us.7.1:                            ; preds = %if.end.i.i.us.us.7
  %add.i.i.us.us.7.1 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7.1 = shl i64 %add1.i.i.i.us.us.7.1, 32
  %149 = ashr exact i64 %sext.i.i.us.us.7.1, 32
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %if.then.i.i.us.us.7.1
  %indvars.iv.next.i.i3.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %if.then.i.i.us.us.7.1 ]
  %150 = phi float [ %156, %for.body.i.i.us.us.7.1 ], [ 0.000000e+00, %if.then.i.i.us.us.7.1 ]
  %151 = add nsw i64 %indvars.iv.next.i.i3.us.us.7.1, %139
  %arrayidx11.i.i.us.us.7.1 = getelementptr inbounds float, float* %8, i64 %151
  %152 = load float, float* %arrayidx11.i.i.us.us.7.1, align 4, !tbaa !12
  %153 = mul nsw i64 %indvars.iv.next.i.i3.us.us.7.1, %29
  %154 = add nsw i64 %153, %149
  %arrayidx15.i.i.us.us.7.1 = getelementptr inbounds float, float* %12, i64 %154
  %155 = load float, float* %arrayidx15.i.i.us.us.7.1, align 4, !tbaa !12
  %156 = tail call float @llvm.fmuladd.f32(float %152, float %155, float %150) #2
  store float %156, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7.1, label %if.end.i.i.us.us.7.1.loopexit, label %for.body.i.i.us.us.7.1, !llvm.loop !19

if.end.i.i.us.us.7.1.loopexit:                    ; preds = %for.body.i.i.us.us.7.1
  br label %if.end.i.i.us.us.7.1

if.end.i.i.us.us.7.1:                             ; preds = %if.end.i.i.us.us.7.1.loopexit, %if.end.i.i.us.us.7
  %157 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %157, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_mm3_kernel3.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !23

if.then.i.i.us.us.6.1:                            ; preds = %if.end.i.i.us.us.6
  %add.i.i.us.us.6.1 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6.1 = shl i64 %add1.i.i.i.us.us.6.1, 32
  %158 = ashr exact i64 %sext.i.i.us.us.6.1, 32
  br label %for.body.i.i.us.us.6.1

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %if.then.i.i.us.us.6.1
  %indvars.iv.next.i.i3.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %if.then.i.i.us.us.6.1 ]
  %159 = phi float [ %165, %for.body.i.i.us.us.6.1 ], [ 0.000000e+00, %if.then.i.i.us.us.6.1 ]
  %160 = add nsw i64 %indvars.iv.next.i.i3.us.us.6.1, %128
  %arrayidx11.i.i.us.us.6.1 = getelementptr inbounds float, float* %8, i64 %160
  %161 = load float, float* %arrayidx11.i.i.us.us.6.1, align 4, !tbaa !12
  %162 = mul nsw i64 %indvars.iv.next.i.i3.us.us.6.1, %29
  %163 = add nsw i64 %162, %158
  %arrayidx15.i.i.us.us.6.1 = getelementptr inbounds float, float* %12, i64 %163
  %164 = load float, float* %arrayidx15.i.i.us.us.6.1, align 4, !tbaa !12
  %165 = tail call float @llvm.fmuladd.f32(float %161, float %164, float %159) #2
  store float %165, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6.1, label %if.end.i.i.us.us.6.1.loopexit, label %for.body.i.i.us.us.6.1, !llvm.loop !19

if.end.i.i.us.us.6.1.loopexit:                    ; preds = %for.body.i.i.us.us.6.1
  br label %if.end.i.i.us.us.6.1

if.end.i.i.us.us.6.1:                             ; preds = %if.end.i.i.us.us.6.1.loopexit, %if.end.i.i.us.us.6
  %166 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %166, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us.6.loopexit, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !23

if.then.i.i.us.us.5.1:                            ; preds = %if.end.i.i.us.us.5
  %add.i.i.us.us.5.1 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5.1 = shl i64 %add1.i.i.i.us.us.5.1, 32
  %167 = ashr exact i64 %sext.i.i.us.us.5.1, 32
  br label %for.body.i.i.us.us.5.1

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %if.then.i.i.us.us.5.1
  %indvars.iv.next.i.i3.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %if.then.i.i.us.us.5.1 ]
  %168 = phi float [ %174, %for.body.i.i.us.us.5.1 ], [ 0.000000e+00, %if.then.i.i.us.us.5.1 ]
  %169 = add nsw i64 %indvars.iv.next.i.i3.us.us.5.1, %117
  %arrayidx11.i.i.us.us.5.1 = getelementptr inbounds float, float* %8, i64 %169
  %170 = load float, float* %arrayidx11.i.i.us.us.5.1, align 4, !tbaa !12
  %171 = mul nsw i64 %indvars.iv.next.i.i3.us.us.5.1, %29
  %172 = add nsw i64 %171, %167
  %arrayidx15.i.i.us.us.5.1 = getelementptr inbounds float, float* %12, i64 %172
  %173 = load float, float* %arrayidx15.i.i.us.us.5.1, align 4, !tbaa !12
  %174 = tail call float @llvm.fmuladd.f32(float %170, float %173, float %168) #2
  store float %174, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5.1, label %if.end.i.i.us.us.5.1.loopexit, label %for.body.i.i.us.us.5.1, !llvm.loop !19

if.end.i.i.us.us.5.1.loopexit:                    ; preds = %for.body.i.i.us.us.5.1
  br label %if.end.i.i.us.us.5.1

if.end.i.i.us.us.5.1:                             ; preds = %if.end.i.i.us.us.5.1.loopexit, %if.end.i.i.us.us.5
  %175 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %175, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us.5.loopexit, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !23

if.then.i.i.us.us.4.1:                            ; preds = %if.end.i.i.us.us.4
  %add.i.i.us.us.4.1 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4.1 = shl i64 %add1.i.i.i.us.us.4.1, 32
  %176 = ashr exact i64 %sext.i.i.us.us.4.1, 32
  br label %for.body.i.i.us.us.4.1

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %if.then.i.i.us.us.4.1
  %indvars.iv.next.i.i3.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %if.then.i.i.us.us.4.1 ]
  %177 = phi float [ %183, %for.body.i.i.us.us.4.1 ], [ 0.000000e+00, %if.then.i.i.us.us.4.1 ]
  %178 = add nsw i64 %indvars.iv.next.i.i3.us.us.4.1, %106
  %arrayidx11.i.i.us.us.4.1 = getelementptr inbounds float, float* %8, i64 %178
  %179 = load float, float* %arrayidx11.i.i.us.us.4.1, align 4, !tbaa !12
  %180 = mul nsw i64 %indvars.iv.next.i.i3.us.us.4.1, %29
  %181 = add nsw i64 %180, %176
  %arrayidx15.i.i.us.us.4.1 = getelementptr inbounds float, float* %12, i64 %181
  %182 = load float, float* %arrayidx15.i.i.us.us.4.1, align 4, !tbaa !12
  %183 = tail call float @llvm.fmuladd.f32(float %179, float %182, float %177) #2
  store float %183, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4.1, label %if.end.i.i.us.us.4.1.loopexit, label %for.body.i.i.us.us.4.1, !llvm.loop !19

if.end.i.i.us.us.4.1.loopexit:                    ; preds = %for.body.i.i.us.us.4.1
  br label %if.end.i.i.us.us.4.1

if.end.i.i.us.us.4.1:                             ; preds = %if.end.i.i.us.us.4.1.loopexit, %if.end.i.i.us.us.4
  %184 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %184, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us.4.loopexit, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !23

if.then.i.i.us.us.3.1:                            ; preds = %if.end.i.i.us.us.3
  %add.i.i.us.us.3.1 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3.1 = shl i64 %add1.i.i.i.us.us.3.1, 32
  %185 = ashr exact i64 %sext.i.i.us.us.3.1, 32
  br label %for.body.i.i.us.us.3.1

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %if.then.i.i.us.us.3.1
  %indvars.iv.next.i.i3.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %if.then.i.i.us.us.3.1 ]
  %186 = phi float [ %192, %for.body.i.i.us.us.3.1 ], [ 0.000000e+00, %if.then.i.i.us.us.3.1 ]
  %187 = add nsw i64 %indvars.iv.next.i.i3.us.us.3.1, %95
  %arrayidx11.i.i.us.us.3.1 = getelementptr inbounds float, float* %8, i64 %187
  %188 = load float, float* %arrayidx11.i.i.us.us.3.1, align 4, !tbaa !12
  %189 = mul nsw i64 %indvars.iv.next.i.i3.us.us.3.1, %29
  %190 = add nsw i64 %189, %185
  %arrayidx15.i.i.us.us.3.1 = getelementptr inbounds float, float* %12, i64 %190
  %191 = load float, float* %arrayidx15.i.i.us.us.3.1, align 4, !tbaa !12
  %192 = tail call float @llvm.fmuladd.f32(float %188, float %191, float %186) #2
  store float %192, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3.1, label %if.end.i.i.us.us.3.1.loopexit, label %for.body.i.i.us.us.3.1, !llvm.loop !19

if.end.i.i.us.us.3.1.loopexit:                    ; preds = %for.body.i.i.us.us.3.1
  br label %if.end.i.i.us.us.3.1

if.end.i.i.us.us.3.1:                             ; preds = %if.end.i.i.us.us.3.1.loopexit, %if.end.i.i.us.us.3
  %193 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %193, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us.3.loopexit, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !23

if.then.i.i.us.us.2.1:                            ; preds = %if.end.i.i.us.us.2
  %add.i.i.us.us.2.1 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2.1 = shl i64 %add1.i.i.i.us.us.2.1, 32
  %194 = ashr exact i64 %sext.i.i.us.us.2.1, 32
  br label %for.body.i.i.us.us.2.1

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %if.then.i.i.us.us.2.1
  %indvars.iv.next.i.i3.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %if.then.i.i.us.us.2.1 ]
  %195 = phi float [ %201, %for.body.i.i.us.us.2.1 ], [ 0.000000e+00, %if.then.i.i.us.us.2.1 ]
  %196 = add nsw i64 %indvars.iv.next.i.i3.us.us.2.1, %84
  %arrayidx11.i.i.us.us.2.1 = getelementptr inbounds float, float* %8, i64 %196
  %197 = load float, float* %arrayidx11.i.i.us.us.2.1, align 4, !tbaa !12
  %198 = mul nsw i64 %indvars.iv.next.i.i3.us.us.2.1, %29
  %199 = add nsw i64 %198, %194
  %arrayidx15.i.i.us.us.2.1 = getelementptr inbounds float, float* %12, i64 %199
  %200 = load float, float* %arrayidx15.i.i.us.us.2.1, align 4, !tbaa !12
  %201 = tail call float @llvm.fmuladd.f32(float %197, float %200, float %195) #2
  store float %201, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2.1, label %if.end.i.i.us.us.2.1.loopexit, label %for.body.i.i.us.us.2.1, !llvm.loop !19

if.end.i.i.us.us.2.1.loopexit:                    ; preds = %for.body.i.i.us.us.2.1
  br label %if.end.i.i.us.us.2.1

if.end.i.i.us.us.2.1:                             ; preds = %if.end.i.i.us.us.2.1.loopexit, %if.end.i.i.us.us.2
  %202 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %202, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us.2.loopexit, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !23

if.then.i.i.us.us.1.1:                            ; preds = %if.end.i.i.us.us.1
  %add.i.i.us.us.1.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1.1 = shl i64 %add1.i.i.i.us.us.1.1, 32
  %203 = ashr exact i64 %sext.i.i.us.us.1.1, 32
  br label %for.body.i.i.us.us.1.1

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %if.then.i.i.us.us.1.1
  %indvars.iv.next.i.i3.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %if.then.i.i.us.us.1.1 ]
  %204 = phi float [ %210, %for.body.i.i.us.us.1.1 ], [ 0.000000e+00, %if.then.i.i.us.us.1.1 ]
  %205 = add nsw i64 %indvars.iv.next.i.i3.us.us.1.1, %63
  %arrayidx11.i.i.us.us.1.1 = getelementptr inbounds float, float* %8, i64 %205
  %206 = load float, float* %arrayidx11.i.i.us.us.1.1, align 4, !tbaa !12
  %207 = mul nsw i64 %indvars.iv.next.i.i3.us.us.1.1, %29
  %208 = add nsw i64 %207, %203
  %arrayidx15.i.i.us.us.1.1 = getelementptr inbounds float, float* %12, i64 %208
  %209 = load float, float* %arrayidx15.i.i.us.us.1.1, align 4, !tbaa !12
  %210 = tail call float @llvm.fmuladd.f32(float %206, float %209, float %204) #2
  store float %210, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1.1, label %if.end.i.i.us.us.1.1.loopexit, label %for.body.i.i.us.us.1.1, !llvm.loop !19

if.end.i.i.us.us.1.1.loopexit:                    ; preds = %for.body.i.i.us.us.1.1
  br label %if.end.i.i.us.us.1.1

if.end.i.i.us.us.1.1:                             ; preds = %if.end.i.i.us.us.1.1.loopexit, %if.end.i.i.us.us.1
  %211 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %211, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us.1.loopexit, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !23

if.then.i.i.us.us.146:                            ; preds = %if.end.i.i.us.us
  %add.i.i.us.us.142 = add nsw i32 %mul.i.i.us, %conv.i.i.us.us.139
  %idxprom.i.i.us.us.143 = sext i32 %add.i.i.us.us.142 to i64
  %arrayidx.i.i.us.us.144 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.143
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.144, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.145 = shl i64 %add1.i.i.i.us.us.138, 32
  %212 = ashr exact i64 %sext.i.i.us.us.145, 32
  br label %for.body.i.i.us.us.152

for.body.i.i.us.us.152:                           ; preds = %for.body.i.i.us.us.152, %if.then.i.i.us.us.146
  %indvars.iv.next.i.i3.us.us.147 = phi i64 [ %indvars.iv.next.i.i.us.us.150, %for.body.i.i.us.us.152 ], [ 0, %if.then.i.i.us.us.146 ]
  %213 = phi float [ %219, %for.body.i.i.us.us.152 ], [ 0.000000e+00, %if.then.i.i.us.us.146 ]
  %214 = add nsw i64 %indvars.iv.next.i.i3.us.us.147, %61
  %arrayidx11.i.i.us.us.148 = getelementptr inbounds float, float* %8, i64 %214
  %215 = load float, float* %arrayidx11.i.i.us.us.148, align 4, !tbaa !12
  %216 = mul nsw i64 %indvars.iv.next.i.i3.us.us.147, %29
  %217 = add nsw i64 %216, %212
  %arrayidx15.i.i.us.us.149 = getelementptr inbounds float, float* %12, i64 %217
  %218 = load float, float* %arrayidx15.i.i.us.us.149, align 4, !tbaa !12
  %219 = tail call float @llvm.fmuladd.f32(float %215, float %218, float %213) #2
  store float %219, float* %arrayidx.i.i.us.us.144, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.150 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.147, 1
  %exitcond.not.i.i.us.us.151 = icmp eq i64 %indvars.iv.next.i.i.us.us.150, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.151, label %if.end.i.i.us.us.153.loopexit, label %for.body.i.i.us.us.152, !llvm.loop !19

if.end.i.i.us.us.153.loopexit:                    ; preds = %for.body.i.i.us.us.152
  br label %if.end.i.i.us.us.153

if.end.i.i.us.us.153:                             ; preds = %if.end.i.i.us.us.153.loopexit, %if.end.i.i.us.us
  %220 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %220, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us.loopexit, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !23
}

; Function Attrs: nounwind
define void @_pocl_kernel_mm3_kernel3_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp638.i.i = icmp sgt i32 %25, 0
  %26 = sext i32 %21 to i64
  %wide.trip.count.i.i = zext i32 %25 to i64
  br i1 %cmp638.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  %conv.i.i.us = trunc i64 %mul.i.i.i to i32
  %cmp4.i.i.us = icmp sgt i32 %21, %conv.i.i.us
  %27 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.1 = or i32 %27, 1
  %cmp4.i.i.us.1 = icmp sgt i32 %21, %conv.i.i.us.1
  %28 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.2 = or i32 %28, 2
  %cmp4.i.i.us.2 = icmp sgt i32 %21, %conv.i.i.us.2
  %29 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.3 = or i32 %29, 3
  %cmp4.i.i.us.3 = icmp sgt i32 %21, %conv.i.i.us.3
  %30 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.4 = or i32 %30, 4
  %cmp4.i.i.us.4 = icmp sgt i32 %21, %conv.i.i.us.4
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.5 = or i32 %31, 5
  %cmp4.i.i.us.5 = icmp sgt i32 %21, %conv.i.i.us.5
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.6 = or i32 %32, 6
  %cmp4.i.i.us.6 = icmp sgt i32 %21, %conv.i.i.us.6
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.7 = or i32 %33, 7
  %cmp4.i.i.us.7 = icmp sgt i32 %21, %conv.i.i.us.7
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.8 = or i32 %34, 8
  %cmp4.i.i.us.8 = icmp sgt i32 %21, %conv.i.i.us.8
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.9 = or i32 %35, 9
  %cmp4.i.i.us.9 = icmp sgt i32 %21, %conv.i.i.us.9
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.10 = or i32 %36, 10
  %cmp4.i.i.us.10 = icmp sgt i32 %21, %conv.i.i.us.10
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.11 = or i32 %37, 11
  %cmp4.i.i.us.11 = icmp sgt i32 %21, %conv.i.i.us.11
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.12 = or i32 %38, 12
  %cmp4.i.i.us.12 = icmp sgt i32 %21, %conv.i.i.us.12
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.13 = or i32 %39, 13
  %cmp4.i.i.us.13 = icmp sgt i32 %21, %conv.i.i.us.13
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.14 = or i32 %40, 14
  %cmp4.i.i.us.14 = icmp sgt i32 %21, %conv.i.i.us.14
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.15 = or i32 %41, 15
  %cmp4.i.i.us.15 = icmp sgt i32 %21, %conv.i.i.us.15
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.16 = or i32 %42, 16
  %cmp4.i.i.us.16 = icmp sgt i32 %21, %conv.i.i.us.16
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.17 = or i32 %43, 17
  %cmp4.i.i.us.17 = icmp sgt i32 %21, %conv.i.i.us.17
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.18 = or i32 %44, 18
  %cmp4.i.i.us.18 = icmp sgt i32 %21, %conv.i.i.us.18
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.19 = or i32 %45, 19
  %cmp4.i.i.us.19 = icmp sgt i32 %21, %conv.i.i.us.19
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.20 = or i32 %46, 20
  %cmp4.i.i.us.20 = icmp sgt i32 %21, %conv.i.i.us.20
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.21 = or i32 %47, 21
  %cmp4.i.i.us.21 = icmp sgt i32 %21, %conv.i.i.us.21
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.22 = or i32 %48, 22
  %cmp4.i.i.us.22 = icmp sgt i32 %21, %conv.i.i.us.22
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.23 = or i32 %49, 23
  %cmp4.i.i.us.23 = icmp sgt i32 %21, %conv.i.i.us.23
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.24 = or i32 %50, 24
  %cmp4.i.i.us.24 = icmp sgt i32 %21, %conv.i.i.us.24
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.25 = or i32 %51, 25
  %cmp4.i.i.us.25 = icmp sgt i32 %21, %conv.i.i.us.25
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.26 = or i32 %52, 26
  %cmp4.i.i.us.26 = icmp sgt i32 %21, %conv.i.i.us.26
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.27 = or i32 %53, 27
  %cmp4.i.i.us.27 = icmp sgt i32 %21, %conv.i.i.us.27
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.28 = or i32 %54, 28
  %cmp4.i.i.us.28 = icmp sgt i32 %21, %conv.i.i.us.28
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.29 = or i32 %55, 29
  %cmp4.i.i.us.29 = icmp sgt i32 %21, %conv.i.i.us.29
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.30 = or i32 %56, 30
  %cmp4.i.i.us.30 = icmp sgt i32 %21, %conv.i.i.us.30
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.31 = or i32 %57, 31
  %cmp4.i.i.us.31 = icmp sgt i32 %21, %conv.i.i.us.31
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i.us = icmp sgt i32 %17, %conv2.i.i.us
  %mul.i.i.us = mul nsw i32 %21, %conv2.i.i.us
  %mul8.i.i.us = mul nsw i32 %25, %conv2.i.i.us
  %58 = sext i32 %mul8.i.i.us to i64
  br i1 %cmp.i.i.us, label %pregion_for_entry.entry.i.i.us.us.preheader, label %pregion_for_end.i.i.us

pregion_for_entry.entry.i.i.us.us.preheader:      ; preds = %pregion_for_entry.pregion_for_init.i.i.us.preheader
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_end.i.i.us.loopexit:                  ; preds = %if.end.i.i.us.us.153
  br label %pregion_for_end.i.i.us

pregion_for_end.i.i.us:                           ; preds = %pregion_for_end.i.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %59 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %59, 1
  %cmp.i.i.us.1 = icmp sgt i32 %17, %conv2.i.i.us.1
  %mul.i.i.us.1 = mul nsw i32 %21, %conv2.i.i.us.1
  %mul8.i.i.us.1 = mul nsw i32 %25, %conv2.i.i.us.1
  %60 = sext i32 %mul8.i.i.us.1 to i64
  br i1 %cmp.i.i.us.1, label %pregion_for_entry.entry.i.i.us.us.1.preheader, label %pregion_for_end.i.i.us.1

pregion_for_entry.entry.i.i.us.us.1.preheader:    ; preds = %pregion_for_end.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.entry.i.i.us.us:                ; preds = %if.end.i.i.us.us.153, %pregion_for_entry.entry.i.i.us.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ %217, %if.end.i.i.us.us.153 ], [ 0, %pregion_for_entry.entry.i.i.us.us.preheader ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %cmp4.i.i.us.us = icmp sgt i32 %21, %conv.i.i.us.us
  br i1 %cmp4.i.i.us.us, label %if.then.i.i.us.us, label %if.end.i.i.us.us

if.then.i.i.us.us:                                ; preds = %pregion_for_entry.entry.i.i.us.us
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %61 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

if.end.i.i.us.us.loopexit:                        ; preds = %for.body.i.i.us.us
  br label %if.end.i.i.us.us

if.end.i.i.us.us:                                 ; preds = %if.end.i.i.us.us.loopexit, %pregion_for_entry.entry.i.i.us.us
  %62 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.138 = add nuw nsw i64 %62, %mul.i.i.i
  %conv.i.i.us.us.139 = trunc i64 %add1.i.i.i.us.us.138 to i32
  %cmp4.i.i.us.us.140 = icmp sgt i32 %21, %conv.i.i.us.us.139
  br i1 %cmp4.i.i.us.us.140, label %if.then.i.i.us.us.146, label %if.end.i.i.us.us.153

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %if.then.i.i.us.us
  %indvars.iv.next.i.i3.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %if.then.i.i.us.us ]
  %63 = phi float [ %69, %for.body.i.i.us.us ], [ 0.000000e+00, %if.then.i.i.us.us ]
  %64 = add nsw i64 %indvars.iv.next.i.i3.us.us, %58
  %arrayidx11.i.i.us.us = getelementptr inbounds float, float* %7, i64 %64
  %65 = load float, float* %arrayidx11.i.i.us.us, align 4, !tbaa !12
  %66 = mul nsw i64 %indvars.iv.next.i.i3.us.us, %26
  %67 = add nsw i64 %66, %61
  %arrayidx15.i.i.us.us = getelementptr inbounds float, float* %10, i64 %67
  %68 = load float, float* %arrayidx15.i.i.us.us, align 4, !tbaa !12
  %69 = tail call float @llvm.fmuladd.f32(float %65, float %68, float %63) #2
  store float %69, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i3.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %if.end.i.i.us.us.loopexit, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader
  %_local_id_y.i.0 = phi i64 [ %70, %pregion_for_end.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader ]
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
  %arrayidx.i.i.us = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  br i1 %cmp4.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

pregion_for_end.i.i:                              ; preds = %if.then.i.i.us.31, %if.end.i.i.us.30, %pregion_for_entry.pregion_for_init.i.i
  %70 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond33.not = icmp eq i64 %70, 8
  br i1 %exitcond33.not, label %_pocl_kernel_mm3_kernel3.exit.loopexit54, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !21

_pocl_kernel_mm3_kernel3.exit.loopexit:           ; preds = %if.end.i.i.us.us.7.1
  br label %_pocl_kernel_mm3_kernel3.exit

_pocl_kernel_mm3_kernel3.exit.loopexit54:         ; preds = %pregion_for_end.i.i
  br label %_pocl_kernel_mm3_kernel3.exit

_pocl_kernel_mm3_kernel3.exit:                    ; preds = %pregion_for_end.i.i.us.6, %_pocl_kernel_mm3_kernel3.exit.loopexit54, %_pocl_kernel_mm3_kernel3.exit.loopexit
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %if.end.i.i.us.us.1.1, %pregion_for_entry.entry.i.i.us.us.1.preheader
  %_local_id_x.i.0.us.us.1 = phi i64 [ %208, %if.end.i.i.us.us.1.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1.preheader ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %cmp4.i.i.us.us.1 = icmp sgt i32 %21, %conv.i.i.us.us.1
  br i1 %cmp4.i.i.us.us.1, label %if.then.i.i.us.us.1, label %if.end.i.i.us.us.1

if.then.i.i.us.us.1:                              ; preds = %pregion_for_entry.entry.i.i.us.us.1
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %71 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %if.then.i.i.us.us.1
  %indvars.iv.next.i.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %if.then.i.i.us.us.1 ]
  %72 = phi float [ %78, %for.body.i.i.us.us.1 ], [ 0.000000e+00, %if.then.i.i.us.us.1 ]
  %73 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %60
  %arrayidx11.i.i.us.us.1 = getelementptr inbounds float, float* %7, i64 %73
  %74 = load float, float* %arrayidx11.i.i.us.us.1, align 4, !tbaa !12
  %75 = mul nsw i64 %indvars.iv.next.i.i3.us.us.1, %26
  %76 = add nsw i64 %75, %71
  %arrayidx15.i.i.us.us.1 = getelementptr inbounds float, float* %10, i64 %76
  %77 = load float, float* %arrayidx15.i.i.us.us.1, align 4, !tbaa !12
  %78 = tail call float @llvm.fmuladd.f32(float %74, float %77, float %72) #2
  store float %78, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %if.end.i.i.us.us.1.loopexit, label %for.body.i.i.us.us.1, !llvm.loop !19

if.end.i.i.us.us.1.loopexit:                      ; preds = %for.body.i.i.us.us.1
  br label %if.end.i.i.us.us.1

if.end.i.i.us.us.1:                               ; preds = %if.end.i.i.us.us.1.loopexit, %pregion_for_entry.entry.i.i.us.us.1
  %79 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %79, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %cmp4.i.i.us.us.1.1 = icmp sgt i32 %21, %conv.i.i.us.us.1.1
  br i1 %cmp4.i.i.us.us.1.1, label %if.then.i.i.us.us.1.1, label %if.end.i.i.us.us.1.1

pregion_for_end.i.i.us.1.loopexit:                ; preds = %if.end.i.i.us.us.1.1
  br label %pregion_for_end.i.i.us.1

pregion_for_end.i.i.us.1:                         ; preds = %pregion_for_end.i.i.us.1.loopexit, %pregion_for_end.i.i.us
  %80 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %80, 2
  %cmp.i.i.us.2 = icmp sgt i32 %17, %conv2.i.i.us.2
  %mul.i.i.us.2 = mul nsw i32 %21, %conv2.i.i.us.2
  %mul8.i.i.us.2 = mul nsw i32 %25, %conv2.i.i.us.2
  %81 = sext i32 %mul8.i.i.us.2 to i64
  br i1 %cmp.i.i.us.2, label %pregion_for_entry.entry.i.i.us.us.2.preheader, label %pregion_for_end.i.i.us.2

pregion_for_entry.entry.i.i.us.us.2.preheader:    ; preds = %pregion_for_end.i.i.us.1
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %if.end.i.i.us.us.2.1, %pregion_for_entry.entry.i.i.us.us.2.preheader
  %_local_id_x.i.0.us.us.2 = phi i64 [ %199, %if.end.i.i.us.us.2.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2.preheader ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %cmp4.i.i.us.us.2 = icmp sgt i32 %21, %conv.i.i.us.us.2
  br i1 %cmp4.i.i.us.us.2, label %if.then.i.i.us.us.2, label %if.end.i.i.us.us.2

if.then.i.i.us.us.2:                              ; preds = %pregion_for_entry.entry.i.i.us.us.2
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %82 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %if.then.i.i.us.us.2
  %indvars.iv.next.i.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %if.then.i.i.us.us.2 ]
  %83 = phi float [ %89, %for.body.i.i.us.us.2 ], [ 0.000000e+00, %if.then.i.i.us.us.2 ]
  %84 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %81
  %arrayidx11.i.i.us.us.2 = getelementptr inbounds float, float* %7, i64 %84
  %85 = load float, float* %arrayidx11.i.i.us.us.2, align 4, !tbaa !12
  %86 = mul nsw i64 %indvars.iv.next.i.i3.us.us.2, %26
  %87 = add nsw i64 %86, %82
  %arrayidx15.i.i.us.us.2 = getelementptr inbounds float, float* %10, i64 %87
  %88 = load float, float* %arrayidx15.i.i.us.us.2, align 4, !tbaa !12
  %89 = tail call float @llvm.fmuladd.f32(float %85, float %88, float %83) #2
  store float %89, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %if.end.i.i.us.us.2.loopexit, label %for.body.i.i.us.us.2, !llvm.loop !19

if.end.i.i.us.us.2.loopexit:                      ; preds = %for.body.i.i.us.us.2
  br label %if.end.i.i.us.us.2

if.end.i.i.us.us.2:                               ; preds = %if.end.i.i.us.us.2.loopexit, %pregion_for_entry.entry.i.i.us.us.2
  %90 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %90, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %cmp4.i.i.us.us.2.1 = icmp sgt i32 %21, %conv.i.i.us.us.2.1
  br i1 %cmp4.i.i.us.us.2.1, label %if.then.i.i.us.us.2.1, label %if.end.i.i.us.us.2.1

pregion_for_end.i.i.us.2.loopexit:                ; preds = %if.end.i.i.us.us.2.1
  br label %pregion_for_end.i.i.us.2

pregion_for_end.i.i.us.2:                         ; preds = %pregion_for_end.i.i.us.2.loopexit, %pregion_for_end.i.i.us.1
  %91 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %91, 3
  %cmp.i.i.us.3 = icmp sgt i32 %17, %conv2.i.i.us.3
  %mul.i.i.us.3 = mul nsw i32 %21, %conv2.i.i.us.3
  %mul8.i.i.us.3 = mul nsw i32 %25, %conv2.i.i.us.3
  %92 = sext i32 %mul8.i.i.us.3 to i64
  br i1 %cmp.i.i.us.3, label %pregion_for_entry.entry.i.i.us.us.3.preheader, label %pregion_for_end.i.i.us.3

pregion_for_entry.entry.i.i.us.us.3.preheader:    ; preds = %pregion_for_end.i.i.us.2
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %if.end.i.i.us.us.3.1, %pregion_for_entry.entry.i.i.us.us.3.preheader
  %_local_id_x.i.0.us.us.3 = phi i64 [ %190, %if.end.i.i.us.us.3.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3.preheader ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %cmp4.i.i.us.us.3 = icmp sgt i32 %21, %conv.i.i.us.us.3
  br i1 %cmp4.i.i.us.us.3, label %if.then.i.i.us.us.3, label %if.end.i.i.us.us.3

if.then.i.i.us.us.3:                              ; preds = %pregion_for_entry.entry.i.i.us.us.3
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %93 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %if.then.i.i.us.us.3
  %indvars.iv.next.i.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %if.then.i.i.us.us.3 ]
  %94 = phi float [ %100, %for.body.i.i.us.us.3 ], [ 0.000000e+00, %if.then.i.i.us.us.3 ]
  %95 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %92
  %arrayidx11.i.i.us.us.3 = getelementptr inbounds float, float* %7, i64 %95
  %96 = load float, float* %arrayidx11.i.i.us.us.3, align 4, !tbaa !12
  %97 = mul nsw i64 %indvars.iv.next.i.i3.us.us.3, %26
  %98 = add nsw i64 %97, %93
  %arrayidx15.i.i.us.us.3 = getelementptr inbounds float, float* %10, i64 %98
  %99 = load float, float* %arrayidx15.i.i.us.us.3, align 4, !tbaa !12
  %100 = tail call float @llvm.fmuladd.f32(float %96, float %99, float %94) #2
  store float %100, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %if.end.i.i.us.us.3.loopexit, label %for.body.i.i.us.us.3, !llvm.loop !19

if.end.i.i.us.us.3.loopexit:                      ; preds = %for.body.i.i.us.us.3
  br label %if.end.i.i.us.us.3

if.end.i.i.us.us.3:                               ; preds = %if.end.i.i.us.us.3.loopexit, %pregion_for_entry.entry.i.i.us.us.3
  %101 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %101, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %cmp4.i.i.us.us.3.1 = icmp sgt i32 %21, %conv.i.i.us.us.3.1
  br i1 %cmp4.i.i.us.us.3.1, label %if.then.i.i.us.us.3.1, label %if.end.i.i.us.us.3.1

pregion_for_end.i.i.us.3.loopexit:                ; preds = %if.end.i.i.us.us.3.1
  br label %pregion_for_end.i.i.us.3

pregion_for_end.i.i.us.3:                         ; preds = %pregion_for_end.i.i.us.3.loopexit, %pregion_for_end.i.i.us.2
  %102 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %102, 4
  %cmp.i.i.us.4 = icmp sgt i32 %17, %conv2.i.i.us.4
  %mul.i.i.us.4 = mul nsw i32 %21, %conv2.i.i.us.4
  %mul8.i.i.us.4 = mul nsw i32 %25, %conv2.i.i.us.4
  %103 = sext i32 %mul8.i.i.us.4 to i64
  br i1 %cmp.i.i.us.4, label %pregion_for_entry.entry.i.i.us.us.4.preheader, label %pregion_for_end.i.i.us.4

pregion_for_entry.entry.i.i.us.us.4.preheader:    ; preds = %pregion_for_end.i.i.us.3
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %if.end.i.i.us.us.4.1, %pregion_for_entry.entry.i.i.us.us.4.preheader
  %_local_id_x.i.0.us.us.4 = phi i64 [ %181, %if.end.i.i.us.us.4.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4.preheader ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %cmp4.i.i.us.us.4 = icmp sgt i32 %21, %conv.i.i.us.us.4
  br i1 %cmp4.i.i.us.us.4, label %if.then.i.i.us.us.4, label %if.end.i.i.us.us.4

if.then.i.i.us.us.4:                              ; preds = %pregion_for_entry.entry.i.i.us.us.4
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %104 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %if.then.i.i.us.us.4
  %indvars.iv.next.i.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %if.then.i.i.us.us.4 ]
  %105 = phi float [ %111, %for.body.i.i.us.us.4 ], [ 0.000000e+00, %if.then.i.i.us.us.4 ]
  %106 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %103
  %arrayidx11.i.i.us.us.4 = getelementptr inbounds float, float* %7, i64 %106
  %107 = load float, float* %arrayidx11.i.i.us.us.4, align 4, !tbaa !12
  %108 = mul nsw i64 %indvars.iv.next.i.i3.us.us.4, %26
  %109 = add nsw i64 %108, %104
  %arrayidx15.i.i.us.us.4 = getelementptr inbounds float, float* %10, i64 %109
  %110 = load float, float* %arrayidx15.i.i.us.us.4, align 4, !tbaa !12
  %111 = tail call float @llvm.fmuladd.f32(float %107, float %110, float %105) #2
  store float %111, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %if.end.i.i.us.us.4.loopexit, label %for.body.i.i.us.us.4, !llvm.loop !19

if.end.i.i.us.us.4.loopexit:                      ; preds = %for.body.i.i.us.us.4
  br label %if.end.i.i.us.us.4

if.end.i.i.us.us.4:                               ; preds = %if.end.i.i.us.us.4.loopexit, %pregion_for_entry.entry.i.i.us.us.4
  %112 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %112, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %cmp4.i.i.us.us.4.1 = icmp sgt i32 %21, %conv.i.i.us.us.4.1
  br i1 %cmp4.i.i.us.us.4.1, label %if.then.i.i.us.us.4.1, label %if.end.i.i.us.us.4.1

pregion_for_end.i.i.us.4.loopexit:                ; preds = %if.end.i.i.us.us.4.1
  br label %pregion_for_end.i.i.us.4

pregion_for_end.i.i.us.4:                         ; preds = %pregion_for_end.i.i.us.4.loopexit, %pregion_for_end.i.i.us.3
  %113 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %113, 5
  %cmp.i.i.us.5 = icmp sgt i32 %17, %conv2.i.i.us.5
  %mul.i.i.us.5 = mul nsw i32 %21, %conv2.i.i.us.5
  %mul8.i.i.us.5 = mul nsw i32 %25, %conv2.i.i.us.5
  %114 = sext i32 %mul8.i.i.us.5 to i64
  br i1 %cmp.i.i.us.5, label %pregion_for_entry.entry.i.i.us.us.5.preheader, label %pregion_for_end.i.i.us.5

pregion_for_entry.entry.i.i.us.us.5.preheader:    ; preds = %pregion_for_end.i.i.us.4
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %if.end.i.i.us.us.5.1, %pregion_for_entry.entry.i.i.us.us.5.preheader
  %_local_id_x.i.0.us.us.5 = phi i64 [ %172, %if.end.i.i.us.us.5.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5.preheader ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %cmp4.i.i.us.us.5 = icmp sgt i32 %21, %conv.i.i.us.us.5
  br i1 %cmp4.i.i.us.us.5, label %if.then.i.i.us.us.5, label %if.end.i.i.us.us.5

if.then.i.i.us.us.5:                              ; preds = %pregion_for_entry.entry.i.i.us.us.5
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %115 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %if.then.i.i.us.us.5
  %indvars.iv.next.i.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %if.then.i.i.us.us.5 ]
  %116 = phi float [ %122, %for.body.i.i.us.us.5 ], [ 0.000000e+00, %if.then.i.i.us.us.5 ]
  %117 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %114
  %arrayidx11.i.i.us.us.5 = getelementptr inbounds float, float* %7, i64 %117
  %118 = load float, float* %arrayidx11.i.i.us.us.5, align 4, !tbaa !12
  %119 = mul nsw i64 %indvars.iv.next.i.i3.us.us.5, %26
  %120 = add nsw i64 %119, %115
  %arrayidx15.i.i.us.us.5 = getelementptr inbounds float, float* %10, i64 %120
  %121 = load float, float* %arrayidx15.i.i.us.us.5, align 4, !tbaa !12
  %122 = tail call float @llvm.fmuladd.f32(float %118, float %121, float %116) #2
  store float %122, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %if.end.i.i.us.us.5.loopexit, label %for.body.i.i.us.us.5, !llvm.loop !19

if.end.i.i.us.us.5.loopexit:                      ; preds = %for.body.i.i.us.us.5
  br label %if.end.i.i.us.us.5

if.end.i.i.us.us.5:                               ; preds = %if.end.i.i.us.us.5.loopexit, %pregion_for_entry.entry.i.i.us.us.5
  %123 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %123, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %cmp4.i.i.us.us.5.1 = icmp sgt i32 %21, %conv.i.i.us.us.5.1
  br i1 %cmp4.i.i.us.us.5.1, label %if.then.i.i.us.us.5.1, label %if.end.i.i.us.us.5.1

pregion_for_end.i.i.us.5.loopexit:                ; preds = %if.end.i.i.us.us.5.1
  br label %pregion_for_end.i.i.us.5

pregion_for_end.i.i.us.5:                         ; preds = %pregion_for_end.i.i.us.5.loopexit, %pregion_for_end.i.i.us.4
  %124 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %124, 6
  %cmp.i.i.us.6 = icmp sgt i32 %17, %conv2.i.i.us.6
  %mul.i.i.us.6 = mul nsw i32 %21, %conv2.i.i.us.6
  %mul8.i.i.us.6 = mul nsw i32 %25, %conv2.i.i.us.6
  %125 = sext i32 %mul8.i.i.us.6 to i64
  br i1 %cmp.i.i.us.6, label %pregion_for_entry.entry.i.i.us.us.6.preheader, label %pregion_for_end.i.i.us.6

pregion_for_entry.entry.i.i.us.us.6.preheader:    ; preds = %pregion_for_end.i.i.us.5
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %if.end.i.i.us.us.6.1, %pregion_for_entry.entry.i.i.us.us.6.preheader
  %_local_id_x.i.0.us.us.6 = phi i64 [ %163, %if.end.i.i.us.us.6.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6.preheader ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %cmp4.i.i.us.us.6 = icmp sgt i32 %21, %conv.i.i.us.us.6
  br i1 %cmp4.i.i.us.us.6, label %if.then.i.i.us.us.6, label %if.end.i.i.us.us.6

if.then.i.i.us.us.6:                              ; preds = %pregion_for_entry.entry.i.i.us.us.6
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %126 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %if.then.i.i.us.us.6
  %indvars.iv.next.i.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %if.then.i.i.us.us.6 ]
  %127 = phi float [ %133, %for.body.i.i.us.us.6 ], [ 0.000000e+00, %if.then.i.i.us.us.6 ]
  %128 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %125
  %arrayidx11.i.i.us.us.6 = getelementptr inbounds float, float* %7, i64 %128
  %129 = load float, float* %arrayidx11.i.i.us.us.6, align 4, !tbaa !12
  %130 = mul nsw i64 %indvars.iv.next.i.i3.us.us.6, %26
  %131 = add nsw i64 %130, %126
  %arrayidx15.i.i.us.us.6 = getelementptr inbounds float, float* %10, i64 %131
  %132 = load float, float* %arrayidx15.i.i.us.us.6, align 4, !tbaa !12
  %133 = tail call float @llvm.fmuladd.f32(float %129, float %132, float %127) #2
  store float %133, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %if.end.i.i.us.us.6.loopexit, label %for.body.i.i.us.us.6, !llvm.loop !19

if.end.i.i.us.us.6.loopexit:                      ; preds = %for.body.i.i.us.us.6
  br label %if.end.i.i.us.us.6

if.end.i.i.us.us.6:                               ; preds = %if.end.i.i.us.us.6.loopexit, %pregion_for_entry.entry.i.i.us.us.6
  %134 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %134, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %cmp4.i.i.us.us.6.1 = icmp sgt i32 %21, %conv.i.i.us.us.6.1
  br i1 %cmp4.i.i.us.us.6.1, label %if.then.i.i.us.us.6.1, label %if.end.i.i.us.us.6.1

pregion_for_end.i.i.us.6.loopexit:                ; preds = %if.end.i.i.us.us.6.1
  br label %pregion_for_end.i.i.us.6

pregion_for_end.i.i.us.6:                         ; preds = %pregion_for_end.i.i.us.6.loopexit, %pregion_for_end.i.i.us.5
  %135 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %135, 7
  %cmp.i.i.us.7 = icmp sgt i32 %17, %conv2.i.i.us.7
  %mul.i.i.us.7 = mul nsw i32 %21, %conv2.i.i.us.7
  %mul8.i.i.us.7 = mul nsw i32 %25, %conv2.i.i.us.7
  %136 = sext i32 %mul8.i.i.us.7 to i64
  br i1 %cmp.i.i.us.7, label %pregion_for_entry.entry.i.i.us.us.7.preheader, label %_pocl_kernel_mm3_kernel3.exit

pregion_for_entry.entry.i.i.us.us.7.preheader:    ; preds = %pregion_for_end.i.i.us.6
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %if.end.i.i.us.us.7.1, %pregion_for_entry.entry.i.i.us.us.7.preheader
  %_local_id_x.i.0.us.us.7 = phi i64 [ %154, %if.end.i.i.us.us.7.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7.preheader ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %cmp4.i.i.us.us.7 = icmp sgt i32 %21, %conv.i.i.us.us.7
  br i1 %cmp4.i.i.us.us.7, label %if.then.i.i.us.us.7, label %if.end.i.i.us.us.7

if.then.i.i.us.us.7:                              ; preds = %pregion_for_entry.entry.i.i.us.us.7
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %137 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %if.then.i.i.us.us.7
  %indvars.iv.next.i.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %if.then.i.i.us.us.7 ]
  %138 = phi float [ %144, %for.body.i.i.us.us.7 ], [ 0.000000e+00, %if.then.i.i.us.us.7 ]
  %139 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %136
  %arrayidx11.i.i.us.us.7 = getelementptr inbounds float, float* %7, i64 %139
  %140 = load float, float* %arrayidx11.i.i.us.us.7, align 4, !tbaa !12
  %141 = mul nsw i64 %indvars.iv.next.i.i3.us.us.7, %26
  %142 = add nsw i64 %141, %137
  %arrayidx15.i.i.us.us.7 = getelementptr inbounds float, float* %10, i64 %142
  %143 = load float, float* %arrayidx15.i.i.us.us.7, align 4, !tbaa !12
  %144 = tail call float @llvm.fmuladd.f32(float %140, float %143, float %138) #2
  store float %144, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %if.end.i.i.us.us.7.loopexit, label %for.body.i.i.us.us.7, !llvm.loop !19

if.end.i.i.us.us.7.loopexit:                      ; preds = %for.body.i.i.us.us.7
  br label %if.end.i.i.us.us.7

if.end.i.i.us.us.7:                               ; preds = %if.end.i.i.us.us.7.loopexit, %pregion_for_entry.entry.i.i.us.us.7
  %145 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %145, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %cmp4.i.i.us.us.7.1 = icmp sgt i32 %21, %conv.i.i.us.us.7.1
  br i1 %cmp4.i.i.us.us.7.1, label %if.then.i.i.us.us.7.1, label %if.end.i.i.us.us.7.1

if.then.i.i.us.1:                                 ; preds = %if.end.i.i.us
  %add.i.i.us.1 = add nsw i32 %mul.i.i, %conv.i.i.us.1
  %idxprom.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.then.i.i.us.1, %if.end.i.i.us
  br i1 %cmp4.i.i.us.2, label %if.then.i.i.us.2, label %if.end.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %if.end.i.i.us.1
  %add.i.i.us.2 = add nsw i32 %mul.i.i, %conv.i.i.us.2
  %idxprom.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2

if.end.i.i.us.2:                                  ; preds = %if.then.i.i.us.2, %if.end.i.i.us.1
  br i1 %cmp4.i.i.us.3, label %if.then.i.i.us.3, label %if.end.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %if.end.i.i.us.2
  %add.i.i.us.3 = add nsw i32 %mul.i.i, %conv.i.i.us.3
  %idxprom.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3

if.end.i.i.us.3:                                  ; preds = %if.then.i.i.us.3, %if.end.i.i.us.2
  br i1 %cmp4.i.i.us.4, label %if.then.i.i.us.4, label %if.end.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %if.end.i.i.us.3
  %add.i.i.us.4 = add nsw i32 %mul.i.i, %conv.i.i.us.4
  %idxprom.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4

if.end.i.i.us.4:                                  ; preds = %if.then.i.i.us.4, %if.end.i.i.us.3
  br i1 %cmp4.i.i.us.5, label %if.then.i.i.us.5, label %if.end.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %if.end.i.i.us.4
  %add.i.i.us.5 = add nsw i32 %mul.i.i, %conv.i.i.us.5
  %idxprom.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5

if.end.i.i.us.5:                                  ; preds = %if.then.i.i.us.5, %if.end.i.i.us.4
  br i1 %cmp4.i.i.us.6, label %if.then.i.i.us.6, label %if.end.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %if.end.i.i.us.5
  %add.i.i.us.6 = add nsw i32 %mul.i.i, %conv.i.i.us.6
  %idxprom.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6

if.end.i.i.us.6:                                  ; preds = %if.then.i.i.us.6, %if.end.i.i.us.5
  br i1 %cmp4.i.i.us.7, label %if.then.i.i.us.7, label %if.end.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %if.end.i.i.us.6
  %add.i.i.us.7 = add nsw i32 %mul.i.i, %conv.i.i.us.7
  %idxprom.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7

if.end.i.i.us.7:                                  ; preds = %if.then.i.i.us.7, %if.end.i.i.us.6
  br i1 %cmp4.i.i.us.8, label %if.then.i.i.us.8, label %if.end.i.i.us.8

if.then.i.i.us.8:                                 ; preds = %if.end.i.i.us.7
  %add.i.i.us.8 = add nsw i32 %mul.i.i, %conv.i.i.us.8
  %idxprom.i.i.us.8 = sext i32 %add.i.i.us.8 to i64
  %arrayidx.i.i.us.8 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.8
  store float 0.000000e+00, float* %arrayidx.i.i.us.8, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.8

if.end.i.i.us.8:                                  ; preds = %if.then.i.i.us.8, %if.end.i.i.us.7
  br i1 %cmp4.i.i.us.9, label %if.then.i.i.us.9, label %if.end.i.i.us.9

if.then.i.i.us.9:                                 ; preds = %if.end.i.i.us.8
  %add.i.i.us.9 = add nsw i32 %mul.i.i, %conv.i.i.us.9
  %idxprom.i.i.us.9 = sext i32 %add.i.i.us.9 to i64
  %arrayidx.i.i.us.9 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.9
  store float 0.000000e+00, float* %arrayidx.i.i.us.9, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.9

if.end.i.i.us.9:                                  ; preds = %if.then.i.i.us.9, %if.end.i.i.us.8
  br i1 %cmp4.i.i.us.10, label %if.then.i.i.us.10, label %if.end.i.i.us.10

if.then.i.i.us.10:                                ; preds = %if.end.i.i.us.9
  %add.i.i.us.10 = add nsw i32 %mul.i.i, %conv.i.i.us.10
  %idxprom.i.i.us.10 = sext i32 %add.i.i.us.10 to i64
  %arrayidx.i.i.us.10 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.10
  store float 0.000000e+00, float* %arrayidx.i.i.us.10, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.10

if.end.i.i.us.10:                                 ; preds = %if.then.i.i.us.10, %if.end.i.i.us.9
  br i1 %cmp4.i.i.us.11, label %if.then.i.i.us.11, label %if.end.i.i.us.11

if.then.i.i.us.11:                                ; preds = %if.end.i.i.us.10
  %add.i.i.us.11 = add nsw i32 %mul.i.i, %conv.i.i.us.11
  %idxprom.i.i.us.11 = sext i32 %add.i.i.us.11 to i64
  %arrayidx.i.i.us.11 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.11
  store float 0.000000e+00, float* %arrayidx.i.i.us.11, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.11

if.end.i.i.us.11:                                 ; preds = %if.then.i.i.us.11, %if.end.i.i.us.10
  br i1 %cmp4.i.i.us.12, label %if.then.i.i.us.12, label %if.end.i.i.us.12

if.then.i.i.us.12:                                ; preds = %if.end.i.i.us.11
  %add.i.i.us.12 = add nsw i32 %mul.i.i, %conv.i.i.us.12
  %idxprom.i.i.us.12 = sext i32 %add.i.i.us.12 to i64
  %arrayidx.i.i.us.12 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.12
  store float 0.000000e+00, float* %arrayidx.i.i.us.12, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.12

if.end.i.i.us.12:                                 ; preds = %if.then.i.i.us.12, %if.end.i.i.us.11
  br i1 %cmp4.i.i.us.13, label %if.then.i.i.us.13, label %if.end.i.i.us.13

if.then.i.i.us.13:                                ; preds = %if.end.i.i.us.12
  %add.i.i.us.13 = add nsw i32 %mul.i.i, %conv.i.i.us.13
  %idxprom.i.i.us.13 = sext i32 %add.i.i.us.13 to i64
  %arrayidx.i.i.us.13 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.13
  store float 0.000000e+00, float* %arrayidx.i.i.us.13, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.13

if.end.i.i.us.13:                                 ; preds = %if.then.i.i.us.13, %if.end.i.i.us.12
  br i1 %cmp4.i.i.us.14, label %if.then.i.i.us.14, label %if.end.i.i.us.14

if.then.i.i.us.14:                                ; preds = %if.end.i.i.us.13
  %add.i.i.us.14 = add nsw i32 %mul.i.i, %conv.i.i.us.14
  %idxprom.i.i.us.14 = sext i32 %add.i.i.us.14 to i64
  %arrayidx.i.i.us.14 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.14
  store float 0.000000e+00, float* %arrayidx.i.i.us.14, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.14

if.end.i.i.us.14:                                 ; preds = %if.then.i.i.us.14, %if.end.i.i.us.13
  br i1 %cmp4.i.i.us.15, label %if.then.i.i.us.15, label %if.end.i.i.us.15

if.then.i.i.us.15:                                ; preds = %if.end.i.i.us.14
  %add.i.i.us.15 = add nsw i32 %mul.i.i, %conv.i.i.us.15
  %idxprom.i.i.us.15 = sext i32 %add.i.i.us.15 to i64
  %arrayidx.i.i.us.15 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.15
  store float 0.000000e+00, float* %arrayidx.i.i.us.15, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.15

if.end.i.i.us.15:                                 ; preds = %if.then.i.i.us.15, %if.end.i.i.us.14
  br i1 %cmp4.i.i.us.16, label %if.then.i.i.us.16, label %if.end.i.i.us.16

if.then.i.i.us.16:                                ; preds = %if.end.i.i.us.15
  %add.i.i.us.16 = add nsw i32 %mul.i.i, %conv.i.i.us.16
  %idxprom.i.i.us.16 = sext i32 %add.i.i.us.16 to i64
  %arrayidx.i.i.us.16 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.16
  store float 0.000000e+00, float* %arrayidx.i.i.us.16, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.16

if.end.i.i.us.16:                                 ; preds = %if.then.i.i.us.16, %if.end.i.i.us.15
  br i1 %cmp4.i.i.us.17, label %if.then.i.i.us.17, label %if.end.i.i.us.17

if.then.i.i.us.17:                                ; preds = %if.end.i.i.us.16
  %add.i.i.us.17 = add nsw i32 %mul.i.i, %conv.i.i.us.17
  %idxprom.i.i.us.17 = sext i32 %add.i.i.us.17 to i64
  %arrayidx.i.i.us.17 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.17
  store float 0.000000e+00, float* %arrayidx.i.i.us.17, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.17

if.end.i.i.us.17:                                 ; preds = %if.then.i.i.us.17, %if.end.i.i.us.16
  br i1 %cmp4.i.i.us.18, label %if.then.i.i.us.18, label %if.end.i.i.us.18

if.then.i.i.us.18:                                ; preds = %if.end.i.i.us.17
  %add.i.i.us.18 = add nsw i32 %mul.i.i, %conv.i.i.us.18
  %idxprom.i.i.us.18 = sext i32 %add.i.i.us.18 to i64
  %arrayidx.i.i.us.18 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.18
  store float 0.000000e+00, float* %arrayidx.i.i.us.18, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.18

if.end.i.i.us.18:                                 ; preds = %if.then.i.i.us.18, %if.end.i.i.us.17
  br i1 %cmp4.i.i.us.19, label %if.then.i.i.us.19, label %if.end.i.i.us.19

if.then.i.i.us.19:                                ; preds = %if.end.i.i.us.18
  %add.i.i.us.19 = add nsw i32 %mul.i.i, %conv.i.i.us.19
  %idxprom.i.i.us.19 = sext i32 %add.i.i.us.19 to i64
  %arrayidx.i.i.us.19 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.19
  store float 0.000000e+00, float* %arrayidx.i.i.us.19, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.19

if.end.i.i.us.19:                                 ; preds = %if.then.i.i.us.19, %if.end.i.i.us.18
  br i1 %cmp4.i.i.us.20, label %if.then.i.i.us.20, label %if.end.i.i.us.20

if.then.i.i.us.20:                                ; preds = %if.end.i.i.us.19
  %add.i.i.us.20 = add nsw i32 %mul.i.i, %conv.i.i.us.20
  %idxprom.i.i.us.20 = sext i32 %add.i.i.us.20 to i64
  %arrayidx.i.i.us.20 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.20
  store float 0.000000e+00, float* %arrayidx.i.i.us.20, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.20

if.end.i.i.us.20:                                 ; preds = %if.then.i.i.us.20, %if.end.i.i.us.19
  br i1 %cmp4.i.i.us.21, label %if.then.i.i.us.21, label %if.end.i.i.us.21

if.then.i.i.us.21:                                ; preds = %if.end.i.i.us.20
  %add.i.i.us.21 = add nsw i32 %mul.i.i, %conv.i.i.us.21
  %idxprom.i.i.us.21 = sext i32 %add.i.i.us.21 to i64
  %arrayidx.i.i.us.21 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.21
  store float 0.000000e+00, float* %arrayidx.i.i.us.21, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.21

if.end.i.i.us.21:                                 ; preds = %if.then.i.i.us.21, %if.end.i.i.us.20
  br i1 %cmp4.i.i.us.22, label %if.then.i.i.us.22, label %if.end.i.i.us.22

if.then.i.i.us.22:                                ; preds = %if.end.i.i.us.21
  %add.i.i.us.22 = add nsw i32 %mul.i.i, %conv.i.i.us.22
  %idxprom.i.i.us.22 = sext i32 %add.i.i.us.22 to i64
  %arrayidx.i.i.us.22 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.22
  store float 0.000000e+00, float* %arrayidx.i.i.us.22, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.22

if.end.i.i.us.22:                                 ; preds = %if.then.i.i.us.22, %if.end.i.i.us.21
  br i1 %cmp4.i.i.us.23, label %if.then.i.i.us.23, label %if.end.i.i.us.23

if.then.i.i.us.23:                                ; preds = %if.end.i.i.us.22
  %add.i.i.us.23 = add nsw i32 %mul.i.i, %conv.i.i.us.23
  %idxprom.i.i.us.23 = sext i32 %add.i.i.us.23 to i64
  %arrayidx.i.i.us.23 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.23
  store float 0.000000e+00, float* %arrayidx.i.i.us.23, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.23

if.end.i.i.us.23:                                 ; preds = %if.then.i.i.us.23, %if.end.i.i.us.22
  br i1 %cmp4.i.i.us.24, label %if.then.i.i.us.24, label %if.end.i.i.us.24

if.then.i.i.us.24:                                ; preds = %if.end.i.i.us.23
  %add.i.i.us.24 = add nsw i32 %mul.i.i, %conv.i.i.us.24
  %idxprom.i.i.us.24 = sext i32 %add.i.i.us.24 to i64
  %arrayidx.i.i.us.24 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.24
  store float 0.000000e+00, float* %arrayidx.i.i.us.24, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.24

if.end.i.i.us.24:                                 ; preds = %if.then.i.i.us.24, %if.end.i.i.us.23
  br i1 %cmp4.i.i.us.25, label %if.then.i.i.us.25, label %if.end.i.i.us.25

if.then.i.i.us.25:                                ; preds = %if.end.i.i.us.24
  %add.i.i.us.25 = add nsw i32 %mul.i.i, %conv.i.i.us.25
  %idxprom.i.i.us.25 = sext i32 %add.i.i.us.25 to i64
  %arrayidx.i.i.us.25 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.25
  store float 0.000000e+00, float* %arrayidx.i.i.us.25, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.25

if.end.i.i.us.25:                                 ; preds = %if.then.i.i.us.25, %if.end.i.i.us.24
  br i1 %cmp4.i.i.us.26, label %if.then.i.i.us.26, label %if.end.i.i.us.26

if.then.i.i.us.26:                                ; preds = %if.end.i.i.us.25
  %add.i.i.us.26 = add nsw i32 %mul.i.i, %conv.i.i.us.26
  %idxprom.i.i.us.26 = sext i32 %add.i.i.us.26 to i64
  %arrayidx.i.i.us.26 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.26
  store float 0.000000e+00, float* %arrayidx.i.i.us.26, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.26

if.end.i.i.us.26:                                 ; preds = %if.then.i.i.us.26, %if.end.i.i.us.25
  br i1 %cmp4.i.i.us.27, label %if.then.i.i.us.27, label %if.end.i.i.us.27

if.then.i.i.us.27:                                ; preds = %if.end.i.i.us.26
  %add.i.i.us.27 = add nsw i32 %mul.i.i, %conv.i.i.us.27
  %idxprom.i.i.us.27 = sext i32 %add.i.i.us.27 to i64
  %arrayidx.i.i.us.27 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.27
  store float 0.000000e+00, float* %arrayidx.i.i.us.27, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.27

if.end.i.i.us.27:                                 ; preds = %if.then.i.i.us.27, %if.end.i.i.us.26
  br i1 %cmp4.i.i.us.28, label %if.then.i.i.us.28, label %if.end.i.i.us.28

if.then.i.i.us.28:                                ; preds = %if.end.i.i.us.27
  %add.i.i.us.28 = add nsw i32 %mul.i.i, %conv.i.i.us.28
  %idxprom.i.i.us.28 = sext i32 %add.i.i.us.28 to i64
  %arrayidx.i.i.us.28 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.28
  store float 0.000000e+00, float* %arrayidx.i.i.us.28, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.28

if.end.i.i.us.28:                                 ; preds = %if.then.i.i.us.28, %if.end.i.i.us.27
  br i1 %cmp4.i.i.us.29, label %if.then.i.i.us.29, label %if.end.i.i.us.29

if.then.i.i.us.29:                                ; preds = %if.end.i.i.us.28
  %add.i.i.us.29 = add nsw i32 %mul.i.i, %conv.i.i.us.29
  %idxprom.i.i.us.29 = sext i32 %add.i.i.us.29 to i64
  %arrayidx.i.i.us.29 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.29
  store float 0.000000e+00, float* %arrayidx.i.i.us.29, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.29

if.end.i.i.us.29:                                 ; preds = %if.then.i.i.us.29, %if.end.i.i.us.28
  br i1 %cmp4.i.i.us.30, label %if.then.i.i.us.30, label %if.end.i.i.us.30

if.then.i.i.us.30:                                ; preds = %if.end.i.i.us.29
  %add.i.i.us.30 = add nsw i32 %mul.i.i, %conv.i.i.us.30
  %idxprom.i.i.us.30 = sext i32 %add.i.i.us.30 to i64
  %arrayidx.i.i.us.30 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.30
  store float 0.000000e+00, float* %arrayidx.i.i.us.30, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.30

if.end.i.i.us.30:                                 ; preds = %if.then.i.i.us.30, %if.end.i.i.us.29
  br i1 %cmp4.i.i.us.31, label %if.then.i.i.us.31, label %pregion_for_end.i.i

if.then.i.i.us.31:                                ; preds = %if.end.i.i.us.30
  %add.i.i.us.31 = add nsw i32 %mul.i.i, %conv.i.i.us.31
  %idxprom.i.i.us.31 = sext i32 %add.i.i.us.31 to i64
  %arrayidx.i.i.us.31 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.31
  store float 0.000000e+00, float* %arrayidx.i.i.us.31, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

if.then.i.i.us.us.7.1:                            ; preds = %if.end.i.i.us.us.7
  %add.i.i.us.us.7.1 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7.1 = shl i64 %add1.i.i.i.us.us.7.1, 32
  %146 = ashr exact i64 %sext.i.i.us.us.7.1, 32
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %if.then.i.i.us.us.7.1
  %indvars.iv.next.i.i3.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %if.then.i.i.us.us.7.1 ]
  %147 = phi float [ %153, %for.body.i.i.us.us.7.1 ], [ 0.000000e+00, %if.then.i.i.us.us.7.1 ]
  %148 = add nsw i64 %indvars.iv.next.i.i3.us.us.7.1, %136
  %arrayidx11.i.i.us.us.7.1 = getelementptr inbounds float, float* %7, i64 %148
  %149 = load float, float* %arrayidx11.i.i.us.us.7.1, align 4, !tbaa !12
  %150 = mul nsw i64 %indvars.iv.next.i.i3.us.us.7.1, %26
  %151 = add nsw i64 %150, %146
  %arrayidx15.i.i.us.us.7.1 = getelementptr inbounds float, float* %10, i64 %151
  %152 = load float, float* %arrayidx15.i.i.us.us.7.1, align 4, !tbaa !12
  %153 = tail call float @llvm.fmuladd.f32(float %149, float %152, float %147) #2
  store float %153, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7.1, label %if.end.i.i.us.us.7.1.loopexit, label %for.body.i.i.us.us.7.1, !llvm.loop !19

if.end.i.i.us.us.7.1.loopexit:                    ; preds = %for.body.i.i.us.us.7.1
  br label %if.end.i.i.us.us.7.1

if.end.i.i.us.us.7.1:                             ; preds = %if.end.i.i.us.us.7.1.loopexit, %if.end.i.i.us.us.7
  %154 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %154, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_mm3_kernel3.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !23

if.then.i.i.us.us.6.1:                            ; preds = %if.end.i.i.us.us.6
  %add.i.i.us.us.6.1 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6.1 = shl i64 %add1.i.i.i.us.us.6.1, 32
  %155 = ashr exact i64 %sext.i.i.us.us.6.1, 32
  br label %for.body.i.i.us.us.6.1

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %if.then.i.i.us.us.6.1
  %indvars.iv.next.i.i3.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %if.then.i.i.us.us.6.1 ]
  %156 = phi float [ %162, %for.body.i.i.us.us.6.1 ], [ 0.000000e+00, %if.then.i.i.us.us.6.1 ]
  %157 = add nsw i64 %indvars.iv.next.i.i3.us.us.6.1, %125
  %arrayidx11.i.i.us.us.6.1 = getelementptr inbounds float, float* %7, i64 %157
  %158 = load float, float* %arrayidx11.i.i.us.us.6.1, align 4, !tbaa !12
  %159 = mul nsw i64 %indvars.iv.next.i.i3.us.us.6.1, %26
  %160 = add nsw i64 %159, %155
  %arrayidx15.i.i.us.us.6.1 = getelementptr inbounds float, float* %10, i64 %160
  %161 = load float, float* %arrayidx15.i.i.us.us.6.1, align 4, !tbaa !12
  %162 = tail call float @llvm.fmuladd.f32(float %158, float %161, float %156) #2
  store float %162, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6.1, label %if.end.i.i.us.us.6.1.loopexit, label %for.body.i.i.us.us.6.1, !llvm.loop !19

if.end.i.i.us.us.6.1.loopexit:                    ; preds = %for.body.i.i.us.us.6.1
  br label %if.end.i.i.us.us.6.1

if.end.i.i.us.us.6.1:                             ; preds = %if.end.i.i.us.us.6.1.loopexit, %if.end.i.i.us.us.6
  %163 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %163, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us.6.loopexit, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !23

if.then.i.i.us.us.5.1:                            ; preds = %if.end.i.i.us.us.5
  %add.i.i.us.us.5.1 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5.1 = shl i64 %add1.i.i.i.us.us.5.1, 32
  %164 = ashr exact i64 %sext.i.i.us.us.5.1, 32
  br label %for.body.i.i.us.us.5.1

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %if.then.i.i.us.us.5.1
  %indvars.iv.next.i.i3.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %if.then.i.i.us.us.5.1 ]
  %165 = phi float [ %171, %for.body.i.i.us.us.5.1 ], [ 0.000000e+00, %if.then.i.i.us.us.5.1 ]
  %166 = add nsw i64 %indvars.iv.next.i.i3.us.us.5.1, %114
  %arrayidx11.i.i.us.us.5.1 = getelementptr inbounds float, float* %7, i64 %166
  %167 = load float, float* %arrayidx11.i.i.us.us.5.1, align 4, !tbaa !12
  %168 = mul nsw i64 %indvars.iv.next.i.i3.us.us.5.1, %26
  %169 = add nsw i64 %168, %164
  %arrayidx15.i.i.us.us.5.1 = getelementptr inbounds float, float* %10, i64 %169
  %170 = load float, float* %arrayidx15.i.i.us.us.5.1, align 4, !tbaa !12
  %171 = tail call float @llvm.fmuladd.f32(float %167, float %170, float %165) #2
  store float %171, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5.1, label %if.end.i.i.us.us.5.1.loopexit, label %for.body.i.i.us.us.5.1, !llvm.loop !19

if.end.i.i.us.us.5.1.loopexit:                    ; preds = %for.body.i.i.us.us.5.1
  br label %if.end.i.i.us.us.5.1

if.end.i.i.us.us.5.1:                             ; preds = %if.end.i.i.us.us.5.1.loopexit, %if.end.i.i.us.us.5
  %172 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %172, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us.5.loopexit, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !23

if.then.i.i.us.us.4.1:                            ; preds = %if.end.i.i.us.us.4
  %add.i.i.us.us.4.1 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4.1 = shl i64 %add1.i.i.i.us.us.4.1, 32
  %173 = ashr exact i64 %sext.i.i.us.us.4.1, 32
  br label %for.body.i.i.us.us.4.1

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %if.then.i.i.us.us.4.1
  %indvars.iv.next.i.i3.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %if.then.i.i.us.us.4.1 ]
  %174 = phi float [ %180, %for.body.i.i.us.us.4.1 ], [ 0.000000e+00, %if.then.i.i.us.us.4.1 ]
  %175 = add nsw i64 %indvars.iv.next.i.i3.us.us.4.1, %103
  %arrayidx11.i.i.us.us.4.1 = getelementptr inbounds float, float* %7, i64 %175
  %176 = load float, float* %arrayidx11.i.i.us.us.4.1, align 4, !tbaa !12
  %177 = mul nsw i64 %indvars.iv.next.i.i3.us.us.4.1, %26
  %178 = add nsw i64 %177, %173
  %arrayidx15.i.i.us.us.4.1 = getelementptr inbounds float, float* %10, i64 %178
  %179 = load float, float* %arrayidx15.i.i.us.us.4.1, align 4, !tbaa !12
  %180 = tail call float @llvm.fmuladd.f32(float %176, float %179, float %174) #2
  store float %180, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4.1, label %if.end.i.i.us.us.4.1.loopexit, label %for.body.i.i.us.us.4.1, !llvm.loop !19

if.end.i.i.us.us.4.1.loopexit:                    ; preds = %for.body.i.i.us.us.4.1
  br label %if.end.i.i.us.us.4.1

if.end.i.i.us.us.4.1:                             ; preds = %if.end.i.i.us.us.4.1.loopexit, %if.end.i.i.us.us.4
  %181 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %181, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us.4.loopexit, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !23

if.then.i.i.us.us.3.1:                            ; preds = %if.end.i.i.us.us.3
  %add.i.i.us.us.3.1 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3.1 = shl i64 %add1.i.i.i.us.us.3.1, 32
  %182 = ashr exact i64 %sext.i.i.us.us.3.1, 32
  br label %for.body.i.i.us.us.3.1

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %if.then.i.i.us.us.3.1
  %indvars.iv.next.i.i3.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %if.then.i.i.us.us.3.1 ]
  %183 = phi float [ %189, %for.body.i.i.us.us.3.1 ], [ 0.000000e+00, %if.then.i.i.us.us.3.1 ]
  %184 = add nsw i64 %indvars.iv.next.i.i3.us.us.3.1, %92
  %arrayidx11.i.i.us.us.3.1 = getelementptr inbounds float, float* %7, i64 %184
  %185 = load float, float* %arrayidx11.i.i.us.us.3.1, align 4, !tbaa !12
  %186 = mul nsw i64 %indvars.iv.next.i.i3.us.us.3.1, %26
  %187 = add nsw i64 %186, %182
  %arrayidx15.i.i.us.us.3.1 = getelementptr inbounds float, float* %10, i64 %187
  %188 = load float, float* %arrayidx15.i.i.us.us.3.1, align 4, !tbaa !12
  %189 = tail call float @llvm.fmuladd.f32(float %185, float %188, float %183) #2
  store float %189, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3.1, label %if.end.i.i.us.us.3.1.loopexit, label %for.body.i.i.us.us.3.1, !llvm.loop !19

if.end.i.i.us.us.3.1.loopexit:                    ; preds = %for.body.i.i.us.us.3.1
  br label %if.end.i.i.us.us.3.1

if.end.i.i.us.us.3.1:                             ; preds = %if.end.i.i.us.us.3.1.loopexit, %if.end.i.i.us.us.3
  %190 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %190, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us.3.loopexit, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !23

if.then.i.i.us.us.2.1:                            ; preds = %if.end.i.i.us.us.2
  %add.i.i.us.us.2.1 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2.1 = shl i64 %add1.i.i.i.us.us.2.1, 32
  %191 = ashr exact i64 %sext.i.i.us.us.2.1, 32
  br label %for.body.i.i.us.us.2.1

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %if.then.i.i.us.us.2.1
  %indvars.iv.next.i.i3.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %if.then.i.i.us.us.2.1 ]
  %192 = phi float [ %198, %for.body.i.i.us.us.2.1 ], [ 0.000000e+00, %if.then.i.i.us.us.2.1 ]
  %193 = add nsw i64 %indvars.iv.next.i.i3.us.us.2.1, %81
  %arrayidx11.i.i.us.us.2.1 = getelementptr inbounds float, float* %7, i64 %193
  %194 = load float, float* %arrayidx11.i.i.us.us.2.1, align 4, !tbaa !12
  %195 = mul nsw i64 %indvars.iv.next.i.i3.us.us.2.1, %26
  %196 = add nsw i64 %195, %191
  %arrayidx15.i.i.us.us.2.1 = getelementptr inbounds float, float* %10, i64 %196
  %197 = load float, float* %arrayidx15.i.i.us.us.2.1, align 4, !tbaa !12
  %198 = tail call float @llvm.fmuladd.f32(float %194, float %197, float %192) #2
  store float %198, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2.1, label %if.end.i.i.us.us.2.1.loopexit, label %for.body.i.i.us.us.2.1, !llvm.loop !19

if.end.i.i.us.us.2.1.loopexit:                    ; preds = %for.body.i.i.us.us.2.1
  br label %if.end.i.i.us.us.2.1

if.end.i.i.us.us.2.1:                             ; preds = %if.end.i.i.us.us.2.1.loopexit, %if.end.i.i.us.us.2
  %199 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %199, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us.2.loopexit, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !23

if.then.i.i.us.us.1.1:                            ; preds = %if.end.i.i.us.us.1
  %add.i.i.us.us.1.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1.1 = shl i64 %add1.i.i.i.us.us.1.1, 32
  %200 = ashr exact i64 %sext.i.i.us.us.1.1, 32
  br label %for.body.i.i.us.us.1.1

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %if.then.i.i.us.us.1.1
  %indvars.iv.next.i.i3.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %if.then.i.i.us.us.1.1 ]
  %201 = phi float [ %207, %for.body.i.i.us.us.1.1 ], [ 0.000000e+00, %if.then.i.i.us.us.1.1 ]
  %202 = add nsw i64 %indvars.iv.next.i.i3.us.us.1.1, %60
  %arrayidx11.i.i.us.us.1.1 = getelementptr inbounds float, float* %7, i64 %202
  %203 = load float, float* %arrayidx11.i.i.us.us.1.1, align 4, !tbaa !12
  %204 = mul nsw i64 %indvars.iv.next.i.i3.us.us.1.1, %26
  %205 = add nsw i64 %204, %200
  %arrayidx15.i.i.us.us.1.1 = getelementptr inbounds float, float* %10, i64 %205
  %206 = load float, float* %arrayidx15.i.i.us.us.1.1, align 4, !tbaa !12
  %207 = tail call float @llvm.fmuladd.f32(float %203, float %206, float %201) #2
  store float %207, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1.1, label %if.end.i.i.us.us.1.1.loopexit, label %for.body.i.i.us.us.1.1, !llvm.loop !19

if.end.i.i.us.us.1.1.loopexit:                    ; preds = %for.body.i.i.us.us.1.1
  br label %if.end.i.i.us.us.1.1

if.end.i.i.us.us.1.1:                             ; preds = %if.end.i.i.us.us.1.1.loopexit, %if.end.i.i.us.us.1
  %208 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %208, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us.1.loopexit, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !23

if.then.i.i.us.us.146:                            ; preds = %if.end.i.i.us.us
  %add.i.i.us.us.142 = add nsw i32 %mul.i.i.us, %conv.i.i.us.us.139
  %idxprom.i.i.us.us.143 = sext i32 %add.i.i.us.us.142 to i64
  %arrayidx.i.i.us.us.144 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.143
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.144, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.145 = shl i64 %add1.i.i.i.us.us.138, 32
  %209 = ashr exact i64 %sext.i.i.us.us.145, 32
  br label %for.body.i.i.us.us.152

for.body.i.i.us.us.152:                           ; preds = %for.body.i.i.us.us.152, %if.then.i.i.us.us.146
  %indvars.iv.next.i.i3.us.us.147 = phi i64 [ %indvars.iv.next.i.i.us.us.150, %for.body.i.i.us.us.152 ], [ 0, %if.then.i.i.us.us.146 ]
  %210 = phi float [ %216, %for.body.i.i.us.us.152 ], [ 0.000000e+00, %if.then.i.i.us.us.146 ]
  %211 = add nsw i64 %indvars.iv.next.i.i3.us.us.147, %58
  %arrayidx11.i.i.us.us.148 = getelementptr inbounds float, float* %7, i64 %211
  %212 = load float, float* %arrayidx11.i.i.us.us.148, align 4, !tbaa !12
  %213 = mul nsw i64 %indvars.iv.next.i.i3.us.us.147, %26
  %214 = add nsw i64 %213, %209
  %arrayidx15.i.i.us.us.149 = getelementptr inbounds float, float* %10, i64 %214
  %215 = load float, float* %arrayidx15.i.i.us.us.149, align 4, !tbaa !12
  %216 = tail call float @llvm.fmuladd.f32(float %212, float %215, float %210) #2
  store float %216, float* %arrayidx.i.i.us.us.144, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.150 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.147, 1
  %exitcond.not.i.i.us.us.151 = icmp eq i64 %indvars.iv.next.i.i.us.us.150, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.151, label %if.end.i.i.us.us.153.loopexit, label %for.body.i.i.us.us.152, !llvm.loop !19

if.end.i.i.us.us.153.loopexit:                    ; preds = %for.body.i.i.us.us.152
  br label %if.end.i.i.us.us.153

if.end.i.i.us.us.153:                             ; preds = %if.end.i.i.us.us.153.loopexit, %if.end.i.i.us.us
  %217 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %217, 32
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
!5 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"int", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !"", !""}
!10 = !{!"E", !"F", !"G", !"ni", !"nl", !"nj"}
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
