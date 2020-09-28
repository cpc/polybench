; ModuleID = './KA/BHKEMAGMCBFLCOFGKKELDLCCFAPLFCEIFHLBN/syrk_kernel/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_syrk_kernel(float* nocapture readonly %0, float* nocapture %1, float %2, float %3, i32 %4, i32 %5, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %6, i64 %7, i64 %8, i64 %9) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %7, 5
  %mul3.i.i = shl i64 %8, 3
  %cmp742.i = icmp sgt i32 %4, 0
  %wide.trip.count.i = zext i32 %4 to i64
  %conv2.i.us = trunc i64 %mul3.i.i to i32
  %cmp.i.us = icmp slt i32 %conv2.i.us, %5
  %mul.i.us = mul nsw i32 %conv2.i.us, %5
  br i1 %cmp742.i, label %pregion_for_entry.pregion_for_init.i.us, label %pregion_for_entry.pregion_for_init.i.preheader

pregion_for_entry.pregion_for_init.i.preheader:   ; preds = %10
  br i1 %cmp.i.us, label %vector.scevcheck, label %pregion_for_end.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.preheader
  %11 = trunc i64 %8 to i32
  %12 = mul i32 %11, %5
  %13 = shl i32 %12, 3
  %14 = trunc i64 %7 to i32
  %15 = shl i32 %14, 5
  %16 = add i32 %13, %15
  %17 = icmp sgt i32 %16, 2147483616
  br i1 %17, label %pregion_for_entry.entry.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.us.preheader:           ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.us

vector.ph:                                        ; preds = %vector.scevcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert38 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat39 = shufflevector <8 x i32> %broadcast.splatinsert38, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert40 = insertelement <8 x float> undef, float %3, i32 0
  %broadcast.splat41 = shufflevector <8 x float> %broadcast.splatinsert40, <8 x float> undef, <8 x i32> zeroinitializer
  %18 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %19 = or <8 x i32> %18, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %20 = icmp sgt <8 x i32> %broadcast.splat39, %19
  %21 = extractelement <8 x i32> %19, i32 0
  %22 = add nsw i32 %mul.i.us, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %1, i64 %23
  %25 = bitcast float* %24 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %25, i32 4, <8 x i1> %20, <8 x float> undef), !tbaa !12
  %26 = fmul <8 x float> %wide.masked.load, %broadcast.splat41
  %27 = bitcast float* %24 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %26, <8 x float>* %27, i32 4, <8 x i1> %20), !tbaa !12, !llvm.access.group !16
  %28 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %29 = or <8 x i32> %28, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %30 = icmp sgt <8 x i32> %broadcast.splat39, %29
  %31 = extractelement <8 x i32> %29, i32 0
  %32 = add nsw i32 %mul.i.us, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %1, i64 %33
  %35 = bitcast float* %34 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %35, i32 4, <8 x i1> %30, <8 x float> undef), !tbaa !12
  %36 = fmul <8 x float> %wide.masked.load.1, %broadcast.splat41
  %37 = bitcast float* %34 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %36, <8 x float>* %37, i32 4, <8 x i1> %30), !tbaa !12, !llvm.access.group !16
  %38 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %39 = or <8 x i32> %38, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %40 = icmp sgt <8 x i32> %broadcast.splat39, %39
  %41 = extractelement <8 x i32> %39, i32 0
  %42 = add nsw i32 %mul.i.us, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %1, i64 %43
  %45 = bitcast float* %44 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %45, i32 4, <8 x i1> %40, <8 x float> undef), !tbaa !12
  %46 = fmul <8 x float> %wide.masked.load.2, %broadcast.splat41
  %47 = bitcast float* %44 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %46, <8 x float>* %47, i32 4, <8 x i1> %40), !tbaa !12, !llvm.access.group !16
  %48 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %49 = or <8 x i32> %48, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %50 = icmp sgt <8 x i32> %broadcast.splat39, %49
  %51 = extractelement <8 x i32> %49, i32 0
  %52 = add nsw i32 %mul.i.us, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %1, i64 %53
  %55 = bitcast float* %54 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %55, i32 4, <8 x i1> %50, <8 x float> undef), !tbaa !12
  %56 = fmul <8 x float> %wide.masked.load.3, %broadcast.splat41
  %57 = bitcast float* %54 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %56, <8 x float>* %57, i32 4, <8 x i1> %50), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i

pregion_for_entry.pregion_for_init.i.us:          ; preds = %10
  %mul9.i.us = mul nsw i32 %conv2.i.us, %4
  %58 = sext i32 %mul9.i.us to i64
  br i1 %cmp.i.us, label %pregion_for_entry.entry.i.us.us.preheader, label %pregion_for_end.i.us

pregion_for_entry.entry.i.us.us.preheader:        ; preds = %pregion_for_entry.pregion_for_init.i.us
  br label %pregion_for_entry.entry.i.us.us

pregion_for_end.i.us.loopexit:                    ; preds = %if.end.i.us.us
  br label %pregion_for_end.i.us

pregion_for_end.i.us:                             ; preds = %pregion_for_end.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.us
  %59 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.1 = or i32 %59, 1
  %cmp.i.us.1 = icmp slt i32 %conv2.i.us.1, %5
  %mul.i.us.1 = mul nsw i32 %conv2.i.us.1, %5
  %mul9.i.us.1 = mul nsw i32 %conv2.i.us.1, %4
  %60 = sext i32 %mul9.i.us.1 to i64
  br i1 %cmp.i.us.1, label %pregion_for_entry.entry.i.us.us.1.preheader, label %pregion_for_end.i.us.1

pregion_for_entry.entry.i.us.us.1.preheader:      ; preds = %pregion_for_end.i.us
  br label %pregion_for_entry.entry.i.us.us.1

pregion_for_entry.entry.i.us.us:                  ; preds = %if.end.i.us.us, %pregion_for_entry.entry.i.us.us.preheader
  %_local_id_x.0.us.us = phi i64 [ %63, %if.end.i.us.us ], [ 0, %pregion_for_entry.entry.i.us.us.preheader ]
  %add1.i.i.us.us = add nuw nsw i64 %_local_id_x.0.us.us, %mul.i.i
  %conv.i.us.us = trunc i64 %add1.i.i.us.us to i32
  %cmp4.i.us.us = icmp slt i32 %conv.i.us.us, %5
  br i1 %cmp4.i.us.us, label %if.then.i.us.us, label %if.end.i.us.us

if.then.i.us.us:                                  ; preds = %pregion_for_entry.entry.i.us.us
  %add.i.us.us = add nsw i32 %mul.i.us, %conv.i.us.us
  %idxprom.i.us.us = sext i32 %add.i.us.us to i64
  %arrayidx.i.us.us = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us
  %61 = load float, float* %arrayidx.i.us.us, align 4, !tbaa !12
  %mul6.i.us.us = fmul float %61, %3
  store float %mul6.i.us.us, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.us.us = mul nsw i32 %conv.i.us.us, %4
  %62 = sext i32 %mul14.i.us.us to i64
  br label %for.body.i.us.us

if.end.i.us.us.loopexit:                          ; preds = %for.body.i.us.us
  br label %if.end.i.us.us

if.end.i.us.us:                                   ; preds = %if.end.i.us.us.loopexit, %pregion_for_entry.entry.i.us.us
  %63 = add nuw nsw i64 %_local_id_x.0.us.us, 1
  %exitcond.not = icmp eq i64 %63, 32
  br i1 %exitcond.not, label %pregion_for_end.i.us.loopexit, label %pregion_for_entry.entry.i.us.us, !llvm.loop !19

for.body.i.us.us:                                 ; preds = %for.body.i.us.us, %if.then.i.us.us
  %indvars.iv.next.i3.us.us = phi i64 [ %indvars.iv.next.i.us.us, %for.body.i.us.us ], [ 0, %if.then.i.us.us ]
  %64 = phi float [ %69, %for.body.i.us.us ], [ %mul6.i.us.us, %if.then.i.us.us ]
  %65 = add nsw i64 %indvars.iv.next.i3.us.us, %58
  %arrayidx12.i.us.us = getelementptr inbounds float, float* %0, i64 %65
  %66 = load float, float* %arrayidx12.i.us.us, align 4, !tbaa !12
  %mul13.i.us.us = fmul float %66, %2
  %67 = add nsw i64 %indvars.iv.next.i3.us.us, %62
  %arrayidx17.i.us.us = getelementptr inbounds float, float* %0, i64 %67
  %68 = load float, float* %arrayidx17.i.us.us, align 4, !tbaa !12
  %69 = tail call float @llvm.fmuladd.f32(float %mul13.i.us.us, float %68, float %64) #2
  store float %69, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.next.i3.us.us, 1
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %if.end.i.us.us.loopexit, label %for.body.i.us.us, !llvm.loop !21

pregion_for_entry.entry.i.us:                     ; preds = %if.end.i.us.3237, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %530, %if.end.i.us.3237 ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp4.i.us = icmp slt i32 %conv.i.us, %5
  br i1 %cmp4.i.us, label %if.then.i.us, label %if.end.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %add.i.us = add nsw i32 %mul.i.us, %conv.i.us
  %idxprom.i.us = sext i32 %add.i.us to i64
  %arrayidx.i.us = getelementptr inbounds float, float* %1, i64 %idxprom.i.us
  %70 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %mul6.i.us = fmul float %70, %3
  store float %mul6.i.us, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us

if.end.i.us:                                      ; preds = %if.then.i.us, %pregion_for_entry.entry.i.us
  %71 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1206 = add nuw nsw i64 %71, %mul.i.i
  %conv.i.us.1207 = trunc i64 %add1.i.i.us.1206 to i32
  %cmp4.i.us.1208 = icmp slt i32 %conv.i.us.1207, %5
  br i1 %cmp4.i.us.1208, label %if.then.i.us.1214, label %if.end.i.us.1215

pregion_for_end.i.loopexit:                       ; preds = %if.end.i.us.3237
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %pregion_for_end.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.preheader
  %72 = trunc i64 %mul3.i.i to i32
  %conv2.i.1 = or i32 %72, 1
  %cmp.i.1 = icmp slt i32 %conv2.i.1, %5
  %mul.i.1 = mul nsw i32 %conv2.i.1, %5
  br i1 %cmp.i.1, label %vector.scevcheck49, label %pregion_for_end.i.1

vector.scevcheck49:                               ; preds = %pregion_for_end.i
  %73 = mul i32 %conv2.i.1, %5
  %74 = trunc i64 %7 to i32
  %75 = shl i32 %74, 5
  %76 = add i32 %73, %75
  %77 = icmp sgt i32 %76, 2147483616
  br i1 %77, label %pregion_for_entry.entry.i.us.1.preheader, label %vector.ph50

pregion_for_entry.entry.i.us.1.preheader:         ; preds = %vector.scevcheck49
  br label %pregion_for_entry.entry.i.us.1

vector.ph50:                                      ; preds = %vector.scevcheck49
  %broadcast.splatinsert57 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat58 = shufflevector <8 x i64> %broadcast.splatinsert57, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert59 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat60 = shufflevector <8 x i32> %broadcast.splatinsert59, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <8 x float> undef, float %3, i32 0
  %broadcast.splat63 = shufflevector <8 x float> %broadcast.splatinsert62, <8 x float> undef, <8 x i32> zeroinitializer
  %78 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %79 = or <8 x i32> %78, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %80 = icmp sgt <8 x i32> %broadcast.splat60, %79
  %81 = extractelement <8 x i32> %79, i32 0
  %82 = add nsw i32 %mul.i.1, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %1, i64 %83
  %85 = bitcast float* %84 to <8 x float>*
  %wide.masked.load61 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %85, i32 4, <8 x i1> %80, <8 x float> undef), !tbaa !12
  %86 = fmul <8 x float> %wide.masked.load61, %broadcast.splat63
  %87 = bitcast float* %84 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %86, <8 x float>* %87, i32 4, <8 x i1> %80), !tbaa !12, !llvm.access.group !16
  %88 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %89 = or <8 x i32> %88, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %90 = icmp sgt <8 x i32> %broadcast.splat60, %89
  %91 = extractelement <8 x i32> %89, i32 0
  %92 = add nsw i32 %mul.i.1, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %1, i64 %93
  %95 = bitcast float* %94 to <8 x float>*
  %wide.masked.load61.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %95, i32 4, <8 x i1> %90, <8 x float> undef), !tbaa !12
  %96 = fmul <8 x float> %wide.masked.load61.1, %broadcast.splat63
  %97 = bitcast float* %94 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %96, <8 x float>* %97, i32 4, <8 x i1> %90), !tbaa !12, !llvm.access.group !16
  %98 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %99 = or <8 x i32> %98, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %100 = icmp sgt <8 x i32> %broadcast.splat60, %99
  %101 = extractelement <8 x i32> %99, i32 0
  %102 = add nsw i32 %mul.i.1, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %1, i64 %103
  %105 = bitcast float* %104 to <8 x float>*
  %wide.masked.load61.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %105, i32 4, <8 x i1> %100, <8 x float> undef), !tbaa !12
  %106 = fmul <8 x float> %wide.masked.load61.2, %broadcast.splat63
  %107 = bitcast float* %104 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %106, <8 x float>* %107, i32 4, <8 x i1> %100), !tbaa !12, !llvm.access.group !16
  %108 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %109 = or <8 x i32> %108, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %110 = icmp sgt <8 x i32> %broadcast.splat60, %109
  %111 = extractelement <8 x i32> %109, i32 0
  %112 = add nsw i32 %mul.i.1, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %1, i64 %113
  %115 = bitcast float* %114 to <8 x float>*
  %wide.masked.load61.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %115, i32 4, <8 x i1> %110, <8 x float> undef), !tbaa !12
  %116 = fmul <8 x float> %wide.masked.load61.3, %broadcast.splat63
  %117 = bitcast float* %114 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %116, <8 x float>* %117, i32 4, <8 x i1> %110), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.1

syrk_kernel.exit.loopexit:                        ; preds = %if.end.i.us.us.7
  br label %syrk_kernel.exit

syrk_kernel.exit.loopexit238:                     ; preds = %if.end.i.us.7.3
  br label %syrk_kernel.exit

syrk_kernel.exit:                                 ; preds = %pregion_for_end.i.us.6, %vector.ph182, %pregion_for_end.i.6, %syrk_kernel.exit.loopexit238, %syrk_kernel.exit.loopexit
  ret void

pregion_for_entry.entry.i.us.1:                   ; preds = %if.end.i.us.1.3, %pregion_for_entry.entry.i.us.1.preheader
  %_local_id_x.0.us.1 = phi i64 [ %524, %if.end.i.us.1.3 ], [ 0, %pregion_for_entry.entry.i.us.1.preheader ]
  %add1.i.i.us.1 = add nuw nsw i64 %_local_id_x.0.us.1, %mul.i.i
  %conv.i.us.1 = trunc i64 %add1.i.i.us.1 to i32
  %cmp4.i.us.1 = icmp slt i32 %conv.i.us.1, %5
  br i1 %cmp4.i.us.1, label %if.then.i.us.1, label %if.end.i.us.1

if.then.i.us.1:                                   ; preds = %pregion_for_entry.entry.i.us.1
  %add.i.us.1 = add nsw i32 %mul.i.1, %conv.i.us.1
  %idxprom.i.us.1 = sext i32 %add.i.us.1 to i64
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.1
  %118 = load float, float* %arrayidx.i.us.1, align 4, !tbaa !12
  %mul6.i.us.1 = fmul float %118, %3
  store float %mul6.i.us.1, float* %arrayidx.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1

if.end.i.us.1:                                    ; preds = %if.then.i.us.1, %pregion_for_entry.entry.i.us.1
  %119 = or i64 %_local_id_x.0.us.1, 1
  %add1.i.i.us.1.1 = add nuw nsw i64 %119, %mul.i.i
  %conv.i.us.1.1 = trunc i64 %add1.i.i.us.1.1 to i32
  %cmp4.i.us.1.1 = icmp slt i32 %conv.i.us.1.1, %5
  br i1 %cmp4.i.us.1.1, label %if.then.i.us.1.1, label %if.end.i.us.1.1

pregion_for_end.i.1.loopexit:                     ; preds = %if.end.i.us.1.3
  br label %pregion_for_end.i.1

pregion_for_end.i.1:                              ; preds = %pregion_for_end.i.1.loopexit, %vector.ph50, %pregion_for_end.i
  %120 = trunc i64 %mul3.i.i to i32
  %conv2.i.2 = or i32 %120, 2
  %cmp.i.2 = icmp slt i32 %conv2.i.2, %5
  %mul.i.2 = mul nsw i32 %conv2.i.2, %5
  br i1 %cmp.i.2, label %vector.scevcheck71, label %pregion_for_end.i.2

vector.scevcheck71:                               ; preds = %pregion_for_end.i.1
  %121 = mul i32 %conv2.i.2, %5
  %122 = trunc i64 %7 to i32
  %123 = shl i32 %122, 5
  %124 = add i32 %121, %123
  %125 = icmp sgt i32 %124, 2147483616
  br i1 %125, label %pregion_for_entry.entry.i.us.2.preheader, label %vector.ph72

pregion_for_entry.entry.i.us.2.preheader:         ; preds = %vector.scevcheck71
  br label %pregion_for_entry.entry.i.us.2

vector.ph72:                                      ; preds = %vector.scevcheck71
  %broadcast.splatinsert79 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat80 = shufflevector <8 x i64> %broadcast.splatinsert79, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert81 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat82 = shufflevector <8 x i32> %broadcast.splatinsert81, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert84 = insertelement <8 x float> undef, float %3, i32 0
  %broadcast.splat85 = shufflevector <8 x float> %broadcast.splatinsert84, <8 x float> undef, <8 x i32> zeroinitializer
  %126 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %127 = or <8 x i32> %126, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %128 = icmp sgt <8 x i32> %broadcast.splat82, %127
  %129 = extractelement <8 x i32> %127, i32 0
  %130 = add nsw i32 %mul.i.2, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %1, i64 %131
  %133 = bitcast float* %132 to <8 x float>*
  %wide.masked.load83 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %133, i32 4, <8 x i1> %128, <8 x float> undef), !tbaa !12
  %134 = fmul <8 x float> %wide.masked.load83, %broadcast.splat85
  %135 = bitcast float* %132 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %134, <8 x float>* %135, i32 4, <8 x i1> %128), !tbaa !12, !llvm.access.group !16
  %136 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %137 = or <8 x i32> %136, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %138 = icmp sgt <8 x i32> %broadcast.splat82, %137
  %139 = extractelement <8 x i32> %137, i32 0
  %140 = add nsw i32 %mul.i.2, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %1, i64 %141
  %143 = bitcast float* %142 to <8 x float>*
  %wide.masked.load83.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %143, i32 4, <8 x i1> %138, <8 x float> undef), !tbaa !12
  %144 = fmul <8 x float> %wide.masked.load83.1, %broadcast.splat85
  %145 = bitcast float* %142 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %144, <8 x float>* %145, i32 4, <8 x i1> %138), !tbaa !12, !llvm.access.group !16
  %146 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %147 = or <8 x i32> %146, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %148 = icmp sgt <8 x i32> %broadcast.splat82, %147
  %149 = extractelement <8 x i32> %147, i32 0
  %150 = add nsw i32 %mul.i.2, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %1, i64 %151
  %153 = bitcast float* %152 to <8 x float>*
  %wide.masked.load83.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %153, i32 4, <8 x i1> %148, <8 x float> undef), !tbaa !12
  %154 = fmul <8 x float> %wide.masked.load83.2, %broadcast.splat85
  %155 = bitcast float* %152 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %154, <8 x float>* %155, i32 4, <8 x i1> %148), !tbaa !12, !llvm.access.group !16
  %156 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %157 = or <8 x i32> %156, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %158 = icmp sgt <8 x i32> %broadcast.splat82, %157
  %159 = extractelement <8 x i32> %157, i32 0
  %160 = add nsw i32 %mul.i.2, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %1, i64 %161
  %163 = bitcast float* %162 to <8 x float>*
  %wide.masked.load83.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %163, i32 4, <8 x i1> %158, <8 x float> undef), !tbaa !12
  %164 = fmul <8 x float> %wide.masked.load83.3, %broadcast.splat85
  %165 = bitcast float* %162 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %164, <8 x float>* %165, i32 4, <8 x i1> %158), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.2

pregion_for_entry.entry.i.us.2:                   ; preds = %if.end.i.us.2.3, %pregion_for_entry.entry.i.us.2.preheader
  %_local_id_x.0.us.2 = phi i64 [ %518, %if.end.i.us.2.3 ], [ 0, %pregion_for_entry.entry.i.us.2.preheader ]
  %add1.i.i.us.2 = add nuw nsw i64 %_local_id_x.0.us.2, %mul.i.i
  %conv.i.us.2 = trunc i64 %add1.i.i.us.2 to i32
  %cmp4.i.us.2 = icmp slt i32 %conv.i.us.2, %5
  br i1 %cmp4.i.us.2, label %if.then.i.us.2, label %if.end.i.us.2

if.then.i.us.2:                                   ; preds = %pregion_for_entry.entry.i.us.2
  %add.i.us.2 = add nsw i32 %mul.i.2, %conv.i.us.2
  %idxprom.i.us.2 = sext i32 %add.i.us.2 to i64
  %arrayidx.i.us.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.2
  %166 = load float, float* %arrayidx.i.us.2, align 4, !tbaa !12
  %mul6.i.us.2 = fmul float %166, %3
  store float %mul6.i.us.2, float* %arrayidx.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2

if.end.i.us.2:                                    ; preds = %if.then.i.us.2, %pregion_for_entry.entry.i.us.2
  %167 = or i64 %_local_id_x.0.us.2, 1
  %add1.i.i.us.2.1 = add nuw nsw i64 %167, %mul.i.i
  %conv.i.us.2.1 = trunc i64 %add1.i.i.us.2.1 to i32
  %cmp4.i.us.2.1 = icmp slt i32 %conv.i.us.2.1, %5
  br i1 %cmp4.i.us.2.1, label %if.then.i.us.2.1, label %if.end.i.us.2.1

pregion_for_end.i.2.loopexit:                     ; preds = %if.end.i.us.2.3
  br label %pregion_for_end.i.2

pregion_for_end.i.2:                              ; preds = %pregion_for_end.i.2.loopexit, %vector.ph72, %pregion_for_end.i.1
  %168 = trunc i64 %mul3.i.i to i32
  %conv2.i.3 = or i32 %168, 3
  %cmp.i.3 = icmp slt i32 %conv2.i.3, %5
  %mul.i.3 = mul nsw i32 %conv2.i.3, %5
  br i1 %cmp.i.3, label %vector.scevcheck93, label %pregion_for_end.i.3

vector.scevcheck93:                               ; preds = %pregion_for_end.i.2
  %169 = mul i32 %conv2.i.3, %5
  %170 = trunc i64 %7 to i32
  %171 = shl i32 %170, 5
  %172 = add i32 %169, %171
  %173 = icmp sgt i32 %172, 2147483616
  br i1 %173, label %pregion_for_entry.entry.i.us.3.preheader, label %vector.ph94

pregion_for_entry.entry.i.us.3.preheader:         ; preds = %vector.scevcheck93
  br label %pregion_for_entry.entry.i.us.3

vector.ph94:                                      ; preds = %vector.scevcheck93
  %broadcast.splatinsert101 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat102 = shufflevector <8 x i64> %broadcast.splatinsert101, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat104 = shufflevector <8 x i32> %broadcast.splatinsert103, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert106 = insertelement <8 x float> undef, float %3, i32 0
  %broadcast.splat107 = shufflevector <8 x float> %broadcast.splatinsert106, <8 x float> undef, <8 x i32> zeroinitializer
  %174 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %175 = or <8 x i32> %174, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %176 = icmp sgt <8 x i32> %broadcast.splat104, %175
  %177 = extractelement <8 x i32> %175, i32 0
  %178 = add nsw i32 %mul.i.3, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %1, i64 %179
  %181 = bitcast float* %180 to <8 x float>*
  %wide.masked.load105 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %181, i32 4, <8 x i1> %176, <8 x float> undef), !tbaa !12
  %182 = fmul <8 x float> %wide.masked.load105, %broadcast.splat107
  %183 = bitcast float* %180 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %182, <8 x float>* %183, i32 4, <8 x i1> %176), !tbaa !12, !llvm.access.group !16
  %184 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %185 = or <8 x i32> %184, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %186 = icmp sgt <8 x i32> %broadcast.splat104, %185
  %187 = extractelement <8 x i32> %185, i32 0
  %188 = add nsw i32 %mul.i.3, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %1, i64 %189
  %191 = bitcast float* %190 to <8 x float>*
  %wide.masked.load105.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %191, i32 4, <8 x i1> %186, <8 x float> undef), !tbaa !12
  %192 = fmul <8 x float> %wide.masked.load105.1, %broadcast.splat107
  %193 = bitcast float* %190 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %192, <8 x float>* %193, i32 4, <8 x i1> %186), !tbaa !12, !llvm.access.group !16
  %194 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %195 = or <8 x i32> %194, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %196 = icmp sgt <8 x i32> %broadcast.splat104, %195
  %197 = extractelement <8 x i32> %195, i32 0
  %198 = add nsw i32 %mul.i.3, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %1, i64 %199
  %201 = bitcast float* %200 to <8 x float>*
  %wide.masked.load105.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %201, i32 4, <8 x i1> %196, <8 x float> undef), !tbaa !12
  %202 = fmul <8 x float> %wide.masked.load105.2, %broadcast.splat107
  %203 = bitcast float* %200 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %202, <8 x float>* %203, i32 4, <8 x i1> %196), !tbaa !12, !llvm.access.group !16
  %204 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %205 = or <8 x i32> %204, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %206 = icmp sgt <8 x i32> %broadcast.splat104, %205
  %207 = extractelement <8 x i32> %205, i32 0
  %208 = add nsw i32 %mul.i.3, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %1, i64 %209
  %211 = bitcast float* %210 to <8 x float>*
  %wide.masked.load105.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %211, i32 4, <8 x i1> %206, <8 x float> undef), !tbaa !12
  %212 = fmul <8 x float> %wide.masked.load105.3, %broadcast.splat107
  %213 = bitcast float* %210 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %212, <8 x float>* %213, i32 4, <8 x i1> %206), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.3

pregion_for_entry.entry.i.us.3:                   ; preds = %if.end.i.us.3.3, %pregion_for_entry.entry.i.us.3.preheader
  %_local_id_x.0.us.3 = phi i64 [ %512, %if.end.i.us.3.3 ], [ 0, %pregion_for_entry.entry.i.us.3.preheader ]
  %add1.i.i.us.3 = add nuw nsw i64 %_local_id_x.0.us.3, %mul.i.i
  %conv.i.us.3 = trunc i64 %add1.i.i.us.3 to i32
  %cmp4.i.us.3 = icmp slt i32 %conv.i.us.3, %5
  br i1 %cmp4.i.us.3, label %if.then.i.us.3, label %if.end.i.us.3

if.then.i.us.3:                                   ; preds = %pregion_for_entry.entry.i.us.3
  %add.i.us.3 = add nsw i32 %mul.i.3, %conv.i.us.3
  %idxprom.i.us.3 = sext i32 %add.i.us.3 to i64
  %arrayidx.i.us.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.3
  %214 = load float, float* %arrayidx.i.us.3, align 4, !tbaa !12
  %mul6.i.us.3 = fmul float %214, %3
  store float %mul6.i.us.3, float* %arrayidx.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3

if.end.i.us.3:                                    ; preds = %if.then.i.us.3, %pregion_for_entry.entry.i.us.3
  %215 = or i64 %_local_id_x.0.us.3, 1
  %add1.i.i.us.3.1 = add nuw nsw i64 %215, %mul.i.i
  %conv.i.us.3.1 = trunc i64 %add1.i.i.us.3.1 to i32
  %cmp4.i.us.3.1 = icmp slt i32 %conv.i.us.3.1, %5
  br i1 %cmp4.i.us.3.1, label %if.then.i.us.3.1, label %if.end.i.us.3.1

pregion_for_end.i.3.loopexit:                     ; preds = %if.end.i.us.3.3
  br label %pregion_for_end.i.3

pregion_for_end.i.3:                              ; preds = %pregion_for_end.i.3.loopexit, %vector.ph94, %pregion_for_end.i.2
  %216 = trunc i64 %mul3.i.i to i32
  %conv2.i.4 = or i32 %216, 4
  %cmp.i.4 = icmp slt i32 %conv2.i.4, %5
  %mul.i.4 = mul nsw i32 %conv2.i.4, %5
  br i1 %cmp.i.4, label %vector.scevcheck115, label %pregion_for_end.i.4

vector.scevcheck115:                              ; preds = %pregion_for_end.i.3
  %217 = mul i32 %conv2.i.4, %5
  %218 = trunc i64 %7 to i32
  %219 = shl i32 %218, 5
  %220 = add i32 %217, %219
  %221 = icmp sgt i32 %220, 2147483616
  br i1 %221, label %pregion_for_entry.entry.i.us.4.preheader, label %vector.ph116

pregion_for_entry.entry.i.us.4.preheader:         ; preds = %vector.scevcheck115
  br label %pregion_for_entry.entry.i.us.4

vector.ph116:                                     ; preds = %vector.scevcheck115
  %broadcast.splatinsert123 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat124 = shufflevector <8 x i64> %broadcast.splatinsert123, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert125 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat126 = shufflevector <8 x i32> %broadcast.splatinsert125, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert128 = insertelement <8 x float> undef, float %3, i32 0
  %broadcast.splat129 = shufflevector <8 x float> %broadcast.splatinsert128, <8 x float> undef, <8 x i32> zeroinitializer
  %222 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %223 = or <8 x i32> %222, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %224 = icmp sgt <8 x i32> %broadcast.splat126, %223
  %225 = extractelement <8 x i32> %223, i32 0
  %226 = add nsw i32 %mul.i.4, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %1, i64 %227
  %229 = bitcast float* %228 to <8 x float>*
  %wide.masked.load127 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %229, i32 4, <8 x i1> %224, <8 x float> undef), !tbaa !12
  %230 = fmul <8 x float> %wide.masked.load127, %broadcast.splat129
  %231 = bitcast float* %228 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %230, <8 x float>* %231, i32 4, <8 x i1> %224), !tbaa !12, !llvm.access.group !16
  %232 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %233 = or <8 x i32> %232, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %234 = icmp sgt <8 x i32> %broadcast.splat126, %233
  %235 = extractelement <8 x i32> %233, i32 0
  %236 = add nsw i32 %mul.i.4, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %1, i64 %237
  %239 = bitcast float* %238 to <8 x float>*
  %wide.masked.load127.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %239, i32 4, <8 x i1> %234, <8 x float> undef), !tbaa !12
  %240 = fmul <8 x float> %wide.masked.load127.1, %broadcast.splat129
  %241 = bitcast float* %238 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %240, <8 x float>* %241, i32 4, <8 x i1> %234), !tbaa !12, !llvm.access.group !16
  %242 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %243 = or <8 x i32> %242, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %244 = icmp sgt <8 x i32> %broadcast.splat126, %243
  %245 = extractelement <8 x i32> %243, i32 0
  %246 = add nsw i32 %mul.i.4, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %1, i64 %247
  %249 = bitcast float* %248 to <8 x float>*
  %wide.masked.load127.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %249, i32 4, <8 x i1> %244, <8 x float> undef), !tbaa !12
  %250 = fmul <8 x float> %wide.masked.load127.2, %broadcast.splat129
  %251 = bitcast float* %248 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %250, <8 x float>* %251, i32 4, <8 x i1> %244), !tbaa !12, !llvm.access.group !16
  %252 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %253 = or <8 x i32> %252, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %254 = icmp sgt <8 x i32> %broadcast.splat126, %253
  %255 = extractelement <8 x i32> %253, i32 0
  %256 = add nsw i32 %mul.i.4, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %1, i64 %257
  %259 = bitcast float* %258 to <8 x float>*
  %wide.masked.load127.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %259, i32 4, <8 x i1> %254, <8 x float> undef), !tbaa !12
  %260 = fmul <8 x float> %wide.masked.load127.3, %broadcast.splat129
  %261 = bitcast float* %258 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %260, <8 x float>* %261, i32 4, <8 x i1> %254), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.4

pregion_for_entry.entry.i.us.4:                   ; preds = %if.end.i.us.4.3, %pregion_for_entry.entry.i.us.4.preheader
  %_local_id_x.0.us.4 = phi i64 [ %506, %if.end.i.us.4.3 ], [ 0, %pregion_for_entry.entry.i.us.4.preheader ]
  %add1.i.i.us.4 = add nuw nsw i64 %_local_id_x.0.us.4, %mul.i.i
  %conv.i.us.4 = trunc i64 %add1.i.i.us.4 to i32
  %cmp4.i.us.4 = icmp slt i32 %conv.i.us.4, %5
  br i1 %cmp4.i.us.4, label %if.then.i.us.4, label %if.end.i.us.4

if.then.i.us.4:                                   ; preds = %pregion_for_entry.entry.i.us.4
  %add.i.us.4 = add nsw i32 %mul.i.4, %conv.i.us.4
  %idxprom.i.us.4 = sext i32 %add.i.us.4 to i64
  %arrayidx.i.us.4 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.4
  %262 = load float, float* %arrayidx.i.us.4, align 4, !tbaa !12
  %mul6.i.us.4 = fmul float %262, %3
  store float %mul6.i.us.4, float* %arrayidx.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.4

if.end.i.us.4:                                    ; preds = %if.then.i.us.4, %pregion_for_entry.entry.i.us.4
  %263 = or i64 %_local_id_x.0.us.4, 1
  %add1.i.i.us.4.1 = add nuw nsw i64 %263, %mul.i.i
  %conv.i.us.4.1 = trunc i64 %add1.i.i.us.4.1 to i32
  %cmp4.i.us.4.1 = icmp slt i32 %conv.i.us.4.1, %5
  br i1 %cmp4.i.us.4.1, label %if.then.i.us.4.1, label %if.end.i.us.4.1

pregion_for_end.i.4.loopexit:                     ; preds = %if.end.i.us.4.3
  br label %pregion_for_end.i.4

pregion_for_end.i.4:                              ; preds = %pregion_for_end.i.4.loopexit, %vector.ph116, %pregion_for_end.i.3
  %264 = trunc i64 %mul3.i.i to i32
  %conv2.i.5 = or i32 %264, 5
  %cmp.i.5 = icmp slt i32 %conv2.i.5, %5
  %mul.i.5 = mul nsw i32 %conv2.i.5, %5
  br i1 %cmp.i.5, label %vector.scevcheck137, label %pregion_for_end.i.5

vector.scevcheck137:                              ; preds = %pregion_for_end.i.4
  %265 = mul i32 %conv2.i.5, %5
  %266 = trunc i64 %7 to i32
  %267 = shl i32 %266, 5
  %268 = add i32 %265, %267
  %269 = icmp sgt i32 %268, 2147483616
  br i1 %269, label %pregion_for_entry.entry.i.us.5.preheader, label %vector.ph138

pregion_for_entry.entry.i.us.5.preheader:         ; preds = %vector.scevcheck137
  br label %pregion_for_entry.entry.i.us.5

vector.ph138:                                     ; preds = %vector.scevcheck137
  %broadcast.splatinsert145 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat146 = shufflevector <8 x i64> %broadcast.splatinsert145, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert147 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat148 = shufflevector <8 x i32> %broadcast.splatinsert147, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert150 = insertelement <8 x float> undef, float %3, i32 0
  %broadcast.splat151 = shufflevector <8 x float> %broadcast.splatinsert150, <8 x float> undef, <8 x i32> zeroinitializer
  %270 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %271 = or <8 x i32> %270, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %272 = icmp sgt <8 x i32> %broadcast.splat148, %271
  %273 = extractelement <8 x i32> %271, i32 0
  %274 = add nsw i32 %mul.i.5, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %1, i64 %275
  %277 = bitcast float* %276 to <8 x float>*
  %wide.masked.load149 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %277, i32 4, <8 x i1> %272, <8 x float> undef), !tbaa !12
  %278 = fmul <8 x float> %wide.masked.load149, %broadcast.splat151
  %279 = bitcast float* %276 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %278, <8 x float>* %279, i32 4, <8 x i1> %272), !tbaa !12, !llvm.access.group !16
  %280 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %281 = or <8 x i32> %280, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %282 = icmp sgt <8 x i32> %broadcast.splat148, %281
  %283 = extractelement <8 x i32> %281, i32 0
  %284 = add nsw i32 %mul.i.5, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds float, float* %1, i64 %285
  %287 = bitcast float* %286 to <8 x float>*
  %wide.masked.load149.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %287, i32 4, <8 x i1> %282, <8 x float> undef), !tbaa !12
  %288 = fmul <8 x float> %wide.masked.load149.1, %broadcast.splat151
  %289 = bitcast float* %286 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %288, <8 x float>* %289, i32 4, <8 x i1> %282), !tbaa !12, !llvm.access.group !16
  %290 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %291 = or <8 x i32> %290, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %292 = icmp sgt <8 x i32> %broadcast.splat148, %291
  %293 = extractelement <8 x i32> %291, i32 0
  %294 = add nsw i32 %mul.i.5, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds float, float* %1, i64 %295
  %297 = bitcast float* %296 to <8 x float>*
  %wide.masked.load149.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %297, i32 4, <8 x i1> %292, <8 x float> undef), !tbaa !12
  %298 = fmul <8 x float> %wide.masked.load149.2, %broadcast.splat151
  %299 = bitcast float* %296 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %298, <8 x float>* %299, i32 4, <8 x i1> %292), !tbaa !12, !llvm.access.group !16
  %300 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %301 = or <8 x i32> %300, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %302 = icmp sgt <8 x i32> %broadcast.splat148, %301
  %303 = extractelement <8 x i32> %301, i32 0
  %304 = add nsw i32 %mul.i.5, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds float, float* %1, i64 %305
  %307 = bitcast float* %306 to <8 x float>*
  %wide.masked.load149.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %307, i32 4, <8 x i1> %302, <8 x float> undef), !tbaa !12
  %308 = fmul <8 x float> %wide.masked.load149.3, %broadcast.splat151
  %309 = bitcast float* %306 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %308, <8 x float>* %309, i32 4, <8 x i1> %302), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.5

pregion_for_entry.entry.i.us.5:                   ; preds = %if.end.i.us.5.3, %pregion_for_entry.entry.i.us.5.preheader
  %_local_id_x.0.us.5 = phi i64 [ %500, %if.end.i.us.5.3 ], [ 0, %pregion_for_entry.entry.i.us.5.preheader ]
  %add1.i.i.us.5 = add nuw nsw i64 %_local_id_x.0.us.5, %mul.i.i
  %conv.i.us.5 = trunc i64 %add1.i.i.us.5 to i32
  %cmp4.i.us.5 = icmp slt i32 %conv.i.us.5, %5
  br i1 %cmp4.i.us.5, label %if.then.i.us.5, label %if.end.i.us.5

if.then.i.us.5:                                   ; preds = %pregion_for_entry.entry.i.us.5
  %add.i.us.5 = add nsw i32 %mul.i.5, %conv.i.us.5
  %idxprom.i.us.5 = sext i32 %add.i.us.5 to i64
  %arrayidx.i.us.5 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.5
  %310 = load float, float* %arrayidx.i.us.5, align 4, !tbaa !12
  %mul6.i.us.5 = fmul float %310, %3
  store float %mul6.i.us.5, float* %arrayidx.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.5

if.end.i.us.5:                                    ; preds = %if.then.i.us.5, %pregion_for_entry.entry.i.us.5
  %311 = or i64 %_local_id_x.0.us.5, 1
  %add1.i.i.us.5.1 = add nuw nsw i64 %311, %mul.i.i
  %conv.i.us.5.1 = trunc i64 %add1.i.i.us.5.1 to i32
  %cmp4.i.us.5.1 = icmp slt i32 %conv.i.us.5.1, %5
  br i1 %cmp4.i.us.5.1, label %if.then.i.us.5.1, label %if.end.i.us.5.1

pregion_for_end.i.5.loopexit:                     ; preds = %if.end.i.us.5.3
  br label %pregion_for_end.i.5

pregion_for_end.i.5:                              ; preds = %pregion_for_end.i.5.loopexit, %vector.ph138, %pregion_for_end.i.4
  %312 = trunc i64 %mul3.i.i to i32
  %conv2.i.6 = or i32 %312, 6
  %cmp.i.6 = icmp slt i32 %conv2.i.6, %5
  %mul.i.6 = mul nsw i32 %conv2.i.6, %5
  br i1 %cmp.i.6, label %vector.scevcheck159, label %pregion_for_end.i.6

vector.scevcheck159:                              ; preds = %pregion_for_end.i.5
  %313 = mul i32 %conv2.i.6, %5
  %314 = trunc i64 %7 to i32
  %315 = shl i32 %314, 5
  %316 = add i32 %313, %315
  %317 = icmp sgt i32 %316, 2147483616
  br i1 %317, label %pregion_for_entry.entry.i.us.6.preheader, label %vector.ph160

pregion_for_entry.entry.i.us.6.preheader:         ; preds = %vector.scevcheck159
  br label %pregion_for_entry.entry.i.us.6

vector.ph160:                                     ; preds = %vector.scevcheck159
  %broadcast.splatinsert167 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat168 = shufflevector <8 x i64> %broadcast.splatinsert167, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert169 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat170 = shufflevector <8 x i32> %broadcast.splatinsert169, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <8 x float> undef, float %3, i32 0
  %broadcast.splat173 = shufflevector <8 x float> %broadcast.splatinsert172, <8 x float> undef, <8 x i32> zeroinitializer
  %318 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %319 = or <8 x i32> %318, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %320 = icmp sgt <8 x i32> %broadcast.splat170, %319
  %321 = extractelement <8 x i32> %319, i32 0
  %322 = add nsw i32 %mul.i.6, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds float, float* %1, i64 %323
  %325 = bitcast float* %324 to <8 x float>*
  %wide.masked.load171 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %325, i32 4, <8 x i1> %320, <8 x float> undef), !tbaa !12
  %326 = fmul <8 x float> %wide.masked.load171, %broadcast.splat173
  %327 = bitcast float* %324 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %326, <8 x float>* %327, i32 4, <8 x i1> %320), !tbaa !12, !llvm.access.group !16
  %328 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %329 = or <8 x i32> %328, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %330 = icmp sgt <8 x i32> %broadcast.splat170, %329
  %331 = extractelement <8 x i32> %329, i32 0
  %332 = add nsw i32 %mul.i.6, %331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds float, float* %1, i64 %333
  %335 = bitcast float* %334 to <8 x float>*
  %wide.masked.load171.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %335, i32 4, <8 x i1> %330, <8 x float> undef), !tbaa !12
  %336 = fmul <8 x float> %wide.masked.load171.1, %broadcast.splat173
  %337 = bitcast float* %334 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %336, <8 x float>* %337, i32 4, <8 x i1> %330), !tbaa !12, !llvm.access.group !16
  %338 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %339 = or <8 x i32> %338, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %340 = icmp sgt <8 x i32> %broadcast.splat170, %339
  %341 = extractelement <8 x i32> %339, i32 0
  %342 = add nsw i32 %mul.i.6, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds float, float* %1, i64 %343
  %345 = bitcast float* %344 to <8 x float>*
  %wide.masked.load171.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %345, i32 4, <8 x i1> %340, <8 x float> undef), !tbaa !12
  %346 = fmul <8 x float> %wide.masked.load171.2, %broadcast.splat173
  %347 = bitcast float* %344 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %346, <8 x float>* %347, i32 4, <8 x i1> %340), !tbaa !12, !llvm.access.group !16
  %348 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %349 = or <8 x i32> %348, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %350 = icmp sgt <8 x i32> %broadcast.splat170, %349
  %351 = extractelement <8 x i32> %349, i32 0
  %352 = add nsw i32 %mul.i.6, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds float, float* %1, i64 %353
  %355 = bitcast float* %354 to <8 x float>*
  %wide.masked.load171.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %355, i32 4, <8 x i1> %350, <8 x float> undef), !tbaa !12
  %356 = fmul <8 x float> %wide.masked.load171.3, %broadcast.splat173
  %357 = bitcast float* %354 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %356, <8 x float>* %357, i32 4, <8 x i1> %350), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.6

pregion_for_entry.entry.i.us.6:                   ; preds = %if.end.i.us.6.3, %pregion_for_entry.entry.i.us.6.preheader
  %_local_id_x.0.us.6 = phi i64 [ %494, %if.end.i.us.6.3 ], [ 0, %pregion_for_entry.entry.i.us.6.preheader ]
  %add1.i.i.us.6 = add nuw nsw i64 %_local_id_x.0.us.6, %mul.i.i
  %conv.i.us.6 = trunc i64 %add1.i.i.us.6 to i32
  %cmp4.i.us.6 = icmp slt i32 %conv.i.us.6, %5
  br i1 %cmp4.i.us.6, label %if.then.i.us.6, label %if.end.i.us.6

if.then.i.us.6:                                   ; preds = %pregion_for_entry.entry.i.us.6
  %add.i.us.6 = add nsw i32 %mul.i.6, %conv.i.us.6
  %idxprom.i.us.6 = sext i32 %add.i.us.6 to i64
  %arrayidx.i.us.6 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.6
  %358 = load float, float* %arrayidx.i.us.6, align 4, !tbaa !12
  %mul6.i.us.6 = fmul float %358, %3
  store float %mul6.i.us.6, float* %arrayidx.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.6

if.end.i.us.6:                                    ; preds = %if.then.i.us.6, %pregion_for_entry.entry.i.us.6
  %359 = or i64 %_local_id_x.0.us.6, 1
  %add1.i.i.us.6.1 = add nuw nsw i64 %359, %mul.i.i
  %conv.i.us.6.1 = trunc i64 %add1.i.i.us.6.1 to i32
  %cmp4.i.us.6.1 = icmp slt i32 %conv.i.us.6.1, %5
  br i1 %cmp4.i.us.6.1, label %if.then.i.us.6.1, label %if.end.i.us.6.1

pregion_for_end.i.6.loopexit:                     ; preds = %if.end.i.us.6.3
  br label %pregion_for_end.i.6

pregion_for_end.i.6:                              ; preds = %pregion_for_end.i.6.loopexit, %vector.ph160, %pregion_for_end.i.5
  %360 = trunc i64 %mul3.i.i to i32
  %conv2.i.7 = or i32 %360, 7
  %cmp.i.7 = icmp slt i32 %conv2.i.7, %5
  %mul.i.7 = mul nsw i32 %conv2.i.7, %5
  br i1 %cmp.i.7, label %vector.scevcheck181, label %syrk_kernel.exit

vector.scevcheck181:                              ; preds = %pregion_for_end.i.6
  %361 = mul i32 %conv2.i.7, %5
  %362 = trunc i64 %7 to i32
  %363 = shl i32 %362, 5
  %364 = add i32 %361, %363
  %365 = icmp sgt i32 %364, 2147483616
  br i1 %365, label %pregion_for_entry.entry.i.us.7.preheader, label %vector.ph182

pregion_for_entry.entry.i.us.7.preheader:         ; preds = %vector.scevcheck181
  br label %pregion_for_entry.entry.i.us.7

vector.ph182:                                     ; preds = %vector.scevcheck181
  %broadcast.splatinsert189 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat190 = shufflevector <8 x i64> %broadcast.splatinsert189, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert191 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat192 = shufflevector <8 x i32> %broadcast.splatinsert191, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <8 x float> undef, float %3, i32 0
  %broadcast.splat195 = shufflevector <8 x float> %broadcast.splatinsert194, <8 x float> undef, <8 x i32> zeroinitializer
  %366 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %367 = or <8 x i32> %366, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %368 = icmp sgt <8 x i32> %broadcast.splat192, %367
  %369 = extractelement <8 x i32> %367, i32 0
  %370 = add nsw i32 %mul.i.7, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds float, float* %1, i64 %371
  %373 = bitcast float* %372 to <8 x float>*
  %wide.masked.load193 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %373, i32 4, <8 x i1> %368, <8 x float> undef), !tbaa !12
  %374 = fmul <8 x float> %wide.masked.load193, %broadcast.splat195
  %375 = bitcast float* %372 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %374, <8 x float>* %375, i32 4, <8 x i1> %368), !tbaa !12, !llvm.access.group !16
  %376 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %377 = or <8 x i32> %376, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %378 = icmp sgt <8 x i32> %broadcast.splat192, %377
  %379 = extractelement <8 x i32> %377, i32 0
  %380 = add nsw i32 %mul.i.7, %379
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds float, float* %1, i64 %381
  %383 = bitcast float* %382 to <8 x float>*
  %wide.masked.load193.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %383, i32 4, <8 x i1> %378, <8 x float> undef), !tbaa !12
  %384 = fmul <8 x float> %wide.masked.load193.1, %broadcast.splat195
  %385 = bitcast float* %382 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %384, <8 x float>* %385, i32 4, <8 x i1> %378), !tbaa !12, !llvm.access.group !16
  %386 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %387 = or <8 x i32> %386, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %388 = icmp sgt <8 x i32> %broadcast.splat192, %387
  %389 = extractelement <8 x i32> %387, i32 0
  %390 = add nsw i32 %mul.i.7, %389
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds float, float* %1, i64 %391
  %393 = bitcast float* %392 to <8 x float>*
  %wide.masked.load193.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %393, i32 4, <8 x i1> %388, <8 x float> undef), !tbaa !12
  %394 = fmul <8 x float> %wide.masked.load193.2, %broadcast.splat195
  %395 = bitcast float* %392 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %394, <8 x float>* %395, i32 4, <8 x i1> %388), !tbaa !12, !llvm.access.group !16
  %396 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %397 = or <8 x i32> %396, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %398 = icmp sgt <8 x i32> %broadcast.splat192, %397
  %399 = extractelement <8 x i32> %397, i32 0
  %400 = add nsw i32 %mul.i.7, %399
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds float, float* %1, i64 %401
  %403 = bitcast float* %402 to <8 x float>*
  %wide.masked.load193.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %403, i32 4, <8 x i1> %398, <8 x float> undef), !tbaa !12
  %404 = fmul <8 x float> %wide.masked.load193.3, %broadcast.splat195
  %405 = bitcast float* %402 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %404, <8 x float>* %405, i32 4, <8 x i1> %398), !tbaa !12, !llvm.access.group !16
  br label %syrk_kernel.exit

pregion_for_entry.entry.i.us.7:                   ; preds = %if.end.i.us.7.3, %pregion_for_entry.entry.i.us.7.preheader
  %_local_id_x.0.us.7 = phi i64 [ %488, %if.end.i.us.7.3 ], [ 0, %pregion_for_entry.entry.i.us.7.preheader ]
  %add1.i.i.us.7 = add nuw nsw i64 %_local_id_x.0.us.7, %mul.i.i
  %conv.i.us.7 = trunc i64 %add1.i.i.us.7 to i32
  %cmp4.i.us.7 = icmp slt i32 %conv.i.us.7, %5
  br i1 %cmp4.i.us.7, label %if.then.i.us.7, label %if.end.i.us.7

if.then.i.us.7:                                   ; preds = %pregion_for_entry.entry.i.us.7
  %add.i.us.7 = add nsw i32 %mul.i.7, %conv.i.us.7
  %idxprom.i.us.7 = sext i32 %add.i.us.7 to i64
  %arrayidx.i.us.7 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.7
  %406 = load float, float* %arrayidx.i.us.7, align 4, !tbaa !12
  %mul6.i.us.7 = fmul float %406, %3
  store float %mul6.i.us.7, float* %arrayidx.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.7

if.end.i.us.7:                                    ; preds = %if.then.i.us.7, %pregion_for_entry.entry.i.us.7
  %407 = or i64 %_local_id_x.0.us.7, 1
  %add1.i.i.us.7.1 = add nuw nsw i64 %407, %mul.i.i
  %conv.i.us.7.1 = trunc i64 %add1.i.i.us.7.1 to i32
  %cmp4.i.us.7.1 = icmp slt i32 %conv.i.us.7.1, %5
  br i1 %cmp4.i.us.7.1, label %if.then.i.us.7.1, label %if.end.i.us.7.1

pregion_for_entry.entry.i.us.us.1:                ; preds = %if.end.i.us.us.1, %pregion_for_entry.entry.i.us.us.1.preheader
  %_local_id_x.0.us.us.1 = phi i64 [ %416, %if.end.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.us.us.1.preheader ]
  %add1.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.0.us.us.1, %mul.i.i
  %conv.i.us.us.1 = trunc i64 %add1.i.i.us.us.1 to i32
  %cmp4.i.us.us.1 = icmp slt i32 %conv.i.us.us.1, %5
  br i1 %cmp4.i.us.us.1, label %if.then.i.us.us.1, label %if.end.i.us.us.1

if.then.i.us.us.1:                                ; preds = %pregion_for_entry.entry.i.us.us.1
  %add.i.us.us.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1
  %idxprom.i.us.us.1 = sext i32 %add.i.us.us.1 to i64
  %arrayidx.i.us.us.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.1
  %408 = load float, float* %arrayidx.i.us.us.1, align 4, !tbaa !12
  %mul6.i.us.us.1 = fmul float %408, %3
  store float %mul6.i.us.us.1, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.us.us.1 = mul nsw i32 %conv.i.us.us.1, %4
  %409 = sext i32 %mul14.i.us.us.1 to i64
  br label %for.body.i.us.us.1

for.body.i.us.us.1:                               ; preds = %for.body.i.us.us.1, %if.then.i.us.us.1
  %indvars.iv.next.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1, %for.body.i.us.us.1 ], [ 0, %if.then.i.us.us.1 ]
  %410 = phi float [ %415, %for.body.i.us.us.1 ], [ %mul6.i.us.us.1, %if.then.i.us.us.1 ]
  %411 = add nsw i64 %indvars.iv.next.i3.us.us.1, %60
  %arrayidx12.i.us.us.1 = getelementptr inbounds float, float* %0, i64 %411
  %412 = load float, float* %arrayidx12.i.us.us.1, align 4, !tbaa !12
  %mul13.i.us.us.1 = fmul float %412, %2
  %413 = add nsw i64 %indvars.iv.next.i3.us.us.1, %409
  %arrayidx17.i.us.us.1 = getelementptr inbounds float, float* %0, i64 %413
  %414 = load float, float* %arrayidx17.i.us.us.1, align 4, !tbaa !12
  %415 = tail call float @llvm.fmuladd.f32(float %mul13.i.us.us.1, float %414, float %410) #2
  store float %415, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.1, 1
  %exitcond.not.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1, label %if.end.i.us.us.1.loopexit, label %for.body.i.us.us.1, !llvm.loop !21

if.end.i.us.us.1.loopexit:                        ; preds = %for.body.i.us.us.1
  br label %if.end.i.us.us.1

if.end.i.us.us.1:                                 ; preds = %if.end.i.us.us.1.loopexit, %pregion_for_entry.entry.i.us.us.1
  %416 = add nuw nsw i64 %_local_id_x.0.us.us.1, 1
  %exitcond.not.1 = icmp eq i64 %416, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.us.1.loopexit, label %pregion_for_entry.entry.i.us.us.1, !llvm.loop !19

pregion_for_end.i.us.1.loopexit:                  ; preds = %if.end.i.us.us.1
  br label %pregion_for_end.i.us.1

pregion_for_end.i.us.1:                           ; preds = %pregion_for_end.i.us.1.loopexit, %pregion_for_end.i.us
  %417 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.2 = or i32 %417, 2
  %cmp.i.us.2 = icmp slt i32 %conv2.i.us.2, %5
  %mul.i.us.2 = mul nsw i32 %conv2.i.us.2, %5
  %mul9.i.us.2 = mul nsw i32 %conv2.i.us.2, %4
  %418 = sext i32 %mul9.i.us.2 to i64
  br i1 %cmp.i.us.2, label %pregion_for_entry.entry.i.us.us.2.preheader, label %pregion_for_end.i.us.2

pregion_for_entry.entry.i.us.us.2.preheader:      ; preds = %pregion_for_end.i.us.1
  br label %pregion_for_entry.entry.i.us.us.2

pregion_for_entry.entry.i.us.us.2:                ; preds = %if.end.i.us.us.2, %pregion_for_entry.entry.i.us.us.2.preheader
  %_local_id_x.0.us.us.2 = phi i64 [ %427, %if.end.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.us.us.2.preheader ]
  %add1.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.0.us.us.2, %mul.i.i
  %conv.i.us.us.2 = trunc i64 %add1.i.i.us.us.2 to i32
  %cmp4.i.us.us.2 = icmp slt i32 %conv.i.us.us.2, %5
  br i1 %cmp4.i.us.us.2, label %if.then.i.us.us.2, label %if.end.i.us.us.2

if.then.i.us.us.2:                                ; preds = %pregion_for_entry.entry.i.us.us.2
  %add.i.us.us.2 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2
  %idxprom.i.us.us.2 = sext i32 %add.i.us.us.2 to i64
  %arrayidx.i.us.us.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.2
  %419 = load float, float* %arrayidx.i.us.us.2, align 4, !tbaa !12
  %mul6.i.us.us.2 = fmul float %419, %3
  store float %mul6.i.us.us.2, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.us.us.2 = mul nsw i32 %conv.i.us.us.2, %4
  %420 = sext i32 %mul14.i.us.us.2 to i64
  br label %for.body.i.us.us.2

for.body.i.us.us.2:                               ; preds = %for.body.i.us.us.2, %if.then.i.us.us.2
  %indvars.iv.next.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.us.us.2, %for.body.i.us.us.2 ], [ 0, %if.then.i.us.us.2 ]
  %421 = phi float [ %426, %for.body.i.us.us.2 ], [ %mul6.i.us.us.2, %if.then.i.us.us.2 ]
  %422 = add nsw i64 %indvars.iv.next.i3.us.us.2, %418
  %arrayidx12.i.us.us.2 = getelementptr inbounds float, float* %0, i64 %422
  %423 = load float, float* %arrayidx12.i.us.us.2, align 4, !tbaa !12
  %mul13.i.us.us.2 = fmul float %423, %2
  %424 = add nsw i64 %indvars.iv.next.i3.us.us.2, %420
  %arrayidx17.i.us.us.2 = getelementptr inbounds float, float* %0, i64 %424
  %425 = load float, float* %arrayidx17.i.us.us.2, align 4, !tbaa !12
  %426 = tail call float @llvm.fmuladd.f32(float %mul13.i.us.us.2, float %425, float %421) #2
  store float %426, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i3.us.us.2, 1
  %exitcond.not.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.us.us.2, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2, label %if.end.i.us.us.2.loopexit, label %for.body.i.us.us.2, !llvm.loop !21

if.end.i.us.us.2.loopexit:                        ; preds = %for.body.i.us.us.2
  br label %if.end.i.us.us.2

if.end.i.us.us.2:                                 ; preds = %if.end.i.us.us.2.loopexit, %pregion_for_entry.entry.i.us.us.2
  %427 = add nuw nsw i64 %_local_id_x.0.us.us.2, 1
  %exitcond.not.2 = icmp eq i64 %427, 32
  br i1 %exitcond.not.2, label %pregion_for_end.i.us.2.loopexit, label %pregion_for_entry.entry.i.us.us.2, !llvm.loop !19

pregion_for_end.i.us.2.loopexit:                  ; preds = %if.end.i.us.us.2
  br label %pregion_for_end.i.us.2

pregion_for_end.i.us.2:                           ; preds = %pregion_for_end.i.us.2.loopexit, %pregion_for_end.i.us.1
  %428 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.3 = or i32 %428, 3
  %cmp.i.us.3 = icmp slt i32 %conv2.i.us.3, %5
  %mul.i.us.3 = mul nsw i32 %conv2.i.us.3, %5
  %mul9.i.us.3 = mul nsw i32 %conv2.i.us.3, %4
  %429 = sext i32 %mul9.i.us.3 to i64
  br i1 %cmp.i.us.3, label %pregion_for_entry.entry.i.us.us.3.preheader, label %pregion_for_end.i.us.3

pregion_for_entry.entry.i.us.us.3.preheader:      ; preds = %pregion_for_end.i.us.2
  br label %pregion_for_entry.entry.i.us.us.3

pregion_for_entry.entry.i.us.us.3:                ; preds = %if.end.i.us.us.3, %pregion_for_entry.entry.i.us.us.3.preheader
  %_local_id_x.0.us.us.3 = phi i64 [ %438, %if.end.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.us.us.3.preheader ]
  %add1.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.0.us.us.3, %mul.i.i
  %conv.i.us.us.3 = trunc i64 %add1.i.i.us.us.3 to i32
  %cmp4.i.us.us.3 = icmp slt i32 %conv.i.us.us.3, %5
  br i1 %cmp4.i.us.us.3, label %if.then.i.us.us.3, label %if.end.i.us.us.3

if.then.i.us.us.3:                                ; preds = %pregion_for_entry.entry.i.us.us.3
  %add.i.us.us.3 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3
  %idxprom.i.us.us.3 = sext i32 %add.i.us.us.3 to i64
  %arrayidx.i.us.us.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.3
  %430 = load float, float* %arrayidx.i.us.us.3, align 4, !tbaa !12
  %mul6.i.us.us.3 = fmul float %430, %3
  store float %mul6.i.us.us.3, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.us.us.3 = mul nsw i32 %conv.i.us.us.3, %4
  %431 = sext i32 %mul14.i.us.us.3 to i64
  br label %for.body.i.us.us.3

for.body.i.us.us.3:                               ; preds = %for.body.i.us.us.3, %if.then.i.us.us.3
  %indvars.iv.next.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.us.us.3, %for.body.i.us.us.3 ], [ 0, %if.then.i.us.us.3 ]
  %432 = phi float [ %437, %for.body.i.us.us.3 ], [ %mul6.i.us.us.3, %if.then.i.us.us.3 ]
  %433 = add nsw i64 %indvars.iv.next.i3.us.us.3, %429
  %arrayidx12.i.us.us.3 = getelementptr inbounds float, float* %0, i64 %433
  %434 = load float, float* %arrayidx12.i.us.us.3, align 4, !tbaa !12
  %mul13.i.us.us.3 = fmul float %434, %2
  %435 = add nsw i64 %indvars.iv.next.i3.us.us.3, %431
  %arrayidx17.i.us.us.3 = getelementptr inbounds float, float* %0, i64 %435
  %436 = load float, float* %arrayidx17.i.us.us.3, align 4, !tbaa !12
  %437 = tail call float @llvm.fmuladd.f32(float %mul13.i.us.us.3, float %436, float %432) #2
  store float %437, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i3.us.us.3, 1
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3, label %if.end.i.us.us.3.loopexit, label %for.body.i.us.us.3, !llvm.loop !21

if.end.i.us.us.3.loopexit:                        ; preds = %for.body.i.us.us.3
  br label %if.end.i.us.us.3

if.end.i.us.us.3:                                 ; preds = %if.end.i.us.us.3.loopexit, %pregion_for_entry.entry.i.us.us.3
  %438 = add nuw nsw i64 %_local_id_x.0.us.us.3, 1
  %exitcond.not.3 = icmp eq i64 %438, 32
  br i1 %exitcond.not.3, label %pregion_for_end.i.us.3.loopexit, label %pregion_for_entry.entry.i.us.us.3, !llvm.loop !19

pregion_for_end.i.us.3.loopexit:                  ; preds = %if.end.i.us.us.3
  br label %pregion_for_end.i.us.3

pregion_for_end.i.us.3:                           ; preds = %pregion_for_end.i.us.3.loopexit, %pregion_for_end.i.us.2
  %439 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.4 = or i32 %439, 4
  %cmp.i.us.4 = icmp slt i32 %conv2.i.us.4, %5
  %mul.i.us.4 = mul nsw i32 %conv2.i.us.4, %5
  %mul9.i.us.4 = mul nsw i32 %conv2.i.us.4, %4
  %440 = sext i32 %mul9.i.us.4 to i64
  br i1 %cmp.i.us.4, label %pregion_for_entry.entry.i.us.us.4.preheader, label %pregion_for_end.i.us.4

pregion_for_entry.entry.i.us.us.4.preheader:      ; preds = %pregion_for_end.i.us.3
  br label %pregion_for_entry.entry.i.us.us.4

pregion_for_entry.entry.i.us.us.4:                ; preds = %if.end.i.us.us.4, %pregion_for_entry.entry.i.us.us.4.preheader
  %_local_id_x.0.us.us.4 = phi i64 [ %449, %if.end.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.us.us.4.preheader ]
  %add1.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.0.us.us.4, %mul.i.i
  %conv.i.us.us.4 = trunc i64 %add1.i.i.us.us.4 to i32
  %cmp4.i.us.us.4 = icmp slt i32 %conv.i.us.us.4, %5
  br i1 %cmp4.i.us.us.4, label %if.then.i.us.us.4, label %if.end.i.us.us.4

if.then.i.us.us.4:                                ; preds = %pregion_for_entry.entry.i.us.us.4
  %add.i.us.us.4 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4
  %idxprom.i.us.us.4 = sext i32 %add.i.us.us.4 to i64
  %arrayidx.i.us.us.4 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.4
  %441 = load float, float* %arrayidx.i.us.us.4, align 4, !tbaa !12
  %mul6.i.us.us.4 = fmul float %441, %3
  store float %mul6.i.us.us.4, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.us.us.4 = mul nsw i32 %conv.i.us.us.4, %4
  %442 = sext i32 %mul14.i.us.us.4 to i64
  br label %for.body.i.us.us.4

for.body.i.us.us.4:                               ; preds = %for.body.i.us.us.4, %if.then.i.us.us.4
  %indvars.iv.next.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.us.us.4, %for.body.i.us.us.4 ], [ 0, %if.then.i.us.us.4 ]
  %443 = phi float [ %448, %for.body.i.us.us.4 ], [ %mul6.i.us.us.4, %if.then.i.us.us.4 ]
  %444 = add nsw i64 %indvars.iv.next.i3.us.us.4, %440
  %arrayidx12.i.us.us.4 = getelementptr inbounds float, float* %0, i64 %444
  %445 = load float, float* %arrayidx12.i.us.us.4, align 4, !tbaa !12
  %mul13.i.us.us.4 = fmul float %445, %2
  %446 = add nsw i64 %indvars.iv.next.i3.us.us.4, %442
  %arrayidx17.i.us.us.4 = getelementptr inbounds float, float* %0, i64 %446
  %447 = load float, float* %arrayidx17.i.us.us.4, align 4, !tbaa !12
  %448 = tail call float @llvm.fmuladd.f32(float %mul13.i.us.us.4, float %447, float %443) #2
  store float %448, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i3.us.us.4, 1
  %exitcond.not.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.us.us.4, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4, label %if.end.i.us.us.4.loopexit, label %for.body.i.us.us.4, !llvm.loop !21

if.end.i.us.us.4.loopexit:                        ; preds = %for.body.i.us.us.4
  br label %if.end.i.us.us.4

if.end.i.us.us.4:                                 ; preds = %if.end.i.us.us.4.loopexit, %pregion_for_entry.entry.i.us.us.4
  %449 = add nuw nsw i64 %_local_id_x.0.us.us.4, 1
  %exitcond.not.4 = icmp eq i64 %449, 32
  br i1 %exitcond.not.4, label %pregion_for_end.i.us.4.loopexit, label %pregion_for_entry.entry.i.us.us.4, !llvm.loop !19

pregion_for_end.i.us.4.loopexit:                  ; preds = %if.end.i.us.us.4
  br label %pregion_for_end.i.us.4

pregion_for_end.i.us.4:                           ; preds = %pregion_for_end.i.us.4.loopexit, %pregion_for_end.i.us.3
  %450 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.5 = or i32 %450, 5
  %cmp.i.us.5 = icmp slt i32 %conv2.i.us.5, %5
  %mul.i.us.5 = mul nsw i32 %conv2.i.us.5, %5
  %mul9.i.us.5 = mul nsw i32 %conv2.i.us.5, %4
  %451 = sext i32 %mul9.i.us.5 to i64
  br i1 %cmp.i.us.5, label %pregion_for_entry.entry.i.us.us.5.preheader, label %pregion_for_end.i.us.5

pregion_for_entry.entry.i.us.us.5.preheader:      ; preds = %pregion_for_end.i.us.4
  br label %pregion_for_entry.entry.i.us.us.5

pregion_for_entry.entry.i.us.us.5:                ; preds = %if.end.i.us.us.5, %pregion_for_entry.entry.i.us.us.5.preheader
  %_local_id_x.0.us.us.5 = phi i64 [ %460, %if.end.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.us.us.5.preheader ]
  %add1.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.0.us.us.5, %mul.i.i
  %conv.i.us.us.5 = trunc i64 %add1.i.i.us.us.5 to i32
  %cmp4.i.us.us.5 = icmp slt i32 %conv.i.us.us.5, %5
  br i1 %cmp4.i.us.us.5, label %if.then.i.us.us.5, label %if.end.i.us.us.5

if.then.i.us.us.5:                                ; preds = %pregion_for_entry.entry.i.us.us.5
  %add.i.us.us.5 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5
  %idxprom.i.us.us.5 = sext i32 %add.i.us.us.5 to i64
  %arrayidx.i.us.us.5 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.5
  %452 = load float, float* %arrayidx.i.us.us.5, align 4, !tbaa !12
  %mul6.i.us.us.5 = fmul float %452, %3
  store float %mul6.i.us.us.5, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.us.us.5 = mul nsw i32 %conv.i.us.us.5, %4
  %453 = sext i32 %mul14.i.us.us.5 to i64
  br label %for.body.i.us.us.5

for.body.i.us.us.5:                               ; preds = %for.body.i.us.us.5, %if.then.i.us.us.5
  %indvars.iv.next.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.us.us.5, %for.body.i.us.us.5 ], [ 0, %if.then.i.us.us.5 ]
  %454 = phi float [ %459, %for.body.i.us.us.5 ], [ %mul6.i.us.us.5, %if.then.i.us.us.5 ]
  %455 = add nsw i64 %indvars.iv.next.i3.us.us.5, %451
  %arrayidx12.i.us.us.5 = getelementptr inbounds float, float* %0, i64 %455
  %456 = load float, float* %arrayidx12.i.us.us.5, align 4, !tbaa !12
  %mul13.i.us.us.5 = fmul float %456, %2
  %457 = add nsw i64 %indvars.iv.next.i3.us.us.5, %453
  %arrayidx17.i.us.us.5 = getelementptr inbounds float, float* %0, i64 %457
  %458 = load float, float* %arrayidx17.i.us.us.5, align 4, !tbaa !12
  %459 = tail call float @llvm.fmuladd.f32(float %mul13.i.us.us.5, float %458, float %454) #2
  store float %459, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i3.us.us.5, 1
  %exitcond.not.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.us.us.5, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5, label %if.end.i.us.us.5.loopexit, label %for.body.i.us.us.5, !llvm.loop !21

if.end.i.us.us.5.loopexit:                        ; preds = %for.body.i.us.us.5
  br label %if.end.i.us.us.5

if.end.i.us.us.5:                                 ; preds = %if.end.i.us.us.5.loopexit, %pregion_for_entry.entry.i.us.us.5
  %460 = add nuw nsw i64 %_local_id_x.0.us.us.5, 1
  %exitcond.not.5 = icmp eq i64 %460, 32
  br i1 %exitcond.not.5, label %pregion_for_end.i.us.5.loopexit, label %pregion_for_entry.entry.i.us.us.5, !llvm.loop !19

pregion_for_end.i.us.5.loopexit:                  ; preds = %if.end.i.us.us.5
  br label %pregion_for_end.i.us.5

pregion_for_end.i.us.5:                           ; preds = %pregion_for_end.i.us.5.loopexit, %pregion_for_end.i.us.4
  %461 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.6 = or i32 %461, 6
  %cmp.i.us.6 = icmp slt i32 %conv2.i.us.6, %5
  %mul.i.us.6 = mul nsw i32 %conv2.i.us.6, %5
  %mul9.i.us.6 = mul nsw i32 %conv2.i.us.6, %4
  %462 = sext i32 %mul9.i.us.6 to i64
  br i1 %cmp.i.us.6, label %pregion_for_entry.entry.i.us.us.6.preheader, label %pregion_for_end.i.us.6

pregion_for_entry.entry.i.us.us.6.preheader:      ; preds = %pregion_for_end.i.us.5
  br label %pregion_for_entry.entry.i.us.us.6

pregion_for_entry.entry.i.us.us.6:                ; preds = %if.end.i.us.us.6, %pregion_for_entry.entry.i.us.us.6.preheader
  %_local_id_x.0.us.us.6 = phi i64 [ %471, %if.end.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.us.us.6.preheader ]
  %add1.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.0.us.us.6, %mul.i.i
  %conv.i.us.us.6 = trunc i64 %add1.i.i.us.us.6 to i32
  %cmp4.i.us.us.6 = icmp slt i32 %conv.i.us.us.6, %5
  br i1 %cmp4.i.us.us.6, label %if.then.i.us.us.6, label %if.end.i.us.us.6

if.then.i.us.us.6:                                ; preds = %pregion_for_entry.entry.i.us.us.6
  %add.i.us.us.6 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6
  %idxprom.i.us.us.6 = sext i32 %add.i.us.us.6 to i64
  %arrayidx.i.us.us.6 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.6
  %463 = load float, float* %arrayidx.i.us.us.6, align 4, !tbaa !12
  %mul6.i.us.us.6 = fmul float %463, %3
  store float %mul6.i.us.us.6, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.us.us.6 = mul nsw i32 %conv.i.us.us.6, %4
  %464 = sext i32 %mul14.i.us.us.6 to i64
  br label %for.body.i.us.us.6

for.body.i.us.us.6:                               ; preds = %for.body.i.us.us.6, %if.then.i.us.us.6
  %indvars.iv.next.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.us.us.6, %for.body.i.us.us.6 ], [ 0, %if.then.i.us.us.6 ]
  %465 = phi float [ %470, %for.body.i.us.us.6 ], [ %mul6.i.us.us.6, %if.then.i.us.us.6 ]
  %466 = add nsw i64 %indvars.iv.next.i3.us.us.6, %462
  %arrayidx12.i.us.us.6 = getelementptr inbounds float, float* %0, i64 %466
  %467 = load float, float* %arrayidx12.i.us.us.6, align 4, !tbaa !12
  %mul13.i.us.us.6 = fmul float %467, %2
  %468 = add nsw i64 %indvars.iv.next.i3.us.us.6, %464
  %arrayidx17.i.us.us.6 = getelementptr inbounds float, float* %0, i64 %468
  %469 = load float, float* %arrayidx17.i.us.us.6, align 4, !tbaa !12
  %470 = tail call float @llvm.fmuladd.f32(float %mul13.i.us.us.6, float %469, float %465) #2
  store float %470, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i3.us.us.6, 1
  %exitcond.not.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.us.us.6, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6, label %if.end.i.us.us.6.loopexit, label %for.body.i.us.us.6, !llvm.loop !21

if.end.i.us.us.6.loopexit:                        ; preds = %for.body.i.us.us.6
  br label %if.end.i.us.us.6

if.end.i.us.us.6:                                 ; preds = %if.end.i.us.us.6.loopexit, %pregion_for_entry.entry.i.us.us.6
  %471 = add nuw nsw i64 %_local_id_x.0.us.us.6, 1
  %exitcond.not.6 = icmp eq i64 %471, 32
  br i1 %exitcond.not.6, label %pregion_for_end.i.us.6.loopexit, label %pregion_for_entry.entry.i.us.us.6, !llvm.loop !19

pregion_for_end.i.us.6.loopexit:                  ; preds = %if.end.i.us.us.6
  br label %pregion_for_end.i.us.6

pregion_for_end.i.us.6:                           ; preds = %pregion_for_end.i.us.6.loopexit, %pregion_for_end.i.us.5
  %472 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.7 = or i32 %472, 7
  %cmp.i.us.7 = icmp slt i32 %conv2.i.us.7, %5
  %mul.i.us.7 = mul nsw i32 %conv2.i.us.7, %5
  %mul9.i.us.7 = mul nsw i32 %conv2.i.us.7, %4
  %473 = sext i32 %mul9.i.us.7 to i64
  br i1 %cmp.i.us.7, label %pregion_for_entry.entry.i.us.us.7.preheader, label %syrk_kernel.exit

pregion_for_entry.entry.i.us.us.7.preheader:      ; preds = %pregion_for_end.i.us.6
  br label %pregion_for_entry.entry.i.us.us.7

pregion_for_entry.entry.i.us.us.7:                ; preds = %if.end.i.us.us.7, %pregion_for_entry.entry.i.us.us.7.preheader
  %_local_id_x.0.us.us.7 = phi i64 [ %482, %if.end.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.us.us.7.preheader ]
  %add1.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.0.us.us.7, %mul.i.i
  %conv.i.us.us.7 = trunc i64 %add1.i.i.us.us.7 to i32
  %cmp4.i.us.us.7 = icmp slt i32 %conv.i.us.us.7, %5
  br i1 %cmp4.i.us.us.7, label %if.then.i.us.us.7, label %if.end.i.us.us.7

if.then.i.us.us.7:                                ; preds = %pregion_for_entry.entry.i.us.us.7
  %add.i.us.us.7 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7
  %idxprom.i.us.us.7 = sext i32 %add.i.us.us.7 to i64
  %arrayidx.i.us.us.7 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.7
  %474 = load float, float* %arrayidx.i.us.us.7, align 4, !tbaa !12
  %mul6.i.us.us.7 = fmul float %474, %3
  store float %mul6.i.us.us.7, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.us.us.7 = mul nsw i32 %conv.i.us.us.7, %4
  %475 = sext i32 %mul14.i.us.us.7 to i64
  br label %for.body.i.us.us.7

for.body.i.us.us.7:                               ; preds = %for.body.i.us.us.7, %if.then.i.us.us.7
  %indvars.iv.next.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.us.us.7, %for.body.i.us.us.7 ], [ 0, %if.then.i.us.us.7 ]
  %476 = phi float [ %481, %for.body.i.us.us.7 ], [ %mul6.i.us.us.7, %if.then.i.us.us.7 ]
  %477 = add nsw i64 %indvars.iv.next.i3.us.us.7, %473
  %arrayidx12.i.us.us.7 = getelementptr inbounds float, float* %0, i64 %477
  %478 = load float, float* %arrayidx12.i.us.us.7, align 4, !tbaa !12
  %mul13.i.us.us.7 = fmul float %478, %2
  %479 = add nsw i64 %indvars.iv.next.i3.us.us.7, %475
  %arrayidx17.i.us.us.7 = getelementptr inbounds float, float* %0, i64 %479
  %480 = load float, float* %arrayidx17.i.us.us.7, align 4, !tbaa !12
  %481 = tail call float @llvm.fmuladd.f32(float %mul13.i.us.us.7, float %480, float %476) #2
  store float %481, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i3.us.us.7, 1
  %exitcond.not.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.us.us.7, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7, label %if.end.i.us.us.7.loopexit, label %for.body.i.us.us.7, !llvm.loop !21

if.end.i.us.us.7.loopexit:                        ; preds = %for.body.i.us.us.7
  br label %if.end.i.us.us.7

if.end.i.us.us.7:                                 ; preds = %if.end.i.us.us.7.loopexit, %pregion_for_entry.entry.i.us.us.7
  %482 = add nuw nsw i64 %_local_id_x.0.us.us.7, 1
  %exitcond.not.7 = icmp eq i64 %482, 32
  br i1 %exitcond.not.7, label %syrk_kernel.exit.loopexit, label %pregion_for_entry.entry.i.us.us.7, !llvm.loop !19

if.then.i.us.7.1:                                 ; preds = %if.end.i.us.7
  %add.i.us.7.1 = add nsw i32 %mul.i.7, %conv.i.us.7.1
  %idxprom.i.us.7.1 = sext i32 %add.i.us.7.1 to i64
  %arrayidx.i.us.7.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.7.1
  %483 = load float, float* %arrayidx.i.us.7.1, align 4, !tbaa !12
  %mul6.i.us.7.1 = fmul float %483, %3
  store float %mul6.i.us.7.1, float* %arrayidx.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.7.1

if.end.i.us.7.1:                                  ; preds = %if.then.i.us.7.1, %if.end.i.us.7
  %484 = or i64 %_local_id_x.0.us.7, 2
  %add1.i.i.us.7.2 = add nuw nsw i64 %484, %mul.i.i
  %conv.i.us.7.2 = trunc i64 %add1.i.i.us.7.2 to i32
  %cmp4.i.us.7.2 = icmp slt i32 %conv.i.us.7.2, %5
  br i1 %cmp4.i.us.7.2, label %if.then.i.us.7.2, label %if.end.i.us.7.2

if.then.i.us.7.2:                                 ; preds = %if.end.i.us.7.1
  %add.i.us.7.2 = add nsw i32 %mul.i.7, %conv.i.us.7.2
  %idxprom.i.us.7.2 = sext i32 %add.i.us.7.2 to i64
  %arrayidx.i.us.7.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.7.2
  %485 = load float, float* %arrayidx.i.us.7.2, align 4, !tbaa !12
  %mul6.i.us.7.2 = fmul float %485, %3
  store float %mul6.i.us.7.2, float* %arrayidx.i.us.7.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.7.2

if.end.i.us.7.2:                                  ; preds = %if.then.i.us.7.2, %if.end.i.us.7.1
  %486 = or i64 %_local_id_x.0.us.7, 3
  %add1.i.i.us.7.3 = add nuw nsw i64 %486, %mul.i.i
  %conv.i.us.7.3 = trunc i64 %add1.i.i.us.7.3 to i32
  %cmp4.i.us.7.3 = icmp slt i32 %conv.i.us.7.3, %5
  br i1 %cmp4.i.us.7.3, label %if.then.i.us.7.3, label %if.end.i.us.7.3

if.then.i.us.7.3:                                 ; preds = %if.end.i.us.7.2
  %add.i.us.7.3 = add nsw i32 %mul.i.7, %conv.i.us.7.3
  %idxprom.i.us.7.3 = sext i32 %add.i.us.7.3 to i64
  %arrayidx.i.us.7.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.7.3
  %487 = load float, float* %arrayidx.i.us.7.3, align 4, !tbaa !12
  %mul6.i.us.7.3 = fmul float %487, %3
  store float %mul6.i.us.7.3, float* %arrayidx.i.us.7.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.7.3

if.end.i.us.7.3:                                  ; preds = %if.then.i.us.7.3, %if.end.i.us.7.2
  %488 = add nuw nsw i64 %_local_id_x.0.us.7, 4
  %exitcond34.7.not.3 = icmp eq i64 %488, 32
  br i1 %exitcond34.7.not.3, label %syrk_kernel.exit.loopexit238, label %pregion_for_entry.entry.i.us.7, !llvm.loop !23

if.then.i.us.6.1:                                 ; preds = %if.end.i.us.6
  %add.i.us.6.1 = add nsw i32 %mul.i.6, %conv.i.us.6.1
  %idxprom.i.us.6.1 = sext i32 %add.i.us.6.1 to i64
  %arrayidx.i.us.6.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.6.1
  %489 = load float, float* %arrayidx.i.us.6.1, align 4, !tbaa !12
  %mul6.i.us.6.1 = fmul float %489, %3
  store float %mul6.i.us.6.1, float* %arrayidx.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.6.1

if.end.i.us.6.1:                                  ; preds = %if.then.i.us.6.1, %if.end.i.us.6
  %490 = or i64 %_local_id_x.0.us.6, 2
  %add1.i.i.us.6.2 = add nuw nsw i64 %490, %mul.i.i
  %conv.i.us.6.2 = trunc i64 %add1.i.i.us.6.2 to i32
  %cmp4.i.us.6.2 = icmp slt i32 %conv.i.us.6.2, %5
  br i1 %cmp4.i.us.6.2, label %if.then.i.us.6.2, label %if.end.i.us.6.2

if.then.i.us.6.2:                                 ; preds = %if.end.i.us.6.1
  %add.i.us.6.2 = add nsw i32 %mul.i.6, %conv.i.us.6.2
  %idxprom.i.us.6.2 = sext i32 %add.i.us.6.2 to i64
  %arrayidx.i.us.6.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.6.2
  %491 = load float, float* %arrayidx.i.us.6.2, align 4, !tbaa !12
  %mul6.i.us.6.2 = fmul float %491, %3
  store float %mul6.i.us.6.2, float* %arrayidx.i.us.6.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.6.2

if.end.i.us.6.2:                                  ; preds = %if.then.i.us.6.2, %if.end.i.us.6.1
  %492 = or i64 %_local_id_x.0.us.6, 3
  %add1.i.i.us.6.3 = add nuw nsw i64 %492, %mul.i.i
  %conv.i.us.6.3 = trunc i64 %add1.i.i.us.6.3 to i32
  %cmp4.i.us.6.3 = icmp slt i32 %conv.i.us.6.3, %5
  br i1 %cmp4.i.us.6.3, label %if.then.i.us.6.3, label %if.end.i.us.6.3

if.then.i.us.6.3:                                 ; preds = %if.end.i.us.6.2
  %add.i.us.6.3 = add nsw i32 %mul.i.6, %conv.i.us.6.3
  %idxprom.i.us.6.3 = sext i32 %add.i.us.6.3 to i64
  %arrayidx.i.us.6.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.6.3
  %493 = load float, float* %arrayidx.i.us.6.3, align 4, !tbaa !12
  %mul6.i.us.6.3 = fmul float %493, %3
  store float %mul6.i.us.6.3, float* %arrayidx.i.us.6.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.6.3

if.end.i.us.6.3:                                  ; preds = %if.then.i.us.6.3, %if.end.i.us.6.2
  %494 = add nuw nsw i64 %_local_id_x.0.us.6, 4
  %exitcond34.6.not.3 = icmp eq i64 %494, 32
  br i1 %exitcond34.6.not.3, label %pregion_for_end.i.6.loopexit, label %pregion_for_entry.entry.i.us.6, !llvm.loop !25

if.then.i.us.5.1:                                 ; preds = %if.end.i.us.5
  %add.i.us.5.1 = add nsw i32 %mul.i.5, %conv.i.us.5.1
  %idxprom.i.us.5.1 = sext i32 %add.i.us.5.1 to i64
  %arrayidx.i.us.5.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.5.1
  %495 = load float, float* %arrayidx.i.us.5.1, align 4, !tbaa !12
  %mul6.i.us.5.1 = fmul float %495, %3
  store float %mul6.i.us.5.1, float* %arrayidx.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.5.1

if.end.i.us.5.1:                                  ; preds = %if.then.i.us.5.1, %if.end.i.us.5
  %496 = or i64 %_local_id_x.0.us.5, 2
  %add1.i.i.us.5.2 = add nuw nsw i64 %496, %mul.i.i
  %conv.i.us.5.2 = trunc i64 %add1.i.i.us.5.2 to i32
  %cmp4.i.us.5.2 = icmp slt i32 %conv.i.us.5.2, %5
  br i1 %cmp4.i.us.5.2, label %if.then.i.us.5.2, label %if.end.i.us.5.2

if.then.i.us.5.2:                                 ; preds = %if.end.i.us.5.1
  %add.i.us.5.2 = add nsw i32 %mul.i.5, %conv.i.us.5.2
  %idxprom.i.us.5.2 = sext i32 %add.i.us.5.2 to i64
  %arrayidx.i.us.5.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.5.2
  %497 = load float, float* %arrayidx.i.us.5.2, align 4, !tbaa !12
  %mul6.i.us.5.2 = fmul float %497, %3
  store float %mul6.i.us.5.2, float* %arrayidx.i.us.5.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.5.2

if.end.i.us.5.2:                                  ; preds = %if.then.i.us.5.2, %if.end.i.us.5.1
  %498 = or i64 %_local_id_x.0.us.5, 3
  %add1.i.i.us.5.3 = add nuw nsw i64 %498, %mul.i.i
  %conv.i.us.5.3 = trunc i64 %add1.i.i.us.5.3 to i32
  %cmp4.i.us.5.3 = icmp slt i32 %conv.i.us.5.3, %5
  br i1 %cmp4.i.us.5.3, label %if.then.i.us.5.3, label %if.end.i.us.5.3

if.then.i.us.5.3:                                 ; preds = %if.end.i.us.5.2
  %add.i.us.5.3 = add nsw i32 %mul.i.5, %conv.i.us.5.3
  %idxprom.i.us.5.3 = sext i32 %add.i.us.5.3 to i64
  %arrayidx.i.us.5.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.5.3
  %499 = load float, float* %arrayidx.i.us.5.3, align 4, !tbaa !12
  %mul6.i.us.5.3 = fmul float %499, %3
  store float %mul6.i.us.5.3, float* %arrayidx.i.us.5.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.5.3

if.end.i.us.5.3:                                  ; preds = %if.then.i.us.5.3, %if.end.i.us.5.2
  %500 = add nuw nsw i64 %_local_id_x.0.us.5, 4
  %exitcond34.5.not.3 = icmp eq i64 %500, 32
  br i1 %exitcond34.5.not.3, label %pregion_for_end.i.5.loopexit, label %pregion_for_entry.entry.i.us.5, !llvm.loop !26

if.then.i.us.4.1:                                 ; preds = %if.end.i.us.4
  %add.i.us.4.1 = add nsw i32 %mul.i.4, %conv.i.us.4.1
  %idxprom.i.us.4.1 = sext i32 %add.i.us.4.1 to i64
  %arrayidx.i.us.4.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.4.1
  %501 = load float, float* %arrayidx.i.us.4.1, align 4, !tbaa !12
  %mul6.i.us.4.1 = fmul float %501, %3
  store float %mul6.i.us.4.1, float* %arrayidx.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.4.1

if.end.i.us.4.1:                                  ; preds = %if.then.i.us.4.1, %if.end.i.us.4
  %502 = or i64 %_local_id_x.0.us.4, 2
  %add1.i.i.us.4.2 = add nuw nsw i64 %502, %mul.i.i
  %conv.i.us.4.2 = trunc i64 %add1.i.i.us.4.2 to i32
  %cmp4.i.us.4.2 = icmp slt i32 %conv.i.us.4.2, %5
  br i1 %cmp4.i.us.4.2, label %if.then.i.us.4.2, label %if.end.i.us.4.2

if.then.i.us.4.2:                                 ; preds = %if.end.i.us.4.1
  %add.i.us.4.2 = add nsw i32 %mul.i.4, %conv.i.us.4.2
  %idxprom.i.us.4.2 = sext i32 %add.i.us.4.2 to i64
  %arrayidx.i.us.4.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.4.2
  %503 = load float, float* %arrayidx.i.us.4.2, align 4, !tbaa !12
  %mul6.i.us.4.2 = fmul float %503, %3
  store float %mul6.i.us.4.2, float* %arrayidx.i.us.4.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.4.2

if.end.i.us.4.2:                                  ; preds = %if.then.i.us.4.2, %if.end.i.us.4.1
  %504 = or i64 %_local_id_x.0.us.4, 3
  %add1.i.i.us.4.3 = add nuw nsw i64 %504, %mul.i.i
  %conv.i.us.4.3 = trunc i64 %add1.i.i.us.4.3 to i32
  %cmp4.i.us.4.3 = icmp slt i32 %conv.i.us.4.3, %5
  br i1 %cmp4.i.us.4.3, label %if.then.i.us.4.3, label %if.end.i.us.4.3

if.then.i.us.4.3:                                 ; preds = %if.end.i.us.4.2
  %add.i.us.4.3 = add nsw i32 %mul.i.4, %conv.i.us.4.3
  %idxprom.i.us.4.3 = sext i32 %add.i.us.4.3 to i64
  %arrayidx.i.us.4.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.4.3
  %505 = load float, float* %arrayidx.i.us.4.3, align 4, !tbaa !12
  %mul6.i.us.4.3 = fmul float %505, %3
  store float %mul6.i.us.4.3, float* %arrayidx.i.us.4.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.4.3

if.end.i.us.4.3:                                  ; preds = %if.then.i.us.4.3, %if.end.i.us.4.2
  %506 = add nuw nsw i64 %_local_id_x.0.us.4, 4
  %exitcond34.4.not.3 = icmp eq i64 %506, 32
  br i1 %exitcond34.4.not.3, label %pregion_for_end.i.4.loopexit, label %pregion_for_entry.entry.i.us.4, !llvm.loop !27

if.then.i.us.3.1:                                 ; preds = %if.end.i.us.3
  %add.i.us.3.1 = add nsw i32 %mul.i.3, %conv.i.us.3.1
  %idxprom.i.us.3.1 = sext i32 %add.i.us.3.1 to i64
  %arrayidx.i.us.3.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.3.1
  %507 = load float, float* %arrayidx.i.us.3.1, align 4, !tbaa !12
  %mul6.i.us.3.1 = fmul float %507, %3
  store float %mul6.i.us.3.1, float* %arrayidx.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3.1

if.end.i.us.3.1:                                  ; preds = %if.then.i.us.3.1, %if.end.i.us.3
  %508 = or i64 %_local_id_x.0.us.3, 2
  %add1.i.i.us.3.2 = add nuw nsw i64 %508, %mul.i.i
  %conv.i.us.3.2 = trunc i64 %add1.i.i.us.3.2 to i32
  %cmp4.i.us.3.2 = icmp slt i32 %conv.i.us.3.2, %5
  br i1 %cmp4.i.us.3.2, label %if.then.i.us.3.2, label %if.end.i.us.3.2

if.then.i.us.3.2:                                 ; preds = %if.end.i.us.3.1
  %add.i.us.3.2 = add nsw i32 %mul.i.3, %conv.i.us.3.2
  %idxprom.i.us.3.2 = sext i32 %add.i.us.3.2 to i64
  %arrayidx.i.us.3.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.3.2
  %509 = load float, float* %arrayidx.i.us.3.2, align 4, !tbaa !12
  %mul6.i.us.3.2 = fmul float %509, %3
  store float %mul6.i.us.3.2, float* %arrayidx.i.us.3.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3.2

if.end.i.us.3.2:                                  ; preds = %if.then.i.us.3.2, %if.end.i.us.3.1
  %510 = or i64 %_local_id_x.0.us.3, 3
  %add1.i.i.us.3.3 = add nuw nsw i64 %510, %mul.i.i
  %conv.i.us.3.3 = trunc i64 %add1.i.i.us.3.3 to i32
  %cmp4.i.us.3.3 = icmp slt i32 %conv.i.us.3.3, %5
  br i1 %cmp4.i.us.3.3, label %if.then.i.us.3.3, label %if.end.i.us.3.3

if.then.i.us.3.3:                                 ; preds = %if.end.i.us.3.2
  %add.i.us.3.3 = add nsw i32 %mul.i.3, %conv.i.us.3.3
  %idxprom.i.us.3.3 = sext i32 %add.i.us.3.3 to i64
  %arrayidx.i.us.3.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.3.3
  %511 = load float, float* %arrayidx.i.us.3.3, align 4, !tbaa !12
  %mul6.i.us.3.3 = fmul float %511, %3
  store float %mul6.i.us.3.3, float* %arrayidx.i.us.3.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3.3

if.end.i.us.3.3:                                  ; preds = %if.then.i.us.3.3, %if.end.i.us.3.2
  %512 = add nuw nsw i64 %_local_id_x.0.us.3, 4
  %exitcond34.3.not.3 = icmp eq i64 %512, 32
  br i1 %exitcond34.3.not.3, label %pregion_for_end.i.3.loopexit, label %pregion_for_entry.entry.i.us.3, !llvm.loop !28

if.then.i.us.2.1:                                 ; preds = %if.end.i.us.2
  %add.i.us.2.1 = add nsw i32 %mul.i.2, %conv.i.us.2.1
  %idxprom.i.us.2.1 = sext i32 %add.i.us.2.1 to i64
  %arrayidx.i.us.2.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.2.1
  %513 = load float, float* %arrayidx.i.us.2.1, align 4, !tbaa !12
  %mul6.i.us.2.1 = fmul float %513, %3
  store float %mul6.i.us.2.1, float* %arrayidx.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2.1

if.end.i.us.2.1:                                  ; preds = %if.then.i.us.2.1, %if.end.i.us.2
  %514 = or i64 %_local_id_x.0.us.2, 2
  %add1.i.i.us.2.2 = add nuw nsw i64 %514, %mul.i.i
  %conv.i.us.2.2 = trunc i64 %add1.i.i.us.2.2 to i32
  %cmp4.i.us.2.2 = icmp slt i32 %conv.i.us.2.2, %5
  br i1 %cmp4.i.us.2.2, label %if.then.i.us.2.2, label %if.end.i.us.2.2

if.then.i.us.2.2:                                 ; preds = %if.end.i.us.2.1
  %add.i.us.2.2 = add nsw i32 %mul.i.2, %conv.i.us.2.2
  %idxprom.i.us.2.2 = sext i32 %add.i.us.2.2 to i64
  %arrayidx.i.us.2.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.2.2
  %515 = load float, float* %arrayidx.i.us.2.2, align 4, !tbaa !12
  %mul6.i.us.2.2 = fmul float %515, %3
  store float %mul6.i.us.2.2, float* %arrayidx.i.us.2.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2.2

if.end.i.us.2.2:                                  ; preds = %if.then.i.us.2.2, %if.end.i.us.2.1
  %516 = or i64 %_local_id_x.0.us.2, 3
  %add1.i.i.us.2.3 = add nuw nsw i64 %516, %mul.i.i
  %conv.i.us.2.3 = trunc i64 %add1.i.i.us.2.3 to i32
  %cmp4.i.us.2.3 = icmp slt i32 %conv.i.us.2.3, %5
  br i1 %cmp4.i.us.2.3, label %if.then.i.us.2.3, label %if.end.i.us.2.3

if.then.i.us.2.3:                                 ; preds = %if.end.i.us.2.2
  %add.i.us.2.3 = add nsw i32 %mul.i.2, %conv.i.us.2.3
  %idxprom.i.us.2.3 = sext i32 %add.i.us.2.3 to i64
  %arrayidx.i.us.2.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.2.3
  %517 = load float, float* %arrayidx.i.us.2.3, align 4, !tbaa !12
  %mul6.i.us.2.3 = fmul float %517, %3
  store float %mul6.i.us.2.3, float* %arrayidx.i.us.2.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2.3

if.end.i.us.2.3:                                  ; preds = %if.then.i.us.2.3, %if.end.i.us.2.2
  %518 = add nuw nsw i64 %_local_id_x.0.us.2, 4
  %exitcond34.2.not.3 = icmp eq i64 %518, 32
  br i1 %exitcond34.2.not.3, label %pregion_for_end.i.2.loopexit, label %pregion_for_entry.entry.i.us.2, !llvm.loop !29

if.then.i.us.1.1:                                 ; preds = %if.end.i.us.1
  %add.i.us.1.1 = add nsw i32 %mul.i.1, %conv.i.us.1.1
  %idxprom.i.us.1.1 = sext i32 %add.i.us.1.1 to i64
  %arrayidx.i.us.1.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.1.1
  %519 = load float, float* %arrayidx.i.us.1.1, align 4, !tbaa !12
  %mul6.i.us.1.1 = fmul float %519, %3
  store float %mul6.i.us.1.1, float* %arrayidx.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1.1

if.end.i.us.1.1:                                  ; preds = %if.then.i.us.1.1, %if.end.i.us.1
  %520 = or i64 %_local_id_x.0.us.1, 2
  %add1.i.i.us.1.2 = add nuw nsw i64 %520, %mul.i.i
  %conv.i.us.1.2 = trunc i64 %add1.i.i.us.1.2 to i32
  %cmp4.i.us.1.2 = icmp slt i32 %conv.i.us.1.2, %5
  br i1 %cmp4.i.us.1.2, label %if.then.i.us.1.2, label %if.end.i.us.1.2

if.then.i.us.1.2:                                 ; preds = %if.end.i.us.1.1
  %add.i.us.1.2 = add nsw i32 %mul.i.1, %conv.i.us.1.2
  %idxprom.i.us.1.2 = sext i32 %add.i.us.1.2 to i64
  %arrayidx.i.us.1.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.1.2
  %521 = load float, float* %arrayidx.i.us.1.2, align 4, !tbaa !12
  %mul6.i.us.1.2 = fmul float %521, %3
  store float %mul6.i.us.1.2, float* %arrayidx.i.us.1.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1.2

if.end.i.us.1.2:                                  ; preds = %if.then.i.us.1.2, %if.end.i.us.1.1
  %522 = or i64 %_local_id_x.0.us.1, 3
  %add1.i.i.us.1.3 = add nuw nsw i64 %522, %mul.i.i
  %conv.i.us.1.3 = trunc i64 %add1.i.i.us.1.3 to i32
  %cmp4.i.us.1.3 = icmp slt i32 %conv.i.us.1.3, %5
  br i1 %cmp4.i.us.1.3, label %if.then.i.us.1.3, label %if.end.i.us.1.3

if.then.i.us.1.3:                                 ; preds = %if.end.i.us.1.2
  %add.i.us.1.3 = add nsw i32 %mul.i.1, %conv.i.us.1.3
  %idxprom.i.us.1.3 = sext i32 %add.i.us.1.3 to i64
  %arrayidx.i.us.1.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.1.3
  %523 = load float, float* %arrayidx.i.us.1.3, align 4, !tbaa !12
  %mul6.i.us.1.3 = fmul float %523, %3
  store float %mul6.i.us.1.3, float* %arrayidx.i.us.1.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1.3

if.end.i.us.1.3:                                  ; preds = %if.then.i.us.1.3, %if.end.i.us.1.2
  %524 = add nuw nsw i64 %_local_id_x.0.us.1, 4
  %exitcond34.1.not.3 = icmp eq i64 %524, 32
  br i1 %exitcond34.1.not.3, label %pregion_for_end.i.1.loopexit, label %pregion_for_entry.entry.i.us.1, !llvm.loop !30

if.then.i.us.1214:                                ; preds = %if.end.i.us
  %add.i.us.1210 = add nsw i32 %mul.i.us, %conv.i.us.1207
  %idxprom.i.us.1211 = sext i32 %add.i.us.1210 to i64
  %arrayidx.i.us.1212 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.1211
  %525 = load float, float* %arrayidx.i.us.1212, align 4, !tbaa !12
  %mul6.i.us.1213 = fmul float %525, %3
  store float %mul6.i.us.1213, float* %arrayidx.i.us.1212, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1215

if.end.i.us.1215:                                 ; preds = %if.then.i.us.1214, %if.end.i.us
  %526 = or i64 %_local_id_x.0.us, 2
  %add1.i.i.us.2217 = add nuw nsw i64 %526, %mul.i.i
  %conv.i.us.2218 = trunc i64 %add1.i.i.us.2217 to i32
  %cmp4.i.us.2219 = icmp slt i32 %conv.i.us.2218, %5
  br i1 %cmp4.i.us.2219, label %if.then.i.us.2225, label %if.end.i.us.2226

if.then.i.us.2225:                                ; preds = %if.end.i.us.1215
  %add.i.us.2221 = add nsw i32 %mul.i.us, %conv.i.us.2218
  %idxprom.i.us.2222 = sext i32 %add.i.us.2221 to i64
  %arrayidx.i.us.2223 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.2222
  %527 = load float, float* %arrayidx.i.us.2223, align 4, !tbaa !12
  %mul6.i.us.2224 = fmul float %527, %3
  store float %mul6.i.us.2224, float* %arrayidx.i.us.2223, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2226

if.end.i.us.2226:                                 ; preds = %if.then.i.us.2225, %if.end.i.us.1215
  %528 = or i64 %_local_id_x.0.us, 3
  %add1.i.i.us.3228 = add nuw nsw i64 %528, %mul.i.i
  %conv.i.us.3229 = trunc i64 %add1.i.i.us.3228 to i32
  %cmp4.i.us.3230 = icmp slt i32 %conv.i.us.3229, %5
  br i1 %cmp4.i.us.3230, label %if.then.i.us.3236, label %if.end.i.us.3237

if.then.i.us.3236:                                ; preds = %if.end.i.us.2226
  %add.i.us.3232 = add nsw i32 %mul.i.us, %conv.i.us.3229
  %idxprom.i.us.3233 = sext i32 %add.i.us.3232 to i64
  %arrayidx.i.us.3234 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.3233
  %529 = load float, float* %arrayidx.i.us.3234, align 4, !tbaa !12
  %mul6.i.us.3235 = fmul float %529, %3
  store float %mul6.i.us.3235, float* %arrayidx.i.us.3234, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3237

if.end.i.us.3237:                                 ; preds = %if.then.i.us.3236, %if.end.i.us.2226
  %530 = add nuw nsw i64 %_local_id_x.0.us, 4
  %exitcond34.not.3 = icmp eq i64 %530, 32
  br i1 %exitcond34.not.3, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !31
}

; Function Attrs: nounwind
define void @_pocl_kernel_syrk_kernel_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %18 = bitcast i8** %17 to float**
  %19 = load float*, float** %18, align 8
  %20 = load float, float* %19, align 4
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
  %cmp742.i.i = icmp sgt i32 %24, 0
  %wide.trip.count.i.i = zext i32 %24 to i64
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i.us = icmp sgt i32 %28, %conv2.i.i.us
  %mul.i.i.us = mul nsw i32 %28, %conv2.i.i.us
  br i1 %cmp742.i.i, label %pregion_for_entry.pregion_for_init.i.i.us, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  br i1 %cmp.i.i.us, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %29 = trunc i64 %3 to i32
  %30 = mul i32 %28, %29
  %31 = shl i32 %30, 3
  %32 = trunc i64 %2 to i32
  %33 = shl i32 %32, 5
  %34 = add i32 %31, %33
  %35 = icmp sgt i32 %34, 2147483616
  br i1 %35, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.ph:                                        ; preds = %vector.scevcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert38 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat39 = shufflevector <8 x i32> %broadcast.splatinsert38, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert40 = insertelement <8 x float> undef, float %20, i32 0
  %broadcast.splat41 = shufflevector <8 x float> %broadcast.splatinsert40, <8 x float> undef, <8 x i32> zeroinitializer
  %36 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %37 = or <8 x i32> %36, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %38 = icmp sgt <8 x i32> %broadcast.splat39, %37
  %39 = extractelement <8 x i32> %37, i32 0
  %40 = add nsw i32 %mul.i.i.us, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %12, i64 %41
  %43 = bitcast float* %42 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %43, i32 4, <8 x i1> %38, <8 x float> undef), !tbaa !12
  %44 = fmul <8 x float> %broadcast.splat41, %wide.masked.load
  %45 = bitcast float* %42 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %44, <8 x float>* %45, i32 4, <8 x i1> %38), !tbaa !12, !llvm.access.group !16
  %46 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %47 = or <8 x i32> %46, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %48 = icmp sgt <8 x i32> %broadcast.splat39, %47
  %49 = extractelement <8 x i32> %47, i32 0
  %50 = add nsw i32 %mul.i.i.us, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %12, i64 %51
  %53 = bitcast float* %52 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %53, i32 4, <8 x i1> %48, <8 x float> undef), !tbaa !12
  %54 = fmul <8 x float> %broadcast.splat41, %wide.masked.load.1
  %55 = bitcast float* %52 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %54, <8 x float>* %55, i32 4, <8 x i1> %48), !tbaa !12, !llvm.access.group !16
  %56 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %57 = or <8 x i32> %56, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %58 = icmp sgt <8 x i32> %broadcast.splat39, %57
  %59 = extractelement <8 x i32> %57, i32 0
  %60 = add nsw i32 %mul.i.i.us, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %12, i64 %61
  %63 = bitcast float* %62 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %63, i32 4, <8 x i1> %58, <8 x float> undef), !tbaa !12
  %64 = fmul <8 x float> %broadcast.splat41, %wide.masked.load.2
  %65 = bitcast float* %62 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %64, <8 x float>* %65, i32 4, <8 x i1> %58), !tbaa !12, !llvm.access.group !16
  %66 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %67 = or <8 x i32> %66, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %68 = icmp sgt <8 x i32> %broadcast.splat39, %67
  %69 = extractelement <8 x i32> %67, i32 0
  %70 = add nsw i32 %mul.i.i.us, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %12, i64 %71
  %73 = bitcast float* %72 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %73, i32 4, <8 x i1> %68, <8 x float> undef), !tbaa !12
  %74 = fmul <8 x float> %broadcast.splat41, %wide.masked.load.3
  %75 = bitcast float* %72 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %74, <8 x float>* %75, i32 4, <8 x i1> %68), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

pregion_for_entry.pregion_for_init.i.i.us:        ; preds = %5
  %mul9.i.i.us = mul nsw i32 %24, %conv2.i.i.us
  %76 = sext i32 %mul9.i.i.us to i64
  br i1 %cmp.i.i.us, label %pregion_for_entry.entry.i.i.us.us.preheader, label %pregion_for_end.i.i.us

pregion_for_entry.entry.i.i.us.us.preheader:      ; preds = %pregion_for_entry.pregion_for_init.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_end.i.i.us.loopexit:                  ; preds = %if.end.i.i.us.us
  br label %pregion_for_end.i.i.us

pregion_for_end.i.i.us:                           ; preds = %pregion_for_end.i.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.i.us
  %77 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %77, 1
  %cmp.i.i.us.1 = icmp sgt i32 %28, %conv2.i.i.us.1
  %mul.i.i.us.1 = mul nsw i32 %28, %conv2.i.i.us.1
  %mul9.i.i.us.1 = mul nsw i32 %24, %conv2.i.i.us.1
  %78 = sext i32 %mul9.i.i.us.1 to i64
  br i1 %cmp.i.i.us.1, label %pregion_for_entry.entry.i.i.us.us.1.preheader, label %pregion_for_end.i.i.us.1

pregion_for_entry.entry.i.i.us.us.1.preheader:    ; preds = %pregion_for_end.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.entry.i.i.us.us:                ; preds = %if.end.i.i.us.us, %pregion_for_entry.entry.i.i.us.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ %81, %if.end.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us.preheader ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %cmp4.i.i.us.us = icmp sgt i32 %28, %conv.i.i.us.us
  br i1 %cmp4.i.i.us.us, label %if.then.i.i.us.us, label %if.end.i.i.us.us

if.then.i.i.us.us:                                ; preds = %pregion_for_entry.entry.i.i.us.us
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us
  %79 = load float, float* %arrayidx.i.i.us.us, align 4, !tbaa !12
  %mul6.i.i.us.us = fmul float %20, %79
  store float %mul6.i.i.us.us, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.i.us.us = mul nsw i32 %24, %conv.i.i.us.us
  %80 = sext i32 %mul14.i.i.us.us to i64
  br label %for.body.i.i.us.us

if.end.i.i.us.us.loopexit:                        ; preds = %for.body.i.i.us.us
  br label %if.end.i.i.us.us

if.end.i.i.us.us:                                 ; preds = %if.end.i.i.us.us.loopexit, %pregion_for_entry.entry.i.i.us.us
  %81 = add nuw nsw i64 %_local_id_x.i.0.us.us, 1
  %exitcond.not = icmp eq i64 %81, 32
  br i1 %exitcond.not, label %pregion_for_end.i.i.us.loopexit, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !19

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %if.then.i.i.us.us
  %indvars.iv.next.i.i3.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %if.then.i.i.us.us ]
  %82 = phi float [ %87, %for.body.i.i.us.us ], [ %mul6.i.i.us.us, %if.then.i.i.us.us ]
  %83 = add nsw i64 %indvars.iv.next.i.i3.us.us, %76
  %arrayidx12.i.i.us.us = getelementptr inbounds float, float* %8, i64 %83
  %84 = load float, float* %arrayidx12.i.i.us.us, align 4, !tbaa !12
  %mul13.i.i.us.us = fmul float %16, %84
  %85 = add nsw i64 %indvars.iv.next.i.i3.us.us, %80
  %arrayidx17.i.i.us.us = getelementptr inbounds float, float* %8, i64 %85
  %86 = load float, float* %arrayidx17.i.i.us.us, align 4, !tbaa !12
  %87 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us, float %86, float %82) #2
  store float %87, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i3.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %if.end.i.i.us.us.loopexit, label %for.body.i.i.us.us, !llvm.loop !21

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us.3237, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %548, %if.end.i.i.us.3237 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %28, %conv.i.i.us
  br i1 %cmp4.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add.i.i.us = add nsw i32 %mul.i.i.us, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us
  %88 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %mul6.i.i.us = fmul float %20, %88
  store float %mul6.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %89 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1206 = add nuw nsw i64 %89, %mul.i.i.i
  %conv.i.i.us.1207 = trunc i64 %add1.i.i.i.us.1206 to i32
  %cmp4.i.i.us.1208 = icmp sgt i32 %28, %conv.i.i.us.1207
  br i1 %cmp4.i.i.us.1208, label %if.then.i.i.us.1214, label %if.end.i.i.us.1215

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.i.i.us.3237
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i.preheader
  %90 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.1 = or i32 %90, 1
  %cmp.i.i.1 = icmp sgt i32 %28, %conv2.i.i.1
  %mul.i.i.1 = mul nsw i32 %28, %conv2.i.i.1
  br i1 %cmp.i.i.1, label %vector.scevcheck49, label %pregion_for_end.i.i.1

vector.scevcheck49:                               ; preds = %pregion_for_end.i.i
  %91 = mul i32 %28, %conv2.i.i.1
  %92 = trunc i64 %2 to i32
  %93 = shl i32 %92, 5
  %94 = add i32 %91, %93
  %95 = icmp sgt i32 %94, 2147483616
  br i1 %95, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.ph50

pregion_for_entry.entry.i.i.us.1.preheader:       ; preds = %vector.scevcheck49
  br label %pregion_for_entry.entry.i.i.us.1

vector.ph50:                                      ; preds = %vector.scevcheck49
  %broadcast.splatinsert57 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat58 = shufflevector <8 x i64> %broadcast.splatinsert57, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert59 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat60 = shufflevector <8 x i32> %broadcast.splatinsert59, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <8 x float> undef, float %20, i32 0
  %broadcast.splat63 = shufflevector <8 x float> %broadcast.splatinsert62, <8 x float> undef, <8 x i32> zeroinitializer
  %96 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %97 = or <8 x i32> %96, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %98 = icmp sgt <8 x i32> %broadcast.splat60, %97
  %99 = extractelement <8 x i32> %97, i32 0
  %100 = add nsw i32 %mul.i.i.1, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %12, i64 %101
  %103 = bitcast float* %102 to <8 x float>*
  %wide.masked.load61 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %103, i32 4, <8 x i1> %98, <8 x float> undef), !tbaa !12
  %104 = fmul <8 x float> %broadcast.splat63, %wide.masked.load61
  %105 = bitcast float* %102 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %104, <8 x float>* %105, i32 4, <8 x i1> %98), !tbaa !12, !llvm.access.group !16
  %106 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %107 = or <8 x i32> %106, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %108 = icmp sgt <8 x i32> %broadcast.splat60, %107
  %109 = extractelement <8 x i32> %107, i32 0
  %110 = add nsw i32 %mul.i.i.1, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %12, i64 %111
  %113 = bitcast float* %112 to <8 x float>*
  %wide.masked.load61.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %113, i32 4, <8 x i1> %108, <8 x float> undef), !tbaa !12
  %114 = fmul <8 x float> %broadcast.splat63, %wide.masked.load61.1
  %115 = bitcast float* %112 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %114, <8 x float>* %115, i32 4, <8 x i1> %108), !tbaa !12, !llvm.access.group !16
  %116 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %117 = or <8 x i32> %116, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %118 = icmp sgt <8 x i32> %broadcast.splat60, %117
  %119 = extractelement <8 x i32> %117, i32 0
  %120 = add nsw i32 %mul.i.i.1, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %12, i64 %121
  %123 = bitcast float* %122 to <8 x float>*
  %wide.masked.load61.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %123, i32 4, <8 x i1> %118, <8 x float> undef), !tbaa !12
  %124 = fmul <8 x float> %broadcast.splat63, %wide.masked.load61.2
  %125 = bitcast float* %122 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %124, <8 x float>* %125, i32 4, <8 x i1> %118), !tbaa !12, !llvm.access.group !16
  %126 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %127 = or <8 x i32> %126, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %128 = icmp sgt <8 x i32> %broadcast.splat60, %127
  %129 = extractelement <8 x i32> %127, i32 0
  %130 = add nsw i32 %mul.i.i.1, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %12, i64 %131
  %133 = bitcast float* %132 to <8 x float>*
  %wide.masked.load61.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %133, i32 4, <8 x i1> %128, <8 x float> undef), !tbaa !12
  %134 = fmul <8 x float> %broadcast.splat63, %wide.masked.load61.3
  %135 = bitcast float* %132 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %134, <8 x float>* %135, i32 4, <8 x i1> %128), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.1

_pocl_kernel_syrk_kernel.exit.loopexit:           ; preds = %if.end.i.i.us.us.7
  br label %_pocl_kernel_syrk_kernel.exit

_pocl_kernel_syrk_kernel.exit.loopexit238:        ; preds = %if.end.i.i.us.7.3
  br label %_pocl_kernel_syrk_kernel.exit

_pocl_kernel_syrk_kernel.exit:                    ; preds = %pregion_for_end.i.i.us.6, %vector.ph182, %pregion_for_end.i.i.6, %_pocl_kernel_syrk_kernel.exit.loopexit238, %_pocl_kernel_syrk_kernel.exit.loopexit
  ret void

pregion_for_entry.entry.i.i.us.1:                 ; preds = %if.end.i.i.us.1.3, %pregion_for_entry.entry.i.i.us.1.preheader
  %_local_id_x.i.0.us.1 = phi i64 [ %542, %if.end.i.i.us.1.3 ], [ 0, %pregion_for_entry.entry.i.i.us.1.preheader ]
  %add1.i.i.i.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.1, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp4.i.i.us.1 = icmp sgt i32 %28, %conv.i.i.us.1
  br i1 %cmp4.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

if.then.i.i.us.1:                                 ; preds = %pregion_for_entry.entry.i.i.us.1
  %add.i.i.us.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1
  %idxprom.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.1
  %136 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %mul6.i.i.us.1 = fmul float %20, %136
  store float %mul6.i.i.us.1, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.then.i.i.us.1, %pregion_for_entry.entry.i.i.us.1
  %137 = or i64 %_local_id_x.i.0.us.1, 1
  %add1.i.i.i.us.1.1 = add nuw nsw i64 %137, %mul.i.i.i
  %conv.i.i.us.1.1 = trunc i64 %add1.i.i.i.us.1.1 to i32
  %cmp4.i.i.us.1.1 = icmp sgt i32 %28, %conv.i.i.us.1.1
  br i1 %cmp4.i.i.us.1.1, label %if.then.i.i.us.1.1, label %if.end.i.i.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.i.i.us.1.3
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph50, %pregion_for_end.i.i
  %138 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.2 = or i32 %138, 2
  %cmp.i.i.2 = icmp sgt i32 %28, %conv2.i.i.2
  %mul.i.i.2 = mul nsw i32 %28, %conv2.i.i.2
  br i1 %cmp.i.i.2, label %vector.scevcheck71, label %pregion_for_end.i.i.2

vector.scevcheck71:                               ; preds = %pregion_for_end.i.i.1
  %139 = mul i32 %28, %conv2.i.i.2
  %140 = trunc i64 %2 to i32
  %141 = shl i32 %140, 5
  %142 = add i32 %139, %141
  %143 = icmp sgt i32 %142, 2147483616
  br i1 %143, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.ph72

pregion_for_entry.entry.i.i.us.2.preheader:       ; preds = %vector.scevcheck71
  br label %pregion_for_entry.entry.i.i.us.2

vector.ph72:                                      ; preds = %vector.scevcheck71
  %broadcast.splatinsert79 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat80 = shufflevector <8 x i64> %broadcast.splatinsert79, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert81 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat82 = shufflevector <8 x i32> %broadcast.splatinsert81, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert84 = insertelement <8 x float> undef, float %20, i32 0
  %broadcast.splat85 = shufflevector <8 x float> %broadcast.splatinsert84, <8 x float> undef, <8 x i32> zeroinitializer
  %144 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %145 = or <8 x i32> %144, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %146 = icmp sgt <8 x i32> %broadcast.splat82, %145
  %147 = extractelement <8 x i32> %145, i32 0
  %148 = add nsw i32 %mul.i.i.2, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float, float* %12, i64 %149
  %151 = bitcast float* %150 to <8 x float>*
  %wide.masked.load83 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %151, i32 4, <8 x i1> %146, <8 x float> undef), !tbaa !12
  %152 = fmul <8 x float> %broadcast.splat85, %wide.masked.load83
  %153 = bitcast float* %150 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %152, <8 x float>* %153, i32 4, <8 x i1> %146), !tbaa !12, !llvm.access.group !16
  %154 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %155 = or <8 x i32> %154, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %156 = icmp sgt <8 x i32> %broadcast.splat82, %155
  %157 = extractelement <8 x i32> %155, i32 0
  %158 = add nsw i32 %mul.i.i.2, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %12, i64 %159
  %161 = bitcast float* %160 to <8 x float>*
  %wide.masked.load83.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %161, i32 4, <8 x i1> %156, <8 x float> undef), !tbaa !12
  %162 = fmul <8 x float> %broadcast.splat85, %wide.masked.load83.1
  %163 = bitcast float* %160 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %162, <8 x float>* %163, i32 4, <8 x i1> %156), !tbaa !12, !llvm.access.group !16
  %164 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %165 = or <8 x i32> %164, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %166 = icmp sgt <8 x i32> %broadcast.splat82, %165
  %167 = extractelement <8 x i32> %165, i32 0
  %168 = add nsw i32 %mul.i.i.2, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %12, i64 %169
  %171 = bitcast float* %170 to <8 x float>*
  %wide.masked.load83.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %171, i32 4, <8 x i1> %166, <8 x float> undef), !tbaa !12
  %172 = fmul <8 x float> %broadcast.splat85, %wide.masked.load83.2
  %173 = bitcast float* %170 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %172, <8 x float>* %173, i32 4, <8 x i1> %166), !tbaa !12, !llvm.access.group !16
  %174 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %175 = or <8 x i32> %174, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %176 = icmp sgt <8 x i32> %broadcast.splat82, %175
  %177 = extractelement <8 x i32> %175, i32 0
  %178 = add nsw i32 %mul.i.i.2, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %12, i64 %179
  %181 = bitcast float* %180 to <8 x float>*
  %wide.masked.load83.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %181, i32 4, <8 x i1> %176, <8 x float> undef), !tbaa !12
  %182 = fmul <8 x float> %broadcast.splat85, %wide.masked.load83.3
  %183 = bitcast float* %180 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %182, <8 x float>* %183, i32 4, <8 x i1> %176), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.2:                 ; preds = %if.end.i.i.us.2.3, %pregion_for_entry.entry.i.i.us.2.preheader
  %_local_id_x.i.0.us.2 = phi i64 [ %536, %if.end.i.i.us.2.3 ], [ 0, %pregion_for_entry.entry.i.i.us.2.preheader ]
  %add1.i.i.i.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.2, %mul.i.i.i
  %conv.i.i.us.2 = trunc i64 %add1.i.i.i.us.2 to i32
  %cmp4.i.i.us.2 = icmp sgt i32 %28, %conv.i.i.us.2
  br i1 %cmp4.i.i.us.2, label %if.then.i.i.us.2, label %if.end.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %pregion_for_entry.entry.i.i.us.2
  %add.i.i.us.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2
  %idxprom.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.2
  %184 = load float, float* %arrayidx.i.i.us.2, align 4, !tbaa !12
  %mul6.i.i.us.2 = fmul float %20, %184
  store float %mul6.i.i.us.2, float* %arrayidx.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2

if.end.i.i.us.2:                                  ; preds = %if.then.i.i.us.2, %pregion_for_entry.entry.i.i.us.2
  %185 = or i64 %_local_id_x.i.0.us.2, 1
  %add1.i.i.i.us.2.1 = add nuw nsw i64 %185, %mul.i.i.i
  %conv.i.i.us.2.1 = trunc i64 %add1.i.i.i.us.2.1 to i32
  %cmp4.i.i.us.2.1 = icmp sgt i32 %28, %conv.i.i.us.2.1
  br i1 %cmp4.i.i.us.2.1, label %if.then.i.i.us.2.1, label %if.end.i.i.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.i.i.us.2.3
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph72, %pregion_for_end.i.i.1
  %186 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.3 = or i32 %186, 3
  %cmp.i.i.3 = icmp sgt i32 %28, %conv2.i.i.3
  %mul.i.i.3 = mul nsw i32 %28, %conv2.i.i.3
  br i1 %cmp.i.i.3, label %vector.scevcheck93, label %pregion_for_end.i.i.3

vector.scevcheck93:                               ; preds = %pregion_for_end.i.i.2
  %187 = mul i32 %28, %conv2.i.i.3
  %188 = trunc i64 %2 to i32
  %189 = shl i32 %188, 5
  %190 = add i32 %187, %189
  %191 = icmp sgt i32 %190, 2147483616
  br i1 %191, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.ph94

pregion_for_entry.entry.i.i.us.3.preheader:       ; preds = %vector.scevcheck93
  br label %pregion_for_entry.entry.i.i.us.3

vector.ph94:                                      ; preds = %vector.scevcheck93
  %broadcast.splatinsert101 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat102 = shufflevector <8 x i64> %broadcast.splatinsert101, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat104 = shufflevector <8 x i32> %broadcast.splatinsert103, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert106 = insertelement <8 x float> undef, float %20, i32 0
  %broadcast.splat107 = shufflevector <8 x float> %broadcast.splatinsert106, <8 x float> undef, <8 x i32> zeroinitializer
  %192 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %193 = or <8 x i32> %192, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %194 = icmp sgt <8 x i32> %broadcast.splat104, %193
  %195 = extractelement <8 x i32> %193, i32 0
  %196 = add nsw i32 %mul.i.i.3, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %12, i64 %197
  %199 = bitcast float* %198 to <8 x float>*
  %wide.masked.load105 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %199, i32 4, <8 x i1> %194, <8 x float> undef), !tbaa !12
  %200 = fmul <8 x float> %broadcast.splat107, %wide.masked.load105
  %201 = bitcast float* %198 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %200, <8 x float>* %201, i32 4, <8 x i1> %194), !tbaa !12, !llvm.access.group !16
  %202 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %203 = or <8 x i32> %202, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %204 = icmp sgt <8 x i32> %broadcast.splat104, %203
  %205 = extractelement <8 x i32> %203, i32 0
  %206 = add nsw i32 %mul.i.i.3, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %12, i64 %207
  %209 = bitcast float* %208 to <8 x float>*
  %wide.masked.load105.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %209, i32 4, <8 x i1> %204, <8 x float> undef), !tbaa !12
  %210 = fmul <8 x float> %broadcast.splat107, %wide.masked.load105.1
  %211 = bitcast float* %208 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %210, <8 x float>* %211, i32 4, <8 x i1> %204), !tbaa !12, !llvm.access.group !16
  %212 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %213 = or <8 x i32> %212, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %214 = icmp sgt <8 x i32> %broadcast.splat104, %213
  %215 = extractelement <8 x i32> %213, i32 0
  %216 = add nsw i32 %mul.i.i.3, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float, float* %12, i64 %217
  %219 = bitcast float* %218 to <8 x float>*
  %wide.masked.load105.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %219, i32 4, <8 x i1> %214, <8 x float> undef), !tbaa !12
  %220 = fmul <8 x float> %broadcast.splat107, %wide.masked.load105.2
  %221 = bitcast float* %218 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %220, <8 x float>* %221, i32 4, <8 x i1> %214), !tbaa !12, !llvm.access.group !16
  %222 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %223 = or <8 x i32> %222, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %224 = icmp sgt <8 x i32> %broadcast.splat104, %223
  %225 = extractelement <8 x i32> %223, i32 0
  %226 = add nsw i32 %mul.i.i.3, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %12, i64 %227
  %229 = bitcast float* %228 to <8 x float>*
  %wide.masked.load105.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %229, i32 4, <8 x i1> %224, <8 x float> undef), !tbaa !12
  %230 = fmul <8 x float> %broadcast.splat107, %wide.masked.load105.3
  %231 = bitcast float* %228 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %230, <8 x float>* %231, i32 4, <8 x i1> %224), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.3:                 ; preds = %if.end.i.i.us.3.3, %pregion_for_entry.entry.i.i.us.3.preheader
  %_local_id_x.i.0.us.3 = phi i64 [ %530, %if.end.i.i.us.3.3 ], [ 0, %pregion_for_entry.entry.i.i.us.3.preheader ]
  %add1.i.i.i.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.3, %mul.i.i.i
  %conv.i.i.us.3 = trunc i64 %add1.i.i.i.us.3 to i32
  %cmp4.i.i.us.3 = icmp sgt i32 %28, %conv.i.i.us.3
  br i1 %cmp4.i.i.us.3, label %if.then.i.i.us.3, label %if.end.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %pregion_for_entry.entry.i.i.us.3
  %add.i.i.us.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3
  %idxprom.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.3
  %232 = load float, float* %arrayidx.i.i.us.3, align 4, !tbaa !12
  %mul6.i.i.us.3 = fmul float %20, %232
  store float %mul6.i.i.us.3, float* %arrayidx.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3

if.end.i.i.us.3:                                  ; preds = %if.then.i.i.us.3, %pregion_for_entry.entry.i.i.us.3
  %233 = or i64 %_local_id_x.i.0.us.3, 1
  %add1.i.i.i.us.3.1 = add nuw nsw i64 %233, %mul.i.i.i
  %conv.i.i.us.3.1 = trunc i64 %add1.i.i.i.us.3.1 to i32
  %cmp4.i.i.us.3.1 = icmp sgt i32 %28, %conv.i.i.us.3.1
  br i1 %cmp4.i.i.us.3.1, label %if.then.i.i.us.3.1, label %if.end.i.i.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.i.i.us.3.3
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph94, %pregion_for_end.i.i.2
  %234 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.4 = or i32 %234, 4
  %cmp.i.i.4 = icmp sgt i32 %28, %conv2.i.i.4
  %mul.i.i.4 = mul nsw i32 %28, %conv2.i.i.4
  br i1 %cmp.i.i.4, label %vector.scevcheck115, label %pregion_for_end.i.i.4

vector.scevcheck115:                              ; preds = %pregion_for_end.i.i.3
  %235 = mul i32 %28, %conv2.i.i.4
  %236 = trunc i64 %2 to i32
  %237 = shl i32 %236, 5
  %238 = add i32 %235, %237
  %239 = icmp sgt i32 %238, 2147483616
  br i1 %239, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.ph116

pregion_for_entry.entry.i.i.us.4.preheader:       ; preds = %vector.scevcheck115
  br label %pregion_for_entry.entry.i.i.us.4

vector.ph116:                                     ; preds = %vector.scevcheck115
  %broadcast.splatinsert123 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat124 = shufflevector <8 x i64> %broadcast.splatinsert123, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert125 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat126 = shufflevector <8 x i32> %broadcast.splatinsert125, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert128 = insertelement <8 x float> undef, float %20, i32 0
  %broadcast.splat129 = shufflevector <8 x float> %broadcast.splatinsert128, <8 x float> undef, <8 x i32> zeroinitializer
  %240 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %241 = or <8 x i32> %240, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %242 = icmp sgt <8 x i32> %broadcast.splat126, %241
  %243 = extractelement <8 x i32> %241, i32 0
  %244 = add nsw i32 %mul.i.i.4, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %12, i64 %245
  %247 = bitcast float* %246 to <8 x float>*
  %wide.masked.load127 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %247, i32 4, <8 x i1> %242, <8 x float> undef), !tbaa !12
  %248 = fmul <8 x float> %broadcast.splat129, %wide.masked.load127
  %249 = bitcast float* %246 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %248, <8 x float>* %249, i32 4, <8 x i1> %242), !tbaa !12, !llvm.access.group !16
  %250 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %251 = or <8 x i32> %250, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %252 = icmp sgt <8 x i32> %broadcast.splat126, %251
  %253 = extractelement <8 x i32> %251, i32 0
  %254 = add nsw i32 %mul.i.i.4, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %12, i64 %255
  %257 = bitcast float* %256 to <8 x float>*
  %wide.masked.load127.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %257, i32 4, <8 x i1> %252, <8 x float> undef), !tbaa !12
  %258 = fmul <8 x float> %broadcast.splat129, %wide.masked.load127.1
  %259 = bitcast float* %256 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %258, <8 x float>* %259, i32 4, <8 x i1> %252), !tbaa !12, !llvm.access.group !16
  %260 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %261 = or <8 x i32> %260, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %262 = icmp sgt <8 x i32> %broadcast.splat126, %261
  %263 = extractelement <8 x i32> %261, i32 0
  %264 = add nsw i32 %mul.i.i.4, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds float, float* %12, i64 %265
  %267 = bitcast float* %266 to <8 x float>*
  %wide.masked.load127.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %267, i32 4, <8 x i1> %262, <8 x float> undef), !tbaa !12
  %268 = fmul <8 x float> %broadcast.splat129, %wide.masked.load127.2
  %269 = bitcast float* %266 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %268, <8 x float>* %269, i32 4, <8 x i1> %262), !tbaa !12, !llvm.access.group !16
  %270 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %271 = or <8 x i32> %270, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %272 = icmp sgt <8 x i32> %broadcast.splat126, %271
  %273 = extractelement <8 x i32> %271, i32 0
  %274 = add nsw i32 %mul.i.i.4, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %12, i64 %275
  %277 = bitcast float* %276 to <8 x float>*
  %wide.masked.load127.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %277, i32 4, <8 x i1> %272, <8 x float> undef), !tbaa !12
  %278 = fmul <8 x float> %broadcast.splat129, %wide.masked.load127.3
  %279 = bitcast float* %276 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %278, <8 x float>* %279, i32 4, <8 x i1> %272), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.4:                 ; preds = %if.end.i.i.us.4.3, %pregion_for_entry.entry.i.i.us.4.preheader
  %_local_id_x.i.0.us.4 = phi i64 [ %524, %if.end.i.i.us.4.3 ], [ 0, %pregion_for_entry.entry.i.i.us.4.preheader ]
  %add1.i.i.i.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.4, %mul.i.i.i
  %conv.i.i.us.4 = trunc i64 %add1.i.i.i.us.4 to i32
  %cmp4.i.i.us.4 = icmp sgt i32 %28, %conv.i.i.us.4
  br i1 %cmp4.i.i.us.4, label %if.then.i.i.us.4, label %if.end.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %pregion_for_entry.entry.i.i.us.4
  %add.i.i.us.4 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4
  %idxprom.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.4
  %280 = load float, float* %arrayidx.i.i.us.4, align 4, !tbaa !12
  %mul6.i.i.us.4 = fmul float %20, %280
  store float %mul6.i.i.us.4, float* %arrayidx.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4

if.end.i.i.us.4:                                  ; preds = %if.then.i.i.us.4, %pregion_for_entry.entry.i.i.us.4
  %281 = or i64 %_local_id_x.i.0.us.4, 1
  %add1.i.i.i.us.4.1 = add nuw nsw i64 %281, %mul.i.i.i
  %conv.i.i.us.4.1 = trunc i64 %add1.i.i.i.us.4.1 to i32
  %cmp4.i.i.us.4.1 = icmp sgt i32 %28, %conv.i.i.us.4.1
  br i1 %cmp4.i.i.us.4.1, label %if.then.i.i.us.4.1, label %if.end.i.i.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.i.i.us.4.3
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph116, %pregion_for_end.i.i.3
  %282 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.5 = or i32 %282, 5
  %cmp.i.i.5 = icmp sgt i32 %28, %conv2.i.i.5
  %mul.i.i.5 = mul nsw i32 %28, %conv2.i.i.5
  br i1 %cmp.i.i.5, label %vector.scevcheck137, label %pregion_for_end.i.i.5

vector.scevcheck137:                              ; preds = %pregion_for_end.i.i.4
  %283 = mul i32 %28, %conv2.i.i.5
  %284 = trunc i64 %2 to i32
  %285 = shl i32 %284, 5
  %286 = add i32 %283, %285
  %287 = icmp sgt i32 %286, 2147483616
  br i1 %287, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.ph138

pregion_for_entry.entry.i.i.us.5.preheader:       ; preds = %vector.scevcheck137
  br label %pregion_for_entry.entry.i.i.us.5

vector.ph138:                                     ; preds = %vector.scevcheck137
  %broadcast.splatinsert145 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat146 = shufflevector <8 x i64> %broadcast.splatinsert145, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert147 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat148 = shufflevector <8 x i32> %broadcast.splatinsert147, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert150 = insertelement <8 x float> undef, float %20, i32 0
  %broadcast.splat151 = shufflevector <8 x float> %broadcast.splatinsert150, <8 x float> undef, <8 x i32> zeroinitializer
  %288 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %289 = or <8 x i32> %288, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %290 = icmp sgt <8 x i32> %broadcast.splat148, %289
  %291 = extractelement <8 x i32> %289, i32 0
  %292 = add nsw i32 %mul.i.i.5, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float, float* %12, i64 %293
  %295 = bitcast float* %294 to <8 x float>*
  %wide.masked.load149 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %295, i32 4, <8 x i1> %290, <8 x float> undef), !tbaa !12
  %296 = fmul <8 x float> %broadcast.splat151, %wide.masked.load149
  %297 = bitcast float* %294 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %296, <8 x float>* %297, i32 4, <8 x i1> %290), !tbaa !12, !llvm.access.group !16
  %298 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %299 = or <8 x i32> %298, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %300 = icmp sgt <8 x i32> %broadcast.splat148, %299
  %301 = extractelement <8 x i32> %299, i32 0
  %302 = add nsw i32 %mul.i.i.5, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %12, i64 %303
  %305 = bitcast float* %304 to <8 x float>*
  %wide.masked.load149.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %305, i32 4, <8 x i1> %300, <8 x float> undef), !tbaa !12
  %306 = fmul <8 x float> %broadcast.splat151, %wide.masked.load149.1
  %307 = bitcast float* %304 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %306, <8 x float>* %307, i32 4, <8 x i1> %300), !tbaa !12, !llvm.access.group !16
  %308 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %309 = or <8 x i32> %308, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %310 = icmp sgt <8 x i32> %broadcast.splat148, %309
  %311 = extractelement <8 x i32> %309, i32 0
  %312 = add nsw i32 %mul.i.i.5, %311
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds float, float* %12, i64 %313
  %315 = bitcast float* %314 to <8 x float>*
  %wide.masked.load149.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %315, i32 4, <8 x i1> %310, <8 x float> undef), !tbaa !12
  %316 = fmul <8 x float> %broadcast.splat151, %wide.masked.load149.2
  %317 = bitcast float* %314 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %316, <8 x float>* %317, i32 4, <8 x i1> %310), !tbaa !12, !llvm.access.group !16
  %318 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %319 = or <8 x i32> %318, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %320 = icmp sgt <8 x i32> %broadcast.splat148, %319
  %321 = extractelement <8 x i32> %319, i32 0
  %322 = add nsw i32 %mul.i.i.5, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds float, float* %12, i64 %323
  %325 = bitcast float* %324 to <8 x float>*
  %wide.masked.load149.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %325, i32 4, <8 x i1> %320, <8 x float> undef), !tbaa !12
  %326 = fmul <8 x float> %broadcast.splat151, %wide.masked.load149.3
  %327 = bitcast float* %324 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %326, <8 x float>* %327, i32 4, <8 x i1> %320), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.5:                 ; preds = %if.end.i.i.us.5.3, %pregion_for_entry.entry.i.i.us.5.preheader
  %_local_id_x.i.0.us.5 = phi i64 [ %518, %if.end.i.i.us.5.3 ], [ 0, %pregion_for_entry.entry.i.i.us.5.preheader ]
  %add1.i.i.i.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.5, %mul.i.i.i
  %conv.i.i.us.5 = trunc i64 %add1.i.i.i.us.5 to i32
  %cmp4.i.i.us.5 = icmp sgt i32 %28, %conv.i.i.us.5
  br i1 %cmp4.i.i.us.5, label %if.then.i.i.us.5, label %if.end.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %pregion_for_entry.entry.i.i.us.5
  %add.i.i.us.5 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5
  %idxprom.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.5
  %328 = load float, float* %arrayidx.i.i.us.5, align 4, !tbaa !12
  %mul6.i.i.us.5 = fmul float %20, %328
  store float %mul6.i.i.us.5, float* %arrayidx.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5

if.end.i.i.us.5:                                  ; preds = %if.then.i.i.us.5, %pregion_for_entry.entry.i.i.us.5
  %329 = or i64 %_local_id_x.i.0.us.5, 1
  %add1.i.i.i.us.5.1 = add nuw nsw i64 %329, %mul.i.i.i
  %conv.i.i.us.5.1 = trunc i64 %add1.i.i.i.us.5.1 to i32
  %cmp4.i.i.us.5.1 = icmp sgt i32 %28, %conv.i.i.us.5.1
  br i1 %cmp4.i.i.us.5.1, label %if.then.i.i.us.5.1, label %if.end.i.i.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.i.i.us.5.3
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph138, %pregion_for_end.i.i.4
  %330 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.6 = or i32 %330, 6
  %cmp.i.i.6 = icmp sgt i32 %28, %conv2.i.i.6
  %mul.i.i.6 = mul nsw i32 %28, %conv2.i.i.6
  br i1 %cmp.i.i.6, label %vector.scevcheck159, label %pregion_for_end.i.i.6

vector.scevcheck159:                              ; preds = %pregion_for_end.i.i.5
  %331 = mul i32 %28, %conv2.i.i.6
  %332 = trunc i64 %2 to i32
  %333 = shl i32 %332, 5
  %334 = add i32 %331, %333
  %335 = icmp sgt i32 %334, 2147483616
  br i1 %335, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.ph160

pregion_for_entry.entry.i.i.us.6.preheader:       ; preds = %vector.scevcheck159
  br label %pregion_for_entry.entry.i.i.us.6

vector.ph160:                                     ; preds = %vector.scevcheck159
  %broadcast.splatinsert167 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat168 = shufflevector <8 x i64> %broadcast.splatinsert167, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert169 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat170 = shufflevector <8 x i32> %broadcast.splatinsert169, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <8 x float> undef, float %20, i32 0
  %broadcast.splat173 = shufflevector <8 x float> %broadcast.splatinsert172, <8 x float> undef, <8 x i32> zeroinitializer
  %336 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %337 = or <8 x i32> %336, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %338 = icmp sgt <8 x i32> %broadcast.splat170, %337
  %339 = extractelement <8 x i32> %337, i32 0
  %340 = add nsw i32 %mul.i.i.6, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds float, float* %12, i64 %341
  %343 = bitcast float* %342 to <8 x float>*
  %wide.masked.load171 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %343, i32 4, <8 x i1> %338, <8 x float> undef), !tbaa !12
  %344 = fmul <8 x float> %broadcast.splat173, %wide.masked.load171
  %345 = bitcast float* %342 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %344, <8 x float>* %345, i32 4, <8 x i1> %338), !tbaa !12, !llvm.access.group !16
  %346 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %347 = or <8 x i32> %346, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %348 = icmp sgt <8 x i32> %broadcast.splat170, %347
  %349 = extractelement <8 x i32> %347, i32 0
  %350 = add nsw i32 %mul.i.i.6, %349
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds float, float* %12, i64 %351
  %353 = bitcast float* %352 to <8 x float>*
  %wide.masked.load171.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %353, i32 4, <8 x i1> %348, <8 x float> undef), !tbaa !12
  %354 = fmul <8 x float> %broadcast.splat173, %wide.masked.load171.1
  %355 = bitcast float* %352 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %354, <8 x float>* %355, i32 4, <8 x i1> %348), !tbaa !12, !llvm.access.group !16
  %356 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %357 = or <8 x i32> %356, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %358 = icmp sgt <8 x i32> %broadcast.splat170, %357
  %359 = extractelement <8 x i32> %357, i32 0
  %360 = add nsw i32 %mul.i.i.6, %359
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds float, float* %12, i64 %361
  %363 = bitcast float* %362 to <8 x float>*
  %wide.masked.load171.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %363, i32 4, <8 x i1> %358, <8 x float> undef), !tbaa !12
  %364 = fmul <8 x float> %broadcast.splat173, %wide.masked.load171.2
  %365 = bitcast float* %362 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %364, <8 x float>* %365, i32 4, <8 x i1> %358), !tbaa !12, !llvm.access.group !16
  %366 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %367 = or <8 x i32> %366, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %368 = icmp sgt <8 x i32> %broadcast.splat170, %367
  %369 = extractelement <8 x i32> %367, i32 0
  %370 = add nsw i32 %mul.i.i.6, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds float, float* %12, i64 %371
  %373 = bitcast float* %372 to <8 x float>*
  %wide.masked.load171.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %373, i32 4, <8 x i1> %368, <8 x float> undef), !tbaa !12
  %374 = fmul <8 x float> %broadcast.splat173, %wide.masked.load171.3
  %375 = bitcast float* %372 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %374, <8 x float>* %375, i32 4, <8 x i1> %368), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.6:                 ; preds = %if.end.i.i.us.6.3, %pregion_for_entry.entry.i.i.us.6.preheader
  %_local_id_x.i.0.us.6 = phi i64 [ %512, %if.end.i.i.us.6.3 ], [ 0, %pregion_for_entry.entry.i.i.us.6.preheader ]
  %add1.i.i.i.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.6, %mul.i.i.i
  %conv.i.i.us.6 = trunc i64 %add1.i.i.i.us.6 to i32
  %cmp4.i.i.us.6 = icmp sgt i32 %28, %conv.i.i.us.6
  br i1 %cmp4.i.i.us.6, label %if.then.i.i.us.6, label %if.end.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %pregion_for_entry.entry.i.i.us.6
  %add.i.i.us.6 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6
  %idxprom.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.6
  %376 = load float, float* %arrayidx.i.i.us.6, align 4, !tbaa !12
  %mul6.i.i.us.6 = fmul float %20, %376
  store float %mul6.i.i.us.6, float* %arrayidx.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6

if.end.i.i.us.6:                                  ; preds = %if.then.i.i.us.6, %pregion_for_entry.entry.i.i.us.6
  %377 = or i64 %_local_id_x.i.0.us.6, 1
  %add1.i.i.i.us.6.1 = add nuw nsw i64 %377, %mul.i.i.i
  %conv.i.i.us.6.1 = trunc i64 %add1.i.i.i.us.6.1 to i32
  %cmp4.i.i.us.6.1 = icmp sgt i32 %28, %conv.i.i.us.6.1
  br i1 %cmp4.i.i.us.6.1, label %if.then.i.i.us.6.1, label %if.end.i.i.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.i.i.us.6.3
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph160, %pregion_for_end.i.i.5
  %378 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.7 = or i32 %378, 7
  %cmp.i.i.7 = icmp sgt i32 %28, %conv2.i.i.7
  %mul.i.i.7 = mul nsw i32 %28, %conv2.i.i.7
  br i1 %cmp.i.i.7, label %vector.scevcheck181, label %_pocl_kernel_syrk_kernel.exit

vector.scevcheck181:                              ; preds = %pregion_for_end.i.i.6
  %379 = mul i32 %28, %conv2.i.i.7
  %380 = trunc i64 %2 to i32
  %381 = shl i32 %380, 5
  %382 = add i32 %379, %381
  %383 = icmp sgt i32 %382, 2147483616
  br i1 %383, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.ph182

pregion_for_entry.entry.i.i.us.7.preheader:       ; preds = %vector.scevcheck181
  br label %pregion_for_entry.entry.i.i.us.7

vector.ph182:                                     ; preds = %vector.scevcheck181
  %broadcast.splatinsert189 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat190 = shufflevector <8 x i64> %broadcast.splatinsert189, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert191 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat192 = shufflevector <8 x i32> %broadcast.splatinsert191, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <8 x float> undef, float %20, i32 0
  %broadcast.splat195 = shufflevector <8 x float> %broadcast.splatinsert194, <8 x float> undef, <8 x i32> zeroinitializer
  %384 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %385 = or <8 x i32> %384, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %386 = icmp sgt <8 x i32> %broadcast.splat192, %385
  %387 = extractelement <8 x i32> %385, i32 0
  %388 = add nsw i32 %mul.i.i.7, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds float, float* %12, i64 %389
  %391 = bitcast float* %390 to <8 x float>*
  %wide.masked.load193 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %391, i32 4, <8 x i1> %386, <8 x float> undef), !tbaa !12
  %392 = fmul <8 x float> %broadcast.splat195, %wide.masked.load193
  %393 = bitcast float* %390 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %392, <8 x float>* %393, i32 4, <8 x i1> %386), !tbaa !12, !llvm.access.group !16
  %394 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %395 = or <8 x i32> %394, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %396 = icmp sgt <8 x i32> %broadcast.splat192, %395
  %397 = extractelement <8 x i32> %395, i32 0
  %398 = add nsw i32 %mul.i.i.7, %397
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds float, float* %12, i64 %399
  %401 = bitcast float* %400 to <8 x float>*
  %wide.masked.load193.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %401, i32 4, <8 x i1> %396, <8 x float> undef), !tbaa !12
  %402 = fmul <8 x float> %broadcast.splat195, %wide.masked.load193.1
  %403 = bitcast float* %400 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %402, <8 x float>* %403, i32 4, <8 x i1> %396), !tbaa !12, !llvm.access.group !16
  %404 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %405 = or <8 x i32> %404, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %406 = icmp sgt <8 x i32> %broadcast.splat192, %405
  %407 = extractelement <8 x i32> %405, i32 0
  %408 = add nsw i32 %mul.i.i.7, %407
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds float, float* %12, i64 %409
  %411 = bitcast float* %410 to <8 x float>*
  %wide.masked.load193.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %411, i32 4, <8 x i1> %406, <8 x float> undef), !tbaa !12
  %412 = fmul <8 x float> %broadcast.splat195, %wide.masked.load193.2
  %413 = bitcast float* %410 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %412, <8 x float>* %413, i32 4, <8 x i1> %406), !tbaa !12, !llvm.access.group !16
  %414 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %415 = or <8 x i32> %414, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %416 = icmp sgt <8 x i32> %broadcast.splat192, %415
  %417 = extractelement <8 x i32> %415, i32 0
  %418 = add nsw i32 %mul.i.i.7, %417
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds float, float* %12, i64 %419
  %421 = bitcast float* %420 to <8 x float>*
  %wide.masked.load193.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %421, i32 4, <8 x i1> %416, <8 x float> undef), !tbaa !12
  %422 = fmul <8 x float> %broadcast.splat195, %wide.masked.load193.3
  %423 = bitcast float* %420 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %422, <8 x float>* %423, i32 4, <8 x i1> %416), !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_syrk_kernel.exit

pregion_for_entry.entry.i.i.us.7:                 ; preds = %if.end.i.i.us.7.3, %pregion_for_entry.entry.i.i.us.7.preheader
  %_local_id_x.i.0.us.7 = phi i64 [ %506, %if.end.i.i.us.7.3 ], [ 0, %pregion_for_entry.entry.i.i.us.7.preheader ]
  %add1.i.i.i.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.7, %mul.i.i.i
  %conv.i.i.us.7 = trunc i64 %add1.i.i.i.us.7 to i32
  %cmp4.i.i.us.7 = icmp sgt i32 %28, %conv.i.i.us.7
  br i1 %cmp4.i.i.us.7, label %if.then.i.i.us.7, label %if.end.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %pregion_for_entry.entry.i.i.us.7
  %add.i.i.us.7 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7
  %idxprom.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.7
  %424 = load float, float* %arrayidx.i.i.us.7, align 4, !tbaa !12
  %mul6.i.i.us.7 = fmul float %20, %424
  store float %mul6.i.i.us.7, float* %arrayidx.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7

if.end.i.i.us.7:                                  ; preds = %if.then.i.i.us.7, %pregion_for_entry.entry.i.i.us.7
  %425 = or i64 %_local_id_x.i.0.us.7, 1
  %add1.i.i.i.us.7.1 = add nuw nsw i64 %425, %mul.i.i.i
  %conv.i.i.us.7.1 = trunc i64 %add1.i.i.i.us.7.1 to i32
  %cmp4.i.i.us.7.1 = icmp sgt i32 %28, %conv.i.i.us.7.1
  br i1 %cmp4.i.i.us.7.1, label %if.then.i.i.us.7.1, label %if.end.i.i.us.7.1

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %if.end.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1.preheader
  %_local_id_x.i.0.us.us.1 = phi i64 [ %434, %if.end.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1.preheader ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %cmp4.i.i.us.us.1 = icmp sgt i32 %28, %conv.i.i.us.us.1
  br i1 %cmp4.i.i.us.us.1, label %if.then.i.i.us.us.1, label %if.end.i.i.us.us.1

if.then.i.i.us.us.1:                              ; preds = %pregion_for_entry.entry.i.i.us.us.1
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.1
  %426 = load float, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12
  %mul6.i.i.us.us.1 = fmul float %20, %426
  store float %mul6.i.i.us.us.1, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.i.us.us.1 = mul nsw i32 %24, %conv.i.i.us.us.1
  %427 = sext i32 %mul14.i.i.us.us.1 to i64
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %if.then.i.i.us.us.1
  %indvars.iv.next.i.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %if.then.i.i.us.us.1 ]
  %428 = phi float [ %433, %for.body.i.i.us.us.1 ], [ %mul6.i.i.us.us.1, %if.then.i.i.us.us.1 ]
  %429 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %78
  %arrayidx12.i.i.us.us.1 = getelementptr inbounds float, float* %8, i64 %429
  %430 = load float, float* %arrayidx12.i.i.us.us.1, align 4, !tbaa !12
  %mul13.i.i.us.us.1 = fmul float %16, %430
  %431 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %427
  %arrayidx17.i.i.us.us.1 = getelementptr inbounds float, float* %8, i64 %431
  %432 = load float, float* %arrayidx17.i.i.us.us.1, align 4, !tbaa !12
  %433 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.1, float %432, float %428) #2
  store float %433, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %if.end.i.i.us.us.1.loopexit, label %for.body.i.i.us.us.1, !llvm.loop !21

if.end.i.i.us.us.1.loopexit:                      ; preds = %for.body.i.i.us.us.1
  br label %if.end.i.i.us.us.1

if.end.i.i.us.us.1:                               ; preds = %if.end.i.i.us.us.1.loopexit, %pregion_for_entry.entry.i.i.us.us.1
  %434 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 1
  %exitcond.not.1 = icmp eq i64 %434, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us.1.loopexit, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !19

pregion_for_end.i.i.us.1.loopexit:                ; preds = %if.end.i.i.us.us.1
  br label %pregion_for_end.i.i.us.1

pregion_for_end.i.i.us.1:                         ; preds = %pregion_for_end.i.i.us.1.loopexit, %pregion_for_end.i.i.us
  %435 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %435, 2
  %cmp.i.i.us.2 = icmp sgt i32 %28, %conv2.i.i.us.2
  %mul.i.i.us.2 = mul nsw i32 %28, %conv2.i.i.us.2
  %mul9.i.i.us.2 = mul nsw i32 %24, %conv2.i.i.us.2
  %436 = sext i32 %mul9.i.i.us.2 to i64
  br i1 %cmp.i.i.us.2, label %pregion_for_entry.entry.i.i.us.us.2.preheader, label %pregion_for_end.i.i.us.2

pregion_for_entry.entry.i.i.us.us.2.preheader:    ; preds = %pregion_for_end.i.i.us.1
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %if.end.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2.preheader
  %_local_id_x.i.0.us.us.2 = phi i64 [ %445, %if.end.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2.preheader ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %cmp4.i.i.us.us.2 = icmp sgt i32 %28, %conv.i.i.us.us.2
  br i1 %cmp4.i.i.us.us.2, label %if.then.i.i.us.us.2, label %if.end.i.i.us.us.2

if.then.i.i.us.us.2:                              ; preds = %pregion_for_entry.entry.i.i.us.us.2
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.2
  %437 = load float, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12
  %mul6.i.i.us.us.2 = fmul float %20, %437
  store float %mul6.i.i.us.us.2, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.i.us.us.2 = mul nsw i32 %24, %conv.i.i.us.us.2
  %438 = sext i32 %mul14.i.i.us.us.2 to i64
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %if.then.i.i.us.us.2
  %indvars.iv.next.i.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %if.then.i.i.us.us.2 ]
  %439 = phi float [ %444, %for.body.i.i.us.us.2 ], [ %mul6.i.i.us.us.2, %if.then.i.i.us.us.2 ]
  %440 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %436
  %arrayidx12.i.i.us.us.2 = getelementptr inbounds float, float* %8, i64 %440
  %441 = load float, float* %arrayidx12.i.i.us.us.2, align 4, !tbaa !12
  %mul13.i.i.us.us.2 = fmul float %16, %441
  %442 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %438
  %arrayidx17.i.i.us.us.2 = getelementptr inbounds float, float* %8, i64 %442
  %443 = load float, float* %arrayidx17.i.i.us.us.2, align 4, !tbaa !12
  %444 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.2, float %443, float %439) #2
  store float %444, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %if.end.i.i.us.us.2.loopexit, label %for.body.i.i.us.us.2, !llvm.loop !21

if.end.i.i.us.us.2.loopexit:                      ; preds = %for.body.i.i.us.us.2
  br label %if.end.i.i.us.us.2

if.end.i.i.us.us.2:                               ; preds = %if.end.i.i.us.us.2.loopexit, %pregion_for_entry.entry.i.i.us.us.2
  %445 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 1
  %exitcond.not.2 = icmp eq i64 %445, 32
  br i1 %exitcond.not.2, label %pregion_for_end.i.i.us.2.loopexit, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !19

pregion_for_end.i.i.us.2.loopexit:                ; preds = %if.end.i.i.us.us.2
  br label %pregion_for_end.i.i.us.2

pregion_for_end.i.i.us.2:                         ; preds = %pregion_for_end.i.i.us.2.loopexit, %pregion_for_end.i.i.us.1
  %446 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %446, 3
  %cmp.i.i.us.3 = icmp sgt i32 %28, %conv2.i.i.us.3
  %mul.i.i.us.3 = mul nsw i32 %28, %conv2.i.i.us.3
  %mul9.i.i.us.3 = mul nsw i32 %24, %conv2.i.i.us.3
  %447 = sext i32 %mul9.i.i.us.3 to i64
  br i1 %cmp.i.i.us.3, label %pregion_for_entry.entry.i.i.us.us.3.preheader, label %pregion_for_end.i.i.us.3

pregion_for_entry.entry.i.i.us.us.3.preheader:    ; preds = %pregion_for_end.i.i.us.2
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %if.end.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3.preheader
  %_local_id_x.i.0.us.us.3 = phi i64 [ %456, %if.end.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3.preheader ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %cmp4.i.i.us.us.3 = icmp sgt i32 %28, %conv.i.i.us.us.3
  br i1 %cmp4.i.i.us.us.3, label %if.then.i.i.us.us.3, label %if.end.i.i.us.us.3

if.then.i.i.us.us.3:                              ; preds = %pregion_for_entry.entry.i.i.us.us.3
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.3
  %448 = load float, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12
  %mul6.i.i.us.us.3 = fmul float %20, %448
  store float %mul6.i.i.us.us.3, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.i.us.us.3 = mul nsw i32 %24, %conv.i.i.us.us.3
  %449 = sext i32 %mul14.i.i.us.us.3 to i64
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %if.then.i.i.us.us.3
  %indvars.iv.next.i.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %if.then.i.i.us.us.3 ]
  %450 = phi float [ %455, %for.body.i.i.us.us.3 ], [ %mul6.i.i.us.us.3, %if.then.i.i.us.us.3 ]
  %451 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %447
  %arrayidx12.i.i.us.us.3 = getelementptr inbounds float, float* %8, i64 %451
  %452 = load float, float* %arrayidx12.i.i.us.us.3, align 4, !tbaa !12
  %mul13.i.i.us.us.3 = fmul float %16, %452
  %453 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %449
  %arrayidx17.i.i.us.us.3 = getelementptr inbounds float, float* %8, i64 %453
  %454 = load float, float* %arrayidx17.i.i.us.us.3, align 4, !tbaa !12
  %455 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.3, float %454, float %450) #2
  store float %455, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %if.end.i.i.us.us.3.loopexit, label %for.body.i.i.us.us.3, !llvm.loop !21

if.end.i.i.us.us.3.loopexit:                      ; preds = %for.body.i.i.us.us.3
  br label %if.end.i.i.us.us.3

if.end.i.i.us.us.3:                               ; preds = %if.end.i.i.us.us.3.loopexit, %pregion_for_entry.entry.i.i.us.us.3
  %456 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 1
  %exitcond.not.3 = icmp eq i64 %456, 32
  br i1 %exitcond.not.3, label %pregion_for_end.i.i.us.3.loopexit, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !19

pregion_for_end.i.i.us.3.loopexit:                ; preds = %if.end.i.i.us.us.3
  br label %pregion_for_end.i.i.us.3

pregion_for_end.i.i.us.3:                         ; preds = %pregion_for_end.i.i.us.3.loopexit, %pregion_for_end.i.i.us.2
  %457 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %457, 4
  %cmp.i.i.us.4 = icmp sgt i32 %28, %conv2.i.i.us.4
  %mul.i.i.us.4 = mul nsw i32 %28, %conv2.i.i.us.4
  %mul9.i.i.us.4 = mul nsw i32 %24, %conv2.i.i.us.4
  %458 = sext i32 %mul9.i.i.us.4 to i64
  br i1 %cmp.i.i.us.4, label %pregion_for_entry.entry.i.i.us.us.4.preheader, label %pregion_for_end.i.i.us.4

pregion_for_entry.entry.i.i.us.us.4.preheader:    ; preds = %pregion_for_end.i.i.us.3
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %if.end.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4.preheader
  %_local_id_x.i.0.us.us.4 = phi i64 [ %467, %if.end.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4.preheader ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %cmp4.i.i.us.us.4 = icmp sgt i32 %28, %conv.i.i.us.us.4
  br i1 %cmp4.i.i.us.us.4, label %if.then.i.i.us.us.4, label %if.end.i.i.us.us.4

if.then.i.i.us.us.4:                              ; preds = %pregion_for_entry.entry.i.i.us.us.4
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.4
  %459 = load float, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12
  %mul6.i.i.us.us.4 = fmul float %20, %459
  store float %mul6.i.i.us.us.4, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.i.us.us.4 = mul nsw i32 %24, %conv.i.i.us.us.4
  %460 = sext i32 %mul14.i.i.us.us.4 to i64
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %if.then.i.i.us.us.4
  %indvars.iv.next.i.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %if.then.i.i.us.us.4 ]
  %461 = phi float [ %466, %for.body.i.i.us.us.4 ], [ %mul6.i.i.us.us.4, %if.then.i.i.us.us.4 ]
  %462 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %458
  %arrayidx12.i.i.us.us.4 = getelementptr inbounds float, float* %8, i64 %462
  %463 = load float, float* %arrayidx12.i.i.us.us.4, align 4, !tbaa !12
  %mul13.i.i.us.us.4 = fmul float %16, %463
  %464 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %460
  %arrayidx17.i.i.us.us.4 = getelementptr inbounds float, float* %8, i64 %464
  %465 = load float, float* %arrayidx17.i.i.us.us.4, align 4, !tbaa !12
  %466 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.4, float %465, float %461) #2
  store float %466, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %if.end.i.i.us.us.4.loopexit, label %for.body.i.i.us.us.4, !llvm.loop !21

if.end.i.i.us.us.4.loopexit:                      ; preds = %for.body.i.i.us.us.4
  br label %if.end.i.i.us.us.4

if.end.i.i.us.us.4:                               ; preds = %if.end.i.i.us.us.4.loopexit, %pregion_for_entry.entry.i.i.us.us.4
  %467 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 1
  %exitcond.not.4 = icmp eq i64 %467, 32
  br i1 %exitcond.not.4, label %pregion_for_end.i.i.us.4.loopexit, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !19

pregion_for_end.i.i.us.4.loopexit:                ; preds = %if.end.i.i.us.us.4
  br label %pregion_for_end.i.i.us.4

pregion_for_end.i.i.us.4:                         ; preds = %pregion_for_end.i.i.us.4.loopexit, %pregion_for_end.i.i.us.3
  %468 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %468, 5
  %cmp.i.i.us.5 = icmp sgt i32 %28, %conv2.i.i.us.5
  %mul.i.i.us.5 = mul nsw i32 %28, %conv2.i.i.us.5
  %mul9.i.i.us.5 = mul nsw i32 %24, %conv2.i.i.us.5
  %469 = sext i32 %mul9.i.i.us.5 to i64
  br i1 %cmp.i.i.us.5, label %pregion_for_entry.entry.i.i.us.us.5.preheader, label %pregion_for_end.i.i.us.5

pregion_for_entry.entry.i.i.us.us.5.preheader:    ; preds = %pregion_for_end.i.i.us.4
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %if.end.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5.preheader
  %_local_id_x.i.0.us.us.5 = phi i64 [ %478, %if.end.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5.preheader ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %cmp4.i.i.us.us.5 = icmp sgt i32 %28, %conv.i.i.us.us.5
  br i1 %cmp4.i.i.us.us.5, label %if.then.i.i.us.us.5, label %if.end.i.i.us.us.5

if.then.i.i.us.us.5:                              ; preds = %pregion_for_entry.entry.i.i.us.us.5
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.5
  %470 = load float, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12
  %mul6.i.i.us.us.5 = fmul float %20, %470
  store float %mul6.i.i.us.us.5, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.i.us.us.5 = mul nsw i32 %24, %conv.i.i.us.us.5
  %471 = sext i32 %mul14.i.i.us.us.5 to i64
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %if.then.i.i.us.us.5
  %indvars.iv.next.i.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %if.then.i.i.us.us.5 ]
  %472 = phi float [ %477, %for.body.i.i.us.us.5 ], [ %mul6.i.i.us.us.5, %if.then.i.i.us.us.5 ]
  %473 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %469
  %arrayidx12.i.i.us.us.5 = getelementptr inbounds float, float* %8, i64 %473
  %474 = load float, float* %arrayidx12.i.i.us.us.5, align 4, !tbaa !12
  %mul13.i.i.us.us.5 = fmul float %16, %474
  %475 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %471
  %arrayidx17.i.i.us.us.5 = getelementptr inbounds float, float* %8, i64 %475
  %476 = load float, float* %arrayidx17.i.i.us.us.5, align 4, !tbaa !12
  %477 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.5, float %476, float %472) #2
  store float %477, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %if.end.i.i.us.us.5.loopexit, label %for.body.i.i.us.us.5, !llvm.loop !21

if.end.i.i.us.us.5.loopexit:                      ; preds = %for.body.i.i.us.us.5
  br label %if.end.i.i.us.us.5

if.end.i.i.us.us.5:                               ; preds = %if.end.i.i.us.us.5.loopexit, %pregion_for_entry.entry.i.i.us.us.5
  %478 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 1
  %exitcond.not.5 = icmp eq i64 %478, 32
  br i1 %exitcond.not.5, label %pregion_for_end.i.i.us.5.loopexit, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !19

pregion_for_end.i.i.us.5.loopexit:                ; preds = %if.end.i.i.us.us.5
  br label %pregion_for_end.i.i.us.5

pregion_for_end.i.i.us.5:                         ; preds = %pregion_for_end.i.i.us.5.loopexit, %pregion_for_end.i.i.us.4
  %479 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %479, 6
  %cmp.i.i.us.6 = icmp sgt i32 %28, %conv2.i.i.us.6
  %mul.i.i.us.6 = mul nsw i32 %28, %conv2.i.i.us.6
  %mul9.i.i.us.6 = mul nsw i32 %24, %conv2.i.i.us.6
  %480 = sext i32 %mul9.i.i.us.6 to i64
  br i1 %cmp.i.i.us.6, label %pregion_for_entry.entry.i.i.us.us.6.preheader, label %pregion_for_end.i.i.us.6

pregion_for_entry.entry.i.i.us.us.6.preheader:    ; preds = %pregion_for_end.i.i.us.5
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %if.end.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6.preheader
  %_local_id_x.i.0.us.us.6 = phi i64 [ %489, %if.end.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6.preheader ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %cmp4.i.i.us.us.6 = icmp sgt i32 %28, %conv.i.i.us.us.6
  br i1 %cmp4.i.i.us.us.6, label %if.then.i.i.us.us.6, label %if.end.i.i.us.us.6

if.then.i.i.us.us.6:                              ; preds = %pregion_for_entry.entry.i.i.us.us.6
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.6
  %481 = load float, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12
  %mul6.i.i.us.us.6 = fmul float %20, %481
  store float %mul6.i.i.us.us.6, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.i.us.us.6 = mul nsw i32 %24, %conv.i.i.us.us.6
  %482 = sext i32 %mul14.i.i.us.us.6 to i64
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %if.then.i.i.us.us.6
  %indvars.iv.next.i.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %if.then.i.i.us.us.6 ]
  %483 = phi float [ %488, %for.body.i.i.us.us.6 ], [ %mul6.i.i.us.us.6, %if.then.i.i.us.us.6 ]
  %484 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %480
  %arrayidx12.i.i.us.us.6 = getelementptr inbounds float, float* %8, i64 %484
  %485 = load float, float* %arrayidx12.i.i.us.us.6, align 4, !tbaa !12
  %mul13.i.i.us.us.6 = fmul float %16, %485
  %486 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %482
  %arrayidx17.i.i.us.us.6 = getelementptr inbounds float, float* %8, i64 %486
  %487 = load float, float* %arrayidx17.i.i.us.us.6, align 4, !tbaa !12
  %488 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.6, float %487, float %483) #2
  store float %488, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %if.end.i.i.us.us.6.loopexit, label %for.body.i.i.us.us.6, !llvm.loop !21

if.end.i.i.us.us.6.loopexit:                      ; preds = %for.body.i.i.us.us.6
  br label %if.end.i.i.us.us.6

if.end.i.i.us.us.6:                               ; preds = %if.end.i.i.us.us.6.loopexit, %pregion_for_entry.entry.i.i.us.us.6
  %489 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 1
  %exitcond.not.6 = icmp eq i64 %489, 32
  br i1 %exitcond.not.6, label %pregion_for_end.i.i.us.6.loopexit, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !19

pregion_for_end.i.i.us.6.loopexit:                ; preds = %if.end.i.i.us.us.6
  br label %pregion_for_end.i.i.us.6

pregion_for_end.i.i.us.6:                         ; preds = %pregion_for_end.i.i.us.6.loopexit, %pregion_for_end.i.i.us.5
  %490 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %490, 7
  %cmp.i.i.us.7 = icmp sgt i32 %28, %conv2.i.i.us.7
  %mul.i.i.us.7 = mul nsw i32 %28, %conv2.i.i.us.7
  %mul9.i.i.us.7 = mul nsw i32 %24, %conv2.i.i.us.7
  %491 = sext i32 %mul9.i.i.us.7 to i64
  br i1 %cmp.i.i.us.7, label %pregion_for_entry.entry.i.i.us.us.7.preheader, label %_pocl_kernel_syrk_kernel.exit

pregion_for_entry.entry.i.i.us.us.7.preheader:    ; preds = %pregion_for_end.i.i.us.6
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %if.end.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7.preheader
  %_local_id_x.i.0.us.us.7 = phi i64 [ %500, %if.end.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7.preheader ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %cmp4.i.i.us.us.7 = icmp sgt i32 %28, %conv.i.i.us.us.7
  br i1 %cmp4.i.i.us.us.7, label %if.then.i.i.us.us.7, label %if.end.i.i.us.us.7

if.then.i.i.us.us.7:                              ; preds = %pregion_for_entry.entry.i.i.us.us.7
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.7
  %492 = load float, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12
  %mul6.i.i.us.us.7 = fmul float %20, %492
  store float %mul6.i.i.us.us.7, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.i.us.us.7 = mul nsw i32 %24, %conv.i.i.us.us.7
  %493 = sext i32 %mul14.i.i.us.us.7 to i64
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %if.then.i.i.us.us.7
  %indvars.iv.next.i.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %if.then.i.i.us.us.7 ]
  %494 = phi float [ %499, %for.body.i.i.us.us.7 ], [ %mul6.i.i.us.us.7, %if.then.i.i.us.us.7 ]
  %495 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %491
  %arrayidx12.i.i.us.us.7 = getelementptr inbounds float, float* %8, i64 %495
  %496 = load float, float* %arrayidx12.i.i.us.us.7, align 4, !tbaa !12
  %mul13.i.i.us.us.7 = fmul float %16, %496
  %497 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %493
  %arrayidx17.i.i.us.us.7 = getelementptr inbounds float, float* %8, i64 %497
  %498 = load float, float* %arrayidx17.i.i.us.us.7, align 4, !tbaa !12
  %499 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.7, float %498, float %494) #2
  store float %499, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %if.end.i.i.us.us.7.loopexit, label %for.body.i.i.us.us.7, !llvm.loop !21

if.end.i.i.us.us.7.loopexit:                      ; preds = %for.body.i.i.us.us.7
  br label %if.end.i.i.us.us.7

if.end.i.i.us.us.7:                               ; preds = %if.end.i.i.us.us.7.loopexit, %pregion_for_entry.entry.i.i.us.us.7
  %500 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 1
  %exitcond.not.7 = icmp eq i64 %500, 32
  br i1 %exitcond.not.7, label %_pocl_kernel_syrk_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !19

if.then.i.i.us.7.1:                               ; preds = %if.end.i.i.us.7
  %add.i.i.us.7.1 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.1
  %idxprom.i.i.us.7.1 = sext i32 %add.i.i.us.7.1 to i64
  %arrayidx.i.i.us.7.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.7.1
  %501 = load float, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12
  %mul6.i.i.us.7.1 = fmul float %20, %501
  store float %mul6.i.i.us.7.1, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.1

if.end.i.i.us.7.1:                                ; preds = %if.then.i.i.us.7.1, %if.end.i.i.us.7
  %502 = or i64 %_local_id_x.i.0.us.7, 2
  %add1.i.i.i.us.7.2 = add nuw nsw i64 %502, %mul.i.i.i
  %conv.i.i.us.7.2 = trunc i64 %add1.i.i.i.us.7.2 to i32
  %cmp4.i.i.us.7.2 = icmp sgt i32 %28, %conv.i.i.us.7.2
  br i1 %cmp4.i.i.us.7.2, label %if.then.i.i.us.7.2, label %if.end.i.i.us.7.2

if.then.i.i.us.7.2:                               ; preds = %if.end.i.i.us.7.1
  %add.i.i.us.7.2 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.2
  %idxprom.i.i.us.7.2 = sext i32 %add.i.i.us.7.2 to i64
  %arrayidx.i.i.us.7.2 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.7.2
  %503 = load float, float* %arrayidx.i.i.us.7.2, align 4, !tbaa !12
  %mul6.i.i.us.7.2 = fmul float %20, %503
  store float %mul6.i.i.us.7.2, float* %arrayidx.i.i.us.7.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.2

if.end.i.i.us.7.2:                                ; preds = %if.then.i.i.us.7.2, %if.end.i.i.us.7.1
  %504 = or i64 %_local_id_x.i.0.us.7, 3
  %add1.i.i.i.us.7.3 = add nuw nsw i64 %504, %mul.i.i.i
  %conv.i.i.us.7.3 = trunc i64 %add1.i.i.i.us.7.3 to i32
  %cmp4.i.i.us.7.3 = icmp sgt i32 %28, %conv.i.i.us.7.3
  br i1 %cmp4.i.i.us.7.3, label %if.then.i.i.us.7.3, label %if.end.i.i.us.7.3

if.then.i.i.us.7.3:                               ; preds = %if.end.i.i.us.7.2
  %add.i.i.us.7.3 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.3
  %idxprom.i.i.us.7.3 = sext i32 %add.i.i.us.7.3 to i64
  %arrayidx.i.i.us.7.3 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.7.3
  %505 = load float, float* %arrayidx.i.i.us.7.3, align 4, !tbaa !12
  %mul6.i.i.us.7.3 = fmul float %20, %505
  store float %mul6.i.i.us.7.3, float* %arrayidx.i.i.us.7.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.3

if.end.i.i.us.7.3:                                ; preds = %if.then.i.i.us.7.3, %if.end.i.i.us.7.2
  %506 = add nuw nsw i64 %_local_id_x.i.0.us.7, 4
  %exitcond34.7.not.3 = icmp eq i64 %506, 32
  br i1 %exitcond34.7.not.3, label %_pocl_kernel_syrk_kernel.exit.loopexit238, label %pregion_for_entry.entry.i.i.us.7, !llvm.loop !32

if.then.i.i.us.6.1:                               ; preds = %if.end.i.i.us.6
  %add.i.i.us.6.1 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.1
  %idxprom.i.i.us.6.1 = sext i32 %add.i.i.us.6.1 to i64
  %arrayidx.i.i.us.6.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.6.1
  %507 = load float, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12
  %mul6.i.i.us.6.1 = fmul float %20, %507
  store float %mul6.i.i.us.6.1, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.1

if.end.i.i.us.6.1:                                ; preds = %if.then.i.i.us.6.1, %if.end.i.i.us.6
  %508 = or i64 %_local_id_x.i.0.us.6, 2
  %add1.i.i.i.us.6.2 = add nuw nsw i64 %508, %mul.i.i.i
  %conv.i.i.us.6.2 = trunc i64 %add1.i.i.i.us.6.2 to i32
  %cmp4.i.i.us.6.2 = icmp sgt i32 %28, %conv.i.i.us.6.2
  br i1 %cmp4.i.i.us.6.2, label %if.then.i.i.us.6.2, label %if.end.i.i.us.6.2

if.then.i.i.us.6.2:                               ; preds = %if.end.i.i.us.6.1
  %add.i.i.us.6.2 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.2
  %idxprom.i.i.us.6.2 = sext i32 %add.i.i.us.6.2 to i64
  %arrayidx.i.i.us.6.2 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.6.2
  %509 = load float, float* %arrayidx.i.i.us.6.2, align 4, !tbaa !12
  %mul6.i.i.us.6.2 = fmul float %20, %509
  store float %mul6.i.i.us.6.2, float* %arrayidx.i.i.us.6.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.2

if.end.i.i.us.6.2:                                ; preds = %if.then.i.i.us.6.2, %if.end.i.i.us.6.1
  %510 = or i64 %_local_id_x.i.0.us.6, 3
  %add1.i.i.i.us.6.3 = add nuw nsw i64 %510, %mul.i.i.i
  %conv.i.i.us.6.3 = trunc i64 %add1.i.i.i.us.6.3 to i32
  %cmp4.i.i.us.6.3 = icmp sgt i32 %28, %conv.i.i.us.6.3
  br i1 %cmp4.i.i.us.6.3, label %if.then.i.i.us.6.3, label %if.end.i.i.us.6.3

if.then.i.i.us.6.3:                               ; preds = %if.end.i.i.us.6.2
  %add.i.i.us.6.3 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.3
  %idxprom.i.i.us.6.3 = sext i32 %add.i.i.us.6.3 to i64
  %arrayidx.i.i.us.6.3 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.6.3
  %511 = load float, float* %arrayidx.i.i.us.6.3, align 4, !tbaa !12
  %mul6.i.i.us.6.3 = fmul float %20, %511
  store float %mul6.i.i.us.6.3, float* %arrayidx.i.i.us.6.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.3

if.end.i.i.us.6.3:                                ; preds = %if.then.i.i.us.6.3, %if.end.i.i.us.6.2
  %512 = add nuw nsw i64 %_local_id_x.i.0.us.6, 4
  %exitcond34.6.not.3 = icmp eq i64 %512, 32
  br i1 %exitcond34.6.not.3, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.6, !llvm.loop !33

if.then.i.i.us.5.1:                               ; preds = %if.end.i.i.us.5
  %add.i.i.us.5.1 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.1
  %idxprom.i.i.us.5.1 = sext i32 %add.i.i.us.5.1 to i64
  %arrayidx.i.i.us.5.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.5.1
  %513 = load float, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12
  %mul6.i.i.us.5.1 = fmul float %20, %513
  store float %mul6.i.i.us.5.1, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.1

if.end.i.i.us.5.1:                                ; preds = %if.then.i.i.us.5.1, %if.end.i.i.us.5
  %514 = or i64 %_local_id_x.i.0.us.5, 2
  %add1.i.i.i.us.5.2 = add nuw nsw i64 %514, %mul.i.i.i
  %conv.i.i.us.5.2 = trunc i64 %add1.i.i.i.us.5.2 to i32
  %cmp4.i.i.us.5.2 = icmp sgt i32 %28, %conv.i.i.us.5.2
  br i1 %cmp4.i.i.us.5.2, label %if.then.i.i.us.5.2, label %if.end.i.i.us.5.2

if.then.i.i.us.5.2:                               ; preds = %if.end.i.i.us.5.1
  %add.i.i.us.5.2 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.2
  %idxprom.i.i.us.5.2 = sext i32 %add.i.i.us.5.2 to i64
  %arrayidx.i.i.us.5.2 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.5.2
  %515 = load float, float* %arrayidx.i.i.us.5.2, align 4, !tbaa !12
  %mul6.i.i.us.5.2 = fmul float %20, %515
  store float %mul6.i.i.us.5.2, float* %arrayidx.i.i.us.5.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.2

if.end.i.i.us.5.2:                                ; preds = %if.then.i.i.us.5.2, %if.end.i.i.us.5.1
  %516 = or i64 %_local_id_x.i.0.us.5, 3
  %add1.i.i.i.us.5.3 = add nuw nsw i64 %516, %mul.i.i.i
  %conv.i.i.us.5.3 = trunc i64 %add1.i.i.i.us.5.3 to i32
  %cmp4.i.i.us.5.3 = icmp sgt i32 %28, %conv.i.i.us.5.3
  br i1 %cmp4.i.i.us.5.3, label %if.then.i.i.us.5.3, label %if.end.i.i.us.5.3

if.then.i.i.us.5.3:                               ; preds = %if.end.i.i.us.5.2
  %add.i.i.us.5.3 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.3
  %idxprom.i.i.us.5.3 = sext i32 %add.i.i.us.5.3 to i64
  %arrayidx.i.i.us.5.3 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.5.3
  %517 = load float, float* %arrayidx.i.i.us.5.3, align 4, !tbaa !12
  %mul6.i.i.us.5.3 = fmul float %20, %517
  store float %mul6.i.i.us.5.3, float* %arrayidx.i.i.us.5.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.3

if.end.i.i.us.5.3:                                ; preds = %if.then.i.i.us.5.3, %if.end.i.i.us.5.2
  %518 = add nuw nsw i64 %_local_id_x.i.0.us.5, 4
  %exitcond34.5.not.3 = icmp eq i64 %518, 32
  br i1 %exitcond34.5.not.3, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.5, !llvm.loop !34

if.then.i.i.us.4.1:                               ; preds = %if.end.i.i.us.4
  %add.i.i.us.4.1 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.1
  %idxprom.i.i.us.4.1 = sext i32 %add.i.i.us.4.1 to i64
  %arrayidx.i.i.us.4.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.4.1
  %519 = load float, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12
  %mul6.i.i.us.4.1 = fmul float %20, %519
  store float %mul6.i.i.us.4.1, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.1

if.end.i.i.us.4.1:                                ; preds = %if.then.i.i.us.4.1, %if.end.i.i.us.4
  %520 = or i64 %_local_id_x.i.0.us.4, 2
  %add1.i.i.i.us.4.2 = add nuw nsw i64 %520, %mul.i.i.i
  %conv.i.i.us.4.2 = trunc i64 %add1.i.i.i.us.4.2 to i32
  %cmp4.i.i.us.4.2 = icmp sgt i32 %28, %conv.i.i.us.4.2
  br i1 %cmp4.i.i.us.4.2, label %if.then.i.i.us.4.2, label %if.end.i.i.us.4.2

if.then.i.i.us.4.2:                               ; preds = %if.end.i.i.us.4.1
  %add.i.i.us.4.2 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.2
  %idxprom.i.i.us.4.2 = sext i32 %add.i.i.us.4.2 to i64
  %arrayidx.i.i.us.4.2 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.4.2
  %521 = load float, float* %arrayidx.i.i.us.4.2, align 4, !tbaa !12
  %mul6.i.i.us.4.2 = fmul float %20, %521
  store float %mul6.i.i.us.4.2, float* %arrayidx.i.i.us.4.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.2

if.end.i.i.us.4.2:                                ; preds = %if.then.i.i.us.4.2, %if.end.i.i.us.4.1
  %522 = or i64 %_local_id_x.i.0.us.4, 3
  %add1.i.i.i.us.4.3 = add nuw nsw i64 %522, %mul.i.i.i
  %conv.i.i.us.4.3 = trunc i64 %add1.i.i.i.us.4.3 to i32
  %cmp4.i.i.us.4.3 = icmp sgt i32 %28, %conv.i.i.us.4.3
  br i1 %cmp4.i.i.us.4.3, label %if.then.i.i.us.4.3, label %if.end.i.i.us.4.3

if.then.i.i.us.4.3:                               ; preds = %if.end.i.i.us.4.2
  %add.i.i.us.4.3 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.3
  %idxprom.i.i.us.4.3 = sext i32 %add.i.i.us.4.3 to i64
  %arrayidx.i.i.us.4.3 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.4.3
  %523 = load float, float* %arrayidx.i.i.us.4.3, align 4, !tbaa !12
  %mul6.i.i.us.4.3 = fmul float %20, %523
  store float %mul6.i.i.us.4.3, float* %arrayidx.i.i.us.4.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.3

if.end.i.i.us.4.3:                                ; preds = %if.then.i.i.us.4.3, %if.end.i.i.us.4.2
  %524 = add nuw nsw i64 %_local_id_x.i.0.us.4, 4
  %exitcond34.4.not.3 = icmp eq i64 %524, 32
  br i1 %exitcond34.4.not.3, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.4, !llvm.loop !35

if.then.i.i.us.3.1:                               ; preds = %if.end.i.i.us.3
  %add.i.i.us.3.1 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.1
  %idxprom.i.i.us.3.1 = sext i32 %add.i.i.us.3.1 to i64
  %arrayidx.i.i.us.3.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.3.1
  %525 = load float, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12
  %mul6.i.i.us.3.1 = fmul float %20, %525
  store float %mul6.i.i.us.3.1, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.1

if.end.i.i.us.3.1:                                ; preds = %if.then.i.i.us.3.1, %if.end.i.i.us.3
  %526 = or i64 %_local_id_x.i.0.us.3, 2
  %add1.i.i.i.us.3.2 = add nuw nsw i64 %526, %mul.i.i.i
  %conv.i.i.us.3.2 = trunc i64 %add1.i.i.i.us.3.2 to i32
  %cmp4.i.i.us.3.2 = icmp sgt i32 %28, %conv.i.i.us.3.2
  br i1 %cmp4.i.i.us.3.2, label %if.then.i.i.us.3.2, label %if.end.i.i.us.3.2

if.then.i.i.us.3.2:                               ; preds = %if.end.i.i.us.3.1
  %add.i.i.us.3.2 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.2
  %idxprom.i.i.us.3.2 = sext i32 %add.i.i.us.3.2 to i64
  %arrayidx.i.i.us.3.2 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.3.2
  %527 = load float, float* %arrayidx.i.i.us.3.2, align 4, !tbaa !12
  %mul6.i.i.us.3.2 = fmul float %20, %527
  store float %mul6.i.i.us.3.2, float* %arrayidx.i.i.us.3.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.2

if.end.i.i.us.3.2:                                ; preds = %if.then.i.i.us.3.2, %if.end.i.i.us.3.1
  %528 = or i64 %_local_id_x.i.0.us.3, 3
  %add1.i.i.i.us.3.3 = add nuw nsw i64 %528, %mul.i.i.i
  %conv.i.i.us.3.3 = trunc i64 %add1.i.i.i.us.3.3 to i32
  %cmp4.i.i.us.3.3 = icmp sgt i32 %28, %conv.i.i.us.3.3
  br i1 %cmp4.i.i.us.3.3, label %if.then.i.i.us.3.3, label %if.end.i.i.us.3.3

if.then.i.i.us.3.3:                               ; preds = %if.end.i.i.us.3.2
  %add.i.i.us.3.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.3
  %idxprom.i.i.us.3.3 = sext i32 %add.i.i.us.3.3 to i64
  %arrayidx.i.i.us.3.3 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.3.3
  %529 = load float, float* %arrayidx.i.i.us.3.3, align 4, !tbaa !12
  %mul6.i.i.us.3.3 = fmul float %20, %529
  store float %mul6.i.i.us.3.3, float* %arrayidx.i.i.us.3.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.3

if.end.i.i.us.3.3:                                ; preds = %if.then.i.i.us.3.3, %if.end.i.i.us.3.2
  %530 = add nuw nsw i64 %_local_id_x.i.0.us.3, 4
  %exitcond34.3.not.3 = icmp eq i64 %530, 32
  br i1 %exitcond34.3.not.3, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.3, !llvm.loop !36

if.then.i.i.us.2.1:                               ; preds = %if.end.i.i.us.2
  %add.i.i.us.2.1 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.1
  %idxprom.i.i.us.2.1 = sext i32 %add.i.i.us.2.1 to i64
  %arrayidx.i.i.us.2.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.2.1
  %531 = load float, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12
  %mul6.i.i.us.2.1 = fmul float %20, %531
  store float %mul6.i.i.us.2.1, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.1

if.end.i.i.us.2.1:                                ; preds = %if.then.i.i.us.2.1, %if.end.i.i.us.2
  %532 = or i64 %_local_id_x.i.0.us.2, 2
  %add1.i.i.i.us.2.2 = add nuw nsw i64 %532, %mul.i.i.i
  %conv.i.i.us.2.2 = trunc i64 %add1.i.i.i.us.2.2 to i32
  %cmp4.i.i.us.2.2 = icmp sgt i32 %28, %conv.i.i.us.2.2
  br i1 %cmp4.i.i.us.2.2, label %if.then.i.i.us.2.2, label %if.end.i.i.us.2.2

if.then.i.i.us.2.2:                               ; preds = %if.end.i.i.us.2.1
  %add.i.i.us.2.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.2
  %idxprom.i.i.us.2.2 = sext i32 %add.i.i.us.2.2 to i64
  %arrayidx.i.i.us.2.2 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.2.2
  %533 = load float, float* %arrayidx.i.i.us.2.2, align 4, !tbaa !12
  %mul6.i.i.us.2.2 = fmul float %20, %533
  store float %mul6.i.i.us.2.2, float* %arrayidx.i.i.us.2.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.2

if.end.i.i.us.2.2:                                ; preds = %if.then.i.i.us.2.2, %if.end.i.i.us.2.1
  %534 = or i64 %_local_id_x.i.0.us.2, 3
  %add1.i.i.i.us.2.3 = add nuw nsw i64 %534, %mul.i.i.i
  %conv.i.i.us.2.3 = trunc i64 %add1.i.i.i.us.2.3 to i32
  %cmp4.i.i.us.2.3 = icmp sgt i32 %28, %conv.i.i.us.2.3
  br i1 %cmp4.i.i.us.2.3, label %if.then.i.i.us.2.3, label %if.end.i.i.us.2.3

if.then.i.i.us.2.3:                               ; preds = %if.end.i.i.us.2.2
  %add.i.i.us.2.3 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.3
  %idxprom.i.i.us.2.3 = sext i32 %add.i.i.us.2.3 to i64
  %arrayidx.i.i.us.2.3 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.2.3
  %535 = load float, float* %arrayidx.i.i.us.2.3, align 4, !tbaa !12
  %mul6.i.i.us.2.3 = fmul float %20, %535
  store float %mul6.i.i.us.2.3, float* %arrayidx.i.i.us.2.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.3

if.end.i.i.us.2.3:                                ; preds = %if.then.i.i.us.2.3, %if.end.i.i.us.2.2
  %536 = add nuw nsw i64 %_local_id_x.i.0.us.2, 4
  %exitcond34.2.not.3 = icmp eq i64 %536, 32
  br i1 %exitcond34.2.not.3, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.2, !llvm.loop !37

if.then.i.i.us.1.1:                               ; preds = %if.end.i.i.us.1
  %add.i.i.us.1.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.1
  %idxprom.i.i.us.1.1 = sext i32 %add.i.i.us.1.1 to i64
  %arrayidx.i.i.us.1.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.1.1
  %537 = load float, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12
  %mul6.i.i.us.1.1 = fmul float %20, %537
  store float %mul6.i.i.us.1.1, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.1

if.end.i.i.us.1.1:                                ; preds = %if.then.i.i.us.1.1, %if.end.i.i.us.1
  %538 = or i64 %_local_id_x.i.0.us.1, 2
  %add1.i.i.i.us.1.2 = add nuw nsw i64 %538, %mul.i.i.i
  %conv.i.i.us.1.2 = trunc i64 %add1.i.i.i.us.1.2 to i32
  %cmp4.i.i.us.1.2 = icmp sgt i32 %28, %conv.i.i.us.1.2
  br i1 %cmp4.i.i.us.1.2, label %if.then.i.i.us.1.2, label %if.end.i.i.us.1.2

if.then.i.i.us.1.2:                               ; preds = %if.end.i.i.us.1.1
  %add.i.i.us.1.2 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.2
  %idxprom.i.i.us.1.2 = sext i32 %add.i.i.us.1.2 to i64
  %arrayidx.i.i.us.1.2 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.1.2
  %539 = load float, float* %arrayidx.i.i.us.1.2, align 4, !tbaa !12
  %mul6.i.i.us.1.2 = fmul float %20, %539
  store float %mul6.i.i.us.1.2, float* %arrayidx.i.i.us.1.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.2

if.end.i.i.us.1.2:                                ; preds = %if.then.i.i.us.1.2, %if.end.i.i.us.1.1
  %540 = or i64 %_local_id_x.i.0.us.1, 3
  %add1.i.i.i.us.1.3 = add nuw nsw i64 %540, %mul.i.i.i
  %conv.i.i.us.1.3 = trunc i64 %add1.i.i.i.us.1.3 to i32
  %cmp4.i.i.us.1.3 = icmp sgt i32 %28, %conv.i.i.us.1.3
  br i1 %cmp4.i.i.us.1.3, label %if.then.i.i.us.1.3, label %if.end.i.i.us.1.3

if.then.i.i.us.1.3:                               ; preds = %if.end.i.i.us.1.2
  %add.i.i.us.1.3 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.3
  %idxprom.i.i.us.1.3 = sext i32 %add.i.i.us.1.3 to i64
  %arrayidx.i.i.us.1.3 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.1.3
  %541 = load float, float* %arrayidx.i.i.us.1.3, align 4, !tbaa !12
  %mul6.i.i.us.1.3 = fmul float %20, %541
  store float %mul6.i.i.us.1.3, float* %arrayidx.i.i.us.1.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.3

if.end.i.i.us.1.3:                                ; preds = %if.then.i.i.us.1.3, %if.end.i.i.us.1.2
  %542 = add nuw nsw i64 %_local_id_x.i.0.us.1, 4
  %exitcond34.1.not.3 = icmp eq i64 %542, 32
  br i1 %exitcond34.1.not.3, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.1, !llvm.loop !38

if.then.i.i.us.1214:                              ; preds = %if.end.i.i.us
  %add.i.i.us.1210 = add nsw i32 %mul.i.i.us, %conv.i.i.us.1207
  %idxprom.i.i.us.1211 = sext i32 %add.i.i.us.1210 to i64
  %arrayidx.i.i.us.1212 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.1211
  %543 = load float, float* %arrayidx.i.i.us.1212, align 4, !tbaa !12
  %mul6.i.i.us.1213 = fmul float %20, %543
  store float %mul6.i.i.us.1213, float* %arrayidx.i.i.us.1212, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1215

if.end.i.i.us.1215:                               ; preds = %if.then.i.i.us.1214, %if.end.i.i.us
  %544 = or i64 %_local_id_x.i.0.us, 2
  %add1.i.i.i.us.2217 = add nuw nsw i64 %544, %mul.i.i.i
  %conv.i.i.us.2218 = trunc i64 %add1.i.i.i.us.2217 to i32
  %cmp4.i.i.us.2219 = icmp sgt i32 %28, %conv.i.i.us.2218
  br i1 %cmp4.i.i.us.2219, label %if.then.i.i.us.2225, label %if.end.i.i.us.2226

if.then.i.i.us.2225:                              ; preds = %if.end.i.i.us.1215
  %add.i.i.us.2221 = add nsw i32 %mul.i.i.us, %conv.i.i.us.2218
  %idxprom.i.i.us.2222 = sext i32 %add.i.i.us.2221 to i64
  %arrayidx.i.i.us.2223 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.2222
  %545 = load float, float* %arrayidx.i.i.us.2223, align 4, !tbaa !12
  %mul6.i.i.us.2224 = fmul float %20, %545
  store float %mul6.i.i.us.2224, float* %arrayidx.i.i.us.2223, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2226

if.end.i.i.us.2226:                               ; preds = %if.then.i.i.us.2225, %if.end.i.i.us.1215
  %546 = or i64 %_local_id_x.i.0.us, 3
  %add1.i.i.i.us.3228 = add nuw nsw i64 %546, %mul.i.i.i
  %conv.i.i.us.3229 = trunc i64 %add1.i.i.i.us.3228 to i32
  %cmp4.i.i.us.3230 = icmp sgt i32 %28, %conv.i.i.us.3229
  br i1 %cmp4.i.i.us.3230, label %if.then.i.i.us.3236, label %if.end.i.i.us.3237

if.then.i.i.us.3236:                              ; preds = %if.end.i.i.us.2226
  %add.i.i.us.3232 = add nsw i32 %mul.i.i.us, %conv.i.i.us.3229
  %idxprom.i.i.us.3233 = sext i32 %add.i.i.us.3232 to i64
  %arrayidx.i.i.us.3234 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.3233
  %547 = load float, float* %arrayidx.i.i.us.3234, align 4, !tbaa !12
  %mul6.i.i.us.3235 = fmul float %20, %547
  store float %mul6.i.i.us.3235, float* %arrayidx.i.i.us.3234, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3237

if.end.i.i.us.3237:                               ; preds = %if.then.i.i.us.3236, %if.end.i.i.us.2226
  %548 = add nuw nsw i64 %_local_id_x.i.0.us, 4
  %exitcond34.not.3 = icmp eq i64 %548, 32
  br i1 %exitcond34.not.3, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !39
}

; Function Attrs: nounwind
define void @_pocl_kernel_syrk_kernel_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %16 = bitcast i8** %15 to float**
  %17 = load float*, float** %16, align 8
  %18 = load float, float* %17, align 4
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
  %cmp742.i.i = icmp sgt i32 %22, 0
  %wide.trip.count.i.i = zext i32 %22 to i64
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i.us = icmp sgt i32 %26, %conv2.i.i.us
  %mul.i.i.us = mul nsw i32 %26, %conv2.i.i.us
  br i1 %cmp742.i.i, label %pregion_for_entry.pregion_for_init.i.i.us, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  br i1 %cmp.i.i.us, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %27 = trunc i64 %3 to i32
  %28 = mul i32 %26, %27
  %29 = shl i32 %28, 3
  %30 = trunc i64 %2 to i32
  %31 = shl i32 %30, 5
  %32 = add i32 %29, %31
  %33 = icmp sgt i32 %32, 2147483616
  br i1 %33, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.ph:                                        ; preds = %vector.scevcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert38 = insertelement <8 x i32> undef, i32 %26, i32 0
  %broadcast.splat39 = shufflevector <8 x i32> %broadcast.splatinsert38, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert40 = insertelement <8 x float> undef, float %18, i32 0
  %broadcast.splat41 = shufflevector <8 x float> %broadcast.splatinsert40, <8 x float> undef, <8 x i32> zeroinitializer
  %34 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %35 = or <8 x i32> %34, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %36 = icmp sgt <8 x i32> %broadcast.splat39, %35
  %37 = extractelement <8 x i32> %35, i32 0
  %38 = add nsw i32 %mul.i.i.us, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %10, i64 %39
  %41 = bitcast float* %40 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %41, i32 4, <8 x i1> %36, <8 x float> undef), !tbaa !12
  %42 = fmul <8 x float> %broadcast.splat41, %wide.masked.load
  %43 = bitcast float* %40 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %42, <8 x float>* %43, i32 4, <8 x i1> %36), !tbaa !12, !llvm.access.group !16
  %44 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %45 = or <8 x i32> %44, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %46 = icmp sgt <8 x i32> %broadcast.splat39, %45
  %47 = extractelement <8 x i32> %45, i32 0
  %48 = add nsw i32 %mul.i.i.us, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %10, i64 %49
  %51 = bitcast float* %50 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %51, i32 4, <8 x i1> %46, <8 x float> undef), !tbaa !12
  %52 = fmul <8 x float> %broadcast.splat41, %wide.masked.load.1
  %53 = bitcast float* %50 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %52, <8 x float>* %53, i32 4, <8 x i1> %46), !tbaa !12, !llvm.access.group !16
  %54 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %55 = or <8 x i32> %54, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %56 = icmp sgt <8 x i32> %broadcast.splat39, %55
  %57 = extractelement <8 x i32> %55, i32 0
  %58 = add nsw i32 %mul.i.i.us, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %10, i64 %59
  %61 = bitcast float* %60 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %61, i32 4, <8 x i1> %56, <8 x float> undef), !tbaa !12
  %62 = fmul <8 x float> %broadcast.splat41, %wide.masked.load.2
  %63 = bitcast float* %60 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %62, <8 x float>* %63, i32 4, <8 x i1> %56), !tbaa !12, !llvm.access.group !16
  %64 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %65 = or <8 x i32> %64, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %66 = icmp sgt <8 x i32> %broadcast.splat39, %65
  %67 = extractelement <8 x i32> %65, i32 0
  %68 = add nsw i32 %mul.i.i.us, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %10, i64 %69
  %71 = bitcast float* %70 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %71, i32 4, <8 x i1> %66, <8 x float> undef), !tbaa !12
  %72 = fmul <8 x float> %broadcast.splat41, %wide.masked.load.3
  %73 = bitcast float* %70 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %72, <8 x float>* %73, i32 4, <8 x i1> %66), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

pregion_for_entry.pregion_for_init.i.i.us:        ; preds = %5
  %mul9.i.i.us = mul nsw i32 %22, %conv2.i.i.us
  %74 = sext i32 %mul9.i.i.us to i64
  br i1 %cmp.i.i.us, label %pregion_for_entry.entry.i.i.us.us.preheader, label %pregion_for_end.i.i.us

pregion_for_entry.entry.i.i.us.us.preheader:      ; preds = %pregion_for_entry.pregion_for_init.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_end.i.i.us.loopexit:                  ; preds = %if.end.i.i.us.us
  br label %pregion_for_end.i.i.us

pregion_for_end.i.i.us:                           ; preds = %pregion_for_end.i.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.i.us
  %75 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %75, 1
  %cmp.i.i.us.1 = icmp sgt i32 %26, %conv2.i.i.us.1
  %mul.i.i.us.1 = mul nsw i32 %26, %conv2.i.i.us.1
  %mul9.i.i.us.1 = mul nsw i32 %22, %conv2.i.i.us.1
  %76 = sext i32 %mul9.i.i.us.1 to i64
  br i1 %cmp.i.i.us.1, label %pregion_for_entry.entry.i.i.us.us.1.preheader, label %pregion_for_end.i.i.us.1

pregion_for_entry.entry.i.i.us.us.1.preheader:    ; preds = %pregion_for_end.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.entry.i.i.us.us:                ; preds = %if.end.i.i.us.us, %pregion_for_entry.entry.i.i.us.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ %79, %if.end.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us.preheader ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %cmp4.i.i.us.us = icmp sgt i32 %26, %conv.i.i.us.us
  br i1 %cmp4.i.i.us.us, label %if.then.i.i.us.us, label %if.end.i.i.us.us

if.then.i.i.us.us:                                ; preds = %pregion_for_entry.entry.i.i.us.us
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us
  %77 = load float, float* %arrayidx.i.i.us.us, align 4, !tbaa !12
  %mul6.i.i.us.us = fmul float %18, %77
  store float %mul6.i.i.us.us, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.i.us.us = mul nsw i32 %22, %conv.i.i.us.us
  %78 = sext i32 %mul14.i.i.us.us to i64
  br label %for.body.i.i.us.us

if.end.i.i.us.us.loopexit:                        ; preds = %for.body.i.i.us.us
  br label %if.end.i.i.us.us

if.end.i.i.us.us:                                 ; preds = %if.end.i.i.us.us.loopexit, %pregion_for_entry.entry.i.i.us.us
  %79 = add nuw nsw i64 %_local_id_x.i.0.us.us, 1
  %exitcond.not = icmp eq i64 %79, 32
  br i1 %exitcond.not, label %pregion_for_end.i.i.us.loopexit, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !19

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %if.then.i.i.us.us
  %indvars.iv.next.i.i3.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %if.then.i.i.us.us ]
  %80 = phi float [ %85, %for.body.i.i.us.us ], [ %mul6.i.i.us.us, %if.then.i.i.us.us ]
  %81 = add nsw i64 %indvars.iv.next.i.i3.us.us, %74
  %arrayidx12.i.i.us.us = getelementptr inbounds float, float* %7, i64 %81
  %82 = load float, float* %arrayidx12.i.i.us.us, align 4, !tbaa !12
  %mul13.i.i.us.us = fmul float %14, %82
  %83 = add nsw i64 %indvars.iv.next.i.i3.us.us, %78
  %arrayidx17.i.i.us.us = getelementptr inbounds float, float* %7, i64 %83
  %84 = load float, float* %arrayidx17.i.i.us.us, align 4, !tbaa !12
  %85 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us, float %84, float %80) #2
  store float %85, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i3.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %if.end.i.i.us.us.loopexit, label %for.body.i.i.us.us, !llvm.loop !21

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us.3237, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %546, %if.end.i.i.us.3237 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %26, %conv.i.i.us
  br i1 %cmp4.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add.i.i.us = add nsw i32 %mul.i.i.us, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us
  %86 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %mul6.i.i.us = fmul float %18, %86
  store float %mul6.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %87 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1206 = add nuw nsw i64 %87, %mul.i.i.i
  %conv.i.i.us.1207 = trunc i64 %add1.i.i.i.us.1206 to i32
  %cmp4.i.i.us.1208 = icmp sgt i32 %26, %conv.i.i.us.1207
  br i1 %cmp4.i.i.us.1208, label %if.then.i.i.us.1214, label %if.end.i.i.us.1215

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.i.i.us.3237
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i.preheader
  %88 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.1 = or i32 %88, 1
  %cmp.i.i.1 = icmp sgt i32 %26, %conv2.i.i.1
  %mul.i.i.1 = mul nsw i32 %26, %conv2.i.i.1
  br i1 %cmp.i.i.1, label %vector.scevcheck49, label %pregion_for_end.i.i.1

vector.scevcheck49:                               ; preds = %pregion_for_end.i.i
  %89 = mul i32 %26, %conv2.i.i.1
  %90 = trunc i64 %2 to i32
  %91 = shl i32 %90, 5
  %92 = add i32 %89, %91
  %93 = icmp sgt i32 %92, 2147483616
  br i1 %93, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.ph50

pregion_for_entry.entry.i.i.us.1.preheader:       ; preds = %vector.scevcheck49
  br label %pregion_for_entry.entry.i.i.us.1

vector.ph50:                                      ; preds = %vector.scevcheck49
  %broadcast.splatinsert57 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat58 = shufflevector <8 x i64> %broadcast.splatinsert57, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert59 = insertelement <8 x i32> undef, i32 %26, i32 0
  %broadcast.splat60 = shufflevector <8 x i32> %broadcast.splatinsert59, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <8 x float> undef, float %18, i32 0
  %broadcast.splat63 = shufflevector <8 x float> %broadcast.splatinsert62, <8 x float> undef, <8 x i32> zeroinitializer
  %94 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %95 = or <8 x i32> %94, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %96 = icmp sgt <8 x i32> %broadcast.splat60, %95
  %97 = extractelement <8 x i32> %95, i32 0
  %98 = add nsw i32 %mul.i.i.1, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %10, i64 %99
  %101 = bitcast float* %100 to <8 x float>*
  %wide.masked.load61 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %101, i32 4, <8 x i1> %96, <8 x float> undef), !tbaa !12
  %102 = fmul <8 x float> %broadcast.splat63, %wide.masked.load61
  %103 = bitcast float* %100 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %102, <8 x float>* %103, i32 4, <8 x i1> %96), !tbaa !12, !llvm.access.group !16
  %104 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %105 = or <8 x i32> %104, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %106 = icmp sgt <8 x i32> %broadcast.splat60, %105
  %107 = extractelement <8 x i32> %105, i32 0
  %108 = add nsw i32 %mul.i.i.1, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %10, i64 %109
  %111 = bitcast float* %110 to <8 x float>*
  %wide.masked.load61.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %111, i32 4, <8 x i1> %106, <8 x float> undef), !tbaa !12
  %112 = fmul <8 x float> %broadcast.splat63, %wide.masked.load61.1
  %113 = bitcast float* %110 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %112, <8 x float>* %113, i32 4, <8 x i1> %106), !tbaa !12, !llvm.access.group !16
  %114 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %115 = or <8 x i32> %114, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %116 = icmp sgt <8 x i32> %broadcast.splat60, %115
  %117 = extractelement <8 x i32> %115, i32 0
  %118 = add nsw i32 %mul.i.i.1, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %10, i64 %119
  %121 = bitcast float* %120 to <8 x float>*
  %wide.masked.load61.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %121, i32 4, <8 x i1> %116, <8 x float> undef), !tbaa !12
  %122 = fmul <8 x float> %broadcast.splat63, %wide.masked.load61.2
  %123 = bitcast float* %120 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %122, <8 x float>* %123, i32 4, <8 x i1> %116), !tbaa !12, !llvm.access.group !16
  %124 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %125 = or <8 x i32> %124, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %126 = icmp sgt <8 x i32> %broadcast.splat60, %125
  %127 = extractelement <8 x i32> %125, i32 0
  %128 = add nsw i32 %mul.i.i.1, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %10, i64 %129
  %131 = bitcast float* %130 to <8 x float>*
  %wide.masked.load61.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %131, i32 4, <8 x i1> %126, <8 x float> undef), !tbaa !12
  %132 = fmul <8 x float> %broadcast.splat63, %wide.masked.load61.3
  %133 = bitcast float* %130 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %132, <8 x float>* %133, i32 4, <8 x i1> %126), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.1

_pocl_kernel_syrk_kernel.exit.loopexit:           ; preds = %if.end.i.i.us.us.7
  br label %_pocl_kernel_syrk_kernel.exit

_pocl_kernel_syrk_kernel.exit.loopexit238:        ; preds = %if.end.i.i.us.7.3
  br label %_pocl_kernel_syrk_kernel.exit

_pocl_kernel_syrk_kernel.exit:                    ; preds = %pregion_for_end.i.i.us.6, %vector.ph182, %pregion_for_end.i.i.6, %_pocl_kernel_syrk_kernel.exit.loopexit238, %_pocl_kernel_syrk_kernel.exit.loopexit
  ret void

pregion_for_entry.entry.i.i.us.1:                 ; preds = %if.end.i.i.us.1.3, %pregion_for_entry.entry.i.i.us.1.preheader
  %_local_id_x.i.0.us.1 = phi i64 [ %540, %if.end.i.i.us.1.3 ], [ 0, %pregion_for_entry.entry.i.i.us.1.preheader ]
  %add1.i.i.i.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.1, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp4.i.i.us.1 = icmp sgt i32 %26, %conv.i.i.us.1
  br i1 %cmp4.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

if.then.i.i.us.1:                                 ; preds = %pregion_for_entry.entry.i.i.us.1
  %add.i.i.us.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1
  %idxprom.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.1
  %134 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %mul6.i.i.us.1 = fmul float %18, %134
  store float %mul6.i.i.us.1, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.then.i.i.us.1, %pregion_for_entry.entry.i.i.us.1
  %135 = or i64 %_local_id_x.i.0.us.1, 1
  %add1.i.i.i.us.1.1 = add nuw nsw i64 %135, %mul.i.i.i
  %conv.i.i.us.1.1 = trunc i64 %add1.i.i.i.us.1.1 to i32
  %cmp4.i.i.us.1.1 = icmp sgt i32 %26, %conv.i.i.us.1.1
  br i1 %cmp4.i.i.us.1.1, label %if.then.i.i.us.1.1, label %if.end.i.i.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.i.i.us.1.3
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph50, %pregion_for_end.i.i
  %136 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.2 = or i32 %136, 2
  %cmp.i.i.2 = icmp sgt i32 %26, %conv2.i.i.2
  %mul.i.i.2 = mul nsw i32 %26, %conv2.i.i.2
  br i1 %cmp.i.i.2, label %vector.scevcheck71, label %pregion_for_end.i.i.2

vector.scevcheck71:                               ; preds = %pregion_for_end.i.i.1
  %137 = mul i32 %26, %conv2.i.i.2
  %138 = trunc i64 %2 to i32
  %139 = shl i32 %138, 5
  %140 = add i32 %137, %139
  %141 = icmp sgt i32 %140, 2147483616
  br i1 %141, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.ph72

pregion_for_entry.entry.i.i.us.2.preheader:       ; preds = %vector.scevcheck71
  br label %pregion_for_entry.entry.i.i.us.2

vector.ph72:                                      ; preds = %vector.scevcheck71
  %broadcast.splatinsert79 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat80 = shufflevector <8 x i64> %broadcast.splatinsert79, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert81 = insertelement <8 x i32> undef, i32 %26, i32 0
  %broadcast.splat82 = shufflevector <8 x i32> %broadcast.splatinsert81, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert84 = insertelement <8 x float> undef, float %18, i32 0
  %broadcast.splat85 = shufflevector <8 x float> %broadcast.splatinsert84, <8 x float> undef, <8 x i32> zeroinitializer
  %142 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %143 = or <8 x i32> %142, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %144 = icmp sgt <8 x i32> %broadcast.splat82, %143
  %145 = extractelement <8 x i32> %143, i32 0
  %146 = add nsw i32 %mul.i.i.2, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %10, i64 %147
  %149 = bitcast float* %148 to <8 x float>*
  %wide.masked.load83 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %149, i32 4, <8 x i1> %144, <8 x float> undef), !tbaa !12
  %150 = fmul <8 x float> %broadcast.splat85, %wide.masked.load83
  %151 = bitcast float* %148 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %150, <8 x float>* %151, i32 4, <8 x i1> %144), !tbaa !12, !llvm.access.group !16
  %152 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %153 = or <8 x i32> %152, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %154 = icmp sgt <8 x i32> %broadcast.splat82, %153
  %155 = extractelement <8 x i32> %153, i32 0
  %156 = add nsw i32 %mul.i.i.2, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %10, i64 %157
  %159 = bitcast float* %158 to <8 x float>*
  %wide.masked.load83.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %159, i32 4, <8 x i1> %154, <8 x float> undef), !tbaa !12
  %160 = fmul <8 x float> %broadcast.splat85, %wide.masked.load83.1
  %161 = bitcast float* %158 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %160, <8 x float>* %161, i32 4, <8 x i1> %154), !tbaa !12, !llvm.access.group !16
  %162 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %163 = or <8 x i32> %162, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %164 = icmp sgt <8 x i32> %broadcast.splat82, %163
  %165 = extractelement <8 x i32> %163, i32 0
  %166 = add nsw i32 %mul.i.i.2, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %10, i64 %167
  %169 = bitcast float* %168 to <8 x float>*
  %wide.masked.load83.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %169, i32 4, <8 x i1> %164, <8 x float> undef), !tbaa !12
  %170 = fmul <8 x float> %broadcast.splat85, %wide.masked.load83.2
  %171 = bitcast float* %168 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %170, <8 x float>* %171, i32 4, <8 x i1> %164), !tbaa !12, !llvm.access.group !16
  %172 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %173 = or <8 x i32> %172, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %174 = icmp sgt <8 x i32> %broadcast.splat82, %173
  %175 = extractelement <8 x i32> %173, i32 0
  %176 = add nsw i32 %mul.i.i.2, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %10, i64 %177
  %179 = bitcast float* %178 to <8 x float>*
  %wide.masked.load83.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %179, i32 4, <8 x i1> %174, <8 x float> undef), !tbaa !12
  %180 = fmul <8 x float> %broadcast.splat85, %wide.masked.load83.3
  %181 = bitcast float* %178 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %180, <8 x float>* %181, i32 4, <8 x i1> %174), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.2:                 ; preds = %if.end.i.i.us.2.3, %pregion_for_entry.entry.i.i.us.2.preheader
  %_local_id_x.i.0.us.2 = phi i64 [ %534, %if.end.i.i.us.2.3 ], [ 0, %pregion_for_entry.entry.i.i.us.2.preheader ]
  %add1.i.i.i.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.2, %mul.i.i.i
  %conv.i.i.us.2 = trunc i64 %add1.i.i.i.us.2 to i32
  %cmp4.i.i.us.2 = icmp sgt i32 %26, %conv.i.i.us.2
  br i1 %cmp4.i.i.us.2, label %if.then.i.i.us.2, label %if.end.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %pregion_for_entry.entry.i.i.us.2
  %add.i.i.us.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2
  %idxprom.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.2
  %182 = load float, float* %arrayidx.i.i.us.2, align 4, !tbaa !12
  %mul6.i.i.us.2 = fmul float %18, %182
  store float %mul6.i.i.us.2, float* %arrayidx.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2

if.end.i.i.us.2:                                  ; preds = %if.then.i.i.us.2, %pregion_for_entry.entry.i.i.us.2
  %183 = or i64 %_local_id_x.i.0.us.2, 1
  %add1.i.i.i.us.2.1 = add nuw nsw i64 %183, %mul.i.i.i
  %conv.i.i.us.2.1 = trunc i64 %add1.i.i.i.us.2.1 to i32
  %cmp4.i.i.us.2.1 = icmp sgt i32 %26, %conv.i.i.us.2.1
  br i1 %cmp4.i.i.us.2.1, label %if.then.i.i.us.2.1, label %if.end.i.i.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.i.i.us.2.3
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph72, %pregion_for_end.i.i.1
  %184 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.3 = or i32 %184, 3
  %cmp.i.i.3 = icmp sgt i32 %26, %conv2.i.i.3
  %mul.i.i.3 = mul nsw i32 %26, %conv2.i.i.3
  br i1 %cmp.i.i.3, label %vector.scevcheck93, label %pregion_for_end.i.i.3

vector.scevcheck93:                               ; preds = %pregion_for_end.i.i.2
  %185 = mul i32 %26, %conv2.i.i.3
  %186 = trunc i64 %2 to i32
  %187 = shl i32 %186, 5
  %188 = add i32 %185, %187
  %189 = icmp sgt i32 %188, 2147483616
  br i1 %189, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.ph94

pregion_for_entry.entry.i.i.us.3.preheader:       ; preds = %vector.scevcheck93
  br label %pregion_for_entry.entry.i.i.us.3

vector.ph94:                                      ; preds = %vector.scevcheck93
  %broadcast.splatinsert101 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat102 = shufflevector <8 x i64> %broadcast.splatinsert101, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <8 x i32> undef, i32 %26, i32 0
  %broadcast.splat104 = shufflevector <8 x i32> %broadcast.splatinsert103, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert106 = insertelement <8 x float> undef, float %18, i32 0
  %broadcast.splat107 = shufflevector <8 x float> %broadcast.splatinsert106, <8 x float> undef, <8 x i32> zeroinitializer
  %190 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %191 = or <8 x i32> %190, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %192 = icmp sgt <8 x i32> %broadcast.splat104, %191
  %193 = extractelement <8 x i32> %191, i32 0
  %194 = add nsw i32 %mul.i.i.3, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %10, i64 %195
  %197 = bitcast float* %196 to <8 x float>*
  %wide.masked.load105 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %197, i32 4, <8 x i1> %192, <8 x float> undef), !tbaa !12
  %198 = fmul <8 x float> %broadcast.splat107, %wide.masked.load105
  %199 = bitcast float* %196 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %198, <8 x float>* %199, i32 4, <8 x i1> %192), !tbaa !12, !llvm.access.group !16
  %200 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %201 = or <8 x i32> %200, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %202 = icmp sgt <8 x i32> %broadcast.splat104, %201
  %203 = extractelement <8 x i32> %201, i32 0
  %204 = add nsw i32 %mul.i.i.3, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float, float* %10, i64 %205
  %207 = bitcast float* %206 to <8 x float>*
  %wide.masked.load105.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %207, i32 4, <8 x i1> %202, <8 x float> undef), !tbaa !12
  %208 = fmul <8 x float> %broadcast.splat107, %wide.masked.load105.1
  %209 = bitcast float* %206 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %208, <8 x float>* %209, i32 4, <8 x i1> %202), !tbaa !12, !llvm.access.group !16
  %210 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %211 = or <8 x i32> %210, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %212 = icmp sgt <8 x i32> %broadcast.splat104, %211
  %213 = extractelement <8 x i32> %211, i32 0
  %214 = add nsw i32 %mul.i.i.3, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %10, i64 %215
  %217 = bitcast float* %216 to <8 x float>*
  %wide.masked.load105.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %217, i32 4, <8 x i1> %212, <8 x float> undef), !tbaa !12
  %218 = fmul <8 x float> %broadcast.splat107, %wide.masked.load105.2
  %219 = bitcast float* %216 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %218, <8 x float>* %219, i32 4, <8 x i1> %212), !tbaa !12, !llvm.access.group !16
  %220 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %221 = or <8 x i32> %220, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %222 = icmp sgt <8 x i32> %broadcast.splat104, %221
  %223 = extractelement <8 x i32> %221, i32 0
  %224 = add nsw i32 %mul.i.i.3, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %10, i64 %225
  %227 = bitcast float* %226 to <8 x float>*
  %wide.masked.load105.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %227, i32 4, <8 x i1> %222, <8 x float> undef), !tbaa !12
  %228 = fmul <8 x float> %broadcast.splat107, %wide.masked.load105.3
  %229 = bitcast float* %226 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %228, <8 x float>* %229, i32 4, <8 x i1> %222), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.3:                 ; preds = %if.end.i.i.us.3.3, %pregion_for_entry.entry.i.i.us.3.preheader
  %_local_id_x.i.0.us.3 = phi i64 [ %528, %if.end.i.i.us.3.3 ], [ 0, %pregion_for_entry.entry.i.i.us.3.preheader ]
  %add1.i.i.i.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.3, %mul.i.i.i
  %conv.i.i.us.3 = trunc i64 %add1.i.i.i.us.3 to i32
  %cmp4.i.i.us.3 = icmp sgt i32 %26, %conv.i.i.us.3
  br i1 %cmp4.i.i.us.3, label %if.then.i.i.us.3, label %if.end.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %pregion_for_entry.entry.i.i.us.3
  %add.i.i.us.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3
  %idxprom.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.3
  %230 = load float, float* %arrayidx.i.i.us.3, align 4, !tbaa !12
  %mul6.i.i.us.3 = fmul float %18, %230
  store float %mul6.i.i.us.3, float* %arrayidx.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3

if.end.i.i.us.3:                                  ; preds = %if.then.i.i.us.3, %pregion_for_entry.entry.i.i.us.3
  %231 = or i64 %_local_id_x.i.0.us.3, 1
  %add1.i.i.i.us.3.1 = add nuw nsw i64 %231, %mul.i.i.i
  %conv.i.i.us.3.1 = trunc i64 %add1.i.i.i.us.3.1 to i32
  %cmp4.i.i.us.3.1 = icmp sgt i32 %26, %conv.i.i.us.3.1
  br i1 %cmp4.i.i.us.3.1, label %if.then.i.i.us.3.1, label %if.end.i.i.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.i.i.us.3.3
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph94, %pregion_for_end.i.i.2
  %232 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.4 = or i32 %232, 4
  %cmp.i.i.4 = icmp sgt i32 %26, %conv2.i.i.4
  %mul.i.i.4 = mul nsw i32 %26, %conv2.i.i.4
  br i1 %cmp.i.i.4, label %vector.scevcheck115, label %pregion_for_end.i.i.4

vector.scevcheck115:                              ; preds = %pregion_for_end.i.i.3
  %233 = mul i32 %26, %conv2.i.i.4
  %234 = trunc i64 %2 to i32
  %235 = shl i32 %234, 5
  %236 = add i32 %233, %235
  %237 = icmp sgt i32 %236, 2147483616
  br i1 %237, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.ph116

pregion_for_entry.entry.i.i.us.4.preheader:       ; preds = %vector.scevcheck115
  br label %pregion_for_entry.entry.i.i.us.4

vector.ph116:                                     ; preds = %vector.scevcheck115
  %broadcast.splatinsert123 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat124 = shufflevector <8 x i64> %broadcast.splatinsert123, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert125 = insertelement <8 x i32> undef, i32 %26, i32 0
  %broadcast.splat126 = shufflevector <8 x i32> %broadcast.splatinsert125, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert128 = insertelement <8 x float> undef, float %18, i32 0
  %broadcast.splat129 = shufflevector <8 x float> %broadcast.splatinsert128, <8 x float> undef, <8 x i32> zeroinitializer
  %238 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %239 = or <8 x i32> %238, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %240 = icmp sgt <8 x i32> %broadcast.splat126, %239
  %241 = extractelement <8 x i32> %239, i32 0
  %242 = add nsw i32 %mul.i.i.4, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %10, i64 %243
  %245 = bitcast float* %244 to <8 x float>*
  %wide.masked.load127 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %245, i32 4, <8 x i1> %240, <8 x float> undef), !tbaa !12
  %246 = fmul <8 x float> %broadcast.splat129, %wide.masked.load127
  %247 = bitcast float* %244 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %246, <8 x float>* %247, i32 4, <8 x i1> %240), !tbaa !12, !llvm.access.group !16
  %248 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %249 = or <8 x i32> %248, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %250 = icmp sgt <8 x i32> %broadcast.splat126, %249
  %251 = extractelement <8 x i32> %249, i32 0
  %252 = add nsw i32 %mul.i.i.4, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float, float* %10, i64 %253
  %255 = bitcast float* %254 to <8 x float>*
  %wide.masked.load127.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %255, i32 4, <8 x i1> %250, <8 x float> undef), !tbaa !12
  %256 = fmul <8 x float> %broadcast.splat129, %wide.masked.load127.1
  %257 = bitcast float* %254 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %256, <8 x float>* %257, i32 4, <8 x i1> %250), !tbaa !12, !llvm.access.group !16
  %258 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %259 = or <8 x i32> %258, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %260 = icmp sgt <8 x i32> %broadcast.splat126, %259
  %261 = extractelement <8 x i32> %259, i32 0
  %262 = add nsw i32 %mul.i.i.4, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float, float* %10, i64 %263
  %265 = bitcast float* %264 to <8 x float>*
  %wide.masked.load127.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %265, i32 4, <8 x i1> %260, <8 x float> undef), !tbaa !12
  %266 = fmul <8 x float> %broadcast.splat129, %wide.masked.load127.2
  %267 = bitcast float* %264 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %266, <8 x float>* %267, i32 4, <8 x i1> %260), !tbaa !12, !llvm.access.group !16
  %268 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %269 = or <8 x i32> %268, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %270 = icmp sgt <8 x i32> %broadcast.splat126, %269
  %271 = extractelement <8 x i32> %269, i32 0
  %272 = add nsw i32 %mul.i.i.4, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float* %10, i64 %273
  %275 = bitcast float* %274 to <8 x float>*
  %wide.masked.load127.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %275, i32 4, <8 x i1> %270, <8 x float> undef), !tbaa !12
  %276 = fmul <8 x float> %broadcast.splat129, %wide.masked.load127.3
  %277 = bitcast float* %274 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %276, <8 x float>* %277, i32 4, <8 x i1> %270), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.4:                 ; preds = %if.end.i.i.us.4.3, %pregion_for_entry.entry.i.i.us.4.preheader
  %_local_id_x.i.0.us.4 = phi i64 [ %522, %if.end.i.i.us.4.3 ], [ 0, %pregion_for_entry.entry.i.i.us.4.preheader ]
  %add1.i.i.i.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.4, %mul.i.i.i
  %conv.i.i.us.4 = trunc i64 %add1.i.i.i.us.4 to i32
  %cmp4.i.i.us.4 = icmp sgt i32 %26, %conv.i.i.us.4
  br i1 %cmp4.i.i.us.4, label %if.then.i.i.us.4, label %if.end.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %pregion_for_entry.entry.i.i.us.4
  %add.i.i.us.4 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4
  %idxprom.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.4
  %278 = load float, float* %arrayidx.i.i.us.4, align 4, !tbaa !12
  %mul6.i.i.us.4 = fmul float %18, %278
  store float %mul6.i.i.us.4, float* %arrayidx.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4

if.end.i.i.us.4:                                  ; preds = %if.then.i.i.us.4, %pregion_for_entry.entry.i.i.us.4
  %279 = or i64 %_local_id_x.i.0.us.4, 1
  %add1.i.i.i.us.4.1 = add nuw nsw i64 %279, %mul.i.i.i
  %conv.i.i.us.4.1 = trunc i64 %add1.i.i.i.us.4.1 to i32
  %cmp4.i.i.us.4.1 = icmp sgt i32 %26, %conv.i.i.us.4.1
  br i1 %cmp4.i.i.us.4.1, label %if.then.i.i.us.4.1, label %if.end.i.i.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.i.i.us.4.3
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph116, %pregion_for_end.i.i.3
  %280 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.5 = or i32 %280, 5
  %cmp.i.i.5 = icmp sgt i32 %26, %conv2.i.i.5
  %mul.i.i.5 = mul nsw i32 %26, %conv2.i.i.5
  br i1 %cmp.i.i.5, label %vector.scevcheck137, label %pregion_for_end.i.i.5

vector.scevcheck137:                              ; preds = %pregion_for_end.i.i.4
  %281 = mul i32 %26, %conv2.i.i.5
  %282 = trunc i64 %2 to i32
  %283 = shl i32 %282, 5
  %284 = add i32 %281, %283
  %285 = icmp sgt i32 %284, 2147483616
  br i1 %285, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.ph138

pregion_for_entry.entry.i.i.us.5.preheader:       ; preds = %vector.scevcheck137
  br label %pregion_for_entry.entry.i.i.us.5

vector.ph138:                                     ; preds = %vector.scevcheck137
  %broadcast.splatinsert145 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat146 = shufflevector <8 x i64> %broadcast.splatinsert145, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert147 = insertelement <8 x i32> undef, i32 %26, i32 0
  %broadcast.splat148 = shufflevector <8 x i32> %broadcast.splatinsert147, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert150 = insertelement <8 x float> undef, float %18, i32 0
  %broadcast.splat151 = shufflevector <8 x float> %broadcast.splatinsert150, <8 x float> undef, <8 x i32> zeroinitializer
  %286 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %287 = or <8 x i32> %286, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %288 = icmp sgt <8 x i32> %broadcast.splat148, %287
  %289 = extractelement <8 x i32> %287, i32 0
  %290 = add nsw i32 %mul.i.i.5, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, float* %10, i64 %291
  %293 = bitcast float* %292 to <8 x float>*
  %wide.masked.load149 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %293, i32 4, <8 x i1> %288, <8 x float> undef), !tbaa !12
  %294 = fmul <8 x float> %broadcast.splat151, %wide.masked.load149
  %295 = bitcast float* %292 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %294, <8 x float>* %295, i32 4, <8 x i1> %288), !tbaa !12, !llvm.access.group !16
  %296 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %297 = or <8 x i32> %296, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %298 = icmp sgt <8 x i32> %broadcast.splat148, %297
  %299 = extractelement <8 x i32> %297, i32 0
  %300 = add nsw i32 %mul.i.i.5, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds float, float* %10, i64 %301
  %303 = bitcast float* %302 to <8 x float>*
  %wide.masked.load149.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %303, i32 4, <8 x i1> %298, <8 x float> undef), !tbaa !12
  %304 = fmul <8 x float> %broadcast.splat151, %wide.masked.load149.1
  %305 = bitcast float* %302 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %304, <8 x float>* %305, i32 4, <8 x i1> %298), !tbaa !12, !llvm.access.group !16
  %306 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %307 = or <8 x i32> %306, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %308 = icmp sgt <8 x i32> %broadcast.splat148, %307
  %309 = extractelement <8 x i32> %307, i32 0
  %310 = add nsw i32 %mul.i.i.5, %309
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds float, float* %10, i64 %311
  %313 = bitcast float* %312 to <8 x float>*
  %wide.masked.load149.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %313, i32 4, <8 x i1> %308, <8 x float> undef), !tbaa !12
  %314 = fmul <8 x float> %broadcast.splat151, %wide.masked.load149.2
  %315 = bitcast float* %312 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %314, <8 x float>* %315, i32 4, <8 x i1> %308), !tbaa !12, !llvm.access.group !16
  %316 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %317 = or <8 x i32> %316, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %318 = icmp sgt <8 x i32> %broadcast.splat148, %317
  %319 = extractelement <8 x i32> %317, i32 0
  %320 = add nsw i32 %mul.i.i.5, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds float, float* %10, i64 %321
  %323 = bitcast float* %322 to <8 x float>*
  %wide.masked.load149.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %323, i32 4, <8 x i1> %318, <8 x float> undef), !tbaa !12
  %324 = fmul <8 x float> %broadcast.splat151, %wide.masked.load149.3
  %325 = bitcast float* %322 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %324, <8 x float>* %325, i32 4, <8 x i1> %318), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.5:                 ; preds = %if.end.i.i.us.5.3, %pregion_for_entry.entry.i.i.us.5.preheader
  %_local_id_x.i.0.us.5 = phi i64 [ %516, %if.end.i.i.us.5.3 ], [ 0, %pregion_for_entry.entry.i.i.us.5.preheader ]
  %add1.i.i.i.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.5, %mul.i.i.i
  %conv.i.i.us.5 = trunc i64 %add1.i.i.i.us.5 to i32
  %cmp4.i.i.us.5 = icmp sgt i32 %26, %conv.i.i.us.5
  br i1 %cmp4.i.i.us.5, label %if.then.i.i.us.5, label %if.end.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %pregion_for_entry.entry.i.i.us.5
  %add.i.i.us.5 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5
  %idxprom.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.5
  %326 = load float, float* %arrayidx.i.i.us.5, align 4, !tbaa !12
  %mul6.i.i.us.5 = fmul float %18, %326
  store float %mul6.i.i.us.5, float* %arrayidx.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5

if.end.i.i.us.5:                                  ; preds = %if.then.i.i.us.5, %pregion_for_entry.entry.i.i.us.5
  %327 = or i64 %_local_id_x.i.0.us.5, 1
  %add1.i.i.i.us.5.1 = add nuw nsw i64 %327, %mul.i.i.i
  %conv.i.i.us.5.1 = trunc i64 %add1.i.i.i.us.5.1 to i32
  %cmp4.i.i.us.5.1 = icmp sgt i32 %26, %conv.i.i.us.5.1
  br i1 %cmp4.i.i.us.5.1, label %if.then.i.i.us.5.1, label %if.end.i.i.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.i.i.us.5.3
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph138, %pregion_for_end.i.i.4
  %328 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.6 = or i32 %328, 6
  %cmp.i.i.6 = icmp sgt i32 %26, %conv2.i.i.6
  %mul.i.i.6 = mul nsw i32 %26, %conv2.i.i.6
  br i1 %cmp.i.i.6, label %vector.scevcheck159, label %pregion_for_end.i.i.6

vector.scevcheck159:                              ; preds = %pregion_for_end.i.i.5
  %329 = mul i32 %26, %conv2.i.i.6
  %330 = trunc i64 %2 to i32
  %331 = shl i32 %330, 5
  %332 = add i32 %329, %331
  %333 = icmp sgt i32 %332, 2147483616
  br i1 %333, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.ph160

pregion_for_entry.entry.i.i.us.6.preheader:       ; preds = %vector.scevcheck159
  br label %pregion_for_entry.entry.i.i.us.6

vector.ph160:                                     ; preds = %vector.scevcheck159
  %broadcast.splatinsert167 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat168 = shufflevector <8 x i64> %broadcast.splatinsert167, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert169 = insertelement <8 x i32> undef, i32 %26, i32 0
  %broadcast.splat170 = shufflevector <8 x i32> %broadcast.splatinsert169, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <8 x float> undef, float %18, i32 0
  %broadcast.splat173 = shufflevector <8 x float> %broadcast.splatinsert172, <8 x float> undef, <8 x i32> zeroinitializer
  %334 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %335 = or <8 x i32> %334, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %336 = icmp sgt <8 x i32> %broadcast.splat170, %335
  %337 = extractelement <8 x i32> %335, i32 0
  %338 = add nsw i32 %mul.i.i.6, %337
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds float, float* %10, i64 %339
  %341 = bitcast float* %340 to <8 x float>*
  %wide.masked.load171 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %341, i32 4, <8 x i1> %336, <8 x float> undef), !tbaa !12
  %342 = fmul <8 x float> %broadcast.splat173, %wide.masked.load171
  %343 = bitcast float* %340 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %342, <8 x float>* %343, i32 4, <8 x i1> %336), !tbaa !12, !llvm.access.group !16
  %344 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %345 = or <8 x i32> %344, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %346 = icmp sgt <8 x i32> %broadcast.splat170, %345
  %347 = extractelement <8 x i32> %345, i32 0
  %348 = add nsw i32 %mul.i.i.6, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds float, float* %10, i64 %349
  %351 = bitcast float* %350 to <8 x float>*
  %wide.masked.load171.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %351, i32 4, <8 x i1> %346, <8 x float> undef), !tbaa !12
  %352 = fmul <8 x float> %broadcast.splat173, %wide.masked.load171.1
  %353 = bitcast float* %350 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %352, <8 x float>* %353, i32 4, <8 x i1> %346), !tbaa !12, !llvm.access.group !16
  %354 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %355 = or <8 x i32> %354, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %356 = icmp sgt <8 x i32> %broadcast.splat170, %355
  %357 = extractelement <8 x i32> %355, i32 0
  %358 = add nsw i32 %mul.i.i.6, %357
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds float, float* %10, i64 %359
  %361 = bitcast float* %360 to <8 x float>*
  %wide.masked.load171.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %361, i32 4, <8 x i1> %356, <8 x float> undef), !tbaa !12
  %362 = fmul <8 x float> %broadcast.splat173, %wide.masked.load171.2
  %363 = bitcast float* %360 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %362, <8 x float>* %363, i32 4, <8 x i1> %356), !tbaa !12, !llvm.access.group !16
  %364 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %365 = or <8 x i32> %364, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %366 = icmp sgt <8 x i32> %broadcast.splat170, %365
  %367 = extractelement <8 x i32> %365, i32 0
  %368 = add nsw i32 %mul.i.i.6, %367
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds float, float* %10, i64 %369
  %371 = bitcast float* %370 to <8 x float>*
  %wide.masked.load171.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %371, i32 4, <8 x i1> %366, <8 x float> undef), !tbaa !12
  %372 = fmul <8 x float> %broadcast.splat173, %wide.masked.load171.3
  %373 = bitcast float* %370 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %372, <8 x float>* %373, i32 4, <8 x i1> %366), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.6:                 ; preds = %if.end.i.i.us.6.3, %pregion_for_entry.entry.i.i.us.6.preheader
  %_local_id_x.i.0.us.6 = phi i64 [ %510, %if.end.i.i.us.6.3 ], [ 0, %pregion_for_entry.entry.i.i.us.6.preheader ]
  %add1.i.i.i.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.6, %mul.i.i.i
  %conv.i.i.us.6 = trunc i64 %add1.i.i.i.us.6 to i32
  %cmp4.i.i.us.6 = icmp sgt i32 %26, %conv.i.i.us.6
  br i1 %cmp4.i.i.us.6, label %if.then.i.i.us.6, label %if.end.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %pregion_for_entry.entry.i.i.us.6
  %add.i.i.us.6 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6
  %idxprom.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.6
  %374 = load float, float* %arrayidx.i.i.us.6, align 4, !tbaa !12
  %mul6.i.i.us.6 = fmul float %18, %374
  store float %mul6.i.i.us.6, float* %arrayidx.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6

if.end.i.i.us.6:                                  ; preds = %if.then.i.i.us.6, %pregion_for_entry.entry.i.i.us.6
  %375 = or i64 %_local_id_x.i.0.us.6, 1
  %add1.i.i.i.us.6.1 = add nuw nsw i64 %375, %mul.i.i.i
  %conv.i.i.us.6.1 = trunc i64 %add1.i.i.i.us.6.1 to i32
  %cmp4.i.i.us.6.1 = icmp sgt i32 %26, %conv.i.i.us.6.1
  br i1 %cmp4.i.i.us.6.1, label %if.then.i.i.us.6.1, label %if.end.i.i.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.i.i.us.6.3
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph160, %pregion_for_end.i.i.5
  %376 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.7 = or i32 %376, 7
  %cmp.i.i.7 = icmp sgt i32 %26, %conv2.i.i.7
  %mul.i.i.7 = mul nsw i32 %26, %conv2.i.i.7
  br i1 %cmp.i.i.7, label %vector.scevcheck181, label %_pocl_kernel_syrk_kernel.exit

vector.scevcheck181:                              ; preds = %pregion_for_end.i.i.6
  %377 = mul i32 %26, %conv2.i.i.7
  %378 = trunc i64 %2 to i32
  %379 = shl i32 %378, 5
  %380 = add i32 %377, %379
  %381 = icmp sgt i32 %380, 2147483616
  br i1 %381, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.ph182

pregion_for_entry.entry.i.i.us.7.preheader:       ; preds = %vector.scevcheck181
  br label %pregion_for_entry.entry.i.i.us.7

vector.ph182:                                     ; preds = %vector.scevcheck181
  %broadcast.splatinsert189 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat190 = shufflevector <8 x i64> %broadcast.splatinsert189, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert191 = insertelement <8 x i32> undef, i32 %26, i32 0
  %broadcast.splat192 = shufflevector <8 x i32> %broadcast.splatinsert191, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <8 x float> undef, float %18, i32 0
  %broadcast.splat195 = shufflevector <8 x float> %broadcast.splatinsert194, <8 x float> undef, <8 x i32> zeroinitializer
  %382 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %383 = or <8 x i32> %382, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %384 = icmp sgt <8 x i32> %broadcast.splat192, %383
  %385 = extractelement <8 x i32> %383, i32 0
  %386 = add nsw i32 %mul.i.i.7, %385
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds float, float* %10, i64 %387
  %389 = bitcast float* %388 to <8 x float>*
  %wide.masked.load193 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %389, i32 4, <8 x i1> %384, <8 x float> undef), !tbaa !12
  %390 = fmul <8 x float> %broadcast.splat195, %wide.masked.load193
  %391 = bitcast float* %388 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %390, <8 x float>* %391, i32 4, <8 x i1> %384), !tbaa !12, !llvm.access.group !16
  %392 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %393 = or <8 x i32> %392, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %394 = icmp sgt <8 x i32> %broadcast.splat192, %393
  %395 = extractelement <8 x i32> %393, i32 0
  %396 = add nsw i32 %mul.i.i.7, %395
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds float, float* %10, i64 %397
  %399 = bitcast float* %398 to <8 x float>*
  %wide.masked.load193.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %399, i32 4, <8 x i1> %394, <8 x float> undef), !tbaa !12
  %400 = fmul <8 x float> %broadcast.splat195, %wide.masked.load193.1
  %401 = bitcast float* %398 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %400, <8 x float>* %401, i32 4, <8 x i1> %394), !tbaa !12, !llvm.access.group !16
  %402 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %403 = or <8 x i32> %402, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %404 = icmp sgt <8 x i32> %broadcast.splat192, %403
  %405 = extractelement <8 x i32> %403, i32 0
  %406 = add nsw i32 %mul.i.i.7, %405
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds float, float* %10, i64 %407
  %409 = bitcast float* %408 to <8 x float>*
  %wide.masked.load193.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %409, i32 4, <8 x i1> %404, <8 x float> undef), !tbaa !12
  %410 = fmul <8 x float> %broadcast.splat195, %wide.masked.load193.2
  %411 = bitcast float* %408 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %410, <8 x float>* %411, i32 4, <8 x i1> %404), !tbaa !12, !llvm.access.group !16
  %412 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %413 = or <8 x i32> %412, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %414 = icmp sgt <8 x i32> %broadcast.splat192, %413
  %415 = extractelement <8 x i32> %413, i32 0
  %416 = add nsw i32 %mul.i.i.7, %415
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds float, float* %10, i64 %417
  %419 = bitcast float* %418 to <8 x float>*
  %wide.masked.load193.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %419, i32 4, <8 x i1> %414, <8 x float> undef), !tbaa !12
  %420 = fmul <8 x float> %broadcast.splat195, %wide.masked.load193.3
  %421 = bitcast float* %418 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %420, <8 x float>* %421, i32 4, <8 x i1> %414), !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_syrk_kernel.exit

pregion_for_entry.entry.i.i.us.7:                 ; preds = %if.end.i.i.us.7.3, %pregion_for_entry.entry.i.i.us.7.preheader
  %_local_id_x.i.0.us.7 = phi i64 [ %504, %if.end.i.i.us.7.3 ], [ 0, %pregion_for_entry.entry.i.i.us.7.preheader ]
  %add1.i.i.i.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.7, %mul.i.i.i
  %conv.i.i.us.7 = trunc i64 %add1.i.i.i.us.7 to i32
  %cmp4.i.i.us.7 = icmp sgt i32 %26, %conv.i.i.us.7
  br i1 %cmp4.i.i.us.7, label %if.then.i.i.us.7, label %if.end.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %pregion_for_entry.entry.i.i.us.7
  %add.i.i.us.7 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7
  %idxprom.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.7
  %422 = load float, float* %arrayidx.i.i.us.7, align 4, !tbaa !12
  %mul6.i.i.us.7 = fmul float %18, %422
  store float %mul6.i.i.us.7, float* %arrayidx.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7

if.end.i.i.us.7:                                  ; preds = %if.then.i.i.us.7, %pregion_for_entry.entry.i.i.us.7
  %423 = or i64 %_local_id_x.i.0.us.7, 1
  %add1.i.i.i.us.7.1 = add nuw nsw i64 %423, %mul.i.i.i
  %conv.i.i.us.7.1 = trunc i64 %add1.i.i.i.us.7.1 to i32
  %cmp4.i.i.us.7.1 = icmp sgt i32 %26, %conv.i.i.us.7.1
  br i1 %cmp4.i.i.us.7.1, label %if.then.i.i.us.7.1, label %if.end.i.i.us.7.1

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %if.end.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1.preheader
  %_local_id_x.i.0.us.us.1 = phi i64 [ %432, %if.end.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1.preheader ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %cmp4.i.i.us.us.1 = icmp sgt i32 %26, %conv.i.i.us.us.1
  br i1 %cmp4.i.i.us.us.1, label %if.then.i.i.us.us.1, label %if.end.i.i.us.us.1

if.then.i.i.us.us.1:                              ; preds = %pregion_for_entry.entry.i.i.us.us.1
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.1
  %424 = load float, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12
  %mul6.i.i.us.us.1 = fmul float %18, %424
  store float %mul6.i.i.us.us.1, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.i.us.us.1 = mul nsw i32 %22, %conv.i.i.us.us.1
  %425 = sext i32 %mul14.i.i.us.us.1 to i64
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %if.then.i.i.us.us.1
  %indvars.iv.next.i.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %if.then.i.i.us.us.1 ]
  %426 = phi float [ %431, %for.body.i.i.us.us.1 ], [ %mul6.i.i.us.us.1, %if.then.i.i.us.us.1 ]
  %427 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %76
  %arrayidx12.i.i.us.us.1 = getelementptr inbounds float, float* %7, i64 %427
  %428 = load float, float* %arrayidx12.i.i.us.us.1, align 4, !tbaa !12
  %mul13.i.i.us.us.1 = fmul float %14, %428
  %429 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %425
  %arrayidx17.i.i.us.us.1 = getelementptr inbounds float, float* %7, i64 %429
  %430 = load float, float* %arrayidx17.i.i.us.us.1, align 4, !tbaa !12
  %431 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.1, float %430, float %426) #2
  store float %431, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %if.end.i.i.us.us.1.loopexit, label %for.body.i.i.us.us.1, !llvm.loop !21

if.end.i.i.us.us.1.loopexit:                      ; preds = %for.body.i.i.us.us.1
  br label %if.end.i.i.us.us.1

if.end.i.i.us.us.1:                               ; preds = %if.end.i.i.us.us.1.loopexit, %pregion_for_entry.entry.i.i.us.us.1
  %432 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 1
  %exitcond.not.1 = icmp eq i64 %432, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us.1.loopexit, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !19

pregion_for_end.i.i.us.1.loopexit:                ; preds = %if.end.i.i.us.us.1
  br label %pregion_for_end.i.i.us.1

pregion_for_end.i.i.us.1:                         ; preds = %pregion_for_end.i.i.us.1.loopexit, %pregion_for_end.i.i.us
  %433 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %433, 2
  %cmp.i.i.us.2 = icmp sgt i32 %26, %conv2.i.i.us.2
  %mul.i.i.us.2 = mul nsw i32 %26, %conv2.i.i.us.2
  %mul9.i.i.us.2 = mul nsw i32 %22, %conv2.i.i.us.2
  %434 = sext i32 %mul9.i.i.us.2 to i64
  br i1 %cmp.i.i.us.2, label %pregion_for_entry.entry.i.i.us.us.2.preheader, label %pregion_for_end.i.i.us.2

pregion_for_entry.entry.i.i.us.us.2.preheader:    ; preds = %pregion_for_end.i.i.us.1
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %if.end.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2.preheader
  %_local_id_x.i.0.us.us.2 = phi i64 [ %443, %if.end.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2.preheader ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %cmp4.i.i.us.us.2 = icmp sgt i32 %26, %conv.i.i.us.us.2
  br i1 %cmp4.i.i.us.us.2, label %if.then.i.i.us.us.2, label %if.end.i.i.us.us.2

if.then.i.i.us.us.2:                              ; preds = %pregion_for_entry.entry.i.i.us.us.2
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.2
  %435 = load float, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12
  %mul6.i.i.us.us.2 = fmul float %18, %435
  store float %mul6.i.i.us.us.2, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.i.us.us.2 = mul nsw i32 %22, %conv.i.i.us.us.2
  %436 = sext i32 %mul14.i.i.us.us.2 to i64
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %if.then.i.i.us.us.2
  %indvars.iv.next.i.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %if.then.i.i.us.us.2 ]
  %437 = phi float [ %442, %for.body.i.i.us.us.2 ], [ %mul6.i.i.us.us.2, %if.then.i.i.us.us.2 ]
  %438 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %434
  %arrayidx12.i.i.us.us.2 = getelementptr inbounds float, float* %7, i64 %438
  %439 = load float, float* %arrayidx12.i.i.us.us.2, align 4, !tbaa !12
  %mul13.i.i.us.us.2 = fmul float %14, %439
  %440 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %436
  %arrayidx17.i.i.us.us.2 = getelementptr inbounds float, float* %7, i64 %440
  %441 = load float, float* %arrayidx17.i.i.us.us.2, align 4, !tbaa !12
  %442 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.2, float %441, float %437) #2
  store float %442, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %if.end.i.i.us.us.2.loopexit, label %for.body.i.i.us.us.2, !llvm.loop !21

if.end.i.i.us.us.2.loopexit:                      ; preds = %for.body.i.i.us.us.2
  br label %if.end.i.i.us.us.2

if.end.i.i.us.us.2:                               ; preds = %if.end.i.i.us.us.2.loopexit, %pregion_for_entry.entry.i.i.us.us.2
  %443 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 1
  %exitcond.not.2 = icmp eq i64 %443, 32
  br i1 %exitcond.not.2, label %pregion_for_end.i.i.us.2.loopexit, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !19

pregion_for_end.i.i.us.2.loopexit:                ; preds = %if.end.i.i.us.us.2
  br label %pregion_for_end.i.i.us.2

pregion_for_end.i.i.us.2:                         ; preds = %pregion_for_end.i.i.us.2.loopexit, %pregion_for_end.i.i.us.1
  %444 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %444, 3
  %cmp.i.i.us.3 = icmp sgt i32 %26, %conv2.i.i.us.3
  %mul.i.i.us.3 = mul nsw i32 %26, %conv2.i.i.us.3
  %mul9.i.i.us.3 = mul nsw i32 %22, %conv2.i.i.us.3
  %445 = sext i32 %mul9.i.i.us.3 to i64
  br i1 %cmp.i.i.us.3, label %pregion_for_entry.entry.i.i.us.us.3.preheader, label %pregion_for_end.i.i.us.3

pregion_for_entry.entry.i.i.us.us.3.preheader:    ; preds = %pregion_for_end.i.i.us.2
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %if.end.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3.preheader
  %_local_id_x.i.0.us.us.3 = phi i64 [ %454, %if.end.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3.preheader ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %cmp4.i.i.us.us.3 = icmp sgt i32 %26, %conv.i.i.us.us.3
  br i1 %cmp4.i.i.us.us.3, label %if.then.i.i.us.us.3, label %if.end.i.i.us.us.3

if.then.i.i.us.us.3:                              ; preds = %pregion_for_entry.entry.i.i.us.us.3
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.3
  %446 = load float, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12
  %mul6.i.i.us.us.3 = fmul float %18, %446
  store float %mul6.i.i.us.us.3, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.i.us.us.3 = mul nsw i32 %22, %conv.i.i.us.us.3
  %447 = sext i32 %mul14.i.i.us.us.3 to i64
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %if.then.i.i.us.us.3
  %indvars.iv.next.i.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %if.then.i.i.us.us.3 ]
  %448 = phi float [ %453, %for.body.i.i.us.us.3 ], [ %mul6.i.i.us.us.3, %if.then.i.i.us.us.3 ]
  %449 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %445
  %arrayidx12.i.i.us.us.3 = getelementptr inbounds float, float* %7, i64 %449
  %450 = load float, float* %arrayidx12.i.i.us.us.3, align 4, !tbaa !12
  %mul13.i.i.us.us.3 = fmul float %14, %450
  %451 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %447
  %arrayidx17.i.i.us.us.3 = getelementptr inbounds float, float* %7, i64 %451
  %452 = load float, float* %arrayidx17.i.i.us.us.3, align 4, !tbaa !12
  %453 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.3, float %452, float %448) #2
  store float %453, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %if.end.i.i.us.us.3.loopexit, label %for.body.i.i.us.us.3, !llvm.loop !21

if.end.i.i.us.us.3.loopexit:                      ; preds = %for.body.i.i.us.us.3
  br label %if.end.i.i.us.us.3

if.end.i.i.us.us.3:                               ; preds = %if.end.i.i.us.us.3.loopexit, %pregion_for_entry.entry.i.i.us.us.3
  %454 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 1
  %exitcond.not.3 = icmp eq i64 %454, 32
  br i1 %exitcond.not.3, label %pregion_for_end.i.i.us.3.loopexit, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !19

pregion_for_end.i.i.us.3.loopexit:                ; preds = %if.end.i.i.us.us.3
  br label %pregion_for_end.i.i.us.3

pregion_for_end.i.i.us.3:                         ; preds = %pregion_for_end.i.i.us.3.loopexit, %pregion_for_end.i.i.us.2
  %455 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %455, 4
  %cmp.i.i.us.4 = icmp sgt i32 %26, %conv2.i.i.us.4
  %mul.i.i.us.4 = mul nsw i32 %26, %conv2.i.i.us.4
  %mul9.i.i.us.4 = mul nsw i32 %22, %conv2.i.i.us.4
  %456 = sext i32 %mul9.i.i.us.4 to i64
  br i1 %cmp.i.i.us.4, label %pregion_for_entry.entry.i.i.us.us.4.preheader, label %pregion_for_end.i.i.us.4

pregion_for_entry.entry.i.i.us.us.4.preheader:    ; preds = %pregion_for_end.i.i.us.3
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %if.end.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4.preheader
  %_local_id_x.i.0.us.us.4 = phi i64 [ %465, %if.end.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4.preheader ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %cmp4.i.i.us.us.4 = icmp sgt i32 %26, %conv.i.i.us.us.4
  br i1 %cmp4.i.i.us.us.4, label %if.then.i.i.us.us.4, label %if.end.i.i.us.us.4

if.then.i.i.us.us.4:                              ; preds = %pregion_for_entry.entry.i.i.us.us.4
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.4
  %457 = load float, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12
  %mul6.i.i.us.us.4 = fmul float %18, %457
  store float %mul6.i.i.us.us.4, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.i.us.us.4 = mul nsw i32 %22, %conv.i.i.us.us.4
  %458 = sext i32 %mul14.i.i.us.us.4 to i64
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %if.then.i.i.us.us.4
  %indvars.iv.next.i.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %if.then.i.i.us.us.4 ]
  %459 = phi float [ %464, %for.body.i.i.us.us.4 ], [ %mul6.i.i.us.us.4, %if.then.i.i.us.us.4 ]
  %460 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %456
  %arrayidx12.i.i.us.us.4 = getelementptr inbounds float, float* %7, i64 %460
  %461 = load float, float* %arrayidx12.i.i.us.us.4, align 4, !tbaa !12
  %mul13.i.i.us.us.4 = fmul float %14, %461
  %462 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %458
  %arrayidx17.i.i.us.us.4 = getelementptr inbounds float, float* %7, i64 %462
  %463 = load float, float* %arrayidx17.i.i.us.us.4, align 4, !tbaa !12
  %464 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.4, float %463, float %459) #2
  store float %464, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %if.end.i.i.us.us.4.loopexit, label %for.body.i.i.us.us.4, !llvm.loop !21

if.end.i.i.us.us.4.loopexit:                      ; preds = %for.body.i.i.us.us.4
  br label %if.end.i.i.us.us.4

if.end.i.i.us.us.4:                               ; preds = %if.end.i.i.us.us.4.loopexit, %pregion_for_entry.entry.i.i.us.us.4
  %465 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 1
  %exitcond.not.4 = icmp eq i64 %465, 32
  br i1 %exitcond.not.4, label %pregion_for_end.i.i.us.4.loopexit, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !19

pregion_for_end.i.i.us.4.loopexit:                ; preds = %if.end.i.i.us.us.4
  br label %pregion_for_end.i.i.us.4

pregion_for_end.i.i.us.4:                         ; preds = %pregion_for_end.i.i.us.4.loopexit, %pregion_for_end.i.i.us.3
  %466 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %466, 5
  %cmp.i.i.us.5 = icmp sgt i32 %26, %conv2.i.i.us.5
  %mul.i.i.us.5 = mul nsw i32 %26, %conv2.i.i.us.5
  %mul9.i.i.us.5 = mul nsw i32 %22, %conv2.i.i.us.5
  %467 = sext i32 %mul9.i.i.us.5 to i64
  br i1 %cmp.i.i.us.5, label %pregion_for_entry.entry.i.i.us.us.5.preheader, label %pregion_for_end.i.i.us.5

pregion_for_entry.entry.i.i.us.us.5.preheader:    ; preds = %pregion_for_end.i.i.us.4
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %if.end.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5.preheader
  %_local_id_x.i.0.us.us.5 = phi i64 [ %476, %if.end.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5.preheader ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %cmp4.i.i.us.us.5 = icmp sgt i32 %26, %conv.i.i.us.us.5
  br i1 %cmp4.i.i.us.us.5, label %if.then.i.i.us.us.5, label %if.end.i.i.us.us.5

if.then.i.i.us.us.5:                              ; preds = %pregion_for_entry.entry.i.i.us.us.5
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.5
  %468 = load float, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12
  %mul6.i.i.us.us.5 = fmul float %18, %468
  store float %mul6.i.i.us.us.5, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.i.us.us.5 = mul nsw i32 %22, %conv.i.i.us.us.5
  %469 = sext i32 %mul14.i.i.us.us.5 to i64
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %if.then.i.i.us.us.5
  %indvars.iv.next.i.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %if.then.i.i.us.us.5 ]
  %470 = phi float [ %475, %for.body.i.i.us.us.5 ], [ %mul6.i.i.us.us.5, %if.then.i.i.us.us.5 ]
  %471 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %467
  %arrayidx12.i.i.us.us.5 = getelementptr inbounds float, float* %7, i64 %471
  %472 = load float, float* %arrayidx12.i.i.us.us.5, align 4, !tbaa !12
  %mul13.i.i.us.us.5 = fmul float %14, %472
  %473 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %469
  %arrayidx17.i.i.us.us.5 = getelementptr inbounds float, float* %7, i64 %473
  %474 = load float, float* %arrayidx17.i.i.us.us.5, align 4, !tbaa !12
  %475 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.5, float %474, float %470) #2
  store float %475, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %if.end.i.i.us.us.5.loopexit, label %for.body.i.i.us.us.5, !llvm.loop !21

if.end.i.i.us.us.5.loopexit:                      ; preds = %for.body.i.i.us.us.5
  br label %if.end.i.i.us.us.5

if.end.i.i.us.us.5:                               ; preds = %if.end.i.i.us.us.5.loopexit, %pregion_for_entry.entry.i.i.us.us.5
  %476 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 1
  %exitcond.not.5 = icmp eq i64 %476, 32
  br i1 %exitcond.not.5, label %pregion_for_end.i.i.us.5.loopexit, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !19

pregion_for_end.i.i.us.5.loopexit:                ; preds = %if.end.i.i.us.us.5
  br label %pregion_for_end.i.i.us.5

pregion_for_end.i.i.us.5:                         ; preds = %pregion_for_end.i.i.us.5.loopexit, %pregion_for_end.i.i.us.4
  %477 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %477, 6
  %cmp.i.i.us.6 = icmp sgt i32 %26, %conv2.i.i.us.6
  %mul.i.i.us.6 = mul nsw i32 %26, %conv2.i.i.us.6
  %mul9.i.i.us.6 = mul nsw i32 %22, %conv2.i.i.us.6
  %478 = sext i32 %mul9.i.i.us.6 to i64
  br i1 %cmp.i.i.us.6, label %pregion_for_entry.entry.i.i.us.us.6.preheader, label %pregion_for_end.i.i.us.6

pregion_for_entry.entry.i.i.us.us.6.preheader:    ; preds = %pregion_for_end.i.i.us.5
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %if.end.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6.preheader
  %_local_id_x.i.0.us.us.6 = phi i64 [ %487, %if.end.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6.preheader ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %cmp4.i.i.us.us.6 = icmp sgt i32 %26, %conv.i.i.us.us.6
  br i1 %cmp4.i.i.us.us.6, label %if.then.i.i.us.us.6, label %if.end.i.i.us.us.6

if.then.i.i.us.us.6:                              ; preds = %pregion_for_entry.entry.i.i.us.us.6
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.6
  %479 = load float, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12
  %mul6.i.i.us.us.6 = fmul float %18, %479
  store float %mul6.i.i.us.us.6, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.i.us.us.6 = mul nsw i32 %22, %conv.i.i.us.us.6
  %480 = sext i32 %mul14.i.i.us.us.6 to i64
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %if.then.i.i.us.us.6
  %indvars.iv.next.i.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %if.then.i.i.us.us.6 ]
  %481 = phi float [ %486, %for.body.i.i.us.us.6 ], [ %mul6.i.i.us.us.6, %if.then.i.i.us.us.6 ]
  %482 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %478
  %arrayidx12.i.i.us.us.6 = getelementptr inbounds float, float* %7, i64 %482
  %483 = load float, float* %arrayidx12.i.i.us.us.6, align 4, !tbaa !12
  %mul13.i.i.us.us.6 = fmul float %14, %483
  %484 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %480
  %arrayidx17.i.i.us.us.6 = getelementptr inbounds float, float* %7, i64 %484
  %485 = load float, float* %arrayidx17.i.i.us.us.6, align 4, !tbaa !12
  %486 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.6, float %485, float %481) #2
  store float %486, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %if.end.i.i.us.us.6.loopexit, label %for.body.i.i.us.us.6, !llvm.loop !21

if.end.i.i.us.us.6.loopexit:                      ; preds = %for.body.i.i.us.us.6
  br label %if.end.i.i.us.us.6

if.end.i.i.us.us.6:                               ; preds = %if.end.i.i.us.us.6.loopexit, %pregion_for_entry.entry.i.i.us.us.6
  %487 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 1
  %exitcond.not.6 = icmp eq i64 %487, 32
  br i1 %exitcond.not.6, label %pregion_for_end.i.i.us.6.loopexit, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !19

pregion_for_end.i.i.us.6.loopexit:                ; preds = %if.end.i.i.us.us.6
  br label %pregion_for_end.i.i.us.6

pregion_for_end.i.i.us.6:                         ; preds = %pregion_for_end.i.i.us.6.loopexit, %pregion_for_end.i.i.us.5
  %488 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %488, 7
  %cmp.i.i.us.7 = icmp sgt i32 %26, %conv2.i.i.us.7
  %mul.i.i.us.7 = mul nsw i32 %26, %conv2.i.i.us.7
  %mul9.i.i.us.7 = mul nsw i32 %22, %conv2.i.i.us.7
  %489 = sext i32 %mul9.i.i.us.7 to i64
  br i1 %cmp.i.i.us.7, label %pregion_for_entry.entry.i.i.us.us.7.preheader, label %_pocl_kernel_syrk_kernel.exit

pregion_for_entry.entry.i.i.us.us.7.preheader:    ; preds = %pregion_for_end.i.i.us.6
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %if.end.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7.preheader
  %_local_id_x.i.0.us.us.7 = phi i64 [ %498, %if.end.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7.preheader ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %cmp4.i.i.us.us.7 = icmp sgt i32 %26, %conv.i.i.us.us.7
  br i1 %cmp4.i.i.us.us.7, label %if.then.i.i.us.us.7, label %if.end.i.i.us.us.7

if.then.i.i.us.us.7:                              ; preds = %pregion_for_entry.entry.i.i.us.us.7
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.7
  %490 = load float, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12
  %mul6.i.i.us.us.7 = fmul float %18, %490
  store float %mul6.i.i.us.us.7, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul14.i.i.us.us.7 = mul nsw i32 %22, %conv.i.i.us.us.7
  %491 = sext i32 %mul14.i.i.us.us.7 to i64
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %if.then.i.i.us.us.7
  %indvars.iv.next.i.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %if.then.i.i.us.us.7 ]
  %492 = phi float [ %497, %for.body.i.i.us.us.7 ], [ %mul6.i.i.us.us.7, %if.then.i.i.us.us.7 ]
  %493 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %489
  %arrayidx12.i.i.us.us.7 = getelementptr inbounds float, float* %7, i64 %493
  %494 = load float, float* %arrayidx12.i.i.us.us.7, align 4, !tbaa !12
  %mul13.i.i.us.us.7 = fmul float %14, %494
  %495 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %491
  %arrayidx17.i.i.us.us.7 = getelementptr inbounds float, float* %7, i64 %495
  %496 = load float, float* %arrayidx17.i.i.us.us.7, align 4, !tbaa !12
  %497 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.7, float %496, float %492) #2
  store float %497, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %if.end.i.i.us.us.7.loopexit, label %for.body.i.i.us.us.7, !llvm.loop !21

if.end.i.i.us.us.7.loopexit:                      ; preds = %for.body.i.i.us.us.7
  br label %if.end.i.i.us.us.7

if.end.i.i.us.us.7:                               ; preds = %if.end.i.i.us.us.7.loopexit, %pregion_for_entry.entry.i.i.us.us.7
  %498 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 1
  %exitcond.not.7 = icmp eq i64 %498, 32
  br i1 %exitcond.not.7, label %_pocl_kernel_syrk_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !19

if.then.i.i.us.7.1:                               ; preds = %if.end.i.i.us.7
  %add.i.i.us.7.1 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.1
  %idxprom.i.i.us.7.1 = sext i32 %add.i.i.us.7.1 to i64
  %arrayidx.i.i.us.7.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.7.1
  %499 = load float, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12
  %mul6.i.i.us.7.1 = fmul float %18, %499
  store float %mul6.i.i.us.7.1, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.1

if.end.i.i.us.7.1:                                ; preds = %if.then.i.i.us.7.1, %if.end.i.i.us.7
  %500 = or i64 %_local_id_x.i.0.us.7, 2
  %add1.i.i.i.us.7.2 = add nuw nsw i64 %500, %mul.i.i.i
  %conv.i.i.us.7.2 = trunc i64 %add1.i.i.i.us.7.2 to i32
  %cmp4.i.i.us.7.2 = icmp sgt i32 %26, %conv.i.i.us.7.2
  br i1 %cmp4.i.i.us.7.2, label %if.then.i.i.us.7.2, label %if.end.i.i.us.7.2

if.then.i.i.us.7.2:                               ; preds = %if.end.i.i.us.7.1
  %add.i.i.us.7.2 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.2
  %idxprom.i.i.us.7.2 = sext i32 %add.i.i.us.7.2 to i64
  %arrayidx.i.i.us.7.2 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.7.2
  %501 = load float, float* %arrayidx.i.i.us.7.2, align 4, !tbaa !12
  %mul6.i.i.us.7.2 = fmul float %18, %501
  store float %mul6.i.i.us.7.2, float* %arrayidx.i.i.us.7.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.2

if.end.i.i.us.7.2:                                ; preds = %if.then.i.i.us.7.2, %if.end.i.i.us.7.1
  %502 = or i64 %_local_id_x.i.0.us.7, 3
  %add1.i.i.i.us.7.3 = add nuw nsw i64 %502, %mul.i.i.i
  %conv.i.i.us.7.3 = trunc i64 %add1.i.i.i.us.7.3 to i32
  %cmp4.i.i.us.7.3 = icmp sgt i32 %26, %conv.i.i.us.7.3
  br i1 %cmp4.i.i.us.7.3, label %if.then.i.i.us.7.3, label %if.end.i.i.us.7.3

if.then.i.i.us.7.3:                               ; preds = %if.end.i.i.us.7.2
  %add.i.i.us.7.3 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.3
  %idxprom.i.i.us.7.3 = sext i32 %add.i.i.us.7.3 to i64
  %arrayidx.i.i.us.7.3 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.7.3
  %503 = load float, float* %arrayidx.i.i.us.7.3, align 4, !tbaa !12
  %mul6.i.i.us.7.3 = fmul float %18, %503
  store float %mul6.i.i.us.7.3, float* %arrayidx.i.i.us.7.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.3

if.end.i.i.us.7.3:                                ; preds = %if.then.i.i.us.7.3, %if.end.i.i.us.7.2
  %504 = add nuw nsw i64 %_local_id_x.i.0.us.7, 4
  %exitcond34.7.not.3 = icmp eq i64 %504, 32
  br i1 %exitcond34.7.not.3, label %_pocl_kernel_syrk_kernel.exit.loopexit238, label %pregion_for_entry.entry.i.i.us.7, !llvm.loop !40

if.then.i.i.us.6.1:                               ; preds = %if.end.i.i.us.6
  %add.i.i.us.6.1 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.1
  %idxprom.i.i.us.6.1 = sext i32 %add.i.i.us.6.1 to i64
  %arrayidx.i.i.us.6.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.6.1
  %505 = load float, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12
  %mul6.i.i.us.6.1 = fmul float %18, %505
  store float %mul6.i.i.us.6.1, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.1

if.end.i.i.us.6.1:                                ; preds = %if.then.i.i.us.6.1, %if.end.i.i.us.6
  %506 = or i64 %_local_id_x.i.0.us.6, 2
  %add1.i.i.i.us.6.2 = add nuw nsw i64 %506, %mul.i.i.i
  %conv.i.i.us.6.2 = trunc i64 %add1.i.i.i.us.6.2 to i32
  %cmp4.i.i.us.6.2 = icmp sgt i32 %26, %conv.i.i.us.6.2
  br i1 %cmp4.i.i.us.6.2, label %if.then.i.i.us.6.2, label %if.end.i.i.us.6.2

if.then.i.i.us.6.2:                               ; preds = %if.end.i.i.us.6.1
  %add.i.i.us.6.2 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.2
  %idxprom.i.i.us.6.2 = sext i32 %add.i.i.us.6.2 to i64
  %arrayidx.i.i.us.6.2 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.6.2
  %507 = load float, float* %arrayidx.i.i.us.6.2, align 4, !tbaa !12
  %mul6.i.i.us.6.2 = fmul float %18, %507
  store float %mul6.i.i.us.6.2, float* %arrayidx.i.i.us.6.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.2

if.end.i.i.us.6.2:                                ; preds = %if.then.i.i.us.6.2, %if.end.i.i.us.6.1
  %508 = or i64 %_local_id_x.i.0.us.6, 3
  %add1.i.i.i.us.6.3 = add nuw nsw i64 %508, %mul.i.i.i
  %conv.i.i.us.6.3 = trunc i64 %add1.i.i.i.us.6.3 to i32
  %cmp4.i.i.us.6.3 = icmp sgt i32 %26, %conv.i.i.us.6.3
  br i1 %cmp4.i.i.us.6.3, label %if.then.i.i.us.6.3, label %if.end.i.i.us.6.3

if.then.i.i.us.6.3:                               ; preds = %if.end.i.i.us.6.2
  %add.i.i.us.6.3 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.3
  %idxprom.i.i.us.6.3 = sext i32 %add.i.i.us.6.3 to i64
  %arrayidx.i.i.us.6.3 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.6.3
  %509 = load float, float* %arrayidx.i.i.us.6.3, align 4, !tbaa !12
  %mul6.i.i.us.6.3 = fmul float %18, %509
  store float %mul6.i.i.us.6.3, float* %arrayidx.i.i.us.6.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.3

if.end.i.i.us.6.3:                                ; preds = %if.then.i.i.us.6.3, %if.end.i.i.us.6.2
  %510 = add nuw nsw i64 %_local_id_x.i.0.us.6, 4
  %exitcond34.6.not.3 = icmp eq i64 %510, 32
  br i1 %exitcond34.6.not.3, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.6, !llvm.loop !41

if.then.i.i.us.5.1:                               ; preds = %if.end.i.i.us.5
  %add.i.i.us.5.1 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.1
  %idxprom.i.i.us.5.1 = sext i32 %add.i.i.us.5.1 to i64
  %arrayidx.i.i.us.5.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.5.1
  %511 = load float, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12
  %mul6.i.i.us.5.1 = fmul float %18, %511
  store float %mul6.i.i.us.5.1, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.1

if.end.i.i.us.5.1:                                ; preds = %if.then.i.i.us.5.1, %if.end.i.i.us.5
  %512 = or i64 %_local_id_x.i.0.us.5, 2
  %add1.i.i.i.us.5.2 = add nuw nsw i64 %512, %mul.i.i.i
  %conv.i.i.us.5.2 = trunc i64 %add1.i.i.i.us.5.2 to i32
  %cmp4.i.i.us.5.2 = icmp sgt i32 %26, %conv.i.i.us.5.2
  br i1 %cmp4.i.i.us.5.2, label %if.then.i.i.us.5.2, label %if.end.i.i.us.5.2

if.then.i.i.us.5.2:                               ; preds = %if.end.i.i.us.5.1
  %add.i.i.us.5.2 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.2
  %idxprom.i.i.us.5.2 = sext i32 %add.i.i.us.5.2 to i64
  %arrayidx.i.i.us.5.2 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.5.2
  %513 = load float, float* %arrayidx.i.i.us.5.2, align 4, !tbaa !12
  %mul6.i.i.us.5.2 = fmul float %18, %513
  store float %mul6.i.i.us.5.2, float* %arrayidx.i.i.us.5.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.2

if.end.i.i.us.5.2:                                ; preds = %if.then.i.i.us.5.2, %if.end.i.i.us.5.1
  %514 = or i64 %_local_id_x.i.0.us.5, 3
  %add1.i.i.i.us.5.3 = add nuw nsw i64 %514, %mul.i.i.i
  %conv.i.i.us.5.3 = trunc i64 %add1.i.i.i.us.5.3 to i32
  %cmp4.i.i.us.5.3 = icmp sgt i32 %26, %conv.i.i.us.5.3
  br i1 %cmp4.i.i.us.5.3, label %if.then.i.i.us.5.3, label %if.end.i.i.us.5.3

if.then.i.i.us.5.3:                               ; preds = %if.end.i.i.us.5.2
  %add.i.i.us.5.3 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.3
  %idxprom.i.i.us.5.3 = sext i32 %add.i.i.us.5.3 to i64
  %arrayidx.i.i.us.5.3 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.5.3
  %515 = load float, float* %arrayidx.i.i.us.5.3, align 4, !tbaa !12
  %mul6.i.i.us.5.3 = fmul float %18, %515
  store float %mul6.i.i.us.5.3, float* %arrayidx.i.i.us.5.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.3

if.end.i.i.us.5.3:                                ; preds = %if.then.i.i.us.5.3, %if.end.i.i.us.5.2
  %516 = add nuw nsw i64 %_local_id_x.i.0.us.5, 4
  %exitcond34.5.not.3 = icmp eq i64 %516, 32
  br i1 %exitcond34.5.not.3, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.5, !llvm.loop !42

if.then.i.i.us.4.1:                               ; preds = %if.end.i.i.us.4
  %add.i.i.us.4.1 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.1
  %idxprom.i.i.us.4.1 = sext i32 %add.i.i.us.4.1 to i64
  %arrayidx.i.i.us.4.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.4.1
  %517 = load float, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12
  %mul6.i.i.us.4.1 = fmul float %18, %517
  store float %mul6.i.i.us.4.1, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.1

if.end.i.i.us.4.1:                                ; preds = %if.then.i.i.us.4.1, %if.end.i.i.us.4
  %518 = or i64 %_local_id_x.i.0.us.4, 2
  %add1.i.i.i.us.4.2 = add nuw nsw i64 %518, %mul.i.i.i
  %conv.i.i.us.4.2 = trunc i64 %add1.i.i.i.us.4.2 to i32
  %cmp4.i.i.us.4.2 = icmp sgt i32 %26, %conv.i.i.us.4.2
  br i1 %cmp4.i.i.us.4.2, label %if.then.i.i.us.4.2, label %if.end.i.i.us.4.2

if.then.i.i.us.4.2:                               ; preds = %if.end.i.i.us.4.1
  %add.i.i.us.4.2 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.2
  %idxprom.i.i.us.4.2 = sext i32 %add.i.i.us.4.2 to i64
  %arrayidx.i.i.us.4.2 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.4.2
  %519 = load float, float* %arrayidx.i.i.us.4.2, align 4, !tbaa !12
  %mul6.i.i.us.4.2 = fmul float %18, %519
  store float %mul6.i.i.us.4.2, float* %arrayidx.i.i.us.4.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.2

if.end.i.i.us.4.2:                                ; preds = %if.then.i.i.us.4.2, %if.end.i.i.us.4.1
  %520 = or i64 %_local_id_x.i.0.us.4, 3
  %add1.i.i.i.us.4.3 = add nuw nsw i64 %520, %mul.i.i.i
  %conv.i.i.us.4.3 = trunc i64 %add1.i.i.i.us.4.3 to i32
  %cmp4.i.i.us.4.3 = icmp sgt i32 %26, %conv.i.i.us.4.3
  br i1 %cmp4.i.i.us.4.3, label %if.then.i.i.us.4.3, label %if.end.i.i.us.4.3

if.then.i.i.us.4.3:                               ; preds = %if.end.i.i.us.4.2
  %add.i.i.us.4.3 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.3
  %idxprom.i.i.us.4.3 = sext i32 %add.i.i.us.4.3 to i64
  %arrayidx.i.i.us.4.3 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.4.3
  %521 = load float, float* %arrayidx.i.i.us.4.3, align 4, !tbaa !12
  %mul6.i.i.us.4.3 = fmul float %18, %521
  store float %mul6.i.i.us.4.3, float* %arrayidx.i.i.us.4.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.3

if.end.i.i.us.4.3:                                ; preds = %if.then.i.i.us.4.3, %if.end.i.i.us.4.2
  %522 = add nuw nsw i64 %_local_id_x.i.0.us.4, 4
  %exitcond34.4.not.3 = icmp eq i64 %522, 32
  br i1 %exitcond34.4.not.3, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.4, !llvm.loop !43

if.then.i.i.us.3.1:                               ; preds = %if.end.i.i.us.3
  %add.i.i.us.3.1 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.1
  %idxprom.i.i.us.3.1 = sext i32 %add.i.i.us.3.1 to i64
  %arrayidx.i.i.us.3.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.3.1
  %523 = load float, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12
  %mul6.i.i.us.3.1 = fmul float %18, %523
  store float %mul6.i.i.us.3.1, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.1

if.end.i.i.us.3.1:                                ; preds = %if.then.i.i.us.3.1, %if.end.i.i.us.3
  %524 = or i64 %_local_id_x.i.0.us.3, 2
  %add1.i.i.i.us.3.2 = add nuw nsw i64 %524, %mul.i.i.i
  %conv.i.i.us.3.2 = trunc i64 %add1.i.i.i.us.3.2 to i32
  %cmp4.i.i.us.3.2 = icmp sgt i32 %26, %conv.i.i.us.3.2
  br i1 %cmp4.i.i.us.3.2, label %if.then.i.i.us.3.2, label %if.end.i.i.us.3.2

if.then.i.i.us.3.2:                               ; preds = %if.end.i.i.us.3.1
  %add.i.i.us.3.2 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.2
  %idxprom.i.i.us.3.2 = sext i32 %add.i.i.us.3.2 to i64
  %arrayidx.i.i.us.3.2 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.3.2
  %525 = load float, float* %arrayidx.i.i.us.3.2, align 4, !tbaa !12
  %mul6.i.i.us.3.2 = fmul float %18, %525
  store float %mul6.i.i.us.3.2, float* %arrayidx.i.i.us.3.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.2

if.end.i.i.us.3.2:                                ; preds = %if.then.i.i.us.3.2, %if.end.i.i.us.3.1
  %526 = or i64 %_local_id_x.i.0.us.3, 3
  %add1.i.i.i.us.3.3 = add nuw nsw i64 %526, %mul.i.i.i
  %conv.i.i.us.3.3 = trunc i64 %add1.i.i.i.us.3.3 to i32
  %cmp4.i.i.us.3.3 = icmp sgt i32 %26, %conv.i.i.us.3.3
  br i1 %cmp4.i.i.us.3.3, label %if.then.i.i.us.3.3, label %if.end.i.i.us.3.3

if.then.i.i.us.3.3:                               ; preds = %if.end.i.i.us.3.2
  %add.i.i.us.3.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.3
  %idxprom.i.i.us.3.3 = sext i32 %add.i.i.us.3.3 to i64
  %arrayidx.i.i.us.3.3 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.3.3
  %527 = load float, float* %arrayidx.i.i.us.3.3, align 4, !tbaa !12
  %mul6.i.i.us.3.3 = fmul float %18, %527
  store float %mul6.i.i.us.3.3, float* %arrayidx.i.i.us.3.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.3

if.end.i.i.us.3.3:                                ; preds = %if.then.i.i.us.3.3, %if.end.i.i.us.3.2
  %528 = add nuw nsw i64 %_local_id_x.i.0.us.3, 4
  %exitcond34.3.not.3 = icmp eq i64 %528, 32
  br i1 %exitcond34.3.not.3, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.3, !llvm.loop !44

if.then.i.i.us.2.1:                               ; preds = %if.end.i.i.us.2
  %add.i.i.us.2.1 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.1
  %idxprom.i.i.us.2.1 = sext i32 %add.i.i.us.2.1 to i64
  %arrayidx.i.i.us.2.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.2.1
  %529 = load float, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12
  %mul6.i.i.us.2.1 = fmul float %18, %529
  store float %mul6.i.i.us.2.1, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.1

if.end.i.i.us.2.1:                                ; preds = %if.then.i.i.us.2.1, %if.end.i.i.us.2
  %530 = or i64 %_local_id_x.i.0.us.2, 2
  %add1.i.i.i.us.2.2 = add nuw nsw i64 %530, %mul.i.i.i
  %conv.i.i.us.2.2 = trunc i64 %add1.i.i.i.us.2.2 to i32
  %cmp4.i.i.us.2.2 = icmp sgt i32 %26, %conv.i.i.us.2.2
  br i1 %cmp4.i.i.us.2.2, label %if.then.i.i.us.2.2, label %if.end.i.i.us.2.2

if.then.i.i.us.2.2:                               ; preds = %if.end.i.i.us.2.1
  %add.i.i.us.2.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.2
  %idxprom.i.i.us.2.2 = sext i32 %add.i.i.us.2.2 to i64
  %arrayidx.i.i.us.2.2 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.2.2
  %531 = load float, float* %arrayidx.i.i.us.2.2, align 4, !tbaa !12
  %mul6.i.i.us.2.2 = fmul float %18, %531
  store float %mul6.i.i.us.2.2, float* %arrayidx.i.i.us.2.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.2

if.end.i.i.us.2.2:                                ; preds = %if.then.i.i.us.2.2, %if.end.i.i.us.2.1
  %532 = or i64 %_local_id_x.i.0.us.2, 3
  %add1.i.i.i.us.2.3 = add nuw nsw i64 %532, %mul.i.i.i
  %conv.i.i.us.2.3 = trunc i64 %add1.i.i.i.us.2.3 to i32
  %cmp4.i.i.us.2.3 = icmp sgt i32 %26, %conv.i.i.us.2.3
  br i1 %cmp4.i.i.us.2.3, label %if.then.i.i.us.2.3, label %if.end.i.i.us.2.3

if.then.i.i.us.2.3:                               ; preds = %if.end.i.i.us.2.2
  %add.i.i.us.2.3 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.3
  %idxprom.i.i.us.2.3 = sext i32 %add.i.i.us.2.3 to i64
  %arrayidx.i.i.us.2.3 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.2.3
  %533 = load float, float* %arrayidx.i.i.us.2.3, align 4, !tbaa !12
  %mul6.i.i.us.2.3 = fmul float %18, %533
  store float %mul6.i.i.us.2.3, float* %arrayidx.i.i.us.2.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.3

if.end.i.i.us.2.3:                                ; preds = %if.then.i.i.us.2.3, %if.end.i.i.us.2.2
  %534 = add nuw nsw i64 %_local_id_x.i.0.us.2, 4
  %exitcond34.2.not.3 = icmp eq i64 %534, 32
  br i1 %exitcond34.2.not.3, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.2, !llvm.loop !45

if.then.i.i.us.1.1:                               ; preds = %if.end.i.i.us.1
  %add.i.i.us.1.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.1
  %idxprom.i.i.us.1.1 = sext i32 %add.i.i.us.1.1 to i64
  %arrayidx.i.i.us.1.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.1.1
  %535 = load float, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12
  %mul6.i.i.us.1.1 = fmul float %18, %535
  store float %mul6.i.i.us.1.1, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.1

if.end.i.i.us.1.1:                                ; preds = %if.then.i.i.us.1.1, %if.end.i.i.us.1
  %536 = or i64 %_local_id_x.i.0.us.1, 2
  %add1.i.i.i.us.1.2 = add nuw nsw i64 %536, %mul.i.i.i
  %conv.i.i.us.1.2 = trunc i64 %add1.i.i.i.us.1.2 to i32
  %cmp4.i.i.us.1.2 = icmp sgt i32 %26, %conv.i.i.us.1.2
  br i1 %cmp4.i.i.us.1.2, label %if.then.i.i.us.1.2, label %if.end.i.i.us.1.2

if.then.i.i.us.1.2:                               ; preds = %if.end.i.i.us.1.1
  %add.i.i.us.1.2 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.2
  %idxprom.i.i.us.1.2 = sext i32 %add.i.i.us.1.2 to i64
  %arrayidx.i.i.us.1.2 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.1.2
  %537 = load float, float* %arrayidx.i.i.us.1.2, align 4, !tbaa !12
  %mul6.i.i.us.1.2 = fmul float %18, %537
  store float %mul6.i.i.us.1.2, float* %arrayidx.i.i.us.1.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.2

if.end.i.i.us.1.2:                                ; preds = %if.then.i.i.us.1.2, %if.end.i.i.us.1.1
  %538 = or i64 %_local_id_x.i.0.us.1, 3
  %add1.i.i.i.us.1.3 = add nuw nsw i64 %538, %mul.i.i.i
  %conv.i.i.us.1.3 = trunc i64 %add1.i.i.i.us.1.3 to i32
  %cmp4.i.i.us.1.3 = icmp sgt i32 %26, %conv.i.i.us.1.3
  br i1 %cmp4.i.i.us.1.3, label %if.then.i.i.us.1.3, label %if.end.i.i.us.1.3

if.then.i.i.us.1.3:                               ; preds = %if.end.i.i.us.1.2
  %add.i.i.us.1.3 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.3
  %idxprom.i.i.us.1.3 = sext i32 %add.i.i.us.1.3 to i64
  %arrayidx.i.i.us.1.3 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.1.3
  %539 = load float, float* %arrayidx.i.i.us.1.3, align 4, !tbaa !12
  %mul6.i.i.us.1.3 = fmul float %18, %539
  store float %mul6.i.i.us.1.3, float* %arrayidx.i.i.us.1.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.3

if.end.i.i.us.1.3:                                ; preds = %if.then.i.i.us.1.3, %if.end.i.i.us.1.2
  %540 = add nuw nsw i64 %_local_id_x.i.0.us.1, 4
  %exitcond34.1.not.3 = icmp eq i64 %540, 32
  br i1 %exitcond34.1.not.3, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.1, !llvm.loop !46

if.then.i.i.us.1214:                              ; preds = %if.end.i.i.us
  %add.i.i.us.1210 = add nsw i32 %mul.i.i.us, %conv.i.i.us.1207
  %idxprom.i.i.us.1211 = sext i32 %add.i.i.us.1210 to i64
  %arrayidx.i.i.us.1212 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.1211
  %541 = load float, float* %arrayidx.i.i.us.1212, align 4, !tbaa !12
  %mul6.i.i.us.1213 = fmul float %18, %541
  store float %mul6.i.i.us.1213, float* %arrayidx.i.i.us.1212, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1215

if.end.i.i.us.1215:                               ; preds = %if.then.i.i.us.1214, %if.end.i.i.us
  %542 = or i64 %_local_id_x.i.0.us, 2
  %add1.i.i.i.us.2217 = add nuw nsw i64 %542, %mul.i.i.i
  %conv.i.i.us.2218 = trunc i64 %add1.i.i.i.us.2217 to i32
  %cmp4.i.i.us.2219 = icmp sgt i32 %26, %conv.i.i.us.2218
  br i1 %cmp4.i.i.us.2219, label %if.then.i.i.us.2225, label %if.end.i.i.us.2226

if.then.i.i.us.2225:                              ; preds = %if.end.i.i.us.1215
  %add.i.i.us.2221 = add nsw i32 %mul.i.i.us, %conv.i.i.us.2218
  %idxprom.i.i.us.2222 = sext i32 %add.i.i.us.2221 to i64
  %arrayidx.i.i.us.2223 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.2222
  %543 = load float, float* %arrayidx.i.i.us.2223, align 4, !tbaa !12
  %mul6.i.i.us.2224 = fmul float %18, %543
  store float %mul6.i.i.us.2224, float* %arrayidx.i.i.us.2223, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2226

if.end.i.i.us.2226:                               ; preds = %if.then.i.i.us.2225, %if.end.i.i.us.1215
  %544 = or i64 %_local_id_x.i.0.us, 3
  %add1.i.i.i.us.3228 = add nuw nsw i64 %544, %mul.i.i.i
  %conv.i.i.us.3229 = trunc i64 %add1.i.i.i.us.3228 to i32
  %cmp4.i.i.us.3230 = icmp sgt i32 %26, %conv.i.i.us.3229
  br i1 %cmp4.i.i.us.3230, label %if.then.i.i.us.3236, label %if.end.i.i.us.3237

if.then.i.i.us.3236:                              ; preds = %if.end.i.i.us.2226
  %add.i.i.us.3232 = add nsw i32 %mul.i.i.us, %conv.i.i.us.3229
  %idxprom.i.i.us.3233 = sext i32 %add.i.i.us.3232 to i64
  %arrayidx.i.i.us.3234 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.3233
  %545 = load float, float* %arrayidx.i.i.us.3234, align 4, !tbaa !12
  %mul6.i.i.us.3235 = fmul float %18, %545
  store float %mul6.i.i.us.3235, float* %arrayidx.i.i.us.3234, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3237

if.end.i.i.us.3237:                               ; preds = %if.then.i.i.us.3236, %if.end.i.i.us.2226
  %546 = add nuw nsw i64 %_local_id_x.i.0.us, 4
  %exitcond34.not.3 = icmp eq i64 %546, 32
  br i1 %exitcond34.not.3, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !47
}

; Function Attrs: argmemonly nounwind readonly willreturn
declare <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>*, i32 immarg, <8 x i1>, <8 x float>) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.masked.store.v8f32.p0v8f32(<8 x float>, <8 x float>*, i32 immarg, <8 x i1>) #4

attributes #0 = { nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind readonly willreturn }
attributes #4 = { argmemonly nounwind willreturn }

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
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"DATA_TYPE", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float", !"float", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !"", !""}
!10 = !{!"a", !"c", !"alpha", !"beta", !"ni", !"nj"}
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
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !20, !24}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = distinct !{!25, !20, !24}
!26 = distinct !{!26, !20, !24}
!27 = distinct !{!27, !20, !24}
!28 = distinct !{!28, !20, !24}
!29 = distinct !{!29, !20, !24}
!30 = distinct !{!30, !20, !24}
!31 = distinct !{!31, !20, !24}
!32 = distinct !{!32, !20, !24}
!33 = distinct !{!33, !20, !24}
!34 = distinct !{!34, !20, !24}
!35 = distinct !{!35, !20, !24}
!36 = distinct !{!36, !20, !24}
!37 = distinct !{!37, !20, !24}
!38 = distinct !{!38, !20, !24}
!39 = distinct !{!39, !20, !24}
!40 = distinct !{!40, !20, !24}
!41 = distinct !{!41, !20, !24}
!42 = distinct !{!42, !20, !24}
!43 = distinct !{!43, !20, !24}
!44 = distinct !{!44, !20, !24}
!45 = distinct !{!45, !20, !24}
!46 = distinct !{!46, !20, !24}
!47 = distinct !{!47, !20, !24}
