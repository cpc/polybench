; ModuleID = './KC/IFGDHJPDONFMGJBIJOBEHJHAOPKKCNOIJHJDC/adi_kernel4/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_adi_kernel4(float* nocapture readonly %0, float* nocapture %1, float* nocapture %2, i32 %3, i32 %4, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %5, i64 %6, i64 %7, i64 %8) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
vector.scevcheck:
  %mul.i.i = shl i64 %6, 8
  %mul.i = mul nsw i32 %4, %3
  %sub.i = add nsw i32 %3, -1
  %mul1.i = mul nsw i32 %sub.i, %4
  %9 = mul i32 %4, %3
  %10 = trunc i64 %6 to i32
  %11 = shl i32 %10, 8
  %12 = add nsw i32 %9, %11
  %13 = icmp sgt i32 %12, 2147483392
  %14 = add i32 %3, -1
  %15 = mul i32 %14, %4
  %16 = add nsw i32 %15, %11
  %17 = icmp sgt i32 %16, 2147483392
  %18 = or i1 %13, %17
  br i1 %18, label %pregion_for_entry.entry.i.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.scevcheck
  br label %vector.body

pregion_for_entry.entry.i.preheader:              ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ]
  %19 = add nuw nsw i64 %index, %mul.i.i
  %20 = trunc i64 %19 to i32
  %21 = add nsw i32 %mul.i, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %2, i64 %22
  %24 = bitcast float* %23 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %24, align 4, !tbaa !12, !llvm.access.group !16
  %25 = add nsw i32 %mul1.i, %20
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %2, i64 %26
  %28 = bitcast float* %27 to <8 x float>*
  %wide.load4 = load <8 x float>, <8 x float>* %28, align 4, !tbaa !12, !llvm.access.group !16
  %29 = getelementptr inbounds float, float* %0, i64 %22
  %30 = bitcast float* %29 to <8 x float>*
  %wide.load5 = load <8 x float>, <8 x float>* %30, align 4, !tbaa !12, !llvm.access.group !16
  %31 = fmul <8 x float> %wide.load4, %wide.load5
  %32 = getelementptr inbounds float, float* %1, i64 %26
  %33 = bitcast float* %32 to <8 x float>*
  %wide.load6 = load <8 x float>, <8 x float>* %33, align 4, !tbaa !12, !llvm.access.group !16
  %34 = fdiv <8 x float> %31, %wide.load6, !fpmath !18
  %35 = fsub <8 x float> %wide.load, %34
  %36 = bitcast float* %23 to <8 x float>*
  store <8 x float> %35, <8 x float>* %36, align 4, !tbaa !12, !llvm.access.group !16
  %37 = getelementptr inbounds float, float* %1, i64 %22
  %38 = bitcast float* %37 to <8 x float>*
  %wide.load7 = load <8 x float>, <8 x float>* %38, align 4, !tbaa !12, !llvm.access.group !16
  %39 = bitcast float* %29 to <8 x float>*
  %wide.load8 = load <8 x float>, <8 x float>* %39, align 4, !tbaa !12, !llvm.access.group !16
  %40 = fmul <8 x float> %wide.load8, %wide.load8
  %41 = bitcast float* %32 to <8 x float>*
  %wide.load9 = load <8 x float>, <8 x float>* %41, align 4, !tbaa !12, !llvm.access.group !16
  %42 = fdiv <8 x float> %40, %wide.load9, !fpmath !18
  %43 = fsub <8 x float> %wide.load7, %42
  %44 = bitcast float* %37 to <8 x float>*
  store <8 x float> %43, <8 x float>* %44, align 4, !tbaa !12, !llvm.access.group !16
  %index.next = add i64 %index, 8
  %45 = icmp eq i64 %index.next, 256
  br i1 %45, label %adi_kernel4.exit.loopexit11, label %vector.body, !llvm.loop !19

pregion_for_entry.entry.i:                        ; preds = %pregion_for_entry.entry.i, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ %53, %pregion_for_entry.entry.i ], [ 0, %pregion_for_entry.entry.i.preheader ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %add.i = add nsw i32 %mul.i, %conv.i
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %2, i64 %idxprom.i
  %46 = load float, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %add2.i = add nsw i32 %mul1.i, %conv.i
  %idxprom3.i = sext i32 %add2.i to i64
  %arrayidx4.i = getelementptr inbounds float, float* %2, i64 %idxprom3.i
  %47 = load float, float* %arrayidx4.i, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx8.i = getelementptr inbounds float, float* %0, i64 %idxprom.i
  %48 = load float, float* %arrayidx8.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul9.i = fmul float %47, %48
  %arrayidx14.i = getelementptr inbounds float, float* %1, i64 %idxprom3.i
  %49 = load float, float* %arrayidx14.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i = fdiv float %mul9.i, %49, !fpmath !18
  %sub15.i = fsub float %46, %div.i
  store float %sub15.i, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx23.i = getelementptr inbounds float, float* %1, i64 %idxprom.i
  %50 = load float, float* %arrayidx23.i, align 4, !tbaa !12, !llvm.access.group !16
  %51 = load float, float* %arrayidx8.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul32.i = fmul float %51, %51
  %52 = load float, float* %arrayidx14.i, align 4, !tbaa !12, !llvm.access.group !16
  %div38.i = fdiv float %mul32.i, %52, !fpmath !18
  %sub39.i = fsub float %50, %div38.i
  store float %sub39.i, float* %arrayidx23.i, align 4, !tbaa !12, !llvm.access.group !16
  %53 = add nuw nsw i64 %_local_id_x.0, 1
  %exitcond.not = icmp eq i64 %53, 256
  br i1 %exitcond.not, label %adi_kernel4.exit.loopexit, label %pregion_for_entry.entry.i, !llvm.loop !22

adi_kernel4.exit.loopexit:                        ; preds = %pregion_for_entry.entry.i
  br label %adi_kernel4.exit

adi_kernel4.exit.loopexit11:                      ; preds = %vector.body
  br label %adi_kernel4.exit

adi_kernel4.exit:                                 ; preds = %adi_kernel4.exit.loopexit11, %adi_kernel4.exit.loopexit
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
  %mul1.i.i = mul nsw i32 %23, %sub.i.i
  %24 = mul i32 %23, %19
  %25 = trunc i64 %2 to i32
  %26 = shl i32 %25, 8
  %27 = add nsw i32 %24, %26
  %28 = icmp sgt i32 %27, 2147483392
  %29 = add i32 %19, -1
  %30 = mul i32 %23, %29
  %31 = add nsw i32 %30, %26
  %32 = icmp sgt i32 %31, 2147483392
  %33 = or i1 %28, %32
  br i1 %33, label %pregion_for_entry.entry.i.i.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.scevcheck
  br label %vector.body

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ]
  %34 = add nuw nsw i64 %index, %mul.i.i.i
  %35 = trunc i64 %34 to i32
  %36 = add nsw i32 %mul.i.i, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %15, i64 %37
  %39 = bitcast float* %38 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %39, align 4, !tbaa !12, !llvm.access.group !16
  %40 = add nsw i32 %mul1.i.i, %35
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %15, i64 %41
  %43 = bitcast float* %42 to <8 x float>*
  %wide.load4 = load <8 x float>, <8 x float>* %43, align 4, !tbaa !12, !llvm.access.group !16
  %44 = getelementptr inbounds float, float* %7, i64 %37
  %45 = bitcast float* %44 to <8 x float>*
  %wide.load5 = load <8 x float>, <8 x float>* %45, align 4, !tbaa !12, !llvm.access.group !16
  %46 = fmul <8 x float> %wide.load4, %wide.load5
  %47 = getelementptr inbounds float, float* %11, i64 %41
  %48 = bitcast float* %47 to <8 x float>*
  %wide.load6 = load <8 x float>, <8 x float>* %48, align 4, !tbaa !12, !llvm.access.group !16
  %49 = fdiv <8 x float> %46, %wide.load6, !fpmath !18
  %50 = fsub <8 x float> %wide.load, %49
  %51 = bitcast float* %38 to <8 x float>*
  store <8 x float> %50, <8 x float>* %51, align 4, !tbaa !12, !llvm.access.group !16
  %52 = getelementptr inbounds float, float* %11, i64 %37
  %53 = bitcast float* %52 to <8 x float>*
  %wide.load7 = load <8 x float>, <8 x float>* %53, align 4, !tbaa !12, !llvm.access.group !16
  %54 = bitcast float* %44 to <8 x float>*
  %wide.load8 = load <8 x float>, <8 x float>* %54, align 4, !tbaa !12, !llvm.access.group !16
  %55 = fmul <8 x float> %wide.load8, %wide.load8
  %56 = bitcast float* %47 to <8 x float>*
  %wide.load9 = load <8 x float>, <8 x float>* %56, align 4, !tbaa !12, !llvm.access.group !16
  %57 = fdiv <8 x float> %55, %wide.load9, !fpmath !18
  %58 = fsub <8 x float> %wide.load7, %57
  %59 = bitcast float* %52 to <8 x float>*
  store <8 x float> %58, <8 x float>* %59, align 4, !tbaa !12, !llvm.access.group !16
  %index.next = add i64 %index, 8
  %60 = icmp eq i64 %index.next, 256
  br i1 %60, label %_pocl_kernel_adi_kernel4.exit.loopexit11, label %vector.body, !llvm.loop !23

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %68, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %15, i64 %idxprom.i.i
  %61 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add2.i.i = add nsw i32 %mul1.i.i, %conv.i.i
  %idxprom3.i.i = sext i32 %add2.i.i to i64
  %arrayidx4.i.i = getelementptr inbounds float, float* %15, i64 %idxprom3.i.i
  %62 = load float, float* %arrayidx4.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx8.i.i = getelementptr inbounds float, float* %7, i64 %idxprom.i.i
  %63 = load float, float* %arrayidx8.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul9.i.i = fmul float %62, %63
  %arrayidx14.i.i = getelementptr inbounds float, float* %11, i64 %idxprom3.i.i
  %64 = load float, float* %arrayidx14.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i = fdiv float %mul9.i.i, %64, !fpmath !18
  %sub15.i.i = fsub float %61, %div.i.i
  store float %sub15.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx23.i.i = getelementptr inbounds float, float* %11, i64 %idxprom.i.i
  %65 = load float, float* %arrayidx23.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %66 = load float, float* %arrayidx8.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul32.i.i = fmul float %66, %66
  %67 = load float, float* %arrayidx14.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div38.i.i = fdiv float %mul32.i.i, %67, !fpmath !18
  %sub39.i.i = fsub float %65, %div38.i.i
  store float %sub39.i.i, float* %arrayidx23.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %68 = add nuw nsw i64 %_local_id_x.i.0, 1
  %exitcond.not = icmp eq i64 %68, 256
  br i1 %exitcond.not, label %_pocl_kernel_adi_kernel4.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !24

_pocl_kernel_adi_kernel4.exit.loopexit:           ; preds = %pregion_for_entry.entry.i.i
  br label %_pocl_kernel_adi_kernel4.exit

_pocl_kernel_adi_kernel4.exit.loopexit11:         ; preds = %vector.body
  br label %_pocl_kernel_adi_kernel4.exit

_pocl_kernel_adi_kernel4.exit:                    ; preds = %_pocl_kernel_adi_kernel4.exit.loopexit11, %_pocl_kernel_adi_kernel4.exit.loopexit
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
  %mul1.i.i = mul nsw i32 %20, %sub.i.i
  %21 = mul i32 %20, %16
  %22 = trunc i64 %2 to i32
  %23 = shl i32 %22, 8
  %24 = add nsw i32 %21, %23
  %25 = icmp sgt i32 %24, 2147483392
  %26 = add i32 %16, -1
  %27 = mul i32 %20, %26
  %28 = add nsw i32 %27, %23
  %29 = icmp sgt i32 %28, 2147483392
  %30 = or i1 %25, %29
  br i1 %30, label %pregion_for_entry.entry.i.i.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.scevcheck
  br label %vector.body

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ]
  %31 = add nuw nsw i64 %index, %mul.i.i.i
  %32 = trunc i64 %31 to i32
  %33 = add nsw i32 %mul.i.i, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %12, i64 %34
  %36 = bitcast float* %35 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %36, align 4, !tbaa !12, !llvm.access.group !16
  %37 = add nsw i32 %mul1.i.i, %32
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %12, i64 %38
  %40 = bitcast float* %39 to <8 x float>*
  %wide.load4 = load <8 x float>, <8 x float>* %40, align 4, !tbaa !12, !llvm.access.group !16
  %41 = getelementptr inbounds float, float* %6, i64 %34
  %42 = bitcast float* %41 to <8 x float>*
  %wide.load5 = load <8 x float>, <8 x float>* %42, align 4, !tbaa !12, !llvm.access.group !16
  %43 = fmul <8 x float> %wide.load4, %wide.load5
  %44 = getelementptr inbounds float, float* %9, i64 %38
  %45 = bitcast float* %44 to <8 x float>*
  %wide.load6 = load <8 x float>, <8 x float>* %45, align 4, !tbaa !12, !llvm.access.group !16
  %46 = fdiv <8 x float> %43, %wide.load6, !fpmath !18
  %47 = fsub <8 x float> %wide.load, %46
  %48 = bitcast float* %35 to <8 x float>*
  store <8 x float> %47, <8 x float>* %48, align 4, !tbaa !12, !llvm.access.group !16
  %49 = getelementptr inbounds float, float* %9, i64 %34
  %50 = bitcast float* %49 to <8 x float>*
  %wide.load7 = load <8 x float>, <8 x float>* %50, align 4, !tbaa !12, !llvm.access.group !16
  %51 = bitcast float* %41 to <8 x float>*
  %wide.load8 = load <8 x float>, <8 x float>* %51, align 4, !tbaa !12, !llvm.access.group !16
  %52 = fmul <8 x float> %wide.load8, %wide.load8
  %53 = bitcast float* %44 to <8 x float>*
  %wide.load9 = load <8 x float>, <8 x float>* %53, align 4, !tbaa !12, !llvm.access.group !16
  %54 = fdiv <8 x float> %52, %wide.load9, !fpmath !18
  %55 = fsub <8 x float> %wide.load7, %54
  %56 = bitcast float* %49 to <8 x float>*
  store <8 x float> %55, <8 x float>* %56, align 4, !tbaa !12, !llvm.access.group !16
  %index.next = add i64 %index, 8
  %57 = icmp eq i64 %index.next, 256
  br i1 %57, label %_pocl_kernel_adi_kernel4.exit.loopexit11, label %vector.body, !llvm.loop !25

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %65, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %12, i64 %idxprom.i.i
  %58 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add2.i.i = add nsw i32 %mul1.i.i, %conv.i.i
  %idxprom3.i.i = sext i32 %add2.i.i to i64
  %arrayidx4.i.i = getelementptr inbounds float, float* %12, i64 %idxprom3.i.i
  %59 = load float, float* %arrayidx4.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx8.i.i = getelementptr inbounds float, float* %6, i64 %idxprom.i.i
  %60 = load float, float* %arrayidx8.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul9.i.i = fmul float %59, %60
  %arrayidx14.i.i = getelementptr inbounds float, float* %9, i64 %idxprom3.i.i
  %61 = load float, float* %arrayidx14.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i = fdiv float %mul9.i.i, %61, !fpmath !18
  %sub15.i.i = fsub float %58, %div.i.i
  store float %sub15.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx23.i.i = getelementptr inbounds float, float* %9, i64 %idxprom.i.i
  %62 = load float, float* %arrayidx23.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %63 = load float, float* %arrayidx8.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul32.i.i = fmul float %63, %63
  %64 = load float, float* %arrayidx14.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div38.i.i = fdiv float %mul32.i.i, %64, !fpmath !18
  %sub39.i.i = fsub float %62, %div38.i.i
  store float %sub39.i.i, float* %arrayidx23.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %65 = add nuw nsw i64 %_local_id_x.i.0, 1
  %exitcond.not = icmp eq i64 %65, 256
  br i1 %exitcond.not, label %_pocl_kernel_adi_kernel4.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !26

_pocl_kernel_adi_kernel4.exit.loopexit:           ; preds = %pregion_for_entry.entry.i.i
  br label %_pocl_kernel_adi_kernel4.exit

_pocl_kernel_adi_kernel4.exit.loopexit11:         ; preds = %vector.body
  br label %_pocl_kernel_adi_kernel4.exit

_pocl_kernel_adi_kernel4.exit:                    ; preds = %_pocl_kernel_adi_kernel4.exit.loopexit11, %_pocl_kernel_adi_kernel4.exit.loopexit
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
