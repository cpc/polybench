; ModuleID = './DF/PDBDCFKCFBNDMNFOGMBNGLKBDJFKLEJDAFMEL/gramschmidt_kernel2/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_gramschmidt_kernel2(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, i32 %3, i32 %4, i32 %5, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %6, i64 %7, i64 %8, i64 %9) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
vector.scevcheck:
  %mul.i.i = shl i64 %7, 8
  %mul1.i = mul nsw i32 %5, %3
  %add2.i = add nsw i32 %mul1.i, %3
  %idxprom3.i = sext i32 %add2.i to i64
  %arrayidx4.i = getelementptr inbounds float, float* %1, i64 %idxprom3.i
  %ident.check = icmp ne i32 %5, 1
  %10 = trunc i64 %7 to i32
  %11 = shl i32 %10, 8
  %12 = add i32 %11, %3
  %13 = icmp sgt i32 %12, 2147483392
  %14 = or i1 %ident.check, %13
  br i1 %14, label %pregion_for_entry.entry.i.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.scevcheck
  br label %vector.body

pregion_for_entry.entry.i.preheader:              ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.body.preheader ]
  %15 = add nuw nsw i64 %index, %mul.i.i
  %16 = trunc i64 %15 to i32
  %17 = mul nsw i32 %16, %5
  %18 = add nsw i32 %17, %3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %0, i64 %19
  %21 = bitcast float* %20 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %21, align 4, !tbaa !12, !llvm.access.group !16
  %22 = load float, float* %arrayidx4.i, align 4, !tbaa !12, !llvm.access.group !16
  %23 = insertelement <8 x float> undef, float %22, i32 0
  %24 = shufflevector <8 x float> %23, <8 x float> undef, <8 x i32> zeroinitializer
  %25 = fdiv <8 x float> %wide.load, %24, !fpmath !18
  %26 = getelementptr inbounds float, float* %2, i64 %19
  %27 = bitcast float* %26 to <8 x float>*
  store <8 x float> %25, <8 x float>* %27, align 4, !tbaa !12, !llvm.access.group !16
  %index.next = or i64 %index, 8
  %28 = add nuw nsw i64 %index.next, %mul.i.i
  %29 = trunc i64 %28 to i32
  %30 = mul nsw i32 %29, %5
  %31 = add nsw i32 %30, %3
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %0, i64 %32
  %34 = bitcast float* %33 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %34, align 4, !tbaa !12, !llvm.access.group !16
  %35 = load float, float* %arrayidx4.i, align 4, !tbaa !12, !llvm.access.group !16
  %36 = insertelement <8 x float> undef, float %35, i32 0
  %37 = shufflevector <8 x float> %36, <8 x float> undef, <8 x i32> zeroinitializer
  %38 = fdiv <8 x float> %wide.load.1, %37, !fpmath !18
  %39 = getelementptr inbounds float, float* %2, i64 %32
  %40 = bitcast float* %39 to <8 x float>*
  store <8 x float> %38, <8 x float>* %40, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.1 = add nuw nsw i64 %index, 16
  %41 = icmp eq i64 %index.next.1, 256
  br i1 %41, label %gramschmidt_kernel2.exit.loopexit2, label %vector.body, !llvm.loop !19

pregion_for_entry.entry.i:                        ; preds = %pregion_for_entry.entry.i, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ %47, %pregion_for_entry.entry.i ], [ 0, %pregion_for_entry.entry.i.preheader ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %mul.i = mul nsw i32 %conv.i, %5
  %add.i = add nsw i32 %mul.i, %3
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %0, i64 %idxprom.i
  %42 = load float, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %43 = load float, float* %arrayidx4.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i = fdiv float %42, %43, !fpmath !18
  %arrayidx8.i = getelementptr inbounds float, float* %2, i64 %idxprom.i
  store float %div.i, float* %arrayidx8.i, align 4, !tbaa !12, !llvm.access.group !16
  %44 = or i64 %_local_id_x.0, 1
  %add1.i.i.1 = add nuw nsw i64 %44, %mul.i.i
  %conv.i.1 = trunc i64 %add1.i.i.1 to i32
  %mul.i.1 = mul nsw i32 %conv.i.1, %5
  %add.i.1 = add nsw i32 %mul.i.1, %3
  %idxprom.i.1 = sext i32 %add.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.1
  %45 = load float, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %46 = load float, float* %arrayidx4.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.1 = fdiv float %45, %46, !fpmath !18
  %arrayidx8.i.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.1
  store float %div.i.1, float* %arrayidx8.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %47 = add nuw nsw i64 %_local_id_x.0, 2
  %exitcond.not.1 = icmp eq i64 %47, 256
  br i1 %exitcond.not.1, label %gramschmidt_kernel2.exit.loopexit, label %pregion_for_entry.entry.i, !llvm.loop !22

gramschmidt_kernel2.exit.loopexit:                ; preds = %pregion_for_entry.entry.i
  br label %gramschmidt_kernel2.exit

gramschmidt_kernel2.exit.loopexit2:               ; preds = %vector.body
  br label %gramschmidt_kernel2.exit

gramschmidt_kernel2.exit:                         ; preds = %gramschmidt_kernel2.exit.loopexit2, %gramschmidt_kernel2.exit.loopexit
  ret void
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
  %20 = getelementptr i8*, i8** %0, i64 5
  %21 = bitcast i8** %20 to i32**
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %mul.i.i.i = shl i64 %2, 8
  %mul1.i.i = mul nsw i32 %23, %19
  %add2.i.i = add nsw i32 %mul1.i.i, %19
  %idxprom3.i.i = sext i32 %add2.i.i to i64
  %arrayidx4.i.i = getelementptr inbounds float, float* %11, i64 %idxprom3.i.i
  %ident.check = icmp ne i32 %23, 1
  %24 = trunc i64 %2 to i32
  %25 = shl i32 %24, 8
  %26 = add i32 %19, %25
  %27 = icmp sgt i32 %26, 2147483392
  %28 = or i1 %ident.check, %27
  br i1 %28, label %pregion_for_entry.entry.i.i.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.scevcheck
  br label %vector.body

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.body.preheader ]
  %29 = add nuw nsw i64 %index, %mul.i.i.i
  %30 = trunc i64 %29 to i32
  %31 = mul nsw i32 %23, %30
  %32 = add nsw i32 %31, %19
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %7, i64 %33
  %35 = bitcast float* %34 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %35, align 4, !tbaa !12, !llvm.access.group !16
  %36 = load float, float* %arrayidx4.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %37 = insertelement <8 x float> undef, float %36, i32 0
  %38 = shufflevector <8 x float> %37, <8 x float> undef, <8 x i32> zeroinitializer
  %39 = fdiv <8 x float> %wide.load, %38, !fpmath !18
  %40 = getelementptr inbounds float, float* %15, i64 %33
  %41 = bitcast float* %40 to <8 x float>*
  store <8 x float> %39, <8 x float>* %41, align 4, !tbaa !12, !llvm.access.group !16
  %index.next = or i64 %index, 8
  %42 = add nuw nsw i64 %index.next, %mul.i.i.i
  %43 = trunc i64 %42 to i32
  %44 = mul nsw i32 %23, %43
  %45 = add nsw i32 %44, %19
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %7, i64 %46
  %48 = bitcast float* %47 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %48, align 4, !tbaa !12, !llvm.access.group !16
  %49 = load float, float* %arrayidx4.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %50 = insertelement <8 x float> undef, float %49, i32 0
  %51 = shufflevector <8 x float> %50, <8 x float> undef, <8 x i32> zeroinitializer
  %52 = fdiv <8 x float> %wide.load.1, %51, !fpmath !18
  %53 = getelementptr inbounds float, float* %15, i64 %46
  %54 = bitcast float* %53 to <8 x float>*
  store <8 x float> %52, <8 x float>* %54, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.1 = add nuw nsw i64 %index, 16
  %55 = icmp eq i64 %index.next.1, 256
  br i1 %55, label %_pocl_kernel_gramschmidt_kernel2.exit.loopexit2, label %vector.body, !llvm.loop !23

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %61, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %mul.i.i = mul nsw i32 %23, %conv.i.i
  %add.i.i = add nsw i32 %mul.i.i, %19
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %7, i64 %idxprom.i.i
  %56 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %57 = load float, float* %arrayidx4.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i = fdiv float %56, %57, !fpmath !18
  %arrayidx8.i.i = getelementptr inbounds float, float* %15, i64 %idxprom.i.i
  store float %div.i.i, float* %arrayidx8.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %58 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %58, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %mul.i.i.1 = mul nsw i32 %23, %conv.i.i.1
  %add.i.i.1 = add nsw i32 %mul.i.i.1, %19
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.1
  %59 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %60 = load float, float* %arrayidx4.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i.1 = fdiv float %59, %60, !fpmath !18
  %arrayidx8.i.i.1 = getelementptr inbounds float, float* %15, i64 %idxprom.i.i.1
  store float %div.i.i.1, float* %arrayidx8.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %61 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %61, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_gramschmidt_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !24

_pocl_kernel_gramschmidt_kernel2.exit.loopexit:   ; preds = %pregion_for_entry.entry.i.i
  br label %_pocl_kernel_gramschmidt_kernel2.exit

_pocl_kernel_gramschmidt_kernel2.exit.loopexit2:  ; preds = %vector.body
  br label %_pocl_kernel_gramschmidt_kernel2.exit

_pocl_kernel_gramschmidt_kernel2.exit:            ; preds = %_pocl_kernel_gramschmidt_kernel2.exit.loopexit2, %_pocl_kernel_gramschmidt_kernel2.exit.loopexit
  ret void
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
  %17 = getelementptr i8*, i8** %0, i64 5
  %18 = bitcast i8** %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %mul.i.i.i = shl i64 %2, 8
  %mul1.i.i = mul nsw i32 %20, %16
  %add2.i.i = add nsw i32 %mul1.i.i, %16
  %idxprom3.i.i = sext i32 %add2.i.i to i64
  %arrayidx4.i.i = getelementptr inbounds float, float* %9, i64 %idxprom3.i.i
  %ident.check = icmp ne i32 %20, 1
  %21 = trunc i64 %2 to i32
  %22 = shl i32 %21, 8
  %23 = add i32 %16, %22
  %24 = icmp sgt i32 %23, 2147483392
  %25 = or i1 %ident.check, %24
  br i1 %25, label %pregion_for_entry.entry.i.i.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.scevcheck
  br label %vector.body

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.body.preheader ]
  %26 = add nuw nsw i64 %index, %mul.i.i.i
  %27 = trunc i64 %26 to i32
  %28 = mul nsw i32 %20, %27
  %29 = add nsw i32 %28, %16
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %6, i64 %30
  %32 = bitcast float* %31 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %32, align 4, !tbaa !12, !llvm.access.group !16
  %33 = load float, float* %arrayidx4.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %34 = insertelement <8 x float> undef, float %33, i32 0
  %35 = shufflevector <8 x float> %34, <8 x float> undef, <8 x i32> zeroinitializer
  %36 = fdiv <8 x float> %wide.load, %35, !fpmath !18
  %37 = getelementptr inbounds float, float* %12, i64 %30
  %38 = bitcast float* %37 to <8 x float>*
  store <8 x float> %36, <8 x float>* %38, align 4, !tbaa !12, !llvm.access.group !16
  %index.next = or i64 %index, 8
  %39 = add nuw nsw i64 %index.next, %mul.i.i.i
  %40 = trunc i64 %39 to i32
  %41 = mul nsw i32 %20, %40
  %42 = add nsw i32 %41, %16
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %6, i64 %43
  %45 = bitcast float* %44 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %45, align 4, !tbaa !12, !llvm.access.group !16
  %46 = load float, float* %arrayidx4.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %47 = insertelement <8 x float> undef, float %46, i32 0
  %48 = shufflevector <8 x float> %47, <8 x float> undef, <8 x i32> zeroinitializer
  %49 = fdiv <8 x float> %wide.load.1, %48, !fpmath !18
  %50 = getelementptr inbounds float, float* %12, i64 %43
  %51 = bitcast float* %50 to <8 x float>*
  store <8 x float> %49, <8 x float>* %51, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.1 = add nuw nsw i64 %index, 16
  %52 = icmp eq i64 %index.next.1, 256
  br i1 %52, label %_pocl_kernel_gramschmidt_kernel2.exit.loopexit2, label %vector.body, !llvm.loop !25

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %58, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %mul.i.i = mul nsw i32 %20, %conv.i.i
  %add.i.i = add nsw i32 %mul.i.i, %16
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %6, i64 %idxprom.i.i
  %53 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %54 = load float, float* %arrayidx4.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i = fdiv float %53, %54, !fpmath !18
  %arrayidx8.i.i = getelementptr inbounds float, float* %12, i64 %idxprom.i.i
  store float %div.i.i, float* %arrayidx8.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %55 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %55, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %mul.i.i.1 = mul nsw i32 %20, %conv.i.i.1
  %add.i.i.1 = add nsw i32 %mul.i.i.1, %16
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.1
  %56 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %57 = load float, float* %arrayidx4.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i.1 = fdiv float %56, %57, !fpmath !18
  %arrayidx8.i.i.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.1
  store float %div.i.i.1, float* %arrayidx8.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %58 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %58, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_gramschmidt_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !26

_pocl_kernel_gramschmidt_kernel2.exit.loopexit:   ; preds = %pregion_for_entry.entry.i.i
  br label %_pocl_kernel_gramschmidt_kernel2.exit

_pocl_kernel_gramschmidt_kernel2.exit.loopexit2:  ; preds = %vector.body
  br label %_pocl_kernel_gramschmidt_kernel2.exit

_pocl_kernel_gramschmidt_kernel2.exit:            ; preds = %_pocl_kernel_gramschmidt_kernel2.exit.loopexit2, %_pocl_kernel_gramschmidt_kernel2.exit.loopexit
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
!18 = !{float 2.500000e+00}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.parallel_accesses", !17}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = distinct !{!22, !20, !21}
!23 = distinct !{!23, !20, !21}
!24 = distinct !{!24, !20, !21}
!25 = distinct !{!25, !20, !21}
!26 = distinct !{!26, !20, !21}
