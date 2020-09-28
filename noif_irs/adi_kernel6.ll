; ModuleID = './KC/IFGDHJPDONFMGJBIJOBEHJHAOPKKCNOIJHJDC/adi_kernel6/256-1-1-goffs0-smallgrid/parallel.bc'
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
  %sub1.i = add i32 %sub.i, %4
  %mul.i = mul nsw i32 %sub1.i, %4
  %sub2.i = sub i32 -3, %3
  %sub3.i = add i32 %sub2.i, %4
  %mul4.i = mul nsw i32 %sub3.i, %4
  %9 = mul i32 %sub1.i, %4
  %10 = trunc i64 %6 to i32
  %11 = shl i32 %10, 8
  %12 = add nsw i32 %9, %11
  %13 = icmp sgt i32 %12, 2147483392
  %14 = mul i32 %sub3.i, %4
  %15 = add nsw i32 %14, %11
  %16 = icmp sgt i32 %15, 2147483392
  %17 = or i1 %13, %16
  br i1 %17, label %pregion_for_entry.entry.i.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.scevcheck
  br label %vector.body

pregion_for_entry.entry.i.preheader:              ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.body.preheader ]
  %18 = add nuw nsw i64 %index, %mul.i.i
  %19 = trunc i64 %18 to i32
  %20 = add nsw i32 %mul.i, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %2, i64 %21
  %23 = bitcast float* %22 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %23, align 4, !tbaa !12, !llvm.access.group !16
  %24 = add nsw i32 %mul4.i, %19
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %2, i64 %25
  %27 = bitcast float* %26 to <8 x float>*
  %wide.load4 = load <8 x float>, <8 x float>* %27, align 4, !tbaa !12, !llvm.access.group !16
  %28 = getelementptr inbounds float, float* %0, i64 %25
  %29 = bitcast float* %28 to <8 x float>*
  %wide.load5 = load <8 x float>, <8 x float>* %29, align 4, !tbaa !12, !llvm.access.group !16
  %30 = fneg <8 x float> %wide.load4
  %31 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %30, <8 x float> %wide.load5, <8 x float> %wide.load)
  %32 = getelementptr inbounds float, float* %1, i64 %21
  %33 = bitcast float* %32 to <8 x float>*
  %wide.load6 = load <8 x float>, <8 x float>* %33, align 4, !tbaa !12, !llvm.access.group !16
  %34 = fdiv <8 x float> %31, %wide.load6, !fpmath !18
  %35 = bitcast float* %22 to <8 x float>*
  store <8 x float> %34, <8 x float>* %35, align 4, !tbaa !12, !llvm.access.group !16
  %index.next = or i64 %index, 8
  %36 = add nuw nsw i64 %index.next, %mul.i.i
  %37 = trunc i64 %36 to i32
  %38 = add nsw i32 %mul.i, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %2, i64 %39
  %41 = bitcast float* %40 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %41, align 4, !tbaa !12, !llvm.access.group !16
  %42 = add nsw i32 %mul4.i, %37
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %2, i64 %43
  %45 = bitcast float* %44 to <8 x float>*
  %wide.load4.1 = load <8 x float>, <8 x float>* %45, align 4, !tbaa !12, !llvm.access.group !16
  %46 = getelementptr inbounds float, float* %0, i64 %43
  %47 = bitcast float* %46 to <8 x float>*
  %wide.load5.1 = load <8 x float>, <8 x float>* %47, align 4, !tbaa !12, !llvm.access.group !16
  %48 = fneg <8 x float> %wide.load4.1
  %49 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %48, <8 x float> %wide.load5.1, <8 x float> %wide.load.1)
  %50 = getelementptr inbounds float, float* %1, i64 %39
  %51 = bitcast float* %50 to <8 x float>*
  %wide.load6.1 = load <8 x float>, <8 x float>* %51, align 4, !tbaa !12, !llvm.access.group !16
  %52 = fdiv <8 x float> %49, %wide.load6.1, !fpmath !18
  %53 = bitcast float* %40 to <8 x float>*
  store <8 x float> %52, <8 x float>* %53, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.1 = add nuw nsw i64 %index, 16
  %54 = icmp eq i64 %index.next.1, 256
  br i1 %54, label %adi_kernel6.exit.loopexit8, label %vector.body, !llvm.loop !19

pregion_for_entry.entry.i:                        ; preds = %pregion_for_entry.entry.i, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ %66, %pregion_for_entry.entry.i ], [ 0, %pregion_for_entry.entry.i.preheader ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %add.i = add nsw i32 %mul.i, %conv.i
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %2, i64 %idxprom.i
  %55 = load float, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i = add nsw i32 %mul4.i, %conv.i
  %idxprom6.i = sext i32 %add5.i to i64
  %arrayidx7.i = getelementptr inbounds float, float* %2, i64 %idxprom6.i
  %56 = load float, float* %arrayidx7.i, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx13.i = getelementptr inbounds float, float* %0, i64 %idxprom6.i
  %57 = load float, float* %arrayidx13.i, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i = fneg float %56
  %58 = tail call float @llvm.fmuladd.f32(float %neg.i, float %57, float %55) #3
  %arrayidx20.i = getelementptr inbounds float, float* %1, i64 %idxprom.i
  %59 = load float, float* %arrayidx20.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i = fdiv float %58, %59, !fpmath !18
  store float %div.i, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %60 = or i64 %_local_id_x.0, 1
  %add1.i.i.1 = add nuw nsw i64 %60, %mul.i.i
  %conv.i.1 = trunc i64 %add1.i.i.1 to i32
  %add.i.1 = add nsw i32 %mul.i, %conv.i.1
  %idxprom.i.1 = sext i32 %add.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.1
  %61 = load float, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.1 = add nsw i32 %mul4.i, %conv.i.1
  %idxprom6.i.1 = sext i32 %add5.i.1 to i64
  %arrayidx7.i.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.1
  %62 = load float, float* %arrayidx7.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx13.i.1 = getelementptr inbounds float, float* %0, i64 %idxprom6.i.1
  %63 = load float, float* %arrayidx13.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.1 = fneg float %62
  %64 = tail call float @llvm.fmuladd.f32(float %neg.i.1, float %63, float %61) #3
  %arrayidx20.i.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.1
  %65 = load float, float* %arrayidx20.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.1 = fdiv float %64, %65, !fpmath !18
  store float %div.i.1, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %66 = add nuw nsw i64 %_local_id_x.0, 2
  %exitcond.not.1 = icmp eq i64 %66, 256
  br i1 %exitcond.not.1, label %adi_kernel6.exit.loopexit, label %pregion_for_entry.entry.i, !llvm.loop !22

adi_kernel6.exit.loopexit:                        ; preds = %pregion_for_entry.entry.i
  br label %adi_kernel6.exit

adi_kernel6.exit.loopexit8:                       ; preds = %vector.body
  br label %adi_kernel6.exit

adi_kernel6.exit:                                 ; preds = %adi_kernel6.exit.loopexit8, %adi_kernel6.exit.loopexit
  ret void
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
  %sub1.i.i = add i32 %sub.i.i, %23
  %mul.i.i = mul nsw i32 %sub1.i.i, %23
  %sub2.i.i = sub i32 -3, %19
  %sub3.i.i = add i32 %sub2.i.i, %23
  %mul4.i.i = mul nsw i32 %sub3.i.i, %23
  %24 = mul i32 %23, %sub1.i.i
  %25 = trunc i64 %2 to i32
  %26 = shl i32 %25, 8
  %27 = add nsw i32 %24, %26
  %28 = icmp sgt i32 %27, 2147483392
  %29 = mul i32 %23, %sub3.i.i
  %30 = add nsw i32 %29, %26
  %31 = icmp sgt i32 %30, 2147483392
  %32 = or i1 %28, %31
  br i1 %32, label %pregion_for_entry.entry.i.i.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.scevcheck
  br label %vector.body

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.body.preheader ]
  %33 = add nuw nsw i64 %index, %mul.i.i.i
  %34 = trunc i64 %33 to i32
  %35 = add nsw i32 %mul.i.i, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %15, i64 %36
  %38 = bitcast float* %37 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %38, align 4, !tbaa !12, !llvm.access.group !16
  %39 = add nsw i32 %mul4.i.i, %34
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %15, i64 %40
  %42 = bitcast float* %41 to <8 x float>*
  %wide.load4 = load <8 x float>, <8 x float>* %42, align 4, !tbaa !12, !llvm.access.group !16
  %43 = getelementptr inbounds float, float* %7, i64 %40
  %44 = bitcast float* %43 to <8 x float>*
  %wide.load5 = load <8 x float>, <8 x float>* %44, align 4, !tbaa !12, !llvm.access.group !16
  %45 = fneg <8 x float> %wide.load4
  %46 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %45, <8 x float> %wide.load5, <8 x float> %wide.load)
  %47 = getelementptr inbounds float, float* %11, i64 %36
  %48 = bitcast float* %47 to <8 x float>*
  %wide.load6 = load <8 x float>, <8 x float>* %48, align 4, !tbaa !12, !llvm.access.group !16
  %49 = fdiv <8 x float> %46, %wide.load6, !fpmath !18
  %50 = bitcast float* %37 to <8 x float>*
  store <8 x float> %49, <8 x float>* %50, align 4, !tbaa !12, !llvm.access.group !16
  %index.next = or i64 %index, 8
  %51 = add nuw nsw i64 %index.next, %mul.i.i.i
  %52 = trunc i64 %51 to i32
  %53 = add nsw i32 %mul.i.i, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %15, i64 %54
  %56 = bitcast float* %55 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %56, align 4, !tbaa !12, !llvm.access.group !16
  %57 = add nsw i32 %mul4.i.i, %52
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %15, i64 %58
  %60 = bitcast float* %59 to <8 x float>*
  %wide.load4.1 = load <8 x float>, <8 x float>* %60, align 4, !tbaa !12, !llvm.access.group !16
  %61 = getelementptr inbounds float, float* %7, i64 %58
  %62 = bitcast float* %61 to <8 x float>*
  %wide.load5.1 = load <8 x float>, <8 x float>* %62, align 4, !tbaa !12, !llvm.access.group !16
  %63 = fneg <8 x float> %wide.load4.1
  %64 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %63, <8 x float> %wide.load5.1, <8 x float> %wide.load.1)
  %65 = getelementptr inbounds float, float* %11, i64 %54
  %66 = bitcast float* %65 to <8 x float>*
  %wide.load6.1 = load <8 x float>, <8 x float>* %66, align 4, !tbaa !12, !llvm.access.group !16
  %67 = fdiv <8 x float> %64, %wide.load6.1, !fpmath !18
  %68 = bitcast float* %55 to <8 x float>*
  store <8 x float> %67, <8 x float>* %68, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.1 = add nuw nsw i64 %index, 16
  %69 = icmp eq i64 %index.next.1, 256
  br i1 %69, label %_pocl_kernel_adi_kernel6.exit.loopexit8, label %vector.body, !llvm.loop !23

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %81, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %15, i64 %idxprom.i.i
  %70 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i = add nsw i32 %mul4.i.i, %conv.i.i
  %idxprom6.i.i = sext i32 %add5.i.i to i64
  %arrayidx7.i.i = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i
  %71 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx13.i.i = getelementptr inbounds float, float* %7, i64 %idxprom6.i.i
  %72 = load float, float* %arrayidx13.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i = fneg float %71
  %73 = tail call float @llvm.fmuladd.f32(float %neg.i.i, float %72, float %70) #3
  %arrayidx20.i.i = getelementptr inbounds float, float* %11, i64 %idxprom.i.i
  %74 = load float, float* %arrayidx20.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i = fdiv float %73, %74, !fpmath !18
  store float %div.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %75 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %75, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %15, i64 %idxprom.i.i.1
  %76 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.1 = add nsw i32 %mul4.i.i, %conv.i.i.1
  %idxprom6.i.i.1 = sext i32 %add5.i.i.1 to i64
  %arrayidx7.i.i.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.1
  %77 = load float, float* %arrayidx7.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx13.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom6.i.i.1
  %78 = load float, float* %arrayidx13.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.1 = fneg float %77
  %79 = tail call float @llvm.fmuladd.f32(float %neg.i.i.1, float %78, float %76) #3
  %arrayidx20.i.i.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.1
  %80 = load float, float* %arrayidx20.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i.1 = fdiv float %79, %80, !fpmath !18
  store float %div.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %81 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %81, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_adi_kernel6.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !24

_pocl_kernel_adi_kernel6.exit.loopexit:           ; preds = %pregion_for_entry.entry.i.i
  br label %_pocl_kernel_adi_kernel6.exit

_pocl_kernel_adi_kernel6.exit.loopexit8:          ; preds = %vector.body
  br label %_pocl_kernel_adi_kernel6.exit

_pocl_kernel_adi_kernel6.exit:                    ; preds = %_pocl_kernel_adi_kernel6.exit.loopexit8, %_pocl_kernel_adi_kernel6.exit.loopexit
  ret void
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
  %sub1.i.i = add i32 %sub.i.i, %20
  %mul.i.i = mul nsw i32 %sub1.i.i, %20
  %sub2.i.i = sub i32 -3, %16
  %sub3.i.i = add i32 %sub2.i.i, %20
  %mul4.i.i = mul nsw i32 %sub3.i.i, %20
  %21 = mul i32 %20, %sub1.i.i
  %22 = trunc i64 %2 to i32
  %23 = shl i32 %22, 8
  %24 = add nsw i32 %21, %23
  %25 = icmp sgt i32 %24, 2147483392
  %26 = mul i32 %20, %sub3.i.i
  %27 = add nsw i32 %26, %23
  %28 = icmp sgt i32 %27, 2147483392
  %29 = or i1 %25, %28
  br i1 %29, label %pregion_for_entry.entry.i.i.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.scevcheck
  br label %vector.body

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.body.preheader ]
  %30 = add nuw nsw i64 %index, %mul.i.i.i
  %31 = trunc i64 %30 to i32
  %32 = add nsw i32 %mul.i.i, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %12, i64 %33
  %35 = bitcast float* %34 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %35, align 4, !tbaa !12, !llvm.access.group !16
  %36 = add nsw i32 %mul4.i.i, %31
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %12, i64 %37
  %39 = bitcast float* %38 to <8 x float>*
  %wide.load4 = load <8 x float>, <8 x float>* %39, align 4, !tbaa !12, !llvm.access.group !16
  %40 = getelementptr inbounds float, float* %6, i64 %37
  %41 = bitcast float* %40 to <8 x float>*
  %wide.load5 = load <8 x float>, <8 x float>* %41, align 4, !tbaa !12, !llvm.access.group !16
  %42 = fneg <8 x float> %wide.load4
  %43 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %42, <8 x float> %wide.load5, <8 x float> %wide.load)
  %44 = getelementptr inbounds float, float* %9, i64 %33
  %45 = bitcast float* %44 to <8 x float>*
  %wide.load6 = load <8 x float>, <8 x float>* %45, align 4, !tbaa !12, !llvm.access.group !16
  %46 = fdiv <8 x float> %43, %wide.load6, !fpmath !18
  %47 = bitcast float* %34 to <8 x float>*
  store <8 x float> %46, <8 x float>* %47, align 4, !tbaa !12, !llvm.access.group !16
  %index.next = or i64 %index, 8
  %48 = add nuw nsw i64 %index.next, %mul.i.i.i
  %49 = trunc i64 %48 to i32
  %50 = add nsw i32 %mul.i.i, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %12, i64 %51
  %53 = bitcast float* %52 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %53, align 4, !tbaa !12, !llvm.access.group !16
  %54 = add nsw i32 %mul4.i.i, %49
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %12, i64 %55
  %57 = bitcast float* %56 to <8 x float>*
  %wide.load4.1 = load <8 x float>, <8 x float>* %57, align 4, !tbaa !12, !llvm.access.group !16
  %58 = getelementptr inbounds float, float* %6, i64 %55
  %59 = bitcast float* %58 to <8 x float>*
  %wide.load5.1 = load <8 x float>, <8 x float>* %59, align 4, !tbaa !12, !llvm.access.group !16
  %60 = fneg <8 x float> %wide.load4.1
  %61 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %60, <8 x float> %wide.load5.1, <8 x float> %wide.load.1)
  %62 = getelementptr inbounds float, float* %9, i64 %51
  %63 = bitcast float* %62 to <8 x float>*
  %wide.load6.1 = load <8 x float>, <8 x float>* %63, align 4, !tbaa !12, !llvm.access.group !16
  %64 = fdiv <8 x float> %61, %wide.load6.1, !fpmath !18
  %65 = bitcast float* %52 to <8 x float>*
  store <8 x float> %64, <8 x float>* %65, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.1 = add nuw nsw i64 %index, 16
  %66 = icmp eq i64 %index.next.1, 256
  br i1 %66, label %_pocl_kernel_adi_kernel6.exit.loopexit8, label %vector.body, !llvm.loop !25

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %78, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %12, i64 %idxprom.i.i
  %67 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i = add nsw i32 %mul4.i.i, %conv.i.i
  %idxprom6.i.i = sext i32 %add5.i.i to i64
  %arrayidx7.i.i = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i
  %68 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx13.i.i = getelementptr inbounds float, float* %6, i64 %idxprom6.i.i
  %69 = load float, float* %arrayidx13.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i = fneg float %68
  %70 = tail call float @llvm.fmuladd.f32(float %neg.i.i, float %69, float %67) #3
  %arrayidx20.i.i = getelementptr inbounds float, float* %9, i64 %idxprom.i.i
  %71 = load float, float* %arrayidx20.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i = fdiv float %70, %71, !fpmath !18
  store float %div.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %72 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %72, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.1
  %73 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.1 = add nsw i32 %mul4.i.i, %conv.i.i.1
  %idxprom6.i.i.1 = sext i32 %add5.i.i.1 to i64
  %arrayidx7.i.i.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.1
  %74 = load float, float* %arrayidx7.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx13.i.i.1 = getelementptr inbounds float, float* %6, i64 %idxprom6.i.i.1
  %75 = load float, float* %arrayidx13.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.1 = fneg float %74
  %76 = tail call float @llvm.fmuladd.f32(float %neg.i.i.1, float %75, float %73) #3
  %arrayidx20.i.i.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.1
  %77 = load float, float* %arrayidx20.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %div.i.i.1 = fdiv float %76, %77, !fpmath !18
  store float %div.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %78 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %78, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_adi_kernel6.exit.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !26

_pocl_kernel_adi_kernel6.exit.loopexit:           ; preds = %pregion_for_entry.entry.i.i
  br label %_pocl_kernel_adi_kernel6.exit

_pocl_kernel_adi_kernel6.exit.loopexit8:          ; preds = %vector.body
  br label %_pocl_kernel_adi_kernel6.exit

_pocl_kernel_adi_kernel6.exit:                    ; preds = %_pocl_kernel_adi_kernel6.exit.loopexit8, %_pocl_kernel_adi_kernel6.exit.loopexit
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #0

attributes #0 = { nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

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
