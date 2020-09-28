; ModuleID = './AC/EBHGDELLFPNDIBOOBLJPPAIJPAOBBJILCECBH/gemm/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_gemm(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, float %3, float %4, i32 %5, i32 %6, i32 %7, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %8, i64 %9, i64 %10, i64 %11) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %9, 5
  %mul3.i.i = shl i64 %10, 3
  %cmp740.i = icmp sgt i32 %7, 0
  %13 = sext i32 %6 to i64
  %wide.trip.count.i = zext i32 %7 to i64
  %conv2.i.us = trunc i64 %mul3.i.i to i32
  %cmp.i.us = icmp slt i32 %conv2.i.us, %5
  %mul.i.us = mul nsw i32 %conv2.i.us, %6
  br i1 %cmp740.i, label %pregion_for_entry.pregion_for_init.i.us, label %pregion_for_entry.pregion_for_init.i.preheader

pregion_for_entry.pregion_for_init.i.preheader:   ; preds = %12
  br i1 %cmp.i.us, label %vector.scevcheck, label %pregion_for_end.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.preheader
  %14 = trunc i64 %10 to i32
  %15 = mul i32 %14, %6
  %16 = shl i32 %15, 3
  %17 = trunc i64 %9 to i32
  %18 = shl i32 %17, 5
  %19 = add i32 %16, %18
  %20 = icmp sgt i32 %19, 2147483616
  br i1 %20, label %pregion_for_entry.entry.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.us.preheader:           ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.us

vector.ph:                                        ; preds = %vector.scevcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert38 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat39 = shufflevector <8 x i32> %broadcast.splatinsert38, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert40 = insertelement <8 x float> undef, float %4, i32 0
  %broadcast.splat41 = shufflevector <8 x float> %broadcast.splatinsert40, <8 x float> undef, <8 x i32> zeroinitializer
  %21 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %22 = or <8 x i32> %21, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %23 = icmp sgt <8 x i32> %broadcast.splat39, %22
  %24 = extractelement <8 x i32> %22, i32 0
  %25 = add nsw i32 %mul.i.us, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %2, i64 %26
  %28 = bitcast float* %27 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %28, i32 4, <8 x i1> %23, <8 x float> undef), !tbaa !12
  %29 = fmul <8 x float> %wide.masked.load, %broadcast.splat41
  %30 = bitcast float* %27 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %29, <8 x float>* %30, i32 4, <8 x i1> %23), !tbaa !12, !llvm.access.group !16
  %31 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %32 = or <8 x i32> %31, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %33 = icmp sgt <8 x i32> %broadcast.splat39, %32
  %34 = extractelement <8 x i32> %32, i32 0
  %35 = add nsw i32 %mul.i.us, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %2, i64 %36
  %38 = bitcast float* %37 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %38, i32 4, <8 x i1> %33, <8 x float> undef), !tbaa !12
  %39 = fmul <8 x float> %wide.masked.load.1, %broadcast.splat41
  %40 = bitcast float* %37 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %39, <8 x float>* %40, i32 4, <8 x i1> %33), !tbaa !12, !llvm.access.group !16
  %41 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %42 = or <8 x i32> %41, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %43 = icmp sgt <8 x i32> %broadcast.splat39, %42
  %44 = extractelement <8 x i32> %42, i32 0
  %45 = add nsw i32 %mul.i.us, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %2, i64 %46
  %48 = bitcast float* %47 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %48, i32 4, <8 x i1> %43, <8 x float> undef), !tbaa !12
  %49 = fmul <8 x float> %wide.masked.load.2, %broadcast.splat41
  %50 = bitcast float* %47 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %49, <8 x float>* %50, i32 4, <8 x i1> %43), !tbaa !12, !llvm.access.group !16
  %51 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %52 = or <8 x i32> %51, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %53 = icmp sgt <8 x i32> %broadcast.splat39, %52
  %54 = extractelement <8 x i32> %52, i32 0
  %55 = add nsw i32 %mul.i.us, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %2, i64 %56
  %58 = bitcast float* %57 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %58, i32 4, <8 x i1> %53, <8 x float> undef), !tbaa !12
  %59 = fmul <8 x float> %wide.masked.load.3, %broadcast.splat41
  %60 = bitcast float* %57 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %59, <8 x float>* %60, i32 4, <8 x i1> %53), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i

pregion_for_entry.pregion_for_init.i.us:          ; preds = %12
  %mul9.i.us = mul nsw i32 %conv2.i.us, %7
  %61 = sext i32 %mul9.i.us to i64
  br i1 %cmp.i.us, label %pregion_for_entry.entry.i.us.us.preheader, label %pregion_for_end.i.us

pregion_for_entry.entry.i.us.us.preheader:        ; preds = %pregion_for_entry.pregion_for_init.i.us
  br label %pregion_for_entry.entry.i.us.us

pregion_for_end.i.us.loopexit:                    ; preds = %if.end.i.us.us
  br label %pregion_for_end.i.us

pregion_for_end.i.us:                             ; preds = %pregion_for_end.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.us
  %62 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.1 = or i32 %62, 1
  %cmp.i.us.1 = icmp slt i32 %conv2.i.us.1, %5
  %mul.i.us.1 = mul nsw i32 %conv2.i.us.1, %6
  %mul9.i.us.1 = mul nsw i32 %conv2.i.us.1, %7
  %63 = sext i32 %mul9.i.us.1 to i64
  br i1 %cmp.i.us.1, label %pregion_for_entry.entry.i.us.us.1.preheader, label %pregion_for_end.i.us.1

pregion_for_entry.entry.i.us.us.1.preheader:      ; preds = %pregion_for_end.i.us
  br label %pregion_for_entry.entry.i.us.us.1

pregion_for_entry.entry.i.us.us:                  ; preds = %if.end.i.us.us, %pregion_for_entry.entry.i.us.us.preheader
  %_local_id_x.0.us.us = phi i64 [ %66, %if.end.i.us.us ], [ 0, %pregion_for_entry.entry.i.us.us.preheader ]
  %add1.i.i.us.us = add nuw nsw i64 %_local_id_x.0.us.us, %mul.i.i
  %conv.i.us.us = trunc i64 %add1.i.i.us.us to i32
  %cmp4.i.us.us = icmp slt i32 %conv.i.us.us, %6
  br i1 %cmp4.i.us.us, label %if.then.i.us.us, label %if.end.i.us.us

if.then.i.us.us:                                  ; preds = %pregion_for_entry.entry.i.us.us
  %add.i.us.us = add nsw i32 %mul.i.us, %conv.i.us.us
  %idxprom.i.us.us = sext i32 %add.i.us.us to i64
  %arrayidx.i.us.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us
  %64 = load float, float* %arrayidx.i.us.us, align 4, !tbaa !12
  %mul6.i.us.us = fmul float %64, %4
  store float %mul6.i.us.us, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us = shl i64 %add1.i.i.us.us, 32
  %65 = ashr exact i64 %sext.i.us.us, 32
  br label %for.body.i.us.us

if.end.i.us.us.loopexit:                          ; preds = %for.body.i.us.us
  br label %if.end.i.us.us

if.end.i.us.us:                                   ; preds = %if.end.i.us.us.loopexit, %pregion_for_entry.entry.i.us.us
  %66 = add nuw nsw i64 %_local_id_x.0.us.us, 1
  %exitcond.not = icmp eq i64 %66, 32
  br i1 %exitcond.not, label %pregion_for_end.i.us.loopexit, label %pregion_for_entry.entry.i.us.us, !llvm.loop !19

for.body.i.us.us:                                 ; preds = %for.body.i.us.us, %if.then.i.us.us
  %indvars.iv.next.i3.us.us = phi i64 [ %indvars.iv.next.i.us.us, %for.body.i.us.us ], [ 0, %if.then.i.us.us ]
  %67 = phi float [ %73, %for.body.i.us.us ], [ %mul6.i.us.us, %if.then.i.us.us ]
  %68 = add nsw i64 %indvars.iv.next.i3.us.us, %61
  %arrayidx12.i.us.us = getelementptr inbounds float, float* %0, i64 %68
  %69 = load float, float* %arrayidx12.i.us.us, align 4, !tbaa !12
  %mul13.i.us.us = fmul float %69, %3
  %70 = mul nsw i64 %indvars.iv.next.i3.us.us, %13
  %71 = add nsw i64 %70, %65
  %arrayidx17.i.us.us = getelementptr inbounds float, float* %1, i64 %71
  %72 = load float, float* %arrayidx17.i.us.us, align 4, !tbaa !12
  %73 = tail call float @llvm.fmuladd.f32(float %mul13.i.us.us, float %72, float %67) #2
  store float %73, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.next.i3.us.us, 1
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %if.end.i.us.us.loopexit, label %for.body.i.us.us, !llvm.loop !21

pregion_for_entry.entry.i.us:                     ; preds = %if.end.i.us.3237, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %541, %if.end.i.us.3237 ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp4.i.us = icmp slt i32 %conv.i.us, %6
  br i1 %cmp4.i.us, label %if.then.i.us, label %if.end.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %add.i.us = add nsw i32 %mul.i.us, %conv.i.us
  %idxprom.i.us = sext i32 %add.i.us to i64
  %arrayidx.i.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us
  %74 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %mul6.i.us = fmul float %74, %4
  store float %mul6.i.us, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us

if.end.i.us:                                      ; preds = %if.then.i.us, %pregion_for_entry.entry.i.us
  %75 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1206 = add nuw nsw i64 %75, %mul.i.i
  %conv.i.us.1207 = trunc i64 %add1.i.i.us.1206 to i32
  %cmp4.i.us.1208 = icmp slt i32 %conv.i.us.1207, %6
  br i1 %cmp4.i.us.1208, label %if.then.i.us.1214, label %if.end.i.us.1215

pregion_for_end.i.loopexit:                       ; preds = %if.end.i.us.3237
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %pregion_for_end.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.preheader
  %76 = trunc i64 %mul3.i.i to i32
  %conv2.i.1 = or i32 %76, 1
  %cmp.i.1 = icmp slt i32 %conv2.i.1, %5
  %mul.i.1 = mul nsw i32 %conv2.i.1, %6
  br i1 %cmp.i.1, label %vector.scevcheck49, label %pregion_for_end.i.1

vector.scevcheck49:                               ; preds = %pregion_for_end.i
  %77 = mul i32 %conv2.i.1, %6
  %78 = trunc i64 %9 to i32
  %79 = shl i32 %78, 5
  %80 = add i32 %77, %79
  %81 = icmp sgt i32 %80, 2147483616
  br i1 %81, label %pregion_for_entry.entry.i.us.1.preheader, label %vector.ph50

pregion_for_entry.entry.i.us.1.preheader:         ; preds = %vector.scevcheck49
  br label %pregion_for_entry.entry.i.us.1

vector.ph50:                                      ; preds = %vector.scevcheck49
  %broadcast.splatinsert57 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat58 = shufflevector <8 x i64> %broadcast.splatinsert57, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert59 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat60 = shufflevector <8 x i32> %broadcast.splatinsert59, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <8 x float> undef, float %4, i32 0
  %broadcast.splat63 = shufflevector <8 x float> %broadcast.splatinsert62, <8 x float> undef, <8 x i32> zeroinitializer
  %82 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %83 = or <8 x i32> %82, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %84 = icmp sgt <8 x i32> %broadcast.splat60, %83
  %85 = extractelement <8 x i32> %83, i32 0
  %86 = add nsw i32 %mul.i.1, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %2, i64 %87
  %89 = bitcast float* %88 to <8 x float>*
  %wide.masked.load61 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %89, i32 4, <8 x i1> %84, <8 x float> undef), !tbaa !12
  %90 = fmul <8 x float> %wide.masked.load61, %broadcast.splat63
  %91 = bitcast float* %88 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %90, <8 x float>* %91, i32 4, <8 x i1> %84), !tbaa !12, !llvm.access.group !16
  %92 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %93 = or <8 x i32> %92, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %94 = icmp sgt <8 x i32> %broadcast.splat60, %93
  %95 = extractelement <8 x i32> %93, i32 0
  %96 = add nsw i32 %mul.i.1, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %2, i64 %97
  %99 = bitcast float* %98 to <8 x float>*
  %wide.masked.load61.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %99, i32 4, <8 x i1> %94, <8 x float> undef), !tbaa !12
  %100 = fmul <8 x float> %wide.masked.load61.1, %broadcast.splat63
  %101 = bitcast float* %98 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %100, <8 x float>* %101, i32 4, <8 x i1> %94), !tbaa !12, !llvm.access.group !16
  %102 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %103 = or <8 x i32> %102, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %104 = icmp sgt <8 x i32> %broadcast.splat60, %103
  %105 = extractelement <8 x i32> %103, i32 0
  %106 = add nsw i32 %mul.i.1, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %2, i64 %107
  %109 = bitcast float* %108 to <8 x float>*
  %wide.masked.load61.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %109, i32 4, <8 x i1> %104, <8 x float> undef), !tbaa !12
  %110 = fmul <8 x float> %wide.masked.load61.2, %broadcast.splat63
  %111 = bitcast float* %108 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %110, <8 x float>* %111, i32 4, <8 x i1> %104), !tbaa !12, !llvm.access.group !16
  %112 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %113 = or <8 x i32> %112, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %114 = icmp sgt <8 x i32> %broadcast.splat60, %113
  %115 = extractelement <8 x i32> %113, i32 0
  %116 = add nsw i32 %mul.i.1, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %2, i64 %117
  %119 = bitcast float* %118 to <8 x float>*
  %wide.masked.load61.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %119, i32 4, <8 x i1> %114, <8 x float> undef), !tbaa !12
  %120 = fmul <8 x float> %wide.masked.load61.3, %broadcast.splat63
  %121 = bitcast float* %118 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %120, <8 x float>* %121, i32 4, <8 x i1> %114), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.1

gemm.exit.loopexit:                               ; preds = %if.end.i.us.us.7
  br label %gemm.exit

gemm.exit.loopexit238:                            ; preds = %if.end.i.us.7.3
  br label %gemm.exit

gemm.exit:                                        ; preds = %pregion_for_end.i.us.6, %vector.ph182, %pregion_for_end.i.6, %gemm.exit.loopexit238, %gemm.exit.loopexit
  ret void

pregion_for_entry.entry.i.us.1:                   ; preds = %if.end.i.us.1.3, %pregion_for_entry.entry.i.us.1.preheader
  %_local_id_x.0.us.1 = phi i64 [ %535, %if.end.i.us.1.3 ], [ 0, %pregion_for_entry.entry.i.us.1.preheader ]
  %add1.i.i.us.1 = add nuw nsw i64 %_local_id_x.0.us.1, %mul.i.i
  %conv.i.us.1 = trunc i64 %add1.i.i.us.1 to i32
  %cmp4.i.us.1 = icmp slt i32 %conv.i.us.1, %6
  br i1 %cmp4.i.us.1, label %if.then.i.us.1, label %if.end.i.us.1

if.then.i.us.1:                                   ; preds = %pregion_for_entry.entry.i.us.1
  %add.i.us.1 = add nsw i32 %mul.i.1, %conv.i.us.1
  %idxprom.i.us.1 = sext i32 %add.i.us.1 to i64
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1
  %122 = load float, float* %arrayidx.i.us.1, align 4, !tbaa !12
  %mul6.i.us.1 = fmul float %122, %4
  store float %mul6.i.us.1, float* %arrayidx.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1

if.end.i.us.1:                                    ; preds = %if.then.i.us.1, %pregion_for_entry.entry.i.us.1
  %123 = or i64 %_local_id_x.0.us.1, 1
  %add1.i.i.us.1.1 = add nuw nsw i64 %123, %mul.i.i
  %conv.i.us.1.1 = trunc i64 %add1.i.i.us.1.1 to i32
  %cmp4.i.us.1.1 = icmp slt i32 %conv.i.us.1.1, %6
  br i1 %cmp4.i.us.1.1, label %if.then.i.us.1.1, label %if.end.i.us.1.1

pregion_for_end.i.1.loopexit:                     ; preds = %if.end.i.us.1.3
  br label %pregion_for_end.i.1

pregion_for_end.i.1:                              ; preds = %pregion_for_end.i.1.loopexit, %vector.ph50, %pregion_for_end.i
  %124 = trunc i64 %mul3.i.i to i32
  %conv2.i.2 = or i32 %124, 2
  %cmp.i.2 = icmp slt i32 %conv2.i.2, %5
  %mul.i.2 = mul nsw i32 %conv2.i.2, %6
  br i1 %cmp.i.2, label %vector.scevcheck71, label %pregion_for_end.i.2

vector.scevcheck71:                               ; preds = %pregion_for_end.i.1
  %125 = mul i32 %conv2.i.2, %6
  %126 = trunc i64 %9 to i32
  %127 = shl i32 %126, 5
  %128 = add i32 %125, %127
  %129 = icmp sgt i32 %128, 2147483616
  br i1 %129, label %pregion_for_entry.entry.i.us.2.preheader, label %vector.ph72

pregion_for_entry.entry.i.us.2.preheader:         ; preds = %vector.scevcheck71
  br label %pregion_for_entry.entry.i.us.2

vector.ph72:                                      ; preds = %vector.scevcheck71
  %broadcast.splatinsert79 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat80 = shufflevector <8 x i64> %broadcast.splatinsert79, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert81 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat82 = shufflevector <8 x i32> %broadcast.splatinsert81, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert84 = insertelement <8 x float> undef, float %4, i32 0
  %broadcast.splat85 = shufflevector <8 x float> %broadcast.splatinsert84, <8 x float> undef, <8 x i32> zeroinitializer
  %130 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %131 = or <8 x i32> %130, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %132 = icmp sgt <8 x i32> %broadcast.splat82, %131
  %133 = extractelement <8 x i32> %131, i32 0
  %134 = add nsw i32 %mul.i.2, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %2, i64 %135
  %137 = bitcast float* %136 to <8 x float>*
  %wide.masked.load83 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %137, i32 4, <8 x i1> %132, <8 x float> undef), !tbaa !12
  %138 = fmul <8 x float> %wide.masked.load83, %broadcast.splat85
  %139 = bitcast float* %136 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %138, <8 x float>* %139, i32 4, <8 x i1> %132), !tbaa !12, !llvm.access.group !16
  %140 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %141 = or <8 x i32> %140, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %142 = icmp sgt <8 x i32> %broadcast.splat82, %141
  %143 = extractelement <8 x i32> %141, i32 0
  %144 = add nsw i32 %mul.i.2, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %2, i64 %145
  %147 = bitcast float* %146 to <8 x float>*
  %wide.masked.load83.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %147, i32 4, <8 x i1> %142, <8 x float> undef), !tbaa !12
  %148 = fmul <8 x float> %wide.masked.load83.1, %broadcast.splat85
  %149 = bitcast float* %146 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %148, <8 x float>* %149, i32 4, <8 x i1> %142), !tbaa !12, !llvm.access.group !16
  %150 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %151 = or <8 x i32> %150, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %152 = icmp sgt <8 x i32> %broadcast.splat82, %151
  %153 = extractelement <8 x i32> %151, i32 0
  %154 = add nsw i32 %mul.i.2, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %2, i64 %155
  %157 = bitcast float* %156 to <8 x float>*
  %wide.masked.load83.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %157, i32 4, <8 x i1> %152, <8 x float> undef), !tbaa !12
  %158 = fmul <8 x float> %wide.masked.load83.2, %broadcast.splat85
  %159 = bitcast float* %156 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %158, <8 x float>* %159, i32 4, <8 x i1> %152), !tbaa !12, !llvm.access.group !16
  %160 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %161 = or <8 x i32> %160, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %162 = icmp sgt <8 x i32> %broadcast.splat82, %161
  %163 = extractelement <8 x i32> %161, i32 0
  %164 = add nsw i32 %mul.i.2, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %2, i64 %165
  %167 = bitcast float* %166 to <8 x float>*
  %wide.masked.load83.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %167, i32 4, <8 x i1> %162, <8 x float> undef), !tbaa !12
  %168 = fmul <8 x float> %wide.masked.load83.3, %broadcast.splat85
  %169 = bitcast float* %166 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %168, <8 x float>* %169, i32 4, <8 x i1> %162), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.2

pregion_for_entry.entry.i.us.2:                   ; preds = %if.end.i.us.2.3, %pregion_for_entry.entry.i.us.2.preheader
  %_local_id_x.0.us.2 = phi i64 [ %529, %if.end.i.us.2.3 ], [ 0, %pregion_for_entry.entry.i.us.2.preheader ]
  %add1.i.i.us.2 = add nuw nsw i64 %_local_id_x.0.us.2, %mul.i.i
  %conv.i.us.2 = trunc i64 %add1.i.i.us.2 to i32
  %cmp4.i.us.2 = icmp slt i32 %conv.i.us.2, %6
  br i1 %cmp4.i.us.2, label %if.then.i.us.2, label %if.end.i.us.2

if.then.i.us.2:                                   ; preds = %pregion_for_entry.entry.i.us.2
  %add.i.us.2 = add nsw i32 %mul.i.2, %conv.i.us.2
  %idxprom.i.us.2 = sext i32 %add.i.us.2 to i64
  %arrayidx.i.us.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.2
  %170 = load float, float* %arrayidx.i.us.2, align 4, !tbaa !12
  %mul6.i.us.2 = fmul float %170, %4
  store float %mul6.i.us.2, float* %arrayidx.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2

if.end.i.us.2:                                    ; preds = %if.then.i.us.2, %pregion_for_entry.entry.i.us.2
  %171 = or i64 %_local_id_x.0.us.2, 1
  %add1.i.i.us.2.1 = add nuw nsw i64 %171, %mul.i.i
  %conv.i.us.2.1 = trunc i64 %add1.i.i.us.2.1 to i32
  %cmp4.i.us.2.1 = icmp slt i32 %conv.i.us.2.1, %6
  br i1 %cmp4.i.us.2.1, label %if.then.i.us.2.1, label %if.end.i.us.2.1

pregion_for_end.i.2.loopexit:                     ; preds = %if.end.i.us.2.3
  br label %pregion_for_end.i.2

pregion_for_end.i.2:                              ; preds = %pregion_for_end.i.2.loopexit, %vector.ph72, %pregion_for_end.i.1
  %172 = trunc i64 %mul3.i.i to i32
  %conv2.i.3 = or i32 %172, 3
  %cmp.i.3 = icmp slt i32 %conv2.i.3, %5
  %mul.i.3 = mul nsw i32 %conv2.i.3, %6
  br i1 %cmp.i.3, label %vector.scevcheck93, label %pregion_for_end.i.3

vector.scevcheck93:                               ; preds = %pregion_for_end.i.2
  %173 = mul i32 %conv2.i.3, %6
  %174 = trunc i64 %9 to i32
  %175 = shl i32 %174, 5
  %176 = add i32 %173, %175
  %177 = icmp sgt i32 %176, 2147483616
  br i1 %177, label %pregion_for_entry.entry.i.us.3.preheader, label %vector.ph94

pregion_for_entry.entry.i.us.3.preheader:         ; preds = %vector.scevcheck93
  br label %pregion_for_entry.entry.i.us.3

vector.ph94:                                      ; preds = %vector.scevcheck93
  %broadcast.splatinsert101 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat102 = shufflevector <8 x i64> %broadcast.splatinsert101, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat104 = shufflevector <8 x i32> %broadcast.splatinsert103, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert106 = insertelement <8 x float> undef, float %4, i32 0
  %broadcast.splat107 = shufflevector <8 x float> %broadcast.splatinsert106, <8 x float> undef, <8 x i32> zeroinitializer
  %178 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %179 = or <8 x i32> %178, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %180 = icmp sgt <8 x i32> %broadcast.splat104, %179
  %181 = extractelement <8 x i32> %179, i32 0
  %182 = add nsw i32 %mul.i.3, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %2, i64 %183
  %185 = bitcast float* %184 to <8 x float>*
  %wide.masked.load105 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %185, i32 4, <8 x i1> %180, <8 x float> undef), !tbaa !12
  %186 = fmul <8 x float> %wide.masked.load105, %broadcast.splat107
  %187 = bitcast float* %184 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %186, <8 x float>* %187, i32 4, <8 x i1> %180), !tbaa !12, !llvm.access.group !16
  %188 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %189 = or <8 x i32> %188, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %190 = icmp sgt <8 x i32> %broadcast.splat104, %189
  %191 = extractelement <8 x i32> %189, i32 0
  %192 = add nsw i32 %mul.i.3, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %2, i64 %193
  %195 = bitcast float* %194 to <8 x float>*
  %wide.masked.load105.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %195, i32 4, <8 x i1> %190, <8 x float> undef), !tbaa !12
  %196 = fmul <8 x float> %wide.masked.load105.1, %broadcast.splat107
  %197 = bitcast float* %194 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %196, <8 x float>* %197, i32 4, <8 x i1> %190), !tbaa !12, !llvm.access.group !16
  %198 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %199 = or <8 x i32> %198, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %200 = icmp sgt <8 x i32> %broadcast.splat104, %199
  %201 = extractelement <8 x i32> %199, i32 0
  %202 = add nsw i32 %mul.i.3, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %2, i64 %203
  %205 = bitcast float* %204 to <8 x float>*
  %wide.masked.load105.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %205, i32 4, <8 x i1> %200, <8 x float> undef), !tbaa !12
  %206 = fmul <8 x float> %wide.masked.load105.2, %broadcast.splat107
  %207 = bitcast float* %204 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %206, <8 x float>* %207, i32 4, <8 x i1> %200), !tbaa !12, !llvm.access.group !16
  %208 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %209 = or <8 x i32> %208, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %210 = icmp sgt <8 x i32> %broadcast.splat104, %209
  %211 = extractelement <8 x i32> %209, i32 0
  %212 = add nsw i32 %mul.i.3, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %2, i64 %213
  %215 = bitcast float* %214 to <8 x float>*
  %wide.masked.load105.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %215, i32 4, <8 x i1> %210, <8 x float> undef), !tbaa !12
  %216 = fmul <8 x float> %wide.masked.load105.3, %broadcast.splat107
  %217 = bitcast float* %214 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %216, <8 x float>* %217, i32 4, <8 x i1> %210), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.3

pregion_for_entry.entry.i.us.3:                   ; preds = %if.end.i.us.3.3, %pregion_for_entry.entry.i.us.3.preheader
  %_local_id_x.0.us.3 = phi i64 [ %523, %if.end.i.us.3.3 ], [ 0, %pregion_for_entry.entry.i.us.3.preheader ]
  %add1.i.i.us.3 = add nuw nsw i64 %_local_id_x.0.us.3, %mul.i.i
  %conv.i.us.3 = trunc i64 %add1.i.i.us.3 to i32
  %cmp4.i.us.3 = icmp slt i32 %conv.i.us.3, %6
  br i1 %cmp4.i.us.3, label %if.then.i.us.3, label %if.end.i.us.3

if.then.i.us.3:                                   ; preds = %pregion_for_entry.entry.i.us.3
  %add.i.us.3 = add nsw i32 %mul.i.3, %conv.i.us.3
  %idxprom.i.us.3 = sext i32 %add.i.us.3 to i64
  %arrayidx.i.us.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.3
  %218 = load float, float* %arrayidx.i.us.3, align 4, !tbaa !12
  %mul6.i.us.3 = fmul float %218, %4
  store float %mul6.i.us.3, float* %arrayidx.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3

if.end.i.us.3:                                    ; preds = %if.then.i.us.3, %pregion_for_entry.entry.i.us.3
  %219 = or i64 %_local_id_x.0.us.3, 1
  %add1.i.i.us.3.1 = add nuw nsw i64 %219, %mul.i.i
  %conv.i.us.3.1 = trunc i64 %add1.i.i.us.3.1 to i32
  %cmp4.i.us.3.1 = icmp slt i32 %conv.i.us.3.1, %6
  br i1 %cmp4.i.us.3.1, label %if.then.i.us.3.1, label %if.end.i.us.3.1

pregion_for_end.i.3.loopexit:                     ; preds = %if.end.i.us.3.3
  br label %pregion_for_end.i.3

pregion_for_end.i.3:                              ; preds = %pregion_for_end.i.3.loopexit, %vector.ph94, %pregion_for_end.i.2
  %220 = trunc i64 %mul3.i.i to i32
  %conv2.i.4 = or i32 %220, 4
  %cmp.i.4 = icmp slt i32 %conv2.i.4, %5
  %mul.i.4 = mul nsw i32 %conv2.i.4, %6
  br i1 %cmp.i.4, label %vector.scevcheck115, label %pregion_for_end.i.4

vector.scevcheck115:                              ; preds = %pregion_for_end.i.3
  %221 = mul i32 %conv2.i.4, %6
  %222 = trunc i64 %9 to i32
  %223 = shl i32 %222, 5
  %224 = add i32 %221, %223
  %225 = icmp sgt i32 %224, 2147483616
  br i1 %225, label %pregion_for_entry.entry.i.us.4.preheader, label %vector.ph116

pregion_for_entry.entry.i.us.4.preheader:         ; preds = %vector.scevcheck115
  br label %pregion_for_entry.entry.i.us.4

vector.ph116:                                     ; preds = %vector.scevcheck115
  %broadcast.splatinsert123 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat124 = shufflevector <8 x i64> %broadcast.splatinsert123, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert125 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat126 = shufflevector <8 x i32> %broadcast.splatinsert125, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert128 = insertelement <8 x float> undef, float %4, i32 0
  %broadcast.splat129 = shufflevector <8 x float> %broadcast.splatinsert128, <8 x float> undef, <8 x i32> zeroinitializer
  %226 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %227 = or <8 x i32> %226, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %228 = icmp sgt <8 x i32> %broadcast.splat126, %227
  %229 = extractelement <8 x i32> %227, i32 0
  %230 = add nsw i32 %mul.i.4, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %2, i64 %231
  %233 = bitcast float* %232 to <8 x float>*
  %wide.masked.load127 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %233, i32 4, <8 x i1> %228, <8 x float> undef), !tbaa !12
  %234 = fmul <8 x float> %wide.masked.load127, %broadcast.splat129
  %235 = bitcast float* %232 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %234, <8 x float>* %235, i32 4, <8 x i1> %228), !tbaa !12, !llvm.access.group !16
  %236 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %237 = or <8 x i32> %236, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %238 = icmp sgt <8 x i32> %broadcast.splat126, %237
  %239 = extractelement <8 x i32> %237, i32 0
  %240 = add nsw i32 %mul.i.4, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %2, i64 %241
  %243 = bitcast float* %242 to <8 x float>*
  %wide.masked.load127.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %243, i32 4, <8 x i1> %238, <8 x float> undef), !tbaa !12
  %244 = fmul <8 x float> %wide.masked.load127.1, %broadcast.splat129
  %245 = bitcast float* %242 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %244, <8 x float>* %245, i32 4, <8 x i1> %238), !tbaa !12, !llvm.access.group !16
  %246 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %247 = or <8 x i32> %246, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %248 = icmp sgt <8 x i32> %broadcast.splat126, %247
  %249 = extractelement <8 x i32> %247, i32 0
  %250 = add nsw i32 %mul.i.4, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %2, i64 %251
  %253 = bitcast float* %252 to <8 x float>*
  %wide.masked.load127.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %253, i32 4, <8 x i1> %248, <8 x float> undef), !tbaa !12
  %254 = fmul <8 x float> %wide.masked.load127.2, %broadcast.splat129
  %255 = bitcast float* %252 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %254, <8 x float>* %255, i32 4, <8 x i1> %248), !tbaa !12, !llvm.access.group !16
  %256 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %257 = or <8 x i32> %256, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %258 = icmp sgt <8 x i32> %broadcast.splat126, %257
  %259 = extractelement <8 x i32> %257, i32 0
  %260 = add nsw i32 %mul.i.4, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %2, i64 %261
  %263 = bitcast float* %262 to <8 x float>*
  %wide.masked.load127.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %263, i32 4, <8 x i1> %258, <8 x float> undef), !tbaa !12
  %264 = fmul <8 x float> %wide.masked.load127.3, %broadcast.splat129
  %265 = bitcast float* %262 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %264, <8 x float>* %265, i32 4, <8 x i1> %258), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.4

pregion_for_entry.entry.i.us.4:                   ; preds = %if.end.i.us.4.3, %pregion_for_entry.entry.i.us.4.preheader
  %_local_id_x.0.us.4 = phi i64 [ %517, %if.end.i.us.4.3 ], [ 0, %pregion_for_entry.entry.i.us.4.preheader ]
  %add1.i.i.us.4 = add nuw nsw i64 %_local_id_x.0.us.4, %mul.i.i
  %conv.i.us.4 = trunc i64 %add1.i.i.us.4 to i32
  %cmp4.i.us.4 = icmp slt i32 %conv.i.us.4, %6
  br i1 %cmp4.i.us.4, label %if.then.i.us.4, label %if.end.i.us.4

if.then.i.us.4:                                   ; preds = %pregion_for_entry.entry.i.us.4
  %add.i.us.4 = add nsw i32 %mul.i.4, %conv.i.us.4
  %idxprom.i.us.4 = sext i32 %add.i.us.4 to i64
  %arrayidx.i.us.4 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.4
  %266 = load float, float* %arrayidx.i.us.4, align 4, !tbaa !12
  %mul6.i.us.4 = fmul float %266, %4
  store float %mul6.i.us.4, float* %arrayidx.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.4

if.end.i.us.4:                                    ; preds = %if.then.i.us.4, %pregion_for_entry.entry.i.us.4
  %267 = or i64 %_local_id_x.0.us.4, 1
  %add1.i.i.us.4.1 = add nuw nsw i64 %267, %mul.i.i
  %conv.i.us.4.1 = trunc i64 %add1.i.i.us.4.1 to i32
  %cmp4.i.us.4.1 = icmp slt i32 %conv.i.us.4.1, %6
  br i1 %cmp4.i.us.4.1, label %if.then.i.us.4.1, label %if.end.i.us.4.1

pregion_for_end.i.4.loopexit:                     ; preds = %if.end.i.us.4.3
  br label %pregion_for_end.i.4

pregion_for_end.i.4:                              ; preds = %pregion_for_end.i.4.loopexit, %vector.ph116, %pregion_for_end.i.3
  %268 = trunc i64 %mul3.i.i to i32
  %conv2.i.5 = or i32 %268, 5
  %cmp.i.5 = icmp slt i32 %conv2.i.5, %5
  %mul.i.5 = mul nsw i32 %conv2.i.5, %6
  br i1 %cmp.i.5, label %vector.scevcheck137, label %pregion_for_end.i.5

vector.scevcheck137:                              ; preds = %pregion_for_end.i.4
  %269 = mul i32 %conv2.i.5, %6
  %270 = trunc i64 %9 to i32
  %271 = shl i32 %270, 5
  %272 = add i32 %269, %271
  %273 = icmp sgt i32 %272, 2147483616
  br i1 %273, label %pregion_for_entry.entry.i.us.5.preheader, label %vector.ph138

pregion_for_entry.entry.i.us.5.preheader:         ; preds = %vector.scevcheck137
  br label %pregion_for_entry.entry.i.us.5

vector.ph138:                                     ; preds = %vector.scevcheck137
  %broadcast.splatinsert145 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat146 = shufflevector <8 x i64> %broadcast.splatinsert145, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert147 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat148 = shufflevector <8 x i32> %broadcast.splatinsert147, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert150 = insertelement <8 x float> undef, float %4, i32 0
  %broadcast.splat151 = shufflevector <8 x float> %broadcast.splatinsert150, <8 x float> undef, <8 x i32> zeroinitializer
  %274 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %275 = or <8 x i32> %274, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %276 = icmp sgt <8 x i32> %broadcast.splat148, %275
  %277 = extractelement <8 x i32> %275, i32 0
  %278 = add nsw i32 %mul.i.5, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %2, i64 %279
  %281 = bitcast float* %280 to <8 x float>*
  %wide.masked.load149 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %281, i32 4, <8 x i1> %276, <8 x float> undef), !tbaa !12
  %282 = fmul <8 x float> %wide.masked.load149, %broadcast.splat151
  %283 = bitcast float* %280 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %282, <8 x float>* %283, i32 4, <8 x i1> %276), !tbaa !12, !llvm.access.group !16
  %284 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %285 = or <8 x i32> %284, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %286 = icmp sgt <8 x i32> %broadcast.splat148, %285
  %287 = extractelement <8 x i32> %285, i32 0
  %288 = add nsw i32 %mul.i.5, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds float, float* %2, i64 %289
  %291 = bitcast float* %290 to <8 x float>*
  %wide.masked.load149.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %291, i32 4, <8 x i1> %286, <8 x float> undef), !tbaa !12
  %292 = fmul <8 x float> %wide.masked.load149.1, %broadcast.splat151
  %293 = bitcast float* %290 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %292, <8 x float>* %293, i32 4, <8 x i1> %286), !tbaa !12, !llvm.access.group !16
  %294 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %295 = or <8 x i32> %294, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %296 = icmp sgt <8 x i32> %broadcast.splat148, %295
  %297 = extractelement <8 x i32> %295, i32 0
  %298 = add nsw i32 %mul.i.5, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %2, i64 %299
  %301 = bitcast float* %300 to <8 x float>*
  %wide.masked.load149.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %301, i32 4, <8 x i1> %296, <8 x float> undef), !tbaa !12
  %302 = fmul <8 x float> %wide.masked.load149.2, %broadcast.splat151
  %303 = bitcast float* %300 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %302, <8 x float>* %303, i32 4, <8 x i1> %296), !tbaa !12, !llvm.access.group !16
  %304 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %305 = or <8 x i32> %304, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %306 = icmp sgt <8 x i32> %broadcast.splat148, %305
  %307 = extractelement <8 x i32> %305, i32 0
  %308 = add nsw i32 %mul.i.5, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %2, i64 %309
  %311 = bitcast float* %310 to <8 x float>*
  %wide.masked.load149.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %311, i32 4, <8 x i1> %306, <8 x float> undef), !tbaa !12
  %312 = fmul <8 x float> %wide.masked.load149.3, %broadcast.splat151
  %313 = bitcast float* %310 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %312, <8 x float>* %313, i32 4, <8 x i1> %306), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.5

pregion_for_entry.entry.i.us.5:                   ; preds = %if.end.i.us.5.3, %pregion_for_entry.entry.i.us.5.preheader
  %_local_id_x.0.us.5 = phi i64 [ %511, %if.end.i.us.5.3 ], [ 0, %pregion_for_entry.entry.i.us.5.preheader ]
  %add1.i.i.us.5 = add nuw nsw i64 %_local_id_x.0.us.5, %mul.i.i
  %conv.i.us.5 = trunc i64 %add1.i.i.us.5 to i32
  %cmp4.i.us.5 = icmp slt i32 %conv.i.us.5, %6
  br i1 %cmp4.i.us.5, label %if.then.i.us.5, label %if.end.i.us.5

if.then.i.us.5:                                   ; preds = %pregion_for_entry.entry.i.us.5
  %add.i.us.5 = add nsw i32 %mul.i.5, %conv.i.us.5
  %idxprom.i.us.5 = sext i32 %add.i.us.5 to i64
  %arrayidx.i.us.5 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.5
  %314 = load float, float* %arrayidx.i.us.5, align 4, !tbaa !12
  %mul6.i.us.5 = fmul float %314, %4
  store float %mul6.i.us.5, float* %arrayidx.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.5

if.end.i.us.5:                                    ; preds = %if.then.i.us.5, %pregion_for_entry.entry.i.us.5
  %315 = or i64 %_local_id_x.0.us.5, 1
  %add1.i.i.us.5.1 = add nuw nsw i64 %315, %mul.i.i
  %conv.i.us.5.1 = trunc i64 %add1.i.i.us.5.1 to i32
  %cmp4.i.us.5.1 = icmp slt i32 %conv.i.us.5.1, %6
  br i1 %cmp4.i.us.5.1, label %if.then.i.us.5.1, label %if.end.i.us.5.1

pregion_for_end.i.5.loopexit:                     ; preds = %if.end.i.us.5.3
  br label %pregion_for_end.i.5

pregion_for_end.i.5:                              ; preds = %pregion_for_end.i.5.loopexit, %vector.ph138, %pregion_for_end.i.4
  %316 = trunc i64 %mul3.i.i to i32
  %conv2.i.6 = or i32 %316, 6
  %cmp.i.6 = icmp slt i32 %conv2.i.6, %5
  %mul.i.6 = mul nsw i32 %conv2.i.6, %6
  br i1 %cmp.i.6, label %vector.scevcheck159, label %pregion_for_end.i.6

vector.scevcheck159:                              ; preds = %pregion_for_end.i.5
  %317 = mul i32 %conv2.i.6, %6
  %318 = trunc i64 %9 to i32
  %319 = shl i32 %318, 5
  %320 = add i32 %317, %319
  %321 = icmp sgt i32 %320, 2147483616
  br i1 %321, label %pregion_for_entry.entry.i.us.6.preheader, label %vector.ph160

pregion_for_entry.entry.i.us.6.preheader:         ; preds = %vector.scevcheck159
  br label %pregion_for_entry.entry.i.us.6

vector.ph160:                                     ; preds = %vector.scevcheck159
  %broadcast.splatinsert167 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat168 = shufflevector <8 x i64> %broadcast.splatinsert167, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert169 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat170 = shufflevector <8 x i32> %broadcast.splatinsert169, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <8 x float> undef, float %4, i32 0
  %broadcast.splat173 = shufflevector <8 x float> %broadcast.splatinsert172, <8 x float> undef, <8 x i32> zeroinitializer
  %322 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %323 = or <8 x i32> %322, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %324 = icmp sgt <8 x i32> %broadcast.splat170, %323
  %325 = extractelement <8 x i32> %323, i32 0
  %326 = add nsw i32 %mul.i.6, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %2, i64 %327
  %329 = bitcast float* %328 to <8 x float>*
  %wide.masked.load171 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %329, i32 4, <8 x i1> %324, <8 x float> undef), !tbaa !12
  %330 = fmul <8 x float> %wide.masked.load171, %broadcast.splat173
  %331 = bitcast float* %328 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %330, <8 x float>* %331, i32 4, <8 x i1> %324), !tbaa !12, !llvm.access.group !16
  %332 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %333 = or <8 x i32> %332, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %334 = icmp sgt <8 x i32> %broadcast.splat170, %333
  %335 = extractelement <8 x i32> %333, i32 0
  %336 = add nsw i32 %mul.i.6, %335
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds float, float* %2, i64 %337
  %339 = bitcast float* %338 to <8 x float>*
  %wide.masked.load171.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %339, i32 4, <8 x i1> %334, <8 x float> undef), !tbaa !12
  %340 = fmul <8 x float> %wide.masked.load171.1, %broadcast.splat173
  %341 = bitcast float* %338 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %340, <8 x float>* %341, i32 4, <8 x i1> %334), !tbaa !12, !llvm.access.group !16
  %342 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %343 = or <8 x i32> %342, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %344 = icmp sgt <8 x i32> %broadcast.splat170, %343
  %345 = extractelement <8 x i32> %343, i32 0
  %346 = add nsw i32 %mul.i.6, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds float, float* %2, i64 %347
  %349 = bitcast float* %348 to <8 x float>*
  %wide.masked.load171.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %349, i32 4, <8 x i1> %344, <8 x float> undef), !tbaa !12
  %350 = fmul <8 x float> %wide.masked.load171.2, %broadcast.splat173
  %351 = bitcast float* %348 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %350, <8 x float>* %351, i32 4, <8 x i1> %344), !tbaa !12, !llvm.access.group !16
  %352 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %353 = or <8 x i32> %352, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %354 = icmp sgt <8 x i32> %broadcast.splat170, %353
  %355 = extractelement <8 x i32> %353, i32 0
  %356 = add nsw i32 %mul.i.6, %355
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds float, float* %2, i64 %357
  %359 = bitcast float* %358 to <8 x float>*
  %wide.masked.load171.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %359, i32 4, <8 x i1> %354, <8 x float> undef), !tbaa !12
  %360 = fmul <8 x float> %wide.masked.load171.3, %broadcast.splat173
  %361 = bitcast float* %358 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %360, <8 x float>* %361, i32 4, <8 x i1> %354), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.6

pregion_for_entry.entry.i.us.6:                   ; preds = %if.end.i.us.6.3, %pregion_for_entry.entry.i.us.6.preheader
  %_local_id_x.0.us.6 = phi i64 [ %505, %if.end.i.us.6.3 ], [ 0, %pregion_for_entry.entry.i.us.6.preheader ]
  %add1.i.i.us.6 = add nuw nsw i64 %_local_id_x.0.us.6, %mul.i.i
  %conv.i.us.6 = trunc i64 %add1.i.i.us.6 to i32
  %cmp4.i.us.6 = icmp slt i32 %conv.i.us.6, %6
  br i1 %cmp4.i.us.6, label %if.then.i.us.6, label %if.end.i.us.6

if.then.i.us.6:                                   ; preds = %pregion_for_entry.entry.i.us.6
  %add.i.us.6 = add nsw i32 %mul.i.6, %conv.i.us.6
  %idxprom.i.us.6 = sext i32 %add.i.us.6 to i64
  %arrayidx.i.us.6 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.6
  %362 = load float, float* %arrayidx.i.us.6, align 4, !tbaa !12
  %mul6.i.us.6 = fmul float %362, %4
  store float %mul6.i.us.6, float* %arrayidx.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.6

if.end.i.us.6:                                    ; preds = %if.then.i.us.6, %pregion_for_entry.entry.i.us.6
  %363 = or i64 %_local_id_x.0.us.6, 1
  %add1.i.i.us.6.1 = add nuw nsw i64 %363, %mul.i.i
  %conv.i.us.6.1 = trunc i64 %add1.i.i.us.6.1 to i32
  %cmp4.i.us.6.1 = icmp slt i32 %conv.i.us.6.1, %6
  br i1 %cmp4.i.us.6.1, label %if.then.i.us.6.1, label %if.end.i.us.6.1

pregion_for_end.i.6.loopexit:                     ; preds = %if.end.i.us.6.3
  br label %pregion_for_end.i.6

pregion_for_end.i.6:                              ; preds = %pregion_for_end.i.6.loopexit, %vector.ph160, %pregion_for_end.i.5
  %364 = trunc i64 %mul3.i.i to i32
  %conv2.i.7 = or i32 %364, 7
  %cmp.i.7 = icmp slt i32 %conv2.i.7, %5
  %mul.i.7 = mul nsw i32 %conv2.i.7, %6
  br i1 %cmp.i.7, label %vector.scevcheck181, label %gemm.exit

vector.scevcheck181:                              ; preds = %pregion_for_end.i.6
  %365 = mul i32 %conv2.i.7, %6
  %366 = trunc i64 %9 to i32
  %367 = shl i32 %366, 5
  %368 = add i32 %365, %367
  %369 = icmp sgt i32 %368, 2147483616
  br i1 %369, label %pregion_for_entry.entry.i.us.7.preheader, label %vector.ph182

pregion_for_entry.entry.i.us.7.preheader:         ; preds = %vector.scevcheck181
  br label %pregion_for_entry.entry.i.us.7

vector.ph182:                                     ; preds = %vector.scevcheck181
  %broadcast.splatinsert189 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat190 = shufflevector <8 x i64> %broadcast.splatinsert189, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert191 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat192 = shufflevector <8 x i32> %broadcast.splatinsert191, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <8 x float> undef, float %4, i32 0
  %broadcast.splat195 = shufflevector <8 x float> %broadcast.splatinsert194, <8 x float> undef, <8 x i32> zeroinitializer
  %370 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %371 = or <8 x i32> %370, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %372 = icmp sgt <8 x i32> %broadcast.splat192, %371
  %373 = extractelement <8 x i32> %371, i32 0
  %374 = add nsw i32 %mul.i.7, %373
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds float, float* %2, i64 %375
  %377 = bitcast float* %376 to <8 x float>*
  %wide.masked.load193 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %377, i32 4, <8 x i1> %372, <8 x float> undef), !tbaa !12
  %378 = fmul <8 x float> %wide.masked.load193, %broadcast.splat195
  %379 = bitcast float* %376 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %378, <8 x float>* %379, i32 4, <8 x i1> %372), !tbaa !12, !llvm.access.group !16
  %380 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %381 = or <8 x i32> %380, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %382 = icmp sgt <8 x i32> %broadcast.splat192, %381
  %383 = extractelement <8 x i32> %381, i32 0
  %384 = add nsw i32 %mul.i.7, %383
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds float, float* %2, i64 %385
  %387 = bitcast float* %386 to <8 x float>*
  %wide.masked.load193.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %387, i32 4, <8 x i1> %382, <8 x float> undef), !tbaa !12
  %388 = fmul <8 x float> %wide.masked.load193.1, %broadcast.splat195
  %389 = bitcast float* %386 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %388, <8 x float>* %389, i32 4, <8 x i1> %382), !tbaa !12, !llvm.access.group !16
  %390 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %391 = or <8 x i32> %390, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %392 = icmp sgt <8 x i32> %broadcast.splat192, %391
  %393 = extractelement <8 x i32> %391, i32 0
  %394 = add nsw i32 %mul.i.7, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds float, float* %2, i64 %395
  %397 = bitcast float* %396 to <8 x float>*
  %wide.masked.load193.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %397, i32 4, <8 x i1> %392, <8 x float> undef), !tbaa !12
  %398 = fmul <8 x float> %wide.masked.load193.2, %broadcast.splat195
  %399 = bitcast float* %396 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %398, <8 x float>* %399, i32 4, <8 x i1> %392), !tbaa !12, !llvm.access.group !16
  %400 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %401 = or <8 x i32> %400, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %402 = icmp sgt <8 x i32> %broadcast.splat192, %401
  %403 = extractelement <8 x i32> %401, i32 0
  %404 = add nsw i32 %mul.i.7, %403
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds float, float* %2, i64 %405
  %407 = bitcast float* %406 to <8 x float>*
  %wide.masked.load193.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %407, i32 4, <8 x i1> %402, <8 x float> undef), !tbaa !12
  %408 = fmul <8 x float> %wide.masked.load193.3, %broadcast.splat195
  %409 = bitcast float* %406 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %408, <8 x float>* %409, i32 4, <8 x i1> %402), !tbaa !12, !llvm.access.group !16
  br label %gemm.exit

pregion_for_entry.entry.i.us.7:                   ; preds = %if.end.i.us.7.3, %pregion_for_entry.entry.i.us.7.preheader
  %_local_id_x.0.us.7 = phi i64 [ %499, %if.end.i.us.7.3 ], [ 0, %pregion_for_entry.entry.i.us.7.preheader ]
  %add1.i.i.us.7 = add nuw nsw i64 %_local_id_x.0.us.7, %mul.i.i
  %conv.i.us.7 = trunc i64 %add1.i.i.us.7 to i32
  %cmp4.i.us.7 = icmp slt i32 %conv.i.us.7, %6
  br i1 %cmp4.i.us.7, label %if.then.i.us.7, label %if.end.i.us.7

if.then.i.us.7:                                   ; preds = %pregion_for_entry.entry.i.us.7
  %add.i.us.7 = add nsw i32 %mul.i.7, %conv.i.us.7
  %idxprom.i.us.7 = sext i32 %add.i.us.7 to i64
  %arrayidx.i.us.7 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.7
  %410 = load float, float* %arrayidx.i.us.7, align 4, !tbaa !12
  %mul6.i.us.7 = fmul float %410, %4
  store float %mul6.i.us.7, float* %arrayidx.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.7

if.end.i.us.7:                                    ; preds = %if.then.i.us.7, %pregion_for_entry.entry.i.us.7
  %411 = or i64 %_local_id_x.0.us.7, 1
  %add1.i.i.us.7.1 = add nuw nsw i64 %411, %mul.i.i
  %conv.i.us.7.1 = trunc i64 %add1.i.i.us.7.1 to i32
  %cmp4.i.us.7.1 = icmp slt i32 %conv.i.us.7.1, %6
  br i1 %cmp4.i.us.7.1, label %if.then.i.us.7.1, label %if.end.i.us.7.1

pregion_for_entry.entry.i.us.us.1:                ; preds = %if.end.i.us.us.1, %pregion_for_entry.entry.i.us.us.1.preheader
  %_local_id_x.0.us.us.1 = phi i64 [ %421, %if.end.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.us.us.1.preheader ]
  %add1.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.0.us.us.1, %mul.i.i
  %conv.i.us.us.1 = trunc i64 %add1.i.i.us.us.1 to i32
  %cmp4.i.us.us.1 = icmp slt i32 %conv.i.us.us.1, %6
  br i1 %cmp4.i.us.us.1, label %if.then.i.us.us.1, label %if.end.i.us.us.1

if.then.i.us.us.1:                                ; preds = %pregion_for_entry.entry.i.us.us.1
  %add.i.us.us.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1
  %idxprom.i.us.us.1 = sext i32 %add.i.us.us.1 to i64
  %arrayidx.i.us.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.1
  %412 = load float, float* %arrayidx.i.us.us.1, align 4, !tbaa !12
  %mul6.i.us.us.1 = fmul float %412, %4
  store float %mul6.i.us.us.1, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1 = shl i64 %add1.i.i.us.us.1, 32
  %413 = ashr exact i64 %sext.i.us.us.1, 32
  br label %for.body.i.us.us.1

for.body.i.us.us.1:                               ; preds = %for.body.i.us.us.1, %if.then.i.us.us.1
  %indvars.iv.next.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1, %for.body.i.us.us.1 ], [ 0, %if.then.i.us.us.1 ]
  %414 = phi float [ %420, %for.body.i.us.us.1 ], [ %mul6.i.us.us.1, %if.then.i.us.us.1 ]
  %415 = add nsw i64 %indvars.iv.next.i3.us.us.1, %63
  %arrayidx12.i.us.us.1 = getelementptr inbounds float, float* %0, i64 %415
  %416 = load float, float* %arrayidx12.i.us.us.1, align 4, !tbaa !12
  %mul13.i.us.us.1 = fmul float %416, %3
  %417 = mul nsw i64 %indvars.iv.next.i3.us.us.1, %13
  %418 = add nsw i64 %417, %413
  %arrayidx17.i.us.us.1 = getelementptr inbounds float, float* %1, i64 %418
  %419 = load float, float* %arrayidx17.i.us.us.1, align 4, !tbaa !12
  %420 = tail call float @llvm.fmuladd.f32(float %mul13.i.us.us.1, float %419, float %414) #2
  store float %420, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.1, 1
  %exitcond.not.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1, label %if.end.i.us.us.1.loopexit, label %for.body.i.us.us.1, !llvm.loop !21

if.end.i.us.us.1.loopexit:                        ; preds = %for.body.i.us.us.1
  br label %if.end.i.us.us.1

if.end.i.us.us.1:                                 ; preds = %if.end.i.us.us.1.loopexit, %pregion_for_entry.entry.i.us.us.1
  %421 = add nuw nsw i64 %_local_id_x.0.us.us.1, 1
  %exitcond.not.1 = icmp eq i64 %421, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.us.1.loopexit, label %pregion_for_entry.entry.i.us.us.1, !llvm.loop !19

pregion_for_end.i.us.1.loopexit:                  ; preds = %if.end.i.us.us.1
  br label %pregion_for_end.i.us.1

pregion_for_end.i.us.1:                           ; preds = %pregion_for_end.i.us.1.loopexit, %pregion_for_end.i.us
  %422 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.2 = or i32 %422, 2
  %cmp.i.us.2 = icmp slt i32 %conv2.i.us.2, %5
  %mul.i.us.2 = mul nsw i32 %conv2.i.us.2, %6
  %mul9.i.us.2 = mul nsw i32 %conv2.i.us.2, %7
  %423 = sext i32 %mul9.i.us.2 to i64
  br i1 %cmp.i.us.2, label %pregion_for_entry.entry.i.us.us.2.preheader, label %pregion_for_end.i.us.2

pregion_for_entry.entry.i.us.us.2.preheader:      ; preds = %pregion_for_end.i.us.1
  br label %pregion_for_entry.entry.i.us.us.2

pregion_for_entry.entry.i.us.us.2:                ; preds = %if.end.i.us.us.2, %pregion_for_entry.entry.i.us.us.2.preheader
  %_local_id_x.0.us.us.2 = phi i64 [ %433, %if.end.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.us.us.2.preheader ]
  %add1.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.0.us.us.2, %mul.i.i
  %conv.i.us.us.2 = trunc i64 %add1.i.i.us.us.2 to i32
  %cmp4.i.us.us.2 = icmp slt i32 %conv.i.us.us.2, %6
  br i1 %cmp4.i.us.us.2, label %if.then.i.us.us.2, label %if.end.i.us.us.2

if.then.i.us.us.2:                                ; preds = %pregion_for_entry.entry.i.us.us.2
  %add.i.us.us.2 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2
  %idxprom.i.us.us.2 = sext i32 %add.i.us.us.2 to i64
  %arrayidx.i.us.us.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.2
  %424 = load float, float* %arrayidx.i.us.us.2, align 4, !tbaa !12
  %mul6.i.us.us.2 = fmul float %424, %4
  store float %mul6.i.us.us.2, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2 = shl i64 %add1.i.i.us.us.2, 32
  %425 = ashr exact i64 %sext.i.us.us.2, 32
  br label %for.body.i.us.us.2

for.body.i.us.us.2:                               ; preds = %for.body.i.us.us.2, %if.then.i.us.us.2
  %indvars.iv.next.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.us.us.2, %for.body.i.us.us.2 ], [ 0, %if.then.i.us.us.2 ]
  %426 = phi float [ %432, %for.body.i.us.us.2 ], [ %mul6.i.us.us.2, %if.then.i.us.us.2 ]
  %427 = add nsw i64 %indvars.iv.next.i3.us.us.2, %423
  %arrayidx12.i.us.us.2 = getelementptr inbounds float, float* %0, i64 %427
  %428 = load float, float* %arrayidx12.i.us.us.2, align 4, !tbaa !12
  %mul13.i.us.us.2 = fmul float %428, %3
  %429 = mul nsw i64 %indvars.iv.next.i3.us.us.2, %13
  %430 = add nsw i64 %429, %425
  %arrayidx17.i.us.us.2 = getelementptr inbounds float, float* %1, i64 %430
  %431 = load float, float* %arrayidx17.i.us.us.2, align 4, !tbaa !12
  %432 = tail call float @llvm.fmuladd.f32(float %mul13.i.us.us.2, float %431, float %426) #2
  store float %432, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i3.us.us.2, 1
  %exitcond.not.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.us.us.2, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2, label %if.end.i.us.us.2.loopexit, label %for.body.i.us.us.2, !llvm.loop !21

if.end.i.us.us.2.loopexit:                        ; preds = %for.body.i.us.us.2
  br label %if.end.i.us.us.2

if.end.i.us.us.2:                                 ; preds = %if.end.i.us.us.2.loopexit, %pregion_for_entry.entry.i.us.us.2
  %433 = add nuw nsw i64 %_local_id_x.0.us.us.2, 1
  %exitcond.not.2 = icmp eq i64 %433, 32
  br i1 %exitcond.not.2, label %pregion_for_end.i.us.2.loopexit, label %pregion_for_entry.entry.i.us.us.2, !llvm.loop !19

pregion_for_end.i.us.2.loopexit:                  ; preds = %if.end.i.us.us.2
  br label %pregion_for_end.i.us.2

pregion_for_end.i.us.2:                           ; preds = %pregion_for_end.i.us.2.loopexit, %pregion_for_end.i.us.1
  %434 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.3 = or i32 %434, 3
  %cmp.i.us.3 = icmp slt i32 %conv2.i.us.3, %5
  %mul.i.us.3 = mul nsw i32 %conv2.i.us.3, %6
  %mul9.i.us.3 = mul nsw i32 %conv2.i.us.3, %7
  %435 = sext i32 %mul9.i.us.3 to i64
  br i1 %cmp.i.us.3, label %pregion_for_entry.entry.i.us.us.3.preheader, label %pregion_for_end.i.us.3

pregion_for_entry.entry.i.us.us.3.preheader:      ; preds = %pregion_for_end.i.us.2
  br label %pregion_for_entry.entry.i.us.us.3

pregion_for_entry.entry.i.us.us.3:                ; preds = %if.end.i.us.us.3, %pregion_for_entry.entry.i.us.us.3.preheader
  %_local_id_x.0.us.us.3 = phi i64 [ %445, %if.end.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.us.us.3.preheader ]
  %add1.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.0.us.us.3, %mul.i.i
  %conv.i.us.us.3 = trunc i64 %add1.i.i.us.us.3 to i32
  %cmp4.i.us.us.3 = icmp slt i32 %conv.i.us.us.3, %6
  br i1 %cmp4.i.us.us.3, label %if.then.i.us.us.3, label %if.end.i.us.us.3

if.then.i.us.us.3:                                ; preds = %pregion_for_entry.entry.i.us.us.3
  %add.i.us.us.3 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3
  %idxprom.i.us.us.3 = sext i32 %add.i.us.us.3 to i64
  %arrayidx.i.us.us.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.3
  %436 = load float, float* %arrayidx.i.us.us.3, align 4, !tbaa !12
  %mul6.i.us.us.3 = fmul float %436, %4
  store float %mul6.i.us.us.3, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3 = shl i64 %add1.i.i.us.us.3, 32
  %437 = ashr exact i64 %sext.i.us.us.3, 32
  br label %for.body.i.us.us.3

for.body.i.us.us.3:                               ; preds = %for.body.i.us.us.3, %if.then.i.us.us.3
  %indvars.iv.next.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.us.us.3, %for.body.i.us.us.3 ], [ 0, %if.then.i.us.us.3 ]
  %438 = phi float [ %444, %for.body.i.us.us.3 ], [ %mul6.i.us.us.3, %if.then.i.us.us.3 ]
  %439 = add nsw i64 %indvars.iv.next.i3.us.us.3, %435
  %arrayidx12.i.us.us.3 = getelementptr inbounds float, float* %0, i64 %439
  %440 = load float, float* %arrayidx12.i.us.us.3, align 4, !tbaa !12
  %mul13.i.us.us.3 = fmul float %440, %3
  %441 = mul nsw i64 %indvars.iv.next.i3.us.us.3, %13
  %442 = add nsw i64 %441, %437
  %arrayidx17.i.us.us.3 = getelementptr inbounds float, float* %1, i64 %442
  %443 = load float, float* %arrayidx17.i.us.us.3, align 4, !tbaa !12
  %444 = tail call float @llvm.fmuladd.f32(float %mul13.i.us.us.3, float %443, float %438) #2
  store float %444, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i3.us.us.3, 1
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3, label %if.end.i.us.us.3.loopexit, label %for.body.i.us.us.3, !llvm.loop !21

if.end.i.us.us.3.loopexit:                        ; preds = %for.body.i.us.us.3
  br label %if.end.i.us.us.3

if.end.i.us.us.3:                                 ; preds = %if.end.i.us.us.3.loopexit, %pregion_for_entry.entry.i.us.us.3
  %445 = add nuw nsw i64 %_local_id_x.0.us.us.3, 1
  %exitcond.not.3 = icmp eq i64 %445, 32
  br i1 %exitcond.not.3, label %pregion_for_end.i.us.3.loopexit, label %pregion_for_entry.entry.i.us.us.3, !llvm.loop !19

pregion_for_end.i.us.3.loopexit:                  ; preds = %if.end.i.us.us.3
  br label %pregion_for_end.i.us.3

pregion_for_end.i.us.3:                           ; preds = %pregion_for_end.i.us.3.loopexit, %pregion_for_end.i.us.2
  %446 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.4 = or i32 %446, 4
  %cmp.i.us.4 = icmp slt i32 %conv2.i.us.4, %5
  %mul.i.us.4 = mul nsw i32 %conv2.i.us.4, %6
  %mul9.i.us.4 = mul nsw i32 %conv2.i.us.4, %7
  %447 = sext i32 %mul9.i.us.4 to i64
  br i1 %cmp.i.us.4, label %pregion_for_entry.entry.i.us.us.4.preheader, label %pregion_for_end.i.us.4

pregion_for_entry.entry.i.us.us.4.preheader:      ; preds = %pregion_for_end.i.us.3
  br label %pregion_for_entry.entry.i.us.us.4

pregion_for_entry.entry.i.us.us.4:                ; preds = %if.end.i.us.us.4, %pregion_for_entry.entry.i.us.us.4.preheader
  %_local_id_x.0.us.us.4 = phi i64 [ %457, %if.end.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.us.us.4.preheader ]
  %add1.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.0.us.us.4, %mul.i.i
  %conv.i.us.us.4 = trunc i64 %add1.i.i.us.us.4 to i32
  %cmp4.i.us.us.4 = icmp slt i32 %conv.i.us.us.4, %6
  br i1 %cmp4.i.us.us.4, label %if.then.i.us.us.4, label %if.end.i.us.us.4

if.then.i.us.us.4:                                ; preds = %pregion_for_entry.entry.i.us.us.4
  %add.i.us.us.4 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4
  %idxprom.i.us.us.4 = sext i32 %add.i.us.us.4 to i64
  %arrayidx.i.us.us.4 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.4
  %448 = load float, float* %arrayidx.i.us.us.4, align 4, !tbaa !12
  %mul6.i.us.us.4 = fmul float %448, %4
  store float %mul6.i.us.us.4, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4 = shl i64 %add1.i.i.us.us.4, 32
  %449 = ashr exact i64 %sext.i.us.us.4, 32
  br label %for.body.i.us.us.4

for.body.i.us.us.4:                               ; preds = %for.body.i.us.us.4, %if.then.i.us.us.4
  %indvars.iv.next.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.us.us.4, %for.body.i.us.us.4 ], [ 0, %if.then.i.us.us.4 ]
  %450 = phi float [ %456, %for.body.i.us.us.4 ], [ %mul6.i.us.us.4, %if.then.i.us.us.4 ]
  %451 = add nsw i64 %indvars.iv.next.i3.us.us.4, %447
  %arrayidx12.i.us.us.4 = getelementptr inbounds float, float* %0, i64 %451
  %452 = load float, float* %arrayidx12.i.us.us.4, align 4, !tbaa !12
  %mul13.i.us.us.4 = fmul float %452, %3
  %453 = mul nsw i64 %indvars.iv.next.i3.us.us.4, %13
  %454 = add nsw i64 %453, %449
  %arrayidx17.i.us.us.4 = getelementptr inbounds float, float* %1, i64 %454
  %455 = load float, float* %arrayidx17.i.us.us.4, align 4, !tbaa !12
  %456 = tail call float @llvm.fmuladd.f32(float %mul13.i.us.us.4, float %455, float %450) #2
  store float %456, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i3.us.us.4, 1
  %exitcond.not.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.us.us.4, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4, label %if.end.i.us.us.4.loopexit, label %for.body.i.us.us.4, !llvm.loop !21

if.end.i.us.us.4.loopexit:                        ; preds = %for.body.i.us.us.4
  br label %if.end.i.us.us.4

if.end.i.us.us.4:                                 ; preds = %if.end.i.us.us.4.loopexit, %pregion_for_entry.entry.i.us.us.4
  %457 = add nuw nsw i64 %_local_id_x.0.us.us.4, 1
  %exitcond.not.4 = icmp eq i64 %457, 32
  br i1 %exitcond.not.4, label %pregion_for_end.i.us.4.loopexit, label %pregion_for_entry.entry.i.us.us.4, !llvm.loop !19

pregion_for_end.i.us.4.loopexit:                  ; preds = %if.end.i.us.us.4
  br label %pregion_for_end.i.us.4

pregion_for_end.i.us.4:                           ; preds = %pregion_for_end.i.us.4.loopexit, %pregion_for_end.i.us.3
  %458 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.5 = or i32 %458, 5
  %cmp.i.us.5 = icmp slt i32 %conv2.i.us.5, %5
  %mul.i.us.5 = mul nsw i32 %conv2.i.us.5, %6
  %mul9.i.us.5 = mul nsw i32 %conv2.i.us.5, %7
  %459 = sext i32 %mul9.i.us.5 to i64
  br i1 %cmp.i.us.5, label %pregion_for_entry.entry.i.us.us.5.preheader, label %pregion_for_end.i.us.5

pregion_for_entry.entry.i.us.us.5.preheader:      ; preds = %pregion_for_end.i.us.4
  br label %pregion_for_entry.entry.i.us.us.5

pregion_for_entry.entry.i.us.us.5:                ; preds = %if.end.i.us.us.5, %pregion_for_entry.entry.i.us.us.5.preheader
  %_local_id_x.0.us.us.5 = phi i64 [ %469, %if.end.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.us.us.5.preheader ]
  %add1.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.0.us.us.5, %mul.i.i
  %conv.i.us.us.5 = trunc i64 %add1.i.i.us.us.5 to i32
  %cmp4.i.us.us.5 = icmp slt i32 %conv.i.us.us.5, %6
  br i1 %cmp4.i.us.us.5, label %if.then.i.us.us.5, label %if.end.i.us.us.5

if.then.i.us.us.5:                                ; preds = %pregion_for_entry.entry.i.us.us.5
  %add.i.us.us.5 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5
  %idxprom.i.us.us.5 = sext i32 %add.i.us.us.5 to i64
  %arrayidx.i.us.us.5 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.5
  %460 = load float, float* %arrayidx.i.us.us.5, align 4, !tbaa !12
  %mul6.i.us.us.5 = fmul float %460, %4
  store float %mul6.i.us.us.5, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5 = shl i64 %add1.i.i.us.us.5, 32
  %461 = ashr exact i64 %sext.i.us.us.5, 32
  br label %for.body.i.us.us.5

for.body.i.us.us.5:                               ; preds = %for.body.i.us.us.5, %if.then.i.us.us.5
  %indvars.iv.next.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.us.us.5, %for.body.i.us.us.5 ], [ 0, %if.then.i.us.us.5 ]
  %462 = phi float [ %468, %for.body.i.us.us.5 ], [ %mul6.i.us.us.5, %if.then.i.us.us.5 ]
  %463 = add nsw i64 %indvars.iv.next.i3.us.us.5, %459
  %arrayidx12.i.us.us.5 = getelementptr inbounds float, float* %0, i64 %463
  %464 = load float, float* %arrayidx12.i.us.us.5, align 4, !tbaa !12
  %mul13.i.us.us.5 = fmul float %464, %3
  %465 = mul nsw i64 %indvars.iv.next.i3.us.us.5, %13
  %466 = add nsw i64 %465, %461
  %arrayidx17.i.us.us.5 = getelementptr inbounds float, float* %1, i64 %466
  %467 = load float, float* %arrayidx17.i.us.us.5, align 4, !tbaa !12
  %468 = tail call float @llvm.fmuladd.f32(float %mul13.i.us.us.5, float %467, float %462) #2
  store float %468, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i3.us.us.5, 1
  %exitcond.not.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.us.us.5, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5, label %if.end.i.us.us.5.loopexit, label %for.body.i.us.us.5, !llvm.loop !21

if.end.i.us.us.5.loopexit:                        ; preds = %for.body.i.us.us.5
  br label %if.end.i.us.us.5

if.end.i.us.us.5:                                 ; preds = %if.end.i.us.us.5.loopexit, %pregion_for_entry.entry.i.us.us.5
  %469 = add nuw nsw i64 %_local_id_x.0.us.us.5, 1
  %exitcond.not.5 = icmp eq i64 %469, 32
  br i1 %exitcond.not.5, label %pregion_for_end.i.us.5.loopexit, label %pregion_for_entry.entry.i.us.us.5, !llvm.loop !19

pregion_for_end.i.us.5.loopexit:                  ; preds = %if.end.i.us.us.5
  br label %pregion_for_end.i.us.5

pregion_for_end.i.us.5:                           ; preds = %pregion_for_end.i.us.5.loopexit, %pregion_for_end.i.us.4
  %470 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.6 = or i32 %470, 6
  %cmp.i.us.6 = icmp slt i32 %conv2.i.us.6, %5
  %mul.i.us.6 = mul nsw i32 %conv2.i.us.6, %6
  %mul9.i.us.6 = mul nsw i32 %conv2.i.us.6, %7
  %471 = sext i32 %mul9.i.us.6 to i64
  br i1 %cmp.i.us.6, label %pregion_for_entry.entry.i.us.us.6.preheader, label %pregion_for_end.i.us.6

pregion_for_entry.entry.i.us.us.6.preheader:      ; preds = %pregion_for_end.i.us.5
  br label %pregion_for_entry.entry.i.us.us.6

pregion_for_entry.entry.i.us.us.6:                ; preds = %if.end.i.us.us.6, %pregion_for_entry.entry.i.us.us.6.preheader
  %_local_id_x.0.us.us.6 = phi i64 [ %481, %if.end.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.us.us.6.preheader ]
  %add1.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.0.us.us.6, %mul.i.i
  %conv.i.us.us.6 = trunc i64 %add1.i.i.us.us.6 to i32
  %cmp4.i.us.us.6 = icmp slt i32 %conv.i.us.us.6, %6
  br i1 %cmp4.i.us.us.6, label %if.then.i.us.us.6, label %if.end.i.us.us.6

if.then.i.us.us.6:                                ; preds = %pregion_for_entry.entry.i.us.us.6
  %add.i.us.us.6 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6
  %idxprom.i.us.us.6 = sext i32 %add.i.us.us.6 to i64
  %arrayidx.i.us.us.6 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.6
  %472 = load float, float* %arrayidx.i.us.us.6, align 4, !tbaa !12
  %mul6.i.us.us.6 = fmul float %472, %4
  store float %mul6.i.us.us.6, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6 = shl i64 %add1.i.i.us.us.6, 32
  %473 = ashr exact i64 %sext.i.us.us.6, 32
  br label %for.body.i.us.us.6

for.body.i.us.us.6:                               ; preds = %for.body.i.us.us.6, %if.then.i.us.us.6
  %indvars.iv.next.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.us.us.6, %for.body.i.us.us.6 ], [ 0, %if.then.i.us.us.6 ]
  %474 = phi float [ %480, %for.body.i.us.us.6 ], [ %mul6.i.us.us.6, %if.then.i.us.us.6 ]
  %475 = add nsw i64 %indvars.iv.next.i3.us.us.6, %471
  %arrayidx12.i.us.us.6 = getelementptr inbounds float, float* %0, i64 %475
  %476 = load float, float* %arrayidx12.i.us.us.6, align 4, !tbaa !12
  %mul13.i.us.us.6 = fmul float %476, %3
  %477 = mul nsw i64 %indvars.iv.next.i3.us.us.6, %13
  %478 = add nsw i64 %477, %473
  %arrayidx17.i.us.us.6 = getelementptr inbounds float, float* %1, i64 %478
  %479 = load float, float* %arrayidx17.i.us.us.6, align 4, !tbaa !12
  %480 = tail call float @llvm.fmuladd.f32(float %mul13.i.us.us.6, float %479, float %474) #2
  store float %480, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i3.us.us.6, 1
  %exitcond.not.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.us.us.6, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6, label %if.end.i.us.us.6.loopexit, label %for.body.i.us.us.6, !llvm.loop !21

if.end.i.us.us.6.loopexit:                        ; preds = %for.body.i.us.us.6
  br label %if.end.i.us.us.6

if.end.i.us.us.6:                                 ; preds = %if.end.i.us.us.6.loopexit, %pregion_for_entry.entry.i.us.us.6
  %481 = add nuw nsw i64 %_local_id_x.0.us.us.6, 1
  %exitcond.not.6 = icmp eq i64 %481, 32
  br i1 %exitcond.not.6, label %pregion_for_end.i.us.6.loopexit, label %pregion_for_entry.entry.i.us.us.6, !llvm.loop !19

pregion_for_end.i.us.6.loopexit:                  ; preds = %if.end.i.us.us.6
  br label %pregion_for_end.i.us.6

pregion_for_end.i.us.6:                           ; preds = %pregion_for_end.i.us.6.loopexit, %pregion_for_end.i.us.5
  %482 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.7 = or i32 %482, 7
  %cmp.i.us.7 = icmp slt i32 %conv2.i.us.7, %5
  %mul.i.us.7 = mul nsw i32 %conv2.i.us.7, %6
  %mul9.i.us.7 = mul nsw i32 %conv2.i.us.7, %7
  %483 = sext i32 %mul9.i.us.7 to i64
  br i1 %cmp.i.us.7, label %pregion_for_entry.entry.i.us.us.7.preheader, label %gemm.exit

pregion_for_entry.entry.i.us.us.7.preheader:      ; preds = %pregion_for_end.i.us.6
  br label %pregion_for_entry.entry.i.us.us.7

pregion_for_entry.entry.i.us.us.7:                ; preds = %if.end.i.us.us.7, %pregion_for_entry.entry.i.us.us.7.preheader
  %_local_id_x.0.us.us.7 = phi i64 [ %493, %if.end.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.us.us.7.preheader ]
  %add1.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.0.us.us.7, %mul.i.i
  %conv.i.us.us.7 = trunc i64 %add1.i.i.us.us.7 to i32
  %cmp4.i.us.us.7 = icmp slt i32 %conv.i.us.us.7, %6
  br i1 %cmp4.i.us.us.7, label %if.then.i.us.us.7, label %if.end.i.us.us.7

if.then.i.us.us.7:                                ; preds = %pregion_for_entry.entry.i.us.us.7
  %add.i.us.us.7 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7
  %idxprom.i.us.us.7 = sext i32 %add.i.us.us.7 to i64
  %arrayidx.i.us.us.7 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.7
  %484 = load float, float* %arrayidx.i.us.us.7, align 4, !tbaa !12
  %mul6.i.us.us.7 = fmul float %484, %4
  store float %mul6.i.us.us.7, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7 = shl i64 %add1.i.i.us.us.7, 32
  %485 = ashr exact i64 %sext.i.us.us.7, 32
  br label %for.body.i.us.us.7

for.body.i.us.us.7:                               ; preds = %for.body.i.us.us.7, %if.then.i.us.us.7
  %indvars.iv.next.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.us.us.7, %for.body.i.us.us.7 ], [ 0, %if.then.i.us.us.7 ]
  %486 = phi float [ %492, %for.body.i.us.us.7 ], [ %mul6.i.us.us.7, %if.then.i.us.us.7 ]
  %487 = add nsw i64 %indvars.iv.next.i3.us.us.7, %483
  %arrayidx12.i.us.us.7 = getelementptr inbounds float, float* %0, i64 %487
  %488 = load float, float* %arrayidx12.i.us.us.7, align 4, !tbaa !12
  %mul13.i.us.us.7 = fmul float %488, %3
  %489 = mul nsw i64 %indvars.iv.next.i3.us.us.7, %13
  %490 = add nsw i64 %489, %485
  %arrayidx17.i.us.us.7 = getelementptr inbounds float, float* %1, i64 %490
  %491 = load float, float* %arrayidx17.i.us.us.7, align 4, !tbaa !12
  %492 = tail call float @llvm.fmuladd.f32(float %mul13.i.us.us.7, float %491, float %486) #2
  store float %492, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i3.us.us.7, 1
  %exitcond.not.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.us.us.7, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7, label %if.end.i.us.us.7.loopexit, label %for.body.i.us.us.7, !llvm.loop !21

if.end.i.us.us.7.loopexit:                        ; preds = %for.body.i.us.us.7
  br label %if.end.i.us.us.7

if.end.i.us.us.7:                                 ; preds = %if.end.i.us.us.7.loopexit, %pregion_for_entry.entry.i.us.us.7
  %493 = add nuw nsw i64 %_local_id_x.0.us.us.7, 1
  %exitcond.not.7 = icmp eq i64 %493, 32
  br i1 %exitcond.not.7, label %gemm.exit.loopexit, label %pregion_for_entry.entry.i.us.us.7, !llvm.loop !19

if.then.i.us.7.1:                                 ; preds = %if.end.i.us.7
  %add.i.us.7.1 = add nsw i32 %mul.i.7, %conv.i.us.7.1
  %idxprom.i.us.7.1 = sext i32 %add.i.us.7.1 to i64
  %arrayidx.i.us.7.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.7.1
  %494 = load float, float* %arrayidx.i.us.7.1, align 4, !tbaa !12
  %mul6.i.us.7.1 = fmul float %494, %4
  store float %mul6.i.us.7.1, float* %arrayidx.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.7.1

if.end.i.us.7.1:                                  ; preds = %if.then.i.us.7.1, %if.end.i.us.7
  %495 = or i64 %_local_id_x.0.us.7, 2
  %add1.i.i.us.7.2 = add nuw nsw i64 %495, %mul.i.i
  %conv.i.us.7.2 = trunc i64 %add1.i.i.us.7.2 to i32
  %cmp4.i.us.7.2 = icmp slt i32 %conv.i.us.7.2, %6
  br i1 %cmp4.i.us.7.2, label %if.then.i.us.7.2, label %if.end.i.us.7.2

if.then.i.us.7.2:                                 ; preds = %if.end.i.us.7.1
  %add.i.us.7.2 = add nsw i32 %mul.i.7, %conv.i.us.7.2
  %idxprom.i.us.7.2 = sext i32 %add.i.us.7.2 to i64
  %arrayidx.i.us.7.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.7.2
  %496 = load float, float* %arrayidx.i.us.7.2, align 4, !tbaa !12
  %mul6.i.us.7.2 = fmul float %496, %4
  store float %mul6.i.us.7.2, float* %arrayidx.i.us.7.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.7.2

if.end.i.us.7.2:                                  ; preds = %if.then.i.us.7.2, %if.end.i.us.7.1
  %497 = or i64 %_local_id_x.0.us.7, 3
  %add1.i.i.us.7.3 = add nuw nsw i64 %497, %mul.i.i
  %conv.i.us.7.3 = trunc i64 %add1.i.i.us.7.3 to i32
  %cmp4.i.us.7.3 = icmp slt i32 %conv.i.us.7.3, %6
  br i1 %cmp4.i.us.7.3, label %if.then.i.us.7.3, label %if.end.i.us.7.3

if.then.i.us.7.3:                                 ; preds = %if.end.i.us.7.2
  %add.i.us.7.3 = add nsw i32 %mul.i.7, %conv.i.us.7.3
  %idxprom.i.us.7.3 = sext i32 %add.i.us.7.3 to i64
  %arrayidx.i.us.7.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.7.3
  %498 = load float, float* %arrayidx.i.us.7.3, align 4, !tbaa !12
  %mul6.i.us.7.3 = fmul float %498, %4
  store float %mul6.i.us.7.3, float* %arrayidx.i.us.7.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.7.3

if.end.i.us.7.3:                                  ; preds = %if.then.i.us.7.3, %if.end.i.us.7.2
  %499 = add nuw nsw i64 %_local_id_x.0.us.7, 4
  %exitcond34.7.not.3 = icmp eq i64 %499, 32
  br i1 %exitcond34.7.not.3, label %gemm.exit.loopexit238, label %pregion_for_entry.entry.i.us.7, !llvm.loop !23

if.then.i.us.6.1:                                 ; preds = %if.end.i.us.6
  %add.i.us.6.1 = add nsw i32 %mul.i.6, %conv.i.us.6.1
  %idxprom.i.us.6.1 = sext i32 %add.i.us.6.1 to i64
  %arrayidx.i.us.6.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.6.1
  %500 = load float, float* %arrayidx.i.us.6.1, align 4, !tbaa !12
  %mul6.i.us.6.1 = fmul float %500, %4
  store float %mul6.i.us.6.1, float* %arrayidx.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.6.1

if.end.i.us.6.1:                                  ; preds = %if.then.i.us.6.1, %if.end.i.us.6
  %501 = or i64 %_local_id_x.0.us.6, 2
  %add1.i.i.us.6.2 = add nuw nsw i64 %501, %mul.i.i
  %conv.i.us.6.2 = trunc i64 %add1.i.i.us.6.2 to i32
  %cmp4.i.us.6.2 = icmp slt i32 %conv.i.us.6.2, %6
  br i1 %cmp4.i.us.6.2, label %if.then.i.us.6.2, label %if.end.i.us.6.2

if.then.i.us.6.2:                                 ; preds = %if.end.i.us.6.1
  %add.i.us.6.2 = add nsw i32 %mul.i.6, %conv.i.us.6.2
  %idxprom.i.us.6.2 = sext i32 %add.i.us.6.2 to i64
  %arrayidx.i.us.6.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.6.2
  %502 = load float, float* %arrayidx.i.us.6.2, align 4, !tbaa !12
  %mul6.i.us.6.2 = fmul float %502, %4
  store float %mul6.i.us.6.2, float* %arrayidx.i.us.6.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.6.2

if.end.i.us.6.2:                                  ; preds = %if.then.i.us.6.2, %if.end.i.us.6.1
  %503 = or i64 %_local_id_x.0.us.6, 3
  %add1.i.i.us.6.3 = add nuw nsw i64 %503, %mul.i.i
  %conv.i.us.6.3 = trunc i64 %add1.i.i.us.6.3 to i32
  %cmp4.i.us.6.3 = icmp slt i32 %conv.i.us.6.3, %6
  br i1 %cmp4.i.us.6.3, label %if.then.i.us.6.3, label %if.end.i.us.6.3

if.then.i.us.6.3:                                 ; preds = %if.end.i.us.6.2
  %add.i.us.6.3 = add nsw i32 %mul.i.6, %conv.i.us.6.3
  %idxprom.i.us.6.3 = sext i32 %add.i.us.6.3 to i64
  %arrayidx.i.us.6.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.6.3
  %504 = load float, float* %arrayidx.i.us.6.3, align 4, !tbaa !12
  %mul6.i.us.6.3 = fmul float %504, %4
  store float %mul6.i.us.6.3, float* %arrayidx.i.us.6.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.6.3

if.end.i.us.6.3:                                  ; preds = %if.then.i.us.6.3, %if.end.i.us.6.2
  %505 = add nuw nsw i64 %_local_id_x.0.us.6, 4
  %exitcond34.6.not.3 = icmp eq i64 %505, 32
  br i1 %exitcond34.6.not.3, label %pregion_for_end.i.6.loopexit, label %pregion_for_entry.entry.i.us.6, !llvm.loop !25

if.then.i.us.5.1:                                 ; preds = %if.end.i.us.5
  %add.i.us.5.1 = add nsw i32 %mul.i.5, %conv.i.us.5.1
  %idxprom.i.us.5.1 = sext i32 %add.i.us.5.1 to i64
  %arrayidx.i.us.5.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.5.1
  %506 = load float, float* %arrayidx.i.us.5.1, align 4, !tbaa !12
  %mul6.i.us.5.1 = fmul float %506, %4
  store float %mul6.i.us.5.1, float* %arrayidx.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.5.1

if.end.i.us.5.1:                                  ; preds = %if.then.i.us.5.1, %if.end.i.us.5
  %507 = or i64 %_local_id_x.0.us.5, 2
  %add1.i.i.us.5.2 = add nuw nsw i64 %507, %mul.i.i
  %conv.i.us.5.2 = trunc i64 %add1.i.i.us.5.2 to i32
  %cmp4.i.us.5.2 = icmp slt i32 %conv.i.us.5.2, %6
  br i1 %cmp4.i.us.5.2, label %if.then.i.us.5.2, label %if.end.i.us.5.2

if.then.i.us.5.2:                                 ; preds = %if.end.i.us.5.1
  %add.i.us.5.2 = add nsw i32 %mul.i.5, %conv.i.us.5.2
  %idxprom.i.us.5.2 = sext i32 %add.i.us.5.2 to i64
  %arrayidx.i.us.5.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.5.2
  %508 = load float, float* %arrayidx.i.us.5.2, align 4, !tbaa !12
  %mul6.i.us.5.2 = fmul float %508, %4
  store float %mul6.i.us.5.2, float* %arrayidx.i.us.5.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.5.2

if.end.i.us.5.2:                                  ; preds = %if.then.i.us.5.2, %if.end.i.us.5.1
  %509 = or i64 %_local_id_x.0.us.5, 3
  %add1.i.i.us.5.3 = add nuw nsw i64 %509, %mul.i.i
  %conv.i.us.5.3 = trunc i64 %add1.i.i.us.5.3 to i32
  %cmp4.i.us.5.3 = icmp slt i32 %conv.i.us.5.3, %6
  br i1 %cmp4.i.us.5.3, label %if.then.i.us.5.3, label %if.end.i.us.5.3

if.then.i.us.5.3:                                 ; preds = %if.end.i.us.5.2
  %add.i.us.5.3 = add nsw i32 %mul.i.5, %conv.i.us.5.3
  %idxprom.i.us.5.3 = sext i32 %add.i.us.5.3 to i64
  %arrayidx.i.us.5.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.5.3
  %510 = load float, float* %arrayidx.i.us.5.3, align 4, !tbaa !12
  %mul6.i.us.5.3 = fmul float %510, %4
  store float %mul6.i.us.5.3, float* %arrayidx.i.us.5.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.5.3

if.end.i.us.5.3:                                  ; preds = %if.then.i.us.5.3, %if.end.i.us.5.2
  %511 = add nuw nsw i64 %_local_id_x.0.us.5, 4
  %exitcond34.5.not.3 = icmp eq i64 %511, 32
  br i1 %exitcond34.5.not.3, label %pregion_for_end.i.5.loopexit, label %pregion_for_entry.entry.i.us.5, !llvm.loop !26

if.then.i.us.4.1:                                 ; preds = %if.end.i.us.4
  %add.i.us.4.1 = add nsw i32 %mul.i.4, %conv.i.us.4.1
  %idxprom.i.us.4.1 = sext i32 %add.i.us.4.1 to i64
  %arrayidx.i.us.4.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.4.1
  %512 = load float, float* %arrayidx.i.us.4.1, align 4, !tbaa !12
  %mul6.i.us.4.1 = fmul float %512, %4
  store float %mul6.i.us.4.1, float* %arrayidx.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.4.1

if.end.i.us.4.1:                                  ; preds = %if.then.i.us.4.1, %if.end.i.us.4
  %513 = or i64 %_local_id_x.0.us.4, 2
  %add1.i.i.us.4.2 = add nuw nsw i64 %513, %mul.i.i
  %conv.i.us.4.2 = trunc i64 %add1.i.i.us.4.2 to i32
  %cmp4.i.us.4.2 = icmp slt i32 %conv.i.us.4.2, %6
  br i1 %cmp4.i.us.4.2, label %if.then.i.us.4.2, label %if.end.i.us.4.2

if.then.i.us.4.2:                                 ; preds = %if.end.i.us.4.1
  %add.i.us.4.2 = add nsw i32 %mul.i.4, %conv.i.us.4.2
  %idxprom.i.us.4.2 = sext i32 %add.i.us.4.2 to i64
  %arrayidx.i.us.4.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.4.2
  %514 = load float, float* %arrayidx.i.us.4.2, align 4, !tbaa !12
  %mul6.i.us.4.2 = fmul float %514, %4
  store float %mul6.i.us.4.2, float* %arrayidx.i.us.4.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.4.2

if.end.i.us.4.2:                                  ; preds = %if.then.i.us.4.2, %if.end.i.us.4.1
  %515 = or i64 %_local_id_x.0.us.4, 3
  %add1.i.i.us.4.3 = add nuw nsw i64 %515, %mul.i.i
  %conv.i.us.4.3 = trunc i64 %add1.i.i.us.4.3 to i32
  %cmp4.i.us.4.3 = icmp slt i32 %conv.i.us.4.3, %6
  br i1 %cmp4.i.us.4.3, label %if.then.i.us.4.3, label %if.end.i.us.4.3

if.then.i.us.4.3:                                 ; preds = %if.end.i.us.4.2
  %add.i.us.4.3 = add nsw i32 %mul.i.4, %conv.i.us.4.3
  %idxprom.i.us.4.3 = sext i32 %add.i.us.4.3 to i64
  %arrayidx.i.us.4.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.4.3
  %516 = load float, float* %arrayidx.i.us.4.3, align 4, !tbaa !12
  %mul6.i.us.4.3 = fmul float %516, %4
  store float %mul6.i.us.4.3, float* %arrayidx.i.us.4.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.4.3

if.end.i.us.4.3:                                  ; preds = %if.then.i.us.4.3, %if.end.i.us.4.2
  %517 = add nuw nsw i64 %_local_id_x.0.us.4, 4
  %exitcond34.4.not.3 = icmp eq i64 %517, 32
  br i1 %exitcond34.4.not.3, label %pregion_for_end.i.4.loopexit, label %pregion_for_entry.entry.i.us.4, !llvm.loop !27

if.then.i.us.3.1:                                 ; preds = %if.end.i.us.3
  %add.i.us.3.1 = add nsw i32 %mul.i.3, %conv.i.us.3.1
  %idxprom.i.us.3.1 = sext i32 %add.i.us.3.1 to i64
  %arrayidx.i.us.3.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.3.1
  %518 = load float, float* %arrayidx.i.us.3.1, align 4, !tbaa !12
  %mul6.i.us.3.1 = fmul float %518, %4
  store float %mul6.i.us.3.1, float* %arrayidx.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3.1

if.end.i.us.3.1:                                  ; preds = %if.then.i.us.3.1, %if.end.i.us.3
  %519 = or i64 %_local_id_x.0.us.3, 2
  %add1.i.i.us.3.2 = add nuw nsw i64 %519, %mul.i.i
  %conv.i.us.3.2 = trunc i64 %add1.i.i.us.3.2 to i32
  %cmp4.i.us.3.2 = icmp slt i32 %conv.i.us.3.2, %6
  br i1 %cmp4.i.us.3.2, label %if.then.i.us.3.2, label %if.end.i.us.3.2

if.then.i.us.3.2:                                 ; preds = %if.end.i.us.3.1
  %add.i.us.3.2 = add nsw i32 %mul.i.3, %conv.i.us.3.2
  %idxprom.i.us.3.2 = sext i32 %add.i.us.3.2 to i64
  %arrayidx.i.us.3.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.3.2
  %520 = load float, float* %arrayidx.i.us.3.2, align 4, !tbaa !12
  %mul6.i.us.3.2 = fmul float %520, %4
  store float %mul6.i.us.3.2, float* %arrayidx.i.us.3.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3.2

if.end.i.us.3.2:                                  ; preds = %if.then.i.us.3.2, %if.end.i.us.3.1
  %521 = or i64 %_local_id_x.0.us.3, 3
  %add1.i.i.us.3.3 = add nuw nsw i64 %521, %mul.i.i
  %conv.i.us.3.3 = trunc i64 %add1.i.i.us.3.3 to i32
  %cmp4.i.us.3.3 = icmp slt i32 %conv.i.us.3.3, %6
  br i1 %cmp4.i.us.3.3, label %if.then.i.us.3.3, label %if.end.i.us.3.3

if.then.i.us.3.3:                                 ; preds = %if.end.i.us.3.2
  %add.i.us.3.3 = add nsw i32 %mul.i.3, %conv.i.us.3.3
  %idxprom.i.us.3.3 = sext i32 %add.i.us.3.3 to i64
  %arrayidx.i.us.3.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.3.3
  %522 = load float, float* %arrayidx.i.us.3.3, align 4, !tbaa !12
  %mul6.i.us.3.3 = fmul float %522, %4
  store float %mul6.i.us.3.3, float* %arrayidx.i.us.3.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3.3

if.end.i.us.3.3:                                  ; preds = %if.then.i.us.3.3, %if.end.i.us.3.2
  %523 = add nuw nsw i64 %_local_id_x.0.us.3, 4
  %exitcond34.3.not.3 = icmp eq i64 %523, 32
  br i1 %exitcond34.3.not.3, label %pregion_for_end.i.3.loopexit, label %pregion_for_entry.entry.i.us.3, !llvm.loop !28

if.then.i.us.2.1:                                 ; preds = %if.end.i.us.2
  %add.i.us.2.1 = add nsw i32 %mul.i.2, %conv.i.us.2.1
  %idxprom.i.us.2.1 = sext i32 %add.i.us.2.1 to i64
  %arrayidx.i.us.2.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.2.1
  %524 = load float, float* %arrayidx.i.us.2.1, align 4, !tbaa !12
  %mul6.i.us.2.1 = fmul float %524, %4
  store float %mul6.i.us.2.1, float* %arrayidx.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2.1

if.end.i.us.2.1:                                  ; preds = %if.then.i.us.2.1, %if.end.i.us.2
  %525 = or i64 %_local_id_x.0.us.2, 2
  %add1.i.i.us.2.2 = add nuw nsw i64 %525, %mul.i.i
  %conv.i.us.2.2 = trunc i64 %add1.i.i.us.2.2 to i32
  %cmp4.i.us.2.2 = icmp slt i32 %conv.i.us.2.2, %6
  br i1 %cmp4.i.us.2.2, label %if.then.i.us.2.2, label %if.end.i.us.2.2

if.then.i.us.2.2:                                 ; preds = %if.end.i.us.2.1
  %add.i.us.2.2 = add nsw i32 %mul.i.2, %conv.i.us.2.2
  %idxprom.i.us.2.2 = sext i32 %add.i.us.2.2 to i64
  %arrayidx.i.us.2.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.2.2
  %526 = load float, float* %arrayidx.i.us.2.2, align 4, !tbaa !12
  %mul6.i.us.2.2 = fmul float %526, %4
  store float %mul6.i.us.2.2, float* %arrayidx.i.us.2.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2.2

if.end.i.us.2.2:                                  ; preds = %if.then.i.us.2.2, %if.end.i.us.2.1
  %527 = or i64 %_local_id_x.0.us.2, 3
  %add1.i.i.us.2.3 = add nuw nsw i64 %527, %mul.i.i
  %conv.i.us.2.3 = trunc i64 %add1.i.i.us.2.3 to i32
  %cmp4.i.us.2.3 = icmp slt i32 %conv.i.us.2.3, %6
  br i1 %cmp4.i.us.2.3, label %if.then.i.us.2.3, label %if.end.i.us.2.3

if.then.i.us.2.3:                                 ; preds = %if.end.i.us.2.2
  %add.i.us.2.3 = add nsw i32 %mul.i.2, %conv.i.us.2.3
  %idxprom.i.us.2.3 = sext i32 %add.i.us.2.3 to i64
  %arrayidx.i.us.2.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.2.3
  %528 = load float, float* %arrayidx.i.us.2.3, align 4, !tbaa !12
  %mul6.i.us.2.3 = fmul float %528, %4
  store float %mul6.i.us.2.3, float* %arrayidx.i.us.2.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2.3

if.end.i.us.2.3:                                  ; preds = %if.then.i.us.2.3, %if.end.i.us.2.2
  %529 = add nuw nsw i64 %_local_id_x.0.us.2, 4
  %exitcond34.2.not.3 = icmp eq i64 %529, 32
  br i1 %exitcond34.2.not.3, label %pregion_for_end.i.2.loopexit, label %pregion_for_entry.entry.i.us.2, !llvm.loop !29

if.then.i.us.1.1:                                 ; preds = %if.end.i.us.1
  %add.i.us.1.1 = add nsw i32 %mul.i.1, %conv.i.us.1.1
  %idxprom.i.us.1.1 = sext i32 %add.i.us.1.1 to i64
  %arrayidx.i.us.1.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1.1
  %530 = load float, float* %arrayidx.i.us.1.1, align 4, !tbaa !12
  %mul6.i.us.1.1 = fmul float %530, %4
  store float %mul6.i.us.1.1, float* %arrayidx.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1.1

if.end.i.us.1.1:                                  ; preds = %if.then.i.us.1.1, %if.end.i.us.1
  %531 = or i64 %_local_id_x.0.us.1, 2
  %add1.i.i.us.1.2 = add nuw nsw i64 %531, %mul.i.i
  %conv.i.us.1.2 = trunc i64 %add1.i.i.us.1.2 to i32
  %cmp4.i.us.1.2 = icmp slt i32 %conv.i.us.1.2, %6
  br i1 %cmp4.i.us.1.2, label %if.then.i.us.1.2, label %if.end.i.us.1.2

if.then.i.us.1.2:                                 ; preds = %if.end.i.us.1.1
  %add.i.us.1.2 = add nsw i32 %mul.i.1, %conv.i.us.1.2
  %idxprom.i.us.1.2 = sext i32 %add.i.us.1.2 to i64
  %arrayidx.i.us.1.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1.2
  %532 = load float, float* %arrayidx.i.us.1.2, align 4, !tbaa !12
  %mul6.i.us.1.2 = fmul float %532, %4
  store float %mul6.i.us.1.2, float* %arrayidx.i.us.1.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1.2

if.end.i.us.1.2:                                  ; preds = %if.then.i.us.1.2, %if.end.i.us.1.1
  %533 = or i64 %_local_id_x.0.us.1, 3
  %add1.i.i.us.1.3 = add nuw nsw i64 %533, %mul.i.i
  %conv.i.us.1.3 = trunc i64 %add1.i.i.us.1.3 to i32
  %cmp4.i.us.1.3 = icmp slt i32 %conv.i.us.1.3, %6
  br i1 %cmp4.i.us.1.3, label %if.then.i.us.1.3, label %if.end.i.us.1.3

if.then.i.us.1.3:                                 ; preds = %if.end.i.us.1.2
  %add.i.us.1.3 = add nsw i32 %mul.i.1, %conv.i.us.1.3
  %idxprom.i.us.1.3 = sext i32 %add.i.us.1.3 to i64
  %arrayidx.i.us.1.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1.3
  %534 = load float, float* %arrayidx.i.us.1.3, align 4, !tbaa !12
  %mul6.i.us.1.3 = fmul float %534, %4
  store float %mul6.i.us.1.3, float* %arrayidx.i.us.1.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1.3

if.end.i.us.1.3:                                  ; preds = %if.then.i.us.1.3, %if.end.i.us.1.2
  %535 = add nuw nsw i64 %_local_id_x.0.us.1, 4
  %exitcond34.1.not.3 = icmp eq i64 %535, 32
  br i1 %exitcond34.1.not.3, label %pregion_for_end.i.1.loopexit, label %pregion_for_entry.entry.i.us.1, !llvm.loop !30

if.then.i.us.1214:                                ; preds = %if.end.i.us
  %add.i.us.1210 = add nsw i32 %mul.i.us, %conv.i.us.1207
  %idxprom.i.us.1211 = sext i32 %add.i.us.1210 to i64
  %arrayidx.i.us.1212 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1211
  %536 = load float, float* %arrayidx.i.us.1212, align 4, !tbaa !12
  %mul6.i.us.1213 = fmul float %536, %4
  store float %mul6.i.us.1213, float* %arrayidx.i.us.1212, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.1215

if.end.i.us.1215:                                 ; preds = %if.then.i.us.1214, %if.end.i.us
  %537 = or i64 %_local_id_x.0.us, 2
  %add1.i.i.us.2217 = add nuw nsw i64 %537, %mul.i.i
  %conv.i.us.2218 = trunc i64 %add1.i.i.us.2217 to i32
  %cmp4.i.us.2219 = icmp slt i32 %conv.i.us.2218, %6
  br i1 %cmp4.i.us.2219, label %if.then.i.us.2225, label %if.end.i.us.2226

if.then.i.us.2225:                                ; preds = %if.end.i.us.1215
  %add.i.us.2221 = add nsw i32 %mul.i.us, %conv.i.us.2218
  %idxprom.i.us.2222 = sext i32 %add.i.us.2221 to i64
  %arrayidx.i.us.2223 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.2222
  %538 = load float, float* %arrayidx.i.us.2223, align 4, !tbaa !12
  %mul6.i.us.2224 = fmul float %538, %4
  store float %mul6.i.us.2224, float* %arrayidx.i.us.2223, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.2226

if.end.i.us.2226:                                 ; preds = %if.then.i.us.2225, %if.end.i.us.1215
  %539 = or i64 %_local_id_x.0.us, 3
  %add1.i.i.us.3228 = add nuw nsw i64 %539, %mul.i.i
  %conv.i.us.3229 = trunc i64 %add1.i.i.us.3228 to i32
  %cmp4.i.us.3230 = icmp slt i32 %conv.i.us.3229, %6
  br i1 %cmp4.i.us.3230, label %if.then.i.us.3236, label %if.end.i.us.3237

if.then.i.us.3236:                                ; preds = %if.end.i.us.2226
  %add.i.us.3232 = add nsw i32 %mul.i.us, %conv.i.us.3229
  %idxprom.i.us.3233 = sext i32 %add.i.us.3232 to i64
  %arrayidx.i.us.3234 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.3233
  %540 = load float, float* %arrayidx.i.us.3234, align 4, !tbaa !12
  %mul6.i.us.3235 = fmul float %540, %4
  store float %mul6.i.us.3235, float* %arrayidx.i.us.3234, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.us.3237

if.end.i.us.3237:                                 ; preds = %if.then.i.us.3236, %if.end.i.us.2226
  %541 = add nuw nsw i64 %_local_id_x.0.us, 4
  %exitcond34.not.3 = icmp eq i64 %541, 32
  br i1 %exitcond34.not.3, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !31
}

; Function Attrs: nounwind
define void @_pocl_kernel_gemm_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %33 = getelementptr i8*, i8** %0, i64 7
  %34 = bitcast i8** %33 to i32**
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp740.i.i = icmp sgt i32 %36, 0
  %37 = sext i32 %32 to i64
  %wide.trip.count.i.i = zext i32 %36 to i64
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i.us = icmp sgt i32 %28, %conv2.i.i.us
  %mul.i.i.us = mul nsw i32 %32, %conv2.i.i.us
  br i1 %cmp740.i.i, label %pregion_for_entry.pregion_for_init.i.i.us, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  br i1 %cmp.i.i.us, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %38 = trunc i64 %3 to i32
  %39 = mul i32 %32, %38
  %40 = shl i32 %39, 3
  %41 = trunc i64 %2 to i32
  %42 = shl i32 %41, 5
  %43 = add i32 %40, %42
  %44 = icmp sgt i32 %43, 2147483616
  br i1 %44, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.ph:                                        ; preds = %vector.scevcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert38 = insertelement <8 x i32> undef, i32 %32, i32 0
  %broadcast.splat39 = shufflevector <8 x i32> %broadcast.splatinsert38, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert40 = insertelement <8 x float> undef, float %24, i32 0
  %broadcast.splat41 = shufflevector <8 x float> %broadcast.splatinsert40, <8 x float> undef, <8 x i32> zeroinitializer
  %45 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %46 = or <8 x i32> %45, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %47 = icmp sgt <8 x i32> %broadcast.splat39, %46
  %48 = extractelement <8 x i32> %46, i32 0
  %49 = add nsw i32 %mul.i.i.us, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %16, i64 %50
  %52 = bitcast float* %51 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %52, i32 4, <8 x i1> %47, <8 x float> undef), !tbaa !12
  %53 = fmul <8 x float> %broadcast.splat41, %wide.masked.load
  %54 = bitcast float* %51 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %53, <8 x float>* %54, i32 4, <8 x i1> %47), !tbaa !12, !llvm.access.group !16
  %55 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %56 = or <8 x i32> %55, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %57 = icmp sgt <8 x i32> %broadcast.splat39, %56
  %58 = extractelement <8 x i32> %56, i32 0
  %59 = add nsw i32 %mul.i.i.us, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %16, i64 %60
  %62 = bitcast float* %61 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %62, i32 4, <8 x i1> %57, <8 x float> undef), !tbaa !12
  %63 = fmul <8 x float> %broadcast.splat41, %wide.masked.load.1
  %64 = bitcast float* %61 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %63, <8 x float>* %64, i32 4, <8 x i1> %57), !tbaa !12, !llvm.access.group !16
  %65 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %66 = or <8 x i32> %65, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %67 = icmp sgt <8 x i32> %broadcast.splat39, %66
  %68 = extractelement <8 x i32> %66, i32 0
  %69 = add nsw i32 %mul.i.i.us, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %16, i64 %70
  %72 = bitcast float* %71 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %72, i32 4, <8 x i1> %67, <8 x float> undef), !tbaa !12
  %73 = fmul <8 x float> %broadcast.splat41, %wide.masked.load.2
  %74 = bitcast float* %71 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %73, <8 x float>* %74, i32 4, <8 x i1> %67), !tbaa !12, !llvm.access.group !16
  %75 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %76 = or <8 x i32> %75, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %77 = icmp sgt <8 x i32> %broadcast.splat39, %76
  %78 = extractelement <8 x i32> %76, i32 0
  %79 = add nsw i32 %mul.i.i.us, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %16, i64 %80
  %82 = bitcast float* %81 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %82, i32 4, <8 x i1> %77, <8 x float> undef), !tbaa !12
  %83 = fmul <8 x float> %broadcast.splat41, %wide.masked.load.3
  %84 = bitcast float* %81 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %83, <8 x float>* %84, i32 4, <8 x i1> %77), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

pregion_for_entry.pregion_for_init.i.i.us:        ; preds = %5
  %mul9.i.i.us = mul nsw i32 %36, %conv2.i.i.us
  %85 = sext i32 %mul9.i.i.us to i64
  br i1 %cmp.i.i.us, label %pregion_for_entry.entry.i.i.us.us.preheader, label %pregion_for_end.i.i.us

pregion_for_entry.entry.i.i.us.us.preheader:      ; preds = %pregion_for_entry.pregion_for_init.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_end.i.i.us.loopexit:                  ; preds = %if.end.i.i.us.us
  br label %pregion_for_end.i.i.us

pregion_for_end.i.i.us:                           ; preds = %pregion_for_end.i.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.i.us
  %86 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %86, 1
  %cmp.i.i.us.1 = icmp sgt i32 %28, %conv2.i.i.us.1
  %mul.i.i.us.1 = mul nsw i32 %32, %conv2.i.i.us.1
  %mul9.i.i.us.1 = mul nsw i32 %36, %conv2.i.i.us.1
  %87 = sext i32 %mul9.i.i.us.1 to i64
  br i1 %cmp.i.i.us.1, label %pregion_for_entry.entry.i.i.us.us.1.preheader, label %pregion_for_end.i.i.us.1

pregion_for_entry.entry.i.i.us.us.1.preheader:    ; preds = %pregion_for_end.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.entry.i.i.us.us:                ; preds = %if.end.i.i.us.us, %pregion_for_entry.entry.i.i.us.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ %90, %if.end.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us.preheader ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %cmp4.i.i.us.us = icmp sgt i32 %32, %conv.i.i.us.us
  br i1 %cmp4.i.i.us.us, label %if.then.i.i.us.us, label %if.end.i.i.us.us

if.then.i.i.us.us:                                ; preds = %pregion_for_entry.entry.i.i.us.us
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us
  %88 = load float, float* %arrayidx.i.i.us.us, align 4, !tbaa !12
  %mul6.i.i.us.us = fmul float %24, %88
  store float %mul6.i.i.us.us, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %89 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

if.end.i.i.us.us.loopexit:                        ; preds = %for.body.i.i.us.us
  br label %if.end.i.i.us.us

if.end.i.i.us.us:                                 ; preds = %if.end.i.i.us.us.loopexit, %pregion_for_entry.entry.i.i.us.us
  %90 = add nuw nsw i64 %_local_id_x.i.0.us.us, 1
  %exitcond.not = icmp eq i64 %90, 32
  br i1 %exitcond.not, label %pregion_for_end.i.i.us.loopexit, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !19

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %if.then.i.i.us.us
  %indvars.iv.next.i.i3.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %if.then.i.i.us.us ]
  %91 = phi float [ %97, %for.body.i.i.us.us ], [ %mul6.i.i.us.us, %if.then.i.i.us.us ]
  %92 = add nsw i64 %indvars.iv.next.i.i3.us.us, %85
  %arrayidx12.i.i.us.us = getelementptr inbounds float, float* %8, i64 %92
  %93 = load float, float* %arrayidx12.i.i.us.us, align 4, !tbaa !12
  %mul13.i.i.us.us = fmul float %20, %93
  %94 = mul nsw i64 %indvars.iv.next.i.i3.us.us, %37
  %95 = add nsw i64 %94, %89
  %arrayidx17.i.i.us.us = getelementptr inbounds float, float* %12, i64 %95
  %96 = load float, float* %arrayidx17.i.i.us.us, align 4, !tbaa !12
  %97 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us, float %96, float %91) #2
  store float %97, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i3.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %if.end.i.i.us.us.loopexit, label %for.body.i.i.us.us, !llvm.loop !21

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us.3237, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %565, %if.end.i.i.us.3237 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %32, %conv.i.i.us
  br i1 %cmp4.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add.i.i.us = add nsw i32 %mul.i.i.us, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us
  %98 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %mul6.i.i.us = fmul float %24, %98
  store float %mul6.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %99 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1206 = add nuw nsw i64 %99, %mul.i.i.i
  %conv.i.i.us.1207 = trunc i64 %add1.i.i.i.us.1206 to i32
  %cmp4.i.i.us.1208 = icmp sgt i32 %32, %conv.i.i.us.1207
  br i1 %cmp4.i.i.us.1208, label %if.then.i.i.us.1214, label %if.end.i.i.us.1215

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.i.i.us.3237
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i.preheader
  %100 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.1 = or i32 %100, 1
  %cmp.i.i.1 = icmp sgt i32 %28, %conv2.i.i.1
  %mul.i.i.1 = mul nsw i32 %32, %conv2.i.i.1
  br i1 %cmp.i.i.1, label %vector.scevcheck49, label %pregion_for_end.i.i.1

vector.scevcheck49:                               ; preds = %pregion_for_end.i.i
  %101 = mul i32 %32, %conv2.i.i.1
  %102 = trunc i64 %2 to i32
  %103 = shl i32 %102, 5
  %104 = add i32 %101, %103
  %105 = icmp sgt i32 %104, 2147483616
  br i1 %105, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.ph50

pregion_for_entry.entry.i.i.us.1.preheader:       ; preds = %vector.scevcheck49
  br label %pregion_for_entry.entry.i.i.us.1

vector.ph50:                                      ; preds = %vector.scevcheck49
  %broadcast.splatinsert57 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat58 = shufflevector <8 x i64> %broadcast.splatinsert57, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert59 = insertelement <8 x i32> undef, i32 %32, i32 0
  %broadcast.splat60 = shufflevector <8 x i32> %broadcast.splatinsert59, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <8 x float> undef, float %24, i32 0
  %broadcast.splat63 = shufflevector <8 x float> %broadcast.splatinsert62, <8 x float> undef, <8 x i32> zeroinitializer
  %106 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %107 = or <8 x i32> %106, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %108 = icmp sgt <8 x i32> %broadcast.splat60, %107
  %109 = extractelement <8 x i32> %107, i32 0
  %110 = add nsw i32 %mul.i.i.1, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %16, i64 %111
  %113 = bitcast float* %112 to <8 x float>*
  %wide.masked.load61 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %113, i32 4, <8 x i1> %108, <8 x float> undef), !tbaa !12
  %114 = fmul <8 x float> %broadcast.splat63, %wide.masked.load61
  %115 = bitcast float* %112 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %114, <8 x float>* %115, i32 4, <8 x i1> %108), !tbaa !12, !llvm.access.group !16
  %116 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %117 = or <8 x i32> %116, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %118 = icmp sgt <8 x i32> %broadcast.splat60, %117
  %119 = extractelement <8 x i32> %117, i32 0
  %120 = add nsw i32 %mul.i.i.1, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %16, i64 %121
  %123 = bitcast float* %122 to <8 x float>*
  %wide.masked.load61.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %123, i32 4, <8 x i1> %118, <8 x float> undef), !tbaa !12
  %124 = fmul <8 x float> %broadcast.splat63, %wide.masked.load61.1
  %125 = bitcast float* %122 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %124, <8 x float>* %125, i32 4, <8 x i1> %118), !tbaa !12, !llvm.access.group !16
  %126 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %127 = or <8 x i32> %126, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %128 = icmp sgt <8 x i32> %broadcast.splat60, %127
  %129 = extractelement <8 x i32> %127, i32 0
  %130 = add nsw i32 %mul.i.i.1, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %16, i64 %131
  %133 = bitcast float* %132 to <8 x float>*
  %wide.masked.load61.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %133, i32 4, <8 x i1> %128, <8 x float> undef), !tbaa !12
  %134 = fmul <8 x float> %broadcast.splat63, %wide.masked.load61.2
  %135 = bitcast float* %132 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %134, <8 x float>* %135, i32 4, <8 x i1> %128), !tbaa !12, !llvm.access.group !16
  %136 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %137 = or <8 x i32> %136, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %138 = icmp sgt <8 x i32> %broadcast.splat60, %137
  %139 = extractelement <8 x i32> %137, i32 0
  %140 = add nsw i32 %mul.i.i.1, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %16, i64 %141
  %143 = bitcast float* %142 to <8 x float>*
  %wide.masked.load61.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %143, i32 4, <8 x i1> %138, <8 x float> undef), !tbaa !12
  %144 = fmul <8 x float> %broadcast.splat63, %wide.masked.load61.3
  %145 = bitcast float* %142 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %144, <8 x float>* %145, i32 4, <8 x i1> %138), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.1

_pocl_kernel_gemm.exit.loopexit:                  ; preds = %if.end.i.i.us.us.7
  br label %_pocl_kernel_gemm.exit

_pocl_kernel_gemm.exit.loopexit238:               ; preds = %if.end.i.i.us.7.3
  br label %_pocl_kernel_gemm.exit

_pocl_kernel_gemm.exit:                           ; preds = %pregion_for_end.i.i.us.6, %vector.ph182, %pregion_for_end.i.i.6, %_pocl_kernel_gemm.exit.loopexit238, %_pocl_kernel_gemm.exit.loopexit
  ret void

pregion_for_entry.entry.i.i.us.1:                 ; preds = %if.end.i.i.us.1.3, %pregion_for_entry.entry.i.i.us.1.preheader
  %_local_id_x.i.0.us.1 = phi i64 [ %559, %if.end.i.i.us.1.3 ], [ 0, %pregion_for_entry.entry.i.i.us.1.preheader ]
  %add1.i.i.i.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.1, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp4.i.i.us.1 = icmp sgt i32 %32, %conv.i.i.us.1
  br i1 %cmp4.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

if.then.i.i.us.1:                                 ; preds = %pregion_for_entry.entry.i.i.us.1
  %add.i.i.us.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1
  %idxprom.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.1
  %146 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %mul6.i.i.us.1 = fmul float %24, %146
  store float %mul6.i.i.us.1, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.then.i.i.us.1, %pregion_for_entry.entry.i.i.us.1
  %147 = or i64 %_local_id_x.i.0.us.1, 1
  %add1.i.i.i.us.1.1 = add nuw nsw i64 %147, %mul.i.i.i
  %conv.i.i.us.1.1 = trunc i64 %add1.i.i.i.us.1.1 to i32
  %cmp4.i.i.us.1.1 = icmp sgt i32 %32, %conv.i.i.us.1.1
  br i1 %cmp4.i.i.us.1.1, label %if.then.i.i.us.1.1, label %if.end.i.i.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.i.i.us.1.3
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph50, %pregion_for_end.i.i
  %148 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.2 = or i32 %148, 2
  %cmp.i.i.2 = icmp sgt i32 %28, %conv2.i.i.2
  %mul.i.i.2 = mul nsw i32 %32, %conv2.i.i.2
  br i1 %cmp.i.i.2, label %vector.scevcheck71, label %pregion_for_end.i.i.2

vector.scevcheck71:                               ; preds = %pregion_for_end.i.i.1
  %149 = mul i32 %32, %conv2.i.i.2
  %150 = trunc i64 %2 to i32
  %151 = shl i32 %150, 5
  %152 = add i32 %149, %151
  %153 = icmp sgt i32 %152, 2147483616
  br i1 %153, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.ph72

pregion_for_entry.entry.i.i.us.2.preheader:       ; preds = %vector.scevcheck71
  br label %pregion_for_entry.entry.i.i.us.2

vector.ph72:                                      ; preds = %vector.scevcheck71
  %broadcast.splatinsert79 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat80 = shufflevector <8 x i64> %broadcast.splatinsert79, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert81 = insertelement <8 x i32> undef, i32 %32, i32 0
  %broadcast.splat82 = shufflevector <8 x i32> %broadcast.splatinsert81, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert84 = insertelement <8 x float> undef, float %24, i32 0
  %broadcast.splat85 = shufflevector <8 x float> %broadcast.splatinsert84, <8 x float> undef, <8 x i32> zeroinitializer
  %154 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %155 = or <8 x i32> %154, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %156 = icmp sgt <8 x i32> %broadcast.splat82, %155
  %157 = extractelement <8 x i32> %155, i32 0
  %158 = add nsw i32 %mul.i.i.2, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %16, i64 %159
  %161 = bitcast float* %160 to <8 x float>*
  %wide.masked.load83 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %161, i32 4, <8 x i1> %156, <8 x float> undef), !tbaa !12
  %162 = fmul <8 x float> %broadcast.splat85, %wide.masked.load83
  %163 = bitcast float* %160 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %162, <8 x float>* %163, i32 4, <8 x i1> %156), !tbaa !12, !llvm.access.group !16
  %164 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %165 = or <8 x i32> %164, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %166 = icmp sgt <8 x i32> %broadcast.splat82, %165
  %167 = extractelement <8 x i32> %165, i32 0
  %168 = add nsw i32 %mul.i.i.2, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %16, i64 %169
  %171 = bitcast float* %170 to <8 x float>*
  %wide.masked.load83.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %171, i32 4, <8 x i1> %166, <8 x float> undef), !tbaa !12
  %172 = fmul <8 x float> %broadcast.splat85, %wide.masked.load83.1
  %173 = bitcast float* %170 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %172, <8 x float>* %173, i32 4, <8 x i1> %166), !tbaa !12, !llvm.access.group !16
  %174 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %175 = or <8 x i32> %174, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %176 = icmp sgt <8 x i32> %broadcast.splat82, %175
  %177 = extractelement <8 x i32> %175, i32 0
  %178 = add nsw i32 %mul.i.i.2, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %16, i64 %179
  %181 = bitcast float* %180 to <8 x float>*
  %wide.masked.load83.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %181, i32 4, <8 x i1> %176, <8 x float> undef), !tbaa !12
  %182 = fmul <8 x float> %broadcast.splat85, %wide.masked.load83.2
  %183 = bitcast float* %180 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %182, <8 x float>* %183, i32 4, <8 x i1> %176), !tbaa !12, !llvm.access.group !16
  %184 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %185 = or <8 x i32> %184, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %186 = icmp sgt <8 x i32> %broadcast.splat82, %185
  %187 = extractelement <8 x i32> %185, i32 0
  %188 = add nsw i32 %mul.i.i.2, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %16, i64 %189
  %191 = bitcast float* %190 to <8 x float>*
  %wide.masked.load83.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %191, i32 4, <8 x i1> %186, <8 x float> undef), !tbaa !12
  %192 = fmul <8 x float> %broadcast.splat85, %wide.masked.load83.3
  %193 = bitcast float* %190 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %192, <8 x float>* %193, i32 4, <8 x i1> %186), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.2:                 ; preds = %if.end.i.i.us.2.3, %pregion_for_entry.entry.i.i.us.2.preheader
  %_local_id_x.i.0.us.2 = phi i64 [ %553, %if.end.i.i.us.2.3 ], [ 0, %pregion_for_entry.entry.i.i.us.2.preheader ]
  %add1.i.i.i.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.2, %mul.i.i.i
  %conv.i.i.us.2 = trunc i64 %add1.i.i.i.us.2 to i32
  %cmp4.i.i.us.2 = icmp sgt i32 %32, %conv.i.i.us.2
  br i1 %cmp4.i.i.us.2, label %if.then.i.i.us.2, label %if.end.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %pregion_for_entry.entry.i.i.us.2
  %add.i.i.us.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2
  %idxprom.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.2
  %194 = load float, float* %arrayidx.i.i.us.2, align 4, !tbaa !12
  %mul6.i.i.us.2 = fmul float %24, %194
  store float %mul6.i.i.us.2, float* %arrayidx.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2

if.end.i.i.us.2:                                  ; preds = %if.then.i.i.us.2, %pregion_for_entry.entry.i.i.us.2
  %195 = or i64 %_local_id_x.i.0.us.2, 1
  %add1.i.i.i.us.2.1 = add nuw nsw i64 %195, %mul.i.i.i
  %conv.i.i.us.2.1 = trunc i64 %add1.i.i.i.us.2.1 to i32
  %cmp4.i.i.us.2.1 = icmp sgt i32 %32, %conv.i.i.us.2.1
  br i1 %cmp4.i.i.us.2.1, label %if.then.i.i.us.2.1, label %if.end.i.i.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.i.i.us.2.3
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph72, %pregion_for_end.i.i.1
  %196 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.3 = or i32 %196, 3
  %cmp.i.i.3 = icmp sgt i32 %28, %conv2.i.i.3
  %mul.i.i.3 = mul nsw i32 %32, %conv2.i.i.3
  br i1 %cmp.i.i.3, label %vector.scevcheck93, label %pregion_for_end.i.i.3

vector.scevcheck93:                               ; preds = %pregion_for_end.i.i.2
  %197 = mul i32 %32, %conv2.i.i.3
  %198 = trunc i64 %2 to i32
  %199 = shl i32 %198, 5
  %200 = add i32 %197, %199
  %201 = icmp sgt i32 %200, 2147483616
  br i1 %201, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.ph94

pregion_for_entry.entry.i.i.us.3.preheader:       ; preds = %vector.scevcheck93
  br label %pregion_for_entry.entry.i.i.us.3

vector.ph94:                                      ; preds = %vector.scevcheck93
  %broadcast.splatinsert101 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat102 = shufflevector <8 x i64> %broadcast.splatinsert101, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <8 x i32> undef, i32 %32, i32 0
  %broadcast.splat104 = shufflevector <8 x i32> %broadcast.splatinsert103, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert106 = insertelement <8 x float> undef, float %24, i32 0
  %broadcast.splat107 = shufflevector <8 x float> %broadcast.splatinsert106, <8 x float> undef, <8 x i32> zeroinitializer
  %202 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %203 = or <8 x i32> %202, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %204 = icmp sgt <8 x i32> %broadcast.splat104, %203
  %205 = extractelement <8 x i32> %203, i32 0
  %206 = add nsw i32 %mul.i.i.3, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %16, i64 %207
  %209 = bitcast float* %208 to <8 x float>*
  %wide.masked.load105 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %209, i32 4, <8 x i1> %204, <8 x float> undef), !tbaa !12
  %210 = fmul <8 x float> %broadcast.splat107, %wide.masked.load105
  %211 = bitcast float* %208 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %210, <8 x float>* %211, i32 4, <8 x i1> %204), !tbaa !12, !llvm.access.group !16
  %212 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %213 = or <8 x i32> %212, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %214 = icmp sgt <8 x i32> %broadcast.splat104, %213
  %215 = extractelement <8 x i32> %213, i32 0
  %216 = add nsw i32 %mul.i.i.3, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float, float* %16, i64 %217
  %219 = bitcast float* %218 to <8 x float>*
  %wide.masked.load105.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %219, i32 4, <8 x i1> %214, <8 x float> undef), !tbaa !12
  %220 = fmul <8 x float> %broadcast.splat107, %wide.masked.load105.1
  %221 = bitcast float* %218 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %220, <8 x float>* %221, i32 4, <8 x i1> %214), !tbaa !12, !llvm.access.group !16
  %222 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %223 = or <8 x i32> %222, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %224 = icmp sgt <8 x i32> %broadcast.splat104, %223
  %225 = extractelement <8 x i32> %223, i32 0
  %226 = add nsw i32 %mul.i.i.3, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %16, i64 %227
  %229 = bitcast float* %228 to <8 x float>*
  %wide.masked.load105.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %229, i32 4, <8 x i1> %224, <8 x float> undef), !tbaa !12
  %230 = fmul <8 x float> %broadcast.splat107, %wide.masked.load105.2
  %231 = bitcast float* %228 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %230, <8 x float>* %231, i32 4, <8 x i1> %224), !tbaa !12, !llvm.access.group !16
  %232 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %233 = or <8 x i32> %232, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %234 = icmp sgt <8 x i32> %broadcast.splat104, %233
  %235 = extractelement <8 x i32> %233, i32 0
  %236 = add nsw i32 %mul.i.i.3, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %16, i64 %237
  %239 = bitcast float* %238 to <8 x float>*
  %wide.masked.load105.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %239, i32 4, <8 x i1> %234, <8 x float> undef), !tbaa !12
  %240 = fmul <8 x float> %broadcast.splat107, %wide.masked.load105.3
  %241 = bitcast float* %238 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %240, <8 x float>* %241, i32 4, <8 x i1> %234), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.3:                 ; preds = %if.end.i.i.us.3.3, %pregion_for_entry.entry.i.i.us.3.preheader
  %_local_id_x.i.0.us.3 = phi i64 [ %547, %if.end.i.i.us.3.3 ], [ 0, %pregion_for_entry.entry.i.i.us.3.preheader ]
  %add1.i.i.i.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.3, %mul.i.i.i
  %conv.i.i.us.3 = trunc i64 %add1.i.i.i.us.3 to i32
  %cmp4.i.i.us.3 = icmp sgt i32 %32, %conv.i.i.us.3
  br i1 %cmp4.i.i.us.3, label %if.then.i.i.us.3, label %if.end.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %pregion_for_entry.entry.i.i.us.3
  %add.i.i.us.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3
  %idxprom.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.3
  %242 = load float, float* %arrayidx.i.i.us.3, align 4, !tbaa !12
  %mul6.i.i.us.3 = fmul float %24, %242
  store float %mul6.i.i.us.3, float* %arrayidx.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3

if.end.i.i.us.3:                                  ; preds = %if.then.i.i.us.3, %pregion_for_entry.entry.i.i.us.3
  %243 = or i64 %_local_id_x.i.0.us.3, 1
  %add1.i.i.i.us.3.1 = add nuw nsw i64 %243, %mul.i.i.i
  %conv.i.i.us.3.1 = trunc i64 %add1.i.i.i.us.3.1 to i32
  %cmp4.i.i.us.3.1 = icmp sgt i32 %32, %conv.i.i.us.3.1
  br i1 %cmp4.i.i.us.3.1, label %if.then.i.i.us.3.1, label %if.end.i.i.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.i.i.us.3.3
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph94, %pregion_for_end.i.i.2
  %244 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.4 = or i32 %244, 4
  %cmp.i.i.4 = icmp sgt i32 %28, %conv2.i.i.4
  %mul.i.i.4 = mul nsw i32 %32, %conv2.i.i.4
  br i1 %cmp.i.i.4, label %vector.scevcheck115, label %pregion_for_end.i.i.4

vector.scevcheck115:                              ; preds = %pregion_for_end.i.i.3
  %245 = mul i32 %32, %conv2.i.i.4
  %246 = trunc i64 %2 to i32
  %247 = shl i32 %246, 5
  %248 = add i32 %245, %247
  %249 = icmp sgt i32 %248, 2147483616
  br i1 %249, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.ph116

pregion_for_entry.entry.i.i.us.4.preheader:       ; preds = %vector.scevcheck115
  br label %pregion_for_entry.entry.i.i.us.4

vector.ph116:                                     ; preds = %vector.scevcheck115
  %broadcast.splatinsert123 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat124 = shufflevector <8 x i64> %broadcast.splatinsert123, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert125 = insertelement <8 x i32> undef, i32 %32, i32 0
  %broadcast.splat126 = shufflevector <8 x i32> %broadcast.splatinsert125, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert128 = insertelement <8 x float> undef, float %24, i32 0
  %broadcast.splat129 = shufflevector <8 x float> %broadcast.splatinsert128, <8 x float> undef, <8 x i32> zeroinitializer
  %250 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %251 = or <8 x i32> %250, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %252 = icmp sgt <8 x i32> %broadcast.splat126, %251
  %253 = extractelement <8 x i32> %251, i32 0
  %254 = add nsw i32 %mul.i.i.4, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %16, i64 %255
  %257 = bitcast float* %256 to <8 x float>*
  %wide.masked.load127 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %257, i32 4, <8 x i1> %252, <8 x float> undef), !tbaa !12
  %258 = fmul <8 x float> %broadcast.splat129, %wide.masked.load127
  %259 = bitcast float* %256 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %258, <8 x float>* %259, i32 4, <8 x i1> %252), !tbaa !12, !llvm.access.group !16
  %260 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %261 = or <8 x i32> %260, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %262 = icmp sgt <8 x i32> %broadcast.splat126, %261
  %263 = extractelement <8 x i32> %261, i32 0
  %264 = add nsw i32 %mul.i.i.4, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds float, float* %16, i64 %265
  %267 = bitcast float* %266 to <8 x float>*
  %wide.masked.load127.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %267, i32 4, <8 x i1> %262, <8 x float> undef), !tbaa !12
  %268 = fmul <8 x float> %broadcast.splat129, %wide.masked.load127.1
  %269 = bitcast float* %266 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %268, <8 x float>* %269, i32 4, <8 x i1> %262), !tbaa !12, !llvm.access.group !16
  %270 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %271 = or <8 x i32> %270, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %272 = icmp sgt <8 x i32> %broadcast.splat126, %271
  %273 = extractelement <8 x i32> %271, i32 0
  %274 = add nsw i32 %mul.i.i.4, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %16, i64 %275
  %277 = bitcast float* %276 to <8 x float>*
  %wide.masked.load127.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %277, i32 4, <8 x i1> %272, <8 x float> undef), !tbaa !12
  %278 = fmul <8 x float> %broadcast.splat129, %wide.masked.load127.2
  %279 = bitcast float* %276 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %278, <8 x float>* %279, i32 4, <8 x i1> %272), !tbaa !12, !llvm.access.group !16
  %280 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %281 = or <8 x i32> %280, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %282 = icmp sgt <8 x i32> %broadcast.splat126, %281
  %283 = extractelement <8 x i32> %281, i32 0
  %284 = add nsw i32 %mul.i.i.4, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds float, float* %16, i64 %285
  %287 = bitcast float* %286 to <8 x float>*
  %wide.masked.load127.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %287, i32 4, <8 x i1> %282, <8 x float> undef), !tbaa !12
  %288 = fmul <8 x float> %broadcast.splat129, %wide.masked.load127.3
  %289 = bitcast float* %286 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %288, <8 x float>* %289, i32 4, <8 x i1> %282), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.4:                 ; preds = %if.end.i.i.us.4.3, %pregion_for_entry.entry.i.i.us.4.preheader
  %_local_id_x.i.0.us.4 = phi i64 [ %541, %if.end.i.i.us.4.3 ], [ 0, %pregion_for_entry.entry.i.i.us.4.preheader ]
  %add1.i.i.i.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.4, %mul.i.i.i
  %conv.i.i.us.4 = trunc i64 %add1.i.i.i.us.4 to i32
  %cmp4.i.i.us.4 = icmp sgt i32 %32, %conv.i.i.us.4
  br i1 %cmp4.i.i.us.4, label %if.then.i.i.us.4, label %if.end.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %pregion_for_entry.entry.i.i.us.4
  %add.i.i.us.4 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4
  %idxprom.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.4
  %290 = load float, float* %arrayidx.i.i.us.4, align 4, !tbaa !12
  %mul6.i.i.us.4 = fmul float %24, %290
  store float %mul6.i.i.us.4, float* %arrayidx.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4

if.end.i.i.us.4:                                  ; preds = %if.then.i.i.us.4, %pregion_for_entry.entry.i.i.us.4
  %291 = or i64 %_local_id_x.i.0.us.4, 1
  %add1.i.i.i.us.4.1 = add nuw nsw i64 %291, %mul.i.i.i
  %conv.i.i.us.4.1 = trunc i64 %add1.i.i.i.us.4.1 to i32
  %cmp4.i.i.us.4.1 = icmp sgt i32 %32, %conv.i.i.us.4.1
  br i1 %cmp4.i.i.us.4.1, label %if.then.i.i.us.4.1, label %if.end.i.i.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.i.i.us.4.3
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph116, %pregion_for_end.i.i.3
  %292 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.5 = or i32 %292, 5
  %cmp.i.i.5 = icmp sgt i32 %28, %conv2.i.i.5
  %mul.i.i.5 = mul nsw i32 %32, %conv2.i.i.5
  br i1 %cmp.i.i.5, label %vector.scevcheck137, label %pregion_for_end.i.i.5

vector.scevcheck137:                              ; preds = %pregion_for_end.i.i.4
  %293 = mul i32 %32, %conv2.i.i.5
  %294 = trunc i64 %2 to i32
  %295 = shl i32 %294, 5
  %296 = add i32 %293, %295
  %297 = icmp sgt i32 %296, 2147483616
  br i1 %297, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.ph138

pregion_for_entry.entry.i.i.us.5.preheader:       ; preds = %vector.scevcheck137
  br label %pregion_for_entry.entry.i.i.us.5

vector.ph138:                                     ; preds = %vector.scevcheck137
  %broadcast.splatinsert145 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat146 = shufflevector <8 x i64> %broadcast.splatinsert145, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert147 = insertelement <8 x i32> undef, i32 %32, i32 0
  %broadcast.splat148 = shufflevector <8 x i32> %broadcast.splatinsert147, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert150 = insertelement <8 x float> undef, float %24, i32 0
  %broadcast.splat151 = shufflevector <8 x float> %broadcast.splatinsert150, <8 x float> undef, <8 x i32> zeroinitializer
  %298 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %299 = or <8 x i32> %298, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %300 = icmp sgt <8 x i32> %broadcast.splat148, %299
  %301 = extractelement <8 x i32> %299, i32 0
  %302 = add nsw i32 %mul.i.i.5, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %16, i64 %303
  %305 = bitcast float* %304 to <8 x float>*
  %wide.masked.load149 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %305, i32 4, <8 x i1> %300, <8 x float> undef), !tbaa !12
  %306 = fmul <8 x float> %broadcast.splat151, %wide.masked.load149
  %307 = bitcast float* %304 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %306, <8 x float>* %307, i32 4, <8 x i1> %300), !tbaa !12, !llvm.access.group !16
  %308 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %309 = or <8 x i32> %308, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %310 = icmp sgt <8 x i32> %broadcast.splat148, %309
  %311 = extractelement <8 x i32> %309, i32 0
  %312 = add nsw i32 %mul.i.i.5, %311
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds float, float* %16, i64 %313
  %315 = bitcast float* %314 to <8 x float>*
  %wide.masked.load149.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %315, i32 4, <8 x i1> %310, <8 x float> undef), !tbaa !12
  %316 = fmul <8 x float> %broadcast.splat151, %wide.masked.load149.1
  %317 = bitcast float* %314 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %316, <8 x float>* %317, i32 4, <8 x i1> %310), !tbaa !12, !llvm.access.group !16
  %318 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %319 = or <8 x i32> %318, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %320 = icmp sgt <8 x i32> %broadcast.splat148, %319
  %321 = extractelement <8 x i32> %319, i32 0
  %322 = add nsw i32 %mul.i.i.5, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds float, float* %16, i64 %323
  %325 = bitcast float* %324 to <8 x float>*
  %wide.masked.load149.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %325, i32 4, <8 x i1> %320, <8 x float> undef), !tbaa !12
  %326 = fmul <8 x float> %broadcast.splat151, %wide.masked.load149.2
  %327 = bitcast float* %324 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %326, <8 x float>* %327, i32 4, <8 x i1> %320), !tbaa !12, !llvm.access.group !16
  %328 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %329 = or <8 x i32> %328, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %330 = icmp sgt <8 x i32> %broadcast.splat148, %329
  %331 = extractelement <8 x i32> %329, i32 0
  %332 = add nsw i32 %mul.i.i.5, %331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds float, float* %16, i64 %333
  %335 = bitcast float* %334 to <8 x float>*
  %wide.masked.load149.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %335, i32 4, <8 x i1> %330, <8 x float> undef), !tbaa !12
  %336 = fmul <8 x float> %broadcast.splat151, %wide.masked.load149.3
  %337 = bitcast float* %334 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %336, <8 x float>* %337, i32 4, <8 x i1> %330), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.5:                 ; preds = %if.end.i.i.us.5.3, %pregion_for_entry.entry.i.i.us.5.preheader
  %_local_id_x.i.0.us.5 = phi i64 [ %535, %if.end.i.i.us.5.3 ], [ 0, %pregion_for_entry.entry.i.i.us.5.preheader ]
  %add1.i.i.i.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.5, %mul.i.i.i
  %conv.i.i.us.5 = trunc i64 %add1.i.i.i.us.5 to i32
  %cmp4.i.i.us.5 = icmp sgt i32 %32, %conv.i.i.us.5
  br i1 %cmp4.i.i.us.5, label %if.then.i.i.us.5, label %if.end.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %pregion_for_entry.entry.i.i.us.5
  %add.i.i.us.5 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5
  %idxprom.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.5
  %338 = load float, float* %arrayidx.i.i.us.5, align 4, !tbaa !12
  %mul6.i.i.us.5 = fmul float %24, %338
  store float %mul6.i.i.us.5, float* %arrayidx.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5

if.end.i.i.us.5:                                  ; preds = %if.then.i.i.us.5, %pregion_for_entry.entry.i.i.us.5
  %339 = or i64 %_local_id_x.i.0.us.5, 1
  %add1.i.i.i.us.5.1 = add nuw nsw i64 %339, %mul.i.i.i
  %conv.i.i.us.5.1 = trunc i64 %add1.i.i.i.us.5.1 to i32
  %cmp4.i.i.us.5.1 = icmp sgt i32 %32, %conv.i.i.us.5.1
  br i1 %cmp4.i.i.us.5.1, label %if.then.i.i.us.5.1, label %if.end.i.i.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.i.i.us.5.3
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph138, %pregion_for_end.i.i.4
  %340 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.6 = or i32 %340, 6
  %cmp.i.i.6 = icmp sgt i32 %28, %conv2.i.i.6
  %mul.i.i.6 = mul nsw i32 %32, %conv2.i.i.6
  br i1 %cmp.i.i.6, label %vector.scevcheck159, label %pregion_for_end.i.i.6

vector.scevcheck159:                              ; preds = %pregion_for_end.i.i.5
  %341 = mul i32 %32, %conv2.i.i.6
  %342 = trunc i64 %2 to i32
  %343 = shl i32 %342, 5
  %344 = add i32 %341, %343
  %345 = icmp sgt i32 %344, 2147483616
  br i1 %345, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.ph160

pregion_for_entry.entry.i.i.us.6.preheader:       ; preds = %vector.scevcheck159
  br label %pregion_for_entry.entry.i.i.us.6

vector.ph160:                                     ; preds = %vector.scevcheck159
  %broadcast.splatinsert167 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat168 = shufflevector <8 x i64> %broadcast.splatinsert167, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert169 = insertelement <8 x i32> undef, i32 %32, i32 0
  %broadcast.splat170 = shufflevector <8 x i32> %broadcast.splatinsert169, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <8 x float> undef, float %24, i32 0
  %broadcast.splat173 = shufflevector <8 x float> %broadcast.splatinsert172, <8 x float> undef, <8 x i32> zeroinitializer
  %346 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %347 = or <8 x i32> %346, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %348 = icmp sgt <8 x i32> %broadcast.splat170, %347
  %349 = extractelement <8 x i32> %347, i32 0
  %350 = add nsw i32 %mul.i.i.6, %349
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds float, float* %16, i64 %351
  %353 = bitcast float* %352 to <8 x float>*
  %wide.masked.load171 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %353, i32 4, <8 x i1> %348, <8 x float> undef), !tbaa !12
  %354 = fmul <8 x float> %broadcast.splat173, %wide.masked.load171
  %355 = bitcast float* %352 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %354, <8 x float>* %355, i32 4, <8 x i1> %348), !tbaa !12, !llvm.access.group !16
  %356 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %357 = or <8 x i32> %356, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %358 = icmp sgt <8 x i32> %broadcast.splat170, %357
  %359 = extractelement <8 x i32> %357, i32 0
  %360 = add nsw i32 %mul.i.i.6, %359
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds float, float* %16, i64 %361
  %363 = bitcast float* %362 to <8 x float>*
  %wide.masked.load171.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %363, i32 4, <8 x i1> %358, <8 x float> undef), !tbaa !12
  %364 = fmul <8 x float> %broadcast.splat173, %wide.masked.load171.1
  %365 = bitcast float* %362 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %364, <8 x float>* %365, i32 4, <8 x i1> %358), !tbaa !12, !llvm.access.group !16
  %366 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %367 = or <8 x i32> %366, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %368 = icmp sgt <8 x i32> %broadcast.splat170, %367
  %369 = extractelement <8 x i32> %367, i32 0
  %370 = add nsw i32 %mul.i.i.6, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds float, float* %16, i64 %371
  %373 = bitcast float* %372 to <8 x float>*
  %wide.masked.load171.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %373, i32 4, <8 x i1> %368, <8 x float> undef), !tbaa !12
  %374 = fmul <8 x float> %broadcast.splat173, %wide.masked.load171.2
  %375 = bitcast float* %372 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %374, <8 x float>* %375, i32 4, <8 x i1> %368), !tbaa !12, !llvm.access.group !16
  %376 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %377 = or <8 x i32> %376, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %378 = icmp sgt <8 x i32> %broadcast.splat170, %377
  %379 = extractelement <8 x i32> %377, i32 0
  %380 = add nsw i32 %mul.i.i.6, %379
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds float, float* %16, i64 %381
  %383 = bitcast float* %382 to <8 x float>*
  %wide.masked.load171.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %383, i32 4, <8 x i1> %378, <8 x float> undef), !tbaa !12
  %384 = fmul <8 x float> %broadcast.splat173, %wide.masked.load171.3
  %385 = bitcast float* %382 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %384, <8 x float>* %385, i32 4, <8 x i1> %378), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.6:                 ; preds = %if.end.i.i.us.6.3, %pregion_for_entry.entry.i.i.us.6.preheader
  %_local_id_x.i.0.us.6 = phi i64 [ %529, %if.end.i.i.us.6.3 ], [ 0, %pregion_for_entry.entry.i.i.us.6.preheader ]
  %add1.i.i.i.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.6, %mul.i.i.i
  %conv.i.i.us.6 = trunc i64 %add1.i.i.i.us.6 to i32
  %cmp4.i.i.us.6 = icmp sgt i32 %32, %conv.i.i.us.6
  br i1 %cmp4.i.i.us.6, label %if.then.i.i.us.6, label %if.end.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %pregion_for_entry.entry.i.i.us.6
  %add.i.i.us.6 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6
  %idxprom.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.6
  %386 = load float, float* %arrayidx.i.i.us.6, align 4, !tbaa !12
  %mul6.i.i.us.6 = fmul float %24, %386
  store float %mul6.i.i.us.6, float* %arrayidx.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6

if.end.i.i.us.6:                                  ; preds = %if.then.i.i.us.6, %pregion_for_entry.entry.i.i.us.6
  %387 = or i64 %_local_id_x.i.0.us.6, 1
  %add1.i.i.i.us.6.1 = add nuw nsw i64 %387, %mul.i.i.i
  %conv.i.i.us.6.1 = trunc i64 %add1.i.i.i.us.6.1 to i32
  %cmp4.i.i.us.6.1 = icmp sgt i32 %32, %conv.i.i.us.6.1
  br i1 %cmp4.i.i.us.6.1, label %if.then.i.i.us.6.1, label %if.end.i.i.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.i.i.us.6.3
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph160, %pregion_for_end.i.i.5
  %388 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.7 = or i32 %388, 7
  %cmp.i.i.7 = icmp sgt i32 %28, %conv2.i.i.7
  %mul.i.i.7 = mul nsw i32 %32, %conv2.i.i.7
  br i1 %cmp.i.i.7, label %vector.scevcheck181, label %_pocl_kernel_gemm.exit

vector.scevcheck181:                              ; preds = %pregion_for_end.i.i.6
  %389 = mul i32 %32, %conv2.i.i.7
  %390 = trunc i64 %2 to i32
  %391 = shl i32 %390, 5
  %392 = add i32 %389, %391
  %393 = icmp sgt i32 %392, 2147483616
  br i1 %393, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.ph182

pregion_for_entry.entry.i.i.us.7.preheader:       ; preds = %vector.scevcheck181
  br label %pregion_for_entry.entry.i.i.us.7

vector.ph182:                                     ; preds = %vector.scevcheck181
  %broadcast.splatinsert189 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat190 = shufflevector <8 x i64> %broadcast.splatinsert189, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert191 = insertelement <8 x i32> undef, i32 %32, i32 0
  %broadcast.splat192 = shufflevector <8 x i32> %broadcast.splatinsert191, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <8 x float> undef, float %24, i32 0
  %broadcast.splat195 = shufflevector <8 x float> %broadcast.splatinsert194, <8 x float> undef, <8 x i32> zeroinitializer
  %394 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %395 = or <8 x i32> %394, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %396 = icmp sgt <8 x i32> %broadcast.splat192, %395
  %397 = extractelement <8 x i32> %395, i32 0
  %398 = add nsw i32 %mul.i.i.7, %397
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds float, float* %16, i64 %399
  %401 = bitcast float* %400 to <8 x float>*
  %wide.masked.load193 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %401, i32 4, <8 x i1> %396, <8 x float> undef), !tbaa !12
  %402 = fmul <8 x float> %broadcast.splat195, %wide.masked.load193
  %403 = bitcast float* %400 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %402, <8 x float>* %403, i32 4, <8 x i1> %396), !tbaa !12, !llvm.access.group !16
  %404 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %405 = or <8 x i32> %404, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %406 = icmp sgt <8 x i32> %broadcast.splat192, %405
  %407 = extractelement <8 x i32> %405, i32 0
  %408 = add nsw i32 %mul.i.i.7, %407
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds float, float* %16, i64 %409
  %411 = bitcast float* %410 to <8 x float>*
  %wide.masked.load193.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %411, i32 4, <8 x i1> %406, <8 x float> undef), !tbaa !12
  %412 = fmul <8 x float> %broadcast.splat195, %wide.masked.load193.1
  %413 = bitcast float* %410 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %412, <8 x float>* %413, i32 4, <8 x i1> %406), !tbaa !12, !llvm.access.group !16
  %414 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %415 = or <8 x i32> %414, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %416 = icmp sgt <8 x i32> %broadcast.splat192, %415
  %417 = extractelement <8 x i32> %415, i32 0
  %418 = add nsw i32 %mul.i.i.7, %417
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds float, float* %16, i64 %419
  %421 = bitcast float* %420 to <8 x float>*
  %wide.masked.load193.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %421, i32 4, <8 x i1> %416, <8 x float> undef), !tbaa !12
  %422 = fmul <8 x float> %broadcast.splat195, %wide.masked.load193.2
  %423 = bitcast float* %420 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %422, <8 x float>* %423, i32 4, <8 x i1> %416), !tbaa !12, !llvm.access.group !16
  %424 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %425 = or <8 x i32> %424, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %426 = icmp sgt <8 x i32> %broadcast.splat192, %425
  %427 = extractelement <8 x i32> %425, i32 0
  %428 = add nsw i32 %mul.i.i.7, %427
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds float, float* %16, i64 %429
  %431 = bitcast float* %430 to <8 x float>*
  %wide.masked.load193.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %431, i32 4, <8 x i1> %426, <8 x float> undef), !tbaa !12
  %432 = fmul <8 x float> %broadcast.splat195, %wide.masked.load193.3
  %433 = bitcast float* %430 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %432, <8 x float>* %433, i32 4, <8 x i1> %426), !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_gemm.exit

pregion_for_entry.entry.i.i.us.7:                 ; preds = %if.end.i.i.us.7.3, %pregion_for_entry.entry.i.i.us.7.preheader
  %_local_id_x.i.0.us.7 = phi i64 [ %523, %if.end.i.i.us.7.3 ], [ 0, %pregion_for_entry.entry.i.i.us.7.preheader ]
  %add1.i.i.i.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.7, %mul.i.i.i
  %conv.i.i.us.7 = trunc i64 %add1.i.i.i.us.7 to i32
  %cmp4.i.i.us.7 = icmp sgt i32 %32, %conv.i.i.us.7
  br i1 %cmp4.i.i.us.7, label %if.then.i.i.us.7, label %if.end.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %pregion_for_entry.entry.i.i.us.7
  %add.i.i.us.7 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7
  %idxprom.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.7
  %434 = load float, float* %arrayidx.i.i.us.7, align 4, !tbaa !12
  %mul6.i.i.us.7 = fmul float %24, %434
  store float %mul6.i.i.us.7, float* %arrayidx.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7

if.end.i.i.us.7:                                  ; preds = %if.then.i.i.us.7, %pregion_for_entry.entry.i.i.us.7
  %435 = or i64 %_local_id_x.i.0.us.7, 1
  %add1.i.i.i.us.7.1 = add nuw nsw i64 %435, %mul.i.i.i
  %conv.i.i.us.7.1 = trunc i64 %add1.i.i.i.us.7.1 to i32
  %cmp4.i.i.us.7.1 = icmp sgt i32 %32, %conv.i.i.us.7.1
  br i1 %cmp4.i.i.us.7.1, label %if.then.i.i.us.7.1, label %if.end.i.i.us.7.1

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %if.end.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1.preheader
  %_local_id_x.i.0.us.us.1 = phi i64 [ %445, %if.end.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1.preheader ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %cmp4.i.i.us.us.1 = icmp sgt i32 %32, %conv.i.i.us.us.1
  br i1 %cmp4.i.i.us.us.1, label %if.then.i.i.us.us.1, label %if.end.i.i.us.us.1

if.then.i.i.us.us.1:                              ; preds = %pregion_for_entry.entry.i.i.us.us.1
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.1
  %436 = load float, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12
  %mul6.i.i.us.us.1 = fmul float %24, %436
  store float %mul6.i.i.us.us.1, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %437 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %if.then.i.i.us.us.1
  %indvars.iv.next.i.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %if.then.i.i.us.us.1 ]
  %438 = phi float [ %444, %for.body.i.i.us.us.1 ], [ %mul6.i.i.us.us.1, %if.then.i.i.us.us.1 ]
  %439 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %87
  %arrayidx12.i.i.us.us.1 = getelementptr inbounds float, float* %8, i64 %439
  %440 = load float, float* %arrayidx12.i.i.us.us.1, align 4, !tbaa !12
  %mul13.i.i.us.us.1 = fmul float %20, %440
  %441 = mul nsw i64 %indvars.iv.next.i.i3.us.us.1, %37
  %442 = add nsw i64 %441, %437
  %arrayidx17.i.i.us.us.1 = getelementptr inbounds float, float* %12, i64 %442
  %443 = load float, float* %arrayidx17.i.i.us.us.1, align 4, !tbaa !12
  %444 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.1, float %443, float %438) #2
  store float %444, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %if.end.i.i.us.us.1.loopexit, label %for.body.i.i.us.us.1, !llvm.loop !21

if.end.i.i.us.us.1.loopexit:                      ; preds = %for.body.i.i.us.us.1
  br label %if.end.i.i.us.us.1

if.end.i.i.us.us.1:                               ; preds = %if.end.i.i.us.us.1.loopexit, %pregion_for_entry.entry.i.i.us.us.1
  %445 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 1
  %exitcond.not.1 = icmp eq i64 %445, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us.1.loopexit, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !19

pregion_for_end.i.i.us.1.loopexit:                ; preds = %if.end.i.i.us.us.1
  br label %pregion_for_end.i.i.us.1

pregion_for_end.i.i.us.1:                         ; preds = %pregion_for_end.i.i.us.1.loopexit, %pregion_for_end.i.i.us
  %446 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %446, 2
  %cmp.i.i.us.2 = icmp sgt i32 %28, %conv2.i.i.us.2
  %mul.i.i.us.2 = mul nsw i32 %32, %conv2.i.i.us.2
  %mul9.i.i.us.2 = mul nsw i32 %36, %conv2.i.i.us.2
  %447 = sext i32 %mul9.i.i.us.2 to i64
  br i1 %cmp.i.i.us.2, label %pregion_for_entry.entry.i.i.us.us.2.preheader, label %pregion_for_end.i.i.us.2

pregion_for_entry.entry.i.i.us.us.2.preheader:    ; preds = %pregion_for_end.i.i.us.1
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %if.end.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2.preheader
  %_local_id_x.i.0.us.us.2 = phi i64 [ %457, %if.end.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2.preheader ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %cmp4.i.i.us.us.2 = icmp sgt i32 %32, %conv.i.i.us.us.2
  br i1 %cmp4.i.i.us.us.2, label %if.then.i.i.us.us.2, label %if.end.i.i.us.us.2

if.then.i.i.us.us.2:                              ; preds = %pregion_for_entry.entry.i.i.us.us.2
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.2
  %448 = load float, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12
  %mul6.i.i.us.us.2 = fmul float %24, %448
  store float %mul6.i.i.us.us.2, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %449 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %if.then.i.i.us.us.2
  %indvars.iv.next.i.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %if.then.i.i.us.us.2 ]
  %450 = phi float [ %456, %for.body.i.i.us.us.2 ], [ %mul6.i.i.us.us.2, %if.then.i.i.us.us.2 ]
  %451 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %447
  %arrayidx12.i.i.us.us.2 = getelementptr inbounds float, float* %8, i64 %451
  %452 = load float, float* %arrayidx12.i.i.us.us.2, align 4, !tbaa !12
  %mul13.i.i.us.us.2 = fmul float %20, %452
  %453 = mul nsw i64 %indvars.iv.next.i.i3.us.us.2, %37
  %454 = add nsw i64 %453, %449
  %arrayidx17.i.i.us.us.2 = getelementptr inbounds float, float* %12, i64 %454
  %455 = load float, float* %arrayidx17.i.i.us.us.2, align 4, !tbaa !12
  %456 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.2, float %455, float %450) #2
  store float %456, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %if.end.i.i.us.us.2.loopexit, label %for.body.i.i.us.us.2, !llvm.loop !21

if.end.i.i.us.us.2.loopexit:                      ; preds = %for.body.i.i.us.us.2
  br label %if.end.i.i.us.us.2

if.end.i.i.us.us.2:                               ; preds = %if.end.i.i.us.us.2.loopexit, %pregion_for_entry.entry.i.i.us.us.2
  %457 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 1
  %exitcond.not.2 = icmp eq i64 %457, 32
  br i1 %exitcond.not.2, label %pregion_for_end.i.i.us.2.loopexit, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !19

pregion_for_end.i.i.us.2.loopexit:                ; preds = %if.end.i.i.us.us.2
  br label %pregion_for_end.i.i.us.2

pregion_for_end.i.i.us.2:                         ; preds = %pregion_for_end.i.i.us.2.loopexit, %pregion_for_end.i.i.us.1
  %458 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %458, 3
  %cmp.i.i.us.3 = icmp sgt i32 %28, %conv2.i.i.us.3
  %mul.i.i.us.3 = mul nsw i32 %32, %conv2.i.i.us.3
  %mul9.i.i.us.3 = mul nsw i32 %36, %conv2.i.i.us.3
  %459 = sext i32 %mul9.i.i.us.3 to i64
  br i1 %cmp.i.i.us.3, label %pregion_for_entry.entry.i.i.us.us.3.preheader, label %pregion_for_end.i.i.us.3

pregion_for_entry.entry.i.i.us.us.3.preheader:    ; preds = %pregion_for_end.i.i.us.2
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %if.end.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3.preheader
  %_local_id_x.i.0.us.us.3 = phi i64 [ %469, %if.end.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3.preheader ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %cmp4.i.i.us.us.3 = icmp sgt i32 %32, %conv.i.i.us.us.3
  br i1 %cmp4.i.i.us.us.3, label %if.then.i.i.us.us.3, label %if.end.i.i.us.us.3

if.then.i.i.us.us.3:                              ; preds = %pregion_for_entry.entry.i.i.us.us.3
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.3
  %460 = load float, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12
  %mul6.i.i.us.us.3 = fmul float %24, %460
  store float %mul6.i.i.us.us.3, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %461 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %if.then.i.i.us.us.3
  %indvars.iv.next.i.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %if.then.i.i.us.us.3 ]
  %462 = phi float [ %468, %for.body.i.i.us.us.3 ], [ %mul6.i.i.us.us.3, %if.then.i.i.us.us.3 ]
  %463 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %459
  %arrayidx12.i.i.us.us.3 = getelementptr inbounds float, float* %8, i64 %463
  %464 = load float, float* %arrayidx12.i.i.us.us.3, align 4, !tbaa !12
  %mul13.i.i.us.us.3 = fmul float %20, %464
  %465 = mul nsw i64 %indvars.iv.next.i.i3.us.us.3, %37
  %466 = add nsw i64 %465, %461
  %arrayidx17.i.i.us.us.3 = getelementptr inbounds float, float* %12, i64 %466
  %467 = load float, float* %arrayidx17.i.i.us.us.3, align 4, !tbaa !12
  %468 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.3, float %467, float %462) #2
  store float %468, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %if.end.i.i.us.us.3.loopexit, label %for.body.i.i.us.us.3, !llvm.loop !21

if.end.i.i.us.us.3.loopexit:                      ; preds = %for.body.i.i.us.us.3
  br label %if.end.i.i.us.us.3

if.end.i.i.us.us.3:                               ; preds = %if.end.i.i.us.us.3.loopexit, %pregion_for_entry.entry.i.i.us.us.3
  %469 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 1
  %exitcond.not.3 = icmp eq i64 %469, 32
  br i1 %exitcond.not.3, label %pregion_for_end.i.i.us.3.loopexit, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !19

pregion_for_end.i.i.us.3.loopexit:                ; preds = %if.end.i.i.us.us.3
  br label %pregion_for_end.i.i.us.3

pregion_for_end.i.i.us.3:                         ; preds = %pregion_for_end.i.i.us.3.loopexit, %pregion_for_end.i.i.us.2
  %470 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %470, 4
  %cmp.i.i.us.4 = icmp sgt i32 %28, %conv2.i.i.us.4
  %mul.i.i.us.4 = mul nsw i32 %32, %conv2.i.i.us.4
  %mul9.i.i.us.4 = mul nsw i32 %36, %conv2.i.i.us.4
  %471 = sext i32 %mul9.i.i.us.4 to i64
  br i1 %cmp.i.i.us.4, label %pregion_for_entry.entry.i.i.us.us.4.preheader, label %pregion_for_end.i.i.us.4

pregion_for_entry.entry.i.i.us.us.4.preheader:    ; preds = %pregion_for_end.i.i.us.3
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %if.end.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4.preheader
  %_local_id_x.i.0.us.us.4 = phi i64 [ %481, %if.end.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4.preheader ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %cmp4.i.i.us.us.4 = icmp sgt i32 %32, %conv.i.i.us.us.4
  br i1 %cmp4.i.i.us.us.4, label %if.then.i.i.us.us.4, label %if.end.i.i.us.us.4

if.then.i.i.us.us.4:                              ; preds = %pregion_for_entry.entry.i.i.us.us.4
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.4
  %472 = load float, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12
  %mul6.i.i.us.us.4 = fmul float %24, %472
  store float %mul6.i.i.us.us.4, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %473 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %if.then.i.i.us.us.4
  %indvars.iv.next.i.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %if.then.i.i.us.us.4 ]
  %474 = phi float [ %480, %for.body.i.i.us.us.4 ], [ %mul6.i.i.us.us.4, %if.then.i.i.us.us.4 ]
  %475 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %471
  %arrayidx12.i.i.us.us.4 = getelementptr inbounds float, float* %8, i64 %475
  %476 = load float, float* %arrayidx12.i.i.us.us.4, align 4, !tbaa !12
  %mul13.i.i.us.us.4 = fmul float %20, %476
  %477 = mul nsw i64 %indvars.iv.next.i.i3.us.us.4, %37
  %478 = add nsw i64 %477, %473
  %arrayidx17.i.i.us.us.4 = getelementptr inbounds float, float* %12, i64 %478
  %479 = load float, float* %arrayidx17.i.i.us.us.4, align 4, !tbaa !12
  %480 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.4, float %479, float %474) #2
  store float %480, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %if.end.i.i.us.us.4.loopexit, label %for.body.i.i.us.us.4, !llvm.loop !21

if.end.i.i.us.us.4.loopexit:                      ; preds = %for.body.i.i.us.us.4
  br label %if.end.i.i.us.us.4

if.end.i.i.us.us.4:                               ; preds = %if.end.i.i.us.us.4.loopexit, %pregion_for_entry.entry.i.i.us.us.4
  %481 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 1
  %exitcond.not.4 = icmp eq i64 %481, 32
  br i1 %exitcond.not.4, label %pregion_for_end.i.i.us.4.loopexit, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !19

pregion_for_end.i.i.us.4.loopexit:                ; preds = %if.end.i.i.us.us.4
  br label %pregion_for_end.i.i.us.4

pregion_for_end.i.i.us.4:                         ; preds = %pregion_for_end.i.i.us.4.loopexit, %pregion_for_end.i.i.us.3
  %482 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %482, 5
  %cmp.i.i.us.5 = icmp sgt i32 %28, %conv2.i.i.us.5
  %mul.i.i.us.5 = mul nsw i32 %32, %conv2.i.i.us.5
  %mul9.i.i.us.5 = mul nsw i32 %36, %conv2.i.i.us.5
  %483 = sext i32 %mul9.i.i.us.5 to i64
  br i1 %cmp.i.i.us.5, label %pregion_for_entry.entry.i.i.us.us.5.preheader, label %pregion_for_end.i.i.us.5

pregion_for_entry.entry.i.i.us.us.5.preheader:    ; preds = %pregion_for_end.i.i.us.4
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %if.end.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5.preheader
  %_local_id_x.i.0.us.us.5 = phi i64 [ %493, %if.end.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5.preheader ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %cmp4.i.i.us.us.5 = icmp sgt i32 %32, %conv.i.i.us.us.5
  br i1 %cmp4.i.i.us.us.5, label %if.then.i.i.us.us.5, label %if.end.i.i.us.us.5

if.then.i.i.us.us.5:                              ; preds = %pregion_for_entry.entry.i.i.us.us.5
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.5
  %484 = load float, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12
  %mul6.i.i.us.us.5 = fmul float %24, %484
  store float %mul6.i.i.us.us.5, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %485 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %if.then.i.i.us.us.5
  %indvars.iv.next.i.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %if.then.i.i.us.us.5 ]
  %486 = phi float [ %492, %for.body.i.i.us.us.5 ], [ %mul6.i.i.us.us.5, %if.then.i.i.us.us.5 ]
  %487 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %483
  %arrayidx12.i.i.us.us.5 = getelementptr inbounds float, float* %8, i64 %487
  %488 = load float, float* %arrayidx12.i.i.us.us.5, align 4, !tbaa !12
  %mul13.i.i.us.us.5 = fmul float %20, %488
  %489 = mul nsw i64 %indvars.iv.next.i.i3.us.us.5, %37
  %490 = add nsw i64 %489, %485
  %arrayidx17.i.i.us.us.5 = getelementptr inbounds float, float* %12, i64 %490
  %491 = load float, float* %arrayidx17.i.i.us.us.5, align 4, !tbaa !12
  %492 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.5, float %491, float %486) #2
  store float %492, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %if.end.i.i.us.us.5.loopexit, label %for.body.i.i.us.us.5, !llvm.loop !21

if.end.i.i.us.us.5.loopexit:                      ; preds = %for.body.i.i.us.us.5
  br label %if.end.i.i.us.us.5

if.end.i.i.us.us.5:                               ; preds = %if.end.i.i.us.us.5.loopexit, %pregion_for_entry.entry.i.i.us.us.5
  %493 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 1
  %exitcond.not.5 = icmp eq i64 %493, 32
  br i1 %exitcond.not.5, label %pregion_for_end.i.i.us.5.loopexit, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !19

pregion_for_end.i.i.us.5.loopexit:                ; preds = %if.end.i.i.us.us.5
  br label %pregion_for_end.i.i.us.5

pregion_for_end.i.i.us.5:                         ; preds = %pregion_for_end.i.i.us.5.loopexit, %pregion_for_end.i.i.us.4
  %494 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %494, 6
  %cmp.i.i.us.6 = icmp sgt i32 %28, %conv2.i.i.us.6
  %mul.i.i.us.6 = mul nsw i32 %32, %conv2.i.i.us.6
  %mul9.i.i.us.6 = mul nsw i32 %36, %conv2.i.i.us.6
  %495 = sext i32 %mul9.i.i.us.6 to i64
  br i1 %cmp.i.i.us.6, label %pregion_for_entry.entry.i.i.us.us.6.preheader, label %pregion_for_end.i.i.us.6

pregion_for_entry.entry.i.i.us.us.6.preheader:    ; preds = %pregion_for_end.i.i.us.5
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %if.end.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6.preheader
  %_local_id_x.i.0.us.us.6 = phi i64 [ %505, %if.end.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6.preheader ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %cmp4.i.i.us.us.6 = icmp sgt i32 %32, %conv.i.i.us.us.6
  br i1 %cmp4.i.i.us.us.6, label %if.then.i.i.us.us.6, label %if.end.i.i.us.us.6

if.then.i.i.us.us.6:                              ; preds = %pregion_for_entry.entry.i.i.us.us.6
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.6
  %496 = load float, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12
  %mul6.i.i.us.us.6 = fmul float %24, %496
  store float %mul6.i.i.us.us.6, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %497 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %if.then.i.i.us.us.6
  %indvars.iv.next.i.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %if.then.i.i.us.us.6 ]
  %498 = phi float [ %504, %for.body.i.i.us.us.6 ], [ %mul6.i.i.us.us.6, %if.then.i.i.us.us.6 ]
  %499 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %495
  %arrayidx12.i.i.us.us.6 = getelementptr inbounds float, float* %8, i64 %499
  %500 = load float, float* %arrayidx12.i.i.us.us.6, align 4, !tbaa !12
  %mul13.i.i.us.us.6 = fmul float %20, %500
  %501 = mul nsw i64 %indvars.iv.next.i.i3.us.us.6, %37
  %502 = add nsw i64 %501, %497
  %arrayidx17.i.i.us.us.6 = getelementptr inbounds float, float* %12, i64 %502
  %503 = load float, float* %arrayidx17.i.i.us.us.6, align 4, !tbaa !12
  %504 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.6, float %503, float %498) #2
  store float %504, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %if.end.i.i.us.us.6.loopexit, label %for.body.i.i.us.us.6, !llvm.loop !21

if.end.i.i.us.us.6.loopexit:                      ; preds = %for.body.i.i.us.us.6
  br label %if.end.i.i.us.us.6

if.end.i.i.us.us.6:                               ; preds = %if.end.i.i.us.us.6.loopexit, %pregion_for_entry.entry.i.i.us.us.6
  %505 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 1
  %exitcond.not.6 = icmp eq i64 %505, 32
  br i1 %exitcond.not.6, label %pregion_for_end.i.i.us.6.loopexit, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !19

pregion_for_end.i.i.us.6.loopexit:                ; preds = %if.end.i.i.us.us.6
  br label %pregion_for_end.i.i.us.6

pregion_for_end.i.i.us.6:                         ; preds = %pregion_for_end.i.i.us.6.loopexit, %pregion_for_end.i.i.us.5
  %506 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %506, 7
  %cmp.i.i.us.7 = icmp sgt i32 %28, %conv2.i.i.us.7
  %mul.i.i.us.7 = mul nsw i32 %32, %conv2.i.i.us.7
  %mul9.i.i.us.7 = mul nsw i32 %36, %conv2.i.i.us.7
  %507 = sext i32 %mul9.i.i.us.7 to i64
  br i1 %cmp.i.i.us.7, label %pregion_for_entry.entry.i.i.us.us.7.preheader, label %_pocl_kernel_gemm.exit

pregion_for_entry.entry.i.i.us.us.7.preheader:    ; preds = %pregion_for_end.i.i.us.6
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %if.end.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7.preheader
  %_local_id_x.i.0.us.us.7 = phi i64 [ %517, %if.end.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7.preheader ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %cmp4.i.i.us.us.7 = icmp sgt i32 %32, %conv.i.i.us.us.7
  br i1 %cmp4.i.i.us.us.7, label %if.then.i.i.us.us.7, label %if.end.i.i.us.us.7

if.then.i.i.us.us.7:                              ; preds = %pregion_for_entry.entry.i.i.us.us.7
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.7
  %508 = load float, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12
  %mul6.i.i.us.us.7 = fmul float %24, %508
  store float %mul6.i.i.us.us.7, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %509 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %if.then.i.i.us.us.7
  %indvars.iv.next.i.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %if.then.i.i.us.us.7 ]
  %510 = phi float [ %516, %for.body.i.i.us.us.7 ], [ %mul6.i.i.us.us.7, %if.then.i.i.us.us.7 ]
  %511 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %507
  %arrayidx12.i.i.us.us.7 = getelementptr inbounds float, float* %8, i64 %511
  %512 = load float, float* %arrayidx12.i.i.us.us.7, align 4, !tbaa !12
  %mul13.i.i.us.us.7 = fmul float %20, %512
  %513 = mul nsw i64 %indvars.iv.next.i.i3.us.us.7, %37
  %514 = add nsw i64 %513, %509
  %arrayidx17.i.i.us.us.7 = getelementptr inbounds float, float* %12, i64 %514
  %515 = load float, float* %arrayidx17.i.i.us.us.7, align 4, !tbaa !12
  %516 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.7, float %515, float %510) #2
  store float %516, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %if.end.i.i.us.us.7.loopexit, label %for.body.i.i.us.us.7, !llvm.loop !21

if.end.i.i.us.us.7.loopexit:                      ; preds = %for.body.i.i.us.us.7
  br label %if.end.i.i.us.us.7

if.end.i.i.us.us.7:                               ; preds = %if.end.i.i.us.us.7.loopexit, %pregion_for_entry.entry.i.i.us.us.7
  %517 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 1
  %exitcond.not.7 = icmp eq i64 %517, 32
  br i1 %exitcond.not.7, label %_pocl_kernel_gemm.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !19

if.then.i.i.us.7.1:                               ; preds = %if.end.i.i.us.7
  %add.i.i.us.7.1 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.1
  %idxprom.i.i.us.7.1 = sext i32 %add.i.i.us.7.1 to i64
  %arrayidx.i.i.us.7.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.7.1
  %518 = load float, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12
  %mul6.i.i.us.7.1 = fmul float %24, %518
  store float %mul6.i.i.us.7.1, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.1

if.end.i.i.us.7.1:                                ; preds = %if.then.i.i.us.7.1, %if.end.i.i.us.7
  %519 = or i64 %_local_id_x.i.0.us.7, 2
  %add1.i.i.i.us.7.2 = add nuw nsw i64 %519, %mul.i.i.i
  %conv.i.i.us.7.2 = trunc i64 %add1.i.i.i.us.7.2 to i32
  %cmp4.i.i.us.7.2 = icmp sgt i32 %32, %conv.i.i.us.7.2
  br i1 %cmp4.i.i.us.7.2, label %if.then.i.i.us.7.2, label %if.end.i.i.us.7.2

if.then.i.i.us.7.2:                               ; preds = %if.end.i.i.us.7.1
  %add.i.i.us.7.2 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.2
  %idxprom.i.i.us.7.2 = sext i32 %add.i.i.us.7.2 to i64
  %arrayidx.i.i.us.7.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.7.2
  %520 = load float, float* %arrayidx.i.i.us.7.2, align 4, !tbaa !12
  %mul6.i.i.us.7.2 = fmul float %24, %520
  store float %mul6.i.i.us.7.2, float* %arrayidx.i.i.us.7.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.2

if.end.i.i.us.7.2:                                ; preds = %if.then.i.i.us.7.2, %if.end.i.i.us.7.1
  %521 = or i64 %_local_id_x.i.0.us.7, 3
  %add1.i.i.i.us.7.3 = add nuw nsw i64 %521, %mul.i.i.i
  %conv.i.i.us.7.3 = trunc i64 %add1.i.i.i.us.7.3 to i32
  %cmp4.i.i.us.7.3 = icmp sgt i32 %32, %conv.i.i.us.7.3
  br i1 %cmp4.i.i.us.7.3, label %if.then.i.i.us.7.3, label %if.end.i.i.us.7.3

if.then.i.i.us.7.3:                               ; preds = %if.end.i.i.us.7.2
  %add.i.i.us.7.3 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.3
  %idxprom.i.i.us.7.3 = sext i32 %add.i.i.us.7.3 to i64
  %arrayidx.i.i.us.7.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.7.3
  %522 = load float, float* %arrayidx.i.i.us.7.3, align 4, !tbaa !12
  %mul6.i.i.us.7.3 = fmul float %24, %522
  store float %mul6.i.i.us.7.3, float* %arrayidx.i.i.us.7.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.3

if.end.i.i.us.7.3:                                ; preds = %if.then.i.i.us.7.3, %if.end.i.i.us.7.2
  %523 = add nuw nsw i64 %_local_id_x.i.0.us.7, 4
  %exitcond34.7.not.3 = icmp eq i64 %523, 32
  br i1 %exitcond34.7.not.3, label %_pocl_kernel_gemm.exit.loopexit238, label %pregion_for_entry.entry.i.i.us.7, !llvm.loop !32

if.then.i.i.us.6.1:                               ; preds = %if.end.i.i.us.6
  %add.i.i.us.6.1 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.1
  %idxprom.i.i.us.6.1 = sext i32 %add.i.i.us.6.1 to i64
  %arrayidx.i.i.us.6.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.6.1
  %524 = load float, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12
  %mul6.i.i.us.6.1 = fmul float %24, %524
  store float %mul6.i.i.us.6.1, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.1

if.end.i.i.us.6.1:                                ; preds = %if.then.i.i.us.6.1, %if.end.i.i.us.6
  %525 = or i64 %_local_id_x.i.0.us.6, 2
  %add1.i.i.i.us.6.2 = add nuw nsw i64 %525, %mul.i.i.i
  %conv.i.i.us.6.2 = trunc i64 %add1.i.i.i.us.6.2 to i32
  %cmp4.i.i.us.6.2 = icmp sgt i32 %32, %conv.i.i.us.6.2
  br i1 %cmp4.i.i.us.6.2, label %if.then.i.i.us.6.2, label %if.end.i.i.us.6.2

if.then.i.i.us.6.2:                               ; preds = %if.end.i.i.us.6.1
  %add.i.i.us.6.2 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.2
  %idxprom.i.i.us.6.2 = sext i32 %add.i.i.us.6.2 to i64
  %arrayidx.i.i.us.6.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.6.2
  %526 = load float, float* %arrayidx.i.i.us.6.2, align 4, !tbaa !12
  %mul6.i.i.us.6.2 = fmul float %24, %526
  store float %mul6.i.i.us.6.2, float* %arrayidx.i.i.us.6.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.2

if.end.i.i.us.6.2:                                ; preds = %if.then.i.i.us.6.2, %if.end.i.i.us.6.1
  %527 = or i64 %_local_id_x.i.0.us.6, 3
  %add1.i.i.i.us.6.3 = add nuw nsw i64 %527, %mul.i.i.i
  %conv.i.i.us.6.3 = trunc i64 %add1.i.i.i.us.6.3 to i32
  %cmp4.i.i.us.6.3 = icmp sgt i32 %32, %conv.i.i.us.6.3
  br i1 %cmp4.i.i.us.6.3, label %if.then.i.i.us.6.3, label %if.end.i.i.us.6.3

if.then.i.i.us.6.3:                               ; preds = %if.end.i.i.us.6.2
  %add.i.i.us.6.3 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.3
  %idxprom.i.i.us.6.3 = sext i32 %add.i.i.us.6.3 to i64
  %arrayidx.i.i.us.6.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.6.3
  %528 = load float, float* %arrayidx.i.i.us.6.3, align 4, !tbaa !12
  %mul6.i.i.us.6.3 = fmul float %24, %528
  store float %mul6.i.i.us.6.3, float* %arrayidx.i.i.us.6.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.3

if.end.i.i.us.6.3:                                ; preds = %if.then.i.i.us.6.3, %if.end.i.i.us.6.2
  %529 = add nuw nsw i64 %_local_id_x.i.0.us.6, 4
  %exitcond34.6.not.3 = icmp eq i64 %529, 32
  br i1 %exitcond34.6.not.3, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.6, !llvm.loop !33

if.then.i.i.us.5.1:                               ; preds = %if.end.i.i.us.5
  %add.i.i.us.5.1 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.1
  %idxprom.i.i.us.5.1 = sext i32 %add.i.i.us.5.1 to i64
  %arrayidx.i.i.us.5.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.5.1
  %530 = load float, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12
  %mul6.i.i.us.5.1 = fmul float %24, %530
  store float %mul6.i.i.us.5.1, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.1

if.end.i.i.us.5.1:                                ; preds = %if.then.i.i.us.5.1, %if.end.i.i.us.5
  %531 = or i64 %_local_id_x.i.0.us.5, 2
  %add1.i.i.i.us.5.2 = add nuw nsw i64 %531, %mul.i.i.i
  %conv.i.i.us.5.2 = trunc i64 %add1.i.i.i.us.5.2 to i32
  %cmp4.i.i.us.5.2 = icmp sgt i32 %32, %conv.i.i.us.5.2
  br i1 %cmp4.i.i.us.5.2, label %if.then.i.i.us.5.2, label %if.end.i.i.us.5.2

if.then.i.i.us.5.2:                               ; preds = %if.end.i.i.us.5.1
  %add.i.i.us.5.2 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.2
  %idxprom.i.i.us.5.2 = sext i32 %add.i.i.us.5.2 to i64
  %arrayidx.i.i.us.5.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.5.2
  %532 = load float, float* %arrayidx.i.i.us.5.2, align 4, !tbaa !12
  %mul6.i.i.us.5.2 = fmul float %24, %532
  store float %mul6.i.i.us.5.2, float* %arrayidx.i.i.us.5.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.2

if.end.i.i.us.5.2:                                ; preds = %if.then.i.i.us.5.2, %if.end.i.i.us.5.1
  %533 = or i64 %_local_id_x.i.0.us.5, 3
  %add1.i.i.i.us.5.3 = add nuw nsw i64 %533, %mul.i.i.i
  %conv.i.i.us.5.3 = trunc i64 %add1.i.i.i.us.5.3 to i32
  %cmp4.i.i.us.5.3 = icmp sgt i32 %32, %conv.i.i.us.5.3
  br i1 %cmp4.i.i.us.5.3, label %if.then.i.i.us.5.3, label %if.end.i.i.us.5.3

if.then.i.i.us.5.3:                               ; preds = %if.end.i.i.us.5.2
  %add.i.i.us.5.3 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.3
  %idxprom.i.i.us.5.3 = sext i32 %add.i.i.us.5.3 to i64
  %arrayidx.i.i.us.5.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.5.3
  %534 = load float, float* %arrayidx.i.i.us.5.3, align 4, !tbaa !12
  %mul6.i.i.us.5.3 = fmul float %24, %534
  store float %mul6.i.i.us.5.3, float* %arrayidx.i.i.us.5.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.3

if.end.i.i.us.5.3:                                ; preds = %if.then.i.i.us.5.3, %if.end.i.i.us.5.2
  %535 = add nuw nsw i64 %_local_id_x.i.0.us.5, 4
  %exitcond34.5.not.3 = icmp eq i64 %535, 32
  br i1 %exitcond34.5.not.3, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.5, !llvm.loop !34

if.then.i.i.us.4.1:                               ; preds = %if.end.i.i.us.4
  %add.i.i.us.4.1 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.1
  %idxprom.i.i.us.4.1 = sext i32 %add.i.i.us.4.1 to i64
  %arrayidx.i.i.us.4.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.4.1
  %536 = load float, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12
  %mul6.i.i.us.4.1 = fmul float %24, %536
  store float %mul6.i.i.us.4.1, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.1

if.end.i.i.us.4.1:                                ; preds = %if.then.i.i.us.4.1, %if.end.i.i.us.4
  %537 = or i64 %_local_id_x.i.0.us.4, 2
  %add1.i.i.i.us.4.2 = add nuw nsw i64 %537, %mul.i.i.i
  %conv.i.i.us.4.2 = trunc i64 %add1.i.i.i.us.4.2 to i32
  %cmp4.i.i.us.4.2 = icmp sgt i32 %32, %conv.i.i.us.4.2
  br i1 %cmp4.i.i.us.4.2, label %if.then.i.i.us.4.2, label %if.end.i.i.us.4.2

if.then.i.i.us.4.2:                               ; preds = %if.end.i.i.us.4.1
  %add.i.i.us.4.2 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.2
  %idxprom.i.i.us.4.2 = sext i32 %add.i.i.us.4.2 to i64
  %arrayidx.i.i.us.4.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.4.2
  %538 = load float, float* %arrayidx.i.i.us.4.2, align 4, !tbaa !12
  %mul6.i.i.us.4.2 = fmul float %24, %538
  store float %mul6.i.i.us.4.2, float* %arrayidx.i.i.us.4.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.2

if.end.i.i.us.4.2:                                ; preds = %if.then.i.i.us.4.2, %if.end.i.i.us.4.1
  %539 = or i64 %_local_id_x.i.0.us.4, 3
  %add1.i.i.i.us.4.3 = add nuw nsw i64 %539, %mul.i.i.i
  %conv.i.i.us.4.3 = trunc i64 %add1.i.i.i.us.4.3 to i32
  %cmp4.i.i.us.4.3 = icmp sgt i32 %32, %conv.i.i.us.4.3
  br i1 %cmp4.i.i.us.4.3, label %if.then.i.i.us.4.3, label %if.end.i.i.us.4.3

if.then.i.i.us.4.3:                               ; preds = %if.end.i.i.us.4.2
  %add.i.i.us.4.3 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.3
  %idxprom.i.i.us.4.3 = sext i32 %add.i.i.us.4.3 to i64
  %arrayidx.i.i.us.4.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.4.3
  %540 = load float, float* %arrayidx.i.i.us.4.3, align 4, !tbaa !12
  %mul6.i.i.us.4.3 = fmul float %24, %540
  store float %mul6.i.i.us.4.3, float* %arrayidx.i.i.us.4.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.3

if.end.i.i.us.4.3:                                ; preds = %if.then.i.i.us.4.3, %if.end.i.i.us.4.2
  %541 = add nuw nsw i64 %_local_id_x.i.0.us.4, 4
  %exitcond34.4.not.3 = icmp eq i64 %541, 32
  br i1 %exitcond34.4.not.3, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.4, !llvm.loop !35

if.then.i.i.us.3.1:                               ; preds = %if.end.i.i.us.3
  %add.i.i.us.3.1 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.1
  %idxprom.i.i.us.3.1 = sext i32 %add.i.i.us.3.1 to i64
  %arrayidx.i.i.us.3.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.3.1
  %542 = load float, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12
  %mul6.i.i.us.3.1 = fmul float %24, %542
  store float %mul6.i.i.us.3.1, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.1

if.end.i.i.us.3.1:                                ; preds = %if.then.i.i.us.3.1, %if.end.i.i.us.3
  %543 = or i64 %_local_id_x.i.0.us.3, 2
  %add1.i.i.i.us.3.2 = add nuw nsw i64 %543, %mul.i.i.i
  %conv.i.i.us.3.2 = trunc i64 %add1.i.i.i.us.3.2 to i32
  %cmp4.i.i.us.3.2 = icmp sgt i32 %32, %conv.i.i.us.3.2
  br i1 %cmp4.i.i.us.3.2, label %if.then.i.i.us.3.2, label %if.end.i.i.us.3.2

if.then.i.i.us.3.2:                               ; preds = %if.end.i.i.us.3.1
  %add.i.i.us.3.2 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.2
  %idxprom.i.i.us.3.2 = sext i32 %add.i.i.us.3.2 to i64
  %arrayidx.i.i.us.3.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.3.2
  %544 = load float, float* %arrayidx.i.i.us.3.2, align 4, !tbaa !12
  %mul6.i.i.us.3.2 = fmul float %24, %544
  store float %mul6.i.i.us.3.2, float* %arrayidx.i.i.us.3.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.2

if.end.i.i.us.3.2:                                ; preds = %if.then.i.i.us.3.2, %if.end.i.i.us.3.1
  %545 = or i64 %_local_id_x.i.0.us.3, 3
  %add1.i.i.i.us.3.3 = add nuw nsw i64 %545, %mul.i.i.i
  %conv.i.i.us.3.3 = trunc i64 %add1.i.i.i.us.3.3 to i32
  %cmp4.i.i.us.3.3 = icmp sgt i32 %32, %conv.i.i.us.3.3
  br i1 %cmp4.i.i.us.3.3, label %if.then.i.i.us.3.3, label %if.end.i.i.us.3.3

if.then.i.i.us.3.3:                               ; preds = %if.end.i.i.us.3.2
  %add.i.i.us.3.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.3
  %idxprom.i.i.us.3.3 = sext i32 %add.i.i.us.3.3 to i64
  %arrayidx.i.i.us.3.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.3.3
  %546 = load float, float* %arrayidx.i.i.us.3.3, align 4, !tbaa !12
  %mul6.i.i.us.3.3 = fmul float %24, %546
  store float %mul6.i.i.us.3.3, float* %arrayidx.i.i.us.3.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.3

if.end.i.i.us.3.3:                                ; preds = %if.then.i.i.us.3.3, %if.end.i.i.us.3.2
  %547 = add nuw nsw i64 %_local_id_x.i.0.us.3, 4
  %exitcond34.3.not.3 = icmp eq i64 %547, 32
  br i1 %exitcond34.3.not.3, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.3, !llvm.loop !36

if.then.i.i.us.2.1:                               ; preds = %if.end.i.i.us.2
  %add.i.i.us.2.1 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.1
  %idxprom.i.i.us.2.1 = sext i32 %add.i.i.us.2.1 to i64
  %arrayidx.i.i.us.2.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.2.1
  %548 = load float, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12
  %mul6.i.i.us.2.1 = fmul float %24, %548
  store float %mul6.i.i.us.2.1, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.1

if.end.i.i.us.2.1:                                ; preds = %if.then.i.i.us.2.1, %if.end.i.i.us.2
  %549 = or i64 %_local_id_x.i.0.us.2, 2
  %add1.i.i.i.us.2.2 = add nuw nsw i64 %549, %mul.i.i.i
  %conv.i.i.us.2.2 = trunc i64 %add1.i.i.i.us.2.2 to i32
  %cmp4.i.i.us.2.2 = icmp sgt i32 %32, %conv.i.i.us.2.2
  br i1 %cmp4.i.i.us.2.2, label %if.then.i.i.us.2.2, label %if.end.i.i.us.2.2

if.then.i.i.us.2.2:                               ; preds = %if.end.i.i.us.2.1
  %add.i.i.us.2.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.2
  %idxprom.i.i.us.2.2 = sext i32 %add.i.i.us.2.2 to i64
  %arrayidx.i.i.us.2.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.2.2
  %550 = load float, float* %arrayidx.i.i.us.2.2, align 4, !tbaa !12
  %mul6.i.i.us.2.2 = fmul float %24, %550
  store float %mul6.i.i.us.2.2, float* %arrayidx.i.i.us.2.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.2

if.end.i.i.us.2.2:                                ; preds = %if.then.i.i.us.2.2, %if.end.i.i.us.2.1
  %551 = or i64 %_local_id_x.i.0.us.2, 3
  %add1.i.i.i.us.2.3 = add nuw nsw i64 %551, %mul.i.i.i
  %conv.i.i.us.2.3 = trunc i64 %add1.i.i.i.us.2.3 to i32
  %cmp4.i.i.us.2.3 = icmp sgt i32 %32, %conv.i.i.us.2.3
  br i1 %cmp4.i.i.us.2.3, label %if.then.i.i.us.2.3, label %if.end.i.i.us.2.3

if.then.i.i.us.2.3:                               ; preds = %if.end.i.i.us.2.2
  %add.i.i.us.2.3 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.3
  %idxprom.i.i.us.2.3 = sext i32 %add.i.i.us.2.3 to i64
  %arrayidx.i.i.us.2.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.2.3
  %552 = load float, float* %arrayidx.i.i.us.2.3, align 4, !tbaa !12
  %mul6.i.i.us.2.3 = fmul float %24, %552
  store float %mul6.i.i.us.2.3, float* %arrayidx.i.i.us.2.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.3

if.end.i.i.us.2.3:                                ; preds = %if.then.i.i.us.2.3, %if.end.i.i.us.2.2
  %553 = add nuw nsw i64 %_local_id_x.i.0.us.2, 4
  %exitcond34.2.not.3 = icmp eq i64 %553, 32
  br i1 %exitcond34.2.not.3, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.2, !llvm.loop !37

if.then.i.i.us.1.1:                               ; preds = %if.end.i.i.us.1
  %add.i.i.us.1.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.1
  %idxprom.i.i.us.1.1 = sext i32 %add.i.i.us.1.1 to i64
  %arrayidx.i.i.us.1.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.1.1
  %554 = load float, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12
  %mul6.i.i.us.1.1 = fmul float %24, %554
  store float %mul6.i.i.us.1.1, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.1

if.end.i.i.us.1.1:                                ; preds = %if.then.i.i.us.1.1, %if.end.i.i.us.1
  %555 = or i64 %_local_id_x.i.0.us.1, 2
  %add1.i.i.i.us.1.2 = add nuw nsw i64 %555, %mul.i.i.i
  %conv.i.i.us.1.2 = trunc i64 %add1.i.i.i.us.1.2 to i32
  %cmp4.i.i.us.1.2 = icmp sgt i32 %32, %conv.i.i.us.1.2
  br i1 %cmp4.i.i.us.1.2, label %if.then.i.i.us.1.2, label %if.end.i.i.us.1.2

if.then.i.i.us.1.2:                               ; preds = %if.end.i.i.us.1.1
  %add.i.i.us.1.2 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.2
  %idxprom.i.i.us.1.2 = sext i32 %add.i.i.us.1.2 to i64
  %arrayidx.i.i.us.1.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.1.2
  %556 = load float, float* %arrayidx.i.i.us.1.2, align 4, !tbaa !12
  %mul6.i.i.us.1.2 = fmul float %24, %556
  store float %mul6.i.i.us.1.2, float* %arrayidx.i.i.us.1.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.2

if.end.i.i.us.1.2:                                ; preds = %if.then.i.i.us.1.2, %if.end.i.i.us.1.1
  %557 = or i64 %_local_id_x.i.0.us.1, 3
  %add1.i.i.i.us.1.3 = add nuw nsw i64 %557, %mul.i.i.i
  %conv.i.i.us.1.3 = trunc i64 %add1.i.i.i.us.1.3 to i32
  %cmp4.i.i.us.1.3 = icmp sgt i32 %32, %conv.i.i.us.1.3
  br i1 %cmp4.i.i.us.1.3, label %if.then.i.i.us.1.3, label %if.end.i.i.us.1.3

if.then.i.i.us.1.3:                               ; preds = %if.end.i.i.us.1.2
  %add.i.i.us.1.3 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.3
  %idxprom.i.i.us.1.3 = sext i32 %add.i.i.us.1.3 to i64
  %arrayidx.i.i.us.1.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.1.3
  %558 = load float, float* %arrayidx.i.i.us.1.3, align 4, !tbaa !12
  %mul6.i.i.us.1.3 = fmul float %24, %558
  store float %mul6.i.i.us.1.3, float* %arrayidx.i.i.us.1.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.3

if.end.i.i.us.1.3:                                ; preds = %if.then.i.i.us.1.3, %if.end.i.i.us.1.2
  %559 = add nuw nsw i64 %_local_id_x.i.0.us.1, 4
  %exitcond34.1.not.3 = icmp eq i64 %559, 32
  br i1 %exitcond34.1.not.3, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.1, !llvm.loop !38

if.then.i.i.us.1214:                              ; preds = %if.end.i.i.us
  %add.i.i.us.1210 = add nsw i32 %mul.i.i.us, %conv.i.i.us.1207
  %idxprom.i.i.us.1211 = sext i32 %add.i.i.us.1210 to i64
  %arrayidx.i.i.us.1212 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.1211
  %560 = load float, float* %arrayidx.i.i.us.1212, align 4, !tbaa !12
  %mul6.i.i.us.1213 = fmul float %24, %560
  store float %mul6.i.i.us.1213, float* %arrayidx.i.i.us.1212, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1215

if.end.i.i.us.1215:                               ; preds = %if.then.i.i.us.1214, %if.end.i.i.us
  %561 = or i64 %_local_id_x.i.0.us, 2
  %add1.i.i.i.us.2217 = add nuw nsw i64 %561, %mul.i.i.i
  %conv.i.i.us.2218 = trunc i64 %add1.i.i.i.us.2217 to i32
  %cmp4.i.i.us.2219 = icmp sgt i32 %32, %conv.i.i.us.2218
  br i1 %cmp4.i.i.us.2219, label %if.then.i.i.us.2225, label %if.end.i.i.us.2226

if.then.i.i.us.2225:                              ; preds = %if.end.i.i.us.1215
  %add.i.i.us.2221 = add nsw i32 %mul.i.i.us, %conv.i.i.us.2218
  %idxprom.i.i.us.2222 = sext i32 %add.i.i.us.2221 to i64
  %arrayidx.i.i.us.2223 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.2222
  %562 = load float, float* %arrayidx.i.i.us.2223, align 4, !tbaa !12
  %mul6.i.i.us.2224 = fmul float %24, %562
  store float %mul6.i.i.us.2224, float* %arrayidx.i.i.us.2223, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2226

if.end.i.i.us.2226:                               ; preds = %if.then.i.i.us.2225, %if.end.i.i.us.1215
  %563 = or i64 %_local_id_x.i.0.us, 3
  %add1.i.i.i.us.3228 = add nuw nsw i64 %563, %mul.i.i.i
  %conv.i.i.us.3229 = trunc i64 %add1.i.i.i.us.3228 to i32
  %cmp4.i.i.us.3230 = icmp sgt i32 %32, %conv.i.i.us.3229
  br i1 %cmp4.i.i.us.3230, label %if.then.i.i.us.3236, label %if.end.i.i.us.3237

if.then.i.i.us.3236:                              ; preds = %if.end.i.i.us.2226
  %add.i.i.us.3232 = add nsw i32 %mul.i.i.us, %conv.i.i.us.3229
  %idxprom.i.i.us.3233 = sext i32 %add.i.i.us.3232 to i64
  %arrayidx.i.i.us.3234 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.3233
  %564 = load float, float* %arrayidx.i.i.us.3234, align 4, !tbaa !12
  %mul6.i.i.us.3235 = fmul float %24, %564
  store float %mul6.i.i.us.3235, float* %arrayidx.i.i.us.3234, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3237

if.end.i.i.us.3237:                               ; preds = %if.then.i.i.us.3236, %if.end.i.i.us.2226
  %565 = add nuw nsw i64 %_local_id_x.i.0.us, 4
  %exitcond34.not.3 = icmp eq i64 %565, 32
  br i1 %exitcond34.not.3, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !39
}

; Function Attrs: nounwind
define void @_pocl_kernel_gemm_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %30 = getelementptr i8*, i8** %0, i64 7
  %31 = bitcast i8** %30 to i32**
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp740.i.i = icmp sgt i32 %33, 0
  %34 = sext i32 %29 to i64
  %wide.trip.count.i.i = zext i32 %33 to i64
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i.us = icmp sgt i32 %25, %conv2.i.i.us
  %mul.i.i.us = mul nsw i32 %29, %conv2.i.i.us
  br i1 %cmp740.i.i, label %pregion_for_entry.pregion_for_init.i.i.us, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  br i1 %cmp.i.i.us, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %35 = trunc i64 %3 to i32
  %36 = mul i32 %29, %35
  %37 = shl i32 %36, 3
  %38 = trunc i64 %2 to i32
  %39 = shl i32 %38, 5
  %40 = add i32 %37, %39
  %41 = icmp sgt i32 %40, 2147483616
  br i1 %41, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.ph:                                        ; preds = %vector.scevcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert38 = insertelement <8 x i32> undef, i32 %29, i32 0
  %broadcast.splat39 = shufflevector <8 x i32> %broadcast.splatinsert38, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert40 = insertelement <8 x float> undef, float %21, i32 0
  %broadcast.splat41 = shufflevector <8 x float> %broadcast.splatinsert40, <8 x float> undef, <8 x i32> zeroinitializer
  %42 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %43 = or <8 x i32> %42, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %44 = icmp sgt <8 x i32> %broadcast.splat39, %43
  %45 = extractelement <8 x i32> %43, i32 0
  %46 = add nsw i32 %mul.i.i.us, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %13, i64 %47
  %49 = bitcast float* %48 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %49, i32 4, <8 x i1> %44, <8 x float> undef), !tbaa !12
  %50 = fmul <8 x float> %broadcast.splat41, %wide.masked.load
  %51 = bitcast float* %48 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %50, <8 x float>* %51, i32 4, <8 x i1> %44), !tbaa !12, !llvm.access.group !16
  %52 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %53 = or <8 x i32> %52, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %54 = icmp sgt <8 x i32> %broadcast.splat39, %53
  %55 = extractelement <8 x i32> %53, i32 0
  %56 = add nsw i32 %mul.i.i.us, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %13, i64 %57
  %59 = bitcast float* %58 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %59, i32 4, <8 x i1> %54, <8 x float> undef), !tbaa !12
  %60 = fmul <8 x float> %broadcast.splat41, %wide.masked.load.1
  %61 = bitcast float* %58 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %60, <8 x float>* %61, i32 4, <8 x i1> %54), !tbaa !12, !llvm.access.group !16
  %62 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %63 = or <8 x i32> %62, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %64 = icmp sgt <8 x i32> %broadcast.splat39, %63
  %65 = extractelement <8 x i32> %63, i32 0
  %66 = add nsw i32 %mul.i.i.us, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %13, i64 %67
  %69 = bitcast float* %68 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %69, i32 4, <8 x i1> %64, <8 x float> undef), !tbaa !12
  %70 = fmul <8 x float> %broadcast.splat41, %wide.masked.load.2
  %71 = bitcast float* %68 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %70, <8 x float>* %71, i32 4, <8 x i1> %64), !tbaa !12, !llvm.access.group !16
  %72 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %73 = or <8 x i32> %72, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %74 = icmp sgt <8 x i32> %broadcast.splat39, %73
  %75 = extractelement <8 x i32> %73, i32 0
  %76 = add nsw i32 %mul.i.i.us, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %13, i64 %77
  %79 = bitcast float* %78 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %79, i32 4, <8 x i1> %74, <8 x float> undef), !tbaa !12
  %80 = fmul <8 x float> %broadcast.splat41, %wide.masked.load.3
  %81 = bitcast float* %78 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %80, <8 x float>* %81, i32 4, <8 x i1> %74), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

pregion_for_entry.pregion_for_init.i.i.us:        ; preds = %5
  %mul9.i.i.us = mul nsw i32 %33, %conv2.i.i.us
  %82 = sext i32 %mul9.i.i.us to i64
  br i1 %cmp.i.i.us, label %pregion_for_entry.entry.i.i.us.us.preheader, label %pregion_for_end.i.i.us

pregion_for_entry.entry.i.i.us.us.preheader:      ; preds = %pregion_for_entry.pregion_for_init.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_end.i.i.us.loopexit:                  ; preds = %if.end.i.i.us.us
  br label %pregion_for_end.i.i.us

pregion_for_end.i.i.us:                           ; preds = %pregion_for_end.i.i.us.loopexit, %pregion_for_entry.pregion_for_init.i.i.us
  %83 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %83, 1
  %cmp.i.i.us.1 = icmp sgt i32 %25, %conv2.i.i.us.1
  %mul.i.i.us.1 = mul nsw i32 %29, %conv2.i.i.us.1
  %mul9.i.i.us.1 = mul nsw i32 %33, %conv2.i.i.us.1
  %84 = sext i32 %mul9.i.i.us.1 to i64
  br i1 %cmp.i.i.us.1, label %pregion_for_entry.entry.i.i.us.us.1.preheader, label %pregion_for_end.i.i.us.1

pregion_for_entry.entry.i.i.us.us.1.preheader:    ; preds = %pregion_for_end.i.i.us
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.entry.i.i.us.us:                ; preds = %if.end.i.i.us.us, %pregion_for_entry.entry.i.i.us.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ %87, %if.end.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us.preheader ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %cmp4.i.i.us.us = icmp sgt i32 %29, %conv.i.i.us.us
  br i1 %cmp4.i.i.us.us, label %if.then.i.i.us.us, label %if.end.i.i.us.us

if.then.i.i.us.us:                                ; preds = %pregion_for_entry.entry.i.i.us.us
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us
  %85 = load float, float* %arrayidx.i.i.us.us, align 4, !tbaa !12
  %mul6.i.i.us.us = fmul float %21, %85
  store float %mul6.i.i.us.us, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %86 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

if.end.i.i.us.us.loopexit:                        ; preds = %for.body.i.i.us.us
  br label %if.end.i.i.us.us

if.end.i.i.us.us:                                 ; preds = %if.end.i.i.us.us.loopexit, %pregion_for_entry.entry.i.i.us.us
  %87 = add nuw nsw i64 %_local_id_x.i.0.us.us, 1
  %exitcond.not = icmp eq i64 %87, 32
  br i1 %exitcond.not, label %pregion_for_end.i.i.us.loopexit, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !19

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %if.then.i.i.us.us
  %indvars.iv.next.i.i3.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %if.then.i.i.us.us ]
  %88 = phi float [ %94, %for.body.i.i.us.us ], [ %mul6.i.i.us.us, %if.then.i.i.us.us ]
  %89 = add nsw i64 %indvars.iv.next.i.i3.us.us, %82
  %arrayidx12.i.i.us.us = getelementptr inbounds float, float* %7, i64 %89
  %90 = load float, float* %arrayidx12.i.i.us.us, align 4, !tbaa !12
  %mul13.i.i.us.us = fmul float %17, %90
  %91 = mul nsw i64 %indvars.iv.next.i.i3.us.us, %34
  %92 = add nsw i64 %91, %86
  %arrayidx17.i.i.us.us = getelementptr inbounds float, float* %10, i64 %92
  %93 = load float, float* %arrayidx17.i.i.us.us, align 4, !tbaa !12
  %94 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us, float %93, float %88) #2
  store float %94, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i3.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %if.end.i.i.us.us.loopexit, label %for.body.i.i.us.us, !llvm.loop !21

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us.3237, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %562, %if.end.i.i.us.3237 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %29, %conv.i.i.us
  br i1 %cmp4.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add.i.i.us = add nsw i32 %mul.i.i.us, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us
  %95 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %mul6.i.i.us = fmul float %21, %95
  store float %mul6.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %96 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1206 = add nuw nsw i64 %96, %mul.i.i.i
  %conv.i.i.us.1207 = trunc i64 %add1.i.i.i.us.1206 to i32
  %cmp4.i.i.us.1208 = icmp sgt i32 %29, %conv.i.i.us.1207
  br i1 %cmp4.i.i.us.1208, label %if.then.i.i.us.1214, label %if.end.i.i.us.1215

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.i.i.us.3237
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i.preheader
  %97 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.1 = or i32 %97, 1
  %cmp.i.i.1 = icmp sgt i32 %25, %conv2.i.i.1
  %mul.i.i.1 = mul nsw i32 %29, %conv2.i.i.1
  br i1 %cmp.i.i.1, label %vector.scevcheck49, label %pregion_for_end.i.i.1

vector.scevcheck49:                               ; preds = %pregion_for_end.i.i
  %98 = mul i32 %29, %conv2.i.i.1
  %99 = trunc i64 %2 to i32
  %100 = shl i32 %99, 5
  %101 = add i32 %98, %100
  %102 = icmp sgt i32 %101, 2147483616
  br i1 %102, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.ph50

pregion_for_entry.entry.i.i.us.1.preheader:       ; preds = %vector.scevcheck49
  br label %pregion_for_entry.entry.i.i.us.1

vector.ph50:                                      ; preds = %vector.scevcheck49
  %broadcast.splatinsert57 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat58 = shufflevector <8 x i64> %broadcast.splatinsert57, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert59 = insertelement <8 x i32> undef, i32 %29, i32 0
  %broadcast.splat60 = shufflevector <8 x i32> %broadcast.splatinsert59, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <8 x float> undef, float %21, i32 0
  %broadcast.splat63 = shufflevector <8 x float> %broadcast.splatinsert62, <8 x float> undef, <8 x i32> zeroinitializer
  %103 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %104 = or <8 x i32> %103, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %105 = icmp sgt <8 x i32> %broadcast.splat60, %104
  %106 = extractelement <8 x i32> %104, i32 0
  %107 = add nsw i32 %mul.i.i.1, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %13, i64 %108
  %110 = bitcast float* %109 to <8 x float>*
  %wide.masked.load61 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %110, i32 4, <8 x i1> %105, <8 x float> undef), !tbaa !12
  %111 = fmul <8 x float> %broadcast.splat63, %wide.masked.load61
  %112 = bitcast float* %109 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %111, <8 x float>* %112, i32 4, <8 x i1> %105), !tbaa !12, !llvm.access.group !16
  %113 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %114 = or <8 x i32> %113, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %115 = icmp sgt <8 x i32> %broadcast.splat60, %114
  %116 = extractelement <8 x i32> %114, i32 0
  %117 = add nsw i32 %mul.i.i.1, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %13, i64 %118
  %120 = bitcast float* %119 to <8 x float>*
  %wide.masked.load61.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %120, i32 4, <8 x i1> %115, <8 x float> undef), !tbaa !12
  %121 = fmul <8 x float> %broadcast.splat63, %wide.masked.load61.1
  %122 = bitcast float* %119 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %121, <8 x float>* %122, i32 4, <8 x i1> %115), !tbaa !12, !llvm.access.group !16
  %123 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %124 = or <8 x i32> %123, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %125 = icmp sgt <8 x i32> %broadcast.splat60, %124
  %126 = extractelement <8 x i32> %124, i32 0
  %127 = add nsw i32 %mul.i.i.1, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %13, i64 %128
  %130 = bitcast float* %129 to <8 x float>*
  %wide.masked.load61.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %130, i32 4, <8 x i1> %125, <8 x float> undef), !tbaa !12
  %131 = fmul <8 x float> %broadcast.splat63, %wide.masked.load61.2
  %132 = bitcast float* %129 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %131, <8 x float>* %132, i32 4, <8 x i1> %125), !tbaa !12, !llvm.access.group !16
  %133 = trunc <8 x i64> %broadcast.splat58 to <8 x i32>
  %134 = or <8 x i32> %133, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %135 = icmp sgt <8 x i32> %broadcast.splat60, %134
  %136 = extractelement <8 x i32> %134, i32 0
  %137 = add nsw i32 %mul.i.i.1, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %13, i64 %138
  %140 = bitcast float* %139 to <8 x float>*
  %wide.masked.load61.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %140, i32 4, <8 x i1> %135, <8 x float> undef), !tbaa !12
  %141 = fmul <8 x float> %broadcast.splat63, %wide.masked.load61.3
  %142 = bitcast float* %139 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %141, <8 x float>* %142, i32 4, <8 x i1> %135), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.1

_pocl_kernel_gemm.exit.loopexit:                  ; preds = %if.end.i.i.us.us.7
  br label %_pocl_kernel_gemm.exit

_pocl_kernel_gemm.exit.loopexit238:               ; preds = %if.end.i.i.us.7.3
  br label %_pocl_kernel_gemm.exit

_pocl_kernel_gemm.exit:                           ; preds = %pregion_for_end.i.i.us.6, %vector.ph182, %pregion_for_end.i.i.6, %_pocl_kernel_gemm.exit.loopexit238, %_pocl_kernel_gemm.exit.loopexit
  ret void

pregion_for_entry.entry.i.i.us.1:                 ; preds = %if.end.i.i.us.1.3, %pregion_for_entry.entry.i.i.us.1.preheader
  %_local_id_x.i.0.us.1 = phi i64 [ %556, %if.end.i.i.us.1.3 ], [ 0, %pregion_for_entry.entry.i.i.us.1.preheader ]
  %add1.i.i.i.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.1, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp4.i.i.us.1 = icmp sgt i32 %29, %conv.i.i.us.1
  br i1 %cmp4.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

if.then.i.i.us.1:                                 ; preds = %pregion_for_entry.entry.i.i.us.1
  %add.i.i.us.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1
  %idxprom.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.1
  %143 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %mul6.i.i.us.1 = fmul float %21, %143
  store float %mul6.i.i.us.1, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.then.i.i.us.1, %pregion_for_entry.entry.i.i.us.1
  %144 = or i64 %_local_id_x.i.0.us.1, 1
  %add1.i.i.i.us.1.1 = add nuw nsw i64 %144, %mul.i.i.i
  %conv.i.i.us.1.1 = trunc i64 %add1.i.i.i.us.1.1 to i32
  %cmp4.i.i.us.1.1 = icmp sgt i32 %29, %conv.i.i.us.1.1
  br i1 %cmp4.i.i.us.1.1, label %if.then.i.i.us.1.1, label %if.end.i.i.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.i.i.us.1.3
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph50, %pregion_for_end.i.i
  %145 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.2 = or i32 %145, 2
  %cmp.i.i.2 = icmp sgt i32 %25, %conv2.i.i.2
  %mul.i.i.2 = mul nsw i32 %29, %conv2.i.i.2
  br i1 %cmp.i.i.2, label %vector.scevcheck71, label %pregion_for_end.i.i.2

vector.scevcheck71:                               ; preds = %pregion_for_end.i.i.1
  %146 = mul i32 %29, %conv2.i.i.2
  %147 = trunc i64 %2 to i32
  %148 = shl i32 %147, 5
  %149 = add i32 %146, %148
  %150 = icmp sgt i32 %149, 2147483616
  br i1 %150, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.ph72

pregion_for_entry.entry.i.i.us.2.preheader:       ; preds = %vector.scevcheck71
  br label %pregion_for_entry.entry.i.i.us.2

vector.ph72:                                      ; preds = %vector.scevcheck71
  %broadcast.splatinsert79 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat80 = shufflevector <8 x i64> %broadcast.splatinsert79, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert81 = insertelement <8 x i32> undef, i32 %29, i32 0
  %broadcast.splat82 = shufflevector <8 x i32> %broadcast.splatinsert81, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert84 = insertelement <8 x float> undef, float %21, i32 0
  %broadcast.splat85 = shufflevector <8 x float> %broadcast.splatinsert84, <8 x float> undef, <8 x i32> zeroinitializer
  %151 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %152 = or <8 x i32> %151, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %153 = icmp sgt <8 x i32> %broadcast.splat82, %152
  %154 = extractelement <8 x i32> %152, i32 0
  %155 = add nsw i32 %mul.i.i.2, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %13, i64 %156
  %158 = bitcast float* %157 to <8 x float>*
  %wide.masked.load83 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %158, i32 4, <8 x i1> %153, <8 x float> undef), !tbaa !12
  %159 = fmul <8 x float> %broadcast.splat85, %wide.masked.load83
  %160 = bitcast float* %157 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %159, <8 x float>* %160, i32 4, <8 x i1> %153), !tbaa !12, !llvm.access.group !16
  %161 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %162 = or <8 x i32> %161, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %163 = icmp sgt <8 x i32> %broadcast.splat82, %162
  %164 = extractelement <8 x i32> %162, i32 0
  %165 = add nsw i32 %mul.i.i.2, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %13, i64 %166
  %168 = bitcast float* %167 to <8 x float>*
  %wide.masked.load83.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %168, i32 4, <8 x i1> %163, <8 x float> undef), !tbaa !12
  %169 = fmul <8 x float> %broadcast.splat85, %wide.masked.load83.1
  %170 = bitcast float* %167 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %169, <8 x float>* %170, i32 4, <8 x i1> %163), !tbaa !12, !llvm.access.group !16
  %171 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %172 = or <8 x i32> %171, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %173 = icmp sgt <8 x i32> %broadcast.splat82, %172
  %174 = extractelement <8 x i32> %172, i32 0
  %175 = add nsw i32 %mul.i.i.2, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %13, i64 %176
  %178 = bitcast float* %177 to <8 x float>*
  %wide.masked.load83.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %178, i32 4, <8 x i1> %173, <8 x float> undef), !tbaa !12
  %179 = fmul <8 x float> %broadcast.splat85, %wide.masked.load83.2
  %180 = bitcast float* %177 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %179, <8 x float>* %180, i32 4, <8 x i1> %173), !tbaa !12, !llvm.access.group !16
  %181 = trunc <8 x i64> %broadcast.splat80 to <8 x i32>
  %182 = or <8 x i32> %181, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %183 = icmp sgt <8 x i32> %broadcast.splat82, %182
  %184 = extractelement <8 x i32> %182, i32 0
  %185 = add nsw i32 %mul.i.i.2, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %13, i64 %186
  %188 = bitcast float* %187 to <8 x float>*
  %wide.masked.load83.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %188, i32 4, <8 x i1> %183, <8 x float> undef), !tbaa !12
  %189 = fmul <8 x float> %broadcast.splat85, %wide.masked.load83.3
  %190 = bitcast float* %187 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %189, <8 x float>* %190, i32 4, <8 x i1> %183), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.2:                 ; preds = %if.end.i.i.us.2.3, %pregion_for_entry.entry.i.i.us.2.preheader
  %_local_id_x.i.0.us.2 = phi i64 [ %550, %if.end.i.i.us.2.3 ], [ 0, %pregion_for_entry.entry.i.i.us.2.preheader ]
  %add1.i.i.i.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.2, %mul.i.i.i
  %conv.i.i.us.2 = trunc i64 %add1.i.i.i.us.2 to i32
  %cmp4.i.i.us.2 = icmp sgt i32 %29, %conv.i.i.us.2
  br i1 %cmp4.i.i.us.2, label %if.then.i.i.us.2, label %if.end.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %pregion_for_entry.entry.i.i.us.2
  %add.i.i.us.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2
  %idxprom.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.2
  %191 = load float, float* %arrayidx.i.i.us.2, align 4, !tbaa !12
  %mul6.i.i.us.2 = fmul float %21, %191
  store float %mul6.i.i.us.2, float* %arrayidx.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2

if.end.i.i.us.2:                                  ; preds = %if.then.i.i.us.2, %pregion_for_entry.entry.i.i.us.2
  %192 = or i64 %_local_id_x.i.0.us.2, 1
  %add1.i.i.i.us.2.1 = add nuw nsw i64 %192, %mul.i.i.i
  %conv.i.i.us.2.1 = trunc i64 %add1.i.i.i.us.2.1 to i32
  %cmp4.i.i.us.2.1 = icmp sgt i32 %29, %conv.i.i.us.2.1
  br i1 %cmp4.i.i.us.2.1, label %if.then.i.i.us.2.1, label %if.end.i.i.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.i.i.us.2.3
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph72, %pregion_for_end.i.i.1
  %193 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.3 = or i32 %193, 3
  %cmp.i.i.3 = icmp sgt i32 %25, %conv2.i.i.3
  %mul.i.i.3 = mul nsw i32 %29, %conv2.i.i.3
  br i1 %cmp.i.i.3, label %vector.scevcheck93, label %pregion_for_end.i.i.3

vector.scevcheck93:                               ; preds = %pregion_for_end.i.i.2
  %194 = mul i32 %29, %conv2.i.i.3
  %195 = trunc i64 %2 to i32
  %196 = shl i32 %195, 5
  %197 = add i32 %194, %196
  %198 = icmp sgt i32 %197, 2147483616
  br i1 %198, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.ph94

pregion_for_entry.entry.i.i.us.3.preheader:       ; preds = %vector.scevcheck93
  br label %pregion_for_entry.entry.i.i.us.3

vector.ph94:                                      ; preds = %vector.scevcheck93
  %broadcast.splatinsert101 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat102 = shufflevector <8 x i64> %broadcast.splatinsert101, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <8 x i32> undef, i32 %29, i32 0
  %broadcast.splat104 = shufflevector <8 x i32> %broadcast.splatinsert103, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert106 = insertelement <8 x float> undef, float %21, i32 0
  %broadcast.splat107 = shufflevector <8 x float> %broadcast.splatinsert106, <8 x float> undef, <8 x i32> zeroinitializer
  %199 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %200 = or <8 x i32> %199, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %201 = icmp sgt <8 x i32> %broadcast.splat104, %200
  %202 = extractelement <8 x i32> %200, i32 0
  %203 = add nsw i32 %mul.i.i.3, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %13, i64 %204
  %206 = bitcast float* %205 to <8 x float>*
  %wide.masked.load105 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %206, i32 4, <8 x i1> %201, <8 x float> undef), !tbaa !12
  %207 = fmul <8 x float> %broadcast.splat107, %wide.masked.load105
  %208 = bitcast float* %205 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %207, <8 x float>* %208, i32 4, <8 x i1> %201), !tbaa !12, !llvm.access.group !16
  %209 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %210 = or <8 x i32> %209, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %211 = icmp sgt <8 x i32> %broadcast.splat104, %210
  %212 = extractelement <8 x i32> %210, i32 0
  %213 = add nsw i32 %mul.i.i.3, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %13, i64 %214
  %216 = bitcast float* %215 to <8 x float>*
  %wide.masked.load105.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %216, i32 4, <8 x i1> %211, <8 x float> undef), !tbaa !12
  %217 = fmul <8 x float> %broadcast.splat107, %wide.masked.load105.1
  %218 = bitcast float* %215 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %217, <8 x float>* %218, i32 4, <8 x i1> %211), !tbaa !12, !llvm.access.group !16
  %219 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %220 = or <8 x i32> %219, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %221 = icmp sgt <8 x i32> %broadcast.splat104, %220
  %222 = extractelement <8 x i32> %220, i32 0
  %223 = add nsw i32 %mul.i.i.3, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, float* %13, i64 %224
  %226 = bitcast float* %225 to <8 x float>*
  %wide.masked.load105.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %226, i32 4, <8 x i1> %221, <8 x float> undef), !tbaa !12
  %227 = fmul <8 x float> %broadcast.splat107, %wide.masked.load105.2
  %228 = bitcast float* %225 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %227, <8 x float>* %228, i32 4, <8 x i1> %221), !tbaa !12, !llvm.access.group !16
  %229 = trunc <8 x i64> %broadcast.splat102 to <8 x i32>
  %230 = or <8 x i32> %229, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %231 = icmp sgt <8 x i32> %broadcast.splat104, %230
  %232 = extractelement <8 x i32> %230, i32 0
  %233 = add nsw i32 %mul.i.i.3, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %13, i64 %234
  %236 = bitcast float* %235 to <8 x float>*
  %wide.masked.load105.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %236, i32 4, <8 x i1> %231, <8 x float> undef), !tbaa !12
  %237 = fmul <8 x float> %broadcast.splat107, %wide.masked.load105.3
  %238 = bitcast float* %235 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %237, <8 x float>* %238, i32 4, <8 x i1> %231), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.3:                 ; preds = %if.end.i.i.us.3.3, %pregion_for_entry.entry.i.i.us.3.preheader
  %_local_id_x.i.0.us.3 = phi i64 [ %544, %if.end.i.i.us.3.3 ], [ 0, %pregion_for_entry.entry.i.i.us.3.preheader ]
  %add1.i.i.i.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.3, %mul.i.i.i
  %conv.i.i.us.3 = trunc i64 %add1.i.i.i.us.3 to i32
  %cmp4.i.i.us.3 = icmp sgt i32 %29, %conv.i.i.us.3
  br i1 %cmp4.i.i.us.3, label %if.then.i.i.us.3, label %if.end.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %pregion_for_entry.entry.i.i.us.3
  %add.i.i.us.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3
  %idxprom.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.3
  %239 = load float, float* %arrayidx.i.i.us.3, align 4, !tbaa !12
  %mul6.i.i.us.3 = fmul float %21, %239
  store float %mul6.i.i.us.3, float* %arrayidx.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3

if.end.i.i.us.3:                                  ; preds = %if.then.i.i.us.3, %pregion_for_entry.entry.i.i.us.3
  %240 = or i64 %_local_id_x.i.0.us.3, 1
  %add1.i.i.i.us.3.1 = add nuw nsw i64 %240, %mul.i.i.i
  %conv.i.i.us.3.1 = trunc i64 %add1.i.i.i.us.3.1 to i32
  %cmp4.i.i.us.3.1 = icmp sgt i32 %29, %conv.i.i.us.3.1
  br i1 %cmp4.i.i.us.3.1, label %if.then.i.i.us.3.1, label %if.end.i.i.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.i.i.us.3.3
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph94, %pregion_for_end.i.i.2
  %241 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.4 = or i32 %241, 4
  %cmp.i.i.4 = icmp sgt i32 %25, %conv2.i.i.4
  %mul.i.i.4 = mul nsw i32 %29, %conv2.i.i.4
  br i1 %cmp.i.i.4, label %vector.scevcheck115, label %pregion_for_end.i.i.4

vector.scevcheck115:                              ; preds = %pregion_for_end.i.i.3
  %242 = mul i32 %29, %conv2.i.i.4
  %243 = trunc i64 %2 to i32
  %244 = shl i32 %243, 5
  %245 = add i32 %242, %244
  %246 = icmp sgt i32 %245, 2147483616
  br i1 %246, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.ph116

pregion_for_entry.entry.i.i.us.4.preheader:       ; preds = %vector.scevcheck115
  br label %pregion_for_entry.entry.i.i.us.4

vector.ph116:                                     ; preds = %vector.scevcheck115
  %broadcast.splatinsert123 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat124 = shufflevector <8 x i64> %broadcast.splatinsert123, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert125 = insertelement <8 x i32> undef, i32 %29, i32 0
  %broadcast.splat126 = shufflevector <8 x i32> %broadcast.splatinsert125, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert128 = insertelement <8 x float> undef, float %21, i32 0
  %broadcast.splat129 = shufflevector <8 x float> %broadcast.splatinsert128, <8 x float> undef, <8 x i32> zeroinitializer
  %247 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %248 = or <8 x i32> %247, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %249 = icmp sgt <8 x i32> %broadcast.splat126, %248
  %250 = extractelement <8 x i32> %248, i32 0
  %251 = add nsw i32 %mul.i.i.4, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %13, i64 %252
  %254 = bitcast float* %253 to <8 x float>*
  %wide.masked.load127 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %254, i32 4, <8 x i1> %249, <8 x float> undef), !tbaa !12
  %255 = fmul <8 x float> %broadcast.splat129, %wide.masked.load127
  %256 = bitcast float* %253 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %255, <8 x float>* %256, i32 4, <8 x i1> %249), !tbaa !12, !llvm.access.group !16
  %257 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %258 = or <8 x i32> %257, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %259 = icmp sgt <8 x i32> %broadcast.splat126, %258
  %260 = extractelement <8 x i32> %258, i32 0
  %261 = add nsw i32 %mul.i.i.4, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %13, i64 %262
  %264 = bitcast float* %263 to <8 x float>*
  %wide.masked.load127.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %264, i32 4, <8 x i1> %259, <8 x float> undef), !tbaa !12
  %265 = fmul <8 x float> %broadcast.splat129, %wide.masked.load127.1
  %266 = bitcast float* %263 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %265, <8 x float>* %266, i32 4, <8 x i1> %259), !tbaa !12, !llvm.access.group !16
  %267 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %268 = or <8 x i32> %267, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %269 = icmp sgt <8 x i32> %broadcast.splat126, %268
  %270 = extractelement <8 x i32> %268, i32 0
  %271 = add nsw i32 %mul.i.i.4, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds float, float* %13, i64 %272
  %274 = bitcast float* %273 to <8 x float>*
  %wide.masked.load127.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %274, i32 4, <8 x i1> %269, <8 x float> undef), !tbaa !12
  %275 = fmul <8 x float> %broadcast.splat129, %wide.masked.load127.2
  %276 = bitcast float* %273 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %275, <8 x float>* %276, i32 4, <8 x i1> %269), !tbaa !12, !llvm.access.group !16
  %277 = trunc <8 x i64> %broadcast.splat124 to <8 x i32>
  %278 = or <8 x i32> %277, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %279 = icmp sgt <8 x i32> %broadcast.splat126, %278
  %280 = extractelement <8 x i32> %278, i32 0
  %281 = add nsw i32 %mul.i.i.4, %280
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds float, float* %13, i64 %282
  %284 = bitcast float* %283 to <8 x float>*
  %wide.masked.load127.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %284, i32 4, <8 x i1> %279, <8 x float> undef), !tbaa !12
  %285 = fmul <8 x float> %broadcast.splat129, %wide.masked.load127.3
  %286 = bitcast float* %283 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %285, <8 x float>* %286, i32 4, <8 x i1> %279), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.4:                 ; preds = %if.end.i.i.us.4.3, %pregion_for_entry.entry.i.i.us.4.preheader
  %_local_id_x.i.0.us.4 = phi i64 [ %538, %if.end.i.i.us.4.3 ], [ 0, %pregion_for_entry.entry.i.i.us.4.preheader ]
  %add1.i.i.i.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.4, %mul.i.i.i
  %conv.i.i.us.4 = trunc i64 %add1.i.i.i.us.4 to i32
  %cmp4.i.i.us.4 = icmp sgt i32 %29, %conv.i.i.us.4
  br i1 %cmp4.i.i.us.4, label %if.then.i.i.us.4, label %if.end.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %pregion_for_entry.entry.i.i.us.4
  %add.i.i.us.4 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4
  %idxprom.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.4
  %287 = load float, float* %arrayidx.i.i.us.4, align 4, !tbaa !12
  %mul6.i.i.us.4 = fmul float %21, %287
  store float %mul6.i.i.us.4, float* %arrayidx.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4

if.end.i.i.us.4:                                  ; preds = %if.then.i.i.us.4, %pregion_for_entry.entry.i.i.us.4
  %288 = or i64 %_local_id_x.i.0.us.4, 1
  %add1.i.i.i.us.4.1 = add nuw nsw i64 %288, %mul.i.i.i
  %conv.i.i.us.4.1 = trunc i64 %add1.i.i.i.us.4.1 to i32
  %cmp4.i.i.us.4.1 = icmp sgt i32 %29, %conv.i.i.us.4.1
  br i1 %cmp4.i.i.us.4.1, label %if.then.i.i.us.4.1, label %if.end.i.i.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.i.i.us.4.3
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph116, %pregion_for_end.i.i.3
  %289 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.5 = or i32 %289, 5
  %cmp.i.i.5 = icmp sgt i32 %25, %conv2.i.i.5
  %mul.i.i.5 = mul nsw i32 %29, %conv2.i.i.5
  br i1 %cmp.i.i.5, label %vector.scevcheck137, label %pregion_for_end.i.i.5

vector.scevcheck137:                              ; preds = %pregion_for_end.i.i.4
  %290 = mul i32 %29, %conv2.i.i.5
  %291 = trunc i64 %2 to i32
  %292 = shl i32 %291, 5
  %293 = add i32 %290, %292
  %294 = icmp sgt i32 %293, 2147483616
  br i1 %294, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.ph138

pregion_for_entry.entry.i.i.us.5.preheader:       ; preds = %vector.scevcheck137
  br label %pregion_for_entry.entry.i.i.us.5

vector.ph138:                                     ; preds = %vector.scevcheck137
  %broadcast.splatinsert145 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat146 = shufflevector <8 x i64> %broadcast.splatinsert145, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert147 = insertelement <8 x i32> undef, i32 %29, i32 0
  %broadcast.splat148 = shufflevector <8 x i32> %broadcast.splatinsert147, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert150 = insertelement <8 x float> undef, float %21, i32 0
  %broadcast.splat151 = shufflevector <8 x float> %broadcast.splatinsert150, <8 x float> undef, <8 x i32> zeroinitializer
  %295 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %296 = or <8 x i32> %295, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %297 = icmp sgt <8 x i32> %broadcast.splat148, %296
  %298 = extractelement <8 x i32> %296, i32 0
  %299 = add nsw i32 %mul.i.i.5, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %13, i64 %300
  %302 = bitcast float* %301 to <8 x float>*
  %wide.masked.load149 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %302, i32 4, <8 x i1> %297, <8 x float> undef), !tbaa !12
  %303 = fmul <8 x float> %broadcast.splat151, %wide.masked.load149
  %304 = bitcast float* %301 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %303, <8 x float>* %304, i32 4, <8 x i1> %297), !tbaa !12, !llvm.access.group !16
  %305 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %306 = or <8 x i32> %305, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %307 = icmp sgt <8 x i32> %broadcast.splat148, %306
  %308 = extractelement <8 x i32> %306, i32 0
  %309 = add nsw i32 %mul.i.i.5, %308
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds float, float* %13, i64 %310
  %312 = bitcast float* %311 to <8 x float>*
  %wide.masked.load149.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %312, i32 4, <8 x i1> %307, <8 x float> undef), !tbaa !12
  %313 = fmul <8 x float> %broadcast.splat151, %wide.masked.load149.1
  %314 = bitcast float* %311 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %313, <8 x float>* %314, i32 4, <8 x i1> %307), !tbaa !12, !llvm.access.group !16
  %315 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %316 = or <8 x i32> %315, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %317 = icmp sgt <8 x i32> %broadcast.splat148, %316
  %318 = extractelement <8 x i32> %316, i32 0
  %319 = add nsw i32 %mul.i.i.5, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds float, float* %13, i64 %320
  %322 = bitcast float* %321 to <8 x float>*
  %wide.masked.load149.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %322, i32 4, <8 x i1> %317, <8 x float> undef), !tbaa !12
  %323 = fmul <8 x float> %broadcast.splat151, %wide.masked.load149.2
  %324 = bitcast float* %321 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %323, <8 x float>* %324, i32 4, <8 x i1> %317), !tbaa !12, !llvm.access.group !16
  %325 = trunc <8 x i64> %broadcast.splat146 to <8 x i32>
  %326 = or <8 x i32> %325, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %327 = icmp sgt <8 x i32> %broadcast.splat148, %326
  %328 = extractelement <8 x i32> %326, i32 0
  %329 = add nsw i32 %mul.i.i.5, %328
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds float, float* %13, i64 %330
  %332 = bitcast float* %331 to <8 x float>*
  %wide.masked.load149.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %332, i32 4, <8 x i1> %327, <8 x float> undef), !tbaa !12
  %333 = fmul <8 x float> %broadcast.splat151, %wide.masked.load149.3
  %334 = bitcast float* %331 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %333, <8 x float>* %334, i32 4, <8 x i1> %327), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.5:                 ; preds = %if.end.i.i.us.5.3, %pregion_for_entry.entry.i.i.us.5.preheader
  %_local_id_x.i.0.us.5 = phi i64 [ %532, %if.end.i.i.us.5.3 ], [ 0, %pregion_for_entry.entry.i.i.us.5.preheader ]
  %add1.i.i.i.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.5, %mul.i.i.i
  %conv.i.i.us.5 = trunc i64 %add1.i.i.i.us.5 to i32
  %cmp4.i.i.us.5 = icmp sgt i32 %29, %conv.i.i.us.5
  br i1 %cmp4.i.i.us.5, label %if.then.i.i.us.5, label %if.end.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %pregion_for_entry.entry.i.i.us.5
  %add.i.i.us.5 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5
  %idxprom.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.5
  %335 = load float, float* %arrayidx.i.i.us.5, align 4, !tbaa !12
  %mul6.i.i.us.5 = fmul float %21, %335
  store float %mul6.i.i.us.5, float* %arrayidx.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5

if.end.i.i.us.5:                                  ; preds = %if.then.i.i.us.5, %pregion_for_entry.entry.i.i.us.5
  %336 = or i64 %_local_id_x.i.0.us.5, 1
  %add1.i.i.i.us.5.1 = add nuw nsw i64 %336, %mul.i.i.i
  %conv.i.i.us.5.1 = trunc i64 %add1.i.i.i.us.5.1 to i32
  %cmp4.i.i.us.5.1 = icmp sgt i32 %29, %conv.i.i.us.5.1
  br i1 %cmp4.i.i.us.5.1, label %if.then.i.i.us.5.1, label %if.end.i.i.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.i.i.us.5.3
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph138, %pregion_for_end.i.i.4
  %337 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.6 = or i32 %337, 6
  %cmp.i.i.6 = icmp sgt i32 %25, %conv2.i.i.6
  %mul.i.i.6 = mul nsw i32 %29, %conv2.i.i.6
  br i1 %cmp.i.i.6, label %vector.scevcheck159, label %pregion_for_end.i.i.6

vector.scevcheck159:                              ; preds = %pregion_for_end.i.i.5
  %338 = mul i32 %29, %conv2.i.i.6
  %339 = trunc i64 %2 to i32
  %340 = shl i32 %339, 5
  %341 = add i32 %338, %340
  %342 = icmp sgt i32 %341, 2147483616
  br i1 %342, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.ph160

pregion_for_entry.entry.i.i.us.6.preheader:       ; preds = %vector.scevcheck159
  br label %pregion_for_entry.entry.i.i.us.6

vector.ph160:                                     ; preds = %vector.scevcheck159
  %broadcast.splatinsert167 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat168 = shufflevector <8 x i64> %broadcast.splatinsert167, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert169 = insertelement <8 x i32> undef, i32 %29, i32 0
  %broadcast.splat170 = shufflevector <8 x i32> %broadcast.splatinsert169, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <8 x float> undef, float %21, i32 0
  %broadcast.splat173 = shufflevector <8 x float> %broadcast.splatinsert172, <8 x float> undef, <8 x i32> zeroinitializer
  %343 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %344 = or <8 x i32> %343, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %345 = icmp sgt <8 x i32> %broadcast.splat170, %344
  %346 = extractelement <8 x i32> %344, i32 0
  %347 = add nsw i32 %mul.i.i.6, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds float, float* %13, i64 %348
  %350 = bitcast float* %349 to <8 x float>*
  %wide.masked.load171 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %350, i32 4, <8 x i1> %345, <8 x float> undef), !tbaa !12
  %351 = fmul <8 x float> %broadcast.splat173, %wide.masked.load171
  %352 = bitcast float* %349 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %351, <8 x float>* %352, i32 4, <8 x i1> %345), !tbaa !12, !llvm.access.group !16
  %353 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %354 = or <8 x i32> %353, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %355 = icmp sgt <8 x i32> %broadcast.splat170, %354
  %356 = extractelement <8 x i32> %354, i32 0
  %357 = add nsw i32 %mul.i.i.6, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds float, float* %13, i64 %358
  %360 = bitcast float* %359 to <8 x float>*
  %wide.masked.load171.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %360, i32 4, <8 x i1> %355, <8 x float> undef), !tbaa !12
  %361 = fmul <8 x float> %broadcast.splat173, %wide.masked.load171.1
  %362 = bitcast float* %359 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %361, <8 x float>* %362, i32 4, <8 x i1> %355), !tbaa !12, !llvm.access.group !16
  %363 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %364 = or <8 x i32> %363, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %365 = icmp sgt <8 x i32> %broadcast.splat170, %364
  %366 = extractelement <8 x i32> %364, i32 0
  %367 = add nsw i32 %mul.i.i.6, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds float, float* %13, i64 %368
  %370 = bitcast float* %369 to <8 x float>*
  %wide.masked.load171.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %370, i32 4, <8 x i1> %365, <8 x float> undef), !tbaa !12
  %371 = fmul <8 x float> %broadcast.splat173, %wide.masked.load171.2
  %372 = bitcast float* %369 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %371, <8 x float>* %372, i32 4, <8 x i1> %365), !tbaa !12, !llvm.access.group !16
  %373 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %374 = or <8 x i32> %373, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %375 = icmp sgt <8 x i32> %broadcast.splat170, %374
  %376 = extractelement <8 x i32> %374, i32 0
  %377 = add nsw i32 %mul.i.i.6, %376
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds float, float* %13, i64 %378
  %380 = bitcast float* %379 to <8 x float>*
  %wide.masked.load171.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %380, i32 4, <8 x i1> %375, <8 x float> undef), !tbaa !12
  %381 = fmul <8 x float> %broadcast.splat173, %wide.masked.load171.3
  %382 = bitcast float* %379 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %381, <8 x float>* %382, i32 4, <8 x i1> %375), !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.6:                 ; preds = %if.end.i.i.us.6.3, %pregion_for_entry.entry.i.i.us.6.preheader
  %_local_id_x.i.0.us.6 = phi i64 [ %526, %if.end.i.i.us.6.3 ], [ 0, %pregion_for_entry.entry.i.i.us.6.preheader ]
  %add1.i.i.i.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.6, %mul.i.i.i
  %conv.i.i.us.6 = trunc i64 %add1.i.i.i.us.6 to i32
  %cmp4.i.i.us.6 = icmp sgt i32 %29, %conv.i.i.us.6
  br i1 %cmp4.i.i.us.6, label %if.then.i.i.us.6, label %if.end.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %pregion_for_entry.entry.i.i.us.6
  %add.i.i.us.6 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6
  %idxprom.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.6
  %383 = load float, float* %arrayidx.i.i.us.6, align 4, !tbaa !12
  %mul6.i.i.us.6 = fmul float %21, %383
  store float %mul6.i.i.us.6, float* %arrayidx.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6

if.end.i.i.us.6:                                  ; preds = %if.then.i.i.us.6, %pregion_for_entry.entry.i.i.us.6
  %384 = or i64 %_local_id_x.i.0.us.6, 1
  %add1.i.i.i.us.6.1 = add nuw nsw i64 %384, %mul.i.i.i
  %conv.i.i.us.6.1 = trunc i64 %add1.i.i.i.us.6.1 to i32
  %cmp4.i.i.us.6.1 = icmp sgt i32 %29, %conv.i.i.us.6.1
  br i1 %cmp4.i.i.us.6.1, label %if.then.i.i.us.6.1, label %if.end.i.i.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.i.i.us.6.3
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph160, %pregion_for_end.i.i.5
  %385 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.7 = or i32 %385, 7
  %cmp.i.i.7 = icmp sgt i32 %25, %conv2.i.i.7
  %mul.i.i.7 = mul nsw i32 %29, %conv2.i.i.7
  br i1 %cmp.i.i.7, label %vector.scevcheck181, label %_pocl_kernel_gemm.exit

vector.scevcheck181:                              ; preds = %pregion_for_end.i.i.6
  %386 = mul i32 %29, %conv2.i.i.7
  %387 = trunc i64 %2 to i32
  %388 = shl i32 %387, 5
  %389 = add i32 %386, %388
  %390 = icmp sgt i32 %389, 2147483616
  br i1 %390, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.ph182

pregion_for_entry.entry.i.i.us.7.preheader:       ; preds = %vector.scevcheck181
  br label %pregion_for_entry.entry.i.i.us.7

vector.ph182:                                     ; preds = %vector.scevcheck181
  %broadcast.splatinsert189 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat190 = shufflevector <8 x i64> %broadcast.splatinsert189, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert191 = insertelement <8 x i32> undef, i32 %29, i32 0
  %broadcast.splat192 = shufflevector <8 x i32> %broadcast.splatinsert191, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <8 x float> undef, float %21, i32 0
  %broadcast.splat195 = shufflevector <8 x float> %broadcast.splatinsert194, <8 x float> undef, <8 x i32> zeroinitializer
  %391 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %392 = or <8 x i32> %391, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %393 = icmp sgt <8 x i32> %broadcast.splat192, %392
  %394 = extractelement <8 x i32> %392, i32 0
  %395 = add nsw i32 %mul.i.i.7, %394
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds float, float* %13, i64 %396
  %398 = bitcast float* %397 to <8 x float>*
  %wide.masked.load193 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %398, i32 4, <8 x i1> %393, <8 x float> undef), !tbaa !12
  %399 = fmul <8 x float> %broadcast.splat195, %wide.masked.load193
  %400 = bitcast float* %397 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %399, <8 x float>* %400, i32 4, <8 x i1> %393), !tbaa !12, !llvm.access.group !16
  %401 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %402 = or <8 x i32> %401, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %403 = icmp sgt <8 x i32> %broadcast.splat192, %402
  %404 = extractelement <8 x i32> %402, i32 0
  %405 = add nsw i32 %mul.i.i.7, %404
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds float, float* %13, i64 %406
  %408 = bitcast float* %407 to <8 x float>*
  %wide.masked.load193.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %408, i32 4, <8 x i1> %403, <8 x float> undef), !tbaa !12
  %409 = fmul <8 x float> %broadcast.splat195, %wide.masked.load193.1
  %410 = bitcast float* %407 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %409, <8 x float>* %410, i32 4, <8 x i1> %403), !tbaa !12, !llvm.access.group !16
  %411 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %412 = or <8 x i32> %411, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %413 = icmp sgt <8 x i32> %broadcast.splat192, %412
  %414 = extractelement <8 x i32> %412, i32 0
  %415 = add nsw i32 %mul.i.i.7, %414
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds float, float* %13, i64 %416
  %418 = bitcast float* %417 to <8 x float>*
  %wide.masked.load193.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %418, i32 4, <8 x i1> %413, <8 x float> undef), !tbaa !12
  %419 = fmul <8 x float> %broadcast.splat195, %wide.masked.load193.2
  %420 = bitcast float* %417 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %419, <8 x float>* %420, i32 4, <8 x i1> %413), !tbaa !12, !llvm.access.group !16
  %421 = trunc <8 x i64> %broadcast.splat190 to <8 x i32>
  %422 = or <8 x i32> %421, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %423 = icmp sgt <8 x i32> %broadcast.splat192, %422
  %424 = extractelement <8 x i32> %422, i32 0
  %425 = add nsw i32 %mul.i.i.7, %424
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds float, float* %13, i64 %426
  %428 = bitcast float* %427 to <8 x float>*
  %wide.masked.load193.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %428, i32 4, <8 x i1> %423, <8 x float> undef), !tbaa !12
  %429 = fmul <8 x float> %broadcast.splat195, %wide.masked.load193.3
  %430 = bitcast float* %427 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %429, <8 x float>* %430, i32 4, <8 x i1> %423), !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_gemm.exit

pregion_for_entry.entry.i.i.us.7:                 ; preds = %if.end.i.i.us.7.3, %pregion_for_entry.entry.i.i.us.7.preheader
  %_local_id_x.i.0.us.7 = phi i64 [ %520, %if.end.i.i.us.7.3 ], [ 0, %pregion_for_entry.entry.i.i.us.7.preheader ]
  %add1.i.i.i.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.7, %mul.i.i.i
  %conv.i.i.us.7 = trunc i64 %add1.i.i.i.us.7 to i32
  %cmp4.i.i.us.7 = icmp sgt i32 %29, %conv.i.i.us.7
  br i1 %cmp4.i.i.us.7, label %if.then.i.i.us.7, label %if.end.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %pregion_for_entry.entry.i.i.us.7
  %add.i.i.us.7 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7
  %idxprom.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.7
  %431 = load float, float* %arrayidx.i.i.us.7, align 4, !tbaa !12
  %mul6.i.i.us.7 = fmul float %21, %431
  store float %mul6.i.i.us.7, float* %arrayidx.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7

if.end.i.i.us.7:                                  ; preds = %if.then.i.i.us.7, %pregion_for_entry.entry.i.i.us.7
  %432 = or i64 %_local_id_x.i.0.us.7, 1
  %add1.i.i.i.us.7.1 = add nuw nsw i64 %432, %mul.i.i.i
  %conv.i.i.us.7.1 = trunc i64 %add1.i.i.i.us.7.1 to i32
  %cmp4.i.i.us.7.1 = icmp sgt i32 %29, %conv.i.i.us.7.1
  br i1 %cmp4.i.i.us.7.1, label %if.then.i.i.us.7.1, label %if.end.i.i.us.7.1

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %if.end.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1.preheader
  %_local_id_x.i.0.us.us.1 = phi i64 [ %442, %if.end.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1.preheader ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %cmp4.i.i.us.us.1 = icmp sgt i32 %29, %conv.i.i.us.us.1
  br i1 %cmp4.i.i.us.us.1, label %if.then.i.i.us.us.1, label %if.end.i.i.us.us.1

if.then.i.i.us.us.1:                              ; preds = %pregion_for_entry.entry.i.i.us.us.1
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.1
  %433 = load float, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12
  %mul6.i.i.us.us.1 = fmul float %21, %433
  store float %mul6.i.i.us.us.1, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %434 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %if.then.i.i.us.us.1
  %indvars.iv.next.i.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %if.then.i.i.us.us.1 ]
  %435 = phi float [ %441, %for.body.i.i.us.us.1 ], [ %mul6.i.i.us.us.1, %if.then.i.i.us.us.1 ]
  %436 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %84
  %arrayidx12.i.i.us.us.1 = getelementptr inbounds float, float* %7, i64 %436
  %437 = load float, float* %arrayidx12.i.i.us.us.1, align 4, !tbaa !12
  %mul13.i.i.us.us.1 = fmul float %17, %437
  %438 = mul nsw i64 %indvars.iv.next.i.i3.us.us.1, %34
  %439 = add nsw i64 %438, %434
  %arrayidx17.i.i.us.us.1 = getelementptr inbounds float, float* %10, i64 %439
  %440 = load float, float* %arrayidx17.i.i.us.us.1, align 4, !tbaa !12
  %441 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.1, float %440, float %435) #2
  store float %441, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %if.end.i.i.us.us.1.loopexit, label %for.body.i.i.us.us.1, !llvm.loop !21

if.end.i.i.us.us.1.loopexit:                      ; preds = %for.body.i.i.us.us.1
  br label %if.end.i.i.us.us.1

if.end.i.i.us.us.1:                               ; preds = %if.end.i.i.us.us.1.loopexit, %pregion_for_entry.entry.i.i.us.us.1
  %442 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 1
  %exitcond.not.1 = icmp eq i64 %442, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us.1.loopexit, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !19

pregion_for_end.i.i.us.1.loopexit:                ; preds = %if.end.i.i.us.us.1
  br label %pregion_for_end.i.i.us.1

pregion_for_end.i.i.us.1:                         ; preds = %pregion_for_end.i.i.us.1.loopexit, %pregion_for_end.i.i.us
  %443 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %443, 2
  %cmp.i.i.us.2 = icmp sgt i32 %25, %conv2.i.i.us.2
  %mul.i.i.us.2 = mul nsw i32 %29, %conv2.i.i.us.2
  %mul9.i.i.us.2 = mul nsw i32 %33, %conv2.i.i.us.2
  %444 = sext i32 %mul9.i.i.us.2 to i64
  br i1 %cmp.i.i.us.2, label %pregion_for_entry.entry.i.i.us.us.2.preheader, label %pregion_for_end.i.i.us.2

pregion_for_entry.entry.i.i.us.us.2.preheader:    ; preds = %pregion_for_end.i.i.us.1
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %if.end.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2.preheader
  %_local_id_x.i.0.us.us.2 = phi i64 [ %454, %if.end.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2.preheader ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %cmp4.i.i.us.us.2 = icmp sgt i32 %29, %conv.i.i.us.us.2
  br i1 %cmp4.i.i.us.us.2, label %if.then.i.i.us.us.2, label %if.end.i.i.us.us.2

if.then.i.i.us.us.2:                              ; preds = %pregion_for_entry.entry.i.i.us.us.2
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.2
  %445 = load float, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12
  %mul6.i.i.us.us.2 = fmul float %21, %445
  store float %mul6.i.i.us.us.2, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %446 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %if.then.i.i.us.us.2
  %indvars.iv.next.i.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %if.then.i.i.us.us.2 ]
  %447 = phi float [ %453, %for.body.i.i.us.us.2 ], [ %mul6.i.i.us.us.2, %if.then.i.i.us.us.2 ]
  %448 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %444
  %arrayidx12.i.i.us.us.2 = getelementptr inbounds float, float* %7, i64 %448
  %449 = load float, float* %arrayidx12.i.i.us.us.2, align 4, !tbaa !12
  %mul13.i.i.us.us.2 = fmul float %17, %449
  %450 = mul nsw i64 %indvars.iv.next.i.i3.us.us.2, %34
  %451 = add nsw i64 %450, %446
  %arrayidx17.i.i.us.us.2 = getelementptr inbounds float, float* %10, i64 %451
  %452 = load float, float* %arrayidx17.i.i.us.us.2, align 4, !tbaa !12
  %453 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.2, float %452, float %447) #2
  store float %453, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %if.end.i.i.us.us.2.loopexit, label %for.body.i.i.us.us.2, !llvm.loop !21

if.end.i.i.us.us.2.loopexit:                      ; preds = %for.body.i.i.us.us.2
  br label %if.end.i.i.us.us.2

if.end.i.i.us.us.2:                               ; preds = %if.end.i.i.us.us.2.loopexit, %pregion_for_entry.entry.i.i.us.us.2
  %454 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 1
  %exitcond.not.2 = icmp eq i64 %454, 32
  br i1 %exitcond.not.2, label %pregion_for_end.i.i.us.2.loopexit, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !19

pregion_for_end.i.i.us.2.loopexit:                ; preds = %if.end.i.i.us.us.2
  br label %pregion_for_end.i.i.us.2

pregion_for_end.i.i.us.2:                         ; preds = %pregion_for_end.i.i.us.2.loopexit, %pregion_for_end.i.i.us.1
  %455 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %455, 3
  %cmp.i.i.us.3 = icmp sgt i32 %25, %conv2.i.i.us.3
  %mul.i.i.us.3 = mul nsw i32 %29, %conv2.i.i.us.3
  %mul9.i.i.us.3 = mul nsw i32 %33, %conv2.i.i.us.3
  %456 = sext i32 %mul9.i.i.us.3 to i64
  br i1 %cmp.i.i.us.3, label %pregion_for_entry.entry.i.i.us.us.3.preheader, label %pregion_for_end.i.i.us.3

pregion_for_entry.entry.i.i.us.us.3.preheader:    ; preds = %pregion_for_end.i.i.us.2
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %if.end.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3.preheader
  %_local_id_x.i.0.us.us.3 = phi i64 [ %466, %if.end.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3.preheader ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %cmp4.i.i.us.us.3 = icmp sgt i32 %29, %conv.i.i.us.us.3
  br i1 %cmp4.i.i.us.us.3, label %if.then.i.i.us.us.3, label %if.end.i.i.us.us.3

if.then.i.i.us.us.3:                              ; preds = %pregion_for_entry.entry.i.i.us.us.3
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.3
  %457 = load float, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12
  %mul6.i.i.us.us.3 = fmul float %21, %457
  store float %mul6.i.i.us.us.3, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %458 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %if.then.i.i.us.us.3
  %indvars.iv.next.i.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %if.then.i.i.us.us.3 ]
  %459 = phi float [ %465, %for.body.i.i.us.us.3 ], [ %mul6.i.i.us.us.3, %if.then.i.i.us.us.3 ]
  %460 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %456
  %arrayidx12.i.i.us.us.3 = getelementptr inbounds float, float* %7, i64 %460
  %461 = load float, float* %arrayidx12.i.i.us.us.3, align 4, !tbaa !12
  %mul13.i.i.us.us.3 = fmul float %17, %461
  %462 = mul nsw i64 %indvars.iv.next.i.i3.us.us.3, %34
  %463 = add nsw i64 %462, %458
  %arrayidx17.i.i.us.us.3 = getelementptr inbounds float, float* %10, i64 %463
  %464 = load float, float* %arrayidx17.i.i.us.us.3, align 4, !tbaa !12
  %465 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.3, float %464, float %459) #2
  store float %465, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %if.end.i.i.us.us.3.loopexit, label %for.body.i.i.us.us.3, !llvm.loop !21

if.end.i.i.us.us.3.loopexit:                      ; preds = %for.body.i.i.us.us.3
  br label %if.end.i.i.us.us.3

if.end.i.i.us.us.3:                               ; preds = %if.end.i.i.us.us.3.loopexit, %pregion_for_entry.entry.i.i.us.us.3
  %466 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 1
  %exitcond.not.3 = icmp eq i64 %466, 32
  br i1 %exitcond.not.3, label %pregion_for_end.i.i.us.3.loopexit, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !19

pregion_for_end.i.i.us.3.loopexit:                ; preds = %if.end.i.i.us.us.3
  br label %pregion_for_end.i.i.us.3

pregion_for_end.i.i.us.3:                         ; preds = %pregion_for_end.i.i.us.3.loopexit, %pregion_for_end.i.i.us.2
  %467 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %467, 4
  %cmp.i.i.us.4 = icmp sgt i32 %25, %conv2.i.i.us.4
  %mul.i.i.us.4 = mul nsw i32 %29, %conv2.i.i.us.4
  %mul9.i.i.us.4 = mul nsw i32 %33, %conv2.i.i.us.4
  %468 = sext i32 %mul9.i.i.us.4 to i64
  br i1 %cmp.i.i.us.4, label %pregion_for_entry.entry.i.i.us.us.4.preheader, label %pregion_for_end.i.i.us.4

pregion_for_entry.entry.i.i.us.us.4.preheader:    ; preds = %pregion_for_end.i.i.us.3
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %if.end.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4.preheader
  %_local_id_x.i.0.us.us.4 = phi i64 [ %478, %if.end.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4.preheader ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %cmp4.i.i.us.us.4 = icmp sgt i32 %29, %conv.i.i.us.us.4
  br i1 %cmp4.i.i.us.us.4, label %if.then.i.i.us.us.4, label %if.end.i.i.us.us.4

if.then.i.i.us.us.4:                              ; preds = %pregion_for_entry.entry.i.i.us.us.4
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.4
  %469 = load float, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12
  %mul6.i.i.us.us.4 = fmul float %21, %469
  store float %mul6.i.i.us.us.4, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %470 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %if.then.i.i.us.us.4
  %indvars.iv.next.i.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %if.then.i.i.us.us.4 ]
  %471 = phi float [ %477, %for.body.i.i.us.us.4 ], [ %mul6.i.i.us.us.4, %if.then.i.i.us.us.4 ]
  %472 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %468
  %arrayidx12.i.i.us.us.4 = getelementptr inbounds float, float* %7, i64 %472
  %473 = load float, float* %arrayidx12.i.i.us.us.4, align 4, !tbaa !12
  %mul13.i.i.us.us.4 = fmul float %17, %473
  %474 = mul nsw i64 %indvars.iv.next.i.i3.us.us.4, %34
  %475 = add nsw i64 %474, %470
  %arrayidx17.i.i.us.us.4 = getelementptr inbounds float, float* %10, i64 %475
  %476 = load float, float* %arrayidx17.i.i.us.us.4, align 4, !tbaa !12
  %477 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.4, float %476, float %471) #2
  store float %477, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %if.end.i.i.us.us.4.loopexit, label %for.body.i.i.us.us.4, !llvm.loop !21

if.end.i.i.us.us.4.loopexit:                      ; preds = %for.body.i.i.us.us.4
  br label %if.end.i.i.us.us.4

if.end.i.i.us.us.4:                               ; preds = %if.end.i.i.us.us.4.loopexit, %pregion_for_entry.entry.i.i.us.us.4
  %478 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 1
  %exitcond.not.4 = icmp eq i64 %478, 32
  br i1 %exitcond.not.4, label %pregion_for_end.i.i.us.4.loopexit, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !19

pregion_for_end.i.i.us.4.loopexit:                ; preds = %if.end.i.i.us.us.4
  br label %pregion_for_end.i.i.us.4

pregion_for_end.i.i.us.4:                         ; preds = %pregion_for_end.i.i.us.4.loopexit, %pregion_for_end.i.i.us.3
  %479 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %479, 5
  %cmp.i.i.us.5 = icmp sgt i32 %25, %conv2.i.i.us.5
  %mul.i.i.us.5 = mul nsw i32 %29, %conv2.i.i.us.5
  %mul9.i.i.us.5 = mul nsw i32 %33, %conv2.i.i.us.5
  %480 = sext i32 %mul9.i.i.us.5 to i64
  br i1 %cmp.i.i.us.5, label %pregion_for_entry.entry.i.i.us.us.5.preheader, label %pregion_for_end.i.i.us.5

pregion_for_entry.entry.i.i.us.us.5.preheader:    ; preds = %pregion_for_end.i.i.us.4
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %if.end.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5.preheader
  %_local_id_x.i.0.us.us.5 = phi i64 [ %490, %if.end.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5.preheader ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %cmp4.i.i.us.us.5 = icmp sgt i32 %29, %conv.i.i.us.us.5
  br i1 %cmp4.i.i.us.us.5, label %if.then.i.i.us.us.5, label %if.end.i.i.us.us.5

if.then.i.i.us.us.5:                              ; preds = %pregion_for_entry.entry.i.i.us.us.5
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.5
  %481 = load float, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12
  %mul6.i.i.us.us.5 = fmul float %21, %481
  store float %mul6.i.i.us.us.5, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %482 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %if.then.i.i.us.us.5
  %indvars.iv.next.i.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %if.then.i.i.us.us.5 ]
  %483 = phi float [ %489, %for.body.i.i.us.us.5 ], [ %mul6.i.i.us.us.5, %if.then.i.i.us.us.5 ]
  %484 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %480
  %arrayidx12.i.i.us.us.5 = getelementptr inbounds float, float* %7, i64 %484
  %485 = load float, float* %arrayidx12.i.i.us.us.5, align 4, !tbaa !12
  %mul13.i.i.us.us.5 = fmul float %17, %485
  %486 = mul nsw i64 %indvars.iv.next.i.i3.us.us.5, %34
  %487 = add nsw i64 %486, %482
  %arrayidx17.i.i.us.us.5 = getelementptr inbounds float, float* %10, i64 %487
  %488 = load float, float* %arrayidx17.i.i.us.us.5, align 4, !tbaa !12
  %489 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.5, float %488, float %483) #2
  store float %489, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %if.end.i.i.us.us.5.loopexit, label %for.body.i.i.us.us.5, !llvm.loop !21

if.end.i.i.us.us.5.loopexit:                      ; preds = %for.body.i.i.us.us.5
  br label %if.end.i.i.us.us.5

if.end.i.i.us.us.5:                               ; preds = %if.end.i.i.us.us.5.loopexit, %pregion_for_entry.entry.i.i.us.us.5
  %490 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 1
  %exitcond.not.5 = icmp eq i64 %490, 32
  br i1 %exitcond.not.5, label %pregion_for_end.i.i.us.5.loopexit, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !19

pregion_for_end.i.i.us.5.loopexit:                ; preds = %if.end.i.i.us.us.5
  br label %pregion_for_end.i.i.us.5

pregion_for_end.i.i.us.5:                         ; preds = %pregion_for_end.i.i.us.5.loopexit, %pregion_for_end.i.i.us.4
  %491 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %491, 6
  %cmp.i.i.us.6 = icmp sgt i32 %25, %conv2.i.i.us.6
  %mul.i.i.us.6 = mul nsw i32 %29, %conv2.i.i.us.6
  %mul9.i.i.us.6 = mul nsw i32 %33, %conv2.i.i.us.6
  %492 = sext i32 %mul9.i.i.us.6 to i64
  br i1 %cmp.i.i.us.6, label %pregion_for_entry.entry.i.i.us.us.6.preheader, label %pregion_for_end.i.i.us.6

pregion_for_entry.entry.i.i.us.us.6.preheader:    ; preds = %pregion_for_end.i.i.us.5
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %if.end.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6.preheader
  %_local_id_x.i.0.us.us.6 = phi i64 [ %502, %if.end.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6.preheader ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %cmp4.i.i.us.us.6 = icmp sgt i32 %29, %conv.i.i.us.us.6
  br i1 %cmp4.i.i.us.us.6, label %if.then.i.i.us.us.6, label %if.end.i.i.us.us.6

if.then.i.i.us.us.6:                              ; preds = %pregion_for_entry.entry.i.i.us.us.6
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.6
  %493 = load float, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12
  %mul6.i.i.us.us.6 = fmul float %21, %493
  store float %mul6.i.i.us.us.6, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %494 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %if.then.i.i.us.us.6
  %indvars.iv.next.i.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %if.then.i.i.us.us.6 ]
  %495 = phi float [ %501, %for.body.i.i.us.us.6 ], [ %mul6.i.i.us.us.6, %if.then.i.i.us.us.6 ]
  %496 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %492
  %arrayidx12.i.i.us.us.6 = getelementptr inbounds float, float* %7, i64 %496
  %497 = load float, float* %arrayidx12.i.i.us.us.6, align 4, !tbaa !12
  %mul13.i.i.us.us.6 = fmul float %17, %497
  %498 = mul nsw i64 %indvars.iv.next.i.i3.us.us.6, %34
  %499 = add nsw i64 %498, %494
  %arrayidx17.i.i.us.us.6 = getelementptr inbounds float, float* %10, i64 %499
  %500 = load float, float* %arrayidx17.i.i.us.us.6, align 4, !tbaa !12
  %501 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.6, float %500, float %495) #2
  store float %501, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %if.end.i.i.us.us.6.loopexit, label %for.body.i.i.us.us.6, !llvm.loop !21

if.end.i.i.us.us.6.loopexit:                      ; preds = %for.body.i.i.us.us.6
  br label %if.end.i.i.us.us.6

if.end.i.i.us.us.6:                               ; preds = %if.end.i.i.us.us.6.loopexit, %pregion_for_entry.entry.i.i.us.us.6
  %502 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 1
  %exitcond.not.6 = icmp eq i64 %502, 32
  br i1 %exitcond.not.6, label %pregion_for_end.i.i.us.6.loopexit, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !19

pregion_for_end.i.i.us.6.loopexit:                ; preds = %if.end.i.i.us.us.6
  br label %pregion_for_end.i.i.us.6

pregion_for_end.i.i.us.6:                         ; preds = %pregion_for_end.i.i.us.6.loopexit, %pregion_for_end.i.i.us.5
  %503 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %503, 7
  %cmp.i.i.us.7 = icmp sgt i32 %25, %conv2.i.i.us.7
  %mul.i.i.us.7 = mul nsw i32 %29, %conv2.i.i.us.7
  %mul9.i.i.us.7 = mul nsw i32 %33, %conv2.i.i.us.7
  %504 = sext i32 %mul9.i.i.us.7 to i64
  br i1 %cmp.i.i.us.7, label %pregion_for_entry.entry.i.i.us.us.7.preheader, label %_pocl_kernel_gemm.exit

pregion_for_entry.entry.i.i.us.us.7.preheader:    ; preds = %pregion_for_end.i.i.us.6
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %if.end.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7.preheader
  %_local_id_x.i.0.us.us.7 = phi i64 [ %514, %if.end.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7.preheader ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %cmp4.i.i.us.us.7 = icmp sgt i32 %29, %conv.i.i.us.us.7
  br i1 %cmp4.i.i.us.us.7, label %if.then.i.i.us.us.7, label %if.end.i.i.us.us.7

if.then.i.i.us.us.7:                              ; preds = %pregion_for_entry.entry.i.i.us.us.7
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.7
  %505 = load float, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12
  %mul6.i.i.us.us.7 = fmul float %21, %505
  store float %mul6.i.i.us.us.7, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %506 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %if.then.i.i.us.us.7
  %indvars.iv.next.i.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %if.then.i.i.us.us.7 ]
  %507 = phi float [ %513, %for.body.i.i.us.us.7 ], [ %mul6.i.i.us.us.7, %if.then.i.i.us.us.7 ]
  %508 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %504
  %arrayidx12.i.i.us.us.7 = getelementptr inbounds float, float* %7, i64 %508
  %509 = load float, float* %arrayidx12.i.i.us.us.7, align 4, !tbaa !12
  %mul13.i.i.us.us.7 = fmul float %17, %509
  %510 = mul nsw i64 %indvars.iv.next.i.i3.us.us.7, %34
  %511 = add nsw i64 %510, %506
  %arrayidx17.i.i.us.us.7 = getelementptr inbounds float, float* %10, i64 %511
  %512 = load float, float* %arrayidx17.i.i.us.us.7, align 4, !tbaa !12
  %513 = tail call float @llvm.fmuladd.f32(float %mul13.i.i.us.us.7, float %512, float %507) #2
  store float %513, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %if.end.i.i.us.us.7.loopexit, label %for.body.i.i.us.us.7, !llvm.loop !21

if.end.i.i.us.us.7.loopexit:                      ; preds = %for.body.i.i.us.us.7
  br label %if.end.i.i.us.us.7

if.end.i.i.us.us.7:                               ; preds = %if.end.i.i.us.us.7.loopexit, %pregion_for_entry.entry.i.i.us.us.7
  %514 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 1
  %exitcond.not.7 = icmp eq i64 %514, 32
  br i1 %exitcond.not.7, label %_pocl_kernel_gemm.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !19

if.then.i.i.us.7.1:                               ; preds = %if.end.i.i.us.7
  %add.i.i.us.7.1 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.1
  %idxprom.i.i.us.7.1 = sext i32 %add.i.i.us.7.1 to i64
  %arrayidx.i.i.us.7.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.7.1
  %515 = load float, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12
  %mul6.i.i.us.7.1 = fmul float %21, %515
  store float %mul6.i.i.us.7.1, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.1

if.end.i.i.us.7.1:                                ; preds = %if.then.i.i.us.7.1, %if.end.i.i.us.7
  %516 = or i64 %_local_id_x.i.0.us.7, 2
  %add1.i.i.i.us.7.2 = add nuw nsw i64 %516, %mul.i.i.i
  %conv.i.i.us.7.2 = trunc i64 %add1.i.i.i.us.7.2 to i32
  %cmp4.i.i.us.7.2 = icmp sgt i32 %29, %conv.i.i.us.7.2
  br i1 %cmp4.i.i.us.7.2, label %if.then.i.i.us.7.2, label %if.end.i.i.us.7.2

if.then.i.i.us.7.2:                               ; preds = %if.end.i.i.us.7.1
  %add.i.i.us.7.2 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.2
  %idxprom.i.i.us.7.2 = sext i32 %add.i.i.us.7.2 to i64
  %arrayidx.i.i.us.7.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.7.2
  %517 = load float, float* %arrayidx.i.i.us.7.2, align 4, !tbaa !12
  %mul6.i.i.us.7.2 = fmul float %21, %517
  store float %mul6.i.i.us.7.2, float* %arrayidx.i.i.us.7.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.2

if.end.i.i.us.7.2:                                ; preds = %if.then.i.i.us.7.2, %if.end.i.i.us.7.1
  %518 = or i64 %_local_id_x.i.0.us.7, 3
  %add1.i.i.i.us.7.3 = add nuw nsw i64 %518, %mul.i.i.i
  %conv.i.i.us.7.3 = trunc i64 %add1.i.i.i.us.7.3 to i32
  %cmp4.i.i.us.7.3 = icmp sgt i32 %29, %conv.i.i.us.7.3
  br i1 %cmp4.i.i.us.7.3, label %if.then.i.i.us.7.3, label %if.end.i.i.us.7.3

if.then.i.i.us.7.3:                               ; preds = %if.end.i.i.us.7.2
  %add.i.i.us.7.3 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.3
  %idxprom.i.i.us.7.3 = sext i32 %add.i.i.us.7.3 to i64
  %arrayidx.i.i.us.7.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.7.3
  %519 = load float, float* %arrayidx.i.i.us.7.3, align 4, !tbaa !12
  %mul6.i.i.us.7.3 = fmul float %21, %519
  store float %mul6.i.i.us.7.3, float* %arrayidx.i.i.us.7.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.7.3

if.end.i.i.us.7.3:                                ; preds = %if.then.i.i.us.7.3, %if.end.i.i.us.7.2
  %520 = add nuw nsw i64 %_local_id_x.i.0.us.7, 4
  %exitcond34.7.not.3 = icmp eq i64 %520, 32
  br i1 %exitcond34.7.not.3, label %_pocl_kernel_gemm.exit.loopexit238, label %pregion_for_entry.entry.i.i.us.7, !llvm.loop !40

if.then.i.i.us.6.1:                               ; preds = %if.end.i.i.us.6
  %add.i.i.us.6.1 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.1
  %idxprom.i.i.us.6.1 = sext i32 %add.i.i.us.6.1 to i64
  %arrayidx.i.i.us.6.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.6.1
  %521 = load float, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12
  %mul6.i.i.us.6.1 = fmul float %21, %521
  store float %mul6.i.i.us.6.1, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.1

if.end.i.i.us.6.1:                                ; preds = %if.then.i.i.us.6.1, %if.end.i.i.us.6
  %522 = or i64 %_local_id_x.i.0.us.6, 2
  %add1.i.i.i.us.6.2 = add nuw nsw i64 %522, %mul.i.i.i
  %conv.i.i.us.6.2 = trunc i64 %add1.i.i.i.us.6.2 to i32
  %cmp4.i.i.us.6.2 = icmp sgt i32 %29, %conv.i.i.us.6.2
  br i1 %cmp4.i.i.us.6.2, label %if.then.i.i.us.6.2, label %if.end.i.i.us.6.2

if.then.i.i.us.6.2:                               ; preds = %if.end.i.i.us.6.1
  %add.i.i.us.6.2 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.2
  %idxprom.i.i.us.6.2 = sext i32 %add.i.i.us.6.2 to i64
  %arrayidx.i.i.us.6.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.6.2
  %523 = load float, float* %arrayidx.i.i.us.6.2, align 4, !tbaa !12
  %mul6.i.i.us.6.2 = fmul float %21, %523
  store float %mul6.i.i.us.6.2, float* %arrayidx.i.i.us.6.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.2

if.end.i.i.us.6.2:                                ; preds = %if.then.i.i.us.6.2, %if.end.i.i.us.6.1
  %524 = or i64 %_local_id_x.i.0.us.6, 3
  %add1.i.i.i.us.6.3 = add nuw nsw i64 %524, %mul.i.i.i
  %conv.i.i.us.6.3 = trunc i64 %add1.i.i.i.us.6.3 to i32
  %cmp4.i.i.us.6.3 = icmp sgt i32 %29, %conv.i.i.us.6.3
  br i1 %cmp4.i.i.us.6.3, label %if.then.i.i.us.6.3, label %if.end.i.i.us.6.3

if.then.i.i.us.6.3:                               ; preds = %if.end.i.i.us.6.2
  %add.i.i.us.6.3 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.3
  %idxprom.i.i.us.6.3 = sext i32 %add.i.i.us.6.3 to i64
  %arrayidx.i.i.us.6.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.6.3
  %525 = load float, float* %arrayidx.i.i.us.6.3, align 4, !tbaa !12
  %mul6.i.i.us.6.3 = fmul float %21, %525
  store float %mul6.i.i.us.6.3, float* %arrayidx.i.i.us.6.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.6.3

if.end.i.i.us.6.3:                                ; preds = %if.then.i.i.us.6.3, %if.end.i.i.us.6.2
  %526 = add nuw nsw i64 %_local_id_x.i.0.us.6, 4
  %exitcond34.6.not.3 = icmp eq i64 %526, 32
  br i1 %exitcond34.6.not.3, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.6, !llvm.loop !41

if.then.i.i.us.5.1:                               ; preds = %if.end.i.i.us.5
  %add.i.i.us.5.1 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.1
  %idxprom.i.i.us.5.1 = sext i32 %add.i.i.us.5.1 to i64
  %arrayidx.i.i.us.5.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.5.1
  %527 = load float, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12
  %mul6.i.i.us.5.1 = fmul float %21, %527
  store float %mul6.i.i.us.5.1, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.1

if.end.i.i.us.5.1:                                ; preds = %if.then.i.i.us.5.1, %if.end.i.i.us.5
  %528 = or i64 %_local_id_x.i.0.us.5, 2
  %add1.i.i.i.us.5.2 = add nuw nsw i64 %528, %mul.i.i.i
  %conv.i.i.us.5.2 = trunc i64 %add1.i.i.i.us.5.2 to i32
  %cmp4.i.i.us.5.2 = icmp sgt i32 %29, %conv.i.i.us.5.2
  br i1 %cmp4.i.i.us.5.2, label %if.then.i.i.us.5.2, label %if.end.i.i.us.5.2

if.then.i.i.us.5.2:                               ; preds = %if.end.i.i.us.5.1
  %add.i.i.us.5.2 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.2
  %idxprom.i.i.us.5.2 = sext i32 %add.i.i.us.5.2 to i64
  %arrayidx.i.i.us.5.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.5.2
  %529 = load float, float* %arrayidx.i.i.us.5.2, align 4, !tbaa !12
  %mul6.i.i.us.5.2 = fmul float %21, %529
  store float %mul6.i.i.us.5.2, float* %arrayidx.i.i.us.5.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.2

if.end.i.i.us.5.2:                                ; preds = %if.then.i.i.us.5.2, %if.end.i.i.us.5.1
  %530 = or i64 %_local_id_x.i.0.us.5, 3
  %add1.i.i.i.us.5.3 = add nuw nsw i64 %530, %mul.i.i.i
  %conv.i.i.us.5.3 = trunc i64 %add1.i.i.i.us.5.3 to i32
  %cmp4.i.i.us.5.3 = icmp sgt i32 %29, %conv.i.i.us.5.3
  br i1 %cmp4.i.i.us.5.3, label %if.then.i.i.us.5.3, label %if.end.i.i.us.5.3

if.then.i.i.us.5.3:                               ; preds = %if.end.i.i.us.5.2
  %add.i.i.us.5.3 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.3
  %idxprom.i.i.us.5.3 = sext i32 %add.i.i.us.5.3 to i64
  %arrayidx.i.i.us.5.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.5.3
  %531 = load float, float* %arrayidx.i.i.us.5.3, align 4, !tbaa !12
  %mul6.i.i.us.5.3 = fmul float %21, %531
  store float %mul6.i.i.us.5.3, float* %arrayidx.i.i.us.5.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.5.3

if.end.i.i.us.5.3:                                ; preds = %if.then.i.i.us.5.3, %if.end.i.i.us.5.2
  %532 = add nuw nsw i64 %_local_id_x.i.0.us.5, 4
  %exitcond34.5.not.3 = icmp eq i64 %532, 32
  br i1 %exitcond34.5.not.3, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.5, !llvm.loop !42

if.then.i.i.us.4.1:                               ; preds = %if.end.i.i.us.4
  %add.i.i.us.4.1 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.1
  %idxprom.i.i.us.4.1 = sext i32 %add.i.i.us.4.1 to i64
  %arrayidx.i.i.us.4.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.4.1
  %533 = load float, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12
  %mul6.i.i.us.4.1 = fmul float %21, %533
  store float %mul6.i.i.us.4.1, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.1

if.end.i.i.us.4.1:                                ; preds = %if.then.i.i.us.4.1, %if.end.i.i.us.4
  %534 = or i64 %_local_id_x.i.0.us.4, 2
  %add1.i.i.i.us.4.2 = add nuw nsw i64 %534, %mul.i.i.i
  %conv.i.i.us.4.2 = trunc i64 %add1.i.i.i.us.4.2 to i32
  %cmp4.i.i.us.4.2 = icmp sgt i32 %29, %conv.i.i.us.4.2
  br i1 %cmp4.i.i.us.4.2, label %if.then.i.i.us.4.2, label %if.end.i.i.us.4.2

if.then.i.i.us.4.2:                               ; preds = %if.end.i.i.us.4.1
  %add.i.i.us.4.2 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.2
  %idxprom.i.i.us.4.2 = sext i32 %add.i.i.us.4.2 to i64
  %arrayidx.i.i.us.4.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.4.2
  %535 = load float, float* %arrayidx.i.i.us.4.2, align 4, !tbaa !12
  %mul6.i.i.us.4.2 = fmul float %21, %535
  store float %mul6.i.i.us.4.2, float* %arrayidx.i.i.us.4.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.2

if.end.i.i.us.4.2:                                ; preds = %if.then.i.i.us.4.2, %if.end.i.i.us.4.1
  %536 = or i64 %_local_id_x.i.0.us.4, 3
  %add1.i.i.i.us.4.3 = add nuw nsw i64 %536, %mul.i.i.i
  %conv.i.i.us.4.3 = trunc i64 %add1.i.i.i.us.4.3 to i32
  %cmp4.i.i.us.4.3 = icmp sgt i32 %29, %conv.i.i.us.4.3
  br i1 %cmp4.i.i.us.4.3, label %if.then.i.i.us.4.3, label %if.end.i.i.us.4.3

if.then.i.i.us.4.3:                               ; preds = %if.end.i.i.us.4.2
  %add.i.i.us.4.3 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.3
  %idxprom.i.i.us.4.3 = sext i32 %add.i.i.us.4.3 to i64
  %arrayidx.i.i.us.4.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.4.3
  %537 = load float, float* %arrayidx.i.i.us.4.3, align 4, !tbaa !12
  %mul6.i.i.us.4.3 = fmul float %21, %537
  store float %mul6.i.i.us.4.3, float* %arrayidx.i.i.us.4.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.4.3

if.end.i.i.us.4.3:                                ; preds = %if.then.i.i.us.4.3, %if.end.i.i.us.4.2
  %538 = add nuw nsw i64 %_local_id_x.i.0.us.4, 4
  %exitcond34.4.not.3 = icmp eq i64 %538, 32
  br i1 %exitcond34.4.not.3, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.4, !llvm.loop !43

if.then.i.i.us.3.1:                               ; preds = %if.end.i.i.us.3
  %add.i.i.us.3.1 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.1
  %idxprom.i.i.us.3.1 = sext i32 %add.i.i.us.3.1 to i64
  %arrayidx.i.i.us.3.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.3.1
  %539 = load float, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12
  %mul6.i.i.us.3.1 = fmul float %21, %539
  store float %mul6.i.i.us.3.1, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.1

if.end.i.i.us.3.1:                                ; preds = %if.then.i.i.us.3.1, %if.end.i.i.us.3
  %540 = or i64 %_local_id_x.i.0.us.3, 2
  %add1.i.i.i.us.3.2 = add nuw nsw i64 %540, %mul.i.i.i
  %conv.i.i.us.3.2 = trunc i64 %add1.i.i.i.us.3.2 to i32
  %cmp4.i.i.us.3.2 = icmp sgt i32 %29, %conv.i.i.us.3.2
  br i1 %cmp4.i.i.us.3.2, label %if.then.i.i.us.3.2, label %if.end.i.i.us.3.2

if.then.i.i.us.3.2:                               ; preds = %if.end.i.i.us.3.1
  %add.i.i.us.3.2 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.2
  %idxprom.i.i.us.3.2 = sext i32 %add.i.i.us.3.2 to i64
  %arrayidx.i.i.us.3.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.3.2
  %541 = load float, float* %arrayidx.i.i.us.3.2, align 4, !tbaa !12
  %mul6.i.i.us.3.2 = fmul float %21, %541
  store float %mul6.i.i.us.3.2, float* %arrayidx.i.i.us.3.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.2

if.end.i.i.us.3.2:                                ; preds = %if.then.i.i.us.3.2, %if.end.i.i.us.3.1
  %542 = or i64 %_local_id_x.i.0.us.3, 3
  %add1.i.i.i.us.3.3 = add nuw nsw i64 %542, %mul.i.i.i
  %conv.i.i.us.3.3 = trunc i64 %add1.i.i.i.us.3.3 to i32
  %cmp4.i.i.us.3.3 = icmp sgt i32 %29, %conv.i.i.us.3.3
  br i1 %cmp4.i.i.us.3.3, label %if.then.i.i.us.3.3, label %if.end.i.i.us.3.3

if.then.i.i.us.3.3:                               ; preds = %if.end.i.i.us.3.2
  %add.i.i.us.3.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.3
  %idxprom.i.i.us.3.3 = sext i32 %add.i.i.us.3.3 to i64
  %arrayidx.i.i.us.3.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.3.3
  %543 = load float, float* %arrayidx.i.i.us.3.3, align 4, !tbaa !12
  %mul6.i.i.us.3.3 = fmul float %21, %543
  store float %mul6.i.i.us.3.3, float* %arrayidx.i.i.us.3.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3.3

if.end.i.i.us.3.3:                                ; preds = %if.then.i.i.us.3.3, %if.end.i.i.us.3.2
  %544 = add nuw nsw i64 %_local_id_x.i.0.us.3, 4
  %exitcond34.3.not.3 = icmp eq i64 %544, 32
  br i1 %exitcond34.3.not.3, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.3, !llvm.loop !44

if.then.i.i.us.2.1:                               ; preds = %if.end.i.i.us.2
  %add.i.i.us.2.1 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.1
  %idxprom.i.i.us.2.1 = sext i32 %add.i.i.us.2.1 to i64
  %arrayidx.i.i.us.2.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.2.1
  %545 = load float, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12
  %mul6.i.i.us.2.1 = fmul float %21, %545
  store float %mul6.i.i.us.2.1, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.1

if.end.i.i.us.2.1:                                ; preds = %if.then.i.i.us.2.1, %if.end.i.i.us.2
  %546 = or i64 %_local_id_x.i.0.us.2, 2
  %add1.i.i.i.us.2.2 = add nuw nsw i64 %546, %mul.i.i.i
  %conv.i.i.us.2.2 = trunc i64 %add1.i.i.i.us.2.2 to i32
  %cmp4.i.i.us.2.2 = icmp sgt i32 %29, %conv.i.i.us.2.2
  br i1 %cmp4.i.i.us.2.2, label %if.then.i.i.us.2.2, label %if.end.i.i.us.2.2

if.then.i.i.us.2.2:                               ; preds = %if.end.i.i.us.2.1
  %add.i.i.us.2.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.2
  %idxprom.i.i.us.2.2 = sext i32 %add.i.i.us.2.2 to i64
  %arrayidx.i.i.us.2.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.2.2
  %547 = load float, float* %arrayidx.i.i.us.2.2, align 4, !tbaa !12
  %mul6.i.i.us.2.2 = fmul float %21, %547
  store float %mul6.i.i.us.2.2, float* %arrayidx.i.i.us.2.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.2

if.end.i.i.us.2.2:                                ; preds = %if.then.i.i.us.2.2, %if.end.i.i.us.2.1
  %548 = or i64 %_local_id_x.i.0.us.2, 3
  %add1.i.i.i.us.2.3 = add nuw nsw i64 %548, %mul.i.i.i
  %conv.i.i.us.2.3 = trunc i64 %add1.i.i.i.us.2.3 to i32
  %cmp4.i.i.us.2.3 = icmp sgt i32 %29, %conv.i.i.us.2.3
  br i1 %cmp4.i.i.us.2.3, label %if.then.i.i.us.2.3, label %if.end.i.i.us.2.3

if.then.i.i.us.2.3:                               ; preds = %if.end.i.i.us.2.2
  %add.i.i.us.2.3 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.3
  %idxprom.i.i.us.2.3 = sext i32 %add.i.i.us.2.3 to i64
  %arrayidx.i.i.us.2.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.2.3
  %549 = load float, float* %arrayidx.i.i.us.2.3, align 4, !tbaa !12
  %mul6.i.i.us.2.3 = fmul float %21, %549
  store float %mul6.i.i.us.2.3, float* %arrayidx.i.i.us.2.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2.3

if.end.i.i.us.2.3:                                ; preds = %if.then.i.i.us.2.3, %if.end.i.i.us.2.2
  %550 = add nuw nsw i64 %_local_id_x.i.0.us.2, 4
  %exitcond34.2.not.3 = icmp eq i64 %550, 32
  br i1 %exitcond34.2.not.3, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.2, !llvm.loop !45

if.then.i.i.us.1.1:                               ; preds = %if.end.i.i.us.1
  %add.i.i.us.1.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.1
  %idxprom.i.i.us.1.1 = sext i32 %add.i.i.us.1.1 to i64
  %arrayidx.i.i.us.1.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.1.1
  %551 = load float, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12
  %mul6.i.i.us.1.1 = fmul float %21, %551
  store float %mul6.i.i.us.1.1, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.1

if.end.i.i.us.1.1:                                ; preds = %if.then.i.i.us.1.1, %if.end.i.i.us.1
  %552 = or i64 %_local_id_x.i.0.us.1, 2
  %add1.i.i.i.us.1.2 = add nuw nsw i64 %552, %mul.i.i.i
  %conv.i.i.us.1.2 = trunc i64 %add1.i.i.i.us.1.2 to i32
  %cmp4.i.i.us.1.2 = icmp sgt i32 %29, %conv.i.i.us.1.2
  br i1 %cmp4.i.i.us.1.2, label %if.then.i.i.us.1.2, label %if.end.i.i.us.1.2

if.then.i.i.us.1.2:                               ; preds = %if.end.i.i.us.1.1
  %add.i.i.us.1.2 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.2
  %idxprom.i.i.us.1.2 = sext i32 %add.i.i.us.1.2 to i64
  %arrayidx.i.i.us.1.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.1.2
  %553 = load float, float* %arrayidx.i.i.us.1.2, align 4, !tbaa !12
  %mul6.i.i.us.1.2 = fmul float %21, %553
  store float %mul6.i.i.us.1.2, float* %arrayidx.i.i.us.1.2, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.2

if.end.i.i.us.1.2:                                ; preds = %if.then.i.i.us.1.2, %if.end.i.i.us.1.1
  %554 = or i64 %_local_id_x.i.0.us.1, 3
  %add1.i.i.i.us.1.3 = add nuw nsw i64 %554, %mul.i.i.i
  %conv.i.i.us.1.3 = trunc i64 %add1.i.i.i.us.1.3 to i32
  %cmp4.i.i.us.1.3 = icmp sgt i32 %29, %conv.i.i.us.1.3
  br i1 %cmp4.i.i.us.1.3, label %if.then.i.i.us.1.3, label %if.end.i.i.us.1.3

if.then.i.i.us.1.3:                               ; preds = %if.end.i.i.us.1.2
  %add.i.i.us.1.3 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.3
  %idxprom.i.i.us.1.3 = sext i32 %add.i.i.us.1.3 to i64
  %arrayidx.i.i.us.1.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.1.3
  %555 = load float, float* %arrayidx.i.i.us.1.3, align 4, !tbaa !12
  %mul6.i.i.us.1.3 = fmul float %21, %555
  store float %mul6.i.i.us.1.3, float* %arrayidx.i.i.us.1.3, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1.3

if.end.i.i.us.1.3:                                ; preds = %if.then.i.i.us.1.3, %if.end.i.i.us.1.2
  %556 = add nuw nsw i64 %_local_id_x.i.0.us.1, 4
  %exitcond34.1.not.3 = icmp eq i64 %556, 32
  br i1 %exitcond34.1.not.3, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.1, !llvm.loop !46

if.then.i.i.us.1214:                              ; preds = %if.end.i.i.us
  %add.i.i.us.1210 = add nsw i32 %mul.i.i.us, %conv.i.i.us.1207
  %idxprom.i.i.us.1211 = sext i32 %add.i.i.us.1210 to i64
  %arrayidx.i.i.us.1212 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.1211
  %557 = load float, float* %arrayidx.i.i.us.1212, align 4, !tbaa !12
  %mul6.i.i.us.1213 = fmul float %21, %557
  store float %mul6.i.i.us.1213, float* %arrayidx.i.i.us.1212, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.1215

if.end.i.i.us.1215:                               ; preds = %if.then.i.i.us.1214, %if.end.i.i.us
  %558 = or i64 %_local_id_x.i.0.us, 2
  %add1.i.i.i.us.2217 = add nuw nsw i64 %558, %mul.i.i.i
  %conv.i.i.us.2218 = trunc i64 %add1.i.i.i.us.2217 to i32
  %cmp4.i.i.us.2219 = icmp sgt i32 %29, %conv.i.i.us.2218
  br i1 %cmp4.i.i.us.2219, label %if.then.i.i.us.2225, label %if.end.i.i.us.2226

if.then.i.i.us.2225:                              ; preds = %if.end.i.i.us.1215
  %add.i.i.us.2221 = add nsw i32 %mul.i.i.us, %conv.i.i.us.2218
  %idxprom.i.i.us.2222 = sext i32 %add.i.i.us.2221 to i64
  %arrayidx.i.i.us.2223 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.2222
  %559 = load float, float* %arrayidx.i.i.us.2223, align 4, !tbaa !12
  %mul6.i.i.us.2224 = fmul float %21, %559
  store float %mul6.i.i.us.2224, float* %arrayidx.i.i.us.2223, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.2226

if.end.i.i.us.2226:                               ; preds = %if.then.i.i.us.2225, %if.end.i.i.us.1215
  %560 = or i64 %_local_id_x.i.0.us, 3
  %add1.i.i.i.us.3228 = add nuw nsw i64 %560, %mul.i.i.i
  %conv.i.i.us.3229 = trunc i64 %add1.i.i.i.us.3228 to i32
  %cmp4.i.i.us.3230 = icmp sgt i32 %29, %conv.i.i.us.3229
  br i1 %cmp4.i.i.us.3230, label %if.then.i.i.us.3236, label %if.end.i.i.us.3237

if.then.i.i.us.3236:                              ; preds = %if.end.i.i.us.2226
  %add.i.i.us.3232 = add nsw i32 %mul.i.i.us, %conv.i.i.us.3229
  %idxprom.i.i.us.3233 = sext i32 %add.i.i.us.3232 to i64
  %arrayidx.i.i.us.3234 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.3233
  %561 = load float, float* %arrayidx.i.i.us.3234, align 4, !tbaa !12
  %mul6.i.i.us.3235 = fmul float %21, %561
  store float %mul6.i.i.us.3235, float* %arrayidx.i.i.us.3234, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.i.i.us.3237

if.end.i.i.us.3237:                               ; preds = %if.then.i.i.us.3236, %if.end.i.i.us.2226
  %562 = add nuw nsw i64 %_local_id_x.i.0.us, 4
  %exitcond34.not.3 = icmp eq i64 %562, 32
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
!5 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"DATA_TYPE", !"int", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"float", !"float", !"int", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!10 = !{!"a", !"b", !"c", !"alpha", !"beta", !"ni", !"nj", !"nk"}
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
