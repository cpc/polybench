; ModuleID = './JM/OPIFJOLNKBFBEAIHGDIPGEAHODEIHHEIHPEGM/mean_kernel/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_mean_kernel(float* nocapture %0, float* nocapture readonly %1, float %2, i32 %3, i32 %4, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %5, i64 %6, i64 %7, i64 %8) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %6, 8
  %cmp18.i = icmp sgt i32 %4, 0
  %10 = sext i32 %3 to i64
  %wide.trip.count.i = zext i32 %4 to i64
  br i1 %cmp18.i, label %pregion_for_entry.entry.i.us.preheader, label %pregion_for_entry.entry.i.preheader

pregion_for_entry.entry.i.us.preheader:           ; preds = %9
  br label %pregion_for_entry.entry.i.us

pregion_for_entry.entry.i.preheader:              ; preds = %9
  %div.i = fdiv float 0.000000e+00, %2, !fpmath !12
  %broadcast.splatinsert = insertelement <8 x float> undef, float %div.i, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert9 = insertelement <8 x float> undef, float %div.i, i32 0
  %broadcast.splat10 = shufflevector <8 x float> %broadcast.splatinsert9, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert11 = insertelement <8 x float> undef, float %div.i, i32 0
  %broadcast.splat12 = shufflevector <8 x float> %broadcast.splatinsert11, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <8 x float> undef, float %div.i, i32 0
  %broadcast.splat14 = shufflevector <8 x float> %broadcast.splatinsert13, <8 x float> undef, <8 x i32> zeroinitializer
  %11 = shl i64 %6, 40
  %12 = ashr exact i64 %11, 32
  %13 = getelementptr inbounds float, float* %0, i64 %12
  %14 = bitcast float* %13 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %14, align 4, !tbaa !13, !llvm.access.group !17
  %15 = getelementptr inbounds float, float* %13, i64 8
  %16 = bitcast float* %15 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %16, align 4, !tbaa !13, !llvm.access.group !17
  %17 = getelementptr inbounds float, float* %13, i64 16
  %18 = bitcast float* %17 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %18, align 4, !tbaa !13, !llvm.access.group !17
  %19 = getelementptr inbounds float, float* %13, i64 24
  %20 = bitcast float* %19 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %20, align 4, !tbaa !13, !llvm.access.group !17
  %21 = shl i64 %6, 40
  %22 = ashr exact i64 %21, 32
  %23 = or i64 %22, 32
  %24 = getelementptr inbounds float, float* %0, i64 %23
  %25 = bitcast float* %24 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %25, align 4, !tbaa !13, !llvm.access.group !17
  %26 = getelementptr inbounds float, float* %24, i64 8
  %27 = bitcast float* %26 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %27, align 4, !tbaa !13, !llvm.access.group !17
  %28 = getelementptr inbounds float, float* %24, i64 16
  %29 = bitcast float* %28 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %29, align 4, !tbaa !13, !llvm.access.group !17
  %30 = getelementptr inbounds float, float* %24, i64 24
  %31 = bitcast float* %30 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %31, align 4, !tbaa !13, !llvm.access.group !17
  %32 = shl i64 %6, 40
  %33 = ashr exact i64 %32, 32
  %34 = or i64 %33, 64
  %35 = getelementptr inbounds float, float* %0, i64 %34
  %36 = bitcast float* %35 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %36, align 4, !tbaa !13, !llvm.access.group !17
  %37 = getelementptr inbounds float, float* %35, i64 8
  %38 = bitcast float* %37 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %38, align 4, !tbaa !13, !llvm.access.group !17
  %39 = getelementptr inbounds float, float* %35, i64 16
  %40 = bitcast float* %39 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %40, align 4, !tbaa !13, !llvm.access.group !17
  %41 = getelementptr inbounds float, float* %35, i64 24
  %42 = bitcast float* %41 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %42, align 4, !tbaa !13, !llvm.access.group !17
  %43 = shl i64 %6, 40
  %44 = ashr exact i64 %43, 32
  %45 = or i64 %44, 96
  %46 = getelementptr inbounds float, float* %0, i64 %45
  %47 = bitcast float* %46 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %47, align 4, !tbaa !13, !llvm.access.group !17
  %48 = getelementptr inbounds float, float* %46, i64 8
  %49 = bitcast float* %48 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %49, align 4, !tbaa !13, !llvm.access.group !17
  %50 = getelementptr inbounds float, float* %46, i64 16
  %51 = bitcast float* %50 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %51, align 4, !tbaa !13, !llvm.access.group !17
  %52 = getelementptr inbounds float, float* %46, i64 24
  %53 = bitcast float* %52 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %53, align 4, !tbaa !13, !llvm.access.group !17
  %54 = shl i64 %6, 40
  %55 = ashr exact i64 %54, 32
  %56 = or i64 %55, 128
  %57 = getelementptr inbounds float, float* %0, i64 %56
  %58 = bitcast float* %57 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %58, align 4, !tbaa !13, !llvm.access.group !17
  %59 = getelementptr inbounds float, float* %57, i64 8
  %60 = bitcast float* %59 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %60, align 4, !tbaa !13, !llvm.access.group !17
  %61 = getelementptr inbounds float, float* %57, i64 16
  %62 = bitcast float* %61 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %62, align 4, !tbaa !13, !llvm.access.group !17
  %63 = getelementptr inbounds float, float* %57, i64 24
  %64 = bitcast float* %63 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %64, align 4, !tbaa !13, !llvm.access.group !17
  %65 = shl i64 %6, 40
  %66 = ashr exact i64 %65, 32
  %67 = or i64 %66, 160
  %68 = getelementptr inbounds float, float* %0, i64 %67
  %69 = bitcast float* %68 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %69, align 4, !tbaa !13, !llvm.access.group !17
  %70 = getelementptr inbounds float, float* %68, i64 8
  %71 = bitcast float* %70 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %71, align 4, !tbaa !13, !llvm.access.group !17
  %72 = getelementptr inbounds float, float* %68, i64 16
  %73 = bitcast float* %72 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %73, align 4, !tbaa !13, !llvm.access.group !17
  %74 = getelementptr inbounds float, float* %68, i64 24
  %75 = bitcast float* %74 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %75, align 4, !tbaa !13, !llvm.access.group !17
  %76 = shl i64 %6, 40
  %77 = ashr exact i64 %76, 32
  %78 = or i64 %77, 192
  %79 = getelementptr inbounds float, float* %0, i64 %78
  %80 = bitcast float* %79 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %80, align 4, !tbaa !13, !llvm.access.group !17
  %81 = getelementptr inbounds float, float* %79, i64 8
  %82 = bitcast float* %81 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %82, align 4, !tbaa !13, !llvm.access.group !17
  %83 = getelementptr inbounds float, float* %79, i64 16
  %84 = bitcast float* %83 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %84, align 4, !tbaa !13, !llvm.access.group !17
  %85 = getelementptr inbounds float, float* %79, i64 24
  %86 = bitcast float* %85 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %86, align 4, !tbaa !13, !llvm.access.group !17
  %87 = shl i64 %6, 40
  %88 = ashr exact i64 %87, 32
  %89 = or i64 %88, 224
  %90 = getelementptr inbounds float, float* %0, i64 %89
  %91 = bitcast float* %90 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %91, align 4, !tbaa !13, !llvm.access.group !17
  %92 = getelementptr inbounds float, float* %90, i64 8
  %93 = bitcast float* %92 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %93, align 4, !tbaa !13, !llvm.access.group !17
  %94 = getelementptr inbounds float, float* %90, i64 16
  %95 = bitcast float* %94 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %95, align 4, !tbaa !13, !llvm.access.group !17
  %96 = getelementptr inbounds float, float* %90, i64 24
  %97 = bitcast float* %96 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %97, align 4, !tbaa !13, !llvm.access.group !17
  br label %mean_kernel.exit

pregion_for_entry.entry.i.us:                     ; preds = %for.end.loopexit.i.us.1, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %105, %for.end.loopexit.i.us.1 ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %sext.i.us = shl i64 %add1.i.i.us, 32
  %idxprom.i.us = ashr exact i64 %sext.i.us, 32
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %idxprom.i.us
  store float 0.000000e+00, float* %arrayidx.i.us, align 4, !tbaa !13, !llvm.access.group !17
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %pregion_for_entry.entry.i.us
  %indvars.iv.next.i4.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %pregion_for_entry.entry.i.us ]
  %add6.i1.us = phi float [ %add6.i.us, %for.body.i.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.us ]
  %98 = mul nsw i64 %indvars.iv.next.i4.us, %10
  %99 = add nsw i64 %98, %idxprom.i.us
  %arrayidx3.i.us = getelementptr inbounds float, float* %1, i64 %99
  %100 = load float, float* %arrayidx3.i.us, align 4, !tbaa !13
  %add6.i.us = fadd float %add6.i1.us, %100
  store float %add6.i.us, float* %arrayidx.i.us, align 4, !tbaa !13, !llvm.access.group !17
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i4.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %for.end.loopexit.i.us, label %for.body.i.us, !llvm.loop !19

for.end.loopexit.i.us:                            ; preds = %for.body.i.us
  %add6.i.us.lcssa = phi float [ %add6.i.us, %for.body.i.us ]
  %div.i.us = fdiv float %add6.i.us.lcssa, %2, !fpmath !12
  store float %div.i.us, float* %arrayidx.i.us, align 4, !tbaa !13, !llvm.access.group !17
  %101 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1 = add nuw nsw i64 %101, %mul.i.i
  %sext.i.us.1 = shl i64 %add1.i.i.us.1, 32
  %idxprom.i.us.1 = ashr exact i64 %sext.i.us.1, 32
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.us.1, align 4, !tbaa !13, !llvm.access.group !17
  br label %for.body.i.us.1

mean_kernel.exit.loopexit:                        ; preds = %for.end.loopexit.i.us.1
  br label %mean_kernel.exit

mean_kernel.exit:                                 ; preds = %mean_kernel.exit.loopexit, %pregion_for_entry.entry.i.preheader
  ret void

for.body.i.us.1:                                  ; preds = %for.body.i.us.1, %for.end.loopexit.i.us
  %indvars.iv.next.i4.us.1 = phi i64 [ %indvars.iv.next.i.us.1, %for.body.i.us.1 ], [ 0, %for.end.loopexit.i.us ]
  %add6.i1.us.1 = phi float [ %add6.i.us.1, %for.body.i.us.1 ], [ 0.000000e+00, %for.end.loopexit.i.us ]
  %102 = mul nsw i64 %indvars.iv.next.i4.us.1, %10
  %103 = add nsw i64 %102, %idxprom.i.us.1
  %arrayidx3.i.us.1 = getelementptr inbounds float, float* %1, i64 %103
  %104 = load float, float* %arrayidx3.i.us.1, align 4, !tbaa !13
  %add6.i.us.1 = fadd float %add6.i1.us.1, %104
  store float %add6.i.us.1, float* %arrayidx.i.us.1, align 4, !tbaa !13, !llvm.access.group !17
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.next.i4.us.1, 1
  %exitcond.not.i.us.1 = icmp eq i64 %indvars.iv.next.i.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.1, label %for.end.loopexit.i.us.1, label %for.body.i.us.1, !llvm.loop !19

for.end.loopexit.i.us.1:                          ; preds = %for.body.i.us.1
  %add6.i.us.1.lcssa = phi float [ %add6.i.us.1, %for.body.i.us.1 ]
  %div.i.us.1 = fdiv float %add6.i.us.1.lcssa, %2, !fpmath !12
  store float %div.i.us.1, float* %arrayidx.i.us.1, align 4, !tbaa !13, !llvm.access.group !17
  %105 = add nuw nsw i64 %_local_id_x.0.us, 2
  %exitcond.not.1 = icmp eq i64 %105, 256
  br i1 %exitcond.not.1, label %mean_kernel.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !21
}

; Function Attrs: nounwind
define void @_pocl_kernel_mean_kernel_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
  %6 = bitcast i8** %0 to float***
  %7 = load float**, float*** %6, align 8
  %8 = load float*, float** %7, align 8
  %9 = getelementptr i8*, i8** %0, i64 1
  %10 = bitcast i8** %9 to float***
  %11 = load float**, float*** %10, align 8
  %12 = load float*, float** %11, align 8
  %13 = getelementptr i8*, i8** %0, i64 2
  %14 = bitcast i8** %13 to float**
  %15 = load float*, float** %14, align 8
  %16 = load float, float* %15, align 4
  %17 = getelementptr i8*, i8** %0, i64 3
  %18 = bitcast i8** %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 4
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp18.i.i = icmp sgt i32 %24, 0
  %25 = sext i32 %20 to i64
  %wide.trip.count.i.i = zext i32 %24 to i64
  br i1 %cmp18.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_entry.entry.i.i.preheader

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.preheader:            ; preds = %5
  %div.i.i = fdiv float 0.000000e+00, %16, !fpmath !12
  %broadcast.splatinsert = insertelement <8 x float> undef, float %div.i.i, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert9 = insertelement <8 x float> undef, float %div.i.i, i32 0
  %broadcast.splat10 = shufflevector <8 x float> %broadcast.splatinsert9, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert11 = insertelement <8 x float> undef, float %div.i.i, i32 0
  %broadcast.splat12 = shufflevector <8 x float> %broadcast.splatinsert11, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <8 x float> undef, float %div.i.i, i32 0
  %broadcast.splat14 = shufflevector <8 x float> %broadcast.splatinsert13, <8 x float> undef, <8 x i32> zeroinitializer
  %26 = shl i64 %2, 40
  %27 = ashr exact i64 %26, 32
  %28 = getelementptr inbounds float, float* %8, i64 %27
  %29 = bitcast float* %28 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %29, align 4, !tbaa !13, !llvm.access.group !17
  %30 = getelementptr inbounds float, float* %28, i64 8
  %31 = bitcast float* %30 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %31, align 4, !tbaa !13, !llvm.access.group !17
  %32 = getelementptr inbounds float, float* %28, i64 16
  %33 = bitcast float* %32 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %33, align 4, !tbaa !13, !llvm.access.group !17
  %34 = getelementptr inbounds float, float* %28, i64 24
  %35 = bitcast float* %34 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %35, align 4, !tbaa !13, !llvm.access.group !17
  %36 = shl i64 %2, 40
  %37 = ashr exact i64 %36, 32
  %38 = or i64 %37, 32
  %39 = getelementptr inbounds float, float* %8, i64 %38
  %40 = bitcast float* %39 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %40, align 4, !tbaa !13, !llvm.access.group !17
  %41 = getelementptr inbounds float, float* %39, i64 8
  %42 = bitcast float* %41 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %42, align 4, !tbaa !13, !llvm.access.group !17
  %43 = getelementptr inbounds float, float* %39, i64 16
  %44 = bitcast float* %43 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %44, align 4, !tbaa !13, !llvm.access.group !17
  %45 = getelementptr inbounds float, float* %39, i64 24
  %46 = bitcast float* %45 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %46, align 4, !tbaa !13, !llvm.access.group !17
  %47 = shl i64 %2, 40
  %48 = ashr exact i64 %47, 32
  %49 = or i64 %48, 64
  %50 = getelementptr inbounds float, float* %8, i64 %49
  %51 = bitcast float* %50 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %51, align 4, !tbaa !13, !llvm.access.group !17
  %52 = getelementptr inbounds float, float* %50, i64 8
  %53 = bitcast float* %52 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %53, align 4, !tbaa !13, !llvm.access.group !17
  %54 = getelementptr inbounds float, float* %50, i64 16
  %55 = bitcast float* %54 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %55, align 4, !tbaa !13, !llvm.access.group !17
  %56 = getelementptr inbounds float, float* %50, i64 24
  %57 = bitcast float* %56 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %57, align 4, !tbaa !13, !llvm.access.group !17
  %58 = shl i64 %2, 40
  %59 = ashr exact i64 %58, 32
  %60 = or i64 %59, 96
  %61 = getelementptr inbounds float, float* %8, i64 %60
  %62 = bitcast float* %61 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %62, align 4, !tbaa !13, !llvm.access.group !17
  %63 = getelementptr inbounds float, float* %61, i64 8
  %64 = bitcast float* %63 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %64, align 4, !tbaa !13, !llvm.access.group !17
  %65 = getelementptr inbounds float, float* %61, i64 16
  %66 = bitcast float* %65 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %66, align 4, !tbaa !13, !llvm.access.group !17
  %67 = getelementptr inbounds float, float* %61, i64 24
  %68 = bitcast float* %67 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %68, align 4, !tbaa !13, !llvm.access.group !17
  %69 = shl i64 %2, 40
  %70 = ashr exact i64 %69, 32
  %71 = or i64 %70, 128
  %72 = getelementptr inbounds float, float* %8, i64 %71
  %73 = bitcast float* %72 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %73, align 4, !tbaa !13, !llvm.access.group !17
  %74 = getelementptr inbounds float, float* %72, i64 8
  %75 = bitcast float* %74 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %75, align 4, !tbaa !13, !llvm.access.group !17
  %76 = getelementptr inbounds float, float* %72, i64 16
  %77 = bitcast float* %76 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %77, align 4, !tbaa !13, !llvm.access.group !17
  %78 = getelementptr inbounds float, float* %72, i64 24
  %79 = bitcast float* %78 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %79, align 4, !tbaa !13, !llvm.access.group !17
  %80 = shl i64 %2, 40
  %81 = ashr exact i64 %80, 32
  %82 = or i64 %81, 160
  %83 = getelementptr inbounds float, float* %8, i64 %82
  %84 = bitcast float* %83 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %84, align 4, !tbaa !13, !llvm.access.group !17
  %85 = getelementptr inbounds float, float* %83, i64 8
  %86 = bitcast float* %85 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %86, align 4, !tbaa !13, !llvm.access.group !17
  %87 = getelementptr inbounds float, float* %83, i64 16
  %88 = bitcast float* %87 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %88, align 4, !tbaa !13, !llvm.access.group !17
  %89 = getelementptr inbounds float, float* %83, i64 24
  %90 = bitcast float* %89 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %90, align 4, !tbaa !13, !llvm.access.group !17
  %91 = shl i64 %2, 40
  %92 = ashr exact i64 %91, 32
  %93 = or i64 %92, 192
  %94 = getelementptr inbounds float, float* %8, i64 %93
  %95 = bitcast float* %94 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %95, align 4, !tbaa !13, !llvm.access.group !17
  %96 = getelementptr inbounds float, float* %94, i64 8
  %97 = bitcast float* %96 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %97, align 4, !tbaa !13, !llvm.access.group !17
  %98 = getelementptr inbounds float, float* %94, i64 16
  %99 = bitcast float* %98 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %99, align 4, !tbaa !13, !llvm.access.group !17
  %100 = getelementptr inbounds float, float* %94, i64 24
  %101 = bitcast float* %100 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %101, align 4, !tbaa !13, !llvm.access.group !17
  %102 = shl i64 %2, 40
  %103 = ashr exact i64 %102, 32
  %104 = or i64 %103, 224
  %105 = getelementptr inbounds float, float* %8, i64 %104
  %106 = bitcast float* %105 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %106, align 4, !tbaa !13, !llvm.access.group !17
  %107 = getelementptr inbounds float, float* %105, i64 8
  %108 = bitcast float* %107 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %108, align 4, !tbaa !13, !llvm.access.group !17
  %109 = getelementptr inbounds float, float* %105, i64 16
  %110 = bitcast float* %109 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %110, align 4, !tbaa !13, !llvm.access.group !17
  %111 = getelementptr inbounds float, float* %105, i64 24
  %112 = bitcast float* %111 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %112, align 4, !tbaa !13, !llvm.access.group !17
  br label %_pocl_kernel_mean_kernel.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %for.end.loopexit.i.i.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %120, %for.end.loopexit.i.i.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !13, !llvm.access.group !17
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %pregion_for_entry.entry.i.i.us
  %indvars.iv.next.i.i4.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us ]
  %add6.i.i1.us = phi float [ %add6.i.i.us, %for.body.i.i.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us ]
  %113 = mul nsw i64 %indvars.iv.next.i.i4.us, %25
  %114 = add nsw i64 %113, %idxprom.i.i.us
  %arrayidx3.i.i.us = getelementptr inbounds float, float* %12, i64 %114
  %115 = load float, float* %arrayidx3.i.i.us, align 4, !tbaa !13
  %add6.i.i.us = fadd float %add6.i.i1.us, %115
  store float %add6.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !13, !llvm.access.group !17
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i4.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !19

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %add6.i.i.us.lcssa = phi float [ %add6.i.i.us, %for.body.i.i.us ]
  %div.i.i.us = fdiv float %add6.i.i.us.lcssa, %16, !fpmath !12
  store float %div.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !13, !llvm.access.group !17
  %116 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %116, %mul.i.i.i
  %sext.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom.i.i.us.1 = ashr exact i64 %sext.i.i.us.1, 32
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.1, align 4, !tbaa !13, !llvm.access.group !17
  br label %for.body.i.i.us.1

_pocl_kernel_mean_kernel.exit.loopexit:           ; preds = %for.end.loopexit.i.i.us.1
  br label %_pocl_kernel_mean_kernel.exit

_pocl_kernel_mean_kernel.exit:                    ; preds = %_pocl_kernel_mean_kernel.exit.loopexit, %pregion_for_entry.entry.i.i.preheader
  ret void

for.body.i.i.us.1:                                ; preds = %for.body.i.i.us.1, %for.end.loopexit.i.i.us
  %indvars.iv.next.i.i4.us.1 = phi i64 [ %indvars.iv.next.i.i.us.1, %for.body.i.i.us.1 ], [ 0, %for.end.loopexit.i.i.us ]
  %add6.i.i1.us.1 = phi float [ %add6.i.i.us.1, %for.body.i.i.us.1 ], [ 0.000000e+00, %for.end.loopexit.i.i.us ]
  %117 = mul nsw i64 %indvars.iv.next.i.i4.us.1, %25
  %118 = add nsw i64 %117, %idxprom.i.i.us.1
  %arrayidx3.i.i.us.1 = getelementptr inbounds float, float* %12, i64 %118
  %119 = load float, float* %arrayidx3.i.i.us.1, align 4, !tbaa !13
  %add6.i.i.us.1 = fadd float %add6.i.i1.us.1, %119
  store float %add6.i.i.us.1, float* %arrayidx.i.i.us.1, align 4, !tbaa !13, !llvm.access.group !17
  %indvars.iv.next.i.i.us.1 = add nuw nsw i64 %indvars.iv.next.i.i4.us.1, 1
  %exitcond.not.i.i.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.1, label %for.end.loopexit.i.i.us.1, label %for.body.i.i.us.1, !llvm.loop !19

for.end.loopexit.i.i.us.1:                        ; preds = %for.body.i.i.us.1
  %add6.i.i.us.1.lcssa = phi float [ %add6.i.i.us.1, %for.body.i.i.us.1 ]
  %div.i.i.us.1 = fdiv float %add6.i.i.us.1.lcssa, %16, !fpmath !12
  store float %div.i.i.us.1, float* %arrayidx.i.i.us.1, align 4, !tbaa !13, !llvm.access.group !17
  %120 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %120, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_mean_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !21
}

; Function Attrs: nounwind
define void @_pocl_kernel_mean_kernel_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 2
  %12 = bitcast i8** %11 to float**
  %13 = load float*, float** %12, align 8
  %14 = load float, float* %13, align 4
  %15 = getelementptr i8*, i8** %0, i64 3
  %16 = bitcast i8** %15 to i32**
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr i8*, i8** %0, i64 4
  %20 = bitcast i8** %19 to i32**
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp18.i.i = icmp sgt i32 %22, 0
  %23 = sext i32 %18 to i64
  %wide.trip.count.i.i = zext i32 %22 to i64
  br i1 %cmp18.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_entry.entry.i.i.preheader

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.preheader:            ; preds = %5
  %div.i.i = fdiv float 0.000000e+00, %14, !fpmath !12
  %broadcast.splatinsert = insertelement <8 x float> undef, float %div.i.i, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert9 = insertelement <8 x float> undef, float %div.i.i, i32 0
  %broadcast.splat10 = shufflevector <8 x float> %broadcast.splatinsert9, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert11 = insertelement <8 x float> undef, float %div.i.i, i32 0
  %broadcast.splat12 = shufflevector <8 x float> %broadcast.splatinsert11, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <8 x float> undef, float %div.i.i, i32 0
  %broadcast.splat14 = shufflevector <8 x float> %broadcast.splatinsert13, <8 x float> undef, <8 x i32> zeroinitializer
  %24 = shl i64 %2, 40
  %25 = ashr exact i64 %24, 32
  %26 = getelementptr inbounds float, float* %7, i64 %25
  %27 = bitcast float* %26 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %27, align 4, !tbaa !13, !llvm.access.group !17
  %28 = getelementptr inbounds float, float* %26, i64 8
  %29 = bitcast float* %28 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %29, align 4, !tbaa !13, !llvm.access.group !17
  %30 = getelementptr inbounds float, float* %26, i64 16
  %31 = bitcast float* %30 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %31, align 4, !tbaa !13, !llvm.access.group !17
  %32 = getelementptr inbounds float, float* %26, i64 24
  %33 = bitcast float* %32 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %33, align 4, !tbaa !13, !llvm.access.group !17
  %34 = shl i64 %2, 40
  %35 = ashr exact i64 %34, 32
  %36 = or i64 %35, 32
  %37 = getelementptr inbounds float, float* %7, i64 %36
  %38 = bitcast float* %37 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %38, align 4, !tbaa !13, !llvm.access.group !17
  %39 = getelementptr inbounds float, float* %37, i64 8
  %40 = bitcast float* %39 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %40, align 4, !tbaa !13, !llvm.access.group !17
  %41 = getelementptr inbounds float, float* %37, i64 16
  %42 = bitcast float* %41 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %42, align 4, !tbaa !13, !llvm.access.group !17
  %43 = getelementptr inbounds float, float* %37, i64 24
  %44 = bitcast float* %43 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %44, align 4, !tbaa !13, !llvm.access.group !17
  %45 = shl i64 %2, 40
  %46 = ashr exact i64 %45, 32
  %47 = or i64 %46, 64
  %48 = getelementptr inbounds float, float* %7, i64 %47
  %49 = bitcast float* %48 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %49, align 4, !tbaa !13, !llvm.access.group !17
  %50 = getelementptr inbounds float, float* %48, i64 8
  %51 = bitcast float* %50 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %51, align 4, !tbaa !13, !llvm.access.group !17
  %52 = getelementptr inbounds float, float* %48, i64 16
  %53 = bitcast float* %52 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %53, align 4, !tbaa !13, !llvm.access.group !17
  %54 = getelementptr inbounds float, float* %48, i64 24
  %55 = bitcast float* %54 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %55, align 4, !tbaa !13, !llvm.access.group !17
  %56 = shl i64 %2, 40
  %57 = ashr exact i64 %56, 32
  %58 = or i64 %57, 96
  %59 = getelementptr inbounds float, float* %7, i64 %58
  %60 = bitcast float* %59 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %60, align 4, !tbaa !13, !llvm.access.group !17
  %61 = getelementptr inbounds float, float* %59, i64 8
  %62 = bitcast float* %61 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %62, align 4, !tbaa !13, !llvm.access.group !17
  %63 = getelementptr inbounds float, float* %59, i64 16
  %64 = bitcast float* %63 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %64, align 4, !tbaa !13, !llvm.access.group !17
  %65 = getelementptr inbounds float, float* %59, i64 24
  %66 = bitcast float* %65 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %66, align 4, !tbaa !13, !llvm.access.group !17
  %67 = shl i64 %2, 40
  %68 = ashr exact i64 %67, 32
  %69 = or i64 %68, 128
  %70 = getelementptr inbounds float, float* %7, i64 %69
  %71 = bitcast float* %70 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %71, align 4, !tbaa !13, !llvm.access.group !17
  %72 = getelementptr inbounds float, float* %70, i64 8
  %73 = bitcast float* %72 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %73, align 4, !tbaa !13, !llvm.access.group !17
  %74 = getelementptr inbounds float, float* %70, i64 16
  %75 = bitcast float* %74 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %75, align 4, !tbaa !13, !llvm.access.group !17
  %76 = getelementptr inbounds float, float* %70, i64 24
  %77 = bitcast float* %76 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %77, align 4, !tbaa !13, !llvm.access.group !17
  %78 = shl i64 %2, 40
  %79 = ashr exact i64 %78, 32
  %80 = or i64 %79, 160
  %81 = getelementptr inbounds float, float* %7, i64 %80
  %82 = bitcast float* %81 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %82, align 4, !tbaa !13, !llvm.access.group !17
  %83 = getelementptr inbounds float, float* %81, i64 8
  %84 = bitcast float* %83 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %84, align 4, !tbaa !13, !llvm.access.group !17
  %85 = getelementptr inbounds float, float* %81, i64 16
  %86 = bitcast float* %85 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %86, align 4, !tbaa !13, !llvm.access.group !17
  %87 = getelementptr inbounds float, float* %81, i64 24
  %88 = bitcast float* %87 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %88, align 4, !tbaa !13, !llvm.access.group !17
  %89 = shl i64 %2, 40
  %90 = ashr exact i64 %89, 32
  %91 = or i64 %90, 192
  %92 = getelementptr inbounds float, float* %7, i64 %91
  %93 = bitcast float* %92 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %93, align 4, !tbaa !13, !llvm.access.group !17
  %94 = getelementptr inbounds float, float* %92, i64 8
  %95 = bitcast float* %94 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %95, align 4, !tbaa !13, !llvm.access.group !17
  %96 = getelementptr inbounds float, float* %92, i64 16
  %97 = bitcast float* %96 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %97, align 4, !tbaa !13, !llvm.access.group !17
  %98 = getelementptr inbounds float, float* %92, i64 24
  %99 = bitcast float* %98 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %99, align 4, !tbaa !13, !llvm.access.group !17
  %100 = shl i64 %2, 40
  %101 = ashr exact i64 %100, 32
  %102 = or i64 %101, 224
  %103 = getelementptr inbounds float, float* %7, i64 %102
  %104 = bitcast float* %103 to <8 x float>*
  store <8 x float> %broadcast.splat, <8 x float>* %104, align 4, !tbaa !13, !llvm.access.group !17
  %105 = getelementptr inbounds float, float* %103, i64 8
  %106 = bitcast float* %105 to <8 x float>*
  store <8 x float> %broadcast.splat10, <8 x float>* %106, align 4, !tbaa !13, !llvm.access.group !17
  %107 = getelementptr inbounds float, float* %103, i64 16
  %108 = bitcast float* %107 to <8 x float>*
  store <8 x float> %broadcast.splat12, <8 x float>* %108, align 4, !tbaa !13, !llvm.access.group !17
  %109 = getelementptr inbounds float, float* %103, i64 24
  %110 = bitcast float* %109 to <8 x float>*
  store <8 x float> %broadcast.splat14, <8 x float>* %110, align 4, !tbaa !13, !llvm.access.group !17
  br label %_pocl_kernel_mean_kernel.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %for.end.loopexit.i.i.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %118, %for.end.loopexit.i.i.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !13, !llvm.access.group !17
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %pregion_for_entry.entry.i.i.us
  %indvars.iv.next.i.i4.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us ]
  %add6.i.i1.us = phi float [ %add6.i.i.us, %for.body.i.i.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us ]
  %111 = mul nsw i64 %indvars.iv.next.i.i4.us, %23
  %112 = add nsw i64 %111, %idxprom.i.i.us
  %arrayidx3.i.i.us = getelementptr inbounds float, float* %10, i64 %112
  %113 = load float, float* %arrayidx3.i.i.us, align 4, !tbaa !13
  %add6.i.i.us = fadd float %add6.i.i1.us, %113
  store float %add6.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !13, !llvm.access.group !17
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i4.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !19

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %add6.i.i.us.lcssa = phi float [ %add6.i.i.us, %for.body.i.i.us ]
  %div.i.i.us = fdiv float %add6.i.i.us.lcssa, %14, !fpmath !12
  store float %div.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !13, !llvm.access.group !17
  %114 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %114, %mul.i.i.i
  %sext.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom.i.i.us.1 = ashr exact i64 %sext.i.i.us.1, 32
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.1, align 4, !tbaa !13, !llvm.access.group !17
  br label %for.body.i.i.us.1

_pocl_kernel_mean_kernel.exit.loopexit:           ; preds = %for.end.loopexit.i.i.us.1
  br label %_pocl_kernel_mean_kernel.exit

_pocl_kernel_mean_kernel.exit:                    ; preds = %_pocl_kernel_mean_kernel.exit.loopexit, %pregion_for_entry.entry.i.i.preheader
  ret void

for.body.i.i.us.1:                                ; preds = %for.body.i.i.us.1, %for.end.loopexit.i.i.us
  %indvars.iv.next.i.i4.us.1 = phi i64 [ %indvars.iv.next.i.i.us.1, %for.body.i.i.us.1 ], [ 0, %for.end.loopexit.i.i.us ]
  %add6.i.i1.us.1 = phi float [ %add6.i.i.us.1, %for.body.i.i.us.1 ], [ 0.000000e+00, %for.end.loopexit.i.i.us ]
  %115 = mul nsw i64 %indvars.iv.next.i.i4.us.1, %23
  %116 = add nsw i64 %115, %idxprom.i.i.us.1
  %arrayidx3.i.i.us.1 = getelementptr inbounds float, float* %10, i64 %116
  %117 = load float, float* %arrayidx3.i.i.us.1, align 4, !tbaa !13
  %add6.i.i.us.1 = fadd float %add6.i.i1.us.1, %117
  store float %add6.i.i.us.1, float* %arrayidx.i.i.us.1, align 4, !tbaa !13, !llvm.access.group !17
  %indvars.iv.next.i.i.us.1 = add nuw nsw i64 %indvars.iv.next.i.i4.us.1, 1
  %exitcond.not.i.i.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.1, label %for.end.loopexit.i.i.us.1, label %for.body.i.i.us.1, !llvm.loop !19

for.end.loopexit.i.i.us.1:                        ; preds = %for.body.i.i.us.1
  %add6.i.i.us.1.lcssa = phi float [ %add6.i.i.us.1, %for.body.i.i.us.1 ]
  %div.i.i.us.1 = fdiv float %add6.i.i.us.1.lcssa, %14, !fpmath !12
  store float %div.i.i.us.1, float* %arrayidx.i.i.us.1, align 4, !tbaa !13, !llvm.access.group !17
  %118 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %118, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_mean_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !21
}

attributes #0 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!opencl.ocl.version = !{!3}
!llvm.ident = !{!4}
!opencl.spir.version = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 1, i32 2}
!4 = !{!"clang version 11.0.0 (git@github.com:llvm/llvm-project.git 91e89f9a5115b0f83b8f026e1ad0e6d1f885fa9b)"}
!5 = !{i32 1, i32 1, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !""}
!10 = !{!"mean", !"data", !"float_n", !"m", !"n"}
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
