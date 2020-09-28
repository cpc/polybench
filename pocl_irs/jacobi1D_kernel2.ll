; ModuleID = './BM/NHBDLHALCILAIHDELFFBPNKBMKDJOKFCBHJHI/runJacobi1D_kernel2/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_runJacobi1D_kernel2(float* nocapture %0, float* nocapture readonly %1, i32 %2, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %3, i64 %4, i64 %5, i64 %6) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
vector.memcheck:
  %mul.i.i = shl i64 %4, 8
  %sub.i = add nsw i32 %2, -1
  %7 = trunc i64 %4 to i32
  %8 = shl i32 %7, 8
  %9 = sext i32 %8 to i64
  %scevgep = getelementptr float, float* %0, i64 %9
  %10 = add nsw i64 %9, 256
  %scevgep2 = getelementptr float, float* %0, i64 %10
  %scevgep4 = getelementptr float, float* %1, i64 %9
  %scevgep6 = getelementptr float, float* %1, i64 %10
  %bound0 = icmp ult float* %scevgep, %scevgep6
  %bound1 = icmp ult float* %scevgep4, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.preheader, label %vector.ph

pregion_for_entry.entry.i.preheader:              ; preds = %vector.memcheck
  br label %pregion_for_entry.entry.i

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert8 = insertelement <8 x i32> undef, i32 %sub.i, i32 0
  %broadcast.splat9 = shufflevector <8 x i32> %broadcast.splatinsert8, <8 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.3, %vector.body ]
  %11 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %12 = trunc <8 x i64> %11 to <8 x i32>
  %13 = icmp sgt <8 x i32> %12, zeroinitializer
  %14 = icmp sgt <8 x i32> %broadcast.splat9, %12
  %15 = and <8 x i1> %13, %14
  %16 = extractelement <8 x i64> %11, i32 0
  %17 = shl i64 %16, 32
  %18 = ashr exact i64 %17, 32
  %19 = getelementptr inbounds float, float* %1, i64 %18
  %20 = bitcast float* %19 to <8 x i32>*
  %wide.masked.load = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %20, i32 4, <8 x i1> %15, <8 x i32> undef), !tbaa !12, !alias.scope !16
  %21 = getelementptr inbounds float, float* %0, i64 %18
  %22 = bitcast float* %21 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load, <8 x i32>* %22, i32 4, <8 x i1> %15), !tbaa !12, !alias.scope !19, !noalias !16, !llvm.access.group !21
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %23 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %24 = trunc <8 x i64> %23 to <8 x i32>
  %25 = icmp sgt <8 x i32> %24, zeroinitializer
  %26 = icmp sgt <8 x i32> %broadcast.splat9, %24
  %27 = and <8 x i1> %25, %26
  %28 = extractelement <8 x i64> %23, i32 0
  %29 = shl i64 %28, 32
  %30 = ashr exact i64 %29, 32
  %31 = getelementptr inbounds float, float* %1, i64 %30
  %32 = bitcast float* %31 to <8 x i32>*
  %wide.masked.load.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %32, i32 4, <8 x i1> %27, <8 x i32> undef), !tbaa !12, !alias.scope !16
  %33 = getelementptr inbounds float, float* %0, i64 %30
  %34 = bitcast float* %33 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.1, <8 x i32>* %34, i32 4, <8 x i1> %27), !tbaa !12, !alias.scope !19, !noalias !16, !llvm.access.group !21
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %35 = add nuw nsw <8 x i64> %vec.ind.next.1, %broadcast.splat
  %36 = trunc <8 x i64> %35 to <8 x i32>
  %37 = icmp sgt <8 x i32> %36, zeroinitializer
  %38 = icmp sgt <8 x i32> %broadcast.splat9, %36
  %39 = and <8 x i1> %37, %38
  %40 = extractelement <8 x i64> %35, i32 0
  %41 = shl i64 %40, 32
  %42 = ashr exact i64 %41, 32
  %43 = getelementptr inbounds float, float* %1, i64 %42
  %44 = bitcast float* %43 to <8 x i32>*
  %wide.masked.load.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %44, i32 4, <8 x i1> %39, <8 x i32> undef), !tbaa !12, !alias.scope !16
  %45 = getelementptr inbounds float, float* %0, i64 %42
  %46 = bitcast float* %45 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.2, <8 x i32>* %46, i32 4, <8 x i1> %39), !tbaa !12, !alias.scope !19, !noalias !16, !llvm.access.group !21
  %vec.ind.next.2 = add <8 x i64> %vec.ind, <i64 24, i64 24, i64 24, i64 24, i64 24, i64 24, i64 24, i64 24>
  %47 = add nuw nsw <8 x i64> %vec.ind.next.2, %broadcast.splat
  %48 = trunc <8 x i64> %47 to <8 x i32>
  %49 = icmp sgt <8 x i32> %48, zeroinitializer
  %50 = icmp sgt <8 x i32> %broadcast.splat9, %48
  %51 = and <8 x i1> %49, %50
  %52 = extractelement <8 x i64> %47, i32 0
  %53 = shl i64 %52, 32
  %54 = ashr exact i64 %53, 32
  %55 = getelementptr inbounds float, float* %1, i64 %54
  %56 = bitcast float* %55 to <8 x i32>*
  %wide.masked.load.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %56, i32 4, <8 x i1> %51, <8 x i32> undef), !tbaa !12, !alias.scope !16
  %57 = getelementptr inbounds float, float* %0, i64 %54
  %58 = bitcast float* %57 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.3, <8 x i32>* %58, i32 4, <8 x i1> %51), !tbaa !12, !alias.scope !19, !noalias !16, !llvm.access.group !21
  %index.next.3 = add nuw nsw i64 %index, 32
  %vec.ind.next.3 = add <8 x i64> %vec.ind, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %59 = icmp eq i64 %index.next.3, 256
  br i1 %59, label %runJacobi1D_kernel2.exit.loopexit11, label %vector.body, !llvm.loop !23

pregion_for_entry.entry.i:                        ; preds = %if.end.r_exit.i.3, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ %75, %if.end.r_exit.i.3 ], [ 0, %pregion_for_entry.entry.i.preheader ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %cmp.i = icmp sgt i32 %conv.i, 0
  %cmp2.i = icmp sgt i32 %sub.i, %conv.i
  %or.cond.i = and i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.r_exit.i

if.then.i:                                        ; preds = %pregion_for_entry.entry.i
  %sext.i = shl i64 %add1.i.i, 32
  %idxprom.i = ashr exact i64 %sext.i, 32
  %arrayidx.i = getelementptr inbounds float, float* %1, i64 %idxprom.i
  %60 = bitcast float* %arrayidx.i to i32*
  %61 = load i32, i32* %60, align 4, !tbaa !12
  %arrayidx5.i = getelementptr inbounds float, float* %0, i64 %idxprom.i
  %62 = bitcast float* %arrayidx5.i to i32*
  store i32 %61, i32* %62, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i

if.end.r_exit.i:                                  ; preds = %if.then.i, %pregion_for_entry.entry.i
  %63 = or i64 %_local_id_x.0, 1
  %add1.i.i.1 = add nuw nsw i64 %63, %mul.i.i
  %conv.i.1 = trunc i64 %add1.i.i.1 to i32
  %cmp.i.1 = icmp sgt i32 %conv.i.1, 0
  %cmp2.i.1 = icmp sgt i32 %sub.i, %conv.i.1
  %or.cond.i.1 = and i1 %cmp.i.1, %cmp2.i.1
  br i1 %or.cond.i.1, label %if.then.i.1, label %if.end.r_exit.i.1

runJacobi1D_kernel2.exit.loopexit:                ; preds = %if.end.r_exit.i.3
  br label %runJacobi1D_kernel2.exit

runJacobi1D_kernel2.exit.loopexit11:              ; preds = %vector.body
  br label %runJacobi1D_kernel2.exit

runJacobi1D_kernel2.exit:                         ; preds = %runJacobi1D_kernel2.exit.loopexit11, %runJacobi1D_kernel2.exit.loopexit
  ret void

if.then.i.1:                                      ; preds = %if.end.r_exit.i
  %sext.i.1 = shl i64 %add1.i.i.1, 32
  %idxprom.i.1 = ashr exact i64 %sext.i.1, 32
  %arrayidx.i.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.1
  %64 = bitcast float* %arrayidx.i.1 to i32*
  %65 = load i32, i32* %64, align 4, !tbaa !12
  %arrayidx5.i.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.1
  %66 = bitcast float* %arrayidx5.i.1 to i32*
  store i32 %65, i32* %66, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.1

if.end.r_exit.i.1:                                ; preds = %if.then.i.1, %if.end.r_exit.i
  %67 = or i64 %_local_id_x.0, 2
  %add1.i.i.2 = add nuw nsw i64 %67, %mul.i.i
  %conv.i.2 = trunc i64 %add1.i.i.2 to i32
  %cmp.i.2 = icmp sgt i32 %conv.i.2, 0
  %cmp2.i.2 = icmp sgt i32 %sub.i, %conv.i.2
  %or.cond.i.2 = and i1 %cmp.i.2, %cmp2.i.2
  br i1 %or.cond.i.2, label %if.then.i.2, label %if.end.r_exit.i.2

if.then.i.2:                                      ; preds = %if.end.r_exit.i.1
  %sext.i.2 = shl i64 %add1.i.i.2, 32
  %idxprom.i.2 = ashr exact i64 %sext.i.2, 32
  %arrayidx.i.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.2
  %68 = bitcast float* %arrayidx.i.2 to i32*
  %69 = load i32, i32* %68, align 4, !tbaa !12
  %arrayidx5.i.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.2
  %70 = bitcast float* %arrayidx5.i.2 to i32*
  store i32 %69, i32* %70, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.2

if.end.r_exit.i.2:                                ; preds = %if.then.i.2, %if.end.r_exit.i.1
  %71 = or i64 %_local_id_x.0, 3
  %add1.i.i.3 = add nuw nsw i64 %71, %mul.i.i
  %conv.i.3 = trunc i64 %add1.i.i.3 to i32
  %cmp.i.3 = icmp sgt i32 %conv.i.3, 0
  %cmp2.i.3 = icmp sgt i32 %sub.i, %conv.i.3
  %or.cond.i.3 = and i1 %cmp.i.3, %cmp2.i.3
  br i1 %or.cond.i.3, label %if.then.i.3, label %if.end.r_exit.i.3

if.then.i.3:                                      ; preds = %if.end.r_exit.i.2
  %sext.i.3 = shl i64 %add1.i.i.3, 32
  %idxprom.i.3 = ashr exact i64 %sext.i.3, 32
  %arrayidx.i.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.3
  %72 = bitcast float* %arrayidx.i.3 to i32*
  %73 = load i32, i32* %72, align 4, !tbaa !12
  %arrayidx5.i.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.3
  %74 = bitcast float* %arrayidx5.i.3 to i32*
  store i32 %73, i32* %74, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.3

if.end.r_exit.i.3:                                ; preds = %if.then.i.3, %if.end.r_exit.i.2
  %75 = add nuw nsw i64 %_local_id_x.0, 4
  %exitcond.not.3 = icmp eq i64 %75, 256
  br i1 %exitcond.not.3, label %runJacobi1D_kernel2.exit.loopexit, label %pregion_for_entry.entry.i, !llvm.loop !26
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_runJacobi1D_kernel2_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
vector.memcheck:
  %5 = bitcast i8** %0 to float***
  %6 = load float**, float*** %5, align 8
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float***
  %10 = load float**, float*** %9, align 8
  %11 = load float*, float** %10, align 8
  %12 = getelementptr i8*, i8** %0, i64 2
  %13 = bitcast i8** %12 to i32**
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %mul.i.i.i = shl i64 %2, 8
  %sub.i.i = add nsw i32 %15, -1
  %16 = trunc i64 %2 to i32
  %17 = shl i32 %16, 8
  %18 = sext i32 %17 to i64
  %scevgep = getelementptr float, float* %7, i64 %18
  %19 = add nsw i64 %18, 256
  %scevgep2 = getelementptr float, float* %7, i64 %19
  %scevgep4 = getelementptr float, float* %11, i64 %18
  %scevgep6 = getelementptr float, float* %11, i64 %19
  %bound0 = icmp ult float* %scevgep, %scevgep6
  %bound1 = icmp ult float* %scevgep4, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.i.preheader, label %vector.ph

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck
  br label %pregion_for_entry.entry.i.i

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert8 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat9 = shufflevector <8 x i32> %broadcast.splatinsert8, <8 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.3, %vector.body ]
  %20 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %21 = trunc <8 x i64> %20 to <8 x i32>
  %22 = icmp sgt <8 x i32> %21, zeroinitializer
  %23 = icmp sgt <8 x i32> %broadcast.splat9, %21
  %24 = and <8 x i1> %22, %23
  %25 = extractelement <8 x i64> %20, i32 0
  %26 = shl i64 %25, 32
  %27 = ashr exact i64 %26, 32
  %28 = getelementptr inbounds float, float* %11, i64 %27
  %29 = bitcast float* %28 to <8 x i32>*
  %wide.masked.load = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %29, i32 4, <8 x i1> %24, <8 x i32> undef), !tbaa !12, !alias.scope !27
  %30 = getelementptr inbounds float, float* %7, i64 %27
  %31 = bitcast float* %30 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load, <8 x i32>* %31, i32 4, <8 x i1> %24), !tbaa !12, !alias.scope !30, !noalias !27, !llvm.access.group !21
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %32 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %33 = trunc <8 x i64> %32 to <8 x i32>
  %34 = icmp sgt <8 x i32> %33, zeroinitializer
  %35 = icmp sgt <8 x i32> %broadcast.splat9, %33
  %36 = and <8 x i1> %34, %35
  %37 = extractelement <8 x i64> %32, i32 0
  %38 = shl i64 %37, 32
  %39 = ashr exact i64 %38, 32
  %40 = getelementptr inbounds float, float* %11, i64 %39
  %41 = bitcast float* %40 to <8 x i32>*
  %wide.masked.load.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %41, i32 4, <8 x i1> %36, <8 x i32> undef), !tbaa !12, !alias.scope !27
  %42 = getelementptr inbounds float, float* %7, i64 %39
  %43 = bitcast float* %42 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.1, <8 x i32>* %43, i32 4, <8 x i1> %36), !tbaa !12, !alias.scope !30, !noalias !27, !llvm.access.group !21
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %44 = add nuw nsw <8 x i64> %vec.ind.next.1, %broadcast.splat
  %45 = trunc <8 x i64> %44 to <8 x i32>
  %46 = icmp sgt <8 x i32> %45, zeroinitializer
  %47 = icmp sgt <8 x i32> %broadcast.splat9, %45
  %48 = and <8 x i1> %46, %47
  %49 = extractelement <8 x i64> %44, i32 0
  %50 = shl i64 %49, 32
  %51 = ashr exact i64 %50, 32
  %52 = getelementptr inbounds float, float* %11, i64 %51
  %53 = bitcast float* %52 to <8 x i32>*
  %wide.masked.load.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %53, i32 4, <8 x i1> %48, <8 x i32> undef), !tbaa !12, !alias.scope !27
  %54 = getelementptr inbounds float, float* %7, i64 %51
  %55 = bitcast float* %54 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.2, <8 x i32>* %55, i32 4, <8 x i1> %48), !tbaa !12, !alias.scope !30, !noalias !27, !llvm.access.group !21
  %vec.ind.next.2 = add <8 x i64> %vec.ind, <i64 24, i64 24, i64 24, i64 24, i64 24, i64 24, i64 24, i64 24>
  %56 = add nuw nsw <8 x i64> %vec.ind.next.2, %broadcast.splat
  %57 = trunc <8 x i64> %56 to <8 x i32>
  %58 = icmp sgt <8 x i32> %57, zeroinitializer
  %59 = icmp sgt <8 x i32> %broadcast.splat9, %57
  %60 = and <8 x i1> %58, %59
  %61 = extractelement <8 x i64> %56, i32 0
  %62 = shl i64 %61, 32
  %63 = ashr exact i64 %62, 32
  %64 = getelementptr inbounds float, float* %11, i64 %63
  %65 = bitcast float* %64 to <8 x i32>*
  %wide.masked.load.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %65, i32 4, <8 x i1> %60, <8 x i32> undef), !tbaa !12, !alias.scope !27
  %66 = getelementptr inbounds float, float* %7, i64 %63
  %67 = bitcast float* %66 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.3, <8 x i32>* %67, i32 4, <8 x i1> %60), !tbaa !12, !alias.scope !30, !noalias !27, !llvm.access.group !21
  %index.next.3 = add nuw nsw i64 %index, 32
  %vec.ind.next.3 = add <8 x i64> %vec.ind, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %68 = icmp eq i64 %index.next.3, 256
  br i1 %68, label %_pocl_kernel_runJacobi1D_kernel2.exit.loopexit11, label %vector.body, !llvm.loop !32

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i.3, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %84, %if.end.r_exit.i.i.3 ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %conv.i.i, 0
  %cmp2.i.i = icmp sgt i32 %sub.i.i, %conv.i.i
  %or.cond.i.i = and i1 %cmp.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end.r_exit.i.i

if.then.i.i:                                      ; preds = %pregion_for_entry.entry.i.i
  %sext.i.i = shl i64 %add1.i.i.i, 32
  %idxprom.i.i = ashr exact i64 %sext.i.i, 32
  %arrayidx.i.i = getelementptr inbounds float, float* %11, i64 %idxprom.i.i
  %69 = bitcast float* %arrayidx.i.i to i32*
  %70 = load i32, i32* %69, align 4, !tbaa !12
  %arrayidx5.i.i = getelementptr inbounds float, float* %7, i64 %idxprom.i.i
  %71 = bitcast float* %arrayidx5.i.i to i32*
  store i32 %70, i32* %71, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %if.then.i.i, %pregion_for_entry.entry.i.i
  %72 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %72, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %cmp.i.i.1 = icmp sgt i32 %conv.i.i.1, 0
  %cmp2.i.i.1 = icmp sgt i32 %sub.i.i, %conv.i.i.1
  %or.cond.i.i.1 = and i1 %cmp.i.i.1, %cmp2.i.i.1
  br i1 %or.cond.i.i.1, label %if.then.i.i.1, label %if.end.r_exit.i.i.1

_pocl_kernel_runJacobi1D_kernel2.exit.loopexit:   ; preds = %if.end.r_exit.i.i.3
  br label %_pocl_kernel_runJacobi1D_kernel2.exit

_pocl_kernel_runJacobi1D_kernel2.exit.loopexit11: ; preds = %vector.body
  br label %_pocl_kernel_runJacobi1D_kernel2.exit

_pocl_kernel_runJacobi1D_kernel2.exit:            ; preds = %_pocl_kernel_runJacobi1D_kernel2.exit.loopexit11, %_pocl_kernel_runJacobi1D_kernel2.exit.loopexit
  ret void

if.then.i.i.1:                                    ; preds = %if.end.r_exit.i.i
  %sext.i.i.1 = shl i64 %add1.i.i.i.1, 32
  %idxprom.i.i.1 = ashr exact i64 %sext.i.i.1, 32
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.1
  %73 = bitcast float* %arrayidx.i.i.1 to i32*
  %74 = load i32, i32* %73, align 4, !tbaa !12
  %arrayidx5.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.1
  %75 = bitcast float* %arrayidx5.i.i.1 to i32*
  store i32 %74, i32* %75, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.1

if.end.r_exit.i.i.1:                              ; preds = %if.then.i.i.1, %if.end.r_exit.i.i
  %76 = or i64 %_local_id_x.i.0, 2
  %add1.i.i.i.2 = add nuw nsw i64 %76, %mul.i.i.i
  %conv.i.i.2 = trunc i64 %add1.i.i.i.2 to i32
  %cmp.i.i.2 = icmp sgt i32 %conv.i.i.2, 0
  %cmp2.i.i.2 = icmp sgt i32 %sub.i.i, %conv.i.i.2
  %or.cond.i.i.2 = and i1 %cmp.i.i.2, %cmp2.i.i.2
  br i1 %or.cond.i.i.2, label %if.then.i.i.2, label %if.end.r_exit.i.i.2

if.then.i.i.2:                                    ; preds = %if.end.r_exit.i.i.1
  %sext.i.i.2 = shl i64 %add1.i.i.i.2, 32
  %idxprom.i.i.2 = ashr exact i64 %sext.i.i.2, 32
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.2
  %77 = bitcast float* %arrayidx.i.i.2 to i32*
  %78 = load i32, i32* %77, align 4, !tbaa !12
  %arrayidx5.i.i.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.2
  %79 = bitcast float* %arrayidx5.i.i.2 to i32*
  store i32 %78, i32* %79, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.2

if.end.r_exit.i.i.2:                              ; preds = %if.then.i.i.2, %if.end.r_exit.i.i.1
  %80 = or i64 %_local_id_x.i.0, 3
  %add1.i.i.i.3 = add nuw nsw i64 %80, %mul.i.i.i
  %conv.i.i.3 = trunc i64 %add1.i.i.i.3 to i32
  %cmp.i.i.3 = icmp sgt i32 %conv.i.i.3, 0
  %cmp2.i.i.3 = icmp sgt i32 %sub.i.i, %conv.i.i.3
  %or.cond.i.i.3 = and i1 %cmp.i.i.3, %cmp2.i.i.3
  br i1 %or.cond.i.i.3, label %if.then.i.i.3, label %if.end.r_exit.i.i.3

if.then.i.i.3:                                    ; preds = %if.end.r_exit.i.i.2
  %sext.i.i.3 = shl i64 %add1.i.i.i.3, 32
  %idxprom.i.i.3 = ashr exact i64 %sext.i.i.3, 32
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.3
  %81 = bitcast float* %arrayidx.i.i.3 to i32*
  %82 = load i32, i32* %81, align 4, !tbaa !12
  %arrayidx5.i.i.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.3
  %83 = bitcast float* %arrayidx5.i.i.3 to i32*
  store i32 %82, i32* %83, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.3

if.end.r_exit.i.i.3:                              ; preds = %if.then.i.i.3, %if.end.r_exit.i.i.2
  %84 = add nuw nsw i64 %_local_id_x.i.0, 4
  %exitcond.not.3 = icmp eq i64 %84, 256
  br i1 %exitcond.not.3, label %_pocl_kernel_runJacobi1D_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !33
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_runJacobi1D_kernel2_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
vector.memcheck:
  %5 = bitcast i8** %0 to float**
  %6 = load float*, float** %5, align 8
  %7 = getelementptr i8*, i8** %0, i64 1
  %8 = bitcast i8** %7 to float**
  %9 = load float*, float** %8, align 8
  %10 = getelementptr i8*, i8** %0, i64 2
  %11 = bitcast i8** %10 to i32**
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %mul.i.i.i = shl i64 %2, 8
  %sub.i.i = add nsw i32 %13, -1
  %14 = trunc i64 %2 to i32
  %15 = shl i32 %14, 8
  %16 = sext i32 %15 to i64
  %scevgep = getelementptr float, float* %6, i64 %16
  %17 = add nsw i64 %16, 256
  %scevgep2 = getelementptr float, float* %6, i64 %17
  %scevgep4 = getelementptr float, float* %9, i64 %16
  %scevgep6 = getelementptr float, float* %9, i64 %17
  %bound0 = icmp ult float* %scevgep, %scevgep6
  %bound1 = icmp ult float* %scevgep4, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.i.preheader, label %vector.ph

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck
  br label %pregion_for_entry.entry.i.i

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert8 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat9 = shufflevector <8 x i32> %broadcast.splatinsert8, <8 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.3, %vector.body ]
  %18 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %19 = trunc <8 x i64> %18 to <8 x i32>
  %20 = icmp sgt <8 x i32> %19, zeroinitializer
  %21 = icmp sgt <8 x i32> %broadcast.splat9, %19
  %22 = and <8 x i1> %20, %21
  %23 = extractelement <8 x i64> %18, i32 0
  %24 = shl i64 %23, 32
  %25 = ashr exact i64 %24, 32
  %26 = getelementptr inbounds float, float* %9, i64 %25
  %27 = bitcast float* %26 to <8 x i32>*
  %wide.masked.load = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %27, i32 4, <8 x i1> %22, <8 x i32> undef), !tbaa !12, !alias.scope !34
  %28 = getelementptr inbounds float, float* %6, i64 %25
  %29 = bitcast float* %28 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load, <8 x i32>* %29, i32 4, <8 x i1> %22), !tbaa !12, !alias.scope !37, !noalias !34, !llvm.access.group !21
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %30 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %31 = trunc <8 x i64> %30 to <8 x i32>
  %32 = icmp sgt <8 x i32> %31, zeroinitializer
  %33 = icmp sgt <8 x i32> %broadcast.splat9, %31
  %34 = and <8 x i1> %32, %33
  %35 = extractelement <8 x i64> %30, i32 0
  %36 = shl i64 %35, 32
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds float, float* %9, i64 %37
  %39 = bitcast float* %38 to <8 x i32>*
  %wide.masked.load.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %39, i32 4, <8 x i1> %34, <8 x i32> undef), !tbaa !12, !alias.scope !34
  %40 = getelementptr inbounds float, float* %6, i64 %37
  %41 = bitcast float* %40 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.1, <8 x i32>* %41, i32 4, <8 x i1> %34), !tbaa !12, !alias.scope !37, !noalias !34, !llvm.access.group !21
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %42 = add nuw nsw <8 x i64> %vec.ind.next.1, %broadcast.splat
  %43 = trunc <8 x i64> %42 to <8 x i32>
  %44 = icmp sgt <8 x i32> %43, zeroinitializer
  %45 = icmp sgt <8 x i32> %broadcast.splat9, %43
  %46 = and <8 x i1> %44, %45
  %47 = extractelement <8 x i64> %42, i32 0
  %48 = shl i64 %47, 32
  %49 = ashr exact i64 %48, 32
  %50 = getelementptr inbounds float, float* %9, i64 %49
  %51 = bitcast float* %50 to <8 x i32>*
  %wide.masked.load.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %51, i32 4, <8 x i1> %46, <8 x i32> undef), !tbaa !12, !alias.scope !34
  %52 = getelementptr inbounds float, float* %6, i64 %49
  %53 = bitcast float* %52 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.2, <8 x i32>* %53, i32 4, <8 x i1> %46), !tbaa !12, !alias.scope !37, !noalias !34, !llvm.access.group !21
  %vec.ind.next.2 = add <8 x i64> %vec.ind, <i64 24, i64 24, i64 24, i64 24, i64 24, i64 24, i64 24, i64 24>
  %54 = add nuw nsw <8 x i64> %vec.ind.next.2, %broadcast.splat
  %55 = trunc <8 x i64> %54 to <8 x i32>
  %56 = icmp sgt <8 x i32> %55, zeroinitializer
  %57 = icmp sgt <8 x i32> %broadcast.splat9, %55
  %58 = and <8 x i1> %56, %57
  %59 = extractelement <8 x i64> %54, i32 0
  %60 = shl i64 %59, 32
  %61 = ashr exact i64 %60, 32
  %62 = getelementptr inbounds float, float* %9, i64 %61
  %63 = bitcast float* %62 to <8 x i32>*
  %wide.masked.load.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %63, i32 4, <8 x i1> %58, <8 x i32> undef), !tbaa !12, !alias.scope !34
  %64 = getelementptr inbounds float, float* %6, i64 %61
  %65 = bitcast float* %64 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.3, <8 x i32>* %65, i32 4, <8 x i1> %58), !tbaa !12, !alias.scope !37, !noalias !34, !llvm.access.group !21
  %index.next.3 = add nuw nsw i64 %index, 32
  %vec.ind.next.3 = add <8 x i64> %vec.ind, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %66 = icmp eq i64 %index.next.3, 256
  br i1 %66, label %_pocl_kernel_runJacobi1D_kernel2.exit.loopexit11, label %vector.body, !llvm.loop !39

pregion_for_entry.entry.i.i:                      ; preds = %if.end.r_exit.i.i.3, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %82, %if.end.r_exit.i.i.3 ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %conv.i.i, 0
  %cmp2.i.i = icmp sgt i32 %sub.i.i, %conv.i.i
  %or.cond.i.i = and i1 %cmp.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end.r_exit.i.i

if.then.i.i:                                      ; preds = %pregion_for_entry.entry.i.i
  %sext.i.i = shl i64 %add1.i.i.i, 32
  %idxprom.i.i = ashr exact i64 %sext.i.i, 32
  %arrayidx.i.i = getelementptr inbounds float, float* %9, i64 %idxprom.i.i
  %67 = bitcast float* %arrayidx.i.i to i32*
  %68 = load i32, i32* %67, align 4, !tbaa !12
  %arrayidx5.i.i = getelementptr inbounds float, float* %6, i64 %idxprom.i.i
  %69 = bitcast float* %arrayidx5.i.i to i32*
  store i32 %68, i32* %69, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i

if.end.r_exit.i.i:                                ; preds = %if.then.i.i, %pregion_for_entry.entry.i.i
  %70 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %70, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %cmp.i.i.1 = icmp sgt i32 %conv.i.i.1, 0
  %cmp2.i.i.1 = icmp sgt i32 %sub.i.i, %conv.i.i.1
  %or.cond.i.i.1 = and i1 %cmp.i.i.1, %cmp2.i.i.1
  br i1 %or.cond.i.i.1, label %if.then.i.i.1, label %if.end.r_exit.i.i.1

_pocl_kernel_runJacobi1D_kernel2.exit.loopexit:   ; preds = %if.end.r_exit.i.i.3
  br label %_pocl_kernel_runJacobi1D_kernel2.exit

_pocl_kernel_runJacobi1D_kernel2.exit.loopexit11: ; preds = %vector.body
  br label %_pocl_kernel_runJacobi1D_kernel2.exit

_pocl_kernel_runJacobi1D_kernel2.exit:            ; preds = %_pocl_kernel_runJacobi1D_kernel2.exit.loopexit11, %_pocl_kernel_runJacobi1D_kernel2.exit.loopexit
  ret void

if.then.i.i.1:                                    ; preds = %if.end.r_exit.i.i
  %sext.i.i.1 = shl i64 %add1.i.i.i.1, 32
  %idxprom.i.i.1 = ashr exact i64 %sext.i.i.1, 32
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.1
  %71 = bitcast float* %arrayidx.i.i.1 to i32*
  %72 = load i32, i32* %71, align 4, !tbaa !12
  %arrayidx5.i.i.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.1
  %73 = bitcast float* %arrayidx5.i.i.1 to i32*
  store i32 %72, i32* %73, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.1

if.end.r_exit.i.i.1:                              ; preds = %if.then.i.i.1, %if.end.r_exit.i.i
  %74 = or i64 %_local_id_x.i.0, 2
  %add1.i.i.i.2 = add nuw nsw i64 %74, %mul.i.i.i
  %conv.i.i.2 = trunc i64 %add1.i.i.i.2 to i32
  %cmp.i.i.2 = icmp sgt i32 %conv.i.i.2, 0
  %cmp2.i.i.2 = icmp sgt i32 %sub.i.i, %conv.i.i.2
  %or.cond.i.i.2 = and i1 %cmp.i.i.2, %cmp2.i.i.2
  br i1 %or.cond.i.i.2, label %if.then.i.i.2, label %if.end.r_exit.i.i.2

if.then.i.i.2:                                    ; preds = %if.end.r_exit.i.i.1
  %sext.i.i.2 = shl i64 %add1.i.i.i.2, 32
  %idxprom.i.i.2 = ashr exact i64 %sext.i.i.2, 32
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.2
  %75 = bitcast float* %arrayidx.i.i.2 to i32*
  %76 = load i32, i32* %75, align 4, !tbaa !12
  %arrayidx5.i.i.2 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.2
  %77 = bitcast float* %arrayidx5.i.i.2 to i32*
  store i32 %76, i32* %77, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.2

if.end.r_exit.i.i.2:                              ; preds = %if.then.i.i.2, %if.end.r_exit.i.i.1
  %78 = or i64 %_local_id_x.i.0, 3
  %add1.i.i.i.3 = add nuw nsw i64 %78, %mul.i.i.i
  %conv.i.i.3 = trunc i64 %add1.i.i.i.3 to i32
  %cmp.i.i.3 = icmp sgt i32 %conv.i.i.3, 0
  %cmp2.i.i.3 = icmp sgt i32 %sub.i.i, %conv.i.i.3
  %or.cond.i.i.3 = and i1 %cmp.i.i.3, %cmp2.i.i.3
  br i1 %or.cond.i.i.3, label %if.then.i.i.3, label %if.end.r_exit.i.i.3

if.then.i.i.3:                                    ; preds = %if.end.r_exit.i.i.2
  %sext.i.i.3 = shl i64 %add1.i.i.i.3, 32
  %idxprom.i.i.3 = ashr exact i64 %sext.i.i.3, 32
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.3
  %79 = bitcast float* %arrayidx.i.i.3 to i32*
  %80 = load i32, i32* %79, align 4, !tbaa !12
  %arrayidx5.i.i.3 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.3
  %81 = bitcast float* %arrayidx5.i.i.3 to i32*
  store i32 %80, i32* %81, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.3

if.end.r_exit.i.i.3:                              ; preds = %if.then.i.i.3, %if.end.r_exit.i.i.2
  %82 = add nuw nsw i64 %_local_id_x.i.0, 4
  %exitcond.not.3 = icmp eq i64 %82, 256
  br i1 %exitcond.not.3, label %_pocl_kernel_runJacobi1D_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !40
}

; Function Attrs: argmemonly nounwind readonly willreturn
declare <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>*, i32 immarg, <8 x i1>, <8 x i32>) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.masked.store.v8i32.p0v8i32(<8 x i32>, <8 x i32>*, i32 immarg, <8 x i1>) #3

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
!5 = !{i32 1, i32 1, i32 0}
!6 = !{!"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"int"}
!8 = !{!"float*", !"float*", !"int"}
!9 = !{!"", !"", !""}
!10 = !{!"A", !"B", !"n"}
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
!26 = distinct !{!26, !24, !25}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !24, !25}
!33 = distinct !{!33, !24, !25}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !24, !25}
!40 = distinct !{!40, !24, !25}
