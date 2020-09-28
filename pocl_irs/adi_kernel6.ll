; ModuleID = './BF/DFFLECFOLOBPKCKMNEPCKIANKJKKLLHBOGBCO/adi_kernel6/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_adi_kernel6(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, i32 %3, i32 %4, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %5, i64 %6, i64 %7, i64 %8) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
vector.scevcheck:
  %mul.i.i = shl i64 %6, 8
  %sub.i = sub i32 -2, %3
  %sub2.i = add i32 %sub.i, %4
  %mul.i = mul nsw i32 %sub2.i, %4
  %sub3.i = sub i32 -3, %3
  %sub4.i = add i32 %sub3.i, %4
  %mul5.i = mul nsw i32 %sub4.i, %4
  %9 = mul i32 %sub2.i, %4
  %10 = trunc i64 %6 to i32
  %11 = shl i32 %10, 8
  %12 = add i32 %9, %11
  %13 = icmp sgt i32 %12, 2147483392
  %14 = mul i32 %sub4.i, %4
  %15 = add i32 %14, %11
  %16 = icmp sgt i32 %15, 2147483392
  %17 = or i1 %13, %16
  br i1 %17, label %pregion_for_entry.entry.i.preheader, label %vector.memcheck

pregion_for_entry.entry.i.preheader:              ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i

vector.memcheck:                                  ; preds = %vector.scevcheck
  %18 = mul i32 %sub2.i, %4
  %19 = trunc i64 %6 to i32
  %20 = shl i32 %19, 8
  %21 = add i32 %18, %20
  %22 = sext i32 %21 to i64
  %scevgep = getelementptr float, float* %2, i64 %22
  %23 = add nsw i64 %22, 256
  %scevgep5 = getelementptr float, float* %2, i64 %23
  %24 = mul i32 %sub4.i, %4
  %25 = add i32 %24, %20
  %26 = sext i32 %25 to i64
  %scevgep7 = getelementptr float, float* %2, i64 %26
  %27 = add nsw i64 %26, 256
  %scevgep9 = getelementptr float, float* %2, i64 %27
  %scevgep11 = getelementptr float, float* %0, i64 %26
  %scevgep13 = getelementptr float, float* %0, i64 %27
  %scevgep15 = getelementptr float, float* %1, i64 %22
  %scevgep17 = getelementptr float, float* %1, i64 %23
  %bound0 = icmp ult float* %scevgep, %scevgep9
  %bound1 = icmp ult float* %scevgep7, %scevgep5
  %found.conflict = and i1 %bound0, %bound1
  %bound019 = icmp ult float* %scevgep, %scevgep13
  %bound120 = icmp ult float* %scevgep11, %scevgep5
  %found.conflict21 = and i1 %bound019, %bound120
  %conflict.rdx = or i1 %found.conflict, %found.conflict21
  %bound022 = icmp ult float* %scevgep, %scevgep17
  %bound123 = icmp ult float* %scevgep15, %scevgep5
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx25 = or i1 %conflict.rdx, %found.conflict24
  br i1 %conflict.rdx25, label %pregion_for_entry.entry.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert26 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat27 = shufflevector <8 x i32> %broadcast.splatinsert26, <8 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %vector.body ]
  %28 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %29 = trunc <8 x i64> %28 to <8 x i32>
  %30 = icmp sgt <8 x i32> %broadcast.splat27, %29
  %31 = extractelement <8 x i32> %29, i32 0
  %32 = add nsw i32 %mul.i, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %2, i64 %33
  %35 = bitcast float* %34 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %35, i32 4, <8 x i1> %30, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %36 = add nsw i32 %mul5.i, %31
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %2, i64 %37
  %39 = bitcast float* %38 to <8 x float>*
  %wide.masked.load28 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %39, i32 4, <8 x i1> %30, <8 x float> undef), !tbaa !12, !alias.scope !23
  %40 = getelementptr inbounds float, float* %0, i64 %37
  %41 = bitcast float* %40 to <8 x float>*
  %wide.masked.load29 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %41, i32 4, <8 x i1> %30, <8 x float> undef), !tbaa !12, !alias.scope !24
  %42 = fneg <8 x float> %wide.masked.load28
  %43 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %42, <8 x float> %wide.masked.load29, <8 x float> %wide.masked.load)
  %44 = getelementptr inbounds float, float* %1, i64 %33
  %45 = bitcast float* %44 to <8 x float>*
  %wide.masked.load30 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %45, i32 4, <8 x i1> %30, <8 x float> undef), !tbaa !12, !alias.scope !25
  %46 = fdiv <8 x float> %43, %wide.masked.load30, !fpmath !26
  %47 = bitcast float* %34 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %46, <8 x float>* %47, i32 4, <8 x i1> %30), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !27
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %48 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %49 = trunc <8 x i64> %48 to <8 x i32>
  %50 = icmp sgt <8 x i32> %broadcast.splat27, %49
  %51 = extractelement <8 x i32> %49, i32 0
  %52 = add nsw i32 %mul.i, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %2, i64 %53
  %55 = bitcast float* %54 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %55, i32 4, <8 x i1> %50, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %56 = add nsw i32 %mul5.i, %51
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %2, i64 %57
  %59 = bitcast float* %58 to <8 x float>*
  %wide.masked.load28.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %59, i32 4, <8 x i1> %50, <8 x float> undef), !tbaa !12, !alias.scope !23
  %60 = getelementptr inbounds float, float* %0, i64 %57
  %61 = bitcast float* %60 to <8 x float>*
  %wide.masked.load29.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %61, i32 4, <8 x i1> %50, <8 x float> undef), !tbaa !12, !alias.scope !24
  %62 = fneg <8 x float> %wide.masked.load28.1
  %63 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %62, <8 x float> %wide.masked.load29.1, <8 x float> %wide.masked.load.1)
  %64 = getelementptr inbounds float, float* %1, i64 %53
  %65 = bitcast float* %64 to <8 x float>*
  %wide.masked.load30.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %65, i32 4, <8 x i1> %50, <8 x float> undef), !tbaa !12, !alias.scope !25
  %66 = fdiv <8 x float> %63, %wide.masked.load30.1, !fpmath !26
  %67 = bitcast float* %54 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %66, <8 x float>* %67, i32 4, <8 x i1> %50), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !27
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %68 = icmp eq i64 %index.next.1, 256
  br i1 %68, label %adi_kernel6.exit.loopexit32, label %vector.body, !llvm.loop !29

pregion_for_entry.entry.i:                        ; preds = %if.end.r_exit.i.1, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ 0, %pregion_for_entry.entry.i.preheader ], [ %80, %if.end.r_exit.i.1 ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %cmp.i = icmp slt i32 %conv.i, %4
  br i1 %cmp.i, label %if.then.i, label %if.end.r_exit.i

if.then.i:                                        ; preds = %pregion_for_entry.entry.i
  %add.i = add nsw i32 %mul.i, %conv.i
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %2, i64 %idxprom.i
  %69 = load float, float* %arrayidx.i, align 4, !tbaa !12
  %add6.i = add nsw i32 %mul5.i, %conv.i
  %idxprom7.i = sext i32 %add6.i to i64
  %arrayidx8.i = getelementptr inbounds float, float* %2, i64 %idxprom7.i
  %70 = load float, float* %arrayidx8.i, align 4, !tbaa !12
  %arrayidx14.i = getelementptr inbounds float, float* %0, i64 %idxprom7.i
  %71 = load float, float* %arrayidx14.i, align 4, !tbaa !12
  %neg.i = fneg float %70
  %72 = tail call float @llvm.fmuladd.f32(float %neg.i, float %71, float %69) #5
  %arrayidx21.i = getelementptr inbounds float, float* %1, i64 %idxprom.i
  %73 = load float, float* %arrayidx21.i, align 4, !tbaa !12
  %div.i = fdiv float %72, %73, !fpmath !26
  store float %div.i, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i

if.end.r_exit.i:                                  ; preds = %if.then.i, %pregion_for_entry.entry.i
  %74 = or i64 %_local_id_x.0, 1
  %add1.i.i.1 = add nuw nsw i64 %74, %mul.i.i
  %conv.i.1 = trunc i64 %add1.i.i.1 to i32
  %cmp.i.1 = icmp slt i32 %conv.i.1, %4
  br i1 %cmp.i.1, label %if.then.i.1, label %if.end.r_exit.i.1

adi_kernel6.exit.loopexit:                        ; preds = %if.end.r_exit.i.1
  br label %adi_kernel6.exit

adi_kernel6.exit.loopexit32:                      ; preds = %vector.body
  br label %adi_kernel6.exit

adi_kernel6.exit:                                 ; preds = %adi_kernel6.exit.loopexit32, %adi_kernel6.exit.loopexit
  ret void

if.then.i.1:                                      ; preds = %if.end.r_exit.i
  %add.i.1 = add nsw i32 %mul.i, %conv.i.1
  %idxprom.i.1 = sext i32 %add.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.1
  %75 = load float, float* %arrayidx.i.1, align 4, !tbaa !12
  %add6.i.1 = add nsw i32 %mul5.i, %conv.i.1
  %idxprom7.i.1 = sext i32 %add6.i.1 to i64
  %arrayidx8.i.1 = getelementptr inbounds float, float* %2, i64 %idxprom7.i.1
  %76 = load float, float* %arrayidx8.i.1, align 4, !tbaa !12
  %arrayidx14.i.1 = getelementptr inbounds float, float* %0, i64 %idxprom7.i.1
  %77 = load float, float* %arrayidx14.i.1, align 4, !tbaa !12
  %neg.i.1 = fneg float %76
  %78 = tail call float @llvm.fmuladd.f32(float %neg.i.1, float %77, float %75) #5
  %arrayidx21.i.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.1
  %79 = load float, float* %arrayidx21.i.1, align 4, !tbaa !12
  %div.i.1 = fdiv float %78, %79, !fpmath !26
  store float %div.i.1, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.1

if.end.r_exit.i.1:                                ; preds = %if.then.i.1, %if.end.r_exit.i
  %80 = add nuw nsw i64 %_local_id_x.0, 2
  %exitcond.not.1 = icmp eq i64 %80, 256
  br i1 %exitcond.not.1, label %adi_kernel6.exit.loopexit, label %pregion_for_entry.entry.i, !llvm.loop !32
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_adi_kernel6_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
vector.scevcheck:
  %5 = bitcast i8** %0 to float***
  %6 = load float**, float*** %5, align 8
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float***
  %10 = load float**, float*** %9, align 8
  %11 = load float*, float** %10, align 8
  %12 = getelementptr i8*, i8** %0, i64 2
  %13 = bitcast i8** %12 to float***
  %14 = load float**, float*** %13, align 8
  %15 = load float*, float** %14, align 8
  %16 = getelementptr i8*, i8** %0, i64 3
  %17 = bitcast i8** %16 to i32**
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr i8*, i8** %0, i64 4
  %21 = bitcast i8** %20 to i32**
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %mul.i.i.i = shl i64 %2, 8
  %sub.i.i = sub i32 -2, %19
  %sub2.i.i = add i32 %sub.i.i, %23
  %mul.i.i = mul nsw i32 %sub2.i.i, %23
  %sub3.i.i = sub i32 -3, %19
  %sub4.i.i = add i32 %sub3.i.i, %23
  %mul5.i.i = mul nsw i32 %sub4.i.i, %23
  %24 = mul i32 %23, %sub2.i.i
  %25 = trunc i64 %2 to i32
  %26 = shl i32 %25, 8
  %27 = add i32 %24, %26
  %28 = icmp sgt i32 %27, 2147483392
  %29 = mul i32 %23, %sub4.i.i
  %30 = add i32 %29, %26
  %31 = icmp sgt i32 %30, 2147483392
  %32 = or i1 %28, %31
  br i1 %32, label %pregion_for_entry.entry.i.i.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.memcheck:                                  ; preds = %vector.scevcheck
  %33 = mul i32 %23, %sub2.i.i
  %34 = trunc i64 %2 to i32
  %35 = shl i32 %34, 8
  %36 = add i32 %33, %35
  %37 = sext i32 %36 to i64
  %scevgep = getelementptr float, float* %15, i64 %37
  %38 = add nsw i64 %37, 256
  %scevgep5 = getelementptr float, float* %15, i64 %38
  %39 = mul i32 %23, %sub4.i.i
  %40 = add i32 %39, %35
  %41 = sext i32 %40 to i64
  %scevgep7 = getelementptr float, float* %15, i64 %41
  %42 = add nsw i64 %41, 256
  %scevgep9 = getelementptr float, float* %15, i64 %42
  %scevgep11 = getelementptr float, float* %7, i64 %41
  %scevgep13 = getelementptr float, float* %7, i64 %42
  %scevgep15 = getelementptr float, float* %11, i64 %37
  %scevgep17 = getelementptr float, float* %11, i64 %38
  %bound0 = icmp ult float* %scevgep, %scevgep9
  %bound1 = icmp ult float* %scevgep7, %scevgep5
  %found.conflict = and i1 %bound0, %bound1
  %bound019 = icmp ult float* %scevgep, %scevgep13
  %bound120 = icmp ult float* %scevgep11, %scevgep5
  %found.conflict21 = and i1 %bound019, %bound120
  %conflict.rdx = or i1 %found.conflict, %found.conflict21
  %bound022 = icmp ult float* %scevgep, %scevgep17
  %bound123 = icmp ult float* %scevgep15, %scevgep5
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx25 = or i1 %conflict.rdx, %found.conflict24
  br i1 %conflict.rdx25, label %pregion_for_entry.entry.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert26 = insertelement <8 x i32> undef, i32 %23, i32 0
  %broadcast.splat27 = shufflevector <8 x i32> %broadcast.splatinsert26, <8 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %vector.body ]
  %43 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %44 = trunc <8 x i64> %43 to <8 x i32>
  %45 = icmp sgt <8 x i32> %broadcast.splat27, %44
  %46 = extractelement <8 x i32> %44, i32 0
  %47 = add nsw i32 %mul.i.i, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %15, i64 %48
  %50 = bitcast float* %49 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %50, i32 4, <8 x i1> %45, <8 x float> undef), !tbaa !12, !alias.scope !33, !noalias !36
  %51 = add nsw i32 %mul5.i.i, %46
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %15, i64 %52
  %54 = bitcast float* %53 to <8 x float>*
  %wide.masked.load28 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %54, i32 4, <8 x i1> %45, <8 x float> undef), !tbaa !12, !alias.scope !40
  %55 = getelementptr inbounds float, float* %7, i64 %52
  %56 = bitcast float* %55 to <8 x float>*
  %wide.masked.load29 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %56, i32 4, <8 x i1> %45, <8 x float> undef), !tbaa !12, !alias.scope !41
  %57 = fneg <8 x float> %wide.masked.load28
  %58 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %57, <8 x float> %wide.masked.load29, <8 x float> %wide.masked.load)
  %59 = getelementptr inbounds float, float* %11, i64 %48
  %60 = bitcast float* %59 to <8 x float>*
  %wide.masked.load30 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %60, i32 4, <8 x i1> %45, <8 x float> undef), !tbaa !12, !alias.scope !42
  %61 = fdiv <8 x float> %58, %wide.masked.load30, !fpmath !26
  %62 = bitcast float* %49 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %61, <8 x float>* %62, i32 4, <8 x i1> %45), !tbaa !12, !alias.scope !33, !noalias !36, !llvm.access.group !27
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %63 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %64 = trunc <8 x i64> %63 to <8 x i32>
  %65 = icmp sgt <8 x i32> %broadcast.splat27, %64
  %66 = extractelement <8 x i32> %64, i32 0
  %67 = add nsw i32 %mul.i.i, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %15, i64 %68
  %70 = bitcast float* %69 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %70, i32 4, <8 x i1> %65, <8 x float> undef), !tbaa !12, !alias.scope !33, !noalias !36
  %71 = add nsw i32 %mul5.i.i, %66
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %15, i64 %72
  %74 = bitcast float* %73 to <8 x float>*
  %wide.masked.load28.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %74, i32 4, <8 x i1> %65, <8 x float> undef), !tbaa !12, !alias.scope !40
  %75 = getelementptr inbounds float, float* %7, i64 %72
  %76 = bitcast float* %75 to <8 x float>*
  %wide.masked.load29.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %76, i32 4, <8 x i1> %65, <8 x float> undef), !tbaa !12, !alias.scope !41
  %77 = fneg <8 x float> %wide.masked.load28.1
  %78 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %77, <8 x float> %wide.masked.load29.1, <8 x float> %wide.masked.load.1)
  %79 = getelementptr inbounds float, float* %11, i64 %68
  %80 = bitcast float* %79 to <8 x float>*
  %wide.masked.load30.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %80, i32 4, <8 x i1> %65, <8 x float> undef), !tbaa !12, !alias.scope !42
  %81 = fdiv <8 x float> %78, %wide.masked.load30.1, !fpmath !26
  %82 = bitcast float* %69 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %81, <8 x float>* %82, i32 4, <8 x i1> %65), !tbaa !12, !alias.scope !33, !noalias !36, !llvm.access.group !27
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %83 = icmp eq i64 %index.next.1, 256
  br i1 %83, label %_pocl_kernel_adi_kernel6.exit.loopexit32, label %vector.body, !llvm.loop !43

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i.1, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ 0, %pregion_for_entry.entry.i.i.preheader ], [ %95, %if.end.r_exit.i.i.1 ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %23, %conv.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.r_exit.i.i

if.then.i.i:                                      ; preds = %pregion_for_entry.entry.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %15, i64 %idxprom.i.i
  %84 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %add6.i.i = add nsw i32 %mul5.i.i, %conv.i.i
  %idxprom7.i.i = sext i32 %add6.i.i to i64
  %arrayidx8.i.i = getelementptr inbounds float, float* %15, i64 %idxprom7.i.i
  %85 = load float, float* %arrayidx8.i.i, align 4, !tbaa !12
  %arrayidx14.i.i = getelementptr inbounds float, float* %7, i64 %idxprom7.i.i
  %86 = load float, float* %arrayidx14.i.i, align 4, !tbaa !12
  %neg.i.i = fneg float %85
  %87 = tail call float @llvm.fmuladd.f32(float %neg.i.i, float %86, float %84) #5
  %arrayidx21.i.i = getelementptr inbounds float, float* %11, i64 %idxprom.i.i
  %88 = load float, float* %arrayidx21.i.i, align 4, !tbaa !12
  %div.i.i = fdiv float %87, %88, !fpmath !26
  store float %div.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %if.then.i.i, %pregion_for_entry.entry.i.i
  %89 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %89, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %cmp.i.i.1 = icmp sgt i32 %23, %conv.i.i.1
  br i1 %cmp.i.i.1, label %if.then.i.i.1, label %if.end.r_exit.i.i.1

_pocl_kernel_adi_kernel6.exit.loopexit:           ; preds = %if.end.r_exit.i.i.1
  br label %_pocl_kernel_adi_kernel6.exit

_pocl_kernel_adi_kernel6.exit.loopexit32:         ; preds = %vector.body
  br label %_pocl_kernel_adi_kernel6.exit

_pocl_kernel_adi_kernel6.exit:                    ; preds = %_pocl_kernel_adi_kernel6.exit.loopexit32, %_pocl_kernel_adi_kernel6.exit.loopexit
  ret void

if.then.i.i.1:                                    ; preds = %if.end.r_exit.i.i
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %15, i64 %idxprom.i.i.1
  %90 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12
  %add6.i.i.1 = add nsw i32 %mul5.i.i, %conv.i.i.1
  %idxprom7.i.i.1 = sext i32 %add6.i.i.1 to i64
  %arrayidx8.i.i.1 = getelementptr inbounds float, float* %15, i64 %idxprom7.i.i.1
  %91 = load float, float* %arrayidx8.i.i.1, align 4, !tbaa !12
  %arrayidx14.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom7.i.i.1
  %92 = load float, float* %arrayidx14.i.i.1, align 4, !tbaa !12
  %neg.i.i.1 = fneg float %91
  %93 = tail call float @llvm.fmuladd.f32(float %neg.i.i.1, float %92, float %90) #5
  %arrayidx21.i.i.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.1
  %94 = load float, float* %arrayidx21.i.i.1, align 4, !tbaa !12
  %div.i.i.1 = fdiv float %93, %94, !fpmath !26
  store float %div.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.1

if.end.r_exit.i.i.1:                              ; preds = %if.then.i.i.1, %if.end.r_exit.i.i
  %95 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %95, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_adi_kernel6.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !44
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_adi_kernel6_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
vector.scevcheck:
  %5 = bitcast i8** %0 to float**
  %6 = load float*, float** %5, align 8
  %7 = getelementptr i8*, i8** %0, i64 1
  %8 = bitcast i8** %7 to float**
  %9 = load float*, float** %8, align 8
  %10 = getelementptr i8*, i8** %0, i64 2
  %11 = bitcast i8** %10 to float**
  %12 = load float*, float** %11, align 8
  %13 = getelementptr i8*, i8** %0, i64 3
  %14 = bitcast i8** %13 to i32**
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr i8*, i8** %0, i64 4
  %18 = bitcast i8** %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %mul.i.i.i = shl i64 %2, 8
  %sub.i.i = sub i32 -2, %16
  %sub2.i.i = add i32 %sub.i.i, %20
  %mul.i.i = mul nsw i32 %sub2.i.i, %20
  %sub3.i.i = sub i32 -3, %16
  %sub4.i.i = add i32 %sub3.i.i, %20
  %mul5.i.i = mul nsw i32 %sub4.i.i, %20
  %21 = mul i32 %20, %sub2.i.i
  %22 = trunc i64 %2 to i32
  %23 = shl i32 %22, 8
  %24 = add i32 %21, %23
  %25 = icmp sgt i32 %24, 2147483392
  %26 = mul i32 %20, %sub4.i.i
  %27 = add i32 %26, %23
  %28 = icmp sgt i32 %27, 2147483392
  %29 = or i1 %25, %28
  br i1 %29, label %pregion_for_entry.entry.i.i.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.memcheck:                                  ; preds = %vector.scevcheck
  %30 = mul i32 %20, %sub2.i.i
  %31 = trunc i64 %2 to i32
  %32 = shl i32 %31, 8
  %33 = add i32 %30, %32
  %34 = sext i32 %33 to i64
  %scevgep = getelementptr float, float* %12, i64 %34
  %35 = add nsw i64 %34, 256
  %scevgep5 = getelementptr float, float* %12, i64 %35
  %36 = mul i32 %20, %sub4.i.i
  %37 = add i32 %36, %32
  %38 = sext i32 %37 to i64
  %scevgep7 = getelementptr float, float* %12, i64 %38
  %39 = add nsw i64 %38, 256
  %scevgep9 = getelementptr float, float* %12, i64 %39
  %scevgep11 = getelementptr float, float* %6, i64 %38
  %scevgep13 = getelementptr float, float* %6, i64 %39
  %scevgep15 = getelementptr float, float* %9, i64 %34
  %scevgep17 = getelementptr float, float* %9, i64 %35
  %bound0 = icmp ult float* %scevgep, %scevgep9
  %bound1 = icmp ult float* %scevgep7, %scevgep5
  %found.conflict = and i1 %bound0, %bound1
  %bound019 = icmp ult float* %scevgep, %scevgep13
  %bound120 = icmp ult float* %scevgep11, %scevgep5
  %found.conflict21 = and i1 %bound019, %bound120
  %conflict.rdx = or i1 %found.conflict, %found.conflict21
  %bound022 = icmp ult float* %scevgep, %scevgep17
  %bound123 = icmp ult float* %scevgep15, %scevgep5
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx25 = or i1 %conflict.rdx, %found.conflict24
  br i1 %conflict.rdx25, label %pregion_for_entry.entry.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert26 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat27 = shufflevector <8 x i32> %broadcast.splatinsert26, <8 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %vector.body ]
  %40 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %41 = trunc <8 x i64> %40 to <8 x i32>
  %42 = icmp sgt <8 x i32> %broadcast.splat27, %41
  %43 = extractelement <8 x i32> %41, i32 0
  %44 = add nsw i32 %mul.i.i, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %12, i64 %45
  %47 = bitcast float* %46 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %47, i32 4, <8 x i1> %42, <8 x float> undef), !tbaa !12, !alias.scope !45, !noalias !48
  %48 = add nsw i32 %mul5.i.i, %43
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %12, i64 %49
  %51 = bitcast float* %50 to <8 x float>*
  %wide.masked.load28 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %51, i32 4, <8 x i1> %42, <8 x float> undef), !tbaa !12, !alias.scope !52
  %52 = getelementptr inbounds float, float* %6, i64 %49
  %53 = bitcast float* %52 to <8 x float>*
  %wide.masked.load29 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %53, i32 4, <8 x i1> %42, <8 x float> undef), !tbaa !12, !alias.scope !53
  %54 = fneg <8 x float> %wide.masked.load28
  %55 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %54, <8 x float> %wide.masked.load29, <8 x float> %wide.masked.load)
  %56 = getelementptr inbounds float, float* %9, i64 %45
  %57 = bitcast float* %56 to <8 x float>*
  %wide.masked.load30 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %57, i32 4, <8 x i1> %42, <8 x float> undef), !tbaa !12, !alias.scope !54
  %58 = fdiv <8 x float> %55, %wide.masked.load30, !fpmath !26
  %59 = bitcast float* %46 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %58, <8 x float>* %59, i32 4, <8 x i1> %42), !tbaa !12, !alias.scope !45, !noalias !48, !llvm.access.group !27
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %60 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %61 = trunc <8 x i64> %60 to <8 x i32>
  %62 = icmp sgt <8 x i32> %broadcast.splat27, %61
  %63 = extractelement <8 x i32> %61, i32 0
  %64 = add nsw i32 %mul.i.i, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %12, i64 %65
  %67 = bitcast float* %66 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %67, i32 4, <8 x i1> %62, <8 x float> undef), !tbaa !12, !alias.scope !45, !noalias !48
  %68 = add nsw i32 %mul5.i.i, %63
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %12, i64 %69
  %71 = bitcast float* %70 to <8 x float>*
  %wide.masked.load28.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %71, i32 4, <8 x i1> %62, <8 x float> undef), !tbaa !12, !alias.scope !52
  %72 = getelementptr inbounds float, float* %6, i64 %69
  %73 = bitcast float* %72 to <8 x float>*
  %wide.masked.load29.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %73, i32 4, <8 x i1> %62, <8 x float> undef), !tbaa !12, !alias.scope !53
  %74 = fneg <8 x float> %wide.masked.load28.1
  %75 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %74, <8 x float> %wide.masked.load29.1, <8 x float> %wide.masked.load.1)
  %76 = getelementptr inbounds float, float* %9, i64 %65
  %77 = bitcast float* %76 to <8 x float>*
  %wide.masked.load30.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %77, i32 4, <8 x i1> %62, <8 x float> undef), !tbaa !12, !alias.scope !54
  %78 = fdiv <8 x float> %75, %wide.masked.load30.1, !fpmath !26
  %79 = bitcast float* %66 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %78, <8 x float>* %79, i32 4, <8 x i1> %62), !tbaa !12, !alias.scope !45, !noalias !48, !llvm.access.group !27
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %80 = icmp eq i64 %index.next.1, 256
  br i1 %80, label %_pocl_kernel_adi_kernel6.exit.loopexit32, label %vector.body, !llvm.loop !55

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i.1, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ 0, %pregion_for_entry.entry.i.i.preheader ], [ %92, %if.end.r_exit.i.i.1 ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %20, %conv.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.r_exit.i.i

if.then.i.i:                                      ; preds = %pregion_for_entry.entry.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %12, i64 %idxprom.i.i
  %81 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %add6.i.i = add nsw i32 %mul5.i.i, %conv.i.i
  %idxprom7.i.i = sext i32 %add6.i.i to i64
  %arrayidx8.i.i = getelementptr inbounds float, float* %12, i64 %idxprom7.i.i
  %82 = load float, float* %arrayidx8.i.i, align 4, !tbaa !12
  %arrayidx14.i.i = getelementptr inbounds float, float* %6, i64 %idxprom7.i.i
  %83 = load float, float* %arrayidx14.i.i, align 4, !tbaa !12
  %neg.i.i = fneg float %82
  %84 = tail call float @llvm.fmuladd.f32(float %neg.i.i, float %83, float %81) #5
  %arrayidx21.i.i = getelementptr inbounds float, float* %9, i64 %idxprom.i.i
  %85 = load float, float* %arrayidx21.i.i, align 4, !tbaa !12
  %div.i.i = fdiv float %84, %85, !fpmath !26
  store float %div.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %if.then.i.i, %pregion_for_entry.entry.i.i
  %86 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %86, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %cmp.i.i.1 = icmp sgt i32 %20, %conv.i.i.1
  br i1 %cmp.i.i.1, label %if.then.i.i.1, label %if.end.r_exit.i.i.1

_pocl_kernel_adi_kernel6.exit.loopexit:           ; preds = %if.end.r_exit.i.i.1
  br label %_pocl_kernel_adi_kernel6.exit

_pocl_kernel_adi_kernel6.exit.loopexit32:         ; preds = %vector.body
  br label %_pocl_kernel_adi_kernel6.exit

_pocl_kernel_adi_kernel6.exit:                    ; preds = %_pocl_kernel_adi_kernel6.exit.loopexit32, %_pocl_kernel_adi_kernel6.exit.loopexit
  ret void

if.then.i.i.1:                                    ; preds = %if.end.r_exit.i.i
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.1
  %87 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12
  %add6.i.i.1 = add nsw i32 %mul5.i.i, %conv.i.i.1
  %idxprom7.i.i.1 = sext i32 %add6.i.i.1 to i64
  %arrayidx8.i.i.1 = getelementptr inbounds float, float* %12, i64 %idxprom7.i.i.1
  %88 = load float, float* %arrayidx8.i.i.1, align 4, !tbaa !12
  %arrayidx14.i.i.1 = getelementptr inbounds float, float* %6, i64 %idxprom7.i.i.1
  %89 = load float, float* %arrayidx14.i.i.1, align 4, !tbaa !12
  %neg.i.i.1 = fneg float %88
  %90 = tail call float @llvm.fmuladd.f32(float %neg.i.i.1, float %89, float %87) #5
  %arrayidx21.i.i.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.1
  %91 = load float, float* %arrayidx21.i.i.1, align 4, !tbaa !12
  %div.i.i.1 = fdiv float %90, %91, !fpmath !26
  store float %div.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.1

if.end.r_exit.i.i.1:                              ; preds = %if.then.i.i.1, %if.end.r_exit.i.i
  %92 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %92, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_adi_kernel6.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !56
}

; Function Attrs: argmemonly nounwind readonly willreturn
declare <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>*, i32 immarg, <8 x i1>, <8 x float>) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #0

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.masked.store.v8f32.p0v8f32(<8 x float>, <8 x float>*, i32 immarg, <8 x i1>) #4

attributes #0 = { nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind }
attributes #3 = { argmemonly nounwind readonly willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!opencl.ocl.version = !{!3}
!llvm.ident = !{!4}
!opencl.spir.version = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 1, i32 2}
!4 = !{!"clang version 11.0.0 (git@github.com:llvm/llvm-project.git 91e89f9a5115b0f83b8f026e1ad0e6d1f885fa9b)"}
!5 = !{i32 1, i32 1, i32 1, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !""}
!10 = !{!"A", !"B", !"X", !"i1", !"n"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20, !21, !22}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = !{!20}
!24 = !{!21}
!25 = !{!22}
!26 = !{float 2.500000e+00}
!27 = !{!28}
!28 = distinct !{}
!29 = distinct !{!29, !30, !31}
!30 = !{!"llvm.loop.parallel_accesses", !28}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = distinct !{!32, !30, !31}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37, !38, !39}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !35}
!39 = distinct !{!39, !35}
!40 = !{!37}
!41 = !{!38}
!42 = !{!39}
!43 = distinct !{!43, !30, !31}
!44 = distinct !{!44, !30, !31}
!45 = !{!46}
!46 = distinct !{!46, !47}
!47 = distinct !{!47, !"LVerDomain"}
!48 = !{!49, !50, !51}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !47}
!51 = distinct !{!51, !47}
!52 = !{!49}
!53 = !{!50}
!54 = !{!51}
!55 = distinct !{!55, !30, !31}
!56 = distinct !{!56, !30, !31}
