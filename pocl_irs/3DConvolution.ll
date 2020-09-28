; ModuleID = './IG/LJEKIBHBJBLBAGKGFKBMHFMKJDPFDGDLLMHFN/Convolution3D_kernel/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_Convolution3D_kernel(float* nocapture readonly %0, float* nocapture %1, i32 %2, i32 %3, i32 %4, i32 %5, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %6, i64 %7, i64 %8, i64 %9) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %7, 5
  %mul3.i.i = shl i64 %8, 3
  %sub.i = add nsw i32 %2, -1
  %cmp.i = icmp sgt i32 %sub.i, %5
  %sub4.i = add nsw i32 %3, -1
  %sub8.i = add nsw i32 %4, -1
  %cmp12.i = icmp sgt i32 %5, 0
  %mul189.i = mul i32 %5, %3
  %sub20.i = add nsw i32 %5, -1
  %mul.i = mul nsw i32 %4, %3
  %mul21.i = mul nsw i32 %sub20.i, %mul.i
  %add27.i = add nuw nsw i32 %5, 1
  %mul29.i = mul nsw i32 %add27.i, %mul.i
  %mul84.i = mul nsw i32 %mul.i, %5
  %11 = trunc i64 %8 to i32
  %12 = shl i32 %11, 3
  %13 = add i32 %mul189.i, %12
  %14 = mul i32 %13, %4
  %15 = trunc i64 %7 to i32
  %16 = shl i32 %15, 5
  %17 = add i32 %14, %16
  %18 = trunc i64 %mul.i.i to i32
  %19 = trunc i64 %mul.i.i to i32
  %20 = or i32 %19, 8
  %21 = trunc i64 %mul.i.i to i32
  %22 = or i32 %21, 16
  %23 = trunc i64 %mul.i.i to i32
  %24 = or i32 %23, 24
  %conv.i = trunc i64 %mul.i.i to i32
  %25 = trunc i64 %mul.i.i to i32
  %conv.i.1 = or i32 %25, 1
  %26 = trunc i64 %mul.i.i to i32
  %conv.i.2 = or i32 %26, 2
  %27 = trunc i64 %mul.i.i to i32
  %conv.i.3 = or i32 %27, 3
  %28 = trunc i64 %mul.i.i to i32
  %conv.i.4 = or i32 %28, 4
  %29 = trunc i64 %mul.i.i to i32
  %conv.i.5 = or i32 %29, 5
  %30 = trunc i64 %mul.i.i to i32
  %conv.i.6 = or i32 %30, 6
  %31 = trunc i64 %mul.i.i to i32
  %conv.i.7 = or i32 %31, 7
  %32 = trunc i64 %mul.i.i to i32
  %conv.i.8 = or i32 %32, 8
  %33 = trunc i64 %mul.i.i to i32
  %conv.i.9 = or i32 %33, 9
  %34 = trunc i64 %mul.i.i to i32
  %conv.i.10 = or i32 %34, 10
  %35 = trunc i64 %mul.i.i to i32
  %conv.i.11 = or i32 %35, 11
  %36 = trunc i64 %mul.i.i to i32
  %conv.i.12 = or i32 %36, 12
  %37 = trunc i64 %mul.i.i to i32
  %conv.i.13 = or i32 %37, 13
  %38 = trunc i64 %mul.i.i to i32
  %conv.i.14 = or i32 %38, 14
  %39 = trunc i64 %mul.i.i to i32
  %conv.i.15 = or i32 %39, 15
  %40 = trunc i64 %mul.i.i to i32
  %conv.i.16 = or i32 %40, 16
  %41 = trunc i64 %mul.i.i to i32
  %conv.i.17 = or i32 %41, 17
  %42 = trunc i64 %mul.i.i to i32
  %conv.i.18 = or i32 %42, 18
  %43 = trunc i64 %mul.i.i to i32
  %conv.i.19 = or i32 %43, 19
  %44 = trunc i64 %mul.i.i to i32
  %conv.i.20 = or i32 %44, 20
  %45 = trunc i64 %mul.i.i to i32
  %conv.i.21 = or i32 %45, 21
  %46 = trunc i64 %mul.i.i to i32
  %conv.i.22 = or i32 %46, 22
  %47 = trunc i64 %mul.i.i to i32
  %conv.i.23 = or i32 %47, 23
  %48 = trunc i64 %mul.i.i to i32
  %conv.i.24 = or i32 %48, 24
  %49 = trunc i64 %mul.i.i to i32
  %conv.i.25 = or i32 %49, 25
  %50 = trunc i64 %mul.i.i to i32
  %conv.i.26 = or i32 %50, 26
  %51 = trunc i64 %mul.i.i to i32
  %conv.i.27 = or i32 %51, 27
  %52 = trunc i64 %mul.i.i to i32
  %conv.i.28 = or i32 %52, 28
  %53 = trunc i64 %mul.i.i to i32
  %conv.i.29 = or i32 %53, 29
  %54 = trunc i64 %mul.i.i to i32
  %conv.i.30 = or i32 %54, 30
  %55 = trunc i64 %mul.i.i to i32
  %conv.i.31 = or i32 %55, 31
  br label %pregion_for_entry.pregion_for_init.i

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_end.i, %10
  %_local_id_y.0 = phi i64 [ 0, %10 ], [ %134, %pregion_for_end.i ]
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %cmp5.i = icmp sgt i32 %sub4.i, %conv2.i
  %or.cond334.i = and i1 %cmp.i, %cmp5.i
  %cmp15.i = icmp sgt i32 %conv2.i, 0
  %reass.add.i = add i32 %mul189.i, %conv2.i
  %reass.mul.i = mul i32 %reass.add.i, %4
  %sub22.i = add nsw i32 %conv2.i, -1
  %mul23.i = mul nsw i32 %sub22.i, %4
  %add.i = add nsw i32 %mul23.i, %mul21.i
  %add32.i = add nsw i32 %mul23.i, %mul29.i
  %mul97.i = mul nsw i32 %conv2.i, %4
  %add107.i = add nuw nsw i32 %conv2.i, 1
  %mul108.i = mul nsw i32 %add107.i, %4
  br i1 %or.cond334.i, label %pregion_for_entry.entry.i.us.preheader, label %vector.scevcheck

pregion_for_entry.entry.i.us.preheader:           ; preds = %pregion_for_entry.pregion_for_init.i
  br label %pregion_for_entry.entry.i.us

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i
  %56 = trunc i64 %_local_id_y.0 to i32
  %57 = mul i32 %56, %4
  %58 = add i32 %57, %17
  %59 = icmp sgt i32 %58, 2147483616
  br i1 %59, label %pregion_for_entry.entry.i, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck
  %60 = add i32 %reass.mul.i, %18
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %1, i64 %61
  %63 = bitcast float* %62 to <8 x i32>*
  store <8 x i32> zeroinitializer, <8 x i32>* %63, align 4, !tbaa !12, !llvm.access.group !16
  %64 = add i32 %reass.mul.i, %20
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %1, i64 %65
  %67 = bitcast float* %66 to <8 x i32>*
  store <8 x i32> zeroinitializer, <8 x i32>* %67, align 4, !tbaa !12, !llvm.access.group !16
  %68 = add i32 %reass.mul.i, %22
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %1, i64 %69
  %71 = bitcast float* %70 to <8 x i32>*
  store <8 x i32> zeroinitializer, <8 x i32>* %71, align 4, !tbaa !12, !llvm.access.group !16
  %72 = add i32 %reass.mul.i, %24
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %1, i64 %73
  %75 = bitcast float* %74 to <8 x i32>*
  store <8 x i32> zeroinitializer, <8 x i32>* %75, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i

pregion_for_entry.entry.i.us:                     ; preds = %if.end.r_exit.i.us, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %101, %if.end.r_exit.i.us ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp9.i.us = icmp sgt i32 %sub8.i, %conv.i.us
  %or.cond.i.us = and i1 %cmp12.i, %cmp9.i.us
  %or.cond195.i.us = and i1 %cmp15.i, %or.cond.i.us
  %cmp18.i.us = icmp sgt i32 %conv.i.us, 0
  %or.cond196.i.us = and i1 %cmp18.i.us, %or.cond195.i.us
  br i1 %or.cond196.i.us, label %if.then.i.us, label %if.else.i.us

if.else.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %add192.i.us = add i32 %reass.mul.i, %conv.i.us
  %idxprom193.i.us = sext i32 %add192.i.us to i64
  br label %if.end.r_exit.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %sub24.i.us = add nsw i32 %conv.i.us, -1
  %add25.i.us = add nsw i32 %sub24.i.us, %add.i
  %idxprom.i.us = sext i32 %add25.i.us to i64
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %idxprom.i.us
  %76 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %add34.i.us = add nsw i32 %sub24.i.us, %add32.i
  %idxprom35.i.us = sext i32 %add34.i.us to i64
  %arrayidx36.i.us = getelementptr inbounds float, float* %0, i64 %idxprom35.i.us
  %77 = load float, float* %arrayidx36.i.us, align 4, !tbaa !12
  %mul37.i.us = fmul float %77, 4.000000e+00
  %78 = tail call float @llvm.fmuladd.f32(float %76, float 2.000000e+00, float %mul37.i.us) #2
  %79 = tail call float @llvm.fmuladd.f32(float %76, float 5.000000e+00, float %78) #2
  %80 = tail call float @llvm.fmuladd.f32(float %77, float 7.000000e+00, float %79) #2
  %81 = tail call float @llvm.fmuladd.f32(float %76, float -8.000000e+00, float %80) #2
  %82 = tail call float @llvm.fmuladd.f32(float %77, float 1.000000e+01, float %81) #2
  %add87.i.us = add i32 %mul84.i, %conv.i.us
  %add89.i.us = add i32 %add87.i.us, %mul23.i
  %idxprom90.i.us = sext i32 %add89.i.us to i64
  %arrayidx91.i.us = getelementptr inbounds float, float* %0, i64 %idxprom90.i.us
  %83 = load float, float* %arrayidx91.i.us, align 4, !tbaa !12
  %84 = tail call float @llvm.fmuladd.f32(float %83, float -3.000000e+00, float %82) #2
  %add100.i.us = add i32 %add87.i.us, %mul97.i
  %idxprom101.i.us = sext i32 %add100.i.us to i64
  %arrayidx102.i.us = getelementptr inbounds float, float* %0, i64 %idxprom101.i.us
  %85 = load float, float* %arrayidx102.i.us, align 4, !tbaa !12
  %86 = tail call float @llvm.fmuladd.f32(float %85, float 6.000000e+00, float %84) #2
  %add111.i.us = add i32 %add87.i.us, %mul108.i
  %idxprom112.i.us = sext i32 %add111.i.us to i64
  %arrayidx113.i.us = getelementptr inbounds float, float* %0, i64 %idxprom112.i.us
  %87 = load float, float* %arrayidx113.i.us, align 4, !tbaa !12
  %88 = tail call float @llvm.fmuladd.f32(float %87, float -9.000000e+00, float %86) #2
  %add121.i.us = add nuw nsw i32 %conv.i.us, 1
  %add122.i.us = add nsw i32 %add121.i.us, %add.i
  %idxprom123.i.us = sext i32 %add122.i.us to i64
  %arrayidx124.i.us = getelementptr inbounds float, float* %0, i64 %idxprom123.i.us
  %89 = load float, float* %arrayidx124.i.us, align 4, !tbaa !12
  %90 = tail call float @llvm.fmuladd.f32(float %89, float 2.000000e+00, float %88) #2
  %add133.i.us = add nsw i32 %add121.i.us, %add32.i
  %idxprom134.i.us = sext i32 %add133.i.us to i64
  %arrayidx135.i.us = getelementptr inbounds float, float* %0, i64 %idxprom134.i.us
  %91 = load float, float* %arrayidx135.i.us, align 4, !tbaa !12
  %92 = tail call float @llvm.fmuladd.f32(float %91, float 4.000000e+00, float %90) #2
  %add142.i.us = add i32 %add121.i.us, %mul21.i
  %add144.i.us = add i32 %add142.i.us, %mul97.i
  %idxprom145.i.us = sext i32 %add144.i.us to i64
  %arrayidx146.i.us = getelementptr inbounds float, float* %0, i64 %idxprom145.i.us
  %93 = load float, float* %arrayidx146.i.us, align 4, !tbaa !12
  %94 = tail call float @llvm.fmuladd.f32(float %93, float 5.000000e+00, float %92) #2
  %add153.i.us = add i32 %add121.i.us, %mul29.i
  %add155.i.us = add i32 %add153.i.us, %mul97.i
  %idxprom156.i.us = sext i32 %add155.i.us to i64
  %arrayidx157.i.us = getelementptr inbounds float, float* %0, i64 %idxprom156.i.us
  %95 = load float, float* %arrayidx157.i.us, align 4, !tbaa !12
  %96 = tail call float @llvm.fmuladd.f32(float %95, float 7.000000e+00, float %94) #2
  %add166.i.us = add i32 %add142.i.us, %mul108.i
  %idxprom167.i.us = sext i32 %add166.i.us to i64
  %arrayidx168.i.us = getelementptr inbounds float, float* %0, i64 %idxprom167.i.us
  %97 = load float, float* %arrayidx168.i.us, align 4, !tbaa !12
  %98 = tail call float @llvm.fmuladd.f32(float %97, float -8.000000e+00, float %96) #2
  %add177.i.us = add i32 %add153.i.us, %mul108.i
  %idxprom178.i.us = sext i32 %add177.i.us to i64
  %arrayidx179.i.us = getelementptr inbounds float, float* %0, i64 %idxprom178.i.us
  %99 = load float, float* %arrayidx179.i.us, align 4, !tbaa !12
  %100 = tail call float @llvm.fmuladd.f32(float %99, float 1.000000e+01, float %98) #2
  br label %if.end.r_exit.i.us

if.end.r_exit.i.us:                               ; preds = %if.then.i.us, %if.else.i.us
  %idxprom193.i.us.sink = phi i64 [ %idxprom101.i.us, %if.then.i.us ], [ %idxprom193.i.us, %if.else.i.us ]
  %.sink = phi float [ %100, %if.then.i.us ], [ 0.000000e+00, %if.else.i.us ]
  %arrayidx194.i.us = getelementptr inbounds float, float* %1, i64 %idxprom193.i.us.sink
  store float %.sink, float* %arrayidx194.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %101 = add nuw nsw i64 %_local_id_x.0.us, 1
  %exitcond2.not = icmp eq i64 %101, 32
  br i1 %exitcond2.not, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !19

pregion_for_entry.entry.i:                        ; preds = %vector.scevcheck
  %add192.i = add i32 %reass.mul.i, %conv.i
  %idxprom193.i = sext i32 %add192.i to i64
  %arrayidx194.i = getelementptr inbounds float, float* %1, i64 %idxprom193.i
  %102 = bitcast float* %arrayidx194.i to i32*
  store i32 0, i32* %102, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.1 = add i32 %reass.mul.i, %conv.i.1
  %idxprom193.i.1 = sext i32 %add192.i.1 to i64
  %arrayidx194.i.1 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.1
  %103 = bitcast float* %arrayidx194.i.1 to i32*
  store i32 0, i32* %103, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.2 = add i32 %reass.mul.i, %conv.i.2
  %idxprom193.i.2 = sext i32 %add192.i.2 to i64
  %arrayidx194.i.2 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.2
  %104 = bitcast float* %arrayidx194.i.2 to i32*
  store i32 0, i32* %104, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.3 = add i32 %reass.mul.i, %conv.i.3
  %idxprom193.i.3 = sext i32 %add192.i.3 to i64
  %arrayidx194.i.3 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.3
  %105 = bitcast float* %arrayidx194.i.3 to i32*
  store i32 0, i32* %105, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.4 = add i32 %reass.mul.i, %conv.i.4
  %idxprom193.i.4 = sext i32 %add192.i.4 to i64
  %arrayidx194.i.4 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.4
  %106 = bitcast float* %arrayidx194.i.4 to i32*
  store i32 0, i32* %106, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.5 = add i32 %reass.mul.i, %conv.i.5
  %idxprom193.i.5 = sext i32 %add192.i.5 to i64
  %arrayidx194.i.5 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.5
  %107 = bitcast float* %arrayidx194.i.5 to i32*
  store i32 0, i32* %107, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.6 = add i32 %reass.mul.i, %conv.i.6
  %idxprom193.i.6 = sext i32 %add192.i.6 to i64
  %arrayidx194.i.6 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.6
  %108 = bitcast float* %arrayidx194.i.6 to i32*
  store i32 0, i32* %108, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.7 = add i32 %reass.mul.i, %conv.i.7
  %idxprom193.i.7 = sext i32 %add192.i.7 to i64
  %arrayidx194.i.7 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.7
  %109 = bitcast float* %arrayidx194.i.7 to i32*
  store i32 0, i32* %109, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.8 = add i32 %reass.mul.i, %conv.i.8
  %idxprom193.i.8 = sext i32 %add192.i.8 to i64
  %arrayidx194.i.8 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.8
  %110 = bitcast float* %arrayidx194.i.8 to i32*
  store i32 0, i32* %110, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.9 = add i32 %reass.mul.i, %conv.i.9
  %idxprom193.i.9 = sext i32 %add192.i.9 to i64
  %arrayidx194.i.9 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.9
  %111 = bitcast float* %arrayidx194.i.9 to i32*
  store i32 0, i32* %111, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.10 = add i32 %reass.mul.i, %conv.i.10
  %idxprom193.i.10 = sext i32 %add192.i.10 to i64
  %arrayidx194.i.10 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.10
  %112 = bitcast float* %arrayidx194.i.10 to i32*
  store i32 0, i32* %112, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.11 = add i32 %reass.mul.i, %conv.i.11
  %idxprom193.i.11 = sext i32 %add192.i.11 to i64
  %arrayidx194.i.11 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.11
  %113 = bitcast float* %arrayidx194.i.11 to i32*
  store i32 0, i32* %113, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.12 = add i32 %reass.mul.i, %conv.i.12
  %idxprom193.i.12 = sext i32 %add192.i.12 to i64
  %arrayidx194.i.12 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.12
  %114 = bitcast float* %arrayidx194.i.12 to i32*
  store i32 0, i32* %114, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.13 = add i32 %reass.mul.i, %conv.i.13
  %idxprom193.i.13 = sext i32 %add192.i.13 to i64
  %arrayidx194.i.13 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.13
  %115 = bitcast float* %arrayidx194.i.13 to i32*
  store i32 0, i32* %115, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.14 = add i32 %reass.mul.i, %conv.i.14
  %idxprom193.i.14 = sext i32 %add192.i.14 to i64
  %arrayidx194.i.14 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.14
  %116 = bitcast float* %arrayidx194.i.14 to i32*
  store i32 0, i32* %116, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.15 = add i32 %reass.mul.i, %conv.i.15
  %idxprom193.i.15 = sext i32 %add192.i.15 to i64
  %arrayidx194.i.15 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.15
  %117 = bitcast float* %arrayidx194.i.15 to i32*
  store i32 0, i32* %117, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.16 = add i32 %reass.mul.i, %conv.i.16
  %idxprom193.i.16 = sext i32 %add192.i.16 to i64
  %arrayidx194.i.16 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.16
  %118 = bitcast float* %arrayidx194.i.16 to i32*
  store i32 0, i32* %118, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.17 = add i32 %reass.mul.i, %conv.i.17
  %idxprom193.i.17 = sext i32 %add192.i.17 to i64
  %arrayidx194.i.17 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.17
  %119 = bitcast float* %arrayidx194.i.17 to i32*
  store i32 0, i32* %119, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.18 = add i32 %reass.mul.i, %conv.i.18
  %idxprom193.i.18 = sext i32 %add192.i.18 to i64
  %arrayidx194.i.18 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.18
  %120 = bitcast float* %arrayidx194.i.18 to i32*
  store i32 0, i32* %120, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.19 = add i32 %reass.mul.i, %conv.i.19
  %idxprom193.i.19 = sext i32 %add192.i.19 to i64
  %arrayidx194.i.19 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.19
  %121 = bitcast float* %arrayidx194.i.19 to i32*
  store i32 0, i32* %121, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.20 = add i32 %reass.mul.i, %conv.i.20
  %idxprom193.i.20 = sext i32 %add192.i.20 to i64
  %arrayidx194.i.20 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.20
  %122 = bitcast float* %arrayidx194.i.20 to i32*
  store i32 0, i32* %122, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.21 = add i32 %reass.mul.i, %conv.i.21
  %idxprom193.i.21 = sext i32 %add192.i.21 to i64
  %arrayidx194.i.21 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.21
  %123 = bitcast float* %arrayidx194.i.21 to i32*
  store i32 0, i32* %123, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.22 = add i32 %reass.mul.i, %conv.i.22
  %idxprom193.i.22 = sext i32 %add192.i.22 to i64
  %arrayidx194.i.22 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.22
  %124 = bitcast float* %arrayidx194.i.22 to i32*
  store i32 0, i32* %124, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.23 = add i32 %reass.mul.i, %conv.i.23
  %idxprom193.i.23 = sext i32 %add192.i.23 to i64
  %arrayidx194.i.23 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.23
  %125 = bitcast float* %arrayidx194.i.23 to i32*
  store i32 0, i32* %125, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.24 = add i32 %reass.mul.i, %conv.i.24
  %idxprom193.i.24 = sext i32 %add192.i.24 to i64
  %arrayidx194.i.24 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.24
  %126 = bitcast float* %arrayidx194.i.24 to i32*
  store i32 0, i32* %126, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.25 = add i32 %reass.mul.i, %conv.i.25
  %idxprom193.i.25 = sext i32 %add192.i.25 to i64
  %arrayidx194.i.25 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.25
  %127 = bitcast float* %arrayidx194.i.25 to i32*
  store i32 0, i32* %127, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.26 = add i32 %reass.mul.i, %conv.i.26
  %idxprom193.i.26 = sext i32 %add192.i.26 to i64
  %arrayidx194.i.26 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.26
  %128 = bitcast float* %arrayidx194.i.26 to i32*
  store i32 0, i32* %128, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.27 = add i32 %reass.mul.i, %conv.i.27
  %idxprom193.i.27 = sext i32 %add192.i.27 to i64
  %arrayidx194.i.27 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.27
  %129 = bitcast float* %arrayidx194.i.27 to i32*
  store i32 0, i32* %129, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.28 = add i32 %reass.mul.i, %conv.i.28
  %idxprom193.i.28 = sext i32 %add192.i.28 to i64
  %arrayidx194.i.28 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.28
  %130 = bitcast float* %arrayidx194.i.28 to i32*
  store i32 0, i32* %130, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.29 = add i32 %reass.mul.i, %conv.i.29
  %idxprom193.i.29 = sext i32 %add192.i.29 to i64
  %arrayidx194.i.29 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.29
  %131 = bitcast float* %arrayidx194.i.29 to i32*
  store i32 0, i32* %131, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.30 = add i32 %reass.mul.i, %conv.i.30
  %idxprom193.i.30 = sext i32 %add192.i.30 to i64
  %arrayidx194.i.30 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.30
  %132 = bitcast float* %arrayidx194.i.30 to i32*
  store i32 0, i32* %132, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.31 = add i32 %reass.mul.i, %conv.i.31
  %idxprom193.i.31 = sext i32 %add192.i.31 to i64
  %arrayidx194.i.31 = getelementptr inbounds float, float* %1, i64 %idxprom193.i.31
  %133 = bitcast float* %arrayidx194.i.31 to i32*
  store i32 0, i32* %133, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i

pregion_for_end.i.loopexit:                       ; preds = %if.end.r_exit.i.us
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %pregion_for_end.i.loopexit, %pregion_for_entry.entry.i, %vector.body
  %134 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond3.not = icmp eq i64 %134, 8
  br i1 %exitcond3.not, label %Convolution3D_kernel.exit, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !21

Convolution3D_kernel.exit:                        ; preds = %pregion_for_end.i
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_Convolution3D_kernel_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float***
  %7 = load float**, float*** %6, align 8
  %8 = load float*, float** %7, align 8
  %9 = getelementptr i8*, i8** %0, i64 1
  %10 = bitcast i8** %9 to float***
  %11 = load float**, float*** %10, align 8
  %12 = load float*, float** %11, align 8
  %13 = getelementptr i8*, i8** %0, i64 2
  %14 = bitcast i8** %13 to i32**
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr i8*, i8** %0, i64 3
  %18 = bitcast i8** %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 4
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr i8*, i8** %0, i64 5
  %26 = bitcast i8** %25 to i32**
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %sub.i.i = add nsw i32 %16, -1
  %cmp.i.i = icmp sgt i32 %sub.i.i, %28
  %sub4.i.i = add nsw i32 %20, -1
  %sub8.i.i = add nsw i32 %24, -1
  %cmp12.i.i = icmp sgt i32 %28, 0
  %mul189.i.i = mul i32 %28, %20
  %sub20.i.i = add nsw i32 %28, -1
  %mul.i.i = mul nsw i32 %24, %20
  %mul21.i.i = mul nsw i32 %sub20.i.i, %mul.i.i
  %add27.i.i = add nuw nsw i32 %28, 1
  %mul29.i.i = mul nsw i32 %add27.i.i, %mul.i.i
  %mul84.i.i = mul nsw i32 %28, %mul.i.i
  %29 = trunc i64 %3 to i32
  %30 = shl i32 %29, 3
  %31 = add i32 %mul189.i.i, %30
  %32 = mul i32 %24, %31
  %33 = trunc i64 %2 to i32
  %34 = shl i32 %33, 5
  %35 = add i32 %32, %34
  %36 = trunc i64 %mul.i.i.i to i32
  %37 = trunc i64 %mul.i.i.i to i32
  %38 = or i32 %37, 8
  %39 = trunc i64 %mul.i.i.i to i32
  %40 = or i32 %39, 16
  %41 = trunc i64 %mul.i.i.i to i32
  %42 = or i32 %41, 24
  %conv.i.i = trunc i64 %mul.i.i.i to i32
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.1 = or i32 %43, 1
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.2 = or i32 %44, 2
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.3 = or i32 %45, 3
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.4 = or i32 %46, 4
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.5 = or i32 %47, 5
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.6 = or i32 %48, 6
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.7 = or i32 %49, 7
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.8 = or i32 %50, 8
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.9 = or i32 %51, 9
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.10 = or i32 %52, 10
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.11 = or i32 %53, 11
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.12 = or i32 %54, 12
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.13 = or i32 %55, 13
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.14 = or i32 %56, 14
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.15 = or i32 %57, 15
  %58 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.16 = or i32 %58, 16
  %59 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.17 = or i32 %59, 17
  %60 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.18 = or i32 %60, 18
  %61 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.19 = or i32 %61, 19
  %62 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.20 = or i32 %62, 20
  %63 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.21 = or i32 %63, 21
  %64 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.22 = or i32 %64, 22
  %65 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.23 = or i32 %65, 23
  %66 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.24 = or i32 %66, 24
  %67 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.25 = or i32 %67, 25
  %68 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.26 = or i32 %68, 26
  %69 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.27 = or i32 %69, 27
  %70 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.28 = or i32 %70, 28
  %71 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.29 = or i32 %71, 29
  %72 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.30 = or i32 %72, 30
  %73 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.31 = or i32 %73, 31
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %152, %pregion_for_end.i.i ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %cmp5.i.i = icmp sgt i32 %sub4.i.i, %conv2.i.i
  %or.cond334.i.i = and i1 %cmp.i.i, %cmp5.i.i
  %cmp15.i.i = icmp sgt i32 %conv2.i.i, 0
  %reass.add.i.i = add i32 %mul189.i.i, %conv2.i.i
  %reass.mul.i.i = mul i32 %reass.add.i.i, %24
  %sub22.i.i = add nsw i32 %conv2.i.i, -1
  %mul23.i.i = mul nsw i32 %sub22.i.i, %24
  %add.i.i = add nsw i32 %mul23.i.i, %mul21.i.i
  %add32.i.i = add nsw i32 %mul23.i.i, %mul29.i.i
  %mul97.i.i = mul nsw i32 %24, %conv2.i.i
  %add107.i.i = add nuw nsw i32 %conv2.i.i, 1
  %mul108.i.i = mul nsw i32 %add107.i.i, %24
  br i1 %or.cond334.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.scevcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %pregion_for_entry.entry.i.i.us

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %74 = trunc i64 %_local_id_y.i.0 to i32
  %75 = mul i32 %24, %74
  %76 = add i32 %75, %35
  %77 = icmp sgt i32 %76, 2147483616
  br i1 %77, label %pregion_for_entry.entry.i.i, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck
  %78 = add i32 %reass.mul.i.i, %36
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %12, i64 %79
  %81 = bitcast float* %80 to <8 x i32>*
  store <8 x i32> zeroinitializer, <8 x i32>* %81, align 4, !tbaa !12, !llvm.access.group !16
  %82 = add i32 %reass.mul.i.i, %38
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %12, i64 %83
  %85 = bitcast float* %84 to <8 x i32>*
  store <8 x i32> zeroinitializer, <8 x i32>* %85, align 4, !tbaa !12, !llvm.access.group !16
  %86 = add i32 %reass.mul.i.i, %40
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %12, i64 %87
  %89 = bitcast float* %88 to <8 x i32>*
  store <8 x i32> zeroinitializer, <8 x i32>* %89, align 4, !tbaa !12, !llvm.access.group !16
  %90 = add i32 %reass.mul.i.i, %42
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %12, i64 %91
  %93 = bitcast float* %92 to <8 x i32>*
  store <8 x i32> zeroinitializer, <8 x i32>* %93, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %119, %if.end.r_exit.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp9.i.i.us = icmp sgt i32 %sub8.i.i, %conv.i.i.us
  %or.cond.i.i.us = and i1 %cmp12.i.i, %cmp9.i.i.us
  %or.cond195.i.i.us = and i1 %cmp15.i.i, %or.cond.i.i.us
  %cmp18.i.i.us = icmp sgt i32 %conv.i.i.us, 0
  %or.cond196.i.i.us = and i1 %cmp18.i.i.us, %or.cond195.i.i.us
  br i1 %or.cond196.i.i.us, label %if.then.i.i.us, label %if.else.i.i.us

if.else.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add192.i.i.us = add i32 %reass.mul.i.i, %conv.i.i.us
  %idxprom193.i.i.us = sext i32 %add192.i.i.us to i64
  br label %if.end.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %sub24.i.i.us = add nsw i32 %conv.i.i.us, -1
  %add25.i.i.us = add nsw i32 %sub24.i.i.us, %add.i.i
  %idxprom.i.i.us = sext i32 %add25.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us
  %94 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %add34.i.i.us = add nsw i32 %sub24.i.i.us, %add32.i.i
  %idxprom35.i.i.us = sext i32 %add34.i.i.us to i64
  %arrayidx36.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom35.i.i.us
  %95 = load float, float* %arrayidx36.i.i.us, align 4, !tbaa !12
  %mul37.i.i.us = fmul float %95, 4.000000e+00
  %96 = tail call float @llvm.fmuladd.f32(float %94, float 2.000000e+00, float %mul37.i.i.us) #2
  %97 = tail call float @llvm.fmuladd.f32(float %94, float 5.000000e+00, float %96) #2
  %98 = tail call float @llvm.fmuladd.f32(float %95, float 7.000000e+00, float %97) #2
  %99 = tail call float @llvm.fmuladd.f32(float %94, float -8.000000e+00, float %98) #2
  %100 = tail call float @llvm.fmuladd.f32(float %95, float 1.000000e+01, float %99) #2
  %add87.i.i.us = add i32 %mul84.i.i, %conv.i.i.us
  %add89.i.i.us = add i32 %add87.i.i.us, %mul23.i.i
  %idxprom90.i.i.us = sext i32 %add89.i.i.us to i64
  %arrayidx91.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom90.i.i.us
  %101 = load float, float* %arrayidx91.i.i.us, align 4, !tbaa !12
  %102 = tail call float @llvm.fmuladd.f32(float %101, float -3.000000e+00, float %100) #2
  %add100.i.i.us = add i32 %add87.i.i.us, %mul97.i.i
  %idxprom101.i.i.us = sext i32 %add100.i.i.us to i64
  %arrayidx102.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom101.i.i.us
  %103 = load float, float* %arrayidx102.i.i.us, align 4, !tbaa !12
  %104 = tail call float @llvm.fmuladd.f32(float %103, float 6.000000e+00, float %102) #2
  %add111.i.i.us = add i32 %add87.i.i.us, %mul108.i.i
  %idxprom112.i.i.us = sext i32 %add111.i.i.us to i64
  %arrayidx113.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom112.i.i.us
  %105 = load float, float* %arrayidx113.i.i.us, align 4, !tbaa !12
  %106 = tail call float @llvm.fmuladd.f32(float %105, float -9.000000e+00, float %104) #2
  %add121.i.i.us = add nuw nsw i32 %conv.i.i.us, 1
  %add122.i.i.us = add nsw i32 %add121.i.i.us, %add.i.i
  %idxprom123.i.i.us = sext i32 %add122.i.i.us to i64
  %arrayidx124.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom123.i.i.us
  %107 = load float, float* %arrayidx124.i.i.us, align 4, !tbaa !12
  %108 = tail call float @llvm.fmuladd.f32(float %107, float 2.000000e+00, float %106) #2
  %add133.i.i.us = add nsw i32 %add121.i.i.us, %add32.i.i
  %idxprom134.i.i.us = sext i32 %add133.i.i.us to i64
  %arrayidx135.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom134.i.i.us
  %109 = load float, float* %arrayidx135.i.i.us, align 4, !tbaa !12
  %110 = tail call float @llvm.fmuladd.f32(float %109, float 4.000000e+00, float %108) #2
  %add142.i.i.us = add i32 %add121.i.i.us, %mul21.i.i
  %add144.i.i.us = add i32 %add142.i.i.us, %mul97.i.i
  %idxprom145.i.i.us = sext i32 %add144.i.i.us to i64
  %arrayidx146.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom145.i.i.us
  %111 = load float, float* %arrayidx146.i.i.us, align 4, !tbaa !12
  %112 = tail call float @llvm.fmuladd.f32(float %111, float 5.000000e+00, float %110) #2
  %add153.i.i.us = add i32 %add121.i.i.us, %mul29.i.i
  %add155.i.i.us = add i32 %add153.i.i.us, %mul97.i.i
  %idxprom156.i.i.us = sext i32 %add155.i.i.us to i64
  %arrayidx157.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom156.i.i.us
  %113 = load float, float* %arrayidx157.i.i.us, align 4, !tbaa !12
  %114 = tail call float @llvm.fmuladd.f32(float %113, float 7.000000e+00, float %112) #2
  %add166.i.i.us = add i32 %add142.i.i.us, %mul108.i.i
  %idxprom167.i.i.us = sext i32 %add166.i.i.us to i64
  %arrayidx168.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom167.i.i.us
  %115 = load float, float* %arrayidx168.i.i.us, align 4, !tbaa !12
  %116 = tail call float @llvm.fmuladd.f32(float %115, float -8.000000e+00, float %114) #2
  %add177.i.i.us = add i32 %add153.i.i.us, %mul108.i.i
  %idxprom178.i.i.us = sext i32 %add177.i.i.us to i64
  %arrayidx179.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom178.i.i.us
  %117 = load float, float* %arrayidx179.i.i.us, align 4, !tbaa !12
  %118 = tail call float @llvm.fmuladd.f32(float %117, float 1.000000e+01, float %116) #2
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %if.then.i.i.us, %if.else.i.i.us
  %idxprom193.i.i.us.sink = phi i64 [ %idxprom101.i.i.us, %if.then.i.i.us ], [ %idxprom193.i.i.us, %if.else.i.i.us ]
  %.sink = phi float [ %118, %if.then.i.i.us ], [ 0.000000e+00, %if.else.i.i.us ]
  %arrayidx194.i.i.us = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.us.sink
  store float %.sink, float* %arrayidx194.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %119 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond2.not = icmp eq i64 %119, 32
  br i1 %exitcond2.not, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !19

pregion_for_entry.entry.i.i:                      ; preds = %vector.scevcheck
  %add192.i.i = add i32 %reass.mul.i.i, %conv.i.i
  %idxprom193.i.i = sext i32 %add192.i.i to i64
  %arrayidx194.i.i = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i
  %120 = bitcast float* %arrayidx194.i.i to i32*
  store i32 0, i32* %120, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.1 = add i32 %reass.mul.i.i, %conv.i.i.1
  %idxprom193.i.i.1 = sext i32 %add192.i.i.1 to i64
  %arrayidx194.i.i.1 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.1
  %121 = bitcast float* %arrayidx194.i.i.1 to i32*
  store i32 0, i32* %121, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.2 = add i32 %reass.mul.i.i, %conv.i.i.2
  %idxprom193.i.i.2 = sext i32 %add192.i.i.2 to i64
  %arrayidx194.i.i.2 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.2
  %122 = bitcast float* %arrayidx194.i.i.2 to i32*
  store i32 0, i32* %122, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.3 = add i32 %reass.mul.i.i, %conv.i.i.3
  %idxprom193.i.i.3 = sext i32 %add192.i.i.3 to i64
  %arrayidx194.i.i.3 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.3
  %123 = bitcast float* %arrayidx194.i.i.3 to i32*
  store i32 0, i32* %123, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.4 = add i32 %reass.mul.i.i, %conv.i.i.4
  %idxprom193.i.i.4 = sext i32 %add192.i.i.4 to i64
  %arrayidx194.i.i.4 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.4
  %124 = bitcast float* %arrayidx194.i.i.4 to i32*
  store i32 0, i32* %124, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.5 = add i32 %reass.mul.i.i, %conv.i.i.5
  %idxprom193.i.i.5 = sext i32 %add192.i.i.5 to i64
  %arrayidx194.i.i.5 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.5
  %125 = bitcast float* %arrayidx194.i.i.5 to i32*
  store i32 0, i32* %125, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.6 = add i32 %reass.mul.i.i, %conv.i.i.6
  %idxprom193.i.i.6 = sext i32 %add192.i.i.6 to i64
  %arrayidx194.i.i.6 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.6
  %126 = bitcast float* %arrayidx194.i.i.6 to i32*
  store i32 0, i32* %126, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.7 = add i32 %reass.mul.i.i, %conv.i.i.7
  %idxprom193.i.i.7 = sext i32 %add192.i.i.7 to i64
  %arrayidx194.i.i.7 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.7
  %127 = bitcast float* %arrayidx194.i.i.7 to i32*
  store i32 0, i32* %127, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.8 = add i32 %reass.mul.i.i, %conv.i.i.8
  %idxprom193.i.i.8 = sext i32 %add192.i.i.8 to i64
  %arrayidx194.i.i.8 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.8
  %128 = bitcast float* %arrayidx194.i.i.8 to i32*
  store i32 0, i32* %128, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.9 = add i32 %reass.mul.i.i, %conv.i.i.9
  %idxprom193.i.i.9 = sext i32 %add192.i.i.9 to i64
  %arrayidx194.i.i.9 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.9
  %129 = bitcast float* %arrayidx194.i.i.9 to i32*
  store i32 0, i32* %129, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.10 = add i32 %reass.mul.i.i, %conv.i.i.10
  %idxprom193.i.i.10 = sext i32 %add192.i.i.10 to i64
  %arrayidx194.i.i.10 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.10
  %130 = bitcast float* %arrayidx194.i.i.10 to i32*
  store i32 0, i32* %130, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.11 = add i32 %reass.mul.i.i, %conv.i.i.11
  %idxprom193.i.i.11 = sext i32 %add192.i.i.11 to i64
  %arrayidx194.i.i.11 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.11
  %131 = bitcast float* %arrayidx194.i.i.11 to i32*
  store i32 0, i32* %131, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.12 = add i32 %reass.mul.i.i, %conv.i.i.12
  %idxprom193.i.i.12 = sext i32 %add192.i.i.12 to i64
  %arrayidx194.i.i.12 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.12
  %132 = bitcast float* %arrayidx194.i.i.12 to i32*
  store i32 0, i32* %132, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.13 = add i32 %reass.mul.i.i, %conv.i.i.13
  %idxprom193.i.i.13 = sext i32 %add192.i.i.13 to i64
  %arrayidx194.i.i.13 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.13
  %133 = bitcast float* %arrayidx194.i.i.13 to i32*
  store i32 0, i32* %133, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.14 = add i32 %reass.mul.i.i, %conv.i.i.14
  %idxprom193.i.i.14 = sext i32 %add192.i.i.14 to i64
  %arrayidx194.i.i.14 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.14
  %134 = bitcast float* %arrayidx194.i.i.14 to i32*
  store i32 0, i32* %134, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.15 = add i32 %reass.mul.i.i, %conv.i.i.15
  %idxprom193.i.i.15 = sext i32 %add192.i.i.15 to i64
  %arrayidx194.i.i.15 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.15
  %135 = bitcast float* %arrayidx194.i.i.15 to i32*
  store i32 0, i32* %135, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.16 = add i32 %reass.mul.i.i, %conv.i.i.16
  %idxprom193.i.i.16 = sext i32 %add192.i.i.16 to i64
  %arrayidx194.i.i.16 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.16
  %136 = bitcast float* %arrayidx194.i.i.16 to i32*
  store i32 0, i32* %136, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.17 = add i32 %reass.mul.i.i, %conv.i.i.17
  %idxprom193.i.i.17 = sext i32 %add192.i.i.17 to i64
  %arrayidx194.i.i.17 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.17
  %137 = bitcast float* %arrayidx194.i.i.17 to i32*
  store i32 0, i32* %137, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.18 = add i32 %reass.mul.i.i, %conv.i.i.18
  %idxprom193.i.i.18 = sext i32 %add192.i.i.18 to i64
  %arrayidx194.i.i.18 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.18
  %138 = bitcast float* %arrayidx194.i.i.18 to i32*
  store i32 0, i32* %138, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.19 = add i32 %reass.mul.i.i, %conv.i.i.19
  %idxprom193.i.i.19 = sext i32 %add192.i.i.19 to i64
  %arrayidx194.i.i.19 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.19
  %139 = bitcast float* %arrayidx194.i.i.19 to i32*
  store i32 0, i32* %139, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.20 = add i32 %reass.mul.i.i, %conv.i.i.20
  %idxprom193.i.i.20 = sext i32 %add192.i.i.20 to i64
  %arrayidx194.i.i.20 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.20
  %140 = bitcast float* %arrayidx194.i.i.20 to i32*
  store i32 0, i32* %140, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.21 = add i32 %reass.mul.i.i, %conv.i.i.21
  %idxprom193.i.i.21 = sext i32 %add192.i.i.21 to i64
  %arrayidx194.i.i.21 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.21
  %141 = bitcast float* %arrayidx194.i.i.21 to i32*
  store i32 0, i32* %141, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.22 = add i32 %reass.mul.i.i, %conv.i.i.22
  %idxprom193.i.i.22 = sext i32 %add192.i.i.22 to i64
  %arrayidx194.i.i.22 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.22
  %142 = bitcast float* %arrayidx194.i.i.22 to i32*
  store i32 0, i32* %142, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.23 = add i32 %reass.mul.i.i, %conv.i.i.23
  %idxprom193.i.i.23 = sext i32 %add192.i.i.23 to i64
  %arrayidx194.i.i.23 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.23
  %143 = bitcast float* %arrayidx194.i.i.23 to i32*
  store i32 0, i32* %143, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.24 = add i32 %reass.mul.i.i, %conv.i.i.24
  %idxprom193.i.i.24 = sext i32 %add192.i.i.24 to i64
  %arrayidx194.i.i.24 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.24
  %144 = bitcast float* %arrayidx194.i.i.24 to i32*
  store i32 0, i32* %144, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.25 = add i32 %reass.mul.i.i, %conv.i.i.25
  %idxprom193.i.i.25 = sext i32 %add192.i.i.25 to i64
  %arrayidx194.i.i.25 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.25
  %145 = bitcast float* %arrayidx194.i.i.25 to i32*
  store i32 0, i32* %145, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.26 = add i32 %reass.mul.i.i, %conv.i.i.26
  %idxprom193.i.i.26 = sext i32 %add192.i.i.26 to i64
  %arrayidx194.i.i.26 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.26
  %146 = bitcast float* %arrayidx194.i.i.26 to i32*
  store i32 0, i32* %146, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.27 = add i32 %reass.mul.i.i, %conv.i.i.27
  %idxprom193.i.i.27 = sext i32 %add192.i.i.27 to i64
  %arrayidx194.i.i.27 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.27
  %147 = bitcast float* %arrayidx194.i.i.27 to i32*
  store i32 0, i32* %147, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.28 = add i32 %reass.mul.i.i, %conv.i.i.28
  %idxprom193.i.i.28 = sext i32 %add192.i.i.28 to i64
  %arrayidx194.i.i.28 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.28
  %148 = bitcast float* %arrayidx194.i.i.28 to i32*
  store i32 0, i32* %148, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.29 = add i32 %reass.mul.i.i, %conv.i.i.29
  %idxprom193.i.i.29 = sext i32 %add192.i.i.29 to i64
  %arrayidx194.i.i.29 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.29
  %149 = bitcast float* %arrayidx194.i.i.29 to i32*
  store i32 0, i32* %149, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.30 = add i32 %reass.mul.i.i, %conv.i.i.30
  %idxprom193.i.i.30 = sext i32 %add192.i.i.30 to i64
  %arrayidx194.i.i.30 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.30
  %150 = bitcast float* %arrayidx194.i.i.30 to i32*
  store i32 0, i32* %150, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.31 = add i32 %reass.mul.i.i, %conv.i.i.31
  %idxprom193.i.i.31 = sext i32 %add192.i.i.31 to i64
  %arrayidx194.i.i.31 = getelementptr inbounds float, float* %12, i64 %idxprom193.i.i.31
  %151 = bitcast float* %arrayidx194.i.i.31 to i32*
  store i32 0, i32* %151, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.r_exit.i.i.us
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %pregion_for_entry.entry.i.i, %vector.body
  %152 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond3.not = icmp eq i64 %152, 8
  br i1 %exitcond3.not, label %_pocl_kernel_Convolution3D_kernel.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !21

_pocl_kernel_Convolution3D_kernel.exit:           ; preds = %pregion_for_end.i.i
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_Convolution3D_kernel_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 2
  %12 = bitcast i8** %11 to i32**
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr i8*, i8** %0, i64 3
  %16 = bitcast i8** %15 to i32**
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr i8*, i8** %0, i64 4
  %20 = bitcast i8** %19 to i32**
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr i8*, i8** %0, i64 5
  %24 = bitcast i8** %23 to i32**
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %25, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %sub.i.i = add nsw i32 %14, -1
  %cmp.i.i = icmp sgt i32 %sub.i.i, %26
  %sub4.i.i = add nsw i32 %18, -1
  %sub8.i.i = add nsw i32 %22, -1
  %cmp12.i.i = icmp sgt i32 %26, 0
  %mul189.i.i = mul i32 %26, %18
  %sub20.i.i = add nsw i32 %26, -1
  %mul.i.i = mul nsw i32 %22, %18
  %mul21.i.i = mul nsw i32 %sub20.i.i, %mul.i.i
  %add27.i.i = add nuw nsw i32 %26, 1
  %mul29.i.i = mul nsw i32 %add27.i.i, %mul.i.i
  %mul84.i.i = mul nsw i32 %26, %mul.i.i
  %27 = trunc i64 %3 to i32
  %28 = shl i32 %27, 3
  %29 = add i32 %mul189.i.i, %28
  %30 = mul i32 %22, %29
  %31 = trunc i64 %2 to i32
  %32 = shl i32 %31, 5
  %33 = add i32 %30, %32
  %34 = trunc i64 %mul.i.i.i to i32
  %35 = trunc i64 %mul.i.i.i to i32
  %36 = or i32 %35, 8
  %37 = trunc i64 %mul.i.i.i to i32
  %38 = or i32 %37, 16
  %39 = trunc i64 %mul.i.i.i to i32
  %40 = or i32 %39, 24
  %conv.i.i = trunc i64 %mul.i.i.i to i32
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.1 = or i32 %41, 1
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.2 = or i32 %42, 2
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.3 = or i32 %43, 3
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.4 = or i32 %44, 4
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.5 = or i32 %45, 5
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.6 = or i32 %46, 6
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.7 = or i32 %47, 7
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.8 = or i32 %48, 8
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.9 = or i32 %49, 9
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.10 = or i32 %50, 10
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.11 = or i32 %51, 11
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.12 = or i32 %52, 12
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.13 = or i32 %53, 13
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.14 = or i32 %54, 14
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.15 = or i32 %55, 15
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.16 = or i32 %56, 16
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.17 = or i32 %57, 17
  %58 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.18 = or i32 %58, 18
  %59 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.19 = or i32 %59, 19
  %60 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.20 = or i32 %60, 20
  %61 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.21 = or i32 %61, 21
  %62 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.22 = or i32 %62, 22
  %63 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.23 = or i32 %63, 23
  %64 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.24 = or i32 %64, 24
  %65 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.25 = or i32 %65, 25
  %66 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.26 = or i32 %66, 26
  %67 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.27 = or i32 %67, 27
  %68 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.28 = or i32 %68, 28
  %69 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.29 = or i32 %69, 29
  %70 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.30 = or i32 %70, 30
  %71 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.31 = or i32 %71, 31
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %150, %pregion_for_end.i.i ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %cmp5.i.i = icmp sgt i32 %sub4.i.i, %conv2.i.i
  %or.cond334.i.i = and i1 %cmp.i.i, %cmp5.i.i
  %cmp15.i.i = icmp sgt i32 %conv2.i.i, 0
  %reass.add.i.i = add i32 %mul189.i.i, %conv2.i.i
  %reass.mul.i.i = mul i32 %reass.add.i.i, %22
  %sub22.i.i = add nsw i32 %conv2.i.i, -1
  %mul23.i.i = mul nsw i32 %sub22.i.i, %22
  %add.i.i = add nsw i32 %mul23.i.i, %mul21.i.i
  %add32.i.i = add nsw i32 %mul23.i.i, %mul29.i.i
  %mul97.i.i = mul nsw i32 %22, %conv2.i.i
  %add107.i.i = add nuw nsw i32 %conv2.i.i, 1
  %mul108.i.i = mul nsw i32 %add107.i.i, %22
  br i1 %or.cond334.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.scevcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %pregion_for_entry.entry.i.i.us

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %72 = trunc i64 %_local_id_y.i.0 to i32
  %73 = mul i32 %22, %72
  %74 = add i32 %73, %33
  %75 = icmp sgt i32 %74, 2147483616
  br i1 %75, label %pregion_for_entry.entry.i.i, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck
  %76 = add i32 %reass.mul.i.i, %34
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %10, i64 %77
  %79 = bitcast float* %78 to <8 x i32>*
  store <8 x i32> zeroinitializer, <8 x i32>* %79, align 4, !tbaa !12, !llvm.access.group !16
  %80 = add i32 %reass.mul.i.i, %36
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %10, i64 %81
  %83 = bitcast float* %82 to <8 x i32>*
  store <8 x i32> zeroinitializer, <8 x i32>* %83, align 4, !tbaa !12, !llvm.access.group !16
  %84 = add i32 %reass.mul.i.i, %38
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %10, i64 %85
  %87 = bitcast float* %86 to <8 x i32>*
  store <8 x i32> zeroinitializer, <8 x i32>* %87, align 4, !tbaa !12, !llvm.access.group !16
  %88 = add i32 %reass.mul.i.i, %40
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %10, i64 %89
  %91 = bitcast float* %90 to <8 x i32>*
  store <8 x i32> zeroinitializer, <8 x i32>* %91, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %117, %if.end.r_exit.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp9.i.i.us = icmp sgt i32 %sub8.i.i, %conv.i.i.us
  %or.cond.i.i.us = and i1 %cmp12.i.i, %cmp9.i.i.us
  %or.cond195.i.i.us = and i1 %cmp15.i.i, %or.cond.i.i.us
  %cmp18.i.i.us = icmp sgt i32 %conv.i.i.us, 0
  %or.cond196.i.i.us = and i1 %cmp18.i.i.us, %or.cond195.i.i.us
  br i1 %or.cond196.i.i.us, label %if.then.i.i.us, label %if.else.i.i.us

if.else.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add192.i.i.us = add i32 %reass.mul.i.i, %conv.i.i.us
  %idxprom193.i.i.us = sext i32 %add192.i.i.us to i64
  br label %if.end.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %sub24.i.i.us = add nsw i32 %conv.i.i.us, -1
  %add25.i.i.us = add nsw i32 %sub24.i.i.us, %add.i.i
  %idxprom.i.i.us = sext i32 %add25.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us
  %92 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %add34.i.i.us = add nsw i32 %sub24.i.i.us, %add32.i.i
  %idxprom35.i.i.us = sext i32 %add34.i.i.us to i64
  %arrayidx36.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom35.i.i.us
  %93 = load float, float* %arrayidx36.i.i.us, align 4, !tbaa !12
  %mul37.i.i.us = fmul float %93, 4.000000e+00
  %94 = tail call float @llvm.fmuladd.f32(float %92, float 2.000000e+00, float %mul37.i.i.us) #2
  %95 = tail call float @llvm.fmuladd.f32(float %92, float 5.000000e+00, float %94) #2
  %96 = tail call float @llvm.fmuladd.f32(float %93, float 7.000000e+00, float %95) #2
  %97 = tail call float @llvm.fmuladd.f32(float %92, float -8.000000e+00, float %96) #2
  %98 = tail call float @llvm.fmuladd.f32(float %93, float 1.000000e+01, float %97) #2
  %add87.i.i.us = add i32 %mul84.i.i, %conv.i.i.us
  %add89.i.i.us = add i32 %add87.i.i.us, %mul23.i.i
  %idxprom90.i.i.us = sext i32 %add89.i.i.us to i64
  %arrayidx91.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom90.i.i.us
  %99 = load float, float* %arrayidx91.i.i.us, align 4, !tbaa !12
  %100 = tail call float @llvm.fmuladd.f32(float %99, float -3.000000e+00, float %98) #2
  %add100.i.i.us = add i32 %add87.i.i.us, %mul97.i.i
  %idxprom101.i.i.us = sext i32 %add100.i.i.us to i64
  %arrayidx102.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom101.i.i.us
  %101 = load float, float* %arrayidx102.i.i.us, align 4, !tbaa !12
  %102 = tail call float @llvm.fmuladd.f32(float %101, float 6.000000e+00, float %100) #2
  %add111.i.i.us = add i32 %add87.i.i.us, %mul108.i.i
  %idxprom112.i.i.us = sext i32 %add111.i.i.us to i64
  %arrayidx113.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom112.i.i.us
  %103 = load float, float* %arrayidx113.i.i.us, align 4, !tbaa !12
  %104 = tail call float @llvm.fmuladd.f32(float %103, float -9.000000e+00, float %102) #2
  %add121.i.i.us = add nuw nsw i32 %conv.i.i.us, 1
  %add122.i.i.us = add nsw i32 %add121.i.i.us, %add.i.i
  %idxprom123.i.i.us = sext i32 %add122.i.i.us to i64
  %arrayidx124.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom123.i.i.us
  %105 = load float, float* %arrayidx124.i.i.us, align 4, !tbaa !12
  %106 = tail call float @llvm.fmuladd.f32(float %105, float 2.000000e+00, float %104) #2
  %add133.i.i.us = add nsw i32 %add121.i.i.us, %add32.i.i
  %idxprom134.i.i.us = sext i32 %add133.i.i.us to i64
  %arrayidx135.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom134.i.i.us
  %107 = load float, float* %arrayidx135.i.i.us, align 4, !tbaa !12
  %108 = tail call float @llvm.fmuladd.f32(float %107, float 4.000000e+00, float %106) #2
  %add142.i.i.us = add i32 %add121.i.i.us, %mul21.i.i
  %add144.i.i.us = add i32 %add142.i.i.us, %mul97.i.i
  %idxprom145.i.i.us = sext i32 %add144.i.i.us to i64
  %arrayidx146.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom145.i.i.us
  %109 = load float, float* %arrayidx146.i.i.us, align 4, !tbaa !12
  %110 = tail call float @llvm.fmuladd.f32(float %109, float 5.000000e+00, float %108) #2
  %add153.i.i.us = add i32 %add121.i.i.us, %mul29.i.i
  %add155.i.i.us = add i32 %add153.i.i.us, %mul97.i.i
  %idxprom156.i.i.us = sext i32 %add155.i.i.us to i64
  %arrayidx157.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom156.i.i.us
  %111 = load float, float* %arrayidx157.i.i.us, align 4, !tbaa !12
  %112 = tail call float @llvm.fmuladd.f32(float %111, float 7.000000e+00, float %110) #2
  %add166.i.i.us = add i32 %add142.i.i.us, %mul108.i.i
  %idxprom167.i.i.us = sext i32 %add166.i.i.us to i64
  %arrayidx168.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom167.i.i.us
  %113 = load float, float* %arrayidx168.i.i.us, align 4, !tbaa !12
  %114 = tail call float @llvm.fmuladd.f32(float %113, float -8.000000e+00, float %112) #2
  %add177.i.i.us = add i32 %add153.i.i.us, %mul108.i.i
  %idxprom178.i.i.us = sext i32 %add177.i.i.us to i64
  %arrayidx179.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom178.i.i.us
  %115 = load float, float* %arrayidx179.i.i.us, align 4, !tbaa !12
  %116 = tail call float @llvm.fmuladd.f32(float %115, float 1.000000e+01, float %114) #2
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %if.then.i.i.us, %if.else.i.i.us
  %idxprom193.i.i.us.sink = phi i64 [ %idxprom101.i.i.us, %if.then.i.i.us ], [ %idxprom193.i.i.us, %if.else.i.i.us ]
  %.sink = phi float [ %116, %if.then.i.i.us ], [ 0.000000e+00, %if.else.i.i.us ]
  %arrayidx194.i.i.us = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.us.sink
  store float %.sink, float* %arrayidx194.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %117 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond2.not = icmp eq i64 %117, 32
  br i1 %exitcond2.not, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !19

pregion_for_entry.entry.i.i:                      ; preds = %vector.scevcheck
  %add192.i.i = add i32 %reass.mul.i.i, %conv.i.i
  %idxprom193.i.i = sext i32 %add192.i.i to i64
  %arrayidx194.i.i = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i
  %118 = bitcast float* %arrayidx194.i.i to i32*
  store i32 0, i32* %118, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.1 = add i32 %reass.mul.i.i, %conv.i.i.1
  %idxprom193.i.i.1 = sext i32 %add192.i.i.1 to i64
  %arrayidx194.i.i.1 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.1
  %119 = bitcast float* %arrayidx194.i.i.1 to i32*
  store i32 0, i32* %119, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.2 = add i32 %reass.mul.i.i, %conv.i.i.2
  %idxprom193.i.i.2 = sext i32 %add192.i.i.2 to i64
  %arrayidx194.i.i.2 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.2
  %120 = bitcast float* %arrayidx194.i.i.2 to i32*
  store i32 0, i32* %120, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.3 = add i32 %reass.mul.i.i, %conv.i.i.3
  %idxprom193.i.i.3 = sext i32 %add192.i.i.3 to i64
  %arrayidx194.i.i.3 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.3
  %121 = bitcast float* %arrayidx194.i.i.3 to i32*
  store i32 0, i32* %121, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.4 = add i32 %reass.mul.i.i, %conv.i.i.4
  %idxprom193.i.i.4 = sext i32 %add192.i.i.4 to i64
  %arrayidx194.i.i.4 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.4
  %122 = bitcast float* %arrayidx194.i.i.4 to i32*
  store i32 0, i32* %122, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.5 = add i32 %reass.mul.i.i, %conv.i.i.5
  %idxprom193.i.i.5 = sext i32 %add192.i.i.5 to i64
  %arrayidx194.i.i.5 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.5
  %123 = bitcast float* %arrayidx194.i.i.5 to i32*
  store i32 0, i32* %123, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.6 = add i32 %reass.mul.i.i, %conv.i.i.6
  %idxprom193.i.i.6 = sext i32 %add192.i.i.6 to i64
  %arrayidx194.i.i.6 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.6
  %124 = bitcast float* %arrayidx194.i.i.6 to i32*
  store i32 0, i32* %124, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.7 = add i32 %reass.mul.i.i, %conv.i.i.7
  %idxprom193.i.i.7 = sext i32 %add192.i.i.7 to i64
  %arrayidx194.i.i.7 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.7
  %125 = bitcast float* %arrayidx194.i.i.7 to i32*
  store i32 0, i32* %125, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.8 = add i32 %reass.mul.i.i, %conv.i.i.8
  %idxprom193.i.i.8 = sext i32 %add192.i.i.8 to i64
  %arrayidx194.i.i.8 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.8
  %126 = bitcast float* %arrayidx194.i.i.8 to i32*
  store i32 0, i32* %126, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.9 = add i32 %reass.mul.i.i, %conv.i.i.9
  %idxprom193.i.i.9 = sext i32 %add192.i.i.9 to i64
  %arrayidx194.i.i.9 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.9
  %127 = bitcast float* %arrayidx194.i.i.9 to i32*
  store i32 0, i32* %127, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.10 = add i32 %reass.mul.i.i, %conv.i.i.10
  %idxprom193.i.i.10 = sext i32 %add192.i.i.10 to i64
  %arrayidx194.i.i.10 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.10
  %128 = bitcast float* %arrayidx194.i.i.10 to i32*
  store i32 0, i32* %128, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.11 = add i32 %reass.mul.i.i, %conv.i.i.11
  %idxprom193.i.i.11 = sext i32 %add192.i.i.11 to i64
  %arrayidx194.i.i.11 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.11
  %129 = bitcast float* %arrayidx194.i.i.11 to i32*
  store i32 0, i32* %129, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.12 = add i32 %reass.mul.i.i, %conv.i.i.12
  %idxprom193.i.i.12 = sext i32 %add192.i.i.12 to i64
  %arrayidx194.i.i.12 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.12
  %130 = bitcast float* %arrayidx194.i.i.12 to i32*
  store i32 0, i32* %130, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.13 = add i32 %reass.mul.i.i, %conv.i.i.13
  %idxprom193.i.i.13 = sext i32 %add192.i.i.13 to i64
  %arrayidx194.i.i.13 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.13
  %131 = bitcast float* %arrayidx194.i.i.13 to i32*
  store i32 0, i32* %131, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.14 = add i32 %reass.mul.i.i, %conv.i.i.14
  %idxprom193.i.i.14 = sext i32 %add192.i.i.14 to i64
  %arrayidx194.i.i.14 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.14
  %132 = bitcast float* %arrayidx194.i.i.14 to i32*
  store i32 0, i32* %132, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.15 = add i32 %reass.mul.i.i, %conv.i.i.15
  %idxprom193.i.i.15 = sext i32 %add192.i.i.15 to i64
  %arrayidx194.i.i.15 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.15
  %133 = bitcast float* %arrayidx194.i.i.15 to i32*
  store i32 0, i32* %133, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.16 = add i32 %reass.mul.i.i, %conv.i.i.16
  %idxprom193.i.i.16 = sext i32 %add192.i.i.16 to i64
  %arrayidx194.i.i.16 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.16
  %134 = bitcast float* %arrayidx194.i.i.16 to i32*
  store i32 0, i32* %134, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.17 = add i32 %reass.mul.i.i, %conv.i.i.17
  %idxprom193.i.i.17 = sext i32 %add192.i.i.17 to i64
  %arrayidx194.i.i.17 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.17
  %135 = bitcast float* %arrayidx194.i.i.17 to i32*
  store i32 0, i32* %135, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.18 = add i32 %reass.mul.i.i, %conv.i.i.18
  %idxprom193.i.i.18 = sext i32 %add192.i.i.18 to i64
  %arrayidx194.i.i.18 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.18
  %136 = bitcast float* %arrayidx194.i.i.18 to i32*
  store i32 0, i32* %136, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.19 = add i32 %reass.mul.i.i, %conv.i.i.19
  %idxprom193.i.i.19 = sext i32 %add192.i.i.19 to i64
  %arrayidx194.i.i.19 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.19
  %137 = bitcast float* %arrayidx194.i.i.19 to i32*
  store i32 0, i32* %137, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.20 = add i32 %reass.mul.i.i, %conv.i.i.20
  %idxprom193.i.i.20 = sext i32 %add192.i.i.20 to i64
  %arrayidx194.i.i.20 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.20
  %138 = bitcast float* %arrayidx194.i.i.20 to i32*
  store i32 0, i32* %138, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.21 = add i32 %reass.mul.i.i, %conv.i.i.21
  %idxprom193.i.i.21 = sext i32 %add192.i.i.21 to i64
  %arrayidx194.i.i.21 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.21
  %139 = bitcast float* %arrayidx194.i.i.21 to i32*
  store i32 0, i32* %139, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.22 = add i32 %reass.mul.i.i, %conv.i.i.22
  %idxprom193.i.i.22 = sext i32 %add192.i.i.22 to i64
  %arrayidx194.i.i.22 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.22
  %140 = bitcast float* %arrayidx194.i.i.22 to i32*
  store i32 0, i32* %140, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.23 = add i32 %reass.mul.i.i, %conv.i.i.23
  %idxprom193.i.i.23 = sext i32 %add192.i.i.23 to i64
  %arrayidx194.i.i.23 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.23
  %141 = bitcast float* %arrayidx194.i.i.23 to i32*
  store i32 0, i32* %141, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.24 = add i32 %reass.mul.i.i, %conv.i.i.24
  %idxprom193.i.i.24 = sext i32 %add192.i.i.24 to i64
  %arrayidx194.i.i.24 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.24
  %142 = bitcast float* %arrayidx194.i.i.24 to i32*
  store i32 0, i32* %142, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.25 = add i32 %reass.mul.i.i, %conv.i.i.25
  %idxprom193.i.i.25 = sext i32 %add192.i.i.25 to i64
  %arrayidx194.i.i.25 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.25
  %143 = bitcast float* %arrayidx194.i.i.25 to i32*
  store i32 0, i32* %143, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.26 = add i32 %reass.mul.i.i, %conv.i.i.26
  %idxprom193.i.i.26 = sext i32 %add192.i.i.26 to i64
  %arrayidx194.i.i.26 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.26
  %144 = bitcast float* %arrayidx194.i.i.26 to i32*
  store i32 0, i32* %144, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.27 = add i32 %reass.mul.i.i, %conv.i.i.27
  %idxprom193.i.i.27 = sext i32 %add192.i.i.27 to i64
  %arrayidx194.i.i.27 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.27
  %145 = bitcast float* %arrayidx194.i.i.27 to i32*
  store i32 0, i32* %145, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.28 = add i32 %reass.mul.i.i, %conv.i.i.28
  %idxprom193.i.i.28 = sext i32 %add192.i.i.28 to i64
  %arrayidx194.i.i.28 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.28
  %146 = bitcast float* %arrayidx194.i.i.28 to i32*
  store i32 0, i32* %146, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.29 = add i32 %reass.mul.i.i, %conv.i.i.29
  %idxprom193.i.i.29 = sext i32 %add192.i.i.29 to i64
  %arrayidx194.i.i.29 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.29
  %147 = bitcast float* %arrayidx194.i.i.29 to i32*
  store i32 0, i32* %147, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.30 = add i32 %reass.mul.i.i, %conv.i.i.30
  %idxprom193.i.i.30 = sext i32 %add192.i.i.30 to i64
  %arrayidx194.i.i.30 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.30
  %148 = bitcast float* %arrayidx194.i.i.30 to i32*
  store i32 0, i32* %148, align 4, !tbaa !12, !llvm.access.group !16
  %add192.i.i.31 = add i32 %reass.mul.i.i, %conv.i.i.31
  %idxprom193.i.i.31 = sext i32 %add192.i.i.31 to i64
  %arrayidx194.i.i.31 = getelementptr inbounds float, float* %10, i64 %idxprom193.i.i.31
  %149 = bitcast float* %arrayidx194.i.i.31 to i32*
  store i32 0, i32* %149, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.r_exit.i.i.us
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %pregion_for_entry.entry.i.i, %vector.body
  %150 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond3.not = icmp eq i64 %150, 8
  br i1 %exitcond3.not, label %_pocl_kernel_Convolution3D_kernel.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !21

_pocl_kernel_Convolution3D_kernel.exit:           ; preds = %pregion_for_end.i.i
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
!5 = !{i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int", !"int", !"int"}
!8 = !{!"float*", !"float*", !"int", !"int", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !"", !""}
!10 = !{!"A", !"B", !"ni", !"nj", !"nk", !"i"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17, !18}
!17 = distinct !{}
!18 = distinct !{}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.parallel_accesses", !17}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.parallel_accesses", !18}
