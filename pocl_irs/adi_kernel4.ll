; ModuleID = './BF/DFFLECFOLOBPKCKMNEPCKIANKJKKLLHBOGBCO/adi_kernel4/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_adi_kernel4(float* nocapture readonly %0, float* nocapture %1, float* nocapture %2, i32 %3, i32 %4, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %5, i64 %6, i64 %7, i64 %8) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
vector.scevcheck:
  %mul.i.i = shl i64 %6, 8
  %mul.i = mul nsw i32 %4, %3
  %sub.i = add nsw i32 %3, -1
  %mul2.i = mul nsw i32 %sub.i, %4
  %9 = mul i32 %4, %3
  %10 = trunc i64 %6 to i32
  %11 = shl i32 %10, 8
  %12 = add i32 %9, %11
  %13 = icmp sgt i32 %12, 2147483392
  %14 = add i32 %3, -1
  %15 = mul i32 %14, %4
  %16 = add i32 %15, %11
  %17 = icmp sgt i32 %16, 2147483392
  %18 = or i1 %13, %17
  br i1 %18, label %pregion_for_entry.entry.i.preheader, label %vector.memcheck

pregion_for_entry.entry.i.preheader:              ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i

vector.memcheck:                                  ; preds = %vector.scevcheck
  %19 = mul i32 %4, %3
  %20 = trunc i64 %6 to i32
  %21 = shl i32 %20, 8
  %22 = add i32 %19, %21
  %23 = sext i32 %22 to i64
  %scevgep = getelementptr float, float* %2, i64 %23
  %24 = add nsw i64 %23, 256
  %scevgep5 = getelementptr float, float* %2, i64 %24
  %scevgep7 = getelementptr float, float* %1, i64 %23
  %scevgep9 = getelementptr float, float* %1, i64 %24
  %25 = add i32 %3, -1
  %26 = mul i32 %25, %4
  %27 = add i32 %26, %21
  %28 = sext i32 %27 to i64
  %scevgep11 = getelementptr float, float* %2, i64 %28
  %29 = add nsw i64 %28, 256
  %scevgep13 = getelementptr float, float* %2, i64 %29
  %scevgep15 = getelementptr float, float* %0, i64 %23
  %scevgep17 = getelementptr float, float* %0, i64 %24
  %scevgep19 = getelementptr float, float* %1, i64 %28
  %scevgep21 = getelementptr float, float* %1, i64 %29
  %bound0 = icmp ult float* %scevgep, %scevgep9
  %bound1 = icmp ult float* %scevgep7, %scevgep5
  %found.conflict = and i1 %bound0, %bound1
  %bound023 = icmp ult float* %scevgep, %scevgep13
  %bound124 = icmp ult float* %scevgep11, %scevgep5
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx = or i1 %found.conflict, %found.conflict25
  %bound026 = icmp ult float* %scevgep, %scevgep17
  %bound127 = icmp ult float* %scevgep15, %scevgep5
  %found.conflict28 = and i1 %bound026, %bound127
  %conflict.rdx29 = or i1 %conflict.rdx, %found.conflict28
  %bound030 = icmp ult float* %scevgep, %scevgep21
  %bound131 = icmp ult float* %scevgep19, %scevgep5
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx33 = or i1 %conflict.rdx29, %found.conflict32
  %bound034 = icmp ult float* %scevgep7, %scevgep13
  %bound135 = icmp ult float* %scevgep11, %scevgep9
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx33, %found.conflict36
  %bound038 = icmp ult float* %scevgep7, %scevgep17
  %bound139 = icmp ult float* %scevgep15, %scevgep9
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx41 = or i1 %conflict.rdx37, %found.conflict40
  %bound042 = icmp ult float* %scevgep7, %scevgep21
  %bound143 = icmp ult float* %scevgep19, %scevgep9
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx45 = or i1 %conflict.rdx41, %found.conflict44
  br i1 %conflict.rdx45, label %pregion_for_entry.entry.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert46 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat47 = shufflevector <8 x i32> %broadcast.splatinsert46, <8 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %30 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %31 = trunc <8 x i64> %30 to <8 x i32>
  %32 = icmp sgt <8 x i32> %broadcast.splat47, %31
  %33 = extractelement <8 x i32> %31, i32 0
  %34 = add nsw i32 %mul.i, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %2, i64 %35
  %37 = bitcast float* %36 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %37, i32 4, <8 x i1> %32, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %38 = add nsw i32 %mul2.i, %33
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %2, i64 %39
  %41 = bitcast float* %40 to <8 x float>*
  %wide.masked.load48 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %41, i32 4, <8 x i1> %32, <8 x float> undef), !tbaa !12, !alias.scope !24
  %42 = getelementptr inbounds float, float* %0, i64 %35
  %43 = bitcast float* %42 to <8 x float>*
  %wide.masked.load49 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %43, i32 4, <8 x i1> %32, <8 x float> undef), !tbaa !12, !alias.scope !25
  %44 = fmul <8 x float> %wide.masked.load48, %wide.masked.load49
  %45 = getelementptr inbounds float, float* %1, i64 %39
  %46 = bitcast float* %45 to <8 x float>*
  %wide.masked.load50 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %46, i32 4, <8 x i1> %32, <8 x float> undef), !tbaa !12, !alias.scope !26
  %47 = fdiv <8 x float> %44, %wide.masked.load50, !fpmath !27
  %48 = fsub <8 x float> %wide.masked.load, %47
  %49 = bitcast float* %36 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %48, <8 x float>* %49, i32 4, <8 x i1> %32), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !28
  %50 = getelementptr inbounds float, float* %1, i64 %35
  %51 = bitcast float* %50 to <8 x float>*
  %wide.masked.load51 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %51, i32 4, <8 x i1> %32, <8 x float> undef), !tbaa !12, !alias.scope !30, !noalias !31
  %52 = bitcast float* %42 to <8 x float>*
  %wide.masked.load52 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %52, i32 4, <8 x i1> %32, <8 x float> undef), !tbaa !12, !alias.scope !25
  %53 = fmul <8 x float> %wide.masked.load52, %wide.masked.load52
  %54 = bitcast float* %45 to <8 x float>*
  %wide.masked.load53 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %54, i32 4, <8 x i1> %32, <8 x float> undef), !tbaa !12, !alias.scope !26
  %55 = fdiv <8 x float> %53, %wide.masked.load53, !fpmath !27
  %56 = fsub <8 x float> %wide.masked.load51, %55
  %57 = bitcast float* %50 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %56, <8 x float>* %57, i32 4, <8 x i1> %32), !tbaa !12, !alias.scope !30, !noalias !31, !llvm.access.group !28
  %index.next = add i64 %index, 8
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %58 = icmp eq i64 %index.next, 256
  br i1 %58, label %adi_kernel4.exit.loopexit55, label %vector.body, !llvm.loop !32

pregion_for_entry.entry.i:                        ; preds = %if.end.r_exit.i, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ %66, %if.end.r_exit.i ], [ 0, %pregion_for_entry.entry.i.preheader ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %cmp.i = icmp slt i32 %conv.i, %4
  br i1 %cmp.i, label %if.then.i, label %if.end.r_exit.i

if.then.i:                                        ; preds = %pregion_for_entry.entry.i
  %add.i = add nsw i32 %mul.i, %conv.i
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %2, i64 %idxprom.i
  %59 = load float, float* %arrayidx.i, align 4, !tbaa !12
  %add3.i = add nsw i32 %mul2.i, %conv.i
  %idxprom4.i = sext i32 %add3.i to i64
  %arrayidx5.i = getelementptr inbounds float, float* %2, i64 %idxprom4.i
  %60 = load float, float* %arrayidx5.i, align 4, !tbaa !12
  %arrayidx9.i = getelementptr inbounds float, float* %0, i64 %idxprom.i
  %61 = load float, float* %arrayidx9.i, align 4, !tbaa !12
  %mul10.i = fmul float %60, %61
  %arrayidx15.i = getelementptr inbounds float, float* %1, i64 %idxprom4.i
  %62 = load float, float* %arrayidx15.i, align 4, !tbaa !12
  %div.i = fdiv float %mul10.i, %62, !fpmath !27
  %sub16.i = fsub float %59, %div.i
  store float %sub16.i, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !28
  %arrayidx24.i = getelementptr inbounds float, float* %1, i64 %idxprom.i
  %63 = load float, float* %arrayidx24.i, align 4, !tbaa !12
  %64 = load float, float* %arrayidx9.i, align 4, !tbaa !12
  %mul33.i = fmul float %64, %64
  %65 = load float, float* %arrayidx15.i, align 4, !tbaa !12
  %div39.i = fdiv float %mul33.i, %65, !fpmath !27
  %sub40.i = fsub float %63, %div39.i
  store float %sub40.i, float* %arrayidx24.i, align 4, !tbaa !12, !llvm.access.group !28
  br label %if.end.r_exit.i

if.end.r_exit.i:                                  ; preds = %if.then.i, %pregion_for_entry.entry.i
  %66 = add nuw nsw i64 %_local_id_x.0, 1
  %exitcond.not = icmp eq i64 %66, 256
  br i1 %exitcond.not, label %adi_kernel4.exit.loopexit, label %pregion_for_entry.entry.i, !llvm.loop !35

adi_kernel4.exit.loopexit:                        ; preds = %if.end.r_exit.i
  br label %adi_kernel4.exit

adi_kernel4.exit.loopexit55:                      ; preds = %vector.body
  br label %adi_kernel4.exit

adi_kernel4.exit:                                 ; preds = %adi_kernel4.exit.loopexit55, %adi_kernel4.exit.loopexit
  ret void
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_adi_kernel4_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
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
  %mul.i.i = mul nsw i32 %23, %19
  %sub.i.i = add nsw i32 %19, -1
  %mul2.i.i = mul nsw i32 %23, %sub.i.i
  %24 = mul i32 %23, %19
  %25 = trunc i64 %2 to i32
  %26 = shl i32 %25, 8
  %27 = add i32 %24, %26
  %28 = icmp sgt i32 %27, 2147483392
  %29 = add i32 %19, -1
  %30 = mul i32 %23, %29
  %31 = add i32 %30, %26
  %32 = icmp sgt i32 %31, 2147483392
  %33 = or i1 %28, %32
  br i1 %33, label %pregion_for_entry.entry.i.i.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.memcheck:                                  ; preds = %vector.scevcheck
  %34 = mul i32 %23, %19
  %35 = trunc i64 %2 to i32
  %36 = shl i32 %35, 8
  %37 = add i32 %34, %36
  %38 = sext i32 %37 to i64
  %scevgep = getelementptr float, float* %15, i64 %38
  %39 = add nsw i64 %38, 256
  %scevgep5 = getelementptr float, float* %15, i64 %39
  %scevgep7 = getelementptr float, float* %11, i64 %38
  %scevgep9 = getelementptr float, float* %11, i64 %39
  %40 = add i32 %19, -1
  %41 = mul i32 %23, %40
  %42 = add i32 %41, %36
  %43 = sext i32 %42 to i64
  %scevgep11 = getelementptr float, float* %15, i64 %43
  %44 = add nsw i64 %43, 256
  %scevgep13 = getelementptr float, float* %15, i64 %44
  %scevgep15 = getelementptr float, float* %7, i64 %38
  %scevgep17 = getelementptr float, float* %7, i64 %39
  %scevgep19 = getelementptr float, float* %11, i64 %43
  %scevgep21 = getelementptr float, float* %11, i64 %44
  %bound0 = icmp ult float* %scevgep, %scevgep9
  %bound1 = icmp ult float* %scevgep7, %scevgep5
  %found.conflict = and i1 %bound0, %bound1
  %bound023 = icmp ult float* %scevgep, %scevgep13
  %bound124 = icmp ult float* %scevgep11, %scevgep5
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx = or i1 %found.conflict, %found.conflict25
  %bound026 = icmp ult float* %scevgep, %scevgep17
  %bound127 = icmp ult float* %scevgep15, %scevgep5
  %found.conflict28 = and i1 %bound026, %bound127
  %conflict.rdx29 = or i1 %conflict.rdx, %found.conflict28
  %bound030 = icmp ult float* %scevgep, %scevgep21
  %bound131 = icmp ult float* %scevgep19, %scevgep5
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx33 = or i1 %conflict.rdx29, %found.conflict32
  %bound034 = icmp ult float* %scevgep7, %scevgep13
  %bound135 = icmp ult float* %scevgep11, %scevgep9
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx33, %found.conflict36
  %bound038 = icmp ult float* %scevgep7, %scevgep17
  %bound139 = icmp ult float* %scevgep15, %scevgep9
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx41 = or i1 %conflict.rdx37, %found.conflict40
  %bound042 = icmp ult float* %scevgep7, %scevgep21
  %bound143 = icmp ult float* %scevgep19, %scevgep9
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx45 = or i1 %conflict.rdx41, %found.conflict44
  br i1 %conflict.rdx45, label %pregion_for_entry.entry.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert46 = insertelement <8 x i32> undef, i32 %23, i32 0
  %broadcast.splat47 = shufflevector <8 x i32> %broadcast.splatinsert46, <8 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %45 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %46 = trunc <8 x i64> %45 to <8 x i32>
  %47 = icmp sgt <8 x i32> %broadcast.splat47, %46
  %48 = extractelement <8 x i32> %46, i32 0
  %49 = add nsw i32 %mul.i.i, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %15, i64 %50
  %52 = bitcast float* %51 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %52, i32 4, <8 x i1> %47, <8 x float> undef), !tbaa !12, !alias.scope !36, !noalias !39
  %53 = add nsw i32 %mul2.i.i, %48
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %15, i64 %54
  %56 = bitcast float* %55 to <8 x float>*
  %wide.masked.load48 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %56, i32 4, <8 x i1> %47, <8 x float> undef), !tbaa !12, !alias.scope !44
  %57 = getelementptr inbounds float, float* %7, i64 %50
  %58 = bitcast float* %57 to <8 x float>*
  %wide.masked.load49 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %58, i32 4, <8 x i1> %47, <8 x float> undef), !tbaa !12, !alias.scope !45
  %59 = fmul <8 x float> %wide.masked.load48, %wide.masked.load49
  %60 = getelementptr inbounds float, float* %11, i64 %54
  %61 = bitcast float* %60 to <8 x float>*
  %wide.masked.load50 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %61, i32 4, <8 x i1> %47, <8 x float> undef), !tbaa !12, !alias.scope !46
  %62 = fdiv <8 x float> %59, %wide.masked.load50, !fpmath !27
  %63 = fsub <8 x float> %wide.masked.load, %62
  %64 = bitcast float* %51 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %63, <8 x float>* %64, i32 4, <8 x i1> %47), !tbaa !12, !alias.scope !36, !noalias !39, !llvm.access.group !28
  %65 = getelementptr inbounds float, float* %11, i64 %50
  %66 = bitcast float* %65 to <8 x float>*
  %wide.masked.load51 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %66, i32 4, <8 x i1> %47, <8 x float> undef), !tbaa !12, !alias.scope !47, !noalias !48
  %67 = bitcast float* %57 to <8 x float>*
  %wide.masked.load52 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %67, i32 4, <8 x i1> %47, <8 x float> undef), !tbaa !12, !alias.scope !45
  %68 = fmul <8 x float> %wide.masked.load52, %wide.masked.load52
  %69 = bitcast float* %60 to <8 x float>*
  %wide.masked.load53 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %69, i32 4, <8 x i1> %47, <8 x float> undef), !tbaa !12, !alias.scope !46
  %70 = fdiv <8 x float> %68, %wide.masked.load53, !fpmath !27
  %71 = fsub <8 x float> %wide.masked.load51, %70
  %72 = bitcast float* %65 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %71, <8 x float>* %72, i32 4, <8 x i1> %47), !tbaa !12, !alias.scope !47, !noalias !48, !llvm.access.group !28
  %index.next = add i64 %index, 8
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %73 = icmp eq i64 %index.next, 256
  br i1 %73, label %_pocl_kernel_adi_kernel4.exit.loopexit55, label %vector.body, !llvm.loop !49

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %81, %if.end.r_exit.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %23, %conv.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.r_exit.i.i

if.then.i.i:                                      ; preds = %pregion_for_entry.entry.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %15, i64 %idxprom.i.i
  %74 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %add3.i.i = add nsw i32 %mul2.i.i, %conv.i.i
  %idxprom4.i.i = sext i32 %add3.i.i to i64
  %arrayidx5.i.i = getelementptr inbounds float, float* %15, i64 %idxprom4.i.i
  %75 = load float, float* %arrayidx5.i.i, align 4, !tbaa !12
  %arrayidx9.i.i = getelementptr inbounds float, float* %7, i64 %idxprom.i.i
  %76 = load float, float* %arrayidx9.i.i, align 4, !tbaa !12
  %mul10.i.i = fmul float %75, %76
  %arrayidx15.i.i = getelementptr inbounds float, float* %11, i64 %idxprom4.i.i
  %77 = load float, float* %arrayidx15.i.i, align 4, !tbaa !12
  %div.i.i = fdiv float %mul10.i.i, %77, !fpmath !27
  %sub16.i.i = fsub float %74, %div.i.i
  store float %sub16.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !28
  %arrayidx24.i.i = getelementptr inbounds float, float* %11, i64 %idxprom.i.i
  %78 = load float, float* %arrayidx24.i.i, align 4, !tbaa !12
  %79 = load float, float* %arrayidx9.i.i, align 4, !tbaa !12
  %mul33.i.i = fmul float %79, %79
  %80 = load float, float* %arrayidx15.i.i, align 4, !tbaa !12
  %div39.i.i = fdiv float %mul33.i.i, %80, !fpmath !27
  %sub40.i.i = fsub float %78, %div39.i.i
  store float %sub40.i.i, float* %arrayidx24.i.i, align 4, !tbaa !12, !llvm.access.group !28
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %if.then.i.i, %pregion_for_entry.entry.i.i
  %81 = add nuw nsw i64 %_local_id_x.i.0, 1
  %exitcond.not = icmp eq i64 %81, 256
  br i1 %exitcond.not, label %_pocl_kernel_adi_kernel4.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !50

_pocl_kernel_adi_kernel4.exit.loopexit:           ; preds = %if.end.r_exit.i.i
  br label %_pocl_kernel_adi_kernel4.exit

_pocl_kernel_adi_kernel4.exit.loopexit55:         ; preds = %vector.body
  br label %_pocl_kernel_adi_kernel4.exit

_pocl_kernel_adi_kernel4.exit:                    ; preds = %_pocl_kernel_adi_kernel4.exit.loopexit55, %_pocl_kernel_adi_kernel4.exit.loopexit
  ret void
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_adi_kernel4_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
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
  %mul.i.i = mul nsw i32 %20, %16
  %sub.i.i = add nsw i32 %16, -1
  %mul2.i.i = mul nsw i32 %20, %sub.i.i
  %21 = mul i32 %20, %16
  %22 = trunc i64 %2 to i32
  %23 = shl i32 %22, 8
  %24 = add i32 %21, %23
  %25 = icmp sgt i32 %24, 2147483392
  %26 = add i32 %16, -1
  %27 = mul i32 %20, %26
  %28 = add i32 %27, %23
  %29 = icmp sgt i32 %28, 2147483392
  %30 = or i1 %25, %29
  br i1 %30, label %pregion_for_entry.entry.i.i.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.memcheck:                                  ; preds = %vector.scevcheck
  %31 = mul i32 %20, %16
  %32 = trunc i64 %2 to i32
  %33 = shl i32 %32, 8
  %34 = add i32 %31, %33
  %35 = sext i32 %34 to i64
  %scevgep = getelementptr float, float* %12, i64 %35
  %36 = add nsw i64 %35, 256
  %scevgep5 = getelementptr float, float* %12, i64 %36
  %scevgep7 = getelementptr float, float* %9, i64 %35
  %scevgep9 = getelementptr float, float* %9, i64 %36
  %37 = add i32 %16, -1
  %38 = mul i32 %20, %37
  %39 = add i32 %38, %33
  %40 = sext i32 %39 to i64
  %scevgep11 = getelementptr float, float* %12, i64 %40
  %41 = add nsw i64 %40, 256
  %scevgep13 = getelementptr float, float* %12, i64 %41
  %scevgep15 = getelementptr float, float* %6, i64 %35
  %scevgep17 = getelementptr float, float* %6, i64 %36
  %scevgep19 = getelementptr float, float* %9, i64 %40
  %scevgep21 = getelementptr float, float* %9, i64 %41
  %bound0 = icmp ult float* %scevgep, %scevgep9
  %bound1 = icmp ult float* %scevgep7, %scevgep5
  %found.conflict = and i1 %bound0, %bound1
  %bound023 = icmp ult float* %scevgep, %scevgep13
  %bound124 = icmp ult float* %scevgep11, %scevgep5
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx = or i1 %found.conflict, %found.conflict25
  %bound026 = icmp ult float* %scevgep, %scevgep17
  %bound127 = icmp ult float* %scevgep15, %scevgep5
  %found.conflict28 = and i1 %bound026, %bound127
  %conflict.rdx29 = or i1 %conflict.rdx, %found.conflict28
  %bound030 = icmp ult float* %scevgep, %scevgep21
  %bound131 = icmp ult float* %scevgep19, %scevgep5
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx33 = or i1 %conflict.rdx29, %found.conflict32
  %bound034 = icmp ult float* %scevgep7, %scevgep13
  %bound135 = icmp ult float* %scevgep11, %scevgep9
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx33, %found.conflict36
  %bound038 = icmp ult float* %scevgep7, %scevgep17
  %bound139 = icmp ult float* %scevgep15, %scevgep9
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx41 = or i1 %conflict.rdx37, %found.conflict40
  %bound042 = icmp ult float* %scevgep7, %scevgep21
  %bound143 = icmp ult float* %scevgep19, %scevgep9
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx45 = or i1 %conflict.rdx41, %found.conflict44
  br i1 %conflict.rdx45, label %pregion_for_entry.entry.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert46 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat47 = shufflevector <8 x i32> %broadcast.splatinsert46, <8 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %42 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %43 = trunc <8 x i64> %42 to <8 x i32>
  %44 = icmp sgt <8 x i32> %broadcast.splat47, %43
  %45 = extractelement <8 x i32> %43, i32 0
  %46 = add nsw i32 %mul.i.i, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %12, i64 %47
  %49 = bitcast float* %48 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %49, i32 4, <8 x i1> %44, <8 x float> undef), !tbaa !12, !alias.scope !51, !noalias !54
  %50 = add nsw i32 %mul2.i.i, %45
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %12, i64 %51
  %53 = bitcast float* %52 to <8 x float>*
  %wide.masked.load48 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %53, i32 4, <8 x i1> %44, <8 x float> undef), !tbaa !12, !alias.scope !59
  %54 = getelementptr inbounds float, float* %6, i64 %47
  %55 = bitcast float* %54 to <8 x float>*
  %wide.masked.load49 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %55, i32 4, <8 x i1> %44, <8 x float> undef), !tbaa !12, !alias.scope !60
  %56 = fmul <8 x float> %wide.masked.load48, %wide.masked.load49
  %57 = getelementptr inbounds float, float* %9, i64 %51
  %58 = bitcast float* %57 to <8 x float>*
  %wide.masked.load50 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %58, i32 4, <8 x i1> %44, <8 x float> undef), !tbaa !12, !alias.scope !61
  %59 = fdiv <8 x float> %56, %wide.masked.load50, !fpmath !27
  %60 = fsub <8 x float> %wide.masked.load, %59
  %61 = bitcast float* %48 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %60, <8 x float>* %61, i32 4, <8 x i1> %44), !tbaa !12, !alias.scope !51, !noalias !54, !llvm.access.group !28
  %62 = getelementptr inbounds float, float* %9, i64 %47
  %63 = bitcast float* %62 to <8 x float>*
  %wide.masked.load51 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %63, i32 4, <8 x i1> %44, <8 x float> undef), !tbaa !12, !alias.scope !62, !noalias !63
  %64 = bitcast float* %54 to <8 x float>*
  %wide.masked.load52 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %64, i32 4, <8 x i1> %44, <8 x float> undef), !tbaa !12, !alias.scope !60
  %65 = fmul <8 x float> %wide.masked.load52, %wide.masked.load52
  %66 = bitcast float* %57 to <8 x float>*
  %wide.masked.load53 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %66, i32 4, <8 x i1> %44, <8 x float> undef), !tbaa !12, !alias.scope !61
  %67 = fdiv <8 x float> %65, %wide.masked.load53, !fpmath !27
  %68 = fsub <8 x float> %wide.masked.load51, %67
  %69 = bitcast float* %62 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %68, <8 x float>* %69, i32 4, <8 x i1> %44), !tbaa !12, !alias.scope !62, !noalias !63, !llvm.access.group !28
  %index.next = add i64 %index, 8
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %70 = icmp eq i64 %index.next, 256
  br i1 %70, label %_pocl_kernel_adi_kernel4.exit.loopexit55, label %vector.body, !llvm.loop !64

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %78, %if.end.r_exit.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %20, %conv.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.r_exit.i.i

if.then.i.i:                                      ; preds = %pregion_for_entry.entry.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %12, i64 %idxprom.i.i
  %71 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %add3.i.i = add nsw i32 %mul2.i.i, %conv.i.i
  %idxprom4.i.i = sext i32 %add3.i.i to i64
  %arrayidx5.i.i = getelementptr inbounds float, float* %12, i64 %idxprom4.i.i
  %72 = load float, float* %arrayidx5.i.i, align 4, !tbaa !12
  %arrayidx9.i.i = getelementptr inbounds float, float* %6, i64 %idxprom.i.i
  %73 = load float, float* %arrayidx9.i.i, align 4, !tbaa !12
  %mul10.i.i = fmul float %72, %73
  %arrayidx15.i.i = getelementptr inbounds float, float* %9, i64 %idxprom4.i.i
  %74 = load float, float* %arrayidx15.i.i, align 4, !tbaa !12
  %div.i.i = fdiv float %mul10.i.i, %74, !fpmath !27
  %sub16.i.i = fsub float %71, %div.i.i
  store float %sub16.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !28
  %arrayidx24.i.i = getelementptr inbounds float, float* %9, i64 %idxprom.i.i
  %75 = load float, float* %arrayidx24.i.i, align 4, !tbaa !12
  %76 = load float, float* %arrayidx9.i.i, align 4, !tbaa !12
  %mul33.i.i = fmul float %76, %76
  %77 = load float, float* %arrayidx15.i.i, align 4, !tbaa !12
  %div39.i.i = fdiv float %mul33.i.i, %77, !fpmath !27
  %sub40.i.i = fsub float %75, %div39.i.i
  store float %sub40.i.i, float* %arrayidx24.i.i, align 4, !tbaa !12, !llvm.access.group !28
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %if.then.i.i, %pregion_for_entry.entry.i.i
  %78 = add nuw nsw i64 %_local_id_x.i.0, 1
  %exitcond.not = icmp eq i64 %78, 256
  br i1 %exitcond.not, label %_pocl_kernel_adi_kernel4.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !65

_pocl_kernel_adi_kernel4.exit.loopexit:           ; preds = %if.end.r_exit.i.i
  br label %_pocl_kernel_adi_kernel4.exit

_pocl_kernel_adi_kernel4.exit.loopexit55:         ; preds = %vector.body
  br label %_pocl_kernel_adi_kernel4.exit

_pocl_kernel_adi_kernel4.exit:                    ; preds = %_pocl_kernel_adi_kernel4.exit.loopexit55, %_pocl_kernel_adi_kernel4.exit.loopexit
  ret void
}

; Function Attrs: argmemonly nounwind readonly willreturn
declare <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>*, i32 immarg, <8 x i1>, <8 x float>) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.masked.store.v8f32.p0v8f32(<8 x float>, <8 x float>*, i32 immarg, <8 x i1>) #3

attributes #0 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree norecurse nounwind }
attributes #2 = { argmemonly nounwind readonly willreturn }
attributes #3 = { argmemonly nounwind willreturn }

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
!19 = !{!20, !21, !22, !23}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = !{!21}
!25 = !{!22}
!26 = !{!23}
!27 = !{float 2.500000e+00}
!28 = !{!29}
!29 = distinct !{}
!30 = !{!20}
!31 = !{!21, !22, !23}
!32 = distinct !{!32, !33, !34}
!33 = !{!"llvm.loop.parallel_accesses", !29}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = distinct !{!35, !33, !34}
!36 = !{!37}
!37 = distinct !{!37, !38}
!38 = distinct !{!38, !"LVerDomain"}
!39 = !{!40, !41, !42, !43}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = distinct !{!42, !38}
!43 = distinct !{!43, !38}
!44 = !{!41}
!45 = !{!42}
!46 = !{!43}
!47 = !{!40}
!48 = !{!41, !42, !43}
!49 = distinct !{!49, !33, !34}
!50 = distinct !{!50, !33, !34}
!51 = !{!52}
!52 = distinct !{!52, !53}
!53 = distinct !{!53, !"LVerDomain"}
!54 = !{!55, !56, !57, !58}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !53}
!57 = distinct !{!57, !53}
!58 = distinct !{!58, !53}
!59 = !{!56}
!60 = !{!57}
!61 = !{!58}
!62 = !{!55}
!63 = !{!56, !57, !58}
!64 = distinct !{!64, !33, !34}
!65 = distinct !{!65, !33, !34}
