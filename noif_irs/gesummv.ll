; ModuleID = './AP/PELOIEMIEMIONJCOFLDNBMJPNEAGNPLPCFBJH/gesummv_kernel/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_gesummv_kernel(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture readonly %2, float* nocapture %3, float* nocapture %4, float %5, float %6, i32 %7, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %8, i64 %9, i64 %10, i64 %11) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %9, 8
  %cmp44.i = icmp sgt i32 %7, 0
  %wide.trip.count.i = zext i32 %7 to i64
  br i1 %cmp44.i, label %pregion_for_entry.entry.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.us.preheader:           ; preds = %12
  br label %pregion_for_entry.entry.i.us

vector.memcheck:                                  ; preds = %12
  %13 = trunc i64 %9 to i32
  %14 = shl i32 %13, 8
  %15 = sext i32 %14 to i64
  %scevgep = getelementptr float, float* %3, i64 %15
  %16 = add nsw i64 %15, 256
  %scevgep9 = getelementptr float, float* %3, i64 %16
  %scevgep11 = getelementptr float, float* %4, i64 %15
  %scevgep13 = getelementptr float, float* %4, i64 %16
  %bound0 = icmp ult float* %scevgep, %scevgep13
  %bound1 = icmp ult float* %scevgep11, %scevgep9
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.preheader, label %vector.ph

pregion_for_entry.entry.i.preheader:              ; preds = %vector.memcheck
  br label %pregion_for_entry.entry.i

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x float> undef, float %6, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert22 = insertelement <8 x float> undef, float %6, i32 0
  %broadcast.splat23 = shufflevector <8 x float> %broadcast.splatinsert22, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert24 = insertelement <8 x float> undef, float %6, i32 0
  %broadcast.splat25 = shufflevector <8 x float> %broadcast.splatinsert24, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert26 = insertelement <8 x float> undef, float %6, i32 0
  %broadcast.splat27 = shufflevector <8 x float> %broadcast.splatinsert26, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert28 = insertelement <8 x float> undef, float %5, i32 0
  %broadcast.splat29 = shufflevector <8 x float> %broadcast.splatinsert28, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert30 = insertelement <8 x float> undef, float %5, i32 0
  %broadcast.splat31 = shufflevector <8 x float> %broadcast.splatinsert30, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert32 = insertelement <8 x float> undef, float %5, i32 0
  %broadcast.splat33 = shufflevector <8 x float> %broadcast.splatinsert32, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert34 = insertelement <8 x float> undef, float %5, i32 0
  %broadcast.splat35 = shufflevector <8 x float> %broadcast.splatinsert34, <8 x float> undef, <8 x i32> zeroinitializer
  %17 = shl i64 %9, 40
  %18 = ashr exact i64 %17, 32
  %19 = getelementptr inbounds float, float* %3, i64 %18
  %20 = bitcast float* %19 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %20, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %21 = getelementptr inbounds float, float* %19, i64 8
  %22 = bitcast float* %21 to <8 x float>*
  %wide.load15 = load <8 x float>, <8 x float>* %22, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %23 = getelementptr inbounds float, float* %19, i64 16
  %24 = bitcast float* %23 to <8 x float>*
  %wide.load16 = load <8 x float>, <8 x float>* %24, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %25 = getelementptr inbounds float, float* %19, i64 24
  %26 = bitcast float* %25 to <8 x float>*
  %wide.load17 = load <8 x float>, <8 x float>* %26, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %27 = getelementptr inbounds float, float* %4, i64 %18
  %28 = bitcast float* %27 to <8 x float>*
  %wide.load18 = load <8 x float>, <8 x float>* %28, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %29 = getelementptr inbounds float, float* %27, i64 8
  %30 = bitcast float* %29 to <8 x float>*
  %wide.load19 = load <8 x float>, <8 x float>* %30, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %31 = getelementptr inbounds float, float* %27, i64 16
  %32 = bitcast float* %31 to <8 x float>*
  %wide.load20 = load <8 x float>, <8 x float>* %32, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %33 = getelementptr inbounds float, float* %27, i64 24
  %34 = bitcast float* %33 to <8 x float>*
  %wide.load21 = load <8 x float>, <8 x float>* %34, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %35 = fmul <8 x float> %wide.load, %broadcast.splat
  %36 = fmul <8 x float> %wide.load15, %broadcast.splat23
  %37 = fmul <8 x float> %wide.load16, %broadcast.splat25
  %38 = fmul <8 x float> %wide.load17, %broadcast.splat27
  %39 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18, <8 x float> %35)
  %40 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19, <8 x float> %36)
  %41 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20, <8 x float> %37)
  %42 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21, <8 x float> %38)
  %43 = bitcast float* %19 to <8 x float>*
  store <8 x float> %39, <8 x float>* %43, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %44 = bitcast float* %21 to <8 x float>*
  store <8 x float> %40, <8 x float>* %44, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %45 = bitcast float* %23 to <8 x float>*
  store <8 x float> %41, <8 x float>* %45, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %46 = bitcast float* %25 to <8 x float>*
  store <8 x float> %42, <8 x float>* %46, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %47 = shl i64 %9, 40
  %48 = ashr exact i64 %47, 32
  %49 = or i64 %48, 32
  %50 = getelementptr inbounds float, float* %3, i64 %49
  %51 = bitcast float* %50 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %51, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %52 = getelementptr inbounds float, float* %50, i64 8
  %53 = bitcast float* %52 to <8 x float>*
  %wide.load15.1 = load <8 x float>, <8 x float>* %53, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %54 = getelementptr inbounds float, float* %50, i64 16
  %55 = bitcast float* %54 to <8 x float>*
  %wide.load16.1 = load <8 x float>, <8 x float>* %55, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %56 = getelementptr inbounds float, float* %50, i64 24
  %57 = bitcast float* %56 to <8 x float>*
  %wide.load17.1 = load <8 x float>, <8 x float>* %57, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %58 = getelementptr inbounds float, float* %4, i64 %49
  %59 = bitcast float* %58 to <8 x float>*
  %wide.load18.1 = load <8 x float>, <8 x float>* %59, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %60 = getelementptr inbounds float, float* %58, i64 8
  %61 = bitcast float* %60 to <8 x float>*
  %wide.load19.1 = load <8 x float>, <8 x float>* %61, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %62 = getelementptr inbounds float, float* %58, i64 16
  %63 = bitcast float* %62 to <8 x float>*
  %wide.load20.1 = load <8 x float>, <8 x float>* %63, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %64 = getelementptr inbounds float, float* %58, i64 24
  %65 = bitcast float* %64 to <8 x float>*
  %wide.load21.1 = load <8 x float>, <8 x float>* %65, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %66 = fmul <8 x float> %wide.load.1, %broadcast.splat
  %67 = fmul <8 x float> %wide.load15.1, %broadcast.splat23
  %68 = fmul <8 x float> %wide.load16.1, %broadcast.splat25
  %69 = fmul <8 x float> %wide.load17.1, %broadcast.splat27
  %70 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.1, <8 x float> %66)
  %71 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.1, <8 x float> %67)
  %72 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.1, <8 x float> %68)
  %73 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.1, <8 x float> %69)
  %74 = bitcast float* %50 to <8 x float>*
  store <8 x float> %70, <8 x float>* %74, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %75 = bitcast float* %52 to <8 x float>*
  store <8 x float> %71, <8 x float>* %75, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %76 = bitcast float* %54 to <8 x float>*
  store <8 x float> %72, <8 x float>* %76, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %77 = bitcast float* %56 to <8 x float>*
  store <8 x float> %73, <8 x float>* %77, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %78 = shl i64 %9, 40
  %79 = ashr exact i64 %78, 32
  %80 = or i64 %79, 64
  %81 = getelementptr inbounds float, float* %3, i64 %80
  %82 = bitcast float* %81 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %82, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %83 = getelementptr inbounds float, float* %81, i64 8
  %84 = bitcast float* %83 to <8 x float>*
  %wide.load15.2 = load <8 x float>, <8 x float>* %84, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %85 = getelementptr inbounds float, float* %81, i64 16
  %86 = bitcast float* %85 to <8 x float>*
  %wide.load16.2 = load <8 x float>, <8 x float>* %86, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %87 = getelementptr inbounds float, float* %81, i64 24
  %88 = bitcast float* %87 to <8 x float>*
  %wide.load17.2 = load <8 x float>, <8 x float>* %88, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %89 = getelementptr inbounds float, float* %4, i64 %80
  %90 = bitcast float* %89 to <8 x float>*
  %wide.load18.2 = load <8 x float>, <8 x float>* %90, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %91 = getelementptr inbounds float, float* %89, i64 8
  %92 = bitcast float* %91 to <8 x float>*
  %wide.load19.2 = load <8 x float>, <8 x float>* %92, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %93 = getelementptr inbounds float, float* %89, i64 16
  %94 = bitcast float* %93 to <8 x float>*
  %wide.load20.2 = load <8 x float>, <8 x float>* %94, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %95 = getelementptr inbounds float, float* %89, i64 24
  %96 = bitcast float* %95 to <8 x float>*
  %wide.load21.2 = load <8 x float>, <8 x float>* %96, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %97 = fmul <8 x float> %wide.load.2, %broadcast.splat
  %98 = fmul <8 x float> %wide.load15.2, %broadcast.splat23
  %99 = fmul <8 x float> %wide.load16.2, %broadcast.splat25
  %100 = fmul <8 x float> %wide.load17.2, %broadcast.splat27
  %101 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.2, <8 x float> %97)
  %102 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.2, <8 x float> %98)
  %103 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.2, <8 x float> %99)
  %104 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.2, <8 x float> %100)
  %105 = bitcast float* %81 to <8 x float>*
  store <8 x float> %101, <8 x float>* %105, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %106 = bitcast float* %83 to <8 x float>*
  store <8 x float> %102, <8 x float>* %106, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %107 = bitcast float* %85 to <8 x float>*
  store <8 x float> %103, <8 x float>* %107, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %108 = bitcast float* %87 to <8 x float>*
  store <8 x float> %104, <8 x float>* %108, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %109 = shl i64 %9, 40
  %110 = ashr exact i64 %109, 32
  %111 = or i64 %110, 96
  %112 = getelementptr inbounds float, float* %3, i64 %111
  %113 = bitcast float* %112 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %113, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %114 = getelementptr inbounds float, float* %112, i64 8
  %115 = bitcast float* %114 to <8 x float>*
  %wide.load15.3 = load <8 x float>, <8 x float>* %115, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %116 = getelementptr inbounds float, float* %112, i64 16
  %117 = bitcast float* %116 to <8 x float>*
  %wide.load16.3 = load <8 x float>, <8 x float>* %117, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %118 = getelementptr inbounds float, float* %112, i64 24
  %119 = bitcast float* %118 to <8 x float>*
  %wide.load17.3 = load <8 x float>, <8 x float>* %119, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %120 = getelementptr inbounds float, float* %4, i64 %111
  %121 = bitcast float* %120 to <8 x float>*
  %wide.load18.3 = load <8 x float>, <8 x float>* %121, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %122 = getelementptr inbounds float, float* %120, i64 8
  %123 = bitcast float* %122 to <8 x float>*
  %wide.load19.3 = load <8 x float>, <8 x float>* %123, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %124 = getelementptr inbounds float, float* %120, i64 16
  %125 = bitcast float* %124 to <8 x float>*
  %wide.load20.3 = load <8 x float>, <8 x float>* %125, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %126 = getelementptr inbounds float, float* %120, i64 24
  %127 = bitcast float* %126 to <8 x float>*
  %wide.load21.3 = load <8 x float>, <8 x float>* %127, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %128 = fmul <8 x float> %wide.load.3, %broadcast.splat
  %129 = fmul <8 x float> %wide.load15.3, %broadcast.splat23
  %130 = fmul <8 x float> %wide.load16.3, %broadcast.splat25
  %131 = fmul <8 x float> %wide.load17.3, %broadcast.splat27
  %132 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.3, <8 x float> %128)
  %133 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.3, <8 x float> %129)
  %134 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.3, <8 x float> %130)
  %135 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.3, <8 x float> %131)
  %136 = bitcast float* %112 to <8 x float>*
  store <8 x float> %132, <8 x float>* %136, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %137 = bitcast float* %114 to <8 x float>*
  store <8 x float> %133, <8 x float>* %137, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %138 = bitcast float* %116 to <8 x float>*
  store <8 x float> %134, <8 x float>* %138, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %139 = bitcast float* %118 to <8 x float>*
  store <8 x float> %135, <8 x float>* %139, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %140 = shl i64 %9, 40
  %141 = ashr exact i64 %140, 32
  %142 = or i64 %141, 128
  %143 = getelementptr inbounds float, float* %3, i64 %142
  %144 = bitcast float* %143 to <8 x float>*
  %wide.load.4 = load <8 x float>, <8 x float>* %144, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %145 = getelementptr inbounds float, float* %143, i64 8
  %146 = bitcast float* %145 to <8 x float>*
  %wide.load15.4 = load <8 x float>, <8 x float>* %146, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %147 = getelementptr inbounds float, float* %143, i64 16
  %148 = bitcast float* %147 to <8 x float>*
  %wide.load16.4 = load <8 x float>, <8 x float>* %148, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %149 = getelementptr inbounds float, float* %143, i64 24
  %150 = bitcast float* %149 to <8 x float>*
  %wide.load17.4 = load <8 x float>, <8 x float>* %150, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %151 = getelementptr inbounds float, float* %4, i64 %142
  %152 = bitcast float* %151 to <8 x float>*
  %wide.load18.4 = load <8 x float>, <8 x float>* %152, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %153 = getelementptr inbounds float, float* %151, i64 8
  %154 = bitcast float* %153 to <8 x float>*
  %wide.load19.4 = load <8 x float>, <8 x float>* %154, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %155 = getelementptr inbounds float, float* %151, i64 16
  %156 = bitcast float* %155 to <8 x float>*
  %wide.load20.4 = load <8 x float>, <8 x float>* %156, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %157 = getelementptr inbounds float, float* %151, i64 24
  %158 = bitcast float* %157 to <8 x float>*
  %wide.load21.4 = load <8 x float>, <8 x float>* %158, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %159 = fmul <8 x float> %wide.load.4, %broadcast.splat
  %160 = fmul <8 x float> %wide.load15.4, %broadcast.splat23
  %161 = fmul <8 x float> %wide.load16.4, %broadcast.splat25
  %162 = fmul <8 x float> %wide.load17.4, %broadcast.splat27
  %163 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.4, <8 x float> %159)
  %164 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.4, <8 x float> %160)
  %165 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.4, <8 x float> %161)
  %166 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.4, <8 x float> %162)
  %167 = bitcast float* %143 to <8 x float>*
  store <8 x float> %163, <8 x float>* %167, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %168 = bitcast float* %145 to <8 x float>*
  store <8 x float> %164, <8 x float>* %168, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %169 = bitcast float* %147 to <8 x float>*
  store <8 x float> %165, <8 x float>* %169, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %170 = bitcast float* %149 to <8 x float>*
  store <8 x float> %166, <8 x float>* %170, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %171 = shl i64 %9, 40
  %172 = ashr exact i64 %171, 32
  %173 = or i64 %172, 160
  %174 = getelementptr inbounds float, float* %3, i64 %173
  %175 = bitcast float* %174 to <8 x float>*
  %wide.load.5 = load <8 x float>, <8 x float>* %175, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %176 = getelementptr inbounds float, float* %174, i64 8
  %177 = bitcast float* %176 to <8 x float>*
  %wide.load15.5 = load <8 x float>, <8 x float>* %177, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %178 = getelementptr inbounds float, float* %174, i64 16
  %179 = bitcast float* %178 to <8 x float>*
  %wide.load16.5 = load <8 x float>, <8 x float>* %179, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %180 = getelementptr inbounds float, float* %174, i64 24
  %181 = bitcast float* %180 to <8 x float>*
  %wide.load17.5 = load <8 x float>, <8 x float>* %181, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %182 = getelementptr inbounds float, float* %4, i64 %173
  %183 = bitcast float* %182 to <8 x float>*
  %wide.load18.5 = load <8 x float>, <8 x float>* %183, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %184 = getelementptr inbounds float, float* %182, i64 8
  %185 = bitcast float* %184 to <8 x float>*
  %wide.load19.5 = load <8 x float>, <8 x float>* %185, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %186 = getelementptr inbounds float, float* %182, i64 16
  %187 = bitcast float* %186 to <8 x float>*
  %wide.load20.5 = load <8 x float>, <8 x float>* %187, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %188 = getelementptr inbounds float, float* %182, i64 24
  %189 = bitcast float* %188 to <8 x float>*
  %wide.load21.5 = load <8 x float>, <8 x float>* %189, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %190 = fmul <8 x float> %wide.load.5, %broadcast.splat
  %191 = fmul <8 x float> %wide.load15.5, %broadcast.splat23
  %192 = fmul <8 x float> %wide.load16.5, %broadcast.splat25
  %193 = fmul <8 x float> %wide.load17.5, %broadcast.splat27
  %194 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.5, <8 x float> %190)
  %195 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.5, <8 x float> %191)
  %196 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.5, <8 x float> %192)
  %197 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.5, <8 x float> %193)
  %198 = bitcast float* %174 to <8 x float>*
  store <8 x float> %194, <8 x float>* %198, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %199 = bitcast float* %176 to <8 x float>*
  store <8 x float> %195, <8 x float>* %199, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %200 = bitcast float* %178 to <8 x float>*
  store <8 x float> %196, <8 x float>* %200, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %201 = bitcast float* %180 to <8 x float>*
  store <8 x float> %197, <8 x float>* %201, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %202 = shl i64 %9, 40
  %203 = ashr exact i64 %202, 32
  %204 = or i64 %203, 192
  %205 = getelementptr inbounds float, float* %3, i64 %204
  %206 = bitcast float* %205 to <8 x float>*
  %wide.load.6 = load <8 x float>, <8 x float>* %206, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %207 = getelementptr inbounds float, float* %205, i64 8
  %208 = bitcast float* %207 to <8 x float>*
  %wide.load15.6 = load <8 x float>, <8 x float>* %208, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %209 = getelementptr inbounds float, float* %205, i64 16
  %210 = bitcast float* %209 to <8 x float>*
  %wide.load16.6 = load <8 x float>, <8 x float>* %210, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %211 = getelementptr inbounds float, float* %205, i64 24
  %212 = bitcast float* %211 to <8 x float>*
  %wide.load17.6 = load <8 x float>, <8 x float>* %212, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %213 = getelementptr inbounds float, float* %4, i64 %204
  %214 = bitcast float* %213 to <8 x float>*
  %wide.load18.6 = load <8 x float>, <8 x float>* %214, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %215 = getelementptr inbounds float, float* %213, i64 8
  %216 = bitcast float* %215 to <8 x float>*
  %wide.load19.6 = load <8 x float>, <8 x float>* %216, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %217 = getelementptr inbounds float, float* %213, i64 16
  %218 = bitcast float* %217 to <8 x float>*
  %wide.load20.6 = load <8 x float>, <8 x float>* %218, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %219 = getelementptr inbounds float, float* %213, i64 24
  %220 = bitcast float* %219 to <8 x float>*
  %wide.load21.6 = load <8 x float>, <8 x float>* %220, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %221 = fmul <8 x float> %wide.load.6, %broadcast.splat
  %222 = fmul <8 x float> %wide.load15.6, %broadcast.splat23
  %223 = fmul <8 x float> %wide.load16.6, %broadcast.splat25
  %224 = fmul <8 x float> %wide.load17.6, %broadcast.splat27
  %225 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.6, <8 x float> %221)
  %226 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.6, <8 x float> %222)
  %227 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.6, <8 x float> %223)
  %228 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.6, <8 x float> %224)
  %229 = bitcast float* %205 to <8 x float>*
  store <8 x float> %225, <8 x float>* %229, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %230 = bitcast float* %207 to <8 x float>*
  store <8 x float> %226, <8 x float>* %230, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %231 = bitcast float* %209 to <8 x float>*
  store <8 x float> %227, <8 x float>* %231, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %232 = bitcast float* %211 to <8 x float>*
  store <8 x float> %228, <8 x float>* %232, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %233 = shl i64 %9, 40
  %234 = ashr exact i64 %233, 32
  %235 = or i64 %234, 224
  %236 = getelementptr inbounds float, float* %3, i64 %235
  %237 = bitcast float* %236 to <8 x float>*
  %wide.load.7 = load <8 x float>, <8 x float>* %237, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %238 = getelementptr inbounds float, float* %236, i64 8
  %239 = bitcast float* %238 to <8 x float>*
  %wide.load15.7 = load <8 x float>, <8 x float>* %239, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %240 = getelementptr inbounds float, float* %236, i64 16
  %241 = bitcast float* %240 to <8 x float>*
  %wide.load16.7 = load <8 x float>, <8 x float>* %241, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %242 = getelementptr inbounds float, float* %236, i64 24
  %243 = bitcast float* %242 to <8 x float>*
  %wide.load17.7 = load <8 x float>, <8 x float>* %243, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %244 = getelementptr inbounds float, float* %4, i64 %235
  %245 = bitcast float* %244 to <8 x float>*
  %wide.load18.7 = load <8 x float>, <8 x float>* %245, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %246 = getelementptr inbounds float, float* %244, i64 8
  %247 = bitcast float* %246 to <8 x float>*
  %wide.load19.7 = load <8 x float>, <8 x float>* %247, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %248 = getelementptr inbounds float, float* %244, i64 16
  %249 = bitcast float* %248 to <8 x float>*
  %wide.load20.7 = load <8 x float>, <8 x float>* %249, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %250 = getelementptr inbounds float, float* %244, i64 24
  %251 = bitcast float* %250 to <8 x float>*
  %wide.load21.7 = load <8 x float>, <8 x float>* %251, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %252 = fmul <8 x float> %wide.load.7, %broadcast.splat
  %253 = fmul <8 x float> %wide.load15.7, %broadcast.splat23
  %254 = fmul <8 x float> %wide.load16.7, %broadcast.splat25
  %255 = fmul <8 x float> %wide.load17.7, %broadcast.splat27
  %256 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.7, <8 x float> %252)
  %257 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.7, <8 x float> %253)
  %258 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.7, <8 x float> %254)
  %259 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.7, <8 x float> %255)
  %260 = bitcast float* %236 to <8 x float>*
  store <8 x float> %256, <8 x float>* %260, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %261 = bitcast float* %238 to <8 x float>*
  store <8 x float> %257, <8 x float>* %261, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %262 = bitcast float* %240 to <8 x float>*
  store <8 x float> %258, <8 x float>* %262, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %263 = bitcast float* %242 to <8 x float>*
  store <8 x float> %259, <8 x float>* %263, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  br label %gesummv_kernel.exit

pregion_for_entry.entry.i.us:                     ; preds = %for.end.loopexit.i.us, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %276, %for.end.loopexit.i.us ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %mul.i.us = mul nsw i32 %conv.i.us, %7
  %sext43.i.us = shl i64 %add1.i.i.us, 32
  %idxprom5.i.us = ashr exact i64 %sext43.i.us, 32
  %arrayidx6.i.us = getelementptr inbounds float, float* %4, i64 %idxprom5.i.us
  %arrayidx15.i.us = getelementptr inbounds float, float* %3, i64 %idxprom5.i.us
  %264 = sext i32 %mul.i.us to i64
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %pregion_for_entry.entry.i.us
  %indvars.iv.next.i2.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %pregion_for_entry.entry.i.us ]
  %265 = add nsw i64 %indvars.iv.next.i2.us, %264
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %265
  %266 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %arrayidx3.i.us = getelementptr inbounds float, float* %2, i64 %indvars.iv.next.i2.us
  %267 = load float, float* %arrayidx3.i.us, align 4, !tbaa !12
  %268 = load float, float* %arrayidx6.i.us, align 4, !tbaa !12
  %269 = tail call float @llvm.fmuladd.f32(float %266, float %267, float %268) #2
  store float %269, float* %arrayidx6.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us = getelementptr inbounds float, float* %1, i64 %265
  %270 = load float, float* %arrayidx10.i.us, align 4, !tbaa !12
  %271 = load float, float* %arrayidx3.i.us, align 4, !tbaa !12
  %272 = load float, float* %arrayidx15.i.us, align 4, !tbaa !12
  %273 = tail call float @llvm.fmuladd.f32(float %270, float %271, float %272) #2
  store float %273, float* %arrayidx15.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i2.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %for.end.loopexit.i.us, label %for.body.i.us, !llvm.loop !23

for.end.loopexit.i.us:                            ; preds = %for.body.i.us
  %.lcssa = phi float [ %273, %for.body.i.us ]
  %274 = load float, float* %arrayidx6.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %mul21.i.us = fmul float %.lcssa, %6
  %275 = tail call float @llvm.fmuladd.f32(float %5, float %274, float %mul21.i.us) #2
  store float %275, float* %arrayidx15.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %276 = add nuw nsw i64 %_local_id_x.0.us, 1
  %exitcond.not = icmp eq i64 %276, 256
  br i1 %exitcond.not, label %gesummv_kernel.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !25

pregion_for_entry.entry.i:                        ; preds = %pregion_for_entry.entry.i, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ %288, %pregion_for_entry.entry.i ], [ 0, %pregion_for_entry.entry.i.preheader ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %.pre.i = shl i64 %add1.i.i, 32
  %.pre47.i = ashr exact i64 %.pre.i, 32
  %arrayidx20.phi.trans.insert.i = getelementptr inbounds float, float* %3, i64 %.pre47.i
  %.pre1.i13 = load float, float* %arrayidx20.phi.trans.insert.i, align 4, !tbaa !12
  %arrayidx17.i = getelementptr inbounds float, float* %4, i64 %.pre47.i
  %277 = load float, float* %arrayidx17.i, align 4, !tbaa !12, !llvm.access.group !21
  %mul21.i = fmul float %.pre1.i13, %6
  %278 = tail call float @llvm.fmuladd.f32(float %5, float %277, float %mul21.i) #2
  store float %278, float* %arrayidx20.phi.trans.insert.i, align 4, !tbaa !12, !llvm.access.group !21
  %279 = or i64 %_local_id_x.0, 1
  %add1.i.i.1 = add nuw nsw i64 %279, %mul.i.i
  %.pre.i.1 = shl i64 %add1.i.i.1, 32
  %.pre47.i.1 = ashr exact i64 %.pre.i.1, 32
  %arrayidx20.phi.trans.insert.i.1 = getelementptr inbounds float, float* %3, i64 %.pre47.i.1
  %.pre1.i13.1 = load float, float* %arrayidx20.phi.trans.insert.i.1, align 4, !tbaa !12
  %arrayidx17.i.1 = getelementptr inbounds float, float* %4, i64 %.pre47.i.1
  %280 = load float, float* %arrayidx17.i.1, align 4, !tbaa !12, !llvm.access.group !21
  %mul21.i.1 = fmul float %.pre1.i13.1, %6
  %281 = tail call float @llvm.fmuladd.f32(float %5, float %280, float %mul21.i.1) #2
  store float %281, float* %arrayidx20.phi.trans.insert.i.1, align 4, !tbaa !12, !llvm.access.group !21
  %282 = or i64 %_local_id_x.0, 2
  %add1.i.i.2 = add nuw nsw i64 %282, %mul.i.i
  %.pre.i.2 = shl i64 %add1.i.i.2, 32
  %.pre47.i.2 = ashr exact i64 %.pre.i.2, 32
  %arrayidx20.phi.trans.insert.i.2 = getelementptr inbounds float, float* %3, i64 %.pre47.i.2
  %.pre1.i13.2 = load float, float* %arrayidx20.phi.trans.insert.i.2, align 4, !tbaa !12
  %arrayidx17.i.2 = getelementptr inbounds float, float* %4, i64 %.pre47.i.2
  %283 = load float, float* %arrayidx17.i.2, align 4, !tbaa !12, !llvm.access.group !21
  %mul21.i.2 = fmul float %.pre1.i13.2, %6
  %284 = tail call float @llvm.fmuladd.f32(float %5, float %283, float %mul21.i.2) #2
  store float %284, float* %arrayidx20.phi.trans.insert.i.2, align 4, !tbaa !12, !llvm.access.group !21
  %285 = or i64 %_local_id_x.0, 3
  %add1.i.i.3 = add nuw nsw i64 %285, %mul.i.i
  %.pre.i.3 = shl i64 %add1.i.i.3, 32
  %.pre47.i.3 = ashr exact i64 %.pre.i.3, 32
  %arrayidx20.phi.trans.insert.i.3 = getelementptr inbounds float, float* %3, i64 %.pre47.i.3
  %.pre1.i13.3 = load float, float* %arrayidx20.phi.trans.insert.i.3, align 4, !tbaa !12
  %arrayidx17.i.3 = getelementptr inbounds float, float* %4, i64 %.pre47.i.3
  %286 = load float, float* %arrayidx17.i.3, align 4, !tbaa !12, !llvm.access.group !21
  %mul21.i.3 = fmul float %.pre1.i13.3, %6
  %287 = tail call float @llvm.fmuladd.f32(float %5, float %286, float %mul21.i.3) #2
  store float %287, float* %arrayidx20.phi.trans.insert.i.3, align 4, !tbaa !12, !llvm.access.group !21
  %288 = add nuw nsw i64 %_local_id_x.0, 4
  %exitcond5.not.3 = icmp eq i64 %288, 256
  br i1 %exitcond5.not.3, label %gesummv_kernel.exit.loopexit38, label %pregion_for_entry.entry.i, !llvm.loop !27

gesummv_kernel.exit.loopexit:                     ; preds = %for.end.loopexit.i.us
  br label %gesummv_kernel.exit

gesummv_kernel.exit.loopexit38:                   ; preds = %pregion_for_entry.entry.i
  br label %gesummv_kernel.exit

gesummv_kernel.exit:                              ; preds = %gesummv_kernel.exit.loopexit38, %gesummv_kernel.exit.loopexit, %vector.ph
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_gesummv_kernel_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %18 = bitcast i8** %17 to float***
  %19 = load float**, float*** %18, align 8
  %20 = load float*, float** %19, align 8
  %21 = getelementptr i8*, i8** %0, i64 4
  %22 = bitcast i8** %21 to float***
  %23 = load float**, float*** %22, align 8
  %24 = load float*, float** %23, align 8
  %25 = getelementptr i8*, i8** %0, i64 5
  %26 = bitcast i8** %25 to float**
  %27 = load float*, float** %26, align 8
  %28 = load float, float* %27, align 4
  %29 = getelementptr i8*, i8** %0, i64 6
  %30 = bitcast i8** %29 to float**
  %31 = load float*, float** %30, align 8
  %32 = load float, float* %31, align 4
  %33 = getelementptr i8*, i8** %0, i64 7
  %34 = bitcast i8** %33 to i32**
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp44.i.i = icmp sgt i32 %36, 0
  %wide.trip.count.i.i = zext i32 %36 to i64
  br i1 %cmp44.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %5
  %37 = trunc i64 %2 to i32
  %38 = shl i32 %37, 8
  %39 = sext i32 %38 to i64
  %scevgep = getelementptr float, float* %20, i64 %39
  %40 = add nsw i64 %39, 256
  %scevgep9 = getelementptr float, float* %20, i64 %40
  %scevgep11 = getelementptr float, float* %24, i64 %39
  %scevgep13 = getelementptr float, float* %24, i64 %40
  %bound0 = icmp ult float* %scevgep, %scevgep13
  %bound1 = icmp ult float* %scevgep11, %scevgep9
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.i.preheader, label %vector.ph

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck
  br label %pregion_for_entry.entry.i.i

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x float> undef, float %32, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert22 = insertelement <8 x float> undef, float %32, i32 0
  %broadcast.splat23 = shufflevector <8 x float> %broadcast.splatinsert22, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert24 = insertelement <8 x float> undef, float %32, i32 0
  %broadcast.splat25 = shufflevector <8 x float> %broadcast.splatinsert24, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert26 = insertelement <8 x float> undef, float %32, i32 0
  %broadcast.splat27 = shufflevector <8 x float> %broadcast.splatinsert26, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert28 = insertelement <8 x float> undef, float %28, i32 0
  %broadcast.splat29 = shufflevector <8 x float> %broadcast.splatinsert28, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert30 = insertelement <8 x float> undef, float %28, i32 0
  %broadcast.splat31 = shufflevector <8 x float> %broadcast.splatinsert30, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert32 = insertelement <8 x float> undef, float %28, i32 0
  %broadcast.splat33 = shufflevector <8 x float> %broadcast.splatinsert32, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert34 = insertelement <8 x float> undef, float %28, i32 0
  %broadcast.splat35 = shufflevector <8 x float> %broadcast.splatinsert34, <8 x float> undef, <8 x i32> zeroinitializer
  %41 = shl i64 %2, 40
  %42 = ashr exact i64 %41, 32
  %43 = getelementptr inbounds float, float* %20, i64 %42
  %44 = bitcast float* %43 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %44, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %45 = getelementptr inbounds float, float* %43, i64 8
  %46 = bitcast float* %45 to <8 x float>*
  %wide.load15 = load <8 x float>, <8 x float>* %46, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %47 = getelementptr inbounds float, float* %43, i64 16
  %48 = bitcast float* %47 to <8 x float>*
  %wide.load16 = load <8 x float>, <8 x float>* %48, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %49 = getelementptr inbounds float, float* %43, i64 24
  %50 = bitcast float* %49 to <8 x float>*
  %wide.load17 = load <8 x float>, <8 x float>* %50, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %51 = getelementptr inbounds float, float* %24, i64 %42
  %52 = bitcast float* %51 to <8 x float>*
  %wide.load18 = load <8 x float>, <8 x float>* %52, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %53 = getelementptr inbounds float, float* %51, i64 8
  %54 = bitcast float* %53 to <8 x float>*
  %wide.load19 = load <8 x float>, <8 x float>* %54, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %55 = getelementptr inbounds float, float* %51, i64 16
  %56 = bitcast float* %55 to <8 x float>*
  %wide.load20 = load <8 x float>, <8 x float>* %56, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %57 = getelementptr inbounds float, float* %51, i64 24
  %58 = bitcast float* %57 to <8 x float>*
  %wide.load21 = load <8 x float>, <8 x float>* %58, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %59 = fmul <8 x float> %broadcast.splat, %wide.load
  %60 = fmul <8 x float> %broadcast.splat23, %wide.load15
  %61 = fmul <8 x float> %broadcast.splat25, %wide.load16
  %62 = fmul <8 x float> %broadcast.splat27, %wide.load17
  %63 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18, <8 x float> %59)
  %64 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19, <8 x float> %60)
  %65 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20, <8 x float> %61)
  %66 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21, <8 x float> %62)
  %67 = bitcast float* %43 to <8 x float>*
  store <8 x float> %63, <8 x float>* %67, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %68 = bitcast float* %45 to <8 x float>*
  store <8 x float> %64, <8 x float>* %68, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %69 = bitcast float* %47 to <8 x float>*
  store <8 x float> %65, <8 x float>* %69, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %70 = bitcast float* %49 to <8 x float>*
  store <8 x float> %66, <8 x float>* %70, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %71 = shl i64 %2, 40
  %72 = ashr exact i64 %71, 32
  %73 = or i64 %72, 32
  %74 = getelementptr inbounds float, float* %20, i64 %73
  %75 = bitcast float* %74 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %75, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %76 = getelementptr inbounds float, float* %74, i64 8
  %77 = bitcast float* %76 to <8 x float>*
  %wide.load15.1 = load <8 x float>, <8 x float>* %77, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %78 = getelementptr inbounds float, float* %74, i64 16
  %79 = bitcast float* %78 to <8 x float>*
  %wide.load16.1 = load <8 x float>, <8 x float>* %79, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %80 = getelementptr inbounds float, float* %74, i64 24
  %81 = bitcast float* %80 to <8 x float>*
  %wide.load17.1 = load <8 x float>, <8 x float>* %81, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %82 = getelementptr inbounds float, float* %24, i64 %73
  %83 = bitcast float* %82 to <8 x float>*
  %wide.load18.1 = load <8 x float>, <8 x float>* %83, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %84 = getelementptr inbounds float, float* %82, i64 8
  %85 = bitcast float* %84 to <8 x float>*
  %wide.load19.1 = load <8 x float>, <8 x float>* %85, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %86 = getelementptr inbounds float, float* %82, i64 16
  %87 = bitcast float* %86 to <8 x float>*
  %wide.load20.1 = load <8 x float>, <8 x float>* %87, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %88 = getelementptr inbounds float, float* %82, i64 24
  %89 = bitcast float* %88 to <8 x float>*
  %wide.load21.1 = load <8 x float>, <8 x float>* %89, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %90 = fmul <8 x float> %broadcast.splat, %wide.load.1
  %91 = fmul <8 x float> %broadcast.splat23, %wide.load15.1
  %92 = fmul <8 x float> %broadcast.splat25, %wide.load16.1
  %93 = fmul <8 x float> %broadcast.splat27, %wide.load17.1
  %94 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.1, <8 x float> %90)
  %95 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.1, <8 x float> %91)
  %96 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.1, <8 x float> %92)
  %97 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.1, <8 x float> %93)
  %98 = bitcast float* %74 to <8 x float>*
  store <8 x float> %94, <8 x float>* %98, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %99 = bitcast float* %76 to <8 x float>*
  store <8 x float> %95, <8 x float>* %99, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %100 = bitcast float* %78 to <8 x float>*
  store <8 x float> %96, <8 x float>* %100, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %101 = bitcast float* %80 to <8 x float>*
  store <8 x float> %97, <8 x float>* %101, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %102 = shl i64 %2, 40
  %103 = ashr exact i64 %102, 32
  %104 = or i64 %103, 64
  %105 = getelementptr inbounds float, float* %20, i64 %104
  %106 = bitcast float* %105 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %106, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %107 = getelementptr inbounds float, float* %105, i64 8
  %108 = bitcast float* %107 to <8 x float>*
  %wide.load15.2 = load <8 x float>, <8 x float>* %108, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %109 = getelementptr inbounds float, float* %105, i64 16
  %110 = bitcast float* %109 to <8 x float>*
  %wide.load16.2 = load <8 x float>, <8 x float>* %110, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %111 = getelementptr inbounds float, float* %105, i64 24
  %112 = bitcast float* %111 to <8 x float>*
  %wide.load17.2 = load <8 x float>, <8 x float>* %112, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %113 = getelementptr inbounds float, float* %24, i64 %104
  %114 = bitcast float* %113 to <8 x float>*
  %wide.load18.2 = load <8 x float>, <8 x float>* %114, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %115 = getelementptr inbounds float, float* %113, i64 8
  %116 = bitcast float* %115 to <8 x float>*
  %wide.load19.2 = load <8 x float>, <8 x float>* %116, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %117 = getelementptr inbounds float, float* %113, i64 16
  %118 = bitcast float* %117 to <8 x float>*
  %wide.load20.2 = load <8 x float>, <8 x float>* %118, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %119 = getelementptr inbounds float, float* %113, i64 24
  %120 = bitcast float* %119 to <8 x float>*
  %wide.load21.2 = load <8 x float>, <8 x float>* %120, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %121 = fmul <8 x float> %broadcast.splat, %wide.load.2
  %122 = fmul <8 x float> %broadcast.splat23, %wide.load15.2
  %123 = fmul <8 x float> %broadcast.splat25, %wide.load16.2
  %124 = fmul <8 x float> %broadcast.splat27, %wide.load17.2
  %125 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.2, <8 x float> %121)
  %126 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.2, <8 x float> %122)
  %127 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.2, <8 x float> %123)
  %128 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.2, <8 x float> %124)
  %129 = bitcast float* %105 to <8 x float>*
  store <8 x float> %125, <8 x float>* %129, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %130 = bitcast float* %107 to <8 x float>*
  store <8 x float> %126, <8 x float>* %130, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %131 = bitcast float* %109 to <8 x float>*
  store <8 x float> %127, <8 x float>* %131, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %132 = bitcast float* %111 to <8 x float>*
  store <8 x float> %128, <8 x float>* %132, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %133 = shl i64 %2, 40
  %134 = ashr exact i64 %133, 32
  %135 = or i64 %134, 96
  %136 = getelementptr inbounds float, float* %20, i64 %135
  %137 = bitcast float* %136 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %137, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %138 = getelementptr inbounds float, float* %136, i64 8
  %139 = bitcast float* %138 to <8 x float>*
  %wide.load15.3 = load <8 x float>, <8 x float>* %139, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %140 = getelementptr inbounds float, float* %136, i64 16
  %141 = bitcast float* %140 to <8 x float>*
  %wide.load16.3 = load <8 x float>, <8 x float>* %141, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %142 = getelementptr inbounds float, float* %136, i64 24
  %143 = bitcast float* %142 to <8 x float>*
  %wide.load17.3 = load <8 x float>, <8 x float>* %143, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %144 = getelementptr inbounds float, float* %24, i64 %135
  %145 = bitcast float* %144 to <8 x float>*
  %wide.load18.3 = load <8 x float>, <8 x float>* %145, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %146 = getelementptr inbounds float, float* %144, i64 8
  %147 = bitcast float* %146 to <8 x float>*
  %wide.load19.3 = load <8 x float>, <8 x float>* %147, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %148 = getelementptr inbounds float, float* %144, i64 16
  %149 = bitcast float* %148 to <8 x float>*
  %wide.load20.3 = load <8 x float>, <8 x float>* %149, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %150 = getelementptr inbounds float, float* %144, i64 24
  %151 = bitcast float* %150 to <8 x float>*
  %wide.load21.3 = load <8 x float>, <8 x float>* %151, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %152 = fmul <8 x float> %broadcast.splat, %wide.load.3
  %153 = fmul <8 x float> %broadcast.splat23, %wide.load15.3
  %154 = fmul <8 x float> %broadcast.splat25, %wide.load16.3
  %155 = fmul <8 x float> %broadcast.splat27, %wide.load17.3
  %156 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.3, <8 x float> %152)
  %157 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.3, <8 x float> %153)
  %158 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.3, <8 x float> %154)
  %159 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.3, <8 x float> %155)
  %160 = bitcast float* %136 to <8 x float>*
  store <8 x float> %156, <8 x float>* %160, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %161 = bitcast float* %138 to <8 x float>*
  store <8 x float> %157, <8 x float>* %161, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %162 = bitcast float* %140 to <8 x float>*
  store <8 x float> %158, <8 x float>* %162, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %163 = bitcast float* %142 to <8 x float>*
  store <8 x float> %159, <8 x float>* %163, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %164 = shl i64 %2, 40
  %165 = ashr exact i64 %164, 32
  %166 = or i64 %165, 128
  %167 = getelementptr inbounds float, float* %20, i64 %166
  %168 = bitcast float* %167 to <8 x float>*
  %wide.load.4 = load <8 x float>, <8 x float>* %168, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %169 = getelementptr inbounds float, float* %167, i64 8
  %170 = bitcast float* %169 to <8 x float>*
  %wide.load15.4 = load <8 x float>, <8 x float>* %170, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %171 = getelementptr inbounds float, float* %167, i64 16
  %172 = bitcast float* %171 to <8 x float>*
  %wide.load16.4 = load <8 x float>, <8 x float>* %172, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %173 = getelementptr inbounds float, float* %167, i64 24
  %174 = bitcast float* %173 to <8 x float>*
  %wide.load17.4 = load <8 x float>, <8 x float>* %174, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %175 = getelementptr inbounds float, float* %24, i64 %166
  %176 = bitcast float* %175 to <8 x float>*
  %wide.load18.4 = load <8 x float>, <8 x float>* %176, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %177 = getelementptr inbounds float, float* %175, i64 8
  %178 = bitcast float* %177 to <8 x float>*
  %wide.load19.4 = load <8 x float>, <8 x float>* %178, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %179 = getelementptr inbounds float, float* %175, i64 16
  %180 = bitcast float* %179 to <8 x float>*
  %wide.load20.4 = load <8 x float>, <8 x float>* %180, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %181 = getelementptr inbounds float, float* %175, i64 24
  %182 = bitcast float* %181 to <8 x float>*
  %wide.load21.4 = load <8 x float>, <8 x float>* %182, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %183 = fmul <8 x float> %broadcast.splat, %wide.load.4
  %184 = fmul <8 x float> %broadcast.splat23, %wide.load15.4
  %185 = fmul <8 x float> %broadcast.splat25, %wide.load16.4
  %186 = fmul <8 x float> %broadcast.splat27, %wide.load17.4
  %187 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.4, <8 x float> %183)
  %188 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.4, <8 x float> %184)
  %189 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.4, <8 x float> %185)
  %190 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.4, <8 x float> %186)
  %191 = bitcast float* %167 to <8 x float>*
  store <8 x float> %187, <8 x float>* %191, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %192 = bitcast float* %169 to <8 x float>*
  store <8 x float> %188, <8 x float>* %192, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %193 = bitcast float* %171 to <8 x float>*
  store <8 x float> %189, <8 x float>* %193, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %194 = bitcast float* %173 to <8 x float>*
  store <8 x float> %190, <8 x float>* %194, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %195 = shl i64 %2, 40
  %196 = ashr exact i64 %195, 32
  %197 = or i64 %196, 160
  %198 = getelementptr inbounds float, float* %20, i64 %197
  %199 = bitcast float* %198 to <8 x float>*
  %wide.load.5 = load <8 x float>, <8 x float>* %199, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %200 = getelementptr inbounds float, float* %198, i64 8
  %201 = bitcast float* %200 to <8 x float>*
  %wide.load15.5 = load <8 x float>, <8 x float>* %201, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %202 = getelementptr inbounds float, float* %198, i64 16
  %203 = bitcast float* %202 to <8 x float>*
  %wide.load16.5 = load <8 x float>, <8 x float>* %203, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %204 = getelementptr inbounds float, float* %198, i64 24
  %205 = bitcast float* %204 to <8 x float>*
  %wide.load17.5 = load <8 x float>, <8 x float>* %205, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %206 = getelementptr inbounds float, float* %24, i64 %197
  %207 = bitcast float* %206 to <8 x float>*
  %wide.load18.5 = load <8 x float>, <8 x float>* %207, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %208 = getelementptr inbounds float, float* %206, i64 8
  %209 = bitcast float* %208 to <8 x float>*
  %wide.load19.5 = load <8 x float>, <8 x float>* %209, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %210 = getelementptr inbounds float, float* %206, i64 16
  %211 = bitcast float* %210 to <8 x float>*
  %wide.load20.5 = load <8 x float>, <8 x float>* %211, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %212 = getelementptr inbounds float, float* %206, i64 24
  %213 = bitcast float* %212 to <8 x float>*
  %wide.load21.5 = load <8 x float>, <8 x float>* %213, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %214 = fmul <8 x float> %broadcast.splat, %wide.load.5
  %215 = fmul <8 x float> %broadcast.splat23, %wide.load15.5
  %216 = fmul <8 x float> %broadcast.splat25, %wide.load16.5
  %217 = fmul <8 x float> %broadcast.splat27, %wide.load17.5
  %218 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.5, <8 x float> %214)
  %219 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.5, <8 x float> %215)
  %220 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.5, <8 x float> %216)
  %221 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.5, <8 x float> %217)
  %222 = bitcast float* %198 to <8 x float>*
  store <8 x float> %218, <8 x float>* %222, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %223 = bitcast float* %200 to <8 x float>*
  store <8 x float> %219, <8 x float>* %223, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %224 = bitcast float* %202 to <8 x float>*
  store <8 x float> %220, <8 x float>* %224, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %225 = bitcast float* %204 to <8 x float>*
  store <8 x float> %221, <8 x float>* %225, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %226 = shl i64 %2, 40
  %227 = ashr exact i64 %226, 32
  %228 = or i64 %227, 192
  %229 = getelementptr inbounds float, float* %20, i64 %228
  %230 = bitcast float* %229 to <8 x float>*
  %wide.load.6 = load <8 x float>, <8 x float>* %230, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %231 = getelementptr inbounds float, float* %229, i64 8
  %232 = bitcast float* %231 to <8 x float>*
  %wide.load15.6 = load <8 x float>, <8 x float>* %232, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %233 = getelementptr inbounds float, float* %229, i64 16
  %234 = bitcast float* %233 to <8 x float>*
  %wide.load16.6 = load <8 x float>, <8 x float>* %234, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %235 = getelementptr inbounds float, float* %229, i64 24
  %236 = bitcast float* %235 to <8 x float>*
  %wide.load17.6 = load <8 x float>, <8 x float>* %236, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %237 = getelementptr inbounds float, float* %24, i64 %228
  %238 = bitcast float* %237 to <8 x float>*
  %wide.load18.6 = load <8 x float>, <8 x float>* %238, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %239 = getelementptr inbounds float, float* %237, i64 8
  %240 = bitcast float* %239 to <8 x float>*
  %wide.load19.6 = load <8 x float>, <8 x float>* %240, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %241 = getelementptr inbounds float, float* %237, i64 16
  %242 = bitcast float* %241 to <8 x float>*
  %wide.load20.6 = load <8 x float>, <8 x float>* %242, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %243 = getelementptr inbounds float, float* %237, i64 24
  %244 = bitcast float* %243 to <8 x float>*
  %wide.load21.6 = load <8 x float>, <8 x float>* %244, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %245 = fmul <8 x float> %broadcast.splat, %wide.load.6
  %246 = fmul <8 x float> %broadcast.splat23, %wide.load15.6
  %247 = fmul <8 x float> %broadcast.splat25, %wide.load16.6
  %248 = fmul <8 x float> %broadcast.splat27, %wide.load17.6
  %249 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.6, <8 x float> %245)
  %250 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.6, <8 x float> %246)
  %251 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.6, <8 x float> %247)
  %252 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.6, <8 x float> %248)
  %253 = bitcast float* %229 to <8 x float>*
  store <8 x float> %249, <8 x float>* %253, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %254 = bitcast float* %231 to <8 x float>*
  store <8 x float> %250, <8 x float>* %254, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %255 = bitcast float* %233 to <8 x float>*
  store <8 x float> %251, <8 x float>* %255, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %256 = bitcast float* %235 to <8 x float>*
  store <8 x float> %252, <8 x float>* %256, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %257 = shl i64 %2, 40
  %258 = ashr exact i64 %257, 32
  %259 = or i64 %258, 224
  %260 = getelementptr inbounds float, float* %20, i64 %259
  %261 = bitcast float* %260 to <8 x float>*
  %wide.load.7 = load <8 x float>, <8 x float>* %261, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %262 = getelementptr inbounds float, float* %260, i64 8
  %263 = bitcast float* %262 to <8 x float>*
  %wide.load15.7 = load <8 x float>, <8 x float>* %263, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %264 = getelementptr inbounds float, float* %260, i64 16
  %265 = bitcast float* %264 to <8 x float>*
  %wide.load16.7 = load <8 x float>, <8 x float>* %265, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %266 = getelementptr inbounds float, float* %260, i64 24
  %267 = bitcast float* %266 to <8 x float>*
  %wide.load17.7 = load <8 x float>, <8 x float>* %267, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %268 = getelementptr inbounds float, float* %24, i64 %259
  %269 = bitcast float* %268 to <8 x float>*
  %wide.load18.7 = load <8 x float>, <8 x float>* %269, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %270 = getelementptr inbounds float, float* %268, i64 8
  %271 = bitcast float* %270 to <8 x float>*
  %wide.load19.7 = load <8 x float>, <8 x float>* %271, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %272 = getelementptr inbounds float, float* %268, i64 16
  %273 = bitcast float* %272 to <8 x float>*
  %wide.load20.7 = load <8 x float>, <8 x float>* %273, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %274 = getelementptr inbounds float, float* %268, i64 24
  %275 = bitcast float* %274 to <8 x float>*
  %wide.load21.7 = load <8 x float>, <8 x float>* %275, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %276 = fmul <8 x float> %broadcast.splat, %wide.load.7
  %277 = fmul <8 x float> %broadcast.splat23, %wide.load15.7
  %278 = fmul <8 x float> %broadcast.splat25, %wide.load16.7
  %279 = fmul <8 x float> %broadcast.splat27, %wide.load17.7
  %280 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.7, <8 x float> %276)
  %281 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.7, <8 x float> %277)
  %282 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.7, <8 x float> %278)
  %283 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.7, <8 x float> %279)
  %284 = bitcast float* %260 to <8 x float>*
  store <8 x float> %280, <8 x float>* %284, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %285 = bitcast float* %262 to <8 x float>*
  store <8 x float> %281, <8 x float>* %285, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %286 = bitcast float* %264 to <8 x float>*
  store <8 x float> %282, <8 x float>* %286, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %287 = bitcast float* %266 to <8 x float>*
  store <8 x float> %283, <8 x float>* %287, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  br label %_pocl_kernel_gesummv_kernel.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %for.end.loopexit.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %300, %for.end.loopexit.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %mul.i.i.us = mul nsw i32 %36, %conv.i.i.us
  %sext43.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom5.i.i.us = ashr exact i64 %sext43.i.i.us, 32
  %arrayidx6.i.i.us = getelementptr inbounds float, float* %24, i64 %idxprom5.i.i.us
  %arrayidx15.i.i.us = getelementptr inbounds float, float* %20, i64 %idxprom5.i.i.us
  %288 = sext i32 %mul.i.i.us to i64
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %pregion_for_entry.entry.i.i.us
  %indvars.iv.next.i.i2.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us ]
  %289 = add nsw i64 %indvars.iv.next.i.i2.us, %288
  %arrayidx.i.i.us = getelementptr inbounds float, float* %8, i64 %289
  %290 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %arrayidx3.i.i.us = getelementptr inbounds float, float* %16, i64 %indvars.iv.next.i.i2.us
  %291 = load float, float* %arrayidx3.i.i.us, align 4, !tbaa !12
  %292 = load float, float* %arrayidx6.i.i.us, align 4, !tbaa !12
  %293 = tail call float @llvm.fmuladd.f32(float %290, float %291, float %292) #2
  store float %293, float* %arrayidx6.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us = getelementptr inbounds float, float* %12, i64 %289
  %294 = load float, float* %arrayidx10.i.i.us, align 4, !tbaa !12
  %295 = load float, float* %arrayidx3.i.i.us, align 4, !tbaa !12
  %296 = load float, float* %arrayidx15.i.i.us, align 4, !tbaa !12
  %297 = tail call float @llvm.fmuladd.f32(float %294, float %295, float %296) #2
  store float %297, float* %arrayidx15.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i2.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !23

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %.lcssa = phi float [ %297, %for.body.i.i.us ]
  %298 = load float, float* %arrayidx6.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %mul21.i.i.us = fmul float %32, %.lcssa
  %299 = tail call float @llvm.fmuladd.f32(float %28, float %298, float %mul21.i.i.us) #2
  store float %299, float* %arrayidx15.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %300 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %300, 256
  br i1 %exitcond.not, label %_pocl_kernel_gesummv_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !25

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %312, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %.pre.i.i = shl i64 %add1.i.i.i, 32
  %.pre47.i.i = ashr exact i64 %.pre.i.i, 32
  %arrayidx20.phi.trans.insert.i.i = getelementptr inbounds float, float* %20, i64 %.pre47.i.i
  %.pre1.i.i13 = load float, float* %arrayidx20.phi.trans.insert.i.i, align 4, !tbaa !12
  %arrayidx17.i.i = getelementptr inbounds float, float* %24, i64 %.pre47.i.i
  %301 = load float, float* %arrayidx17.i.i, align 4, !tbaa !12, !llvm.access.group !21
  %mul21.i.i = fmul float %32, %.pre1.i.i13
  %302 = tail call float @llvm.fmuladd.f32(float %28, float %301, float %mul21.i.i) #2
  store float %302, float* %arrayidx20.phi.trans.insert.i.i, align 4, !tbaa !12, !llvm.access.group !21
  %303 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %303, %mul.i.i.i
  %.pre.i.i.1 = shl i64 %add1.i.i.i.1, 32
  %.pre47.i.i.1 = ashr exact i64 %.pre.i.i.1, 32
  %arrayidx20.phi.trans.insert.i.i.1 = getelementptr inbounds float, float* %20, i64 %.pre47.i.i.1
  %.pre1.i.i13.1 = load float, float* %arrayidx20.phi.trans.insert.i.i.1, align 4, !tbaa !12
  %arrayidx17.i.i.1 = getelementptr inbounds float, float* %24, i64 %.pre47.i.i.1
  %304 = load float, float* %arrayidx17.i.i.1, align 4, !tbaa !12, !llvm.access.group !21
  %mul21.i.i.1 = fmul float %32, %.pre1.i.i13.1
  %305 = tail call float @llvm.fmuladd.f32(float %28, float %304, float %mul21.i.i.1) #2
  store float %305, float* %arrayidx20.phi.trans.insert.i.i.1, align 4, !tbaa !12, !llvm.access.group !21
  %306 = or i64 %_local_id_x.i.0, 2
  %add1.i.i.i.2 = add nuw nsw i64 %306, %mul.i.i.i
  %.pre.i.i.2 = shl i64 %add1.i.i.i.2, 32
  %.pre47.i.i.2 = ashr exact i64 %.pre.i.i.2, 32
  %arrayidx20.phi.trans.insert.i.i.2 = getelementptr inbounds float, float* %20, i64 %.pre47.i.i.2
  %.pre1.i.i13.2 = load float, float* %arrayidx20.phi.trans.insert.i.i.2, align 4, !tbaa !12
  %arrayidx17.i.i.2 = getelementptr inbounds float, float* %24, i64 %.pre47.i.i.2
  %307 = load float, float* %arrayidx17.i.i.2, align 4, !tbaa !12, !llvm.access.group !21
  %mul21.i.i.2 = fmul float %32, %.pre1.i.i13.2
  %308 = tail call float @llvm.fmuladd.f32(float %28, float %307, float %mul21.i.i.2) #2
  store float %308, float* %arrayidx20.phi.trans.insert.i.i.2, align 4, !tbaa !12, !llvm.access.group !21
  %309 = or i64 %_local_id_x.i.0, 3
  %add1.i.i.i.3 = add nuw nsw i64 %309, %mul.i.i.i
  %.pre.i.i.3 = shl i64 %add1.i.i.i.3, 32
  %.pre47.i.i.3 = ashr exact i64 %.pre.i.i.3, 32
  %arrayidx20.phi.trans.insert.i.i.3 = getelementptr inbounds float, float* %20, i64 %.pre47.i.i.3
  %.pre1.i.i13.3 = load float, float* %arrayidx20.phi.trans.insert.i.i.3, align 4, !tbaa !12
  %arrayidx17.i.i.3 = getelementptr inbounds float, float* %24, i64 %.pre47.i.i.3
  %310 = load float, float* %arrayidx17.i.i.3, align 4, !tbaa !12, !llvm.access.group !21
  %mul21.i.i.3 = fmul float %32, %.pre1.i.i13.3
  %311 = tail call float @llvm.fmuladd.f32(float %28, float %310, float %mul21.i.i.3) #2
  store float %311, float* %arrayidx20.phi.trans.insert.i.i.3, align 4, !tbaa !12, !llvm.access.group !21
  %312 = add nuw nsw i64 %_local_id_x.i.0, 4
  %exitcond5.not.3 = icmp eq i64 %312, 256
  br i1 %exitcond5.not.3, label %_pocl_kernel_gesummv_kernel.exit.loopexit38, label %pregion_for_entry.entry.i.i, !llvm.loop !34

_pocl_kernel_gesummv_kernel.exit.loopexit:        ; preds = %for.end.loopexit.i.i.us
  br label %_pocl_kernel_gesummv_kernel.exit

_pocl_kernel_gesummv_kernel.exit.loopexit38:      ; preds = %pregion_for_entry.entry.i.i
  br label %_pocl_kernel_gesummv_kernel.exit

_pocl_kernel_gesummv_kernel.exit:                 ; preds = %_pocl_kernel_gesummv_kernel.exit.loopexit38, %_pocl_kernel_gesummv_kernel.exit.loopexit, %vector.ph
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_gesummv_kernel_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %17 = getelementptr i8*, i8** %0, i64 4
  %18 = bitcast i8** %17 to float**
  %19 = load float*, float** %18, align 8
  %20 = getelementptr i8*, i8** %0, i64 5
  %21 = bitcast i8** %20 to float**
  %22 = load float*, float** %21, align 8
  %23 = load float, float* %22, align 4
  %24 = getelementptr i8*, i8** %0, i64 6
  %25 = bitcast i8** %24 to float**
  %26 = load float*, float** %25, align 8
  %27 = load float, float* %26, align 4
  %28 = getelementptr i8*, i8** %0, i64 7
  %29 = bitcast i8** %28 to i32**
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp44.i.i = icmp sgt i32 %31, 0
  %wide.trip.count.i.i = zext i32 %31 to i64
  br i1 %cmp44.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %5
  %32 = trunc i64 %2 to i32
  %33 = shl i32 %32, 8
  %34 = sext i32 %33 to i64
  %scevgep = getelementptr float, float* %16, i64 %34
  %35 = add nsw i64 %34, 256
  %scevgep9 = getelementptr float, float* %16, i64 %35
  %scevgep11 = getelementptr float, float* %19, i64 %34
  %scevgep13 = getelementptr float, float* %19, i64 %35
  %bound0 = icmp ult float* %scevgep, %scevgep13
  %bound1 = icmp ult float* %scevgep11, %scevgep9
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.i.preheader, label %vector.ph

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck
  br label %pregion_for_entry.entry.i.i

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x float> undef, float %27, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert22 = insertelement <8 x float> undef, float %27, i32 0
  %broadcast.splat23 = shufflevector <8 x float> %broadcast.splatinsert22, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert24 = insertelement <8 x float> undef, float %27, i32 0
  %broadcast.splat25 = shufflevector <8 x float> %broadcast.splatinsert24, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert26 = insertelement <8 x float> undef, float %27, i32 0
  %broadcast.splat27 = shufflevector <8 x float> %broadcast.splatinsert26, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert28 = insertelement <8 x float> undef, float %23, i32 0
  %broadcast.splat29 = shufflevector <8 x float> %broadcast.splatinsert28, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert30 = insertelement <8 x float> undef, float %23, i32 0
  %broadcast.splat31 = shufflevector <8 x float> %broadcast.splatinsert30, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert32 = insertelement <8 x float> undef, float %23, i32 0
  %broadcast.splat33 = shufflevector <8 x float> %broadcast.splatinsert32, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert34 = insertelement <8 x float> undef, float %23, i32 0
  %broadcast.splat35 = shufflevector <8 x float> %broadcast.splatinsert34, <8 x float> undef, <8 x i32> zeroinitializer
  %36 = shl i64 %2, 40
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds float, float* %16, i64 %37
  %39 = bitcast float* %38 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %39, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %40 = getelementptr inbounds float, float* %38, i64 8
  %41 = bitcast float* %40 to <8 x float>*
  %wide.load15 = load <8 x float>, <8 x float>* %41, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %42 = getelementptr inbounds float, float* %38, i64 16
  %43 = bitcast float* %42 to <8 x float>*
  %wide.load16 = load <8 x float>, <8 x float>* %43, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %44 = getelementptr inbounds float, float* %38, i64 24
  %45 = bitcast float* %44 to <8 x float>*
  %wide.load17 = load <8 x float>, <8 x float>* %45, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %46 = getelementptr inbounds float, float* %19, i64 %37
  %47 = bitcast float* %46 to <8 x float>*
  %wide.load18 = load <8 x float>, <8 x float>* %47, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %48 = getelementptr inbounds float, float* %46, i64 8
  %49 = bitcast float* %48 to <8 x float>*
  %wide.load19 = load <8 x float>, <8 x float>* %49, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %50 = getelementptr inbounds float, float* %46, i64 16
  %51 = bitcast float* %50 to <8 x float>*
  %wide.load20 = load <8 x float>, <8 x float>* %51, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %52 = getelementptr inbounds float, float* %46, i64 24
  %53 = bitcast float* %52 to <8 x float>*
  %wide.load21 = load <8 x float>, <8 x float>* %53, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %54 = fmul <8 x float> %broadcast.splat, %wide.load
  %55 = fmul <8 x float> %broadcast.splat23, %wide.load15
  %56 = fmul <8 x float> %broadcast.splat25, %wide.load16
  %57 = fmul <8 x float> %broadcast.splat27, %wide.load17
  %58 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18, <8 x float> %54)
  %59 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19, <8 x float> %55)
  %60 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20, <8 x float> %56)
  %61 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21, <8 x float> %57)
  %62 = bitcast float* %38 to <8 x float>*
  store <8 x float> %58, <8 x float>* %62, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %63 = bitcast float* %40 to <8 x float>*
  store <8 x float> %59, <8 x float>* %63, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %64 = bitcast float* %42 to <8 x float>*
  store <8 x float> %60, <8 x float>* %64, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %65 = bitcast float* %44 to <8 x float>*
  store <8 x float> %61, <8 x float>* %65, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %66 = shl i64 %2, 40
  %67 = ashr exact i64 %66, 32
  %68 = or i64 %67, 32
  %69 = getelementptr inbounds float, float* %16, i64 %68
  %70 = bitcast float* %69 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %70, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %71 = getelementptr inbounds float, float* %69, i64 8
  %72 = bitcast float* %71 to <8 x float>*
  %wide.load15.1 = load <8 x float>, <8 x float>* %72, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %73 = getelementptr inbounds float, float* %69, i64 16
  %74 = bitcast float* %73 to <8 x float>*
  %wide.load16.1 = load <8 x float>, <8 x float>* %74, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %75 = getelementptr inbounds float, float* %69, i64 24
  %76 = bitcast float* %75 to <8 x float>*
  %wide.load17.1 = load <8 x float>, <8 x float>* %76, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %77 = getelementptr inbounds float, float* %19, i64 %68
  %78 = bitcast float* %77 to <8 x float>*
  %wide.load18.1 = load <8 x float>, <8 x float>* %78, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %79 = getelementptr inbounds float, float* %77, i64 8
  %80 = bitcast float* %79 to <8 x float>*
  %wide.load19.1 = load <8 x float>, <8 x float>* %80, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %81 = getelementptr inbounds float, float* %77, i64 16
  %82 = bitcast float* %81 to <8 x float>*
  %wide.load20.1 = load <8 x float>, <8 x float>* %82, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %83 = getelementptr inbounds float, float* %77, i64 24
  %84 = bitcast float* %83 to <8 x float>*
  %wide.load21.1 = load <8 x float>, <8 x float>* %84, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %85 = fmul <8 x float> %broadcast.splat, %wide.load.1
  %86 = fmul <8 x float> %broadcast.splat23, %wide.load15.1
  %87 = fmul <8 x float> %broadcast.splat25, %wide.load16.1
  %88 = fmul <8 x float> %broadcast.splat27, %wide.load17.1
  %89 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.1, <8 x float> %85)
  %90 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.1, <8 x float> %86)
  %91 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.1, <8 x float> %87)
  %92 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.1, <8 x float> %88)
  %93 = bitcast float* %69 to <8 x float>*
  store <8 x float> %89, <8 x float>* %93, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %94 = bitcast float* %71 to <8 x float>*
  store <8 x float> %90, <8 x float>* %94, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %95 = bitcast float* %73 to <8 x float>*
  store <8 x float> %91, <8 x float>* %95, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %96 = bitcast float* %75 to <8 x float>*
  store <8 x float> %92, <8 x float>* %96, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %97 = shl i64 %2, 40
  %98 = ashr exact i64 %97, 32
  %99 = or i64 %98, 64
  %100 = getelementptr inbounds float, float* %16, i64 %99
  %101 = bitcast float* %100 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %101, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %102 = getelementptr inbounds float, float* %100, i64 8
  %103 = bitcast float* %102 to <8 x float>*
  %wide.load15.2 = load <8 x float>, <8 x float>* %103, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %104 = getelementptr inbounds float, float* %100, i64 16
  %105 = bitcast float* %104 to <8 x float>*
  %wide.load16.2 = load <8 x float>, <8 x float>* %105, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %106 = getelementptr inbounds float, float* %100, i64 24
  %107 = bitcast float* %106 to <8 x float>*
  %wide.load17.2 = load <8 x float>, <8 x float>* %107, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %108 = getelementptr inbounds float, float* %19, i64 %99
  %109 = bitcast float* %108 to <8 x float>*
  %wide.load18.2 = load <8 x float>, <8 x float>* %109, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %110 = getelementptr inbounds float, float* %108, i64 8
  %111 = bitcast float* %110 to <8 x float>*
  %wide.load19.2 = load <8 x float>, <8 x float>* %111, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %112 = getelementptr inbounds float, float* %108, i64 16
  %113 = bitcast float* %112 to <8 x float>*
  %wide.load20.2 = load <8 x float>, <8 x float>* %113, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %114 = getelementptr inbounds float, float* %108, i64 24
  %115 = bitcast float* %114 to <8 x float>*
  %wide.load21.2 = load <8 x float>, <8 x float>* %115, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %116 = fmul <8 x float> %broadcast.splat, %wide.load.2
  %117 = fmul <8 x float> %broadcast.splat23, %wide.load15.2
  %118 = fmul <8 x float> %broadcast.splat25, %wide.load16.2
  %119 = fmul <8 x float> %broadcast.splat27, %wide.load17.2
  %120 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.2, <8 x float> %116)
  %121 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.2, <8 x float> %117)
  %122 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.2, <8 x float> %118)
  %123 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.2, <8 x float> %119)
  %124 = bitcast float* %100 to <8 x float>*
  store <8 x float> %120, <8 x float>* %124, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %125 = bitcast float* %102 to <8 x float>*
  store <8 x float> %121, <8 x float>* %125, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %126 = bitcast float* %104 to <8 x float>*
  store <8 x float> %122, <8 x float>* %126, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %127 = bitcast float* %106 to <8 x float>*
  store <8 x float> %123, <8 x float>* %127, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %128 = shl i64 %2, 40
  %129 = ashr exact i64 %128, 32
  %130 = or i64 %129, 96
  %131 = getelementptr inbounds float, float* %16, i64 %130
  %132 = bitcast float* %131 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %132, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %133 = getelementptr inbounds float, float* %131, i64 8
  %134 = bitcast float* %133 to <8 x float>*
  %wide.load15.3 = load <8 x float>, <8 x float>* %134, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %135 = getelementptr inbounds float, float* %131, i64 16
  %136 = bitcast float* %135 to <8 x float>*
  %wide.load16.3 = load <8 x float>, <8 x float>* %136, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %137 = getelementptr inbounds float, float* %131, i64 24
  %138 = bitcast float* %137 to <8 x float>*
  %wide.load17.3 = load <8 x float>, <8 x float>* %138, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %139 = getelementptr inbounds float, float* %19, i64 %130
  %140 = bitcast float* %139 to <8 x float>*
  %wide.load18.3 = load <8 x float>, <8 x float>* %140, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %141 = getelementptr inbounds float, float* %139, i64 8
  %142 = bitcast float* %141 to <8 x float>*
  %wide.load19.3 = load <8 x float>, <8 x float>* %142, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %143 = getelementptr inbounds float, float* %139, i64 16
  %144 = bitcast float* %143 to <8 x float>*
  %wide.load20.3 = load <8 x float>, <8 x float>* %144, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %145 = getelementptr inbounds float, float* %139, i64 24
  %146 = bitcast float* %145 to <8 x float>*
  %wide.load21.3 = load <8 x float>, <8 x float>* %146, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %147 = fmul <8 x float> %broadcast.splat, %wide.load.3
  %148 = fmul <8 x float> %broadcast.splat23, %wide.load15.3
  %149 = fmul <8 x float> %broadcast.splat25, %wide.load16.3
  %150 = fmul <8 x float> %broadcast.splat27, %wide.load17.3
  %151 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.3, <8 x float> %147)
  %152 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.3, <8 x float> %148)
  %153 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.3, <8 x float> %149)
  %154 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.3, <8 x float> %150)
  %155 = bitcast float* %131 to <8 x float>*
  store <8 x float> %151, <8 x float>* %155, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %156 = bitcast float* %133 to <8 x float>*
  store <8 x float> %152, <8 x float>* %156, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %157 = bitcast float* %135 to <8 x float>*
  store <8 x float> %153, <8 x float>* %157, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %158 = bitcast float* %137 to <8 x float>*
  store <8 x float> %154, <8 x float>* %158, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %159 = shl i64 %2, 40
  %160 = ashr exact i64 %159, 32
  %161 = or i64 %160, 128
  %162 = getelementptr inbounds float, float* %16, i64 %161
  %163 = bitcast float* %162 to <8 x float>*
  %wide.load.4 = load <8 x float>, <8 x float>* %163, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %164 = getelementptr inbounds float, float* %162, i64 8
  %165 = bitcast float* %164 to <8 x float>*
  %wide.load15.4 = load <8 x float>, <8 x float>* %165, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %166 = getelementptr inbounds float, float* %162, i64 16
  %167 = bitcast float* %166 to <8 x float>*
  %wide.load16.4 = load <8 x float>, <8 x float>* %167, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %168 = getelementptr inbounds float, float* %162, i64 24
  %169 = bitcast float* %168 to <8 x float>*
  %wide.load17.4 = load <8 x float>, <8 x float>* %169, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %170 = getelementptr inbounds float, float* %19, i64 %161
  %171 = bitcast float* %170 to <8 x float>*
  %wide.load18.4 = load <8 x float>, <8 x float>* %171, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %172 = getelementptr inbounds float, float* %170, i64 8
  %173 = bitcast float* %172 to <8 x float>*
  %wide.load19.4 = load <8 x float>, <8 x float>* %173, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %174 = getelementptr inbounds float, float* %170, i64 16
  %175 = bitcast float* %174 to <8 x float>*
  %wide.load20.4 = load <8 x float>, <8 x float>* %175, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %176 = getelementptr inbounds float, float* %170, i64 24
  %177 = bitcast float* %176 to <8 x float>*
  %wide.load21.4 = load <8 x float>, <8 x float>* %177, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %178 = fmul <8 x float> %broadcast.splat, %wide.load.4
  %179 = fmul <8 x float> %broadcast.splat23, %wide.load15.4
  %180 = fmul <8 x float> %broadcast.splat25, %wide.load16.4
  %181 = fmul <8 x float> %broadcast.splat27, %wide.load17.4
  %182 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.4, <8 x float> %178)
  %183 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.4, <8 x float> %179)
  %184 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.4, <8 x float> %180)
  %185 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.4, <8 x float> %181)
  %186 = bitcast float* %162 to <8 x float>*
  store <8 x float> %182, <8 x float>* %186, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %187 = bitcast float* %164 to <8 x float>*
  store <8 x float> %183, <8 x float>* %187, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %188 = bitcast float* %166 to <8 x float>*
  store <8 x float> %184, <8 x float>* %188, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %189 = bitcast float* %168 to <8 x float>*
  store <8 x float> %185, <8 x float>* %189, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %190 = shl i64 %2, 40
  %191 = ashr exact i64 %190, 32
  %192 = or i64 %191, 160
  %193 = getelementptr inbounds float, float* %16, i64 %192
  %194 = bitcast float* %193 to <8 x float>*
  %wide.load.5 = load <8 x float>, <8 x float>* %194, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %195 = getelementptr inbounds float, float* %193, i64 8
  %196 = bitcast float* %195 to <8 x float>*
  %wide.load15.5 = load <8 x float>, <8 x float>* %196, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %197 = getelementptr inbounds float, float* %193, i64 16
  %198 = bitcast float* %197 to <8 x float>*
  %wide.load16.5 = load <8 x float>, <8 x float>* %198, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %199 = getelementptr inbounds float, float* %193, i64 24
  %200 = bitcast float* %199 to <8 x float>*
  %wide.load17.5 = load <8 x float>, <8 x float>* %200, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %201 = getelementptr inbounds float, float* %19, i64 %192
  %202 = bitcast float* %201 to <8 x float>*
  %wide.load18.5 = load <8 x float>, <8 x float>* %202, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %203 = getelementptr inbounds float, float* %201, i64 8
  %204 = bitcast float* %203 to <8 x float>*
  %wide.load19.5 = load <8 x float>, <8 x float>* %204, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %205 = getelementptr inbounds float, float* %201, i64 16
  %206 = bitcast float* %205 to <8 x float>*
  %wide.load20.5 = load <8 x float>, <8 x float>* %206, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %207 = getelementptr inbounds float, float* %201, i64 24
  %208 = bitcast float* %207 to <8 x float>*
  %wide.load21.5 = load <8 x float>, <8 x float>* %208, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %209 = fmul <8 x float> %broadcast.splat, %wide.load.5
  %210 = fmul <8 x float> %broadcast.splat23, %wide.load15.5
  %211 = fmul <8 x float> %broadcast.splat25, %wide.load16.5
  %212 = fmul <8 x float> %broadcast.splat27, %wide.load17.5
  %213 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.5, <8 x float> %209)
  %214 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.5, <8 x float> %210)
  %215 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.5, <8 x float> %211)
  %216 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.5, <8 x float> %212)
  %217 = bitcast float* %193 to <8 x float>*
  store <8 x float> %213, <8 x float>* %217, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %218 = bitcast float* %195 to <8 x float>*
  store <8 x float> %214, <8 x float>* %218, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %219 = bitcast float* %197 to <8 x float>*
  store <8 x float> %215, <8 x float>* %219, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %220 = bitcast float* %199 to <8 x float>*
  store <8 x float> %216, <8 x float>* %220, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %221 = shl i64 %2, 40
  %222 = ashr exact i64 %221, 32
  %223 = or i64 %222, 192
  %224 = getelementptr inbounds float, float* %16, i64 %223
  %225 = bitcast float* %224 to <8 x float>*
  %wide.load.6 = load <8 x float>, <8 x float>* %225, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %226 = getelementptr inbounds float, float* %224, i64 8
  %227 = bitcast float* %226 to <8 x float>*
  %wide.load15.6 = load <8 x float>, <8 x float>* %227, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %228 = getelementptr inbounds float, float* %224, i64 16
  %229 = bitcast float* %228 to <8 x float>*
  %wide.load16.6 = load <8 x float>, <8 x float>* %229, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %230 = getelementptr inbounds float, float* %224, i64 24
  %231 = bitcast float* %230 to <8 x float>*
  %wide.load17.6 = load <8 x float>, <8 x float>* %231, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %232 = getelementptr inbounds float, float* %19, i64 %223
  %233 = bitcast float* %232 to <8 x float>*
  %wide.load18.6 = load <8 x float>, <8 x float>* %233, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %234 = getelementptr inbounds float, float* %232, i64 8
  %235 = bitcast float* %234 to <8 x float>*
  %wide.load19.6 = load <8 x float>, <8 x float>* %235, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %236 = getelementptr inbounds float, float* %232, i64 16
  %237 = bitcast float* %236 to <8 x float>*
  %wide.load20.6 = load <8 x float>, <8 x float>* %237, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %238 = getelementptr inbounds float, float* %232, i64 24
  %239 = bitcast float* %238 to <8 x float>*
  %wide.load21.6 = load <8 x float>, <8 x float>* %239, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %240 = fmul <8 x float> %broadcast.splat, %wide.load.6
  %241 = fmul <8 x float> %broadcast.splat23, %wide.load15.6
  %242 = fmul <8 x float> %broadcast.splat25, %wide.load16.6
  %243 = fmul <8 x float> %broadcast.splat27, %wide.load17.6
  %244 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.6, <8 x float> %240)
  %245 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.6, <8 x float> %241)
  %246 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.6, <8 x float> %242)
  %247 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.6, <8 x float> %243)
  %248 = bitcast float* %224 to <8 x float>*
  store <8 x float> %244, <8 x float>* %248, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %249 = bitcast float* %226 to <8 x float>*
  store <8 x float> %245, <8 x float>* %249, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %250 = bitcast float* %228 to <8 x float>*
  store <8 x float> %246, <8 x float>* %250, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %251 = bitcast float* %230 to <8 x float>*
  store <8 x float> %247, <8 x float>* %251, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %252 = shl i64 %2, 40
  %253 = ashr exact i64 %252, 32
  %254 = or i64 %253, 224
  %255 = getelementptr inbounds float, float* %16, i64 %254
  %256 = bitcast float* %255 to <8 x float>*
  %wide.load.7 = load <8 x float>, <8 x float>* %256, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %257 = getelementptr inbounds float, float* %255, i64 8
  %258 = bitcast float* %257 to <8 x float>*
  %wide.load15.7 = load <8 x float>, <8 x float>* %258, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %259 = getelementptr inbounds float, float* %255, i64 16
  %260 = bitcast float* %259 to <8 x float>*
  %wide.load16.7 = load <8 x float>, <8 x float>* %260, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %261 = getelementptr inbounds float, float* %255, i64 24
  %262 = bitcast float* %261 to <8 x float>*
  %wide.load17.7 = load <8 x float>, <8 x float>* %262, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %263 = getelementptr inbounds float, float* %19, i64 %254
  %264 = bitcast float* %263 to <8 x float>*
  %wide.load18.7 = load <8 x float>, <8 x float>* %264, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %265 = getelementptr inbounds float, float* %263, i64 8
  %266 = bitcast float* %265 to <8 x float>*
  %wide.load19.7 = load <8 x float>, <8 x float>* %266, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %267 = getelementptr inbounds float, float* %263, i64 16
  %268 = bitcast float* %267 to <8 x float>*
  %wide.load20.7 = load <8 x float>, <8 x float>* %268, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %269 = getelementptr inbounds float, float* %263, i64 24
  %270 = bitcast float* %269 to <8 x float>*
  %wide.load21.7 = load <8 x float>, <8 x float>* %270, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %271 = fmul <8 x float> %broadcast.splat, %wide.load.7
  %272 = fmul <8 x float> %broadcast.splat23, %wide.load15.7
  %273 = fmul <8 x float> %broadcast.splat25, %wide.load16.7
  %274 = fmul <8 x float> %broadcast.splat27, %wide.load17.7
  %275 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat29, <8 x float> %wide.load18.7, <8 x float> %271)
  %276 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat31, <8 x float> %wide.load19.7, <8 x float> %272)
  %277 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat33, <8 x float> %wide.load20.7, <8 x float> %273)
  %278 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat35, <8 x float> %wide.load21.7, <8 x float> %274)
  %279 = bitcast float* %255 to <8 x float>*
  store <8 x float> %275, <8 x float>* %279, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %280 = bitcast float* %257 to <8 x float>*
  store <8 x float> %276, <8 x float>* %280, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %281 = bitcast float* %259 to <8 x float>*
  store <8 x float> %277, <8 x float>* %281, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %282 = bitcast float* %261 to <8 x float>*
  store <8 x float> %278, <8 x float>* %282, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  br label %_pocl_kernel_gesummv_kernel.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %for.end.loopexit.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %295, %for.end.loopexit.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %mul.i.i.us = mul nsw i32 %31, %conv.i.i.us
  %sext43.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom5.i.i.us = ashr exact i64 %sext43.i.i.us, 32
  %arrayidx6.i.i.us = getelementptr inbounds float, float* %19, i64 %idxprom5.i.i.us
  %arrayidx15.i.i.us = getelementptr inbounds float, float* %16, i64 %idxprom5.i.i.us
  %283 = sext i32 %mul.i.i.us to i64
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %pregion_for_entry.entry.i.i.us
  %indvars.iv.next.i.i2.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us ]
  %284 = add nsw i64 %indvars.iv.next.i.i2.us, %283
  %arrayidx.i.i.us = getelementptr inbounds float, float* %7, i64 %284
  %285 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %arrayidx3.i.i.us = getelementptr inbounds float, float* %13, i64 %indvars.iv.next.i.i2.us
  %286 = load float, float* %arrayidx3.i.i.us, align 4, !tbaa !12
  %287 = load float, float* %arrayidx6.i.i.us, align 4, !tbaa !12
  %288 = tail call float @llvm.fmuladd.f32(float %285, float %286, float %287) #2
  store float %288, float* %arrayidx6.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us = getelementptr inbounds float, float* %10, i64 %284
  %289 = load float, float* %arrayidx10.i.i.us, align 4, !tbaa !12
  %290 = load float, float* %arrayidx3.i.i.us, align 4, !tbaa !12
  %291 = load float, float* %arrayidx15.i.i.us, align 4, !tbaa !12
  %292 = tail call float @llvm.fmuladd.f32(float %289, float %290, float %291) #2
  store float %292, float* %arrayidx15.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i2.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !23

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %.lcssa = phi float [ %292, %for.body.i.i.us ]
  %293 = load float, float* %arrayidx6.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %mul21.i.i.us = fmul float %27, %.lcssa
  %294 = tail call float @llvm.fmuladd.f32(float %23, float %293, float %mul21.i.i.us) #2
  store float %294, float* %arrayidx15.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %295 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %295, 256
  br i1 %exitcond.not, label %_pocl_kernel_gesummv_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !25

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %307, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %.pre.i.i = shl i64 %add1.i.i.i, 32
  %.pre47.i.i = ashr exact i64 %.pre.i.i, 32
  %arrayidx20.phi.trans.insert.i.i = getelementptr inbounds float, float* %16, i64 %.pre47.i.i
  %.pre1.i.i13 = load float, float* %arrayidx20.phi.trans.insert.i.i, align 4, !tbaa !12
  %arrayidx17.i.i = getelementptr inbounds float, float* %19, i64 %.pre47.i.i
  %296 = load float, float* %arrayidx17.i.i, align 4, !tbaa !12, !llvm.access.group !21
  %mul21.i.i = fmul float %27, %.pre1.i.i13
  %297 = tail call float @llvm.fmuladd.f32(float %23, float %296, float %mul21.i.i) #2
  store float %297, float* %arrayidx20.phi.trans.insert.i.i, align 4, !tbaa !12, !llvm.access.group !21
  %298 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %298, %mul.i.i.i
  %.pre.i.i.1 = shl i64 %add1.i.i.i.1, 32
  %.pre47.i.i.1 = ashr exact i64 %.pre.i.i.1, 32
  %arrayidx20.phi.trans.insert.i.i.1 = getelementptr inbounds float, float* %16, i64 %.pre47.i.i.1
  %.pre1.i.i13.1 = load float, float* %arrayidx20.phi.trans.insert.i.i.1, align 4, !tbaa !12
  %arrayidx17.i.i.1 = getelementptr inbounds float, float* %19, i64 %.pre47.i.i.1
  %299 = load float, float* %arrayidx17.i.i.1, align 4, !tbaa !12, !llvm.access.group !21
  %mul21.i.i.1 = fmul float %27, %.pre1.i.i13.1
  %300 = tail call float @llvm.fmuladd.f32(float %23, float %299, float %mul21.i.i.1) #2
  store float %300, float* %arrayidx20.phi.trans.insert.i.i.1, align 4, !tbaa !12, !llvm.access.group !21
  %301 = or i64 %_local_id_x.i.0, 2
  %add1.i.i.i.2 = add nuw nsw i64 %301, %mul.i.i.i
  %.pre.i.i.2 = shl i64 %add1.i.i.i.2, 32
  %.pre47.i.i.2 = ashr exact i64 %.pre.i.i.2, 32
  %arrayidx20.phi.trans.insert.i.i.2 = getelementptr inbounds float, float* %16, i64 %.pre47.i.i.2
  %.pre1.i.i13.2 = load float, float* %arrayidx20.phi.trans.insert.i.i.2, align 4, !tbaa !12
  %arrayidx17.i.i.2 = getelementptr inbounds float, float* %19, i64 %.pre47.i.i.2
  %302 = load float, float* %arrayidx17.i.i.2, align 4, !tbaa !12, !llvm.access.group !21
  %mul21.i.i.2 = fmul float %27, %.pre1.i.i13.2
  %303 = tail call float @llvm.fmuladd.f32(float %23, float %302, float %mul21.i.i.2) #2
  store float %303, float* %arrayidx20.phi.trans.insert.i.i.2, align 4, !tbaa !12, !llvm.access.group !21
  %304 = or i64 %_local_id_x.i.0, 3
  %add1.i.i.i.3 = add nuw nsw i64 %304, %mul.i.i.i
  %.pre.i.i.3 = shl i64 %add1.i.i.i.3, 32
  %.pre47.i.i.3 = ashr exact i64 %.pre.i.i.3, 32
  %arrayidx20.phi.trans.insert.i.i.3 = getelementptr inbounds float, float* %16, i64 %.pre47.i.i.3
  %.pre1.i.i13.3 = load float, float* %arrayidx20.phi.trans.insert.i.i.3, align 4, !tbaa !12
  %arrayidx17.i.i.3 = getelementptr inbounds float, float* %19, i64 %.pre47.i.i.3
  %305 = load float, float* %arrayidx17.i.i.3, align 4, !tbaa !12, !llvm.access.group !21
  %mul21.i.i.3 = fmul float %27, %.pre1.i.i13.3
  %306 = tail call float @llvm.fmuladd.f32(float %23, float %305, float %mul21.i.i.3) #2
  store float %306, float* %arrayidx20.phi.trans.insert.i.i.3, align 4, !tbaa !12, !llvm.access.group !21
  %307 = add nuw nsw i64 %_local_id_x.i.0, 4
  %exitcond5.not.3 = icmp eq i64 %307, 256
  br i1 %exitcond5.not.3, label %_pocl_kernel_gesummv_kernel.exit.loopexit38, label %pregion_for_entry.entry.i.i, !llvm.loop !40

_pocl_kernel_gesummv_kernel.exit.loopexit:        ; preds = %for.end.loopexit.i.i.us
  br label %_pocl_kernel_gesummv_kernel.exit

_pocl_kernel_gesummv_kernel.exit.loopexit38:      ; preds = %pregion_for_entry.entry.i.i
  br label %_pocl_kernel_gesummv_kernel.exit

_pocl_kernel_gesummv_kernel.exit:                 ; preds = %_pocl_kernel_gesummv_kernel.exit.loopexit38, %_pocl_kernel_gesummv_kernel.exit.loopexit, %vector.ph
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #0

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
!5 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"DATA_TYPE", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"float*", !"float*", !"float", !"float", !"int"}
!9 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!10 = !{!"a", !"b", !"x", !"y", !"tmp", !"alpha", !"beta", !"n"}
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
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.parallel_accesses", !22}
!27 = distinct !{!27, !26, !28}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !26, !28}
!35 = !{!36}
!36 = distinct !{!36, !37}
!37 = distinct !{!37, !"LVerDomain"}
!38 = !{!39}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !26, !28}
