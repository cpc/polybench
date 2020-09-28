; ModuleID = './IB/FGNJAIBJKCCKIIHGJPAOIOOBEOOEPBKMDNCMM/adi_kernel3/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

; Function Attrs: nounwind readnone speculatable willreturn
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_adi_kernel3(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, i32 %3, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %4, i64 %5, i64 %6, i64 %7) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %sub.i = add i32 %3, -2
  %cmp54.i = icmp sgt i32 %3, 2
  %mul.i.i = shl i64 %5, 8
  %9 = sext i32 %sub.i to i64
  %wide.trip.count.i = zext i32 %sub.i to i64
  %min.iters.check.i = icmp ult i32 %sub.i, 8
  %10 = add nsw i64 %wide.trip.count.i, -1
  %11 = trunc i64 %10 to i32
  %12 = icmp ugt i64 %10, 4294967295
  %mul6.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %10, i64 4) #2
  %mul.result7.i = extractvalue { i64, i1 } %mul6.i, 0
  %mul.overflow8.i = extractvalue { i64, i1 } %mul6.i, 1
  %n.vec.i = and i64 %wide.trip.count.i, 4294967288
  %13 = getelementptr inbounds float, float* %2, i64 -7
  %14 = getelementptr inbounds float, float* %0, i64 -7
  %15 = getelementptr inbounds float, float* %1, i64 -7
  %cmp.n.i = icmp eq i64 %n.vec.i, %wide.trip.count.i
  br label %pregion_for_entry.entry.i

pregion_for_entry.entry.i:                        ; preds = %for.end.i, %8
  %_local_id_x.0 = phi i64 [ 0, %8 ], [ %83, %for.end.i ]
  br i1 %cmp54.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %pregion_for_entry.entry.i
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %mul.i = mul nsw i32 %conv.i, %3
  %sub19.i = add i32 %mul.i, %3
  %sub20.i = add i32 %sub19.i, -3
  %16 = sext i32 %mul.i to i64
  %sub7.i = add i32 %mul.i, -1
  br i1 %min.iters.check.i, label %for.body.i.preheader, label %vector.scevcheck.i

vector.scevcheck.i:                               ; preds = %for.body.lr.ph.i
  %17 = add i32 %sub.i, %mul.i
  %18 = sub i32 %17, %11
  %19 = icmp sgt i32 %18, %17
  %20 = sub i32 %sub20.i, %11
  %21 = icmp sgt i32 %20, %sub20.i
  %22 = or i1 %12, %21
  %23 = or i1 %22, %19
  %24 = sext i32 %17 to i64
  %scevgep.i = getelementptr float, float* %2, i64 %24
  %scevgep5.i = ptrtoint float* %scevgep.i to i64
  %25 = icmp ugt i64 %mul.result7.i, %scevgep5.i
  %26 = or i1 %mul.overflow8.i, %25
  %27 = or i1 %23, %26
  %28 = add nsw i64 %16, %9
  %scevgep9.i = getelementptr float, float* %2, i64 %28
  %scevgep910.i = ptrtoint float* %scevgep9.i to i64
  %29 = icmp ugt i64 %mul.result7.i, %scevgep910.i
  %30 = or i1 %29, %27
  %31 = sext i32 %sub20.i to i64
  %scevgep14.i = getelementptr float, float* %2, i64 %31
  %scevgep1415.i = ptrtoint float* %scevgep14.i to i64
  %32 = icmp ugt i64 %mul.result7.i, %scevgep1415.i
  %33 = or i1 %32, %30
  %scevgep19.i = getelementptr float, float* %0, i64 %31
  %scevgep1920.i = ptrtoint float* %scevgep19.i to i64
  %34 = icmp ugt i64 %mul.result7.i, %scevgep1920.i
  %35 = or i1 %mul.overflow8.i, %34
  %36 = or i1 %35, %33
  %scevgep24.i = getelementptr float, float* %1, i64 %31
  %scevgep2425.i = ptrtoint float* %scevgep24.i to i64
  %37 = icmp ugt i64 %mul.result7.i, %scevgep2425.i
  %38 = or i1 %37, %36
  br i1 %38, label %for.body.i.preheader, label %vector.memcheck.i

vector.memcheck.i:                                ; preds = %vector.scevcheck.i
  %39 = add nsw i64 %24, 1
  %40 = sub nsw i64 %39, %wide.trip.count.i
  %scevgep29.i = getelementptr float, float* %2, i64 %40
  %scevgep31.i = getelementptr float, float* %2, i64 %39
  %41 = add nsw i64 %28, 1
  %42 = sub nsw i64 %41, %wide.trip.count.i
  %scevgep33.i = getelementptr float, float* %2, i64 %42
  %scevgep35.i = getelementptr float, float* %2, i64 %41
  %43 = add nsw i64 %31, 1
  %44 = sub nsw i64 %43, %wide.trip.count.i
  %scevgep37.i = getelementptr float, float* %2, i64 %44
  %scevgep39.i = getelementptr float, float* %2, i64 %43
  %scevgep41.i = getelementptr float, float* %0, i64 %44
  %scevgep43.i = getelementptr float, float* %0, i64 %43
  %scevgep45.i = getelementptr float, float* %1, i64 %44
  %scevgep47.i = getelementptr float, float* %1, i64 %43
  %bound0.i = icmp ult float* %scevgep29.i, %scevgep35.i
  %bound1.i = icmp ult float* %scevgep33.i, %scevgep31.i
  %found.conflict.i = and i1 %bound0.i, %bound1.i
  %bound049.i = icmp ult float* %scevgep29.i, %scevgep39.i
  %bound150.i = icmp ult float* %scevgep37.i, %scevgep31.i
  %found.conflict51.i = and i1 %bound150.i, %bound049.i
  %conflict.rdx.i = or i1 %found.conflict.i, %found.conflict51.i
  %bound052.i = icmp ult float* %scevgep29.i, %scevgep43.i
  %bound153.i = icmp ult float* %scevgep41.i, %scevgep31.i
  %found.conflict54.i = and i1 %bound153.i, %bound052.i
  %conflict.rdx55.i = or i1 %found.conflict54.i, %conflict.rdx.i
  %bound056.i = icmp ult float* %scevgep29.i, %scevgep47.i
  %bound157.i = icmp ult float* %scevgep45.i, %scevgep31.i
  %found.conflict58.i = and i1 %bound157.i, %bound056.i
  %conflict.rdx59.i = or i1 %found.conflict58.i, %conflict.rdx55.i
  br i1 %conflict.rdx59.i, label %for.body.i.preheader, label %vector.body.i.preheader

vector.body.i.preheader:                          ; preds = %vector.memcheck.i
  br label %vector.body.i

vector.body.i:                                    ; preds = %vector.body.i, %vector.body.i.preheader
  %index.next.i1 = phi i64 [ %index.next.i, %vector.body.i ], [ 0, %vector.body.i.preheader ]
  %45 = sub nsw i64 %9, %index.next.i1
  %46 = add nsw i64 %45, %16
  %47 = getelementptr inbounds float, float* %13, i64 %46
  %48 = bitcast float* %47 to <8 x float>*
  %wide.load.i = load <8 x float>, <8 x float>* %48, align 4, !tbaa !12, !alias.scope !16
  %reverse.i = shufflevector <8 x float> %wide.load.i, <8 x float> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %49 = trunc i64 %45 to i32
  %50 = add i32 %sub7.i, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %13, i64 %51
  %53 = bitcast float* %52 to <8 x float>*
  %wide.load60.i = load <8 x float>, <8 x float>* %53, align 4, !tbaa !12, !alias.scope !19
  %reverse61.i = shufflevector <8 x float> %wide.load60.i, <8 x float> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %54 = trunc i64 %index.next.i1 to i32
  %55 = sub i32 %3, %54
  %56 = add i32 %55, %mul.i
  %57 = add i32 %56, -3
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %14, i64 %58
  %60 = bitcast float* %59 to <8 x float>*
  %wide.load62.i = load <8 x float>, <8 x float>* %60, align 4, !tbaa !12, !alias.scope !21
  %reverse63.i = shufflevector <8 x float> %wide.load62.i, <8 x float> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %61 = fneg <8 x float> %reverse61.i
  %62 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %61, <8 x float> %reverse63.i, <8 x float> %reverse.i) #2
  %63 = sub i32 %sub20.i, %54
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %15, i64 %64
  %66 = bitcast float* %65 to <8 x float>*
  %wide.load64.i = load <8 x float>, <8 x float>* %66, align 4, !tbaa !12, !alias.scope !23
  %reverse65.i = shufflevector <8 x float> %wide.load64.i, <8 x float> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %67 = fdiv <8 x float> %62, %reverse65.i, !fpmath !25
  %68 = add i32 %56, -2
  %69 = sext i32 %68 to i64
  %reverse66.i = shufflevector <8 x float> %67, <8 x float> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %70 = getelementptr inbounds float, float* %13, i64 %69
  %71 = bitcast float* %70 to <8 x float>*
  store <8 x float> %reverse66.i, <8 x float>* %71, align 4, !tbaa !12, !alias.scope !26, !noalias !28, !llvm.access.group !29
  %index.next.i = add i64 %index.next.i1, 8
  %72 = icmp eq i64 %index.next.i, %n.vec.i
  br i1 %72, label %middle.block.i, label %vector.body.i, !llvm.loop !31

middle.block.i:                                   ; preds = %vector.body.i
  br i1 %cmp.n.i, label %for.end.i, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %middle.block.i, %vector.memcheck.i, %vector.scevcheck.i, %for.body.lr.ph.i
  %indvars.iv.next.i3.ph = phi i64 [ 0, %for.body.lr.ph.i ], [ 0, %vector.scevcheck.i ], [ 0, %vector.memcheck.i ], [ %n.vec.i, %middle.block.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.i.preheader
  %indvars.iv.next.i3 = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ %indvars.iv.next.i3.ph, %for.body.i.preheader ]
  %73 = sub nsw i64 %9, %indvars.iv.next.i3
  %74 = add nsw i64 %73, %16
  %arrayidx.i = getelementptr inbounds float, float* %2, i64 %74
  %75 = load float, float* %arrayidx.i, align 4, !tbaa !12
  %76 = trunc i64 %73 to i32
  %add8.i = add i32 %sub7.i, %76
  %idxprom9.i = sext i32 %add8.i to i64
  %arrayidx10.i = getelementptr inbounds float, float* %2, i64 %idxprom9.i
  %77 = load float, float* %arrayidx10.i, align 4, !tbaa !12
  %78 = trunc i64 %indvars.iv.next.i3 to i32
  %79 = sub i32 %3, %78
  %sub13.i = add i32 %79, %mul.i
  %add14.i = add i32 %sub13.i, -3
  %idxprom15.i = sext i32 %add14.i to i64
  %arrayidx16.i = getelementptr inbounds float, float* %0, i64 %idxprom15.i
  %80 = load float, float* %arrayidx16.i, align 4, !tbaa !12
  %neg.i = fneg float %77
  %81 = tail call float @llvm.fmuladd.f32(float %neg.i, float %80, float %75) #2
  %add21.i = sub i32 %sub20.i, %78
  %idxprom22.i = sext i32 %add21.i to i64
  %arrayidx23.i = getelementptr inbounds float, float* %1, i64 %idxprom22.i
  %82 = load float, float* %arrayidx23.i, align 4, !tbaa !12
  %div.i = fdiv float %81, %82, !fpmath !25
  %add27.i = add i32 %sub13.i, -2
  %idxprom28.i = sext i32 %add27.i to i64
  %arrayidx29.i = getelementptr inbounds float, float* %2, i64 %idxprom28.i
  store float %div.i, float* %arrayidx29.i, align 4, !tbaa !12, !llvm.access.group !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i3, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end.i.loopexit, label %for.body.i, !llvm.loop !34

for.end.i.loopexit:                               ; preds = %for.body.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %middle.block.i, %pregion_for_entry.entry.i
  %83 = add nuw nsw i64 %_local_id_x.0, 1
  %exitcond.not = icmp eq i64 %83, 256
  br i1 %exitcond.not, label %adi_kernel3.exit, label %pregion_for_entry.entry.i, !llvm.loop !35

adi_kernel3.exit:                                 ; preds = %for.end.i
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_adi_kernel3_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %sub.i.i = add i32 %20, -2
  %cmp54.i.i = icmp sgt i32 %20, 2
  %mul.i.i.i = shl i64 %2, 8
  %21 = sext i32 %sub.i.i to i64
  %wide.trip.count.i.i = zext i32 %sub.i.i to i64
  %min.iters.check.i.i = icmp ult i32 %sub.i.i, 8
  %22 = add nsw i64 %wide.trip.count.i.i, -1
  %23 = trunc i64 %22 to i32
  %24 = icmp ugt i64 %22, 4294967295
  %mul6.i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %22, i64 4) #2
  %mul.result7.i.i = extractvalue { i64, i1 } %mul6.i.i, 0
  %mul.overflow8.i.i = extractvalue { i64, i1 } %mul6.i.i, 1
  %n.vec.i.i = and i64 %wide.trip.count.i.i, 4294967288
  %25 = getelementptr inbounds float, float* %16, i64 -7
  %26 = getelementptr inbounds float, float* %8, i64 -7
  %27 = getelementptr inbounds float, float* %12, i64 -7
  %cmp.n.i.i = icmp eq i64 %n.vec.i.i, %wide.trip.count.i.i
  br label %pregion_for_entry.entry.i.i

pregion_for_entry.entry.i.i:                      ; preds = %for.end.i.i, %5
  %_local_id_x.i.0 = phi i64 [ 0, %5 ], [ %95, %for.end.i.i ]
  br i1 %cmp54.i.i, label %for.body.lr.ph.i.i, label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %pregion_for_entry.entry.i.i
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %mul.i.i = mul nsw i32 %20, %conv.i.i
  %sub19.i.i = add i32 %mul.i.i, %20
  %sub20.i.i = add i32 %sub19.i.i, -3
  %28 = sext i32 %mul.i.i to i64
  %sub7.i.i = add i32 %mul.i.i, -1
  br i1 %min.iters.check.i.i, label %for.body.i.i.preheader, label %vector.scevcheck.i.i

vector.scevcheck.i.i:                             ; preds = %for.body.lr.ph.i.i
  %29 = add i32 %sub.i.i, %mul.i.i
  %30 = sub i32 %29, %23
  %31 = icmp sgt i32 %30, %29
  %32 = sub i32 %sub20.i.i, %23
  %33 = icmp sgt i32 %32, %sub20.i.i
  %34 = or i1 %24, %33
  %35 = or i1 %34, %31
  %36 = sext i32 %29 to i64
  %scevgep.i.i = getelementptr float, float* %16, i64 %36
  %scevgep5.i.i = ptrtoint float* %scevgep.i.i to i64
  %37 = icmp ugt i64 %mul.result7.i.i, %scevgep5.i.i
  %38 = or i1 %mul.overflow8.i.i, %37
  %39 = or i1 %35, %38
  %40 = add nsw i64 %28, %21
  %scevgep9.i.i = getelementptr float, float* %16, i64 %40
  %scevgep910.i.i = ptrtoint float* %scevgep9.i.i to i64
  %41 = icmp ugt i64 %mul.result7.i.i, %scevgep910.i.i
  %42 = or i1 %41, %39
  %43 = sext i32 %sub20.i.i to i64
  %scevgep14.i.i = getelementptr float, float* %16, i64 %43
  %scevgep1415.i.i = ptrtoint float* %scevgep14.i.i to i64
  %44 = icmp ugt i64 %mul.result7.i.i, %scevgep1415.i.i
  %45 = or i1 %44, %42
  %scevgep19.i.i = getelementptr float, float* %8, i64 %43
  %scevgep1920.i.i = ptrtoint float* %scevgep19.i.i to i64
  %46 = icmp ugt i64 %mul.result7.i.i, %scevgep1920.i.i
  %47 = or i1 %mul.overflow8.i.i, %46
  %48 = or i1 %47, %45
  %scevgep24.i.i = getelementptr float, float* %12, i64 %43
  %scevgep2425.i.i = ptrtoint float* %scevgep24.i.i to i64
  %49 = icmp ugt i64 %mul.result7.i.i, %scevgep2425.i.i
  %50 = or i1 %49, %48
  br i1 %50, label %for.body.i.i.preheader, label %vector.memcheck.i.i

vector.memcheck.i.i:                              ; preds = %vector.scevcheck.i.i
  %51 = add nsw i64 %36, 1
  %52 = sub nsw i64 %51, %wide.trip.count.i.i
  %scevgep29.i.i = getelementptr float, float* %16, i64 %52
  %scevgep31.i.i = getelementptr float, float* %16, i64 %51
  %53 = add nsw i64 %40, 1
  %54 = sub nsw i64 %53, %wide.trip.count.i.i
  %scevgep33.i.i = getelementptr float, float* %16, i64 %54
  %scevgep35.i.i = getelementptr float, float* %16, i64 %53
  %55 = add nsw i64 %43, 1
  %56 = sub nsw i64 %55, %wide.trip.count.i.i
  %scevgep37.i.i = getelementptr float, float* %16, i64 %56
  %scevgep39.i.i = getelementptr float, float* %16, i64 %55
  %scevgep41.i.i = getelementptr float, float* %8, i64 %56
  %scevgep43.i.i = getelementptr float, float* %8, i64 %55
  %scevgep45.i.i = getelementptr float, float* %12, i64 %56
  %scevgep47.i.i = getelementptr float, float* %12, i64 %55
  %bound0.i.i = icmp ult float* %scevgep29.i.i, %scevgep35.i.i
  %bound1.i.i = icmp ult float* %scevgep33.i.i, %scevgep31.i.i
  %found.conflict.i.i = and i1 %bound0.i.i, %bound1.i.i
  %bound049.i.i = icmp ult float* %scevgep29.i.i, %scevgep39.i.i
  %bound150.i.i = icmp ult float* %scevgep37.i.i, %scevgep31.i.i
  %found.conflict51.i.i = and i1 %bound150.i.i, %bound049.i.i
  %conflict.rdx.i.i = or i1 %found.conflict.i.i, %found.conflict51.i.i
  %bound052.i.i = icmp ult float* %scevgep29.i.i, %scevgep43.i.i
  %bound153.i.i = icmp ult float* %scevgep41.i.i, %scevgep31.i.i
  %found.conflict54.i.i = and i1 %bound153.i.i, %bound052.i.i
  %conflict.rdx55.i.i = or i1 %found.conflict54.i.i, %conflict.rdx.i.i
  %bound056.i.i = icmp ult float* %scevgep29.i.i, %scevgep47.i.i
  %bound157.i.i = icmp ult float* %scevgep45.i.i, %scevgep31.i.i
  %found.conflict58.i.i = and i1 %bound157.i.i, %bound056.i.i
  %conflict.rdx59.i.i = or i1 %found.conflict58.i.i, %conflict.rdx55.i.i
  br i1 %conflict.rdx59.i.i, label %for.body.i.i.preheader, label %vector.body.i.i.preheader

vector.body.i.i.preheader:                        ; preds = %vector.memcheck.i.i
  br label %vector.body.i.i

vector.body.i.i:                                  ; preds = %vector.body.i.i, %vector.body.i.i.preheader
  %index.next.i.i1 = phi i64 [ %index.next.i.i, %vector.body.i.i ], [ 0, %vector.body.i.i.preheader ]
  %57 = sub nsw i64 %21, %index.next.i.i1
  %58 = add nsw i64 %57, %28
  %59 = getelementptr inbounds float, float* %25, i64 %58
  %60 = bitcast float* %59 to <8 x float>*
  %wide.load.i.i = load <8 x float>, <8 x float>* %60, align 4, !tbaa !12, !alias.scope !37
  %reverse.i.i = shufflevector <8 x float> %wide.load.i.i, <8 x float> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %61 = trunc i64 %57 to i32
  %62 = add i32 %sub7.i.i, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %25, i64 %63
  %65 = bitcast float* %64 to <8 x float>*
  %wide.load60.i.i = load <8 x float>, <8 x float>* %65, align 4, !tbaa !12, !alias.scope !40
  %reverse61.i.i = shufflevector <8 x float> %wide.load60.i.i, <8 x float> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %66 = trunc i64 %index.next.i.i1 to i32
  %67 = sub i32 %20, %66
  %68 = add i32 %67, %mul.i.i
  %69 = add i32 %68, -3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %26, i64 %70
  %72 = bitcast float* %71 to <8 x float>*
  %wide.load62.i.i = load <8 x float>, <8 x float>* %72, align 4, !tbaa !12, !alias.scope !42
  %reverse63.i.i = shufflevector <8 x float> %wide.load62.i.i, <8 x float> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %73 = fneg <8 x float> %reverse61.i.i
  %74 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %73, <8 x float> %reverse63.i.i, <8 x float> %reverse.i.i) #2
  %75 = sub i32 %sub20.i.i, %66
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %27, i64 %76
  %78 = bitcast float* %77 to <8 x float>*
  %wide.load64.i.i = load <8 x float>, <8 x float>* %78, align 4, !tbaa !12, !alias.scope !44
  %reverse65.i.i = shufflevector <8 x float> %wide.load64.i.i, <8 x float> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %79 = fdiv <8 x float> %74, %reverse65.i.i, !fpmath !25
  %80 = add i32 %68, -2
  %81 = sext i32 %80 to i64
  %reverse66.i.i = shufflevector <8 x float> %79, <8 x float> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %82 = getelementptr inbounds float, float* %25, i64 %81
  %83 = bitcast float* %82 to <8 x float>*
  store <8 x float> %reverse66.i.i, <8 x float>* %83, align 4, !tbaa !12, !alias.scope !46, !noalias !48, !llvm.access.group !29
  %index.next.i.i = add i64 %index.next.i.i1, 8
  %84 = icmp eq i64 %index.next.i.i, %n.vec.i.i
  br i1 %84, label %middle.block.i.i, label %vector.body.i.i, !llvm.loop !31

middle.block.i.i:                                 ; preds = %vector.body.i.i
  br i1 %cmp.n.i.i, label %for.end.i.i, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %middle.block.i.i, %vector.memcheck.i.i, %vector.scevcheck.i.i, %for.body.lr.ph.i.i
  %indvars.iv.next.i.i3.ph = phi i64 [ 0, %for.body.lr.ph.i.i ], [ 0, %vector.scevcheck.i.i ], [ 0, %vector.memcheck.i.i ], [ %n.vec.i.i, %middle.block.i.i ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.i.i.preheader
  %indvars.iv.next.i.i3 = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.next.i.i3.ph, %for.body.i.i.preheader ]
  %85 = sub nsw i64 %21, %indvars.iv.next.i.i3
  %86 = add nsw i64 %85, %28
  %arrayidx.i.i = getelementptr inbounds float, float* %16, i64 %86
  %87 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %88 = trunc i64 %85 to i32
  %add8.i.i = add i32 %sub7.i.i, %88
  %idxprom9.i.i = sext i32 %add8.i.i to i64
  %arrayidx10.i.i = getelementptr inbounds float, float* %16, i64 %idxprom9.i.i
  %89 = load float, float* %arrayidx10.i.i, align 4, !tbaa !12
  %90 = trunc i64 %indvars.iv.next.i.i3 to i32
  %91 = sub i32 %20, %90
  %sub13.i.i = add i32 %91, %mul.i.i
  %add14.i.i = add i32 %sub13.i.i, -3
  %idxprom15.i.i = sext i32 %add14.i.i to i64
  %arrayidx16.i.i = getelementptr inbounds float, float* %8, i64 %idxprom15.i.i
  %92 = load float, float* %arrayidx16.i.i, align 4, !tbaa !12
  %neg.i.i = fneg float %89
  %93 = tail call float @llvm.fmuladd.f32(float %neg.i.i, float %92, float %87) #2
  %add21.i.i = sub i32 %sub20.i.i, %90
  %idxprom22.i.i = sext i32 %add21.i.i to i64
  %arrayidx23.i.i = getelementptr inbounds float, float* %12, i64 %idxprom22.i.i
  %94 = load float, float* %arrayidx23.i.i, align 4, !tbaa !12
  %div.i.i = fdiv float %93, %94, !fpmath !25
  %add27.i.i = add i32 %sub13.i.i, -2
  %idxprom28.i.i = sext i32 %add27.i.i to i64
  %arrayidx29.i.i = getelementptr inbounds float, float* %16, i64 %idxprom28.i.i
  store float %div.i.i, float* %arrayidx29.i.i, align 4, !tbaa !12, !llvm.access.group !29
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.next.i.i3, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i.loopexit, label %for.body.i.i, !llvm.loop !34

for.end.i.i.loopexit:                             ; preds = %for.body.i.i
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.i.i.loopexit, %middle.block.i.i, %pregion_for_entry.entry.i.i
  %95 = add nuw nsw i64 %_local_id_x.i.0, 1
  %exitcond.not = icmp eq i64 %95, 256
  br i1 %exitcond.not, label %_pocl_kernel_adi_kernel3.exit, label %pregion_for_entry.entry.i.i, !llvm.loop !35

_pocl_kernel_adi_kernel3.exit:                    ; preds = %for.end.i.i
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_adi_kernel3_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %sub.i.i = add i32 %17, -2
  %cmp54.i.i = icmp sgt i32 %17, 2
  %mul.i.i.i = shl i64 %2, 8
  %18 = sext i32 %sub.i.i to i64
  %wide.trip.count.i.i = zext i32 %sub.i.i to i64
  %min.iters.check.i.i = icmp ult i32 %sub.i.i, 8
  %19 = add nsw i64 %wide.trip.count.i.i, -1
  %20 = trunc i64 %19 to i32
  %21 = icmp ugt i64 %19, 4294967295
  %mul6.i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %19, i64 4) #2
  %mul.result7.i.i = extractvalue { i64, i1 } %mul6.i.i, 0
  %mul.overflow8.i.i = extractvalue { i64, i1 } %mul6.i.i, 1
  %n.vec.i.i = and i64 %wide.trip.count.i.i, 4294967288
  %22 = getelementptr inbounds float, float* %13, i64 -7
  %23 = getelementptr inbounds float, float* %7, i64 -7
  %24 = getelementptr inbounds float, float* %10, i64 -7
  %cmp.n.i.i = icmp eq i64 %n.vec.i.i, %wide.trip.count.i.i
  br label %pregion_for_entry.entry.i.i

pregion_for_entry.entry.i.i:                      ; preds = %for.end.i.i, %5
  %_local_id_x.i.0 = phi i64 [ 0, %5 ], [ %92, %for.end.i.i ]
  br i1 %cmp54.i.i, label %for.body.lr.ph.i.i, label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %pregion_for_entry.entry.i.i
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %mul.i.i = mul nsw i32 %17, %conv.i.i
  %sub19.i.i = add i32 %mul.i.i, %17
  %sub20.i.i = add i32 %sub19.i.i, -3
  %25 = sext i32 %mul.i.i to i64
  %sub7.i.i = add i32 %mul.i.i, -1
  br i1 %min.iters.check.i.i, label %for.body.i.i.preheader, label %vector.scevcheck.i.i

vector.scevcheck.i.i:                             ; preds = %for.body.lr.ph.i.i
  %26 = add i32 %sub.i.i, %mul.i.i
  %27 = sub i32 %26, %20
  %28 = icmp sgt i32 %27, %26
  %29 = sub i32 %sub20.i.i, %20
  %30 = icmp sgt i32 %29, %sub20.i.i
  %31 = or i1 %21, %30
  %32 = or i1 %31, %28
  %33 = sext i32 %26 to i64
  %scevgep.i.i = getelementptr float, float* %13, i64 %33
  %scevgep5.i.i = ptrtoint float* %scevgep.i.i to i64
  %34 = icmp ugt i64 %mul.result7.i.i, %scevgep5.i.i
  %35 = or i1 %mul.overflow8.i.i, %34
  %36 = or i1 %32, %35
  %37 = add nsw i64 %25, %18
  %scevgep9.i.i = getelementptr float, float* %13, i64 %37
  %scevgep910.i.i = ptrtoint float* %scevgep9.i.i to i64
  %38 = icmp ugt i64 %mul.result7.i.i, %scevgep910.i.i
  %39 = or i1 %38, %36
  %40 = sext i32 %sub20.i.i to i64
  %scevgep14.i.i = getelementptr float, float* %13, i64 %40
  %scevgep1415.i.i = ptrtoint float* %scevgep14.i.i to i64
  %41 = icmp ugt i64 %mul.result7.i.i, %scevgep1415.i.i
  %42 = or i1 %41, %39
  %scevgep19.i.i = getelementptr float, float* %7, i64 %40
  %scevgep1920.i.i = ptrtoint float* %scevgep19.i.i to i64
  %43 = icmp ugt i64 %mul.result7.i.i, %scevgep1920.i.i
  %44 = or i1 %mul.overflow8.i.i, %43
  %45 = or i1 %44, %42
  %scevgep24.i.i = getelementptr float, float* %10, i64 %40
  %scevgep2425.i.i = ptrtoint float* %scevgep24.i.i to i64
  %46 = icmp ugt i64 %mul.result7.i.i, %scevgep2425.i.i
  %47 = or i1 %46, %45
  br i1 %47, label %for.body.i.i.preheader, label %vector.memcheck.i.i

vector.memcheck.i.i:                              ; preds = %vector.scevcheck.i.i
  %48 = add nsw i64 %33, 1
  %49 = sub nsw i64 %48, %wide.trip.count.i.i
  %scevgep29.i.i = getelementptr float, float* %13, i64 %49
  %scevgep31.i.i = getelementptr float, float* %13, i64 %48
  %50 = add nsw i64 %37, 1
  %51 = sub nsw i64 %50, %wide.trip.count.i.i
  %scevgep33.i.i = getelementptr float, float* %13, i64 %51
  %scevgep35.i.i = getelementptr float, float* %13, i64 %50
  %52 = add nsw i64 %40, 1
  %53 = sub nsw i64 %52, %wide.trip.count.i.i
  %scevgep37.i.i = getelementptr float, float* %13, i64 %53
  %scevgep39.i.i = getelementptr float, float* %13, i64 %52
  %scevgep41.i.i = getelementptr float, float* %7, i64 %53
  %scevgep43.i.i = getelementptr float, float* %7, i64 %52
  %scevgep45.i.i = getelementptr float, float* %10, i64 %53
  %scevgep47.i.i = getelementptr float, float* %10, i64 %52
  %bound0.i.i = icmp ult float* %scevgep29.i.i, %scevgep35.i.i
  %bound1.i.i = icmp ult float* %scevgep33.i.i, %scevgep31.i.i
  %found.conflict.i.i = and i1 %bound0.i.i, %bound1.i.i
  %bound049.i.i = icmp ult float* %scevgep29.i.i, %scevgep39.i.i
  %bound150.i.i = icmp ult float* %scevgep37.i.i, %scevgep31.i.i
  %found.conflict51.i.i = and i1 %bound150.i.i, %bound049.i.i
  %conflict.rdx.i.i = or i1 %found.conflict.i.i, %found.conflict51.i.i
  %bound052.i.i = icmp ult float* %scevgep29.i.i, %scevgep43.i.i
  %bound153.i.i = icmp ult float* %scevgep41.i.i, %scevgep31.i.i
  %found.conflict54.i.i = and i1 %bound153.i.i, %bound052.i.i
  %conflict.rdx55.i.i = or i1 %found.conflict54.i.i, %conflict.rdx.i.i
  %bound056.i.i = icmp ult float* %scevgep29.i.i, %scevgep47.i.i
  %bound157.i.i = icmp ult float* %scevgep45.i.i, %scevgep31.i.i
  %found.conflict58.i.i = and i1 %bound157.i.i, %bound056.i.i
  %conflict.rdx59.i.i = or i1 %found.conflict58.i.i, %conflict.rdx55.i.i
  br i1 %conflict.rdx59.i.i, label %for.body.i.i.preheader, label %vector.body.i.i.preheader

vector.body.i.i.preheader:                        ; preds = %vector.memcheck.i.i
  br label %vector.body.i.i

vector.body.i.i:                                  ; preds = %vector.body.i.i, %vector.body.i.i.preheader
  %index.next.i.i1 = phi i64 [ %index.next.i.i, %vector.body.i.i ], [ 0, %vector.body.i.i.preheader ]
  %54 = sub nsw i64 %18, %index.next.i.i1
  %55 = add nsw i64 %54, %25
  %56 = getelementptr inbounds float, float* %22, i64 %55
  %57 = bitcast float* %56 to <8 x float>*
  %wide.load.i.i = load <8 x float>, <8 x float>* %57, align 4, !tbaa !12, !alias.scope !49
  %reverse.i.i = shufflevector <8 x float> %wide.load.i.i, <8 x float> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %58 = trunc i64 %54 to i32
  %59 = add i32 %sub7.i.i, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %22, i64 %60
  %62 = bitcast float* %61 to <8 x float>*
  %wide.load60.i.i = load <8 x float>, <8 x float>* %62, align 4, !tbaa !12, !alias.scope !52
  %reverse61.i.i = shufflevector <8 x float> %wide.load60.i.i, <8 x float> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %63 = trunc i64 %index.next.i.i1 to i32
  %64 = sub i32 %17, %63
  %65 = add i32 %64, %mul.i.i
  %66 = add i32 %65, -3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %23, i64 %67
  %69 = bitcast float* %68 to <8 x float>*
  %wide.load62.i.i = load <8 x float>, <8 x float>* %69, align 4, !tbaa !12, !alias.scope !54
  %reverse63.i.i = shufflevector <8 x float> %wide.load62.i.i, <8 x float> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %70 = fneg <8 x float> %reverse61.i.i
  %71 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %70, <8 x float> %reverse63.i.i, <8 x float> %reverse.i.i) #2
  %72 = sub i32 %sub20.i.i, %63
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %24, i64 %73
  %75 = bitcast float* %74 to <8 x float>*
  %wide.load64.i.i = load <8 x float>, <8 x float>* %75, align 4, !tbaa !12, !alias.scope !56
  %reverse65.i.i = shufflevector <8 x float> %wide.load64.i.i, <8 x float> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %76 = fdiv <8 x float> %71, %reverse65.i.i, !fpmath !25
  %77 = add i32 %65, -2
  %78 = sext i32 %77 to i64
  %reverse66.i.i = shufflevector <8 x float> %76, <8 x float> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %79 = getelementptr inbounds float, float* %22, i64 %78
  %80 = bitcast float* %79 to <8 x float>*
  store <8 x float> %reverse66.i.i, <8 x float>* %80, align 4, !tbaa !12, !alias.scope !58, !noalias !60, !llvm.access.group !29
  %index.next.i.i = add i64 %index.next.i.i1, 8
  %81 = icmp eq i64 %index.next.i.i, %n.vec.i.i
  br i1 %81, label %middle.block.i.i, label %vector.body.i.i, !llvm.loop !31

middle.block.i.i:                                 ; preds = %vector.body.i.i
  br i1 %cmp.n.i.i, label %for.end.i.i, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %middle.block.i.i, %vector.memcheck.i.i, %vector.scevcheck.i.i, %for.body.lr.ph.i.i
  %indvars.iv.next.i.i3.ph = phi i64 [ 0, %for.body.lr.ph.i.i ], [ 0, %vector.scevcheck.i.i ], [ 0, %vector.memcheck.i.i ], [ %n.vec.i.i, %middle.block.i.i ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.i.i.preheader
  %indvars.iv.next.i.i3 = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.next.i.i3.ph, %for.body.i.i.preheader ]
  %82 = sub nsw i64 %18, %indvars.iv.next.i.i3
  %83 = add nsw i64 %82, %25
  %arrayidx.i.i = getelementptr inbounds float, float* %13, i64 %83
  %84 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %85 = trunc i64 %82 to i32
  %add8.i.i = add i32 %sub7.i.i, %85
  %idxprom9.i.i = sext i32 %add8.i.i to i64
  %arrayidx10.i.i = getelementptr inbounds float, float* %13, i64 %idxprom9.i.i
  %86 = load float, float* %arrayidx10.i.i, align 4, !tbaa !12
  %87 = trunc i64 %indvars.iv.next.i.i3 to i32
  %88 = sub i32 %17, %87
  %sub13.i.i = add i32 %88, %mul.i.i
  %add14.i.i = add i32 %sub13.i.i, -3
  %idxprom15.i.i = sext i32 %add14.i.i to i64
  %arrayidx16.i.i = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i
  %89 = load float, float* %arrayidx16.i.i, align 4, !tbaa !12
  %neg.i.i = fneg float %86
  %90 = tail call float @llvm.fmuladd.f32(float %neg.i.i, float %89, float %84) #2
  %add21.i.i = sub i32 %sub20.i.i, %87
  %idxprom22.i.i = sext i32 %add21.i.i to i64
  %arrayidx23.i.i = getelementptr inbounds float, float* %10, i64 %idxprom22.i.i
  %91 = load float, float* %arrayidx23.i.i, align 4, !tbaa !12
  %div.i.i = fdiv float %90, %91, !fpmath !25
  %add27.i.i = add i32 %sub13.i.i, -2
  %idxprom28.i.i = sext i32 %add27.i.i to i64
  %arrayidx29.i.i = getelementptr inbounds float, float* %13, i64 %idxprom28.i.i
  store float %div.i.i, float* %arrayidx29.i.i, align 4, !tbaa !12, !llvm.access.group !29
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.next.i.i3, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i.loopexit, label %for.body.i.i, !llvm.loop !34

for.end.i.i.loopexit:                             ; preds = %for.body.i.i
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.i.i.loopexit, %middle.block.i.i, %pregion_for_entry.entry.i.i
  %92 = add nuw nsw i64 %_local_id_x.i.0, 1
  %exitcond.not = icmp eq i64 %92, 256
  br i1 %exitcond.not, label %_pocl_kernel_adi_kernel3.exit, label %pregion_for_entry.entry.i.i, !llvm.loop !35

_pocl_kernel_adi_kernel3.exit:                    ; preds = %for.end.i.i
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
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = !{!22}
!22 = distinct !{!22, !18}
!23 = !{!24}
!24 = distinct !{!24, !18}
!25 = !{float 2.500000e+00}
!26 = !{!27}
!27 = distinct !{!27, !18}
!28 = !{!17, !20, !22, !24}
!29 = !{!30}
!30 = distinct !{}
!31 = distinct !{!31, !32, !33}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = distinct !{!34, !32, !33}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.parallel_accesses", !30}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = !{!43}
!43 = distinct !{!43, !39}
!44 = !{!45}
!45 = distinct !{!45, !39}
!46 = !{!47}
!47 = distinct !{!47, !39}
!48 = !{!38, !41, !43, !45}
!49 = !{!50}
!50 = distinct !{!50, !51}
!51 = distinct !{!51, !"LVerDomain"}
!52 = !{!53}
!53 = distinct !{!53, !51}
!54 = !{!55}
!55 = distinct !{!55, !51}
!56 = !{!57}
!57 = distinct !{!57, !51}
!58 = !{!59}
!59 = distinct !{!59, !51}
!60 = !{!50, !53, !55, !57}
