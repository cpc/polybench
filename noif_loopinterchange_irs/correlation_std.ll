; ModuleID = './MG/JFHMMJMIFKMDPIMHNAHNJMKBLGBGENDPNOHAD/std_kernel/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_std_kernel(float* nocapture readonly %0, float* nocapture %1, float* nocapture readonly %2, float %3, float %4, i32 %5, i32 %6, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %7, i64 %8, i64 %9, i64 %10) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %8, 8
  %cmp53.i = icmp sgt i32 %6, 0
  %12 = sext i32 %5 to i64
  %wide.trip.count.i = zext i32 %6 to i64
  br i1 %cmp53.i, label %pregion_for_entry.entry.i.us.preheader, label %pregion_for_entry.entry.i.preheader

pregion_for_entry.entry.i.us.preheader:           ; preds = %11
  br label %pregion_for_entry.entry.i.us

pregion_for_entry.entry.i.preheader:              ; preds = %11
  %div.i = fdiv float 0.000000e+00, %3, !fpmath !12
  %13 = tail call float @llvm.sqrt.f32(float %div.i) #2
  %cmp25.i = fcmp ugt float %13, %4
  %storemerge.i = select i1 %cmp25.i, float %13, float 1.000000e+00
  %broadcast.splatinsert = insertelement <8 x float> undef, float %storemerge.i, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert8 = insertelement <8 x float> undef, float %storemerge.i, i32 0
  %broadcast.splat9 = shufflevector <8 x float> %broadcast.splatinsert8, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert10 = insertelement <8 x float> undef, float %storemerge.i, i32 0
  %broadcast.splat11 = shufflevector <8 x float> %broadcast.splatinsert10, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert12 = insertelement <8 x float> undef, float %storemerge.i, i32 0
  %broadcast.splat13 = shufflevector <8 x float> %broadcast.splatinsert12, <8 x float> undef, <8 x i32> zeroinitializer
  %14 = shl i64 %8, 40
  %15 = ashr exact i64 %14, 32
  %16 = getelementptr inbounds float, float* %1, i64 %15
  %17 = bitcast float* %16 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %17, align 4, !tbaa !13, !llvm.access.group !17
  %18 = getelementptr inbounds float, float* %16, i64 8
  %19 = bitcast float* %18 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %19, align 4, !tbaa !13, !llvm.access.group !17
  %20 = getelementptr inbounds float, float* %16, i64 16
  %21 = bitcast float* %20 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %21, align 4, !tbaa !13, !llvm.access.group !17
  %22 = getelementptr inbounds float, float* %16, i64 24
  %23 = bitcast float* %22 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %23, align 4, !tbaa !13, !llvm.access.group !17
  %24 = shl i64 %8, 40
  %25 = ashr exact i64 %24, 32
  %26 = or i64 %25, 32
  %27 = getelementptr inbounds float, float* %1, i64 %26
  %28 = bitcast float* %27 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %28, align 4, !tbaa !13, !llvm.access.group !17
  %29 = getelementptr inbounds float, float* %27, i64 8
  %30 = bitcast float* %29 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %30, align 4, !tbaa !13, !llvm.access.group !17
  %31 = getelementptr inbounds float, float* %27, i64 16
  %32 = bitcast float* %31 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %32, align 4, !tbaa !13, !llvm.access.group !17
  %33 = getelementptr inbounds float, float* %27, i64 24
  %34 = bitcast float* %33 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %34, align 4, !tbaa !13, !llvm.access.group !17
  %35 = shl i64 %8, 40
  %36 = ashr exact i64 %35, 32
  %37 = or i64 %36, 64
  %38 = getelementptr inbounds float, float* %1, i64 %37
  %39 = bitcast float* %38 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %39, align 4, !tbaa !13, !llvm.access.group !17
  %40 = getelementptr inbounds float, float* %38, i64 8
  %41 = bitcast float* %40 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %41, align 4, !tbaa !13, !llvm.access.group !17
  %42 = getelementptr inbounds float, float* %38, i64 16
  %43 = bitcast float* %42 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %43, align 4, !tbaa !13, !llvm.access.group !17
  %44 = getelementptr inbounds float, float* %38, i64 24
  %45 = bitcast float* %44 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %45, align 4, !tbaa !13, !llvm.access.group !17
  %46 = shl i64 %8, 40
  %47 = ashr exact i64 %46, 32
  %48 = or i64 %47, 96
  %49 = getelementptr inbounds float, float* %1, i64 %48
  %50 = bitcast float* %49 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %50, align 4, !tbaa !13, !llvm.access.group !17
  %51 = getelementptr inbounds float, float* %49, i64 8
  %52 = bitcast float* %51 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %52, align 4, !tbaa !13, !llvm.access.group !17
  %53 = getelementptr inbounds float, float* %49, i64 16
  %54 = bitcast float* %53 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %54, align 4, !tbaa !13, !llvm.access.group !17
  %55 = getelementptr inbounds float, float* %49, i64 24
  %56 = bitcast float* %55 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %56, align 4, !tbaa !13, !llvm.access.group !17
  %57 = shl i64 %8, 40
  %58 = ashr exact i64 %57, 32
  %59 = or i64 %58, 128
  %60 = getelementptr inbounds float, float* %1, i64 %59
  %61 = bitcast float* %60 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %61, align 4, !tbaa !13, !llvm.access.group !17
  %62 = getelementptr inbounds float, float* %60, i64 8
  %63 = bitcast float* %62 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %63, align 4, !tbaa !13, !llvm.access.group !17
  %64 = getelementptr inbounds float, float* %60, i64 16
  %65 = bitcast float* %64 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %65, align 4, !tbaa !13, !llvm.access.group !17
  %66 = getelementptr inbounds float, float* %60, i64 24
  %67 = bitcast float* %66 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %67, align 4, !tbaa !13, !llvm.access.group !17
  %68 = shl i64 %8, 40
  %69 = ashr exact i64 %68, 32
  %70 = or i64 %69, 160
  %71 = getelementptr inbounds float, float* %1, i64 %70
  %72 = bitcast float* %71 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %72, align 4, !tbaa !13, !llvm.access.group !17
  %73 = getelementptr inbounds float, float* %71, i64 8
  %74 = bitcast float* %73 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %74, align 4, !tbaa !13, !llvm.access.group !17
  %75 = getelementptr inbounds float, float* %71, i64 16
  %76 = bitcast float* %75 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %76, align 4, !tbaa !13, !llvm.access.group !17
  %77 = getelementptr inbounds float, float* %71, i64 24
  %78 = bitcast float* %77 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %78, align 4, !tbaa !13, !llvm.access.group !17
  %79 = shl i64 %8, 40
  %80 = ashr exact i64 %79, 32
  %81 = or i64 %80, 192
  %82 = getelementptr inbounds float, float* %1, i64 %81
  %83 = bitcast float* %82 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %83, align 4, !tbaa !13, !llvm.access.group !17
  %84 = getelementptr inbounds float, float* %82, i64 8
  %85 = bitcast float* %84 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %85, align 4, !tbaa !13, !llvm.access.group !17
  %86 = getelementptr inbounds float, float* %82, i64 16
  %87 = bitcast float* %86 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %87, align 4, !tbaa !13, !llvm.access.group !17
  %88 = getelementptr inbounds float, float* %82, i64 24
  %89 = bitcast float* %88 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %89, align 4, !tbaa !13, !llvm.access.group !17
  %90 = shl i64 %8, 40
  %91 = ashr exact i64 %90, 32
  %92 = or i64 %91, 224
  %93 = getelementptr inbounds float, float* %1, i64 %92
  %94 = bitcast float* %93 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %94, align 4, !tbaa !13, !llvm.access.group !17
  %95 = getelementptr inbounds float, float* %93, i64 8
  %96 = bitcast float* %95 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %96, align 4, !tbaa !13, !llvm.access.group !17
  %97 = getelementptr inbounds float, float* %93, i64 16
  %98 = bitcast float* %97 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %98, align 4, !tbaa !13, !llvm.access.group !17
  %99 = getelementptr inbounds float, float* %93, i64 24
  %100 = bitcast float* %99 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %100, align 4, !tbaa !13, !llvm.access.group !17
  br label %std_kernel.exit

pregion_for_entry.entry.i.us:                     ; preds = %for.end.loopexit.i.us, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %108, %for.end.loopexit.i.us ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %sext.i.us = shl i64 %add1.i.i.us, 32
  %idxprom.i.us = ashr exact i64 %sext.i.us, 32
  %arrayidx.i.us = getelementptr inbounds float, float* %1, i64 %idxprom.i.us
  store float 0.000000e+00, float* %arrayidx.i.us, align 4, !tbaa !13, !llvm.access.group !17
  %arrayidx5.i.us = getelementptr inbounds float, float* %0, i64 %idxprom.i.us
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %pregion_for_entry.entry.i.us
  %indvars.iv.next.i3.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %pregion_for_entry.entry.i.us ]
  %101 = phi float [ %106, %for.body.i.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.us ]
  %102 = mul nsw i64 %indvars.iv.next.i3.us, %12
  %103 = add nsw i64 %102, %idxprom.i.us
  %arrayidx3.i.us = getelementptr inbounds float, float* %2, i64 %103
  %104 = load float, float* %arrayidx3.i.us, align 4, !tbaa !13
  %105 = load float, float* %arrayidx5.i.us, align 4, !tbaa !13
  %sub.i.us = fsub float %104, %105
  %106 = tail call float @llvm.fmuladd.f32(float %sub.i.us, float %sub.i.us, float %101) #2
  store float %106, float* %arrayidx.i.us, align 4, !tbaa !13, !llvm.access.group !17
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i3.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %for.end.loopexit.i.us, label %for.body.i.us, !llvm.loop !19

for.end.loopexit.i.us:                            ; preds = %for.body.i.us
  %.lcssa = phi float [ %106, %for.body.i.us ]
  %div.i.us = fdiv float %.lcssa, %3, !fpmath !12
  %107 = tail call float @llvm.sqrt.f32(float %div.i.us) #2
  %cmp25.i.us = fcmp ugt float %107, %4
  %storemerge.i.us = select i1 %cmp25.i.us, float %107, float 1.000000e+00
  store float %storemerge.i.us, float* %arrayidx.i.us, align 4, !tbaa !13, !llvm.access.group !17
  %108 = add nuw nsw i64 %_local_id_x.0.us, 1
  %exitcond.not = icmp eq i64 %108, 256
  br i1 %exitcond.not, label %std_kernel.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !21

std_kernel.exit.loopexit:                         ; preds = %for.end.loopexit.i.us
  br label %std_kernel.exit

std_kernel.exit:                                  ; preds = %std_kernel.exit.loopexit, %pregion_for_entry.entry.i.preheader
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_std_kernel_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %18 = bitcast i8** %17 to float**
  %19 = load float*, float** %18, align 8
  %20 = load float, float* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 4
  %22 = bitcast i8** %21 to float**
  %23 = load float*, float** %22, align 8
  %24 = load float, float* %23, align 4
  %25 = getelementptr i8*, i8** %0, i64 5
  %26 = bitcast i8** %25 to i32**
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr i8*, i8** %0, i64 6
  %30 = bitcast i8** %29 to i32**
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp53.i.i = icmp sgt i32 %32, 0
  %33 = sext i32 %28 to i64
  %wide.trip.count.i.i = zext i32 %32 to i64
  br i1 %cmp53.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_entry.entry.i.i.preheader

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.preheader:            ; preds = %5
  %div.i.i = fdiv float 0.000000e+00, %20, !fpmath !12
  %34 = tail call float @llvm.sqrt.f32(float %div.i.i) #2
  %cmp25.i.i = fcmp ugt float %34, %24
  %storemerge.i.i = select i1 %cmp25.i.i, float %34, float 1.000000e+00
  %broadcast.splatinsert = insertelement <8 x float> undef, float %storemerge.i.i, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert8 = insertelement <8 x float> undef, float %storemerge.i.i, i32 0
  %broadcast.splat9 = shufflevector <8 x float> %broadcast.splatinsert8, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert10 = insertelement <8 x float> undef, float %storemerge.i.i, i32 0
  %broadcast.splat11 = shufflevector <8 x float> %broadcast.splatinsert10, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert12 = insertelement <8 x float> undef, float %storemerge.i.i, i32 0
  %broadcast.splat13 = shufflevector <8 x float> %broadcast.splatinsert12, <8 x float> undef, <8 x i32> zeroinitializer
  %35 = shl i64 %2, 40
  %36 = ashr exact i64 %35, 32
  %37 = getelementptr inbounds float, float* %12, i64 %36
  %38 = bitcast float* %37 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %38, align 4, !tbaa !13, !llvm.access.group !17
  %39 = getelementptr inbounds float, float* %37, i64 8
  %40 = bitcast float* %39 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %40, align 4, !tbaa !13, !llvm.access.group !17
  %41 = getelementptr inbounds float, float* %37, i64 16
  %42 = bitcast float* %41 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %42, align 4, !tbaa !13, !llvm.access.group !17
  %43 = getelementptr inbounds float, float* %37, i64 24
  %44 = bitcast float* %43 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %44, align 4, !tbaa !13, !llvm.access.group !17
  %45 = shl i64 %2, 40
  %46 = ashr exact i64 %45, 32
  %47 = or i64 %46, 32
  %48 = getelementptr inbounds float, float* %12, i64 %47
  %49 = bitcast float* %48 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %49, align 4, !tbaa !13, !llvm.access.group !17
  %50 = getelementptr inbounds float, float* %48, i64 8
  %51 = bitcast float* %50 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %51, align 4, !tbaa !13, !llvm.access.group !17
  %52 = getelementptr inbounds float, float* %48, i64 16
  %53 = bitcast float* %52 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %53, align 4, !tbaa !13, !llvm.access.group !17
  %54 = getelementptr inbounds float, float* %48, i64 24
  %55 = bitcast float* %54 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %55, align 4, !tbaa !13, !llvm.access.group !17
  %56 = shl i64 %2, 40
  %57 = ashr exact i64 %56, 32
  %58 = or i64 %57, 64
  %59 = getelementptr inbounds float, float* %12, i64 %58
  %60 = bitcast float* %59 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %60, align 4, !tbaa !13, !llvm.access.group !17
  %61 = getelementptr inbounds float, float* %59, i64 8
  %62 = bitcast float* %61 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %62, align 4, !tbaa !13, !llvm.access.group !17
  %63 = getelementptr inbounds float, float* %59, i64 16
  %64 = bitcast float* %63 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %64, align 4, !tbaa !13, !llvm.access.group !17
  %65 = getelementptr inbounds float, float* %59, i64 24
  %66 = bitcast float* %65 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %66, align 4, !tbaa !13, !llvm.access.group !17
  %67 = shl i64 %2, 40
  %68 = ashr exact i64 %67, 32
  %69 = or i64 %68, 96
  %70 = getelementptr inbounds float, float* %12, i64 %69
  %71 = bitcast float* %70 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %71, align 4, !tbaa !13, !llvm.access.group !17
  %72 = getelementptr inbounds float, float* %70, i64 8
  %73 = bitcast float* %72 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %73, align 4, !tbaa !13, !llvm.access.group !17
  %74 = getelementptr inbounds float, float* %70, i64 16
  %75 = bitcast float* %74 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %75, align 4, !tbaa !13, !llvm.access.group !17
  %76 = getelementptr inbounds float, float* %70, i64 24
  %77 = bitcast float* %76 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %77, align 4, !tbaa !13, !llvm.access.group !17
  %78 = shl i64 %2, 40
  %79 = ashr exact i64 %78, 32
  %80 = or i64 %79, 128
  %81 = getelementptr inbounds float, float* %12, i64 %80
  %82 = bitcast float* %81 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %82, align 4, !tbaa !13, !llvm.access.group !17
  %83 = getelementptr inbounds float, float* %81, i64 8
  %84 = bitcast float* %83 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %84, align 4, !tbaa !13, !llvm.access.group !17
  %85 = getelementptr inbounds float, float* %81, i64 16
  %86 = bitcast float* %85 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %86, align 4, !tbaa !13, !llvm.access.group !17
  %87 = getelementptr inbounds float, float* %81, i64 24
  %88 = bitcast float* %87 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %88, align 4, !tbaa !13, !llvm.access.group !17
  %89 = shl i64 %2, 40
  %90 = ashr exact i64 %89, 32
  %91 = or i64 %90, 160
  %92 = getelementptr inbounds float, float* %12, i64 %91
  %93 = bitcast float* %92 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %93, align 4, !tbaa !13, !llvm.access.group !17
  %94 = getelementptr inbounds float, float* %92, i64 8
  %95 = bitcast float* %94 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %95, align 4, !tbaa !13, !llvm.access.group !17
  %96 = getelementptr inbounds float, float* %92, i64 16
  %97 = bitcast float* %96 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %97, align 4, !tbaa !13, !llvm.access.group !17
  %98 = getelementptr inbounds float, float* %92, i64 24
  %99 = bitcast float* %98 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %99, align 4, !tbaa !13, !llvm.access.group !17
  %100 = shl i64 %2, 40
  %101 = ashr exact i64 %100, 32
  %102 = or i64 %101, 192
  %103 = getelementptr inbounds float, float* %12, i64 %102
  %104 = bitcast float* %103 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %104, align 4, !tbaa !13, !llvm.access.group !17
  %105 = getelementptr inbounds float, float* %103, i64 8
  %106 = bitcast float* %105 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %106, align 4, !tbaa !13, !llvm.access.group !17
  %107 = getelementptr inbounds float, float* %103, i64 16
  %108 = bitcast float* %107 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %108, align 4, !tbaa !13, !llvm.access.group !17
  %109 = getelementptr inbounds float, float* %103, i64 24
  %110 = bitcast float* %109 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %110, align 4, !tbaa !13, !llvm.access.group !17
  %111 = shl i64 %2, 40
  %112 = ashr exact i64 %111, 32
  %113 = or i64 %112, 224
  %114 = getelementptr inbounds float, float* %12, i64 %113
  %115 = bitcast float* %114 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %115, align 4, !tbaa !13, !llvm.access.group !17
  %116 = getelementptr inbounds float, float* %114, i64 8
  %117 = bitcast float* %116 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %117, align 4, !tbaa !13, !llvm.access.group !17
  %118 = getelementptr inbounds float, float* %114, i64 16
  %119 = bitcast float* %118 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %119, align 4, !tbaa !13, !llvm.access.group !17
  %120 = getelementptr inbounds float, float* %114, i64 24
  %121 = bitcast float* %120 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %121, align 4, !tbaa !13, !llvm.access.group !17
  br label %_pocl_kernel_std_kernel.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %for.end.loopexit.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %129, %for.end.loopexit.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !13, !llvm.access.group !17
  %arrayidx5.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %pregion_for_entry.entry.i.i.us
  %indvars.iv.next.i.i3.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us ]
  %122 = phi float [ %127, %for.body.i.i.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us ]
  %123 = mul nsw i64 %indvars.iv.next.i.i3.us, %33
  %124 = add nsw i64 %123, %idxprom.i.i.us
  %arrayidx3.i.i.us = getelementptr inbounds float, float* %16, i64 %124
  %125 = load float, float* %arrayidx3.i.i.us, align 4, !tbaa !13
  %126 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !13
  %sub.i.i.us = fsub float %125, %126
  %127 = tail call float @llvm.fmuladd.f32(float %sub.i.i.us, float %sub.i.i.us, float %122) #2
  store float %127, float* %arrayidx.i.i.us, align 4, !tbaa !13, !llvm.access.group !17
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i3.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !19

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %.lcssa = phi float [ %127, %for.body.i.i.us ]
  %div.i.i.us = fdiv float %.lcssa, %20, !fpmath !12
  %128 = tail call float @llvm.sqrt.f32(float %div.i.i.us) #2
  %cmp25.i.i.us = fcmp ugt float %128, %24
  %storemerge.i.i.us = select i1 %cmp25.i.i.us, float %128, float 1.000000e+00
  store float %storemerge.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !13, !llvm.access.group !17
  %129 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %129, 256
  br i1 %exitcond.not, label %_pocl_kernel_std_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !21

_pocl_kernel_std_kernel.exit.loopexit:            ; preds = %for.end.loopexit.i.i.us
  br label %_pocl_kernel_std_kernel.exit

_pocl_kernel_std_kernel.exit:                     ; preds = %_pocl_kernel_std_kernel.exit.loopexit, %pregion_for_entry.entry.i.i.preheader
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_std_kernel_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 2
  %12 = bitcast i8** %11 to float**
  %13 = load float*, float** %12, align 8
  %14 = getelementptr i8*, i8** %0, i64 3
  %15 = bitcast i8** %14 to float**
  %16 = load float*, float** %15, align 8
  %17 = load float, float* %16, align 4
  %18 = getelementptr i8*, i8** %0, i64 4
  %19 = bitcast i8** %18 to float**
  %20 = load float*, float** %19, align 8
  %21 = load float, float* %20, align 4
  %22 = getelementptr i8*, i8** %0, i64 5
  %23 = bitcast i8** %22 to i32**
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr i8*, i8** %0, i64 6
  %27 = bitcast i8** %26 to i32**
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %28, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp53.i.i = icmp sgt i32 %29, 0
  %30 = sext i32 %25 to i64
  %wide.trip.count.i.i = zext i32 %29 to i64
  br i1 %cmp53.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_entry.entry.i.i.preheader

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.preheader:            ; preds = %5
  %div.i.i = fdiv float 0.000000e+00, %17, !fpmath !12
  %31 = tail call float @llvm.sqrt.f32(float %div.i.i) #2
  %cmp25.i.i = fcmp ugt float %31, %21
  %storemerge.i.i = select i1 %cmp25.i.i, float %31, float 1.000000e+00
  %broadcast.splatinsert = insertelement <8 x float> undef, float %storemerge.i.i, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert8 = insertelement <8 x float> undef, float %storemerge.i.i, i32 0
  %broadcast.splat9 = shufflevector <8 x float> %broadcast.splatinsert8, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert10 = insertelement <8 x float> undef, float %storemerge.i.i, i32 0
  %broadcast.splat11 = shufflevector <8 x float> %broadcast.splatinsert10, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert12 = insertelement <8 x float> undef, float %storemerge.i.i, i32 0
  %broadcast.splat13 = shufflevector <8 x float> %broadcast.splatinsert12, <8 x float> undef, <8 x i32> zeroinitializer
  %32 = shl i64 %2, 40
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds float, float* %10, i64 %33
  %35 = bitcast float* %34 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %35, align 4, !tbaa !13, !llvm.access.group !17
  %36 = getelementptr inbounds float, float* %34, i64 8
  %37 = bitcast float* %36 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %37, align 4, !tbaa !13, !llvm.access.group !17
  %38 = getelementptr inbounds float, float* %34, i64 16
  %39 = bitcast float* %38 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %39, align 4, !tbaa !13, !llvm.access.group !17
  %40 = getelementptr inbounds float, float* %34, i64 24
  %41 = bitcast float* %40 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %41, align 4, !tbaa !13, !llvm.access.group !17
  %42 = shl i64 %2, 40
  %43 = ashr exact i64 %42, 32
  %44 = or i64 %43, 32
  %45 = getelementptr inbounds float, float* %10, i64 %44
  %46 = bitcast float* %45 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %46, align 4, !tbaa !13, !llvm.access.group !17
  %47 = getelementptr inbounds float, float* %45, i64 8
  %48 = bitcast float* %47 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %48, align 4, !tbaa !13, !llvm.access.group !17
  %49 = getelementptr inbounds float, float* %45, i64 16
  %50 = bitcast float* %49 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %50, align 4, !tbaa !13, !llvm.access.group !17
  %51 = getelementptr inbounds float, float* %45, i64 24
  %52 = bitcast float* %51 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %52, align 4, !tbaa !13, !llvm.access.group !17
  %53 = shl i64 %2, 40
  %54 = ashr exact i64 %53, 32
  %55 = or i64 %54, 64
  %56 = getelementptr inbounds float, float* %10, i64 %55
  %57 = bitcast float* %56 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %57, align 4, !tbaa !13, !llvm.access.group !17
  %58 = getelementptr inbounds float, float* %56, i64 8
  %59 = bitcast float* %58 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %59, align 4, !tbaa !13, !llvm.access.group !17
  %60 = getelementptr inbounds float, float* %56, i64 16
  %61 = bitcast float* %60 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %61, align 4, !tbaa !13, !llvm.access.group !17
  %62 = getelementptr inbounds float, float* %56, i64 24
  %63 = bitcast float* %62 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %63, align 4, !tbaa !13, !llvm.access.group !17
  %64 = shl i64 %2, 40
  %65 = ashr exact i64 %64, 32
  %66 = or i64 %65, 96
  %67 = getelementptr inbounds float, float* %10, i64 %66
  %68 = bitcast float* %67 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %68, align 4, !tbaa !13, !llvm.access.group !17
  %69 = getelementptr inbounds float, float* %67, i64 8
  %70 = bitcast float* %69 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %70, align 4, !tbaa !13, !llvm.access.group !17
  %71 = getelementptr inbounds float, float* %67, i64 16
  %72 = bitcast float* %71 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %72, align 4, !tbaa !13, !llvm.access.group !17
  %73 = getelementptr inbounds float, float* %67, i64 24
  %74 = bitcast float* %73 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %74, align 4, !tbaa !13, !llvm.access.group !17
  %75 = shl i64 %2, 40
  %76 = ashr exact i64 %75, 32
  %77 = or i64 %76, 128
  %78 = getelementptr inbounds float, float* %10, i64 %77
  %79 = bitcast float* %78 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %79, align 4, !tbaa !13, !llvm.access.group !17
  %80 = getelementptr inbounds float, float* %78, i64 8
  %81 = bitcast float* %80 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %81, align 4, !tbaa !13, !llvm.access.group !17
  %82 = getelementptr inbounds float, float* %78, i64 16
  %83 = bitcast float* %82 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %83, align 4, !tbaa !13, !llvm.access.group !17
  %84 = getelementptr inbounds float, float* %78, i64 24
  %85 = bitcast float* %84 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %85, align 4, !tbaa !13, !llvm.access.group !17
  %86 = shl i64 %2, 40
  %87 = ashr exact i64 %86, 32
  %88 = or i64 %87, 160
  %89 = getelementptr inbounds float, float* %10, i64 %88
  %90 = bitcast float* %89 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %90, align 4, !tbaa !13, !llvm.access.group !17
  %91 = getelementptr inbounds float, float* %89, i64 8
  %92 = bitcast float* %91 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %92, align 4, !tbaa !13, !llvm.access.group !17
  %93 = getelementptr inbounds float, float* %89, i64 16
  %94 = bitcast float* %93 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %94, align 4, !tbaa !13, !llvm.access.group !17
  %95 = getelementptr inbounds float, float* %89, i64 24
  %96 = bitcast float* %95 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %96, align 4, !tbaa !13, !llvm.access.group !17
  %97 = shl i64 %2, 40
  %98 = ashr exact i64 %97, 32
  %99 = or i64 %98, 192
  %100 = getelementptr inbounds float, float* %10, i64 %99
  %101 = bitcast float* %100 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %101, align 4, !tbaa !13, !llvm.access.group !17
  %102 = getelementptr inbounds float, float* %100, i64 8
  %103 = bitcast float* %102 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %103, align 4, !tbaa !13, !llvm.access.group !17
  %104 = getelementptr inbounds float, float* %100, i64 16
  %105 = bitcast float* %104 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %105, align 4, !tbaa !13, !llvm.access.group !17
  %106 = getelementptr inbounds float, float* %100, i64 24
  %107 = bitcast float* %106 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %107, align 4, !tbaa !13, !llvm.access.group !17
  %108 = shl i64 %2, 40
  %109 = ashr exact i64 %108, 32
  %110 = or i64 %109, 224
  %111 = getelementptr inbounds float, float* %10, i64 %110
  %112 = bitcast float* %111 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %112, align 4, !tbaa !13, !llvm.access.group !17
  %113 = getelementptr inbounds float, float* %111, i64 8
  %114 = bitcast float* %113 to <8 x float>*
  store <8 x float> %broadcast.splat9, <8 x float>* %114, align 4, !tbaa !13, !llvm.access.group !17
  %115 = getelementptr inbounds float, float* %111, i64 16
  %116 = bitcast float* %115 to <8 x float>*
  store <8 x float> %broadcast.splat11, <8 x float>* %116, align 4, !tbaa !13, !llvm.access.group !17
  %117 = getelementptr inbounds float, float* %111, i64 24
  %118 = bitcast float* %117 to <8 x float>*
  store <8 x float> %broadcast.splat13, <8 x float>* %118, align 4, !tbaa !13, !llvm.access.group !17
  br label %_pocl_kernel_std_kernel.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %for.end.loopexit.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %126, %for.end.loopexit.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !13, !llvm.access.group !17
  %arrayidx5.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %pregion_for_entry.entry.i.i.us
  %indvars.iv.next.i.i3.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us ]
  %119 = phi float [ %124, %for.body.i.i.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us ]
  %120 = mul nsw i64 %indvars.iv.next.i.i3.us, %30
  %121 = add nsw i64 %120, %idxprom.i.i.us
  %arrayidx3.i.i.us = getelementptr inbounds float, float* %13, i64 %121
  %122 = load float, float* %arrayidx3.i.i.us, align 4, !tbaa !13
  %123 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !13
  %sub.i.i.us = fsub float %122, %123
  %124 = tail call float @llvm.fmuladd.f32(float %sub.i.i.us, float %sub.i.i.us, float %119) #2
  store float %124, float* %arrayidx.i.i.us, align 4, !tbaa !13, !llvm.access.group !17
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i3.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !19

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %.lcssa = phi float [ %124, %for.body.i.i.us ]
  %div.i.i.us = fdiv float %.lcssa, %17, !fpmath !12
  %125 = tail call float @llvm.sqrt.f32(float %div.i.i.us) #2
  %cmp25.i.i.us = fcmp ugt float %125, %21
  %storemerge.i.i.us = select i1 %cmp25.i.i.us, float %125, float 1.000000e+00
  store float %storemerge.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !13, !llvm.access.group !17
  %126 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %126, 256
  br i1 %exitcond.not, label %_pocl_kernel_std_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !21

_pocl_kernel_std_kernel.exit.loopexit:            ; preds = %for.end.loopexit.i.i.us
  br label %_pocl_kernel_std_kernel.exit

_pocl_kernel_std_kernel.exit:                     ; preds = %_pocl_kernel_std_kernel.exit.loopexit, %pregion_for_entry.entry.i.i.preheader
  ret void
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
!5 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"DATA_TYPE", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"float", !"float", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !"", !"", !""}
!10 = !{!"mean", !"std", !"data", !"float_n", !"eps", !"m", !"n"}
!11 = !{i32 1}
!12 = !{float 2.500000e+00}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !{!18}
!18 = distinct !{}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.parallel_accesses", !18}
