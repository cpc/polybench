; ModuleID = './HM/GFDKMJEFFAFJAGFNLKKMFKHPIPNKJKBNFJILN/bicgKernel1/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_bicgKernel1(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, i32 %3, i32 %4, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %5, i64 %6, i64 %7, i64 %8) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %6, 8
  %cmp18.i = icmp sgt i32 %4, 0
  %wide.trip.count.i = zext i32 %4 to i64
  br i1 %cmp18.i, label %pregion_for_entry.entry.i.us.preheader, label %vector.body

pregion_for_entry.entry.i.us.preheader:           ; preds = %9
  br label %pregion_for_entry.entry.i.us

vector.body:                                      ; preds = %9
  %10 = shl i64 %6, 40
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds float, float* %2, i64 %11
  %13 = bitcast float* %12 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %13, align 4, !tbaa !12, !llvm.access.group !16
  %14 = getelementptr inbounds float, float* %12, i64 8
  %15 = bitcast float* %14 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %15, align 4, !tbaa !12, !llvm.access.group !16
  %16 = getelementptr inbounds float, float* %12, i64 16
  %17 = bitcast float* %16 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %17, align 4, !tbaa !12, !llvm.access.group !16
  %18 = getelementptr inbounds float, float* %12, i64 24
  %19 = bitcast float* %18 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %19, align 4, !tbaa !12, !llvm.access.group !16
  %20 = shl i64 %6, 40
  %21 = ashr exact i64 %20, 32
  %22 = or i64 %21, 32
  %23 = getelementptr inbounds float, float* %2, i64 %22
  %24 = bitcast float* %23 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %24, align 4, !tbaa !12, !llvm.access.group !16
  %25 = getelementptr inbounds float, float* %23, i64 8
  %26 = bitcast float* %25 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %26, align 4, !tbaa !12, !llvm.access.group !16
  %27 = getelementptr inbounds float, float* %23, i64 16
  %28 = bitcast float* %27 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %28, align 4, !tbaa !12, !llvm.access.group !16
  %29 = getelementptr inbounds float, float* %23, i64 24
  %30 = bitcast float* %29 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %30, align 4, !tbaa !12, !llvm.access.group !16
  %31 = shl i64 %6, 40
  %32 = ashr exact i64 %31, 32
  %33 = or i64 %32, 64
  %34 = getelementptr inbounds float, float* %2, i64 %33
  %35 = bitcast float* %34 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %35, align 4, !tbaa !12, !llvm.access.group !16
  %36 = getelementptr inbounds float, float* %34, i64 8
  %37 = bitcast float* %36 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %37, align 4, !tbaa !12, !llvm.access.group !16
  %38 = getelementptr inbounds float, float* %34, i64 16
  %39 = bitcast float* %38 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %39, align 4, !tbaa !12, !llvm.access.group !16
  %40 = getelementptr inbounds float, float* %34, i64 24
  %41 = bitcast float* %40 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %41, align 4, !tbaa !12, !llvm.access.group !16
  %42 = shl i64 %6, 40
  %43 = ashr exact i64 %42, 32
  %44 = or i64 %43, 96
  %45 = getelementptr inbounds float, float* %2, i64 %44
  %46 = bitcast float* %45 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %46, align 4, !tbaa !12, !llvm.access.group !16
  %47 = getelementptr inbounds float, float* %45, i64 8
  %48 = bitcast float* %47 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %48, align 4, !tbaa !12, !llvm.access.group !16
  %49 = getelementptr inbounds float, float* %45, i64 16
  %50 = bitcast float* %49 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %50, align 4, !tbaa !12, !llvm.access.group !16
  %51 = getelementptr inbounds float, float* %45, i64 24
  %52 = bitcast float* %51 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %52, align 4, !tbaa !12, !llvm.access.group !16
  %53 = shl i64 %6, 40
  %54 = ashr exact i64 %53, 32
  %55 = or i64 %54, 128
  %56 = getelementptr inbounds float, float* %2, i64 %55
  %57 = bitcast float* %56 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %57, align 4, !tbaa !12, !llvm.access.group !16
  %58 = getelementptr inbounds float, float* %56, i64 8
  %59 = bitcast float* %58 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %59, align 4, !tbaa !12, !llvm.access.group !16
  %60 = getelementptr inbounds float, float* %56, i64 16
  %61 = bitcast float* %60 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %61, align 4, !tbaa !12, !llvm.access.group !16
  %62 = getelementptr inbounds float, float* %56, i64 24
  %63 = bitcast float* %62 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %63, align 4, !tbaa !12, !llvm.access.group !16
  %64 = shl i64 %6, 40
  %65 = ashr exact i64 %64, 32
  %66 = or i64 %65, 160
  %67 = getelementptr inbounds float, float* %2, i64 %66
  %68 = bitcast float* %67 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %68, align 4, !tbaa !12, !llvm.access.group !16
  %69 = getelementptr inbounds float, float* %67, i64 8
  %70 = bitcast float* %69 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %70, align 4, !tbaa !12, !llvm.access.group !16
  %71 = getelementptr inbounds float, float* %67, i64 16
  %72 = bitcast float* %71 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %72, align 4, !tbaa !12, !llvm.access.group !16
  %73 = getelementptr inbounds float, float* %67, i64 24
  %74 = bitcast float* %73 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %74, align 4, !tbaa !12, !llvm.access.group !16
  %75 = shl i64 %6, 40
  %76 = ashr exact i64 %75, 32
  %77 = or i64 %76, 192
  %78 = getelementptr inbounds float, float* %2, i64 %77
  %79 = bitcast float* %78 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %79, align 4, !tbaa !12, !llvm.access.group !16
  %80 = getelementptr inbounds float, float* %78, i64 8
  %81 = bitcast float* %80 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %81, align 4, !tbaa !12, !llvm.access.group !16
  %82 = getelementptr inbounds float, float* %78, i64 16
  %83 = bitcast float* %82 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %83, align 4, !tbaa !12, !llvm.access.group !16
  %84 = getelementptr inbounds float, float* %78, i64 24
  %85 = bitcast float* %84 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %85, align 4, !tbaa !12, !llvm.access.group !16
  %86 = shl i64 %6, 40
  %87 = ashr exact i64 %86, 32
  %88 = or i64 %87, 224
  %89 = getelementptr inbounds float, float* %2, i64 %88
  %90 = bitcast float* %89 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %90, align 4, !tbaa !12, !llvm.access.group !16
  %91 = getelementptr inbounds float, float* %89, i64 8
  %92 = bitcast float* %91 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %92, align 4, !tbaa !12, !llvm.access.group !16
  %93 = getelementptr inbounds float, float* %89, i64 16
  %94 = bitcast float* %93 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %94, align 4, !tbaa !12, !llvm.access.group !16
  %95 = getelementptr inbounds float, float* %89, i64 24
  %96 = bitcast float* %95 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %96, align 4, !tbaa !12, !llvm.access.group !16
  br label %bicgKernel1.exit

pregion_for_entry.entry.i.us:                     ; preds = %for.end.r_exit.i.loopexit.us.1, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %110, %for.end.r_exit.i.loopexit.us.1 ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %sext.i.us = shl i64 %add1.i.i.us, 32
  %idxprom.i.us = ashr exact i64 %sext.i.us, 32
  %arrayidx.i.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us
  store float 0.000000e+00, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %mul.i.us = mul nsw i32 %conv.i.us, %4
  %97 = sext i32 %mul.i.us to i64
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %pregion_for_entry.entry.i.us
  %indvars.iv.next.i2.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %pregion_for_entry.entry.i.us ]
  %98 = phi float [ %102, %for.body.i.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.us ]
  %99 = add nsw i64 %indvars.iv.next.i2.us, %97
  %arrayidx3.i.us = getelementptr inbounds float, float* %0, i64 %99
  %100 = load float, float* %arrayidx3.i.us, align 4, !tbaa !12
  %arrayidx5.i.us = getelementptr inbounds float, float* %1, i64 %indvars.iv.next.i2.us
  %101 = load float, float* %arrayidx5.i.us, align 4, !tbaa !12
  %102 = tail call float @llvm.fmuladd.f32(float %100, float %101, float %98) #2
  store float %102, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i2.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %for.end.r_exit.i.loopexit.us, label %for.body.i.us, !llvm.loop !18

for.end.r_exit.i.loopexit.us:                     ; preds = %for.body.i.us
  %103 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1 = add nuw nsw i64 %103, %mul.i.i
  %sext.i.us.1 = shl i64 %add1.i.i.us.1, 32
  %idxprom.i.us.1 = ashr exact i64 %sext.i.us.1, 32
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv.i.us.1 = trunc i64 %add1.i.i.us.1 to i32
  %mul.i.us.1 = mul nsw i32 %conv.i.us.1, %4
  %104 = sext i32 %mul.i.us.1 to i64
  br label %for.body.i.us.1

bicgKernel1.exit.loopexit:                        ; preds = %for.end.r_exit.i.loopexit.us.1
  br label %bicgKernel1.exit

bicgKernel1.exit:                                 ; preds = %bicgKernel1.exit.loopexit, %vector.body
  ret void

for.body.i.us.1:                                  ; preds = %for.body.i.us.1, %for.end.r_exit.i.loopexit.us
  %indvars.iv.next.i2.us.1 = phi i64 [ %indvars.iv.next.i.us.1, %for.body.i.us.1 ], [ 0, %for.end.r_exit.i.loopexit.us ]
  %105 = phi float [ %109, %for.body.i.us.1 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us ]
  %106 = add nsw i64 %indvars.iv.next.i2.us.1, %104
  %arrayidx3.i.us.1 = getelementptr inbounds float, float* %0, i64 %106
  %107 = load float, float* %arrayidx3.i.us.1, align 4, !tbaa !12
  %arrayidx5.i.us.1 = getelementptr inbounds float, float* %1, i64 %indvars.iv.next.i2.us.1
  %108 = load float, float* %arrayidx5.i.us.1, align 4, !tbaa !12
  %109 = tail call float @llvm.fmuladd.f32(float %107, float %108, float %105) #2
  store float %109, float* %arrayidx.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.next.i2.us.1, 1
  %exitcond.not.i.us.1 = icmp eq i64 %indvars.iv.next.i.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.1, label %for.end.r_exit.i.loopexit.us.1, label %for.body.i.us.1, !llvm.loop !18

for.end.r_exit.i.loopexit.us.1:                   ; preds = %for.body.i.us.1
  %110 = add nuw nsw i64 %_local_id_x.0.us, 2
  %exitcond.not.1 = icmp eq i64 %110, 256
  br i1 %exitcond.not.1, label %bicgKernel1.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !20
}

; Function Attrs: nounwind
define void @_pocl_kernel_bicgKernel1_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float***
  %7 = load float**, float*** %6, align 8
  %8 = load float*, float** %7, align 8
  %9 = getelementptr i8*, i8** %0, i64 1
  %10 = bitcast i8** %9 to float***
  %11 = load float**, float*** %10, align 8
  %12 = load float*, float** %11, align 8
  %13 = getelementptr i8*, i8** %0, i64 2
  %14 = bitcast i8** %13 to float***
  %15 = load float**, float*** %14, align 8
  %16 = load float*, float** %15, align 8
  %17 = getelementptr i8*, i8** %0, i64 4
  %18 = bitcast i8** %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp18.i.i = icmp sgt i32 %20, 0
  %wide.trip.count.i.i = zext i32 %20 to i64
  br i1 %cmp18.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.body

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.body:                                      ; preds = %5
  %21 = shl i64 %2, 40
  %22 = ashr exact i64 %21, 32
  %23 = getelementptr inbounds float, float* %16, i64 %22
  %24 = bitcast float* %23 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %24, align 4, !tbaa !12, !llvm.access.group !16
  %25 = getelementptr inbounds float, float* %23, i64 8
  %26 = bitcast float* %25 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %26, align 4, !tbaa !12, !llvm.access.group !16
  %27 = getelementptr inbounds float, float* %23, i64 16
  %28 = bitcast float* %27 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %28, align 4, !tbaa !12, !llvm.access.group !16
  %29 = getelementptr inbounds float, float* %23, i64 24
  %30 = bitcast float* %29 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %30, align 4, !tbaa !12, !llvm.access.group !16
  %31 = shl i64 %2, 40
  %32 = ashr exact i64 %31, 32
  %33 = or i64 %32, 32
  %34 = getelementptr inbounds float, float* %16, i64 %33
  %35 = bitcast float* %34 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %35, align 4, !tbaa !12, !llvm.access.group !16
  %36 = getelementptr inbounds float, float* %34, i64 8
  %37 = bitcast float* %36 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %37, align 4, !tbaa !12, !llvm.access.group !16
  %38 = getelementptr inbounds float, float* %34, i64 16
  %39 = bitcast float* %38 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %39, align 4, !tbaa !12, !llvm.access.group !16
  %40 = getelementptr inbounds float, float* %34, i64 24
  %41 = bitcast float* %40 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %41, align 4, !tbaa !12, !llvm.access.group !16
  %42 = shl i64 %2, 40
  %43 = ashr exact i64 %42, 32
  %44 = or i64 %43, 64
  %45 = getelementptr inbounds float, float* %16, i64 %44
  %46 = bitcast float* %45 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %46, align 4, !tbaa !12, !llvm.access.group !16
  %47 = getelementptr inbounds float, float* %45, i64 8
  %48 = bitcast float* %47 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %48, align 4, !tbaa !12, !llvm.access.group !16
  %49 = getelementptr inbounds float, float* %45, i64 16
  %50 = bitcast float* %49 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %50, align 4, !tbaa !12, !llvm.access.group !16
  %51 = getelementptr inbounds float, float* %45, i64 24
  %52 = bitcast float* %51 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %52, align 4, !tbaa !12, !llvm.access.group !16
  %53 = shl i64 %2, 40
  %54 = ashr exact i64 %53, 32
  %55 = or i64 %54, 96
  %56 = getelementptr inbounds float, float* %16, i64 %55
  %57 = bitcast float* %56 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %57, align 4, !tbaa !12, !llvm.access.group !16
  %58 = getelementptr inbounds float, float* %56, i64 8
  %59 = bitcast float* %58 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %59, align 4, !tbaa !12, !llvm.access.group !16
  %60 = getelementptr inbounds float, float* %56, i64 16
  %61 = bitcast float* %60 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %61, align 4, !tbaa !12, !llvm.access.group !16
  %62 = getelementptr inbounds float, float* %56, i64 24
  %63 = bitcast float* %62 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %63, align 4, !tbaa !12, !llvm.access.group !16
  %64 = shl i64 %2, 40
  %65 = ashr exact i64 %64, 32
  %66 = or i64 %65, 128
  %67 = getelementptr inbounds float, float* %16, i64 %66
  %68 = bitcast float* %67 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %68, align 4, !tbaa !12, !llvm.access.group !16
  %69 = getelementptr inbounds float, float* %67, i64 8
  %70 = bitcast float* %69 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %70, align 4, !tbaa !12, !llvm.access.group !16
  %71 = getelementptr inbounds float, float* %67, i64 16
  %72 = bitcast float* %71 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %72, align 4, !tbaa !12, !llvm.access.group !16
  %73 = getelementptr inbounds float, float* %67, i64 24
  %74 = bitcast float* %73 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %74, align 4, !tbaa !12, !llvm.access.group !16
  %75 = shl i64 %2, 40
  %76 = ashr exact i64 %75, 32
  %77 = or i64 %76, 160
  %78 = getelementptr inbounds float, float* %16, i64 %77
  %79 = bitcast float* %78 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %79, align 4, !tbaa !12, !llvm.access.group !16
  %80 = getelementptr inbounds float, float* %78, i64 8
  %81 = bitcast float* %80 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %81, align 4, !tbaa !12, !llvm.access.group !16
  %82 = getelementptr inbounds float, float* %78, i64 16
  %83 = bitcast float* %82 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %83, align 4, !tbaa !12, !llvm.access.group !16
  %84 = getelementptr inbounds float, float* %78, i64 24
  %85 = bitcast float* %84 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %85, align 4, !tbaa !12, !llvm.access.group !16
  %86 = shl i64 %2, 40
  %87 = ashr exact i64 %86, 32
  %88 = or i64 %87, 192
  %89 = getelementptr inbounds float, float* %16, i64 %88
  %90 = bitcast float* %89 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %90, align 4, !tbaa !12, !llvm.access.group !16
  %91 = getelementptr inbounds float, float* %89, i64 8
  %92 = bitcast float* %91 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %92, align 4, !tbaa !12, !llvm.access.group !16
  %93 = getelementptr inbounds float, float* %89, i64 16
  %94 = bitcast float* %93 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %94, align 4, !tbaa !12, !llvm.access.group !16
  %95 = getelementptr inbounds float, float* %89, i64 24
  %96 = bitcast float* %95 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %96, align 4, !tbaa !12, !llvm.access.group !16
  %97 = shl i64 %2, 40
  %98 = ashr exact i64 %97, 32
  %99 = or i64 %98, 224
  %100 = getelementptr inbounds float, float* %16, i64 %99
  %101 = bitcast float* %100 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %101, align 4, !tbaa !12, !llvm.access.group !16
  %102 = getelementptr inbounds float, float* %100, i64 8
  %103 = bitcast float* %102 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %103, align 4, !tbaa !12, !llvm.access.group !16
  %104 = getelementptr inbounds float, float* %100, i64 16
  %105 = bitcast float* %104 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %105, align 4, !tbaa !12, !llvm.access.group !16
  %106 = getelementptr inbounds float, float* %100, i64 24
  %107 = bitcast float* %106 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %107, align 4, !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_bicgKernel1.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %for.end.r_exit.i.i.loopexit.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %121, %for.end.r_exit.i.i.loopexit.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %mul.i.i.us = mul nsw i32 %20, %conv.i.i.us
  %108 = sext i32 %mul.i.i.us to i64
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %pregion_for_entry.entry.i.i.us
  %indvars.iv.next.i.i2.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us ]
  %109 = phi float [ %113, %for.body.i.i.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us ]
  %110 = add nsw i64 %indvars.iv.next.i.i2.us, %108
  %arrayidx3.i.i.us = getelementptr inbounds float, float* %8, i64 %110
  %111 = load float, float* %arrayidx3.i.i.us, align 4, !tbaa !12
  %arrayidx5.i.i.us = getelementptr inbounds float, float* %12, i64 %indvars.iv.next.i.i2.us
  %112 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !12
  %113 = tail call float @llvm.fmuladd.f32(float %111, float %112, float %109) #2
  store float %113, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i2.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.r_exit.i.i.loopexit.us, label %for.body.i.i.us, !llvm.loop !18

for.end.r_exit.i.i.loopexit.us:                   ; preds = %for.body.i.i.us
  %114 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %114, %mul.i.i.i
  %sext.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom.i.i.us.1 = ashr exact i64 %sext.i.i.us.1, 32
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %mul.i.i.us.1 = mul nsw i32 %20, %conv.i.i.us.1
  %115 = sext i32 %mul.i.i.us.1 to i64
  br label %for.body.i.i.us.1

_pocl_kernel_bicgKernel1.exit.loopexit:           ; preds = %for.end.r_exit.i.i.loopexit.us.1
  br label %_pocl_kernel_bicgKernel1.exit

_pocl_kernel_bicgKernel1.exit:                    ; preds = %_pocl_kernel_bicgKernel1.exit.loopexit, %vector.body
  ret void

for.body.i.i.us.1:                                ; preds = %for.body.i.i.us.1, %for.end.r_exit.i.i.loopexit.us
  %indvars.iv.next.i.i2.us.1 = phi i64 [ %indvars.iv.next.i.i.us.1, %for.body.i.i.us.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us ]
  %116 = phi float [ %120, %for.body.i.i.us.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us ]
  %117 = add nsw i64 %indvars.iv.next.i.i2.us.1, %115
  %arrayidx3.i.i.us.1 = getelementptr inbounds float, float* %8, i64 %117
  %118 = load float, float* %arrayidx3.i.i.us.1, align 4, !tbaa !12
  %arrayidx5.i.i.us.1 = getelementptr inbounds float, float* %12, i64 %indvars.iv.next.i.i2.us.1
  %119 = load float, float* %arrayidx5.i.i.us.1, align 4, !tbaa !12
  %120 = tail call float @llvm.fmuladd.f32(float %118, float %119, float %116) #2
  store float %120, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.1, 1
  %exitcond.not.i.i.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.1, label %for.end.r_exit.i.i.loopexit.us.1, label %for.body.i.i.us.1, !llvm.loop !18

for.end.r_exit.i.i.loopexit.us.1:                 ; preds = %for.body.i.i.us.1
  %121 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %121, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_bicgKernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !20
}

; Function Attrs: nounwind
define void @_pocl_kernel_bicgKernel1_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 2
  %12 = bitcast i8** %11 to float**
  %13 = load float*, float** %12, align 8
  %14 = getelementptr i8*, i8** %0, i64 4
  %15 = bitcast i8** %14 to i32**
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp18.i.i = icmp sgt i32 %17, 0
  %wide.trip.count.i.i = zext i32 %17 to i64
  br i1 %cmp18.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.body

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.body:                                      ; preds = %5
  %18 = shl i64 %2, 40
  %19 = ashr exact i64 %18, 32
  %20 = getelementptr inbounds float, float* %13, i64 %19
  %21 = bitcast float* %20 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %21, align 4, !tbaa !12, !llvm.access.group !16
  %22 = getelementptr inbounds float, float* %20, i64 8
  %23 = bitcast float* %22 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %23, align 4, !tbaa !12, !llvm.access.group !16
  %24 = getelementptr inbounds float, float* %20, i64 16
  %25 = bitcast float* %24 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %25, align 4, !tbaa !12, !llvm.access.group !16
  %26 = getelementptr inbounds float, float* %20, i64 24
  %27 = bitcast float* %26 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %27, align 4, !tbaa !12, !llvm.access.group !16
  %28 = shl i64 %2, 40
  %29 = ashr exact i64 %28, 32
  %30 = or i64 %29, 32
  %31 = getelementptr inbounds float, float* %13, i64 %30
  %32 = bitcast float* %31 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %32, align 4, !tbaa !12, !llvm.access.group !16
  %33 = getelementptr inbounds float, float* %31, i64 8
  %34 = bitcast float* %33 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %34, align 4, !tbaa !12, !llvm.access.group !16
  %35 = getelementptr inbounds float, float* %31, i64 16
  %36 = bitcast float* %35 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %36, align 4, !tbaa !12, !llvm.access.group !16
  %37 = getelementptr inbounds float, float* %31, i64 24
  %38 = bitcast float* %37 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %38, align 4, !tbaa !12, !llvm.access.group !16
  %39 = shl i64 %2, 40
  %40 = ashr exact i64 %39, 32
  %41 = or i64 %40, 64
  %42 = getelementptr inbounds float, float* %13, i64 %41
  %43 = bitcast float* %42 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %43, align 4, !tbaa !12, !llvm.access.group !16
  %44 = getelementptr inbounds float, float* %42, i64 8
  %45 = bitcast float* %44 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %45, align 4, !tbaa !12, !llvm.access.group !16
  %46 = getelementptr inbounds float, float* %42, i64 16
  %47 = bitcast float* %46 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %47, align 4, !tbaa !12, !llvm.access.group !16
  %48 = getelementptr inbounds float, float* %42, i64 24
  %49 = bitcast float* %48 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %49, align 4, !tbaa !12, !llvm.access.group !16
  %50 = shl i64 %2, 40
  %51 = ashr exact i64 %50, 32
  %52 = or i64 %51, 96
  %53 = getelementptr inbounds float, float* %13, i64 %52
  %54 = bitcast float* %53 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %54, align 4, !tbaa !12, !llvm.access.group !16
  %55 = getelementptr inbounds float, float* %53, i64 8
  %56 = bitcast float* %55 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %56, align 4, !tbaa !12, !llvm.access.group !16
  %57 = getelementptr inbounds float, float* %53, i64 16
  %58 = bitcast float* %57 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %58, align 4, !tbaa !12, !llvm.access.group !16
  %59 = getelementptr inbounds float, float* %53, i64 24
  %60 = bitcast float* %59 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %60, align 4, !tbaa !12, !llvm.access.group !16
  %61 = shl i64 %2, 40
  %62 = ashr exact i64 %61, 32
  %63 = or i64 %62, 128
  %64 = getelementptr inbounds float, float* %13, i64 %63
  %65 = bitcast float* %64 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %65, align 4, !tbaa !12, !llvm.access.group !16
  %66 = getelementptr inbounds float, float* %64, i64 8
  %67 = bitcast float* %66 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %67, align 4, !tbaa !12, !llvm.access.group !16
  %68 = getelementptr inbounds float, float* %64, i64 16
  %69 = bitcast float* %68 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %69, align 4, !tbaa !12, !llvm.access.group !16
  %70 = getelementptr inbounds float, float* %64, i64 24
  %71 = bitcast float* %70 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %71, align 4, !tbaa !12, !llvm.access.group !16
  %72 = shl i64 %2, 40
  %73 = ashr exact i64 %72, 32
  %74 = or i64 %73, 160
  %75 = getelementptr inbounds float, float* %13, i64 %74
  %76 = bitcast float* %75 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %76, align 4, !tbaa !12, !llvm.access.group !16
  %77 = getelementptr inbounds float, float* %75, i64 8
  %78 = bitcast float* %77 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %78, align 4, !tbaa !12, !llvm.access.group !16
  %79 = getelementptr inbounds float, float* %75, i64 16
  %80 = bitcast float* %79 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %80, align 4, !tbaa !12, !llvm.access.group !16
  %81 = getelementptr inbounds float, float* %75, i64 24
  %82 = bitcast float* %81 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %82, align 4, !tbaa !12, !llvm.access.group !16
  %83 = shl i64 %2, 40
  %84 = ashr exact i64 %83, 32
  %85 = or i64 %84, 192
  %86 = getelementptr inbounds float, float* %13, i64 %85
  %87 = bitcast float* %86 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %87, align 4, !tbaa !12, !llvm.access.group !16
  %88 = getelementptr inbounds float, float* %86, i64 8
  %89 = bitcast float* %88 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %89, align 4, !tbaa !12, !llvm.access.group !16
  %90 = getelementptr inbounds float, float* %86, i64 16
  %91 = bitcast float* %90 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %91, align 4, !tbaa !12, !llvm.access.group !16
  %92 = getelementptr inbounds float, float* %86, i64 24
  %93 = bitcast float* %92 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %93, align 4, !tbaa !12, !llvm.access.group !16
  %94 = shl i64 %2, 40
  %95 = ashr exact i64 %94, 32
  %96 = or i64 %95, 224
  %97 = getelementptr inbounds float, float* %13, i64 %96
  %98 = bitcast float* %97 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %98, align 4, !tbaa !12, !llvm.access.group !16
  %99 = getelementptr inbounds float, float* %97, i64 8
  %100 = bitcast float* %99 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %100, align 4, !tbaa !12, !llvm.access.group !16
  %101 = getelementptr inbounds float, float* %97, i64 16
  %102 = bitcast float* %101 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %102, align 4, !tbaa !12, !llvm.access.group !16
  %103 = getelementptr inbounds float, float* %97, i64 24
  %104 = bitcast float* %103 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %104, align 4, !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_bicgKernel1.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %for.end.r_exit.i.i.loopexit.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %118, %for.end.r_exit.i.i.loopexit.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %mul.i.i.us = mul nsw i32 %17, %conv.i.i.us
  %105 = sext i32 %mul.i.i.us to i64
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %pregion_for_entry.entry.i.i.us
  %indvars.iv.next.i.i2.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us ]
  %106 = phi float [ %110, %for.body.i.i.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us ]
  %107 = add nsw i64 %indvars.iv.next.i.i2.us, %105
  %arrayidx3.i.i.us = getelementptr inbounds float, float* %7, i64 %107
  %108 = load float, float* %arrayidx3.i.i.us, align 4, !tbaa !12
  %arrayidx5.i.i.us = getelementptr inbounds float, float* %10, i64 %indvars.iv.next.i.i2.us
  %109 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !12
  %110 = tail call float @llvm.fmuladd.f32(float %108, float %109, float %106) #2
  store float %110, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i2.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.r_exit.i.i.loopexit.us, label %for.body.i.i.us, !llvm.loop !18

for.end.r_exit.i.i.loopexit.us:                   ; preds = %for.body.i.i.us
  %111 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %111, %mul.i.i.i
  %sext.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom.i.i.us.1 = ashr exact i64 %sext.i.i.us.1, 32
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %mul.i.i.us.1 = mul nsw i32 %17, %conv.i.i.us.1
  %112 = sext i32 %mul.i.i.us.1 to i64
  br label %for.body.i.i.us.1

_pocl_kernel_bicgKernel1.exit.loopexit:           ; preds = %for.end.r_exit.i.i.loopexit.us.1
  br label %_pocl_kernel_bicgKernel1.exit

_pocl_kernel_bicgKernel1.exit:                    ; preds = %_pocl_kernel_bicgKernel1.exit.loopexit, %vector.body
  ret void

for.body.i.i.us.1:                                ; preds = %for.body.i.i.us.1, %for.end.r_exit.i.i.loopexit.us
  %indvars.iv.next.i.i2.us.1 = phi i64 [ %indvars.iv.next.i.i.us.1, %for.body.i.i.us.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us ]
  %113 = phi float [ %117, %for.body.i.i.us.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us ]
  %114 = add nsw i64 %indvars.iv.next.i.i2.us.1, %112
  %arrayidx3.i.i.us.1 = getelementptr inbounds float, float* %7, i64 %114
  %115 = load float, float* %arrayidx3.i.i.us.1, align 4, !tbaa !12
  %arrayidx5.i.i.us.1 = getelementptr inbounds float, float* %10, i64 %indvars.iv.next.i.i2.us.1
  %116 = load float, float* %arrayidx5.i.i.us.1, align 4, !tbaa !12
  %117 = tail call float @llvm.fmuladd.f32(float %115, float %116, float %113) #2
  store float %117, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.1, 1
  %exitcond.not.i.i.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.1, label %for.end.r_exit.i.i.loopexit.us.1, label %for.body.i.i.us.1, !llvm.loop !18

for.end.r_exit.i.i.loopexit.us.1:                 ; preds = %for.body.i.i.us.1
  %118 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %118, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_bicgKernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !20
}

attributes #0 = { nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

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
!10 = !{!"A", !"p", !"q", !"nx", !"ny"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17}
!17 = distinct !{}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.parallel_accesses", !17}
