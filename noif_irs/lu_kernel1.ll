; ModuleID = 'parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_lu_kernel1(float* nocapture %0, i32 %1, i32 %2, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %3, i64 %4, i64 %5, i64 %6) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
vector.scevcheck:
  %mul.i.i = shl i64 %4, 8
  %mul.i = mul nsw i32 %2, %1
  %add.i = add i32 %mul.i, %1
  %conv2.i = add i32 %add.i, 1
  %idxprom6.i = sext i32 %add.i to i64
  %arrayidx7.i = getelementptr inbounds float, float* %0, i64 %idxprom6.i
  %7 = trunc i64 %4 to i32
  %8 = shl i32 %7, 8
  %9 = add i32 %add.i, %8
  %10 = add i32 %9, 1
  %11 = add i32 %9, 256
  %12 = icmp slt i32 %11, %10
  br i1 %12, label %pregion_for_entry.entry.i.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.scevcheck
  br label %vector.body

pregion_for_entry.entry.i.preheader:              ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %vector.body.preheader ]
  %13 = add nuw nsw i64 %index, %mul.i.i
  %14 = trunc i64 %13 to i32
  %15 = add i32 %conv2.i, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %0, i64 %16
  %18 = bitcast float* %17 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %18, align 4, !tbaa !12, !llvm.access.group !16
  %19 = load float, float* %arrayidx7.i, align 4, !tbaa !12, !llvm.access.group !16
  %20 = insertelement <8 x float> undef, float %19, i32 0
  %21 = shufflevector <8 x float> %20, <8 x float> undef, <8 x i32> zeroinitializer
  %22 = fdiv <8 x float> %wide.load, %21, !fpmath !18
  %23 = bitcast float* %17 to <8 x float>*
  store <8 x float> %22, <8 x float>* %23, align 4, !tbaa !12, !llvm.access.group !16
  %index.next = or i64 %index, 8
  %24 = add nuw nsw i64 %index.next, %mul.i.i
  %25 = trunc i64 %24 to i32
  %26 = add i32 %conv2.i, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %0, i64 %27
  %29 = bitcast float* %28 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %29, align 4, !tbaa !12, !llvm.access.group !16
  %30 = load float, float* %arrayidx7.i, align 4, !tbaa !12, !llvm.access.group !16
  %31 = insertelement <8 x float> undef, float %30, i32 0
  %32 = shufflevector <8 x float> %31, <8 x float> undef, <8 x i32> zeroinitializer
  %33 = fdiv <8 x float> %wide.load.1, %32, !fpmath !18
  %34 = bitcast float* %28 to <8 x float>*
  store <8 x float> %33, <8 x float>* %34, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.1 = or i64 %index, 16
  %35 = add nuw nsw i64 %index.next.1, %mul.i.i
  %36 = trunc i64 %35 to i32
  %37 = add i32 %conv2.i, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %0, i64 %38
  %40 = bitcast float* %39 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %40, align 4, !tbaa !12, !llvm.access.group !16
  %41 = load float, float* %arrayidx7.i, align 4, !tbaa !12, !llvm.access.group !16
  %42 = insertelement <8 x float> undef, float %41, i32 0
  %43 = shufflevector <8 x float> %42, <8 x float> undef, <8 x i32> zeroinitializer
  %44 = fdiv <8 x float> %wide.load.2, %43, !fpmath !18
  %45 = bitcast float* %39 to <8 x float>*
  store <8 x float> %44, <8 x float>* %45, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.2 = or i64 %index, 24
  %46 = add nuw nsw i64 %index.next.2, %mul.i.i
  %47 = trunc i64 %46 to i32
  %48 = add i32 %conv2.i, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %0, i64 %49
  %51 = bitcast float* %50 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %51, align 4, !tbaa !12, !llvm.access.group !16
  %52 = load float, float* %arrayidx7.i, align 4, !tbaa !12, !llvm.access.group !16
  %53 = insertelement <8 x float> undef, float %52, i32 0
  %54 = shufflevector <8 x float> %53, <8 x float> undef, <8 x i32> zeroinitializer
  %55 = fdiv <8 x float> %wide.load.3, %54, !fpmath !18
  %56 = bitcast float* %50 to <8 x float>*
  store <8 x float> %55, <8 x float>* %56, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.3 = add nuw nsw i64 %index, 32
  %57 = icmp eq i64 %index.next.3, 256
  br i1 %57, label %lu_kernel1.exit.loopexit2, label %vector.body, !llvm.loop !19

pregion_for_entry.entry.i:                        ; preds = %pregion_for_entry.entry.i, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ %73, %pregion_for_entry.entry.i ], [ 0, %pregion_for_entry.entry.i.preheader ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %58 = trunc i64 %add1.i.i to i32
  %add3.i = add i32 %conv2.i, %58
  %idxprom.i = sext i32 %add3.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %0, i64 %idxprom.i
  %59 = load float, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %60 = load float, float* %arrayidx7.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i = fdiv float %59, %60, !fpmath !18
  store float %div.i, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %61 = or i64 %_local_id_x.0, 1
  %add1.i.i.1 = add nuw nsw i64 %61, %mul.i.i
  %62 = trunc i64 %add1.i.i.1 to i32
  %add3.i.1 = add i32 %conv2.i, %62
  %idxprom.i.1 = sext i32 %add3.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.1
  %63 = load float, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %64 = load float, float* %arrayidx7.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.1 = fdiv float %63, %64, !fpmath !18
  store float %div.i.1, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %65 = or i64 %_local_id_x.0, 2
  %add1.i.i.2 = add nuw nsw i64 %65, %mul.i.i
  %66 = trunc i64 %add1.i.i.2 to i32
  %add3.i.2 = add i32 %conv2.i, %66
  %idxprom.i.2 = sext i32 %add3.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.2
  %67 = load float, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %68 = load float, float* %arrayidx7.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.2 = fdiv float %67, %68, !fpmath !18
  store float %div.i.2, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %69 = or i64 %_local_id_x.0, 3
  %add1.i.i.3 = add nuw nsw i64 %69, %mul.i.i
  %70 = trunc i64 %add1.i.i.3 to i32
  %add3.i.3 = add i32 %conv2.i, %70
  %idxprom.i.3 = sext i32 %add3.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.3
  %71 = load float, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %72 = load float, float* %arrayidx7.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.3 = fdiv float %71, %72, !fpmath !18
  store float %div.i.3, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %73 = add nuw nsw i64 %_local_id_x.0, 4
  %exitcond.not.3 = icmp eq i64 %73, 256
  br i1 %exitcond.not.3, label %lu_kernel1.exit.loopexit, label %pregion_for_entry.entry.i, !llvm.loop !22

lu_kernel1.exit.loopexit:                         ; preds = %pregion_for_entry.entry.i
  br label %lu_kernel1.exit

lu_kernel1.exit.loopexit2:                        ; preds = %vector.body
  br label %lu_kernel1.exit

lu_kernel1.exit:                                  ; preds = %lu_kernel1.exit.loopexit2, %lu_kernel1.exit.loopexit
  ret void
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_lu_kernel1_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
vector.scevcheck:
  %5 = bitcast i8** %0 to float***
  %6 = load float**, float*** %5, align 8
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to i32**
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr i8*, i8** %0, i64 2
  %13 = bitcast i8** %12 to i32**
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %mul.i.i.i = shl i64 %2, 8
  %mul.i.i = mul nsw i32 %15, %11
  %add.i.i = add i32 %mul.i.i, %11
  %conv2.i.i = add i32 %add.i.i, 1
  %idxprom6.i.i = sext i32 %add.i.i to i64
  %arrayidx7.i.i = getelementptr inbounds float, float* %7, i64 %idxprom6.i.i
  %16 = trunc i64 %2 to i32
  %17 = shl i32 %16, 8
  %18 = add i32 %add.i.i, %17
  %19 = add i32 %18, 1
  %20 = add i32 %18, 256
  %21 = icmp slt i32 %20, %19
  br i1 %21, label %pregion_for_entry.entry.i.i.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.scevcheck
  br label %vector.body

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %vector.body.preheader ]
  %22 = add nuw nsw i64 %index, %mul.i.i.i
  %23 = trunc i64 %22 to i32
  %24 = add i32 %conv2.i.i, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %7, i64 %25
  %27 = bitcast float* %26 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %27, align 4, !tbaa !12, !llvm.access.group !16
  %28 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %29 = insertelement <8 x float> undef, float %28, i32 0
  %30 = shufflevector <8 x float> %29, <8 x float> undef, <8 x i32> zeroinitializer
  %31 = fdiv <8 x float> %wide.load, %30, !fpmath !18
  %32 = bitcast float* %26 to <8 x float>*
  store <8 x float> %31, <8 x float>* %32, align 4, !tbaa !12, !llvm.access.group !16
  %index.next = or i64 %index, 8
  %33 = add nuw nsw i64 %index.next, %mul.i.i.i
  %34 = trunc i64 %33 to i32
  %35 = add i32 %conv2.i.i, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %7, i64 %36
  %38 = bitcast float* %37 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %38, align 4, !tbaa !12, !llvm.access.group !16
  %39 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %40 = insertelement <8 x float> undef, float %39, i32 0
  %41 = shufflevector <8 x float> %40, <8 x float> undef, <8 x i32> zeroinitializer
  %42 = fdiv <8 x float> %wide.load.1, %41, !fpmath !18
  %43 = bitcast float* %37 to <8 x float>*
  store <8 x float> %42, <8 x float>* %43, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.1 = or i64 %index, 16
  %44 = add nuw nsw i64 %index.next.1, %mul.i.i.i
  %45 = trunc i64 %44 to i32
  %46 = add i32 %conv2.i.i, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %7, i64 %47
  %49 = bitcast float* %48 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %49, align 4, !tbaa !12, !llvm.access.group !16
  %50 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %51 = insertelement <8 x float> undef, float %50, i32 0
  %52 = shufflevector <8 x float> %51, <8 x float> undef, <8 x i32> zeroinitializer
  %53 = fdiv <8 x float> %wide.load.2, %52, !fpmath !18
  %54 = bitcast float* %48 to <8 x float>*
  store <8 x float> %53, <8 x float>* %54, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.2 = or i64 %index, 24
  %55 = add nuw nsw i64 %index.next.2, %mul.i.i.i
  %56 = trunc i64 %55 to i32
  %57 = add i32 %conv2.i.i, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %7, i64 %58
  %60 = bitcast float* %59 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %60, align 4, !tbaa !12, !llvm.access.group !16
  %61 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %62 = insertelement <8 x float> undef, float %61, i32 0
  %63 = shufflevector <8 x float> %62, <8 x float> undef, <8 x i32> zeroinitializer
  %64 = fdiv <8 x float> %wide.load.3, %63, !fpmath !18
  %65 = bitcast float* %59 to <8 x float>*
  store <8 x float> %64, <8 x float>* %65, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.3 = add nuw nsw i64 %index, 32
  %66 = icmp eq i64 %index.next.3, 256
  br i1 %66, label %_pocl_kernel_lu_kernel1.exit.loopexit2, label %vector.body, !llvm.loop !23

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %82, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %67 = trunc i64 %add1.i.i.i to i32
  %add3.i.i = add i32 %conv2.i.i, %67
  %idxprom.i.i = sext i32 %add3.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %7, i64 %idxprom.i.i
  %68 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %69 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i = fdiv float %68, %69, !fpmath !18
  store float %div.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %70 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %70, %mul.i.i.i
  %71 = trunc i64 %add1.i.i.i.1 to i32
  %add3.i.i.1 = add i32 %conv2.i.i, %71
  %idxprom.i.i.1 = sext i32 %add3.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.1
  %72 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %73 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i.1 = fdiv float %72, %73, !fpmath !18
  store float %div.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %74 = or i64 %_local_id_x.i.0, 2
  %add1.i.i.i.2 = add nuw nsw i64 %74, %mul.i.i.i
  %75 = trunc i64 %add1.i.i.i.2 to i32
  %add3.i.i.2 = add i32 %conv2.i.i, %75
  %idxprom.i.i.2 = sext i32 %add3.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.2
  %76 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %77 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i.2 = fdiv float %76, %77, !fpmath !18
  store float %div.i.i.2, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %78 = or i64 %_local_id_x.i.0, 3
  %add1.i.i.i.3 = add nuw nsw i64 %78, %mul.i.i.i
  %79 = trunc i64 %add1.i.i.i.3 to i32
  %add3.i.i.3 = add i32 %conv2.i.i, %79
  %idxprom.i.i.3 = sext i32 %add3.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.3
  %80 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %81 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i.3 = fdiv float %80, %81, !fpmath !18
  store float %div.i.i.3, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %82 = add nuw nsw i64 %_local_id_x.i.0, 4
  %exitcond.not.3 = icmp eq i64 %82, 256
  br i1 %exitcond.not.3, label %_pocl_kernel_lu_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !24

_pocl_kernel_lu_kernel1.exit.loopexit:            ; preds = %pregion_for_entry.entry.i.i
  br label %_pocl_kernel_lu_kernel1.exit

_pocl_kernel_lu_kernel1.exit.loopexit2:           ; preds = %vector.body
  br label %_pocl_kernel_lu_kernel1.exit

_pocl_kernel_lu_kernel1.exit:                     ; preds = %_pocl_kernel_lu_kernel1.exit.loopexit2, %_pocl_kernel_lu_kernel1.exit.loopexit
  ret void
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_lu_kernel1_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
vector.scevcheck:
  %5 = bitcast i8** %0 to float**
  %6 = load float*, float** %5, align 8
  %7 = getelementptr i8*, i8** %0, i64 1
  %8 = bitcast i8** %7 to i32**
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr i8*, i8** %0, i64 2
  %12 = bitcast i8** %11 to i32**
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %mul.i.i.i = shl i64 %2, 8
  %mul.i.i = mul nsw i32 %14, %10
  %add.i.i = add i32 %mul.i.i, %10
  %conv2.i.i = add i32 %add.i.i, 1
  %idxprom6.i.i = sext i32 %add.i.i to i64
  %arrayidx7.i.i = getelementptr inbounds float, float* %6, i64 %idxprom6.i.i
  %15 = trunc i64 %2 to i32
  %16 = shl i32 %15, 8
  %17 = add i32 %add.i.i, %16
  %18 = add i32 %17, 1
  %19 = add i32 %17, 256
  %20 = icmp slt i32 %19, %18
  br i1 %20, label %pregion_for_entry.entry.i.i.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.scevcheck
  br label %vector.body

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %vector.body.preheader ]
  %21 = add nuw nsw i64 %index, %mul.i.i.i
  %22 = trunc i64 %21 to i32
  %23 = add i32 %conv2.i.i, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, float* %6, i64 %24
  %26 = bitcast float* %25 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %26, align 4, !tbaa !12, !llvm.access.group !16
  %27 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %28 = insertelement <8 x float> undef, float %27, i32 0
  %29 = shufflevector <8 x float> %28, <8 x float> undef, <8 x i32> zeroinitializer
  %30 = fdiv <8 x float> %wide.load, %29, !fpmath !18
  %31 = bitcast float* %25 to <8 x float>*
  store <8 x float> %30, <8 x float>* %31, align 4, !tbaa !12, !llvm.access.group !16
  %index.next = or i64 %index, 8
  %32 = add nuw nsw i64 %index.next, %mul.i.i.i
  %33 = trunc i64 %32 to i32
  %34 = add i32 %conv2.i.i, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %6, i64 %35
  %37 = bitcast float* %36 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %37, align 4, !tbaa !12, !llvm.access.group !16
  %38 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %39 = insertelement <8 x float> undef, float %38, i32 0
  %40 = shufflevector <8 x float> %39, <8 x float> undef, <8 x i32> zeroinitializer
  %41 = fdiv <8 x float> %wide.load.1, %40, !fpmath !18
  %42 = bitcast float* %36 to <8 x float>*
  store <8 x float> %41, <8 x float>* %42, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.1 = or i64 %index, 16
  %43 = add nuw nsw i64 %index.next.1, %mul.i.i.i
  %44 = trunc i64 %43 to i32
  %45 = add i32 %conv2.i.i, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %6, i64 %46
  %48 = bitcast float* %47 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %48, align 4, !tbaa !12, !llvm.access.group !16
  %49 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %50 = insertelement <8 x float> undef, float %49, i32 0
  %51 = shufflevector <8 x float> %50, <8 x float> undef, <8 x i32> zeroinitializer
  %52 = fdiv <8 x float> %wide.load.2, %51, !fpmath !18
  %53 = bitcast float* %47 to <8 x float>*
  store <8 x float> %52, <8 x float>* %53, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.2 = or i64 %index, 24
  %54 = add nuw nsw i64 %index.next.2, %mul.i.i.i
  %55 = trunc i64 %54 to i32
  %56 = add i32 %conv2.i.i, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %6, i64 %57
  %59 = bitcast float* %58 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %59, align 4, !tbaa !12, !llvm.access.group !16
  %60 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %61 = insertelement <8 x float> undef, float %60, i32 0
  %62 = shufflevector <8 x float> %61, <8 x float> undef, <8 x i32> zeroinitializer
  %63 = fdiv <8 x float> %wide.load.3, %62, !fpmath !18
  %64 = bitcast float* %58 to <8 x float>*
  store <8 x float> %63, <8 x float>* %64, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.3 = add nuw nsw i64 %index, 32
  %65 = icmp eq i64 %index.next.3, 256
  br i1 %65, label %_pocl_kernel_lu_kernel1.exit.loopexit2, label %vector.body, !llvm.loop !25

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %81, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %66 = trunc i64 %add1.i.i.i to i32
  %add3.i.i = add i32 %conv2.i.i, %66
  %idxprom.i.i = sext i32 %add3.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %6, i64 %idxprom.i.i
  %67 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %68 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i = fdiv float %67, %68, !fpmath !18
  store float %div.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %69 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %69, %mul.i.i.i
  %70 = trunc i64 %add1.i.i.i.1 to i32
  %add3.i.i.1 = add i32 %conv2.i.i, %70
  %idxprom.i.i.1 = sext i32 %add3.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.1
  %71 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %72 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i.1 = fdiv float %71, %72, !fpmath !18
  store float %div.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %73 = or i64 %_local_id_x.i.0, 2
  %add1.i.i.i.2 = add nuw nsw i64 %73, %mul.i.i.i
  %74 = trunc i64 %add1.i.i.i.2 to i32
  %add3.i.i.2 = add i32 %conv2.i.i, %74
  %idxprom.i.i.2 = sext i32 %add3.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.2
  %75 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %76 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i.2 = fdiv float %75, %76, !fpmath !18
  store float %div.i.i.2, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %77 = or i64 %_local_id_x.i.0, 3
  %add1.i.i.i.3 = add nuw nsw i64 %77, %mul.i.i.i
  %78 = trunc i64 %add1.i.i.i.3 to i32
  %add3.i.i.3 = add i32 %conv2.i.i, %78
  %idxprom.i.i.3 = sext i32 %add3.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.3
  %79 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %80 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i.3 = fdiv float %79, %80, !fpmath !18
  store float %div.i.i.3, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %81 = add nuw nsw i64 %_local_id_x.i.0, 4
  %exitcond.not.3 = icmp eq i64 %81, 256
  br i1 %exitcond.not.3, label %_pocl_kernel_lu_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !26

_pocl_kernel_lu_kernel1.exit.loopexit:            ; preds = %pregion_for_entry.entry.i.i
  br label %_pocl_kernel_lu_kernel1.exit

_pocl_kernel_lu_kernel1.exit.loopexit2:           ; preds = %vector.body
  br label %_pocl_kernel_lu_kernel1.exit

_pocl_kernel_lu_kernel1.exit:                     ; preds = %_pocl_kernel_lu_kernel1.exit.loopexit2, %_pocl_kernel_lu_kernel1.exit.loopexit
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
!5 = !{i32 1, i32 0, i32 0}
!6 = !{!"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"int", !"int"}
!8 = !{!"float*", !"int", !"int"}
!9 = !{!"", !"", !""}
!10 = !{!"A", !"k", !"n"}
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
