; ModuleID = './AE/OAMONJBAJKCKPFEIFGGGJLBIMMFAJGMJFHHDO/mm2_kernel2/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_mm2_kernel2(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, i32 %3, i32 %4, i32 %5, i32 %6, float %7, float %8, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %9, i64 %10, i64 %11, i64 %12) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %10, 5
  %mul3.i.i = shl i64 %11, 3
  %cmp739.i = icmp sgt i32 %4, 0
  %14 = sext i32 %6 to i64
  %wide.trip.count.i = zext i32 %4 to i64
  %conv2.i.us = trunc i64 %mul3.i.i to i32
  %cmp.i.us = icmp slt i32 %conv2.i.us, %3
  %mul.i.us = mul nsw i32 %conv2.i.us, %6
  br i1 %cmp739.i, label %pregion_for_entry.pregion_for_init.i.us, label %pregion_for_entry.pregion_for_init.i.preheader

pregion_for_entry.pregion_for_init.i.preheader:   ; preds = %13
  br i1 %cmp.i.us, label %vector.scevcheck, label %pregion_for_end.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.preheader
  %15 = trunc i64 %11 to i32
  %16 = mul i32 %15, %6
  %17 = shl i32 %16, 3
  %18 = trunc i64 %10 to i32
  %19 = shl i32 %18, 5
  %20 = add i32 %17, %19
  %21 = icmp sgt i32 %20, 2147483616
  br i1 %21, label %pregion_for_entry.entry.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.us.preheader:           ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.us

vector.ph:                                        ; preds = %vector.scevcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert37 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat38 = shufflevector <8 x i32> %broadcast.splatinsert37, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert39 = insertelement <8 x float> undef, float %8, i32 0
  %broadcast.splat40 = shufflevector <8 x float> %broadcast.splatinsert39, <8 x float> undef, <8 x i32> zeroinitializer
  %22 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %23 = or <8 x i32> %22, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %24 = icmp sgt <8 x i32> %broadcast.splat38, %23
  %25 = extractelement <8 x i32> %23, i32 0
  %26 = add nsw i32 %mul.i.us, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %2, i64 %27
  %29 = bitcast float* %28 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %29, i32 4, <8 x i1> %24, <8 x float> undef), !tbaa !12
  %30 = fmul <8 x float> %wide.masked.load, %broadcast.splat40
  %31 = bitcast float* %28 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %30, <8 x float>* %31, i32 4, <8 x i1> %24), !tbaa !12, !llvm.access.group !16
  %32 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %33 = or <8 x i32> %32, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %34 = icmp sgt <8 x i32> %broadcast.splat38, %33
  %35 = extractelement <8 x i32> %33, i32 0
  %36 = add nsw i32 %mul.i.us, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %2, i64 %37
  %39 = bitcast float* %38 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %39, i32 4, <8 x i1> %34, <8 x float> undef), !tbaa !12
  %40 = fmul <8 x float> %wide.masked.load.1, %broadcast.splat40
  %41 = bitcast float* %38 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %40, <8 x float>* %41, i32 4, <8 x i1> %34), !tbaa !12, !llvm.access.group !16
  %42 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %43 = or <8 x i32> %42, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %44 = icmp sgt <8 x i32> %broadcast.splat38, %43
  %45 = extractelement <8 x i32> %43, i32 0
  %46 = add nsw i32 %mul.i.us, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %2, i64 %47
  %49 = bitcast float* %48 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %49, i32 4, <8 x i1> %44, <8 x float> undef), !tbaa !12
  %50 = fmul <8 x float> %wide.masked.load.2, %broadcast.splat40
  %51 = bitcast float* %48 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %50, <8 x float>* %51, i32 4, <8 x i1> %44), !tbaa !12, !llvm.access.group !16
  %52 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %53 = or <8 x i32> %52, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %54 = icmp sgt <8 x i32> %broadcast.splat38, %53
  %55 = extractelement <8 x i32> %53, i32 0
  %56 = add nsw i32 %mul.i.us, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %2, i64 %57
  %59 = bitcast float* %58 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %59, i32 4, <8 x i1> %54, <8 x float> undef), !tbaa !12
  %60 = fmul <8 x float> %wide.masked.load.3, %broadcast.splat40
  %61 = bitcast float* %58 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %60, <8 x float>* %61, i32 4, <8 x i1> %54), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i

pregion_for_entry.pregion_for_init.i.us:          ; preds = %13
  %mul9.i.us = mul nsw i32 %conv2.i.us, %4
  %62 = sext i32 %mul9.i.us to i64
  br i1 %cmp.i.us, label %pregion_for_entry.entry.i.us.us.preheader, label %pregion_for_end.i.us

pregion_for_entry.entry.i.us.us.preheader:        ; preds = %pregion_for_entry.pregion_for_init.i.us
  br label %pregion_for_entry.entry.i.us.us

pregion_for_end.i.us.loopexit:                    ; preds = %if.end.i.us.us
  br label %pregion_for_end.i.us

pregion_for_end.i.us:                             ; preds = %pregion_for_end.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.us
  %63 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.1 = or i32 %63, 1
  %cmp.i.us.1 = icmp slt i32 %conv2.i.us.1, %3
  %mul.i.us.1 = mul nsw i32 %conv2.i.us.1, %6
  %mul9.i.us.1 = mul nsw i32 %conv2.i.us.1, %4
  %64 = sext i32 %mul9.i.us.1 to i64
  br i1 %cmp.i.us.1, label %pregion_for_entry.entry.i.us.us.1.preheader, label %pregion_for_end.i.us.1

pregion_for_entry.entry.i.us.us.1.preheader:      ; preds = %pregion_for_end.i.us
  br label %pregion_for_entry.entry.i.us.us.1

pregion_for_entry.entry.i.us.us:                  ; preds = %if.end.i.us.us, %pregion_for_entry.entry.i.us.us.preheader
  %_local_id_x.0.us.us = phi i64 [ %67, %if.end.i.us.us ], [ 0, %pregion_for_entry.entry.i.us.us.preheader ]
  %add1.i.i.us.us = add nuw nsw i64 %_local_id_x.0.us.us, %mul.i.i
  %conv.i.us.us = trunc i64 %add1.i.i.us.us to i32
  %cmp4.i.us.us = icmp slt i32 %conv.i.us.us, %6
  br i1 %cmp4.i.us.us, label %if.then.i.us.us, label %if.end.i.us.us

if.then.i.us.us:                                  ; preds = %pregion_for_entry.entry.i.us.us
  %add.i.us.us = add nsw i32 %mul.i.us, %conv.i.us.us
  %idxprom.i.us.us = sext i32 %add.i.us.us to i64
  %arrayidx.i.us.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us
  %65 = load float, float* %arrayidx.i.us.us, align 4, !tbaa !12
  %mul6.i.us.us = fmul float %65, %8
  store float %mul6.i.us.us, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us = shl i64 %add1.i.i.us.us, 32
  %66 = ashr exact i64 %sext.i.us.us, 32
  br label %for.body.i.us.us

if.end.i.us.us.loopexit:                          ; preds = %for.body.i.us.us
  br label %if.end.i.us.us

if.end.i.us.us:                                   ; preds = %if.end.i.us.us.loopexit, %pregion_for_entry.entry.i.us.us
  %67 = add nuw nsw i64 %_local_id_x.0.us.us, 1
  %exitcond.not = icmp eq i64 %67, 32
  br i1 %exitcond.not, label %pregion_for_end.i.us.loopexit, label %pregion_for_entry.entry.i.us.us, !llvm.loop !19

for.body.i.us.us:                                 ; preds = %for.body.i.us.us, %if.then.i.us.us
  %indvars.iv.next.i3.us.us = phi i64 [ %indvars.iv.next.i.us.us, %for.body.i.us.us ], [ 0, %if.then.i.us.us ]
  %68 = phi float [ %74, %for.body.i.us.us ], [ %mul6.i.us.us, %if.then.i.us.us ]
  %69 = add nsw i64 %indvars.iv.next.i3.us.us, %62
  %arrayidx12.i.us.us = getelementptr inbounds float, float* %0, i64 %69
  %70 = load float, float* %arrayidx12.i.us.us, align 4, !tbaa !12
  %71 = mul nsw i64 %indvars.iv.next.i3.us.us, %14
  %72 = add nsw i64 %71, %66
  %arrayidx16.i.us.us = getelementptr inbounds float, float* %1, i64 %72
  %73 = load float, float* %arrayidx16.i.us.us, align 4, !tbaa !12
  %74 = tail call float @llvm.fmuladd.f32(float %70, float %73, float %68) #2
  store float %74, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.next.i3.us.us, 1
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %if.end.i.us.us.loopexit, label %for.body.i.us.us, !llvm.loop !21

pregion_for_entry.entry.i.us:                     ; preds = %if.end.i.us.3236, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %542, %if.end.i.us.3236 ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp4.i.us = icmp slt i32 %conv.i.us, %6
  br i1 %cmp4.i.us, label %if.then.i.us, label %if.end.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %add.i.us = add nsw i32 %mul.i.us, %conv.i.us
  %idxprom.i.us = sext i32 %add.i.us to i64
  %arrayidx.i.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us
  %75 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %mul6.i.us = fmul float %75, %8
  store float %mul6.i.us, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us

if.end.i.us:                                      ; preds = %if.then.i.us, %pregion_for_entry.entry.i.us
  %76 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1205 = add nuw nsw i64 %76, %mul.i.i
  %conv.i.us.1206 = trunc i64 %add1.i.i.us.1205 to i32
  %cmp4.i.us.1207 = icmp slt i32 %conv.i.us.1206, %6
  br i1 %cmp4.i.us.1207, label %if.then.i.us.1213, label %if.end.i.us.1214

pregion_for_end.i.loopexit:                       ; preds = %if.end.i.us.3236
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %pregion_for_end.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.preheader
  %77 = trunc i64 %mul3.i.i to i32
  %conv2.i.1 = or i32 %77, 1
  %cmp.i.1 = icmp slt i32 %conv2.i.1, %3
  %mul.i.1 = mul nsw i32 %conv2.i.1, %6
  br i1 %cmp.i.1, label %vector.scevcheck48, label %pregion_for_end.i.1

vector.scevcheck48:                               ; preds = %pregion_for_end.i
  %78 = mul i32 %conv2.i.1, %6
  %79 = trunc i64 %10 to i32
  %80 = shl i32 %79, 5
  %81 = add i32 %78, %80
  %82 = icmp sgt i32 %81, 2147483616
  br i1 %82, label %pregion_for_entry.entry.i.us.1.preheader, label %vector.ph49

pregion_for_entry.entry.i.us.1.preheader:         ; preds = %vector.scevcheck48
  br label %pregion_for_entry.entry.i.us.1

vector.ph49:                                      ; preds = %vector.scevcheck48
  %broadcast.splatinsert56 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat57 = shufflevector <8 x i64> %broadcast.splatinsert56, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert58 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat59 = shufflevector <8 x i32> %broadcast.splatinsert58, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert61 = insertelement <8 x float> undef, float %8, i32 0
  %broadcast.splat62 = shufflevector <8 x float> %broadcast.splatinsert61, <8 x float> undef, <8 x i32> zeroinitializer
  %83 = trunc <8 x i64> %broadcast.splat57 to <8 x i32>
  %84 = or <8 x i32> %83, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %85 = icmp sgt <8 x i32> %broadcast.splat59, %84
  %86 = extractelement <8 x i32> %84, i32 0
  %87 = add nsw i32 %mul.i.1, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %2, i64 %88
  %90 = bitcast float* %89 to <8 x float>*
  %wide.masked.load60 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %90, i32 4, <8 x i1> %85, <8 x float> undef), !tbaa !12
  %91 = fmul <8 x float> %wide.masked.load60, %broadcast.splat62
  %92 = bitcast float* %89 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %91, <8 x float>* %92, i32 4, <8 x i1> %85), !tbaa !12, !llvm.access.group !16
  %93 = trunc <8 x i64> %broadcast.splat57 to <8 x i32>
  %94 = or <8 x i32> %93, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %95 = icmp sgt <8 x i32> %broadcast.splat59, %94
  %96 = extractelement <8 x i32> %94, i32 0
  %97 = add nsw i32 %mul.i.1, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %2, i64 %98
  %100 = bitcast float* %99 to <8 x float>*
  %wide.masked.load60.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %100, i32 4, <8 x i1> %95, <8 x float> undef), !tbaa !12
  %101 = fmul <8 x float> %wide.masked.load60.1, %broadcast.splat62
  %102 = bitcast float* %99 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %101, <8 x float>* %102, i32 4, <8 x i1> %95), !tbaa !12, !llvm.access.group !16
  %103 = trunc <8 x i64> %broadcast.splat57 to <8 x i32>
  %104 = or <8 x i32> %103, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %105 = icmp sgt <8 x i32> %broadcast.splat59, %104
  %106 = extractelement <8 x i32> %104, i32 0
  %107 = add nsw i32 %mul.i.1, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %2, i64 %108
  %110 = bitcast float* %109 to <8 x float>*
  %wide.masked.load60.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %110, i32 4, <8 x i1> %105, <8 x float> undef), !tbaa !12
  %111 = fmul <8 x float> %wide.masked.load60.2, %broadcast.splat62
  %112 = bitcast float* %109 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %111, <8 x float>* %112, i32 4, <8 x i1> %105), !tbaa !12, !llvm.access.group !16
  %113 = trunc <8 x i64> %broadcast.splat57 to <8 x i32>
  %114 = or <8 x i32> %113, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %115 = icmp sgt <8 x i32> %broadcast.splat59, %114
  %116 = extractelement <8 x i32> %114, i32 0
  %117 = add nsw i32 %mul.i.1, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %2, i64 %118
  %120 = bitcast float* %119 to <8 x float>*
  %wide.masked.load60.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %120, i32 4, <8 x i1> %115, <8 x float> undef), !tbaa !12
  %121 = fmul <8 x float> %wide.masked.load60.3, %broadcast.splat62
  %122 = bitcast float* %119 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %121, <8 x float>* %122, i32 4, <8 x i1> %115), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.1

mm2_kernel2.exit.loopexit:                        ; preds = %if.end.i.us.us.7
  br label %mm2_kernel2.exit

mm2_kernel2.exit.loopexit237:                     ; preds = %if.end.i.us.7.3
  br label %mm2_kernel2.exit

mm2_kernel2.exit:                                 ; preds = %pregion_for_end.i.us.6, %vector.ph181, %pregion_for_end.i.6, %mm2_kernel2.exit.loopexit237, %mm2_kernel2.exit.loopexit
  ret void

pregion_for_entry.entry.i.us.1:                   ; preds = %if.end.i.us.1.3, %pregion_for_entry.entry.i.us.1.preheader
  %_local_id_x.0.us.1 = phi i64 [ %536, %if.end.i.us.1.3 ], [ 0, %pregion_for_entry.entry.i.us.1.preheader ]
  %add1.i.i.us.1 = add nuw nsw i64 %_local_id_x.0.us.1, %mul.i.i
  %conv.i.us.1 = trunc i64 %add1.i.i.us.1 to i32
  %cmp4.i.us.1 = icmp slt i32 %conv.i.us.1, %6
  br i1 %cmp4.i.us.1, label %if.then.i.us.1, label %if.end.i.us.1

if.then.i.us.1:                                   ; preds = %pregion_for_entry.entry.i.us.1
  %add.i.us.1 = add nsw i32 %mul.i.1, %conv.i.us.1
  %idxprom.i.us.1 = sext i32 %add.i.us.1 to i64
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1
  %123 = load float, float* %arrayidx.i.us.1, align 4, !tbaa !12
  %mul6.i.us.1 = fmul float %123, %8
  store float %mul6.i.us.1, float* %arrayidx.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1

if.end.i.us.1:                                    ; preds = %if.then.i.us.1, %pregion_for_entry.entry.i.us.1
  %124 = or i64 %_local_id_x.0.us.1, 1
  %add1.i.i.us.1.1 = add nuw nsw i64 %124, %mul.i.i
  %conv.i.us.1.1 = trunc i64 %add1.i.i.us.1.1 to i32
  %cmp4.i.us.1.1 = icmp slt i32 %conv.i.us.1.1, %6
  br i1 %cmp4.i.us.1.1, label %if.then.i.us.1.1, label %if.end.i.us.1.1

pregion_for_end.i.1.loopexit:                     ; preds = %if.end.i.us.1.3
  br label %pregion_for_end.i.1

pregion_for_end.i.1:                              ; preds = %pregion_for_end.i.1.loopexit, %vector.ph49, %pregion_for_end.i
  %125 = trunc i64 %mul3.i.i to i32
  %conv2.i.2 = or i32 %125, 2
  %cmp.i.2 = icmp slt i32 %conv2.i.2, %3
  %mul.i.2 = mul nsw i32 %conv2.i.2, %6
  br i1 %cmp.i.2, label %vector.scevcheck70, label %pregion_for_end.i.2

vector.scevcheck70:                               ; preds = %pregion_for_end.i.1
  %126 = mul i32 %conv2.i.2, %6
  %127 = trunc i64 %10 to i32
  %128 = shl i32 %127, 5
  %129 = add i32 %126, %128
  %130 = icmp sgt i32 %129, 2147483616
  br i1 %130, label %pregion_for_entry.entry.i.us.2.preheader, label %vector.ph71

pregion_for_entry.entry.i.us.2.preheader:         ; preds = %vector.scevcheck70
  br label %pregion_for_entry.entry.i.us.2

vector.ph71:                                      ; preds = %vector.scevcheck70
  %broadcast.splatinsert78 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat79 = shufflevector <8 x i64> %broadcast.splatinsert78, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert80 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat81 = shufflevector <8 x i32> %broadcast.splatinsert80, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert83 = insertelement <8 x float> undef, float %8, i32 0
  %broadcast.splat84 = shufflevector <8 x float> %broadcast.splatinsert83, <8 x float> undef, <8 x i32> zeroinitializer
  %131 = trunc <8 x i64> %broadcast.splat79 to <8 x i32>
  %132 = or <8 x i32> %131, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %133 = icmp sgt <8 x i32> %broadcast.splat81, %132
  %134 = extractelement <8 x i32> %132, i32 0
  %135 = add nsw i32 %mul.i.2, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %2, i64 %136
  %138 = bitcast float* %137 to <8 x float>*
  %wide.masked.load82 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %138, i32 4, <8 x i1> %133, <8 x float> undef), !tbaa !12
  %139 = fmul <8 x float> %wide.masked.load82, %broadcast.splat84
  %140 = bitcast float* %137 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %139, <8 x float>* %140, i32 4, <8 x i1> %133), !tbaa !12, !llvm.access.group !16
  %141 = trunc <8 x i64> %broadcast.splat79 to <8 x i32>
  %142 = or <8 x i32> %141, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %143 = icmp sgt <8 x i32> %broadcast.splat81, %142
  %144 = extractelement <8 x i32> %142, i32 0
  %145 = add nsw i32 %mul.i.2, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %2, i64 %146
  %148 = bitcast float* %147 to <8 x float>*
  %wide.masked.load82.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %148, i32 4, <8 x i1> %143, <8 x float> undef), !tbaa !12
  %149 = fmul <8 x float> %wide.masked.load82.1, %broadcast.splat84
  %150 = bitcast float* %147 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %149, <8 x float>* %150, i32 4, <8 x i1> %143), !tbaa !12, !llvm.access.group !16
  %151 = trunc <8 x i64> %broadcast.splat79 to <8 x i32>
  %152 = or <8 x i32> %151, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %153 = icmp sgt <8 x i32> %broadcast.splat81, %152
  %154 = extractelement <8 x i32> %152, i32 0
  %155 = add nsw i32 %mul.i.2, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %2, i64 %156
  %158 = bitcast float* %157 to <8 x float>*
  %wide.masked.load82.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %158, i32 4, <8 x i1> %153, <8 x float> undef), !tbaa !12
  %159 = fmul <8 x float> %wide.masked.load82.2, %broadcast.splat84
  %160 = bitcast float* %157 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %159, <8 x float>* %160, i32 4, <8 x i1> %153), !tbaa !12, !llvm.access.group !16
  %161 = trunc <8 x i64> %broadcast.splat79 to <8 x i32>
  %162 = or <8 x i32> %161, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %163 = icmp sgt <8 x i32> %broadcast.splat81, %162
  %164 = extractelement <8 x i32> %162, i32 0
  %165 = add nsw i32 %mul.i.2, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %2, i64 %166
  %168 = bitcast float* %167 to <8 x float>*
  %wide.masked.load82.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %168, i32 4, <8 x i1> %163, <8 x float> undef), !tbaa !12
  %169 = fmul <8 x float> %wide.masked.load82.3, %broadcast.splat84
  %170 = bitcast float* %167 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %169, <8 x float>* %170, i32 4, <8 x i1> %163), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.2

pregion_for_entry.entry.i.us.2:                   ; preds = %if.end.i.us.2.3, %pregion_for_entry.entry.i.us.2.preheader
  %_local_id_x.0.us.2 = phi i64 [ %530, %if.end.i.us.2.3 ], [ 0, %pregion_for_entry.entry.i.us.2.preheader ]
  %add1.i.i.us.2 = add nuw nsw i64 %_local_id_x.0.us.2, %mul.i.i
  %conv.i.us.2 = trunc i64 %add1.i.i.us.2 to i32
  %cmp4.i.us.2 = icmp slt i32 %conv.i.us.2, %6
  br i1 %cmp4.i.us.2, label %if.then.i.us.2, label %if.end.i.us.2

if.then.i.us.2:                                   ; preds = %pregion_for_entry.entry.i.us.2
  %add.i.us.2 = add nsw i32 %mul.i.2, %conv.i.us.2
  %idxprom.i.us.2 = sext i32 %add.i.us.2 to i64
  %arrayidx.i.us.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.2
  %171 = load float, float* %arrayidx.i.us.2, align 4, !tbaa !12
  %mul6.i.us.2 = fmul float %171, %8
  store float %mul6.i.us.2, float* %arrayidx.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2

if.end.i.us.2:                                    ; preds = %if.then.i.us.2, %pregion_for_entry.entry.i.us.2
  %172 = or i64 %_local_id_x.0.us.2, 1
  %add1.i.i.us.2.1 = add nuw nsw i64 %172, %mul.i.i
  %conv.i.us.2.1 = trunc i64 %add1.i.i.us.2.1 to i32
  %cmp4.i.us.2.1 = icmp slt i32 %conv.i.us.2.1, %6
  br i1 %cmp4.i.us.2.1, label %if.then.i.us.2.1, label %if.end.i.us.2.1

pregion_for_end.i.2.loopexit:                     ; preds = %if.end.i.us.2.3
  br label %pregion_for_end.i.2

pregion_for_end.i.2:                              ; preds = %pregion_for_end.i.2.loopexit, %vector.ph71, %pregion_for_end.i.1
  %173 = trunc i64 %mul3.i.i to i32
  %conv2.i.3 = or i32 %173, 3
  %cmp.i.3 = icmp slt i32 %conv2.i.3, %3
  %mul.i.3 = mul nsw i32 %conv2.i.3, %6
  br i1 %cmp.i.3, label %vector.scevcheck92, label %pregion_for_end.i.3

vector.scevcheck92:                               ; preds = %pregion_for_end.i.2
  %174 = mul i32 %conv2.i.3, %6
  %175 = trunc i64 %10 to i32
  %176 = shl i32 %175, 5
  %177 = add i32 %174, %176
  %178 = icmp sgt i32 %177, 2147483616
  br i1 %178, label %pregion_for_entry.entry.i.us.3.preheader, label %vector.ph93

pregion_for_entry.entry.i.us.3.preheader:         ; preds = %vector.scevcheck92
  br label %pregion_for_entry.entry.i.us.3

vector.ph93:                                      ; preds = %vector.scevcheck92
  %broadcast.splatinsert100 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat101 = shufflevector <8 x i64> %broadcast.splatinsert100, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert102 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat103 = shufflevector <8 x i32> %broadcast.splatinsert102, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert105 = insertelement <8 x float> undef, float %8, i32 0
  %broadcast.splat106 = shufflevector <8 x float> %broadcast.splatinsert105, <8 x float> undef, <8 x i32> zeroinitializer
  %179 = trunc <8 x i64> %broadcast.splat101 to <8 x i32>
  %180 = or <8 x i32> %179, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %181 = icmp sgt <8 x i32> %broadcast.splat103, %180
  %182 = extractelement <8 x i32> %180, i32 0
  %183 = add nsw i32 %mul.i.3, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %2, i64 %184
  %186 = bitcast float* %185 to <8 x float>*
  %wide.masked.load104 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %186, i32 4, <8 x i1> %181, <8 x float> undef), !tbaa !12
  %187 = fmul <8 x float> %wide.masked.load104, %broadcast.splat106
  %188 = bitcast float* %185 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %187, <8 x float>* %188, i32 4, <8 x i1> %181), !tbaa !12, !llvm.access.group !16
  %189 = trunc <8 x i64> %broadcast.splat101 to <8 x i32>
  %190 = or <8 x i32> %189, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %191 = icmp sgt <8 x i32> %broadcast.splat103, %190
  %192 = extractelement <8 x i32> %190, i32 0
  %193 = add nsw i32 %mul.i.3, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %2, i64 %194
  %196 = bitcast float* %195 to <8 x float>*
  %wide.masked.load104.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %196, i32 4, <8 x i1> %191, <8 x float> undef), !tbaa !12
  %197 = fmul <8 x float> %wide.masked.load104.1, %broadcast.splat106
  %198 = bitcast float* %195 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %197, <8 x float>* %198, i32 4, <8 x i1> %191), !tbaa !12, !llvm.access.group !16
  %199 = trunc <8 x i64> %broadcast.splat101 to <8 x i32>
  %200 = or <8 x i32> %199, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %201 = icmp sgt <8 x i32> %broadcast.splat103, %200
  %202 = extractelement <8 x i32> %200, i32 0
  %203 = add nsw i32 %mul.i.3, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %2, i64 %204
  %206 = bitcast float* %205 to <8 x float>*
  %wide.masked.load104.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %206, i32 4, <8 x i1> %201, <8 x float> undef), !tbaa !12
  %207 = fmul <8 x float> %wide.masked.load104.2, %broadcast.splat106
  %208 = bitcast float* %205 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %207, <8 x float>* %208, i32 4, <8 x i1> %201), !tbaa !12, !llvm.access.group !16
  %209 = trunc <8 x i64> %broadcast.splat101 to <8 x i32>
  %210 = or <8 x i32> %209, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %211 = icmp sgt <8 x i32> %broadcast.splat103, %210
  %212 = extractelement <8 x i32> %210, i32 0
  %213 = add nsw i32 %mul.i.3, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %2, i64 %214
  %216 = bitcast float* %215 to <8 x float>*
  %wide.masked.load104.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %216, i32 4, <8 x i1> %211, <8 x float> undef), !tbaa !12
  %217 = fmul <8 x float> %wide.masked.load104.3, %broadcast.splat106
  %218 = bitcast float* %215 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %217, <8 x float>* %218, i32 4, <8 x i1> %211), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.3

pregion_for_entry.entry.i.us.3:                   ; preds = %if.end.i.us.3.3, %pregion_for_entry.entry.i.us.3.preheader
  %_local_id_x.0.us.3 = phi i64 [ %524, %if.end.i.us.3.3 ], [ 0, %pregion_for_entry.entry.i.us.3.preheader ]
  %add1.i.i.us.3 = add nuw nsw i64 %_local_id_x.0.us.3, %mul.i.i
  %conv.i.us.3 = trunc i64 %add1.i.i.us.3 to i32
  %cmp4.i.us.3 = icmp slt i32 %conv.i.us.3, %6
  br i1 %cmp4.i.us.3, label %if.then.i.us.3, label %if.end.i.us.3

if.then.i.us.3:                                   ; preds = %pregion_for_entry.entry.i.us.3
  %add.i.us.3 = add nsw i32 %mul.i.3, %conv.i.us.3
  %idxprom.i.us.3 = sext i32 %add.i.us.3 to i64
  %arrayidx.i.us.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.3
  %219 = load float, float* %arrayidx.i.us.3, align 4, !tbaa !12
  %mul6.i.us.3 = fmul float %219, %8
  store float %mul6.i.us.3, float* %arrayidx.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3

if.end.i.us.3:                                    ; preds = %if.then.i.us.3, %pregion_for_entry.entry.i.us.3
  %220 = or i64 %_local_id_x.0.us.3, 1
  %add1.i.i.us.3.1 = add nuw nsw i64 %220, %mul.i.i
  %conv.i.us.3.1 = trunc i64 %add1.i.i.us.3.1 to i32
  %cmp4.i.us.3.1 = icmp slt i32 %conv.i.us.3.1, %6
  br i1 %cmp4.i.us.3.1, label %if.then.i.us.3.1, label %if.end.i.us.3.1

pregion_for_end.i.3.loopexit:                     ; preds = %if.end.i.us.3.3
  br label %pregion_for_end.i.3

pregion_for_end.i.3:                              ; preds = %pregion_for_end.i.3.loopexit, %vector.ph93, %pregion_for_end.i.2
  %221 = trunc i64 %mul3.i.i to i32
  %conv2.i.4 = or i32 %221, 4
  %cmp.i.4 = icmp slt i32 %conv2.i.4, %3
  %mul.i.4 = mul nsw i32 %conv2.i.4, %6
  br i1 %cmp.i.4, label %vector.scevcheck114, label %pregion_for_end.i.4

vector.scevcheck114:                              ; preds = %pregion_for_end.i.3
  %222 = mul i32 %conv2.i.4, %6
  %223 = trunc i64 %10 to i32
  %224 = shl i32 %223, 5
  %225 = add i32 %222, %224
  %226 = icmp sgt i32 %225, 2147483616
  br i1 %226, label %pregion_for_entry.entry.i.us.4.preheader, label %vector.ph115

pregion_for_entry.entry.i.us.4.preheader:         ; preds = %vector.scevcheck114
  br label %pregion_for_entry.entry.i.us.4

vector.ph115:                                     ; preds = %vector.scevcheck114
  %broadcast.splatinsert122 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat123 = shufflevector <8 x i64> %broadcast.splatinsert122, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert124 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat125 = shufflevector <8 x i32> %broadcast.splatinsert124, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert127 = insertelement <8 x float> undef, float %8, i32 0
  %broadcast.splat128 = shufflevector <8 x float> %broadcast.splatinsert127, <8 x float> undef, <8 x i32> zeroinitializer
  %227 = trunc <8 x i64> %broadcast.splat123 to <8 x i32>
  %228 = or <8 x i32> %227, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %229 = icmp sgt <8 x i32> %broadcast.splat125, %228
  %230 = extractelement <8 x i32> %228, i32 0
  %231 = add nsw i32 %mul.i.4, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %2, i64 %232
  %234 = bitcast float* %233 to <8 x float>*
  %wide.masked.load126 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %234, i32 4, <8 x i1> %229, <8 x float> undef), !tbaa !12
  %235 = fmul <8 x float> %wide.masked.load126, %broadcast.splat128
  %236 = bitcast float* %233 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %235, <8 x float>* %236, i32 4, <8 x i1> %229), !tbaa !12, !llvm.access.group !16
  %237 = trunc <8 x i64> %broadcast.splat123 to <8 x i32>
  %238 = or <8 x i32> %237, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %239 = icmp sgt <8 x i32> %broadcast.splat125, %238
  %240 = extractelement <8 x i32> %238, i32 0
  %241 = add nsw i32 %mul.i.4, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %2, i64 %242
  %244 = bitcast float* %243 to <8 x float>*
  %wide.masked.load126.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %244, i32 4, <8 x i1> %239, <8 x float> undef), !tbaa !12
  %245 = fmul <8 x float> %wide.masked.load126.1, %broadcast.splat128
  %246 = bitcast float* %243 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %245, <8 x float>* %246, i32 4, <8 x i1> %239), !tbaa !12, !llvm.access.group !16
  %247 = trunc <8 x i64> %broadcast.splat123 to <8 x i32>
  %248 = or <8 x i32> %247, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %249 = icmp sgt <8 x i32> %broadcast.splat125, %248
  %250 = extractelement <8 x i32> %248, i32 0
  %251 = add nsw i32 %mul.i.4, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %2, i64 %252
  %254 = bitcast float* %253 to <8 x float>*
  %wide.masked.load126.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %254, i32 4, <8 x i1> %249, <8 x float> undef), !tbaa !12
  %255 = fmul <8 x float> %wide.masked.load126.2, %broadcast.splat128
  %256 = bitcast float* %253 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %255, <8 x float>* %256, i32 4, <8 x i1> %249), !tbaa !12, !llvm.access.group !16
  %257 = trunc <8 x i64> %broadcast.splat123 to <8 x i32>
  %258 = or <8 x i32> %257, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %259 = icmp sgt <8 x i32> %broadcast.splat125, %258
  %260 = extractelement <8 x i32> %258, i32 0
  %261 = add nsw i32 %mul.i.4, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %2, i64 %262
  %264 = bitcast float* %263 to <8 x float>*
  %wide.masked.load126.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %264, i32 4, <8 x i1> %259, <8 x float> undef), !tbaa !12
  %265 = fmul <8 x float> %wide.masked.load126.3, %broadcast.splat128
  %266 = bitcast float* %263 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %265, <8 x float>* %266, i32 4, <8 x i1> %259), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.4

pregion_for_entry.entry.i.us.4:                   ; preds = %if.end.i.us.4.3, %pregion_for_entry.entry.i.us.4.preheader
  %_local_id_x.0.us.4 = phi i64 [ %518, %if.end.i.us.4.3 ], [ 0, %pregion_for_entry.entry.i.us.4.preheader ]
  %add1.i.i.us.4 = add nuw nsw i64 %_local_id_x.0.us.4, %mul.i.i
  %conv.i.us.4 = trunc i64 %add1.i.i.us.4 to i32
  %cmp4.i.us.4 = icmp slt i32 %conv.i.us.4, %6
  br i1 %cmp4.i.us.4, label %if.then.i.us.4, label %if.end.i.us.4

if.then.i.us.4:                                   ; preds = %pregion_for_entry.entry.i.us.4
  %add.i.us.4 = add nsw i32 %mul.i.4, %conv.i.us.4
  %idxprom.i.us.4 = sext i32 %add.i.us.4 to i64
  %arrayidx.i.us.4 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.4
  %267 = load float, float* %arrayidx.i.us.4, align 4, !tbaa !12
  %mul6.i.us.4 = fmul float %267, %8
  store float %mul6.i.us.4, float* %arrayidx.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.4

if.end.i.us.4:                                    ; preds = %if.then.i.us.4, %pregion_for_entry.entry.i.us.4
  %268 = or i64 %_local_id_x.0.us.4, 1
  %add1.i.i.us.4.1 = add nuw nsw i64 %268, %mul.i.i
  %conv.i.us.4.1 = trunc i64 %add1.i.i.us.4.1 to i32
  %cmp4.i.us.4.1 = icmp slt i32 %conv.i.us.4.1, %6
  br i1 %cmp4.i.us.4.1, label %if.then.i.us.4.1, label %if.end.i.us.4.1

pregion_for_end.i.4.loopexit:                     ; preds = %if.end.i.us.4.3
  br label %pregion_for_end.i.4

pregion_for_end.i.4:                              ; preds = %pregion_for_end.i.4.loopexit, %vector.ph115, %pregion_for_end.i.3
  %269 = trunc i64 %mul3.i.i to i32
  %conv2.i.5 = or i32 %269, 5
  %cmp.i.5 = icmp slt i32 %conv2.i.5, %3
  %mul.i.5 = mul nsw i32 %conv2.i.5, %6
  br i1 %cmp.i.5, label %vector.scevcheck136, label %pregion_for_end.i.5

vector.scevcheck136:                              ; preds = %pregion_for_end.i.4
  %270 = mul i32 %conv2.i.5, %6
  %271 = trunc i64 %10 to i32
  %272 = shl i32 %271, 5
  %273 = add i32 %270, %272
  %274 = icmp sgt i32 %273, 2147483616
  br i1 %274, label %pregion_for_entry.entry.i.us.5.preheader, label %vector.ph137

pregion_for_entry.entry.i.us.5.preheader:         ; preds = %vector.scevcheck136
  br label %pregion_for_entry.entry.i.us.5

vector.ph137:                                     ; preds = %vector.scevcheck136
  %broadcast.splatinsert144 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat145 = shufflevector <8 x i64> %broadcast.splatinsert144, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert146 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat147 = shufflevector <8 x i32> %broadcast.splatinsert146, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <8 x float> undef, float %8, i32 0
  %broadcast.splat150 = shufflevector <8 x float> %broadcast.splatinsert149, <8 x float> undef, <8 x i32> zeroinitializer
  %275 = trunc <8 x i64> %broadcast.splat145 to <8 x i32>
  %276 = or <8 x i32> %275, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %277 = icmp sgt <8 x i32> %broadcast.splat147, %276
  %278 = extractelement <8 x i32> %276, i32 0
  %279 = add nsw i32 %mul.i.5, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds float, float* %2, i64 %280
  %282 = bitcast float* %281 to <8 x float>*
  %wide.masked.load148 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %282, i32 4, <8 x i1> %277, <8 x float> undef), !tbaa !12
  %283 = fmul <8 x float> %wide.masked.load148, %broadcast.splat150
  %284 = bitcast float* %281 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %283, <8 x float>* %284, i32 4, <8 x i1> %277), !tbaa !12, !llvm.access.group !16
  %285 = trunc <8 x i64> %broadcast.splat145 to <8 x i32>
  %286 = or <8 x i32> %285, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %287 = icmp sgt <8 x i32> %broadcast.splat147, %286
  %288 = extractelement <8 x i32> %286, i32 0
  %289 = add nsw i32 %mul.i.5, %288
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds float, float* %2, i64 %290
  %292 = bitcast float* %291 to <8 x float>*
  %wide.masked.load148.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %292, i32 4, <8 x i1> %287, <8 x float> undef), !tbaa !12
  %293 = fmul <8 x float> %wide.masked.load148.1, %broadcast.splat150
  %294 = bitcast float* %291 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %293, <8 x float>* %294, i32 4, <8 x i1> %287), !tbaa !12, !llvm.access.group !16
  %295 = trunc <8 x i64> %broadcast.splat145 to <8 x i32>
  %296 = or <8 x i32> %295, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %297 = icmp sgt <8 x i32> %broadcast.splat147, %296
  %298 = extractelement <8 x i32> %296, i32 0
  %299 = add nsw i32 %mul.i.5, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %2, i64 %300
  %302 = bitcast float* %301 to <8 x float>*
  %wide.masked.load148.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %302, i32 4, <8 x i1> %297, <8 x float> undef), !tbaa !12
  %303 = fmul <8 x float> %wide.masked.load148.2, %broadcast.splat150
  %304 = bitcast float* %301 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %303, <8 x float>* %304, i32 4, <8 x i1> %297), !tbaa !12, !llvm.access.group !16
  %305 = trunc <8 x i64> %broadcast.splat145 to <8 x i32>
  %306 = or <8 x i32> %305, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %307 = icmp sgt <8 x i32> %broadcast.splat147, %306
  %308 = extractelement <8 x i32> %306, i32 0
  %309 = add nsw i32 %mul.i.5, %308
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds float, float* %2, i64 %310
  %312 = bitcast float* %311 to <8 x float>*
  %wide.masked.load148.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %312, i32 4, <8 x i1> %307, <8 x float> undef), !tbaa !12
  %313 = fmul <8 x float> %wide.masked.load148.3, %broadcast.splat150
  %314 = bitcast float* %311 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %313, <8 x float>* %314, i32 4, <8 x i1> %307), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.5

pregion_for_entry.entry.i.us.5:                   ; preds = %if.end.i.us.5.3, %pregion_for_entry.entry.i.us.5.preheader
  %_local_id_x.0.us.5 = phi i64 [ %512, %if.end.i.us.5.3 ], [ 0, %pregion_for_entry.entry.i.us.5.preheader ]
  %add1.i.i.us.5 = add nuw nsw i64 %_local_id_x.0.us.5, %mul.i.i
  %conv.i.us.5 = trunc i64 %add1.i.i.us.5 to i32
  %cmp4.i.us.5 = icmp slt i32 %conv.i.us.5, %6
  br i1 %cmp4.i.us.5, label %if.then.i.us.5, label %if.end.i.us.5

if.then.i.us.5:                                   ; preds = %pregion_for_entry.entry.i.us.5
  %add.i.us.5 = add nsw i32 %mul.i.5, %conv.i.us.5
  %idxprom.i.us.5 = sext i32 %add.i.us.5 to i64
  %arrayidx.i.us.5 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.5
  %315 = load float, float* %arrayidx.i.us.5, align 4, !tbaa !12
  %mul6.i.us.5 = fmul float %315, %8
  store float %mul6.i.us.5, float* %arrayidx.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.5

if.end.i.us.5:                                    ; preds = %if.then.i.us.5, %pregion_for_entry.entry.i.us.5
  %316 = or i64 %_local_id_x.0.us.5, 1
  %add1.i.i.us.5.1 = add nuw nsw i64 %316, %mul.i.i
  %conv.i.us.5.1 = trunc i64 %add1.i.i.us.5.1 to i32
  %cmp4.i.us.5.1 = icmp slt i32 %conv.i.us.5.1, %6
  br i1 %cmp4.i.us.5.1, label %if.then.i.us.5.1, label %if.end.i.us.5.1

pregion_for_end.i.5.loopexit:                     ; preds = %if.end.i.us.5.3
  br label %pregion_for_end.i.5

pregion_for_end.i.5:                              ; preds = %pregion_for_end.i.5.loopexit, %vector.ph137, %pregion_for_end.i.4
  %317 = trunc i64 %mul3.i.i to i32
  %conv2.i.6 = or i32 %317, 6
  %cmp.i.6 = icmp slt i32 %conv2.i.6, %3
  %mul.i.6 = mul nsw i32 %conv2.i.6, %6
  br i1 %cmp.i.6, label %vector.scevcheck158, label %pregion_for_end.i.6

vector.scevcheck158:                              ; preds = %pregion_for_end.i.5
  %318 = mul i32 %conv2.i.6, %6
  %319 = trunc i64 %10 to i32
  %320 = shl i32 %319, 5
  %321 = add i32 %318, %320
  %322 = icmp sgt i32 %321, 2147483616
  br i1 %322, label %pregion_for_entry.entry.i.us.6.preheader, label %vector.ph159

pregion_for_entry.entry.i.us.6.preheader:         ; preds = %vector.scevcheck158
  br label %pregion_for_entry.entry.i.us.6

vector.ph159:                                     ; preds = %vector.scevcheck158
  %broadcast.splatinsert166 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat167 = shufflevector <8 x i64> %broadcast.splatinsert166, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert168 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat169 = shufflevector <8 x i32> %broadcast.splatinsert168, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x float> undef, float %8, i32 0
  %broadcast.splat172 = shufflevector <8 x float> %broadcast.splatinsert171, <8 x float> undef, <8 x i32> zeroinitializer
  %323 = trunc <8 x i64> %broadcast.splat167 to <8 x i32>
  %324 = or <8 x i32> %323, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %325 = icmp sgt <8 x i32> %broadcast.splat169, %324
  %326 = extractelement <8 x i32> %324, i32 0
  %327 = add nsw i32 %mul.i.6, %326
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds float, float* %2, i64 %328
  %330 = bitcast float* %329 to <8 x float>*
  %wide.masked.load170 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %330, i32 4, <8 x i1> %325, <8 x float> undef), !tbaa !12
  %331 = fmul <8 x float> %wide.masked.load170, %broadcast.splat172
  %332 = bitcast float* %329 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %331, <8 x float>* %332, i32 4, <8 x i1> %325), !tbaa !12, !llvm.access.group !16
  %333 = trunc <8 x i64> %broadcast.splat167 to <8 x i32>
  %334 = or <8 x i32> %333, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %335 = icmp sgt <8 x i32> %broadcast.splat169, %334
  %336 = extractelement <8 x i32> %334, i32 0
  %337 = add nsw i32 %mul.i.6, %336
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds float, float* %2, i64 %338
  %340 = bitcast float* %339 to <8 x float>*
  %wide.masked.load170.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %340, i32 4, <8 x i1> %335, <8 x float> undef), !tbaa !12
  %341 = fmul <8 x float> %wide.masked.load170.1, %broadcast.splat172
  %342 = bitcast float* %339 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %341, <8 x float>* %342, i32 4, <8 x i1> %335), !tbaa !12, !llvm.access.group !16
  %343 = trunc <8 x i64> %broadcast.splat167 to <8 x i32>
  %344 = or <8 x i32> %343, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %345 = icmp sgt <8 x i32> %broadcast.splat169, %344
  %346 = extractelement <8 x i32> %344, i32 0
  %347 = add nsw i32 %mul.i.6, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds float, float* %2, i64 %348
  %350 = bitcast float* %349 to <8 x float>*
  %wide.masked.load170.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %350, i32 4, <8 x i1> %345, <8 x float> undef), !tbaa !12
  %351 = fmul <8 x float> %wide.masked.load170.2, %broadcast.splat172
  %352 = bitcast float* %349 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %351, <8 x float>* %352, i32 4, <8 x i1> %345), !tbaa !12, !llvm.access.group !16
  %353 = trunc <8 x i64> %broadcast.splat167 to <8 x i32>
  %354 = or <8 x i32> %353, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %355 = icmp sgt <8 x i32> %broadcast.splat169, %354
  %356 = extractelement <8 x i32> %354, i32 0
  %357 = add nsw i32 %mul.i.6, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds float, float* %2, i64 %358
  %360 = bitcast float* %359 to <8 x float>*
  %wide.masked.load170.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %360, i32 4, <8 x i1> %355, <8 x float> undef), !tbaa !12
  %361 = fmul <8 x float> %wide.masked.load170.3, %broadcast.splat172
  %362 = bitcast float* %359 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %361, <8 x float>* %362, i32 4, <8 x i1> %355), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.6

pregion_for_entry.entry.i.us.6:                   ; preds = %if.end.i.us.6.3, %pregion_for_entry.entry.i.us.6.preheader
  %_local_id_x.0.us.6 = phi i64 [ %506, %if.end.i.us.6.3 ], [ 0, %pregion_for_entry.entry.i.us.6.preheader ]
  %add1.i.i.us.6 = add nuw nsw i64 %_local_id_x.0.us.6, %mul.i.i
  %conv.i.us.6 = trunc i64 %add1.i.i.us.6 to i32
  %cmp4.i.us.6 = icmp slt i32 %conv.i.us.6, %6
  br i1 %cmp4.i.us.6, label %if.then.i.us.6, label %if.end.i.us.6

if.then.i.us.6:                                   ; preds = %pregion_for_entry.entry.i.us.6
  %add.i.us.6 = add nsw i32 %mul.i.6, %conv.i.us.6
  %idxprom.i.us.6 = sext i32 %add.i.us.6 to i64
  %arrayidx.i.us.6 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.6
  %363 = load float, float* %arrayidx.i.us.6, align 4, !tbaa !12
  %mul6.i.us.6 = fmul float %363, %8
  store float %mul6.i.us.6, float* %arrayidx.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.6

if.end.i.us.6:                                    ; preds = %if.then.i.us.6, %pregion_for_entry.entry.i.us.6
  %364 = or i64 %_local_id_x.0.us.6, 1
  %add1.i.i.us.6.1 = add nuw nsw i64 %364, %mul.i.i
  %conv.i.us.6.1 = trunc i64 %add1.i.i.us.6.1 to i32
  %cmp4.i.us.6.1 = icmp slt i32 %conv.i.us.6.1, %6
  br i1 %cmp4.i.us.6.1, label %if.then.i.us.6.1, label %if.end.i.us.6.1

pregion_for_end.i.6.loopexit:                     ; preds = %if.end.i.us.6.3
  br label %pregion_for_end.i.6

pregion_for_end.i.6:                              ; preds = %pregion_for_end.i.6.loopexit, %vector.ph159, %pregion_for_end.i.5
  %365 = trunc i64 %mul3.i.i to i32
  %conv2.i.7 = or i32 %365, 7
  %cmp.i.7 = icmp slt i32 %conv2.i.7, %3
  %mul.i.7 = mul nsw i32 %conv2.i.7, %6
  br i1 %cmp.i.7, label %vector.scevcheck180, label %mm2_kernel2.exit

vector.scevcheck180:                              ; preds = %pregion_for_end.i.6
  %366 = mul i32 %conv2.i.7, %6
  %367 = trunc i64 %10 to i32
  %368 = shl i32 %367, 5
  %369 = add i32 %366, %368
  %370 = icmp sgt i32 %369, 2147483616
  br i1 %370, label %pregion_for_entry.entry.i.us.7.preheader, label %vector.ph181

pregion_for_entry.entry.i.us.7.preheader:         ; preds = %vector.scevcheck180
  br label %pregion_for_entry.entry.i.us.7

vector.ph181:                                     ; preds = %vector.scevcheck180
  %broadcast.splatinsert188 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat189 = shufflevector <8 x i64> %broadcast.splatinsert188, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert190 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat191 = shufflevector <8 x i32> %broadcast.splatinsert190, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert193 = insertelement <8 x float> undef, float %8, i32 0
  %broadcast.splat194 = shufflevector <8 x float> %broadcast.splatinsert193, <8 x float> undef, <8 x i32> zeroinitializer
  %371 = trunc <8 x i64> %broadcast.splat189 to <8 x i32>
  %372 = or <8 x i32> %371, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %373 = icmp sgt <8 x i32> %broadcast.splat191, %372
  %374 = extractelement <8 x i32> %372, i32 0
  %375 = add nsw i32 %mul.i.7, %374
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds float, float* %2, i64 %376
  %378 = bitcast float* %377 to <8 x float>*
  %wide.masked.load192 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %378, i32 4, <8 x i1> %373, <8 x float> undef), !tbaa !12
  %379 = fmul <8 x float> %wide.masked.load192, %broadcast.splat194
  %380 = bitcast float* %377 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %379, <8 x float>* %380, i32 4, <8 x i1> %373), !tbaa !12, !llvm.access.group !16
  %381 = trunc <8 x i64> %broadcast.splat189 to <8 x i32>
  %382 = or <8 x i32> %381, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %383 = icmp sgt <8 x i32> %broadcast.splat191, %382
  %384 = extractelement <8 x i32> %382, i32 0
  %385 = add nsw i32 %mul.i.7, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds float, float* %2, i64 %386
  %388 = bitcast float* %387 to <8 x float>*
  %wide.masked.load192.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %388, i32 4, <8 x i1> %383, <8 x float> undef), !tbaa !12
  %389 = fmul <8 x float> %wide.masked.load192.1, %broadcast.splat194
  %390 = bitcast float* %387 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %389, <8 x float>* %390, i32 4, <8 x i1> %383), !tbaa !12, !llvm.access.group !16
  %391 = trunc <8 x i64> %broadcast.splat189 to <8 x i32>
  %392 = or <8 x i32> %391, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %393 = icmp sgt <8 x i32> %broadcast.splat191, %392
  %394 = extractelement <8 x i32> %392, i32 0
  %395 = add nsw i32 %mul.i.7, %394
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds float, float* %2, i64 %396
  %398 = bitcast float* %397 to <8 x float>*
  %wide.masked.load192.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %398, i32 4, <8 x i1> %393, <8 x float> undef), !tbaa !12
  %399 = fmul <8 x float> %wide.masked.load192.2, %broadcast.splat194
  %400 = bitcast float* %397 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %399, <8 x float>* %400, i32 4, <8 x i1> %393), !tbaa !12, !llvm.access.group !16
  %401 = trunc <8 x i64> %broadcast.splat189 to <8 x i32>
  %402 = or <8 x i32> %401, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %403 = icmp sgt <8 x i32> %broadcast.splat191, %402
  %404 = extractelement <8 x i32> %402, i32 0
  %405 = add nsw i32 %mul.i.7, %404
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds float, float* %2, i64 %406
  %408 = bitcast float* %407 to <8 x float>*
  %wide.masked.load192.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %408, i32 4, <8 x i1> %403, <8 x float> undef), !tbaa !12
  %409 = fmul <8 x float> %wide.masked.load192.3, %broadcast.splat194
  %410 = bitcast float* %407 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %409, <8 x float>* %410, i32 4, <8 x i1> %403), !tbaa !12, !llvm.access.group !16
  br label %mm2_kernel2.exit

pregion_for_entry.entry.i.us.7:                   ; preds = %if.end.i.us.7.3, %pregion_for_entry.entry.i.us.7.preheader
  %_local_id_x.0.us.7 = phi i64 [ %500, %if.end.i.us.7.3 ], [ 0, %pregion_for_entry.entry.i.us.7.preheader ]
  %add1.i.i.us.7 = add nuw nsw i64 %_local_id_x.0.us.7, %mul.i.i
  %conv.i.us.7 = trunc i64 %add1.i.i.us.7 to i32
  %cmp4.i.us.7 = icmp slt i32 %conv.i.us.7, %6
  br i1 %cmp4.i.us.7, label %if.then.i.us.7, label %if.end.i.us.7

if.then.i.us.7:                                   ; preds = %pregion_for_entry.entry.i.us.7
  %add.i.us.7 = add nsw i32 %mul.i.7, %conv.i.us.7
  %idxprom.i.us.7 = sext i32 %add.i.us.7 to i64
  %arrayidx.i.us.7 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.7
  %411 = load float, float* %arrayidx.i.us.7, align 4, !tbaa !12
  %mul6.i.us.7 = fmul float %411, %8
  store float %mul6.i.us.7, float* %arrayidx.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.7

if.end.i.us.7:                                    ; preds = %if.then.i.us.7, %pregion_for_entry.entry.i.us.7
  %412 = or i64 %_local_id_x.0.us.7, 1
  %add1.i.i.us.7.1 = add nuw nsw i64 %412, %mul.i.i
  %conv.i.us.7.1 = trunc i64 %add1.i.i.us.7.1 to i32
  %cmp4.i.us.7.1 = icmp slt i32 %conv.i.us.7.1, %6
  br i1 %cmp4.i.us.7.1, label %if.then.i.us.7.1, label %if.end.i.us.7.1

pregion_for_entry.entry.i.us.us.1:                ; preds = %if.end.i.us.us.1, %pregion_for_entry.entry.i.us.us.1.preheader
  %_local_id_x.0.us.us.1 = phi i64 [ %422, %if.end.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.us.us.1.preheader ]
  %add1.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.0.us.us.1, %mul.i.i
  %conv.i.us.us.1 = trunc i64 %add1.i.i.us.us.1 to i32
  %cmp4.i.us.us.1 = icmp slt i32 %conv.i.us.us.1, %6
  br i1 %cmp4.i.us.us.1, label %if.then.i.us.us.1, label %if.end.i.us.us.1

if.then.i.us.us.1:                                ; preds = %pregion_for_entry.entry.i.us.us.1
  %add.i.us.us.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1
  %idxprom.i.us.us.1 = sext i32 %add.i.us.us.1 to i64
  %arrayidx.i.us.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.1
  %413 = load float, float* %arrayidx.i.us.us.1, align 4, !tbaa !12
  %mul6.i.us.us.1 = fmul float %413, %8
  store float %mul6.i.us.us.1, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1 = shl i64 %add1.i.i.us.us.1, 32
  %414 = ashr exact i64 %sext.i.us.us.1, 32
  br label %for.body.i.us.us.1

for.body.i.us.us.1:                               ; preds = %for.body.i.us.us.1, %if.then.i.us.us.1
  %indvars.iv.next.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1, %for.body.i.us.us.1 ], [ 0, %if.then.i.us.us.1 ]
  %415 = phi float [ %421, %for.body.i.us.us.1 ], [ %mul6.i.us.us.1, %if.then.i.us.us.1 ]
  %416 = add nsw i64 %indvars.iv.next.i3.us.us.1, %64
  %arrayidx12.i.us.us.1 = getelementptr inbounds float, float* %0, i64 %416
  %417 = load float, float* %arrayidx12.i.us.us.1, align 4, !tbaa !12
  %418 = mul nsw i64 %indvars.iv.next.i3.us.us.1, %14
  %419 = add nsw i64 %418, %414
  %arrayidx16.i.us.us.1 = getelementptr inbounds float, float* %1, i64 %419
  %420 = load float, float* %arrayidx16.i.us.us.1, align 4, !tbaa !12
  %421 = tail call float @llvm.fmuladd.f32(float %417, float %420, float %415) #2
  store float %421, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.1, 1
  %exitcond.not.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1, label %if.end.i.us.us.1.loopexit, label %for.body.i.us.us.1, !llvm.loop !21

if.end.i.us.us.1.loopexit:                        ; preds = %for.body.i.us.us.1
  br label %if.end.i.us.us.1

if.end.i.us.us.1:                                 ; preds = %if.end.i.us.us.1.loopexit, %pregion_for_entry.entry.i.us.us.1
  %422 = add nuw nsw i64 %_local_id_x.0.us.us.1, 1
  %exitcond.not.1 = icmp eq i64 %422, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.us.1.loopexit, label %pregion_for_entry.entry.i.us.us.1, !llvm.loop !19

pregion_for_end.i.us.1.loopexit:                  ; preds = %if.end.i.us.us.1
  br label %pregion_for_end.i.us.1

pregion_for_end.i.us.1:                           ; preds = %pregion_for_end.i.us.1.loopexit, %pregion_for_end.i.us
  %423 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.2 = or i32 %423, 2
  %cmp.i.us.2 = icmp slt i32 %conv2.i.us.2, %3
  %mul.i.us.2 = mul nsw i32 %conv2.i.us.2, %6
  %mul9.i.us.2 = mul nsw i32 %conv2.i.us.2, %4
  %424 = sext i32 %mul9.i.us.2 to i64
  br i1 %cmp.i.us.2, label %pregion_for_entry.entry.i.us.us.2.preheader, label %pregion_for_end.i.us.2

pregion_for_entry.entry.i.us.us.2.preheader:      ; preds = %pregion_for_end.i.us.1
  br label %pregion_for_entry.entry.i.us.us.2

pregion_for_entry.entry.i.us.us.2:                ; preds = %if.end.i.us.us.2, %pregion_for_entry.entry.i.us.us.2.preheader
  %_local_id_x.0.us.us.2 = phi i64 [ %434, %if.end.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.us.us.2.preheader ]
  %add1.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.0.us.us.2, %mul.i.i
  %conv.i.us.us.2 = trunc i64 %add1.i.i.us.us.2 to i32
  %cmp4.i.us.us.2 = icmp slt i32 %conv.i.us.us.2, %6
  br i1 %cmp4.i.us.us.2, label %if.then.i.us.us.2, label %if.end.i.us.us.2

if.then.i.us.us.2:                                ; preds = %pregion_for_entry.entry.i.us.us.2
  %add.i.us.us.2 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2
  %idxprom.i.us.us.2 = sext i32 %add.i.us.us.2 to i64
  %arrayidx.i.us.us.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.2
  %425 = load float, float* %arrayidx.i.us.us.2, align 4, !tbaa !12
  %mul6.i.us.us.2 = fmul float %425, %8
  store float %mul6.i.us.us.2, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2 = shl i64 %add1.i.i.us.us.2, 32
  %426 = ashr exact i64 %sext.i.us.us.2, 32
  br label %for.body.i.us.us.2

for.body.i.us.us.2:                               ; preds = %for.body.i.us.us.2, %if.then.i.us.us.2
  %indvars.iv.next.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.us.us.2, %for.body.i.us.us.2 ], [ 0, %if.then.i.us.us.2 ]
  %427 = phi float [ %433, %for.body.i.us.us.2 ], [ %mul6.i.us.us.2, %if.then.i.us.us.2 ]
  %428 = add nsw i64 %indvars.iv.next.i3.us.us.2, %424
  %arrayidx12.i.us.us.2 = getelementptr inbounds float, float* %0, i64 %428
  %429 = load float, float* %arrayidx12.i.us.us.2, align 4, !tbaa !12
  %430 = mul nsw i64 %indvars.iv.next.i3.us.us.2, %14
  %431 = add nsw i64 %430, %426
  %arrayidx16.i.us.us.2 = getelementptr inbounds float, float* %1, i64 %431
  %432 = load float, float* %arrayidx16.i.us.us.2, align 4, !tbaa !12
  %433 = tail call float @llvm.fmuladd.f32(float %429, float %432, float %427) #2
  store float %433, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i3.us.us.2, 1
  %exitcond.not.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.us.us.2, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2, label %if.end.i.us.us.2.loopexit, label %for.body.i.us.us.2, !llvm.loop !21

if.end.i.us.us.2.loopexit:                        ; preds = %for.body.i.us.us.2
  br label %if.end.i.us.us.2

if.end.i.us.us.2:                                 ; preds = %if.end.i.us.us.2.loopexit, %pregion_for_entry.entry.i.us.us.2
  %434 = add nuw nsw i64 %_local_id_x.0.us.us.2, 1
  %exitcond.not.2 = icmp eq i64 %434, 32
  br i1 %exitcond.not.2, label %pregion_for_end.i.us.2.loopexit, label %pregion_for_entry.entry.i.us.us.2, !llvm.loop !19

pregion_for_end.i.us.2.loopexit:                  ; preds = %if.end.i.us.us.2
  br label %pregion_for_end.i.us.2

pregion_for_end.i.us.2:                           ; preds = %pregion_for_end.i.us.2.loopexit, %pregion_for_end.i.us.1
  %435 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.3 = or i32 %435, 3
  %cmp.i.us.3 = icmp slt i32 %conv2.i.us.3, %3
  %mul.i.us.3 = mul nsw i32 %conv2.i.us.3, %6
  %mul9.i.us.3 = mul nsw i32 %conv2.i.us.3, %4
  %436 = sext i32 %mul9.i.us.3 to i64
  br i1 %cmp.i.us.3, label %pregion_for_entry.entry.i.us.us.3.preheader, label %pregion_for_end.i.us.3

pregion_for_entry.entry.i.us.us.3.preheader:      ; preds = %pregion_for_end.i.us.2
  br label %pregion_for_entry.entry.i.us.us.3

pregion_for_entry.entry.i.us.us.3:                ; preds = %if.end.i.us.us.3, %pregion_for_entry.entry.i.us.us.3.preheader
  %_local_id_x.0.us.us.3 = phi i64 [ %446, %if.end.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.us.us.3.preheader ]
  %add1.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.0.us.us.3, %mul.i.i
  %conv.i.us.us.3 = trunc i64 %add1.i.i.us.us.3 to i32
  %cmp4.i.us.us.3 = icmp slt i32 %conv.i.us.us.3, %6
  br i1 %cmp4.i.us.us.3, label %if.then.i.us.us.3, label %if.end.i.us.us.3

if.then.i.us.us.3:                                ; preds = %pregion_for_entry.entry.i.us.us.3
  %add.i.us.us.3 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3
  %idxprom.i.us.us.3 = sext i32 %add.i.us.us.3 to i64
  %arrayidx.i.us.us.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.3
  %437 = load float, float* %arrayidx.i.us.us.3, align 4, !tbaa !12
  %mul6.i.us.us.3 = fmul float %437, %8
  store float %mul6.i.us.us.3, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3 = shl i64 %add1.i.i.us.us.3, 32
  %438 = ashr exact i64 %sext.i.us.us.3, 32
  br label %for.body.i.us.us.3

for.body.i.us.us.3:                               ; preds = %for.body.i.us.us.3, %if.then.i.us.us.3
  %indvars.iv.next.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.us.us.3, %for.body.i.us.us.3 ], [ 0, %if.then.i.us.us.3 ]
  %439 = phi float [ %445, %for.body.i.us.us.3 ], [ %mul6.i.us.us.3, %if.then.i.us.us.3 ]
  %440 = add nsw i64 %indvars.iv.next.i3.us.us.3, %436
  %arrayidx12.i.us.us.3 = getelementptr inbounds float, float* %0, i64 %440
  %441 = load float, float* %arrayidx12.i.us.us.3, align 4, !tbaa !12
  %442 = mul nsw i64 %indvars.iv.next.i3.us.us.3, %14
  %443 = add nsw i64 %442, %438
  %arrayidx16.i.us.us.3 = getelementptr inbounds float, float* %1, i64 %443
  %444 = load float, float* %arrayidx16.i.us.us.3, align 4, !tbaa !12
  %445 = tail call float @llvm.fmuladd.f32(float %441, float %444, float %439) #2
  store float %445, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i3.us.us.3, 1
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3, label %if.end.i.us.us.3.loopexit, label %for.body.i.us.us.3, !llvm.loop !21

if.end.i.us.us.3.loopexit:                        ; preds = %for.body.i.us.us.3
  br label %if.end.i.us.us.3

if.end.i.us.us.3:                                 ; preds = %if.end.i.us.us.3.loopexit, %pregion_for_entry.entry.i.us.us.3
  %446 = add nuw nsw i64 %_local_id_x.0.us.us.3, 1
  %exitcond.not.3 = icmp eq i64 %446, 32
  br i1 %exitcond.not.3, label %pregion_for_end.i.us.3.loopexit, label %pregion_for_entry.entry.i.us.us.3, !llvm.loop !19

pregion_for_end.i.us.3.loopexit:                  ; preds = %if.end.i.us.us.3
  br label %pregion_for_end.i.us.3

pregion_for_end.i.us.3:                           ; preds = %pregion_for_end.i.us.3.loopexit, %pregion_for_end.i.us.2
  %447 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.4 = or i32 %447, 4
  %cmp.i.us.4 = icmp slt i32 %conv2.i.us.4, %3
  %mul.i.us.4 = mul nsw i32 %conv2.i.us.4, %6
  %mul9.i.us.4 = mul nsw i32 %conv2.i.us.4, %4
  %448 = sext i32 %mul9.i.us.4 to i64
  br i1 %cmp.i.us.4, label %pregion_for_entry.entry.i.us.us.4.preheader, label %pregion_for_end.i.us.4

pregion_for_entry.entry.i.us.us.4.preheader:      ; preds = %pregion_for_end.i.us.3
  br label %pregion_for_entry.entry.i.us.us.4

pregion_for_entry.entry.i.us.us.4:                ; preds = %if.end.i.us.us.4, %pregion_for_entry.entry.i.us.us.4.preheader
  %_local_id_x.0.us.us.4 = phi i64 [ %458, %if.end.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.us.us.4.preheader ]
  %add1.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.0.us.us.4, %mul.i.i
  %conv.i.us.us.4 = trunc i64 %add1.i.i.us.us.4 to i32
  %cmp4.i.us.us.4 = icmp slt i32 %conv.i.us.us.4, %6
  br i1 %cmp4.i.us.us.4, label %if.then.i.us.us.4, label %if.end.i.us.us.4

if.then.i.us.us.4:                                ; preds = %pregion_for_entry.entry.i.us.us.4
  %add.i.us.us.4 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4
  %idxprom.i.us.us.4 = sext i32 %add.i.us.us.4 to i64
  %arrayidx.i.us.us.4 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.4
  %449 = load float, float* %arrayidx.i.us.us.4, align 4, !tbaa !12
  %mul6.i.us.us.4 = fmul float %449, %8
  store float %mul6.i.us.us.4, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4 = shl i64 %add1.i.i.us.us.4, 32
  %450 = ashr exact i64 %sext.i.us.us.4, 32
  br label %for.body.i.us.us.4

for.body.i.us.us.4:                               ; preds = %for.body.i.us.us.4, %if.then.i.us.us.4
  %indvars.iv.next.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.us.us.4, %for.body.i.us.us.4 ], [ 0, %if.then.i.us.us.4 ]
  %451 = phi float [ %457, %for.body.i.us.us.4 ], [ %mul6.i.us.us.4, %if.then.i.us.us.4 ]
  %452 = add nsw i64 %indvars.iv.next.i3.us.us.4, %448
  %arrayidx12.i.us.us.4 = getelementptr inbounds float, float* %0, i64 %452
  %453 = load float, float* %arrayidx12.i.us.us.4, align 4, !tbaa !12
  %454 = mul nsw i64 %indvars.iv.next.i3.us.us.4, %14
  %455 = add nsw i64 %454, %450
  %arrayidx16.i.us.us.4 = getelementptr inbounds float, float* %1, i64 %455
  %456 = load float, float* %arrayidx16.i.us.us.4, align 4, !tbaa !12
  %457 = tail call float @llvm.fmuladd.f32(float %453, float %456, float %451) #2
  store float %457, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i3.us.us.4, 1
  %exitcond.not.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.us.us.4, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4, label %if.end.i.us.us.4.loopexit, label %for.body.i.us.us.4, !llvm.loop !21

if.end.i.us.us.4.loopexit:                        ; preds = %for.body.i.us.us.4
  br label %if.end.i.us.us.4

if.end.i.us.us.4:                                 ; preds = %if.end.i.us.us.4.loopexit, %pregion_for_entry.entry.i.us.us.4
  %458 = add nuw nsw i64 %_local_id_x.0.us.us.4, 1
  %exitcond.not.4 = icmp eq i64 %458, 32
  br i1 %exitcond.not.4, label %pregion_for_end.i.us.4.loopexit, label %pregion_for_entry.entry.i.us.us.4, !llvm.loop !19

pregion_for_end.i.us.4.loopexit:                  ; preds = %if.end.i.us.us.4
  br label %pregion_for_end.i.us.4

pregion_for_end.i.us.4:                           ; preds = %pregion_for_end.i.us.4.loopexit, %pregion_for_end.i.us.3
  %459 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.5 = or i32 %459, 5
  %cmp.i.us.5 = icmp slt i32 %conv2.i.us.5, %3
  %mul.i.us.5 = mul nsw i32 %conv2.i.us.5, %6
  %mul9.i.us.5 = mul nsw i32 %conv2.i.us.5, %4
  %460 = sext i32 %mul9.i.us.5 to i64
  br i1 %cmp.i.us.5, label %pregion_for_entry.entry.i.us.us.5.preheader, label %pregion_for_end.i.us.5

pregion_for_entry.entry.i.us.us.5.preheader:      ; preds = %pregion_for_end.i.us.4
  br label %pregion_for_entry.entry.i.us.us.5

pregion_for_entry.entry.i.us.us.5:                ; preds = %if.end.i.us.us.5, %pregion_for_entry.entry.i.us.us.5.preheader
  %_local_id_x.0.us.us.5 = phi i64 [ %470, %if.end.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.us.us.5.preheader ]
  %add1.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.0.us.us.5, %mul.i.i
  %conv.i.us.us.5 = trunc i64 %add1.i.i.us.us.5 to i32
  %cmp4.i.us.us.5 = icmp slt i32 %conv.i.us.us.5, %6
  br i1 %cmp4.i.us.us.5, label %if.then.i.us.us.5, label %if.end.i.us.us.5

if.then.i.us.us.5:                                ; preds = %pregion_for_entry.entry.i.us.us.5
  %add.i.us.us.5 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5
  %idxprom.i.us.us.5 = sext i32 %add.i.us.us.5 to i64
  %arrayidx.i.us.us.5 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.5
  %461 = load float, float* %arrayidx.i.us.us.5, align 4, !tbaa !12
  %mul6.i.us.us.5 = fmul float %461, %8
  store float %mul6.i.us.us.5, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5 = shl i64 %add1.i.i.us.us.5, 32
  %462 = ashr exact i64 %sext.i.us.us.5, 32
  br label %for.body.i.us.us.5

for.body.i.us.us.5:                               ; preds = %for.body.i.us.us.5, %if.then.i.us.us.5
  %indvars.iv.next.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.us.us.5, %for.body.i.us.us.5 ], [ 0, %if.then.i.us.us.5 ]
  %463 = phi float [ %469, %for.body.i.us.us.5 ], [ %mul6.i.us.us.5, %if.then.i.us.us.5 ]
  %464 = add nsw i64 %indvars.iv.next.i3.us.us.5, %460
  %arrayidx12.i.us.us.5 = getelementptr inbounds float, float* %0, i64 %464
  %465 = load float, float* %arrayidx12.i.us.us.5, align 4, !tbaa !12
  %466 = mul nsw i64 %indvars.iv.next.i3.us.us.5, %14
  %467 = add nsw i64 %466, %462
  %arrayidx16.i.us.us.5 = getelementptr inbounds float, float* %1, i64 %467
  %468 = load float, float* %arrayidx16.i.us.us.5, align 4, !tbaa !12
  %469 = tail call float @llvm.fmuladd.f32(float %465, float %468, float %463) #2
  store float %469, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i3.us.us.5, 1
  %exitcond.not.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.us.us.5, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5, label %if.end.i.us.us.5.loopexit, label %for.body.i.us.us.5, !llvm.loop !21

if.end.i.us.us.5.loopexit:                        ; preds = %for.body.i.us.us.5
  br label %if.end.i.us.us.5

if.end.i.us.us.5:                                 ; preds = %if.end.i.us.us.5.loopexit, %pregion_for_entry.entry.i.us.us.5
  %470 = add nuw nsw i64 %_local_id_x.0.us.us.5, 1
  %exitcond.not.5 = icmp eq i64 %470, 32
  br i1 %exitcond.not.5, label %pregion_for_end.i.us.5.loopexit, label %pregion_for_entry.entry.i.us.us.5, !llvm.loop !19

pregion_for_end.i.us.5.loopexit:                  ; preds = %if.end.i.us.us.5
  br label %pregion_for_end.i.us.5

pregion_for_end.i.us.5:                           ; preds = %pregion_for_end.i.us.5.loopexit, %pregion_for_end.i.us.4
  %471 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.6 = or i32 %471, 6
  %cmp.i.us.6 = icmp slt i32 %conv2.i.us.6, %3
  %mul.i.us.6 = mul nsw i32 %conv2.i.us.6, %6
  %mul9.i.us.6 = mul nsw i32 %conv2.i.us.6, %4
  %472 = sext i32 %mul9.i.us.6 to i64
  br i1 %cmp.i.us.6, label %pregion_for_entry.entry.i.us.us.6.preheader, label %pregion_for_end.i.us.6

pregion_for_entry.entry.i.us.us.6.preheader:      ; preds = %pregion_for_end.i.us.5
  br label %pregion_for_entry.entry.i.us.us.6

pregion_for_entry.entry.i.us.us.6:                ; preds = %if.end.i.us.us.6, %pregion_for_entry.entry.i.us.us.6.preheader
  %_local_id_x.0.us.us.6 = phi i64 [ %482, %if.end.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.us.us.6.preheader ]
  %add1.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.0.us.us.6, %mul.i.i
  %conv.i.us.us.6 = trunc i64 %add1.i.i.us.us.6 to i32
  %cmp4.i.us.us.6 = icmp slt i32 %conv.i.us.us.6, %6
  br i1 %cmp4.i.us.us.6, label %if.then.i.us.us.6, label %if.end.i.us.us.6

if.then.i.us.us.6:                                ; preds = %pregion_for_entry.entry.i.us.us.6
  %add.i.us.us.6 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6
  %idxprom.i.us.us.6 = sext i32 %add.i.us.us.6 to i64
  %arrayidx.i.us.us.6 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.6
  %473 = load float, float* %arrayidx.i.us.us.6, align 4, !tbaa !12
  %mul6.i.us.us.6 = fmul float %473, %8
  store float %mul6.i.us.us.6, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6 = shl i64 %add1.i.i.us.us.6, 32
  %474 = ashr exact i64 %sext.i.us.us.6, 32
  br label %for.body.i.us.us.6

for.body.i.us.us.6:                               ; preds = %for.body.i.us.us.6, %if.then.i.us.us.6
  %indvars.iv.next.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.us.us.6, %for.body.i.us.us.6 ], [ 0, %if.then.i.us.us.6 ]
  %475 = phi float [ %481, %for.body.i.us.us.6 ], [ %mul6.i.us.us.6, %if.then.i.us.us.6 ]
  %476 = add nsw i64 %indvars.iv.next.i3.us.us.6, %472
  %arrayidx12.i.us.us.6 = getelementptr inbounds float, float* %0, i64 %476
  %477 = load float, float* %arrayidx12.i.us.us.6, align 4, !tbaa !12
  %478 = mul nsw i64 %indvars.iv.next.i3.us.us.6, %14
  %479 = add nsw i64 %478, %474
  %arrayidx16.i.us.us.6 = getelementptr inbounds float, float* %1, i64 %479
  %480 = load float, float* %arrayidx16.i.us.us.6, align 4, !tbaa !12
  %481 = tail call float @llvm.fmuladd.f32(float %477, float %480, float %475) #2
  store float %481, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i3.us.us.6, 1
  %exitcond.not.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.us.us.6, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6, label %if.end.i.us.us.6.loopexit, label %for.body.i.us.us.6, !llvm.loop !21

if.end.i.us.us.6.loopexit:                        ; preds = %for.body.i.us.us.6
  br label %if.end.i.us.us.6

if.end.i.us.us.6:                                 ; preds = %if.end.i.us.us.6.loopexit, %pregion_for_entry.entry.i.us.us.6
  %482 = add nuw nsw i64 %_local_id_x.0.us.us.6, 1
  %exitcond.not.6 = icmp eq i64 %482, 32
  br i1 %exitcond.not.6, label %pregion_for_end.i.us.6.loopexit, label %pregion_for_entry.entry.i.us.us.6, !llvm.loop !19

pregion_for_end.i.us.6.loopexit:                  ; preds = %if.end.i.us.us.6
  br label %pregion_for_end.i.us.6

pregion_for_end.i.us.6:                           ; preds = %pregion_for_end.i.us.6.loopexit, %pregion_for_end.i.us.5
  %483 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.7 = or i32 %483, 7
  %cmp.i.us.7 = icmp slt i32 %conv2.i.us.7, %3
  %mul.i.us.7 = mul nsw i32 %conv2.i.us.7, %6
  %mul9.i.us.7 = mul nsw i32 %conv2.i.us.7, %4
  %484 = sext i32 %mul9.i.us.7 to i64
  br i1 %cmp.i.us.7, label %pregion_for_entry.entry.i.us.us.7.preheader, label %mm2_kernel2.exit

pregion_for_entry.entry.i.us.us.7.preheader:      ; preds = %pregion_for_end.i.us.6
  br label %pregion_for_entry.entry.i.us.us.7

pregion_for_entry.entry.i.us.us.7:                ; preds = %if.end.i.us.us.7, %pregion_for_entry.entry.i.us.us.7.preheader
  %_local_id_x.0.us.us.7 = phi i64 [ %494, %if.end.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.us.us.7.preheader ]
  %add1.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.0.us.us.7, %mul.i.i
  %conv.i.us.us.7 = trunc i64 %add1.i.i.us.us.7 to i32
  %cmp4.i.us.us.7 = icmp slt i32 %conv.i.us.us.7, %6
  br i1 %cmp4.i.us.us.7, label %if.then.i.us.us.7, label %if.end.i.us.us.7

if.then.i.us.us.7:                                ; preds = %pregion_for_entry.entry.i.us.us.7
  %add.i.us.us.7 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7
  %idxprom.i.us.us.7 = sext i32 %add.i.us.us.7 to i64
  %arrayidx.i.us.us.7 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.7
  %485 = load float, float* %arrayidx.i.us.us.7, align 4, !tbaa !12
  %mul6.i.us.us.7 = fmul float %485, %8
  store float %mul6.i.us.us.7, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7 = shl i64 %add1.i.i.us.us.7, 32
  %486 = ashr exact i64 %sext.i.us.us.7, 32
  br label %for.body.i.us.us.7

for.body.i.us.us.7:                               ; preds = %for.body.i.us.us.7, %if.then.i.us.us.7
  %indvars.iv.next.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.us.us.7, %for.body.i.us.us.7 ], [ 0, %if.then.i.us.us.7 ]
  %487 = phi float [ %493, %for.body.i.us.us.7 ], [ %mul6.i.us.us.7, %if.then.i.us.us.7 ]
  %488 = add nsw i64 %indvars.iv.next.i3.us.us.7, %484
  %arrayidx12.i.us.us.7 = getelementptr inbounds float, float* %0, i64 %488
  %489 = load float, float* %arrayidx12.i.us.us.7, align 4, !tbaa !12
  %490 = mul nsw i64 %indvars.iv.next.i3.us.us.7, %14
  %491 = add nsw i64 %490, %486
  %arrayidx16.i.us.us.7 = getelementptr inbounds float, float* %1, i64 %491
  %492 = load float, float* %arrayidx16.i.us.us.7, align 4, !tbaa !12
  %493 = tail call float @llvm.fmuladd.f32(float %489, float %492, float %487) #2
  store float %493, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i3.us.us.7, 1
  %exitcond.not.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.us.us.7, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7, label %if.end.i.us.us.7.loopexit, label %for.body.i.us.us.7, !llvm.loop !21

if.end.i.us.us.7.loopexit:                        ; preds = %for.body.i.us.us.7
  br label %if.end.i.us.us.7

if.end.i.us.us.7:                                 ; preds = %if.end.i.us.us.7.loopexit, %pregion_for_entry.entry.i.us.us.7
  %494 = add nuw nsw i64 %_local_id_x.0.us.us.7, 1
  %exitcond.not.7 = icmp eq i64 %494, 32
  br i1 %exitcond.not.7, label %mm2_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.us.us.7, !llvm.loop !19

if.then.i.us.7.1:                                 ; preds = %if.end.i.us.7
  %add.i.us.7.1 = add nsw i32 %mul.i.7, %conv.i.us.7.1
  %idxprom.i.us.7.1 = sext i32 %add.i.us.7.1 to i64
  %arrayidx.i.us.7.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.7.1
  %495 = load float, float* %arrayidx.i.us.7.1, align 4, !tbaa !12
  %mul6.i.us.7.1 = fmul float %495, %8
  store float %mul6.i.us.7.1, float* %arrayidx.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.7.1

if.end.i.us.7.1:                                  ; preds = %if.then.i.us.7.1, %if.end.i.us.7
  %496 = or i64 %_local_id_x.0.us.7, 2
  %add1.i.i.us.7.2 = add nuw nsw i64 %496, %mul.i.i
  %conv.i.us.7.2 = trunc i64 %add1.i.i.us.7.2 to i32
  %cmp4.i.us.7.2 = icmp slt i32 %conv.i.us.7.2, %6
  br i1 %cmp4.i.us.7.2, label %if.then.i.us.7.2, label %if.end.i.us.7.2

if.then.i.us.7.2:                                 ; preds = %if.end.i.us.7.1
  %add.i.us.7.2 = add nsw i32 %mul.i.7, %conv.i.us.7.2
  %idxprom.i.us.7.2 = sext i32 %add.i.us.7.2 to i64
  %arrayidx.i.us.7.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.7.2
  %497 = load float, float* %arrayidx.i.us.7.2, align 4, !tbaa !12
  %mul6.i.us.7.2 = fmul float %497, %8
  store float %mul6.i.us.7.2, float* %arrayidx.i.us.7.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.7.2

if.end.i.us.7.2:                                  ; preds = %if.then.i.us.7.2, %if.end.i.us.7.1
  %498 = or i64 %_local_id_x.0.us.7, 3
  %add1.i.i.us.7.3 = add nuw nsw i64 %498, %mul.i.i
  %conv.i.us.7.3 = trunc i64 %add1.i.i.us.7.3 to i32
  %cmp4.i.us.7.3 = icmp slt i32 %conv.i.us.7.3, %6
  br i1 %cmp4.i.us.7.3, label %if.then.i.us.7.3, label %if.end.i.us.7.3

if.then.i.us.7.3:                                 ; preds = %if.end.i.us.7.2
  %add.i.us.7.3 = add nsw i32 %mul.i.7, %conv.i.us.7.3
  %idxprom.i.us.7.3 = sext i32 %add.i.us.7.3 to i64
  %arrayidx.i.us.7.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.7.3
  %499 = load float, float* %arrayidx.i.us.7.3, align 4, !tbaa !12
  %mul6.i.us.7.3 = fmul float %499, %8
  store float %mul6.i.us.7.3, float* %arrayidx.i.us.7.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.7.3

if.end.i.us.7.3:                                  ; preds = %if.then.i.us.7.3, %if.end.i.us.7.2
  %500 = add nuw nsw i64 %_local_id_x.0.us.7, 4
  %exitcond33.7.not.3 = icmp eq i64 %500, 32
  br i1 %exitcond33.7.not.3, label %mm2_kernel2.exit.loopexit237, label %pregion_for_entry.entry.i.us.7, !llvm.loop !23

if.then.i.us.6.1:                                 ; preds = %if.end.i.us.6
  %add.i.us.6.1 = add nsw i32 %mul.i.6, %conv.i.us.6.1
  %idxprom.i.us.6.1 = sext i32 %add.i.us.6.1 to i64
  %arrayidx.i.us.6.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.6.1
  %501 = load float, float* %arrayidx.i.us.6.1, align 4, !tbaa !12
  %mul6.i.us.6.1 = fmul float %501, %8
  store float %mul6.i.us.6.1, float* %arrayidx.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.6.1

if.end.i.us.6.1:                                  ; preds = %if.then.i.us.6.1, %if.end.i.us.6
  %502 = or i64 %_local_id_x.0.us.6, 2
  %add1.i.i.us.6.2 = add nuw nsw i64 %502, %mul.i.i
  %conv.i.us.6.2 = trunc i64 %add1.i.i.us.6.2 to i32
  %cmp4.i.us.6.2 = icmp slt i32 %conv.i.us.6.2, %6
  br i1 %cmp4.i.us.6.2, label %if.then.i.us.6.2, label %if.end.i.us.6.2

if.then.i.us.6.2:                                 ; preds = %if.end.i.us.6.1
  %add.i.us.6.2 = add nsw i32 %mul.i.6, %conv.i.us.6.2
  %idxprom.i.us.6.2 = sext i32 %add.i.us.6.2 to i64
  %arrayidx.i.us.6.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.6.2
  %503 = load float, float* %arrayidx.i.us.6.2, align 4, !tbaa !12
  %mul6.i.us.6.2 = fmul float %503, %8
  store float %mul6.i.us.6.2, float* %arrayidx.i.us.6.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.6.2

if.end.i.us.6.2:                                  ; preds = %if.then.i.us.6.2, %if.end.i.us.6.1
  %504 = or i64 %_local_id_x.0.us.6, 3
  %add1.i.i.us.6.3 = add nuw nsw i64 %504, %mul.i.i
  %conv.i.us.6.3 = trunc i64 %add1.i.i.us.6.3 to i32
  %cmp4.i.us.6.3 = icmp slt i32 %conv.i.us.6.3, %6
  br i1 %cmp4.i.us.6.3, label %if.then.i.us.6.3, label %if.end.i.us.6.3

if.then.i.us.6.3:                                 ; preds = %if.end.i.us.6.2
  %add.i.us.6.3 = add nsw i32 %mul.i.6, %conv.i.us.6.3
  %idxprom.i.us.6.3 = sext i32 %add.i.us.6.3 to i64
  %arrayidx.i.us.6.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.6.3
  %505 = load float, float* %arrayidx.i.us.6.3, align 4, !tbaa !12
  %mul6.i.us.6.3 = fmul float %505, %8
  store float %mul6.i.us.6.3, float* %arrayidx.i.us.6.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.6.3

if.end.i.us.6.3:                                  ; preds = %if.then.i.us.6.3, %if.end.i.us.6.2
  %506 = add nuw nsw i64 %_local_id_x.0.us.6, 4
  %exitcond33.6.not.3 = icmp eq i64 %506, 32
  br i1 %exitcond33.6.not.3, label %pregion_for_end.i.6.loopexit, label %pregion_for_entry.entry.i.us.6, !llvm.loop !25

if.then.i.us.5.1:                                 ; preds = %if.end.i.us.5
  %add.i.us.5.1 = add nsw i32 %mul.i.5, %conv.i.us.5.1
  %idxprom.i.us.5.1 = sext i32 %add.i.us.5.1 to i64
  %arrayidx.i.us.5.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.5.1
  %507 = load float, float* %arrayidx.i.us.5.1, align 4, !tbaa !12
  %mul6.i.us.5.1 = fmul float %507, %8
  store float %mul6.i.us.5.1, float* %arrayidx.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.5.1

if.end.i.us.5.1:                                  ; preds = %if.then.i.us.5.1, %if.end.i.us.5
  %508 = or i64 %_local_id_x.0.us.5, 2
  %add1.i.i.us.5.2 = add nuw nsw i64 %508, %mul.i.i
  %conv.i.us.5.2 = trunc i64 %add1.i.i.us.5.2 to i32
  %cmp4.i.us.5.2 = icmp slt i32 %conv.i.us.5.2, %6
  br i1 %cmp4.i.us.5.2, label %if.then.i.us.5.2, label %if.end.i.us.5.2

if.then.i.us.5.2:                                 ; preds = %if.end.i.us.5.1
  %add.i.us.5.2 = add nsw i32 %mul.i.5, %conv.i.us.5.2
  %idxprom.i.us.5.2 = sext i32 %add.i.us.5.2 to i64
  %arrayidx.i.us.5.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.5.2
  %509 = load float, float* %arrayidx.i.us.5.2, align 4, !tbaa !12
  %mul6.i.us.5.2 = fmul float %509, %8
  store float %mul6.i.us.5.2, float* %arrayidx.i.us.5.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.5.2

if.end.i.us.5.2:                                  ; preds = %if.then.i.us.5.2, %if.end.i.us.5.1
  %510 = or i64 %_local_id_x.0.us.5, 3
  %add1.i.i.us.5.3 = add nuw nsw i64 %510, %mul.i.i
  %conv.i.us.5.3 = trunc i64 %add1.i.i.us.5.3 to i32
  %cmp4.i.us.5.3 = icmp slt i32 %conv.i.us.5.3, %6
  br i1 %cmp4.i.us.5.3, label %if.then.i.us.5.3, label %if.end.i.us.5.3

if.then.i.us.5.3:                                 ; preds = %if.end.i.us.5.2
  %add.i.us.5.3 = add nsw i32 %mul.i.5, %conv.i.us.5.3
  %idxprom.i.us.5.3 = sext i32 %add.i.us.5.3 to i64
  %arrayidx.i.us.5.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.5.3
  %511 = load float, float* %arrayidx.i.us.5.3, align 4, !tbaa !12
  %mul6.i.us.5.3 = fmul float %511, %8
  store float %mul6.i.us.5.3, float* %arrayidx.i.us.5.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.5.3

if.end.i.us.5.3:                                  ; preds = %if.then.i.us.5.3, %if.end.i.us.5.2
  %512 = add nuw nsw i64 %_local_id_x.0.us.5, 4
  %exitcond33.5.not.3 = icmp eq i64 %512, 32
  br i1 %exitcond33.5.not.3, label %pregion_for_end.i.5.loopexit, label %pregion_for_entry.entry.i.us.5, !llvm.loop !26

if.then.i.us.4.1:                                 ; preds = %if.end.i.us.4
  %add.i.us.4.1 = add nsw i32 %mul.i.4, %conv.i.us.4.1
  %idxprom.i.us.4.1 = sext i32 %add.i.us.4.1 to i64
  %arrayidx.i.us.4.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.4.1
  %513 = load float, float* %arrayidx.i.us.4.1, align 4, !tbaa !12
  %mul6.i.us.4.1 = fmul float %513, %8
  store float %mul6.i.us.4.1, float* %arrayidx.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.4.1

if.end.i.us.4.1:                                  ; preds = %if.then.i.us.4.1, %if.end.i.us.4
  %514 = or i64 %_local_id_x.0.us.4, 2
  %add1.i.i.us.4.2 = add nuw nsw i64 %514, %mul.i.i
  %conv.i.us.4.2 = trunc i64 %add1.i.i.us.4.2 to i32
  %cmp4.i.us.4.2 = icmp slt i32 %conv.i.us.4.2, %6
  br i1 %cmp4.i.us.4.2, label %if.then.i.us.4.2, label %if.end.i.us.4.2

if.then.i.us.4.2:                                 ; preds = %if.end.i.us.4.1
  %add.i.us.4.2 = add nsw i32 %mul.i.4, %conv.i.us.4.2
  %idxprom.i.us.4.2 = sext i32 %add.i.us.4.2 to i64
  %arrayidx.i.us.4.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.4.2
  %515 = load float, float* %arrayidx.i.us.4.2, align 4, !tbaa !12
  %mul6.i.us.4.2 = fmul float %515, %8
  store float %mul6.i.us.4.2, float* %arrayidx.i.us.4.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.4.2

if.end.i.us.4.2:                                  ; preds = %if.then.i.us.4.2, %if.end.i.us.4.1
  %516 = or i64 %_local_id_x.0.us.4, 3
  %add1.i.i.us.4.3 = add nuw nsw i64 %516, %mul.i.i
  %conv.i.us.4.3 = trunc i64 %add1.i.i.us.4.3 to i32
  %cmp4.i.us.4.3 = icmp slt i32 %conv.i.us.4.3, %6
  br i1 %cmp4.i.us.4.3, label %if.then.i.us.4.3, label %if.end.i.us.4.3

if.then.i.us.4.3:                                 ; preds = %if.end.i.us.4.2
  %add.i.us.4.3 = add nsw i32 %mul.i.4, %conv.i.us.4.3
  %idxprom.i.us.4.3 = sext i32 %add.i.us.4.3 to i64
  %arrayidx.i.us.4.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.4.3
  %517 = load float, float* %arrayidx.i.us.4.3, align 4, !tbaa !12
  %mul6.i.us.4.3 = fmul float %517, %8
  store float %mul6.i.us.4.3, float* %arrayidx.i.us.4.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.4.3

if.end.i.us.4.3:                                  ; preds = %if.then.i.us.4.3, %if.end.i.us.4.2
  %518 = add nuw nsw i64 %_local_id_x.0.us.4, 4
  %exitcond33.4.not.3 = icmp eq i64 %518, 32
  br i1 %exitcond33.4.not.3, label %pregion_for_end.i.4.loopexit, label %pregion_for_entry.entry.i.us.4, !llvm.loop !27

if.then.i.us.3.1:                                 ; preds = %if.end.i.us.3
  %add.i.us.3.1 = add nsw i32 %mul.i.3, %conv.i.us.3.1
  %idxprom.i.us.3.1 = sext i32 %add.i.us.3.1 to i64
  %arrayidx.i.us.3.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.3.1
  %519 = load float, float* %arrayidx.i.us.3.1, align 4, !tbaa !12
  %mul6.i.us.3.1 = fmul float %519, %8
  store float %mul6.i.us.3.1, float* %arrayidx.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3.1

if.end.i.us.3.1:                                  ; preds = %if.then.i.us.3.1, %if.end.i.us.3
  %520 = or i64 %_local_id_x.0.us.3, 2
  %add1.i.i.us.3.2 = add nuw nsw i64 %520, %mul.i.i
  %conv.i.us.3.2 = trunc i64 %add1.i.i.us.3.2 to i32
  %cmp4.i.us.3.2 = icmp slt i32 %conv.i.us.3.2, %6
  br i1 %cmp4.i.us.3.2, label %if.then.i.us.3.2, label %if.end.i.us.3.2

if.then.i.us.3.2:                                 ; preds = %if.end.i.us.3.1
  %add.i.us.3.2 = add nsw i32 %mul.i.3, %conv.i.us.3.2
  %idxprom.i.us.3.2 = sext i32 %add.i.us.3.2 to i64
  %arrayidx.i.us.3.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.3.2
  %521 = load float, float* %arrayidx.i.us.3.2, align 4, !tbaa !12
  %mul6.i.us.3.2 = fmul float %521, %8
  store float %mul6.i.us.3.2, float* %arrayidx.i.us.3.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3.2

if.end.i.us.3.2:                                  ; preds = %if.then.i.us.3.2, %if.end.i.us.3.1
  %522 = or i64 %_local_id_x.0.us.3, 3
  %add1.i.i.us.3.3 = add nuw nsw i64 %522, %mul.i.i
  %conv.i.us.3.3 = trunc i64 %add1.i.i.us.3.3 to i32
  %cmp4.i.us.3.3 = icmp slt i32 %conv.i.us.3.3, %6
  br i1 %cmp4.i.us.3.3, label %if.then.i.us.3.3, label %if.end.i.us.3.3

if.then.i.us.3.3:                                 ; preds = %if.end.i.us.3.2
  %add.i.us.3.3 = add nsw i32 %mul.i.3, %conv.i.us.3.3
  %idxprom.i.us.3.3 = sext i32 %add.i.us.3.3 to i64
  %arrayidx.i.us.3.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.3.3
  %523 = load float, float* %arrayidx.i.us.3.3, align 4, !tbaa !12
  %mul6.i.us.3.3 = fmul float %523, %8
  store float %mul6.i.us.3.3, float* %arrayidx.i.us.3.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3.3

if.end.i.us.3.3:                                  ; preds = %if.then.i.us.3.3, %if.end.i.us.3.2
  %524 = add nuw nsw i64 %_local_id_x.0.us.3, 4
  %exitcond33.3.not.3 = icmp eq i64 %524, 32
  br i1 %exitcond33.3.not.3, label %pregion_for_end.i.3.loopexit, label %pregion_for_entry.entry.i.us.3, !llvm.loop !28

if.then.i.us.2.1:                                 ; preds = %if.end.i.us.2
  %add.i.us.2.1 = add nsw i32 %mul.i.2, %conv.i.us.2.1
  %idxprom.i.us.2.1 = sext i32 %add.i.us.2.1 to i64
  %arrayidx.i.us.2.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.2.1
  %525 = load float, float* %arrayidx.i.us.2.1, align 4, !tbaa !12
  %mul6.i.us.2.1 = fmul float %525, %8
  store float %mul6.i.us.2.1, float* %arrayidx.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2.1

if.end.i.us.2.1:                                  ; preds = %if.then.i.us.2.1, %if.end.i.us.2
  %526 = or i64 %_local_id_x.0.us.2, 2
  %add1.i.i.us.2.2 = add nuw nsw i64 %526, %mul.i.i
  %conv.i.us.2.2 = trunc i64 %add1.i.i.us.2.2 to i32
  %cmp4.i.us.2.2 = icmp slt i32 %conv.i.us.2.2, %6
  br i1 %cmp4.i.us.2.2, label %if.then.i.us.2.2, label %if.end.i.us.2.2

if.then.i.us.2.2:                                 ; preds = %if.end.i.us.2.1
  %add.i.us.2.2 = add nsw i32 %mul.i.2, %conv.i.us.2.2
  %idxprom.i.us.2.2 = sext i32 %add.i.us.2.2 to i64
  %arrayidx.i.us.2.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.2.2
  %527 = load float, float* %arrayidx.i.us.2.2, align 4, !tbaa !12
  %mul6.i.us.2.2 = fmul float %527, %8
  store float %mul6.i.us.2.2, float* %arrayidx.i.us.2.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2.2

if.end.i.us.2.2:                                  ; preds = %if.then.i.us.2.2, %if.end.i.us.2.1
  %528 = or i64 %_local_id_x.0.us.2, 3
  %add1.i.i.us.2.3 = add nuw nsw i64 %528, %mul.i.i
  %conv.i.us.2.3 = trunc i64 %add1.i.i.us.2.3 to i32
  %cmp4.i.us.2.3 = icmp slt i32 %conv.i.us.2.3, %6
  br i1 %cmp4.i.us.2.3, label %if.then.i.us.2.3, label %if.end.i.us.2.3

if.then.i.us.2.3:                                 ; preds = %if.end.i.us.2.2
  %add.i.us.2.3 = add nsw i32 %mul.i.2, %conv.i.us.2.3
  %idxprom.i.us.2.3 = sext i32 %add.i.us.2.3 to i64
  %arrayidx.i.us.2.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.2.3
  %529 = load float, float* %arrayidx.i.us.2.3, align 4, !tbaa !12
  %mul6.i.us.2.3 = fmul float %529, %8
  store float %mul6.i.us.2.3, float* %arrayidx.i.us.2.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2.3

if.end.i.us.2.3:                                  ; preds = %if.then.i.us.2.3, %if.end.i.us.2.2
  %530 = add nuw nsw i64 %_local_id_x.0.us.2, 4
  %exitcond33.2.not.3 = icmp eq i64 %530, 32
  br i1 %exitcond33.2.not.3, label %pregion_for_end.i.2.loopexit, label %pregion_for_entry.entry.i.us.2, !llvm.loop !29

if.then.i.us.1.1:                                 ; preds = %if.end.i.us.1
  %add.i.us.1.1 = add nsw i32 %mul.i.1, %conv.i.us.1.1
  %idxprom.i.us.1.1 = sext i32 %add.i.us.1.1 to i64
  %arrayidx.i.us.1.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1.1
  %531 = load float, float* %arrayidx.i.us.1.1, align 4, !tbaa !12
  %mul6.i.us.1.1 = fmul float %531, %8
  store float %mul6.i.us.1.1, float* %arrayidx.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1.1

if.end.i.us.1.1:                                  ; preds = %if.then.i.us.1.1, %if.end.i.us.1
  %532 = or i64 %_local_id_x.0.us.1, 2
  %add1.i.i.us.1.2 = add nuw nsw i64 %532, %mul.i.i
  %conv.i.us.1.2 = trunc i64 %add1.i.i.us.1.2 to i32
  %cmp4.i.us.1.2 = icmp slt i32 %conv.i.us.1.2, %6
  br i1 %cmp4.i.us.1.2, label %if.then.i.us.1.2, label %if.end.i.us.1.2

if.then.i.us.1.2:                                 ; preds = %if.end.i.us.1.1
  %add.i.us.1.2 = add nsw i32 %mul.i.1, %conv.i.us.1.2
  %idxprom.i.us.1.2 = sext i32 %add.i.us.1.2 to i64
  %arrayidx.i.us.1.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1.2
  %533 = load float, float* %arrayidx.i.us.1.2, align 4, !tbaa !12
  %mul6.i.us.1.2 = fmul float %533, %8
  store float %mul6.i.us.1.2, float* %arrayidx.i.us.1.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1.2

if.end.i.us.1.2:                                  ; preds = %if.then.i.us.1.2, %if.end.i.us.1.1
  %534 = or i64 %_local_id_x.0.us.1, 3
  %add1.i.i.us.1.3 = add nuw nsw i64 %534, %mul.i.i
  %conv.i.us.1.3 = trunc i64 %add1.i.i.us.1.3 to i32
  %cmp4.i.us.1.3 = icmp slt i32 %conv.i.us.1.3, %6
  br i1 %cmp4.i.us.1.3, label %if.then.i.us.1.3, label %if.end.i.us.1.3

if.then.i.us.1.3:                                 ; preds = %if.end.i.us.1.2
  %add.i.us.1.3 = add nsw i32 %mul.i.1, %conv.i.us.1.3
  %idxprom.i.us.1.3 = sext i32 %add.i.us.1.3 to i64
  %arrayidx.i.us.1.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1.3
  %535 = load float, float* %arrayidx.i.us.1.3, align 4, !tbaa !12
  %mul6.i.us.1.3 = fmul float %535, %8
  store float %mul6.i.us.1.3, float* %arrayidx.i.us.1.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1.3

if.end.i.us.1.3:                                  ; preds = %if.then.i.us.1.3, %if.end.i.us.1.2
  %536 = add nuw nsw i64 %_local_id_x.0.us.1, 4
  %exitcond33.1.not.3 = icmp eq i64 %536, 32
  br i1 %exitcond33.1.not.3, label %pregion_for_end.i.1.loopexit, label %pregion_for_entry.entry.i.us.1, !llvm.loop !30

if.then.i.us.1213:                                ; preds = %if.end.i.us
  %add.i.us.1209 = add nsw i32 %mul.i.us, %conv.i.us.1206
  %idxprom.i.us.1210 = sext i32 %add.i.us.1209 to i64
  %arrayidx.i.us.1211 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1210
  %537 = load float, float* %arrayidx.i.us.1211, align 4, !tbaa !12
  %mul6.i.us.1212 = fmul float %537, %8
  store float %mul6.i.us.1212, float* %arrayidx.i.us.1211, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1214

if.end.i.us.1214:                                 ; preds = %if.then.i.us.1213, %if.end.i.us
  %538 = or i64 %_local_id_x.0.us, 2
  %add1.i.i.us.2216 = add nuw nsw i64 %538, %mul.i.i
  %conv.i.us.2217 = trunc i64 %add1.i.i.us.2216 to i32
  %cmp4.i.us.2218 = icmp slt i32 %conv.i.us.2217, %6
  br i1 %cmp4.i.us.2218, label %if.then.i.us.2224, label %if.end.i.us.2225

if.then.i.us.2224:                                ; preds = %if.end.i.us.1214
  %add.i.us.2220 = add nsw i32 %mul.i.us, %conv.i.us.2217
  %idxprom.i.us.2221 = sext i32 %add.i.us.2220 to i64
  %arrayidx.i.us.2222 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.2221
  %539 = load float, float* %arrayidx.i.us.2222, align 4, !tbaa !12
  %mul6.i.us.2223 = fmul float %539, %8
  store float %mul6.i.us.2223, float* %arrayidx.i.us.2222, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2225

if.end.i.us.2225:                                 ; preds = %if.then.i.us.2224, %if.end.i.us.1214
  %540 = or i64 %_local_id_x.0.us, 3
  %add1.i.i.us.3227 = add nuw nsw i64 %540, %mul.i.i
  %conv.i.us.3228 = trunc i64 %add1.i.i.us.3227 to i32
  %cmp4.i.us.3229 = icmp slt i32 %conv.i.us.3228, %6
  br i1 %cmp4.i.us.3229, label %if.then.i.us.3235, label %if.end.i.us.3236

if.then.i.us.3235:                                ; preds = %if.end.i.us.2225
  %add.i.us.3231 = add nsw i32 %mul.i.us, %conv.i.us.3228
  %idxprom.i.us.3232 = sext i32 %add.i.us.3231 to i64
  %arrayidx.i.us.3233 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.3232
  %541 = load float, float* %arrayidx.i.us.3233, align 4, !tbaa !12
  %mul6.i.us.3234 = fmul float %541, %8
  store float %mul6.i.us.3234, float* %arrayidx.i.us.3233, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3236

if.end.i.us.3236:                                 ; preds = %if.then.i.us.3235, %if.end.i.us.2225
  %542 = add nuw nsw i64 %_local_id_x.0.us, 4
  %exitcond33.not.3 = icmp eq i64 %542, 32
  br i1 %exitcond33.not.3, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !31
}

; Function Attrs: nounwind
define void @_pocl_kernel_mm2_kernel2_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %25 = getelementptr i8*, i8** %0, i64 6
  %26 = bitcast i8** %25 to i32**
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr i8*, i8** %0, i64 8
  %30 = bitcast i8** %29 to float**
  %31 = load float*, float** %30, align 8
  %32 = load float, float* %31, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp739.i.i = icmp sgt i32 %24, 0
  %33 = sext i32 %28 to i64
  %wide.trip.count.i.i = zext i32 %24 to i64
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i.us = icmp sgt i32 %20, %conv2.i.i.us
  %mul.i.i.us = mul nsw i32 %28, %conv2.i.i.us
  br i1 %cmp739.i.i, label %pregion_for_entry.pregion_for_init.i.i.us, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  br i1 %cmp.i.i.us, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %34 = trunc i64 %3 to i32
  %35 = mul i32 %28, %34
  %36 = shl i32 %35, 3
  %37 = trunc i64 %2 to i32
  %38 = shl i32 %37, 5
  %39 = add i32 %36, %38
  %40 = icmp sgt i32 %39, 2147483616
  br i1 %40, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.ph:                                        ; preds = %vector.scevcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert37 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat38 = shufflevector <8 x i32> %broadcast.splatinsert37, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert39 = insertelement <8 x float> undef, float %32, i32 0
  %broadcast.splat40 = shufflevector <8 x float> %broadcast.splatinsert39, <8 x float> undef, <8 x i32> zeroinitializer
  %41 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %42 = or <8 x i32> %41, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %43 = icmp sgt <8 x i32> %broadcast.splat38, %42
  %44 = extractelement <8 x i32> %42, i32 0
  %45 = add nsw i32 %mul.i.i.us, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %16, i64 %46
  %48 = bitcast float* %47 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %48, i32 4, <8 x i1> %43, <8 x float> undef), !tbaa !12
  %49 = fmul <8 x float> %broadcast.splat40, %wide.masked.load
  %50 = bitcast float* %47 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %49, <8 x float>* %50, i32 4, <8 x i1> %43), !tbaa !12, !llvm.access.group !16
  %51 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %52 = or <8 x i32> %51, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %53 = icmp sgt <8 x i32> %broadcast.splat38, %52
  %54 = extractelement <8 x i32> %52, i32 0
  %55 = add nsw i32 %mul.i.i.us, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %16, i64 %56
  %58 = bitcast float* %57 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %58, i32 4, <8 x i1> %53, <8 x float> undef), !tbaa !12
  %59 = fmul <8 x float> %broadcast.splat40, %wide.masked.load.1
  %60 = bitcast float* %57 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %59, <8 x float>* %60, i32 4, <8 x i1> %53), !tbaa !12, !llvm.access.group !16
  %61 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %62 = or <8 x i32> %61, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %63 = icmp sgt <8 x i32> %broadcast.splat38, %62
  %64 = extractelement <8 x i32> %62, i32 0
  %65 = add nsw i32 %mul.i.i.us, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %16, i64 %66
  %68 = bitcast float* %67 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %68, i32 4, <8 x i1> %63, <8 x float> undef), !tbaa !12
  %69 = fmul <8 x float> %broadcast.splat40, %wide.masked.load.2
  %70 = bitcast float* %67 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %69, <8 x float>* %70, i32 4, <8 x i1> %63), !tbaa !12, !llvm.access.group !16
  %71 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %72 = or <8 x i32> %71, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %73 = icmp sgt <8 x i32> %broadcast.splat38, %72
  %74 = extractelement <8 x i32> %72, i32 0
  %75 = add nsw i32 %mul.i.i.us, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %16, i64 %76
  %78 = bitcast float* %77 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %78, i32 4, <8 x i1> %73, <8 x float> undef), !tbaa !12
  %79 = fmul <8 x float> %broadcast.splat40, %wide.masked.load.3
  %80 = bitcast float* %77 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %79, <8 x float>* %80, i32 4, <8 x i1> %73), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

pregion_for_entry.pregion_for_init.i.i.us:        ; preds = %5
  %mul9.i.i.us = mul nsw i32 %24, %conv2.i.i.us
  %81 = sext i32 %mul9.i.i.us to i64
  br i1 %cmp.i.i.us, label %pregion_for_entry.entry.i.i.us.us.preheader, label %pregion_for_end.i.i.us

pregion_for_entry.entry.i.i.us.us.preheader:      ; preds = %pregion_for_entry.pregion_for_init.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_end.i.i.us.loopexit:                  ; preds = %if.end.i.i.us.us
  br label %pregion_for_end.i.i.us

pregion_for_end.i.i.us:                           ; preds = %pregion_for_end.i.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.i.us
  %82 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %82, 1
  %cmp.i.i.us.1 = icmp sgt i32 %20, %conv2.i.i.us.1
  %mul.i.i.us.1 = mul nsw i32 %28, %conv2.i.i.us.1
  %mul9.i.i.us.1 = mul nsw i32 %24, %conv2.i.i.us.1
  %83 = sext i32 %mul9.i.i.us.1 to i64
  br i1 %cmp.i.i.us.1, label %pregion_for_entry.entry.i.i.us.us.1.preheader, label %pregion_for_end.i.i.us.1

pregion_for_entry.entry.i.i.us.us.1.preheader:    ; preds = %pregion_for_end.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.entry.i.i.us.us:                ; preds = %if.end.i.i.us.us, %pregion_for_entry.entry.i.i.us.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ %86, %if.end.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us.preheader ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %cmp4.i.i.us.us = icmp sgt i32 %28, %conv.i.i.us.us
  br i1 %cmp4.i.i.us.us, label %if.then.i.i.us.us, label %if.end.i.i.us.us

if.then.i.i.us.us:                                ; preds = %pregion_for_entry.entry.i.i.us.us
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us
  %84 = load float, float* %arrayidx.i.i.us.us, align 4, !tbaa !12
  %mul6.i.i.us.us = fmul float %32, %84
  store float %mul6.i.i.us.us, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %85 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

if.end.i.i.us.us.loopexit:                        ; preds = %for.body.i.i.us.us
  br label %if.end.i.i.us.us

if.end.i.i.us.us:                                 ; preds = %if.end.i.i.us.us.loopexit, %pregion_for_entry.entry.i.i.us.us
  %86 = add nuw nsw i64 %_local_id_x.i.0.us.us, 1
  %exitcond.not = icmp eq i64 %86, 32
  br i1 %exitcond.not, label %pregion_for_end.i.i.us.loopexit, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !19

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %if.then.i.i.us.us
  %indvars.iv.next.i.i3.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %if.then.i.i.us.us ]
  %87 = phi float [ %93, %for.body.i.i.us.us ], [ %mul6.i.i.us.us, %if.then.i.i.us.us ]
  %88 = add nsw i64 %indvars.iv.next.i.i3.us.us, %81
  %arrayidx12.i.i.us.us = getelementptr inbounds float, float* %8, i64 %88
  %89 = load float, float* %arrayidx12.i.i.us.us, align 4, !tbaa !12
  %90 = mul nsw i64 %indvars.iv.next.i.i3.us.us, %33
  %91 = add nsw i64 %90, %85
  %arrayidx16.i.i.us.us = getelementptr inbounds float, float* %12, i64 %91
  %92 = load float, float* %arrayidx16.i.i.us.us, align 4, !tbaa !12
  %93 = tail call float @llvm.fmuladd.f32(float %89, float %92, float %87) #2
  store float %93, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i3.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %if.end.i.i.us.us.loopexit, label %for.body.i.i.us.us, !llvm.loop !21

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us.3236, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %561, %if.end.i.i.us.3236 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %28, %conv.i.i.us
  br i1 %cmp4.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add.i.i.us = add nsw i32 %mul.i.i.us, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us
  %94 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %mul6.i.i.us = fmul float %32, %94
  store float %mul6.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %95 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1205 = add nuw nsw i64 %95, %mul.i.i.i
  %conv.i.i.us.1206 = trunc i64 %add1.i.i.i.us.1205 to i32
  %cmp4.i.i.us.1207 = icmp sgt i32 %28, %conv.i.i.us.1206
  br i1 %cmp4.i.i.us.1207, label %if.then.i.i.us.1213, label %if.end.i.i.us.1214

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.i.i.us.3236
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i.preheader
  %96 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.1 = or i32 %96, 1
  %cmp.i.i.1 = icmp sgt i32 %20, %conv2.i.i.1
  %mul.i.i.1 = mul nsw i32 %28, %conv2.i.i.1
  br i1 %cmp.i.i.1, label %vector.scevcheck48, label %pregion_for_end.i.i.1

vector.scevcheck48:                               ; preds = %pregion_for_end.i.i
  %97 = mul i32 %28, %conv2.i.i.1
  %98 = trunc i64 %2 to i32
  %99 = shl i32 %98, 5
  %100 = add i32 %97, %99
  %101 = icmp sgt i32 %100, 2147483616
  br i1 %101, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.ph49

pregion_for_entry.entry.i.i.us.1.preheader:       ; preds = %vector.scevcheck48
  br label %pregion_for_entry.entry.i.i.us.1

vector.ph49:                                      ; preds = %vector.scevcheck48
  %broadcast.splatinsert56 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat57 = shufflevector <8 x i64> %broadcast.splatinsert56, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert58 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat59 = shufflevector <8 x i32> %broadcast.splatinsert58, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert61 = insertelement <8 x float> undef, float %32, i32 0
  %broadcast.splat62 = shufflevector <8 x float> %broadcast.splatinsert61, <8 x float> undef, <8 x i32> zeroinitializer
  %102 = trunc <8 x i64> %broadcast.splat57 to <8 x i32>
  %103 = or <8 x i32> %102, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %104 = icmp sgt <8 x i32> %broadcast.splat59, %103
  %105 = extractelement <8 x i32> %103, i32 0
  %106 = add nsw i32 %mul.i.i.1, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %16, i64 %107
  %109 = bitcast float* %108 to <8 x float>*
  %wide.masked.load60 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %109, i32 4, <8 x i1> %104, <8 x float> undef), !tbaa !12
  %110 = fmul <8 x float> %broadcast.splat62, %wide.masked.load60
  %111 = bitcast float* %108 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %110, <8 x float>* %111, i32 4, <8 x i1> %104), !tbaa !12, !llvm.access.group !16
  %112 = trunc <8 x i64> %broadcast.splat57 to <8 x i32>
  %113 = or <8 x i32> %112, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %114 = icmp sgt <8 x i32> %broadcast.splat59, %113
  %115 = extractelement <8 x i32> %113, i32 0
  %116 = add nsw i32 %mul.i.i.1, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %16, i64 %117
  %119 = bitcast float* %118 to <8 x float>*
  %wide.masked.load60.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %119, i32 4, <8 x i1> %114, <8 x float> undef), !tbaa !12
  %120 = fmul <8 x float> %broadcast.splat62, %wide.masked.load60.1
  %121 = bitcast float* %118 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %120, <8 x float>* %121, i32 4, <8 x i1> %114), !tbaa !12, !llvm.access.group !16
  %122 = trunc <8 x i64> %broadcast.splat57 to <8 x i32>
  %123 = or <8 x i32> %122, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %124 = icmp sgt <8 x i32> %broadcast.splat59, %123
  %125 = extractelement <8 x i32> %123, i32 0
  %126 = add nsw i32 %mul.i.i.1, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %16, i64 %127
  %129 = bitcast float* %128 to <8 x float>*
  %wide.masked.load60.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %129, i32 4, <8 x i1> %124, <8 x float> undef), !tbaa !12
  %130 = fmul <8 x float> %broadcast.splat62, %wide.masked.load60.2
  %131 = bitcast float* %128 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %130, <8 x float>* %131, i32 4, <8 x i1> %124), !tbaa !12, !llvm.access.group !16
  %132 = trunc <8 x i64> %broadcast.splat57 to <8 x i32>
  %133 = or <8 x i32> %132, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %134 = icmp sgt <8 x i32> %broadcast.splat59, %133
  %135 = extractelement <8 x i32> %133, i32 0
  %136 = add nsw i32 %mul.i.i.1, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %16, i64 %137
  %139 = bitcast float* %138 to <8 x float>*
  %wide.masked.load60.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %139, i32 4, <8 x i1> %134, <8 x float> undef), !tbaa !12
  %140 = fmul <8 x float> %broadcast.splat62, %wide.masked.load60.3
  %141 = bitcast float* %138 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %140, <8 x float>* %141, i32 4, <8 x i1> %134), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.1

_pocl_kernel_mm2_kernel2.exit.loopexit:           ; preds = %if.end.i.i.us.us.7
  br label %_pocl_kernel_mm2_kernel2.exit

_pocl_kernel_mm2_kernel2.exit.loopexit237:        ; preds = %if.end.i.i.us.7.3
  br label %_pocl_kernel_mm2_kernel2.exit

_pocl_kernel_mm2_kernel2.exit:                    ; preds = %pregion_for_end.i.i.us.6, %vector.ph181, %pregion_for_end.i.i.6, %_pocl_kernel_mm2_kernel2.exit.loopexit237, %_pocl_kernel_mm2_kernel2.exit.loopexit
  ret void

pregion_for_entry.entry.i.i.us.1:                 ; preds = %if.end.i.i.us.1.3, %pregion_for_entry.entry.i.i.us.1.preheader
  %_local_id_x.i.0.us.1 = phi i64 [ %555, %if.end.i.i.us.1.3 ], [ 0, %pregion_for_entry.entry.i.i.us.1.preheader ]
  %add1.i.i.i.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.1, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp4.i.i.us.1 = icmp sgt i32 %28, %conv.i.i.us.1
  br i1 %cmp4.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

if.then.i.i.us.1:                                 ; preds = %pregion_for_entry.entry.i.i.us.1
  %add.i.i.us.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1
  %idxprom.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.1
  %142 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %mul6.i.i.us.1 = fmul float %32, %142
  store float %mul6.i.i.us.1, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.then.i.i.us.1, %pregion_for_entry.entry.i.i.us.1
  %143 = or i64 %_local_id_x.i.0.us.1, 1
  %add1.i.i.i.us.1.1 = add nuw nsw i64 %143, %mul.i.i.i
  %conv.i.i.us.1.1 = trunc i64 %add1.i.i.i.us.1.1 to i32
  %cmp4.i.i.us.1.1 = icmp sgt i32 %28, %conv.i.i.us.1.1
  br i1 %cmp4.i.i.us.1.1, label %if.then.i.i.us.1.1, label %if.end.i.i.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.i.i.us.1.3
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph49, %pregion_for_end.i.i
  %144 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.2 = or i32 %144, 2
  %cmp.i.i.2 = icmp sgt i32 %20, %conv2.i.i.2
  %mul.i.i.2 = mul nsw i32 %28, %conv2.i.i.2
  br i1 %cmp.i.i.2, label %vector.scevcheck70, label %pregion_for_end.i.i.2

vector.scevcheck70:                               ; preds = %pregion_for_end.i.i.1
  %145 = mul i32 %28, %conv2.i.i.2
  %146 = trunc i64 %2 to i32
  %147 = shl i32 %146, 5
  %148 = add i32 %145, %147
  %149 = icmp sgt i32 %148, 2147483616
  br i1 %149, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.ph71

pregion_for_entry.entry.i.i.us.2.preheader:       ; preds = %vector.scevcheck70
  br label %pregion_for_entry.entry.i.i.us.2

vector.ph71:                                      ; preds = %vector.scevcheck70
  %broadcast.splatinsert78 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat79 = shufflevector <8 x i64> %broadcast.splatinsert78, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert80 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat81 = shufflevector <8 x i32> %broadcast.splatinsert80, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert83 = insertelement <8 x float> undef, float %32, i32 0
  %broadcast.splat84 = shufflevector <8 x float> %broadcast.splatinsert83, <8 x float> undef, <8 x i32> zeroinitializer
  %150 = trunc <8 x i64> %broadcast.splat79 to <8 x i32>
  %151 = or <8 x i32> %150, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %152 = icmp sgt <8 x i32> %broadcast.splat81, %151
  %153 = extractelement <8 x i32> %151, i32 0
  %154 = add nsw i32 %mul.i.i.2, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %16, i64 %155
  %157 = bitcast float* %156 to <8 x float>*
  %wide.masked.load82 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %157, i32 4, <8 x i1> %152, <8 x float> undef), !tbaa !12
  %158 = fmul <8 x float> %broadcast.splat84, %wide.masked.load82
  %159 = bitcast float* %156 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %158, <8 x float>* %159, i32 4, <8 x i1> %152), !tbaa !12, !llvm.access.group !16
  %160 = trunc <8 x i64> %broadcast.splat79 to <8 x i32>
  %161 = or <8 x i32> %160, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %162 = icmp sgt <8 x i32> %broadcast.splat81, %161
  %163 = extractelement <8 x i32> %161, i32 0
  %164 = add nsw i32 %mul.i.i.2, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %16, i64 %165
  %167 = bitcast float* %166 to <8 x float>*
  %wide.masked.load82.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %167, i32 4, <8 x i1> %162, <8 x float> undef), !tbaa !12
  %168 = fmul <8 x float> %broadcast.splat84, %wide.masked.load82.1
  %169 = bitcast float* %166 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %168, <8 x float>* %169, i32 4, <8 x i1> %162), !tbaa !12, !llvm.access.group !16
  %170 = trunc <8 x i64> %broadcast.splat79 to <8 x i32>
  %171 = or <8 x i32> %170, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %172 = icmp sgt <8 x i32> %broadcast.splat81, %171
  %173 = extractelement <8 x i32> %171, i32 0
  %174 = add nsw i32 %mul.i.i.2, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %16, i64 %175
  %177 = bitcast float* %176 to <8 x float>*
  %wide.masked.load82.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %177, i32 4, <8 x i1> %172, <8 x float> undef), !tbaa !12
  %178 = fmul <8 x float> %broadcast.splat84, %wide.masked.load82.2
  %179 = bitcast float* %176 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %178, <8 x float>* %179, i32 4, <8 x i1> %172), !tbaa !12, !llvm.access.group !16
  %180 = trunc <8 x i64> %broadcast.splat79 to <8 x i32>
  %181 = or <8 x i32> %180, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %182 = icmp sgt <8 x i32> %broadcast.splat81, %181
  %183 = extractelement <8 x i32> %181, i32 0
  %184 = add nsw i32 %mul.i.i.2, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %16, i64 %185
  %187 = bitcast float* %186 to <8 x float>*
  %wide.masked.load82.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %187, i32 4, <8 x i1> %182, <8 x float> undef), !tbaa !12
  %188 = fmul <8 x float> %broadcast.splat84, %wide.masked.load82.3
  %189 = bitcast float* %186 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %188, <8 x float>* %189, i32 4, <8 x i1> %182), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.2:                 ; preds = %if.end.i.i.us.2.3, %pregion_for_entry.entry.i.i.us.2.preheader
  %_local_id_x.i.0.us.2 = phi i64 [ %549, %if.end.i.i.us.2.3 ], [ 0, %pregion_for_entry.entry.i.i.us.2.preheader ]
  %add1.i.i.i.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.2, %mul.i.i.i
  %conv.i.i.us.2 = trunc i64 %add1.i.i.i.us.2 to i32
  %cmp4.i.i.us.2 = icmp sgt i32 %28, %conv.i.i.us.2
  br i1 %cmp4.i.i.us.2, label %if.then.i.i.us.2, label %if.end.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %pregion_for_entry.entry.i.i.us.2
  %add.i.i.us.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2
  %idxprom.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.2
  %190 = load float, float* %arrayidx.i.i.us.2, align 4, !tbaa !12
  %mul6.i.i.us.2 = fmul float %32, %190
  store float %mul6.i.i.us.2, float* %arrayidx.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2

if.end.i.i.us.2:                                  ; preds = %if.then.i.i.us.2, %pregion_for_entry.entry.i.i.us.2
  %191 = or i64 %_local_id_x.i.0.us.2, 1
  %add1.i.i.i.us.2.1 = add nuw nsw i64 %191, %mul.i.i.i
  %conv.i.i.us.2.1 = trunc i64 %add1.i.i.i.us.2.1 to i32
  %cmp4.i.i.us.2.1 = icmp sgt i32 %28, %conv.i.i.us.2.1
  br i1 %cmp4.i.i.us.2.1, label %if.then.i.i.us.2.1, label %if.end.i.i.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.i.i.us.2.3
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph71, %pregion_for_end.i.i.1
  %192 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.3 = or i32 %192, 3
  %cmp.i.i.3 = icmp sgt i32 %20, %conv2.i.i.3
  %mul.i.i.3 = mul nsw i32 %28, %conv2.i.i.3
  br i1 %cmp.i.i.3, label %vector.scevcheck92, label %pregion_for_end.i.i.3

vector.scevcheck92:                               ; preds = %pregion_for_end.i.i.2
  %193 = mul i32 %28, %conv2.i.i.3
  %194 = trunc i64 %2 to i32
  %195 = shl i32 %194, 5
  %196 = add i32 %193, %195
  %197 = icmp sgt i32 %196, 2147483616
  br i1 %197, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.ph93

pregion_for_entry.entry.i.i.us.3.preheader:       ; preds = %vector.scevcheck92
  br label %pregion_for_entry.entry.i.i.us.3

vector.ph93:                                      ; preds = %vector.scevcheck92
  %broadcast.splatinsert100 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat101 = shufflevector <8 x i64> %broadcast.splatinsert100, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert102 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat103 = shufflevector <8 x i32> %broadcast.splatinsert102, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert105 = insertelement <8 x float> undef, float %32, i32 0
  %broadcast.splat106 = shufflevector <8 x float> %broadcast.splatinsert105, <8 x float> undef, <8 x i32> zeroinitializer
  %198 = trunc <8 x i64> %broadcast.splat101 to <8 x i32>
  %199 = or <8 x i32> %198, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %200 = icmp sgt <8 x i32> %broadcast.splat103, %199
  %201 = extractelement <8 x i32> %199, i32 0
  %202 = add nsw i32 %mul.i.i.3, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %16, i64 %203
  %205 = bitcast float* %204 to <8 x float>*
  %wide.masked.load104 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %205, i32 4, <8 x i1> %200, <8 x float> undef), !tbaa !12
  %206 = fmul <8 x float> %broadcast.splat106, %wide.masked.load104
  %207 = bitcast float* %204 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %206, <8 x float>* %207, i32 4, <8 x i1> %200), !tbaa !12, !llvm.access.group !16
  %208 = trunc <8 x i64> %broadcast.splat101 to <8 x i32>
  %209 = or <8 x i32> %208, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %210 = icmp sgt <8 x i32> %broadcast.splat103, %209
  %211 = extractelement <8 x i32> %209, i32 0
  %212 = add nsw i32 %mul.i.i.3, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %16, i64 %213
  %215 = bitcast float* %214 to <8 x float>*
  %wide.masked.load104.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %215, i32 4, <8 x i1> %210, <8 x float> undef), !tbaa !12
  %216 = fmul <8 x float> %broadcast.splat106, %wide.masked.load104.1
  %217 = bitcast float* %214 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %216, <8 x float>* %217, i32 4, <8 x i1> %210), !tbaa !12, !llvm.access.group !16
  %218 = trunc <8 x i64> %broadcast.splat101 to <8 x i32>
  %219 = or <8 x i32> %218, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %220 = icmp sgt <8 x i32> %broadcast.splat103, %219
  %221 = extractelement <8 x i32> %219, i32 0
  %222 = add nsw i32 %mul.i.i.3, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float, float* %16, i64 %223
  %225 = bitcast float* %224 to <8 x float>*
  %wide.masked.load104.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %225, i32 4, <8 x i1> %220, <8 x float> undef), !tbaa !12
  %226 = fmul <8 x float> %broadcast.splat106, %wide.masked.load104.2
  %227 = bitcast float* %224 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %226, <8 x float>* %227, i32 4, <8 x i1> %220), !tbaa !12, !llvm.access.group !16
  %228 = trunc <8 x i64> %broadcast.splat101 to <8 x i32>
  %229 = or <8 x i32> %228, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %230 = icmp sgt <8 x i32> %broadcast.splat103, %229
  %231 = extractelement <8 x i32> %229, i32 0
  %232 = add nsw i32 %mul.i.i.3, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %16, i64 %233
  %235 = bitcast float* %234 to <8 x float>*
  %wide.masked.load104.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %235, i32 4, <8 x i1> %230, <8 x float> undef), !tbaa !12
  %236 = fmul <8 x float> %broadcast.splat106, %wide.masked.load104.3
  %237 = bitcast float* %234 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %236, <8 x float>* %237, i32 4, <8 x i1> %230), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.3:                 ; preds = %if.end.i.i.us.3.3, %pregion_for_entry.entry.i.i.us.3.preheader
  %_local_id_x.i.0.us.3 = phi i64 [ %543, %if.end.i.i.us.3.3 ], [ 0, %pregion_for_entry.entry.i.i.us.3.preheader ]
  %add1.i.i.i.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.3, %mul.i.i.i
  %conv.i.i.us.3 = trunc i64 %add1.i.i.i.us.3 to i32
  %cmp4.i.i.us.3 = icmp sgt i32 %28, %conv.i.i.us.3
  br i1 %cmp4.i.i.us.3, label %if.then.i.i.us.3, label %if.end.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %pregion_for_entry.entry.i.i.us.3
  %add.i.i.us.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3
  %idxprom.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.3
  %238 = load float, float* %arrayidx.i.i.us.3, align 4, !tbaa !12
  %mul6.i.i.us.3 = fmul float %32, %238
  store float %mul6.i.i.us.3, float* %arrayidx.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3

if.end.i.i.us.3:                                  ; preds = %if.then.i.i.us.3, %pregion_for_entry.entry.i.i.us.3
  %239 = or i64 %_local_id_x.i.0.us.3, 1
  %add1.i.i.i.us.3.1 = add nuw nsw i64 %239, %mul.i.i.i
  %conv.i.i.us.3.1 = trunc i64 %add1.i.i.i.us.3.1 to i32
  %cmp4.i.i.us.3.1 = icmp sgt i32 %28, %conv.i.i.us.3.1
  br i1 %cmp4.i.i.us.3.1, label %if.then.i.i.us.3.1, label %if.end.i.i.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.i.i.us.3.3
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph93, %pregion_for_end.i.i.2
  %240 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.4 = or i32 %240, 4
  %cmp.i.i.4 = icmp sgt i32 %20, %conv2.i.i.4
  %mul.i.i.4 = mul nsw i32 %28, %conv2.i.i.4
  br i1 %cmp.i.i.4, label %vector.scevcheck114, label %pregion_for_end.i.i.4

vector.scevcheck114:                              ; preds = %pregion_for_end.i.i.3
  %241 = mul i32 %28, %conv2.i.i.4
  %242 = trunc i64 %2 to i32
  %243 = shl i32 %242, 5
  %244 = add i32 %241, %243
  %245 = icmp sgt i32 %244, 2147483616
  br i1 %245, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.ph115

pregion_for_entry.entry.i.i.us.4.preheader:       ; preds = %vector.scevcheck114
  br label %pregion_for_entry.entry.i.i.us.4

vector.ph115:                                     ; preds = %vector.scevcheck114
  %broadcast.splatinsert122 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat123 = shufflevector <8 x i64> %broadcast.splatinsert122, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert124 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat125 = shufflevector <8 x i32> %broadcast.splatinsert124, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert127 = insertelement <8 x float> undef, float %32, i32 0
  %broadcast.splat128 = shufflevector <8 x float> %broadcast.splatinsert127, <8 x float> undef, <8 x i32> zeroinitializer
  %246 = trunc <8 x i64> %broadcast.splat123 to <8 x i32>
  %247 = or <8 x i32> %246, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %248 = icmp sgt <8 x i32> %broadcast.splat125, %247
  %249 = extractelement <8 x i32> %247, i32 0
  %250 = add nsw i32 %mul.i.i.4, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %16, i64 %251
  %253 = bitcast float* %252 to <8 x float>*
  %wide.masked.load126 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %253, i32 4, <8 x i1> %248, <8 x float> undef), !tbaa !12
  %254 = fmul <8 x float> %broadcast.splat128, %wide.masked.load126
  %255 = bitcast float* %252 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %254, <8 x float>* %255, i32 4, <8 x i1> %248), !tbaa !12, !llvm.access.group !16
  %256 = trunc <8 x i64> %broadcast.splat123 to <8 x i32>
  %257 = or <8 x i32> %256, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %258 = icmp sgt <8 x i32> %broadcast.splat125, %257
  %259 = extractelement <8 x i32> %257, i32 0
  %260 = add nsw i32 %mul.i.i.4, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %16, i64 %261
  %263 = bitcast float* %262 to <8 x float>*
  %wide.masked.load126.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %263, i32 4, <8 x i1> %258, <8 x float> undef), !tbaa !12
  %264 = fmul <8 x float> %broadcast.splat128, %wide.masked.load126.1
  %265 = bitcast float* %262 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %264, <8 x float>* %265, i32 4, <8 x i1> %258), !tbaa !12, !llvm.access.group !16
  %266 = trunc <8 x i64> %broadcast.splat123 to <8 x i32>
  %267 = or <8 x i32> %266, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %268 = icmp sgt <8 x i32> %broadcast.splat125, %267
  %269 = extractelement <8 x i32> %267, i32 0
  %270 = add nsw i32 %mul.i.i.4, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %16, i64 %271
  %273 = bitcast float* %272 to <8 x float>*
  %wide.masked.load126.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %273, i32 4, <8 x i1> %268, <8 x float> undef), !tbaa !12
  %274 = fmul <8 x float> %broadcast.splat128, %wide.masked.load126.2
  %275 = bitcast float* %272 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %274, <8 x float>* %275, i32 4, <8 x i1> %268), !tbaa !12, !llvm.access.group !16
  %276 = trunc <8 x i64> %broadcast.splat123 to <8 x i32>
  %277 = or <8 x i32> %276, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %278 = icmp sgt <8 x i32> %broadcast.splat125, %277
  %279 = extractelement <8 x i32> %277, i32 0
  %280 = add nsw i32 %mul.i.i.4, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds float, float* %16, i64 %281
  %283 = bitcast float* %282 to <8 x float>*
  %wide.masked.load126.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %283, i32 4, <8 x i1> %278, <8 x float> undef), !tbaa !12
  %284 = fmul <8 x float> %broadcast.splat128, %wide.masked.load126.3
  %285 = bitcast float* %282 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %284, <8 x float>* %285, i32 4, <8 x i1> %278), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.4:                 ; preds = %if.end.i.i.us.4.3, %pregion_for_entry.entry.i.i.us.4.preheader
  %_local_id_x.i.0.us.4 = phi i64 [ %537, %if.end.i.i.us.4.3 ], [ 0, %pregion_for_entry.entry.i.i.us.4.preheader ]
  %add1.i.i.i.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.4, %mul.i.i.i
  %conv.i.i.us.4 = trunc i64 %add1.i.i.i.us.4 to i32
  %cmp4.i.i.us.4 = icmp sgt i32 %28, %conv.i.i.us.4
  br i1 %cmp4.i.i.us.4, label %if.then.i.i.us.4, label %if.end.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %pregion_for_entry.entry.i.i.us.4
  %add.i.i.us.4 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4
  %idxprom.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.4
  %286 = load float, float* %arrayidx.i.i.us.4, align 4, !tbaa !12
  %mul6.i.i.us.4 = fmul float %32, %286
  store float %mul6.i.i.us.4, float* %arrayidx.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4

if.end.i.i.us.4:                                  ; preds = %if.then.i.i.us.4, %pregion_for_entry.entry.i.i.us.4
  %287 = or i64 %_local_id_x.i.0.us.4, 1
  %add1.i.i.i.us.4.1 = add nuw nsw i64 %287, %mul.i.i.i
  %conv.i.i.us.4.1 = trunc i64 %add1.i.i.i.us.4.1 to i32
  %cmp4.i.i.us.4.1 = icmp sgt i32 %28, %conv.i.i.us.4.1
  br i1 %cmp4.i.i.us.4.1, label %if.then.i.i.us.4.1, label %if.end.i.i.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.i.i.us.4.3
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph115, %pregion_for_end.i.i.3
  %288 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.5 = or i32 %288, 5
  %cmp.i.i.5 = icmp sgt i32 %20, %conv2.i.i.5
  %mul.i.i.5 = mul nsw i32 %28, %conv2.i.i.5
  br i1 %cmp.i.i.5, label %vector.scevcheck136, label %pregion_for_end.i.i.5

vector.scevcheck136:                              ; preds = %pregion_for_end.i.i.4
  %289 = mul i32 %28, %conv2.i.i.5
  %290 = trunc i64 %2 to i32
  %291 = shl i32 %290, 5
  %292 = add i32 %289, %291
  %293 = icmp sgt i32 %292, 2147483616
  br i1 %293, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.ph137

pregion_for_entry.entry.i.i.us.5.preheader:       ; preds = %vector.scevcheck136
  br label %pregion_for_entry.entry.i.i.us.5

vector.ph137:                                     ; preds = %vector.scevcheck136
  %broadcast.splatinsert144 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat145 = shufflevector <8 x i64> %broadcast.splatinsert144, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert146 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat147 = shufflevector <8 x i32> %broadcast.splatinsert146, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <8 x float> undef, float %32, i32 0
  %broadcast.splat150 = shufflevector <8 x float> %broadcast.splatinsert149, <8 x float> undef, <8 x i32> zeroinitializer
  %294 = trunc <8 x i64> %broadcast.splat145 to <8 x i32>
  %295 = or <8 x i32> %294, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %296 = icmp sgt <8 x i32> %broadcast.splat147, %295
  %297 = extractelement <8 x i32> %295, i32 0
  %298 = add nsw i32 %mul.i.i.5, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %16, i64 %299
  %301 = bitcast float* %300 to <8 x float>*
  %wide.masked.load148 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %301, i32 4, <8 x i1> %296, <8 x float> undef), !tbaa !12
  %302 = fmul <8 x float> %broadcast.splat150, %wide.masked.load148
  %303 = bitcast float* %300 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %302, <8 x float>* %303, i32 4, <8 x i1> %296), !tbaa !12, !llvm.access.group !16
  %304 = trunc <8 x i64> %broadcast.splat145 to <8 x i32>
  %305 = or <8 x i32> %304, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %306 = icmp sgt <8 x i32> %broadcast.splat147, %305
  %307 = extractelement <8 x i32> %305, i32 0
  %308 = add nsw i32 %mul.i.i.5, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %16, i64 %309
  %311 = bitcast float* %310 to <8 x float>*
  %wide.masked.load148.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %311, i32 4, <8 x i1> %306, <8 x float> undef), !tbaa !12
  %312 = fmul <8 x float> %broadcast.splat150, %wide.masked.load148.1
  %313 = bitcast float* %310 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %312, <8 x float>* %313, i32 4, <8 x i1> %306), !tbaa !12, !llvm.access.group !16
  %314 = trunc <8 x i64> %broadcast.splat145 to <8 x i32>
  %315 = or <8 x i32> %314, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %316 = icmp sgt <8 x i32> %broadcast.splat147, %315
  %317 = extractelement <8 x i32> %315, i32 0
  %318 = add nsw i32 %mul.i.i.5, %317
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds float, float* %16, i64 %319
  %321 = bitcast float* %320 to <8 x float>*
  %wide.masked.load148.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %321, i32 4, <8 x i1> %316, <8 x float> undef), !tbaa !12
  %322 = fmul <8 x float> %broadcast.splat150, %wide.masked.load148.2
  %323 = bitcast float* %320 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %322, <8 x float>* %323, i32 4, <8 x i1> %316), !tbaa !12, !llvm.access.group !16
  %324 = trunc <8 x i64> %broadcast.splat145 to <8 x i32>
  %325 = or <8 x i32> %324, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %326 = icmp sgt <8 x i32> %broadcast.splat147, %325
  %327 = extractelement <8 x i32> %325, i32 0
  %328 = add nsw i32 %mul.i.i.5, %327
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds float, float* %16, i64 %329
  %331 = bitcast float* %330 to <8 x float>*
  %wide.masked.load148.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %331, i32 4, <8 x i1> %326, <8 x float> undef), !tbaa !12
  %332 = fmul <8 x float> %broadcast.splat150, %wide.masked.load148.3
  %333 = bitcast float* %330 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %332, <8 x float>* %333, i32 4, <8 x i1> %326), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.5:                 ; preds = %if.end.i.i.us.5.3, %pregion_for_entry.entry.i.i.us.5.preheader
  %_local_id_x.i.0.us.5 = phi i64 [ %531, %if.end.i.i.us.5.3 ], [ 0, %pregion_for_entry.entry.i.i.us.5.preheader ]
  %add1.i.i.i.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.5, %mul.i.i.i
  %conv.i.i.us.5 = trunc i64 %add1.i.i.i.us.5 to i32
  %cmp4.i.i.us.5 = icmp sgt i32 %28, %conv.i.i.us.5
  br i1 %cmp4.i.i.us.5, label %if.then.i.i.us.5, label %if.end.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %pregion_for_entry.entry.i.i.us.5
  %add.i.i.us.5 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5
  %idxprom.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.5
  %334 = load float, float* %arrayidx.i.i.us.5, align 4, !tbaa !12
  %mul6.i.i.us.5 = fmul float %32, %334
  store float %mul6.i.i.us.5, float* %arrayidx.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5

if.end.i.i.us.5:                                  ; preds = %if.then.i.i.us.5, %pregion_for_entry.entry.i.i.us.5
  %335 = or i64 %_local_id_x.i.0.us.5, 1
  %add1.i.i.i.us.5.1 = add nuw nsw i64 %335, %mul.i.i.i
  %conv.i.i.us.5.1 = trunc i64 %add1.i.i.i.us.5.1 to i32
  %cmp4.i.i.us.5.1 = icmp sgt i32 %28, %conv.i.i.us.5.1
  br i1 %cmp4.i.i.us.5.1, label %if.then.i.i.us.5.1, label %if.end.i.i.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.i.i.us.5.3
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph137, %pregion_for_end.i.i.4
  %336 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.6 = or i32 %336, 6
  %cmp.i.i.6 = icmp sgt i32 %20, %conv2.i.i.6
  %mul.i.i.6 = mul nsw i32 %28, %conv2.i.i.6
  br i1 %cmp.i.i.6, label %vector.scevcheck158, label %pregion_for_end.i.i.6

vector.scevcheck158:                              ; preds = %pregion_for_end.i.i.5
  %337 = mul i32 %28, %conv2.i.i.6
  %338 = trunc i64 %2 to i32
  %339 = shl i32 %338, 5
  %340 = add i32 %337, %339
  %341 = icmp sgt i32 %340, 2147483616
  br i1 %341, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.ph159

pregion_for_entry.entry.i.i.us.6.preheader:       ; preds = %vector.scevcheck158
  br label %pregion_for_entry.entry.i.i.us.6

vector.ph159:                                     ; preds = %vector.scevcheck158
  %broadcast.splatinsert166 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat167 = shufflevector <8 x i64> %broadcast.splatinsert166, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert168 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat169 = shufflevector <8 x i32> %broadcast.splatinsert168, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x float> undef, float %32, i32 0
  %broadcast.splat172 = shufflevector <8 x float> %broadcast.splatinsert171, <8 x float> undef, <8 x i32> zeroinitializer
  %342 = trunc <8 x i64> %broadcast.splat167 to <8 x i32>
  %343 = or <8 x i32> %342, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %344 = icmp sgt <8 x i32> %broadcast.splat169, %343
  %345 = extractelement <8 x i32> %343, i32 0
  %346 = add nsw i32 %mul.i.i.6, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds float, float* %16, i64 %347
  %349 = bitcast float* %348 to <8 x float>*
  %wide.masked.load170 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %349, i32 4, <8 x i1> %344, <8 x float> undef), !tbaa !12
  %350 = fmul <8 x float> %broadcast.splat172, %wide.masked.load170
  %351 = bitcast float* %348 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %350, <8 x float>* %351, i32 4, <8 x i1> %344), !tbaa !12, !llvm.access.group !16
  %352 = trunc <8 x i64> %broadcast.splat167 to <8 x i32>
  %353 = or <8 x i32> %352, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %354 = icmp sgt <8 x i32> %broadcast.splat169, %353
  %355 = extractelement <8 x i32> %353, i32 0
  %356 = add nsw i32 %mul.i.i.6, %355
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds float, float* %16, i64 %357
  %359 = bitcast float* %358 to <8 x float>*
  %wide.masked.load170.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %359, i32 4, <8 x i1> %354, <8 x float> undef), !tbaa !12
  %360 = fmul <8 x float> %broadcast.splat172, %wide.masked.load170.1
  %361 = bitcast float* %358 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %360, <8 x float>* %361, i32 4, <8 x i1> %354), !tbaa !12, !llvm.access.group !16
  %362 = trunc <8 x i64> %broadcast.splat167 to <8 x i32>
  %363 = or <8 x i32> %362, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %364 = icmp sgt <8 x i32> %broadcast.splat169, %363
  %365 = extractelement <8 x i32> %363, i32 0
  %366 = add nsw i32 %mul.i.i.6, %365
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds float, float* %16, i64 %367
  %369 = bitcast float* %368 to <8 x float>*
  %wide.masked.load170.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %369, i32 4, <8 x i1> %364, <8 x float> undef), !tbaa !12
  %370 = fmul <8 x float> %broadcast.splat172, %wide.masked.load170.2
  %371 = bitcast float* %368 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %370, <8 x float>* %371, i32 4, <8 x i1> %364), !tbaa !12, !llvm.access.group !16
  %372 = trunc <8 x i64> %broadcast.splat167 to <8 x i32>
  %373 = or <8 x i32> %372, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %374 = icmp sgt <8 x i32> %broadcast.splat169, %373
  %375 = extractelement <8 x i32> %373, i32 0
  %376 = add nsw i32 %mul.i.i.6, %375
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds float, float* %16, i64 %377
  %379 = bitcast float* %378 to <8 x float>*
  %wide.masked.load170.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %379, i32 4, <8 x i1> %374, <8 x float> undef), !tbaa !12
  %380 = fmul <8 x float> %broadcast.splat172, %wide.masked.load170.3
  %381 = bitcast float* %378 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %380, <8 x float>* %381, i32 4, <8 x i1> %374), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.6:                 ; preds = %if.end.i.i.us.6.3, %pregion_for_entry.entry.i.i.us.6.preheader
  %_local_id_x.i.0.us.6 = phi i64 [ %525, %if.end.i.i.us.6.3 ], [ 0, %pregion_for_entry.entry.i.i.us.6.preheader ]
  %add1.i.i.i.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.6, %mul.i.i.i
  %conv.i.i.us.6 = trunc i64 %add1.i.i.i.us.6 to i32
  %cmp4.i.i.us.6 = icmp sgt i32 %28, %conv.i.i.us.6
  br i1 %cmp4.i.i.us.6, label %if.then.i.i.us.6, label %if.end.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %pregion_for_entry.entry.i.i.us.6
  %add.i.i.us.6 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6
  %idxprom.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.6
  %382 = load float, float* %arrayidx.i.i.us.6, align 4, !tbaa !12
  %mul6.i.i.us.6 = fmul float %32, %382
  store float %mul6.i.i.us.6, float* %arrayidx.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6

if.end.i.i.us.6:                                  ; preds = %if.then.i.i.us.6, %pregion_for_entry.entry.i.i.us.6
  %383 = or i64 %_local_id_x.i.0.us.6, 1
  %add1.i.i.i.us.6.1 = add nuw nsw i64 %383, %mul.i.i.i
  %conv.i.i.us.6.1 = trunc i64 %add1.i.i.i.us.6.1 to i32
  %cmp4.i.i.us.6.1 = icmp sgt i32 %28, %conv.i.i.us.6.1
  br i1 %cmp4.i.i.us.6.1, label %if.then.i.i.us.6.1, label %if.end.i.i.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.i.i.us.6.3
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph159, %pregion_for_end.i.i.5
  %384 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.7 = or i32 %384, 7
  %cmp.i.i.7 = icmp sgt i32 %20, %conv2.i.i.7
  %mul.i.i.7 = mul nsw i32 %28, %conv2.i.i.7
  br i1 %cmp.i.i.7, label %vector.scevcheck180, label %_pocl_kernel_mm2_kernel2.exit

vector.scevcheck180:                              ; preds = %pregion_for_end.i.i.6
  %385 = mul i32 %28, %conv2.i.i.7
  %386 = trunc i64 %2 to i32
  %387 = shl i32 %386, 5
  %388 = add i32 %385, %387
  %389 = icmp sgt i32 %388, 2147483616
  br i1 %389, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.ph181

pregion_for_entry.entry.i.i.us.7.preheader:       ; preds = %vector.scevcheck180
  br label %pregion_for_entry.entry.i.i.us.7

vector.ph181:                                     ; preds = %vector.scevcheck180
  %broadcast.splatinsert188 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat189 = shufflevector <8 x i64> %broadcast.splatinsert188, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert190 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat191 = shufflevector <8 x i32> %broadcast.splatinsert190, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert193 = insertelement <8 x float> undef, float %32, i32 0
  %broadcast.splat194 = shufflevector <8 x float> %broadcast.splatinsert193, <8 x float> undef, <8 x i32> zeroinitializer
  %390 = trunc <8 x i64> %broadcast.splat189 to <8 x i32>
  %391 = or <8 x i32> %390, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %392 = icmp sgt <8 x i32> %broadcast.splat191, %391
  %393 = extractelement <8 x i32> %391, i32 0
  %394 = add nsw i32 %mul.i.i.7, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds float, float* %16, i64 %395
  %397 = bitcast float* %396 to <8 x float>*
  %wide.masked.load192 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %397, i32 4, <8 x i1> %392, <8 x float> undef), !tbaa !12
  %398 = fmul <8 x float> %broadcast.splat194, %wide.masked.load192
  %399 = bitcast float* %396 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %398, <8 x float>* %399, i32 4, <8 x i1> %392), !tbaa !12, !llvm.access.group !16
  %400 = trunc <8 x i64> %broadcast.splat189 to <8 x i32>
  %401 = or <8 x i32> %400, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %402 = icmp sgt <8 x i32> %broadcast.splat191, %401
  %403 = extractelement <8 x i32> %401, i32 0
  %404 = add nsw i32 %mul.i.i.7, %403
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds float, float* %16, i64 %405
  %407 = bitcast float* %406 to <8 x float>*
  %wide.masked.load192.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %407, i32 4, <8 x i1> %402, <8 x float> undef), !tbaa !12
  %408 = fmul <8 x float> %broadcast.splat194, %wide.masked.load192.1
  %409 = bitcast float* %406 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %408, <8 x float>* %409, i32 4, <8 x i1> %402), !tbaa !12, !llvm.access.group !16
  %410 = trunc <8 x i64> %broadcast.splat189 to <8 x i32>
  %411 = or <8 x i32> %410, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %412 = icmp sgt <8 x i32> %broadcast.splat191, %411
  %413 = extractelement <8 x i32> %411, i32 0
  %414 = add nsw i32 %mul.i.i.7, %413
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds float, float* %16, i64 %415
  %417 = bitcast float* %416 to <8 x float>*
  %wide.masked.load192.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %417, i32 4, <8 x i1> %412, <8 x float> undef), !tbaa !12
  %418 = fmul <8 x float> %broadcast.splat194, %wide.masked.load192.2
  %419 = bitcast float* %416 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %418, <8 x float>* %419, i32 4, <8 x i1> %412), !tbaa !12, !llvm.access.group !16
  %420 = trunc <8 x i64> %broadcast.splat189 to <8 x i32>
  %421 = or <8 x i32> %420, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %422 = icmp sgt <8 x i32> %broadcast.splat191, %421
  %423 = extractelement <8 x i32> %421, i32 0
  %424 = add nsw i32 %mul.i.i.7, %423
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds float, float* %16, i64 %425
  %427 = bitcast float* %426 to <8 x float>*
  %wide.masked.load192.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %427, i32 4, <8 x i1> %422, <8 x float> undef), !tbaa !12
  %428 = fmul <8 x float> %broadcast.splat194, %wide.masked.load192.3
  %429 = bitcast float* %426 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %428, <8 x float>* %429, i32 4, <8 x i1> %422), !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_mm2_kernel2.exit

pregion_for_entry.entry.i.i.us.7:                 ; preds = %if.end.i.i.us.7.3, %pregion_for_entry.entry.i.i.us.7.preheader
  %_local_id_x.i.0.us.7 = phi i64 [ %519, %if.end.i.i.us.7.3 ], [ 0, %pregion_for_entry.entry.i.i.us.7.preheader ]
  %add1.i.i.i.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.7, %mul.i.i.i
  %conv.i.i.us.7 = trunc i64 %add1.i.i.i.us.7 to i32
  %cmp4.i.i.us.7 = icmp sgt i32 %28, %conv.i.i.us.7
  br i1 %cmp4.i.i.us.7, label %if.then.i.i.us.7, label %if.end.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %pregion_for_entry.entry.i.i.us.7
  %add.i.i.us.7 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7
  %idxprom.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.7
  %430 = load float, float* %arrayidx.i.i.us.7, align 4, !tbaa !12
  %mul6.i.i.us.7 = fmul float %32, %430
  store float %mul6.i.i.us.7, float* %arrayidx.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7

if.end.i.i.us.7:                                  ; preds = %if.then.i.i.us.7, %pregion_for_entry.entry.i.i.us.7
  %431 = or i64 %_local_id_x.i.0.us.7, 1
  %add1.i.i.i.us.7.1 = add nuw nsw i64 %431, %mul.i.i.i
  %conv.i.i.us.7.1 = trunc i64 %add1.i.i.i.us.7.1 to i32
  %cmp4.i.i.us.7.1 = icmp sgt i32 %28, %conv.i.i.us.7.1
  br i1 %cmp4.i.i.us.7.1, label %if.then.i.i.us.7.1, label %if.end.i.i.us.7.1

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %if.end.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1.preheader
  %_local_id_x.i.0.us.us.1 = phi i64 [ %441, %if.end.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1.preheader ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %cmp4.i.i.us.us.1 = icmp sgt i32 %28, %conv.i.i.us.us.1
  br i1 %cmp4.i.i.us.us.1, label %if.then.i.i.us.us.1, label %if.end.i.i.us.us.1

if.then.i.i.us.us.1:                              ; preds = %pregion_for_entry.entry.i.i.us.us.1
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.1
  %432 = load float, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12
  %mul6.i.i.us.us.1 = fmul float %32, %432
  store float %mul6.i.i.us.us.1, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %433 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %if.then.i.i.us.us.1
  %indvars.iv.next.i.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %if.then.i.i.us.us.1 ]
  %434 = phi float [ %440, %for.body.i.i.us.us.1 ], [ %mul6.i.i.us.us.1, %if.then.i.i.us.us.1 ]
  %435 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %83
  %arrayidx12.i.i.us.us.1 = getelementptr inbounds float, float* %8, i64 %435
  %436 = load float, float* %arrayidx12.i.i.us.us.1, align 4, !tbaa !12
  %437 = mul nsw i64 %indvars.iv.next.i.i3.us.us.1, %33
  %438 = add nsw i64 %437, %433
  %arrayidx16.i.i.us.us.1 = getelementptr inbounds float, float* %12, i64 %438
  %439 = load float, float* %arrayidx16.i.i.us.us.1, align 4, !tbaa !12
  %440 = tail call float @llvm.fmuladd.f32(float %436, float %439, float %434) #2
  store float %440, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %if.end.i.i.us.us.1.loopexit, label %for.body.i.i.us.us.1, !llvm.loop !21

if.end.i.i.us.us.1.loopexit:                      ; preds = %for.body.i.i.us.us.1
  br label %if.end.i.i.us.us.1

if.end.i.i.us.us.1:                               ; preds = %if.end.i.i.us.us.1.loopexit, %pregion_for_entry.entry.i.i.us.us.1
  %441 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 1
  %exitcond.not.1 = icmp eq i64 %441, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us.1.loopexit, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !19

pregion_for_end.i.i.us.1.loopexit:                ; preds = %if.end.i.i.us.us.1
  br label %pregion_for_end.i.i.us.1

pregion_for_end.i.i.us.1:                         ; preds = %pregion_for_end.i.i.us.1.loopexit, %pregion_for_end.i.i.us
  %442 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %442, 2
  %cmp.i.i.us.2 = icmp sgt i32 %20, %conv2.i.i.us.2
  %mul.i.i.us.2 = mul nsw i32 %28, %conv2.i.i.us.2
  %mul9.i.i.us.2 = mul nsw i32 %24, %conv2.i.i.us.2
  %443 = sext i32 %mul9.i.i.us.2 to i64
  br i1 %cmp.i.i.us.2, label %pregion_for_entry.entry.i.i.us.us.2.preheader, label %pregion_for_end.i.i.us.2

pregion_for_entry.entry.i.i.us.us.2.preheader:    ; preds = %pregion_for_end.i.i.us.1
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %if.end.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2.preheader
  %_local_id_x.i.0.us.us.2 = phi i64 [ %453, %if.end.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2.preheader ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %cmp4.i.i.us.us.2 = icmp sgt i32 %28, %conv.i.i.us.us.2
  br i1 %cmp4.i.i.us.us.2, label %if.then.i.i.us.us.2, label %if.end.i.i.us.us.2

if.then.i.i.us.us.2:                              ; preds = %pregion_for_entry.entry.i.i.us.us.2
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.2
  %444 = load float, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12
  %mul6.i.i.us.us.2 = fmul float %32, %444
  store float %mul6.i.i.us.us.2, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %445 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %if.then.i.i.us.us.2
  %indvars.iv.next.i.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %if.then.i.i.us.us.2 ]
  %446 = phi float [ %452, %for.body.i.i.us.us.2 ], [ %mul6.i.i.us.us.2, %if.then.i.i.us.us.2 ]
  %447 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %443
  %arrayidx12.i.i.us.us.2 = getelementptr inbounds float, float* %8, i64 %447
  %448 = load float, float* %arrayidx12.i.i.us.us.2, align 4, !tbaa !12
  %449 = mul nsw i64 %indvars.iv.next.i.i3.us.us.2, %33
  %450 = add nsw i64 %449, %445
  %arrayidx16.i.i.us.us.2 = getelementptr inbounds float, float* %12, i64 %450
  %451 = load float, float* %arrayidx16.i.i.us.us.2, align 4, !tbaa !12
  %452 = tail call float @llvm.fmuladd.f32(float %448, float %451, float %446) #2
  store float %452, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %if.end.i.i.us.us.2.loopexit, label %for.body.i.i.us.us.2, !llvm.loop !21

if.end.i.i.us.us.2.loopexit:                      ; preds = %for.body.i.i.us.us.2
  br label %if.end.i.i.us.us.2

if.end.i.i.us.us.2:                               ; preds = %if.end.i.i.us.us.2.loopexit, %pregion_for_entry.entry.i.i.us.us.2
  %453 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 1
  %exitcond.not.2 = icmp eq i64 %453, 32
  br i1 %exitcond.not.2, label %pregion_for_end.i.i.us.2.loopexit, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !19

pregion_for_end.i.i.us.2.loopexit:                ; preds = %if.end.i.i.us.us.2
  br label %pregion_for_end.i.i.us.2

pregion_for_end.i.i.us.2:                         ; preds = %pregion_for_end.i.i.us.2.loopexit, %pregion_for_end.i.i.us.1
  %454 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %454, 3
  %cmp.i.i.us.3 = icmp sgt i32 %20, %conv2.i.i.us.3
  %mul.i.i.us.3 = mul nsw i32 %28, %conv2.i.i.us.3
  %mul9.i.i.us.3 = mul nsw i32 %24, %conv2.i.i.us.3
  %455 = sext i32 %mul9.i.i.us.3 to i64
  br i1 %cmp.i.i.us.3, label %pregion_for_entry.entry.i.i.us.us.3.preheader, label %pregion_for_end.i.i.us.3

pregion_for_entry.entry.i.i.us.us.3.preheader:    ; preds = %pregion_for_end.i.i.us.2
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %if.end.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3.preheader
  %_local_id_x.i.0.us.us.3 = phi i64 [ %465, %if.end.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3.preheader ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %cmp4.i.i.us.us.3 = icmp sgt i32 %28, %conv.i.i.us.us.3
  br i1 %cmp4.i.i.us.us.3, label %if.then.i.i.us.us.3, label %if.end.i.i.us.us.3

if.then.i.i.us.us.3:                              ; preds = %pregion_for_entry.entry.i.i.us.us.3
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.3
  %456 = load float, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12
  %mul6.i.i.us.us.3 = fmul float %32, %456
  store float %mul6.i.i.us.us.3, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %457 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %if.then.i.i.us.us.3
  %indvars.iv.next.i.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %if.then.i.i.us.us.3 ]
  %458 = phi float [ %464, %for.body.i.i.us.us.3 ], [ %mul6.i.i.us.us.3, %if.then.i.i.us.us.3 ]
  %459 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %455
  %arrayidx12.i.i.us.us.3 = getelementptr inbounds float, float* %8, i64 %459
  %460 = load float, float* %arrayidx12.i.i.us.us.3, align 4, !tbaa !12
  %461 = mul nsw i64 %indvars.iv.next.i.i3.us.us.3, %33
  %462 = add nsw i64 %461, %457
  %arrayidx16.i.i.us.us.3 = getelementptr inbounds float, float* %12, i64 %462
  %463 = load float, float* %arrayidx16.i.i.us.us.3, align 4, !tbaa !12
  %464 = tail call float @llvm.fmuladd.f32(float %460, float %463, float %458) #2
  store float %464, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %if.end.i.i.us.us.3.loopexit, label %for.body.i.i.us.us.3, !llvm.loop !21

if.end.i.i.us.us.3.loopexit:                      ; preds = %for.body.i.i.us.us.3
  br label %if.end.i.i.us.us.3

if.end.i.i.us.us.3:                               ; preds = %if.end.i.i.us.us.3.loopexit, %pregion_for_entry.entry.i.i.us.us.3
  %465 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 1
  %exitcond.not.3 = icmp eq i64 %465, 32
  br i1 %exitcond.not.3, label %pregion_for_end.i.i.us.3.loopexit, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !19

pregion_for_end.i.i.us.3.loopexit:                ; preds = %if.end.i.i.us.us.3
  br label %pregion_for_end.i.i.us.3

pregion_for_end.i.i.us.3:                         ; preds = %pregion_for_end.i.i.us.3.loopexit, %pregion_for_end.i.i.us.2
  %466 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %466, 4
  %cmp.i.i.us.4 = icmp sgt i32 %20, %conv2.i.i.us.4
  %mul.i.i.us.4 = mul nsw i32 %28, %conv2.i.i.us.4
  %mul9.i.i.us.4 = mul nsw i32 %24, %conv2.i.i.us.4
  %467 = sext i32 %mul9.i.i.us.4 to i64
  br i1 %cmp.i.i.us.4, label %pregion_for_entry.entry.i.i.us.us.4.preheader, label %pregion_for_end.i.i.us.4

pregion_for_entry.entry.i.i.us.us.4.preheader:    ; preds = %pregion_for_end.i.i.us.3
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %if.end.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4.preheader
  %_local_id_x.i.0.us.us.4 = phi i64 [ %477, %if.end.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4.preheader ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %cmp4.i.i.us.us.4 = icmp sgt i32 %28, %conv.i.i.us.us.4
  br i1 %cmp4.i.i.us.us.4, label %if.then.i.i.us.us.4, label %if.end.i.i.us.us.4

if.then.i.i.us.us.4:                              ; preds = %pregion_for_entry.entry.i.i.us.us.4
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.4
  %468 = load float, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12
  %mul6.i.i.us.us.4 = fmul float %32, %468
  store float %mul6.i.i.us.us.4, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %469 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %if.then.i.i.us.us.4
  %indvars.iv.next.i.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %if.then.i.i.us.us.4 ]
  %470 = phi float [ %476, %for.body.i.i.us.us.4 ], [ %mul6.i.i.us.us.4, %if.then.i.i.us.us.4 ]
  %471 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %467
  %arrayidx12.i.i.us.us.4 = getelementptr inbounds float, float* %8, i64 %471
  %472 = load float, float* %arrayidx12.i.i.us.us.4, align 4, !tbaa !12
  %473 = mul nsw i64 %indvars.iv.next.i.i3.us.us.4, %33
  %474 = add nsw i64 %473, %469
  %arrayidx16.i.i.us.us.4 = getelementptr inbounds float, float* %12, i64 %474
  %475 = load float, float* %arrayidx16.i.i.us.us.4, align 4, !tbaa !12
  %476 = tail call float @llvm.fmuladd.f32(float %472, float %475, float %470) #2
  store float %476, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %if.end.i.i.us.us.4.loopexit, label %for.body.i.i.us.us.4, !llvm.loop !21

if.end.i.i.us.us.4.loopexit:                      ; preds = %for.body.i.i.us.us.4
  br label %if.end.i.i.us.us.4

if.end.i.i.us.us.4:                               ; preds = %if.end.i.i.us.us.4.loopexit, %pregion_for_entry.entry.i.i.us.us.4
  %477 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 1
  %exitcond.not.4 = icmp eq i64 %477, 32
  br i1 %exitcond.not.4, label %pregion_for_end.i.i.us.4.loopexit, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !19

pregion_for_end.i.i.us.4.loopexit:                ; preds = %if.end.i.i.us.us.4
  br label %pregion_for_end.i.i.us.4

pregion_for_end.i.i.us.4:                         ; preds = %pregion_for_end.i.i.us.4.loopexit, %pregion_for_end.i.i.us.3
  %478 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %478, 5
  %cmp.i.i.us.5 = icmp sgt i32 %20, %conv2.i.i.us.5
  %mul.i.i.us.5 = mul nsw i32 %28, %conv2.i.i.us.5
  %mul9.i.i.us.5 = mul nsw i32 %24, %conv2.i.i.us.5
  %479 = sext i32 %mul9.i.i.us.5 to i64
  br i1 %cmp.i.i.us.5, label %pregion_for_entry.entry.i.i.us.us.5.preheader, label %pregion_for_end.i.i.us.5

pregion_for_entry.entry.i.i.us.us.5.preheader:    ; preds = %pregion_for_end.i.i.us.4
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %if.end.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5.preheader
  %_local_id_x.i.0.us.us.5 = phi i64 [ %489, %if.end.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5.preheader ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %cmp4.i.i.us.us.5 = icmp sgt i32 %28, %conv.i.i.us.us.5
  br i1 %cmp4.i.i.us.us.5, label %if.then.i.i.us.us.5, label %if.end.i.i.us.us.5

if.then.i.i.us.us.5:                              ; preds = %pregion_for_entry.entry.i.i.us.us.5
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.5
  %480 = load float, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12
  %mul6.i.i.us.us.5 = fmul float %32, %480
  store float %mul6.i.i.us.us.5, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %481 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %if.then.i.i.us.us.5
  %indvars.iv.next.i.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %if.then.i.i.us.us.5 ]
  %482 = phi float [ %488, %for.body.i.i.us.us.5 ], [ %mul6.i.i.us.us.5, %if.then.i.i.us.us.5 ]
  %483 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %479
  %arrayidx12.i.i.us.us.5 = getelementptr inbounds float, float* %8, i64 %483
  %484 = load float, float* %arrayidx12.i.i.us.us.5, align 4, !tbaa !12
  %485 = mul nsw i64 %indvars.iv.next.i.i3.us.us.5, %33
  %486 = add nsw i64 %485, %481
  %arrayidx16.i.i.us.us.5 = getelementptr inbounds float, float* %12, i64 %486
  %487 = load float, float* %arrayidx16.i.i.us.us.5, align 4, !tbaa !12
  %488 = tail call float @llvm.fmuladd.f32(float %484, float %487, float %482) #2
  store float %488, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %if.end.i.i.us.us.5.loopexit, label %for.body.i.i.us.us.5, !llvm.loop !21

if.end.i.i.us.us.5.loopexit:                      ; preds = %for.body.i.i.us.us.5
  br label %if.end.i.i.us.us.5

if.end.i.i.us.us.5:                               ; preds = %if.end.i.i.us.us.5.loopexit, %pregion_for_entry.entry.i.i.us.us.5
  %489 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 1
  %exitcond.not.5 = icmp eq i64 %489, 32
  br i1 %exitcond.not.5, label %pregion_for_end.i.i.us.5.loopexit, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !19

pregion_for_end.i.i.us.5.loopexit:                ; preds = %if.end.i.i.us.us.5
  br label %pregion_for_end.i.i.us.5

pregion_for_end.i.i.us.5:                         ; preds = %pregion_for_end.i.i.us.5.loopexit, %pregion_for_end.i.i.us.4
  %490 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %490, 6
  %cmp.i.i.us.6 = icmp sgt i32 %20, %conv2.i.i.us.6
  %mul.i.i.us.6 = mul nsw i32 %28, %conv2.i.i.us.6
  %mul9.i.i.us.6 = mul nsw i32 %24, %conv2.i.i.us.6
  %491 = sext i32 %mul9.i.i.us.6 to i64
  br i1 %cmp.i.i.us.6, label %pregion_for_entry.entry.i.i.us.us.6.preheader, label %pregion_for_end.i.i.us.6

pregion_for_entry.entry.i.i.us.us.6.preheader:    ; preds = %pregion_for_end.i.i.us.5
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %if.end.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6.preheader
  %_local_id_x.i.0.us.us.6 = phi i64 [ %501, %if.end.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6.preheader ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %cmp4.i.i.us.us.6 = icmp sgt i32 %28, %conv.i.i.us.us.6
  br i1 %cmp4.i.i.us.us.6, label %if.then.i.i.us.us.6, label %if.end.i.i.us.us.6

if.then.i.i.us.us.6:                              ; preds = %pregion_for_entry.entry.i.i.us.us.6
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.6
  %492 = load float, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12
  %mul6.i.i.us.us.6 = fmul float %32, %492
  store float %mul6.i.i.us.us.6, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %493 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %if.then.i.i.us.us.6
  %indvars.iv.next.i.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %if.then.i.i.us.us.6 ]
  %494 = phi float [ %500, %for.body.i.i.us.us.6 ], [ %mul6.i.i.us.us.6, %if.then.i.i.us.us.6 ]
  %495 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %491
  %arrayidx12.i.i.us.us.6 = getelementptr inbounds float, float* %8, i64 %495
  %496 = load float, float* %arrayidx12.i.i.us.us.6, align 4, !tbaa !12
  %497 = mul nsw i64 %indvars.iv.next.i.i3.us.us.6, %33
  %498 = add nsw i64 %497, %493
  %arrayidx16.i.i.us.us.6 = getelementptr inbounds float, float* %12, i64 %498
  %499 = load float, float* %arrayidx16.i.i.us.us.6, align 4, !tbaa !12
  %500 = tail call float @llvm.fmuladd.f32(float %496, float %499, float %494) #2
  store float %500, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %if.end.i.i.us.us.6.loopexit, label %for.body.i.i.us.us.6, !llvm.loop !21

if.end.i.i.us.us.6.loopexit:                      ; preds = %for.body.i.i.us.us.6
  br label %if.end.i.i.us.us.6

if.end.i.i.us.us.6:                               ; preds = %if.end.i.i.us.us.6.loopexit, %pregion_for_entry.entry.i.i.us.us.6
  %501 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 1
  %exitcond.not.6 = icmp eq i64 %501, 32
  br i1 %exitcond.not.6, label %pregion_for_end.i.i.us.6.loopexit, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !19

pregion_for_end.i.i.us.6.loopexit:                ; preds = %if.end.i.i.us.us.6
  br label %pregion_for_end.i.i.us.6

pregion_for_end.i.i.us.6:                         ; preds = %pregion_for_end.i.i.us.6.loopexit, %pregion_for_end.i.i.us.5
  %502 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %502, 7
  %cmp.i.i.us.7 = icmp sgt i32 %20, %conv2.i.i.us.7
  %mul.i.i.us.7 = mul nsw i32 %28, %conv2.i.i.us.7
  %mul9.i.i.us.7 = mul nsw i32 %24, %conv2.i.i.us.7
  %503 = sext i32 %mul9.i.i.us.7 to i64
  br i1 %cmp.i.i.us.7, label %pregion_for_entry.entry.i.i.us.us.7.preheader, label %_pocl_kernel_mm2_kernel2.exit

pregion_for_entry.entry.i.i.us.us.7.preheader:    ; preds = %pregion_for_end.i.i.us.6
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %if.end.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7.preheader
  %_local_id_x.i.0.us.us.7 = phi i64 [ %513, %if.end.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7.preheader ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %cmp4.i.i.us.us.7 = icmp sgt i32 %28, %conv.i.i.us.us.7
  br i1 %cmp4.i.i.us.us.7, label %if.then.i.i.us.us.7, label %if.end.i.i.us.us.7

if.then.i.i.us.us.7:                              ; preds = %pregion_for_entry.entry.i.i.us.us.7
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.7
  %504 = load float, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12
  %mul6.i.i.us.us.7 = fmul float %32, %504
  store float %mul6.i.i.us.us.7, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %505 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %if.then.i.i.us.us.7
  %indvars.iv.next.i.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %if.then.i.i.us.us.7 ]
  %506 = phi float [ %512, %for.body.i.i.us.us.7 ], [ %mul6.i.i.us.us.7, %if.then.i.i.us.us.7 ]
  %507 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %503
  %arrayidx12.i.i.us.us.7 = getelementptr inbounds float, float* %8, i64 %507
  %508 = load float, float* %arrayidx12.i.i.us.us.7, align 4, !tbaa !12
  %509 = mul nsw i64 %indvars.iv.next.i.i3.us.us.7, %33
  %510 = add nsw i64 %509, %505
  %arrayidx16.i.i.us.us.7 = getelementptr inbounds float, float* %12, i64 %510
  %511 = load float, float* %arrayidx16.i.i.us.us.7, align 4, !tbaa !12
  %512 = tail call float @llvm.fmuladd.f32(float %508, float %511, float %506) #2
  store float %512, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %if.end.i.i.us.us.7.loopexit, label %for.body.i.i.us.us.7, !llvm.loop !21

if.end.i.i.us.us.7.loopexit:                      ; preds = %for.body.i.i.us.us.7
  br label %if.end.i.i.us.us.7

if.end.i.i.us.us.7:                               ; preds = %if.end.i.i.us.us.7.loopexit, %pregion_for_entry.entry.i.i.us.us.7
  %513 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 1
  %exitcond.not.7 = icmp eq i64 %513, 32
  br i1 %exitcond.not.7, label %_pocl_kernel_mm2_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !19

if.then.i.i.us.7.1:                               ; preds = %if.end.i.i.us.7
  %add.i.i.us.7.1 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.1
  %idxprom.i.i.us.7.1 = sext i32 %add.i.i.us.7.1 to i64
  %arrayidx.i.i.us.7.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.7.1
  %514 = load float, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12
  %mul6.i.i.us.7.1 = fmul float %32, %514
  store float %mul6.i.i.us.7.1, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.1

if.end.i.i.us.7.1:                                ; preds = %if.then.i.i.us.7.1, %if.end.i.i.us.7
  %515 = or i64 %_local_id_x.i.0.us.7, 2
  %add1.i.i.i.us.7.2 = add nuw nsw i64 %515, %mul.i.i.i
  %conv.i.i.us.7.2 = trunc i64 %add1.i.i.i.us.7.2 to i32
  %cmp4.i.i.us.7.2 = icmp sgt i32 %28, %conv.i.i.us.7.2
  br i1 %cmp4.i.i.us.7.2, label %if.then.i.i.us.7.2, label %if.end.i.i.us.7.2

if.then.i.i.us.7.2:                               ; preds = %if.end.i.i.us.7.1
  %add.i.i.us.7.2 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.2
  %idxprom.i.i.us.7.2 = sext i32 %add.i.i.us.7.2 to i64
  %arrayidx.i.i.us.7.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.7.2
  %516 = load float, float* %arrayidx.i.i.us.7.2, align 4, !tbaa !12
  %mul6.i.i.us.7.2 = fmul float %32, %516
  store float %mul6.i.i.us.7.2, float* %arrayidx.i.i.us.7.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.2

if.end.i.i.us.7.2:                                ; preds = %if.then.i.i.us.7.2, %if.end.i.i.us.7.1
  %517 = or i64 %_local_id_x.i.0.us.7, 3
  %add1.i.i.i.us.7.3 = add nuw nsw i64 %517, %mul.i.i.i
  %conv.i.i.us.7.3 = trunc i64 %add1.i.i.i.us.7.3 to i32
  %cmp4.i.i.us.7.3 = icmp sgt i32 %28, %conv.i.i.us.7.3
  br i1 %cmp4.i.i.us.7.3, label %if.then.i.i.us.7.3, label %if.end.i.i.us.7.3

if.then.i.i.us.7.3:                               ; preds = %if.end.i.i.us.7.2
  %add.i.i.us.7.3 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.3
  %idxprom.i.i.us.7.3 = sext i32 %add.i.i.us.7.3 to i64
  %arrayidx.i.i.us.7.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.7.3
  %518 = load float, float* %arrayidx.i.i.us.7.3, align 4, !tbaa !12
  %mul6.i.i.us.7.3 = fmul float %32, %518
  store float %mul6.i.i.us.7.3, float* %arrayidx.i.i.us.7.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.3

if.end.i.i.us.7.3:                                ; preds = %if.then.i.i.us.7.3, %if.end.i.i.us.7.2
  %519 = add nuw nsw i64 %_local_id_x.i.0.us.7, 4
  %exitcond33.7.not.3 = icmp eq i64 %519, 32
  br i1 %exitcond33.7.not.3, label %_pocl_kernel_mm2_kernel2.exit.loopexit237, label %pregion_for_entry.entry.i.i.us.7, !llvm.loop !32

if.then.i.i.us.6.1:                               ; preds = %if.end.i.i.us.6
  %add.i.i.us.6.1 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.1
  %idxprom.i.i.us.6.1 = sext i32 %add.i.i.us.6.1 to i64
  %arrayidx.i.i.us.6.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.6.1
  %520 = load float, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12
  %mul6.i.i.us.6.1 = fmul float %32, %520
  store float %mul6.i.i.us.6.1, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.1

if.end.i.i.us.6.1:                                ; preds = %if.then.i.i.us.6.1, %if.end.i.i.us.6
  %521 = or i64 %_local_id_x.i.0.us.6, 2
  %add1.i.i.i.us.6.2 = add nuw nsw i64 %521, %mul.i.i.i
  %conv.i.i.us.6.2 = trunc i64 %add1.i.i.i.us.6.2 to i32
  %cmp4.i.i.us.6.2 = icmp sgt i32 %28, %conv.i.i.us.6.2
  br i1 %cmp4.i.i.us.6.2, label %if.then.i.i.us.6.2, label %if.end.i.i.us.6.2

if.then.i.i.us.6.2:                               ; preds = %if.end.i.i.us.6.1
  %add.i.i.us.6.2 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.2
  %idxprom.i.i.us.6.2 = sext i32 %add.i.i.us.6.2 to i64
  %arrayidx.i.i.us.6.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.6.2
  %522 = load float, float* %arrayidx.i.i.us.6.2, align 4, !tbaa !12
  %mul6.i.i.us.6.2 = fmul float %32, %522
  store float %mul6.i.i.us.6.2, float* %arrayidx.i.i.us.6.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.2

if.end.i.i.us.6.2:                                ; preds = %if.then.i.i.us.6.2, %if.end.i.i.us.6.1
  %523 = or i64 %_local_id_x.i.0.us.6, 3
  %add1.i.i.i.us.6.3 = add nuw nsw i64 %523, %mul.i.i.i
  %conv.i.i.us.6.3 = trunc i64 %add1.i.i.i.us.6.3 to i32
  %cmp4.i.i.us.6.3 = icmp sgt i32 %28, %conv.i.i.us.6.3
  br i1 %cmp4.i.i.us.6.3, label %if.then.i.i.us.6.3, label %if.end.i.i.us.6.3

if.then.i.i.us.6.3:                               ; preds = %if.end.i.i.us.6.2
  %add.i.i.us.6.3 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.3
  %idxprom.i.i.us.6.3 = sext i32 %add.i.i.us.6.3 to i64
  %arrayidx.i.i.us.6.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.6.3
  %524 = load float, float* %arrayidx.i.i.us.6.3, align 4, !tbaa !12
  %mul6.i.i.us.6.3 = fmul float %32, %524
  store float %mul6.i.i.us.6.3, float* %arrayidx.i.i.us.6.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.3

if.end.i.i.us.6.3:                                ; preds = %if.then.i.i.us.6.3, %if.end.i.i.us.6.2
  %525 = add nuw nsw i64 %_local_id_x.i.0.us.6, 4
  %exitcond33.6.not.3 = icmp eq i64 %525, 32
  br i1 %exitcond33.6.not.3, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.6, !llvm.loop !33

if.then.i.i.us.5.1:                               ; preds = %if.end.i.i.us.5
  %add.i.i.us.5.1 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.1
  %idxprom.i.i.us.5.1 = sext i32 %add.i.i.us.5.1 to i64
  %arrayidx.i.i.us.5.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.5.1
  %526 = load float, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12
  %mul6.i.i.us.5.1 = fmul float %32, %526
  store float %mul6.i.i.us.5.1, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.1

if.end.i.i.us.5.1:                                ; preds = %if.then.i.i.us.5.1, %if.end.i.i.us.5
  %527 = or i64 %_local_id_x.i.0.us.5, 2
  %add1.i.i.i.us.5.2 = add nuw nsw i64 %527, %mul.i.i.i
  %conv.i.i.us.5.2 = trunc i64 %add1.i.i.i.us.5.2 to i32
  %cmp4.i.i.us.5.2 = icmp sgt i32 %28, %conv.i.i.us.5.2
  br i1 %cmp4.i.i.us.5.2, label %if.then.i.i.us.5.2, label %if.end.i.i.us.5.2

if.then.i.i.us.5.2:                               ; preds = %if.end.i.i.us.5.1
  %add.i.i.us.5.2 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.2
  %idxprom.i.i.us.5.2 = sext i32 %add.i.i.us.5.2 to i64
  %arrayidx.i.i.us.5.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.5.2
  %528 = load float, float* %arrayidx.i.i.us.5.2, align 4, !tbaa !12
  %mul6.i.i.us.5.2 = fmul float %32, %528
  store float %mul6.i.i.us.5.2, float* %arrayidx.i.i.us.5.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.2

if.end.i.i.us.5.2:                                ; preds = %if.then.i.i.us.5.2, %if.end.i.i.us.5.1
  %529 = or i64 %_local_id_x.i.0.us.5, 3
  %add1.i.i.i.us.5.3 = add nuw nsw i64 %529, %mul.i.i.i
  %conv.i.i.us.5.3 = trunc i64 %add1.i.i.i.us.5.3 to i32
  %cmp4.i.i.us.5.3 = icmp sgt i32 %28, %conv.i.i.us.5.3
  br i1 %cmp4.i.i.us.5.3, label %if.then.i.i.us.5.3, label %if.end.i.i.us.5.3

if.then.i.i.us.5.3:                               ; preds = %if.end.i.i.us.5.2
  %add.i.i.us.5.3 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.3
  %idxprom.i.i.us.5.3 = sext i32 %add.i.i.us.5.3 to i64
  %arrayidx.i.i.us.5.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.5.3
  %530 = load float, float* %arrayidx.i.i.us.5.3, align 4, !tbaa !12
  %mul6.i.i.us.5.3 = fmul float %32, %530
  store float %mul6.i.i.us.5.3, float* %arrayidx.i.i.us.5.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.3

if.end.i.i.us.5.3:                                ; preds = %if.then.i.i.us.5.3, %if.end.i.i.us.5.2
  %531 = add nuw nsw i64 %_local_id_x.i.0.us.5, 4
  %exitcond33.5.not.3 = icmp eq i64 %531, 32
  br i1 %exitcond33.5.not.3, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.5, !llvm.loop !34

if.then.i.i.us.4.1:                               ; preds = %if.end.i.i.us.4
  %add.i.i.us.4.1 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.1
  %idxprom.i.i.us.4.1 = sext i32 %add.i.i.us.4.1 to i64
  %arrayidx.i.i.us.4.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.4.1
  %532 = load float, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12
  %mul6.i.i.us.4.1 = fmul float %32, %532
  store float %mul6.i.i.us.4.1, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.1

if.end.i.i.us.4.1:                                ; preds = %if.then.i.i.us.4.1, %if.end.i.i.us.4
  %533 = or i64 %_local_id_x.i.0.us.4, 2
  %add1.i.i.i.us.4.2 = add nuw nsw i64 %533, %mul.i.i.i
  %conv.i.i.us.4.2 = trunc i64 %add1.i.i.i.us.4.2 to i32
  %cmp4.i.i.us.4.2 = icmp sgt i32 %28, %conv.i.i.us.4.2
  br i1 %cmp4.i.i.us.4.2, label %if.then.i.i.us.4.2, label %if.end.i.i.us.4.2

if.then.i.i.us.4.2:                               ; preds = %if.end.i.i.us.4.1
  %add.i.i.us.4.2 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.2
  %idxprom.i.i.us.4.2 = sext i32 %add.i.i.us.4.2 to i64
  %arrayidx.i.i.us.4.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.4.2
  %534 = load float, float* %arrayidx.i.i.us.4.2, align 4, !tbaa !12
  %mul6.i.i.us.4.2 = fmul float %32, %534
  store float %mul6.i.i.us.4.2, float* %arrayidx.i.i.us.4.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.2

if.end.i.i.us.4.2:                                ; preds = %if.then.i.i.us.4.2, %if.end.i.i.us.4.1
  %535 = or i64 %_local_id_x.i.0.us.4, 3
  %add1.i.i.i.us.4.3 = add nuw nsw i64 %535, %mul.i.i.i
  %conv.i.i.us.4.3 = trunc i64 %add1.i.i.i.us.4.3 to i32
  %cmp4.i.i.us.4.3 = icmp sgt i32 %28, %conv.i.i.us.4.3
  br i1 %cmp4.i.i.us.4.3, label %if.then.i.i.us.4.3, label %if.end.i.i.us.4.3

if.then.i.i.us.4.3:                               ; preds = %if.end.i.i.us.4.2
  %add.i.i.us.4.3 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.3
  %idxprom.i.i.us.4.3 = sext i32 %add.i.i.us.4.3 to i64
  %arrayidx.i.i.us.4.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.4.3
  %536 = load float, float* %arrayidx.i.i.us.4.3, align 4, !tbaa !12
  %mul6.i.i.us.4.3 = fmul float %32, %536
  store float %mul6.i.i.us.4.3, float* %arrayidx.i.i.us.4.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.3

if.end.i.i.us.4.3:                                ; preds = %if.then.i.i.us.4.3, %if.end.i.i.us.4.2
  %537 = add nuw nsw i64 %_local_id_x.i.0.us.4, 4
  %exitcond33.4.not.3 = icmp eq i64 %537, 32
  br i1 %exitcond33.4.not.3, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.4, !llvm.loop !35

if.then.i.i.us.3.1:                               ; preds = %if.end.i.i.us.3
  %add.i.i.us.3.1 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.1
  %idxprom.i.i.us.3.1 = sext i32 %add.i.i.us.3.1 to i64
  %arrayidx.i.i.us.3.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.3.1
  %538 = load float, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12
  %mul6.i.i.us.3.1 = fmul float %32, %538
  store float %mul6.i.i.us.3.1, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.1

if.end.i.i.us.3.1:                                ; preds = %if.then.i.i.us.3.1, %if.end.i.i.us.3
  %539 = or i64 %_local_id_x.i.0.us.3, 2
  %add1.i.i.i.us.3.2 = add nuw nsw i64 %539, %mul.i.i.i
  %conv.i.i.us.3.2 = trunc i64 %add1.i.i.i.us.3.2 to i32
  %cmp4.i.i.us.3.2 = icmp sgt i32 %28, %conv.i.i.us.3.2
  br i1 %cmp4.i.i.us.3.2, label %if.then.i.i.us.3.2, label %if.end.i.i.us.3.2

if.then.i.i.us.3.2:                               ; preds = %if.end.i.i.us.3.1
  %add.i.i.us.3.2 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.2
  %idxprom.i.i.us.3.2 = sext i32 %add.i.i.us.3.2 to i64
  %arrayidx.i.i.us.3.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.3.2
  %540 = load float, float* %arrayidx.i.i.us.3.2, align 4, !tbaa !12
  %mul6.i.i.us.3.2 = fmul float %32, %540
  store float %mul6.i.i.us.3.2, float* %arrayidx.i.i.us.3.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.2

if.end.i.i.us.3.2:                                ; preds = %if.then.i.i.us.3.2, %if.end.i.i.us.3.1
  %541 = or i64 %_local_id_x.i.0.us.3, 3
  %add1.i.i.i.us.3.3 = add nuw nsw i64 %541, %mul.i.i.i
  %conv.i.i.us.3.3 = trunc i64 %add1.i.i.i.us.3.3 to i32
  %cmp4.i.i.us.3.3 = icmp sgt i32 %28, %conv.i.i.us.3.3
  br i1 %cmp4.i.i.us.3.3, label %if.then.i.i.us.3.3, label %if.end.i.i.us.3.3

if.then.i.i.us.3.3:                               ; preds = %if.end.i.i.us.3.2
  %add.i.i.us.3.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.3
  %idxprom.i.i.us.3.3 = sext i32 %add.i.i.us.3.3 to i64
  %arrayidx.i.i.us.3.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.3.3
  %542 = load float, float* %arrayidx.i.i.us.3.3, align 4, !tbaa !12
  %mul6.i.i.us.3.3 = fmul float %32, %542
  store float %mul6.i.i.us.3.3, float* %arrayidx.i.i.us.3.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.3

if.end.i.i.us.3.3:                                ; preds = %if.then.i.i.us.3.3, %if.end.i.i.us.3.2
  %543 = add nuw nsw i64 %_local_id_x.i.0.us.3, 4
  %exitcond33.3.not.3 = icmp eq i64 %543, 32
  br i1 %exitcond33.3.not.3, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.3, !llvm.loop !36

if.then.i.i.us.2.1:                               ; preds = %if.end.i.i.us.2
  %add.i.i.us.2.1 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.1
  %idxprom.i.i.us.2.1 = sext i32 %add.i.i.us.2.1 to i64
  %arrayidx.i.i.us.2.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.2.1
  %544 = load float, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12
  %mul6.i.i.us.2.1 = fmul float %32, %544
  store float %mul6.i.i.us.2.1, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.1

if.end.i.i.us.2.1:                                ; preds = %if.then.i.i.us.2.1, %if.end.i.i.us.2
  %545 = or i64 %_local_id_x.i.0.us.2, 2
  %add1.i.i.i.us.2.2 = add nuw nsw i64 %545, %mul.i.i.i
  %conv.i.i.us.2.2 = trunc i64 %add1.i.i.i.us.2.2 to i32
  %cmp4.i.i.us.2.2 = icmp sgt i32 %28, %conv.i.i.us.2.2
  br i1 %cmp4.i.i.us.2.2, label %if.then.i.i.us.2.2, label %if.end.i.i.us.2.2

if.then.i.i.us.2.2:                               ; preds = %if.end.i.i.us.2.1
  %add.i.i.us.2.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.2
  %idxprom.i.i.us.2.2 = sext i32 %add.i.i.us.2.2 to i64
  %arrayidx.i.i.us.2.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.2.2
  %546 = load float, float* %arrayidx.i.i.us.2.2, align 4, !tbaa !12
  %mul6.i.i.us.2.2 = fmul float %32, %546
  store float %mul6.i.i.us.2.2, float* %arrayidx.i.i.us.2.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.2

if.end.i.i.us.2.2:                                ; preds = %if.then.i.i.us.2.2, %if.end.i.i.us.2.1
  %547 = or i64 %_local_id_x.i.0.us.2, 3
  %add1.i.i.i.us.2.3 = add nuw nsw i64 %547, %mul.i.i.i
  %conv.i.i.us.2.3 = trunc i64 %add1.i.i.i.us.2.3 to i32
  %cmp4.i.i.us.2.3 = icmp sgt i32 %28, %conv.i.i.us.2.3
  br i1 %cmp4.i.i.us.2.3, label %if.then.i.i.us.2.3, label %if.end.i.i.us.2.3

if.then.i.i.us.2.3:                               ; preds = %if.end.i.i.us.2.2
  %add.i.i.us.2.3 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.3
  %idxprom.i.i.us.2.3 = sext i32 %add.i.i.us.2.3 to i64
  %arrayidx.i.i.us.2.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.2.3
  %548 = load float, float* %arrayidx.i.i.us.2.3, align 4, !tbaa !12
  %mul6.i.i.us.2.3 = fmul float %32, %548
  store float %mul6.i.i.us.2.3, float* %arrayidx.i.i.us.2.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.3

if.end.i.i.us.2.3:                                ; preds = %if.then.i.i.us.2.3, %if.end.i.i.us.2.2
  %549 = add nuw nsw i64 %_local_id_x.i.0.us.2, 4
  %exitcond33.2.not.3 = icmp eq i64 %549, 32
  br i1 %exitcond33.2.not.3, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.2, !llvm.loop !37

if.then.i.i.us.1.1:                               ; preds = %if.end.i.i.us.1
  %add.i.i.us.1.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.1
  %idxprom.i.i.us.1.1 = sext i32 %add.i.i.us.1.1 to i64
  %arrayidx.i.i.us.1.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.1.1
  %550 = load float, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12
  %mul6.i.i.us.1.1 = fmul float %32, %550
  store float %mul6.i.i.us.1.1, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.1

if.end.i.i.us.1.1:                                ; preds = %if.then.i.i.us.1.1, %if.end.i.i.us.1
  %551 = or i64 %_local_id_x.i.0.us.1, 2
  %add1.i.i.i.us.1.2 = add nuw nsw i64 %551, %mul.i.i.i
  %conv.i.i.us.1.2 = trunc i64 %add1.i.i.i.us.1.2 to i32
  %cmp4.i.i.us.1.2 = icmp sgt i32 %28, %conv.i.i.us.1.2
  br i1 %cmp4.i.i.us.1.2, label %if.then.i.i.us.1.2, label %if.end.i.i.us.1.2

if.then.i.i.us.1.2:                               ; preds = %if.end.i.i.us.1.1
  %add.i.i.us.1.2 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.2
  %idxprom.i.i.us.1.2 = sext i32 %add.i.i.us.1.2 to i64
  %arrayidx.i.i.us.1.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.1.2
  %552 = load float, float* %arrayidx.i.i.us.1.2, align 4, !tbaa !12
  %mul6.i.i.us.1.2 = fmul float %32, %552
  store float %mul6.i.i.us.1.2, float* %arrayidx.i.i.us.1.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.2

if.end.i.i.us.1.2:                                ; preds = %if.then.i.i.us.1.2, %if.end.i.i.us.1.1
  %553 = or i64 %_local_id_x.i.0.us.1, 3
  %add1.i.i.i.us.1.3 = add nuw nsw i64 %553, %mul.i.i.i
  %conv.i.i.us.1.3 = trunc i64 %add1.i.i.i.us.1.3 to i32
  %cmp4.i.i.us.1.3 = icmp sgt i32 %28, %conv.i.i.us.1.3
  br i1 %cmp4.i.i.us.1.3, label %if.then.i.i.us.1.3, label %if.end.i.i.us.1.3

if.then.i.i.us.1.3:                               ; preds = %if.end.i.i.us.1.2
  %add.i.i.us.1.3 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.3
  %idxprom.i.i.us.1.3 = sext i32 %add.i.i.us.1.3 to i64
  %arrayidx.i.i.us.1.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.1.3
  %554 = load float, float* %arrayidx.i.i.us.1.3, align 4, !tbaa !12
  %mul6.i.i.us.1.3 = fmul float %32, %554
  store float %mul6.i.i.us.1.3, float* %arrayidx.i.i.us.1.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.3

if.end.i.i.us.1.3:                                ; preds = %if.then.i.i.us.1.3, %if.end.i.i.us.1.2
  %555 = add nuw nsw i64 %_local_id_x.i.0.us.1, 4
  %exitcond33.1.not.3 = icmp eq i64 %555, 32
  br i1 %exitcond33.1.not.3, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.1, !llvm.loop !38

if.then.i.i.us.1213:                              ; preds = %if.end.i.i.us
  %add.i.i.us.1209 = add nsw i32 %mul.i.i.us, %conv.i.i.us.1206
  %idxprom.i.i.us.1210 = sext i32 %add.i.i.us.1209 to i64
  %arrayidx.i.i.us.1211 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.1210
  %556 = load float, float* %arrayidx.i.i.us.1211, align 4, !tbaa !12
  %mul6.i.i.us.1212 = fmul float %32, %556
  store float %mul6.i.i.us.1212, float* %arrayidx.i.i.us.1211, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1214

if.end.i.i.us.1214:                               ; preds = %if.then.i.i.us.1213, %if.end.i.i.us
  %557 = or i64 %_local_id_x.i.0.us, 2
  %add1.i.i.i.us.2216 = add nuw nsw i64 %557, %mul.i.i.i
  %conv.i.i.us.2217 = trunc i64 %add1.i.i.i.us.2216 to i32
  %cmp4.i.i.us.2218 = icmp sgt i32 %28, %conv.i.i.us.2217
  br i1 %cmp4.i.i.us.2218, label %if.then.i.i.us.2224, label %if.end.i.i.us.2225

if.then.i.i.us.2224:                              ; preds = %if.end.i.i.us.1214
  %add.i.i.us.2220 = add nsw i32 %mul.i.i.us, %conv.i.i.us.2217
  %idxprom.i.i.us.2221 = sext i32 %add.i.i.us.2220 to i64
  %arrayidx.i.i.us.2222 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.2221
  %558 = load float, float* %arrayidx.i.i.us.2222, align 4, !tbaa !12
  %mul6.i.i.us.2223 = fmul float %32, %558
  store float %mul6.i.i.us.2223, float* %arrayidx.i.i.us.2222, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2225

if.end.i.i.us.2225:                               ; preds = %if.then.i.i.us.2224, %if.end.i.i.us.1214
  %559 = or i64 %_local_id_x.i.0.us, 3
  %add1.i.i.i.us.3227 = add nuw nsw i64 %559, %mul.i.i.i
  %conv.i.i.us.3228 = trunc i64 %add1.i.i.i.us.3227 to i32
  %cmp4.i.i.us.3229 = icmp sgt i32 %28, %conv.i.i.us.3228
  br i1 %cmp4.i.i.us.3229, label %if.then.i.i.us.3235, label %if.end.i.i.us.3236

if.then.i.i.us.3235:                              ; preds = %if.end.i.i.us.2225
  %add.i.i.us.3231 = add nsw i32 %mul.i.i.us, %conv.i.i.us.3228
  %idxprom.i.i.us.3232 = sext i32 %add.i.i.us.3231 to i64
  %arrayidx.i.i.us.3233 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.3232
  %560 = load float, float* %arrayidx.i.i.us.3233, align 4, !tbaa !12
  %mul6.i.i.us.3234 = fmul float %32, %560
  store float %mul6.i.i.us.3234, float* %arrayidx.i.i.us.3233, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3236

if.end.i.i.us.3236:                               ; preds = %if.then.i.i.us.3235, %if.end.i.i.us.2225
  %561 = add nuw nsw i64 %_local_id_x.i.0.us, 4
  %exitcond33.not.3 = icmp eq i64 %561, 32
  br i1 %exitcond33.not.3, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !39
}

; Function Attrs: nounwind
define void @_pocl_kernel_mm2_kernel2_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %22 = getelementptr i8*, i8** %0, i64 6
  %23 = bitcast i8** %22 to i32**
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr i8*, i8** %0, i64 8
  %27 = bitcast i8** %26 to float**
  %28 = load float*, float** %27, align 8
  %29 = load float, float* %28, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp739.i.i = icmp sgt i32 %21, 0
  %30 = sext i32 %25 to i64
  %wide.trip.count.i.i = zext i32 %21 to i64
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i.us = icmp sgt i32 %17, %conv2.i.i.us
  %mul.i.i.us = mul nsw i32 %25, %conv2.i.i.us
  br i1 %cmp739.i.i, label %pregion_for_entry.pregion_for_init.i.i.us, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  br i1 %cmp.i.i.us, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %31 = trunc i64 %3 to i32
  %32 = mul i32 %25, %31
  %33 = shl i32 %32, 3
  %34 = trunc i64 %2 to i32
  %35 = shl i32 %34, 5
  %36 = add i32 %33, %35
  %37 = icmp sgt i32 %36, 2147483616
  br i1 %37, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.ph:                                        ; preds = %vector.scevcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert37 = insertelement <8 x i32> undef, i32 %25, i32 0
  %broadcast.splat38 = shufflevector <8 x i32> %broadcast.splatinsert37, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert39 = insertelement <8 x float> undef, float %29, i32 0
  %broadcast.splat40 = shufflevector <8 x float> %broadcast.splatinsert39, <8 x float> undef, <8 x i32> zeroinitializer
  %38 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %39 = or <8 x i32> %38, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %40 = icmp sgt <8 x i32> %broadcast.splat38, %39
  %41 = extractelement <8 x i32> %39, i32 0
  %42 = add nsw i32 %mul.i.i.us, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %13, i64 %43
  %45 = bitcast float* %44 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %45, i32 4, <8 x i1> %40, <8 x float> undef), !tbaa !12
  %46 = fmul <8 x float> %broadcast.splat40, %wide.masked.load
  %47 = bitcast float* %44 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %46, <8 x float>* %47, i32 4, <8 x i1> %40), !tbaa !12, !llvm.access.group !16
  %48 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %49 = or <8 x i32> %48, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %50 = icmp sgt <8 x i32> %broadcast.splat38, %49
  %51 = extractelement <8 x i32> %49, i32 0
  %52 = add nsw i32 %mul.i.i.us, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %13, i64 %53
  %55 = bitcast float* %54 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %55, i32 4, <8 x i1> %50, <8 x float> undef), !tbaa !12
  %56 = fmul <8 x float> %broadcast.splat40, %wide.masked.load.1
  %57 = bitcast float* %54 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %56, <8 x float>* %57, i32 4, <8 x i1> %50), !tbaa !12, !llvm.access.group !16
  %58 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %59 = or <8 x i32> %58, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %60 = icmp sgt <8 x i32> %broadcast.splat38, %59
  %61 = extractelement <8 x i32> %59, i32 0
  %62 = add nsw i32 %mul.i.i.us, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %13, i64 %63
  %65 = bitcast float* %64 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %65, i32 4, <8 x i1> %60, <8 x float> undef), !tbaa !12
  %66 = fmul <8 x float> %broadcast.splat40, %wide.masked.load.2
  %67 = bitcast float* %64 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %66, <8 x float>* %67, i32 4, <8 x i1> %60), !tbaa !12, !llvm.access.group !16
  %68 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %69 = or <8 x i32> %68, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %70 = icmp sgt <8 x i32> %broadcast.splat38, %69
  %71 = extractelement <8 x i32> %69, i32 0
  %72 = add nsw i32 %mul.i.i.us, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %13, i64 %73
  %75 = bitcast float* %74 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %75, i32 4, <8 x i1> %70, <8 x float> undef), !tbaa !12
  %76 = fmul <8 x float> %broadcast.splat40, %wide.masked.load.3
  %77 = bitcast float* %74 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %76, <8 x float>* %77, i32 4, <8 x i1> %70), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

pregion_for_entry.pregion_for_init.i.i.us:        ; preds = %5
  %mul9.i.i.us = mul nsw i32 %21, %conv2.i.i.us
  %78 = sext i32 %mul9.i.i.us to i64
  br i1 %cmp.i.i.us, label %pregion_for_entry.entry.i.i.us.us.preheader, label %pregion_for_end.i.i.us

pregion_for_entry.entry.i.i.us.us.preheader:      ; preds = %pregion_for_entry.pregion_for_init.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_end.i.i.us.loopexit:                  ; preds = %if.end.i.i.us.us
  br label %pregion_for_end.i.i.us

pregion_for_end.i.i.us:                           ; preds = %pregion_for_end.i.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.i.us
  %79 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %79, 1
  %cmp.i.i.us.1 = icmp sgt i32 %17, %conv2.i.i.us.1
  %mul.i.i.us.1 = mul nsw i32 %25, %conv2.i.i.us.1
  %mul9.i.i.us.1 = mul nsw i32 %21, %conv2.i.i.us.1
  %80 = sext i32 %mul9.i.i.us.1 to i64
  br i1 %cmp.i.i.us.1, label %pregion_for_entry.entry.i.i.us.us.1.preheader, label %pregion_for_end.i.i.us.1

pregion_for_entry.entry.i.i.us.us.1.preheader:    ; preds = %pregion_for_end.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.entry.i.i.us.us:                ; preds = %if.end.i.i.us.us, %pregion_for_entry.entry.i.i.us.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ %83, %if.end.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us.preheader ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %cmp4.i.i.us.us = icmp sgt i32 %25, %conv.i.i.us.us
  br i1 %cmp4.i.i.us.us, label %if.then.i.i.us.us, label %if.end.i.i.us.us

if.then.i.i.us.us:                                ; preds = %pregion_for_entry.entry.i.i.us.us
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us
  %81 = load float, float* %arrayidx.i.i.us.us, align 4, !tbaa !12
  %mul6.i.i.us.us = fmul float %29, %81
  store float %mul6.i.i.us.us, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %82 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

if.end.i.i.us.us.loopexit:                        ; preds = %for.body.i.i.us.us
  br label %if.end.i.i.us.us

if.end.i.i.us.us:                                 ; preds = %if.end.i.i.us.us.loopexit, %pregion_for_entry.entry.i.i.us.us
  %83 = add nuw nsw i64 %_local_id_x.i.0.us.us, 1
  %exitcond.not = icmp eq i64 %83, 32
  br i1 %exitcond.not, label %pregion_for_end.i.i.us.loopexit, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !19

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %if.then.i.i.us.us
  %indvars.iv.next.i.i3.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %if.then.i.i.us.us ]
  %84 = phi float [ %90, %for.body.i.i.us.us ], [ %mul6.i.i.us.us, %if.then.i.i.us.us ]
  %85 = add nsw i64 %indvars.iv.next.i.i3.us.us, %78
  %arrayidx12.i.i.us.us = getelementptr inbounds float, float* %7, i64 %85
  %86 = load float, float* %arrayidx12.i.i.us.us, align 4, !tbaa !12
  %87 = mul nsw i64 %indvars.iv.next.i.i3.us.us, %30
  %88 = add nsw i64 %87, %82
  %arrayidx16.i.i.us.us = getelementptr inbounds float, float* %10, i64 %88
  %89 = load float, float* %arrayidx16.i.i.us.us, align 4, !tbaa !12
  %90 = tail call float @llvm.fmuladd.f32(float %86, float %89, float %84) #2
  store float %90, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i3.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %if.end.i.i.us.us.loopexit, label %for.body.i.i.us.us, !llvm.loop !21

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us.3236, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %558, %if.end.i.i.us.3236 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %25, %conv.i.i.us
  br i1 %cmp4.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add.i.i.us = add nsw i32 %mul.i.i.us, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us
  %91 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %mul6.i.i.us = fmul float %29, %91
  store float %mul6.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %92 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1205 = add nuw nsw i64 %92, %mul.i.i.i
  %conv.i.i.us.1206 = trunc i64 %add1.i.i.i.us.1205 to i32
  %cmp4.i.i.us.1207 = icmp sgt i32 %25, %conv.i.i.us.1206
  br i1 %cmp4.i.i.us.1207, label %if.then.i.i.us.1213, label %if.end.i.i.us.1214

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.i.i.us.3236
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i.preheader
  %93 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.1 = or i32 %93, 1
  %cmp.i.i.1 = icmp sgt i32 %17, %conv2.i.i.1
  %mul.i.i.1 = mul nsw i32 %25, %conv2.i.i.1
  br i1 %cmp.i.i.1, label %vector.scevcheck48, label %pregion_for_end.i.i.1

vector.scevcheck48:                               ; preds = %pregion_for_end.i.i
  %94 = mul i32 %25, %conv2.i.i.1
  %95 = trunc i64 %2 to i32
  %96 = shl i32 %95, 5
  %97 = add i32 %94, %96
  %98 = icmp sgt i32 %97, 2147483616
  br i1 %98, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.ph49

pregion_for_entry.entry.i.i.us.1.preheader:       ; preds = %vector.scevcheck48
  br label %pregion_for_entry.entry.i.i.us.1

vector.ph49:                                      ; preds = %vector.scevcheck48
  %broadcast.splatinsert56 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat57 = shufflevector <8 x i64> %broadcast.splatinsert56, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert58 = insertelement <8 x i32> undef, i32 %25, i32 0
  %broadcast.splat59 = shufflevector <8 x i32> %broadcast.splatinsert58, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert61 = insertelement <8 x float> undef, float %29, i32 0
  %broadcast.splat62 = shufflevector <8 x float> %broadcast.splatinsert61, <8 x float> undef, <8 x i32> zeroinitializer
  %99 = trunc <8 x i64> %broadcast.splat57 to <8 x i32>
  %100 = or <8 x i32> %99, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %101 = icmp sgt <8 x i32> %broadcast.splat59, %100
  %102 = extractelement <8 x i32> %100, i32 0
  %103 = add nsw i32 %mul.i.i.1, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %13, i64 %104
  %106 = bitcast float* %105 to <8 x float>*
  %wide.masked.load60 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %106, i32 4, <8 x i1> %101, <8 x float> undef), !tbaa !12
  %107 = fmul <8 x float> %broadcast.splat62, %wide.masked.load60
  %108 = bitcast float* %105 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %107, <8 x float>* %108, i32 4, <8 x i1> %101), !tbaa !12, !llvm.access.group !16
  %109 = trunc <8 x i64> %broadcast.splat57 to <8 x i32>
  %110 = or <8 x i32> %109, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %111 = icmp sgt <8 x i32> %broadcast.splat59, %110
  %112 = extractelement <8 x i32> %110, i32 0
  %113 = add nsw i32 %mul.i.i.1, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %13, i64 %114
  %116 = bitcast float* %115 to <8 x float>*
  %wide.masked.load60.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %116, i32 4, <8 x i1> %111, <8 x float> undef), !tbaa !12
  %117 = fmul <8 x float> %broadcast.splat62, %wide.masked.load60.1
  %118 = bitcast float* %115 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %117, <8 x float>* %118, i32 4, <8 x i1> %111), !tbaa !12, !llvm.access.group !16
  %119 = trunc <8 x i64> %broadcast.splat57 to <8 x i32>
  %120 = or <8 x i32> %119, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %121 = icmp sgt <8 x i32> %broadcast.splat59, %120
  %122 = extractelement <8 x i32> %120, i32 0
  %123 = add nsw i32 %mul.i.i.1, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %13, i64 %124
  %126 = bitcast float* %125 to <8 x float>*
  %wide.masked.load60.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %126, i32 4, <8 x i1> %121, <8 x float> undef), !tbaa !12
  %127 = fmul <8 x float> %broadcast.splat62, %wide.masked.load60.2
  %128 = bitcast float* %125 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %127, <8 x float>* %128, i32 4, <8 x i1> %121), !tbaa !12, !llvm.access.group !16
  %129 = trunc <8 x i64> %broadcast.splat57 to <8 x i32>
  %130 = or <8 x i32> %129, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %131 = icmp sgt <8 x i32> %broadcast.splat59, %130
  %132 = extractelement <8 x i32> %130, i32 0
  %133 = add nsw i32 %mul.i.i.1, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, float* %13, i64 %134
  %136 = bitcast float* %135 to <8 x float>*
  %wide.masked.load60.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %136, i32 4, <8 x i1> %131, <8 x float> undef), !tbaa !12
  %137 = fmul <8 x float> %broadcast.splat62, %wide.masked.load60.3
  %138 = bitcast float* %135 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %137, <8 x float>* %138, i32 4, <8 x i1> %131), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.1

_pocl_kernel_mm2_kernel2.exit.loopexit:           ; preds = %if.end.i.i.us.us.7
  br label %_pocl_kernel_mm2_kernel2.exit

_pocl_kernel_mm2_kernel2.exit.loopexit237:        ; preds = %if.end.i.i.us.7.3
  br label %_pocl_kernel_mm2_kernel2.exit

_pocl_kernel_mm2_kernel2.exit:                    ; preds = %pregion_for_end.i.i.us.6, %vector.ph181, %pregion_for_end.i.i.6, %_pocl_kernel_mm2_kernel2.exit.loopexit237, %_pocl_kernel_mm2_kernel2.exit.loopexit
  ret void

pregion_for_entry.entry.i.i.us.1:                 ; preds = %if.end.i.i.us.1.3, %pregion_for_entry.entry.i.i.us.1.preheader
  %_local_id_x.i.0.us.1 = phi i64 [ %552, %if.end.i.i.us.1.3 ], [ 0, %pregion_for_entry.entry.i.i.us.1.preheader ]
  %add1.i.i.i.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.1, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp4.i.i.us.1 = icmp sgt i32 %25, %conv.i.i.us.1
  br i1 %cmp4.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

if.then.i.i.us.1:                                 ; preds = %pregion_for_entry.entry.i.i.us.1
  %add.i.i.us.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1
  %idxprom.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.1
  %139 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %mul6.i.i.us.1 = fmul float %29, %139
  store float %mul6.i.i.us.1, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.then.i.i.us.1, %pregion_for_entry.entry.i.i.us.1
  %140 = or i64 %_local_id_x.i.0.us.1, 1
  %add1.i.i.i.us.1.1 = add nuw nsw i64 %140, %mul.i.i.i
  %conv.i.i.us.1.1 = trunc i64 %add1.i.i.i.us.1.1 to i32
  %cmp4.i.i.us.1.1 = icmp sgt i32 %25, %conv.i.i.us.1.1
  br i1 %cmp4.i.i.us.1.1, label %if.then.i.i.us.1.1, label %if.end.i.i.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.i.i.us.1.3
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph49, %pregion_for_end.i.i
  %141 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.2 = or i32 %141, 2
  %cmp.i.i.2 = icmp sgt i32 %17, %conv2.i.i.2
  %mul.i.i.2 = mul nsw i32 %25, %conv2.i.i.2
  br i1 %cmp.i.i.2, label %vector.scevcheck70, label %pregion_for_end.i.i.2

vector.scevcheck70:                               ; preds = %pregion_for_end.i.i.1
  %142 = mul i32 %25, %conv2.i.i.2
  %143 = trunc i64 %2 to i32
  %144 = shl i32 %143, 5
  %145 = add i32 %142, %144
  %146 = icmp sgt i32 %145, 2147483616
  br i1 %146, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.ph71

pregion_for_entry.entry.i.i.us.2.preheader:       ; preds = %vector.scevcheck70
  br label %pregion_for_entry.entry.i.i.us.2

vector.ph71:                                      ; preds = %vector.scevcheck70
  %broadcast.splatinsert78 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat79 = shufflevector <8 x i64> %broadcast.splatinsert78, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert80 = insertelement <8 x i32> undef, i32 %25, i32 0
  %broadcast.splat81 = shufflevector <8 x i32> %broadcast.splatinsert80, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert83 = insertelement <8 x float> undef, float %29, i32 0
  %broadcast.splat84 = shufflevector <8 x float> %broadcast.splatinsert83, <8 x float> undef, <8 x i32> zeroinitializer
  %147 = trunc <8 x i64> %broadcast.splat79 to <8 x i32>
  %148 = or <8 x i32> %147, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %149 = icmp sgt <8 x i32> %broadcast.splat81, %148
  %150 = extractelement <8 x i32> %148, i32 0
  %151 = add nsw i32 %mul.i.i.2, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %13, i64 %152
  %154 = bitcast float* %153 to <8 x float>*
  %wide.masked.load82 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %154, i32 4, <8 x i1> %149, <8 x float> undef), !tbaa !12
  %155 = fmul <8 x float> %broadcast.splat84, %wide.masked.load82
  %156 = bitcast float* %153 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %155, <8 x float>* %156, i32 4, <8 x i1> %149), !tbaa !12, !llvm.access.group !16
  %157 = trunc <8 x i64> %broadcast.splat79 to <8 x i32>
  %158 = or <8 x i32> %157, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %159 = icmp sgt <8 x i32> %broadcast.splat81, %158
  %160 = extractelement <8 x i32> %158, i32 0
  %161 = add nsw i32 %mul.i.i.2, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %13, i64 %162
  %164 = bitcast float* %163 to <8 x float>*
  %wide.masked.load82.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %164, i32 4, <8 x i1> %159, <8 x float> undef), !tbaa !12
  %165 = fmul <8 x float> %broadcast.splat84, %wide.masked.load82.1
  %166 = bitcast float* %163 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %165, <8 x float>* %166, i32 4, <8 x i1> %159), !tbaa !12, !llvm.access.group !16
  %167 = trunc <8 x i64> %broadcast.splat79 to <8 x i32>
  %168 = or <8 x i32> %167, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %169 = icmp sgt <8 x i32> %broadcast.splat81, %168
  %170 = extractelement <8 x i32> %168, i32 0
  %171 = add nsw i32 %mul.i.i.2, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %13, i64 %172
  %174 = bitcast float* %173 to <8 x float>*
  %wide.masked.load82.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %174, i32 4, <8 x i1> %169, <8 x float> undef), !tbaa !12
  %175 = fmul <8 x float> %broadcast.splat84, %wide.masked.load82.2
  %176 = bitcast float* %173 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %175, <8 x float>* %176, i32 4, <8 x i1> %169), !tbaa !12, !llvm.access.group !16
  %177 = trunc <8 x i64> %broadcast.splat79 to <8 x i32>
  %178 = or <8 x i32> %177, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %179 = icmp sgt <8 x i32> %broadcast.splat81, %178
  %180 = extractelement <8 x i32> %178, i32 0
  %181 = add nsw i32 %mul.i.i.2, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %13, i64 %182
  %184 = bitcast float* %183 to <8 x float>*
  %wide.masked.load82.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %184, i32 4, <8 x i1> %179, <8 x float> undef), !tbaa !12
  %185 = fmul <8 x float> %broadcast.splat84, %wide.masked.load82.3
  %186 = bitcast float* %183 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %185, <8 x float>* %186, i32 4, <8 x i1> %179), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.2:                 ; preds = %if.end.i.i.us.2.3, %pregion_for_entry.entry.i.i.us.2.preheader
  %_local_id_x.i.0.us.2 = phi i64 [ %546, %if.end.i.i.us.2.3 ], [ 0, %pregion_for_entry.entry.i.i.us.2.preheader ]
  %add1.i.i.i.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.2, %mul.i.i.i
  %conv.i.i.us.2 = trunc i64 %add1.i.i.i.us.2 to i32
  %cmp4.i.i.us.2 = icmp sgt i32 %25, %conv.i.i.us.2
  br i1 %cmp4.i.i.us.2, label %if.then.i.i.us.2, label %if.end.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %pregion_for_entry.entry.i.i.us.2
  %add.i.i.us.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2
  %idxprom.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.2
  %187 = load float, float* %arrayidx.i.i.us.2, align 4, !tbaa !12
  %mul6.i.i.us.2 = fmul float %29, %187
  store float %mul6.i.i.us.2, float* %arrayidx.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2

if.end.i.i.us.2:                                  ; preds = %if.then.i.i.us.2, %pregion_for_entry.entry.i.i.us.2
  %188 = or i64 %_local_id_x.i.0.us.2, 1
  %add1.i.i.i.us.2.1 = add nuw nsw i64 %188, %mul.i.i.i
  %conv.i.i.us.2.1 = trunc i64 %add1.i.i.i.us.2.1 to i32
  %cmp4.i.i.us.2.1 = icmp sgt i32 %25, %conv.i.i.us.2.1
  br i1 %cmp4.i.i.us.2.1, label %if.then.i.i.us.2.1, label %if.end.i.i.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.i.i.us.2.3
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph71, %pregion_for_end.i.i.1
  %189 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.3 = or i32 %189, 3
  %cmp.i.i.3 = icmp sgt i32 %17, %conv2.i.i.3
  %mul.i.i.3 = mul nsw i32 %25, %conv2.i.i.3
  br i1 %cmp.i.i.3, label %vector.scevcheck92, label %pregion_for_end.i.i.3

vector.scevcheck92:                               ; preds = %pregion_for_end.i.i.2
  %190 = mul i32 %25, %conv2.i.i.3
  %191 = trunc i64 %2 to i32
  %192 = shl i32 %191, 5
  %193 = add i32 %190, %192
  %194 = icmp sgt i32 %193, 2147483616
  br i1 %194, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.ph93

pregion_for_entry.entry.i.i.us.3.preheader:       ; preds = %vector.scevcheck92
  br label %pregion_for_entry.entry.i.i.us.3

vector.ph93:                                      ; preds = %vector.scevcheck92
  %broadcast.splatinsert100 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat101 = shufflevector <8 x i64> %broadcast.splatinsert100, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert102 = insertelement <8 x i32> undef, i32 %25, i32 0
  %broadcast.splat103 = shufflevector <8 x i32> %broadcast.splatinsert102, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert105 = insertelement <8 x float> undef, float %29, i32 0
  %broadcast.splat106 = shufflevector <8 x float> %broadcast.splatinsert105, <8 x float> undef, <8 x i32> zeroinitializer
  %195 = trunc <8 x i64> %broadcast.splat101 to <8 x i32>
  %196 = or <8 x i32> %195, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %197 = icmp sgt <8 x i32> %broadcast.splat103, %196
  %198 = extractelement <8 x i32> %196, i32 0
  %199 = add nsw i32 %mul.i.i.3, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %13, i64 %200
  %202 = bitcast float* %201 to <8 x float>*
  %wide.masked.load104 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %202, i32 4, <8 x i1> %197, <8 x float> undef), !tbaa !12
  %203 = fmul <8 x float> %broadcast.splat106, %wide.masked.load104
  %204 = bitcast float* %201 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %203, <8 x float>* %204, i32 4, <8 x i1> %197), !tbaa !12, !llvm.access.group !16
  %205 = trunc <8 x i64> %broadcast.splat101 to <8 x i32>
  %206 = or <8 x i32> %205, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %207 = icmp sgt <8 x i32> %broadcast.splat103, %206
  %208 = extractelement <8 x i32> %206, i32 0
  %209 = add nsw i32 %mul.i.i.3, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %13, i64 %210
  %212 = bitcast float* %211 to <8 x float>*
  %wide.masked.load104.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %212, i32 4, <8 x i1> %207, <8 x float> undef), !tbaa !12
  %213 = fmul <8 x float> %broadcast.splat106, %wide.masked.load104.1
  %214 = bitcast float* %211 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %213, <8 x float>* %214, i32 4, <8 x i1> %207), !tbaa !12, !llvm.access.group !16
  %215 = trunc <8 x i64> %broadcast.splat101 to <8 x i32>
  %216 = or <8 x i32> %215, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %217 = icmp sgt <8 x i32> %broadcast.splat103, %216
  %218 = extractelement <8 x i32> %216, i32 0
  %219 = add nsw i32 %mul.i.i.3, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %13, i64 %220
  %222 = bitcast float* %221 to <8 x float>*
  %wide.masked.load104.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %222, i32 4, <8 x i1> %217, <8 x float> undef), !tbaa !12
  %223 = fmul <8 x float> %broadcast.splat106, %wide.masked.load104.2
  %224 = bitcast float* %221 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %223, <8 x float>* %224, i32 4, <8 x i1> %217), !tbaa !12, !llvm.access.group !16
  %225 = trunc <8 x i64> %broadcast.splat101 to <8 x i32>
  %226 = or <8 x i32> %225, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %227 = icmp sgt <8 x i32> %broadcast.splat103, %226
  %228 = extractelement <8 x i32> %226, i32 0
  %229 = add nsw i32 %mul.i.i.3, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float, float* %13, i64 %230
  %232 = bitcast float* %231 to <8 x float>*
  %wide.masked.load104.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %232, i32 4, <8 x i1> %227, <8 x float> undef), !tbaa !12
  %233 = fmul <8 x float> %broadcast.splat106, %wide.masked.load104.3
  %234 = bitcast float* %231 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %233, <8 x float>* %234, i32 4, <8 x i1> %227), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.3:                 ; preds = %if.end.i.i.us.3.3, %pregion_for_entry.entry.i.i.us.3.preheader
  %_local_id_x.i.0.us.3 = phi i64 [ %540, %if.end.i.i.us.3.3 ], [ 0, %pregion_for_entry.entry.i.i.us.3.preheader ]
  %add1.i.i.i.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.3, %mul.i.i.i
  %conv.i.i.us.3 = trunc i64 %add1.i.i.i.us.3 to i32
  %cmp4.i.i.us.3 = icmp sgt i32 %25, %conv.i.i.us.3
  br i1 %cmp4.i.i.us.3, label %if.then.i.i.us.3, label %if.end.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %pregion_for_entry.entry.i.i.us.3
  %add.i.i.us.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3
  %idxprom.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.3
  %235 = load float, float* %arrayidx.i.i.us.3, align 4, !tbaa !12
  %mul6.i.i.us.3 = fmul float %29, %235
  store float %mul6.i.i.us.3, float* %arrayidx.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3

if.end.i.i.us.3:                                  ; preds = %if.then.i.i.us.3, %pregion_for_entry.entry.i.i.us.3
  %236 = or i64 %_local_id_x.i.0.us.3, 1
  %add1.i.i.i.us.3.1 = add nuw nsw i64 %236, %mul.i.i.i
  %conv.i.i.us.3.1 = trunc i64 %add1.i.i.i.us.3.1 to i32
  %cmp4.i.i.us.3.1 = icmp sgt i32 %25, %conv.i.i.us.3.1
  br i1 %cmp4.i.i.us.3.1, label %if.then.i.i.us.3.1, label %if.end.i.i.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.i.i.us.3.3
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph93, %pregion_for_end.i.i.2
  %237 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.4 = or i32 %237, 4
  %cmp.i.i.4 = icmp sgt i32 %17, %conv2.i.i.4
  %mul.i.i.4 = mul nsw i32 %25, %conv2.i.i.4
  br i1 %cmp.i.i.4, label %vector.scevcheck114, label %pregion_for_end.i.i.4

vector.scevcheck114:                              ; preds = %pregion_for_end.i.i.3
  %238 = mul i32 %25, %conv2.i.i.4
  %239 = trunc i64 %2 to i32
  %240 = shl i32 %239, 5
  %241 = add i32 %238, %240
  %242 = icmp sgt i32 %241, 2147483616
  br i1 %242, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.ph115

pregion_for_entry.entry.i.i.us.4.preheader:       ; preds = %vector.scevcheck114
  br label %pregion_for_entry.entry.i.i.us.4

vector.ph115:                                     ; preds = %vector.scevcheck114
  %broadcast.splatinsert122 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat123 = shufflevector <8 x i64> %broadcast.splatinsert122, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert124 = insertelement <8 x i32> undef, i32 %25, i32 0
  %broadcast.splat125 = shufflevector <8 x i32> %broadcast.splatinsert124, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert127 = insertelement <8 x float> undef, float %29, i32 0
  %broadcast.splat128 = shufflevector <8 x float> %broadcast.splatinsert127, <8 x float> undef, <8 x i32> zeroinitializer
  %243 = trunc <8 x i64> %broadcast.splat123 to <8 x i32>
  %244 = or <8 x i32> %243, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %245 = icmp sgt <8 x i32> %broadcast.splat125, %244
  %246 = extractelement <8 x i32> %244, i32 0
  %247 = add nsw i32 %mul.i.i.4, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds float, float* %13, i64 %248
  %250 = bitcast float* %249 to <8 x float>*
  %wide.masked.load126 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %250, i32 4, <8 x i1> %245, <8 x float> undef), !tbaa !12
  %251 = fmul <8 x float> %broadcast.splat128, %wide.masked.load126
  %252 = bitcast float* %249 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %251, <8 x float>* %252, i32 4, <8 x i1> %245), !tbaa !12, !llvm.access.group !16
  %253 = trunc <8 x i64> %broadcast.splat123 to <8 x i32>
  %254 = or <8 x i32> %253, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %255 = icmp sgt <8 x i32> %broadcast.splat125, %254
  %256 = extractelement <8 x i32> %254, i32 0
  %257 = add nsw i32 %mul.i.i.4, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %13, i64 %258
  %260 = bitcast float* %259 to <8 x float>*
  %wide.masked.load126.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %260, i32 4, <8 x i1> %255, <8 x float> undef), !tbaa !12
  %261 = fmul <8 x float> %broadcast.splat128, %wide.masked.load126.1
  %262 = bitcast float* %259 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %261, <8 x float>* %262, i32 4, <8 x i1> %255), !tbaa !12, !llvm.access.group !16
  %263 = trunc <8 x i64> %broadcast.splat123 to <8 x i32>
  %264 = or <8 x i32> %263, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %265 = icmp sgt <8 x i32> %broadcast.splat125, %264
  %266 = extractelement <8 x i32> %264, i32 0
  %267 = add nsw i32 %mul.i.i.4, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds float, float* %13, i64 %268
  %270 = bitcast float* %269 to <8 x float>*
  %wide.masked.load126.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %270, i32 4, <8 x i1> %265, <8 x float> undef), !tbaa !12
  %271 = fmul <8 x float> %broadcast.splat128, %wide.masked.load126.2
  %272 = bitcast float* %269 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %271, <8 x float>* %272, i32 4, <8 x i1> %265), !tbaa !12, !llvm.access.group !16
  %273 = trunc <8 x i64> %broadcast.splat123 to <8 x i32>
  %274 = or <8 x i32> %273, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %275 = icmp sgt <8 x i32> %broadcast.splat125, %274
  %276 = extractelement <8 x i32> %274, i32 0
  %277 = add nsw i32 %mul.i.i.4, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds float, float* %13, i64 %278
  %280 = bitcast float* %279 to <8 x float>*
  %wide.masked.load126.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %280, i32 4, <8 x i1> %275, <8 x float> undef), !tbaa !12
  %281 = fmul <8 x float> %broadcast.splat128, %wide.masked.load126.3
  %282 = bitcast float* %279 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %281, <8 x float>* %282, i32 4, <8 x i1> %275), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.4:                 ; preds = %if.end.i.i.us.4.3, %pregion_for_entry.entry.i.i.us.4.preheader
  %_local_id_x.i.0.us.4 = phi i64 [ %534, %if.end.i.i.us.4.3 ], [ 0, %pregion_for_entry.entry.i.i.us.4.preheader ]
  %add1.i.i.i.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.4, %mul.i.i.i
  %conv.i.i.us.4 = trunc i64 %add1.i.i.i.us.4 to i32
  %cmp4.i.i.us.4 = icmp sgt i32 %25, %conv.i.i.us.4
  br i1 %cmp4.i.i.us.4, label %if.then.i.i.us.4, label %if.end.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %pregion_for_entry.entry.i.i.us.4
  %add.i.i.us.4 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4
  %idxprom.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.4
  %283 = load float, float* %arrayidx.i.i.us.4, align 4, !tbaa !12
  %mul6.i.i.us.4 = fmul float %29, %283
  store float %mul6.i.i.us.4, float* %arrayidx.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4

if.end.i.i.us.4:                                  ; preds = %if.then.i.i.us.4, %pregion_for_entry.entry.i.i.us.4
  %284 = or i64 %_local_id_x.i.0.us.4, 1
  %add1.i.i.i.us.4.1 = add nuw nsw i64 %284, %mul.i.i.i
  %conv.i.i.us.4.1 = trunc i64 %add1.i.i.i.us.4.1 to i32
  %cmp4.i.i.us.4.1 = icmp sgt i32 %25, %conv.i.i.us.4.1
  br i1 %cmp4.i.i.us.4.1, label %if.then.i.i.us.4.1, label %if.end.i.i.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.i.i.us.4.3
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph115, %pregion_for_end.i.i.3
  %285 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.5 = or i32 %285, 5
  %cmp.i.i.5 = icmp sgt i32 %17, %conv2.i.i.5
  %mul.i.i.5 = mul nsw i32 %25, %conv2.i.i.5
  br i1 %cmp.i.i.5, label %vector.scevcheck136, label %pregion_for_end.i.i.5

vector.scevcheck136:                              ; preds = %pregion_for_end.i.i.4
  %286 = mul i32 %25, %conv2.i.i.5
  %287 = trunc i64 %2 to i32
  %288 = shl i32 %287, 5
  %289 = add i32 %286, %288
  %290 = icmp sgt i32 %289, 2147483616
  br i1 %290, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.ph137

pregion_for_entry.entry.i.i.us.5.preheader:       ; preds = %vector.scevcheck136
  br label %pregion_for_entry.entry.i.i.us.5

vector.ph137:                                     ; preds = %vector.scevcheck136
  %broadcast.splatinsert144 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat145 = shufflevector <8 x i64> %broadcast.splatinsert144, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert146 = insertelement <8 x i32> undef, i32 %25, i32 0
  %broadcast.splat147 = shufflevector <8 x i32> %broadcast.splatinsert146, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <8 x float> undef, float %29, i32 0
  %broadcast.splat150 = shufflevector <8 x float> %broadcast.splatinsert149, <8 x float> undef, <8 x i32> zeroinitializer
  %291 = trunc <8 x i64> %broadcast.splat145 to <8 x i32>
  %292 = or <8 x i32> %291, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %293 = icmp sgt <8 x i32> %broadcast.splat147, %292
  %294 = extractelement <8 x i32> %292, i32 0
  %295 = add nsw i32 %mul.i.i.5, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds float, float* %13, i64 %296
  %298 = bitcast float* %297 to <8 x float>*
  %wide.masked.load148 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %298, i32 4, <8 x i1> %293, <8 x float> undef), !tbaa !12
  %299 = fmul <8 x float> %broadcast.splat150, %wide.masked.load148
  %300 = bitcast float* %297 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %299, <8 x float>* %300, i32 4, <8 x i1> %293), !tbaa !12, !llvm.access.group !16
  %301 = trunc <8 x i64> %broadcast.splat145 to <8 x i32>
  %302 = or <8 x i32> %301, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %303 = icmp sgt <8 x i32> %broadcast.splat147, %302
  %304 = extractelement <8 x i32> %302, i32 0
  %305 = add nsw i32 %mul.i.i.5, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %13, i64 %306
  %308 = bitcast float* %307 to <8 x float>*
  %wide.masked.load148.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %308, i32 4, <8 x i1> %303, <8 x float> undef), !tbaa !12
  %309 = fmul <8 x float> %broadcast.splat150, %wide.masked.load148.1
  %310 = bitcast float* %307 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %309, <8 x float>* %310, i32 4, <8 x i1> %303), !tbaa !12, !llvm.access.group !16
  %311 = trunc <8 x i64> %broadcast.splat145 to <8 x i32>
  %312 = or <8 x i32> %311, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %313 = icmp sgt <8 x i32> %broadcast.splat147, %312
  %314 = extractelement <8 x i32> %312, i32 0
  %315 = add nsw i32 %mul.i.i.5, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds float, float* %13, i64 %316
  %318 = bitcast float* %317 to <8 x float>*
  %wide.masked.load148.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %318, i32 4, <8 x i1> %313, <8 x float> undef), !tbaa !12
  %319 = fmul <8 x float> %broadcast.splat150, %wide.masked.load148.2
  %320 = bitcast float* %317 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %319, <8 x float>* %320, i32 4, <8 x i1> %313), !tbaa !12, !llvm.access.group !16
  %321 = trunc <8 x i64> %broadcast.splat145 to <8 x i32>
  %322 = or <8 x i32> %321, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %323 = icmp sgt <8 x i32> %broadcast.splat147, %322
  %324 = extractelement <8 x i32> %322, i32 0
  %325 = add nsw i32 %mul.i.i.5, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds float, float* %13, i64 %326
  %328 = bitcast float* %327 to <8 x float>*
  %wide.masked.load148.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %328, i32 4, <8 x i1> %323, <8 x float> undef), !tbaa !12
  %329 = fmul <8 x float> %broadcast.splat150, %wide.masked.load148.3
  %330 = bitcast float* %327 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %329, <8 x float>* %330, i32 4, <8 x i1> %323), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.5:                 ; preds = %if.end.i.i.us.5.3, %pregion_for_entry.entry.i.i.us.5.preheader
  %_local_id_x.i.0.us.5 = phi i64 [ %528, %if.end.i.i.us.5.3 ], [ 0, %pregion_for_entry.entry.i.i.us.5.preheader ]
  %add1.i.i.i.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.5, %mul.i.i.i
  %conv.i.i.us.5 = trunc i64 %add1.i.i.i.us.5 to i32
  %cmp4.i.i.us.5 = icmp sgt i32 %25, %conv.i.i.us.5
  br i1 %cmp4.i.i.us.5, label %if.then.i.i.us.5, label %if.end.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %pregion_for_entry.entry.i.i.us.5
  %add.i.i.us.5 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5
  %idxprom.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.5
  %331 = load float, float* %arrayidx.i.i.us.5, align 4, !tbaa !12
  %mul6.i.i.us.5 = fmul float %29, %331
  store float %mul6.i.i.us.5, float* %arrayidx.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5

if.end.i.i.us.5:                                  ; preds = %if.then.i.i.us.5, %pregion_for_entry.entry.i.i.us.5
  %332 = or i64 %_local_id_x.i.0.us.5, 1
  %add1.i.i.i.us.5.1 = add nuw nsw i64 %332, %mul.i.i.i
  %conv.i.i.us.5.1 = trunc i64 %add1.i.i.i.us.5.1 to i32
  %cmp4.i.i.us.5.1 = icmp sgt i32 %25, %conv.i.i.us.5.1
  br i1 %cmp4.i.i.us.5.1, label %if.then.i.i.us.5.1, label %if.end.i.i.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.i.i.us.5.3
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph137, %pregion_for_end.i.i.4
  %333 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.6 = or i32 %333, 6
  %cmp.i.i.6 = icmp sgt i32 %17, %conv2.i.i.6
  %mul.i.i.6 = mul nsw i32 %25, %conv2.i.i.6
  br i1 %cmp.i.i.6, label %vector.scevcheck158, label %pregion_for_end.i.i.6

vector.scevcheck158:                              ; preds = %pregion_for_end.i.i.5
  %334 = mul i32 %25, %conv2.i.i.6
  %335 = trunc i64 %2 to i32
  %336 = shl i32 %335, 5
  %337 = add i32 %334, %336
  %338 = icmp sgt i32 %337, 2147483616
  br i1 %338, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.ph159

pregion_for_entry.entry.i.i.us.6.preheader:       ; preds = %vector.scevcheck158
  br label %pregion_for_entry.entry.i.i.us.6

vector.ph159:                                     ; preds = %vector.scevcheck158
  %broadcast.splatinsert166 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat167 = shufflevector <8 x i64> %broadcast.splatinsert166, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert168 = insertelement <8 x i32> undef, i32 %25, i32 0
  %broadcast.splat169 = shufflevector <8 x i32> %broadcast.splatinsert168, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x float> undef, float %29, i32 0
  %broadcast.splat172 = shufflevector <8 x float> %broadcast.splatinsert171, <8 x float> undef, <8 x i32> zeroinitializer
  %339 = trunc <8 x i64> %broadcast.splat167 to <8 x i32>
  %340 = or <8 x i32> %339, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %341 = icmp sgt <8 x i32> %broadcast.splat169, %340
  %342 = extractelement <8 x i32> %340, i32 0
  %343 = add nsw i32 %mul.i.i.6, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds float, float* %13, i64 %344
  %346 = bitcast float* %345 to <8 x float>*
  %wide.masked.load170 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %346, i32 4, <8 x i1> %341, <8 x float> undef), !tbaa !12
  %347 = fmul <8 x float> %broadcast.splat172, %wide.masked.load170
  %348 = bitcast float* %345 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %347, <8 x float>* %348, i32 4, <8 x i1> %341), !tbaa !12, !llvm.access.group !16
  %349 = trunc <8 x i64> %broadcast.splat167 to <8 x i32>
  %350 = or <8 x i32> %349, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %351 = icmp sgt <8 x i32> %broadcast.splat169, %350
  %352 = extractelement <8 x i32> %350, i32 0
  %353 = add nsw i32 %mul.i.i.6, %352
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds float, float* %13, i64 %354
  %356 = bitcast float* %355 to <8 x float>*
  %wide.masked.load170.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %356, i32 4, <8 x i1> %351, <8 x float> undef), !tbaa !12
  %357 = fmul <8 x float> %broadcast.splat172, %wide.masked.load170.1
  %358 = bitcast float* %355 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %357, <8 x float>* %358, i32 4, <8 x i1> %351), !tbaa !12, !llvm.access.group !16
  %359 = trunc <8 x i64> %broadcast.splat167 to <8 x i32>
  %360 = or <8 x i32> %359, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %361 = icmp sgt <8 x i32> %broadcast.splat169, %360
  %362 = extractelement <8 x i32> %360, i32 0
  %363 = add nsw i32 %mul.i.i.6, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds float, float* %13, i64 %364
  %366 = bitcast float* %365 to <8 x float>*
  %wide.masked.load170.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %366, i32 4, <8 x i1> %361, <8 x float> undef), !tbaa !12
  %367 = fmul <8 x float> %broadcast.splat172, %wide.masked.load170.2
  %368 = bitcast float* %365 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %367, <8 x float>* %368, i32 4, <8 x i1> %361), !tbaa !12, !llvm.access.group !16
  %369 = trunc <8 x i64> %broadcast.splat167 to <8 x i32>
  %370 = or <8 x i32> %369, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %371 = icmp sgt <8 x i32> %broadcast.splat169, %370
  %372 = extractelement <8 x i32> %370, i32 0
  %373 = add nsw i32 %mul.i.i.6, %372
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds float, float* %13, i64 %374
  %376 = bitcast float* %375 to <8 x float>*
  %wide.masked.load170.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %376, i32 4, <8 x i1> %371, <8 x float> undef), !tbaa !12
  %377 = fmul <8 x float> %broadcast.splat172, %wide.masked.load170.3
  %378 = bitcast float* %375 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %377, <8 x float>* %378, i32 4, <8 x i1> %371), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.6:                 ; preds = %if.end.i.i.us.6.3, %pregion_for_entry.entry.i.i.us.6.preheader
  %_local_id_x.i.0.us.6 = phi i64 [ %522, %if.end.i.i.us.6.3 ], [ 0, %pregion_for_entry.entry.i.i.us.6.preheader ]
  %add1.i.i.i.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.6, %mul.i.i.i
  %conv.i.i.us.6 = trunc i64 %add1.i.i.i.us.6 to i32
  %cmp4.i.i.us.6 = icmp sgt i32 %25, %conv.i.i.us.6
  br i1 %cmp4.i.i.us.6, label %if.then.i.i.us.6, label %if.end.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %pregion_for_entry.entry.i.i.us.6
  %add.i.i.us.6 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6
  %idxprom.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.6
  %379 = load float, float* %arrayidx.i.i.us.6, align 4, !tbaa !12
  %mul6.i.i.us.6 = fmul float %29, %379
  store float %mul6.i.i.us.6, float* %arrayidx.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6

if.end.i.i.us.6:                                  ; preds = %if.then.i.i.us.6, %pregion_for_entry.entry.i.i.us.6
  %380 = or i64 %_local_id_x.i.0.us.6, 1
  %add1.i.i.i.us.6.1 = add nuw nsw i64 %380, %mul.i.i.i
  %conv.i.i.us.6.1 = trunc i64 %add1.i.i.i.us.6.1 to i32
  %cmp4.i.i.us.6.1 = icmp sgt i32 %25, %conv.i.i.us.6.1
  br i1 %cmp4.i.i.us.6.1, label %if.then.i.i.us.6.1, label %if.end.i.i.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.i.i.us.6.3
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph159, %pregion_for_end.i.i.5
  %381 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.7 = or i32 %381, 7
  %cmp.i.i.7 = icmp sgt i32 %17, %conv2.i.i.7
  %mul.i.i.7 = mul nsw i32 %25, %conv2.i.i.7
  br i1 %cmp.i.i.7, label %vector.scevcheck180, label %_pocl_kernel_mm2_kernel2.exit

vector.scevcheck180:                              ; preds = %pregion_for_end.i.i.6
  %382 = mul i32 %25, %conv2.i.i.7
  %383 = trunc i64 %2 to i32
  %384 = shl i32 %383, 5
  %385 = add i32 %382, %384
  %386 = icmp sgt i32 %385, 2147483616
  br i1 %386, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.ph181

pregion_for_entry.entry.i.i.us.7.preheader:       ; preds = %vector.scevcheck180
  br label %pregion_for_entry.entry.i.i.us.7

vector.ph181:                                     ; preds = %vector.scevcheck180
  %broadcast.splatinsert188 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat189 = shufflevector <8 x i64> %broadcast.splatinsert188, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert190 = insertelement <8 x i32> undef, i32 %25, i32 0
  %broadcast.splat191 = shufflevector <8 x i32> %broadcast.splatinsert190, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert193 = insertelement <8 x float> undef, float %29, i32 0
  %broadcast.splat194 = shufflevector <8 x float> %broadcast.splatinsert193, <8 x float> undef, <8 x i32> zeroinitializer
  %387 = trunc <8 x i64> %broadcast.splat189 to <8 x i32>
  %388 = or <8 x i32> %387, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %389 = icmp sgt <8 x i32> %broadcast.splat191, %388
  %390 = extractelement <8 x i32> %388, i32 0
  %391 = add nsw i32 %mul.i.i.7, %390
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds float, float* %13, i64 %392
  %394 = bitcast float* %393 to <8 x float>*
  %wide.masked.load192 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %394, i32 4, <8 x i1> %389, <8 x float> undef), !tbaa !12
  %395 = fmul <8 x float> %broadcast.splat194, %wide.masked.load192
  %396 = bitcast float* %393 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %395, <8 x float>* %396, i32 4, <8 x i1> %389), !tbaa !12, !llvm.access.group !16
  %397 = trunc <8 x i64> %broadcast.splat189 to <8 x i32>
  %398 = or <8 x i32> %397, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %399 = icmp sgt <8 x i32> %broadcast.splat191, %398
  %400 = extractelement <8 x i32> %398, i32 0
  %401 = add nsw i32 %mul.i.i.7, %400
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds float, float* %13, i64 %402
  %404 = bitcast float* %403 to <8 x float>*
  %wide.masked.load192.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %404, i32 4, <8 x i1> %399, <8 x float> undef), !tbaa !12
  %405 = fmul <8 x float> %broadcast.splat194, %wide.masked.load192.1
  %406 = bitcast float* %403 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %405, <8 x float>* %406, i32 4, <8 x i1> %399), !tbaa !12, !llvm.access.group !16
  %407 = trunc <8 x i64> %broadcast.splat189 to <8 x i32>
  %408 = or <8 x i32> %407, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %409 = icmp sgt <8 x i32> %broadcast.splat191, %408
  %410 = extractelement <8 x i32> %408, i32 0
  %411 = add nsw i32 %mul.i.i.7, %410
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds float, float* %13, i64 %412
  %414 = bitcast float* %413 to <8 x float>*
  %wide.masked.load192.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %414, i32 4, <8 x i1> %409, <8 x float> undef), !tbaa !12
  %415 = fmul <8 x float> %broadcast.splat194, %wide.masked.load192.2
  %416 = bitcast float* %413 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %415, <8 x float>* %416, i32 4, <8 x i1> %409), !tbaa !12, !llvm.access.group !16
  %417 = trunc <8 x i64> %broadcast.splat189 to <8 x i32>
  %418 = or <8 x i32> %417, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %419 = icmp sgt <8 x i32> %broadcast.splat191, %418
  %420 = extractelement <8 x i32> %418, i32 0
  %421 = add nsw i32 %mul.i.i.7, %420
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds float, float* %13, i64 %422
  %424 = bitcast float* %423 to <8 x float>*
  %wide.masked.load192.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %424, i32 4, <8 x i1> %419, <8 x float> undef), !tbaa !12
  %425 = fmul <8 x float> %broadcast.splat194, %wide.masked.load192.3
  %426 = bitcast float* %423 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %425, <8 x float>* %426, i32 4, <8 x i1> %419), !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_mm2_kernel2.exit

pregion_for_entry.entry.i.i.us.7:                 ; preds = %if.end.i.i.us.7.3, %pregion_for_entry.entry.i.i.us.7.preheader
  %_local_id_x.i.0.us.7 = phi i64 [ %516, %if.end.i.i.us.7.3 ], [ 0, %pregion_for_entry.entry.i.i.us.7.preheader ]
  %add1.i.i.i.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.7, %mul.i.i.i
  %conv.i.i.us.7 = trunc i64 %add1.i.i.i.us.7 to i32
  %cmp4.i.i.us.7 = icmp sgt i32 %25, %conv.i.i.us.7
  br i1 %cmp4.i.i.us.7, label %if.then.i.i.us.7, label %if.end.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %pregion_for_entry.entry.i.i.us.7
  %add.i.i.us.7 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7
  %idxprom.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.7
  %427 = load float, float* %arrayidx.i.i.us.7, align 4, !tbaa !12
  %mul6.i.i.us.7 = fmul float %29, %427
  store float %mul6.i.i.us.7, float* %arrayidx.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7

if.end.i.i.us.7:                                  ; preds = %if.then.i.i.us.7, %pregion_for_entry.entry.i.i.us.7
  %428 = or i64 %_local_id_x.i.0.us.7, 1
  %add1.i.i.i.us.7.1 = add nuw nsw i64 %428, %mul.i.i.i
  %conv.i.i.us.7.1 = trunc i64 %add1.i.i.i.us.7.1 to i32
  %cmp4.i.i.us.7.1 = icmp sgt i32 %25, %conv.i.i.us.7.1
  br i1 %cmp4.i.i.us.7.1, label %if.then.i.i.us.7.1, label %if.end.i.i.us.7.1

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %if.end.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1.preheader
  %_local_id_x.i.0.us.us.1 = phi i64 [ %438, %if.end.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1.preheader ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %cmp4.i.i.us.us.1 = icmp sgt i32 %25, %conv.i.i.us.us.1
  br i1 %cmp4.i.i.us.us.1, label %if.then.i.i.us.us.1, label %if.end.i.i.us.us.1

if.then.i.i.us.us.1:                              ; preds = %pregion_for_entry.entry.i.i.us.us.1
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.1
  %429 = load float, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12
  %mul6.i.i.us.us.1 = fmul float %29, %429
  store float %mul6.i.i.us.us.1, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %430 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %if.then.i.i.us.us.1
  %indvars.iv.next.i.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %if.then.i.i.us.us.1 ]
  %431 = phi float [ %437, %for.body.i.i.us.us.1 ], [ %mul6.i.i.us.us.1, %if.then.i.i.us.us.1 ]
  %432 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %80
  %arrayidx12.i.i.us.us.1 = getelementptr inbounds float, float* %7, i64 %432
  %433 = load float, float* %arrayidx12.i.i.us.us.1, align 4, !tbaa !12
  %434 = mul nsw i64 %indvars.iv.next.i.i3.us.us.1, %30
  %435 = add nsw i64 %434, %430
  %arrayidx16.i.i.us.us.1 = getelementptr inbounds float, float* %10, i64 %435
  %436 = load float, float* %arrayidx16.i.i.us.us.1, align 4, !tbaa !12
  %437 = tail call float @llvm.fmuladd.f32(float %433, float %436, float %431) #2
  store float %437, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %if.end.i.i.us.us.1.loopexit, label %for.body.i.i.us.us.1, !llvm.loop !21

if.end.i.i.us.us.1.loopexit:                      ; preds = %for.body.i.i.us.us.1
  br label %if.end.i.i.us.us.1

if.end.i.i.us.us.1:                               ; preds = %if.end.i.i.us.us.1.loopexit, %pregion_for_entry.entry.i.i.us.us.1
  %438 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 1
  %exitcond.not.1 = icmp eq i64 %438, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us.1.loopexit, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !19

pregion_for_end.i.i.us.1.loopexit:                ; preds = %if.end.i.i.us.us.1
  br label %pregion_for_end.i.i.us.1

pregion_for_end.i.i.us.1:                         ; preds = %pregion_for_end.i.i.us.1.loopexit, %pregion_for_end.i.i.us
  %439 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %439, 2
  %cmp.i.i.us.2 = icmp sgt i32 %17, %conv2.i.i.us.2
  %mul.i.i.us.2 = mul nsw i32 %25, %conv2.i.i.us.2
  %mul9.i.i.us.2 = mul nsw i32 %21, %conv2.i.i.us.2
  %440 = sext i32 %mul9.i.i.us.2 to i64
  br i1 %cmp.i.i.us.2, label %pregion_for_entry.entry.i.i.us.us.2.preheader, label %pregion_for_end.i.i.us.2

pregion_for_entry.entry.i.i.us.us.2.preheader:    ; preds = %pregion_for_end.i.i.us.1
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %if.end.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2.preheader
  %_local_id_x.i.0.us.us.2 = phi i64 [ %450, %if.end.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2.preheader ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %cmp4.i.i.us.us.2 = icmp sgt i32 %25, %conv.i.i.us.us.2
  br i1 %cmp4.i.i.us.us.2, label %if.then.i.i.us.us.2, label %if.end.i.i.us.us.2

if.then.i.i.us.us.2:                              ; preds = %pregion_for_entry.entry.i.i.us.us.2
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.2
  %441 = load float, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12
  %mul6.i.i.us.us.2 = fmul float %29, %441
  store float %mul6.i.i.us.us.2, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %442 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %if.then.i.i.us.us.2
  %indvars.iv.next.i.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %if.then.i.i.us.us.2 ]
  %443 = phi float [ %449, %for.body.i.i.us.us.2 ], [ %mul6.i.i.us.us.2, %if.then.i.i.us.us.2 ]
  %444 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %440
  %arrayidx12.i.i.us.us.2 = getelementptr inbounds float, float* %7, i64 %444
  %445 = load float, float* %arrayidx12.i.i.us.us.2, align 4, !tbaa !12
  %446 = mul nsw i64 %indvars.iv.next.i.i3.us.us.2, %30
  %447 = add nsw i64 %446, %442
  %arrayidx16.i.i.us.us.2 = getelementptr inbounds float, float* %10, i64 %447
  %448 = load float, float* %arrayidx16.i.i.us.us.2, align 4, !tbaa !12
  %449 = tail call float @llvm.fmuladd.f32(float %445, float %448, float %443) #2
  store float %449, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %if.end.i.i.us.us.2.loopexit, label %for.body.i.i.us.us.2, !llvm.loop !21

if.end.i.i.us.us.2.loopexit:                      ; preds = %for.body.i.i.us.us.2
  br label %if.end.i.i.us.us.2

if.end.i.i.us.us.2:                               ; preds = %if.end.i.i.us.us.2.loopexit, %pregion_for_entry.entry.i.i.us.us.2
  %450 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 1
  %exitcond.not.2 = icmp eq i64 %450, 32
  br i1 %exitcond.not.2, label %pregion_for_end.i.i.us.2.loopexit, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !19

pregion_for_end.i.i.us.2.loopexit:                ; preds = %if.end.i.i.us.us.2
  br label %pregion_for_end.i.i.us.2

pregion_for_end.i.i.us.2:                         ; preds = %pregion_for_end.i.i.us.2.loopexit, %pregion_for_end.i.i.us.1
  %451 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %451, 3
  %cmp.i.i.us.3 = icmp sgt i32 %17, %conv2.i.i.us.3
  %mul.i.i.us.3 = mul nsw i32 %25, %conv2.i.i.us.3
  %mul9.i.i.us.3 = mul nsw i32 %21, %conv2.i.i.us.3
  %452 = sext i32 %mul9.i.i.us.3 to i64
  br i1 %cmp.i.i.us.3, label %pregion_for_entry.entry.i.i.us.us.3.preheader, label %pregion_for_end.i.i.us.3

pregion_for_entry.entry.i.i.us.us.3.preheader:    ; preds = %pregion_for_end.i.i.us.2
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %if.end.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3.preheader
  %_local_id_x.i.0.us.us.3 = phi i64 [ %462, %if.end.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3.preheader ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %cmp4.i.i.us.us.3 = icmp sgt i32 %25, %conv.i.i.us.us.3
  br i1 %cmp4.i.i.us.us.3, label %if.then.i.i.us.us.3, label %if.end.i.i.us.us.3

if.then.i.i.us.us.3:                              ; preds = %pregion_for_entry.entry.i.i.us.us.3
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.3
  %453 = load float, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12
  %mul6.i.i.us.us.3 = fmul float %29, %453
  store float %mul6.i.i.us.us.3, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %454 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %if.then.i.i.us.us.3
  %indvars.iv.next.i.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %if.then.i.i.us.us.3 ]
  %455 = phi float [ %461, %for.body.i.i.us.us.3 ], [ %mul6.i.i.us.us.3, %if.then.i.i.us.us.3 ]
  %456 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %452
  %arrayidx12.i.i.us.us.3 = getelementptr inbounds float, float* %7, i64 %456
  %457 = load float, float* %arrayidx12.i.i.us.us.3, align 4, !tbaa !12
  %458 = mul nsw i64 %indvars.iv.next.i.i3.us.us.3, %30
  %459 = add nsw i64 %458, %454
  %arrayidx16.i.i.us.us.3 = getelementptr inbounds float, float* %10, i64 %459
  %460 = load float, float* %arrayidx16.i.i.us.us.3, align 4, !tbaa !12
  %461 = tail call float @llvm.fmuladd.f32(float %457, float %460, float %455) #2
  store float %461, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %if.end.i.i.us.us.3.loopexit, label %for.body.i.i.us.us.3, !llvm.loop !21

if.end.i.i.us.us.3.loopexit:                      ; preds = %for.body.i.i.us.us.3
  br label %if.end.i.i.us.us.3

if.end.i.i.us.us.3:                               ; preds = %if.end.i.i.us.us.3.loopexit, %pregion_for_entry.entry.i.i.us.us.3
  %462 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 1
  %exitcond.not.3 = icmp eq i64 %462, 32
  br i1 %exitcond.not.3, label %pregion_for_end.i.i.us.3.loopexit, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !19

pregion_for_end.i.i.us.3.loopexit:                ; preds = %if.end.i.i.us.us.3
  br label %pregion_for_end.i.i.us.3

pregion_for_end.i.i.us.3:                         ; preds = %pregion_for_end.i.i.us.3.loopexit, %pregion_for_end.i.i.us.2
  %463 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %463, 4
  %cmp.i.i.us.4 = icmp sgt i32 %17, %conv2.i.i.us.4
  %mul.i.i.us.4 = mul nsw i32 %25, %conv2.i.i.us.4
  %mul9.i.i.us.4 = mul nsw i32 %21, %conv2.i.i.us.4
  %464 = sext i32 %mul9.i.i.us.4 to i64
  br i1 %cmp.i.i.us.4, label %pregion_for_entry.entry.i.i.us.us.4.preheader, label %pregion_for_end.i.i.us.4

pregion_for_entry.entry.i.i.us.us.4.preheader:    ; preds = %pregion_for_end.i.i.us.3
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %if.end.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4.preheader
  %_local_id_x.i.0.us.us.4 = phi i64 [ %474, %if.end.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4.preheader ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %cmp4.i.i.us.us.4 = icmp sgt i32 %25, %conv.i.i.us.us.4
  br i1 %cmp4.i.i.us.us.4, label %if.then.i.i.us.us.4, label %if.end.i.i.us.us.4

if.then.i.i.us.us.4:                              ; preds = %pregion_for_entry.entry.i.i.us.us.4
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.4
  %465 = load float, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12
  %mul6.i.i.us.us.4 = fmul float %29, %465
  store float %mul6.i.i.us.us.4, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %466 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %if.then.i.i.us.us.4
  %indvars.iv.next.i.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %if.then.i.i.us.us.4 ]
  %467 = phi float [ %473, %for.body.i.i.us.us.4 ], [ %mul6.i.i.us.us.4, %if.then.i.i.us.us.4 ]
  %468 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %464
  %arrayidx12.i.i.us.us.4 = getelementptr inbounds float, float* %7, i64 %468
  %469 = load float, float* %arrayidx12.i.i.us.us.4, align 4, !tbaa !12
  %470 = mul nsw i64 %indvars.iv.next.i.i3.us.us.4, %30
  %471 = add nsw i64 %470, %466
  %arrayidx16.i.i.us.us.4 = getelementptr inbounds float, float* %10, i64 %471
  %472 = load float, float* %arrayidx16.i.i.us.us.4, align 4, !tbaa !12
  %473 = tail call float @llvm.fmuladd.f32(float %469, float %472, float %467) #2
  store float %473, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %if.end.i.i.us.us.4.loopexit, label %for.body.i.i.us.us.4, !llvm.loop !21

if.end.i.i.us.us.4.loopexit:                      ; preds = %for.body.i.i.us.us.4
  br label %if.end.i.i.us.us.4

if.end.i.i.us.us.4:                               ; preds = %if.end.i.i.us.us.4.loopexit, %pregion_for_entry.entry.i.i.us.us.4
  %474 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 1
  %exitcond.not.4 = icmp eq i64 %474, 32
  br i1 %exitcond.not.4, label %pregion_for_end.i.i.us.4.loopexit, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !19

pregion_for_end.i.i.us.4.loopexit:                ; preds = %if.end.i.i.us.us.4
  br label %pregion_for_end.i.i.us.4

pregion_for_end.i.i.us.4:                         ; preds = %pregion_for_end.i.i.us.4.loopexit, %pregion_for_end.i.i.us.3
  %475 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %475, 5
  %cmp.i.i.us.5 = icmp sgt i32 %17, %conv2.i.i.us.5
  %mul.i.i.us.5 = mul nsw i32 %25, %conv2.i.i.us.5
  %mul9.i.i.us.5 = mul nsw i32 %21, %conv2.i.i.us.5
  %476 = sext i32 %mul9.i.i.us.5 to i64
  br i1 %cmp.i.i.us.5, label %pregion_for_entry.entry.i.i.us.us.5.preheader, label %pregion_for_end.i.i.us.5

pregion_for_entry.entry.i.i.us.us.5.preheader:    ; preds = %pregion_for_end.i.i.us.4
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %if.end.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5.preheader
  %_local_id_x.i.0.us.us.5 = phi i64 [ %486, %if.end.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5.preheader ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %cmp4.i.i.us.us.5 = icmp sgt i32 %25, %conv.i.i.us.us.5
  br i1 %cmp4.i.i.us.us.5, label %if.then.i.i.us.us.5, label %if.end.i.i.us.us.5

if.then.i.i.us.us.5:                              ; preds = %pregion_for_entry.entry.i.i.us.us.5
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.5
  %477 = load float, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12
  %mul6.i.i.us.us.5 = fmul float %29, %477
  store float %mul6.i.i.us.us.5, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %478 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %if.then.i.i.us.us.5
  %indvars.iv.next.i.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %if.then.i.i.us.us.5 ]
  %479 = phi float [ %485, %for.body.i.i.us.us.5 ], [ %mul6.i.i.us.us.5, %if.then.i.i.us.us.5 ]
  %480 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %476
  %arrayidx12.i.i.us.us.5 = getelementptr inbounds float, float* %7, i64 %480
  %481 = load float, float* %arrayidx12.i.i.us.us.5, align 4, !tbaa !12
  %482 = mul nsw i64 %indvars.iv.next.i.i3.us.us.5, %30
  %483 = add nsw i64 %482, %478
  %arrayidx16.i.i.us.us.5 = getelementptr inbounds float, float* %10, i64 %483
  %484 = load float, float* %arrayidx16.i.i.us.us.5, align 4, !tbaa !12
  %485 = tail call float @llvm.fmuladd.f32(float %481, float %484, float %479) #2
  store float %485, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %if.end.i.i.us.us.5.loopexit, label %for.body.i.i.us.us.5, !llvm.loop !21

if.end.i.i.us.us.5.loopexit:                      ; preds = %for.body.i.i.us.us.5
  br label %if.end.i.i.us.us.5

if.end.i.i.us.us.5:                               ; preds = %if.end.i.i.us.us.5.loopexit, %pregion_for_entry.entry.i.i.us.us.5
  %486 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 1
  %exitcond.not.5 = icmp eq i64 %486, 32
  br i1 %exitcond.not.5, label %pregion_for_end.i.i.us.5.loopexit, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !19

pregion_for_end.i.i.us.5.loopexit:                ; preds = %if.end.i.i.us.us.5
  br label %pregion_for_end.i.i.us.5

pregion_for_end.i.i.us.5:                         ; preds = %pregion_for_end.i.i.us.5.loopexit, %pregion_for_end.i.i.us.4
  %487 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %487, 6
  %cmp.i.i.us.6 = icmp sgt i32 %17, %conv2.i.i.us.6
  %mul.i.i.us.6 = mul nsw i32 %25, %conv2.i.i.us.6
  %mul9.i.i.us.6 = mul nsw i32 %21, %conv2.i.i.us.6
  %488 = sext i32 %mul9.i.i.us.6 to i64
  br i1 %cmp.i.i.us.6, label %pregion_for_entry.entry.i.i.us.us.6.preheader, label %pregion_for_end.i.i.us.6

pregion_for_entry.entry.i.i.us.us.6.preheader:    ; preds = %pregion_for_end.i.i.us.5
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %if.end.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6.preheader
  %_local_id_x.i.0.us.us.6 = phi i64 [ %498, %if.end.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6.preheader ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %cmp4.i.i.us.us.6 = icmp sgt i32 %25, %conv.i.i.us.us.6
  br i1 %cmp4.i.i.us.us.6, label %if.then.i.i.us.us.6, label %if.end.i.i.us.us.6

if.then.i.i.us.us.6:                              ; preds = %pregion_for_entry.entry.i.i.us.us.6
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.6
  %489 = load float, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12
  %mul6.i.i.us.us.6 = fmul float %29, %489
  store float %mul6.i.i.us.us.6, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %490 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %if.then.i.i.us.us.6
  %indvars.iv.next.i.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %if.then.i.i.us.us.6 ]
  %491 = phi float [ %497, %for.body.i.i.us.us.6 ], [ %mul6.i.i.us.us.6, %if.then.i.i.us.us.6 ]
  %492 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %488
  %arrayidx12.i.i.us.us.6 = getelementptr inbounds float, float* %7, i64 %492
  %493 = load float, float* %arrayidx12.i.i.us.us.6, align 4, !tbaa !12
  %494 = mul nsw i64 %indvars.iv.next.i.i3.us.us.6, %30
  %495 = add nsw i64 %494, %490
  %arrayidx16.i.i.us.us.6 = getelementptr inbounds float, float* %10, i64 %495
  %496 = load float, float* %arrayidx16.i.i.us.us.6, align 4, !tbaa !12
  %497 = tail call float @llvm.fmuladd.f32(float %493, float %496, float %491) #2
  store float %497, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %if.end.i.i.us.us.6.loopexit, label %for.body.i.i.us.us.6, !llvm.loop !21

if.end.i.i.us.us.6.loopexit:                      ; preds = %for.body.i.i.us.us.6
  br label %if.end.i.i.us.us.6

if.end.i.i.us.us.6:                               ; preds = %if.end.i.i.us.us.6.loopexit, %pregion_for_entry.entry.i.i.us.us.6
  %498 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 1
  %exitcond.not.6 = icmp eq i64 %498, 32
  br i1 %exitcond.not.6, label %pregion_for_end.i.i.us.6.loopexit, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !19

pregion_for_end.i.i.us.6.loopexit:                ; preds = %if.end.i.i.us.us.6
  br label %pregion_for_end.i.i.us.6

pregion_for_end.i.i.us.6:                         ; preds = %pregion_for_end.i.i.us.6.loopexit, %pregion_for_end.i.i.us.5
  %499 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %499, 7
  %cmp.i.i.us.7 = icmp sgt i32 %17, %conv2.i.i.us.7
  %mul.i.i.us.7 = mul nsw i32 %25, %conv2.i.i.us.7
  %mul9.i.i.us.7 = mul nsw i32 %21, %conv2.i.i.us.7
  %500 = sext i32 %mul9.i.i.us.7 to i64
  br i1 %cmp.i.i.us.7, label %pregion_for_entry.entry.i.i.us.us.7.preheader, label %_pocl_kernel_mm2_kernel2.exit

pregion_for_entry.entry.i.i.us.us.7.preheader:    ; preds = %pregion_for_end.i.i.us.6
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %if.end.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7.preheader
  %_local_id_x.i.0.us.us.7 = phi i64 [ %510, %if.end.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7.preheader ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %cmp4.i.i.us.us.7 = icmp sgt i32 %25, %conv.i.i.us.us.7
  br i1 %cmp4.i.i.us.us.7, label %if.then.i.i.us.us.7, label %if.end.i.i.us.us.7

if.then.i.i.us.us.7:                              ; preds = %pregion_for_entry.entry.i.i.us.us.7
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.7
  %501 = load float, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12
  %mul6.i.i.us.us.7 = fmul float %29, %501
  store float %mul6.i.i.us.us.7, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %502 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %if.then.i.i.us.us.7
  %indvars.iv.next.i.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %if.then.i.i.us.us.7 ]
  %503 = phi float [ %509, %for.body.i.i.us.us.7 ], [ %mul6.i.i.us.us.7, %if.then.i.i.us.us.7 ]
  %504 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %500
  %arrayidx12.i.i.us.us.7 = getelementptr inbounds float, float* %7, i64 %504
  %505 = load float, float* %arrayidx12.i.i.us.us.7, align 4, !tbaa !12
  %506 = mul nsw i64 %indvars.iv.next.i.i3.us.us.7, %30
  %507 = add nsw i64 %506, %502
  %arrayidx16.i.i.us.us.7 = getelementptr inbounds float, float* %10, i64 %507
  %508 = load float, float* %arrayidx16.i.i.us.us.7, align 4, !tbaa !12
  %509 = tail call float @llvm.fmuladd.f32(float %505, float %508, float %503) #2
  store float %509, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %if.end.i.i.us.us.7.loopexit, label %for.body.i.i.us.us.7, !llvm.loop !21

if.end.i.i.us.us.7.loopexit:                      ; preds = %for.body.i.i.us.us.7
  br label %if.end.i.i.us.us.7

if.end.i.i.us.us.7:                               ; preds = %if.end.i.i.us.us.7.loopexit, %pregion_for_entry.entry.i.i.us.us.7
  %510 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 1
  %exitcond.not.7 = icmp eq i64 %510, 32
  br i1 %exitcond.not.7, label %_pocl_kernel_mm2_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !19

if.then.i.i.us.7.1:                               ; preds = %if.end.i.i.us.7
  %add.i.i.us.7.1 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.1
  %idxprom.i.i.us.7.1 = sext i32 %add.i.i.us.7.1 to i64
  %arrayidx.i.i.us.7.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.7.1
  %511 = load float, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12
  %mul6.i.i.us.7.1 = fmul float %29, %511
  store float %mul6.i.i.us.7.1, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.1

if.end.i.i.us.7.1:                                ; preds = %if.then.i.i.us.7.1, %if.end.i.i.us.7
  %512 = or i64 %_local_id_x.i.0.us.7, 2
  %add1.i.i.i.us.7.2 = add nuw nsw i64 %512, %mul.i.i.i
  %conv.i.i.us.7.2 = trunc i64 %add1.i.i.i.us.7.2 to i32
  %cmp4.i.i.us.7.2 = icmp sgt i32 %25, %conv.i.i.us.7.2
  br i1 %cmp4.i.i.us.7.2, label %if.then.i.i.us.7.2, label %if.end.i.i.us.7.2

if.then.i.i.us.7.2:                               ; preds = %if.end.i.i.us.7.1
  %add.i.i.us.7.2 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.2
  %idxprom.i.i.us.7.2 = sext i32 %add.i.i.us.7.2 to i64
  %arrayidx.i.i.us.7.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.7.2
  %513 = load float, float* %arrayidx.i.i.us.7.2, align 4, !tbaa !12
  %mul6.i.i.us.7.2 = fmul float %29, %513
  store float %mul6.i.i.us.7.2, float* %arrayidx.i.i.us.7.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.2

if.end.i.i.us.7.2:                                ; preds = %if.then.i.i.us.7.2, %if.end.i.i.us.7.1
  %514 = or i64 %_local_id_x.i.0.us.7, 3
  %add1.i.i.i.us.7.3 = add nuw nsw i64 %514, %mul.i.i.i
  %conv.i.i.us.7.3 = trunc i64 %add1.i.i.i.us.7.3 to i32
  %cmp4.i.i.us.7.3 = icmp sgt i32 %25, %conv.i.i.us.7.3
  br i1 %cmp4.i.i.us.7.3, label %if.then.i.i.us.7.3, label %if.end.i.i.us.7.3

if.then.i.i.us.7.3:                               ; preds = %if.end.i.i.us.7.2
  %add.i.i.us.7.3 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.3
  %idxprom.i.i.us.7.3 = sext i32 %add.i.i.us.7.3 to i64
  %arrayidx.i.i.us.7.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.7.3
  %515 = load float, float* %arrayidx.i.i.us.7.3, align 4, !tbaa !12
  %mul6.i.i.us.7.3 = fmul float %29, %515
  store float %mul6.i.i.us.7.3, float* %arrayidx.i.i.us.7.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.3

if.end.i.i.us.7.3:                                ; preds = %if.then.i.i.us.7.3, %if.end.i.i.us.7.2
  %516 = add nuw nsw i64 %_local_id_x.i.0.us.7, 4
  %exitcond33.7.not.3 = icmp eq i64 %516, 32
  br i1 %exitcond33.7.not.3, label %_pocl_kernel_mm2_kernel2.exit.loopexit237, label %pregion_for_entry.entry.i.i.us.7, !llvm.loop !40

if.then.i.i.us.6.1:                               ; preds = %if.end.i.i.us.6
  %add.i.i.us.6.1 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.1
  %idxprom.i.i.us.6.1 = sext i32 %add.i.i.us.6.1 to i64
  %arrayidx.i.i.us.6.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.6.1
  %517 = load float, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12
  %mul6.i.i.us.6.1 = fmul float %29, %517
  store float %mul6.i.i.us.6.1, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.1

if.end.i.i.us.6.1:                                ; preds = %if.then.i.i.us.6.1, %if.end.i.i.us.6
  %518 = or i64 %_local_id_x.i.0.us.6, 2
  %add1.i.i.i.us.6.2 = add nuw nsw i64 %518, %mul.i.i.i
  %conv.i.i.us.6.2 = trunc i64 %add1.i.i.i.us.6.2 to i32
  %cmp4.i.i.us.6.2 = icmp sgt i32 %25, %conv.i.i.us.6.2
  br i1 %cmp4.i.i.us.6.2, label %if.then.i.i.us.6.2, label %if.end.i.i.us.6.2

if.then.i.i.us.6.2:                               ; preds = %if.end.i.i.us.6.1
  %add.i.i.us.6.2 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.2
  %idxprom.i.i.us.6.2 = sext i32 %add.i.i.us.6.2 to i64
  %arrayidx.i.i.us.6.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.6.2
  %519 = load float, float* %arrayidx.i.i.us.6.2, align 4, !tbaa !12
  %mul6.i.i.us.6.2 = fmul float %29, %519
  store float %mul6.i.i.us.6.2, float* %arrayidx.i.i.us.6.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.2

if.end.i.i.us.6.2:                                ; preds = %if.then.i.i.us.6.2, %if.end.i.i.us.6.1
  %520 = or i64 %_local_id_x.i.0.us.6, 3
  %add1.i.i.i.us.6.3 = add nuw nsw i64 %520, %mul.i.i.i
  %conv.i.i.us.6.3 = trunc i64 %add1.i.i.i.us.6.3 to i32
  %cmp4.i.i.us.6.3 = icmp sgt i32 %25, %conv.i.i.us.6.3
  br i1 %cmp4.i.i.us.6.3, label %if.then.i.i.us.6.3, label %if.end.i.i.us.6.3

if.then.i.i.us.6.3:                               ; preds = %if.end.i.i.us.6.2
  %add.i.i.us.6.3 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.3
  %idxprom.i.i.us.6.3 = sext i32 %add.i.i.us.6.3 to i64
  %arrayidx.i.i.us.6.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.6.3
  %521 = load float, float* %arrayidx.i.i.us.6.3, align 4, !tbaa !12
  %mul6.i.i.us.6.3 = fmul float %29, %521
  store float %mul6.i.i.us.6.3, float* %arrayidx.i.i.us.6.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.3

if.end.i.i.us.6.3:                                ; preds = %if.then.i.i.us.6.3, %if.end.i.i.us.6.2
  %522 = add nuw nsw i64 %_local_id_x.i.0.us.6, 4
  %exitcond33.6.not.3 = icmp eq i64 %522, 32
  br i1 %exitcond33.6.not.3, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.6, !llvm.loop !41

if.then.i.i.us.5.1:                               ; preds = %if.end.i.i.us.5
  %add.i.i.us.5.1 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.1
  %idxprom.i.i.us.5.1 = sext i32 %add.i.i.us.5.1 to i64
  %arrayidx.i.i.us.5.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.5.1
  %523 = load float, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12
  %mul6.i.i.us.5.1 = fmul float %29, %523
  store float %mul6.i.i.us.5.1, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.1

if.end.i.i.us.5.1:                                ; preds = %if.then.i.i.us.5.1, %if.end.i.i.us.5
  %524 = or i64 %_local_id_x.i.0.us.5, 2
  %add1.i.i.i.us.5.2 = add nuw nsw i64 %524, %mul.i.i.i
  %conv.i.i.us.5.2 = trunc i64 %add1.i.i.i.us.5.2 to i32
  %cmp4.i.i.us.5.2 = icmp sgt i32 %25, %conv.i.i.us.5.2
  br i1 %cmp4.i.i.us.5.2, label %if.then.i.i.us.5.2, label %if.end.i.i.us.5.2

if.then.i.i.us.5.2:                               ; preds = %if.end.i.i.us.5.1
  %add.i.i.us.5.2 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.2
  %idxprom.i.i.us.5.2 = sext i32 %add.i.i.us.5.2 to i64
  %arrayidx.i.i.us.5.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.5.2
  %525 = load float, float* %arrayidx.i.i.us.5.2, align 4, !tbaa !12
  %mul6.i.i.us.5.2 = fmul float %29, %525
  store float %mul6.i.i.us.5.2, float* %arrayidx.i.i.us.5.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.2

if.end.i.i.us.5.2:                                ; preds = %if.then.i.i.us.5.2, %if.end.i.i.us.5.1
  %526 = or i64 %_local_id_x.i.0.us.5, 3
  %add1.i.i.i.us.5.3 = add nuw nsw i64 %526, %mul.i.i.i
  %conv.i.i.us.5.3 = trunc i64 %add1.i.i.i.us.5.3 to i32
  %cmp4.i.i.us.5.3 = icmp sgt i32 %25, %conv.i.i.us.5.3
  br i1 %cmp4.i.i.us.5.3, label %if.then.i.i.us.5.3, label %if.end.i.i.us.5.3

if.then.i.i.us.5.3:                               ; preds = %if.end.i.i.us.5.2
  %add.i.i.us.5.3 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.3
  %idxprom.i.i.us.5.3 = sext i32 %add.i.i.us.5.3 to i64
  %arrayidx.i.i.us.5.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.5.3
  %527 = load float, float* %arrayidx.i.i.us.5.3, align 4, !tbaa !12
  %mul6.i.i.us.5.3 = fmul float %29, %527
  store float %mul6.i.i.us.5.3, float* %arrayidx.i.i.us.5.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.3

if.end.i.i.us.5.3:                                ; preds = %if.then.i.i.us.5.3, %if.end.i.i.us.5.2
  %528 = add nuw nsw i64 %_local_id_x.i.0.us.5, 4
  %exitcond33.5.not.3 = icmp eq i64 %528, 32
  br i1 %exitcond33.5.not.3, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.5, !llvm.loop !42

if.then.i.i.us.4.1:                               ; preds = %if.end.i.i.us.4
  %add.i.i.us.4.1 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.1
  %idxprom.i.i.us.4.1 = sext i32 %add.i.i.us.4.1 to i64
  %arrayidx.i.i.us.4.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.4.1
  %529 = load float, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12
  %mul6.i.i.us.4.1 = fmul float %29, %529
  store float %mul6.i.i.us.4.1, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.1

if.end.i.i.us.4.1:                                ; preds = %if.then.i.i.us.4.1, %if.end.i.i.us.4
  %530 = or i64 %_local_id_x.i.0.us.4, 2
  %add1.i.i.i.us.4.2 = add nuw nsw i64 %530, %mul.i.i.i
  %conv.i.i.us.4.2 = trunc i64 %add1.i.i.i.us.4.2 to i32
  %cmp4.i.i.us.4.2 = icmp sgt i32 %25, %conv.i.i.us.4.2
  br i1 %cmp4.i.i.us.4.2, label %if.then.i.i.us.4.2, label %if.end.i.i.us.4.2

if.then.i.i.us.4.2:                               ; preds = %if.end.i.i.us.4.1
  %add.i.i.us.4.2 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.2
  %idxprom.i.i.us.4.2 = sext i32 %add.i.i.us.4.2 to i64
  %arrayidx.i.i.us.4.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.4.2
  %531 = load float, float* %arrayidx.i.i.us.4.2, align 4, !tbaa !12
  %mul6.i.i.us.4.2 = fmul float %29, %531
  store float %mul6.i.i.us.4.2, float* %arrayidx.i.i.us.4.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.2

if.end.i.i.us.4.2:                                ; preds = %if.then.i.i.us.4.2, %if.end.i.i.us.4.1
  %532 = or i64 %_local_id_x.i.0.us.4, 3
  %add1.i.i.i.us.4.3 = add nuw nsw i64 %532, %mul.i.i.i
  %conv.i.i.us.4.3 = trunc i64 %add1.i.i.i.us.4.3 to i32
  %cmp4.i.i.us.4.3 = icmp sgt i32 %25, %conv.i.i.us.4.3
  br i1 %cmp4.i.i.us.4.3, label %if.then.i.i.us.4.3, label %if.end.i.i.us.4.3

if.then.i.i.us.4.3:                               ; preds = %if.end.i.i.us.4.2
  %add.i.i.us.4.3 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.3
  %idxprom.i.i.us.4.3 = sext i32 %add.i.i.us.4.3 to i64
  %arrayidx.i.i.us.4.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.4.3
  %533 = load float, float* %arrayidx.i.i.us.4.3, align 4, !tbaa !12
  %mul6.i.i.us.4.3 = fmul float %29, %533
  store float %mul6.i.i.us.4.3, float* %arrayidx.i.i.us.4.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.3

if.end.i.i.us.4.3:                                ; preds = %if.then.i.i.us.4.3, %if.end.i.i.us.4.2
  %534 = add nuw nsw i64 %_local_id_x.i.0.us.4, 4
  %exitcond33.4.not.3 = icmp eq i64 %534, 32
  br i1 %exitcond33.4.not.3, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.4, !llvm.loop !43

if.then.i.i.us.3.1:                               ; preds = %if.end.i.i.us.3
  %add.i.i.us.3.1 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.1
  %idxprom.i.i.us.3.1 = sext i32 %add.i.i.us.3.1 to i64
  %arrayidx.i.i.us.3.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.3.1
  %535 = load float, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12
  %mul6.i.i.us.3.1 = fmul float %29, %535
  store float %mul6.i.i.us.3.1, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.1

if.end.i.i.us.3.1:                                ; preds = %if.then.i.i.us.3.1, %if.end.i.i.us.3
  %536 = or i64 %_local_id_x.i.0.us.3, 2
  %add1.i.i.i.us.3.2 = add nuw nsw i64 %536, %mul.i.i.i
  %conv.i.i.us.3.2 = trunc i64 %add1.i.i.i.us.3.2 to i32
  %cmp4.i.i.us.3.2 = icmp sgt i32 %25, %conv.i.i.us.3.2
  br i1 %cmp4.i.i.us.3.2, label %if.then.i.i.us.3.2, label %if.end.i.i.us.3.2

if.then.i.i.us.3.2:                               ; preds = %if.end.i.i.us.3.1
  %add.i.i.us.3.2 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.2
  %idxprom.i.i.us.3.2 = sext i32 %add.i.i.us.3.2 to i64
  %arrayidx.i.i.us.3.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.3.2
  %537 = load float, float* %arrayidx.i.i.us.3.2, align 4, !tbaa !12
  %mul6.i.i.us.3.2 = fmul float %29, %537
  store float %mul6.i.i.us.3.2, float* %arrayidx.i.i.us.3.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.2

if.end.i.i.us.3.2:                                ; preds = %if.then.i.i.us.3.2, %if.end.i.i.us.3.1
  %538 = or i64 %_local_id_x.i.0.us.3, 3
  %add1.i.i.i.us.3.3 = add nuw nsw i64 %538, %mul.i.i.i
  %conv.i.i.us.3.3 = trunc i64 %add1.i.i.i.us.3.3 to i32
  %cmp4.i.i.us.3.3 = icmp sgt i32 %25, %conv.i.i.us.3.3
  br i1 %cmp4.i.i.us.3.3, label %if.then.i.i.us.3.3, label %if.end.i.i.us.3.3

if.then.i.i.us.3.3:                               ; preds = %if.end.i.i.us.3.2
  %add.i.i.us.3.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.3
  %idxprom.i.i.us.3.3 = sext i32 %add.i.i.us.3.3 to i64
  %arrayidx.i.i.us.3.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.3.3
  %539 = load float, float* %arrayidx.i.i.us.3.3, align 4, !tbaa !12
  %mul6.i.i.us.3.3 = fmul float %29, %539
  store float %mul6.i.i.us.3.3, float* %arrayidx.i.i.us.3.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.3

if.end.i.i.us.3.3:                                ; preds = %if.then.i.i.us.3.3, %if.end.i.i.us.3.2
  %540 = add nuw nsw i64 %_local_id_x.i.0.us.3, 4
  %exitcond33.3.not.3 = icmp eq i64 %540, 32
  br i1 %exitcond33.3.not.3, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.3, !llvm.loop !44

if.then.i.i.us.2.1:                               ; preds = %if.end.i.i.us.2
  %add.i.i.us.2.1 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.1
  %idxprom.i.i.us.2.1 = sext i32 %add.i.i.us.2.1 to i64
  %arrayidx.i.i.us.2.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.2.1
  %541 = load float, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12
  %mul6.i.i.us.2.1 = fmul float %29, %541
  store float %mul6.i.i.us.2.1, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.1

if.end.i.i.us.2.1:                                ; preds = %if.then.i.i.us.2.1, %if.end.i.i.us.2
  %542 = or i64 %_local_id_x.i.0.us.2, 2
  %add1.i.i.i.us.2.2 = add nuw nsw i64 %542, %mul.i.i.i
  %conv.i.i.us.2.2 = trunc i64 %add1.i.i.i.us.2.2 to i32
  %cmp4.i.i.us.2.2 = icmp sgt i32 %25, %conv.i.i.us.2.2
  br i1 %cmp4.i.i.us.2.2, label %if.then.i.i.us.2.2, label %if.end.i.i.us.2.2

if.then.i.i.us.2.2:                               ; preds = %if.end.i.i.us.2.1
  %add.i.i.us.2.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.2
  %idxprom.i.i.us.2.2 = sext i32 %add.i.i.us.2.2 to i64
  %arrayidx.i.i.us.2.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.2.2
  %543 = load float, float* %arrayidx.i.i.us.2.2, align 4, !tbaa !12
  %mul6.i.i.us.2.2 = fmul float %29, %543
  store float %mul6.i.i.us.2.2, float* %arrayidx.i.i.us.2.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.2

if.end.i.i.us.2.2:                                ; preds = %if.then.i.i.us.2.2, %if.end.i.i.us.2.1
  %544 = or i64 %_local_id_x.i.0.us.2, 3
  %add1.i.i.i.us.2.3 = add nuw nsw i64 %544, %mul.i.i.i
  %conv.i.i.us.2.3 = trunc i64 %add1.i.i.i.us.2.3 to i32
  %cmp4.i.i.us.2.3 = icmp sgt i32 %25, %conv.i.i.us.2.3
  br i1 %cmp4.i.i.us.2.3, label %if.then.i.i.us.2.3, label %if.end.i.i.us.2.3

if.then.i.i.us.2.3:                               ; preds = %if.end.i.i.us.2.2
  %add.i.i.us.2.3 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.3
  %idxprom.i.i.us.2.3 = sext i32 %add.i.i.us.2.3 to i64
  %arrayidx.i.i.us.2.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.2.3
  %545 = load float, float* %arrayidx.i.i.us.2.3, align 4, !tbaa !12
  %mul6.i.i.us.2.3 = fmul float %29, %545
  store float %mul6.i.i.us.2.3, float* %arrayidx.i.i.us.2.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.3

if.end.i.i.us.2.3:                                ; preds = %if.then.i.i.us.2.3, %if.end.i.i.us.2.2
  %546 = add nuw nsw i64 %_local_id_x.i.0.us.2, 4
  %exitcond33.2.not.3 = icmp eq i64 %546, 32
  br i1 %exitcond33.2.not.3, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.2, !llvm.loop !45

if.then.i.i.us.1.1:                               ; preds = %if.end.i.i.us.1
  %add.i.i.us.1.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.1
  %idxprom.i.i.us.1.1 = sext i32 %add.i.i.us.1.1 to i64
  %arrayidx.i.i.us.1.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.1.1
  %547 = load float, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12
  %mul6.i.i.us.1.1 = fmul float %29, %547
  store float %mul6.i.i.us.1.1, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.1

if.end.i.i.us.1.1:                                ; preds = %if.then.i.i.us.1.1, %if.end.i.i.us.1
  %548 = or i64 %_local_id_x.i.0.us.1, 2
  %add1.i.i.i.us.1.2 = add nuw nsw i64 %548, %mul.i.i.i
  %conv.i.i.us.1.2 = trunc i64 %add1.i.i.i.us.1.2 to i32
  %cmp4.i.i.us.1.2 = icmp sgt i32 %25, %conv.i.i.us.1.2
  br i1 %cmp4.i.i.us.1.2, label %if.then.i.i.us.1.2, label %if.end.i.i.us.1.2

if.then.i.i.us.1.2:                               ; preds = %if.end.i.i.us.1.1
  %add.i.i.us.1.2 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.2
  %idxprom.i.i.us.1.2 = sext i32 %add.i.i.us.1.2 to i64
  %arrayidx.i.i.us.1.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.1.2
  %549 = load float, float* %arrayidx.i.i.us.1.2, align 4, !tbaa !12
  %mul6.i.i.us.1.2 = fmul float %29, %549
  store float %mul6.i.i.us.1.2, float* %arrayidx.i.i.us.1.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.2

if.end.i.i.us.1.2:                                ; preds = %if.then.i.i.us.1.2, %if.end.i.i.us.1.1
  %550 = or i64 %_local_id_x.i.0.us.1, 3
  %add1.i.i.i.us.1.3 = add nuw nsw i64 %550, %mul.i.i.i
  %conv.i.i.us.1.3 = trunc i64 %add1.i.i.i.us.1.3 to i32
  %cmp4.i.i.us.1.3 = icmp sgt i32 %25, %conv.i.i.us.1.3
  br i1 %cmp4.i.i.us.1.3, label %if.then.i.i.us.1.3, label %if.end.i.i.us.1.3

if.then.i.i.us.1.3:                               ; preds = %if.end.i.i.us.1.2
  %add.i.i.us.1.3 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.3
  %idxprom.i.i.us.1.3 = sext i32 %add.i.i.us.1.3 to i64
  %arrayidx.i.i.us.1.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.1.3
  %551 = load float, float* %arrayidx.i.i.us.1.3, align 4, !tbaa !12
  %mul6.i.i.us.1.3 = fmul float %29, %551
  store float %mul6.i.i.us.1.3, float* %arrayidx.i.i.us.1.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.3

if.end.i.i.us.1.3:                                ; preds = %if.then.i.i.us.1.3, %if.end.i.i.us.1.2
  %552 = add nuw nsw i64 %_local_id_x.i.0.us.1, 4
  %exitcond33.1.not.3 = icmp eq i64 %552, 32
  br i1 %exitcond33.1.not.3, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.1, !llvm.loop !46

if.then.i.i.us.1213:                              ; preds = %if.end.i.i.us
  %add.i.i.us.1209 = add nsw i32 %mul.i.i.us, %conv.i.i.us.1206
  %idxprom.i.i.us.1210 = sext i32 %add.i.i.us.1209 to i64
  %arrayidx.i.i.us.1211 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.1210
  %553 = load float, float* %arrayidx.i.i.us.1211, align 4, !tbaa !12
  %mul6.i.i.us.1212 = fmul float %29, %553
  store float %mul6.i.i.us.1212, float* %arrayidx.i.i.us.1211, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1214

if.end.i.i.us.1214:                               ; preds = %if.then.i.i.us.1213, %if.end.i.i.us
  %554 = or i64 %_local_id_x.i.0.us, 2
  %add1.i.i.i.us.2216 = add nuw nsw i64 %554, %mul.i.i.i
  %conv.i.i.us.2217 = trunc i64 %add1.i.i.i.us.2216 to i32
  %cmp4.i.i.us.2218 = icmp sgt i32 %25, %conv.i.i.us.2217
  br i1 %cmp4.i.i.us.2218, label %if.then.i.i.us.2224, label %if.end.i.i.us.2225

if.then.i.i.us.2224:                              ; preds = %if.end.i.i.us.1214
  %add.i.i.us.2220 = add nsw i32 %mul.i.i.us, %conv.i.i.us.2217
  %idxprom.i.i.us.2221 = sext i32 %add.i.i.us.2220 to i64
  %arrayidx.i.i.us.2222 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.2221
  %555 = load float, float* %arrayidx.i.i.us.2222, align 4, !tbaa !12
  %mul6.i.i.us.2223 = fmul float %29, %555
  store float %mul6.i.i.us.2223, float* %arrayidx.i.i.us.2222, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2225

if.end.i.i.us.2225:                               ; preds = %if.then.i.i.us.2224, %if.end.i.i.us.1214
  %556 = or i64 %_local_id_x.i.0.us, 3
  %add1.i.i.i.us.3227 = add nuw nsw i64 %556, %mul.i.i.i
  %conv.i.i.us.3228 = trunc i64 %add1.i.i.i.us.3227 to i32
  %cmp4.i.i.us.3229 = icmp sgt i32 %25, %conv.i.i.us.3228
  br i1 %cmp4.i.i.us.3229, label %if.then.i.i.us.3235, label %if.end.i.i.us.3236

if.then.i.i.us.3235:                              ; preds = %if.end.i.i.us.2225
  %add.i.i.us.3231 = add nsw i32 %mul.i.i.us, %conv.i.i.us.3228
  %idxprom.i.i.us.3232 = sext i32 %add.i.i.us.3231 to i64
  %arrayidx.i.i.us.3233 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.3232
  %557 = load float, float* %arrayidx.i.i.us.3233, align 4, !tbaa !12
  %mul6.i.i.us.3234 = fmul float %29, %557
  store float %mul6.i.i.us.3234, float* %arrayidx.i.i.us.3233, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3236

if.end.i.i.us.3236:                               ; preds = %if.then.i.i.us.3235, %if.end.i.i.us.2225
  %558 = add nuw nsw i64 %_local_id_x.i.0.us, 4
  %exitcond33.not.3 = icmp eq i64 %558, 32
  br i1 %exitcond33.not.3, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !47
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
!5 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int", !"int", !"int", !"DATA_TYPE", !"DATA_TYPE"}
!8 = !{!"float*", !"float*", !"float*", !"int", !"int", !"int", !"int", !"float", !"float"}
!9 = !{!"", !"", !"", !"", !"", !"", !"", !"", !""}
!10 = !{!"tmp", !"C", !"D", !"ni", !"nj", !"nk", !"nl", !"alpha", !"beta"}
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
