; ModuleID = './AJ/DGEGMLMFGPCKGEIFAGKKHFNDNOEDKKFLBPBAA/gesummv_kernel/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_gesummv_kernel(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture readonly %2, float* nocapture %3, float* nocapture %4, float %5, float %6, i32 %7, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %8, i64 %9, i64 %10, i64 %11) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %9, 8
  %cmp248.i = icmp sgt i32 %7, 0
  %wide.trip.count.i = zext i32 %7 to i64
  br i1 %cmp248.i, label %pregion_for_entry.entry.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.us.preheader:           ; preds = %12
  br label %pregion_for_entry.entry.i.us

vector.memcheck:                                  ; preds = %12
  %13 = trunc i64 %9 to i32
  %14 = shl i32 %13, 8
  %15 = sext i32 %14 to i64
  %scevgep = getelementptr float, float* %3, i64 %15
  %16 = add nsw i64 %15, 256
  %scevgep9 = getelementptr float, float* %3, i64 %16
  %scevgep11 = getelementptr float, float* %4, i64 %15
  %scevgep13 = getelementptr float, float* %4, i64 %16
  %bound0 = icmp ult float* %scevgep, %scevgep13
  %bound1 = icmp ult float* %scevgep11, %scevgep9
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.preheader, label %vector.ph

pregion_for_entry.entry.i.preheader:              ; preds = %vector.memcheck
  br label %pregion_for_entry.entry.i

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <8 x i32> undef, i32 %7, i32 0
  %broadcast.splat16 = shufflevector <8 x i32> %broadcast.splatinsert15, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert18 = insertelement <8 x float> undef, float %6, i32 0
  %broadcast.splat19 = shufflevector <8 x float> %broadcast.splatinsert18, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert20 = insertelement <8 x float> undef, float %5, i32 0
  %broadcast.splat21 = shufflevector <8 x float> %broadcast.splatinsert20, <8 x float> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %vector.body ]
  %17 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %18 = trunc <8 x i64> %17 to <8 x i32>
  %19 = icmp sgt <8 x i32> %broadcast.splat16, %18
  %20 = extractelement <8 x i64> %17, i32 0
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = getelementptr inbounds float, float* %3, i64 %22
  %24 = bitcast float* %23 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %24, i32 4, <8 x i1> %19, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %25 = getelementptr inbounds float, float* %4, i64 %22
  %26 = bitcast float* %25 to <8 x float>*
  %wide.masked.load17 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %26, i32 4, <8 x i1> %19, <8 x float> undef), !tbaa !12, !alias.scope !19
  %27 = fmul <8 x float> %wide.masked.load, %broadcast.splat19
  %28 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat21, <8 x float> %wide.masked.load17, <8 x float> %27)
  %29 = bitcast float* %23 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %28, <8 x float>* %29, i32 4, <8 x i1> %19), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %30 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %31 = trunc <8 x i64> %30 to <8 x i32>
  %32 = icmp sgt <8 x i32> %broadcast.splat16, %31
  %33 = extractelement <8 x i64> %30, i32 0
  %34 = shl i64 %33, 32
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds float, float* %3, i64 %35
  %37 = bitcast float* %36 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %37, i32 4, <8 x i1> %32, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %38 = getelementptr inbounds float, float* %4, i64 %35
  %39 = bitcast float* %38 to <8 x float>*
  %wide.masked.load17.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %39, i32 4, <8 x i1> %32, <8 x float> undef), !tbaa !12, !alias.scope !19
  %40 = fmul <8 x float> %wide.masked.load.1, %broadcast.splat19
  %41 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat21, <8 x float> %wide.masked.load17.1, <8 x float> %40)
  %42 = bitcast float* %36 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %41, <8 x float>* %42, i32 4, <8 x i1> %32), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %43 = icmp eq i64 %index.next.1, 256
  br i1 %43, label %gesummv_kernel.exit.loopexit25, label %vector.body, !llvm.loop !23

pregion_for_entry.entry.i.us:                     ; preds = %if.end.r_exit.i.us, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %56, %if.end.r_exit.i.us ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp.i.us = icmp slt i32 %conv.i.us, %7
  br i1 %cmp.i.us, label %for.body.lr.ph.i.us, label %if.end.r_exit.i.us

for.body.lr.ph.i.us:                              ; preds = %pregion_for_entry.entry.i.us
  %mul.i.us = mul nsw i32 %conv.i.us, %7
  %sext47.i.us = shl i64 %add1.i.i.us, 32
  %idxprom7.i.us = ashr exact i64 %sext47.i.us, 32
  %arrayidx8.i.us = getelementptr inbounds float, float* %4, i64 %idxprom7.i.us
  %arrayidx17.i.us = getelementptr inbounds float, float* %3, i64 %idxprom7.i.us
  %44 = sext i32 %mul.i.us to i64
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %for.body.lr.ph.i.us
  %indvars.iv.next.i2.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %for.body.lr.ph.i.us ]
  %45 = add nsw i64 %indvars.iv.next.i2.us, %44
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %45
  %46 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %arrayidx5.i.us = getelementptr inbounds float, float* %2, i64 %indvars.iv.next.i2.us
  %47 = load float, float* %arrayidx5.i.us, align 4, !tbaa !12
  %48 = load float, float* %arrayidx8.i.us, align 4, !tbaa !12
  %49 = tail call float @llvm.fmuladd.f32(float %46, float %47, float %48) #2
  store float %49, float* %arrayidx8.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx12.i.us = getelementptr inbounds float, float* %1, i64 %45
  %50 = load float, float* %arrayidx12.i.us, align 4, !tbaa !12
  %51 = load float, float* %arrayidx5.i.us, align 4, !tbaa !12
  %52 = load float, float* %arrayidx17.i.us, align 4, !tbaa !12
  %53 = tail call float @llvm.fmuladd.f32(float %50, float %51, float %52) #2
  store float %53, float* %arrayidx17.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i2.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %for.end.loopexit.i.us, label %for.body.i.us, !llvm.loop !26

for.end.loopexit.i.us:                            ; preds = %for.body.i.us
  %.lcssa = phi float [ %53, %for.body.i.us ]
  %54 = load float, float* %arrayidx8.i.us, align 4, !tbaa !12
  %mul23.i.us = fmul float %.lcssa, %6
  %55 = tail call float @llvm.fmuladd.f32(float %5, float %54, float %mul23.i.us) #2
  store float %55, float* %arrayidx17.i.us, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us

if.end.r_exit.i.us:                               ; preds = %for.end.loopexit.i.us, %pregion_for_entry.entry.i.us
  %56 = add nuw nsw i64 %_local_id_x.0.us, 1
  %exitcond.not = icmp eq i64 %56, 256
  br i1 %exitcond.not, label %gesummv_kernel.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !28

pregion_for_entry.entry.i:                        ; preds = %if.end.r_exit.i.1, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ %62, %if.end.r_exit.i.1 ], [ 0, %pregion_for_entry.entry.i.preheader ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %cmp.i = icmp slt i32 %conv.i, %7
  br i1 %cmp.i, label %for.cond.preheader.for.end_crit_edge.i, label %if.end.r_exit.i

for.cond.preheader.for.end_crit_edge.i:           ; preds = %pregion_for_entry.entry.i
  %.pre.i = shl i64 %add1.i.i, 32
  %.pre51.i = ashr exact i64 %.pre.i, 32
  %arrayidx22.phi.trans.insert.i = getelementptr inbounds float, float* %3, i64 %.pre51.i
  %.pre1.i13 = load float, float* %arrayidx22.phi.trans.insert.i, align 4, !tbaa !12
  %arrayidx19.i = getelementptr inbounds float, float* %4, i64 %.pre51.i
  %57 = load float, float* %arrayidx19.i, align 4, !tbaa !12
  %mul23.i = fmul float %.pre1.i13, %6
  %58 = tail call float @llvm.fmuladd.f32(float %5, float %57, float %mul23.i) #2
  store float %58, float* %arrayidx22.phi.trans.insert.i, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i

if.end.r_exit.i:                                  ; preds = %for.cond.preheader.for.end_crit_edge.i, %pregion_for_entry.entry.i
  %59 = or i64 %_local_id_x.0, 1
  %add1.i.i.1 = add nuw nsw i64 %59, %mul.i.i
  %conv.i.1 = trunc i64 %add1.i.i.1 to i32
  %cmp.i.1 = icmp slt i32 %conv.i.1, %7
  br i1 %cmp.i.1, label %for.cond.preheader.for.end_crit_edge.i.1, label %if.end.r_exit.i.1

gesummv_kernel.exit.loopexit:                     ; preds = %if.end.r_exit.i.us
  br label %gesummv_kernel.exit

gesummv_kernel.exit.loopexit24:                   ; preds = %if.end.r_exit.i.1
  br label %gesummv_kernel.exit

gesummv_kernel.exit.loopexit25:                   ; preds = %vector.body
  br label %gesummv_kernel.exit

gesummv_kernel.exit:                              ; preds = %gesummv_kernel.exit.loopexit25, %gesummv_kernel.exit.loopexit24, %gesummv_kernel.exit.loopexit
  ret void

for.cond.preheader.for.end_crit_edge.i.1:         ; preds = %if.end.r_exit.i
  %.pre.i.1 = shl i64 %add1.i.i.1, 32
  %.pre51.i.1 = ashr exact i64 %.pre.i.1, 32
  %arrayidx22.phi.trans.insert.i.1 = getelementptr inbounds float, float* %3, i64 %.pre51.i.1
  %.pre1.i13.1 = load float, float* %arrayidx22.phi.trans.insert.i.1, align 4, !tbaa !12
  %arrayidx19.i.1 = getelementptr inbounds float, float* %4, i64 %.pre51.i.1
  %60 = load float, float* %arrayidx19.i.1, align 4, !tbaa !12
  %mul23.i.1 = fmul float %.pre1.i13.1, %6
  %61 = tail call float @llvm.fmuladd.f32(float %5, float %60, float %mul23.i.1) #2
  store float %61, float* %arrayidx22.phi.trans.insert.i.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.1

if.end.r_exit.i.1:                                ; preds = %for.cond.preheader.for.end_crit_edge.i.1, %if.end.r_exit.i
  %62 = add nuw nsw i64 %_local_id_x.0, 2
  %exitcond5.not.1 = icmp eq i64 %62, 256
  br i1 %exitcond5.not.1, label %gesummv_kernel.exit.loopexit24, label %pregion_for_entry.entry.i, !llvm.loop !29
}

; Function Attrs: nounwind
define void @_pocl_kernel_gesummv_kernel_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %22 = bitcast i8** %21 to float***
  %23 = load float**, float*** %22, align 8
  %24 = load float*, float** %23, align 8
  %25 = getelementptr i8*, i8** %0, i64 5
  %26 = bitcast i8** %25 to float**
  %27 = load float*, float** %26, align 8
  %28 = load float, float* %27, align 4
  %29 = getelementptr i8*, i8** %0, i64 6
  %30 = bitcast i8** %29 to float**
  %31 = load float*, float** %30, align 8
  %32 = load float, float* %31, align 4
  %33 = getelementptr i8*, i8** %0, i64 7
  %34 = bitcast i8** %33 to i32**
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp248.i.i = icmp sgt i32 %36, 0
  %wide.trip.count.i.i = zext i32 %36 to i64
  br i1 %cmp248.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %5
  %37 = trunc i64 %2 to i32
  %38 = shl i32 %37, 8
  %39 = sext i32 %38 to i64
  %scevgep = getelementptr float, float* %20, i64 %39
  %40 = add nsw i64 %39, 256
  %scevgep9 = getelementptr float, float* %20, i64 %40
  %scevgep11 = getelementptr float, float* %24, i64 %39
  %scevgep13 = getelementptr float, float* %24, i64 %40
  %bound0 = icmp ult float* %scevgep, %scevgep13
  %bound1 = icmp ult float* %scevgep11, %scevgep9
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.i.preheader, label %vector.ph

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck
  br label %pregion_for_entry.entry.i.i

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <8 x i32> undef, i32 %36, i32 0
  %broadcast.splat16 = shufflevector <8 x i32> %broadcast.splatinsert15, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert18 = insertelement <8 x float> undef, float %32, i32 0
  %broadcast.splat19 = shufflevector <8 x float> %broadcast.splatinsert18, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert20 = insertelement <8 x float> undef, float %28, i32 0
  %broadcast.splat21 = shufflevector <8 x float> %broadcast.splatinsert20, <8 x float> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %vector.body ]
  %41 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %42 = trunc <8 x i64> %41 to <8 x i32>
  %43 = icmp sgt <8 x i32> %broadcast.splat16, %42
  %44 = extractelement <8 x i64> %41, i32 0
  %45 = shl i64 %44, 32
  %46 = ashr exact i64 %45, 32
  %47 = getelementptr inbounds float, float* %20, i64 %46
  %48 = bitcast float* %47 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %48, i32 4, <8 x i1> %43, <8 x float> undef), !tbaa !12, !alias.scope !30, !noalias !33
  %49 = getelementptr inbounds float, float* %24, i64 %46
  %50 = bitcast float* %49 to <8 x float>*
  %wide.masked.load17 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %50, i32 4, <8 x i1> %43, <8 x float> undef), !tbaa !12, !alias.scope !33
  %51 = fmul <8 x float> %broadcast.splat19, %wide.masked.load
  %52 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat21, <8 x float> %wide.masked.load17, <8 x float> %51)
  %53 = bitcast float* %47 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %52, <8 x float>* %53, i32 4, <8 x i1> %43), !tbaa !12, !alias.scope !30, !noalias !33, !llvm.access.group !21
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %54 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %55 = trunc <8 x i64> %54 to <8 x i32>
  %56 = icmp sgt <8 x i32> %broadcast.splat16, %55
  %57 = extractelement <8 x i64> %54, i32 0
  %58 = shl i64 %57, 32
  %59 = ashr exact i64 %58, 32
  %60 = getelementptr inbounds float, float* %20, i64 %59
  %61 = bitcast float* %60 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %61, i32 4, <8 x i1> %56, <8 x float> undef), !tbaa !12, !alias.scope !30, !noalias !33
  %62 = getelementptr inbounds float, float* %24, i64 %59
  %63 = bitcast float* %62 to <8 x float>*
  %wide.masked.load17.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %63, i32 4, <8 x i1> %56, <8 x float> undef), !tbaa !12, !alias.scope !33
  %64 = fmul <8 x float> %broadcast.splat19, %wide.masked.load.1
  %65 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat21, <8 x float> %wide.masked.load17.1, <8 x float> %64)
  %66 = bitcast float* %60 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %65, <8 x float>* %66, i32 4, <8 x i1> %56), !tbaa !12, !alias.scope !30, !noalias !33, !llvm.access.group !21
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %67 = icmp eq i64 %index.next.1, 256
  br i1 %67, label %_pocl_kernel_gesummv_kernel.exit.loopexit25, label %vector.body, !llvm.loop !35

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %80, %if.end.r_exit.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp sgt i32 %36, %conv.i.i.us
  br i1 %cmp.i.i.us, label %for.body.lr.ph.i.i.us, label %if.end.r_exit.i.i.us

for.body.lr.ph.i.i.us:                            ; preds = %pregion_for_entry.entry.i.i.us
  %mul.i.i.us = mul nsw i32 %36, %conv.i.i.us
  %sext47.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom7.i.i.us = ashr exact i64 %sext47.i.i.us, 32
  %arrayidx8.i.i.us = getelementptr inbounds float, float* %24, i64 %idxprom7.i.i.us
  %arrayidx17.i.i.us = getelementptr inbounds float, float* %20, i64 %idxprom7.i.i.us
  %68 = sext i32 %mul.i.i.us to i64
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %for.body.lr.ph.i.i.us
  %indvars.iv.next.i.i2.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %for.body.lr.ph.i.i.us ]
  %69 = add nsw i64 %indvars.iv.next.i.i2.us, %68
  %arrayidx.i.i.us = getelementptr inbounds float, float* %8, i64 %69
  %70 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %arrayidx5.i.i.us = getelementptr inbounds float, float* %16, i64 %indvars.iv.next.i.i2.us
  %71 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !12
  %72 = load float, float* %arrayidx8.i.i.us, align 4, !tbaa !12
  %73 = tail call float @llvm.fmuladd.f32(float %70, float %71, float %72) #2
  store float %73, float* %arrayidx8.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx12.i.i.us = getelementptr inbounds float, float* %12, i64 %69
  %74 = load float, float* %arrayidx12.i.i.us, align 4, !tbaa !12
  %75 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !12
  %76 = load float, float* %arrayidx17.i.i.us, align 4, !tbaa !12
  %77 = tail call float @llvm.fmuladd.f32(float %74, float %75, float %76) #2
  store float %77, float* %arrayidx17.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i2.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !26

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %.lcssa = phi float [ %77, %for.body.i.i.us ]
  %78 = load float, float* %arrayidx8.i.i.us, align 4, !tbaa !12
  %mul23.i.i.us = fmul float %32, %.lcssa
  %79 = tail call float @llvm.fmuladd.f32(float %28, float %78, float %mul23.i.i.us) #2
  store float %79, float* %arrayidx17.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %for.end.loopexit.i.i.us, %pregion_for_entry.entry.i.i.us
  %80 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %80, 256
  br i1 %exitcond.not, label %_pocl_kernel_gesummv_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !28

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i.1, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %86, %if.end.r_exit.i.i.1 ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %36, %conv.i.i
  br i1 %cmp.i.i, label %for.cond.preheader.for.end_crit_edge.i.i, label %if.end.r_exit.i.i

for.cond.preheader.for.end_crit_edge.i.i:         ; preds = %pregion_for_entry.entry.i.i
  %.pre.i.i = shl i64 %add1.i.i.i, 32
  %.pre51.i.i = ashr exact i64 %.pre.i.i, 32
  %arrayidx22.phi.trans.insert.i.i = getelementptr inbounds float, float* %20, i64 %.pre51.i.i
  %.pre1.i.i13 = load float, float* %arrayidx22.phi.trans.insert.i.i, align 4, !tbaa !12
  %arrayidx19.i.i = getelementptr inbounds float, float* %24, i64 %.pre51.i.i
  %81 = load float, float* %arrayidx19.i.i, align 4, !tbaa !12
  %mul23.i.i = fmul float %32, %.pre1.i.i13
  %82 = tail call float @llvm.fmuladd.f32(float %28, float %81, float %mul23.i.i) #2
  store float %82, float* %arrayidx22.phi.trans.insert.i.i, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %for.cond.preheader.for.end_crit_edge.i.i, %pregion_for_entry.entry.i.i
  %83 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %83, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %cmp.i.i.1 = icmp sgt i32 %36, %conv.i.i.1
  br i1 %cmp.i.i.1, label %for.cond.preheader.for.end_crit_edge.i.i.1, label %if.end.r_exit.i.i.1

_pocl_kernel_gesummv_kernel.exit.loopexit:        ; preds = %if.end.r_exit.i.i.us
  br label %_pocl_kernel_gesummv_kernel.exit

_pocl_kernel_gesummv_kernel.exit.loopexit24:      ; preds = %if.end.r_exit.i.i.1
  br label %_pocl_kernel_gesummv_kernel.exit

_pocl_kernel_gesummv_kernel.exit.loopexit25:      ; preds = %vector.body
  br label %_pocl_kernel_gesummv_kernel.exit

_pocl_kernel_gesummv_kernel.exit:                 ; preds = %_pocl_kernel_gesummv_kernel.exit.loopexit25, %_pocl_kernel_gesummv_kernel.exit.loopexit24, %_pocl_kernel_gesummv_kernel.exit.loopexit
  ret void

for.cond.preheader.for.end_crit_edge.i.i.1:       ; preds = %if.end.r_exit.i.i
  %.pre.i.i.1 = shl i64 %add1.i.i.i.1, 32
  %.pre51.i.i.1 = ashr exact i64 %.pre.i.i.1, 32
  %arrayidx22.phi.trans.insert.i.i.1 = getelementptr inbounds float, float* %20, i64 %.pre51.i.i.1
  %.pre1.i.i13.1 = load float, float* %arrayidx22.phi.trans.insert.i.i.1, align 4, !tbaa !12
  %arrayidx19.i.i.1 = getelementptr inbounds float, float* %24, i64 %.pre51.i.i.1
  %84 = load float, float* %arrayidx19.i.i.1, align 4, !tbaa !12
  %mul23.i.i.1 = fmul float %32, %.pre1.i.i13.1
  %85 = tail call float @llvm.fmuladd.f32(float %28, float %84, float %mul23.i.i.1) #2
  store float %85, float* %arrayidx22.phi.trans.insert.i.i.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.1

if.end.r_exit.i.i.1:                              ; preds = %for.cond.preheader.for.end_crit_edge.i.i.1, %if.end.r_exit.i.i
  %86 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond5.not.1 = icmp eq i64 %86, 256
  br i1 %exitcond5.not.1, label %_pocl_kernel_gesummv_kernel.exit.loopexit24, label %pregion_for_entry.entry.i.i, !llvm.loop !36
}

; Function Attrs: nounwind
define void @_pocl_kernel_gesummv_kernel_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %20 = getelementptr i8*, i8** %0, i64 5
  %21 = bitcast i8** %20 to float**
  %22 = load float*, float** %21, align 8
  %23 = load float, float* %22, align 4
  %24 = getelementptr i8*, i8** %0, i64 6
  %25 = bitcast i8** %24 to float**
  %26 = load float*, float** %25, align 8
  %27 = load float, float* %26, align 4
  %28 = getelementptr i8*, i8** %0, i64 7
  %29 = bitcast i8** %28 to i32**
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp248.i.i = icmp sgt i32 %31, 0
  %wide.trip.count.i.i = zext i32 %31 to i64
  br i1 %cmp248.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %5
  %32 = trunc i64 %2 to i32
  %33 = shl i32 %32, 8
  %34 = sext i32 %33 to i64
  %scevgep = getelementptr float, float* %16, i64 %34
  %35 = add nsw i64 %34, 256
  %scevgep9 = getelementptr float, float* %16, i64 %35
  %scevgep11 = getelementptr float, float* %19, i64 %34
  %scevgep13 = getelementptr float, float* %19, i64 %35
  %bound0 = icmp ult float* %scevgep, %scevgep13
  %bound1 = icmp ult float* %scevgep11, %scevgep9
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.i.preheader, label %vector.ph

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck
  br label %pregion_for_entry.entry.i.i

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <8 x i32> undef, i32 %31, i32 0
  %broadcast.splat16 = shufflevector <8 x i32> %broadcast.splatinsert15, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert18 = insertelement <8 x float> undef, float %27, i32 0
  %broadcast.splat19 = shufflevector <8 x float> %broadcast.splatinsert18, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert20 = insertelement <8 x float> undef, float %23, i32 0
  %broadcast.splat21 = shufflevector <8 x float> %broadcast.splatinsert20, <8 x float> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %vector.body ]
  %36 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %37 = trunc <8 x i64> %36 to <8 x i32>
  %38 = icmp sgt <8 x i32> %broadcast.splat16, %37
  %39 = extractelement <8 x i64> %36, i32 0
  %40 = shl i64 %39, 32
  %41 = ashr exact i64 %40, 32
  %42 = getelementptr inbounds float, float* %16, i64 %41
  %43 = bitcast float* %42 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %43, i32 4, <8 x i1> %38, <8 x float> undef), !tbaa !12, !alias.scope !37, !noalias !40
  %44 = getelementptr inbounds float, float* %19, i64 %41
  %45 = bitcast float* %44 to <8 x float>*
  %wide.masked.load17 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %45, i32 4, <8 x i1> %38, <8 x float> undef), !tbaa !12, !alias.scope !40
  %46 = fmul <8 x float> %broadcast.splat19, %wide.masked.load
  %47 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat21, <8 x float> %wide.masked.load17, <8 x float> %46)
  %48 = bitcast float* %42 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %47, <8 x float>* %48, i32 4, <8 x i1> %38), !tbaa !12, !alias.scope !37, !noalias !40, !llvm.access.group !21
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %49 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %50 = trunc <8 x i64> %49 to <8 x i32>
  %51 = icmp sgt <8 x i32> %broadcast.splat16, %50
  %52 = extractelement <8 x i64> %49, i32 0
  %53 = shl i64 %52, 32
  %54 = ashr exact i64 %53, 32
  %55 = getelementptr inbounds float, float* %16, i64 %54
  %56 = bitcast float* %55 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %56, i32 4, <8 x i1> %51, <8 x float> undef), !tbaa !12, !alias.scope !37, !noalias !40
  %57 = getelementptr inbounds float, float* %19, i64 %54
  %58 = bitcast float* %57 to <8 x float>*
  %wide.masked.load17.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %58, i32 4, <8 x i1> %51, <8 x float> undef), !tbaa !12, !alias.scope !40
  %59 = fmul <8 x float> %broadcast.splat19, %wide.masked.load.1
  %60 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat21, <8 x float> %wide.masked.load17.1, <8 x float> %59)
  %61 = bitcast float* %55 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %60, <8 x float>* %61, i32 4, <8 x i1> %51), !tbaa !12, !alias.scope !37, !noalias !40, !llvm.access.group !21
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %62 = icmp eq i64 %index.next.1, 256
  br i1 %62, label %_pocl_kernel_gesummv_kernel.exit.loopexit25, label %vector.body, !llvm.loop !42

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %75, %if.end.r_exit.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp sgt i32 %31, %conv.i.i.us
  br i1 %cmp.i.i.us, label %for.body.lr.ph.i.i.us, label %if.end.r_exit.i.i.us

for.body.lr.ph.i.i.us:                            ; preds = %pregion_for_entry.entry.i.i.us
  %mul.i.i.us = mul nsw i32 %31, %conv.i.i.us
  %sext47.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom7.i.i.us = ashr exact i64 %sext47.i.i.us, 32
  %arrayidx8.i.i.us = getelementptr inbounds float, float* %19, i64 %idxprom7.i.i.us
  %arrayidx17.i.i.us = getelementptr inbounds float, float* %16, i64 %idxprom7.i.i.us
  %63 = sext i32 %mul.i.i.us to i64
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %for.body.lr.ph.i.i.us
  %indvars.iv.next.i.i2.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %for.body.lr.ph.i.i.us ]
  %64 = add nsw i64 %indvars.iv.next.i.i2.us, %63
  %arrayidx.i.i.us = getelementptr inbounds float, float* %7, i64 %64
  %65 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %arrayidx5.i.i.us = getelementptr inbounds float, float* %13, i64 %indvars.iv.next.i.i2.us
  %66 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !12
  %67 = load float, float* %arrayidx8.i.i.us, align 4, !tbaa !12
  %68 = tail call float @llvm.fmuladd.f32(float %65, float %66, float %67) #2
  store float %68, float* %arrayidx8.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx12.i.i.us = getelementptr inbounds float, float* %10, i64 %64
  %69 = load float, float* %arrayidx12.i.i.us, align 4, !tbaa !12
  %70 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !12
  %71 = load float, float* %arrayidx17.i.i.us, align 4, !tbaa !12
  %72 = tail call float @llvm.fmuladd.f32(float %69, float %70, float %71) #2
  store float %72, float* %arrayidx17.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i2.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !26

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %.lcssa = phi float [ %72, %for.body.i.i.us ]
  %73 = load float, float* %arrayidx8.i.i.us, align 4, !tbaa !12
  %mul23.i.i.us = fmul float %27, %.lcssa
  %74 = tail call float @llvm.fmuladd.f32(float %23, float %73, float %mul23.i.i.us) #2
  store float %74, float* %arrayidx17.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %for.end.loopexit.i.i.us, %pregion_for_entry.entry.i.i.us
  %75 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %75, 256
  br i1 %exitcond.not, label %_pocl_kernel_gesummv_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !28

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i.1, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %81, %if.end.r_exit.i.i.1 ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %31, %conv.i.i
  br i1 %cmp.i.i, label %for.cond.preheader.for.end_crit_edge.i.i, label %if.end.r_exit.i.i

for.cond.preheader.for.end_crit_edge.i.i:         ; preds = %pregion_for_entry.entry.i.i
  %.pre.i.i = shl i64 %add1.i.i.i, 32
  %.pre51.i.i = ashr exact i64 %.pre.i.i, 32
  %arrayidx22.phi.trans.insert.i.i = getelementptr inbounds float, float* %16, i64 %.pre51.i.i
  %.pre1.i.i13 = load float, float* %arrayidx22.phi.trans.insert.i.i, align 4, !tbaa !12
  %arrayidx19.i.i = getelementptr inbounds float, float* %19, i64 %.pre51.i.i
  %76 = load float, float* %arrayidx19.i.i, align 4, !tbaa !12
  %mul23.i.i = fmul float %27, %.pre1.i.i13
  %77 = tail call float @llvm.fmuladd.f32(float %23, float %76, float %mul23.i.i) #2
  store float %77, float* %arrayidx22.phi.trans.insert.i.i, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %for.cond.preheader.for.end_crit_edge.i.i, %pregion_for_entry.entry.i.i
  %78 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %78, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %cmp.i.i.1 = icmp sgt i32 %31, %conv.i.i.1
  br i1 %cmp.i.i.1, label %for.cond.preheader.for.end_crit_edge.i.i.1, label %if.end.r_exit.i.i.1

_pocl_kernel_gesummv_kernel.exit.loopexit:        ; preds = %if.end.r_exit.i.i.us
  br label %_pocl_kernel_gesummv_kernel.exit

_pocl_kernel_gesummv_kernel.exit.loopexit24:      ; preds = %if.end.r_exit.i.i.1
  br label %_pocl_kernel_gesummv_kernel.exit

_pocl_kernel_gesummv_kernel.exit.loopexit25:      ; preds = %vector.body
  br label %_pocl_kernel_gesummv_kernel.exit

_pocl_kernel_gesummv_kernel.exit:                 ; preds = %_pocl_kernel_gesummv_kernel.exit.loopexit25, %_pocl_kernel_gesummv_kernel.exit.loopexit24, %_pocl_kernel_gesummv_kernel.exit.loopexit
  ret void

for.cond.preheader.for.end_crit_edge.i.i.1:       ; preds = %if.end.r_exit.i.i
  %.pre.i.i.1 = shl i64 %add1.i.i.i.1, 32
  %.pre51.i.i.1 = ashr exact i64 %.pre.i.i.1, 32
  %arrayidx22.phi.trans.insert.i.i.1 = getelementptr inbounds float, float* %16, i64 %.pre51.i.i.1
  %.pre1.i.i13.1 = load float, float* %arrayidx22.phi.trans.insert.i.i.1, align 4, !tbaa !12
  %arrayidx19.i.i.1 = getelementptr inbounds float, float* %19, i64 %.pre51.i.i.1
  %79 = load float, float* %arrayidx19.i.i.1, align 4, !tbaa !12
  %mul23.i.i.1 = fmul float %27, %.pre1.i.i13.1
  %80 = tail call float @llvm.fmuladd.f32(float %23, float %79, float %mul23.i.i.1) #2
  store float %80, float* %arrayidx22.phi.trans.insert.i.i.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.1

if.end.r_exit.i.i.1:                              ; preds = %for.cond.preheader.for.end_crit_edge.i.i.1, %if.end.r_exit.i.i
  %81 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond5.not.1 = icmp eq i64 %81, 256
  br i1 %exitcond5.not.1, label %_pocl_kernel_gesummv_kernel.exit.loopexit24, label %pregion_for_entry.entry.i.i, !llvm.loop !43
}

; Function Attrs: argmemonly nounwind readonly willreturn
declare <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>*, i32 immarg, <8 x i1>, <8 x float>) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #0

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
!5 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"DATA_TYPE", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"float*", !"float*", !"float", !"float", !"int"}
!9 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!10 = !{!"a", !"b", !"x", !"y", !"tmp", !"alpha", !"beta", !"n"}
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
