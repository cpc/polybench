; ModuleID = './KJ/PLAOGDMDEAHKMIGEICILPNJNPJGMEGIKFDLHM/gramschmidt_kernel2/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_gramschmidt_kernel2(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, i32 %3, i32 %4, i32 %5, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %6, i64 %7, i64 %8, i64 %9) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
vector.scevcheck:
  %mul.i.i = shl i64 %7, 8
  %mul2.i = mul nsw i32 %5, %3
  %add3.i = add nsw i32 %mul2.i, %3
  %idxprom4.i = sext i32 %add3.i to i64
  %arrayidx5.i = getelementptr inbounds float, float* %1, i64 %idxprom4.i
  %ident.check = icmp ne i32 %5, 1
  %10 = trunc i64 %7 to i32
  %11 = shl i32 %10, 8
  %12 = add i32 %11, %3
  %13 = icmp sgt i32 %12, 2147483392
  %14 = or i1 %ident.check, %13
  br i1 %14, label %pregion_for_entry.entry.i.preheader, label %vector.memcheck

pregion_for_entry.entry.i.preheader:              ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr float, float* %1, i64 %idxprom4.i
  %scevgep1 = bitcast float* %scevgep to i8*
  %uglygep = getelementptr i8, i8* %scevgep1, i64 1
  %15 = trunc i64 %7 to i32
  %16 = shl i32 %15, 8
  %17 = add i32 %16, %3
  %18 = sext i32 %17 to i64
  %scevgep2 = getelementptr float, float* %2, i64 %18
  %scevgep23 = bitcast float* %scevgep2 to i8*
  %19 = add nsw i64 %18, 256
  %scevgep4 = getelementptr float, float* %2, i64 %19
  %scevgep6 = getelementptr float, float* %0, i64 %18
  %scevgep8 = getelementptr float, float* %0, i64 %19
  %bound0 = icmp ult float* %arrayidx5.i, %scevgep4
  %bound1 = icmp ugt i8* %uglygep, %scevgep23
  %found.conflict = and i1 %bound0, %bound1
  %bound010 = icmp ult float* %scevgep2, %scevgep8
  %bound111 = icmp ult float* %scevgep6, %scevgep4
  %found.conflict12 = and i1 %bound010, %bound111
  %conflict.rdx = or i1 %found.conflict, %found.conflict12
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat14 = shufflevector <8 x i32> %broadcast.splatinsert13, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <8 x float*> undef, float* %arrayidx5.i, i32 0
  %broadcast.splat16 = shufflevector <8 x float*> %broadcast.splatinsert15, <8 x float*> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %vector.body ]
  %20 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %21 = trunc <8 x i64> %20 to <8 x i32>
  %22 = icmp sgt <8 x i32> %broadcast.splat14, %21
  %23 = extractelement <8 x i32> %21, i32 0
  %24 = mul nsw i32 %23, %5
  %25 = add nsw i32 %24, %3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %0, i64 %26
  %28 = bitcast float* %27 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %28, i32 4, <8 x i1> %22, <8 x float> undef), !tbaa !12, !alias.scope !16
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat16, i32 4, <8 x i1> %22, <8 x float> undef), !tbaa !12, !alias.scope !19, !noalias !21
  %29 = fdiv <8 x float> %wide.masked.load, %wide.masked.gather, !fpmath !23
  %30 = getelementptr inbounds float, float* %2, i64 %26
  %31 = bitcast float* %30 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %29, <8 x float>* %31, i32 4, <8 x i1> %22), !tbaa !12, !alias.scope !21, !noalias !16, !llvm.access.group !24
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %32 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %33 = trunc <8 x i64> %32 to <8 x i32>
  %34 = icmp sgt <8 x i32> %broadcast.splat14, %33
  %35 = extractelement <8 x i32> %33, i32 0
  %36 = mul nsw i32 %35, %5
  %37 = add nsw i32 %36, %3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %0, i64 %38
  %40 = bitcast float* %39 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %40, i32 4, <8 x i1> %34, <8 x float> undef), !tbaa !12, !alias.scope !16
  %wide.masked.gather.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat16, i32 4, <8 x i1> %34, <8 x float> undef), !tbaa !12, !alias.scope !19, !noalias !21
  %41 = fdiv <8 x float> %wide.masked.load.1, %wide.masked.gather.1, !fpmath !23
  %42 = getelementptr inbounds float, float* %2, i64 %38
  %43 = bitcast float* %42 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %41, <8 x float>* %43, i32 4, <8 x i1> %34), !tbaa !12, !alias.scope !21, !noalias !16, !llvm.access.group !24
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %44 = icmp eq i64 %index.next.1, 256
  br i1 %44, label %gramschmidt_kernel2.exit.loopexit18, label %vector.body, !llvm.loop !26

pregion_for_entry.entry.i:                        ; preds = %if.end.r_exit.i.1, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ 0, %pregion_for_entry.entry.i.preheader ], [ %50, %if.end.r_exit.i.1 ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %cmp.i = icmp slt i32 %conv.i, %4
  br i1 %cmp.i, label %if.then.i, label %if.end.r_exit.i

if.then.i:                                        ; preds = %pregion_for_entry.entry.i
  %mul.i = mul nsw i32 %conv.i, %5
  %add.i = add nsw i32 %mul.i, %3
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %0, i64 %idxprom.i
  %45 = load float, float* %arrayidx.i, align 4, !tbaa !12
  %46 = load float, float* %arrayidx5.i, align 4, !tbaa !12
  %div.i = fdiv float %45, %46, !fpmath !23
  %arrayidx9.i = getelementptr inbounds float, float* %2, i64 %idxprom.i
  store float %div.i, float* %arrayidx9.i, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i

if.end.r_exit.i:                                  ; preds = %if.then.i, %pregion_for_entry.entry.i
  %47 = or i64 %_local_id_x.0, 1
  %add1.i.i.1 = add nuw nsw i64 %47, %mul.i.i
  %conv.i.1 = trunc i64 %add1.i.i.1 to i32
  %cmp.i.1 = icmp slt i32 %conv.i.1, %4
  br i1 %cmp.i.1, label %if.then.i.1, label %if.end.r_exit.i.1

gramschmidt_kernel2.exit.loopexit:                ; preds = %if.end.r_exit.i.1
  br label %gramschmidt_kernel2.exit

gramschmidt_kernel2.exit.loopexit18:              ; preds = %vector.body
  br label %gramschmidt_kernel2.exit

gramschmidt_kernel2.exit:                         ; preds = %gramschmidt_kernel2.exit.loopexit18, %gramschmidt_kernel2.exit.loopexit
  ret void

if.then.i.1:                                      ; preds = %if.end.r_exit.i
  %mul.i.1 = mul nsw i32 %conv.i.1, %5
  %add.i.1 = add nsw i32 %mul.i.1, %3
  %idxprom.i.1 = sext i32 %add.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.1
  %48 = load float, float* %arrayidx.i.1, align 4, !tbaa !12
  %49 = load float, float* %arrayidx5.i, align 4, !tbaa !12
  %div.i.1 = fdiv float %48, %49, !fpmath !23
  %arrayidx9.i.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.1
  store float %div.i.1, float* %arrayidx9.i.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.1

if.end.r_exit.i.1:                                ; preds = %if.then.i.1, %if.end.r_exit.i
  %50 = add nuw nsw i64 %_local_id_x.0, 2
  %exitcond.not.1 = icmp eq i64 %50, 256
  br i1 %exitcond.not.1, label %gramschmidt_kernel2.exit.loopexit, label %pregion_for_entry.entry.i, !llvm.loop !29
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_gramschmidt_kernel2_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
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
  %24 = getelementptr i8*, i8** %0, i64 5
  %25 = bitcast i8** %24 to i32**
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %mul.i.i.i = shl i64 %2, 8
  %mul2.i.i = mul nsw i32 %27, %19
  %add3.i.i = add nsw i32 %mul2.i.i, %19
  %idxprom4.i.i = sext i32 %add3.i.i to i64
  %arrayidx5.i.i = getelementptr inbounds float, float* %11, i64 %idxprom4.i.i
  %ident.check = icmp ne i32 %27, 1
  %28 = trunc i64 %2 to i32
  %29 = shl i32 %28, 8
  %30 = add i32 %19, %29
  %31 = icmp sgt i32 %30, 2147483392
  %32 = or i1 %ident.check, %31
  br i1 %32, label %pregion_for_entry.entry.i.i.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr float, float* %11, i64 %idxprom4.i.i
  %scevgep1 = bitcast float* %scevgep to i8*
  %uglygep = getelementptr i8, i8* %scevgep1, i64 1
  %33 = trunc i64 %2 to i32
  %34 = shl i32 %33, 8
  %35 = add i32 %19, %34
  %36 = sext i32 %35 to i64
  %scevgep2 = getelementptr float, float* %15, i64 %36
  %scevgep23 = bitcast float* %scevgep2 to i8*
  %37 = add nsw i64 %36, 256
  %scevgep4 = getelementptr float, float* %15, i64 %37
  %scevgep6 = getelementptr float, float* %7, i64 %36
  %scevgep8 = getelementptr float, float* %7, i64 %37
  %bound0 = icmp ult float* %arrayidx5.i.i, %scevgep4
  %bound1 = icmp ugt i8* %uglygep, %scevgep23
  %found.conflict = and i1 %bound0, %bound1
  %bound010 = icmp ult float* %scevgep2, %scevgep8
  %bound111 = icmp ult float* %scevgep6, %scevgep4
  %found.conflict12 = and i1 %bound010, %bound111
  %conflict.rdx = or i1 %found.conflict, %found.conflict12
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <8 x i32> undef, i32 %23, i32 0
  %broadcast.splat14 = shufflevector <8 x i32> %broadcast.splatinsert13, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <8 x float*> undef, float* %arrayidx5.i.i, i32 0
  %broadcast.splat16 = shufflevector <8 x float*> %broadcast.splatinsert15, <8 x float*> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %vector.body ]
  %38 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %39 = trunc <8 x i64> %38 to <8 x i32>
  %40 = icmp sgt <8 x i32> %broadcast.splat14, %39
  %41 = extractelement <8 x i32> %39, i32 0
  %42 = mul nsw i32 %27, %41
  %43 = add nsw i32 %42, %19
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %7, i64 %44
  %46 = bitcast float* %45 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %46, i32 4, <8 x i1> %40, <8 x float> undef), !tbaa !12, !alias.scope !30
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat16, i32 4, <8 x i1> %40, <8 x float> undef), !tbaa !12, !alias.scope !33, !noalias !35
  %47 = fdiv <8 x float> %wide.masked.load, %wide.masked.gather, !fpmath !23
  %48 = getelementptr inbounds float, float* %15, i64 %44
  %49 = bitcast float* %48 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %47, <8 x float>* %49, i32 4, <8 x i1> %40), !tbaa !12, !alias.scope !35, !noalias !30, !llvm.access.group !24
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %50 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %51 = trunc <8 x i64> %50 to <8 x i32>
  %52 = icmp sgt <8 x i32> %broadcast.splat14, %51
  %53 = extractelement <8 x i32> %51, i32 0
  %54 = mul nsw i32 %27, %53
  %55 = add nsw i32 %54, %19
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %7, i64 %56
  %58 = bitcast float* %57 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %58, i32 4, <8 x i1> %52, <8 x float> undef), !tbaa !12, !alias.scope !30
  %wide.masked.gather.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat16, i32 4, <8 x i1> %52, <8 x float> undef), !tbaa !12, !alias.scope !33, !noalias !35
  %59 = fdiv <8 x float> %wide.masked.load.1, %wide.masked.gather.1, !fpmath !23
  %60 = getelementptr inbounds float, float* %15, i64 %56
  %61 = bitcast float* %60 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %59, <8 x float>* %61, i32 4, <8 x i1> %52), !tbaa !12, !alias.scope !35, !noalias !30, !llvm.access.group !24
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %62 = icmp eq i64 %index.next.1, 256
  br i1 %62, label %_pocl_kernel_gramschmidt_kernel2.exit.loopexit18, label %vector.body, !llvm.loop !37

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i.1, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ 0, %pregion_for_entry.entry.i.i.preheader ], [ %68, %if.end.r_exit.i.i.1 ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %23, %conv.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.r_exit.i.i

if.then.i.i:                                      ; preds = %pregion_for_entry.entry.i.i
  %mul.i.i = mul nsw i32 %27, %conv.i.i
  %add.i.i = add nsw i32 %mul.i.i, %19
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %7, i64 %idxprom.i.i
  %63 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %64 = load float, float* %arrayidx5.i.i, align 4, !tbaa !12
  %div.i.i = fdiv float %63, %64, !fpmath !23
  %arrayidx9.i.i = getelementptr inbounds float, float* %15, i64 %idxprom.i.i
  store float %div.i.i, float* %arrayidx9.i.i, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %if.then.i.i, %pregion_for_entry.entry.i.i
  %65 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %65, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %cmp.i.i.1 = icmp sgt i32 %23, %conv.i.i.1
  br i1 %cmp.i.i.1, label %if.then.i.i.1, label %if.end.r_exit.i.i.1

_pocl_kernel_gramschmidt_kernel2.exit.loopexit:   ; preds = %if.end.r_exit.i.i.1
  br label %_pocl_kernel_gramschmidt_kernel2.exit

_pocl_kernel_gramschmidt_kernel2.exit.loopexit18: ; preds = %vector.body
  br label %_pocl_kernel_gramschmidt_kernel2.exit

_pocl_kernel_gramschmidt_kernel2.exit:            ; preds = %_pocl_kernel_gramschmidt_kernel2.exit.loopexit18, %_pocl_kernel_gramschmidt_kernel2.exit.loopexit
  ret void

if.then.i.i.1:                                    ; preds = %if.end.r_exit.i.i
  %mul.i.i.1 = mul nsw i32 %27, %conv.i.i.1
  %add.i.i.1 = add nsw i32 %mul.i.i.1, %19
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.1
  %66 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12
  %67 = load float, float* %arrayidx5.i.i, align 4, !tbaa !12
  %div.i.i.1 = fdiv float %66, %67, !fpmath !23
  %arrayidx9.i.i.1 = getelementptr inbounds float, float* %15, i64 %idxprom.i.i.1
  store float %div.i.i.1, float* %arrayidx9.i.i.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.1

if.end.r_exit.i.i.1:                              ; preds = %if.then.i.i.1, %if.end.r_exit.i.i
  %68 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %68, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_gramschmidt_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !38
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_gramschmidt_kernel2_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
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
  %21 = getelementptr i8*, i8** %0, i64 5
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %mul.i.i.i = shl i64 %2, 8
  %mul2.i.i = mul nsw i32 %24, %16
  %add3.i.i = add nsw i32 %mul2.i.i, %16
  %idxprom4.i.i = sext i32 %add3.i.i to i64
  %arrayidx5.i.i = getelementptr inbounds float, float* %9, i64 %idxprom4.i.i
  %ident.check = icmp ne i32 %24, 1
  %25 = trunc i64 %2 to i32
  %26 = shl i32 %25, 8
  %27 = add i32 %16, %26
  %28 = icmp sgt i32 %27, 2147483392
  %29 = or i1 %ident.check, %28
  br i1 %29, label %pregion_for_entry.entry.i.i.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr float, float* %9, i64 %idxprom4.i.i
  %scevgep1 = bitcast float* %scevgep to i8*
  %uglygep = getelementptr i8, i8* %scevgep1, i64 1
  %30 = trunc i64 %2 to i32
  %31 = shl i32 %30, 8
  %32 = add i32 %16, %31
  %33 = sext i32 %32 to i64
  %scevgep2 = getelementptr float, float* %12, i64 %33
  %scevgep23 = bitcast float* %scevgep2 to i8*
  %34 = add nsw i64 %33, 256
  %scevgep4 = getelementptr float, float* %12, i64 %34
  %scevgep6 = getelementptr float, float* %6, i64 %33
  %scevgep8 = getelementptr float, float* %6, i64 %34
  %bound0 = icmp ult float* %arrayidx5.i.i, %scevgep4
  %bound1 = icmp ugt i8* %uglygep, %scevgep23
  %found.conflict = and i1 %bound0, %bound1
  %bound010 = icmp ult float* %scevgep2, %scevgep8
  %bound111 = icmp ult float* %scevgep6, %scevgep4
  %found.conflict12 = and i1 %bound010, %bound111
  %conflict.rdx = or i1 %found.conflict, %found.conflict12
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat14 = shufflevector <8 x i32> %broadcast.splatinsert13, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <8 x float*> undef, float* %arrayidx5.i.i, i32 0
  %broadcast.splat16 = shufflevector <8 x float*> %broadcast.splatinsert15, <8 x float*> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %vector.body ]
  %35 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %36 = trunc <8 x i64> %35 to <8 x i32>
  %37 = icmp sgt <8 x i32> %broadcast.splat14, %36
  %38 = extractelement <8 x i32> %36, i32 0
  %39 = mul nsw i32 %24, %38
  %40 = add nsw i32 %39, %16
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %6, i64 %41
  %43 = bitcast float* %42 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %43, i32 4, <8 x i1> %37, <8 x float> undef), !tbaa !12, !alias.scope !39
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat16, i32 4, <8 x i1> %37, <8 x float> undef), !tbaa !12, !alias.scope !42, !noalias !44
  %44 = fdiv <8 x float> %wide.masked.load, %wide.masked.gather, !fpmath !23
  %45 = getelementptr inbounds float, float* %12, i64 %41
  %46 = bitcast float* %45 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %44, <8 x float>* %46, i32 4, <8 x i1> %37), !tbaa !12, !alias.scope !44, !noalias !39, !llvm.access.group !24
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %47 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %48 = trunc <8 x i64> %47 to <8 x i32>
  %49 = icmp sgt <8 x i32> %broadcast.splat14, %48
  %50 = extractelement <8 x i32> %48, i32 0
  %51 = mul nsw i32 %24, %50
  %52 = add nsw i32 %51, %16
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %6, i64 %53
  %55 = bitcast float* %54 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %55, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !39
  %wide.masked.gather.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat16, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !42, !noalias !44
  %56 = fdiv <8 x float> %wide.masked.load.1, %wide.masked.gather.1, !fpmath !23
  %57 = getelementptr inbounds float, float* %12, i64 %53
  %58 = bitcast float* %57 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %56, <8 x float>* %58, i32 4, <8 x i1> %49), !tbaa !12, !alias.scope !44, !noalias !39, !llvm.access.group !24
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %59 = icmp eq i64 %index.next.1, 256
  br i1 %59, label %_pocl_kernel_gramschmidt_kernel2.exit.loopexit18, label %vector.body, !llvm.loop !46

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i.1, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ 0, %pregion_for_entry.entry.i.i.preheader ], [ %65, %if.end.r_exit.i.i.1 ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %20, %conv.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.r_exit.i.i

if.then.i.i:                                      ; preds = %pregion_for_entry.entry.i.i
  %mul.i.i = mul nsw i32 %24, %conv.i.i
  %add.i.i = add nsw i32 %mul.i.i, %16
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %6, i64 %idxprom.i.i
  %60 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %61 = load float, float* %arrayidx5.i.i, align 4, !tbaa !12
  %div.i.i = fdiv float %60, %61, !fpmath !23
  %arrayidx9.i.i = getelementptr inbounds float, float* %12, i64 %idxprom.i.i
  store float %div.i.i, float* %arrayidx9.i.i, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %if.then.i.i, %pregion_for_entry.entry.i.i
  %62 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %62, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %cmp.i.i.1 = icmp sgt i32 %20, %conv.i.i.1
  br i1 %cmp.i.i.1, label %if.then.i.i.1, label %if.end.r_exit.i.i.1

_pocl_kernel_gramschmidt_kernel2.exit.loopexit:   ; preds = %if.end.r_exit.i.i.1
  br label %_pocl_kernel_gramschmidt_kernel2.exit

_pocl_kernel_gramschmidt_kernel2.exit.loopexit18: ; preds = %vector.body
  br label %_pocl_kernel_gramschmidt_kernel2.exit

_pocl_kernel_gramschmidt_kernel2.exit:            ; preds = %_pocl_kernel_gramschmidt_kernel2.exit.loopexit18, %_pocl_kernel_gramschmidt_kernel2.exit.loopexit
  ret void

if.then.i.i.1:                                    ; preds = %if.end.r_exit.i.i
  %mul.i.i.1 = mul nsw i32 %24, %conv.i.i.1
  %add.i.i.1 = add nsw i32 %mul.i.i.1, %16
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.1
  %63 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12
  %64 = load float, float* %arrayidx5.i.i, align 4, !tbaa !12
  %div.i.i.1 = fdiv float %63, %64, !fpmath !23
  %arrayidx9.i.i.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.1
  store float %div.i.i.1, float* %arrayidx9.i.i.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.1

if.end.r_exit.i.i.1:                              ; preds = %if.then.i.i.1, %if.end.r_exit.i.i
  %65 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %65, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_gramschmidt_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !47
}

; Function Attrs: argmemonly nounwind readonly willreturn
declare <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>*, i32 immarg, <8 x i1>, <8 x float>) #2

; Function Attrs: nounwind readonly willreturn
declare <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*>, i32 immarg, <8 x i1>, <8 x float>) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.masked.store.v8f32.p0v8f32(<8 x float>, <8 x float>*, i32 immarg, <8 x i1>) #4

attributes #0 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree norecurse nounwind }
attributes #2 = { argmemonly nounwind readonly willreturn }
attributes #3 = { nounwind readonly willreturn }
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
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = !{!22}
!22 = distinct !{!22, !18}
!23 = !{float 2.500000e+00}
!24 = !{!25}
!25 = distinct !{}
!26 = distinct !{!26, !27, !28}
!27 = !{!"llvm.loop.parallel_accesses", !25}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = distinct !{!29, !27, !28}
!30 = !{!31}
!31 = distinct !{!31, !32}
!32 = distinct !{!32, !"LVerDomain"}
!33 = !{!34}
!34 = distinct !{!34, !32}
!35 = !{!36}
!36 = distinct !{!36, !32}
!37 = distinct !{!37, !27, !28}
!38 = distinct !{!38, !27, !28}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = !{!45}
!45 = distinct !{!45, !41}
!46 = distinct !{!46, !27, !28}
!47 = distinct !{!47, !27, !28}
