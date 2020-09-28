; ModuleID = './DF/PDBDCFKCFBNDMNFOGMBNGLKBDJFKLEJDAFMEL/gramschmidt_kernel3/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind readnone speculatable willreturn
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_gramschmidt_kernel3(float* nocapture %0, float* nocapture %1, float* nocapture readonly %2, i32 %3, i32 %4, i32 %5, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %6, i64 %7, i64 %8, i64 %9) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %7, 8
  %add.i = add nsw i32 %3, 1
  %mul.i = mul nsw i32 %5, %3
  %cmp70.i = icmp sgt i32 %4, 0
  %11 = sext i32 %5 to i64
  %12 = sext i32 %3 to i64
  %wide.trip.count80.i = zext i32 %4 to i64
  %arrayidx2582.i = getelementptr inbounds float, float* %2, i64 %12
  %exitcond.not85.i = icmp eq i32 %4, 1
  %13 = add nsw i64 %wide.trip.count80.i, -1
  %min.iters.check.i = icmp ugt i64 %13, 15
  %ident.check.not.i = icmp eq i32 %5, 1
  %or.cond.i = and i1 %ident.check.not.i, %min.iters.check.i
  %14 = add nsw i64 %12, 1
  %scevgep6.i = getelementptr float, float* %2, i64 %14
  %15 = add nsw i64 %wide.trip.count80.i, %12
  %scevgep8.i = getelementptr float, float* %2, i64 %15
  %n.vec.i = and i64 %13, -16
  %ind.end.i = or i64 %n.vec.i, 1
  %cmp.n.i = icmp eq i64 %13, %n.vec.i
  br label %pregion_for_entry.entry.i

pregion_for_entry.entry.i:                        ; preds = %for.end37.i, %10
  %_local_id_x.0 = phi i64 [ 0, %10 ], [ %55, %for.end37.i ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %16 = trunc i64 %add1.i.i to i32
  %conv2.i = add i32 %add.i, %16
  %add3.i = add nsw i32 %conv2.i, %mul.i
  %idxprom.i = sext i32 %add3.i to i64
  %arrayidx.i = getelementptr float, float* %1, i64 %idxprom.i
  store float 0.000000e+00, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  br i1 %cmp70.i, label %for.body.preheader.i, label %for.end37.i

for.body.preheader.i:                             ; preds = %pregion_for_entry.entry.i
  %17 = sext i32 %conv2.i to i64
  br label %for.body.i

for.body21.preheader.i:                           ; preds = %for.body.i
  %.lcssa = phi float [ %48, %for.body.i ]
  %18 = load float, float* %arrayidx2582.i, align 4, !tbaa !12
  %arrayidx3483.i = getelementptr inbounds float, float* %0, i64 %17
  %19 = load float, float* %arrayidx3483.i, align 4, !tbaa !12
  %neg84.i = fneg float %18
  %20 = tail call float @llvm.fmuladd.f32(float %neg84.i, float %.lcssa, float %19) #2
  store float %20, float* %arrayidx3483.i, align 4, !tbaa !12, !llvm.access.group !16
  br i1 %exitcond.not85.i, label %for.end37.i, label %for.body21.for.body21_crit_edge.preheader.i, !llvm.loop !18

for.body21.for.body21_crit_edge.preheader.i:      ; preds = %for.body21.preheader.i
  br i1 %or.cond.i, label %vector.memcheck.i, label %for.body21.for.body21_crit_edge.i.preheader

for.body21.for.body21_crit_edge.i.preheader:      ; preds = %middle.block.i, %vector.memcheck.i, %for.body21.for.body21_crit_edge.preheader.i
  %indvars.iv.next.i8.ph = phi i64 [ 1, %for.body21.for.body21_crit_edge.preheader.i ], [ 1, %vector.memcheck.i ], [ %ind.end.i, %middle.block.i ]
  br label %for.body21.for.body21_crit_edge.i

vector.memcheck.i:                                ; preds = %for.body21.for.body21_crit_edge.preheader.i
  %21 = add nsw i64 %17, 1
  %scevgep.i = getelementptr float, float* %0, i64 %21
  %scevgep1.i = bitcast float* %scevgep.i to i8*
  %22 = add nsw i64 %17, %wide.trip.count80.i
  %scevgep2.i = getelementptr float, float* %0, i64 %22
  %scevgep45.i = bitcast float* %arrayidx.i to i8*
  %uglygep.i = getelementptr i8, i8* %scevgep45.i, i64 1
  %bound0.i = icmp ugt i8* %uglygep.i, %scevgep1.i
  %bound1.i = icmp ult float* %arrayidx.i, %scevgep2.i
  %found.conflict.i = and i1 %bound1.i, %bound0.i
  %bound010.i = icmp ult float* %scevgep.i, %scevgep8.i
  %bound111.i = icmp ult float* %scevgep6.i, %scevgep2.i
  %found.conflict12.i = and i1 %bound010.i, %bound111.i
  %conflict.rdx.i = or i1 %found.conflict12.i, %found.conflict.i
  br i1 %conflict.rdx.i, label %for.body21.for.body21_crit_edge.i.preheader, label %vector.ph.i

vector.ph.i:                                      ; preds = %vector.memcheck.i
  %23 = load float, float* %arrayidx.i, align 4, !tbaa !12, !alias.scope !20
  %24 = insertelement <8 x float> undef, float %23, i32 0
  %25 = shufflevector <8 x float> %24, <8 x float> undef, <8 x i32> zeroinitializer
  br label %vector.body.i

vector.body.i:                                    ; preds = %vector.body.i, %vector.ph.i
  %index.next.i6 = phi i64 [ %index.next.i, %vector.body.i ], [ 0, %vector.ph.i ]
  %offset.idx.i = or i64 %index.next.i6, 1
  %26 = mul nsw i64 %offset.idx.i, %11
  %27 = add nsw i64 %26, %12
  %28 = getelementptr inbounds float, float* %2, i64 %27
  %29 = bitcast float* %28 to <8 x float>*
  %wide.load.i = load <8 x float>, <8 x float>* %29, align 4, !tbaa !12, !alias.scope !23
  %30 = getelementptr inbounds float, float* %28, i64 8
  %31 = bitcast float* %30 to <8 x float>*
  %wide.load13.i = load <8 x float>, <8 x float>* %31, align 4, !tbaa !12, !alias.scope !23
  %32 = add nsw i64 %26, %17
  %33 = getelementptr inbounds float, float* %0, i64 %32
  %34 = bitcast float* %33 to <8 x float>*
  %wide.load14.i = load <8 x float>, <8 x float>* %34, align 4, !tbaa !12, !alias.scope !25, !noalias !27
  %35 = getelementptr inbounds float, float* %33, i64 8
  %36 = bitcast float* %35 to <8 x float>*
  %wide.load15.i = load <8 x float>, <8 x float>* %36, align 4, !tbaa !12, !alias.scope !25, !noalias !27
  %37 = fneg <8 x float> %wide.load.i
  %38 = fneg <8 x float> %wide.load13.i
  %39 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %37, <8 x float> %25, <8 x float> %wide.load14.i) #2
  %40 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %38, <8 x float> %25, <8 x float> %wide.load15.i) #2
  store <8 x float> %39, <8 x float>* %34, align 4, !tbaa !12, !alias.scope !25, !noalias !27, !llvm.access.group !16
  store <8 x float> %40, <8 x float>* %36, align 4, !tbaa !12, !alias.scope !25, !noalias !27, !llvm.access.group !16
  %index.next.i = add i64 %index.next.i6, 16
  %41 = icmp eq i64 %index.next.i, %n.vec.i
  br i1 %41, label %middle.block.i, label %vector.body.i, !llvm.loop !28

middle.block.i:                                   ; preds = %vector.body.i
  br i1 %cmp.n.i, label %for.end37.i, label %for.body21.for.body21_crit_edge.i.preheader

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %indvars.iv.next76.i4 = phi i64 [ %indvars.iv.next76.i, %for.body.i ], [ 0, %for.body.preheader.i ]
  %42 = phi float [ %48, %for.body.i ], [ 0.000000e+00, %for.body.preheader.i ]
  %43 = mul nsw i64 %indvars.iv.next76.i4, %11
  %44 = add nsw i64 %43, %12
  %arrayidx8.i = getelementptr inbounds float, float* %2, i64 %44
  %45 = load float, float* %arrayidx8.i, align 4, !tbaa !12
  %46 = add nsw i64 %43, %17
  %arrayidx12.i = getelementptr inbounds float, float* %0, i64 %46
  %47 = load float, float* %arrayidx12.i, align 4, !tbaa !12
  %48 = tail call float @llvm.fmuladd.f32(float %45, float %47, float %42) #2
  store float %48, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv.next76.i4, 1
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next76.i, %wide.trip.count80.i
  br i1 %exitcond81.not.i, label %for.body21.preheader.i, label %for.body.i, !llvm.loop !30

for.body21.for.body21_crit_edge.i:                ; preds = %for.body21.for.body21_crit_edge.i, %for.body21.for.body21_crit_edge.i.preheader
  %indvars.iv.next.i8 = phi i64 [ %indvars.iv.next.i, %for.body21.for.body21_crit_edge.i ], [ %indvars.iv.next.i8.ph, %for.body21.for.body21_crit_edge.i.preheader ]
  %.pre.i = load float, float* %arrayidx.i, align 4, !tbaa !12
  %49 = mul nsw i64 %indvars.iv.next.i8, %11
  %50 = add nsw i64 %49, %12
  %arrayidx25.i = getelementptr inbounds float, float* %2, i64 %50
  %51 = load float, float* %arrayidx25.i, align 4, !tbaa !12
  %52 = add nsw i64 %49, %17
  %arrayidx34.i = getelementptr inbounds float, float* %0, i64 %52
  %53 = load float, float* %arrayidx34.i, align 4, !tbaa !12
  %neg.i = fneg float %51
  %54 = tail call float @llvm.fmuladd.f32(float %neg.i, float %.pre.i, float %53) #2
  store float %54, float* %arrayidx34.i, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i8, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count80.i
  br i1 %exitcond.not.i, label %for.end37.i.loopexit, label %for.body21.for.body21_crit_edge.i, !llvm.loop !31

for.end37.i.loopexit:                             ; preds = %for.body21.for.body21_crit_edge.i
  br label %for.end37.i

for.end37.i:                                      ; preds = %for.end37.i.loopexit, %middle.block.i, %for.body21.preheader.i, %pregion_for_entry.entry.i
  %55 = add nuw nsw i64 %_local_id_x.0, 1
  %exitcond.not = icmp eq i64 %55, 256
  br i1 %exitcond.not, label %gramschmidt_kernel3.exit, label %pregion_for_entry.entry.i, !llvm.loop !32

gramschmidt_kernel3.exit:                         ; preds = %for.end37.i
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_gramschmidt_kernel3_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %mul.i.i.i = shl i64 %2, 8
  %add.i.i = add nsw i32 %20, 1
  %mul.i.i = mul nsw i32 %28, %20
  %cmp70.i.i = icmp sgt i32 %24, 0
  %29 = sext i32 %28 to i64
  %30 = sext i32 %20 to i64
  %wide.trip.count80.i.i = zext i32 %24 to i64
  %arrayidx2582.i.i = getelementptr inbounds float, float* %16, i64 %30
  %exitcond.not85.i.i = icmp eq i32 %24, 1
  %31 = add nsw i64 %wide.trip.count80.i.i, -1
  %min.iters.check.i.i = icmp ugt i64 %31, 15
  %ident.check.not.i.i = icmp eq i32 %28, 1
  %or.cond.i.i = and i1 %min.iters.check.i.i, %ident.check.not.i.i
  %32 = add nsw i64 %30, 1
  %scevgep6.i.i = getelementptr float, float* %16, i64 %32
  %33 = add nsw i64 %wide.trip.count80.i.i, %30
  %scevgep8.i.i = getelementptr float, float* %16, i64 %33
  %n.vec.i.i = and i64 %31, -16
  %ind.end.i.i = or i64 %n.vec.i.i, 1
  %cmp.n.i.i = icmp eq i64 %31, %n.vec.i.i
  br label %pregion_for_entry.entry.i.i

pregion_for_entry.entry.i.i:                      ; preds = %for.end37.i.i, %5
  %_local_id_x.i.0 = phi i64 [ 0, %5 ], [ %73, %for.end37.i.i ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %34 = trunc i64 %add1.i.i.i to i32
  %conv2.i.i = add i32 %add.i.i, %34
  %add3.i.i = add nsw i32 %conv2.i.i, %mul.i.i
  %idxprom.i.i = sext i32 %add3.i.i to i64
  %arrayidx.i.i = getelementptr float, float* %12, i64 %idxprom.i.i
  store float 0.000000e+00, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  br i1 %cmp70.i.i, label %for.body.preheader.i.i, label %for.end37.i.i

for.body.preheader.i.i:                           ; preds = %pregion_for_entry.entry.i.i
  %35 = sext i32 %conv2.i.i to i64
  br label %for.body.i.i

for.body21.preheader.i.i:                         ; preds = %for.body.i.i
  %.lcssa = phi float [ %66, %for.body.i.i ]
  %36 = load float, float* %arrayidx2582.i.i, align 4, !tbaa !12
  %arrayidx3483.i.i = getelementptr inbounds float, float* %8, i64 %35
  %37 = load float, float* %arrayidx3483.i.i, align 4, !tbaa !12
  %neg84.i.i = fneg float %36
  %38 = tail call float @llvm.fmuladd.f32(float %neg84.i.i, float %.lcssa, float %37) #2
  store float %38, float* %arrayidx3483.i.i, align 4, !tbaa !12, !llvm.access.group !16
  br i1 %exitcond.not85.i.i, label %for.end37.i.i, label %for.body21.for.body21_crit_edge.preheader.i.i, !llvm.loop !18

for.body21.for.body21_crit_edge.preheader.i.i:    ; preds = %for.body21.preheader.i.i
  br i1 %or.cond.i.i, label %vector.memcheck.i.i, label %for.body21.for.body21_crit_edge.i.i.preheader

for.body21.for.body21_crit_edge.i.i.preheader:    ; preds = %middle.block.i.i, %vector.memcheck.i.i, %for.body21.for.body21_crit_edge.preheader.i.i
  %indvars.iv.next.i.i8.ph = phi i64 [ 1, %for.body21.for.body21_crit_edge.preheader.i.i ], [ 1, %vector.memcheck.i.i ], [ %ind.end.i.i, %middle.block.i.i ]
  br label %for.body21.for.body21_crit_edge.i.i

vector.memcheck.i.i:                              ; preds = %for.body21.for.body21_crit_edge.preheader.i.i
  %39 = add nsw i64 %35, 1
  %scevgep.i.i = getelementptr float, float* %8, i64 %39
  %scevgep1.i.i = bitcast float* %scevgep.i.i to i8*
  %40 = add nsw i64 %35, %wide.trip.count80.i.i
  %scevgep2.i.i = getelementptr float, float* %8, i64 %40
  %scevgep45.i.i = bitcast float* %arrayidx.i.i to i8*
  %uglygep.i.i = getelementptr i8, i8* %scevgep45.i.i, i64 1
  %bound0.i.i = icmp ugt i8* %uglygep.i.i, %scevgep1.i.i
  %bound1.i.i = icmp ult float* %arrayidx.i.i, %scevgep2.i.i
  %found.conflict.i.i = and i1 %bound1.i.i, %bound0.i.i
  %bound010.i.i = icmp ult float* %scevgep.i.i, %scevgep8.i.i
  %bound111.i.i = icmp ult float* %scevgep6.i.i, %scevgep2.i.i
  %found.conflict12.i.i = and i1 %bound010.i.i, %bound111.i.i
  %conflict.rdx.i.i = or i1 %found.conflict12.i.i, %found.conflict.i.i
  br i1 %conflict.rdx.i.i, label %for.body21.for.body21_crit_edge.i.i.preheader, label %vector.ph.i.i

vector.ph.i.i:                                    ; preds = %vector.memcheck.i.i
  %41 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !alias.scope !34
  %42 = insertelement <8 x float> undef, float %41, i32 0
  %43 = shufflevector <8 x float> %42, <8 x float> undef, <8 x i32> zeroinitializer
  br label %vector.body.i.i

vector.body.i.i:                                  ; preds = %vector.body.i.i, %vector.ph.i.i
  %index.next.i.i6 = phi i64 [ %index.next.i.i, %vector.body.i.i ], [ 0, %vector.ph.i.i ]
  %offset.idx.i.i = or i64 %index.next.i.i6, 1
  %44 = mul nsw i64 %offset.idx.i.i, %29
  %45 = add nsw i64 %44, %30
  %46 = getelementptr inbounds float, float* %16, i64 %45
  %47 = bitcast float* %46 to <8 x float>*
  %wide.load.i.i = load <8 x float>, <8 x float>* %47, align 4, !tbaa !12, !alias.scope !37
  %48 = getelementptr inbounds float, float* %46, i64 8
  %49 = bitcast float* %48 to <8 x float>*
  %wide.load13.i.i = load <8 x float>, <8 x float>* %49, align 4, !tbaa !12, !alias.scope !37
  %50 = add nsw i64 %44, %35
  %51 = getelementptr inbounds float, float* %8, i64 %50
  %52 = bitcast float* %51 to <8 x float>*
  %wide.load14.i.i = load <8 x float>, <8 x float>* %52, align 4, !tbaa !12, !alias.scope !39, !noalias !41
  %53 = getelementptr inbounds float, float* %51, i64 8
  %54 = bitcast float* %53 to <8 x float>*
  %wide.load15.i.i = load <8 x float>, <8 x float>* %54, align 4, !tbaa !12, !alias.scope !39, !noalias !41
  %55 = fneg <8 x float> %wide.load.i.i
  %56 = fneg <8 x float> %wide.load13.i.i
  %57 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %55, <8 x float> %43, <8 x float> %wide.load14.i.i) #2
  %58 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %56, <8 x float> %43, <8 x float> %wide.load15.i.i) #2
  store <8 x float> %57, <8 x float>* %52, align 4, !tbaa !12, !alias.scope !39, !noalias !41, !llvm.access.group !16
  store <8 x float> %58, <8 x float>* %54, align 4, !tbaa !12, !alias.scope !39, !noalias !41, !llvm.access.group !16
  %index.next.i.i = add i64 %index.next.i.i6, 16
  %59 = icmp eq i64 %index.next.i.i, %n.vec.i.i
  br i1 %59, label %middle.block.i.i, label %vector.body.i.i, !llvm.loop !28

middle.block.i.i:                                 ; preds = %vector.body.i.i
  br i1 %cmp.n.i.i, label %for.end37.i.i, label %for.body21.for.body21_crit_edge.i.i.preheader

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.preheader.i.i
  %indvars.iv.next76.i.i4 = phi i64 [ %indvars.iv.next76.i.i, %for.body.i.i ], [ 0, %for.body.preheader.i.i ]
  %60 = phi float [ %66, %for.body.i.i ], [ 0.000000e+00, %for.body.preheader.i.i ]
  %61 = mul nsw i64 %indvars.iv.next76.i.i4, %29
  %62 = add nsw i64 %61, %30
  %arrayidx8.i.i = getelementptr inbounds float, float* %16, i64 %62
  %63 = load float, float* %arrayidx8.i.i, align 4, !tbaa !12
  %64 = add nsw i64 %61, %35
  %arrayidx12.i.i = getelementptr inbounds float, float* %8, i64 %64
  %65 = load float, float* %arrayidx12.i.i, align 4, !tbaa !12
  %66 = tail call float @llvm.fmuladd.f32(float %63, float %65, float %60) #2
  store float %66, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next76.i.i = add nuw nsw i64 %indvars.iv.next76.i.i4, 1
  %exitcond81.not.i.i = icmp eq i64 %indvars.iv.next76.i.i, %wide.trip.count80.i.i
  br i1 %exitcond81.not.i.i, label %for.body21.preheader.i.i, label %for.body.i.i, !llvm.loop !30

for.body21.for.body21_crit_edge.i.i:              ; preds = %for.body21.for.body21_crit_edge.i.i, %for.body21.for.body21_crit_edge.i.i.preheader
  %indvars.iv.next.i.i8 = phi i64 [ %indvars.iv.next.i.i, %for.body21.for.body21_crit_edge.i.i ], [ %indvars.iv.next.i.i8.ph, %for.body21.for.body21_crit_edge.i.i.preheader ]
  %.pre.i.i = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %67 = mul nsw i64 %indvars.iv.next.i.i8, %29
  %68 = add nsw i64 %67, %30
  %arrayidx25.i.i = getelementptr inbounds float, float* %16, i64 %68
  %69 = load float, float* %arrayidx25.i.i, align 4, !tbaa !12
  %70 = add nsw i64 %67, %35
  %arrayidx34.i.i = getelementptr inbounds float, float* %8, i64 %70
  %71 = load float, float* %arrayidx34.i.i, align 4, !tbaa !12
  %neg.i.i = fneg float %69
  %72 = tail call float @llvm.fmuladd.f32(float %neg.i.i, float %.pre.i.i, float %71) #2
  store float %72, float* %arrayidx34.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.next.i.i8, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count80.i.i
  br i1 %exitcond.not.i.i, label %for.end37.i.i.loopexit, label %for.body21.for.body21_crit_edge.i.i, !llvm.loop !31

for.end37.i.i.loopexit:                           ; preds = %for.body21.for.body21_crit_edge.i.i
  br label %for.end37.i.i

for.end37.i.i:                                    ; preds = %for.end37.i.i.loopexit, %middle.block.i.i, %for.body21.preheader.i.i, %pregion_for_entry.entry.i.i
  %73 = add nuw nsw i64 %_local_id_x.i.0, 1
  %exitcond.not = icmp eq i64 %73, 256
  br i1 %exitcond.not, label %_pocl_kernel_gramschmidt_kernel3.exit, label %pregion_for_entry.entry.i.i, !llvm.loop !32

_pocl_kernel_gramschmidt_kernel3.exit:            ; preds = %for.end37.i.i
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_gramschmidt_kernel3_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %mul.i.i.i = shl i64 %2, 8
  %add.i.i = add nsw i32 %17, 1
  %mul.i.i = mul nsw i32 %25, %17
  %cmp70.i.i = icmp sgt i32 %21, 0
  %26 = sext i32 %25 to i64
  %27 = sext i32 %17 to i64
  %wide.trip.count80.i.i = zext i32 %21 to i64
  %arrayidx2582.i.i = getelementptr inbounds float, float* %13, i64 %27
  %exitcond.not85.i.i = icmp eq i32 %21, 1
  %28 = add nsw i64 %wide.trip.count80.i.i, -1
  %min.iters.check.i.i = icmp ugt i64 %28, 15
  %ident.check.not.i.i = icmp eq i32 %25, 1
  %or.cond.i.i = and i1 %min.iters.check.i.i, %ident.check.not.i.i
  %29 = add nsw i64 %27, 1
  %scevgep6.i.i = getelementptr float, float* %13, i64 %29
  %30 = add nsw i64 %wide.trip.count80.i.i, %27
  %scevgep8.i.i = getelementptr float, float* %13, i64 %30
  %n.vec.i.i = and i64 %28, -16
  %ind.end.i.i = or i64 %n.vec.i.i, 1
  %cmp.n.i.i = icmp eq i64 %28, %n.vec.i.i
  br label %pregion_for_entry.entry.i.i

pregion_for_entry.entry.i.i:                      ; preds = %for.end37.i.i, %5
  %_local_id_x.i.0 = phi i64 [ 0, %5 ], [ %70, %for.end37.i.i ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %31 = trunc i64 %add1.i.i.i to i32
  %conv2.i.i = add i32 %add.i.i, %31
  %add3.i.i = add nsw i32 %conv2.i.i, %mul.i.i
  %idxprom.i.i = sext i32 %add3.i.i to i64
  %arrayidx.i.i = getelementptr float, float* %10, i64 %idxprom.i.i
  store float 0.000000e+00, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  br i1 %cmp70.i.i, label %for.body.preheader.i.i, label %for.end37.i.i

for.body.preheader.i.i:                           ; preds = %pregion_for_entry.entry.i.i
  %32 = sext i32 %conv2.i.i to i64
  br label %for.body.i.i

for.body21.preheader.i.i:                         ; preds = %for.body.i.i
  %.lcssa = phi float [ %63, %for.body.i.i ]
  %33 = load float, float* %arrayidx2582.i.i, align 4, !tbaa !12
  %arrayidx3483.i.i = getelementptr inbounds float, float* %7, i64 %32
  %34 = load float, float* %arrayidx3483.i.i, align 4, !tbaa !12
  %neg84.i.i = fneg float %33
  %35 = tail call float @llvm.fmuladd.f32(float %neg84.i.i, float %.lcssa, float %34) #2
  store float %35, float* %arrayidx3483.i.i, align 4, !tbaa !12, !llvm.access.group !16
  br i1 %exitcond.not85.i.i, label %for.end37.i.i, label %for.body21.for.body21_crit_edge.preheader.i.i, !llvm.loop !18

for.body21.for.body21_crit_edge.preheader.i.i:    ; preds = %for.body21.preheader.i.i
  br i1 %or.cond.i.i, label %vector.memcheck.i.i, label %for.body21.for.body21_crit_edge.i.i.preheader

for.body21.for.body21_crit_edge.i.i.preheader:    ; preds = %middle.block.i.i, %vector.memcheck.i.i, %for.body21.for.body21_crit_edge.preheader.i.i
  %indvars.iv.next.i.i8.ph = phi i64 [ 1, %for.body21.for.body21_crit_edge.preheader.i.i ], [ 1, %vector.memcheck.i.i ], [ %ind.end.i.i, %middle.block.i.i ]
  br label %for.body21.for.body21_crit_edge.i.i

vector.memcheck.i.i:                              ; preds = %for.body21.for.body21_crit_edge.preheader.i.i
  %36 = add nsw i64 %32, 1
  %scevgep.i.i = getelementptr float, float* %7, i64 %36
  %scevgep1.i.i = bitcast float* %scevgep.i.i to i8*
  %37 = add nsw i64 %32, %wide.trip.count80.i.i
  %scevgep2.i.i = getelementptr float, float* %7, i64 %37
  %scevgep45.i.i = bitcast float* %arrayidx.i.i to i8*
  %uglygep.i.i = getelementptr i8, i8* %scevgep45.i.i, i64 1
  %bound0.i.i = icmp ugt i8* %uglygep.i.i, %scevgep1.i.i
  %bound1.i.i = icmp ult float* %arrayidx.i.i, %scevgep2.i.i
  %found.conflict.i.i = and i1 %bound1.i.i, %bound0.i.i
  %bound010.i.i = icmp ult float* %scevgep.i.i, %scevgep8.i.i
  %bound111.i.i = icmp ult float* %scevgep6.i.i, %scevgep2.i.i
  %found.conflict12.i.i = and i1 %bound010.i.i, %bound111.i.i
  %conflict.rdx.i.i = or i1 %found.conflict12.i.i, %found.conflict.i.i
  br i1 %conflict.rdx.i.i, label %for.body21.for.body21_crit_edge.i.i.preheader, label %vector.ph.i.i

vector.ph.i.i:                                    ; preds = %vector.memcheck.i.i
  %38 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !alias.scope !42
  %39 = insertelement <8 x float> undef, float %38, i32 0
  %40 = shufflevector <8 x float> %39, <8 x float> undef, <8 x i32> zeroinitializer
  br label %vector.body.i.i

vector.body.i.i:                                  ; preds = %vector.body.i.i, %vector.ph.i.i
  %index.next.i.i6 = phi i64 [ %index.next.i.i, %vector.body.i.i ], [ 0, %vector.ph.i.i ]
  %offset.idx.i.i = or i64 %index.next.i.i6, 1
  %41 = mul nsw i64 %offset.idx.i.i, %26
  %42 = add nsw i64 %41, %27
  %43 = getelementptr inbounds float, float* %13, i64 %42
  %44 = bitcast float* %43 to <8 x float>*
  %wide.load.i.i = load <8 x float>, <8 x float>* %44, align 4, !tbaa !12, !alias.scope !45
  %45 = getelementptr inbounds float, float* %43, i64 8
  %46 = bitcast float* %45 to <8 x float>*
  %wide.load13.i.i = load <8 x float>, <8 x float>* %46, align 4, !tbaa !12, !alias.scope !45
  %47 = add nsw i64 %41, %32
  %48 = getelementptr inbounds float, float* %7, i64 %47
  %49 = bitcast float* %48 to <8 x float>*
  %wide.load14.i.i = load <8 x float>, <8 x float>* %49, align 4, !tbaa !12, !alias.scope !47, !noalias !49
  %50 = getelementptr inbounds float, float* %48, i64 8
  %51 = bitcast float* %50 to <8 x float>*
  %wide.load15.i.i = load <8 x float>, <8 x float>* %51, align 4, !tbaa !12, !alias.scope !47, !noalias !49
  %52 = fneg <8 x float> %wide.load.i.i
  %53 = fneg <8 x float> %wide.load13.i.i
  %54 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %52, <8 x float> %40, <8 x float> %wide.load14.i.i) #2
  %55 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %53, <8 x float> %40, <8 x float> %wide.load15.i.i) #2
  store <8 x float> %54, <8 x float>* %49, align 4, !tbaa !12, !alias.scope !47, !noalias !49, !llvm.access.group !16
  store <8 x float> %55, <8 x float>* %51, align 4, !tbaa !12, !alias.scope !47, !noalias !49, !llvm.access.group !16
  %index.next.i.i = add i64 %index.next.i.i6, 16
  %56 = icmp eq i64 %index.next.i.i, %n.vec.i.i
  br i1 %56, label %middle.block.i.i, label %vector.body.i.i, !llvm.loop !28

middle.block.i.i:                                 ; preds = %vector.body.i.i
  br i1 %cmp.n.i.i, label %for.end37.i.i, label %for.body21.for.body21_crit_edge.i.i.preheader

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.preheader.i.i
  %indvars.iv.next76.i.i4 = phi i64 [ %indvars.iv.next76.i.i, %for.body.i.i ], [ 0, %for.body.preheader.i.i ]
  %57 = phi float [ %63, %for.body.i.i ], [ 0.000000e+00, %for.body.preheader.i.i ]
  %58 = mul nsw i64 %indvars.iv.next76.i.i4, %26
  %59 = add nsw i64 %58, %27
  %arrayidx8.i.i = getelementptr inbounds float, float* %13, i64 %59
  %60 = load float, float* %arrayidx8.i.i, align 4, !tbaa !12
  %61 = add nsw i64 %58, %32
  %arrayidx12.i.i = getelementptr inbounds float, float* %7, i64 %61
  %62 = load float, float* %arrayidx12.i.i, align 4, !tbaa !12
  %63 = tail call float @llvm.fmuladd.f32(float %60, float %62, float %57) #2
  store float %63, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next76.i.i = add nuw nsw i64 %indvars.iv.next76.i.i4, 1
  %exitcond81.not.i.i = icmp eq i64 %indvars.iv.next76.i.i, %wide.trip.count80.i.i
  br i1 %exitcond81.not.i.i, label %for.body21.preheader.i.i, label %for.body.i.i, !llvm.loop !30

for.body21.for.body21_crit_edge.i.i:              ; preds = %for.body21.for.body21_crit_edge.i.i, %for.body21.for.body21_crit_edge.i.i.preheader
  %indvars.iv.next.i.i8 = phi i64 [ %indvars.iv.next.i.i, %for.body21.for.body21_crit_edge.i.i ], [ %indvars.iv.next.i.i8.ph, %for.body21.for.body21_crit_edge.i.i.preheader ]
  %.pre.i.i = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %64 = mul nsw i64 %indvars.iv.next.i.i8, %26
  %65 = add nsw i64 %64, %27
  %arrayidx25.i.i = getelementptr inbounds float, float* %13, i64 %65
  %66 = load float, float* %arrayidx25.i.i, align 4, !tbaa !12
  %67 = add nsw i64 %64, %32
  %arrayidx34.i.i = getelementptr inbounds float, float* %7, i64 %67
  %68 = load float, float* %arrayidx34.i.i, align 4, !tbaa !12
  %neg.i.i = fneg float %66
  %69 = tail call float @llvm.fmuladd.f32(float %neg.i.i, float %.pre.i.i, float %68) #2
  store float %69, float* %arrayidx34.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.next.i.i8, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count80.i.i
  br i1 %exitcond.not.i.i, label %for.end37.i.i.loopexit, label %for.body21.for.body21_crit_edge.i.i, !llvm.loop !31

for.end37.i.i.loopexit:                           ; preds = %for.body21.for.body21_crit_edge.i.i
  br label %for.end37.i.i

for.end37.i.i:                                    ; preds = %for.end37.i.i.loopexit, %middle.block.i.i, %for.body21.preheader.i.i, %pregion_for_entry.entry.i.i
  %70 = add nuw nsw i64 %_local_id_x.i.0, 1
  %exitcond.not = icmp eq i64 %70, 256
  br i1 %exitcond.not, label %_pocl_kernel_gramschmidt_kernel3.exit, label %pregion_for_entry.entry.i.i, !llvm.loop !32

_pocl_kernel_gramschmidt_kernel3.exit:            ; preds = %for.end37.i.i
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
!5 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"int", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !"", !""}
!10 = !{!"a", !"r", !"q", !"k", !"ni", !"nj"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17}
!17 = distinct !{}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = !{!26}
!26 = distinct !{!26, !22}
!27 = !{!21, !24}
!28 = distinct !{!28, !19, !29}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19, !29}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.parallel_accesses", !17}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = !{!40}
!40 = distinct !{!40, !36}
!41 = !{!35, !38}
!42 = !{!43}
!43 = distinct !{!43, !44}
!44 = distinct !{!44, !"LVerDomain"}
!45 = !{!46}
!46 = distinct !{!46, !44}
!47 = !{!48}
!48 = distinct !{!48, !44}
!49 = !{!43, !46}
