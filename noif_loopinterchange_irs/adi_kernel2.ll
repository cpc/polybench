; ModuleID = './IB/FGNJAIBJKCCKIIHGJPAOIOOBEOOEPBKMDNCMM/adi_kernel2/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_adi_kernel2(float* nocapture readnone %0, float* nocapture readonly %1, float* nocapture %2, i32 %3, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %4, i64 %5, i64 %6, i64 %7) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
vector.scevcheck:
  %mul.i.i = shl i64 %5, 8
  %sub.i = add nsw i32 %3, -1
  %ident.check.not = icmp eq i32 %3, 1
  br i1 %ident.check.not, label %vector.body.preheader, label %pregion_for_entry.entry.i.preheader

pregion_for_entry.entry.i.preheader:              ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i

vector.body.preheader:                            ; preds = %vector.scevcheck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %vector.body.preheader ]
  %8 = add nuw nsw i64 %index, %mul.i.i
  %9 = trunc i64 %8 to i32
  %10 = mul nsw i32 %9, %3
  %11 = add nsw i32 %sub.i, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds float, float* %2, i64 %12
  %14 = bitcast float* %13 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %14, align 4, !tbaa !12, !llvm.access.group !16
  %15 = getelementptr inbounds float, float* %1, i64 %12
  %16 = bitcast float* %15 to <8 x float>*
  %wide.load1 = load <8 x float>, <8 x float>* %16, align 4, !tbaa !12, !llvm.access.group !16
  %17 = fdiv <8 x float> %wide.load, %wide.load1, !fpmath !18
  %18 = bitcast float* %13 to <8 x float>*
  store <8 x float> %17, <8 x float>* %18, align 4, !tbaa !12, !llvm.access.group !16
  %index.next = or i64 %index, 8
  %19 = add nuw nsw i64 %index.next, %mul.i.i
  %20 = trunc i64 %19 to i32
  %21 = mul nsw i32 %20, %3
  %22 = add nsw i32 %sub.i, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %2, i64 %23
  %25 = bitcast float* %24 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %25, align 4, !tbaa !12, !llvm.access.group !16
  %26 = getelementptr inbounds float, float* %1, i64 %23
  %27 = bitcast float* %26 to <8 x float>*
  %wide.load1.1 = load <8 x float>, <8 x float>* %27, align 4, !tbaa !12, !llvm.access.group !16
  %28 = fdiv <8 x float> %wide.load.1, %wide.load1.1, !fpmath !18
  %29 = bitcast float* %24 to <8 x float>*
  store <8 x float> %28, <8 x float>* %29, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.1 = or i64 %index, 16
  %30 = add nuw nsw i64 %index.next.1, %mul.i.i
  %31 = trunc i64 %30 to i32
  %32 = mul nsw i32 %31, %3
  %33 = add nsw i32 %sub.i, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %2, i64 %34
  %36 = bitcast float* %35 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %36, align 4, !tbaa !12, !llvm.access.group !16
  %37 = getelementptr inbounds float, float* %1, i64 %34
  %38 = bitcast float* %37 to <8 x float>*
  %wide.load1.2 = load <8 x float>, <8 x float>* %38, align 4, !tbaa !12, !llvm.access.group !16
  %39 = fdiv <8 x float> %wide.load.2, %wide.load1.2, !fpmath !18
  %40 = bitcast float* %35 to <8 x float>*
  store <8 x float> %39, <8 x float>* %40, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.2 = or i64 %index, 24
  %41 = add nuw nsw i64 %index.next.2, %mul.i.i
  %42 = trunc i64 %41 to i32
  %43 = mul nsw i32 %42, %3
  %44 = add nsw i32 %sub.i, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %2, i64 %45
  %47 = bitcast float* %46 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %47, align 4, !tbaa !12, !llvm.access.group !16
  %48 = getelementptr inbounds float, float* %1, i64 %45
  %49 = bitcast float* %48 to <8 x float>*
  %wide.load1.3 = load <8 x float>, <8 x float>* %49, align 4, !tbaa !12, !llvm.access.group !16
  %50 = fdiv <8 x float> %wide.load.3, %wide.load1.3, !fpmath !18
  %51 = bitcast float* %46 to <8 x float>*
  store <8 x float> %50, <8 x float>* %51, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.3 = add nuw nsw i64 %index, 32
  %52 = icmp eq i64 %index.next.3, 256
  br i1 %52, label %adi_kernel2.exit.loopexit, label %vector.body, !llvm.loop !19

pregion_for_entry.entry.i:                        ; preds = %pregion_for_entry.entry.i, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ %58, %pregion_for_entry.entry.i ], [ 0, %pregion_for_entry.entry.i.preheader ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %mul.i = mul nsw i32 %conv.i, %3
  %add.i = add nsw i32 %sub.i, %mul.i
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %2, i64 %idxprom.i
  %53 = load float, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx5.i = getelementptr inbounds float, float* %1, i64 %idxprom.i
  %54 = load float, float* %arrayidx5.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i = fdiv float %53, %54, !fpmath !18
  store float %div.i, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %55 = or i64 %_local_id_x.0, 1
  %add1.i.i.1 = add nuw nsw i64 %55, %mul.i.i
  %conv.i.1 = trunc i64 %add1.i.i.1 to i32
  %mul.i.1 = mul nsw i32 %conv.i.1, %3
  %add.i.1 = add nsw i32 %sub.i, %mul.i.1
  %idxprom.i.1 = sext i32 %add.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.1
  %56 = load float, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx5.i.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.1
  %57 = load float, float* %arrayidx5.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.1 = fdiv float %56, %57, !fpmath !18
  store float %div.i.1, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %58 = add nuw nsw i64 %_local_id_x.0, 2
  %exitcond.not.1 = icmp eq i64 %58, 256
  br i1 %exitcond.not.1, label %adi_kernel2.exit.loopexit3, label %pregion_for_entry.entry.i, !llvm.loop !22

adi_kernel2.exit.loopexit:                        ; preds = %vector.body
  br label %adi_kernel2.exit

adi_kernel2.exit.loopexit3:                       ; preds = %pregion_for_entry.entry.i
  br label %adi_kernel2.exit

adi_kernel2.exit:                                 ; preds = %adi_kernel2.exit.loopexit3, %adi_kernel2.exit.loopexit
  ret void
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
  br i1 %ident.check.not, label %vector.body.preheader, label %pregion_for_entry.entry.i.i.preheader

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.body.preheader:                            ; preds = %vector.scevcheck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %vector.body.preheader ]
  %17 = add nuw nsw i64 %index, %mul.i.i.i
  %18 = trunc i64 %17 to i32
  %19 = mul nsw i32 %16, %18
  %20 = add nsw i32 %sub.i.i, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %12, i64 %21
  %23 = bitcast float* %22 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %23, align 4, !tbaa !12, !llvm.access.group !16
  %24 = getelementptr inbounds float, float* %8, i64 %21
  %25 = bitcast float* %24 to <8 x float>*
  %wide.load1 = load <8 x float>, <8 x float>* %25, align 4, !tbaa !12, !llvm.access.group !16
  %26 = fdiv <8 x float> %wide.load, %wide.load1, !fpmath !18
  %27 = bitcast float* %22 to <8 x float>*
  store <8 x float> %26, <8 x float>* %27, align 4, !tbaa !12, !llvm.access.group !16
  %index.next = or i64 %index, 8
  %28 = add nuw nsw i64 %index.next, %mul.i.i.i
  %29 = trunc i64 %28 to i32
  %30 = mul nsw i32 %16, %29
  %31 = add nsw i32 %sub.i.i, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %12, i64 %32
  %34 = bitcast float* %33 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %34, align 4, !tbaa !12, !llvm.access.group !16
  %35 = getelementptr inbounds float, float* %8, i64 %32
  %36 = bitcast float* %35 to <8 x float>*
  %wide.load1.1 = load <8 x float>, <8 x float>* %36, align 4, !tbaa !12, !llvm.access.group !16
  %37 = fdiv <8 x float> %wide.load.1, %wide.load1.1, !fpmath !18
  %38 = bitcast float* %33 to <8 x float>*
  store <8 x float> %37, <8 x float>* %38, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.1 = or i64 %index, 16
  %39 = add nuw nsw i64 %index.next.1, %mul.i.i.i
  %40 = trunc i64 %39 to i32
  %41 = mul nsw i32 %16, %40
  %42 = add nsw i32 %sub.i.i, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %12, i64 %43
  %45 = bitcast float* %44 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %45, align 4, !tbaa !12, !llvm.access.group !16
  %46 = getelementptr inbounds float, float* %8, i64 %43
  %47 = bitcast float* %46 to <8 x float>*
  %wide.load1.2 = load <8 x float>, <8 x float>* %47, align 4, !tbaa !12, !llvm.access.group !16
  %48 = fdiv <8 x float> %wide.load.2, %wide.load1.2, !fpmath !18
  %49 = bitcast float* %44 to <8 x float>*
  store <8 x float> %48, <8 x float>* %49, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.2 = or i64 %index, 24
  %50 = add nuw nsw i64 %index.next.2, %mul.i.i.i
  %51 = trunc i64 %50 to i32
  %52 = mul nsw i32 %16, %51
  %53 = add nsw i32 %sub.i.i, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %12, i64 %54
  %56 = bitcast float* %55 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %56, align 4, !tbaa !12, !llvm.access.group !16
  %57 = getelementptr inbounds float, float* %8, i64 %54
  %58 = bitcast float* %57 to <8 x float>*
  %wide.load1.3 = load <8 x float>, <8 x float>* %58, align 4, !tbaa !12, !llvm.access.group !16
  %59 = fdiv <8 x float> %wide.load.3, %wide.load1.3, !fpmath !18
  %60 = bitcast float* %55 to <8 x float>*
  store <8 x float> %59, <8 x float>* %60, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.3 = add nuw nsw i64 %index, 32
  %61 = icmp eq i64 %index.next.3, 256
  br i1 %61, label %_pocl_kernel_adi_kernel2.exit.loopexit, label %vector.body, !llvm.loop !23

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %67, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %mul.i.i = mul nsw i32 %16, %conv.i.i
  %add.i.i = add nsw i32 %sub.i.i, %mul.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %12, i64 %idxprom.i.i
  %62 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx5.i.i = getelementptr inbounds float, float* %8, i64 %idxprom.i.i
  %63 = load float, float* %arrayidx5.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i = fdiv float %62, %63, !fpmath !18
  store float %div.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %64 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %64, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %mul.i.i.1 = mul nsw i32 %16, %conv.i.i.1
  %add.i.i.1 = add nsw i32 %sub.i.i, %mul.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.1
  %65 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx5.i.i.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.1
  %66 = load float, float* %arrayidx5.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i.1 = fdiv float %65, %66, !fpmath !18
  store float %div.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %67 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %67, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_adi_kernel2.exit.loopexit3, label %pregion_for_entry.entry.i.i, !llvm.loop !24

_pocl_kernel_adi_kernel2.exit.loopexit:           ; preds = %vector.body
  br label %_pocl_kernel_adi_kernel2.exit

_pocl_kernel_adi_kernel2.exit.loopexit3:          ; preds = %pregion_for_entry.entry.i.i
  br label %_pocl_kernel_adi_kernel2.exit

_pocl_kernel_adi_kernel2.exit:                    ; preds = %_pocl_kernel_adi_kernel2.exit.loopexit3, %_pocl_kernel_adi_kernel2.exit.loopexit
  ret void
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
  br i1 %ident.check.not, label %vector.body.preheader, label %pregion_for_entry.entry.i.i.preheader

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.body.preheader:                            ; preds = %vector.scevcheck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %vector.body.preheader ]
  %15 = add nuw nsw i64 %index, %mul.i.i.i
  %16 = trunc i64 %15 to i32
  %17 = mul nsw i32 %14, %16
  %18 = add nsw i32 %sub.i.i, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %10, i64 %19
  %21 = bitcast float* %20 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %21, align 4, !tbaa !12, !llvm.access.group !16
  %22 = getelementptr inbounds float, float* %7, i64 %19
  %23 = bitcast float* %22 to <8 x float>*
  %wide.load1 = load <8 x float>, <8 x float>* %23, align 4, !tbaa !12, !llvm.access.group !16
  %24 = fdiv <8 x float> %wide.load, %wide.load1, !fpmath !18
  %25 = bitcast float* %20 to <8 x float>*
  store <8 x float> %24, <8 x float>* %25, align 4, !tbaa !12, !llvm.access.group !16
  %index.next = or i64 %index, 8
  %26 = add nuw nsw i64 %index.next, %mul.i.i.i
  %27 = trunc i64 %26 to i32
  %28 = mul nsw i32 %14, %27
  %29 = add nsw i32 %sub.i.i, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %10, i64 %30
  %32 = bitcast float* %31 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %32, align 4, !tbaa !12, !llvm.access.group !16
  %33 = getelementptr inbounds float, float* %7, i64 %30
  %34 = bitcast float* %33 to <8 x float>*
  %wide.load1.1 = load <8 x float>, <8 x float>* %34, align 4, !tbaa !12, !llvm.access.group !16
  %35 = fdiv <8 x float> %wide.load.1, %wide.load1.1, !fpmath !18
  %36 = bitcast float* %31 to <8 x float>*
  store <8 x float> %35, <8 x float>* %36, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.1 = or i64 %index, 16
  %37 = add nuw nsw i64 %index.next.1, %mul.i.i.i
  %38 = trunc i64 %37 to i32
  %39 = mul nsw i32 %14, %38
  %40 = add nsw i32 %sub.i.i, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %10, i64 %41
  %43 = bitcast float* %42 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %43, align 4, !tbaa !12, !llvm.access.group !16
  %44 = getelementptr inbounds float, float* %7, i64 %41
  %45 = bitcast float* %44 to <8 x float>*
  %wide.load1.2 = load <8 x float>, <8 x float>* %45, align 4, !tbaa !12, !llvm.access.group !16
  %46 = fdiv <8 x float> %wide.load.2, %wide.load1.2, !fpmath !18
  %47 = bitcast float* %42 to <8 x float>*
  store <8 x float> %46, <8 x float>* %47, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.2 = or i64 %index, 24
  %48 = add nuw nsw i64 %index.next.2, %mul.i.i.i
  %49 = trunc i64 %48 to i32
  %50 = mul nsw i32 %14, %49
  %51 = add nsw i32 %sub.i.i, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %10, i64 %52
  %54 = bitcast float* %53 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %54, align 4, !tbaa !12, !llvm.access.group !16
  %55 = getelementptr inbounds float, float* %7, i64 %52
  %56 = bitcast float* %55 to <8 x float>*
  %wide.load1.3 = load <8 x float>, <8 x float>* %56, align 4, !tbaa !12, !llvm.access.group !16
  %57 = fdiv <8 x float> %wide.load.3, %wide.load1.3, !fpmath !18
  %58 = bitcast float* %53 to <8 x float>*
  store <8 x float> %57, <8 x float>* %58, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.3 = add nuw nsw i64 %index, 32
  %59 = icmp eq i64 %index.next.3, 256
  br i1 %59, label %_pocl_kernel_adi_kernel2.exit.loopexit, label %vector.body, !llvm.loop !25

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %65, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %mul.i.i = mul nsw i32 %14, %conv.i.i
  %add.i.i = add nsw i32 %sub.i.i, %mul.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %10, i64 %idxprom.i.i
  %60 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx5.i.i = getelementptr inbounds float, float* %7, i64 %idxprom.i.i
  %61 = load float, float* %arrayidx5.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i = fdiv float %60, %61, !fpmath !18
  store float %div.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %62 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %62, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %mul.i.i.1 = mul nsw i32 %14, %conv.i.i.1
  %add.i.i.1 = add nsw i32 %sub.i.i, %mul.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.1
  %63 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx5.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.1
  %64 = load float, float* %arrayidx5.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i.1 = fdiv float %63, %64, !fpmath !18
  store float %div.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %65 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %65, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_adi_kernel2.exit.loopexit3, label %pregion_for_entry.entry.i.i, !llvm.loop !26

_pocl_kernel_adi_kernel2.exit.loopexit:           ; preds = %vector.body
  br label %_pocl_kernel_adi_kernel2.exit

_pocl_kernel_adi_kernel2.exit.loopexit3:          ; preds = %pregion_for_entry.entry.i.i
  br label %_pocl_kernel_adi_kernel2.exit

_pocl_kernel_adi_kernel2.exit:                    ; preds = %_pocl_kernel_adi_kernel2.exit.loopexit3, %_pocl_kernel_adi_kernel2.exit.loopexit
  ret void
}

attributes #0 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree norecurse nounwind }

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
!17 = distinct !{}
!18 = !{float 2.500000e+00}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.parallel_accesses", !17}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = distinct !{!22, !20, !21}
!23 = distinct !{!23, !20, !21}
!24 = distinct !{!24, !20, !21}
!25 = distinct !{!25, !20, !21}
!26 = distinct !{!26, !20, !21}
