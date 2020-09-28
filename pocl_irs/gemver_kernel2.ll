; ModuleID = './OM/KBEGAJBBAALIMPLKDCOKKOGOMEPCEPLPNLGKF/gemver_kernel2/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_gemver_kernel2(float* nocapture readonly %0, float* nocapture %1, float* nocapture readonly %2, float* nocapture readonly %3, float %4, i32 %5, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %6, i64 %7, i64 %8, i64 %9) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %7, 8
  %cmp228.i = icmp sgt i32 %5, 0
  %11 = zext i32 %5 to i64
  br i1 %cmp228.i, label %pregion_for_entry.entry.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.us.preheader:           ; preds = %10
  br label %pregion_for_entry.entry.i.us

vector.memcheck:                                  ; preds = %10
  %12 = trunc i64 %7 to i32
  %13 = shl i32 %12, 8
  %14 = sext i32 %13 to i64
  %scevgep = getelementptr float, float* %1, i64 %14
  %15 = add nsw i64 %14, 256
  %scevgep13 = getelementptr float, float* %1, i64 %15
  %scevgep15 = getelementptr float, float* %3, i64 %14
  %scevgep17 = getelementptr float, float* %3, i64 %15
  %bound0 = icmp ult float* %scevgep, %scevgep17
  %bound1 = icmp ult float* %scevgep15, %scevgep13
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.preheader, label %vector.ph

pregion_for_entry.entry.i.preheader:              ; preds = %vector.memcheck
  br label %pregion_for_entry.entry.i

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert19 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat20 = shufflevector <8 x i32> %broadcast.splatinsert19, <8 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.3, %vector.body ]
  %16 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %17 = trunc <8 x i64> %16 to <8 x i32>
  %18 = icmp sgt <8 x i32> %broadcast.splat20, %17
  %19 = extractelement <8 x i64> %16, i32 0
  %20 = shl i64 %19, 32
  %21 = ashr exact i64 %20, 32
  %22 = getelementptr inbounds float, float* %1, i64 %21
  %23 = bitcast float* %22 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %23, i32 4, <8 x i1> %18, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %24 = getelementptr inbounds float, float* %3, i64 %21
  %25 = bitcast float* %24 to <8 x float>*
  %wide.masked.load21 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %25, i32 4, <8 x i1> %18, <8 x float> undef), !tbaa !12, !alias.scope !19
  %26 = fadd <8 x float> %wide.masked.load21, %wide.masked.load
  %27 = bitcast float* %22 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %26, <8 x float>* %27, i32 4, <8 x i1> %18), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %28 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %29 = trunc <8 x i64> %28 to <8 x i32>
  %30 = icmp sgt <8 x i32> %broadcast.splat20, %29
  %31 = extractelement <8 x i64> %28, i32 0
  %32 = shl i64 %31, 32
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds float, float* %1, i64 %33
  %35 = bitcast float* %34 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %35, i32 4, <8 x i1> %30, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %36 = getelementptr inbounds float, float* %3, i64 %33
  %37 = bitcast float* %36 to <8 x float>*
  %wide.masked.load21.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %37, i32 4, <8 x i1> %30, <8 x float> undef), !tbaa !12, !alias.scope !19
  %38 = fadd <8 x float> %wide.masked.load21.1, %wide.masked.load.1
  %39 = bitcast float* %34 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %38, <8 x float>* %39, i32 4, <8 x i1> %30), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %40 = add nuw nsw <8 x i64> %vec.ind.next.1, %broadcast.splat
  %41 = trunc <8 x i64> %40 to <8 x i32>
  %42 = icmp sgt <8 x i32> %broadcast.splat20, %41
  %43 = extractelement <8 x i64> %40, i32 0
  %44 = shl i64 %43, 32
  %45 = ashr exact i64 %44, 32
  %46 = getelementptr inbounds float, float* %1, i64 %45
  %47 = bitcast float* %46 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %47, i32 4, <8 x i1> %42, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %48 = getelementptr inbounds float, float* %3, i64 %45
  %49 = bitcast float* %48 to <8 x float>*
  %wide.masked.load21.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %49, i32 4, <8 x i1> %42, <8 x float> undef), !tbaa !12, !alias.scope !19
  %50 = fadd <8 x float> %wide.masked.load21.2, %wide.masked.load.2
  %51 = bitcast float* %46 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %50, <8 x float>* %51, i32 4, <8 x i1> %42), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %vec.ind.next.2 = add <8 x i64> %vec.ind, <i64 24, i64 24, i64 24, i64 24, i64 24, i64 24, i64 24, i64 24>
  %52 = add nuw nsw <8 x i64> %vec.ind.next.2, %broadcast.splat
  %53 = trunc <8 x i64> %52 to <8 x i32>
  %54 = icmp sgt <8 x i32> %broadcast.splat20, %53
  %55 = extractelement <8 x i64> %52, i32 0
  %56 = shl i64 %55, 32
  %57 = ashr exact i64 %56, 32
  %58 = getelementptr inbounds float, float* %1, i64 %57
  %59 = bitcast float* %58 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %59, i32 4, <8 x i1> %54, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %60 = getelementptr inbounds float, float* %3, i64 %57
  %61 = bitcast float* %60 to <8 x float>*
  %wide.masked.load21.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %61, i32 4, <8 x i1> %54, <8 x float> undef), !tbaa !12, !alias.scope !19
  %62 = fadd <8 x float> %wide.masked.load21.3, %wide.masked.load.3
  %63 = bitcast float* %58 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %62, <8 x float>* %63, i32 4, <8 x i1> %54), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %index.next.3 = add nuw nsw i64 %index, 32
  %vec.ind.next.3 = add <8 x i64> %vec.ind, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %64 = icmp eq i64 %index.next.3, 256
  br i1 %64, label %gemver_kernel2.exit.loopexit26, label %vector.body, !llvm.loop !23

pregion_for_entry.entry.i.us:                     ; preds = %if.end.r_exit.i.us.1, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %82, %if.end.r_exit.i.us.1 ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp.i.us = icmp slt i32 %conv.i.us, %5
  br i1 %cmp.i.us, label %for.cond.preheader.i.us, label %if.end.r_exit.i.us

for.cond.preheader.i.us:                          ; preds = %pregion_for_entry.entry.i.us
  %sext27.i.us = shl i64 %add1.i.i.us, 32
  %idxprom8.i.us = ashr exact i64 %sext27.i.us, 32
  %arrayidx9.i.us = getelementptr inbounds float, float* %1, i64 %idxprom8.i.us
  %.pre.i2.us7 = load float, float* %arrayidx9.i.us, align 4, !tbaa !12
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %for.cond.preheader.i.us
  %indvars.iv.next.i5.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %for.cond.preheader.i.us ]
  %65 = phi float [ %70, %for.body.i.us ], [ %.pre.i2.us7, %for.cond.preheader.i.us ]
  %66 = mul nuw nsw i64 %indvars.iv.next.i5.us, %11
  %67 = add nsw i64 %66, %idxprom8.i.us
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %67
  %68 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %mul4.i.us = fmul float %68, %4
  %arrayidx6.i.us = getelementptr inbounds float, float* %2, i64 %indvars.iv.next.i5.us
  %69 = load float, float* %arrayidx6.i.us, align 4, !tbaa !12
  %70 = tail call float @llvm.fmuladd.f32(float %mul4.i.us, float %69, float %65) #2
  store float %70, float* %arrayidx9.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i5.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %11
  br i1 %exitcond.not.i.us, label %for.end.loopexit.i.us, label %for.body.i.us, !llvm.loop !26

for.end.loopexit.i.us:                            ; preds = %for.body.i.us
  %.lcssa = phi float [ %70, %for.body.i.us ]
  %arrayidx11.i.us = getelementptr inbounds float, float* %3, i64 %idxprom8.i.us
  %71 = load float, float* %arrayidx11.i.us, align 4, !tbaa !12
  %add14.i.us = fadd float %.lcssa, %71
  store float %add14.i.us, float* %arrayidx9.i.us, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us

if.end.r_exit.i.us:                               ; preds = %for.end.loopexit.i.us, %pregion_for_entry.entry.i.us
  %72 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1 = add nuw nsw i64 %72, %mul.i.i
  %conv.i.us.1 = trunc i64 %add1.i.i.us.1 to i32
  %cmp.i.us.1 = icmp slt i32 %conv.i.us.1, %5
  br i1 %cmp.i.us.1, label %for.cond.preheader.i.us.1, label %if.end.r_exit.i.us.1

pregion_for_entry.entry.i:                        ; preds = %if.end.r_exit.i.3, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ %88, %if.end.r_exit.i.3 ], [ 0, %pregion_for_entry.entry.i.preheader ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %cmp.i = icmp slt i32 %conv.i, %5
  br i1 %cmp.i, label %for.cond.preheader.i, label %if.end.r_exit.i

for.cond.preheader.i:                             ; preds = %pregion_for_entry.entry.i
  %sext27.i = shl i64 %add1.i.i, 32
  %idxprom8.i = ashr exact i64 %sext27.i, 32
  %arrayidx9.i = getelementptr inbounds float, float* %1, i64 %idxprom8.i
  %.pre1.i16 = load float, float* %arrayidx9.i, align 4, !tbaa !12
  %arrayidx11.i = getelementptr inbounds float, float* %3, i64 %idxprom8.i
  %73 = load float, float* %arrayidx11.i, align 4, !tbaa !12
  %add14.i = fadd float %73, %.pre1.i16
  store float %add14.i, float* %arrayidx9.i, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i

if.end.r_exit.i:                                  ; preds = %for.cond.preheader.i, %pregion_for_entry.entry.i
  %74 = or i64 %_local_id_x.0, 1
  %add1.i.i.1 = add nuw nsw i64 %74, %mul.i.i
  %conv.i.1 = trunc i64 %add1.i.i.1 to i32
  %cmp.i.1 = icmp slt i32 %conv.i.1, %5
  br i1 %cmp.i.1, label %for.cond.preheader.i.1, label %if.end.r_exit.i.1

gemver_kernel2.exit.loopexit:                     ; preds = %if.end.r_exit.i.us.1
  br label %gemver_kernel2.exit

gemver_kernel2.exit.loopexit25:                   ; preds = %if.end.r_exit.i.3
  br label %gemver_kernel2.exit

gemver_kernel2.exit.loopexit26:                   ; preds = %vector.body
  br label %gemver_kernel2.exit

gemver_kernel2.exit:                              ; preds = %gemver_kernel2.exit.loopexit26, %gemver_kernel2.exit.loopexit25, %gemver_kernel2.exit.loopexit
  ret void

for.cond.preheader.i.us.1:                        ; preds = %if.end.r_exit.i.us
  %sext27.i.us.1 = shl i64 %add1.i.i.us.1, 32
  %idxprom8.i.us.1 = ashr exact i64 %sext27.i.us.1, 32
  %arrayidx9.i.us.1 = getelementptr inbounds float, float* %1, i64 %idxprom8.i.us.1
  %.pre.i2.us7.1 = load float, float* %arrayidx9.i.us.1, align 4, !tbaa !12
  br label %for.body.i.us.1

for.body.i.us.1:                                  ; preds = %for.body.i.us.1, %for.cond.preheader.i.us.1
  %indvars.iv.next.i5.us.1 = phi i64 [ %indvars.iv.next.i.us.1, %for.body.i.us.1 ], [ 0, %for.cond.preheader.i.us.1 ]
  %75 = phi float [ %80, %for.body.i.us.1 ], [ %.pre.i2.us7.1, %for.cond.preheader.i.us.1 ]
  %76 = mul nuw nsw i64 %indvars.iv.next.i5.us.1, %11
  %77 = add nsw i64 %76, %idxprom8.i.us.1
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %0, i64 %77
  %78 = load float, float* %arrayidx.i.us.1, align 4, !tbaa !12
  %mul4.i.us.1 = fmul float %78, %4
  %arrayidx6.i.us.1 = getelementptr inbounds float, float* %2, i64 %indvars.iv.next.i5.us.1
  %79 = load float, float* %arrayidx6.i.us.1, align 4, !tbaa !12
  %80 = tail call float @llvm.fmuladd.f32(float %mul4.i.us.1, float %79, float %75) #2
  store float %80, float* %arrayidx9.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.next.i5.us.1, 1
  %exitcond.not.i.us.1 = icmp eq i64 %indvars.iv.next.i.us.1, %11
  br i1 %exitcond.not.i.us.1, label %for.end.loopexit.i.us.1, label %for.body.i.us.1, !llvm.loop !26

for.end.loopexit.i.us.1:                          ; preds = %for.body.i.us.1
  %.lcssa27 = phi float [ %80, %for.body.i.us.1 ]
  %arrayidx11.i.us.1 = getelementptr inbounds float, float* %3, i64 %idxprom8.i.us.1
  %81 = load float, float* %arrayidx11.i.us.1, align 4, !tbaa !12
  %add14.i.us.1 = fadd float %.lcssa27, %81
  store float %add14.i.us.1, float* %arrayidx9.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.1

if.end.r_exit.i.us.1:                             ; preds = %for.end.loopexit.i.us.1, %if.end.r_exit.i.us
  %82 = add nuw nsw i64 %_local_id_x.0.us, 2
  %exitcond.not.1 = icmp eq i64 %82, 256
  br i1 %exitcond.not.1, label %gemver_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !28

for.cond.preheader.i.1:                           ; preds = %if.end.r_exit.i
  %sext27.i.1 = shl i64 %add1.i.i.1, 32
  %idxprom8.i.1 = ashr exact i64 %sext27.i.1, 32
  %arrayidx9.i.1 = getelementptr inbounds float, float* %1, i64 %idxprom8.i.1
  %.pre1.i16.1 = load float, float* %arrayidx9.i.1, align 4, !tbaa !12
  %arrayidx11.i.1 = getelementptr inbounds float, float* %3, i64 %idxprom8.i.1
  %83 = load float, float* %arrayidx11.i.1, align 4, !tbaa !12
  %add14.i.1 = fadd float %83, %.pre1.i16.1
  store float %add14.i.1, float* %arrayidx9.i.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.1

if.end.r_exit.i.1:                                ; preds = %for.cond.preheader.i.1, %if.end.r_exit.i
  %84 = or i64 %_local_id_x.0, 2
  %add1.i.i.2 = add nuw nsw i64 %84, %mul.i.i
  %conv.i.2 = trunc i64 %add1.i.i.2 to i32
  %cmp.i.2 = icmp slt i32 %conv.i.2, %5
  br i1 %cmp.i.2, label %for.cond.preheader.i.2, label %if.end.r_exit.i.2

for.cond.preheader.i.2:                           ; preds = %if.end.r_exit.i.1
  %sext27.i.2 = shl i64 %add1.i.i.2, 32
  %idxprom8.i.2 = ashr exact i64 %sext27.i.2, 32
  %arrayidx9.i.2 = getelementptr inbounds float, float* %1, i64 %idxprom8.i.2
  %.pre1.i16.2 = load float, float* %arrayidx9.i.2, align 4, !tbaa !12
  %arrayidx11.i.2 = getelementptr inbounds float, float* %3, i64 %idxprom8.i.2
  %85 = load float, float* %arrayidx11.i.2, align 4, !tbaa !12
  %add14.i.2 = fadd float %85, %.pre1.i16.2
  store float %add14.i.2, float* %arrayidx9.i.2, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.2

if.end.r_exit.i.2:                                ; preds = %for.cond.preheader.i.2, %if.end.r_exit.i.1
  %86 = or i64 %_local_id_x.0, 3
  %add1.i.i.3 = add nuw nsw i64 %86, %mul.i.i
  %conv.i.3 = trunc i64 %add1.i.i.3 to i32
  %cmp.i.3 = icmp slt i32 %conv.i.3, %5
  br i1 %cmp.i.3, label %for.cond.preheader.i.3, label %if.end.r_exit.i.3

for.cond.preheader.i.3:                           ; preds = %if.end.r_exit.i.2
  %sext27.i.3 = shl i64 %add1.i.i.3, 32
  %idxprom8.i.3 = ashr exact i64 %sext27.i.3, 32
  %arrayidx9.i.3 = getelementptr inbounds float, float* %1, i64 %idxprom8.i.3
  %.pre1.i16.3 = load float, float* %arrayidx9.i.3, align 4, !tbaa !12
  %arrayidx11.i.3 = getelementptr inbounds float, float* %3, i64 %idxprom8.i.3
  %87 = load float, float* %arrayidx11.i.3, align 4, !tbaa !12
  %add14.i.3 = fadd float %87, %.pre1.i16.3
  store float %add14.i.3, float* %arrayidx9.i.3, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.3

if.end.r_exit.i.3:                                ; preds = %for.cond.preheader.i.3, %if.end.r_exit.i.2
  %88 = add nuw nsw i64 %_local_id_x.0, 4
  %exitcond9.not.3 = icmp eq i64 %88, 256
  br i1 %exitcond9.not.3, label %gemver_kernel2.exit.loopexit25, label %pregion_for_entry.entry.i, !llvm.loop !29
}

; Function Attrs: nounwind
define void @_pocl_kernel_gemver_kernel2_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %18 = bitcast i8** %17 to float***
  %19 = load float**, float*** %18, align 8
  %20 = load float*, float** %19, align 8
  %21 = getelementptr i8*, i8** %0, i64 4
  %22 = bitcast i8** %21 to float**
  %23 = load float*, float** %22, align 8
  %24 = load float, float* %23, align 4
  %25 = getelementptr i8*, i8** %0, i64 5
  %26 = bitcast i8** %25 to i32**
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp228.i.i = icmp sgt i32 %28, 0
  %29 = zext i32 %28 to i64
  br i1 %cmp228.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %5
  %30 = trunc i64 %2 to i32
  %31 = shl i32 %30, 8
  %32 = sext i32 %31 to i64
  %scevgep = getelementptr float, float* %12, i64 %32
  %33 = add nsw i64 %32, 256
  %scevgep13 = getelementptr float, float* %12, i64 %33
  %scevgep15 = getelementptr float, float* %20, i64 %32
  %scevgep17 = getelementptr float, float* %20, i64 %33
  %bound0 = icmp ult float* %scevgep, %scevgep17
  %bound1 = icmp ult float* %scevgep15, %scevgep13
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.i.preheader, label %vector.ph

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck
  br label %pregion_for_entry.entry.i.i

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert19 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat20 = shufflevector <8 x i32> %broadcast.splatinsert19, <8 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.3, %vector.body ]
  %34 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %35 = trunc <8 x i64> %34 to <8 x i32>
  %36 = icmp sgt <8 x i32> %broadcast.splat20, %35
  %37 = extractelement <8 x i64> %34, i32 0
  %38 = shl i64 %37, 32
  %39 = ashr exact i64 %38, 32
  %40 = getelementptr inbounds float, float* %12, i64 %39
  %41 = bitcast float* %40 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %41, i32 4, <8 x i1> %36, <8 x float> undef), !tbaa !12, !alias.scope !30, !noalias !33
  %42 = getelementptr inbounds float, float* %20, i64 %39
  %43 = bitcast float* %42 to <8 x float>*
  %wide.masked.load21 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %43, i32 4, <8 x i1> %36, <8 x float> undef), !tbaa !12, !alias.scope !33
  %44 = fadd <8 x float> %wide.masked.load21, %wide.masked.load
  %45 = bitcast float* %40 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %44, <8 x float>* %45, i32 4, <8 x i1> %36), !tbaa !12, !alias.scope !30, !noalias !33, !llvm.access.group !21
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %46 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %47 = trunc <8 x i64> %46 to <8 x i32>
  %48 = icmp sgt <8 x i32> %broadcast.splat20, %47
  %49 = extractelement <8 x i64> %46, i32 0
  %50 = shl i64 %49, 32
  %51 = ashr exact i64 %50, 32
  %52 = getelementptr inbounds float, float* %12, i64 %51
  %53 = bitcast float* %52 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %53, i32 4, <8 x i1> %48, <8 x float> undef), !tbaa !12, !alias.scope !30, !noalias !33
  %54 = getelementptr inbounds float, float* %20, i64 %51
  %55 = bitcast float* %54 to <8 x float>*
  %wide.masked.load21.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %55, i32 4, <8 x i1> %48, <8 x float> undef), !tbaa !12, !alias.scope !33
  %56 = fadd <8 x float> %wide.masked.load21.1, %wide.masked.load.1
  %57 = bitcast float* %52 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %56, <8 x float>* %57, i32 4, <8 x i1> %48), !tbaa !12, !alias.scope !30, !noalias !33, !llvm.access.group !21
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %58 = add nuw nsw <8 x i64> %vec.ind.next.1, %broadcast.splat
  %59 = trunc <8 x i64> %58 to <8 x i32>
  %60 = icmp sgt <8 x i32> %broadcast.splat20, %59
  %61 = extractelement <8 x i64> %58, i32 0
  %62 = shl i64 %61, 32
  %63 = ashr exact i64 %62, 32
  %64 = getelementptr inbounds float, float* %12, i64 %63
  %65 = bitcast float* %64 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %65, i32 4, <8 x i1> %60, <8 x float> undef), !tbaa !12, !alias.scope !30, !noalias !33
  %66 = getelementptr inbounds float, float* %20, i64 %63
  %67 = bitcast float* %66 to <8 x float>*
  %wide.masked.load21.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %67, i32 4, <8 x i1> %60, <8 x float> undef), !tbaa !12, !alias.scope !33
  %68 = fadd <8 x float> %wide.masked.load21.2, %wide.masked.load.2
  %69 = bitcast float* %64 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %68, <8 x float>* %69, i32 4, <8 x i1> %60), !tbaa !12, !alias.scope !30, !noalias !33, !llvm.access.group !21
  %vec.ind.next.2 = add <8 x i64> %vec.ind, <i64 24, i64 24, i64 24, i64 24, i64 24, i64 24, i64 24, i64 24>
  %70 = add nuw nsw <8 x i64> %vec.ind.next.2, %broadcast.splat
  %71 = trunc <8 x i64> %70 to <8 x i32>
  %72 = icmp sgt <8 x i32> %broadcast.splat20, %71
  %73 = extractelement <8 x i64> %70, i32 0
  %74 = shl i64 %73, 32
  %75 = ashr exact i64 %74, 32
  %76 = getelementptr inbounds float, float* %12, i64 %75
  %77 = bitcast float* %76 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %77, i32 4, <8 x i1> %72, <8 x float> undef), !tbaa !12, !alias.scope !30, !noalias !33
  %78 = getelementptr inbounds float, float* %20, i64 %75
  %79 = bitcast float* %78 to <8 x float>*
  %wide.masked.load21.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %79, i32 4, <8 x i1> %72, <8 x float> undef), !tbaa !12, !alias.scope !33
  %80 = fadd <8 x float> %wide.masked.load21.3, %wide.masked.load.3
  %81 = bitcast float* %76 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %80, <8 x float>* %81, i32 4, <8 x i1> %72), !tbaa !12, !alias.scope !30, !noalias !33, !llvm.access.group !21
  %index.next.3 = add nuw nsw i64 %index, 32
  %vec.ind.next.3 = add <8 x i64> %vec.ind, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %82 = icmp eq i64 %index.next.3, 256
  br i1 %82, label %_pocl_kernel_gemver_kernel2.exit.loopexit26, label %vector.body, !llvm.loop !35

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %100, %if.end.r_exit.i.i.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp sgt i32 %28, %conv.i.i.us
  br i1 %cmp.i.i.us, label %for.cond.preheader.i.i.us, label %if.end.r_exit.i.i.us

for.cond.preheader.i.i.us:                        ; preds = %pregion_for_entry.entry.i.i.us
  %sext27.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom8.i.i.us = ashr exact i64 %sext27.i.i.us, 32
  %arrayidx9.i.i.us = getelementptr inbounds float, float* %12, i64 %idxprom8.i.i.us
  %.pre.i.i2.us7 = load float, float* %arrayidx9.i.i.us, align 4, !tbaa !12
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %for.cond.preheader.i.i.us
  %indvars.iv.next.i.i5.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %for.cond.preheader.i.i.us ]
  %83 = phi float [ %88, %for.body.i.i.us ], [ %.pre.i.i2.us7, %for.cond.preheader.i.i.us ]
  %84 = mul nuw nsw i64 %indvars.iv.next.i.i5.us, %29
  %85 = add nsw i64 %84, %idxprom8.i.i.us
  %arrayidx.i.i.us = getelementptr inbounds float, float* %8, i64 %85
  %86 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %mul4.i.i.us = fmul float %24, %86
  %arrayidx6.i.i.us = getelementptr inbounds float, float* %16, i64 %indvars.iv.next.i.i5.us
  %87 = load float, float* %arrayidx6.i.i.us, align 4, !tbaa !12
  %88 = tail call float @llvm.fmuladd.f32(float %mul4.i.i.us, float %87, float %83) #2
  store float %88, float* %arrayidx9.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i5.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %29
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !26

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %.lcssa = phi float [ %88, %for.body.i.i.us ]
  %arrayidx11.i.i.us = getelementptr inbounds float, float* %20, i64 %idxprom8.i.i.us
  %89 = load float, float* %arrayidx11.i.i.us, align 4, !tbaa !12
  %add14.i.i.us = fadd float %.lcssa, %89
  store float %add14.i.i.us, float* %arrayidx9.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %for.end.loopexit.i.i.us, %pregion_for_entry.entry.i.i.us
  %90 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %90, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp.i.i.us.1 = icmp sgt i32 %28, %conv.i.i.us.1
  br i1 %cmp.i.i.us.1, label %for.cond.preheader.i.i.us.1, label %if.end.r_exit.i.i.us.1

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i.3, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %106, %if.end.r_exit.i.i.3 ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %28, %conv.i.i
  br i1 %cmp.i.i, label %for.cond.preheader.i.i, label %if.end.r_exit.i.i

for.cond.preheader.i.i:                           ; preds = %pregion_for_entry.entry.i.i
  %sext27.i.i = shl i64 %add1.i.i.i, 32
  %idxprom8.i.i = ashr exact i64 %sext27.i.i, 32
  %arrayidx9.i.i = getelementptr inbounds float, float* %12, i64 %idxprom8.i.i
  %.pre1.i.i16 = load float, float* %arrayidx9.i.i, align 4, !tbaa !12
  %arrayidx11.i.i = getelementptr inbounds float, float* %20, i64 %idxprom8.i.i
  %91 = load float, float* %arrayidx11.i.i, align 4, !tbaa !12
  %add14.i.i = fadd float %91, %.pre1.i.i16
  store float %add14.i.i, float* %arrayidx9.i.i, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %for.cond.preheader.i.i, %pregion_for_entry.entry.i.i
  %92 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %92, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %cmp.i.i.1 = icmp sgt i32 %28, %conv.i.i.1
  br i1 %cmp.i.i.1, label %for.cond.preheader.i.i.1, label %if.end.r_exit.i.i.1

_pocl_kernel_gemver_kernel2.exit.loopexit:        ; preds = %if.end.r_exit.i.i.us.1
  br label %_pocl_kernel_gemver_kernel2.exit

_pocl_kernel_gemver_kernel2.exit.loopexit25:      ; preds = %if.end.r_exit.i.i.3
  br label %_pocl_kernel_gemver_kernel2.exit

_pocl_kernel_gemver_kernel2.exit.loopexit26:      ; preds = %vector.body
  br label %_pocl_kernel_gemver_kernel2.exit

_pocl_kernel_gemver_kernel2.exit:                 ; preds = %_pocl_kernel_gemver_kernel2.exit.loopexit26, %_pocl_kernel_gemver_kernel2.exit.loopexit25, %_pocl_kernel_gemver_kernel2.exit.loopexit
  ret void

for.cond.preheader.i.i.us.1:                      ; preds = %if.end.r_exit.i.i.us
  %sext27.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom8.i.i.us.1 = ashr exact i64 %sext27.i.i.us.1, 32
  %arrayidx9.i.i.us.1 = getelementptr inbounds float, float* %12, i64 %idxprom8.i.i.us.1
  %.pre.i.i2.us7.1 = load float, float* %arrayidx9.i.i.us.1, align 4, !tbaa !12
  br label %for.body.i.i.us.1

for.body.i.i.us.1:                                ; preds = %for.body.i.i.us.1, %for.cond.preheader.i.i.us.1
  %indvars.iv.next.i.i5.us.1 = phi i64 [ %indvars.iv.next.i.i.us.1, %for.body.i.i.us.1 ], [ 0, %for.cond.preheader.i.i.us.1 ]
  %93 = phi float [ %98, %for.body.i.i.us.1 ], [ %.pre.i.i2.us7.1, %for.cond.preheader.i.i.us.1 ]
  %94 = mul nuw nsw i64 %indvars.iv.next.i.i5.us.1, %29
  %95 = add nsw i64 %94, %idxprom8.i.i.us.1
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %8, i64 %95
  %96 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %mul4.i.i.us.1 = fmul float %24, %96
  %arrayidx6.i.i.us.1 = getelementptr inbounds float, float* %16, i64 %indvars.iv.next.i.i5.us.1
  %97 = load float, float* %arrayidx6.i.i.us.1, align 4, !tbaa !12
  %98 = tail call float @llvm.fmuladd.f32(float %mul4.i.i.us.1, float %97, float %93) #2
  store float %98, float* %arrayidx9.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.i.us.1 = add nuw nsw i64 %indvars.iv.next.i.i5.us.1, 1
  %exitcond.not.i.i.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.1, %29
  br i1 %exitcond.not.i.i.us.1, label %for.end.loopexit.i.i.us.1, label %for.body.i.i.us.1, !llvm.loop !26

for.end.loopexit.i.i.us.1:                        ; preds = %for.body.i.i.us.1
  %.lcssa27 = phi float [ %98, %for.body.i.i.us.1 ]
  %arrayidx11.i.i.us.1 = getelementptr inbounds float, float* %20, i64 %idxprom8.i.i.us.1
  %99 = load float, float* %arrayidx11.i.i.us.1, align 4, !tbaa !12
  %add14.i.i.us.1 = fadd float %.lcssa27, %99
  store float %add14.i.i.us.1, float* %arrayidx9.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.1

if.end.r_exit.i.i.us.1:                           ; preds = %for.end.loopexit.i.i.us.1, %if.end.r_exit.i.i.us
  %100 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %100, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_gemver_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !28

for.cond.preheader.i.i.1:                         ; preds = %if.end.r_exit.i.i
  %sext27.i.i.1 = shl i64 %add1.i.i.i.1, 32
  %idxprom8.i.i.1 = ashr exact i64 %sext27.i.i.1, 32
  %arrayidx9.i.i.1 = getelementptr inbounds float, float* %12, i64 %idxprom8.i.i.1
  %.pre1.i.i16.1 = load float, float* %arrayidx9.i.i.1, align 4, !tbaa !12
  %arrayidx11.i.i.1 = getelementptr inbounds float, float* %20, i64 %idxprom8.i.i.1
  %101 = load float, float* %arrayidx11.i.i.1, align 4, !tbaa !12
  %add14.i.i.1 = fadd float %101, %.pre1.i.i16.1
  store float %add14.i.i.1, float* %arrayidx9.i.i.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.1

if.end.r_exit.i.i.1:                              ; preds = %for.cond.preheader.i.i.1, %if.end.r_exit.i.i
  %102 = or i64 %_local_id_x.i.0, 2
  %add1.i.i.i.2 = add nuw nsw i64 %102, %mul.i.i.i
  %conv.i.i.2 = trunc i64 %add1.i.i.i.2 to i32
  %cmp.i.i.2 = icmp sgt i32 %28, %conv.i.i.2
  br i1 %cmp.i.i.2, label %for.cond.preheader.i.i.2, label %if.end.r_exit.i.i.2

for.cond.preheader.i.i.2:                         ; preds = %if.end.r_exit.i.i.1
  %sext27.i.i.2 = shl i64 %add1.i.i.i.2, 32
  %idxprom8.i.i.2 = ashr exact i64 %sext27.i.i.2, 32
  %arrayidx9.i.i.2 = getelementptr inbounds float, float* %12, i64 %idxprom8.i.i.2
  %.pre1.i.i16.2 = load float, float* %arrayidx9.i.i.2, align 4, !tbaa !12
  %arrayidx11.i.i.2 = getelementptr inbounds float, float* %20, i64 %idxprom8.i.i.2
  %103 = load float, float* %arrayidx11.i.i.2, align 4, !tbaa !12
  %add14.i.i.2 = fadd float %103, %.pre1.i.i16.2
  store float %add14.i.i.2, float* %arrayidx9.i.i.2, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.2

if.end.r_exit.i.i.2:                              ; preds = %for.cond.preheader.i.i.2, %if.end.r_exit.i.i.1
  %104 = or i64 %_local_id_x.i.0, 3
  %add1.i.i.i.3 = add nuw nsw i64 %104, %mul.i.i.i
  %conv.i.i.3 = trunc i64 %add1.i.i.i.3 to i32
  %cmp.i.i.3 = icmp sgt i32 %28, %conv.i.i.3
  br i1 %cmp.i.i.3, label %for.cond.preheader.i.i.3, label %if.end.r_exit.i.i.3

for.cond.preheader.i.i.3:                         ; preds = %if.end.r_exit.i.i.2
  %sext27.i.i.3 = shl i64 %add1.i.i.i.3, 32
  %idxprom8.i.i.3 = ashr exact i64 %sext27.i.i.3, 32
  %arrayidx9.i.i.3 = getelementptr inbounds float, float* %12, i64 %idxprom8.i.i.3
  %.pre1.i.i16.3 = load float, float* %arrayidx9.i.i.3, align 4, !tbaa !12
  %arrayidx11.i.i.3 = getelementptr inbounds float, float* %20, i64 %idxprom8.i.i.3
  %105 = load float, float* %arrayidx11.i.i.3, align 4, !tbaa !12
  %add14.i.i.3 = fadd float %105, %.pre1.i.i16.3
  store float %add14.i.i.3, float* %arrayidx9.i.i.3, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.3

if.end.r_exit.i.i.3:                              ; preds = %for.cond.preheader.i.i.3, %if.end.r_exit.i.i.2
  %106 = add nuw nsw i64 %_local_id_x.i.0, 4
  %exitcond9.not.3 = icmp eq i64 %106, 256
  br i1 %exitcond9.not.3, label %_pocl_kernel_gemver_kernel2.exit.loopexit25, label %pregion_for_entry.entry.i.i, !llvm.loop !36
}

; Function Attrs: nounwind
define void @_pocl_kernel_gemver_kernel2_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %17 = getelementptr i8*, i8** %0, i64 4
  %18 = bitcast i8** %17 to float**
  %19 = load float*, float** %18, align 8
  %20 = load float, float* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 5
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp228.i.i = icmp sgt i32 %24, 0
  %25 = zext i32 %24 to i64
  br i1 %cmp228.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %5
  %26 = trunc i64 %2 to i32
  %27 = shl i32 %26, 8
  %28 = sext i32 %27 to i64
  %scevgep = getelementptr float, float* %10, i64 %28
  %29 = add nsw i64 %28, 256
  %scevgep13 = getelementptr float, float* %10, i64 %29
  %scevgep15 = getelementptr float, float* %16, i64 %28
  %scevgep17 = getelementptr float, float* %16, i64 %29
  %bound0 = icmp ult float* %scevgep, %scevgep17
  %bound1 = icmp ult float* %scevgep15, %scevgep13
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.i.preheader, label %vector.ph

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck
  br label %pregion_for_entry.entry.i.i

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert19 = insertelement <8 x i32> undef, i32 %24, i32 0
  %broadcast.splat20 = shufflevector <8 x i32> %broadcast.splatinsert19, <8 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.3, %vector.body ]
  %30 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %31 = trunc <8 x i64> %30 to <8 x i32>
  %32 = icmp sgt <8 x i32> %broadcast.splat20, %31
  %33 = extractelement <8 x i64> %30, i32 0
  %34 = shl i64 %33, 32
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds float, float* %10, i64 %35
  %37 = bitcast float* %36 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %37, i32 4, <8 x i1> %32, <8 x float> undef), !tbaa !12, !alias.scope !37, !noalias !40
  %38 = getelementptr inbounds float, float* %16, i64 %35
  %39 = bitcast float* %38 to <8 x float>*
  %wide.masked.load21 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %39, i32 4, <8 x i1> %32, <8 x float> undef), !tbaa !12, !alias.scope !40
  %40 = fadd <8 x float> %wide.masked.load21, %wide.masked.load
  %41 = bitcast float* %36 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %40, <8 x float>* %41, i32 4, <8 x i1> %32), !tbaa !12, !alias.scope !37, !noalias !40, !llvm.access.group !21
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %42 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %43 = trunc <8 x i64> %42 to <8 x i32>
  %44 = icmp sgt <8 x i32> %broadcast.splat20, %43
  %45 = extractelement <8 x i64> %42, i32 0
  %46 = shl i64 %45, 32
  %47 = ashr exact i64 %46, 32
  %48 = getelementptr inbounds float, float* %10, i64 %47
  %49 = bitcast float* %48 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %49, i32 4, <8 x i1> %44, <8 x float> undef), !tbaa !12, !alias.scope !37, !noalias !40
  %50 = getelementptr inbounds float, float* %16, i64 %47
  %51 = bitcast float* %50 to <8 x float>*
  %wide.masked.load21.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %51, i32 4, <8 x i1> %44, <8 x float> undef), !tbaa !12, !alias.scope !40
  %52 = fadd <8 x float> %wide.masked.load21.1, %wide.masked.load.1
  %53 = bitcast float* %48 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %52, <8 x float>* %53, i32 4, <8 x i1> %44), !tbaa !12, !alias.scope !37, !noalias !40, !llvm.access.group !21
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %54 = add nuw nsw <8 x i64> %vec.ind.next.1, %broadcast.splat
  %55 = trunc <8 x i64> %54 to <8 x i32>
  %56 = icmp sgt <8 x i32> %broadcast.splat20, %55
  %57 = extractelement <8 x i64> %54, i32 0
  %58 = shl i64 %57, 32
  %59 = ashr exact i64 %58, 32
  %60 = getelementptr inbounds float, float* %10, i64 %59
  %61 = bitcast float* %60 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %61, i32 4, <8 x i1> %56, <8 x float> undef), !tbaa !12, !alias.scope !37, !noalias !40
  %62 = getelementptr inbounds float, float* %16, i64 %59
  %63 = bitcast float* %62 to <8 x float>*
  %wide.masked.load21.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %63, i32 4, <8 x i1> %56, <8 x float> undef), !tbaa !12, !alias.scope !40
  %64 = fadd <8 x float> %wide.masked.load21.2, %wide.masked.load.2
  %65 = bitcast float* %60 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %64, <8 x float>* %65, i32 4, <8 x i1> %56), !tbaa !12, !alias.scope !37, !noalias !40, !llvm.access.group !21
  %vec.ind.next.2 = add <8 x i64> %vec.ind, <i64 24, i64 24, i64 24, i64 24, i64 24, i64 24, i64 24, i64 24>
  %66 = add nuw nsw <8 x i64> %vec.ind.next.2, %broadcast.splat
  %67 = trunc <8 x i64> %66 to <8 x i32>
  %68 = icmp sgt <8 x i32> %broadcast.splat20, %67
  %69 = extractelement <8 x i64> %66, i32 0
  %70 = shl i64 %69, 32
  %71 = ashr exact i64 %70, 32
  %72 = getelementptr inbounds float, float* %10, i64 %71
  %73 = bitcast float* %72 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %73, i32 4, <8 x i1> %68, <8 x float> undef), !tbaa !12, !alias.scope !37, !noalias !40
  %74 = getelementptr inbounds float, float* %16, i64 %71
  %75 = bitcast float* %74 to <8 x float>*
  %wide.masked.load21.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %75, i32 4, <8 x i1> %68, <8 x float> undef), !tbaa !12, !alias.scope !40
  %76 = fadd <8 x float> %wide.masked.load21.3, %wide.masked.load.3
  %77 = bitcast float* %72 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %76, <8 x float>* %77, i32 4, <8 x i1> %68), !tbaa !12, !alias.scope !37, !noalias !40, !llvm.access.group !21
  %index.next.3 = add nuw nsw i64 %index, 32
  %vec.ind.next.3 = add <8 x i64> %vec.ind, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %78 = icmp eq i64 %index.next.3, 256
  br i1 %78, label %_pocl_kernel_gemver_kernel2.exit.loopexit26, label %vector.body, !llvm.loop !42

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %96, %if.end.r_exit.i.i.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp sgt i32 %24, %conv.i.i.us
  br i1 %cmp.i.i.us, label %for.cond.preheader.i.i.us, label %if.end.r_exit.i.i.us

for.cond.preheader.i.i.us:                        ; preds = %pregion_for_entry.entry.i.i.us
  %sext27.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom8.i.i.us = ashr exact i64 %sext27.i.i.us, 32
  %arrayidx9.i.i.us = getelementptr inbounds float, float* %10, i64 %idxprom8.i.i.us
  %.pre.i.i2.us7 = load float, float* %arrayidx9.i.i.us, align 4, !tbaa !12
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %for.cond.preheader.i.i.us
  %indvars.iv.next.i.i5.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %for.cond.preheader.i.i.us ]
  %79 = phi float [ %84, %for.body.i.i.us ], [ %.pre.i.i2.us7, %for.cond.preheader.i.i.us ]
  %80 = mul nuw nsw i64 %indvars.iv.next.i.i5.us, %25
  %81 = add nsw i64 %80, %idxprom8.i.i.us
  %arrayidx.i.i.us = getelementptr inbounds float, float* %7, i64 %81
  %82 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %mul4.i.i.us = fmul float %20, %82
  %arrayidx6.i.i.us = getelementptr inbounds float, float* %13, i64 %indvars.iv.next.i.i5.us
  %83 = load float, float* %arrayidx6.i.i.us, align 4, !tbaa !12
  %84 = tail call float @llvm.fmuladd.f32(float %mul4.i.i.us, float %83, float %79) #2
  store float %84, float* %arrayidx9.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i5.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %25
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !26

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %.lcssa = phi float [ %84, %for.body.i.i.us ]
  %arrayidx11.i.i.us = getelementptr inbounds float, float* %16, i64 %idxprom8.i.i.us
  %85 = load float, float* %arrayidx11.i.i.us, align 4, !tbaa !12
  %add14.i.i.us = fadd float %.lcssa, %85
  store float %add14.i.i.us, float* %arrayidx9.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %for.end.loopexit.i.i.us, %pregion_for_entry.entry.i.i.us
  %86 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %86, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp.i.i.us.1 = icmp sgt i32 %24, %conv.i.i.us.1
  br i1 %cmp.i.i.us.1, label %for.cond.preheader.i.i.us.1, label %if.end.r_exit.i.i.us.1

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i.3, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %102, %if.end.r_exit.i.i.3 ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %24, %conv.i.i
  br i1 %cmp.i.i, label %for.cond.preheader.i.i, label %if.end.r_exit.i.i

for.cond.preheader.i.i:                           ; preds = %pregion_for_entry.entry.i.i
  %sext27.i.i = shl i64 %add1.i.i.i, 32
  %idxprom8.i.i = ashr exact i64 %sext27.i.i, 32
  %arrayidx9.i.i = getelementptr inbounds float, float* %10, i64 %idxprom8.i.i
  %.pre1.i.i16 = load float, float* %arrayidx9.i.i, align 4, !tbaa !12
  %arrayidx11.i.i = getelementptr inbounds float, float* %16, i64 %idxprom8.i.i
  %87 = load float, float* %arrayidx11.i.i, align 4, !tbaa !12
  %add14.i.i = fadd float %87, %.pre1.i.i16
  store float %add14.i.i, float* %arrayidx9.i.i, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %for.cond.preheader.i.i, %pregion_for_entry.entry.i.i
  %88 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %88, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %cmp.i.i.1 = icmp sgt i32 %24, %conv.i.i.1
  br i1 %cmp.i.i.1, label %for.cond.preheader.i.i.1, label %if.end.r_exit.i.i.1

_pocl_kernel_gemver_kernel2.exit.loopexit:        ; preds = %if.end.r_exit.i.i.us.1
  br label %_pocl_kernel_gemver_kernel2.exit

_pocl_kernel_gemver_kernel2.exit.loopexit25:      ; preds = %if.end.r_exit.i.i.3
  br label %_pocl_kernel_gemver_kernel2.exit

_pocl_kernel_gemver_kernel2.exit.loopexit26:      ; preds = %vector.body
  br label %_pocl_kernel_gemver_kernel2.exit

_pocl_kernel_gemver_kernel2.exit:                 ; preds = %_pocl_kernel_gemver_kernel2.exit.loopexit26, %_pocl_kernel_gemver_kernel2.exit.loopexit25, %_pocl_kernel_gemver_kernel2.exit.loopexit
  ret void

for.cond.preheader.i.i.us.1:                      ; preds = %if.end.r_exit.i.i.us
  %sext27.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom8.i.i.us.1 = ashr exact i64 %sext27.i.i.us.1, 32
  %arrayidx9.i.i.us.1 = getelementptr inbounds float, float* %10, i64 %idxprom8.i.i.us.1
  %.pre.i.i2.us7.1 = load float, float* %arrayidx9.i.i.us.1, align 4, !tbaa !12
  br label %for.body.i.i.us.1

for.body.i.i.us.1:                                ; preds = %for.body.i.i.us.1, %for.cond.preheader.i.i.us.1
  %indvars.iv.next.i.i5.us.1 = phi i64 [ %indvars.iv.next.i.i.us.1, %for.body.i.i.us.1 ], [ 0, %for.cond.preheader.i.i.us.1 ]
  %89 = phi float [ %94, %for.body.i.i.us.1 ], [ %.pre.i.i2.us7.1, %for.cond.preheader.i.i.us.1 ]
  %90 = mul nuw nsw i64 %indvars.iv.next.i.i5.us.1, %25
  %91 = add nsw i64 %90, %idxprom8.i.i.us.1
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %7, i64 %91
  %92 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %mul4.i.i.us.1 = fmul float %20, %92
  %arrayidx6.i.i.us.1 = getelementptr inbounds float, float* %13, i64 %indvars.iv.next.i.i5.us.1
  %93 = load float, float* %arrayidx6.i.i.us.1, align 4, !tbaa !12
  %94 = tail call float @llvm.fmuladd.f32(float %mul4.i.i.us.1, float %93, float %89) #2
  store float %94, float* %arrayidx9.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.i.us.1 = add nuw nsw i64 %indvars.iv.next.i.i5.us.1, 1
  %exitcond.not.i.i.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.1, %25
  br i1 %exitcond.not.i.i.us.1, label %for.end.loopexit.i.i.us.1, label %for.body.i.i.us.1, !llvm.loop !26

for.end.loopexit.i.i.us.1:                        ; preds = %for.body.i.i.us.1
  %.lcssa27 = phi float [ %94, %for.body.i.i.us.1 ]
  %arrayidx11.i.i.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom8.i.i.us.1
  %95 = load float, float* %arrayidx11.i.i.us.1, align 4, !tbaa !12
  %add14.i.i.us.1 = fadd float %.lcssa27, %95
  store float %add14.i.i.us.1, float* %arrayidx9.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.1

if.end.r_exit.i.i.us.1:                           ; preds = %for.end.loopexit.i.i.us.1, %if.end.r_exit.i.i.us
  %96 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %96, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_gemver_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !28

for.cond.preheader.i.i.1:                         ; preds = %if.end.r_exit.i.i
  %sext27.i.i.1 = shl i64 %add1.i.i.i.1, 32
  %idxprom8.i.i.1 = ashr exact i64 %sext27.i.i.1, 32
  %arrayidx9.i.i.1 = getelementptr inbounds float, float* %10, i64 %idxprom8.i.i.1
  %.pre1.i.i16.1 = load float, float* %arrayidx9.i.i.1, align 4, !tbaa !12
  %arrayidx11.i.i.1 = getelementptr inbounds float, float* %16, i64 %idxprom8.i.i.1
  %97 = load float, float* %arrayidx11.i.i.1, align 4, !tbaa !12
  %add14.i.i.1 = fadd float %97, %.pre1.i.i16.1
  store float %add14.i.i.1, float* %arrayidx9.i.i.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.1

if.end.r_exit.i.i.1:                              ; preds = %for.cond.preheader.i.i.1, %if.end.r_exit.i.i
  %98 = or i64 %_local_id_x.i.0, 2
  %add1.i.i.i.2 = add nuw nsw i64 %98, %mul.i.i.i
  %conv.i.i.2 = trunc i64 %add1.i.i.i.2 to i32
  %cmp.i.i.2 = icmp sgt i32 %24, %conv.i.i.2
  br i1 %cmp.i.i.2, label %for.cond.preheader.i.i.2, label %if.end.r_exit.i.i.2

for.cond.preheader.i.i.2:                         ; preds = %if.end.r_exit.i.i.1
  %sext27.i.i.2 = shl i64 %add1.i.i.i.2, 32
  %idxprom8.i.i.2 = ashr exact i64 %sext27.i.i.2, 32
  %arrayidx9.i.i.2 = getelementptr inbounds float, float* %10, i64 %idxprom8.i.i.2
  %.pre1.i.i16.2 = load float, float* %arrayidx9.i.i.2, align 4, !tbaa !12
  %arrayidx11.i.i.2 = getelementptr inbounds float, float* %16, i64 %idxprom8.i.i.2
  %99 = load float, float* %arrayidx11.i.i.2, align 4, !tbaa !12
  %add14.i.i.2 = fadd float %99, %.pre1.i.i16.2
  store float %add14.i.i.2, float* %arrayidx9.i.i.2, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.2

if.end.r_exit.i.i.2:                              ; preds = %for.cond.preheader.i.i.2, %if.end.r_exit.i.i.1
  %100 = or i64 %_local_id_x.i.0, 3
  %add1.i.i.i.3 = add nuw nsw i64 %100, %mul.i.i.i
  %conv.i.i.3 = trunc i64 %add1.i.i.i.3 to i32
  %cmp.i.i.3 = icmp sgt i32 %24, %conv.i.i.3
  br i1 %cmp.i.i.3, label %for.cond.preheader.i.i.3, label %if.end.r_exit.i.i.3

for.cond.preheader.i.i.3:                         ; preds = %if.end.r_exit.i.i.2
  %sext27.i.i.3 = shl i64 %add1.i.i.i.3, 32
  %idxprom8.i.i.3 = ashr exact i64 %sext27.i.i.3, 32
  %arrayidx9.i.i.3 = getelementptr inbounds float, float* %10, i64 %idxprom8.i.i.3
  %.pre1.i.i16.3 = load float, float* %arrayidx9.i.i.3, align 4, !tbaa !12
  %arrayidx11.i.i.3 = getelementptr inbounds float, float* %16, i64 %idxprom8.i.i.3
  %101 = load float, float* %arrayidx11.i.i.3, align 4, !tbaa !12
  %add14.i.i.3 = fadd float %101, %.pre1.i.i16.3
  store float %add14.i.i.3, float* %arrayidx9.i.i.3, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.3

if.end.r_exit.i.i.3:                              ; preds = %for.cond.preheader.i.i.3, %if.end.r_exit.i.i.2
  %102 = add nuw nsw i64 %_local_id_x.i.0, 4
  %exitcond9.not.3 = icmp eq i64 %102, 256
  br i1 %exitcond9.not.3, label %_pocl_kernel_gemver_kernel2.exit.loopexit25, label %pregion_for_entry.entry.i.i, !llvm.loop !43
}

; Function Attrs: argmemonly nounwind readonly willreturn
declare <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>*, i32 immarg, <8 x i1>, <8 x float>) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.masked.store.v8f32.p0v8f32(<8 x float>, <8 x float>*, i32 immarg, <8 x i1>) #4

attributes #0 = { nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind readonly willreturn }
attributes #4 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!opencl.ocl.version = !{!3}
!llvm.ident = !{!4}
!opencl.spir.version = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 1, i32 2}
!4 = !{!"clang version 11.0.0 (git@github.com:llvm/llvm-project.git 91e89f9a5115b0f83b8f026e1ad0e6d1f885fa9b)"}
!5 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"float*", !"float", !"int"}
!9 = !{!"", !"", !"", !"", !"", !""}
!10 = !{!"A", !"X", !"Y", !"Z", !"beta", !"n"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = !{!22}
!22 = distinct !{}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.parallel_accesses", !22}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24, !25}
!30 = !{!31}
!31 = distinct !{!31, !32}
!32 = distinct !{!32, !"LVerDomain"}
!33 = !{!34}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !24, !25}
!36 = distinct !{!36, !24, !25}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !24, !25}
!43 = distinct !{!43, !24, !25}
