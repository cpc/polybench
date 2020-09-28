; ModuleID = './NP/GAECNLPPABPHPAFEACGNLPFFCEEGEOGLBKHPP/bicgKernel2/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_bicgKernel2(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, i32 %3, i32 %4, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %5, i64 %6, i64 %7, i64 %8) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %6, 8
  %cmp17.i = icmp sgt i32 %3, 0
  %10 = sext i32 %4 to i64
  %wide.trip.count.i = zext i32 %3 to i64
  br i1 %cmp17.i, label %pregion_for_entry.entry.i.us.preheader, label %vector.body

pregion_for_entry.entry.i.us.preheader:           ; preds = %9
  br label %pregion_for_entry.entry.i.us

vector.body:                                      ; preds = %9
  %11 = shl i64 %6, 40
  %12 = ashr exact i64 %11, 32
  %13 = getelementptr inbounds float, float* %2, i64 %12
  %14 = bitcast float* %13 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %14, align 4, !tbaa !12, !llvm.access.group !16
  %15 = getelementptr inbounds float, float* %13, i64 8
  %16 = bitcast float* %15 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %16, align 4, !tbaa !12, !llvm.access.group !16
  %17 = getelementptr inbounds float, float* %13, i64 16
  %18 = bitcast float* %17 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %18, align 4, !tbaa !12, !llvm.access.group !16
  %19 = getelementptr inbounds float, float* %13, i64 24
  %20 = bitcast float* %19 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %20, align 4, !tbaa !12, !llvm.access.group !16
  %21 = shl i64 %6, 40
  %22 = ashr exact i64 %21, 32
  %23 = or i64 %22, 32
  %24 = getelementptr inbounds float, float* %2, i64 %23
  %25 = bitcast float* %24 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %25, align 4, !tbaa !12, !llvm.access.group !16
  %26 = getelementptr inbounds float, float* %24, i64 8
  %27 = bitcast float* %26 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %27, align 4, !tbaa !12, !llvm.access.group !16
  %28 = getelementptr inbounds float, float* %24, i64 16
  %29 = bitcast float* %28 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %29, align 4, !tbaa !12, !llvm.access.group !16
  %30 = getelementptr inbounds float, float* %24, i64 24
  %31 = bitcast float* %30 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %31, align 4, !tbaa !12, !llvm.access.group !16
  %32 = shl i64 %6, 40
  %33 = ashr exact i64 %32, 32
  %34 = or i64 %33, 64
  %35 = getelementptr inbounds float, float* %2, i64 %34
  %36 = bitcast float* %35 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %36, align 4, !tbaa !12, !llvm.access.group !16
  %37 = getelementptr inbounds float, float* %35, i64 8
  %38 = bitcast float* %37 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %38, align 4, !tbaa !12, !llvm.access.group !16
  %39 = getelementptr inbounds float, float* %35, i64 16
  %40 = bitcast float* %39 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %40, align 4, !tbaa !12, !llvm.access.group !16
  %41 = getelementptr inbounds float, float* %35, i64 24
  %42 = bitcast float* %41 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %42, align 4, !tbaa !12, !llvm.access.group !16
  %43 = shl i64 %6, 40
  %44 = ashr exact i64 %43, 32
  %45 = or i64 %44, 96
  %46 = getelementptr inbounds float, float* %2, i64 %45
  %47 = bitcast float* %46 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %47, align 4, !tbaa !12, !llvm.access.group !16
  %48 = getelementptr inbounds float, float* %46, i64 8
  %49 = bitcast float* %48 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %49, align 4, !tbaa !12, !llvm.access.group !16
  %50 = getelementptr inbounds float, float* %46, i64 16
  %51 = bitcast float* %50 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %51, align 4, !tbaa !12, !llvm.access.group !16
  %52 = getelementptr inbounds float, float* %46, i64 24
  %53 = bitcast float* %52 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %53, align 4, !tbaa !12, !llvm.access.group !16
  %54 = shl i64 %6, 40
  %55 = ashr exact i64 %54, 32
  %56 = or i64 %55, 128
  %57 = getelementptr inbounds float, float* %2, i64 %56
  %58 = bitcast float* %57 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %58, align 4, !tbaa !12, !llvm.access.group !16
  %59 = getelementptr inbounds float, float* %57, i64 8
  %60 = bitcast float* %59 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %60, align 4, !tbaa !12, !llvm.access.group !16
  %61 = getelementptr inbounds float, float* %57, i64 16
  %62 = bitcast float* %61 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %62, align 4, !tbaa !12, !llvm.access.group !16
  %63 = getelementptr inbounds float, float* %57, i64 24
  %64 = bitcast float* %63 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %64, align 4, !tbaa !12, !llvm.access.group !16
  %65 = shl i64 %6, 40
  %66 = ashr exact i64 %65, 32
  %67 = or i64 %66, 160
  %68 = getelementptr inbounds float, float* %2, i64 %67
  %69 = bitcast float* %68 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %69, align 4, !tbaa !12, !llvm.access.group !16
  %70 = getelementptr inbounds float, float* %68, i64 8
  %71 = bitcast float* %70 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %71, align 4, !tbaa !12, !llvm.access.group !16
  %72 = getelementptr inbounds float, float* %68, i64 16
  %73 = bitcast float* %72 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %73, align 4, !tbaa !12, !llvm.access.group !16
  %74 = getelementptr inbounds float, float* %68, i64 24
  %75 = bitcast float* %74 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %75, align 4, !tbaa !12, !llvm.access.group !16
  %76 = shl i64 %6, 40
  %77 = ashr exact i64 %76, 32
  %78 = or i64 %77, 192
  %79 = getelementptr inbounds float, float* %2, i64 %78
  %80 = bitcast float* %79 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %80, align 4, !tbaa !12, !llvm.access.group !16
  %81 = getelementptr inbounds float, float* %79, i64 8
  %82 = bitcast float* %81 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %82, align 4, !tbaa !12, !llvm.access.group !16
  %83 = getelementptr inbounds float, float* %79, i64 16
  %84 = bitcast float* %83 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %84, align 4, !tbaa !12, !llvm.access.group !16
  %85 = getelementptr inbounds float, float* %79, i64 24
  %86 = bitcast float* %85 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %86, align 4, !tbaa !12, !llvm.access.group !16
  %87 = shl i64 %6, 40
  %88 = ashr exact i64 %87, 32
  %89 = or i64 %88, 224
  %90 = getelementptr inbounds float, float* %2, i64 %89
  %91 = bitcast float* %90 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %91, align 4, !tbaa !12, !llvm.access.group !16
  %92 = getelementptr inbounds float, float* %90, i64 8
  %93 = bitcast float* %92 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %93, align 4, !tbaa !12, !llvm.access.group !16
  %94 = getelementptr inbounds float, float* %90, i64 16
  %95 = bitcast float* %94 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %95, align 4, !tbaa !12, !llvm.access.group !16
  %96 = getelementptr inbounds float, float* %90, i64 24
  %97 = bitcast float* %96 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %97, align 4, !tbaa !12, !llvm.access.group !16
  br label %bicgKernel2.exit

pregion_for_entry.entry.i.us:                     ; preds = %for.end.r_exit.i.loopexit.us.1, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %111, %for.end.r_exit.i.loopexit.us.1 ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %sext.i.us = shl i64 %add1.i.i.us, 32
  %idxprom.i.us = ashr exact i64 %sext.i.us, 32
  %arrayidx.i.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us
  store float 0.000000e+00, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %pregion_for_entry.entry.i.us
  %indvars.iv.next.i2.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %pregion_for_entry.entry.i.us ]
  %98 = phi float [ %103, %for.body.i.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.us ]
  %99 = mul nsw i64 %indvars.iv.next.i2.us, %10
  %100 = add nsw i64 %99, %idxprom.i.us
  %arrayidx3.i.us = getelementptr inbounds float, float* %0, i64 %100
  %101 = load float, float* %arrayidx3.i.us, align 4, !tbaa !12
  %arrayidx5.i.us = getelementptr inbounds float, float* %1, i64 %indvars.iv.next.i2.us
  %102 = load float, float* %arrayidx5.i.us, align 4, !tbaa !12
  %103 = tail call float @llvm.fmuladd.f32(float %101, float %102, float %98) #2
  store float %103, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i2.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %for.end.r_exit.i.loopexit.us, label %for.body.i.us, !llvm.loop !18

for.end.r_exit.i.loopexit.us:                     ; preds = %for.body.i.us
  %104 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1 = add nuw nsw i64 %104, %mul.i.i
  %sext.i.us.1 = shl i64 %add1.i.i.us.1, 32
  %idxprom.i.us.1 = ashr exact i64 %sext.i.us.1, 32
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.us.1

bicgKernel2.exit.loopexit:                        ; preds = %for.end.r_exit.i.loopexit.us.1
  br label %bicgKernel2.exit

bicgKernel2.exit:                                 ; preds = %bicgKernel2.exit.loopexit, %vector.body
  ret void

for.body.i.us.1:                                  ; preds = %for.body.i.us.1, %for.end.r_exit.i.loopexit.us
  %indvars.iv.next.i2.us.1 = phi i64 [ %indvars.iv.next.i.us.1, %for.body.i.us.1 ], [ 0, %for.end.r_exit.i.loopexit.us ]
  %105 = phi float [ %110, %for.body.i.us.1 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us ]
  %106 = mul nsw i64 %indvars.iv.next.i2.us.1, %10
  %107 = add nsw i64 %106, %idxprom.i.us.1
  %arrayidx3.i.us.1 = getelementptr inbounds float, float* %0, i64 %107
  %108 = load float, float* %arrayidx3.i.us.1, align 4, !tbaa !12
  %arrayidx5.i.us.1 = getelementptr inbounds float, float* %1, i64 %indvars.iv.next.i2.us.1
  %109 = load float, float* %arrayidx5.i.us.1, align 4, !tbaa !12
  %110 = tail call float @llvm.fmuladd.f32(float %108, float %109, float %105) #2
  store float %110, float* %arrayidx.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.next.i2.us.1, 1
  %exitcond.not.i.us.1 = icmp eq i64 %indvars.iv.next.i.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.1, label %for.end.r_exit.i.loopexit.us.1, label %for.body.i.us.1, !llvm.loop !18

for.end.r_exit.i.loopexit.us.1:                   ; preds = %for.body.i.us.1
  %111 = add nuw nsw i64 %_local_id_x.0.us, 2
  %exitcond.not.1 = icmp eq i64 %111, 256
  br i1 %exitcond.not.1, label %bicgKernel2.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !20
}

; Function Attrs: nounwind
define void @_pocl_kernel_bicgKernel2_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %17 = getelementptr i8*, i8** %0, i64 3
  %18 = bitcast i8** %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 4
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp17.i.i = icmp sgt i32 %20, 0
  %25 = sext i32 %24 to i64
  %wide.trip.count.i.i = zext i32 %20 to i64
  br i1 %cmp17.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.body

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.body:                                      ; preds = %5
  %26 = shl i64 %2, 40
  %27 = ashr exact i64 %26, 32
  %28 = getelementptr inbounds float, float* %16, i64 %27
  %29 = bitcast float* %28 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %29, align 4, !tbaa !12, !llvm.access.group !16
  %30 = getelementptr inbounds float, float* %28, i64 8
  %31 = bitcast float* %30 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %31, align 4, !tbaa !12, !llvm.access.group !16
  %32 = getelementptr inbounds float, float* %28, i64 16
  %33 = bitcast float* %32 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %33, align 4, !tbaa !12, !llvm.access.group !16
  %34 = getelementptr inbounds float, float* %28, i64 24
  %35 = bitcast float* %34 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %35, align 4, !tbaa !12, !llvm.access.group !16
  %36 = shl i64 %2, 40
  %37 = ashr exact i64 %36, 32
  %38 = or i64 %37, 32
  %39 = getelementptr inbounds float, float* %16, i64 %38
  %40 = bitcast float* %39 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %40, align 4, !tbaa !12, !llvm.access.group !16
  %41 = getelementptr inbounds float, float* %39, i64 8
  %42 = bitcast float* %41 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %42, align 4, !tbaa !12, !llvm.access.group !16
  %43 = getelementptr inbounds float, float* %39, i64 16
  %44 = bitcast float* %43 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %44, align 4, !tbaa !12, !llvm.access.group !16
  %45 = getelementptr inbounds float, float* %39, i64 24
  %46 = bitcast float* %45 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %46, align 4, !tbaa !12, !llvm.access.group !16
  %47 = shl i64 %2, 40
  %48 = ashr exact i64 %47, 32
  %49 = or i64 %48, 64
  %50 = getelementptr inbounds float, float* %16, i64 %49
  %51 = bitcast float* %50 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %51, align 4, !tbaa !12, !llvm.access.group !16
  %52 = getelementptr inbounds float, float* %50, i64 8
  %53 = bitcast float* %52 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %53, align 4, !tbaa !12, !llvm.access.group !16
  %54 = getelementptr inbounds float, float* %50, i64 16
  %55 = bitcast float* %54 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %55, align 4, !tbaa !12, !llvm.access.group !16
  %56 = getelementptr inbounds float, float* %50, i64 24
  %57 = bitcast float* %56 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %57, align 4, !tbaa !12, !llvm.access.group !16
  %58 = shl i64 %2, 40
  %59 = ashr exact i64 %58, 32
  %60 = or i64 %59, 96
  %61 = getelementptr inbounds float, float* %16, i64 %60
  %62 = bitcast float* %61 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %62, align 4, !tbaa !12, !llvm.access.group !16
  %63 = getelementptr inbounds float, float* %61, i64 8
  %64 = bitcast float* %63 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %64, align 4, !tbaa !12, !llvm.access.group !16
  %65 = getelementptr inbounds float, float* %61, i64 16
  %66 = bitcast float* %65 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %66, align 4, !tbaa !12, !llvm.access.group !16
  %67 = getelementptr inbounds float, float* %61, i64 24
  %68 = bitcast float* %67 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %68, align 4, !tbaa !12, !llvm.access.group !16
  %69 = shl i64 %2, 40
  %70 = ashr exact i64 %69, 32
  %71 = or i64 %70, 128
  %72 = getelementptr inbounds float, float* %16, i64 %71
  %73 = bitcast float* %72 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %73, align 4, !tbaa !12, !llvm.access.group !16
  %74 = getelementptr inbounds float, float* %72, i64 8
  %75 = bitcast float* %74 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %75, align 4, !tbaa !12, !llvm.access.group !16
  %76 = getelementptr inbounds float, float* %72, i64 16
  %77 = bitcast float* %76 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %77, align 4, !tbaa !12, !llvm.access.group !16
  %78 = getelementptr inbounds float, float* %72, i64 24
  %79 = bitcast float* %78 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %79, align 4, !tbaa !12, !llvm.access.group !16
  %80 = shl i64 %2, 40
  %81 = ashr exact i64 %80, 32
  %82 = or i64 %81, 160
  %83 = getelementptr inbounds float, float* %16, i64 %82
  %84 = bitcast float* %83 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %84, align 4, !tbaa !12, !llvm.access.group !16
  %85 = getelementptr inbounds float, float* %83, i64 8
  %86 = bitcast float* %85 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %86, align 4, !tbaa !12, !llvm.access.group !16
  %87 = getelementptr inbounds float, float* %83, i64 16
  %88 = bitcast float* %87 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %88, align 4, !tbaa !12, !llvm.access.group !16
  %89 = getelementptr inbounds float, float* %83, i64 24
  %90 = bitcast float* %89 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %90, align 4, !tbaa !12, !llvm.access.group !16
  %91 = shl i64 %2, 40
  %92 = ashr exact i64 %91, 32
  %93 = or i64 %92, 192
  %94 = getelementptr inbounds float, float* %16, i64 %93
  %95 = bitcast float* %94 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %95, align 4, !tbaa !12, !llvm.access.group !16
  %96 = getelementptr inbounds float, float* %94, i64 8
  %97 = bitcast float* %96 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %97, align 4, !tbaa !12, !llvm.access.group !16
  %98 = getelementptr inbounds float, float* %94, i64 16
  %99 = bitcast float* %98 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %99, align 4, !tbaa !12, !llvm.access.group !16
  %100 = getelementptr inbounds float, float* %94, i64 24
  %101 = bitcast float* %100 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %101, align 4, !tbaa !12, !llvm.access.group !16
  %102 = shl i64 %2, 40
  %103 = ashr exact i64 %102, 32
  %104 = or i64 %103, 224
  %105 = getelementptr inbounds float, float* %16, i64 %104
  %106 = bitcast float* %105 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %106, align 4, !tbaa !12, !llvm.access.group !16
  %107 = getelementptr inbounds float, float* %105, i64 8
  %108 = bitcast float* %107 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %108, align 4, !tbaa !12, !llvm.access.group !16
  %109 = getelementptr inbounds float, float* %105, i64 16
  %110 = bitcast float* %109 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %110, align 4, !tbaa !12, !llvm.access.group !16
  %111 = getelementptr inbounds float, float* %105, i64 24
  %112 = bitcast float* %111 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %112, align 4, !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_bicgKernel2.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %for.end.r_exit.i.i.loopexit.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %126, %for.end.r_exit.i.i.loopexit.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %pregion_for_entry.entry.i.i.us
  %indvars.iv.next.i.i2.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us ]
  %113 = phi float [ %118, %for.body.i.i.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us ]
  %114 = mul nsw i64 %indvars.iv.next.i.i2.us, %25
  %115 = add nsw i64 %114, %idxprom.i.i.us
  %arrayidx3.i.i.us = getelementptr inbounds float, float* %8, i64 %115
  %116 = load float, float* %arrayidx3.i.i.us, align 4, !tbaa !12
  %arrayidx5.i.i.us = getelementptr inbounds float, float* %12, i64 %indvars.iv.next.i.i2.us
  %117 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !12
  %118 = tail call float @llvm.fmuladd.f32(float %116, float %117, float %113) #2
  store float %118, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i2.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.r_exit.i.i.loopexit.us, label %for.body.i.i.us, !llvm.loop !18

for.end.r_exit.i.i.loopexit.us:                   ; preds = %for.body.i.i.us
  %119 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %119, %mul.i.i.i
  %sext.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom.i.i.us.1 = ashr exact i64 %sext.i.i.us.1, 32
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.i.us.1

_pocl_kernel_bicgKernel2.exit.loopexit:           ; preds = %for.end.r_exit.i.i.loopexit.us.1
  br label %_pocl_kernel_bicgKernel2.exit

_pocl_kernel_bicgKernel2.exit:                    ; preds = %_pocl_kernel_bicgKernel2.exit.loopexit, %vector.body
  ret void

for.body.i.i.us.1:                                ; preds = %for.body.i.i.us.1, %for.end.r_exit.i.i.loopexit.us
  %indvars.iv.next.i.i2.us.1 = phi i64 [ %indvars.iv.next.i.i.us.1, %for.body.i.i.us.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us ]
  %120 = phi float [ %125, %for.body.i.i.us.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us ]
  %121 = mul nsw i64 %indvars.iv.next.i.i2.us.1, %25
  %122 = add nsw i64 %121, %idxprom.i.i.us.1
  %arrayidx3.i.i.us.1 = getelementptr inbounds float, float* %8, i64 %122
  %123 = load float, float* %arrayidx3.i.i.us.1, align 4, !tbaa !12
  %arrayidx5.i.i.us.1 = getelementptr inbounds float, float* %12, i64 %indvars.iv.next.i.i2.us.1
  %124 = load float, float* %arrayidx5.i.i.us.1, align 4, !tbaa !12
  %125 = tail call float @llvm.fmuladd.f32(float %123, float %124, float %120) #2
  store float %125, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.1, 1
  %exitcond.not.i.i.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.1, label %for.end.r_exit.i.i.loopexit.us.1, label %for.body.i.i.us.1, !llvm.loop !18

for.end.r_exit.i.i.loopexit.us.1:                 ; preds = %for.body.i.i.us.1
  %126 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %126, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_bicgKernel2.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !20
}

; Function Attrs: nounwind
define void @_pocl_kernel_bicgKernel2_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 2
  %12 = bitcast i8** %11 to float**
  %13 = load float*, float** %12, align 8
  %14 = getelementptr i8*, i8** %0, i64 3
  %15 = bitcast i8** %14 to i32**
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr i8*, i8** %0, i64 4
  %19 = bitcast i8** %18 to i32**
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp17.i.i = icmp sgt i32 %17, 0
  %22 = sext i32 %21 to i64
  %wide.trip.count.i.i = zext i32 %17 to i64
  br i1 %cmp17.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.body

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.body:                                      ; preds = %5
  %23 = shl i64 %2, 40
  %24 = ashr exact i64 %23, 32
  %25 = getelementptr inbounds float, float* %13, i64 %24
  %26 = bitcast float* %25 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %26, align 4, !tbaa !12, !llvm.access.group !16
  %27 = getelementptr inbounds float, float* %25, i64 8
  %28 = bitcast float* %27 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %28, align 4, !tbaa !12, !llvm.access.group !16
  %29 = getelementptr inbounds float, float* %25, i64 16
  %30 = bitcast float* %29 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %30, align 4, !tbaa !12, !llvm.access.group !16
  %31 = getelementptr inbounds float, float* %25, i64 24
  %32 = bitcast float* %31 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %32, align 4, !tbaa !12, !llvm.access.group !16
  %33 = shl i64 %2, 40
  %34 = ashr exact i64 %33, 32
  %35 = or i64 %34, 32
  %36 = getelementptr inbounds float, float* %13, i64 %35
  %37 = bitcast float* %36 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %37, align 4, !tbaa !12, !llvm.access.group !16
  %38 = getelementptr inbounds float, float* %36, i64 8
  %39 = bitcast float* %38 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %39, align 4, !tbaa !12, !llvm.access.group !16
  %40 = getelementptr inbounds float, float* %36, i64 16
  %41 = bitcast float* %40 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %41, align 4, !tbaa !12, !llvm.access.group !16
  %42 = getelementptr inbounds float, float* %36, i64 24
  %43 = bitcast float* %42 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %43, align 4, !tbaa !12, !llvm.access.group !16
  %44 = shl i64 %2, 40
  %45 = ashr exact i64 %44, 32
  %46 = or i64 %45, 64
  %47 = getelementptr inbounds float, float* %13, i64 %46
  %48 = bitcast float* %47 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %48, align 4, !tbaa !12, !llvm.access.group !16
  %49 = getelementptr inbounds float, float* %47, i64 8
  %50 = bitcast float* %49 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %50, align 4, !tbaa !12, !llvm.access.group !16
  %51 = getelementptr inbounds float, float* %47, i64 16
  %52 = bitcast float* %51 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %52, align 4, !tbaa !12, !llvm.access.group !16
  %53 = getelementptr inbounds float, float* %47, i64 24
  %54 = bitcast float* %53 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %54, align 4, !tbaa !12, !llvm.access.group !16
  %55 = shl i64 %2, 40
  %56 = ashr exact i64 %55, 32
  %57 = or i64 %56, 96
  %58 = getelementptr inbounds float, float* %13, i64 %57
  %59 = bitcast float* %58 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %59, align 4, !tbaa !12, !llvm.access.group !16
  %60 = getelementptr inbounds float, float* %58, i64 8
  %61 = bitcast float* %60 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %61, align 4, !tbaa !12, !llvm.access.group !16
  %62 = getelementptr inbounds float, float* %58, i64 16
  %63 = bitcast float* %62 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %63, align 4, !tbaa !12, !llvm.access.group !16
  %64 = getelementptr inbounds float, float* %58, i64 24
  %65 = bitcast float* %64 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %65, align 4, !tbaa !12, !llvm.access.group !16
  %66 = shl i64 %2, 40
  %67 = ashr exact i64 %66, 32
  %68 = or i64 %67, 128
  %69 = getelementptr inbounds float, float* %13, i64 %68
  %70 = bitcast float* %69 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %70, align 4, !tbaa !12, !llvm.access.group !16
  %71 = getelementptr inbounds float, float* %69, i64 8
  %72 = bitcast float* %71 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %72, align 4, !tbaa !12, !llvm.access.group !16
  %73 = getelementptr inbounds float, float* %69, i64 16
  %74 = bitcast float* %73 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %74, align 4, !tbaa !12, !llvm.access.group !16
  %75 = getelementptr inbounds float, float* %69, i64 24
  %76 = bitcast float* %75 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %76, align 4, !tbaa !12, !llvm.access.group !16
  %77 = shl i64 %2, 40
  %78 = ashr exact i64 %77, 32
  %79 = or i64 %78, 160
  %80 = getelementptr inbounds float, float* %13, i64 %79
  %81 = bitcast float* %80 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %81, align 4, !tbaa !12, !llvm.access.group !16
  %82 = getelementptr inbounds float, float* %80, i64 8
  %83 = bitcast float* %82 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %83, align 4, !tbaa !12, !llvm.access.group !16
  %84 = getelementptr inbounds float, float* %80, i64 16
  %85 = bitcast float* %84 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %85, align 4, !tbaa !12, !llvm.access.group !16
  %86 = getelementptr inbounds float, float* %80, i64 24
  %87 = bitcast float* %86 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %87, align 4, !tbaa !12, !llvm.access.group !16
  %88 = shl i64 %2, 40
  %89 = ashr exact i64 %88, 32
  %90 = or i64 %89, 192
  %91 = getelementptr inbounds float, float* %13, i64 %90
  %92 = bitcast float* %91 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %92, align 4, !tbaa !12, !llvm.access.group !16
  %93 = getelementptr inbounds float, float* %91, i64 8
  %94 = bitcast float* %93 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %94, align 4, !tbaa !12, !llvm.access.group !16
  %95 = getelementptr inbounds float, float* %91, i64 16
  %96 = bitcast float* %95 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %96, align 4, !tbaa !12, !llvm.access.group !16
  %97 = getelementptr inbounds float, float* %91, i64 24
  %98 = bitcast float* %97 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %98, align 4, !tbaa !12, !llvm.access.group !16
  %99 = shl i64 %2, 40
  %100 = ashr exact i64 %99, 32
  %101 = or i64 %100, 224
  %102 = getelementptr inbounds float, float* %13, i64 %101
  %103 = bitcast float* %102 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %103, align 4, !tbaa !12, !llvm.access.group !16
  %104 = getelementptr inbounds float, float* %102, i64 8
  %105 = bitcast float* %104 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %105, align 4, !tbaa !12, !llvm.access.group !16
  %106 = getelementptr inbounds float, float* %102, i64 16
  %107 = bitcast float* %106 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %107, align 4, !tbaa !12, !llvm.access.group !16
  %108 = getelementptr inbounds float, float* %102, i64 24
  %109 = bitcast float* %108 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %109, align 4, !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_bicgKernel2.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %for.end.r_exit.i.i.loopexit.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %123, %for.end.r_exit.i.i.loopexit.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %pregion_for_entry.entry.i.i.us
  %indvars.iv.next.i.i2.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us ]
  %110 = phi float [ %115, %for.body.i.i.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us ]
  %111 = mul nsw i64 %indvars.iv.next.i.i2.us, %22
  %112 = add nsw i64 %111, %idxprom.i.i.us
  %arrayidx3.i.i.us = getelementptr inbounds float, float* %7, i64 %112
  %113 = load float, float* %arrayidx3.i.i.us, align 4, !tbaa !12
  %arrayidx5.i.i.us = getelementptr inbounds float, float* %10, i64 %indvars.iv.next.i.i2.us
  %114 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !12
  %115 = tail call float @llvm.fmuladd.f32(float %113, float %114, float %110) #2
  store float %115, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i2.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.r_exit.i.i.loopexit.us, label %for.body.i.i.us, !llvm.loop !18

for.end.r_exit.i.i.loopexit.us:                   ; preds = %for.body.i.i.us
  %116 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %116, %mul.i.i.i
  %sext.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom.i.i.us.1 = ashr exact i64 %sext.i.i.us.1, 32
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.i.us.1

_pocl_kernel_bicgKernel2.exit.loopexit:           ; preds = %for.end.r_exit.i.i.loopexit.us.1
  br label %_pocl_kernel_bicgKernel2.exit

_pocl_kernel_bicgKernel2.exit:                    ; preds = %_pocl_kernel_bicgKernel2.exit.loopexit, %vector.body
  ret void

for.body.i.i.us.1:                                ; preds = %for.body.i.i.us.1, %for.end.r_exit.i.i.loopexit.us
  %indvars.iv.next.i.i2.us.1 = phi i64 [ %indvars.iv.next.i.i.us.1, %for.body.i.i.us.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us ]
  %117 = phi float [ %122, %for.body.i.i.us.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us ]
  %118 = mul nsw i64 %indvars.iv.next.i.i2.us.1, %22
  %119 = add nsw i64 %118, %idxprom.i.i.us.1
  %arrayidx3.i.i.us.1 = getelementptr inbounds float, float* %7, i64 %119
  %120 = load float, float* %arrayidx3.i.i.us.1, align 4, !tbaa !12
  %arrayidx5.i.i.us.1 = getelementptr inbounds float, float* %10, i64 %indvars.iv.next.i.i2.us.1
  %121 = load float, float* %arrayidx5.i.i.us.1, align 4, !tbaa !12
  %122 = tail call float @llvm.fmuladd.f32(float %120, float %121, float %117) #2
  store float %122, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.1, 1
  %exitcond.not.i.i.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.1, label %for.end.r_exit.i.i.loopexit.us.1, label %for.body.i.i.us.1, !llvm.loop !18

for.end.r_exit.i.i.loopexit.us.1:                 ; preds = %for.body.i.i.us.1
  %123 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %123, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_bicgKernel2.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !20
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
!10 = !{!"A", !"r", !"s", !"nx", !"ny"}
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
