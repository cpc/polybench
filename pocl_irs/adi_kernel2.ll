; ModuleID = './BF/DFFLECFOLOBPKCKMNEPCKIANKJKKLLHBOGBCO/adi_kernel2/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_adi_kernel2(float* nocapture readnone %0, float* nocapture readonly %1, float* nocapture %2, i32 %3, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %4, i64 %5, i64 %6, i64 %7) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
vector.scevcheck:
  %mul.i.i = shl i64 %5, 8
  %sub.i = add nsw i32 %3, -1
  %ident.check.not = icmp eq i32 %3, 1
  br i1 %ident.check.not, label %vector.memcheck, label %pregion_for_entry.entry.i.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck
  %8 = trunc i64 %5 to i32
  %9 = shl i32 %8, 8
  %10 = sext i32 %9 to i64
  %scevgep = getelementptr float, float* %2, i64 %10
  %11 = add nsw i64 %10, 256
  %scevgep2 = getelementptr float, float* %2, i64 %11
  %scevgep4 = getelementptr float, float* %1, i64 %10
  %scevgep6 = getelementptr float, float* %1, i64 %11
  %bound0 = icmp ult float* %scevgep, %scevgep6
  %bound1 = icmp ult float* %scevgep4, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.preheader, label %vector.ph

pregion_for_entry.entry.i.preheader:              ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %vector.body ]
  %12 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %13 = trunc <8 x i64> %12 to <8 x i32>
  %14 = icmp slt <8 x i32> %13, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %15 = extractelement <8 x i32> %13, i32 0
  %16 = mul nsw i32 %15, %3
  %17 = add nsw i32 %sub.i, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, float* %2, i64 %18
  %20 = bitcast float* %19 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %20, i32 4, <8 x i1> %14, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %21 = getelementptr inbounds float, float* %1, i64 %18
  %22 = bitcast float* %21 to <8 x float>*
  %wide.masked.load8 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %22, i32 4, <8 x i1> %14, <8 x float> undef), !tbaa !12, !alias.scope !19
  %23 = fdiv <8 x float> %wide.masked.load, %wide.masked.load8, !fpmath !21
  %24 = bitcast float* %19 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %23, <8 x float>* %24, i32 4, <8 x i1> %14), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !22
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %25 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %26 = trunc <8 x i64> %25 to <8 x i32>
  %27 = icmp slt <8 x i32> %26, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %28 = extractelement <8 x i32> %26, i32 0
  %29 = mul nsw i32 %28, %3
  %30 = add nsw i32 %sub.i, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %2, i64 %31
  %33 = bitcast float* %32 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %33, i32 4, <8 x i1> %27, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %34 = getelementptr inbounds float, float* %1, i64 %31
  %35 = bitcast float* %34 to <8 x float>*
  %wide.masked.load8.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %35, i32 4, <8 x i1> %27, <8 x float> undef), !tbaa !12, !alias.scope !19
  %36 = fdiv <8 x float> %wide.masked.load.1, %wide.masked.load8.1, !fpmath !21
  %37 = bitcast float* %32 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %36, <8 x float>* %37, i32 4, <8 x i1> %27), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !22
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %38 = icmp eq i64 %index.next.1, 256
  br i1 %38, label %adi_kernel2.exit.loopexit10, label %vector.body, !llvm.loop !24

pregion_for_entry.entry.i:                        ; preds = %if.end.r_exit.i.1, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ 0, %pregion_for_entry.entry.i.preheader ], [ %44, %if.end.r_exit.i.1 ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %cmp.i = icmp slt i32 %conv.i, %3
  br i1 %cmp.i, label %if.then.i, label %if.end.r_exit.i

if.then.i:                                        ; preds = %pregion_for_entry.entry.i
  %mul.i = mul nsw i32 %conv.i, %3
  %add.i = add nsw i32 %sub.i, %mul.i
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %2, i64 %idxprom.i
  %39 = load float, float* %arrayidx.i, align 4, !tbaa !12
  %arrayidx6.i = getelementptr inbounds float, float* %1, i64 %idxprom.i
  %40 = load float, float* %arrayidx6.i, align 4, !tbaa !12
  %div.i = fdiv float %39, %40, !fpmath !21
  store float %div.i, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !22
  br label %if.end.r_exit.i

if.end.r_exit.i:                                  ; preds = %if.then.i, %pregion_for_entry.entry.i
  %41 = or i64 %_local_id_x.0, 1
  %add1.i.i.1 = add nuw nsw i64 %41, %mul.i.i
  %conv.i.1 = trunc i64 %add1.i.i.1 to i32
  %cmp.i.1 = icmp slt i32 %conv.i.1, %3
  br i1 %cmp.i.1, label %if.then.i.1, label %if.end.r_exit.i.1

adi_kernel2.exit.loopexit:                        ; preds = %if.end.r_exit.i.1
  br label %adi_kernel2.exit

adi_kernel2.exit.loopexit10:                      ; preds = %vector.body
  br label %adi_kernel2.exit

adi_kernel2.exit:                                 ; preds = %adi_kernel2.exit.loopexit10, %adi_kernel2.exit.loopexit
  ret void

if.then.i.1:                                      ; preds = %if.end.r_exit.i
  %mul.i.1 = mul nsw i32 %conv.i.1, %3
  %add.i.1 = add nsw i32 %sub.i, %mul.i.1
  %idxprom.i.1 = sext i32 %add.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.1
  %42 = load float, float* %arrayidx.i.1, align 4, !tbaa !12
  %arrayidx6.i.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.1
  %43 = load float, float* %arrayidx6.i.1, align 4, !tbaa !12
  %div.i.1 = fdiv float %42, %43, !fpmath !21
  store float %div.i.1, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !22
  br label %if.end.r_exit.i.1

if.end.r_exit.i.1:                                ; preds = %if.then.i.1, %if.end.r_exit.i
  %44 = add nuw nsw i64 %_local_id_x.0, 2
  %exitcond.not.1 = icmp eq i64 %44, 256
  br i1 %exitcond.not.1, label %adi_kernel2.exit.loopexit, label %pregion_for_entry.entry.i, !llvm.loop !27
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_adi_kernel2_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
vector.scevcheck:
  %5 = getelementptr i8*, i8** %0, i64 1
  %6 = bitcast i8** %5 to float***
  %7 = load float**, float*** %6, align 8
  %8 = load float*, float** %7, align 8
  %9 = getelementptr i8*, i8** %0, i64 2
  %10 = bitcast i8** %9 to float***
  %11 = load float**, float*** %10, align 8
  %12 = load float*, float** %11, align 8
  %13 = getelementptr i8*, i8** %0, i64 3
  %14 = bitcast i8** %13 to i32**
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %mul.i.i.i = shl i64 %2, 8
  %sub.i.i = add nsw i32 %16, -1
  %ident.check.not = icmp eq i32 %16, 1
  br i1 %ident.check.not, label %vector.memcheck, label %pregion_for_entry.entry.i.i.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck
  %17 = trunc i64 %2 to i32
  %18 = shl i32 %17, 8
  %19 = sext i32 %18 to i64
  %scevgep = getelementptr float, float* %12, i64 %19
  %20 = add nsw i64 %19, 256
  %scevgep2 = getelementptr float, float* %12, i64 %20
  %scevgep4 = getelementptr float, float* %8, i64 %19
  %scevgep6 = getelementptr float, float* %8, i64 %20
  %bound0 = icmp ult float* %scevgep, %scevgep6
  %bound1 = icmp ult float* %scevgep4, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.i.preheader, label %vector.ph

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %vector.body ]
  %21 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %22 = trunc <8 x i64> %21 to <8 x i32>
  %23 = icmp slt <8 x i32> %22, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %24 = extractelement <8 x i32> %22, i32 0
  %25 = mul nsw i32 %16, %24
  %26 = add nsw i32 %sub.i.i, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %12, i64 %27
  %29 = bitcast float* %28 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %29, i32 4, <8 x i1> %23, <8 x float> undef), !tbaa !12, !alias.scope !28, !noalias !31
  %30 = getelementptr inbounds float, float* %8, i64 %27
  %31 = bitcast float* %30 to <8 x float>*
  %wide.masked.load8 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %31, i32 4, <8 x i1> %23, <8 x float> undef), !tbaa !12, !alias.scope !31
  %32 = fdiv <8 x float> %wide.masked.load, %wide.masked.load8, !fpmath !21
  %33 = bitcast float* %28 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %32, <8 x float>* %33, i32 4, <8 x i1> %23), !tbaa !12, !alias.scope !28, !noalias !31, !llvm.access.group !22
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %34 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %35 = trunc <8 x i64> %34 to <8 x i32>
  %36 = icmp slt <8 x i32> %35, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %37 = extractelement <8 x i32> %35, i32 0
  %38 = mul nsw i32 %16, %37
  %39 = add nsw i32 %sub.i.i, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %12, i64 %40
  %42 = bitcast float* %41 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %42, i32 4, <8 x i1> %36, <8 x float> undef), !tbaa !12, !alias.scope !28, !noalias !31
  %43 = getelementptr inbounds float, float* %8, i64 %40
  %44 = bitcast float* %43 to <8 x float>*
  %wide.masked.load8.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %44, i32 4, <8 x i1> %36, <8 x float> undef), !tbaa !12, !alias.scope !31
  %45 = fdiv <8 x float> %wide.masked.load.1, %wide.masked.load8.1, !fpmath !21
  %46 = bitcast float* %41 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %45, <8 x float>* %46, i32 4, <8 x i1> %36), !tbaa !12, !alias.scope !28, !noalias !31, !llvm.access.group !22
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %47 = icmp eq i64 %index.next.1, 256
  br i1 %47, label %_pocl_kernel_adi_kernel2.exit.loopexit10, label %vector.body, !llvm.loop !33

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i.1, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ 0, %pregion_for_entry.entry.i.i.preheader ], [ %53, %if.end.r_exit.i.i.1 ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %16, %conv.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.r_exit.i.i

if.then.i.i:                                      ; preds = %pregion_for_entry.entry.i.i
  %mul.i.i = mul nsw i32 %16, %conv.i.i
  %add.i.i = add nsw i32 %sub.i.i, %mul.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %12, i64 %idxprom.i.i
  %48 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %arrayidx6.i.i = getelementptr inbounds float, float* %8, i64 %idxprom.i.i
  %49 = load float, float* %arrayidx6.i.i, align 4, !tbaa !12
  %div.i.i = fdiv float %48, %49, !fpmath !21
  store float %div.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !22
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %if.then.i.i, %pregion_for_entry.entry.i.i
  %50 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %50, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %cmp.i.i.1 = icmp sgt i32 %16, %conv.i.i.1
  br i1 %cmp.i.i.1, label %if.then.i.i.1, label %if.end.r_exit.i.i.1

_pocl_kernel_adi_kernel2.exit.loopexit:           ; preds = %if.end.r_exit.i.i.1
  br label %_pocl_kernel_adi_kernel2.exit

_pocl_kernel_adi_kernel2.exit.loopexit10:         ; preds = %vector.body
  br label %_pocl_kernel_adi_kernel2.exit

_pocl_kernel_adi_kernel2.exit:                    ; preds = %_pocl_kernel_adi_kernel2.exit.loopexit10, %_pocl_kernel_adi_kernel2.exit.loopexit
  ret void

if.then.i.i.1:                                    ; preds = %if.end.r_exit.i.i
  %mul.i.i.1 = mul nsw i32 %16, %conv.i.i.1
  %add.i.i.1 = add nsw i32 %sub.i.i, %mul.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.1
  %51 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12
  %arrayidx6.i.i.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.1
  %52 = load float, float* %arrayidx6.i.i.1, align 4, !tbaa !12
  %div.i.i.1 = fdiv float %51, %52, !fpmath !21
  store float %div.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !22
  br label %if.end.r_exit.i.i.1

if.end.r_exit.i.i.1:                              ; preds = %if.then.i.i.1, %if.end.r_exit.i.i
  %53 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %53, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_adi_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !34
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_adi_kernel2_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
vector.scevcheck:
  %5 = getelementptr i8*, i8** %0, i64 1
  %6 = bitcast i8** %5 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 2
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 3
  %12 = bitcast i8** %11 to i32**
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %mul.i.i.i = shl i64 %2, 8
  %sub.i.i = add nsw i32 %14, -1
  %ident.check.not = icmp eq i32 %14, 1
  br i1 %ident.check.not, label %vector.memcheck, label %pregion_for_entry.entry.i.i.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck
  %15 = trunc i64 %2 to i32
  %16 = shl i32 %15, 8
  %17 = sext i32 %16 to i64
  %scevgep = getelementptr float, float* %10, i64 %17
  %18 = add nsw i64 %17, 256
  %scevgep2 = getelementptr float, float* %10, i64 %18
  %scevgep4 = getelementptr float, float* %7, i64 %17
  %scevgep6 = getelementptr float, float* %7, i64 %18
  %bound0 = icmp ult float* %scevgep, %scevgep6
  %bound1 = icmp ult float* %scevgep4, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.i.preheader, label %vector.ph

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %vector.body ]
  %19 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %20 = trunc <8 x i64> %19 to <8 x i32>
  %21 = icmp slt <8 x i32> %20, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %22 = extractelement <8 x i32> %20, i32 0
  %23 = mul nsw i32 %14, %22
  %24 = add nsw i32 %sub.i.i, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %10, i64 %25
  %27 = bitcast float* %26 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %27, i32 4, <8 x i1> %21, <8 x float> undef), !tbaa !12, !alias.scope !35, !noalias !38
  %28 = getelementptr inbounds float, float* %7, i64 %25
  %29 = bitcast float* %28 to <8 x float>*
  %wide.masked.load8 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %29, i32 4, <8 x i1> %21, <8 x float> undef), !tbaa !12, !alias.scope !38
  %30 = fdiv <8 x float> %wide.masked.load, %wide.masked.load8, !fpmath !21
  %31 = bitcast float* %26 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %30, <8 x float>* %31, i32 4, <8 x i1> %21), !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !22
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %32 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %33 = trunc <8 x i64> %32 to <8 x i32>
  %34 = icmp slt <8 x i32> %33, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %35 = extractelement <8 x i32> %33, i32 0
  %36 = mul nsw i32 %14, %35
  %37 = add nsw i32 %sub.i.i, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %10, i64 %38
  %40 = bitcast float* %39 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %40, i32 4, <8 x i1> %34, <8 x float> undef), !tbaa !12, !alias.scope !35, !noalias !38
  %41 = getelementptr inbounds float, float* %7, i64 %38
  %42 = bitcast float* %41 to <8 x float>*
  %wide.masked.load8.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %42, i32 4, <8 x i1> %34, <8 x float> undef), !tbaa !12, !alias.scope !38
  %43 = fdiv <8 x float> %wide.masked.load.1, %wide.masked.load8.1, !fpmath !21
  %44 = bitcast float* %39 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %43, <8 x float>* %44, i32 4, <8 x i1> %34), !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !22
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %45 = icmp eq i64 %index.next.1, 256
  br i1 %45, label %_pocl_kernel_adi_kernel2.exit.loopexit10, label %vector.body, !llvm.loop !40

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i.1, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ 0, %pregion_for_entry.entry.i.i.preheader ], [ %51, %if.end.r_exit.i.i.1 ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %14, %conv.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.r_exit.i.i

if.then.i.i:                                      ; preds = %pregion_for_entry.entry.i.i
  %mul.i.i = mul nsw i32 %14, %conv.i.i
  %add.i.i = add nsw i32 %sub.i.i, %mul.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %10, i64 %idxprom.i.i
  %46 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %arrayidx6.i.i = getelementptr inbounds float, float* %7, i64 %idxprom.i.i
  %47 = load float, float* %arrayidx6.i.i, align 4, !tbaa !12
  %div.i.i = fdiv float %46, %47, !fpmath !21
  store float %div.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !22
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %if.then.i.i, %pregion_for_entry.entry.i.i
  %48 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %48, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %cmp.i.i.1 = icmp sgt i32 %14, %conv.i.i.1
  br i1 %cmp.i.i.1, label %if.then.i.i.1, label %if.end.r_exit.i.i.1

_pocl_kernel_adi_kernel2.exit.loopexit:           ; preds = %if.end.r_exit.i.i.1
  br label %_pocl_kernel_adi_kernel2.exit

_pocl_kernel_adi_kernel2.exit.loopexit10:         ; preds = %vector.body
  br label %_pocl_kernel_adi_kernel2.exit

_pocl_kernel_adi_kernel2.exit:                    ; preds = %_pocl_kernel_adi_kernel2.exit.loopexit10, %_pocl_kernel_adi_kernel2.exit.loopexit
  ret void

if.then.i.i.1:                                    ; preds = %if.end.r_exit.i.i
  %mul.i.i.1 = mul nsw i32 %14, %conv.i.i.1
  %add.i.i.1 = add nsw i32 %sub.i.i, %mul.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.1
  %49 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12
  %arrayidx6.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.1
  %50 = load float, float* %arrayidx6.i.i.1, align 4, !tbaa !12
  %div.i.i.1 = fdiv float %49, %50, !fpmath !21
  store float %div.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !22
  br label %if.end.r_exit.i.i.1

if.end.r_exit.i.i.1:                              ; preds = %if.then.i.i.1, %if.end.r_exit.i.i
  %51 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %51, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_adi_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !41
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
!21 = !{float 2.500000e+00}
!22 = !{!23}
!23 = distinct !{}
!24 = distinct !{!24, !25, !26}
!25 = !{!"llvm.loop.parallel_accesses", !23}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = distinct !{!27, !25, !26}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = !{!32}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !25, !26}
!34 = distinct !{!34, !25, !26}
!35 = !{!36}
!36 = distinct !{!36, !37}
!37 = distinct !{!37, !"LVerDomain"}
!38 = !{!39}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !25, !26}
!41 = distinct !{!41, !25, !26}
