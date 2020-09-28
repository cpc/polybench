; ModuleID = './KK/KIGILFKIOCMFGODNJKKCPJJIDHNBMKHCFFGPF/reduce_kernel/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_reduce_kernel(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, float %3, i32 %4, i32 %5, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %6, i64 %7, i64 %8, i64 %9) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
pregion_for_entry.pregion_for_init.i:
  %mul.i.i = shl i64 %7, 5
  %mul3.i.i = shl i64 %8, 3
  %10 = tail call float @llvm.sqrt.f32(float %3) #5
  %conv2.i = trunc i64 %mul3.i.i to i32
  %cmp.i = icmp slt i32 %conv2.i, %5
  %mul.i = mul nsw i32 %conv2.i, %4
  br i1 %cmp.i, label %vector.scevcheck, label %pregion_for_end.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i
  %11 = trunc i64 %8 to i32
  %12 = mul i32 %11, %4
  %13 = shl i32 %12, 3
  %14 = trunc i64 %7 to i32
  %15 = shl i32 %14, 5
  %16 = add i32 %13, %15
  %17 = icmp sgt i32 %16, 2147483616
  br i1 %17, label %pregion_for_entry.entry.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.us.preheader:           ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %18 = trunc i64 %7 to i32
  %19 = shl i32 %18, 5
  %20 = sext i32 %19 to i64
  %scevgep = getelementptr float, float* %0, i64 %20
  %21 = add nsw i64 %20, 32
  %scevgep4 = getelementptr float, float* %0, i64 %21
  %22 = trunc i64 %8 to i32
  %23 = mul i32 %22, %4
  %24 = shl i32 %23, 3
  %25 = add i32 %24, %19
  %26 = sext i32 %25 to i64
  %scevgep6 = getelementptr float, float* %2, i64 %26
  %27 = add nsw i64 %26, 32
  %scevgep8 = getelementptr float, float* %2, i64 %27
  %scevgep10 = getelementptr float, float* %1, i64 %20
  %scevgep12 = getelementptr float, float* %1, i64 %21
  %bound0 = icmp ult float* %scevgep, %scevgep8
  %bound1 = icmp ult float* %scevgep6, %scevgep4
  %found.conflict = and i1 %bound0, %bound1
  %bound014 = icmp ult float* %scevgep10, %scevgep8
  %bound115 = icmp ult float* %scevgep6, %scevgep12
  %found.conflict16 = and i1 %bound014, %bound115
  %conflict.rdx = or i1 %found.conflict, %found.conflict16
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert17 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat18 = shufflevector <8 x i32> %broadcast.splatinsert17, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert21 = insertelement <8 x float> undef, float %10, i32 0
  %broadcast.splat22 = shufflevector <8 x float> %broadcast.splatinsert21, <8 x float> undef, <8 x i32> zeroinitializer
  %28 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %29 = trunc <8 x i64> %28 to <8 x i32>
  %30 = icmp sgt <8 x i32> %broadcast.splat18, %29
  %31 = extractelement <8 x i64> %28, i32 0
  %32 = shl i64 %31, 32
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds float, float* %0, i64 %33
  %35 = bitcast float* %34 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %35, i32 4, <8 x i1> %30, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %36 = extractelement <8 x i32> %29, i32 0
  %37 = add nsw i32 %mul.i, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %2, i64 %38
  %40 = bitcast float* %39 to <8 x float>*
  %wide.masked.load19 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %40, i32 4, <8 x i1> %30, <8 x float> undef), !tbaa !12, !alias.scope !19
  %41 = fsub <8 x float> %wide.masked.load19, %wide.masked.load
  %42 = bitcast float* %39 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %41, <8 x float>* %42, i32 4, <8 x i1> %30), !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %43 = getelementptr inbounds float, float* %1, i64 %33
  %44 = bitcast float* %43 to <8 x float>*
  %wide.masked.load20 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %44, i32 4, <8 x i1> %30, <8 x float> undef), !tbaa !12, !alias.scope !24, !noalias !19
  %45 = fmul <8 x float> %broadcast.splat22, %wide.masked.load20
  %46 = fdiv <8 x float> %41, %45, !fpmath !26
  %47 = bitcast float* %39 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %46, <8 x float>* %47, i32 4, <8 x i1> %30), !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %48 = or <8 x i64> %broadcast.splat, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %49 = trunc <8 x i64> %48 to <8 x i32>
  %50 = icmp sgt <8 x i32> %broadcast.splat18, %49
  %51 = extractelement <8 x i64> %48, i32 0
  %52 = shl i64 %51, 32
  %53 = ashr exact i64 %52, 32
  %54 = getelementptr inbounds float, float* %0, i64 %53
  %55 = bitcast float* %54 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %55, i32 4, <8 x i1> %50, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %56 = extractelement <8 x i32> %49, i32 0
  %57 = add nsw i32 %mul.i, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %2, i64 %58
  %60 = bitcast float* %59 to <8 x float>*
  %wide.masked.load19.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %60, i32 4, <8 x i1> %50, <8 x float> undef), !tbaa !12, !alias.scope !19
  %61 = fsub <8 x float> %wide.masked.load19.1, %wide.masked.load.1
  %62 = bitcast float* %59 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %61, <8 x float>* %62, i32 4, <8 x i1> %50), !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %63 = getelementptr inbounds float, float* %1, i64 %53
  %64 = bitcast float* %63 to <8 x float>*
  %wide.masked.load20.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %64, i32 4, <8 x i1> %50, <8 x float> undef), !tbaa !12, !alias.scope !24, !noalias !19
  %65 = fmul <8 x float> %broadcast.splat22, %wide.masked.load20.1
  %66 = fdiv <8 x float> %61, %65, !fpmath !26
  %67 = bitcast float* %59 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %66, <8 x float>* %67, i32 4, <8 x i1> %50), !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %68 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %69 = trunc <8 x i64> %68 to <8 x i32>
  %70 = icmp sgt <8 x i32> %broadcast.splat18, %69
  %71 = extractelement <8 x i64> %68, i32 0
  %72 = shl i64 %71, 32
  %73 = ashr exact i64 %72, 32
  %74 = getelementptr inbounds float, float* %0, i64 %73
  %75 = bitcast float* %74 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %75, i32 4, <8 x i1> %70, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %76 = extractelement <8 x i32> %69, i32 0
  %77 = add nsw i32 %mul.i, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %2, i64 %78
  %80 = bitcast float* %79 to <8 x float>*
  %wide.masked.load19.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %80, i32 4, <8 x i1> %70, <8 x float> undef), !tbaa !12, !alias.scope !19
  %81 = fsub <8 x float> %wide.masked.load19.2, %wide.masked.load.2
  %82 = bitcast float* %79 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %81, <8 x float>* %82, i32 4, <8 x i1> %70), !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %83 = getelementptr inbounds float, float* %1, i64 %73
  %84 = bitcast float* %83 to <8 x float>*
  %wide.masked.load20.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %84, i32 4, <8 x i1> %70, <8 x float> undef), !tbaa !12, !alias.scope !24, !noalias !19
  %85 = fmul <8 x float> %broadcast.splat22, %wide.masked.load20.2
  %86 = fdiv <8 x float> %81, %85, !fpmath !26
  %87 = bitcast float* %79 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %86, <8 x float>* %87, i32 4, <8 x i1> %70), !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %88 = or <8 x i64> %broadcast.splat, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %89 = trunc <8 x i64> %88 to <8 x i32>
  %90 = icmp sgt <8 x i32> %broadcast.splat18, %89
  %91 = extractelement <8 x i64> %88, i32 0
  %92 = shl i64 %91, 32
  %93 = ashr exact i64 %92, 32
  %94 = getelementptr inbounds float, float* %0, i64 %93
  %95 = bitcast float* %94 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %95, i32 4, <8 x i1> %90, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %96 = extractelement <8 x i32> %89, i32 0
  %97 = add nsw i32 %mul.i, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %2, i64 %98
  %100 = bitcast float* %99 to <8 x float>*
  %wide.masked.load19.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %100, i32 4, <8 x i1> %90, <8 x float> undef), !tbaa !12, !alias.scope !19
  %101 = fsub <8 x float> %wide.masked.load19.3, %wide.masked.load.3
  %102 = bitcast float* %99 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %101, <8 x float>* %102, i32 4, <8 x i1> %90), !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %103 = getelementptr inbounds float, float* %1, i64 %93
  %104 = bitcast float* %103 to <8 x float>*
  %wide.masked.load20.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %104, i32 4, <8 x i1> %90, <8 x float> undef), !tbaa !12, !alias.scope !24, !noalias !19
  %105 = fmul <8 x float> %broadcast.splat22, %wide.masked.load20.3
  %106 = fdiv <8 x float> %101, %105, !fpmath !26
  %107 = bitcast float* %99 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %106, <8 x float>* %107, i32 4, <8 x i1> %90), !tbaa !12, !alias.scope !19, !llvm.access.group !21
  br label %pregion_for_end.i

pregion_for_entry.entry.i.us:                     ; preds = %if.end.r_exit.i.us.1369, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.us.preheader ], [ %829, %if.end.r_exit.i.us.1369 ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp4.i.us = icmp slt i32 %conv.i.us, %4
  br i1 %cmp4.i.us, label %if.then.i.us, label %if.end.r_exit.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %sext.i.us = shl i64 %add1.i.i.us, 32
  %idxprom.i.us = ashr exact i64 %sext.i.us, 32
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %idxprom.i.us
  %108 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %add.i.us = add nsw i32 %mul.i, %conv.i.us
  %idxprom6.i.us = sext i32 %add.i.us to i64
  %arrayidx7.i.us = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us
  %109 = load float, float* %arrayidx7.i.us, align 4, !tbaa !12
  %sub.i.us = fsub float %109, %108
  store float %sub.i.us, float* %arrayidx7.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us = getelementptr inbounds float, float* %1, i64 %idxprom.i.us
  %110 = load float, float* %arrayidx10.i.us, align 4, !tbaa !12
  %mul11.i.us = fmul float %10, %110
  %div.i.us = fdiv float %sub.i.us, %mul11.i.us, !fpmath !26
  store float %div.i.us, float* %arrayidx7.i.us, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us

if.end.r_exit.i.us:                               ; preds = %if.then.i.us, %pregion_for_entry.entry.i.us
  %111 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1354 = add nuw nsw i64 %111, %mul.i.i
  %conv.i.us.1355 = trunc i64 %add1.i.i.us.1354 to i32
  %cmp4.i.us.1356 = icmp slt i32 %conv.i.us.1355, %4
  br i1 %cmp4.i.us.1356, label %if.then.i.us.1368, label %if.end.r_exit.i.us.1369

pregion_for_end.i.loopexit:                       ; preds = %if.end.r_exit.i.us.1369
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %pregion_for_end.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i
  %112 = trunc i64 %mul3.i.i to i32
  %conv2.i.1 = or i32 %112, 1
  %cmp.i.1 = icmp slt i32 %conv2.i.1, %5
  %mul.i.1 = mul nsw i32 %conv2.i.1, %4
  br i1 %cmp.i.1, label %vector.scevcheck30, label %pregion_for_end.i.1

vector.scevcheck30:                               ; preds = %pregion_for_end.i
  %113 = mul i32 %conv2.i.1, %4
  %114 = trunc i64 %7 to i32
  %115 = shl i32 %114, 5
  %116 = add i32 %113, %115
  %117 = icmp sgt i32 %116, 2147483616
  br i1 %117, label %pregion_for_entry.entry.i.us.1.preheader, label %vector.memcheck52

pregion_for_entry.entry.i.us.1.preheader:         ; preds = %vector.memcheck52, %vector.scevcheck30
  br label %pregion_for_entry.entry.i.us.1

vector.memcheck52:                                ; preds = %vector.scevcheck30
  %118 = trunc i64 %7 to i32
  %119 = shl i32 %118, 5
  %120 = sext i32 %119 to i64
  %scevgep32 = getelementptr float, float* %0, i64 %120
  %121 = add nsw i64 %120, 32
  %scevgep34 = getelementptr float, float* %0, i64 %121
  %122 = mul i32 %conv2.i.1, %4
  %123 = add i32 %122, %119
  %124 = sext i32 %123 to i64
  %scevgep36 = getelementptr float, float* %2, i64 %124
  %125 = add nsw i64 %124, 32
  %scevgep38 = getelementptr float, float* %2, i64 %125
  %scevgep40 = getelementptr float, float* %1, i64 %120
  %scevgep42 = getelementptr float, float* %1, i64 %121
  %bound044 = icmp ult float* %scevgep32, %scevgep38
  %bound145 = icmp ult float* %scevgep36, %scevgep34
  %found.conflict46 = and i1 %bound044, %bound145
  %bound047 = icmp ult float* %scevgep40, %scevgep38
  %bound148 = icmp ult float* %scevgep36, %scevgep42
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx50 = or i1 %found.conflict46, %found.conflict49
  br i1 %conflict.rdx50, label %pregion_for_entry.entry.i.us.1.preheader, label %vector.ph53

vector.ph53:                                      ; preds = %vector.memcheck52
  %broadcast.splatinsert60 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat61 = shufflevector <8 x i64> %broadcast.splatinsert60, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat63 = shufflevector <8 x i32> %broadcast.splatinsert62, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <8 x float> undef, float %10, i32 0
  %broadcast.splat68 = shufflevector <8 x float> %broadcast.splatinsert67, <8 x float> undef, <8 x i32> zeroinitializer
  %126 = or <8 x i64> %broadcast.splat61, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %127 = trunc <8 x i64> %126 to <8 x i32>
  %128 = icmp sgt <8 x i32> %broadcast.splat63, %127
  %129 = extractelement <8 x i64> %126, i32 0
  %130 = shl i64 %129, 32
  %131 = ashr exact i64 %130, 32
  %132 = getelementptr inbounds float, float* %0, i64 %131
  %133 = bitcast float* %132 to <8 x float>*
  %wide.masked.load64 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %133, i32 4, <8 x i1> %128, <8 x float> undef), !tbaa !12, !alias.scope !27, !noalias !30
  %134 = extractelement <8 x i32> %127, i32 0
  %135 = add nsw i32 %mul.i.1, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %2, i64 %136
  %138 = bitcast float* %137 to <8 x float>*
  %wide.masked.load65 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %138, i32 4, <8 x i1> %128, <8 x float> undef), !tbaa !12, !alias.scope !30
  %139 = fsub <8 x float> %wide.masked.load65, %wide.masked.load64
  %140 = bitcast float* %137 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %139, <8 x float>* %140, i32 4, <8 x i1> %128), !tbaa !12, !alias.scope !30, !llvm.access.group !21
  %141 = getelementptr inbounds float, float* %1, i64 %131
  %142 = bitcast float* %141 to <8 x float>*
  %wide.masked.load66 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %142, i32 4, <8 x i1> %128, <8 x float> undef), !tbaa !12, !alias.scope !32, !noalias !30
  %143 = fmul <8 x float> %broadcast.splat68, %wide.masked.load66
  %144 = fdiv <8 x float> %139, %143, !fpmath !26
  %145 = bitcast float* %137 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %144, <8 x float>* %145, i32 4, <8 x i1> %128), !tbaa !12, !alias.scope !30, !llvm.access.group !21
  %146 = or <8 x i64> %broadcast.splat61, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %147 = trunc <8 x i64> %146 to <8 x i32>
  %148 = icmp sgt <8 x i32> %broadcast.splat63, %147
  %149 = extractelement <8 x i64> %146, i32 0
  %150 = shl i64 %149, 32
  %151 = ashr exact i64 %150, 32
  %152 = getelementptr inbounds float, float* %0, i64 %151
  %153 = bitcast float* %152 to <8 x float>*
  %wide.masked.load64.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %153, i32 4, <8 x i1> %148, <8 x float> undef), !tbaa !12, !alias.scope !27, !noalias !30
  %154 = extractelement <8 x i32> %147, i32 0
  %155 = add nsw i32 %mul.i.1, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %2, i64 %156
  %158 = bitcast float* %157 to <8 x float>*
  %wide.masked.load65.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %158, i32 4, <8 x i1> %148, <8 x float> undef), !tbaa !12, !alias.scope !30
  %159 = fsub <8 x float> %wide.masked.load65.1, %wide.masked.load64.1
  %160 = bitcast float* %157 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %159, <8 x float>* %160, i32 4, <8 x i1> %148), !tbaa !12, !alias.scope !30, !llvm.access.group !21
  %161 = getelementptr inbounds float, float* %1, i64 %151
  %162 = bitcast float* %161 to <8 x float>*
  %wide.masked.load66.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %162, i32 4, <8 x i1> %148, <8 x float> undef), !tbaa !12, !alias.scope !32, !noalias !30
  %163 = fmul <8 x float> %broadcast.splat68, %wide.masked.load66.1
  %164 = fdiv <8 x float> %159, %163, !fpmath !26
  %165 = bitcast float* %157 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %164, <8 x float>* %165, i32 4, <8 x i1> %148), !tbaa !12, !alias.scope !30, !llvm.access.group !21
  %166 = or <8 x i64> %broadcast.splat61, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %167 = trunc <8 x i64> %166 to <8 x i32>
  %168 = icmp sgt <8 x i32> %broadcast.splat63, %167
  %169 = extractelement <8 x i64> %166, i32 0
  %170 = shl i64 %169, 32
  %171 = ashr exact i64 %170, 32
  %172 = getelementptr inbounds float, float* %0, i64 %171
  %173 = bitcast float* %172 to <8 x float>*
  %wide.masked.load64.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %173, i32 4, <8 x i1> %168, <8 x float> undef), !tbaa !12, !alias.scope !27, !noalias !30
  %174 = extractelement <8 x i32> %167, i32 0
  %175 = add nsw i32 %mul.i.1, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %2, i64 %176
  %178 = bitcast float* %177 to <8 x float>*
  %wide.masked.load65.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %178, i32 4, <8 x i1> %168, <8 x float> undef), !tbaa !12, !alias.scope !30
  %179 = fsub <8 x float> %wide.masked.load65.2, %wide.masked.load64.2
  %180 = bitcast float* %177 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %179, <8 x float>* %180, i32 4, <8 x i1> %168), !tbaa !12, !alias.scope !30, !llvm.access.group !21
  %181 = getelementptr inbounds float, float* %1, i64 %171
  %182 = bitcast float* %181 to <8 x float>*
  %wide.masked.load66.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %182, i32 4, <8 x i1> %168, <8 x float> undef), !tbaa !12, !alias.scope !32, !noalias !30
  %183 = fmul <8 x float> %broadcast.splat68, %wide.masked.load66.2
  %184 = fdiv <8 x float> %179, %183, !fpmath !26
  %185 = bitcast float* %177 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %184, <8 x float>* %185, i32 4, <8 x i1> %168), !tbaa !12, !alias.scope !30, !llvm.access.group !21
  %186 = or <8 x i64> %broadcast.splat61, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %187 = trunc <8 x i64> %186 to <8 x i32>
  %188 = icmp sgt <8 x i32> %broadcast.splat63, %187
  %189 = extractelement <8 x i64> %186, i32 0
  %190 = shl i64 %189, 32
  %191 = ashr exact i64 %190, 32
  %192 = getelementptr inbounds float, float* %0, i64 %191
  %193 = bitcast float* %192 to <8 x float>*
  %wide.masked.load64.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %193, i32 4, <8 x i1> %188, <8 x float> undef), !tbaa !12, !alias.scope !27, !noalias !30
  %194 = extractelement <8 x i32> %187, i32 0
  %195 = add nsw i32 %mul.i.1, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %2, i64 %196
  %198 = bitcast float* %197 to <8 x float>*
  %wide.masked.load65.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %198, i32 4, <8 x i1> %188, <8 x float> undef), !tbaa !12, !alias.scope !30
  %199 = fsub <8 x float> %wide.masked.load65.3, %wide.masked.load64.3
  %200 = bitcast float* %197 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %199, <8 x float>* %200, i32 4, <8 x i1> %188), !tbaa !12, !alias.scope !30, !llvm.access.group !21
  %201 = getelementptr inbounds float, float* %1, i64 %191
  %202 = bitcast float* %201 to <8 x float>*
  %wide.masked.load66.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %202, i32 4, <8 x i1> %188, <8 x float> undef), !tbaa !12, !alias.scope !32, !noalias !30
  %203 = fmul <8 x float> %broadcast.splat68, %wide.masked.load66.3
  %204 = fdiv <8 x float> %199, %203, !fpmath !26
  %205 = bitcast float* %197 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %204, <8 x float>* %205, i32 4, <8 x i1> %188), !tbaa !12, !alias.scope !30, !llvm.access.group !21
  br label %pregion_for_end.i.1

pregion_for_entry.entry.i.us.1:                   ; preds = %if.end.r_exit.i.us.1.1, %pregion_for_entry.entry.i.us.1.preheader
  %_local_id_x.0.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.us.1.preheader ], [ %825, %if.end.r_exit.i.us.1.1 ]
  %add1.i.i.us.1 = add nuw nsw i64 %_local_id_x.0.us.1, %mul.i.i
  %conv.i.us.1 = trunc i64 %add1.i.i.us.1 to i32
  %cmp4.i.us.1 = icmp slt i32 %conv.i.us.1, %4
  br i1 %cmp4.i.us.1, label %if.then.i.us.1, label %if.end.r_exit.i.us.1

if.then.i.us.1:                                   ; preds = %pregion_for_entry.entry.i.us.1
  %sext.i.us.1 = shl i64 %add1.i.i.us.1, 32
  %idxprom.i.us.1 = ashr exact i64 %sext.i.us.1, 32
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.1
  %206 = load float, float* %arrayidx.i.us.1, align 4, !tbaa !12
  %add.i.us.1 = add nsw i32 %mul.i.1, %conv.i.us.1
  %idxprom6.i.us.1 = sext i32 %add.i.us.1 to i64
  %arrayidx7.i.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.1
  %207 = load float, float* %arrayidx7.i.us.1, align 4, !tbaa !12
  %sub.i.us.1 = fsub float %207, %206
  store float %sub.i.us.1, float* %arrayidx7.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.1
  %208 = load float, float* %arrayidx10.i.us.1, align 4, !tbaa !12
  %mul11.i.us.1 = fmul float %10, %208
  %div.i.us.1 = fdiv float %sub.i.us.1, %mul11.i.us.1, !fpmath !26
  store float %div.i.us.1, float* %arrayidx7.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.1

if.end.r_exit.i.us.1:                             ; preds = %if.then.i.us.1, %pregion_for_entry.entry.i.us.1
  %209 = or i64 %_local_id_x.0.us.1, 1
  %add1.i.i.us.1.1 = add nuw nsw i64 %209, %mul.i.i
  %conv.i.us.1.1 = trunc i64 %add1.i.i.us.1.1 to i32
  %cmp4.i.us.1.1 = icmp slt i32 %conv.i.us.1.1, %4
  br i1 %cmp4.i.us.1.1, label %if.then.i.us.1.1, label %if.end.r_exit.i.us.1.1

pregion_for_end.i.1.loopexit:                     ; preds = %if.end.r_exit.i.us.1.1
  br label %pregion_for_end.i.1

pregion_for_end.i.1:                              ; preds = %pregion_for_end.i.1.loopexit, %vector.ph53, %pregion_for_end.i
  %210 = trunc i64 %mul3.i.i to i32
  %conv2.i.2 = or i32 %210, 2
  %cmp.i.2 = icmp slt i32 %conv2.i.2, %5
  %mul.i.2 = mul nsw i32 %conv2.i.2, %4
  br i1 %cmp.i.2, label %vector.scevcheck76, label %pregion_for_end.i.2

vector.scevcheck76:                               ; preds = %pregion_for_end.i.1
  %211 = mul i32 %conv2.i.2, %4
  %212 = trunc i64 %7 to i32
  %213 = shl i32 %212, 5
  %214 = add i32 %211, %213
  %215 = icmp sgt i32 %214, 2147483616
  br i1 %215, label %pregion_for_entry.entry.i.us.2.preheader, label %vector.memcheck98

pregion_for_entry.entry.i.us.2.preheader:         ; preds = %vector.memcheck98, %vector.scevcheck76
  br label %pregion_for_entry.entry.i.us.2

vector.memcheck98:                                ; preds = %vector.scevcheck76
  %216 = trunc i64 %7 to i32
  %217 = shl i32 %216, 5
  %218 = sext i32 %217 to i64
  %scevgep78 = getelementptr float, float* %0, i64 %218
  %219 = add nsw i64 %218, 32
  %scevgep80 = getelementptr float, float* %0, i64 %219
  %220 = mul i32 %conv2.i.2, %4
  %221 = add i32 %220, %217
  %222 = sext i32 %221 to i64
  %scevgep82 = getelementptr float, float* %2, i64 %222
  %223 = add nsw i64 %222, 32
  %scevgep84 = getelementptr float, float* %2, i64 %223
  %scevgep86 = getelementptr float, float* %1, i64 %218
  %scevgep88 = getelementptr float, float* %1, i64 %219
  %bound090 = icmp ult float* %scevgep78, %scevgep84
  %bound191 = icmp ult float* %scevgep82, %scevgep80
  %found.conflict92 = and i1 %bound090, %bound191
  %bound093 = icmp ult float* %scevgep86, %scevgep84
  %bound194 = icmp ult float* %scevgep82, %scevgep88
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %found.conflict92, %found.conflict95
  br i1 %conflict.rdx96, label %pregion_for_entry.entry.i.us.2.preheader, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck98
  %broadcast.splatinsert106 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat107 = shufflevector <8 x i64> %broadcast.splatinsert106, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert108 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat109 = shufflevector <8 x i32> %broadcast.splatinsert108, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <8 x float> undef, float %10, i32 0
  %broadcast.splat114 = shufflevector <8 x float> %broadcast.splatinsert113, <8 x float> undef, <8 x i32> zeroinitializer
  %224 = or <8 x i64> %broadcast.splat107, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %225 = trunc <8 x i64> %224 to <8 x i32>
  %226 = icmp sgt <8 x i32> %broadcast.splat109, %225
  %227 = extractelement <8 x i64> %224, i32 0
  %228 = shl i64 %227, 32
  %229 = ashr exact i64 %228, 32
  %230 = getelementptr inbounds float, float* %0, i64 %229
  %231 = bitcast float* %230 to <8 x float>*
  %wide.masked.load110 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %231, i32 4, <8 x i1> %226, <8 x float> undef), !tbaa !12, !alias.scope !34, !noalias !37
  %232 = extractelement <8 x i32> %225, i32 0
  %233 = add nsw i32 %mul.i.2, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %2, i64 %234
  %236 = bitcast float* %235 to <8 x float>*
  %wide.masked.load111 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %236, i32 4, <8 x i1> %226, <8 x float> undef), !tbaa !12, !alias.scope !37
  %237 = fsub <8 x float> %wide.masked.load111, %wide.masked.load110
  %238 = bitcast float* %235 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %237, <8 x float>* %238, i32 4, <8 x i1> %226), !tbaa !12, !alias.scope !37, !llvm.access.group !21
  %239 = getelementptr inbounds float, float* %1, i64 %229
  %240 = bitcast float* %239 to <8 x float>*
  %wide.masked.load112 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %240, i32 4, <8 x i1> %226, <8 x float> undef), !tbaa !12, !alias.scope !39, !noalias !37
  %241 = fmul <8 x float> %broadcast.splat114, %wide.masked.load112
  %242 = fdiv <8 x float> %237, %241, !fpmath !26
  %243 = bitcast float* %235 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %242, <8 x float>* %243, i32 4, <8 x i1> %226), !tbaa !12, !alias.scope !37, !llvm.access.group !21
  %244 = or <8 x i64> %broadcast.splat107, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %245 = trunc <8 x i64> %244 to <8 x i32>
  %246 = icmp sgt <8 x i32> %broadcast.splat109, %245
  %247 = extractelement <8 x i64> %244, i32 0
  %248 = shl i64 %247, 32
  %249 = ashr exact i64 %248, 32
  %250 = getelementptr inbounds float, float* %0, i64 %249
  %251 = bitcast float* %250 to <8 x float>*
  %wide.masked.load110.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %251, i32 4, <8 x i1> %246, <8 x float> undef), !tbaa !12, !alias.scope !34, !noalias !37
  %252 = extractelement <8 x i32> %245, i32 0
  %253 = add nsw i32 %mul.i.2, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float, float* %2, i64 %254
  %256 = bitcast float* %255 to <8 x float>*
  %wide.masked.load111.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %256, i32 4, <8 x i1> %246, <8 x float> undef), !tbaa !12, !alias.scope !37
  %257 = fsub <8 x float> %wide.masked.load111.1, %wide.masked.load110.1
  %258 = bitcast float* %255 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %257, <8 x float>* %258, i32 4, <8 x i1> %246), !tbaa !12, !alias.scope !37, !llvm.access.group !21
  %259 = getelementptr inbounds float, float* %1, i64 %249
  %260 = bitcast float* %259 to <8 x float>*
  %wide.masked.load112.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %260, i32 4, <8 x i1> %246, <8 x float> undef), !tbaa !12, !alias.scope !39, !noalias !37
  %261 = fmul <8 x float> %broadcast.splat114, %wide.masked.load112.1
  %262 = fdiv <8 x float> %257, %261, !fpmath !26
  %263 = bitcast float* %255 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %262, <8 x float>* %263, i32 4, <8 x i1> %246), !tbaa !12, !alias.scope !37, !llvm.access.group !21
  %264 = or <8 x i64> %broadcast.splat107, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %265 = trunc <8 x i64> %264 to <8 x i32>
  %266 = icmp sgt <8 x i32> %broadcast.splat109, %265
  %267 = extractelement <8 x i64> %264, i32 0
  %268 = shl i64 %267, 32
  %269 = ashr exact i64 %268, 32
  %270 = getelementptr inbounds float, float* %0, i64 %269
  %271 = bitcast float* %270 to <8 x float>*
  %wide.masked.load110.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %271, i32 4, <8 x i1> %266, <8 x float> undef), !tbaa !12, !alias.scope !34, !noalias !37
  %272 = extractelement <8 x i32> %265, i32 0
  %273 = add nsw i32 %mul.i.2, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds float, float* %2, i64 %274
  %276 = bitcast float* %275 to <8 x float>*
  %wide.masked.load111.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %276, i32 4, <8 x i1> %266, <8 x float> undef), !tbaa !12, !alias.scope !37
  %277 = fsub <8 x float> %wide.masked.load111.2, %wide.masked.load110.2
  %278 = bitcast float* %275 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %277, <8 x float>* %278, i32 4, <8 x i1> %266), !tbaa !12, !alias.scope !37, !llvm.access.group !21
  %279 = getelementptr inbounds float, float* %1, i64 %269
  %280 = bitcast float* %279 to <8 x float>*
  %wide.masked.load112.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %280, i32 4, <8 x i1> %266, <8 x float> undef), !tbaa !12, !alias.scope !39, !noalias !37
  %281 = fmul <8 x float> %broadcast.splat114, %wide.masked.load112.2
  %282 = fdiv <8 x float> %277, %281, !fpmath !26
  %283 = bitcast float* %275 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %282, <8 x float>* %283, i32 4, <8 x i1> %266), !tbaa !12, !alias.scope !37, !llvm.access.group !21
  %284 = or <8 x i64> %broadcast.splat107, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %285 = trunc <8 x i64> %284 to <8 x i32>
  %286 = icmp sgt <8 x i32> %broadcast.splat109, %285
  %287 = extractelement <8 x i64> %284, i32 0
  %288 = shl i64 %287, 32
  %289 = ashr exact i64 %288, 32
  %290 = getelementptr inbounds float, float* %0, i64 %289
  %291 = bitcast float* %290 to <8 x float>*
  %wide.masked.load110.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %291, i32 4, <8 x i1> %286, <8 x float> undef), !tbaa !12, !alias.scope !34, !noalias !37
  %292 = extractelement <8 x i32> %285, i32 0
  %293 = add nsw i32 %mul.i.2, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %2, i64 %294
  %296 = bitcast float* %295 to <8 x float>*
  %wide.masked.load111.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %296, i32 4, <8 x i1> %286, <8 x float> undef), !tbaa !12, !alias.scope !37
  %297 = fsub <8 x float> %wide.masked.load111.3, %wide.masked.load110.3
  %298 = bitcast float* %295 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %297, <8 x float>* %298, i32 4, <8 x i1> %286), !tbaa !12, !alias.scope !37, !llvm.access.group !21
  %299 = getelementptr inbounds float, float* %1, i64 %289
  %300 = bitcast float* %299 to <8 x float>*
  %wide.masked.load112.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %300, i32 4, <8 x i1> %286, <8 x float> undef), !tbaa !12, !alias.scope !39, !noalias !37
  %301 = fmul <8 x float> %broadcast.splat114, %wide.masked.load112.3
  %302 = fdiv <8 x float> %297, %301, !fpmath !26
  %303 = bitcast float* %295 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %302, <8 x float>* %303, i32 4, <8 x i1> %286), !tbaa !12, !alias.scope !37, !llvm.access.group !21
  br label %pregion_for_end.i.2

pregion_for_entry.entry.i.us.2:                   ; preds = %if.end.r_exit.i.us.2.1, %pregion_for_entry.entry.i.us.2.preheader
  %_local_id_x.0.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.us.2.preheader ], [ %821, %if.end.r_exit.i.us.2.1 ]
  %add1.i.i.us.2 = add nuw nsw i64 %_local_id_x.0.us.2, %mul.i.i
  %conv.i.us.2 = trunc i64 %add1.i.i.us.2 to i32
  %cmp4.i.us.2 = icmp slt i32 %conv.i.us.2, %4
  br i1 %cmp4.i.us.2, label %if.then.i.us.2, label %if.end.r_exit.i.us.2

if.then.i.us.2:                                   ; preds = %pregion_for_entry.entry.i.us.2
  %sext.i.us.2 = shl i64 %add1.i.i.us.2, 32
  %idxprom.i.us.2 = ashr exact i64 %sext.i.us.2, 32
  %arrayidx.i.us.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.2
  %304 = load float, float* %arrayidx.i.us.2, align 4, !tbaa !12
  %add.i.us.2 = add nsw i32 %mul.i.2, %conv.i.us.2
  %idxprom6.i.us.2 = sext i32 %add.i.us.2 to i64
  %arrayidx7.i.us.2 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.2
  %305 = load float, float* %arrayidx7.i.us.2, align 4, !tbaa !12
  %sub.i.us.2 = fsub float %305, %304
  store float %sub.i.us.2, float* %arrayidx7.i.us.2, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.2
  %306 = load float, float* %arrayidx10.i.us.2, align 4, !tbaa !12
  %mul11.i.us.2 = fmul float %10, %306
  %div.i.us.2 = fdiv float %sub.i.us.2, %mul11.i.us.2, !fpmath !26
  store float %div.i.us.2, float* %arrayidx7.i.us.2, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.2

if.end.r_exit.i.us.2:                             ; preds = %if.then.i.us.2, %pregion_for_entry.entry.i.us.2
  %307 = or i64 %_local_id_x.0.us.2, 1
  %add1.i.i.us.2.1 = add nuw nsw i64 %307, %mul.i.i
  %conv.i.us.2.1 = trunc i64 %add1.i.i.us.2.1 to i32
  %cmp4.i.us.2.1 = icmp slt i32 %conv.i.us.2.1, %4
  br i1 %cmp4.i.us.2.1, label %if.then.i.us.2.1, label %if.end.r_exit.i.us.2.1

pregion_for_end.i.2.loopexit:                     ; preds = %if.end.r_exit.i.us.2.1
  br label %pregion_for_end.i.2

pregion_for_end.i.2:                              ; preds = %pregion_for_end.i.2.loopexit, %vector.ph99, %pregion_for_end.i.1
  %308 = trunc i64 %mul3.i.i to i32
  %conv2.i.3 = or i32 %308, 3
  %cmp.i.3 = icmp slt i32 %conv2.i.3, %5
  %mul.i.3 = mul nsw i32 %conv2.i.3, %4
  br i1 %cmp.i.3, label %vector.scevcheck122, label %pregion_for_end.i.3

vector.scevcheck122:                              ; preds = %pregion_for_end.i.2
  %309 = mul i32 %conv2.i.3, %4
  %310 = trunc i64 %7 to i32
  %311 = shl i32 %310, 5
  %312 = add i32 %309, %311
  %313 = icmp sgt i32 %312, 2147483616
  br i1 %313, label %pregion_for_entry.entry.i.us.3.preheader, label %vector.memcheck144

pregion_for_entry.entry.i.us.3.preheader:         ; preds = %vector.memcheck144, %vector.scevcheck122
  br label %pregion_for_entry.entry.i.us.3

vector.memcheck144:                               ; preds = %vector.scevcheck122
  %314 = trunc i64 %7 to i32
  %315 = shl i32 %314, 5
  %316 = sext i32 %315 to i64
  %scevgep124 = getelementptr float, float* %0, i64 %316
  %317 = add nsw i64 %316, 32
  %scevgep126 = getelementptr float, float* %0, i64 %317
  %318 = mul i32 %conv2.i.3, %4
  %319 = add i32 %318, %315
  %320 = sext i32 %319 to i64
  %scevgep128 = getelementptr float, float* %2, i64 %320
  %321 = add nsw i64 %320, 32
  %scevgep130 = getelementptr float, float* %2, i64 %321
  %scevgep132 = getelementptr float, float* %1, i64 %316
  %scevgep134 = getelementptr float, float* %1, i64 %317
  %bound0136 = icmp ult float* %scevgep124, %scevgep130
  %bound1137 = icmp ult float* %scevgep128, %scevgep126
  %found.conflict138 = and i1 %bound0136, %bound1137
  %bound0139 = icmp ult float* %scevgep132, %scevgep130
  %bound1140 = icmp ult float* %scevgep128, %scevgep134
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %found.conflict138, %found.conflict141
  br i1 %conflict.rdx142, label %pregion_for_entry.entry.i.us.3.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %vector.memcheck144
  %broadcast.splatinsert152 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat153 = shufflevector <8 x i64> %broadcast.splatinsert152, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert154 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat155 = shufflevector <8 x i32> %broadcast.splatinsert154, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert159 = insertelement <8 x float> undef, float %10, i32 0
  %broadcast.splat160 = shufflevector <8 x float> %broadcast.splatinsert159, <8 x float> undef, <8 x i32> zeroinitializer
  %322 = or <8 x i64> %broadcast.splat153, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %323 = trunc <8 x i64> %322 to <8 x i32>
  %324 = icmp sgt <8 x i32> %broadcast.splat155, %323
  %325 = extractelement <8 x i64> %322, i32 0
  %326 = shl i64 %325, 32
  %327 = ashr exact i64 %326, 32
  %328 = getelementptr inbounds float, float* %0, i64 %327
  %329 = bitcast float* %328 to <8 x float>*
  %wide.masked.load156 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %329, i32 4, <8 x i1> %324, <8 x float> undef), !tbaa !12, !alias.scope !41, !noalias !44
  %330 = extractelement <8 x i32> %323, i32 0
  %331 = add nsw i32 %mul.i.3, %330
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds float, float* %2, i64 %332
  %334 = bitcast float* %333 to <8 x float>*
  %wide.masked.load157 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %334, i32 4, <8 x i1> %324, <8 x float> undef), !tbaa !12, !alias.scope !44
  %335 = fsub <8 x float> %wide.masked.load157, %wide.masked.load156
  %336 = bitcast float* %333 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %335, <8 x float>* %336, i32 4, <8 x i1> %324), !tbaa !12, !alias.scope !44, !llvm.access.group !21
  %337 = getelementptr inbounds float, float* %1, i64 %327
  %338 = bitcast float* %337 to <8 x float>*
  %wide.masked.load158 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %338, i32 4, <8 x i1> %324, <8 x float> undef), !tbaa !12, !alias.scope !46, !noalias !44
  %339 = fmul <8 x float> %broadcast.splat160, %wide.masked.load158
  %340 = fdiv <8 x float> %335, %339, !fpmath !26
  %341 = bitcast float* %333 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %340, <8 x float>* %341, i32 4, <8 x i1> %324), !tbaa !12, !alias.scope !44, !llvm.access.group !21
  %342 = or <8 x i64> %broadcast.splat153, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %343 = trunc <8 x i64> %342 to <8 x i32>
  %344 = icmp sgt <8 x i32> %broadcast.splat155, %343
  %345 = extractelement <8 x i64> %342, i32 0
  %346 = shl i64 %345, 32
  %347 = ashr exact i64 %346, 32
  %348 = getelementptr inbounds float, float* %0, i64 %347
  %349 = bitcast float* %348 to <8 x float>*
  %wide.masked.load156.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %349, i32 4, <8 x i1> %344, <8 x float> undef), !tbaa !12, !alias.scope !41, !noalias !44
  %350 = extractelement <8 x i32> %343, i32 0
  %351 = add nsw i32 %mul.i.3, %350
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds float, float* %2, i64 %352
  %354 = bitcast float* %353 to <8 x float>*
  %wide.masked.load157.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %354, i32 4, <8 x i1> %344, <8 x float> undef), !tbaa !12, !alias.scope !44
  %355 = fsub <8 x float> %wide.masked.load157.1, %wide.masked.load156.1
  %356 = bitcast float* %353 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %355, <8 x float>* %356, i32 4, <8 x i1> %344), !tbaa !12, !alias.scope !44, !llvm.access.group !21
  %357 = getelementptr inbounds float, float* %1, i64 %347
  %358 = bitcast float* %357 to <8 x float>*
  %wide.masked.load158.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %358, i32 4, <8 x i1> %344, <8 x float> undef), !tbaa !12, !alias.scope !46, !noalias !44
  %359 = fmul <8 x float> %broadcast.splat160, %wide.masked.load158.1
  %360 = fdiv <8 x float> %355, %359, !fpmath !26
  %361 = bitcast float* %353 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %360, <8 x float>* %361, i32 4, <8 x i1> %344), !tbaa !12, !alias.scope !44, !llvm.access.group !21
  %362 = or <8 x i64> %broadcast.splat153, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %363 = trunc <8 x i64> %362 to <8 x i32>
  %364 = icmp sgt <8 x i32> %broadcast.splat155, %363
  %365 = extractelement <8 x i64> %362, i32 0
  %366 = shl i64 %365, 32
  %367 = ashr exact i64 %366, 32
  %368 = getelementptr inbounds float, float* %0, i64 %367
  %369 = bitcast float* %368 to <8 x float>*
  %wide.masked.load156.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %369, i32 4, <8 x i1> %364, <8 x float> undef), !tbaa !12, !alias.scope !41, !noalias !44
  %370 = extractelement <8 x i32> %363, i32 0
  %371 = add nsw i32 %mul.i.3, %370
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds float, float* %2, i64 %372
  %374 = bitcast float* %373 to <8 x float>*
  %wide.masked.load157.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %374, i32 4, <8 x i1> %364, <8 x float> undef), !tbaa !12, !alias.scope !44
  %375 = fsub <8 x float> %wide.masked.load157.2, %wide.masked.load156.2
  %376 = bitcast float* %373 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %375, <8 x float>* %376, i32 4, <8 x i1> %364), !tbaa !12, !alias.scope !44, !llvm.access.group !21
  %377 = getelementptr inbounds float, float* %1, i64 %367
  %378 = bitcast float* %377 to <8 x float>*
  %wide.masked.load158.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %378, i32 4, <8 x i1> %364, <8 x float> undef), !tbaa !12, !alias.scope !46, !noalias !44
  %379 = fmul <8 x float> %broadcast.splat160, %wide.masked.load158.2
  %380 = fdiv <8 x float> %375, %379, !fpmath !26
  %381 = bitcast float* %373 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %380, <8 x float>* %381, i32 4, <8 x i1> %364), !tbaa !12, !alias.scope !44, !llvm.access.group !21
  %382 = or <8 x i64> %broadcast.splat153, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %383 = trunc <8 x i64> %382 to <8 x i32>
  %384 = icmp sgt <8 x i32> %broadcast.splat155, %383
  %385 = extractelement <8 x i64> %382, i32 0
  %386 = shl i64 %385, 32
  %387 = ashr exact i64 %386, 32
  %388 = getelementptr inbounds float, float* %0, i64 %387
  %389 = bitcast float* %388 to <8 x float>*
  %wide.masked.load156.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %389, i32 4, <8 x i1> %384, <8 x float> undef), !tbaa !12, !alias.scope !41, !noalias !44
  %390 = extractelement <8 x i32> %383, i32 0
  %391 = add nsw i32 %mul.i.3, %390
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds float, float* %2, i64 %392
  %394 = bitcast float* %393 to <8 x float>*
  %wide.masked.load157.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %394, i32 4, <8 x i1> %384, <8 x float> undef), !tbaa !12, !alias.scope !44
  %395 = fsub <8 x float> %wide.masked.load157.3, %wide.masked.load156.3
  %396 = bitcast float* %393 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %395, <8 x float>* %396, i32 4, <8 x i1> %384), !tbaa !12, !alias.scope !44, !llvm.access.group !21
  %397 = getelementptr inbounds float, float* %1, i64 %387
  %398 = bitcast float* %397 to <8 x float>*
  %wide.masked.load158.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %398, i32 4, <8 x i1> %384, <8 x float> undef), !tbaa !12, !alias.scope !46, !noalias !44
  %399 = fmul <8 x float> %broadcast.splat160, %wide.masked.load158.3
  %400 = fdiv <8 x float> %395, %399, !fpmath !26
  %401 = bitcast float* %393 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %400, <8 x float>* %401, i32 4, <8 x i1> %384), !tbaa !12, !alias.scope !44, !llvm.access.group !21
  br label %pregion_for_end.i.3

pregion_for_entry.entry.i.us.3:                   ; preds = %if.end.r_exit.i.us.3.1, %pregion_for_entry.entry.i.us.3.preheader
  %_local_id_x.0.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.us.3.preheader ], [ %817, %if.end.r_exit.i.us.3.1 ]
  %add1.i.i.us.3 = add nuw nsw i64 %_local_id_x.0.us.3, %mul.i.i
  %conv.i.us.3 = trunc i64 %add1.i.i.us.3 to i32
  %cmp4.i.us.3 = icmp slt i32 %conv.i.us.3, %4
  br i1 %cmp4.i.us.3, label %if.then.i.us.3, label %if.end.r_exit.i.us.3

if.then.i.us.3:                                   ; preds = %pregion_for_entry.entry.i.us.3
  %sext.i.us.3 = shl i64 %add1.i.i.us.3, 32
  %idxprom.i.us.3 = ashr exact i64 %sext.i.us.3, 32
  %arrayidx.i.us.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.3
  %402 = load float, float* %arrayidx.i.us.3, align 4, !tbaa !12
  %add.i.us.3 = add nsw i32 %mul.i.3, %conv.i.us.3
  %idxprom6.i.us.3 = sext i32 %add.i.us.3 to i64
  %arrayidx7.i.us.3 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.3
  %403 = load float, float* %arrayidx7.i.us.3, align 4, !tbaa !12
  %sub.i.us.3 = fsub float %403, %402
  store float %sub.i.us.3, float* %arrayidx7.i.us.3, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.3
  %404 = load float, float* %arrayidx10.i.us.3, align 4, !tbaa !12
  %mul11.i.us.3 = fmul float %10, %404
  %div.i.us.3 = fdiv float %sub.i.us.3, %mul11.i.us.3, !fpmath !26
  store float %div.i.us.3, float* %arrayidx7.i.us.3, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.3

if.end.r_exit.i.us.3:                             ; preds = %if.then.i.us.3, %pregion_for_entry.entry.i.us.3
  %405 = or i64 %_local_id_x.0.us.3, 1
  %add1.i.i.us.3.1 = add nuw nsw i64 %405, %mul.i.i
  %conv.i.us.3.1 = trunc i64 %add1.i.i.us.3.1 to i32
  %cmp4.i.us.3.1 = icmp slt i32 %conv.i.us.3.1, %4
  br i1 %cmp4.i.us.3.1, label %if.then.i.us.3.1, label %if.end.r_exit.i.us.3.1

pregion_for_end.i.3.loopexit:                     ; preds = %if.end.r_exit.i.us.3.1
  br label %pregion_for_end.i.3

pregion_for_end.i.3:                              ; preds = %pregion_for_end.i.3.loopexit, %vector.ph145, %pregion_for_end.i.2
  %406 = trunc i64 %mul3.i.i to i32
  %conv2.i.4 = or i32 %406, 4
  %cmp.i.4 = icmp slt i32 %conv2.i.4, %5
  %mul.i.4 = mul nsw i32 %conv2.i.4, %4
  br i1 %cmp.i.4, label %vector.scevcheck168, label %pregion_for_end.i.4

vector.scevcheck168:                              ; preds = %pregion_for_end.i.3
  %407 = mul i32 %conv2.i.4, %4
  %408 = trunc i64 %7 to i32
  %409 = shl i32 %408, 5
  %410 = add i32 %407, %409
  %411 = icmp sgt i32 %410, 2147483616
  br i1 %411, label %pregion_for_entry.entry.i.us.4.preheader, label %vector.memcheck190

pregion_for_entry.entry.i.us.4.preheader:         ; preds = %vector.memcheck190, %vector.scevcheck168
  br label %pregion_for_entry.entry.i.us.4

vector.memcheck190:                               ; preds = %vector.scevcheck168
  %412 = trunc i64 %7 to i32
  %413 = shl i32 %412, 5
  %414 = sext i32 %413 to i64
  %scevgep170 = getelementptr float, float* %0, i64 %414
  %415 = add nsw i64 %414, 32
  %scevgep172 = getelementptr float, float* %0, i64 %415
  %416 = mul i32 %conv2.i.4, %4
  %417 = add i32 %416, %413
  %418 = sext i32 %417 to i64
  %scevgep174 = getelementptr float, float* %2, i64 %418
  %419 = add nsw i64 %418, 32
  %scevgep176 = getelementptr float, float* %2, i64 %419
  %scevgep178 = getelementptr float, float* %1, i64 %414
  %scevgep180 = getelementptr float, float* %1, i64 %415
  %bound0182 = icmp ult float* %scevgep170, %scevgep176
  %bound1183 = icmp ult float* %scevgep174, %scevgep172
  %found.conflict184 = and i1 %bound0182, %bound1183
  %bound0185 = icmp ult float* %scevgep178, %scevgep176
  %bound1186 = icmp ult float* %scevgep174, %scevgep180
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %found.conflict184, %found.conflict187
  br i1 %conflict.rdx188, label %pregion_for_entry.entry.i.us.4.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %vector.memcheck190
  %broadcast.splatinsert198 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat199 = shufflevector <8 x i64> %broadcast.splatinsert198, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert200 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat201 = shufflevector <8 x i32> %broadcast.splatinsert200, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert205 = insertelement <8 x float> undef, float %10, i32 0
  %broadcast.splat206 = shufflevector <8 x float> %broadcast.splatinsert205, <8 x float> undef, <8 x i32> zeroinitializer
  %420 = or <8 x i64> %broadcast.splat199, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %421 = trunc <8 x i64> %420 to <8 x i32>
  %422 = icmp sgt <8 x i32> %broadcast.splat201, %421
  %423 = extractelement <8 x i64> %420, i32 0
  %424 = shl i64 %423, 32
  %425 = ashr exact i64 %424, 32
  %426 = getelementptr inbounds float, float* %0, i64 %425
  %427 = bitcast float* %426 to <8 x float>*
  %wide.masked.load202 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %427, i32 4, <8 x i1> %422, <8 x float> undef), !tbaa !12, !alias.scope !48, !noalias !51
  %428 = extractelement <8 x i32> %421, i32 0
  %429 = add nsw i32 %mul.i.4, %428
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds float, float* %2, i64 %430
  %432 = bitcast float* %431 to <8 x float>*
  %wide.masked.load203 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %432, i32 4, <8 x i1> %422, <8 x float> undef), !tbaa !12, !alias.scope !51
  %433 = fsub <8 x float> %wide.masked.load203, %wide.masked.load202
  %434 = bitcast float* %431 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %433, <8 x float>* %434, i32 4, <8 x i1> %422), !tbaa !12, !alias.scope !51, !llvm.access.group !21
  %435 = getelementptr inbounds float, float* %1, i64 %425
  %436 = bitcast float* %435 to <8 x float>*
  %wide.masked.load204 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %436, i32 4, <8 x i1> %422, <8 x float> undef), !tbaa !12, !alias.scope !53, !noalias !51
  %437 = fmul <8 x float> %broadcast.splat206, %wide.masked.load204
  %438 = fdiv <8 x float> %433, %437, !fpmath !26
  %439 = bitcast float* %431 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %438, <8 x float>* %439, i32 4, <8 x i1> %422), !tbaa !12, !alias.scope !51, !llvm.access.group !21
  %440 = or <8 x i64> %broadcast.splat199, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %441 = trunc <8 x i64> %440 to <8 x i32>
  %442 = icmp sgt <8 x i32> %broadcast.splat201, %441
  %443 = extractelement <8 x i64> %440, i32 0
  %444 = shl i64 %443, 32
  %445 = ashr exact i64 %444, 32
  %446 = getelementptr inbounds float, float* %0, i64 %445
  %447 = bitcast float* %446 to <8 x float>*
  %wide.masked.load202.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %447, i32 4, <8 x i1> %442, <8 x float> undef), !tbaa !12, !alias.scope !48, !noalias !51
  %448 = extractelement <8 x i32> %441, i32 0
  %449 = add nsw i32 %mul.i.4, %448
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds float, float* %2, i64 %450
  %452 = bitcast float* %451 to <8 x float>*
  %wide.masked.load203.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %452, i32 4, <8 x i1> %442, <8 x float> undef), !tbaa !12, !alias.scope !51
  %453 = fsub <8 x float> %wide.masked.load203.1, %wide.masked.load202.1
  %454 = bitcast float* %451 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %453, <8 x float>* %454, i32 4, <8 x i1> %442), !tbaa !12, !alias.scope !51, !llvm.access.group !21
  %455 = getelementptr inbounds float, float* %1, i64 %445
  %456 = bitcast float* %455 to <8 x float>*
  %wide.masked.load204.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %456, i32 4, <8 x i1> %442, <8 x float> undef), !tbaa !12, !alias.scope !53, !noalias !51
  %457 = fmul <8 x float> %broadcast.splat206, %wide.masked.load204.1
  %458 = fdiv <8 x float> %453, %457, !fpmath !26
  %459 = bitcast float* %451 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %458, <8 x float>* %459, i32 4, <8 x i1> %442), !tbaa !12, !alias.scope !51, !llvm.access.group !21
  %460 = or <8 x i64> %broadcast.splat199, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %461 = trunc <8 x i64> %460 to <8 x i32>
  %462 = icmp sgt <8 x i32> %broadcast.splat201, %461
  %463 = extractelement <8 x i64> %460, i32 0
  %464 = shl i64 %463, 32
  %465 = ashr exact i64 %464, 32
  %466 = getelementptr inbounds float, float* %0, i64 %465
  %467 = bitcast float* %466 to <8 x float>*
  %wide.masked.load202.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %467, i32 4, <8 x i1> %462, <8 x float> undef), !tbaa !12, !alias.scope !48, !noalias !51
  %468 = extractelement <8 x i32> %461, i32 0
  %469 = add nsw i32 %mul.i.4, %468
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds float, float* %2, i64 %470
  %472 = bitcast float* %471 to <8 x float>*
  %wide.masked.load203.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %472, i32 4, <8 x i1> %462, <8 x float> undef), !tbaa !12, !alias.scope !51
  %473 = fsub <8 x float> %wide.masked.load203.2, %wide.masked.load202.2
  %474 = bitcast float* %471 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %473, <8 x float>* %474, i32 4, <8 x i1> %462), !tbaa !12, !alias.scope !51, !llvm.access.group !21
  %475 = getelementptr inbounds float, float* %1, i64 %465
  %476 = bitcast float* %475 to <8 x float>*
  %wide.masked.load204.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %476, i32 4, <8 x i1> %462, <8 x float> undef), !tbaa !12, !alias.scope !53, !noalias !51
  %477 = fmul <8 x float> %broadcast.splat206, %wide.masked.load204.2
  %478 = fdiv <8 x float> %473, %477, !fpmath !26
  %479 = bitcast float* %471 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %478, <8 x float>* %479, i32 4, <8 x i1> %462), !tbaa !12, !alias.scope !51, !llvm.access.group !21
  %480 = or <8 x i64> %broadcast.splat199, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %481 = trunc <8 x i64> %480 to <8 x i32>
  %482 = icmp sgt <8 x i32> %broadcast.splat201, %481
  %483 = extractelement <8 x i64> %480, i32 0
  %484 = shl i64 %483, 32
  %485 = ashr exact i64 %484, 32
  %486 = getelementptr inbounds float, float* %0, i64 %485
  %487 = bitcast float* %486 to <8 x float>*
  %wide.masked.load202.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %487, i32 4, <8 x i1> %482, <8 x float> undef), !tbaa !12, !alias.scope !48, !noalias !51
  %488 = extractelement <8 x i32> %481, i32 0
  %489 = add nsw i32 %mul.i.4, %488
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds float, float* %2, i64 %490
  %492 = bitcast float* %491 to <8 x float>*
  %wide.masked.load203.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %492, i32 4, <8 x i1> %482, <8 x float> undef), !tbaa !12, !alias.scope !51
  %493 = fsub <8 x float> %wide.masked.load203.3, %wide.masked.load202.3
  %494 = bitcast float* %491 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %493, <8 x float>* %494, i32 4, <8 x i1> %482), !tbaa !12, !alias.scope !51, !llvm.access.group !21
  %495 = getelementptr inbounds float, float* %1, i64 %485
  %496 = bitcast float* %495 to <8 x float>*
  %wide.masked.load204.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %496, i32 4, <8 x i1> %482, <8 x float> undef), !tbaa !12, !alias.scope !53, !noalias !51
  %497 = fmul <8 x float> %broadcast.splat206, %wide.masked.load204.3
  %498 = fdiv <8 x float> %493, %497, !fpmath !26
  %499 = bitcast float* %491 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %498, <8 x float>* %499, i32 4, <8 x i1> %482), !tbaa !12, !alias.scope !51, !llvm.access.group !21
  br label %pregion_for_end.i.4

pregion_for_entry.entry.i.us.4:                   ; preds = %if.end.r_exit.i.us.4.1, %pregion_for_entry.entry.i.us.4.preheader
  %_local_id_x.0.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.us.4.preheader ], [ %813, %if.end.r_exit.i.us.4.1 ]
  %add1.i.i.us.4 = add nuw nsw i64 %_local_id_x.0.us.4, %mul.i.i
  %conv.i.us.4 = trunc i64 %add1.i.i.us.4 to i32
  %cmp4.i.us.4 = icmp slt i32 %conv.i.us.4, %4
  br i1 %cmp4.i.us.4, label %if.then.i.us.4, label %if.end.r_exit.i.us.4

if.then.i.us.4:                                   ; preds = %pregion_for_entry.entry.i.us.4
  %sext.i.us.4 = shl i64 %add1.i.i.us.4, 32
  %idxprom.i.us.4 = ashr exact i64 %sext.i.us.4, 32
  %arrayidx.i.us.4 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.4
  %500 = load float, float* %arrayidx.i.us.4, align 4, !tbaa !12
  %add.i.us.4 = add nsw i32 %mul.i.4, %conv.i.us.4
  %idxprom6.i.us.4 = sext i32 %add.i.us.4 to i64
  %arrayidx7.i.us.4 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.4
  %501 = load float, float* %arrayidx7.i.us.4, align 4, !tbaa !12
  %sub.i.us.4 = fsub float %501, %500
  store float %sub.i.us.4, float* %arrayidx7.i.us.4, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us.4 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.4
  %502 = load float, float* %arrayidx10.i.us.4, align 4, !tbaa !12
  %mul11.i.us.4 = fmul float %10, %502
  %div.i.us.4 = fdiv float %sub.i.us.4, %mul11.i.us.4, !fpmath !26
  store float %div.i.us.4, float* %arrayidx7.i.us.4, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.4

if.end.r_exit.i.us.4:                             ; preds = %if.then.i.us.4, %pregion_for_entry.entry.i.us.4
  %503 = or i64 %_local_id_x.0.us.4, 1
  %add1.i.i.us.4.1 = add nuw nsw i64 %503, %mul.i.i
  %conv.i.us.4.1 = trunc i64 %add1.i.i.us.4.1 to i32
  %cmp4.i.us.4.1 = icmp slt i32 %conv.i.us.4.1, %4
  br i1 %cmp4.i.us.4.1, label %if.then.i.us.4.1, label %if.end.r_exit.i.us.4.1

pregion_for_end.i.4.loopexit:                     ; preds = %if.end.r_exit.i.us.4.1
  br label %pregion_for_end.i.4

pregion_for_end.i.4:                              ; preds = %pregion_for_end.i.4.loopexit, %vector.ph191, %pregion_for_end.i.3
  %504 = trunc i64 %mul3.i.i to i32
  %conv2.i.5 = or i32 %504, 5
  %cmp.i.5 = icmp slt i32 %conv2.i.5, %5
  %mul.i.5 = mul nsw i32 %conv2.i.5, %4
  br i1 %cmp.i.5, label %vector.scevcheck214, label %pregion_for_end.i.5

vector.scevcheck214:                              ; preds = %pregion_for_end.i.4
  %505 = mul i32 %conv2.i.5, %4
  %506 = trunc i64 %7 to i32
  %507 = shl i32 %506, 5
  %508 = add i32 %505, %507
  %509 = icmp sgt i32 %508, 2147483616
  br i1 %509, label %pregion_for_entry.entry.i.us.5.preheader, label %vector.memcheck236

pregion_for_entry.entry.i.us.5.preheader:         ; preds = %vector.memcheck236, %vector.scevcheck214
  br label %pregion_for_entry.entry.i.us.5

vector.memcheck236:                               ; preds = %vector.scevcheck214
  %510 = trunc i64 %7 to i32
  %511 = shl i32 %510, 5
  %512 = sext i32 %511 to i64
  %scevgep216 = getelementptr float, float* %0, i64 %512
  %513 = add nsw i64 %512, 32
  %scevgep218 = getelementptr float, float* %0, i64 %513
  %514 = mul i32 %conv2.i.5, %4
  %515 = add i32 %514, %511
  %516 = sext i32 %515 to i64
  %scevgep220 = getelementptr float, float* %2, i64 %516
  %517 = add nsw i64 %516, 32
  %scevgep222 = getelementptr float, float* %2, i64 %517
  %scevgep224 = getelementptr float, float* %1, i64 %512
  %scevgep226 = getelementptr float, float* %1, i64 %513
  %bound0228 = icmp ult float* %scevgep216, %scevgep222
  %bound1229 = icmp ult float* %scevgep220, %scevgep218
  %found.conflict230 = and i1 %bound0228, %bound1229
  %bound0231 = icmp ult float* %scevgep224, %scevgep222
  %bound1232 = icmp ult float* %scevgep220, %scevgep226
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %found.conflict230, %found.conflict233
  br i1 %conflict.rdx234, label %pregion_for_entry.entry.i.us.5.preheader, label %vector.ph237

vector.ph237:                                     ; preds = %vector.memcheck236
  %broadcast.splatinsert244 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat245 = shufflevector <8 x i64> %broadcast.splatinsert244, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert246 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat247 = shufflevector <8 x i32> %broadcast.splatinsert246, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert251 = insertelement <8 x float> undef, float %10, i32 0
  %broadcast.splat252 = shufflevector <8 x float> %broadcast.splatinsert251, <8 x float> undef, <8 x i32> zeroinitializer
  %518 = or <8 x i64> %broadcast.splat245, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %519 = trunc <8 x i64> %518 to <8 x i32>
  %520 = icmp sgt <8 x i32> %broadcast.splat247, %519
  %521 = extractelement <8 x i64> %518, i32 0
  %522 = shl i64 %521, 32
  %523 = ashr exact i64 %522, 32
  %524 = getelementptr inbounds float, float* %0, i64 %523
  %525 = bitcast float* %524 to <8 x float>*
  %wide.masked.load248 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %525, i32 4, <8 x i1> %520, <8 x float> undef), !tbaa !12, !alias.scope !55, !noalias !58
  %526 = extractelement <8 x i32> %519, i32 0
  %527 = add nsw i32 %mul.i.5, %526
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds float, float* %2, i64 %528
  %530 = bitcast float* %529 to <8 x float>*
  %wide.masked.load249 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %530, i32 4, <8 x i1> %520, <8 x float> undef), !tbaa !12, !alias.scope !58
  %531 = fsub <8 x float> %wide.masked.load249, %wide.masked.load248
  %532 = bitcast float* %529 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %531, <8 x float>* %532, i32 4, <8 x i1> %520), !tbaa !12, !alias.scope !58, !llvm.access.group !21
  %533 = getelementptr inbounds float, float* %1, i64 %523
  %534 = bitcast float* %533 to <8 x float>*
  %wide.masked.load250 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %534, i32 4, <8 x i1> %520, <8 x float> undef), !tbaa !12, !alias.scope !60, !noalias !58
  %535 = fmul <8 x float> %broadcast.splat252, %wide.masked.load250
  %536 = fdiv <8 x float> %531, %535, !fpmath !26
  %537 = bitcast float* %529 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %536, <8 x float>* %537, i32 4, <8 x i1> %520), !tbaa !12, !alias.scope !58, !llvm.access.group !21
  %538 = or <8 x i64> %broadcast.splat245, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %539 = trunc <8 x i64> %538 to <8 x i32>
  %540 = icmp sgt <8 x i32> %broadcast.splat247, %539
  %541 = extractelement <8 x i64> %538, i32 0
  %542 = shl i64 %541, 32
  %543 = ashr exact i64 %542, 32
  %544 = getelementptr inbounds float, float* %0, i64 %543
  %545 = bitcast float* %544 to <8 x float>*
  %wide.masked.load248.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %545, i32 4, <8 x i1> %540, <8 x float> undef), !tbaa !12, !alias.scope !55, !noalias !58
  %546 = extractelement <8 x i32> %539, i32 0
  %547 = add nsw i32 %mul.i.5, %546
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds float, float* %2, i64 %548
  %550 = bitcast float* %549 to <8 x float>*
  %wide.masked.load249.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %550, i32 4, <8 x i1> %540, <8 x float> undef), !tbaa !12, !alias.scope !58
  %551 = fsub <8 x float> %wide.masked.load249.1, %wide.masked.load248.1
  %552 = bitcast float* %549 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %551, <8 x float>* %552, i32 4, <8 x i1> %540), !tbaa !12, !alias.scope !58, !llvm.access.group !21
  %553 = getelementptr inbounds float, float* %1, i64 %543
  %554 = bitcast float* %553 to <8 x float>*
  %wide.masked.load250.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %554, i32 4, <8 x i1> %540, <8 x float> undef), !tbaa !12, !alias.scope !60, !noalias !58
  %555 = fmul <8 x float> %broadcast.splat252, %wide.masked.load250.1
  %556 = fdiv <8 x float> %551, %555, !fpmath !26
  %557 = bitcast float* %549 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %556, <8 x float>* %557, i32 4, <8 x i1> %540), !tbaa !12, !alias.scope !58, !llvm.access.group !21
  %558 = or <8 x i64> %broadcast.splat245, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %559 = trunc <8 x i64> %558 to <8 x i32>
  %560 = icmp sgt <8 x i32> %broadcast.splat247, %559
  %561 = extractelement <8 x i64> %558, i32 0
  %562 = shl i64 %561, 32
  %563 = ashr exact i64 %562, 32
  %564 = getelementptr inbounds float, float* %0, i64 %563
  %565 = bitcast float* %564 to <8 x float>*
  %wide.masked.load248.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %565, i32 4, <8 x i1> %560, <8 x float> undef), !tbaa !12, !alias.scope !55, !noalias !58
  %566 = extractelement <8 x i32> %559, i32 0
  %567 = add nsw i32 %mul.i.5, %566
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds float, float* %2, i64 %568
  %570 = bitcast float* %569 to <8 x float>*
  %wide.masked.load249.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %570, i32 4, <8 x i1> %560, <8 x float> undef), !tbaa !12, !alias.scope !58
  %571 = fsub <8 x float> %wide.masked.load249.2, %wide.masked.load248.2
  %572 = bitcast float* %569 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %571, <8 x float>* %572, i32 4, <8 x i1> %560), !tbaa !12, !alias.scope !58, !llvm.access.group !21
  %573 = getelementptr inbounds float, float* %1, i64 %563
  %574 = bitcast float* %573 to <8 x float>*
  %wide.masked.load250.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %574, i32 4, <8 x i1> %560, <8 x float> undef), !tbaa !12, !alias.scope !60, !noalias !58
  %575 = fmul <8 x float> %broadcast.splat252, %wide.masked.load250.2
  %576 = fdiv <8 x float> %571, %575, !fpmath !26
  %577 = bitcast float* %569 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %576, <8 x float>* %577, i32 4, <8 x i1> %560), !tbaa !12, !alias.scope !58, !llvm.access.group !21
  %578 = or <8 x i64> %broadcast.splat245, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %579 = trunc <8 x i64> %578 to <8 x i32>
  %580 = icmp sgt <8 x i32> %broadcast.splat247, %579
  %581 = extractelement <8 x i64> %578, i32 0
  %582 = shl i64 %581, 32
  %583 = ashr exact i64 %582, 32
  %584 = getelementptr inbounds float, float* %0, i64 %583
  %585 = bitcast float* %584 to <8 x float>*
  %wide.masked.load248.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %585, i32 4, <8 x i1> %580, <8 x float> undef), !tbaa !12, !alias.scope !55, !noalias !58
  %586 = extractelement <8 x i32> %579, i32 0
  %587 = add nsw i32 %mul.i.5, %586
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds float, float* %2, i64 %588
  %590 = bitcast float* %589 to <8 x float>*
  %wide.masked.load249.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %590, i32 4, <8 x i1> %580, <8 x float> undef), !tbaa !12, !alias.scope !58
  %591 = fsub <8 x float> %wide.masked.load249.3, %wide.masked.load248.3
  %592 = bitcast float* %589 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %591, <8 x float>* %592, i32 4, <8 x i1> %580), !tbaa !12, !alias.scope !58, !llvm.access.group !21
  %593 = getelementptr inbounds float, float* %1, i64 %583
  %594 = bitcast float* %593 to <8 x float>*
  %wide.masked.load250.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %594, i32 4, <8 x i1> %580, <8 x float> undef), !tbaa !12, !alias.scope !60, !noalias !58
  %595 = fmul <8 x float> %broadcast.splat252, %wide.masked.load250.3
  %596 = fdiv <8 x float> %591, %595, !fpmath !26
  %597 = bitcast float* %589 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %596, <8 x float>* %597, i32 4, <8 x i1> %580), !tbaa !12, !alias.scope !58, !llvm.access.group !21
  br label %pregion_for_end.i.5

pregion_for_entry.entry.i.us.5:                   ; preds = %if.end.r_exit.i.us.5.1, %pregion_for_entry.entry.i.us.5.preheader
  %_local_id_x.0.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.us.5.preheader ], [ %809, %if.end.r_exit.i.us.5.1 ]
  %add1.i.i.us.5 = add nuw nsw i64 %_local_id_x.0.us.5, %mul.i.i
  %conv.i.us.5 = trunc i64 %add1.i.i.us.5 to i32
  %cmp4.i.us.5 = icmp slt i32 %conv.i.us.5, %4
  br i1 %cmp4.i.us.5, label %if.then.i.us.5, label %if.end.r_exit.i.us.5

if.then.i.us.5:                                   ; preds = %pregion_for_entry.entry.i.us.5
  %sext.i.us.5 = shl i64 %add1.i.i.us.5, 32
  %idxprom.i.us.5 = ashr exact i64 %sext.i.us.5, 32
  %arrayidx.i.us.5 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.5
  %598 = load float, float* %arrayidx.i.us.5, align 4, !tbaa !12
  %add.i.us.5 = add nsw i32 %mul.i.5, %conv.i.us.5
  %idxprom6.i.us.5 = sext i32 %add.i.us.5 to i64
  %arrayidx7.i.us.5 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.5
  %599 = load float, float* %arrayidx7.i.us.5, align 4, !tbaa !12
  %sub.i.us.5 = fsub float %599, %598
  store float %sub.i.us.5, float* %arrayidx7.i.us.5, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us.5 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.5
  %600 = load float, float* %arrayidx10.i.us.5, align 4, !tbaa !12
  %mul11.i.us.5 = fmul float %10, %600
  %div.i.us.5 = fdiv float %sub.i.us.5, %mul11.i.us.5, !fpmath !26
  store float %div.i.us.5, float* %arrayidx7.i.us.5, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.5

if.end.r_exit.i.us.5:                             ; preds = %if.then.i.us.5, %pregion_for_entry.entry.i.us.5
  %601 = or i64 %_local_id_x.0.us.5, 1
  %add1.i.i.us.5.1 = add nuw nsw i64 %601, %mul.i.i
  %conv.i.us.5.1 = trunc i64 %add1.i.i.us.5.1 to i32
  %cmp4.i.us.5.1 = icmp slt i32 %conv.i.us.5.1, %4
  br i1 %cmp4.i.us.5.1, label %if.then.i.us.5.1, label %if.end.r_exit.i.us.5.1

pregion_for_end.i.5.loopexit:                     ; preds = %if.end.r_exit.i.us.5.1
  br label %pregion_for_end.i.5

pregion_for_end.i.5:                              ; preds = %pregion_for_end.i.5.loopexit, %vector.ph237, %pregion_for_end.i.4
  %602 = trunc i64 %mul3.i.i to i32
  %conv2.i.6 = or i32 %602, 6
  %cmp.i.6 = icmp slt i32 %conv2.i.6, %5
  %mul.i.6 = mul nsw i32 %conv2.i.6, %4
  br i1 %cmp.i.6, label %vector.scevcheck260, label %pregion_for_end.i.6

vector.scevcheck260:                              ; preds = %pregion_for_end.i.5
  %603 = mul i32 %conv2.i.6, %4
  %604 = trunc i64 %7 to i32
  %605 = shl i32 %604, 5
  %606 = add i32 %603, %605
  %607 = icmp sgt i32 %606, 2147483616
  br i1 %607, label %pregion_for_entry.entry.i.us.6.preheader, label %vector.memcheck282

pregion_for_entry.entry.i.us.6.preheader:         ; preds = %vector.memcheck282, %vector.scevcheck260
  br label %pregion_for_entry.entry.i.us.6

vector.memcheck282:                               ; preds = %vector.scevcheck260
  %608 = trunc i64 %7 to i32
  %609 = shl i32 %608, 5
  %610 = sext i32 %609 to i64
  %scevgep262 = getelementptr float, float* %0, i64 %610
  %611 = add nsw i64 %610, 32
  %scevgep264 = getelementptr float, float* %0, i64 %611
  %612 = mul i32 %conv2.i.6, %4
  %613 = add i32 %612, %609
  %614 = sext i32 %613 to i64
  %scevgep266 = getelementptr float, float* %2, i64 %614
  %615 = add nsw i64 %614, 32
  %scevgep268 = getelementptr float, float* %2, i64 %615
  %scevgep270 = getelementptr float, float* %1, i64 %610
  %scevgep272 = getelementptr float, float* %1, i64 %611
  %bound0274 = icmp ult float* %scevgep262, %scevgep268
  %bound1275 = icmp ult float* %scevgep266, %scevgep264
  %found.conflict276 = and i1 %bound0274, %bound1275
  %bound0277 = icmp ult float* %scevgep270, %scevgep268
  %bound1278 = icmp ult float* %scevgep266, %scevgep272
  %found.conflict279 = and i1 %bound0277, %bound1278
  %conflict.rdx280 = or i1 %found.conflict276, %found.conflict279
  br i1 %conflict.rdx280, label %pregion_for_entry.entry.i.us.6.preheader, label %vector.ph283

vector.ph283:                                     ; preds = %vector.memcheck282
  %broadcast.splatinsert290 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat291 = shufflevector <8 x i64> %broadcast.splatinsert290, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert292 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat293 = shufflevector <8 x i32> %broadcast.splatinsert292, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert297 = insertelement <8 x float> undef, float %10, i32 0
  %broadcast.splat298 = shufflevector <8 x float> %broadcast.splatinsert297, <8 x float> undef, <8 x i32> zeroinitializer
  %616 = or <8 x i64> %broadcast.splat291, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %617 = trunc <8 x i64> %616 to <8 x i32>
  %618 = icmp sgt <8 x i32> %broadcast.splat293, %617
  %619 = extractelement <8 x i64> %616, i32 0
  %620 = shl i64 %619, 32
  %621 = ashr exact i64 %620, 32
  %622 = getelementptr inbounds float, float* %0, i64 %621
  %623 = bitcast float* %622 to <8 x float>*
  %wide.masked.load294 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %623, i32 4, <8 x i1> %618, <8 x float> undef), !tbaa !12, !alias.scope !62, !noalias !65
  %624 = extractelement <8 x i32> %617, i32 0
  %625 = add nsw i32 %mul.i.6, %624
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds float, float* %2, i64 %626
  %628 = bitcast float* %627 to <8 x float>*
  %wide.masked.load295 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %628, i32 4, <8 x i1> %618, <8 x float> undef), !tbaa !12, !alias.scope !65
  %629 = fsub <8 x float> %wide.masked.load295, %wide.masked.load294
  %630 = bitcast float* %627 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %629, <8 x float>* %630, i32 4, <8 x i1> %618), !tbaa !12, !alias.scope !65, !llvm.access.group !21
  %631 = getelementptr inbounds float, float* %1, i64 %621
  %632 = bitcast float* %631 to <8 x float>*
  %wide.masked.load296 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %632, i32 4, <8 x i1> %618, <8 x float> undef), !tbaa !12, !alias.scope !67, !noalias !65
  %633 = fmul <8 x float> %broadcast.splat298, %wide.masked.load296
  %634 = fdiv <8 x float> %629, %633, !fpmath !26
  %635 = bitcast float* %627 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %634, <8 x float>* %635, i32 4, <8 x i1> %618), !tbaa !12, !alias.scope !65, !llvm.access.group !21
  %636 = or <8 x i64> %broadcast.splat291, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %637 = trunc <8 x i64> %636 to <8 x i32>
  %638 = icmp sgt <8 x i32> %broadcast.splat293, %637
  %639 = extractelement <8 x i64> %636, i32 0
  %640 = shl i64 %639, 32
  %641 = ashr exact i64 %640, 32
  %642 = getelementptr inbounds float, float* %0, i64 %641
  %643 = bitcast float* %642 to <8 x float>*
  %wide.masked.load294.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %643, i32 4, <8 x i1> %638, <8 x float> undef), !tbaa !12, !alias.scope !62, !noalias !65
  %644 = extractelement <8 x i32> %637, i32 0
  %645 = add nsw i32 %mul.i.6, %644
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds float, float* %2, i64 %646
  %648 = bitcast float* %647 to <8 x float>*
  %wide.masked.load295.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %648, i32 4, <8 x i1> %638, <8 x float> undef), !tbaa !12, !alias.scope !65
  %649 = fsub <8 x float> %wide.masked.load295.1, %wide.masked.load294.1
  %650 = bitcast float* %647 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %649, <8 x float>* %650, i32 4, <8 x i1> %638), !tbaa !12, !alias.scope !65, !llvm.access.group !21
  %651 = getelementptr inbounds float, float* %1, i64 %641
  %652 = bitcast float* %651 to <8 x float>*
  %wide.masked.load296.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %652, i32 4, <8 x i1> %638, <8 x float> undef), !tbaa !12, !alias.scope !67, !noalias !65
  %653 = fmul <8 x float> %broadcast.splat298, %wide.masked.load296.1
  %654 = fdiv <8 x float> %649, %653, !fpmath !26
  %655 = bitcast float* %647 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %654, <8 x float>* %655, i32 4, <8 x i1> %638), !tbaa !12, !alias.scope !65, !llvm.access.group !21
  %656 = or <8 x i64> %broadcast.splat291, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %657 = trunc <8 x i64> %656 to <8 x i32>
  %658 = icmp sgt <8 x i32> %broadcast.splat293, %657
  %659 = extractelement <8 x i64> %656, i32 0
  %660 = shl i64 %659, 32
  %661 = ashr exact i64 %660, 32
  %662 = getelementptr inbounds float, float* %0, i64 %661
  %663 = bitcast float* %662 to <8 x float>*
  %wide.masked.load294.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %663, i32 4, <8 x i1> %658, <8 x float> undef), !tbaa !12, !alias.scope !62, !noalias !65
  %664 = extractelement <8 x i32> %657, i32 0
  %665 = add nsw i32 %mul.i.6, %664
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds float, float* %2, i64 %666
  %668 = bitcast float* %667 to <8 x float>*
  %wide.masked.load295.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %668, i32 4, <8 x i1> %658, <8 x float> undef), !tbaa !12, !alias.scope !65
  %669 = fsub <8 x float> %wide.masked.load295.2, %wide.masked.load294.2
  %670 = bitcast float* %667 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %669, <8 x float>* %670, i32 4, <8 x i1> %658), !tbaa !12, !alias.scope !65, !llvm.access.group !21
  %671 = getelementptr inbounds float, float* %1, i64 %661
  %672 = bitcast float* %671 to <8 x float>*
  %wide.masked.load296.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %672, i32 4, <8 x i1> %658, <8 x float> undef), !tbaa !12, !alias.scope !67, !noalias !65
  %673 = fmul <8 x float> %broadcast.splat298, %wide.masked.load296.2
  %674 = fdiv <8 x float> %669, %673, !fpmath !26
  %675 = bitcast float* %667 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %674, <8 x float>* %675, i32 4, <8 x i1> %658), !tbaa !12, !alias.scope !65, !llvm.access.group !21
  %676 = or <8 x i64> %broadcast.splat291, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %677 = trunc <8 x i64> %676 to <8 x i32>
  %678 = icmp sgt <8 x i32> %broadcast.splat293, %677
  %679 = extractelement <8 x i64> %676, i32 0
  %680 = shl i64 %679, 32
  %681 = ashr exact i64 %680, 32
  %682 = getelementptr inbounds float, float* %0, i64 %681
  %683 = bitcast float* %682 to <8 x float>*
  %wide.masked.load294.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %683, i32 4, <8 x i1> %678, <8 x float> undef), !tbaa !12, !alias.scope !62, !noalias !65
  %684 = extractelement <8 x i32> %677, i32 0
  %685 = add nsw i32 %mul.i.6, %684
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds float, float* %2, i64 %686
  %688 = bitcast float* %687 to <8 x float>*
  %wide.masked.load295.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %688, i32 4, <8 x i1> %678, <8 x float> undef), !tbaa !12, !alias.scope !65
  %689 = fsub <8 x float> %wide.masked.load295.3, %wide.masked.load294.3
  %690 = bitcast float* %687 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %689, <8 x float>* %690, i32 4, <8 x i1> %678), !tbaa !12, !alias.scope !65, !llvm.access.group !21
  %691 = getelementptr inbounds float, float* %1, i64 %681
  %692 = bitcast float* %691 to <8 x float>*
  %wide.masked.load296.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %692, i32 4, <8 x i1> %678, <8 x float> undef), !tbaa !12, !alias.scope !67, !noalias !65
  %693 = fmul <8 x float> %broadcast.splat298, %wide.masked.load296.3
  %694 = fdiv <8 x float> %689, %693, !fpmath !26
  %695 = bitcast float* %687 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %694, <8 x float>* %695, i32 4, <8 x i1> %678), !tbaa !12, !alias.scope !65, !llvm.access.group !21
  br label %pregion_for_end.i.6

pregion_for_entry.entry.i.us.6:                   ; preds = %if.end.r_exit.i.us.6.1, %pregion_for_entry.entry.i.us.6.preheader
  %_local_id_x.0.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.us.6.preheader ], [ %805, %if.end.r_exit.i.us.6.1 ]
  %add1.i.i.us.6 = add nuw nsw i64 %_local_id_x.0.us.6, %mul.i.i
  %conv.i.us.6 = trunc i64 %add1.i.i.us.6 to i32
  %cmp4.i.us.6 = icmp slt i32 %conv.i.us.6, %4
  br i1 %cmp4.i.us.6, label %if.then.i.us.6, label %if.end.r_exit.i.us.6

if.then.i.us.6:                                   ; preds = %pregion_for_entry.entry.i.us.6
  %sext.i.us.6 = shl i64 %add1.i.i.us.6, 32
  %idxprom.i.us.6 = ashr exact i64 %sext.i.us.6, 32
  %arrayidx.i.us.6 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.6
  %696 = load float, float* %arrayidx.i.us.6, align 4, !tbaa !12
  %add.i.us.6 = add nsw i32 %mul.i.6, %conv.i.us.6
  %idxprom6.i.us.6 = sext i32 %add.i.us.6 to i64
  %arrayidx7.i.us.6 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.6
  %697 = load float, float* %arrayidx7.i.us.6, align 4, !tbaa !12
  %sub.i.us.6 = fsub float %697, %696
  store float %sub.i.us.6, float* %arrayidx7.i.us.6, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us.6 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.6
  %698 = load float, float* %arrayidx10.i.us.6, align 4, !tbaa !12
  %mul11.i.us.6 = fmul float %10, %698
  %div.i.us.6 = fdiv float %sub.i.us.6, %mul11.i.us.6, !fpmath !26
  store float %div.i.us.6, float* %arrayidx7.i.us.6, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.6

if.end.r_exit.i.us.6:                             ; preds = %if.then.i.us.6, %pregion_for_entry.entry.i.us.6
  %699 = or i64 %_local_id_x.0.us.6, 1
  %add1.i.i.us.6.1 = add nuw nsw i64 %699, %mul.i.i
  %conv.i.us.6.1 = trunc i64 %add1.i.i.us.6.1 to i32
  %cmp4.i.us.6.1 = icmp slt i32 %conv.i.us.6.1, %4
  br i1 %cmp4.i.us.6.1, label %if.then.i.us.6.1, label %if.end.r_exit.i.us.6.1

pregion_for_end.i.6.loopexit:                     ; preds = %if.end.r_exit.i.us.6.1
  br label %pregion_for_end.i.6

pregion_for_end.i.6:                              ; preds = %pregion_for_end.i.6.loopexit, %vector.ph283, %pregion_for_end.i.5
  %700 = trunc i64 %mul3.i.i to i32
  %conv2.i.7 = or i32 %700, 7
  %cmp.i.7 = icmp slt i32 %conv2.i.7, %5
  %mul.i.7 = mul nsw i32 %conv2.i.7, %4
  br i1 %cmp.i.7, label %vector.scevcheck306, label %pregion_for_end.i.7

vector.scevcheck306:                              ; preds = %pregion_for_end.i.6
  %701 = mul i32 %conv2.i.7, %4
  %702 = trunc i64 %7 to i32
  %703 = shl i32 %702, 5
  %704 = add i32 %701, %703
  %705 = icmp sgt i32 %704, 2147483616
  br i1 %705, label %pregion_for_entry.entry.i.us.7.preheader, label %vector.memcheck328

pregion_for_entry.entry.i.us.7.preheader:         ; preds = %vector.memcheck328, %vector.scevcheck306
  br label %pregion_for_entry.entry.i.us.7

vector.memcheck328:                               ; preds = %vector.scevcheck306
  %706 = trunc i64 %7 to i32
  %707 = shl i32 %706, 5
  %708 = sext i32 %707 to i64
  %scevgep308 = getelementptr float, float* %0, i64 %708
  %709 = add nsw i64 %708, 32
  %scevgep310 = getelementptr float, float* %0, i64 %709
  %710 = mul i32 %conv2.i.7, %4
  %711 = add i32 %710, %707
  %712 = sext i32 %711 to i64
  %scevgep312 = getelementptr float, float* %2, i64 %712
  %713 = add nsw i64 %712, 32
  %scevgep314 = getelementptr float, float* %2, i64 %713
  %scevgep316 = getelementptr float, float* %1, i64 %708
  %scevgep318 = getelementptr float, float* %1, i64 %709
  %bound0320 = icmp ult float* %scevgep308, %scevgep314
  %bound1321 = icmp ult float* %scevgep312, %scevgep310
  %found.conflict322 = and i1 %bound0320, %bound1321
  %bound0323 = icmp ult float* %scevgep316, %scevgep314
  %bound1324 = icmp ult float* %scevgep312, %scevgep318
  %found.conflict325 = and i1 %bound0323, %bound1324
  %conflict.rdx326 = or i1 %found.conflict322, %found.conflict325
  br i1 %conflict.rdx326, label %pregion_for_entry.entry.i.us.7.preheader, label %vector.ph329

vector.ph329:                                     ; preds = %vector.memcheck328
  %broadcast.splatinsert336 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat337 = shufflevector <8 x i64> %broadcast.splatinsert336, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert338 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat339 = shufflevector <8 x i32> %broadcast.splatinsert338, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert343 = insertelement <8 x float> undef, float %10, i32 0
  %broadcast.splat344 = shufflevector <8 x float> %broadcast.splatinsert343, <8 x float> undef, <8 x i32> zeroinitializer
  %714 = or <8 x i64> %broadcast.splat337, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %715 = trunc <8 x i64> %714 to <8 x i32>
  %716 = icmp sgt <8 x i32> %broadcast.splat339, %715
  %717 = extractelement <8 x i64> %714, i32 0
  %718 = shl i64 %717, 32
  %719 = ashr exact i64 %718, 32
  %720 = getelementptr inbounds float, float* %0, i64 %719
  %721 = bitcast float* %720 to <8 x float>*
  %wide.masked.load340 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %721, i32 4, <8 x i1> %716, <8 x float> undef), !tbaa !12, !alias.scope !69, !noalias !72
  %722 = extractelement <8 x i32> %715, i32 0
  %723 = add nsw i32 %mul.i.7, %722
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds float, float* %2, i64 %724
  %726 = bitcast float* %725 to <8 x float>*
  %wide.masked.load341 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %726, i32 4, <8 x i1> %716, <8 x float> undef), !tbaa !12, !alias.scope !72
  %727 = fsub <8 x float> %wide.masked.load341, %wide.masked.load340
  %728 = bitcast float* %725 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %727, <8 x float>* %728, i32 4, <8 x i1> %716), !tbaa !12, !alias.scope !72, !llvm.access.group !21
  %729 = getelementptr inbounds float, float* %1, i64 %719
  %730 = bitcast float* %729 to <8 x float>*
  %wide.masked.load342 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %730, i32 4, <8 x i1> %716, <8 x float> undef), !tbaa !12, !alias.scope !74, !noalias !72
  %731 = fmul <8 x float> %broadcast.splat344, %wide.masked.load342
  %732 = fdiv <8 x float> %727, %731, !fpmath !26
  %733 = bitcast float* %725 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %732, <8 x float>* %733, i32 4, <8 x i1> %716), !tbaa !12, !alias.scope !72, !llvm.access.group !21
  %734 = or <8 x i64> %broadcast.splat337, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %735 = trunc <8 x i64> %734 to <8 x i32>
  %736 = icmp sgt <8 x i32> %broadcast.splat339, %735
  %737 = extractelement <8 x i64> %734, i32 0
  %738 = shl i64 %737, 32
  %739 = ashr exact i64 %738, 32
  %740 = getelementptr inbounds float, float* %0, i64 %739
  %741 = bitcast float* %740 to <8 x float>*
  %wide.masked.load340.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %741, i32 4, <8 x i1> %736, <8 x float> undef), !tbaa !12, !alias.scope !69, !noalias !72
  %742 = extractelement <8 x i32> %735, i32 0
  %743 = add nsw i32 %mul.i.7, %742
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds float, float* %2, i64 %744
  %746 = bitcast float* %745 to <8 x float>*
  %wide.masked.load341.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %746, i32 4, <8 x i1> %736, <8 x float> undef), !tbaa !12, !alias.scope !72
  %747 = fsub <8 x float> %wide.masked.load341.1, %wide.masked.load340.1
  %748 = bitcast float* %745 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %747, <8 x float>* %748, i32 4, <8 x i1> %736), !tbaa !12, !alias.scope !72, !llvm.access.group !21
  %749 = getelementptr inbounds float, float* %1, i64 %739
  %750 = bitcast float* %749 to <8 x float>*
  %wide.masked.load342.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %750, i32 4, <8 x i1> %736, <8 x float> undef), !tbaa !12, !alias.scope !74, !noalias !72
  %751 = fmul <8 x float> %broadcast.splat344, %wide.masked.load342.1
  %752 = fdiv <8 x float> %747, %751, !fpmath !26
  %753 = bitcast float* %745 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %752, <8 x float>* %753, i32 4, <8 x i1> %736), !tbaa !12, !alias.scope !72, !llvm.access.group !21
  %754 = or <8 x i64> %broadcast.splat337, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %755 = trunc <8 x i64> %754 to <8 x i32>
  %756 = icmp sgt <8 x i32> %broadcast.splat339, %755
  %757 = extractelement <8 x i64> %754, i32 0
  %758 = shl i64 %757, 32
  %759 = ashr exact i64 %758, 32
  %760 = getelementptr inbounds float, float* %0, i64 %759
  %761 = bitcast float* %760 to <8 x float>*
  %wide.masked.load340.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %761, i32 4, <8 x i1> %756, <8 x float> undef), !tbaa !12, !alias.scope !69, !noalias !72
  %762 = extractelement <8 x i32> %755, i32 0
  %763 = add nsw i32 %mul.i.7, %762
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds float, float* %2, i64 %764
  %766 = bitcast float* %765 to <8 x float>*
  %wide.masked.load341.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %766, i32 4, <8 x i1> %756, <8 x float> undef), !tbaa !12, !alias.scope !72
  %767 = fsub <8 x float> %wide.masked.load341.2, %wide.masked.load340.2
  %768 = bitcast float* %765 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %767, <8 x float>* %768, i32 4, <8 x i1> %756), !tbaa !12, !alias.scope !72, !llvm.access.group !21
  %769 = getelementptr inbounds float, float* %1, i64 %759
  %770 = bitcast float* %769 to <8 x float>*
  %wide.masked.load342.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %770, i32 4, <8 x i1> %756, <8 x float> undef), !tbaa !12, !alias.scope !74, !noalias !72
  %771 = fmul <8 x float> %broadcast.splat344, %wide.masked.load342.2
  %772 = fdiv <8 x float> %767, %771, !fpmath !26
  %773 = bitcast float* %765 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %772, <8 x float>* %773, i32 4, <8 x i1> %756), !tbaa !12, !alias.scope !72, !llvm.access.group !21
  %774 = or <8 x i64> %broadcast.splat337, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %775 = trunc <8 x i64> %774 to <8 x i32>
  %776 = icmp sgt <8 x i32> %broadcast.splat339, %775
  %777 = extractelement <8 x i64> %774, i32 0
  %778 = shl i64 %777, 32
  %779 = ashr exact i64 %778, 32
  %780 = getelementptr inbounds float, float* %0, i64 %779
  %781 = bitcast float* %780 to <8 x float>*
  %wide.masked.load340.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %781, i32 4, <8 x i1> %776, <8 x float> undef), !tbaa !12, !alias.scope !69, !noalias !72
  %782 = extractelement <8 x i32> %775, i32 0
  %783 = add nsw i32 %mul.i.7, %782
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds float, float* %2, i64 %784
  %786 = bitcast float* %785 to <8 x float>*
  %wide.masked.load341.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %786, i32 4, <8 x i1> %776, <8 x float> undef), !tbaa !12, !alias.scope !72
  %787 = fsub <8 x float> %wide.masked.load341.3, %wide.masked.load340.3
  %788 = bitcast float* %785 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %787, <8 x float>* %788, i32 4, <8 x i1> %776), !tbaa !12, !alias.scope !72, !llvm.access.group !21
  %789 = getelementptr inbounds float, float* %1, i64 %779
  %790 = bitcast float* %789 to <8 x float>*
  %wide.masked.load342.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %790, i32 4, <8 x i1> %776, <8 x float> undef), !tbaa !12, !alias.scope !74, !noalias !72
  %791 = fmul <8 x float> %broadcast.splat344, %wide.masked.load342.3
  %792 = fdiv <8 x float> %787, %791, !fpmath !26
  %793 = bitcast float* %785 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %792, <8 x float>* %793, i32 4, <8 x i1> %776), !tbaa !12, !alias.scope !72, !llvm.access.group !21
  br label %pregion_for_end.i.7

pregion_for_entry.entry.i.us.7:                   ; preds = %if.end.r_exit.i.us.7.1, %pregion_for_entry.entry.i.us.7.preheader
  %_local_id_x.0.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.us.7.preheader ], [ %801, %if.end.r_exit.i.us.7.1 ]
  %add1.i.i.us.7 = add nuw nsw i64 %_local_id_x.0.us.7, %mul.i.i
  %conv.i.us.7 = trunc i64 %add1.i.i.us.7 to i32
  %cmp4.i.us.7 = icmp slt i32 %conv.i.us.7, %4
  br i1 %cmp4.i.us.7, label %if.then.i.us.7, label %if.end.r_exit.i.us.7

if.then.i.us.7:                                   ; preds = %pregion_for_entry.entry.i.us.7
  %sext.i.us.7 = shl i64 %add1.i.i.us.7, 32
  %idxprom.i.us.7 = ashr exact i64 %sext.i.us.7, 32
  %arrayidx.i.us.7 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.7
  %794 = load float, float* %arrayidx.i.us.7, align 4, !tbaa !12
  %add.i.us.7 = add nsw i32 %mul.i.7, %conv.i.us.7
  %idxprom6.i.us.7 = sext i32 %add.i.us.7 to i64
  %arrayidx7.i.us.7 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.7
  %795 = load float, float* %arrayidx7.i.us.7, align 4, !tbaa !12
  %sub.i.us.7 = fsub float %795, %794
  store float %sub.i.us.7, float* %arrayidx7.i.us.7, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us.7 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.7
  %796 = load float, float* %arrayidx10.i.us.7, align 4, !tbaa !12
  %mul11.i.us.7 = fmul float %10, %796
  %div.i.us.7 = fdiv float %sub.i.us.7, %mul11.i.us.7, !fpmath !26
  store float %div.i.us.7, float* %arrayidx7.i.us.7, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.7

if.end.r_exit.i.us.7:                             ; preds = %if.then.i.us.7, %pregion_for_entry.entry.i.us.7
  %797 = or i64 %_local_id_x.0.us.7, 1
  %add1.i.i.us.7.1 = add nuw nsw i64 %797, %mul.i.i
  %conv.i.us.7.1 = trunc i64 %add1.i.i.us.7.1 to i32
  %cmp4.i.us.7.1 = icmp slt i32 %conv.i.us.7.1, %4
  br i1 %cmp4.i.us.7.1, label %if.then.i.us.7.1, label %if.end.r_exit.i.us.7.1

pregion_for_end.i.7.loopexit:                     ; preds = %if.end.r_exit.i.us.7.1
  br label %pregion_for_end.i.7

pregion_for_end.i.7:                              ; preds = %pregion_for_end.i.7.loopexit, %vector.ph329, %pregion_for_end.i.6
  ret void

if.then.i.us.7.1:                                 ; preds = %if.end.r_exit.i.us.7
  %sext.i.us.7.1 = shl i64 %add1.i.i.us.7.1, 32
  %idxprom.i.us.7.1 = ashr exact i64 %sext.i.us.7.1, 32
  %arrayidx.i.us.7.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.7.1
  %798 = load float, float* %arrayidx.i.us.7.1, align 4, !tbaa !12
  %add.i.us.7.1 = add nsw i32 %mul.i.7, %conv.i.us.7.1
  %idxprom6.i.us.7.1 = sext i32 %add.i.us.7.1 to i64
  %arrayidx7.i.us.7.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.7.1
  %799 = load float, float* %arrayidx7.i.us.7.1, align 4, !tbaa !12
  %sub.i.us.7.1 = fsub float %799, %798
  store float %sub.i.us.7.1, float* %arrayidx7.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us.7.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.7.1
  %800 = load float, float* %arrayidx10.i.us.7.1, align 4, !tbaa !12
  %mul11.i.us.7.1 = fmul float %10, %800
  %div.i.us.7.1 = fdiv float %sub.i.us.7.1, %mul11.i.us.7.1, !fpmath !26
  store float %div.i.us.7.1, float* %arrayidx7.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.7.1

if.end.r_exit.i.us.7.1:                           ; preds = %if.then.i.us.7.1, %if.end.r_exit.i.us.7
  %801 = add nuw nsw i64 %_local_id_x.0.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %801, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.7.loopexit, label %pregion_for_entry.entry.i.us.7, !llvm.loop !76

if.then.i.us.6.1:                                 ; preds = %if.end.r_exit.i.us.6
  %sext.i.us.6.1 = shl i64 %add1.i.i.us.6.1, 32
  %idxprom.i.us.6.1 = ashr exact i64 %sext.i.us.6.1, 32
  %arrayidx.i.us.6.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.6.1
  %802 = load float, float* %arrayidx.i.us.6.1, align 4, !tbaa !12
  %add.i.us.6.1 = add nsw i32 %mul.i.6, %conv.i.us.6.1
  %idxprom6.i.us.6.1 = sext i32 %add.i.us.6.1 to i64
  %arrayidx7.i.us.6.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.6.1
  %803 = load float, float* %arrayidx7.i.us.6.1, align 4, !tbaa !12
  %sub.i.us.6.1 = fsub float %803, %802
  store float %sub.i.us.6.1, float* %arrayidx7.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us.6.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.6.1
  %804 = load float, float* %arrayidx10.i.us.6.1, align 4, !tbaa !12
  %mul11.i.us.6.1 = fmul float %10, %804
  %div.i.us.6.1 = fdiv float %sub.i.us.6.1, %mul11.i.us.6.1, !fpmath !26
  store float %div.i.us.6.1, float* %arrayidx7.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.6.1

if.end.r_exit.i.us.6.1:                           ; preds = %if.then.i.us.6.1, %if.end.r_exit.i.us.6
  %805 = add nuw nsw i64 %_local_id_x.0.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %805, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.6.loopexit, label %pregion_for_entry.entry.i.us.6, !llvm.loop !79

if.then.i.us.5.1:                                 ; preds = %if.end.r_exit.i.us.5
  %sext.i.us.5.1 = shl i64 %add1.i.i.us.5.1, 32
  %idxprom.i.us.5.1 = ashr exact i64 %sext.i.us.5.1, 32
  %arrayidx.i.us.5.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.5.1
  %806 = load float, float* %arrayidx.i.us.5.1, align 4, !tbaa !12
  %add.i.us.5.1 = add nsw i32 %mul.i.5, %conv.i.us.5.1
  %idxprom6.i.us.5.1 = sext i32 %add.i.us.5.1 to i64
  %arrayidx7.i.us.5.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.5.1
  %807 = load float, float* %arrayidx7.i.us.5.1, align 4, !tbaa !12
  %sub.i.us.5.1 = fsub float %807, %806
  store float %sub.i.us.5.1, float* %arrayidx7.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us.5.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.5.1
  %808 = load float, float* %arrayidx10.i.us.5.1, align 4, !tbaa !12
  %mul11.i.us.5.1 = fmul float %10, %808
  %div.i.us.5.1 = fdiv float %sub.i.us.5.1, %mul11.i.us.5.1, !fpmath !26
  store float %div.i.us.5.1, float* %arrayidx7.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.5.1

if.end.r_exit.i.us.5.1:                           ; preds = %if.then.i.us.5.1, %if.end.r_exit.i.us.5
  %809 = add nuw nsw i64 %_local_id_x.0.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %809, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.5.loopexit, label %pregion_for_entry.entry.i.us.5, !llvm.loop !80

if.then.i.us.4.1:                                 ; preds = %if.end.r_exit.i.us.4
  %sext.i.us.4.1 = shl i64 %add1.i.i.us.4.1, 32
  %idxprom.i.us.4.1 = ashr exact i64 %sext.i.us.4.1, 32
  %arrayidx.i.us.4.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.4.1
  %810 = load float, float* %arrayidx.i.us.4.1, align 4, !tbaa !12
  %add.i.us.4.1 = add nsw i32 %mul.i.4, %conv.i.us.4.1
  %idxprom6.i.us.4.1 = sext i32 %add.i.us.4.1 to i64
  %arrayidx7.i.us.4.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.4.1
  %811 = load float, float* %arrayidx7.i.us.4.1, align 4, !tbaa !12
  %sub.i.us.4.1 = fsub float %811, %810
  store float %sub.i.us.4.1, float* %arrayidx7.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us.4.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.4.1
  %812 = load float, float* %arrayidx10.i.us.4.1, align 4, !tbaa !12
  %mul11.i.us.4.1 = fmul float %10, %812
  %div.i.us.4.1 = fdiv float %sub.i.us.4.1, %mul11.i.us.4.1, !fpmath !26
  store float %div.i.us.4.1, float* %arrayidx7.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.4.1

if.end.r_exit.i.us.4.1:                           ; preds = %if.then.i.us.4.1, %if.end.r_exit.i.us.4
  %813 = add nuw nsw i64 %_local_id_x.0.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %813, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.4.loopexit, label %pregion_for_entry.entry.i.us.4, !llvm.loop !81

if.then.i.us.3.1:                                 ; preds = %if.end.r_exit.i.us.3
  %sext.i.us.3.1 = shl i64 %add1.i.i.us.3.1, 32
  %idxprom.i.us.3.1 = ashr exact i64 %sext.i.us.3.1, 32
  %arrayidx.i.us.3.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.3.1
  %814 = load float, float* %arrayidx.i.us.3.1, align 4, !tbaa !12
  %add.i.us.3.1 = add nsw i32 %mul.i.3, %conv.i.us.3.1
  %idxprom6.i.us.3.1 = sext i32 %add.i.us.3.1 to i64
  %arrayidx7.i.us.3.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.3.1
  %815 = load float, float* %arrayidx7.i.us.3.1, align 4, !tbaa !12
  %sub.i.us.3.1 = fsub float %815, %814
  store float %sub.i.us.3.1, float* %arrayidx7.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us.3.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.3.1
  %816 = load float, float* %arrayidx10.i.us.3.1, align 4, !tbaa !12
  %mul11.i.us.3.1 = fmul float %10, %816
  %div.i.us.3.1 = fdiv float %sub.i.us.3.1, %mul11.i.us.3.1, !fpmath !26
  store float %div.i.us.3.1, float* %arrayidx7.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.3.1

if.end.r_exit.i.us.3.1:                           ; preds = %if.then.i.us.3.1, %if.end.r_exit.i.us.3
  %817 = add nuw nsw i64 %_local_id_x.0.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %817, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.3.loopexit, label %pregion_for_entry.entry.i.us.3, !llvm.loop !82

if.then.i.us.2.1:                                 ; preds = %if.end.r_exit.i.us.2
  %sext.i.us.2.1 = shl i64 %add1.i.i.us.2.1, 32
  %idxprom.i.us.2.1 = ashr exact i64 %sext.i.us.2.1, 32
  %arrayidx.i.us.2.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.2.1
  %818 = load float, float* %arrayidx.i.us.2.1, align 4, !tbaa !12
  %add.i.us.2.1 = add nsw i32 %mul.i.2, %conv.i.us.2.1
  %idxprom6.i.us.2.1 = sext i32 %add.i.us.2.1 to i64
  %arrayidx7.i.us.2.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.2.1
  %819 = load float, float* %arrayidx7.i.us.2.1, align 4, !tbaa !12
  %sub.i.us.2.1 = fsub float %819, %818
  store float %sub.i.us.2.1, float* %arrayidx7.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us.2.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.2.1
  %820 = load float, float* %arrayidx10.i.us.2.1, align 4, !tbaa !12
  %mul11.i.us.2.1 = fmul float %10, %820
  %div.i.us.2.1 = fdiv float %sub.i.us.2.1, %mul11.i.us.2.1, !fpmath !26
  store float %div.i.us.2.1, float* %arrayidx7.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.2.1

if.end.r_exit.i.us.2.1:                           ; preds = %if.then.i.us.2.1, %if.end.r_exit.i.us.2
  %821 = add nuw nsw i64 %_local_id_x.0.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %821, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.2.loopexit, label %pregion_for_entry.entry.i.us.2, !llvm.loop !83

if.then.i.us.1.1:                                 ; preds = %if.end.r_exit.i.us.1
  %sext.i.us.1.1 = shl i64 %add1.i.i.us.1.1, 32
  %idxprom.i.us.1.1 = ashr exact i64 %sext.i.us.1.1, 32
  %arrayidx.i.us.1.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.1.1
  %822 = load float, float* %arrayidx.i.us.1.1, align 4, !tbaa !12
  %add.i.us.1.1 = add nsw i32 %mul.i.1, %conv.i.us.1.1
  %idxprom6.i.us.1.1 = sext i32 %add.i.us.1.1 to i64
  %arrayidx7.i.us.1.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.1.1
  %823 = load float, float* %arrayidx7.i.us.1.1, align 4, !tbaa !12
  %sub.i.us.1.1 = fsub float %823, %822
  store float %sub.i.us.1.1, float* %arrayidx7.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us.1.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.1.1
  %824 = load float, float* %arrayidx10.i.us.1.1, align 4, !tbaa !12
  %mul11.i.us.1.1 = fmul float %10, %824
  %div.i.us.1.1 = fdiv float %sub.i.us.1.1, %mul11.i.us.1.1, !fpmath !26
  store float %div.i.us.1.1, float* %arrayidx7.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.1.1

if.end.r_exit.i.us.1.1:                           ; preds = %if.then.i.us.1.1, %if.end.r_exit.i.us.1
  %825 = add nuw nsw i64 %_local_id_x.0.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %825, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.1.loopexit, label %pregion_for_entry.entry.i.us.1, !llvm.loop !84

if.then.i.us.1368:                                ; preds = %if.end.r_exit.i.us
  %sext.i.us.1358 = shl i64 %add1.i.i.us.1354, 32
  %idxprom.i.us.1359 = ashr exact i64 %sext.i.us.1358, 32
  %arrayidx.i.us.1360 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.1359
  %826 = load float, float* %arrayidx.i.us.1360, align 4, !tbaa !12
  %add.i.us.1361 = add nsw i32 %mul.i, %conv.i.us.1355
  %idxprom6.i.us.1362 = sext i32 %add.i.us.1361 to i64
  %arrayidx7.i.us.1363 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.1362
  %827 = load float, float* %arrayidx7.i.us.1363, align 4, !tbaa !12
  %sub.i.us.1364 = fsub float %827, %826
  store float %sub.i.us.1364, float* %arrayidx7.i.us.1363, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.us.1365 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.1359
  %828 = load float, float* %arrayidx10.i.us.1365, align 4, !tbaa !12
  %mul11.i.us.1366 = fmul float %10, %828
  %div.i.us.1367 = fdiv float %sub.i.us.1364, %mul11.i.us.1366, !fpmath !26
  store float %div.i.us.1367, float* %arrayidx7.i.us.1363, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.1369

if.end.r_exit.i.us.1369:                          ; preds = %if.then.i.us.1368, %if.end.r_exit.i.us
  %829 = add nuw nsw i64 %_local_id_x.0.us, 2
  %exitcond.not.1 = icmp eq i64 %829, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !85
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_reduce_kernel_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
pregion_for_entry.pregion_for_init.i.i:
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
  %17 = bitcast i8** %16 to float**
  %18 = load float*, float** %17, align 8
  %19 = load float, float* %18, align 4
  %20 = getelementptr i8*, i8** %0, i64 4
  %21 = bitcast i8** %20 to i32**
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr i8*, i8** %0, i64 5
  %25 = bitcast i8** %24 to i32**
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %28 = tail call float @llvm.sqrt.f32(float %19) #5
  %conv2.i.i = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %27, %conv2.i.i
  %mul.i.i = mul nsw i32 %23, %conv2.i.i
  br i1 %cmp.i.i, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %29 = trunc i64 %3 to i32
  %30 = mul i32 %23, %29
  %31 = shl i32 %30, 3
  %32 = trunc i64 %2 to i32
  %33 = shl i32 %32, 5
  %34 = add i32 %31, %33
  %35 = icmp sgt i32 %34, 2147483616
  br i1 %35, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %36 = trunc i64 %2 to i32
  %37 = shl i32 %36, 5
  %38 = sext i32 %37 to i64
  %scevgep = getelementptr float, float* %7, i64 %38
  %39 = add nsw i64 %38, 32
  %scevgep4 = getelementptr float, float* %7, i64 %39
  %40 = trunc i64 %3 to i32
  %41 = mul i32 %23, %40
  %42 = shl i32 %41, 3
  %43 = add i32 %42, %37
  %44 = sext i32 %43 to i64
  %scevgep6 = getelementptr float, float* %15, i64 %44
  %45 = add nsw i64 %44, 32
  %scevgep8 = getelementptr float, float* %15, i64 %45
  %scevgep10 = getelementptr float, float* %11, i64 %38
  %scevgep12 = getelementptr float, float* %11, i64 %39
  %bound0 = icmp ult float* %scevgep, %scevgep8
  %bound1 = icmp ult float* %scevgep6, %scevgep4
  %found.conflict = and i1 %bound0, %bound1
  %bound014 = icmp ult float* %scevgep10, %scevgep8
  %bound115 = icmp ult float* %scevgep6, %scevgep12
  %found.conflict16 = and i1 %bound014, %bound115
  %conflict.rdx = or i1 %found.conflict, %found.conflict16
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert17 = insertelement <8 x i32> undef, i32 %23, i32 0
  %broadcast.splat18 = shufflevector <8 x i32> %broadcast.splatinsert17, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert21 = insertelement <8 x float> undef, float %28, i32 0
  %broadcast.splat22 = shufflevector <8 x float> %broadcast.splatinsert21, <8 x float> undef, <8 x i32> zeroinitializer
  %46 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %47 = trunc <8 x i64> %46 to <8 x i32>
  %48 = icmp sgt <8 x i32> %broadcast.splat18, %47
  %49 = extractelement <8 x i64> %46, i32 0
  %50 = shl i64 %49, 32
  %51 = ashr exact i64 %50, 32
  %52 = getelementptr inbounds float, float* %7, i64 %51
  %53 = bitcast float* %52 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %53, i32 4, <8 x i1> %48, <8 x float> undef), !tbaa !12, !alias.scope !86, !noalias !89
  %54 = extractelement <8 x i32> %47, i32 0
  %55 = add nsw i32 %mul.i.i, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %15, i64 %56
  %58 = bitcast float* %57 to <8 x float>*
  %wide.masked.load19 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %58, i32 4, <8 x i1> %48, <8 x float> undef), !tbaa !12, !alias.scope !89
  %59 = fsub <8 x float> %wide.masked.load19, %wide.masked.load
  %60 = bitcast float* %57 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %59, <8 x float>* %60, i32 4, <8 x i1> %48), !tbaa !12, !alias.scope !89, !llvm.access.group !21
  %61 = getelementptr inbounds float, float* %11, i64 %51
  %62 = bitcast float* %61 to <8 x float>*
  %wide.masked.load20 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %62, i32 4, <8 x i1> %48, <8 x float> undef), !tbaa !12, !alias.scope !91, !noalias !89
  %63 = fmul <8 x float> %broadcast.splat22, %wide.masked.load20
  %64 = fdiv <8 x float> %59, %63, !fpmath !26
  %65 = bitcast float* %57 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %64, <8 x float>* %65, i32 4, <8 x i1> %48), !tbaa !12, !alias.scope !89, !llvm.access.group !21
  %66 = or <8 x i64> %broadcast.splat, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %67 = trunc <8 x i64> %66 to <8 x i32>
  %68 = icmp sgt <8 x i32> %broadcast.splat18, %67
  %69 = extractelement <8 x i64> %66, i32 0
  %70 = shl i64 %69, 32
  %71 = ashr exact i64 %70, 32
  %72 = getelementptr inbounds float, float* %7, i64 %71
  %73 = bitcast float* %72 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %73, i32 4, <8 x i1> %68, <8 x float> undef), !tbaa !12, !alias.scope !86, !noalias !89
  %74 = extractelement <8 x i32> %67, i32 0
  %75 = add nsw i32 %mul.i.i, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %15, i64 %76
  %78 = bitcast float* %77 to <8 x float>*
  %wide.masked.load19.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %78, i32 4, <8 x i1> %68, <8 x float> undef), !tbaa !12, !alias.scope !89
  %79 = fsub <8 x float> %wide.masked.load19.1, %wide.masked.load.1
  %80 = bitcast float* %77 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %79, <8 x float>* %80, i32 4, <8 x i1> %68), !tbaa !12, !alias.scope !89, !llvm.access.group !21
  %81 = getelementptr inbounds float, float* %11, i64 %71
  %82 = bitcast float* %81 to <8 x float>*
  %wide.masked.load20.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %82, i32 4, <8 x i1> %68, <8 x float> undef), !tbaa !12, !alias.scope !91, !noalias !89
  %83 = fmul <8 x float> %broadcast.splat22, %wide.masked.load20.1
  %84 = fdiv <8 x float> %79, %83, !fpmath !26
  %85 = bitcast float* %77 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %84, <8 x float>* %85, i32 4, <8 x i1> %68), !tbaa !12, !alias.scope !89, !llvm.access.group !21
  %86 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %87 = trunc <8 x i64> %86 to <8 x i32>
  %88 = icmp sgt <8 x i32> %broadcast.splat18, %87
  %89 = extractelement <8 x i64> %86, i32 0
  %90 = shl i64 %89, 32
  %91 = ashr exact i64 %90, 32
  %92 = getelementptr inbounds float, float* %7, i64 %91
  %93 = bitcast float* %92 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %93, i32 4, <8 x i1> %88, <8 x float> undef), !tbaa !12, !alias.scope !86, !noalias !89
  %94 = extractelement <8 x i32> %87, i32 0
  %95 = add nsw i32 %mul.i.i, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %15, i64 %96
  %98 = bitcast float* %97 to <8 x float>*
  %wide.masked.load19.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %98, i32 4, <8 x i1> %88, <8 x float> undef), !tbaa !12, !alias.scope !89
  %99 = fsub <8 x float> %wide.masked.load19.2, %wide.masked.load.2
  %100 = bitcast float* %97 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %99, <8 x float>* %100, i32 4, <8 x i1> %88), !tbaa !12, !alias.scope !89, !llvm.access.group !21
  %101 = getelementptr inbounds float, float* %11, i64 %91
  %102 = bitcast float* %101 to <8 x float>*
  %wide.masked.load20.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %102, i32 4, <8 x i1> %88, <8 x float> undef), !tbaa !12, !alias.scope !91, !noalias !89
  %103 = fmul <8 x float> %broadcast.splat22, %wide.masked.load20.2
  %104 = fdiv <8 x float> %99, %103, !fpmath !26
  %105 = bitcast float* %97 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %104, <8 x float>* %105, i32 4, <8 x i1> %88), !tbaa !12, !alias.scope !89, !llvm.access.group !21
  %106 = or <8 x i64> %broadcast.splat, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %107 = trunc <8 x i64> %106 to <8 x i32>
  %108 = icmp sgt <8 x i32> %broadcast.splat18, %107
  %109 = extractelement <8 x i64> %106, i32 0
  %110 = shl i64 %109, 32
  %111 = ashr exact i64 %110, 32
  %112 = getelementptr inbounds float, float* %7, i64 %111
  %113 = bitcast float* %112 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %113, i32 4, <8 x i1> %108, <8 x float> undef), !tbaa !12, !alias.scope !86, !noalias !89
  %114 = extractelement <8 x i32> %107, i32 0
  %115 = add nsw i32 %mul.i.i, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %15, i64 %116
  %118 = bitcast float* %117 to <8 x float>*
  %wide.masked.load19.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %118, i32 4, <8 x i1> %108, <8 x float> undef), !tbaa !12, !alias.scope !89
  %119 = fsub <8 x float> %wide.masked.load19.3, %wide.masked.load.3
  %120 = bitcast float* %117 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %119, <8 x float>* %120, i32 4, <8 x i1> %108), !tbaa !12, !alias.scope !89, !llvm.access.group !21
  %121 = getelementptr inbounds float, float* %11, i64 %111
  %122 = bitcast float* %121 to <8 x float>*
  %wide.masked.load20.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %122, i32 4, <8 x i1> %108, <8 x float> undef), !tbaa !12, !alias.scope !91, !noalias !89
  %123 = fmul <8 x float> %broadcast.splat22, %wide.masked.load20.3
  %124 = fdiv <8 x float> %119, %123, !fpmath !26
  %125 = bitcast float* %117 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %124, <8 x float>* %125, i32 4, <8 x i1> %108), !tbaa !12, !alias.scope !89, !llvm.access.group !21
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us.1369, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.preheader ], [ %847, %if.end.r_exit.i.i.us.1369 ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %23, %conv.i.i.us
  br i1 %cmp4.i.i.us, label %if.then.i.i.us, label %if.end.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us
  %126 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %add.i.i.us = add nsw i32 %mul.i.i, %conv.i.i.us
  %idxprom6.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx7.i.i.us = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us
  %127 = load float, float* %arrayidx7.i.i.us, align 4, !tbaa !12
  %sub.i.i.us = fsub float %127, %126
  store float %sub.i.i.us, float* %arrayidx7.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us
  %128 = load float, float* %arrayidx10.i.i.us, align 4, !tbaa !12
  %mul11.i.i.us = fmul float %28, %128
  %div.i.i.us = fdiv float %sub.i.i.us, %mul11.i.i.us, !fpmath !26
  store float %div.i.i.us, float* %arrayidx7.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %129 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1354 = add nuw nsw i64 %129, %mul.i.i.i
  %conv.i.i.us.1355 = trunc i64 %add1.i.i.i.us.1354 to i32
  %cmp4.i.i.us.1356 = icmp sgt i32 %23, %conv.i.i.us.1355
  br i1 %cmp4.i.i.us.1356, label %if.then.i.i.us.1368, label %if.end.r_exit.i.i.us.1369

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.r_exit.i.i.us.1369
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i
  %130 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.1 = or i32 %130, 1
  %cmp.i.i.1 = icmp sgt i32 %27, %conv2.i.i.1
  %mul.i.i.1 = mul nsw i32 %23, %conv2.i.i.1
  br i1 %cmp.i.i.1, label %vector.scevcheck30, label %pregion_for_end.i.i.1

vector.scevcheck30:                               ; preds = %pregion_for_end.i.i
  %131 = mul i32 %23, %conv2.i.i.1
  %132 = trunc i64 %2 to i32
  %133 = shl i32 %132, 5
  %134 = add i32 %131, %133
  %135 = icmp sgt i32 %134, 2147483616
  br i1 %135, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.memcheck52

pregion_for_entry.entry.i.i.us.1.preheader:       ; preds = %vector.memcheck52, %vector.scevcheck30
  br label %pregion_for_entry.entry.i.i.us.1

vector.memcheck52:                                ; preds = %vector.scevcheck30
  %136 = trunc i64 %2 to i32
  %137 = shl i32 %136, 5
  %138 = sext i32 %137 to i64
  %scevgep32 = getelementptr float, float* %7, i64 %138
  %139 = add nsw i64 %138, 32
  %scevgep34 = getelementptr float, float* %7, i64 %139
  %140 = mul i32 %23, %conv2.i.i.1
  %141 = add i32 %140, %137
  %142 = sext i32 %141 to i64
  %scevgep36 = getelementptr float, float* %15, i64 %142
  %143 = add nsw i64 %142, 32
  %scevgep38 = getelementptr float, float* %15, i64 %143
  %scevgep40 = getelementptr float, float* %11, i64 %138
  %scevgep42 = getelementptr float, float* %11, i64 %139
  %bound044 = icmp ult float* %scevgep32, %scevgep38
  %bound145 = icmp ult float* %scevgep36, %scevgep34
  %found.conflict46 = and i1 %bound044, %bound145
  %bound047 = icmp ult float* %scevgep40, %scevgep38
  %bound148 = icmp ult float* %scevgep36, %scevgep42
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx50 = or i1 %found.conflict46, %found.conflict49
  br i1 %conflict.rdx50, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.ph53

vector.ph53:                                      ; preds = %vector.memcheck52
  %broadcast.splatinsert60 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat61 = shufflevector <8 x i64> %broadcast.splatinsert60, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <8 x i32> undef, i32 %23, i32 0
  %broadcast.splat63 = shufflevector <8 x i32> %broadcast.splatinsert62, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <8 x float> undef, float %28, i32 0
  %broadcast.splat68 = shufflevector <8 x float> %broadcast.splatinsert67, <8 x float> undef, <8 x i32> zeroinitializer
  %144 = or <8 x i64> %broadcast.splat61, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %145 = trunc <8 x i64> %144 to <8 x i32>
  %146 = icmp sgt <8 x i32> %broadcast.splat63, %145
  %147 = extractelement <8 x i64> %144, i32 0
  %148 = shl i64 %147, 32
  %149 = ashr exact i64 %148, 32
  %150 = getelementptr inbounds float, float* %7, i64 %149
  %151 = bitcast float* %150 to <8 x float>*
  %wide.masked.load64 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %151, i32 4, <8 x i1> %146, <8 x float> undef), !tbaa !12, !alias.scope !93, !noalias !96
  %152 = extractelement <8 x i32> %145, i32 0
  %153 = add nsw i32 %mul.i.i.1, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %15, i64 %154
  %156 = bitcast float* %155 to <8 x float>*
  %wide.masked.load65 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %156, i32 4, <8 x i1> %146, <8 x float> undef), !tbaa !12, !alias.scope !96
  %157 = fsub <8 x float> %wide.masked.load65, %wide.masked.load64
  %158 = bitcast float* %155 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %157, <8 x float>* %158, i32 4, <8 x i1> %146), !tbaa !12, !alias.scope !96, !llvm.access.group !21
  %159 = getelementptr inbounds float, float* %11, i64 %149
  %160 = bitcast float* %159 to <8 x float>*
  %wide.masked.load66 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %160, i32 4, <8 x i1> %146, <8 x float> undef), !tbaa !12, !alias.scope !98, !noalias !96
  %161 = fmul <8 x float> %broadcast.splat68, %wide.masked.load66
  %162 = fdiv <8 x float> %157, %161, !fpmath !26
  %163 = bitcast float* %155 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %162, <8 x float>* %163, i32 4, <8 x i1> %146), !tbaa !12, !alias.scope !96, !llvm.access.group !21
  %164 = or <8 x i64> %broadcast.splat61, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %165 = trunc <8 x i64> %164 to <8 x i32>
  %166 = icmp sgt <8 x i32> %broadcast.splat63, %165
  %167 = extractelement <8 x i64> %164, i32 0
  %168 = shl i64 %167, 32
  %169 = ashr exact i64 %168, 32
  %170 = getelementptr inbounds float, float* %7, i64 %169
  %171 = bitcast float* %170 to <8 x float>*
  %wide.masked.load64.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %171, i32 4, <8 x i1> %166, <8 x float> undef), !tbaa !12, !alias.scope !93, !noalias !96
  %172 = extractelement <8 x i32> %165, i32 0
  %173 = add nsw i32 %mul.i.i.1, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %15, i64 %174
  %176 = bitcast float* %175 to <8 x float>*
  %wide.masked.load65.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %176, i32 4, <8 x i1> %166, <8 x float> undef), !tbaa !12, !alias.scope !96
  %177 = fsub <8 x float> %wide.masked.load65.1, %wide.masked.load64.1
  %178 = bitcast float* %175 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %177, <8 x float>* %178, i32 4, <8 x i1> %166), !tbaa !12, !alias.scope !96, !llvm.access.group !21
  %179 = getelementptr inbounds float, float* %11, i64 %169
  %180 = bitcast float* %179 to <8 x float>*
  %wide.masked.load66.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %180, i32 4, <8 x i1> %166, <8 x float> undef), !tbaa !12, !alias.scope !98, !noalias !96
  %181 = fmul <8 x float> %broadcast.splat68, %wide.masked.load66.1
  %182 = fdiv <8 x float> %177, %181, !fpmath !26
  %183 = bitcast float* %175 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %182, <8 x float>* %183, i32 4, <8 x i1> %166), !tbaa !12, !alias.scope !96, !llvm.access.group !21
  %184 = or <8 x i64> %broadcast.splat61, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %185 = trunc <8 x i64> %184 to <8 x i32>
  %186 = icmp sgt <8 x i32> %broadcast.splat63, %185
  %187 = extractelement <8 x i64> %184, i32 0
  %188 = shl i64 %187, 32
  %189 = ashr exact i64 %188, 32
  %190 = getelementptr inbounds float, float* %7, i64 %189
  %191 = bitcast float* %190 to <8 x float>*
  %wide.masked.load64.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %191, i32 4, <8 x i1> %186, <8 x float> undef), !tbaa !12, !alias.scope !93, !noalias !96
  %192 = extractelement <8 x i32> %185, i32 0
  %193 = add nsw i32 %mul.i.i.1, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %15, i64 %194
  %196 = bitcast float* %195 to <8 x float>*
  %wide.masked.load65.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %196, i32 4, <8 x i1> %186, <8 x float> undef), !tbaa !12, !alias.scope !96
  %197 = fsub <8 x float> %wide.masked.load65.2, %wide.masked.load64.2
  %198 = bitcast float* %195 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %197, <8 x float>* %198, i32 4, <8 x i1> %186), !tbaa !12, !alias.scope !96, !llvm.access.group !21
  %199 = getelementptr inbounds float, float* %11, i64 %189
  %200 = bitcast float* %199 to <8 x float>*
  %wide.masked.load66.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %200, i32 4, <8 x i1> %186, <8 x float> undef), !tbaa !12, !alias.scope !98, !noalias !96
  %201 = fmul <8 x float> %broadcast.splat68, %wide.masked.load66.2
  %202 = fdiv <8 x float> %197, %201, !fpmath !26
  %203 = bitcast float* %195 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %202, <8 x float>* %203, i32 4, <8 x i1> %186), !tbaa !12, !alias.scope !96, !llvm.access.group !21
  %204 = or <8 x i64> %broadcast.splat61, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %205 = trunc <8 x i64> %204 to <8 x i32>
  %206 = icmp sgt <8 x i32> %broadcast.splat63, %205
  %207 = extractelement <8 x i64> %204, i32 0
  %208 = shl i64 %207, 32
  %209 = ashr exact i64 %208, 32
  %210 = getelementptr inbounds float, float* %7, i64 %209
  %211 = bitcast float* %210 to <8 x float>*
  %wide.masked.load64.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %211, i32 4, <8 x i1> %206, <8 x float> undef), !tbaa !12, !alias.scope !93, !noalias !96
  %212 = extractelement <8 x i32> %205, i32 0
  %213 = add nsw i32 %mul.i.i.1, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %15, i64 %214
  %216 = bitcast float* %215 to <8 x float>*
  %wide.masked.load65.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %216, i32 4, <8 x i1> %206, <8 x float> undef), !tbaa !12, !alias.scope !96
  %217 = fsub <8 x float> %wide.masked.load65.3, %wide.masked.load64.3
  %218 = bitcast float* %215 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %217, <8 x float>* %218, i32 4, <8 x i1> %206), !tbaa !12, !alias.scope !96, !llvm.access.group !21
  %219 = getelementptr inbounds float, float* %11, i64 %209
  %220 = bitcast float* %219 to <8 x float>*
  %wide.masked.load66.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %220, i32 4, <8 x i1> %206, <8 x float> undef), !tbaa !12, !alias.scope !98, !noalias !96
  %221 = fmul <8 x float> %broadcast.splat68, %wide.masked.load66.3
  %222 = fdiv <8 x float> %217, %221, !fpmath !26
  %223 = bitcast float* %215 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %222, <8 x float>* %223, i32 4, <8 x i1> %206), !tbaa !12, !alias.scope !96, !llvm.access.group !21
  br label %pregion_for_end.i.i.1

pregion_for_entry.entry.i.i.us.1:                 ; preds = %if.end.r_exit.i.i.us.1.1, %pregion_for_entry.entry.i.i.us.1.preheader
  %_local_id_x.i.0.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.1.preheader ], [ %843, %if.end.r_exit.i.i.us.1.1 ]
  %add1.i.i.i.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.1, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp4.i.i.us.1 = icmp sgt i32 %23, %conv.i.i.us.1
  br i1 %cmp4.i.i.us.1, label %if.then.i.i.us.1, label %if.end.r_exit.i.i.us.1

if.then.i.i.us.1:                                 ; preds = %pregion_for_entry.entry.i.i.us.1
  %sext.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom.i.i.us.1 = ashr exact i64 %sext.i.i.us.1, 32
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.1
  %224 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %add.i.i.us.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1
  %idxprom6.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx7.i.i.us.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.1
  %225 = load float, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12
  %sub.i.i.us.1 = fsub float %225, %224
  store float %sub.i.i.us.1, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.1
  %226 = load float, float* %arrayidx10.i.i.us.1, align 4, !tbaa !12
  %mul11.i.i.us.1 = fmul float %28, %226
  %div.i.i.us.1 = fdiv float %sub.i.i.us.1, %mul11.i.i.us.1, !fpmath !26
  store float %div.i.i.us.1, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.1

if.end.r_exit.i.i.us.1:                           ; preds = %if.then.i.i.us.1, %pregion_for_entry.entry.i.i.us.1
  %227 = or i64 %_local_id_x.i.0.us.1, 1
  %add1.i.i.i.us.1.1 = add nuw nsw i64 %227, %mul.i.i.i
  %conv.i.i.us.1.1 = trunc i64 %add1.i.i.i.us.1.1 to i32
  %cmp4.i.i.us.1.1 = icmp sgt i32 %23, %conv.i.i.us.1.1
  br i1 %cmp4.i.i.us.1.1, label %if.then.i.i.us.1.1, label %if.end.r_exit.i.i.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.r_exit.i.i.us.1.1
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph53, %pregion_for_end.i.i
  %228 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.2 = or i32 %228, 2
  %cmp.i.i.2 = icmp sgt i32 %27, %conv2.i.i.2
  %mul.i.i.2 = mul nsw i32 %23, %conv2.i.i.2
  br i1 %cmp.i.i.2, label %vector.scevcheck76, label %pregion_for_end.i.i.2

vector.scevcheck76:                               ; preds = %pregion_for_end.i.i.1
  %229 = mul i32 %23, %conv2.i.i.2
  %230 = trunc i64 %2 to i32
  %231 = shl i32 %230, 5
  %232 = add i32 %229, %231
  %233 = icmp sgt i32 %232, 2147483616
  br i1 %233, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.memcheck98

pregion_for_entry.entry.i.i.us.2.preheader:       ; preds = %vector.memcheck98, %vector.scevcheck76
  br label %pregion_for_entry.entry.i.i.us.2

vector.memcheck98:                                ; preds = %vector.scevcheck76
  %234 = trunc i64 %2 to i32
  %235 = shl i32 %234, 5
  %236 = sext i32 %235 to i64
  %scevgep78 = getelementptr float, float* %7, i64 %236
  %237 = add nsw i64 %236, 32
  %scevgep80 = getelementptr float, float* %7, i64 %237
  %238 = mul i32 %23, %conv2.i.i.2
  %239 = add i32 %238, %235
  %240 = sext i32 %239 to i64
  %scevgep82 = getelementptr float, float* %15, i64 %240
  %241 = add nsw i64 %240, 32
  %scevgep84 = getelementptr float, float* %15, i64 %241
  %scevgep86 = getelementptr float, float* %11, i64 %236
  %scevgep88 = getelementptr float, float* %11, i64 %237
  %bound090 = icmp ult float* %scevgep78, %scevgep84
  %bound191 = icmp ult float* %scevgep82, %scevgep80
  %found.conflict92 = and i1 %bound090, %bound191
  %bound093 = icmp ult float* %scevgep86, %scevgep84
  %bound194 = icmp ult float* %scevgep82, %scevgep88
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %found.conflict92, %found.conflict95
  br i1 %conflict.rdx96, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck98
  %broadcast.splatinsert106 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat107 = shufflevector <8 x i64> %broadcast.splatinsert106, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert108 = insertelement <8 x i32> undef, i32 %23, i32 0
  %broadcast.splat109 = shufflevector <8 x i32> %broadcast.splatinsert108, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <8 x float> undef, float %28, i32 0
  %broadcast.splat114 = shufflevector <8 x float> %broadcast.splatinsert113, <8 x float> undef, <8 x i32> zeroinitializer
  %242 = or <8 x i64> %broadcast.splat107, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %243 = trunc <8 x i64> %242 to <8 x i32>
  %244 = icmp sgt <8 x i32> %broadcast.splat109, %243
  %245 = extractelement <8 x i64> %242, i32 0
  %246 = shl i64 %245, 32
  %247 = ashr exact i64 %246, 32
  %248 = getelementptr inbounds float, float* %7, i64 %247
  %249 = bitcast float* %248 to <8 x float>*
  %wide.masked.load110 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %249, i32 4, <8 x i1> %244, <8 x float> undef), !tbaa !12, !alias.scope !100, !noalias !103
  %250 = extractelement <8 x i32> %243, i32 0
  %251 = add nsw i32 %mul.i.i.2, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %15, i64 %252
  %254 = bitcast float* %253 to <8 x float>*
  %wide.masked.load111 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %254, i32 4, <8 x i1> %244, <8 x float> undef), !tbaa !12, !alias.scope !103
  %255 = fsub <8 x float> %wide.masked.load111, %wide.masked.load110
  %256 = bitcast float* %253 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %255, <8 x float>* %256, i32 4, <8 x i1> %244), !tbaa !12, !alias.scope !103, !llvm.access.group !21
  %257 = getelementptr inbounds float, float* %11, i64 %247
  %258 = bitcast float* %257 to <8 x float>*
  %wide.masked.load112 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %258, i32 4, <8 x i1> %244, <8 x float> undef), !tbaa !12, !alias.scope !105, !noalias !103
  %259 = fmul <8 x float> %broadcast.splat114, %wide.masked.load112
  %260 = fdiv <8 x float> %255, %259, !fpmath !26
  %261 = bitcast float* %253 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %260, <8 x float>* %261, i32 4, <8 x i1> %244), !tbaa !12, !alias.scope !103, !llvm.access.group !21
  %262 = or <8 x i64> %broadcast.splat107, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %263 = trunc <8 x i64> %262 to <8 x i32>
  %264 = icmp sgt <8 x i32> %broadcast.splat109, %263
  %265 = extractelement <8 x i64> %262, i32 0
  %266 = shl i64 %265, 32
  %267 = ashr exact i64 %266, 32
  %268 = getelementptr inbounds float, float* %7, i64 %267
  %269 = bitcast float* %268 to <8 x float>*
  %wide.masked.load110.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %269, i32 4, <8 x i1> %264, <8 x float> undef), !tbaa !12, !alias.scope !100, !noalias !103
  %270 = extractelement <8 x i32> %263, i32 0
  %271 = add nsw i32 %mul.i.i.2, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds float, float* %15, i64 %272
  %274 = bitcast float* %273 to <8 x float>*
  %wide.masked.load111.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %274, i32 4, <8 x i1> %264, <8 x float> undef), !tbaa !12, !alias.scope !103
  %275 = fsub <8 x float> %wide.masked.load111.1, %wide.masked.load110.1
  %276 = bitcast float* %273 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %275, <8 x float>* %276, i32 4, <8 x i1> %264), !tbaa !12, !alias.scope !103, !llvm.access.group !21
  %277 = getelementptr inbounds float, float* %11, i64 %267
  %278 = bitcast float* %277 to <8 x float>*
  %wide.masked.load112.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %278, i32 4, <8 x i1> %264, <8 x float> undef), !tbaa !12, !alias.scope !105, !noalias !103
  %279 = fmul <8 x float> %broadcast.splat114, %wide.masked.load112.1
  %280 = fdiv <8 x float> %275, %279, !fpmath !26
  %281 = bitcast float* %273 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %280, <8 x float>* %281, i32 4, <8 x i1> %264), !tbaa !12, !alias.scope !103, !llvm.access.group !21
  %282 = or <8 x i64> %broadcast.splat107, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %283 = trunc <8 x i64> %282 to <8 x i32>
  %284 = icmp sgt <8 x i32> %broadcast.splat109, %283
  %285 = extractelement <8 x i64> %282, i32 0
  %286 = shl i64 %285, 32
  %287 = ashr exact i64 %286, 32
  %288 = getelementptr inbounds float, float* %7, i64 %287
  %289 = bitcast float* %288 to <8 x float>*
  %wide.masked.load110.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %289, i32 4, <8 x i1> %284, <8 x float> undef), !tbaa !12, !alias.scope !100, !noalias !103
  %290 = extractelement <8 x i32> %283, i32 0
  %291 = add nsw i32 %mul.i.i.2, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds float, float* %15, i64 %292
  %294 = bitcast float* %293 to <8 x float>*
  %wide.masked.load111.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %294, i32 4, <8 x i1> %284, <8 x float> undef), !tbaa !12, !alias.scope !103
  %295 = fsub <8 x float> %wide.masked.load111.2, %wide.masked.load110.2
  %296 = bitcast float* %293 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %295, <8 x float>* %296, i32 4, <8 x i1> %284), !tbaa !12, !alias.scope !103, !llvm.access.group !21
  %297 = getelementptr inbounds float, float* %11, i64 %287
  %298 = bitcast float* %297 to <8 x float>*
  %wide.masked.load112.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %298, i32 4, <8 x i1> %284, <8 x float> undef), !tbaa !12, !alias.scope !105, !noalias !103
  %299 = fmul <8 x float> %broadcast.splat114, %wide.masked.load112.2
  %300 = fdiv <8 x float> %295, %299, !fpmath !26
  %301 = bitcast float* %293 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %300, <8 x float>* %301, i32 4, <8 x i1> %284), !tbaa !12, !alias.scope !103, !llvm.access.group !21
  %302 = or <8 x i64> %broadcast.splat107, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %303 = trunc <8 x i64> %302 to <8 x i32>
  %304 = icmp sgt <8 x i32> %broadcast.splat109, %303
  %305 = extractelement <8 x i64> %302, i32 0
  %306 = shl i64 %305, 32
  %307 = ashr exact i64 %306, 32
  %308 = getelementptr inbounds float, float* %7, i64 %307
  %309 = bitcast float* %308 to <8 x float>*
  %wide.masked.load110.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %309, i32 4, <8 x i1> %304, <8 x float> undef), !tbaa !12, !alias.scope !100, !noalias !103
  %310 = extractelement <8 x i32> %303, i32 0
  %311 = add nsw i32 %mul.i.i.2, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds float, float* %15, i64 %312
  %314 = bitcast float* %313 to <8 x float>*
  %wide.masked.load111.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %314, i32 4, <8 x i1> %304, <8 x float> undef), !tbaa !12, !alias.scope !103
  %315 = fsub <8 x float> %wide.masked.load111.3, %wide.masked.load110.3
  %316 = bitcast float* %313 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %315, <8 x float>* %316, i32 4, <8 x i1> %304), !tbaa !12, !alias.scope !103, !llvm.access.group !21
  %317 = getelementptr inbounds float, float* %11, i64 %307
  %318 = bitcast float* %317 to <8 x float>*
  %wide.masked.load112.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %318, i32 4, <8 x i1> %304, <8 x float> undef), !tbaa !12, !alias.scope !105, !noalias !103
  %319 = fmul <8 x float> %broadcast.splat114, %wide.masked.load112.3
  %320 = fdiv <8 x float> %315, %319, !fpmath !26
  %321 = bitcast float* %313 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %320, <8 x float>* %321, i32 4, <8 x i1> %304), !tbaa !12, !alias.scope !103, !llvm.access.group !21
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.2:                 ; preds = %if.end.r_exit.i.i.us.2.1, %pregion_for_entry.entry.i.i.us.2.preheader
  %_local_id_x.i.0.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.2.preheader ], [ %839, %if.end.r_exit.i.i.us.2.1 ]
  %add1.i.i.i.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.2, %mul.i.i.i
  %conv.i.i.us.2 = trunc i64 %add1.i.i.i.us.2 to i32
  %cmp4.i.i.us.2 = icmp sgt i32 %23, %conv.i.i.us.2
  br i1 %cmp4.i.i.us.2, label %if.then.i.i.us.2, label %if.end.r_exit.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %pregion_for_entry.entry.i.i.us.2
  %sext.i.i.us.2 = shl i64 %add1.i.i.i.us.2, 32
  %idxprom.i.i.us.2 = ashr exact i64 %sext.i.i.us.2, 32
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.2
  %322 = load float, float* %arrayidx.i.i.us.2, align 4, !tbaa !12
  %add.i.i.us.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2
  %idxprom6.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx7.i.i.us.2 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.2
  %323 = load float, float* %arrayidx7.i.i.us.2, align 4, !tbaa !12
  %sub.i.i.us.2 = fsub float %323, %322
  store float %sub.i.i.us.2, float* %arrayidx7.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.2 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.2
  %324 = load float, float* %arrayidx10.i.i.us.2, align 4, !tbaa !12
  %mul11.i.i.us.2 = fmul float %28, %324
  %div.i.i.us.2 = fdiv float %sub.i.i.us.2, %mul11.i.i.us.2, !fpmath !26
  store float %div.i.i.us.2, float* %arrayidx7.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.2

if.end.r_exit.i.i.us.2:                           ; preds = %if.then.i.i.us.2, %pregion_for_entry.entry.i.i.us.2
  %325 = or i64 %_local_id_x.i.0.us.2, 1
  %add1.i.i.i.us.2.1 = add nuw nsw i64 %325, %mul.i.i.i
  %conv.i.i.us.2.1 = trunc i64 %add1.i.i.i.us.2.1 to i32
  %cmp4.i.i.us.2.1 = icmp sgt i32 %23, %conv.i.i.us.2.1
  br i1 %cmp4.i.i.us.2.1, label %if.then.i.i.us.2.1, label %if.end.r_exit.i.i.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.r_exit.i.i.us.2.1
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph99, %pregion_for_end.i.i.1
  %326 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.3 = or i32 %326, 3
  %cmp.i.i.3 = icmp sgt i32 %27, %conv2.i.i.3
  %mul.i.i.3 = mul nsw i32 %23, %conv2.i.i.3
  br i1 %cmp.i.i.3, label %vector.scevcheck122, label %pregion_for_end.i.i.3

vector.scevcheck122:                              ; preds = %pregion_for_end.i.i.2
  %327 = mul i32 %23, %conv2.i.i.3
  %328 = trunc i64 %2 to i32
  %329 = shl i32 %328, 5
  %330 = add i32 %327, %329
  %331 = icmp sgt i32 %330, 2147483616
  br i1 %331, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.memcheck144

pregion_for_entry.entry.i.i.us.3.preheader:       ; preds = %vector.memcheck144, %vector.scevcheck122
  br label %pregion_for_entry.entry.i.i.us.3

vector.memcheck144:                               ; preds = %vector.scevcheck122
  %332 = trunc i64 %2 to i32
  %333 = shl i32 %332, 5
  %334 = sext i32 %333 to i64
  %scevgep124 = getelementptr float, float* %7, i64 %334
  %335 = add nsw i64 %334, 32
  %scevgep126 = getelementptr float, float* %7, i64 %335
  %336 = mul i32 %23, %conv2.i.i.3
  %337 = add i32 %336, %333
  %338 = sext i32 %337 to i64
  %scevgep128 = getelementptr float, float* %15, i64 %338
  %339 = add nsw i64 %338, 32
  %scevgep130 = getelementptr float, float* %15, i64 %339
  %scevgep132 = getelementptr float, float* %11, i64 %334
  %scevgep134 = getelementptr float, float* %11, i64 %335
  %bound0136 = icmp ult float* %scevgep124, %scevgep130
  %bound1137 = icmp ult float* %scevgep128, %scevgep126
  %found.conflict138 = and i1 %bound0136, %bound1137
  %bound0139 = icmp ult float* %scevgep132, %scevgep130
  %bound1140 = icmp ult float* %scevgep128, %scevgep134
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %found.conflict138, %found.conflict141
  br i1 %conflict.rdx142, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %vector.memcheck144
  %broadcast.splatinsert152 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat153 = shufflevector <8 x i64> %broadcast.splatinsert152, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert154 = insertelement <8 x i32> undef, i32 %23, i32 0
  %broadcast.splat155 = shufflevector <8 x i32> %broadcast.splatinsert154, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert159 = insertelement <8 x float> undef, float %28, i32 0
  %broadcast.splat160 = shufflevector <8 x float> %broadcast.splatinsert159, <8 x float> undef, <8 x i32> zeroinitializer
  %340 = or <8 x i64> %broadcast.splat153, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %341 = trunc <8 x i64> %340 to <8 x i32>
  %342 = icmp sgt <8 x i32> %broadcast.splat155, %341
  %343 = extractelement <8 x i64> %340, i32 0
  %344 = shl i64 %343, 32
  %345 = ashr exact i64 %344, 32
  %346 = getelementptr inbounds float, float* %7, i64 %345
  %347 = bitcast float* %346 to <8 x float>*
  %wide.masked.load156 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %347, i32 4, <8 x i1> %342, <8 x float> undef), !tbaa !12, !alias.scope !107, !noalias !110
  %348 = extractelement <8 x i32> %341, i32 0
  %349 = add nsw i32 %mul.i.i.3, %348
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds float, float* %15, i64 %350
  %352 = bitcast float* %351 to <8 x float>*
  %wide.masked.load157 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %352, i32 4, <8 x i1> %342, <8 x float> undef), !tbaa !12, !alias.scope !110
  %353 = fsub <8 x float> %wide.masked.load157, %wide.masked.load156
  %354 = bitcast float* %351 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %353, <8 x float>* %354, i32 4, <8 x i1> %342), !tbaa !12, !alias.scope !110, !llvm.access.group !21
  %355 = getelementptr inbounds float, float* %11, i64 %345
  %356 = bitcast float* %355 to <8 x float>*
  %wide.masked.load158 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %356, i32 4, <8 x i1> %342, <8 x float> undef), !tbaa !12, !alias.scope !112, !noalias !110
  %357 = fmul <8 x float> %broadcast.splat160, %wide.masked.load158
  %358 = fdiv <8 x float> %353, %357, !fpmath !26
  %359 = bitcast float* %351 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %358, <8 x float>* %359, i32 4, <8 x i1> %342), !tbaa !12, !alias.scope !110, !llvm.access.group !21
  %360 = or <8 x i64> %broadcast.splat153, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %361 = trunc <8 x i64> %360 to <8 x i32>
  %362 = icmp sgt <8 x i32> %broadcast.splat155, %361
  %363 = extractelement <8 x i64> %360, i32 0
  %364 = shl i64 %363, 32
  %365 = ashr exact i64 %364, 32
  %366 = getelementptr inbounds float, float* %7, i64 %365
  %367 = bitcast float* %366 to <8 x float>*
  %wide.masked.load156.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %367, i32 4, <8 x i1> %362, <8 x float> undef), !tbaa !12, !alias.scope !107, !noalias !110
  %368 = extractelement <8 x i32> %361, i32 0
  %369 = add nsw i32 %mul.i.i.3, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds float, float* %15, i64 %370
  %372 = bitcast float* %371 to <8 x float>*
  %wide.masked.load157.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %372, i32 4, <8 x i1> %362, <8 x float> undef), !tbaa !12, !alias.scope !110
  %373 = fsub <8 x float> %wide.masked.load157.1, %wide.masked.load156.1
  %374 = bitcast float* %371 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %373, <8 x float>* %374, i32 4, <8 x i1> %362), !tbaa !12, !alias.scope !110, !llvm.access.group !21
  %375 = getelementptr inbounds float, float* %11, i64 %365
  %376 = bitcast float* %375 to <8 x float>*
  %wide.masked.load158.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %376, i32 4, <8 x i1> %362, <8 x float> undef), !tbaa !12, !alias.scope !112, !noalias !110
  %377 = fmul <8 x float> %broadcast.splat160, %wide.masked.load158.1
  %378 = fdiv <8 x float> %373, %377, !fpmath !26
  %379 = bitcast float* %371 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %378, <8 x float>* %379, i32 4, <8 x i1> %362), !tbaa !12, !alias.scope !110, !llvm.access.group !21
  %380 = or <8 x i64> %broadcast.splat153, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %381 = trunc <8 x i64> %380 to <8 x i32>
  %382 = icmp sgt <8 x i32> %broadcast.splat155, %381
  %383 = extractelement <8 x i64> %380, i32 0
  %384 = shl i64 %383, 32
  %385 = ashr exact i64 %384, 32
  %386 = getelementptr inbounds float, float* %7, i64 %385
  %387 = bitcast float* %386 to <8 x float>*
  %wide.masked.load156.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %387, i32 4, <8 x i1> %382, <8 x float> undef), !tbaa !12, !alias.scope !107, !noalias !110
  %388 = extractelement <8 x i32> %381, i32 0
  %389 = add nsw i32 %mul.i.i.3, %388
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds float, float* %15, i64 %390
  %392 = bitcast float* %391 to <8 x float>*
  %wide.masked.load157.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %392, i32 4, <8 x i1> %382, <8 x float> undef), !tbaa !12, !alias.scope !110
  %393 = fsub <8 x float> %wide.masked.load157.2, %wide.masked.load156.2
  %394 = bitcast float* %391 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %393, <8 x float>* %394, i32 4, <8 x i1> %382), !tbaa !12, !alias.scope !110, !llvm.access.group !21
  %395 = getelementptr inbounds float, float* %11, i64 %385
  %396 = bitcast float* %395 to <8 x float>*
  %wide.masked.load158.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %396, i32 4, <8 x i1> %382, <8 x float> undef), !tbaa !12, !alias.scope !112, !noalias !110
  %397 = fmul <8 x float> %broadcast.splat160, %wide.masked.load158.2
  %398 = fdiv <8 x float> %393, %397, !fpmath !26
  %399 = bitcast float* %391 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %398, <8 x float>* %399, i32 4, <8 x i1> %382), !tbaa !12, !alias.scope !110, !llvm.access.group !21
  %400 = or <8 x i64> %broadcast.splat153, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %401 = trunc <8 x i64> %400 to <8 x i32>
  %402 = icmp sgt <8 x i32> %broadcast.splat155, %401
  %403 = extractelement <8 x i64> %400, i32 0
  %404 = shl i64 %403, 32
  %405 = ashr exact i64 %404, 32
  %406 = getelementptr inbounds float, float* %7, i64 %405
  %407 = bitcast float* %406 to <8 x float>*
  %wide.masked.load156.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %407, i32 4, <8 x i1> %402, <8 x float> undef), !tbaa !12, !alias.scope !107, !noalias !110
  %408 = extractelement <8 x i32> %401, i32 0
  %409 = add nsw i32 %mul.i.i.3, %408
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds float, float* %15, i64 %410
  %412 = bitcast float* %411 to <8 x float>*
  %wide.masked.load157.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %412, i32 4, <8 x i1> %402, <8 x float> undef), !tbaa !12, !alias.scope !110
  %413 = fsub <8 x float> %wide.masked.load157.3, %wide.masked.load156.3
  %414 = bitcast float* %411 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %413, <8 x float>* %414, i32 4, <8 x i1> %402), !tbaa !12, !alias.scope !110, !llvm.access.group !21
  %415 = getelementptr inbounds float, float* %11, i64 %405
  %416 = bitcast float* %415 to <8 x float>*
  %wide.masked.load158.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %416, i32 4, <8 x i1> %402, <8 x float> undef), !tbaa !12, !alias.scope !112, !noalias !110
  %417 = fmul <8 x float> %broadcast.splat160, %wide.masked.load158.3
  %418 = fdiv <8 x float> %413, %417, !fpmath !26
  %419 = bitcast float* %411 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %418, <8 x float>* %419, i32 4, <8 x i1> %402), !tbaa !12, !alias.scope !110, !llvm.access.group !21
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.3:                 ; preds = %if.end.r_exit.i.i.us.3.1, %pregion_for_entry.entry.i.i.us.3.preheader
  %_local_id_x.i.0.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.3.preheader ], [ %835, %if.end.r_exit.i.i.us.3.1 ]
  %add1.i.i.i.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.3, %mul.i.i.i
  %conv.i.i.us.3 = trunc i64 %add1.i.i.i.us.3 to i32
  %cmp4.i.i.us.3 = icmp sgt i32 %23, %conv.i.i.us.3
  br i1 %cmp4.i.i.us.3, label %if.then.i.i.us.3, label %if.end.r_exit.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %pregion_for_entry.entry.i.i.us.3
  %sext.i.i.us.3 = shl i64 %add1.i.i.i.us.3, 32
  %idxprom.i.i.us.3 = ashr exact i64 %sext.i.i.us.3, 32
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.3
  %420 = load float, float* %arrayidx.i.i.us.3, align 4, !tbaa !12
  %add.i.i.us.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3
  %idxprom6.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx7.i.i.us.3 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.3
  %421 = load float, float* %arrayidx7.i.i.us.3, align 4, !tbaa !12
  %sub.i.i.us.3 = fsub float %421, %420
  store float %sub.i.i.us.3, float* %arrayidx7.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.3 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.3
  %422 = load float, float* %arrayidx10.i.i.us.3, align 4, !tbaa !12
  %mul11.i.i.us.3 = fmul float %28, %422
  %div.i.i.us.3 = fdiv float %sub.i.i.us.3, %mul11.i.i.us.3, !fpmath !26
  store float %div.i.i.us.3, float* %arrayidx7.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.3

if.end.r_exit.i.i.us.3:                           ; preds = %if.then.i.i.us.3, %pregion_for_entry.entry.i.i.us.3
  %423 = or i64 %_local_id_x.i.0.us.3, 1
  %add1.i.i.i.us.3.1 = add nuw nsw i64 %423, %mul.i.i.i
  %conv.i.i.us.3.1 = trunc i64 %add1.i.i.i.us.3.1 to i32
  %cmp4.i.i.us.3.1 = icmp sgt i32 %23, %conv.i.i.us.3.1
  br i1 %cmp4.i.i.us.3.1, label %if.then.i.i.us.3.1, label %if.end.r_exit.i.i.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.r_exit.i.i.us.3.1
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph145, %pregion_for_end.i.i.2
  %424 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.4 = or i32 %424, 4
  %cmp.i.i.4 = icmp sgt i32 %27, %conv2.i.i.4
  %mul.i.i.4 = mul nsw i32 %23, %conv2.i.i.4
  br i1 %cmp.i.i.4, label %vector.scevcheck168, label %pregion_for_end.i.i.4

vector.scevcheck168:                              ; preds = %pregion_for_end.i.i.3
  %425 = mul i32 %23, %conv2.i.i.4
  %426 = trunc i64 %2 to i32
  %427 = shl i32 %426, 5
  %428 = add i32 %425, %427
  %429 = icmp sgt i32 %428, 2147483616
  br i1 %429, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.memcheck190

pregion_for_entry.entry.i.i.us.4.preheader:       ; preds = %vector.memcheck190, %vector.scevcheck168
  br label %pregion_for_entry.entry.i.i.us.4

vector.memcheck190:                               ; preds = %vector.scevcheck168
  %430 = trunc i64 %2 to i32
  %431 = shl i32 %430, 5
  %432 = sext i32 %431 to i64
  %scevgep170 = getelementptr float, float* %7, i64 %432
  %433 = add nsw i64 %432, 32
  %scevgep172 = getelementptr float, float* %7, i64 %433
  %434 = mul i32 %23, %conv2.i.i.4
  %435 = add i32 %434, %431
  %436 = sext i32 %435 to i64
  %scevgep174 = getelementptr float, float* %15, i64 %436
  %437 = add nsw i64 %436, 32
  %scevgep176 = getelementptr float, float* %15, i64 %437
  %scevgep178 = getelementptr float, float* %11, i64 %432
  %scevgep180 = getelementptr float, float* %11, i64 %433
  %bound0182 = icmp ult float* %scevgep170, %scevgep176
  %bound1183 = icmp ult float* %scevgep174, %scevgep172
  %found.conflict184 = and i1 %bound0182, %bound1183
  %bound0185 = icmp ult float* %scevgep178, %scevgep176
  %bound1186 = icmp ult float* %scevgep174, %scevgep180
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %found.conflict184, %found.conflict187
  br i1 %conflict.rdx188, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %vector.memcheck190
  %broadcast.splatinsert198 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat199 = shufflevector <8 x i64> %broadcast.splatinsert198, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert200 = insertelement <8 x i32> undef, i32 %23, i32 0
  %broadcast.splat201 = shufflevector <8 x i32> %broadcast.splatinsert200, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert205 = insertelement <8 x float> undef, float %28, i32 0
  %broadcast.splat206 = shufflevector <8 x float> %broadcast.splatinsert205, <8 x float> undef, <8 x i32> zeroinitializer
  %438 = or <8 x i64> %broadcast.splat199, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %439 = trunc <8 x i64> %438 to <8 x i32>
  %440 = icmp sgt <8 x i32> %broadcast.splat201, %439
  %441 = extractelement <8 x i64> %438, i32 0
  %442 = shl i64 %441, 32
  %443 = ashr exact i64 %442, 32
  %444 = getelementptr inbounds float, float* %7, i64 %443
  %445 = bitcast float* %444 to <8 x float>*
  %wide.masked.load202 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %445, i32 4, <8 x i1> %440, <8 x float> undef), !tbaa !12, !alias.scope !114, !noalias !117
  %446 = extractelement <8 x i32> %439, i32 0
  %447 = add nsw i32 %mul.i.i.4, %446
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds float, float* %15, i64 %448
  %450 = bitcast float* %449 to <8 x float>*
  %wide.masked.load203 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %450, i32 4, <8 x i1> %440, <8 x float> undef), !tbaa !12, !alias.scope !117
  %451 = fsub <8 x float> %wide.masked.load203, %wide.masked.load202
  %452 = bitcast float* %449 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %451, <8 x float>* %452, i32 4, <8 x i1> %440), !tbaa !12, !alias.scope !117, !llvm.access.group !21
  %453 = getelementptr inbounds float, float* %11, i64 %443
  %454 = bitcast float* %453 to <8 x float>*
  %wide.masked.load204 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %454, i32 4, <8 x i1> %440, <8 x float> undef), !tbaa !12, !alias.scope !119, !noalias !117
  %455 = fmul <8 x float> %broadcast.splat206, %wide.masked.load204
  %456 = fdiv <8 x float> %451, %455, !fpmath !26
  %457 = bitcast float* %449 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %456, <8 x float>* %457, i32 4, <8 x i1> %440), !tbaa !12, !alias.scope !117, !llvm.access.group !21
  %458 = or <8 x i64> %broadcast.splat199, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %459 = trunc <8 x i64> %458 to <8 x i32>
  %460 = icmp sgt <8 x i32> %broadcast.splat201, %459
  %461 = extractelement <8 x i64> %458, i32 0
  %462 = shl i64 %461, 32
  %463 = ashr exact i64 %462, 32
  %464 = getelementptr inbounds float, float* %7, i64 %463
  %465 = bitcast float* %464 to <8 x float>*
  %wide.masked.load202.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %465, i32 4, <8 x i1> %460, <8 x float> undef), !tbaa !12, !alias.scope !114, !noalias !117
  %466 = extractelement <8 x i32> %459, i32 0
  %467 = add nsw i32 %mul.i.i.4, %466
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds float, float* %15, i64 %468
  %470 = bitcast float* %469 to <8 x float>*
  %wide.masked.load203.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %470, i32 4, <8 x i1> %460, <8 x float> undef), !tbaa !12, !alias.scope !117
  %471 = fsub <8 x float> %wide.masked.load203.1, %wide.masked.load202.1
  %472 = bitcast float* %469 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %471, <8 x float>* %472, i32 4, <8 x i1> %460), !tbaa !12, !alias.scope !117, !llvm.access.group !21
  %473 = getelementptr inbounds float, float* %11, i64 %463
  %474 = bitcast float* %473 to <8 x float>*
  %wide.masked.load204.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %474, i32 4, <8 x i1> %460, <8 x float> undef), !tbaa !12, !alias.scope !119, !noalias !117
  %475 = fmul <8 x float> %broadcast.splat206, %wide.masked.load204.1
  %476 = fdiv <8 x float> %471, %475, !fpmath !26
  %477 = bitcast float* %469 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %476, <8 x float>* %477, i32 4, <8 x i1> %460), !tbaa !12, !alias.scope !117, !llvm.access.group !21
  %478 = or <8 x i64> %broadcast.splat199, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %479 = trunc <8 x i64> %478 to <8 x i32>
  %480 = icmp sgt <8 x i32> %broadcast.splat201, %479
  %481 = extractelement <8 x i64> %478, i32 0
  %482 = shl i64 %481, 32
  %483 = ashr exact i64 %482, 32
  %484 = getelementptr inbounds float, float* %7, i64 %483
  %485 = bitcast float* %484 to <8 x float>*
  %wide.masked.load202.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %485, i32 4, <8 x i1> %480, <8 x float> undef), !tbaa !12, !alias.scope !114, !noalias !117
  %486 = extractelement <8 x i32> %479, i32 0
  %487 = add nsw i32 %mul.i.i.4, %486
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds float, float* %15, i64 %488
  %490 = bitcast float* %489 to <8 x float>*
  %wide.masked.load203.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %490, i32 4, <8 x i1> %480, <8 x float> undef), !tbaa !12, !alias.scope !117
  %491 = fsub <8 x float> %wide.masked.load203.2, %wide.masked.load202.2
  %492 = bitcast float* %489 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %491, <8 x float>* %492, i32 4, <8 x i1> %480), !tbaa !12, !alias.scope !117, !llvm.access.group !21
  %493 = getelementptr inbounds float, float* %11, i64 %483
  %494 = bitcast float* %493 to <8 x float>*
  %wide.masked.load204.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %494, i32 4, <8 x i1> %480, <8 x float> undef), !tbaa !12, !alias.scope !119, !noalias !117
  %495 = fmul <8 x float> %broadcast.splat206, %wide.masked.load204.2
  %496 = fdiv <8 x float> %491, %495, !fpmath !26
  %497 = bitcast float* %489 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %496, <8 x float>* %497, i32 4, <8 x i1> %480), !tbaa !12, !alias.scope !117, !llvm.access.group !21
  %498 = or <8 x i64> %broadcast.splat199, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %499 = trunc <8 x i64> %498 to <8 x i32>
  %500 = icmp sgt <8 x i32> %broadcast.splat201, %499
  %501 = extractelement <8 x i64> %498, i32 0
  %502 = shl i64 %501, 32
  %503 = ashr exact i64 %502, 32
  %504 = getelementptr inbounds float, float* %7, i64 %503
  %505 = bitcast float* %504 to <8 x float>*
  %wide.masked.load202.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %505, i32 4, <8 x i1> %500, <8 x float> undef), !tbaa !12, !alias.scope !114, !noalias !117
  %506 = extractelement <8 x i32> %499, i32 0
  %507 = add nsw i32 %mul.i.i.4, %506
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds float, float* %15, i64 %508
  %510 = bitcast float* %509 to <8 x float>*
  %wide.masked.load203.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %510, i32 4, <8 x i1> %500, <8 x float> undef), !tbaa !12, !alias.scope !117
  %511 = fsub <8 x float> %wide.masked.load203.3, %wide.masked.load202.3
  %512 = bitcast float* %509 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %511, <8 x float>* %512, i32 4, <8 x i1> %500), !tbaa !12, !alias.scope !117, !llvm.access.group !21
  %513 = getelementptr inbounds float, float* %11, i64 %503
  %514 = bitcast float* %513 to <8 x float>*
  %wide.masked.load204.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %514, i32 4, <8 x i1> %500, <8 x float> undef), !tbaa !12, !alias.scope !119, !noalias !117
  %515 = fmul <8 x float> %broadcast.splat206, %wide.masked.load204.3
  %516 = fdiv <8 x float> %511, %515, !fpmath !26
  %517 = bitcast float* %509 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %516, <8 x float>* %517, i32 4, <8 x i1> %500), !tbaa !12, !alias.scope !117, !llvm.access.group !21
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.4:                 ; preds = %if.end.r_exit.i.i.us.4.1, %pregion_for_entry.entry.i.i.us.4.preheader
  %_local_id_x.i.0.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.4.preheader ], [ %831, %if.end.r_exit.i.i.us.4.1 ]
  %add1.i.i.i.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.4, %mul.i.i.i
  %conv.i.i.us.4 = trunc i64 %add1.i.i.i.us.4 to i32
  %cmp4.i.i.us.4 = icmp sgt i32 %23, %conv.i.i.us.4
  br i1 %cmp4.i.i.us.4, label %if.then.i.i.us.4, label %if.end.r_exit.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %pregion_for_entry.entry.i.i.us.4
  %sext.i.i.us.4 = shl i64 %add1.i.i.i.us.4, 32
  %idxprom.i.i.us.4 = ashr exact i64 %sext.i.i.us.4, 32
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.4
  %518 = load float, float* %arrayidx.i.i.us.4, align 4, !tbaa !12
  %add.i.i.us.4 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4
  %idxprom6.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx7.i.i.us.4 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.4
  %519 = load float, float* %arrayidx7.i.i.us.4, align 4, !tbaa !12
  %sub.i.i.us.4 = fsub float %519, %518
  store float %sub.i.i.us.4, float* %arrayidx7.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.4 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.4
  %520 = load float, float* %arrayidx10.i.i.us.4, align 4, !tbaa !12
  %mul11.i.i.us.4 = fmul float %28, %520
  %div.i.i.us.4 = fdiv float %sub.i.i.us.4, %mul11.i.i.us.4, !fpmath !26
  store float %div.i.i.us.4, float* %arrayidx7.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.4

if.end.r_exit.i.i.us.4:                           ; preds = %if.then.i.i.us.4, %pregion_for_entry.entry.i.i.us.4
  %521 = or i64 %_local_id_x.i.0.us.4, 1
  %add1.i.i.i.us.4.1 = add nuw nsw i64 %521, %mul.i.i.i
  %conv.i.i.us.4.1 = trunc i64 %add1.i.i.i.us.4.1 to i32
  %cmp4.i.i.us.4.1 = icmp sgt i32 %23, %conv.i.i.us.4.1
  br i1 %cmp4.i.i.us.4.1, label %if.then.i.i.us.4.1, label %if.end.r_exit.i.i.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.r_exit.i.i.us.4.1
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph191, %pregion_for_end.i.i.3
  %522 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.5 = or i32 %522, 5
  %cmp.i.i.5 = icmp sgt i32 %27, %conv2.i.i.5
  %mul.i.i.5 = mul nsw i32 %23, %conv2.i.i.5
  br i1 %cmp.i.i.5, label %vector.scevcheck214, label %pregion_for_end.i.i.5

vector.scevcheck214:                              ; preds = %pregion_for_end.i.i.4
  %523 = mul i32 %23, %conv2.i.i.5
  %524 = trunc i64 %2 to i32
  %525 = shl i32 %524, 5
  %526 = add i32 %523, %525
  %527 = icmp sgt i32 %526, 2147483616
  br i1 %527, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.memcheck236

pregion_for_entry.entry.i.i.us.5.preheader:       ; preds = %vector.memcheck236, %vector.scevcheck214
  br label %pregion_for_entry.entry.i.i.us.5

vector.memcheck236:                               ; preds = %vector.scevcheck214
  %528 = trunc i64 %2 to i32
  %529 = shl i32 %528, 5
  %530 = sext i32 %529 to i64
  %scevgep216 = getelementptr float, float* %7, i64 %530
  %531 = add nsw i64 %530, 32
  %scevgep218 = getelementptr float, float* %7, i64 %531
  %532 = mul i32 %23, %conv2.i.i.5
  %533 = add i32 %532, %529
  %534 = sext i32 %533 to i64
  %scevgep220 = getelementptr float, float* %15, i64 %534
  %535 = add nsw i64 %534, 32
  %scevgep222 = getelementptr float, float* %15, i64 %535
  %scevgep224 = getelementptr float, float* %11, i64 %530
  %scevgep226 = getelementptr float, float* %11, i64 %531
  %bound0228 = icmp ult float* %scevgep216, %scevgep222
  %bound1229 = icmp ult float* %scevgep220, %scevgep218
  %found.conflict230 = and i1 %bound0228, %bound1229
  %bound0231 = icmp ult float* %scevgep224, %scevgep222
  %bound1232 = icmp ult float* %scevgep220, %scevgep226
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %found.conflict230, %found.conflict233
  br i1 %conflict.rdx234, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.ph237

vector.ph237:                                     ; preds = %vector.memcheck236
  %broadcast.splatinsert244 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat245 = shufflevector <8 x i64> %broadcast.splatinsert244, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert246 = insertelement <8 x i32> undef, i32 %23, i32 0
  %broadcast.splat247 = shufflevector <8 x i32> %broadcast.splatinsert246, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert251 = insertelement <8 x float> undef, float %28, i32 0
  %broadcast.splat252 = shufflevector <8 x float> %broadcast.splatinsert251, <8 x float> undef, <8 x i32> zeroinitializer
  %536 = or <8 x i64> %broadcast.splat245, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %537 = trunc <8 x i64> %536 to <8 x i32>
  %538 = icmp sgt <8 x i32> %broadcast.splat247, %537
  %539 = extractelement <8 x i64> %536, i32 0
  %540 = shl i64 %539, 32
  %541 = ashr exact i64 %540, 32
  %542 = getelementptr inbounds float, float* %7, i64 %541
  %543 = bitcast float* %542 to <8 x float>*
  %wide.masked.load248 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %543, i32 4, <8 x i1> %538, <8 x float> undef), !tbaa !12, !alias.scope !121, !noalias !124
  %544 = extractelement <8 x i32> %537, i32 0
  %545 = add nsw i32 %mul.i.i.5, %544
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds float, float* %15, i64 %546
  %548 = bitcast float* %547 to <8 x float>*
  %wide.masked.load249 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %548, i32 4, <8 x i1> %538, <8 x float> undef), !tbaa !12, !alias.scope !124
  %549 = fsub <8 x float> %wide.masked.load249, %wide.masked.load248
  %550 = bitcast float* %547 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %549, <8 x float>* %550, i32 4, <8 x i1> %538), !tbaa !12, !alias.scope !124, !llvm.access.group !21
  %551 = getelementptr inbounds float, float* %11, i64 %541
  %552 = bitcast float* %551 to <8 x float>*
  %wide.masked.load250 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %552, i32 4, <8 x i1> %538, <8 x float> undef), !tbaa !12, !alias.scope !126, !noalias !124
  %553 = fmul <8 x float> %broadcast.splat252, %wide.masked.load250
  %554 = fdiv <8 x float> %549, %553, !fpmath !26
  %555 = bitcast float* %547 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %554, <8 x float>* %555, i32 4, <8 x i1> %538), !tbaa !12, !alias.scope !124, !llvm.access.group !21
  %556 = or <8 x i64> %broadcast.splat245, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %557 = trunc <8 x i64> %556 to <8 x i32>
  %558 = icmp sgt <8 x i32> %broadcast.splat247, %557
  %559 = extractelement <8 x i64> %556, i32 0
  %560 = shl i64 %559, 32
  %561 = ashr exact i64 %560, 32
  %562 = getelementptr inbounds float, float* %7, i64 %561
  %563 = bitcast float* %562 to <8 x float>*
  %wide.masked.load248.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %563, i32 4, <8 x i1> %558, <8 x float> undef), !tbaa !12, !alias.scope !121, !noalias !124
  %564 = extractelement <8 x i32> %557, i32 0
  %565 = add nsw i32 %mul.i.i.5, %564
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds float, float* %15, i64 %566
  %568 = bitcast float* %567 to <8 x float>*
  %wide.masked.load249.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %568, i32 4, <8 x i1> %558, <8 x float> undef), !tbaa !12, !alias.scope !124
  %569 = fsub <8 x float> %wide.masked.load249.1, %wide.masked.load248.1
  %570 = bitcast float* %567 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %569, <8 x float>* %570, i32 4, <8 x i1> %558), !tbaa !12, !alias.scope !124, !llvm.access.group !21
  %571 = getelementptr inbounds float, float* %11, i64 %561
  %572 = bitcast float* %571 to <8 x float>*
  %wide.masked.load250.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %572, i32 4, <8 x i1> %558, <8 x float> undef), !tbaa !12, !alias.scope !126, !noalias !124
  %573 = fmul <8 x float> %broadcast.splat252, %wide.masked.load250.1
  %574 = fdiv <8 x float> %569, %573, !fpmath !26
  %575 = bitcast float* %567 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %574, <8 x float>* %575, i32 4, <8 x i1> %558), !tbaa !12, !alias.scope !124, !llvm.access.group !21
  %576 = or <8 x i64> %broadcast.splat245, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %577 = trunc <8 x i64> %576 to <8 x i32>
  %578 = icmp sgt <8 x i32> %broadcast.splat247, %577
  %579 = extractelement <8 x i64> %576, i32 0
  %580 = shl i64 %579, 32
  %581 = ashr exact i64 %580, 32
  %582 = getelementptr inbounds float, float* %7, i64 %581
  %583 = bitcast float* %582 to <8 x float>*
  %wide.masked.load248.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %583, i32 4, <8 x i1> %578, <8 x float> undef), !tbaa !12, !alias.scope !121, !noalias !124
  %584 = extractelement <8 x i32> %577, i32 0
  %585 = add nsw i32 %mul.i.i.5, %584
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds float, float* %15, i64 %586
  %588 = bitcast float* %587 to <8 x float>*
  %wide.masked.load249.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %588, i32 4, <8 x i1> %578, <8 x float> undef), !tbaa !12, !alias.scope !124
  %589 = fsub <8 x float> %wide.masked.load249.2, %wide.masked.load248.2
  %590 = bitcast float* %587 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %589, <8 x float>* %590, i32 4, <8 x i1> %578), !tbaa !12, !alias.scope !124, !llvm.access.group !21
  %591 = getelementptr inbounds float, float* %11, i64 %581
  %592 = bitcast float* %591 to <8 x float>*
  %wide.masked.load250.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %592, i32 4, <8 x i1> %578, <8 x float> undef), !tbaa !12, !alias.scope !126, !noalias !124
  %593 = fmul <8 x float> %broadcast.splat252, %wide.masked.load250.2
  %594 = fdiv <8 x float> %589, %593, !fpmath !26
  %595 = bitcast float* %587 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %594, <8 x float>* %595, i32 4, <8 x i1> %578), !tbaa !12, !alias.scope !124, !llvm.access.group !21
  %596 = or <8 x i64> %broadcast.splat245, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %597 = trunc <8 x i64> %596 to <8 x i32>
  %598 = icmp sgt <8 x i32> %broadcast.splat247, %597
  %599 = extractelement <8 x i64> %596, i32 0
  %600 = shl i64 %599, 32
  %601 = ashr exact i64 %600, 32
  %602 = getelementptr inbounds float, float* %7, i64 %601
  %603 = bitcast float* %602 to <8 x float>*
  %wide.masked.load248.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %603, i32 4, <8 x i1> %598, <8 x float> undef), !tbaa !12, !alias.scope !121, !noalias !124
  %604 = extractelement <8 x i32> %597, i32 0
  %605 = add nsw i32 %mul.i.i.5, %604
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds float, float* %15, i64 %606
  %608 = bitcast float* %607 to <8 x float>*
  %wide.masked.load249.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %608, i32 4, <8 x i1> %598, <8 x float> undef), !tbaa !12, !alias.scope !124
  %609 = fsub <8 x float> %wide.masked.load249.3, %wide.masked.load248.3
  %610 = bitcast float* %607 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %609, <8 x float>* %610, i32 4, <8 x i1> %598), !tbaa !12, !alias.scope !124, !llvm.access.group !21
  %611 = getelementptr inbounds float, float* %11, i64 %601
  %612 = bitcast float* %611 to <8 x float>*
  %wide.masked.load250.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %612, i32 4, <8 x i1> %598, <8 x float> undef), !tbaa !12, !alias.scope !126, !noalias !124
  %613 = fmul <8 x float> %broadcast.splat252, %wide.masked.load250.3
  %614 = fdiv <8 x float> %609, %613, !fpmath !26
  %615 = bitcast float* %607 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %614, <8 x float>* %615, i32 4, <8 x i1> %598), !tbaa !12, !alias.scope !124, !llvm.access.group !21
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.5:                 ; preds = %if.end.r_exit.i.i.us.5.1, %pregion_for_entry.entry.i.i.us.5.preheader
  %_local_id_x.i.0.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.5.preheader ], [ %827, %if.end.r_exit.i.i.us.5.1 ]
  %add1.i.i.i.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.5, %mul.i.i.i
  %conv.i.i.us.5 = trunc i64 %add1.i.i.i.us.5 to i32
  %cmp4.i.i.us.5 = icmp sgt i32 %23, %conv.i.i.us.5
  br i1 %cmp4.i.i.us.5, label %if.then.i.i.us.5, label %if.end.r_exit.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %pregion_for_entry.entry.i.i.us.5
  %sext.i.i.us.5 = shl i64 %add1.i.i.i.us.5, 32
  %idxprom.i.i.us.5 = ashr exact i64 %sext.i.i.us.5, 32
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.5
  %616 = load float, float* %arrayidx.i.i.us.5, align 4, !tbaa !12
  %add.i.i.us.5 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5
  %idxprom6.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx7.i.i.us.5 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.5
  %617 = load float, float* %arrayidx7.i.i.us.5, align 4, !tbaa !12
  %sub.i.i.us.5 = fsub float %617, %616
  store float %sub.i.i.us.5, float* %arrayidx7.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.5 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.5
  %618 = load float, float* %arrayidx10.i.i.us.5, align 4, !tbaa !12
  %mul11.i.i.us.5 = fmul float %28, %618
  %div.i.i.us.5 = fdiv float %sub.i.i.us.5, %mul11.i.i.us.5, !fpmath !26
  store float %div.i.i.us.5, float* %arrayidx7.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.5

if.end.r_exit.i.i.us.5:                           ; preds = %if.then.i.i.us.5, %pregion_for_entry.entry.i.i.us.5
  %619 = or i64 %_local_id_x.i.0.us.5, 1
  %add1.i.i.i.us.5.1 = add nuw nsw i64 %619, %mul.i.i.i
  %conv.i.i.us.5.1 = trunc i64 %add1.i.i.i.us.5.1 to i32
  %cmp4.i.i.us.5.1 = icmp sgt i32 %23, %conv.i.i.us.5.1
  br i1 %cmp4.i.i.us.5.1, label %if.then.i.i.us.5.1, label %if.end.r_exit.i.i.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.r_exit.i.i.us.5.1
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph237, %pregion_for_end.i.i.4
  %620 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.6 = or i32 %620, 6
  %cmp.i.i.6 = icmp sgt i32 %27, %conv2.i.i.6
  %mul.i.i.6 = mul nsw i32 %23, %conv2.i.i.6
  br i1 %cmp.i.i.6, label %vector.scevcheck260, label %pregion_for_end.i.i.6

vector.scevcheck260:                              ; preds = %pregion_for_end.i.i.5
  %621 = mul i32 %23, %conv2.i.i.6
  %622 = trunc i64 %2 to i32
  %623 = shl i32 %622, 5
  %624 = add i32 %621, %623
  %625 = icmp sgt i32 %624, 2147483616
  br i1 %625, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.memcheck282

pregion_for_entry.entry.i.i.us.6.preheader:       ; preds = %vector.memcheck282, %vector.scevcheck260
  br label %pregion_for_entry.entry.i.i.us.6

vector.memcheck282:                               ; preds = %vector.scevcheck260
  %626 = trunc i64 %2 to i32
  %627 = shl i32 %626, 5
  %628 = sext i32 %627 to i64
  %scevgep262 = getelementptr float, float* %7, i64 %628
  %629 = add nsw i64 %628, 32
  %scevgep264 = getelementptr float, float* %7, i64 %629
  %630 = mul i32 %23, %conv2.i.i.6
  %631 = add i32 %630, %627
  %632 = sext i32 %631 to i64
  %scevgep266 = getelementptr float, float* %15, i64 %632
  %633 = add nsw i64 %632, 32
  %scevgep268 = getelementptr float, float* %15, i64 %633
  %scevgep270 = getelementptr float, float* %11, i64 %628
  %scevgep272 = getelementptr float, float* %11, i64 %629
  %bound0274 = icmp ult float* %scevgep262, %scevgep268
  %bound1275 = icmp ult float* %scevgep266, %scevgep264
  %found.conflict276 = and i1 %bound0274, %bound1275
  %bound0277 = icmp ult float* %scevgep270, %scevgep268
  %bound1278 = icmp ult float* %scevgep266, %scevgep272
  %found.conflict279 = and i1 %bound0277, %bound1278
  %conflict.rdx280 = or i1 %found.conflict276, %found.conflict279
  br i1 %conflict.rdx280, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.ph283

vector.ph283:                                     ; preds = %vector.memcheck282
  %broadcast.splatinsert290 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat291 = shufflevector <8 x i64> %broadcast.splatinsert290, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert292 = insertelement <8 x i32> undef, i32 %23, i32 0
  %broadcast.splat293 = shufflevector <8 x i32> %broadcast.splatinsert292, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert297 = insertelement <8 x float> undef, float %28, i32 0
  %broadcast.splat298 = shufflevector <8 x float> %broadcast.splatinsert297, <8 x float> undef, <8 x i32> zeroinitializer
  %634 = or <8 x i64> %broadcast.splat291, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %635 = trunc <8 x i64> %634 to <8 x i32>
  %636 = icmp sgt <8 x i32> %broadcast.splat293, %635
  %637 = extractelement <8 x i64> %634, i32 0
  %638 = shl i64 %637, 32
  %639 = ashr exact i64 %638, 32
  %640 = getelementptr inbounds float, float* %7, i64 %639
  %641 = bitcast float* %640 to <8 x float>*
  %wide.masked.load294 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %641, i32 4, <8 x i1> %636, <8 x float> undef), !tbaa !12, !alias.scope !128, !noalias !131
  %642 = extractelement <8 x i32> %635, i32 0
  %643 = add nsw i32 %mul.i.i.6, %642
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds float, float* %15, i64 %644
  %646 = bitcast float* %645 to <8 x float>*
  %wide.masked.load295 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %646, i32 4, <8 x i1> %636, <8 x float> undef), !tbaa !12, !alias.scope !131
  %647 = fsub <8 x float> %wide.masked.load295, %wide.masked.load294
  %648 = bitcast float* %645 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %647, <8 x float>* %648, i32 4, <8 x i1> %636), !tbaa !12, !alias.scope !131, !llvm.access.group !21
  %649 = getelementptr inbounds float, float* %11, i64 %639
  %650 = bitcast float* %649 to <8 x float>*
  %wide.masked.load296 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %650, i32 4, <8 x i1> %636, <8 x float> undef), !tbaa !12, !alias.scope !133, !noalias !131
  %651 = fmul <8 x float> %broadcast.splat298, %wide.masked.load296
  %652 = fdiv <8 x float> %647, %651, !fpmath !26
  %653 = bitcast float* %645 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %652, <8 x float>* %653, i32 4, <8 x i1> %636), !tbaa !12, !alias.scope !131, !llvm.access.group !21
  %654 = or <8 x i64> %broadcast.splat291, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %655 = trunc <8 x i64> %654 to <8 x i32>
  %656 = icmp sgt <8 x i32> %broadcast.splat293, %655
  %657 = extractelement <8 x i64> %654, i32 0
  %658 = shl i64 %657, 32
  %659 = ashr exact i64 %658, 32
  %660 = getelementptr inbounds float, float* %7, i64 %659
  %661 = bitcast float* %660 to <8 x float>*
  %wide.masked.load294.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %661, i32 4, <8 x i1> %656, <8 x float> undef), !tbaa !12, !alias.scope !128, !noalias !131
  %662 = extractelement <8 x i32> %655, i32 0
  %663 = add nsw i32 %mul.i.i.6, %662
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds float, float* %15, i64 %664
  %666 = bitcast float* %665 to <8 x float>*
  %wide.masked.load295.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %666, i32 4, <8 x i1> %656, <8 x float> undef), !tbaa !12, !alias.scope !131
  %667 = fsub <8 x float> %wide.masked.load295.1, %wide.masked.load294.1
  %668 = bitcast float* %665 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %667, <8 x float>* %668, i32 4, <8 x i1> %656), !tbaa !12, !alias.scope !131, !llvm.access.group !21
  %669 = getelementptr inbounds float, float* %11, i64 %659
  %670 = bitcast float* %669 to <8 x float>*
  %wide.masked.load296.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %670, i32 4, <8 x i1> %656, <8 x float> undef), !tbaa !12, !alias.scope !133, !noalias !131
  %671 = fmul <8 x float> %broadcast.splat298, %wide.masked.load296.1
  %672 = fdiv <8 x float> %667, %671, !fpmath !26
  %673 = bitcast float* %665 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %672, <8 x float>* %673, i32 4, <8 x i1> %656), !tbaa !12, !alias.scope !131, !llvm.access.group !21
  %674 = or <8 x i64> %broadcast.splat291, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %675 = trunc <8 x i64> %674 to <8 x i32>
  %676 = icmp sgt <8 x i32> %broadcast.splat293, %675
  %677 = extractelement <8 x i64> %674, i32 0
  %678 = shl i64 %677, 32
  %679 = ashr exact i64 %678, 32
  %680 = getelementptr inbounds float, float* %7, i64 %679
  %681 = bitcast float* %680 to <8 x float>*
  %wide.masked.load294.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %681, i32 4, <8 x i1> %676, <8 x float> undef), !tbaa !12, !alias.scope !128, !noalias !131
  %682 = extractelement <8 x i32> %675, i32 0
  %683 = add nsw i32 %mul.i.i.6, %682
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds float, float* %15, i64 %684
  %686 = bitcast float* %685 to <8 x float>*
  %wide.masked.load295.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %686, i32 4, <8 x i1> %676, <8 x float> undef), !tbaa !12, !alias.scope !131
  %687 = fsub <8 x float> %wide.masked.load295.2, %wide.masked.load294.2
  %688 = bitcast float* %685 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %687, <8 x float>* %688, i32 4, <8 x i1> %676), !tbaa !12, !alias.scope !131, !llvm.access.group !21
  %689 = getelementptr inbounds float, float* %11, i64 %679
  %690 = bitcast float* %689 to <8 x float>*
  %wide.masked.load296.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %690, i32 4, <8 x i1> %676, <8 x float> undef), !tbaa !12, !alias.scope !133, !noalias !131
  %691 = fmul <8 x float> %broadcast.splat298, %wide.masked.load296.2
  %692 = fdiv <8 x float> %687, %691, !fpmath !26
  %693 = bitcast float* %685 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %692, <8 x float>* %693, i32 4, <8 x i1> %676), !tbaa !12, !alias.scope !131, !llvm.access.group !21
  %694 = or <8 x i64> %broadcast.splat291, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %695 = trunc <8 x i64> %694 to <8 x i32>
  %696 = icmp sgt <8 x i32> %broadcast.splat293, %695
  %697 = extractelement <8 x i64> %694, i32 0
  %698 = shl i64 %697, 32
  %699 = ashr exact i64 %698, 32
  %700 = getelementptr inbounds float, float* %7, i64 %699
  %701 = bitcast float* %700 to <8 x float>*
  %wide.masked.load294.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %701, i32 4, <8 x i1> %696, <8 x float> undef), !tbaa !12, !alias.scope !128, !noalias !131
  %702 = extractelement <8 x i32> %695, i32 0
  %703 = add nsw i32 %mul.i.i.6, %702
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds float, float* %15, i64 %704
  %706 = bitcast float* %705 to <8 x float>*
  %wide.masked.load295.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %706, i32 4, <8 x i1> %696, <8 x float> undef), !tbaa !12, !alias.scope !131
  %707 = fsub <8 x float> %wide.masked.load295.3, %wide.masked.load294.3
  %708 = bitcast float* %705 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %707, <8 x float>* %708, i32 4, <8 x i1> %696), !tbaa !12, !alias.scope !131, !llvm.access.group !21
  %709 = getelementptr inbounds float, float* %11, i64 %699
  %710 = bitcast float* %709 to <8 x float>*
  %wide.masked.load296.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %710, i32 4, <8 x i1> %696, <8 x float> undef), !tbaa !12, !alias.scope !133, !noalias !131
  %711 = fmul <8 x float> %broadcast.splat298, %wide.masked.load296.3
  %712 = fdiv <8 x float> %707, %711, !fpmath !26
  %713 = bitcast float* %705 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %712, <8 x float>* %713, i32 4, <8 x i1> %696), !tbaa !12, !alias.scope !131, !llvm.access.group !21
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.6:                 ; preds = %if.end.r_exit.i.i.us.6.1, %pregion_for_entry.entry.i.i.us.6.preheader
  %_local_id_x.i.0.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.6.preheader ], [ %823, %if.end.r_exit.i.i.us.6.1 ]
  %add1.i.i.i.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.6, %mul.i.i.i
  %conv.i.i.us.6 = trunc i64 %add1.i.i.i.us.6 to i32
  %cmp4.i.i.us.6 = icmp sgt i32 %23, %conv.i.i.us.6
  br i1 %cmp4.i.i.us.6, label %if.then.i.i.us.6, label %if.end.r_exit.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %pregion_for_entry.entry.i.i.us.6
  %sext.i.i.us.6 = shl i64 %add1.i.i.i.us.6, 32
  %idxprom.i.i.us.6 = ashr exact i64 %sext.i.i.us.6, 32
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.6
  %714 = load float, float* %arrayidx.i.i.us.6, align 4, !tbaa !12
  %add.i.i.us.6 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6
  %idxprom6.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx7.i.i.us.6 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.6
  %715 = load float, float* %arrayidx7.i.i.us.6, align 4, !tbaa !12
  %sub.i.i.us.6 = fsub float %715, %714
  store float %sub.i.i.us.6, float* %arrayidx7.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.6 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.6
  %716 = load float, float* %arrayidx10.i.i.us.6, align 4, !tbaa !12
  %mul11.i.i.us.6 = fmul float %28, %716
  %div.i.i.us.6 = fdiv float %sub.i.i.us.6, %mul11.i.i.us.6, !fpmath !26
  store float %div.i.i.us.6, float* %arrayidx7.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.6

if.end.r_exit.i.i.us.6:                           ; preds = %if.then.i.i.us.6, %pregion_for_entry.entry.i.i.us.6
  %717 = or i64 %_local_id_x.i.0.us.6, 1
  %add1.i.i.i.us.6.1 = add nuw nsw i64 %717, %mul.i.i.i
  %conv.i.i.us.6.1 = trunc i64 %add1.i.i.i.us.6.1 to i32
  %cmp4.i.i.us.6.1 = icmp sgt i32 %23, %conv.i.i.us.6.1
  br i1 %cmp4.i.i.us.6.1, label %if.then.i.i.us.6.1, label %if.end.r_exit.i.i.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.r_exit.i.i.us.6.1
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph283, %pregion_for_end.i.i.5
  %718 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.7 = or i32 %718, 7
  %cmp.i.i.7 = icmp sgt i32 %27, %conv2.i.i.7
  %mul.i.i.7 = mul nsw i32 %23, %conv2.i.i.7
  br i1 %cmp.i.i.7, label %vector.scevcheck306, label %pregion_for_end.i.i.7

vector.scevcheck306:                              ; preds = %pregion_for_end.i.i.6
  %719 = mul i32 %23, %conv2.i.i.7
  %720 = trunc i64 %2 to i32
  %721 = shl i32 %720, 5
  %722 = add i32 %719, %721
  %723 = icmp sgt i32 %722, 2147483616
  br i1 %723, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.memcheck328

pregion_for_entry.entry.i.i.us.7.preheader:       ; preds = %vector.memcheck328, %vector.scevcheck306
  br label %pregion_for_entry.entry.i.i.us.7

vector.memcheck328:                               ; preds = %vector.scevcheck306
  %724 = trunc i64 %2 to i32
  %725 = shl i32 %724, 5
  %726 = sext i32 %725 to i64
  %scevgep308 = getelementptr float, float* %7, i64 %726
  %727 = add nsw i64 %726, 32
  %scevgep310 = getelementptr float, float* %7, i64 %727
  %728 = mul i32 %23, %conv2.i.i.7
  %729 = add i32 %728, %725
  %730 = sext i32 %729 to i64
  %scevgep312 = getelementptr float, float* %15, i64 %730
  %731 = add nsw i64 %730, 32
  %scevgep314 = getelementptr float, float* %15, i64 %731
  %scevgep316 = getelementptr float, float* %11, i64 %726
  %scevgep318 = getelementptr float, float* %11, i64 %727
  %bound0320 = icmp ult float* %scevgep308, %scevgep314
  %bound1321 = icmp ult float* %scevgep312, %scevgep310
  %found.conflict322 = and i1 %bound0320, %bound1321
  %bound0323 = icmp ult float* %scevgep316, %scevgep314
  %bound1324 = icmp ult float* %scevgep312, %scevgep318
  %found.conflict325 = and i1 %bound0323, %bound1324
  %conflict.rdx326 = or i1 %found.conflict322, %found.conflict325
  br i1 %conflict.rdx326, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.ph329

vector.ph329:                                     ; preds = %vector.memcheck328
  %broadcast.splatinsert336 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat337 = shufflevector <8 x i64> %broadcast.splatinsert336, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert338 = insertelement <8 x i32> undef, i32 %23, i32 0
  %broadcast.splat339 = shufflevector <8 x i32> %broadcast.splatinsert338, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert343 = insertelement <8 x float> undef, float %28, i32 0
  %broadcast.splat344 = shufflevector <8 x float> %broadcast.splatinsert343, <8 x float> undef, <8 x i32> zeroinitializer
  %732 = or <8 x i64> %broadcast.splat337, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %733 = trunc <8 x i64> %732 to <8 x i32>
  %734 = icmp sgt <8 x i32> %broadcast.splat339, %733
  %735 = extractelement <8 x i64> %732, i32 0
  %736 = shl i64 %735, 32
  %737 = ashr exact i64 %736, 32
  %738 = getelementptr inbounds float, float* %7, i64 %737
  %739 = bitcast float* %738 to <8 x float>*
  %wide.masked.load340 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %739, i32 4, <8 x i1> %734, <8 x float> undef), !tbaa !12, !alias.scope !135, !noalias !138
  %740 = extractelement <8 x i32> %733, i32 0
  %741 = add nsw i32 %mul.i.i.7, %740
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds float, float* %15, i64 %742
  %744 = bitcast float* %743 to <8 x float>*
  %wide.masked.load341 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %744, i32 4, <8 x i1> %734, <8 x float> undef), !tbaa !12, !alias.scope !138
  %745 = fsub <8 x float> %wide.masked.load341, %wide.masked.load340
  %746 = bitcast float* %743 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %745, <8 x float>* %746, i32 4, <8 x i1> %734), !tbaa !12, !alias.scope !138, !llvm.access.group !21
  %747 = getelementptr inbounds float, float* %11, i64 %737
  %748 = bitcast float* %747 to <8 x float>*
  %wide.masked.load342 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %748, i32 4, <8 x i1> %734, <8 x float> undef), !tbaa !12, !alias.scope !140, !noalias !138
  %749 = fmul <8 x float> %broadcast.splat344, %wide.masked.load342
  %750 = fdiv <8 x float> %745, %749, !fpmath !26
  %751 = bitcast float* %743 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %750, <8 x float>* %751, i32 4, <8 x i1> %734), !tbaa !12, !alias.scope !138, !llvm.access.group !21
  %752 = or <8 x i64> %broadcast.splat337, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %753 = trunc <8 x i64> %752 to <8 x i32>
  %754 = icmp sgt <8 x i32> %broadcast.splat339, %753
  %755 = extractelement <8 x i64> %752, i32 0
  %756 = shl i64 %755, 32
  %757 = ashr exact i64 %756, 32
  %758 = getelementptr inbounds float, float* %7, i64 %757
  %759 = bitcast float* %758 to <8 x float>*
  %wide.masked.load340.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %759, i32 4, <8 x i1> %754, <8 x float> undef), !tbaa !12, !alias.scope !135, !noalias !138
  %760 = extractelement <8 x i32> %753, i32 0
  %761 = add nsw i32 %mul.i.i.7, %760
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds float, float* %15, i64 %762
  %764 = bitcast float* %763 to <8 x float>*
  %wide.masked.load341.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %764, i32 4, <8 x i1> %754, <8 x float> undef), !tbaa !12, !alias.scope !138
  %765 = fsub <8 x float> %wide.masked.load341.1, %wide.masked.load340.1
  %766 = bitcast float* %763 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %765, <8 x float>* %766, i32 4, <8 x i1> %754), !tbaa !12, !alias.scope !138, !llvm.access.group !21
  %767 = getelementptr inbounds float, float* %11, i64 %757
  %768 = bitcast float* %767 to <8 x float>*
  %wide.masked.load342.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %768, i32 4, <8 x i1> %754, <8 x float> undef), !tbaa !12, !alias.scope !140, !noalias !138
  %769 = fmul <8 x float> %broadcast.splat344, %wide.masked.load342.1
  %770 = fdiv <8 x float> %765, %769, !fpmath !26
  %771 = bitcast float* %763 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %770, <8 x float>* %771, i32 4, <8 x i1> %754), !tbaa !12, !alias.scope !138, !llvm.access.group !21
  %772 = or <8 x i64> %broadcast.splat337, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %773 = trunc <8 x i64> %772 to <8 x i32>
  %774 = icmp sgt <8 x i32> %broadcast.splat339, %773
  %775 = extractelement <8 x i64> %772, i32 0
  %776 = shl i64 %775, 32
  %777 = ashr exact i64 %776, 32
  %778 = getelementptr inbounds float, float* %7, i64 %777
  %779 = bitcast float* %778 to <8 x float>*
  %wide.masked.load340.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %779, i32 4, <8 x i1> %774, <8 x float> undef), !tbaa !12, !alias.scope !135, !noalias !138
  %780 = extractelement <8 x i32> %773, i32 0
  %781 = add nsw i32 %mul.i.i.7, %780
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds float, float* %15, i64 %782
  %784 = bitcast float* %783 to <8 x float>*
  %wide.masked.load341.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %784, i32 4, <8 x i1> %774, <8 x float> undef), !tbaa !12, !alias.scope !138
  %785 = fsub <8 x float> %wide.masked.load341.2, %wide.masked.load340.2
  %786 = bitcast float* %783 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %785, <8 x float>* %786, i32 4, <8 x i1> %774), !tbaa !12, !alias.scope !138, !llvm.access.group !21
  %787 = getelementptr inbounds float, float* %11, i64 %777
  %788 = bitcast float* %787 to <8 x float>*
  %wide.masked.load342.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %788, i32 4, <8 x i1> %774, <8 x float> undef), !tbaa !12, !alias.scope !140, !noalias !138
  %789 = fmul <8 x float> %broadcast.splat344, %wide.masked.load342.2
  %790 = fdiv <8 x float> %785, %789, !fpmath !26
  %791 = bitcast float* %783 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %790, <8 x float>* %791, i32 4, <8 x i1> %774), !tbaa !12, !alias.scope !138, !llvm.access.group !21
  %792 = or <8 x i64> %broadcast.splat337, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %793 = trunc <8 x i64> %792 to <8 x i32>
  %794 = icmp sgt <8 x i32> %broadcast.splat339, %793
  %795 = extractelement <8 x i64> %792, i32 0
  %796 = shl i64 %795, 32
  %797 = ashr exact i64 %796, 32
  %798 = getelementptr inbounds float, float* %7, i64 %797
  %799 = bitcast float* %798 to <8 x float>*
  %wide.masked.load340.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %799, i32 4, <8 x i1> %794, <8 x float> undef), !tbaa !12, !alias.scope !135, !noalias !138
  %800 = extractelement <8 x i32> %793, i32 0
  %801 = add nsw i32 %mul.i.i.7, %800
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds float, float* %15, i64 %802
  %804 = bitcast float* %803 to <8 x float>*
  %wide.masked.load341.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %804, i32 4, <8 x i1> %794, <8 x float> undef), !tbaa !12, !alias.scope !138
  %805 = fsub <8 x float> %wide.masked.load341.3, %wide.masked.load340.3
  %806 = bitcast float* %803 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %805, <8 x float>* %806, i32 4, <8 x i1> %794), !tbaa !12, !alias.scope !138, !llvm.access.group !21
  %807 = getelementptr inbounds float, float* %11, i64 %797
  %808 = bitcast float* %807 to <8 x float>*
  %wide.masked.load342.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %808, i32 4, <8 x i1> %794, <8 x float> undef), !tbaa !12, !alias.scope !140, !noalias !138
  %809 = fmul <8 x float> %broadcast.splat344, %wide.masked.load342.3
  %810 = fdiv <8 x float> %805, %809, !fpmath !26
  %811 = bitcast float* %803 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %810, <8 x float>* %811, i32 4, <8 x i1> %794), !tbaa !12, !alias.scope !138, !llvm.access.group !21
  br label %pregion_for_end.i.i.7

pregion_for_entry.entry.i.i.us.7:                 ; preds = %if.end.r_exit.i.i.us.7.1, %pregion_for_entry.entry.i.i.us.7.preheader
  %_local_id_x.i.0.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.7.preheader ], [ %819, %if.end.r_exit.i.i.us.7.1 ]
  %add1.i.i.i.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.7, %mul.i.i.i
  %conv.i.i.us.7 = trunc i64 %add1.i.i.i.us.7 to i32
  %cmp4.i.i.us.7 = icmp sgt i32 %23, %conv.i.i.us.7
  br i1 %cmp4.i.i.us.7, label %if.then.i.i.us.7, label %if.end.r_exit.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %pregion_for_entry.entry.i.i.us.7
  %sext.i.i.us.7 = shl i64 %add1.i.i.i.us.7, 32
  %idxprom.i.i.us.7 = ashr exact i64 %sext.i.i.us.7, 32
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.7
  %812 = load float, float* %arrayidx.i.i.us.7, align 4, !tbaa !12
  %add.i.i.us.7 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7
  %idxprom6.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx7.i.i.us.7 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.7
  %813 = load float, float* %arrayidx7.i.i.us.7, align 4, !tbaa !12
  %sub.i.i.us.7 = fsub float %813, %812
  store float %sub.i.i.us.7, float* %arrayidx7.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.7 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.7
  %814 = load float, float* %arrayidx10.i.i.us.7, align 4, !tbaa !12
  %mul11.i.i.us.7 = fmul float %28, %814
  %div.i.i.us.7 = fdiv float %sub.i.i.us.7, %mul11.i.i.us.7, !fpmath !26
  store float %div.i.i.us.7, float* %arrayidx7.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.7

if.end.r_exit.i.i.us.7:                           ; preds = %if.then.i.i.us.7, %pregion_for_entry.entry.i.i.us.7
  %815 = or i64 %_local_id_x.i.0.us.7, 1
  %add1.i.i.i.us.7.1 = add nuw nsw i64 %815, %mul.i.i.i
  %conv.i.i.us.7.1 = trunc i64 %add1.i.i.i.us.7.1 to i32
  %cmp4.i.i.us.7.1 = icmp sgt i32 %23, %conv.i.i.us.7.1
  br i1 %cmp4.i.i.us.7.1, label %if.then.i.i.us.7.1, label %if.end.r_exit.i.i.us.7.1

pregion_for_end.i.i.7.loopexit:                   ; preds = %if.end.r_exit.i.i.us.7.1
  br label %pregion_for_end.i.i.7

pregion_for_end.i.i.7:                            ; preds = %pregion_for_end.i.i.7.loopexit, %vector.ph329, %pregion_for_end.i.i.6
  ret void

if.then.i.i.us.7.1:                               ; preds = %if.end.r_exit.i.i.us.7
  %sext.i.i.us.7.1 = shl i64 %add1.i.i.i.us.7.1, 32
  %idxprom.i.i.us.7.1 = ashr exact i64 %sext.i.i.us.7.1, 32
  %arrayidx.i.i.us.7.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.7.1
  %816 = load float, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12
  %add.i.i.us.7.1 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.1
  %idxprom6.i.i.us.7.1 = sext i32 %add.i.i.us.7.1 to i64
  %arrayidx7.i.i.us.7.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.7.1
  %817 = load float, float* %arrayidx7.i.i.us.7.1, align 4, !tbaa !12
  %sub.i.i.us.7.1 = fsub float %817, %816
  store float %sub.i.i.us.7.1, float* %arrayidx7.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.7.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.7.1
  %818 = load float, float* %arrayidx10.i.i.us.7.1, align 4, !tbaa !12
  %mul11.i.i.us.7.1 = fmul float %28, %818
  %div.i.i.us.7.1 = fdiv float %sub.i.i.us.7.1, %mul11.i.i.us.7.1, !fpmath !26
  store float %div.i.i.us.7.1, float* %arrayidx7.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.7.1

if.end.r_exit.i.i.us.7.1:                         ; preds = %if.then.i.i.us.7.1, %if.end.r_exit.i.i.us.7
  %819 = add nuw nsw i64 %_local_id_x.i.0.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %819, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.i.7.loopexit, label %pregion_for_entry.entry.i.i.us.7, !llvm.loop !142

if.then.i.i.us.6.1:                               ; preds = %if.end.r_exit.i.i.us.6
  %sext.i.i.us.6.1 = shl i64 %add1.i.i.i.us.6.1, 32
  %idxprom.i.i.us.6.1 = ashr exact i64 %sext.i.i.us.6.1, 32
  %arrayidx.i.i.us.6.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.6.1
  %820 = load float, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12
  %add.i.i.us.6.1 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.1
  %idxprom6.i.i.us.6.1 = sext i32 %add.i.i.us.6.1 to i64
  %arrayidx7.i.i.us.6.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.6.1
  %821 = load float, float* %arrayidx7.i.i.us.6.1, align 4, !tbaa !12
  %sub.i.i.us.6.1 = fsub float %821, %820
  store float %sub.i.i.us.6.1, float* %arrayidx7.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.6.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.6.1
  %822 = load float, float* %arrayidx10.i.i.us.6.1, align 4, !tbaa !12
  %mul11.i.i.us.6.1 = fmul float %28, %822
  %div.i.i.us.6.1 = fdiv float %sub.i.i.us.6.1, %mul11.i.i.us.6.1, !fpmath !26
  store float %div.i.i.us.6.1, float* %arrayidx7.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.6.1

if.end.r_exit.i.i.us.6.1:                         ; preds = %if.then.i.i.us.6.1, %if.end.r_exit.i.i.us.6
  %823 = add nuw nsw i64 %_local_id_x.i.0.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %823, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.6, !llvm.loop !143

if.then.i.i.us.5.1:                               ; preds = %if.end.r_exit.i.i.us.5
  %sext.i.i.us.5.1 = shl i64 %add1.i.i.i.us.5.1, 32
  %idxprom.i.i.us.5.1 = ashr exact i64 %sext.i.i.us.5.1, 32
  %arrayidx.i.i.us.5.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.5.1
  %824 = load float, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12
  %add.i.i.us.5.1 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.1
  %idxprom6.i.i.us.5.1 = sext i32 %add.i.i.us.5.1 to i64
  %arrayidx7.i.i.us.5.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.5.1
  %825 = load float, float* %arrayidx7.i.i.us.5.1, align 4, !tbaa !12
  %sub.i.i.us.5.1 = fsub float %825, %824
  store float %sub.i.i.us.5.1, float* %arrayidx7.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.5.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.5.1
  %826 = load float, float* %arrayidx10.i.i.us.5.1, align 4, !tbaa !12
  %mul11.i.i.us.5.1 = fmul float %28, %826
  %div.i.i.us.5.1 = fdiv float %sub.i.i.us.5.1, %mul11.i.i.us.5.1, !fpmath !26
  store float %div.i.i.us.5.1, float* %arrayidx7.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.5.1

if.end.r_exit.i.i.us.5.1:                         ; preds = %if.then.i.i.us.5.1, %if.end.r_exit.i.i.us.5
  %827 = add nuw nsw i64 %_local_id_x.i.0.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %827, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.5, !llvm.loop !144

if.then.i.i.us.4.1:                               ; preds = %if.end.r_exit.i.i.us.4
  %sext.i.i.us.4.1 = shl i64 %add1.i.i.i.us.4.1, 32
  %idxprom.i.i.us.4.1 = ashr exact i64 %sext.i.i.us.4.1, 32
  %arrayidx.i.i.us.4.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.4.1
  %828 = load float, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12
  %add.i.i.us.4.1 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.1
  %idxprom6.i.i.us.4.1 = sext i32 %add.i.i.us.4.1 to i64
  %arrayidx7.i.i.us.4.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.4.1
  %829 = load float, float* %arrayidx7.i.i.us.4.1, align 4, !tbaa !12
  %sub.i.i.us.4.1 = fsub float %829, %828
  store float %sub.i.i.us.4.1, float* %arrayidx7.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.4.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.4.1
  %830 = load float, float* %arrayidx10.i.i.us.4.1, align 4, !tbaa !12
  %mul11.i.i.us.4.1 = fmul float %28, %830
  %div.i.i.us.4.1 = fdiv float %sub.i.i.us.4.1, %mul11.i.i.us.4.1, !fpmath !26
  store float %div.i.i.us.4.1, float* %arrayidx7.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.4.1

if.end.r_exit.i.i.us.4.1:                         ; preds = %if.then.i.i.us.4.1, %if.end.r_exit.i.i.us.4
  %831 = add nuw nsw i64 %_local_id_x.i.0.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %831, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.4, !llvm.loop !145

if.then.i.i.us.3.1:                               ; preds = %if.end.r_exit.i.i.us.3
  %sext.i.i.us.3.1 = shl i64 %add1.i.i.i.us.3.1, 32
  %idxprom.i.i.us.3.1 = ashr exact i64 %sext.i.i.us.3.1, 32
  %arrayidx.i.i.us.3.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.3.1
  %832 = load float, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12
  %add.i.i.us.3.1 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.1
  %idxprom6.i.i.us.3.1 = sext i32 %add.i.i.us.3.1 to i64
  %arrayidx7.i.i.us.3.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.3.1
  %833 = load float, float* %arrayidx7.i.i.us.3.1, align 4, !tbaa !12
  %sub.i.i.us.3.1 = fsub float %833, %832
  store float %sub.i.i.us.3.1, float* %arrayidx7.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.3.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.3.1
  %834 = load float, float* %arrayidx10.i.i.us.3.1, align 4, !tbaa !12
  %mul11.i.i.us.3.1 = fmul float %28, %834
  %div.i.i.us.3.1 = fdiv float %sub.i.i.us.3.1, %mul11.i.i.us.3.1, !fpmath !26
  store float %div.i.i.us.3.1, float* %arrayidx7.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.3.1

if.end.r_exit.i.i.us.3.1:                         ; preds = %if.then.i.i.us.3.1, %if.end.r_exit.i.i.us.3
  %835 = add nuw nsw i64 %_local_id_x.i.0.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %835, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.3, !llvm.loop !146

if.then.i.i.us.2.1:                               ; preds = %if.end.r_exit.i.i.us.2
  %sext.i.i.us.2.1 = shl i64 %add1.i.i.i.us.2.1, 32
  %idxprom.i.i.us.2.1 = ashr exact i64 %sext.i.i.us.2.1, 32
  %arrayidx.i.i.us.2.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.2.1
  %836 = load float, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12
  %add.i.i.us.2.1 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.1
  %idxprom6.i.i.us.2.1 = sext i32 %add.i.i.us.2.1 to i64
  %arrayidx7.i.i.us.2.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.2.1
  %837 = load float, float* %arrayidx7.i.i.us.2.1, align 4, !tbaa !12
  %sub.i.i.us.2.1 = fsub float %837, %836
  store float %sub.i.i.us.2.1, float* %arrayidx7.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.2.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.2.1
  %838 = load float, float* %arrayidx10.i.i.us.2.1, align 4, !tbaa !12
  %mul11.i.i.us.2.1 = fmul float %28, %838
  %div.i.i.us.2.1 = fdiv float %sub.i.i.us.2.1, %mul11.i.i.us.2.1, !fpmath !26
  store float %div.i.i.us.2.1, float* %arrayidx7.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.2.1

if.end.r_exit.i.i.us.2.1:                         ; preds = %if.then.i.i.us.2.1, %if.end.r_exit.i.i.us.2
  %839 = add nuw nsw i64 %_local_id_x.i.0.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %839, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.2, !llvm.loop !147

if.then.i.i.us.1.1:                               ; preds = %if.end.r_exit.i.i.us.1
  %sext.i.i.us.1.1 = shl i64 %add1.i.i.i.us.1.1, 32
  %idxprom.i.i.us.1.1 = ashr exact i64 %sext.i.i.us.1.1, 32
  %arrayidx.i.i.us.1.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.1.1
  %840 = load float, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12
  %add.i.i.us.1.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.1
  %idxprom6.i.i.us.1.1 = sext i32 %add.i.i.us.1.1 to i64
  %arrayidx7.i.i.us.1.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.1.1
  %841 = load float, float* %arrayidx7.i.i.us.1.1, align 4, !tbaa !12
  %sub.i.i.us.1.1 = fsub float %841, %840
  store float %sub.i.i.us.1.1, float* %arrayidx7.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.1.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.1.1
  %842 = load float, float* %arrayidx10.i.i.us.1.1, align 4, !tbaa !12
  %mul11.i.i.us.1.1 = fmul float %28, %842
  %div.i.i.us.1.1 = fdiv float %sub.i.i.us.1.1, %mul11.i.i.us.1.1, !fpmath !26
  store float %div.i.i.us.1.1, float* %arrayidx7.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.1.1

if.end.r_exit.i.i.us.1.1:                         ; preds = %if.then.i.i.us.1.1, %if.end.r_exit.i.i.us.1
  %843 = add nuw nsw i64 %_local_id_x.i.0.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %843, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.1, !llvm.loop !148

if.then.i.i.us.1368:                              ; preds = %if.end.r_exit.i.i.us
  %sext.i.i.us.1358 = shl i64 %add1.i.i.i.us.1354, 32
  %idxprom.i.i.us.1359 = ashr exact i64 %sext.i.i.us.1358, 32
  %arrayidx.i.i.us.1360 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.1359
  %844 = load float, float* %arrayidx.i.i.us.1360, align 4, !tbaa !12
  %add.i.i.us.1361 = add nsw i32 %mul.i.i, %conv.i.i.us.1355
  %idxprom6.i.i.us.1362 = sext i32 %add.i.i.us.1361 to i64
  %arrayidx7.i.i.us.1363 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.1362
  %845 = load float, float* %arrayidx7.i.i.us.1363, align 4, !tbaa !12
  %sub.i.i.us.1364 = fsub float %845, %844
  store float %sub.i.i.us.1364, float* %arrayidx7.i.i.us.1363, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.1365 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.1359
  %846 = load float, float* %arrayidx10.i.i.us.1365, align 4, !tbaa !12
  %mul11.i.i.us.1366 = fmul float %28, %846
  %div.i.i.us.1367 = fdiv float %sub.i.i.us.1364, %mul11.i.i.us.1366, !fpmath !26
  store float %div.i.i.us.1367, float* %arrayidx7.i.i.us.1363, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.1369

if.end.r_exit.i.i.us.1369:                        ; preds = %if.then.i.i.us.1368, %if.end.r_exit.i.i.us
  %847 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %847, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !149
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_reduce_kernel_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
pregion_for_entry.pregion_for_init.i.i:
  %5 = bitcast i8** %0 to float**
  %6 = load float*, float** %5, align 8
  %7 = getelementptr i8*, i8** %0, i64 1
  %8 = bitcast i8** %7 to float**
  %9 = load float*, float** %8, align 8
  %10 = getelementptr i8*, i8** %0, i64 2
  %11 = bitcast i8** %10 to float**
  %12 = load float*, float** %11, align 8
  %13 = getelementptr i8*, i8** %0, i64 3
  %14 = bitcast i8** %13 to float**
  %15 = load float*, float** %14, align 8
  %16 = load float, float* %15, align 4
  %17 = getelementptr i8*, i8** %0, i64 4
  %18 = bitcast i8** %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 5
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %25 = tail call float @llvm.sqrt.f32(float %16) #5
  %conv2.i.i = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %24, %conv2.i.i
  %mul.i.i = mul nsw i32 %20, %conv2.i.i
  br i1 %cmp.i.i, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %26 = trunc i64 %3 to i32
  %27 = mul i32 %20, %26
  %28 = shl i32 %27, 3
  %29 = trunc i64 %2 to i32
  %30 = shl i32 %29, 5
  %31 = add i32 %28, %30
  %32 = icmp sgt i32 %31, 2147483616
  br i1 %32, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %33 = trunc i64 %2 to i32
  %34 = shl i32 %33, 5
  %35 = sext i32 %34 to i64
  %scevgep = getelementptr float, float* %6, i64 %35
  %36 = add nsw i64 %35, 32
  %scevgep4 = getelementptr float, float* %6, i64 %36
  %37 = trunc i64 %3 to i32
  %38 = mul i32 %20, %37
  %39 = shl i32 %38, 3
  %40 = add i32 %39, %34
  %41 = sext i32 %40 to i64
  %scevgep6 = getelementptr float, float* %12, i64 %41
  %42 = add nsw i64 %41, 32
  %scevgep8 = getelementptr float, float* %12, i64 %42
  %scevgep10 = getelementptr float, float* %9, i64 %35
  %scevgep12 = getelementptr float, float* %9, i64 %36
  %bound0 = icmp ult float* %scevgep, %scevgep8
  %bound1 = icmp ult float* %scevgep6, %scevgep4
  %found.conflict = and i1 %bound0, %bound1
  %bound014 = icmp ult float* %scevgep10, %scevgep8
  %bound115 = icmp ult float* %scevgep6, %scevgep12
  %found.conflict16 = and i1 %bound014, %bound115
  %conflict.rdx = or i1 %found.conflict, %found.conflict16
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert17 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat18 = shufflevector <8 x i32> %broadcast.splatinsert17, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert21 = insertelement <8 x float> undef, float %25, i32 0
  %broadcast.splat22 = shufflevector <8 x float> %broadcast.splatinsert21, <8 x float> undef, <8 x i32> zeroinitializer
  %43 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %44 = trunc <8 x i64> %43 to <8 x i32>
  %45 = icmp sgt <8 x i32> %broadcast.splat18, %44
  %46 = extractelement <8 x i64> %43, i32 0
  %47 = shl i64 %46, 32
  %48 = ashr exact i64 %47, 32
  %49 = getelementptr inbounds float, float* %6, i64 %48
  %50 = bitcast float* %49 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %50, i32 4, <8 x i1> %45, <8 x float> undef), !tbaa !12, !alias.scope !150, !noalias !153
  %51 = extractelement <8 x i32> %44, i32 0
  %52 = add nsw i32 %mul.i.i, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %12, i64 %53
  %55 = bitcast float* %54 to <8 x float>*
  %wide.masked.load19 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %55, i32 4, <8 x i1> %45, <8 x float> undef), !tbaa !12, !alias.scope !153
  %56 = fsub <8 x float> %wide.masked.load19, %wide.masked.load
  %57 = bitcast float* %54 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %56, <8 x float>* %57, i32 4, <8 x i1> %45), !tbaa !12, !alias.scope !153, !llvm.access.group !21
  %58 = getelementptr inbounds float, float* %9, i64 %48
  %59 = bitcast float* %58 to <8 x float>*
  %wide.masked.load20 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %59, i32 4, <8 x i1> %45, <8 x float> undef), !tbaa !12, !alias.scope !155, !noalias !153
  %60 = fmul <8 x float> %broadcast.splat22, %wide.masked.load20
  %61 = fdiv <8 x float> %56, %60, !fpmath !26
  %62 = bitcast float* %54 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %61, <8 x float>* %62, i32 4, <8 x i1> %45), !tbaa !12, !alias.scope !153, !llvm.access.group !21
  %63 = or <8 x i64> %broadcast.splat, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %64 = trunc <8 x i64> %63 to <8 x i32>
  %65 = icmp sgt <8 x i32> %broadcast.splat18, %64
  %66 = extractelement <8 x i64> %63, i32 0
  %67 = shl i64 %66, 32
  %68 = ashr exact i64 %67, 32
  %69 = getelementptr inbounds float, float* %6, i64 %68
  %70 = bitcast float* %69 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %70, i32 4, <8 x i1> %65, <8 x float> undef), !tbaa !12, !alias.scope !150, !noalias !153
  %71 = extractelement <8 x i32> %64, i32 0
  %72 = add nsw i32 %mul.i.i, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %12, i64 %73
  %75 = bitcast float* %74 to <8 x float>*
  %wide.masked.load19.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %75, i32 4, <8 x i1> %65, <8 x float> undef), !tbaa !12, !alias.scope !153
  %76 = fsub <8 x float> %wide.masked.load19.1, %wide.masked.load.1
  %77 = bitcast float* %74 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %76, <8 x float>* %77, i32 4, <8 x i1> %65), !tbaa !12, !alias.scope !153, !llvm.access.group !21
  %78 = getelementptr inbounds float, float* %9, i64 %68
  %79 = bitcast float* %78 to <8 x float>*
  %wide.masked.load20.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %79, i32 4, <8 x i1> %65, <8 x float> undef), !tbaa !12, !alias.scope !155, !noalias !153
  %80 = fmul <8 x float> %broadcast.splat22, %wide.masked.load20.1
  %81 = fdiv <8 x float> %76, %80, !fpmath !26
  %82 = bitcast float* %74 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %81, <8 x float>* %82, i32 4, <8 x i1> %65), !tbaa !12, !alias.scope !153, !llvm.access.group !21
  %83 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %84 = trunc <8 x i64> %83 to <8 x i32>
  %85 = icmp sgt <8 x i32> %broadcast.splat18, %84
  %86 = extractelement <8 x i64> %83, i32 0
  %87 = shl i64 %86, 32
  %88 = ashr exact i64 %87, 32
  %89 = getelementptr inbounds float, float* %6, i64 %88
  %90 = bitcast float* %89 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %90, i32 4, <8 x i1> %85, <8 x float> undef), !tbaa !12, !alias.scope !150, !noalias !153
  %91 = extractelement <8 x i32> %84, i32 0
  %92 = add nsw i32 %mul.i.i, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %12, i64 %93
  %95 = bitcast float* %94 to <8 x float>*
  %wide.masked.load19.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %95, i32 4, <8 x i1> %85, <8 x float> undef), !tbaa !12, !alias.scope !153
  %96 = fsub <8 x float> %wide.masked.load19.2, %wide.masked.load.2
  %97 = bitcast float* %94 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %96, <8 x float>* %97, i32 4, <8 x i1> %85), !tbaa !12, !alias.scope !153, !llvm.access.group !21
  %98 = getelementptr inbounds float, float* %9, i64 %88
  %99 = bitcast float* %98 to <8 x float>*
  %wide.masked.load20.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %99, i32 4, <8 x i1> %85, <8 x float> undef), !tbaa !12, !alias.scope !155, !noalias !153
  %100 = fmul <8 x float> %broadcast.splat22, %wide.masked.load20.2
  %101 = fdiv <8 x float> %96, %100, !fpmath !26
  %102 = bitcast float* %94 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %101, <8 x float>* %102, i32 4, <8 x i1> %85), !tbaa !12, !alias.scope !153, !llvm.access.group !21
  %103 = or <8 x i64> %broadcast.splat, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %104 = trunc <8 x i64> %103 to <8 x i32>
  %105 = icmp sgt <8 x i32> %broadcast.splat18, %104
  %106 = extractelement <8 x i64> %103, i32 0
  %107 = shl i64 %106, 32
  %108 = ashr exact i64 %107, 32
  %109 = getelementptr inbounds float, float* %6, i64 %108
  %110 = bitcast float* %109 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %110, i32 4, <8 x i1> %105, <8 x float> undef), !tbaa !12, !alias.scope !150, !noalias !153
  %111 = extractelement <8 x i32> %104, i32 0
  %112 = add nsw i32 %mul.i.i, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %12, i64 %113
  %115 = bitcast float* %114 to <8 x float>*
  %wide.masked.load19.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %115, i32 4, <8 x i1> %105, <8 x float> undef), !tbaa !12, !alias.scope !153
  %116 = fsub <8 x float> %wide.masked.load19.3, %wide.masked.load.3
  %117 = bitcast float* %114 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %116, <8 x float>* %117, i32 4, <8 x i1> %105), !tbaa !12, !alias.scope !153, !llvm.access.group !21
  %118 = getelementptr inbounds float, float* %9, i64 %108
  %119 = bitcast float* %118 to <8 x float>*
  %wide.masked.load20.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %119, i32 4, <8 x i1> %105, <8 x float> undef), !tbaa !12, !alias.scope !155, !noalias !153
  %120 = fmul <8 x float> %broadcast.splat22, %wide.masked.load20.3
  %121 = fdiv <8 x float> %116, %120, !fpmath !26
  %122 = bitcast float* %114 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %121, <8 x float>* %122, i32 4, <8 x i1> %105), !tbaa !12, !alias.scope !153, !llvm.access.group !21
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us.1369, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.preheader ], [ %844, %if.end.r_exit.i.i.us.1369 ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %20, %conv.i.i.us
  br i1 %cmp4.i.i.us, label %if.then.i.i.us, label %if.end.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us
  %123 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %add.i.i.us = add nsw i32 %mul.i.i, %conv.i.i.us
  %idxprom6.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx7.i.i.us = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us
  %124 = load float, float* %arrayidx7.i.i.us, align 4, !tbaa !12
  %sub.i.i.us = fsub float %124, %123
  store float %sub.i.i.us, float* %arrayidx7.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us
  %125 = load float, float* %arrayidx10.i.i.us, align 4, !tbaa !12
  %mul11.i.i.us = fmul float %25, %125
  %div.i.i.us = fdiv float %sub.i.i.us, %mul11.i.i.us, !fpmath !26
  store float %div.i.i.us, float* %arrayidx7.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %126 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1354 = add nuw nsw i64 %126, %mul.i.i.i
  %conv.i.i.us.1355 = trunc i64 %add1.i.i.i.us.1354 to i32
  %cmp4.i.i.us.1356 = icmp sgt i32 %20, %conv.i.i.us.1355
  br i1 %cmp4.i.i.us.1356, label %if.then.i.i.us.1368, label %if.end.r_exit.i.i.us.1369

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.r_exit.i.i.us.1369
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i
  %127 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.1 = or i32 %127, 1
  %cmp.i.i.1 = icmp sgt i32 %24, %conv2.i.i.1
  %mul.i.i.1 = mul nsw i32 %20, %conv2.i.i.1
  br i1 %cmp.i.i.1, label %vector.scevcheck30, label %pregion_for_end.i.i.1

vector.scevcheck30:                               ; preds = %pregion_for_end.i.i
  %128 = mul i32 %20, %conv2.i.i.1
  %129 = trunc i64 %2 to i32
  %130 = shl i32 %129, 5
  %131 = add i32 %128, %130
  %132 = icmp sgt i32 %131, 2147483616
  br i1 %132, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.memcheck52

pregion_for_entry.entry.i.i.us.1.preheader:       ; preds = %vector.memcheck52, %vector.scevcheck30
  br label %pregion_for_entry.entry.i.i.us.1

vector.memcheck52:                                ; preds = %vector.scevcheck30
  %133 = trunc i64 %2 to i32
  %134 = shl i32 %133, 5
  %135 = sext i32 %134 to i64
  %scevgep32 = getelementptr float, float* %6, i64 %135
  %136 = add nsw i64 %135, 32
  %scevgep34 = getelementptr float, float* %6, i64 %136
  %137 = mul i32 %20, %conv2.i.i.1
  %138 = add i32 %137, %134
  %139 = sext i32 %138 to i64
  %scevgep36 = getelementptr float, float* %12, i64 %139
  %140 = add nsw i64 %139, 32
  %scevgep38 = getelementptr float, float* %12, i64 %140
  %scevgep40 = getelementptr float, float* %9, i64 %135
  %scevgep42 = getelementptr float, float* %9, i64 %136
  %bound044 = icmp ult float* %scevgep32, %scevgep38
  %bound145 = icmp ult float* %scevgep36, %scevgep34
  %found.conflict46 = and i1 %bound044, %bound145
  %bound047 = icmp ult float* %scevgep40, %scevgep38
  %bound148 = icmp ult float* %scevgep36, %scevgep42
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx50 = or i1 %found.conflict46, %found.conflict49
  br i1 %conflict.rdx50, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.ph53

vector.ph53:                                      ; preds = %vector.memcheck52
  %broadcast.splatinsert60 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat61 = shufflevector <8 x i64> %broadcast.splatinsert60, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat63 = shufflevector <8 x i32> %broadcast.splatinsert62, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <8 x float> undef, float %25, i32 0
  %broadcast.splat68 = shufflevector <8 x float> %broadcast.splatinsert67, <8 x float> undef, <8 x i32> zeroinitializer
  %141 = or <8 x i64> %broadcast.splat61, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %142 = trunc <8 x i64> %141 to <8 x i32>
  %143 = icmp sgt <8 x i32> %broadcast.splat63, %142
  %144 = extractelement <8 x i64> %141, i32 0
  %145 = shl i64 %144, 32
  %146 = ashr exact i64 %145, 32
  %147 = getelementptr inbounds float, float* %6, i64 %146
  %148 = bitcast float* %147 to <8 x float>*
  %wide.masked.load64 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %148, i32 4, <8 x i1> %143, <8 x float> undef), !tbaa !12, !alias.scope !157, !noalias !160
  %149 = extractelement <8 x i32> %142, i32 0
  %150 = add nsw i32 %mul.i.i.1, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %12, i64 %151
  %153 = bitcast float* %152 to <8 x float>*
  %wide.masked.load65 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %153, i32 4, <8 x i1> %143, <8 x float> undef), !tbaa !12, !alias.scope !160
  %154 = fsub <8 x float> %wide.masked.load65, %wide.masked.load64
  %155 = bitcast float* %152 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %154, <8 x float>* %155, i32 4, <8 x i1> %143), !tbaa !12, !alias.scope !160, !llvm.access.group !21
  %156 = getelementptr inbounds float, float* %9, i64 %146
  %157 = bitcast float* %156 to <8 x float>*
  %wide.masked.load66 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %157, i32 4, <8 x i1> %143, <8 x float> undef), !tbaa !12, !alias.scope !162, !noalias !160
  %158 = fmul <8 x float> %broadcast.splat68, %wide.masked.load66
  %159 = fdiv <8 x float> %154, %158, !fpmath !26
  %160 = bitcast float* %152 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %159, <8 x float>* %160, i32 4, <8 x i1> %143), !tbaa !12, !alias.scope !160, !llvm.access.group !21
  %161 = or <8 x i64> %broadcast.splat61, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %162 = trunc <8 x i64> %161 to <8 x i32>
  %163 = icmp sgt <8 x i32> %broadcast.splat63, %162
  %164 = extractelement <8 x i64> %161, i32 0
  %165 = shl i64 %164, 32
  %166 = ashr exact i64 %165, 32
  %167 = getelementptr inbounds float, float* %6, i64 %166
  %168 = bitcast float* %167 to <8 x float>*
  %wide.masked.load64.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %168, i32 4, <8 x i1> %163, <8 x float> undef), !tbaa !12, !alias.scope !157, !noalias !160
  %169 = extractelement <8 x i32> %162, i32 0
  %170 = add nsw i32 %mul.i.i.1, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %12, i64 %171
  %173 = bitcast float* %172 to <8 x float>*
  %wide.masked.load65.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %173, i32 4, <8 x i1> %163, <8 x float> undef), !tbaa !12, !alias.scope !160
  %174 = fsub <8 x float> %wide.masked.load65.1, %wide.masked.load64.1
  %175 = bitcast float* %172 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %174, <8 x float>* %175, i32 4, <8 x i1> %163), !tbaa !12, !alias.scope !160, !llvm.access.group !21
  %176 = getelementptr inbounds float, float* %9, i64 %166
  %177 = bitcast float* %176 to <8 x float>*
  %wide.masked.load66.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %177, i32 4, <8 x i1> %163, <8 x float> undef), !tbaa !12, !alias.scope !162, !noalias !160
  %178 = fmul <8 x float> %broadcast.splat68, %wide.masked.load66.1
  %179 = fdiv <8 x float> %174, %178, !fpmath !26
  %180 = bitcast float* %172 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %179, <8 x float>* %180, i32 4, <8 x i1> %163), !tbaa !12, !alias.scope !160, !llvm.access.group !21
  %181 = or <8 x i64> %broadcast.splat61, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %182 = trunc <8 x i64> %181 to <8 x i32>
  %183 = icmp sgt <8 x i32> %broadcast.splat63, %182
  %184 = extractelement <8 x i64> %181, i32 0
  %185 = shl i64 %184, 32
  %186 = ashr exact i64 %185, 32
  %187 = getelementptr inbounds float, float* %6, i64 %186
  %188 = bitcast float* %187 to <8 x float>*
  %wide.masked.load64.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %188, i32 4, <8 x i1> %183, <8 x float> undef), !tbaa !12, !alias.scope !157, !noalias !160
  %189 = extractelement <8 x i32> %182, i32 0
  %190 = add nsw i32 %mul.i.i.1, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float* %12, i64 %191
  %193 = bitcast float* %192 to <8 x float>*
  %wide.masked.load65.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %193, i32 4, <8 x i1> %183, <8 x float> undef), !tbaa !12, !alias.scope !160
  %194 = fsub <8 x float> %wide.masked.load65.2, %wide.masked.load64.2
  %195 = bitcast float* %192 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %194, <8 x float>* %195, i32 4, <8 x i1> %183), !tbaa !12, !alias.scope !160, !llvm.access.group !21
  %196 = getelementptr inbounds float, float* %9, i64 %186
  %197 = bitcast float* %196 to <8 x float>*
  %wide.masked.load66.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %197, i32 4, <8 x i1> %183, <8 x float> undef), !tbaa !12, !alias.scope !162, !noalias !160
  %198 = fmul <8 x float> %broadcast.splat68, %wide.masked.load66.2
  %199 = fdiv <8 x float> %194, %198, !fpmath !26
  %200 = bitcast float* %192 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %199, <8 x float>* %200, i32 4, <8 x i1> %183), !tbaa !12, !alias.scope !160, !llvm.access.group !21
  %201 = or <8 x i64> %broadcast.splat61, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %202 = trunc <8 x i64> %201 to <8 x i32>
  %203 = icmp sgt <8 x i32> %broadcast.splat63, %202
  %204 = extractelement <8 x i64> %201, i32 0
  %205 = shl i64 %204, 32
  %206 = ashr exact i64 %205, 32
  %207 = getelementptr inbounds float, float* %6, i64 %206
  %208 = bitcast float* %207 to <8 x float>*
  %wide.masked.load64.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %208, i32 4, <8 x i1> %203, <8 x float> undef), !tbaa !12, !alias.scope !157, !noalias !160
  %209 = extractelement <8 x i32> %202, i32 0
  %210 = add nsw i32 %mul.i.i.1, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %12, i64 %211
  %213 = bitcast float* %212 to <8 x float>*
  %wide.masked.load65.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %213, i32 4, <8 x i1> %203, <8 x float> undef), !tbaa !12, !alias.scope !160
  %214 = fsub <8 x float> %wide.masked.load65.3, %wide.masked.load64.3
  %215 = bitcast float* %212 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %214, <8 x float>* %215, i32 4, <8 x i1> %203), !tbaa !12, !alias.scope !160, !llvm.access.group !21
  %216 = getelementptr inbounds float, float* %9, i64 %206
  %217 = bitcast float* %216 to <8 x float>*
  %wide.masked.load66.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %217, i32 4, <8 x i1> %203, <8 x float> undef), !tbaa !12, !alias.scope !162, !noalias !160
  %218 = fmul <8 x float> %broadcast.splat68, %wide.masked.load66.3
  %219 = fdiv <8 x float> %214, %218, !fpmath !26
  %220 = bitcast float* %212 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %219, <8 x float>* %220, i32 4, <8 x i1> %203), !tbaa !12, !alias.scope !160, !llvm.access.group !21
  br label %pregion_for_end.i.i.1

pregion_for_entry.entry.i.i.us.1:                 ; preds = %if.end.r_exit.i.i.us.1.1, %pregion_for_entry.entry.i.i.us.1.preheader
  %_local_id_x.i.0.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.1.preheader ], [ %840, %if.end.r_exit.i.i.us.1.1 ]
  %add1.i.i.i.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.1, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp4.i.i.us.1 = icmp sgt i32 %20, %conv.i.i.us.1
  br i1 %cmp4.i.i.us.1, label %if.then.i.i.us.1, label %if.end.r_exit.i.i.us.1

if.then.i.i.us.1:                                 ; preds = %pregion_for_entry.entry.i.i.us.1
  %sext.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom.i.i.us.1 = ashr exact i64 %sext.i.i.us.1, 32
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.1
  %221 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %add.i.i.us.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1
  %idxprom6.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx7.i.i.us.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.1
  %222 = load float, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12
  %sub.i.i.us.1 = fsub float %222, %221
  store float %sub.i.i.us.1, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.1
  %223 = load float, float* %arrayidx10.i.i.us.1, align 4, !tbaa !12
  %mul11.i.i.us.1 = fmul float %25, %223
  %div.i.i.us.1 = fdiv float %sub.i.i.us.1, %mul11.i.i.us.1, !fpmath !26
  store float %div.i.i.us.1, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.1

if.end.r_exit.i.i.us.1:                           ; preds = %if.then.i.i.us.1, %pregion_for_entry.entry.i.i.us.1
  %224 = or i64 %_local_id_x.i.0.us.1, 1
  %add1.i.i.i.us.1.1 = add nuw nsw i64 %224, %mul.i.i.i
  %conv.i.i.us.1.1 = trunc i64 %add1.i.i.i.us.1.1 to i32
  %cmp4.i.i.us.1.1 = icmp sgt i32 %20, %conv.i.i.us.1.1
  br i1 %cmp4.i.i.us.1.1, label %if.then.i.i.us.1.1, label %if.end.r_exit.i.i.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.r_exit.i.i.us.1.1
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph53, %pregion_for_end.i.i
  %225 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.2 = or i32 %225, 2
  %cmp.i.i.2 = icmp sgt i32 %24, %conv2.i.i.2
  %mul.i.i.2 = mul nsw i32 %20, %conv2.i.i.2
  br i1 %cmp.i.i.2, label %vector.scevcheck76, label %pregion_for_end.i.i.2

vector.scevcheck76:                               ; preds = %pregion_for_end.i.i.1
  %226 = mul i32 %20, %conv2.i.i.2
  %227 = trunc i64 %2 to i32
  %228 = shl i32 %227, 5
  %229 = add i32 %226, %228
  %230 = icmp sgt i32 %229, 2147483616
  br i1 %230, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.memcheck98

pregion_for_entry.entry.i.i.us.2.preheader:       ; preds = %vector.memcheck98, %vector.scevcheck76
  br label %pregion_for_entry.entry.i.i.us.2

vector.memcheck98:                                ; preds = %vector.scevcheck76
  %231 = trunc i64 %2 to i32
  %232 = shl i32 %231, 5
  %233 = sext i32 %232 to i64
  %scevgep78 = getelementptr float, float* %6, i64 %233
  %234 = add nsw i64 %233, 32
  %scevgep80 = getelementptr float, float* %6, i64 %234
  %235 = mul i32 %20, %conv2.i.i.2
  %236 = add i32 %235, %232
  %237 = sext i32 %236 to i64
  %scevgep82 = getelementptr float, float* %12, i64 %237
  %238 = add nsw i64 %237, 32
  %scevgep84 = getelementptr float, float* %12, i64 %238
  %scevgep86 = getelementptr float, float* %9, i64 %233
  %scevgep88 = getelementptr float, float* %9, i64 %234
  %bound090 = icmp ult float* %scevgep78, %scevgep84
  %bound191 = icmp ult float* %scevgep82, %scevgep80
  %found.conflict92 = and i1 %bound090, %bound191
  %bound093 = icmp ult float* %scevgep86, %scevgep84
  %bound194 = icmp ult float* %scevgep82, %scevgep88
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %found.conflict92, %found.conflict95
  br i1 %conflict.rdx96, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck98
  %broadcast.splatinsert106 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat107 = shufflevector <8 x i64> %broadcast.splatinsert106, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert108 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat109 = shufflevector <8 x i32> %broadcast.splatinsert108, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <8 x float> undef, float %25, i32 0
  %broadcast.splat114 = shufflevector <8 x float> %broadcast.splatinsert113, <8 x float> undef, <8 x i32> zeroinitializer
  %239 = or <8 x i64> %broadcast.splat107, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %240 = trunc <8 x i64> %239 to <8 x i32>
  %241 = icmp sgt <8 x i32> %broadcast.splat109, %240
  %242 = extractelement <8 x i64> %239, i32 0
  %243 = shl i64 %242, 32
  %244 = ashr exact i64 %243, 32
  %245 = getelementptr inbounds float, float* %6, i64 %244
  %246 = bitcast float* %245 to <8 x float>*
  %wide.masked.load110 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %246, i32 4, <8 x i1> %241, <8 x float> undef), !tbaa !12, !alias.scope !164, !noalias !167
  %247 = extractelement <8 x i32> %240, i32 0
  %248 = add nsw i32 %mul.i.i.2, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds float, float* %12, i64 %249
  %251 = bitcast float* %250 to <8 x float>*
  %wide.masked.load111 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %251, i32 4, <8 x i1> %241, <8 x float> undef), !tbaa !12, !alias.scope !167
  %252 = fsub <8 x float> %wide.masked.load111, %wide.masked.load110
  %253 = bitcast float* %250 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %252, <8 x float>* %253, i32 4, <8 x i1> %241), !tbaa !12, !alias.scope !167, !llvm.access.group !21
  %254 = getelementptr inbounds float, float* %9, i64 %244
  %255 = bitcast float* %254 to <8 x float>*
  %wide.masked.load112 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %255, i32 4, <8 x i1> %241, <8 x float> undef), !tbaa !12, !alias.scope !169, !noalias !167
  %256 = fmul <8 x float> %broadcast.splat114, %wide.masked.load112
  %257 = fdiv <8 x float> %252, %256, !fpmath !26
  %258 = bitcast float* %250 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %257, <8 x float>* %258, i32 4, <8 x i1> %241), !tbaa !12, !alias.scope !167, !llvm.access.group !21
  %259 = or <8 x i64> %broadcast.splat107, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %260 = trunc <8 x i64> %259 to <8 x i32>
  %261 = icmp sgt <8 x i32> %broadcast.splat109, %260
  %262 = extractelement <8 x i64> %259, i32 0
  %263 = shl i64 %262, 32
  %264 = ashr exact i64 %263, 32
  %265 = getelementptr inbounds float, float* %6, i64 %264
  %266 = bitcast float* %265 to <8 x float>*
  %wide.masked.load110.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %266, i32 4, <8 x i1> %261, <8 x float> undef), !tbaa !12, !alias.scope !164, !noalias !167
  %267 = extractelement <8 x i32> %260, i32 0
  %268 = add nsw i32 %mul.i.i.2, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds float, float* %12, i64 %269
  %271 = bitcast float* %270 to <8 x float>*
  %wide.masked.load111.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %271, i32 4, <8 x i1> %261, <8 x float> undef), !tbaa !12, !alias.scope !167
  %272 = fsub <8 x float> %wide.masked.load111.1, %wide.masked.load110.1
  %273 = bitcast float* %270 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %272, <8 x float>* %273, i32 4, <8 x i1> %261), !tbaa !12, !alias.scope !167, !llvm.access.group !21
  %274 = getelementptr inbounds float, float* %9, i64 %264
  %275 = bitcast float* %274 to <8 x float>*
  %wide.masked.load112.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %275, i32 4, <8 x i1> %261, <8 x float> undef), !tbaa !12, !alias.scope !169, !noalias !167
  %276 = fmul <8 x float> %broadcast.splat114, %wide.masked.load112.1
  %277 = fdiv <8 x float> %272, %276, !fpmath !26
  %278 = bitcast float* %270 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %277, <8 x float>* %278, i32 4, <8 x i1> %261), !tbaa !12, !alias.scope !167, !llvm.access.group !21
  %279 = or <8 x i64> %broadcast.splat107, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %280 = trunc <8 x i64> %279 to <8 x i32>
  %281 = icmp sgt <8 x i32> %broadcast.splat109, %280
  %282 = extractelement <8 x i64> %279, i32 0
  %283 = shl i64 %282, 32
  %284 = ashr exact i64 %283, 32
  %285 = getelementptr inbounds float, float* %6, i64 %284
  %286 = bitcast float* %285 to <8 x float>*
  %wide.masked.load110.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %286, i32 4, <8 x i1> %281, <8 x float> undef), !tbaa !12, !alias.scope !164, !noalias !167
  %287 = extractelement <8 x i32> %280, i32 0
  %288 = add nsw i32 %mul.i.i.2, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds float, float* %12, i64 %289
  %291 = bitcast float* %290 to <8 x float>*
  %wide.masked.load111.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %291, i32 4, <8 x i1> %281, <8 x float> undef), !tbaa !12, !alias.scope !167
  %292 = fsub <8 x float> %wide.masked.load111.2, %wide.masked.load110.2
  %293 = bitcast float* %290 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %292, <8 x float>* %293, i32 4, <8 x i1> %281), !tbaa !12, !alias.scope !167, !llvm.access.group !21
  %294 = getelementptr inbounds float, float* %9, i64 %284
  %295 = bitcast float* %294 to <8 x float>*
  %wide.masked.load112.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %295, i32 4, <8 x i1> %281, <8 x float> undef), !tbaa !12, !alias.scope !169, !noalias !167
  %296 = fmul <8 x float> %broadcast.splat114, %wide.masked.load112.2
  %297 = fdiv <8 x float> %292, %296, !fpmath !26
  %298 = bitcast float* %290 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %297, <8 x float>* %298, i32 4, <8 x i1> %281), !tbaa !12, !alias.scope !167, !llvm.access.group !21
  %299 = or <8 x i64> %broadcast.splat107, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %300 = trunc <8 x i64> %299 to <8 x i32>
  %301 = icmp sgt <8 x i32> %broadcast.splat109, %300
  %302 = extractelement <8 x i64> %299, i32 0
  %303 = shl i64 %302, 32
  %304 = ashr exact i64 %303, 32
  %305 = getelementptr inbounds float, float* %6, i64 %304
  %306 = bitcast float* %305 to <8 x float>*
  %wide.masked.load110.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %306, i32 4, <8 x i1> %301, <8 x float> undef), !tbaa !12, !alias.scope !164, !noalias !167
  %307 = extractelement <8 x i32> %300, i32 0
  %308 = add nsw i32 %mul.i.i.2, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %12, i64 %309
  %311 = bitcast float* %310 to <8 x float>*
  %wide.masked.load111.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %311, i32 4, <8 x i1> %301, <8 x float> undef), !tbaa !12, !alias.scope !167
  %312 = fsub <8 x float> %wide.masked.load111.3, %wide.masked.load110.3
  %313 = bitcast float* %310 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %312, <8 x float>* %313, i32 4, <8 x i1> %301), !tbaa !12, !alias.scope !167, !llvm.access.group !21
  %314 = getelementptr inbounds float, float* %9, i64 %304
  %315 = bitcast float* %314 to <8 x float>*
  %wide.masked.load112.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %315, i32 4, <8 x i1> %301, <8 x float> undef), !tbaa !12, !alias.scope !169, !noalias !167
  %316 = fmul <8 x float> %broadcast.splat114, %wide.masked.load112.3
  %317 = fdiv <8 x float> %312, %316, !fpmath !26
  %318 = bitcast float* %310 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %317, <8 x float>* %318, i32 4, <8 x i1> %301), !tbaa !12, !alias.scope !167, !llvm.access.group !21
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.2:                 ; preds = %if.end.r_exit.i.i.us.2.1, %pregion_for_entry.entry.i.i.us.2.preheader
  %_local_id_x.i.0.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.2.preheader ], [ %836, %if.end.r_exit.i.i.us.2.1 ]
  %add1.i.i.i.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.2, %mul.i.i.i
  %conv.i.i.us.2 = trunc i64 %add1.i.i.i.us.2 to i32
  %cmp4.i.i.us.2 = icmp sgt i32 %20, %conv.i.i.us.2
  br i1 %cmp4.i.i.us.2, label %if.then.i.i.us.2, label %if.end.r_exit.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %pregion_for_entry.entry.i.i.us.2
  %sext.i.i.us.2 = shl i64 %add1.i.i.i.us.2, 32
  %idxprom.i.i.us.2 = ashr exact i64 %sext.i.i.us.2, 32
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.2
  %319 = load float, float* %arrayidx.i.i.us.2, align 4, !tbaa !12
  %add.i.i.us.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2
  %idxprom6.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx7.i.i.us.2 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.2
  %320 = load float, float* %arrayidx7.i.i.us.2, align 4, !tbaa !12
  %sub.i.i.us.2 = fsub float %320, %319
  store float %sub.i.i.us.2, float* %arrayidx7.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.2 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.2
  %321 = load float, float* %arrayidx10.i.i.us.2, align 4, !tbaa !12
  %mul11.i.i.us.2 = fmul float %25, %321
  %div.i.i.us.2 = fdiv float %sub.i.i.us.2, %mul11.i.i.us.2, !fpmath !26
  store float %div.i.i.us.2, float* %arrayidx7.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.2

if.end.r_exit.i.i.us.2:                           ; preds = %if.then.i.i.us.2, %pregion_for_entry.entry.i.i.us.2
  %322 = or i64 %_local_id_x.i.0.us.2, 1
  %add1.i.i.i.us.2.1 = add nuw nsw i64 %322, %mul.i.i.i
  %conv.i.i.us.2.1 = trunc i64 %add1.i.i.i.us.2.1 to i32
  %cmp4.i.i.us.2.1 = icmp sgt i32 %20, %conv.i.i.us.2.1
  br i1 %cmp4.i.i.us.2.1, label %if.then.i.i.us.2.1, label %if.end.r_exit.i.i.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.r_exit.i.i.us.2.1
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph99, %pregion_for_end.i.i.1
  %323 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.3 = or i32 %323, 3
  %cmp.i.i.3 = icmp sgt i32 %24, %conv2.i.i.3
  %mul.i.i.3 = mul nsw i32 %20, %conv2.i.i.3
  br i1 %cmp.i.i.3, label %vector.scevcheck122, label %pregion_for_end.i.i.3

vector.scevcheck122:                              ; preds = %pregion_for_end.i.i.2
  %324 = mul i32 %20, %conv2.i.i.3
  %325 = trunc i64 %2 to i32
  %326 = shl i32 %325, 5
  %327 = add i32 %324, %326
  %328 = icmp sgt i32 %327, 2147483616
  br i1 %328, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.memcheck144

pregion_for_entry.entry.i.i.us.3.preheader:       ; preds = %vector.memcheck144, %vector.scevcheck122
  br label %pregion_for_entry.entry.i.i.us.3

vector.memcheck144:                               ; preds = %vector.scevcheck122
  %329 = trunc i64 %2 to i32
  %330 = shl i32 %329, 5
  %331 = sext i32 %330 to i64
  %scevgep124 = getelementptr float, float* %6, i64 %331
  %332 = add nsw i64 %331, 32
  %scevgep126 = getelementptr float, float* %6, i64 %332
  %333 = mul i32 %20, %conv2.i.i.3
  %334 = add i32 %333, %330
  %335 = sext i32 %334 to i64
  %scevgep128 = getelementptr float, float* %12, i64 %335
  %336 = add nsw i64 %335, 32
  %scevgep130 = getelementptr float, float* %12, i64 %336
  %scevgep132 = getelementptr float, float* %9, i64 %331
  %scevgep134 = getelementptr float, float* %9, i64 %332
  %bound0136 = icmp ult float* %scevgep124, %scevgep130
  %bound1137 = icmp ult float* %scevgep128, %scevgep126
  %found.conflict138 = and i1 %bound0136, %bound1137
  %bound0139 = icmp ult float* %scevgep132, %scevgep130
  %bound1140 = icmp ult float* %scevgep128, %scevgep134
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %found.conflict138, %found.conflict141
  br i1 %conflict.rdx142, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %vector.memcheck144
  %broadcast.splatinsert152 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat153 = shufflevector <8 x i64> %broadcast.splatinsert152, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert154 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat155 = shufflevector <8 x i32> %broadcast.splatinsert154, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert159 = insertelement <8 x float> undef, float %25, i32 0
  %broadcast.splat160 = shufflevector <8 x float> %broadcast.splatinsert159, <8 x float> undef, <8 x i32> zeroinitializer
  %337 = or <8 x i64> %broadcast.splat153, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %338 = trunc <8 x i64> %337 to <8 x i32>
  %339 = icmp sgt <8 x i32> %broadcast.splat155, %338
  %340 = extractelement <8 x i64> %337, i32 0
  %341 = shl i64 %340, 32
  %342 = ashr exact i64 %341, 32
  %343 = getelementptr inbounds float, float* %6, i64 %342
  %344 = bitcast float* %343 to <8 x float>*
  %wide.masked.load156 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %344, i32 4, <8 x i1> %339, <8 x float> undef), !tbaa !12, !alias.scope !171, !noalias !174
  %345 = extractelement <8 x i32> %338, i32 0
  %346 = add nsw i32 %mul.i.i.3, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds float, float* %12, i64 %347
  %349 = bitcast float* %348 to <8 x float>*
  %wide.masked.load157 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %349, i32 4, <8 x i1> %339, <8 x float> undef), !tbaa !12, !alias.scope !174
  %350 = fsub <8 x float> %wide.masked.load157, %wide.masked.load156
  %351 = bitcast float* %348 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %350, <8 x float>* %351, i32 4, <8 x i1> %339), !tbaa !12, !alias.scope !174, !llvm.access.group !21
  %352 = getelementptr inbounds float, float* %9, i64 %342
  %353 = bitcast float* %352 to <8 x float>*
  %wide.masked.load158 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %353, i32 4, <8 x i1> %339, <8 x float> undef), !tbaa !12, !alias.scope !176, !noalias !174
  %354 = fmul <8 x float> %broadcast.splat160, %wide.masked.load158
  %355 = fdiv <8 x float> %350, %354, !fpmath !26
  %356 = bitcast float* %348 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %355, <8 x float>* %356, i32 4, <8 x i1> %339), !tbaa !12, !alias.scope !174, !llvm.access.group !21
  %357 = or <8 x i64> %broadcast.splat153, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %358 = trunc <8 x i64> %357 to <8 x i32>
  %359 = icmp sgt <8 x i32> %broadcast.splat155, %358
  %360 = extractelement <8 x i64> %357, i32 0
  %361 = shl i64 %360, 32
  %362 = ashr exact i64 %361, 32
  %363 = getelementptr inbounds float, float* %6, i64 %362
  %364 = bitcast float* %363 to <8 x float>*
  %wide.masked.load156.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %364, i32 4, <8 x i1> %359, <8 x float> undef), !tbaa !12, !alias.scope !171, !noalias !174
  %365 = extractelement <8 x i32> %358, i32 0
  %366 = add nsw i32 %mul.i.i.3, %365
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds float, float* %12, i64 %367
  %369 = bitcast float* %368 to <8 x float>*
  %wide.masked.load157.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %369, i32 4, <8 x i1> %359, <8 x float> undef), !tbaa !12, !alias.scope !174
  %370 = fsub <8 x float> %wide.masked.load157.1, %wide.masked.load156.1
  %371 = bitcast float* %368 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %370, <8 x float>* %371, i32 4, <8 x i1> %359), !tbaa !12, !alias.scope !174, !llvm.access.group !21
  %372 = getelementptr inbounds float, float* %9, i64 %362
  %373 = bitcast float* %372 to <8 x float>*
  %wide.masked.load158.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %373, i32 4, <8 x i1> %359, <8 x float> undef), !tbaa !12, !alias.scope !176, !noalias !174
  %374 = fmul <8 x float> %broadcast.splat160, %wide.masked.load158.1
  %375 = fdiv <8 x float> %370, %374, !fpmath !26
  %376 = bitcast float* %368 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %375, <8 x float>* %376, i32 4, <8 x i1> %359), !tbaa !12, !alias.scope !174, !llvm.access.group !21
  %377 = or <8 x i64> %broadcast.splat153, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %378 = trunc <8 x i64> %377 to <8 x i32>
  %379 = icmp sgt <8 x i32> %broadcast.splat155, %378
  %380 = extractelement <8 x i64> %377, i32 0
  %381 = shl i64 %380, 32
  %382 = ashr exact i64 %381, 32
  %383 = getelementptr inbounds float, float* %6, i64 %382
  %384 = bitcast float* %383 to <8 x float>*
  %wide.masked.load156.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %384, i32 4, <8 x i1> %379, <8 x float> undef), !tbaa !12, !alias.scope !171, !noalias !174
  %385 = extractelement <8 x i32> %378, i32 0
  %386 = add nsw i32 %mul.i.i.3, %385
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds float, float* %12, i64 %387
  %389 = bitcast float* %388 to <8 x float>*
  %wide.masked.load157.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %389, i32 4, <8 x i1> %379, <8 x float> undef), !tbaa !12, !alias.scope !174
  %390 = fsub <8 x float> %wide.masked.load157.2, %wide.masked.load156.2
  %391 = bitcast float* %388 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %390, <8 x float>* %391, i32 4, <8 x i1> %379), !tbaa !12, !alias.scope !174, !llvm.access.group !21
  %392 = getelementptr inbounds float, float* %9, i64 %382
  %393 = bitcast float* %392 to <8 x float>*
  %wide.masked.load158.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %393, i32 4, <8 x i1> %379, <8 x float> undef), !tbaa !12, !alias.scope !176, !noalias !174
  %394 = fmul <8 x float> %broadcast.splat160, %wide.masked.load158.2
  %395 = fdiv <8 x float> %390, %394, !fpmath !26
  %396 = bitcast float* %388 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %395, <8 x float>* %396, i32 4, <8 x i1> %379), !tbaa !12, !alias.scope !174, !llvm.access.group !21
  %397 = or <8 x i64> %broadcast.splat153, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %398 = trunc <8 x i64> %397 to <8 x i32>
  %399 = icmp sgt <8 x i32> %broadcast.splat155, %398
  %400 = extractelement <8 x i64> %397, i32 0
  %401 = shl i64 %400, 32
  %402 = ashr exact i64 %401, 32
  %403 = getelementptr inbounds float, float* %6, i64 %402
  %404 = bitcast float* %403 to <8 x float>*
  %wide.masked.load156.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %404, i32 4, <8 x i1> %399, <8 x float> undef), !tbaa !12, !alias.scope !171, !noalias !174
  %405 = extractelement <8 x i32> %398, i32 0
  %406 = add nsw i32 %mul.i.i.3, %405
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds float, float* %12, i64 %407
  %409 = bitcast float* %408 to <8 x float>*
  %wide.masked.load157.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %409, i32 4, <8 x i1> %399, <8 x float> undef), !tbaa !12, !alias.scope !174
  %410 = fsub <8 x float> %wide.masked.load157.3, %wide.masked.load156.3
  %411 = bitcast float* %408 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %410, <8 x float>* %411, i32 4, <8 x i1> %399), !tbaa !12, !alias.scope !174, !llvm.access.group !21
  %412 = getelementptr inbounds float, float* %9, i64 %402
  %413 = bitcast float* %412 to <8 x float>*
  %wide.masked.load158.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %413, i32 4, <8 x i1> %399, <8 x float> undef), !tbaa !12, !alias.scope !176, !noalias !174
  %414 = fmul <8 x float> %broadcast.splat160, %wide.masked.load158.3
  %415 = fdiv <8 x float> %410, %414, !fpmath !26
  %416 = bitcast float* %408 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %415, <8 x float>* %416, i32 4, <8 x i1> %399), !tbaa !12, !alias.scope !174, !llvm.access.group !21
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.3:                 ; preds = %if.end.r_exit.i.i.us.3.1, %pregion_for_entry.entry.i.i.us.3.preheader
  %_local_id_x.i.0.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.3.preheader ], [ %832, %if.end.r_exit.i.i.us.3.1 ]
  %add1.i.i.i.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.3, %mul.i.i.i
  %conv.i.i.us.3 = trunc i64 %add1.i.i.i.us.3 to i32
  %cmp4.i.i.us.3 = icmp sgt i32 %20, %conv.i.i.us.3
  br i1 %cmp4.i.i.us.3, label %if.then.i.i.us.3, label %if.end.r_exit.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %pregion_for_entry.entry.i.i.us.3
  %sext.i.i.us.3 = shl i64 %add1.i.i.i.us.3, 32
  %idxprom.i.i.us.3 = ashr exact i64 %sext.i.i.us.3, 32
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.3
  %417 = load float, float* %arrayidx.i.i.us.3, align 4, !tbaa !12
  %add.i.i.us.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3
  %idxprom6.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx7.i.i.us.3 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.3
  %418 = load float, float* %arrayidx7.i.i.us.3, align 4, !tbaa !12
  %sub.i.i.us.3 = fsub float %418, %417
  store float %sub.i.i.us.3, float* %arrayidx7.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.3 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.3
  %419 = load float, float* %arrayidx10.i.i.us.3, align 4, !tbaa !12
  %mul11.i.i.us.3 = fmul float %25, %419
  %div.i.i.us.3 = fdiv float %sub.i.i.us.3, %mul11.i.i.us.3, !fpmath !26
  store float %div.i.i.us.3, float* %arrayidx7.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.3

if.end.r_exit.i.i.us.3:                           ; preds = %if.then.i.i.us.3, %pregion_for_entry.entry.i.i.us.3
  %420 = or i64 %_local_id_x.i.0.us.3, 1
  %add1.i.i.i.us.3.1 = add nuw nsw i64 %420, %mul.i.i.i
  %conv.i.i.us.3.1 = trunc i64 %add1.i.i.i.us.3.1 to i32
  %cmp4.i.i.us.3.1 = icmp sgt i32 %20, %conv.i.i.us.3.1
  br i1 %cmp4.i.i.us.3.1, label %if.then.i.i.us.3.1, label %if.end.r_exit.i.i.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.r_exit.i.i.us.3.1
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph145, %pregion_for_end.i.i.2
  %421 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.4 = or i32 %421, 4
  %cmp.i.i.4 = icmp sgt i32 %24, %conv2.i.i.4
  %mul.i.i.4 = mul nsw i32 %20, %conv2.i.i.4
  br i1 %cmp.i.i.4, label %vector.scevcheck168, label %pregion_for_end.i.i.4

vector.scevcheck168:                              ; preds = %pregion_for_end.i.i.3
  %422 = mul i32 %20, %conv2.i.i.4
  %423 = trunc i64 %2 to i32
  %424 = shl i32 %423, 5
  %425 = add i32 %422, %424
  %426 = icmp sgt i32 %425, 2147483616
  br i1 %426, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.memcheck190

pregion_for_entry.entry.i.i.us.4.preheader:       ; preds = %vector.memcheck190, %vector.scevcheck168
  br label %pregion_for_entry.entry.i.i.us.4

vector.memcheck190:                               ; preds = %vector.scevcheck168
  %427 = trunc i64 %2 to i32
  %428 = shl i32 %427, 5
  %429 = sext i32 %428 to i64
  %scevgep170 = getelementptr float, float* %6, i64 %429
  %430 = add nsw i64 %429, 32
  %scevgep172 = getelementptr float, float* %6, i64 %430
  %431 = mul i32 %20, %conv2.i.i.4
  %432 = add i32 %431, %428
  %433 = sext i32 %432 to i64
  %scevgep174 = getelementptr float, float* %12, i64 %433
  %434 = add nsw i64 %433, 32
  %scevgep176 = getelementptr float, float* %12, i64 %434
  %scevgep178 = getelementptr float, float* %9, i64 %429
  %scevgep180 = getelementptr float, float* %9, i64 %430
  %bound0182 = icmp ult float* %scevgep170, %scevgep176
  %bound1183 = icmp ult float* %scevgep174, %scevgep172
  %found.conflict184 = and i1 %bound0182, %bound1183
  %bound0185 = icmp ult float* %scevgep178, %scevgep176
  %bound1186 = icmp ult float* %scevgep174, %scevgep180
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %found.conflict184, %found.conflict187
  br i1 %conflict.rdx188, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %vector.memcheck190
  %broadcast.splatinsert198 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat199 = shufflevector <8 x i64> %broadcast.splatinsert198, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert200 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat201 = shufflevector <8 x i32> %broadcast.splatinsert200, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert205 = insertelement <8 x float> undef, float %25, i32 0
  %broadcast.splat206 = shufflevector <8 x float> %broadcast.splatinsert205, <8 x float> undef, <8 x i32> zeroinitializer
  %435 = or <8 x i64> %broadcast.splat199, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %436 = trunc <8 x i64> %435 to <8 x i32>
  %437 = icmp sgt <8 x i32> %broadcast.splat201, %436
  %438 = extractelement <8 x i64> %435, i32 0
  %439 = shl i64 %438, 32
  %440 = ashr exact i64 %439, 32
  %441 = getelementptr inbounds float, float* %6, i64 %440
  %442 = bitcast float* %441 to <8 x float>*
  %wide.masked.load202 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %442, i32 4, <8 x i1> %437, <8 x float> undef), !tbaa !12, !alias.scope !178, !noalias !181
  %443 = extractelement <8 x i32> %436, i32 0
  %444 = add nsw i32 %mul.i.i.4, %443
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds float, float* %12, i64 %445
  %447 = bitcast float* %446 to <8 x float>*
  %wide.masked.load203 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %447, i32 4, <8 x i1> %437, <8 x float> undef), !tbaa !12, !alias.scope !181
  %448 = fsub <8 x float> %wide.masked.load203, %wide.masked.load202
  %449 = bitcast float* %446 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %448, <8 x float>* %449, i32 4, <8 x i1> %437), !tbaa !12, !alias.scope !181, !llvm.access.group !21
  %450 = getelementptr inbounds float, float* %9, i64 %440
  %451 = bitcast float* %450 to <8 x float>*
  %wide.masked.load204 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %451, i32 4, <8 x i1> %437, <8 x float> undef), !tbaa !12, !alias.scope !183, !noalias !181
  %452 = fmul <8 x float> %broadcast.splat206, %wide.masked.load204
  %453 = fdiv <8 x float> %448, %452, !fpmath !26
  %454 = bitcast float* %446 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %453, <8 x float>* %454, i32 4, <8 x i1> %437), !tbaa !12, !alias.scope !181, !llvm.access.group !21
  %455 = or <8 x i64> %broadcast.splat199, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %456 = trunc <8 x i64> %455 to <8 x i32>
  %457 = icmp sgt <8 x i32> %broadcast.splat201, %456
  %458 = extractelement <8 x i64> %455, i32 0
  %459 = shl i64 %458, 32
  %460 = ashr exact i64 %459, 32
  %461 = getelementptr inbounds float, float* %6, i64 %460
  %462 = bitcast float* %461 to <8 x float>*
  %wide.masked.load202.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %462, i32 4, <8 x i1> %457, <8 x float> undef), !tbaa !12, !alias.scope !178, !noalias !181
  %463 = extractelement <8 x i32> %456, i32 0
  %464 = add nsw i32 %mul.i.i.4, %463
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds float, float* %12, i64 %465
  %467 = bitcast float* %466 to <8 x float>*
  %wide.masked.load203.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %467, i32 4, <8 x i1> %457, <8 x float> undef), !tbaa !12, !alias.scope !181
  %468 = fsub <8 x float> %wide.masked.load203.1, %wide.masked.load202.1
  %469 = bitcast float* %466 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %468, <8 x float>* %469, i32 4, <8 x i1> %457), !tbaa !12, !alias.scope !181, !llvm.access.group !21
  %470 = getelementptr inbounds float, float* %9, i64 %460
  %471 = bitcast float* %470 to <8 x float>*
  %wide.masked.load204.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %471, i32 4, <8 x i1> %457, <8 x float> undef), !tbaa !12, !alias.scope !183, !noalias !181
  %472 = fmul <8 x float> %broadcast.splat206, %wide.masked.load204.1
  %473 = fdiv <8 x float> %468, %472, !fpmath !26
  %474 = bitcast float* %466 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %473, <8 x float>* %474, i32 4, <8 x i1> %457), !tbaa !12, !alias.scope !181, !llvm.access.group !21
  %475 = or <8 x i64> %broadcast.splat199, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %476 = trunc <8 x i64> %475 to <8 x i32>
  %477 = icmp sgt <8 x i32> %broadcast.splat201, %476
  %478 = extractelement <8 x i64> %475, i32 0
  %479 = shl i64 %478, 32
  %480 = ashr exact i64 %479, 32
  %481 = getelementptr inbounds float, float* %6, i64 %480
  %482 = bitcast float* %481 to <8 x float>*
  %wide.masked.load202.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %482, i32 4, <8 x i1> %477, <8 x float> undef), !tbaa !12, !alias.scope !178, !noalias !181
  %483 = extractelement <8 x i32> %476, i32 0
  %484 = add nsw i32 %mul.i.i.4, %483
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds float, float* %12, i64 %485
  %487 = bitcast float* %486 to <8 x float>*
  %wide.masked.load203.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %487, i32 4, <8 x i1> %477, <8 x float> undef), !tbaa !12, !alias.scope !181
  %488 = fsub <8 x float> %wide.masked.load203.2, %wide.masked.load202.2
  %489 = bitcast float* %486 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %488, <8 x float>* %489, i32 4, <8 x i1> %477), !tbaa !12, !alias.scope !181, !llvm.access.group !21
  %490 = getelementptr inbounds float, float* %9, i64 %480
  %491 = bitcast float* %490 to <8 x float>*
  %wide.masked.load204.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %491, i32 4, <8 x i1> %477, <8 x float> undef), !tbaa !12, !alias.scope !183, !noalias !181
  %492 = fmul <8 x float> %broadcast.splat206, %wide.masked.load204.2
  %493 = fdiv <8 x float> %488, %492, !fpmath !26
  %494 = bitcast float* %486 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %493, <8 x float>* %494, i32 4, <8 x i1> %477), !tbaa !12, !alias.scope !181, !llvm.access.group !21
  %495 = or <8 x i64> %broadcast.splat199, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %496 = trunc <8 x i64> %495 to <8 x i32>
  %497 = icmp sgt <8 x i32> %broadcast.splat201, %496
  %498 = extractelement <8 x i64> %495, i32 0
  %499 = shl i64 %498, 32
  %500 = ashr exact i64 %499, 32
  %501 = getelementptr inbounds float, float* %6, i64 %500
  %502 = bitcast float* %501 to <8 x float>*
  %wide.masked.load202.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %502, i32 4, <8 x i1> %497, <8 x float> undef), !tbaa !12, !alias.scope !178, !noalias !181
  %503 = extractelement <8 x i32> %496, i32 0
  %504 = add nsw i32 %mul.i.i.4, %503
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds float, float* %12, i64 %505
  %507 = bitcast float* %506 to <8 x float>*
  %wide.masked.load203.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %507, i32 4, <8 x i1> %497, <8 x float> undef), !tbaa !12, !alias.scope !181
  %508 = fsub <8 x float> %wide.masked.load203.3, %wide.masked.load202.3
  %509 = bitcast float* %506 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %508, <8 x float>* %509, i32 4, <8 x i1> %497), !tbaa !12, !alias.scope !181, !llvm.access.group !21
  %510 = getelementptr inbounds float, float* %9, i64 %500
  %511 = bitcast float* %510 to <8 x float>*
  %wide.masked.load204.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %511, i32 4, <8 x i1> %497, <8 x float> undef), !tbaa !12, !alias.scope !183, !noalias !181
  %512 = fmul <8 x float> %broadcast.splat206, %wide.masked.load204.3
  %513 = fdiv <8 x float> %508, %512, !fpmath !26
  %514 = bitcast float* %506 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %513, <8 x float>* %514, i32 4, <8 x i1> %497), !tbaa !12, !alias.scope !181, !llvm.access.group !21
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.4:                 ; preds = %if.end.r_exit.i.i.us.4.1, %pregion_for_entry.entry.i.i.us.4.preheader
  %_local_id_x.i.0.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.4.preheader ], [ %828, %if.end.r_exit.i.i.us.4.1 ]
  %add1.i.i.i.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.4, %mul.i.i.i
  %conv.i.i.us.4 = trunc i64 %add1.i.i.i.us.4 to i32
  %cmp4.i.i.us.4 = icmp sgt i32 %20, %conv.i.i.us.4
  br i1 %cmp4.i.i.us.4, label %if.then.i.i.us.4, label %if.end.r_exit.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %pregion_for_entry.entry.i.i.us.4
  %sext.i.i.us.4 = shl i64 %add1.i.i.i.us.4, 32
  %idxprom.i.i.us.4 = ashr exact i64 %sext.i.i.us.4, 32
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.4
  %515 = load float, float* %arrayidx.i.i.us.4, align 4, !tbaa !12
  %add.i.i.us.4 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4
  %idxprom6.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx7.i.i.us.4 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.4
  %516 = load float, float* %arrayidx7.i.i.us.4, align 4, !tbaa !12
  %sub.i.i.us.4 = fsub float %516, %515
  store float %sub.i.i.us.4, float* %arrayidx7.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.4 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.4
  %517 = load float, float* %arrayidx10.i.i.us.4, align 4, !tbaa !12
  %mul11.i.i.us.4 = fmul float %25, %517
  %div.i.i.us.4 = fdiv float %sub.i.i.us.4, %mul11.i.i.us.4, !fpmath !26
  store float %div.i.i.us.4, float* %arrayidx7.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.4

if.end.r_exit.i.i.us.4:                           ; preds = %if.then.i.i.us.4, %pregion_for_entry.entry.i.i.us.4
  %518 = or i64 %_local_id_x.i.0.us.4, 1
  %add1.i.i.i.us.4.1 = add nuw nsw i64 %518, %mul.i.i.i
  %conv.i.i.us.4.1 = trunc i64 %add1.i.i.i.us.4.1 to i32
  %cmp4.i.i.us.4.1 = icmp sgt i32 %20, %conv.i.i.us.4.1
  br i1 %cmp4.i.i.us.4.1, label %if.then.i.i.us.4.1, label %if.end.r_exit.i.i.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.r_exit.i.i.us.4.1
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph191, %pregion_for_end.i.i.3
  %519 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.5 = or i32 %519, 5
  %cmp.i.i.5 = icmp sgt i32 %24, %conv2.i.i.5
  %mul.i.i.5 = mul nsw i32 %20, %conv2.i.i.5
  br i1 %cmp.i.i.5, label %vector.scevcheck214, label %pregion_for_end.i.i.5

vector.scevcheck214:                              ; preds = %pregion_for_end.i.i.4
  %520 = mul i32 %20, %conv2.i.i.5
  %521 = trunc i64 %2 to i32
  %522 = shl i32 %521, 5
  %523 = add i32 %520, %522
  %524 = icmp sgt i32 %523, 2147483616
  br i1 %524, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.memcheck236

pregion_for_entry.entry.i.i.us.5.preheader:       ; preds = %vector.memcheck236, %vector.scevcheck214
  br label %pregion_for_entry.entry.i.i.us.5

vector.memcheck236:                               ; preds = %vector.scevcheck214
  %525 = trunc i64 %2 to i32
  %526 = shl i32 %525, 5
  %527 = sext i32 %526 to i64
  %scevgep216 = getelementptr float, float* %6, i64 %527
  %528 = add nsw i64 %527, 32
  %scevgep218 = getelementptr float, float* %6, i64 %528
  %529 = mul i32 %20, %conv2.i.i.5
  %530 = add i32 %529, %526
  %531 = sext i32 %530 to i64
  %scevgep220 = getelementptr float, float* %12, i64 %531
  %532 = add nsw i64 %531, 32
  %scevgep222 = getelementptr float, float* %12, i64 %532
  %scevgep224 = getelementptr float, float* %9, i64 %527
  %scevgep226 = getelementptr float, float* %9, i64 %528
  %bound0228 = icmp ult float* %scevgep216, %scevgep222
  %bound1229 = icmp ult float* %scevgep220, %scevgep218
  %found.conflict230 = and i1 %bound0228, %bound1229
  %bound0231 = icmp ult float* %scevgep224, %scevgep222
  %bound1232 = icmp ult float* %scevgep220, %scevgep226
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %found.conflict230, %found.conflict233
  br i1 %conflict.rdx234, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.ph237

vector.ph237:                                     ; preds = %vector.memcheck236
  %broadcast.splatinsert244 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat245 = shufflevector <8 x i64> %broadcast.splatinsert244, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert246 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat247 = shufflevector <8 x i32> %broadcast.splatinsert246, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert251 = insertelement <8 x float> undef, float %25, i32 0
  %broadcast.splat252 = shufflevector <8 x float> %broadcast.splatinsert251, <8 x float> undef, <8 x i32> zeroinitializer
  %533 = or <8 x i64> %broadcast.splat245, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %534 = trunc <8 x i64> %533 to <8 x i32>
  %535 = icmp sgt <8 x i32> %broadcast.splat247, %534
  %536 = extractelement <8 x i64> %533, i32 0
  %537 = shl i64 %536, 32
  %538 = ashr exact i64 %537, 32
  %539 = getelementptr inbounds float, float* %6, i64 %538
  %540 = bitcast float* %539 to <8 x float>*
  %wide.masked.load248 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %540, i32 4, <8 x i1> %535, <8 x float> undef), !tbaa !12, !alias.scope !185, !noalias !188
  %541 = extractelement <8 x i32> %534, i32 0
  %542 = add nsw i32 %mul.i.i.5, %541
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds float, float* %12, i64 %543
  %545 = bitcast float* %544 to <8 x float>*
  %wide.masked.load249 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %545, i32 4, <8 x i1> %535, <8 x float> undef), !tbaa !12, !alias.scope !188
  %546 = fsub <8 x float> %wide.masked.load249, %wide.masked.load248
  %547 = bitcast float* %544 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %546, <8 x float>* %547, i32 4, <8 x i1> %535), !tbaa !12, !alias.scope !188, !llvm.access.group !21
  %548 = getelementptr inbounds float, float* %9, i64 %538
  %549 = bitcast float* %548 to <8 x float>*
  %wide.masked.load250 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %549, i32 4, <8 x i1> %535, <8 x float> undef), !tbaa !12, !alias.scope !190, !noalias !188
  %550 = fmul <8 x float> %broadcast.splat252, %wide.masked.load250
  %551 = fdiv <8 x float> %546, %550, !fpmath !26
  %552 = bitcast float* %544 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %551, <8 x float>* %552, i32 4, <8 x i1> %535), !tbaa !12, !alias.scope !188, !llvm.access.group !21
  %553 = or <8 x i64> %broadcast.splat245, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %554 = trunc <8 x i64> %553 to <8 x i32>
  %555 = icmp sgt <8 x i32> %broadcast.splat247, %554
  %556 = extractelement <8 x i64> %553, i32 0
  %557 = shl i64 %556, 32
  %558 = ashr exact i64 %557, 32
  %559 = getelementptr inbounds float, float* %6, i64 %558
  %560 = bitcast float* %559 to <8 x float>*
  %wide.masked.load248.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %560, i32 4, <8 x i1> %555, <8 x float> undef), !tbaa !12, !alias.scope !185, !noalias !188
  %561 = extractelement <8 x i32> %554, i32 0
  %562 = add nsw i32 %mul.i.i.5, %561
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds float, float* %12, i64 %563
  %565 = bitcast float* %564 to <8 x float>*
  %wide.masked.load249.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %565, i32 4, <8 x i1> %555, <8 x float> undef), !tbaa !12, !alias.scope !188
  %566 = fsub <8 x float> %wide.masked.load249.1, %wide.masked.load248.1
  %567 = bitcast float* %564 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %566, <8 x float>* %567, i32 4, <8 x i1> %555), !tbaa !12, !alias.scope !188, !llvm.access.group !21
  %568 = getelementptr inbounds float, float* %9, i64 %558
  %569 = bitcast float* %568 to <8 x float>*
  %wide.masked.load250.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %569, i32 4, <8 x i1> %555, <8 x float> undef), !tbaa !12, !alias.scope !190, !noalias !188
  %570 = fmul <8 x float> %broadcast.splat252, %wide.masked.load250.1
  %571 = fdiv <8 x float> %566, %570, !fpmath !26
  %572 = bitcast float* %564 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %571, <8 x float>* %572, i32 4, <8 x i1> %555), !tbaa !12, !alias.scope !188, !llvm.access.group !21
  %573 = or <8 x i64> %broadcast.splat245, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %574 = trunc <8 x i64> %573 to <8 x i32>
  %575 = icmp sgt <8 x i32> %broadcast.splat247, %574
  %576 = extractelement <8 x i64> %573, i32 0
  %577 = shl i64 %576, 32
  %578 = ashr exact i64 %577, 32
  %579 = getelementptr inbounds float, float* %6, i64 %578
  %580 = bitcast float* %579 to <8 x float>*
  %wide.masked.load248.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %580, i32 4, <8 x i1> %575, <8 x float> undef), !tbaa !12, !alias.scope !185, !noalias !188
  %581 = extractelement <8 x i32> %574, i32 0
  %582 = add nsw i32 %mul.i.i.5, %581
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds float, float* %12, i64 %583
  %585 = bitcast float* %584 to <8 x float>*
  %wide.masked.load249.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %585, i32 4, <8 x i1> %575, <8 x float> undef), !tbaa !12, !alias.scope !188
  %586 = fsub <8 x float> %wide.masked.load249.2, %wide.masked.load248.2
  %587 = bitcast float* %584 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %586, <8 x float>* %587, i32 4, <8 x i1> %575), !tbaa !12, !alias.scope !188, !llvm.access.group !21
  %588 = getelementptr inbounds float, float* %9, i64 %578
  %589 = bitcast float* %588 to <8 x float>*
  %wide.masked.load250.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %589, i32 4, <8 x i1> %575, <8 x float> undef), !tbaa !12, !alias.scope !190, !noalias !188
  %590 = fmul <8 x float> %broadcast.splat252, %wide.masked.load250.2
  %591 = fdiv <8 x float> %586, %590, !fpmath !26
  %592 = bitcast float* %584 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %591, <8 x float>* %592, i32 4, <8 x i1> %575), !tbaa !12, !alias.scope !188, !llvm.access.group !21
  %593 = or <8 x i64> %broadcast.splat245, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %594 = trunc <8 x i64> %593 to <8 x i32>
  %595 = icmp sgt <8 x i32> %broadcast.splat247, %594
  %596 = extractelement <8 x i64> %593, i32 0
  %597 = shl i64 %596, 32
  %598 = ashr exact i64 %597, 32
  %599 = getelementptr inbounds float, float* %6, i64 %598
  %600 = bitcast float* %599 to <8 x float>*
  %wide.masked.load248.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %600, i32 4, <8 x i1> %595, <8 x float> undef), !tbaa !12, !alias.scope !185, !noalias !188
  %601 = extractelement <8 x i32> %594, i32 0
  %602 = add nsw i32 %mul.i.i.5, %601
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds float, float* %12, i64 %603
  %605 = bitcast float* %604 to <8 x float>*
  %wide.masked.load249.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %605, i32 4, <8 x i1> %595, <8 x float> undef), !tbaa !12, !alias.scope !188
  %606 = fsub <8 x float> %wide.masked.load249.3, %wide.masked.load248.3
  %607 = bitcast float* %604 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %606, <8 x float>* %607, i32 4, <8 x i1> %595), !tbaa !12, !alias.scope !188, !llvm.access.group !21
  %608 = getelementptr inbounds float, float* %9, i64 %598
  %609 = bitcast float* %608 to <8 x float>*
  %wide.masked.load250.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %609, i32 4, <8 x i1> %595, <8 x float> undef), !tbaa !12, !alias.scope !190, !noalias !188
  %610 = fmul <8 x float> %broadcast.splat252, %wide.masked.load250.3
  %611 = fdiv <8 x float> %606, %610, !fpmath !26
  %612 = bitcast float* %604 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %611, <8 x float>* %612, i32 4, <8 x i1> %595), !tbaa !12, !alias.scope !188, !llvm.access.group !21
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.5:                 ; preds = %if.end.r_exit.i.i.us.5.1, %pregion_for_entry.entry.i.i.us.5.preheader
  %_local_id_x.i.0.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.5.preheader ], [ %824, %if.end.r_exit.i.i.us.5.1 ]
  %add1.i.i.i.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.5, %mul.i.i.i
  %conv.i.i.us.5 = trunc i64 %add1.i.i.i.us.5 to i32
  %cmp4.i.i.us.5 = icmp sgt i32 %20, %conv.i.i.us.5
  br i1 %cmp4.i.i.us.5, label %if.then.i.i.us.5, label %if.end.r_exit.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %pregion_for_entry.entry.i.i.us.5
  %sext.i.i.us.5 = shl i64 %add1.i.i.i.us.5, 32
  %idxprom.i.i.us.5 = ashr exact i64 %sext.i.i.us.5, 32
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.5
  %613 = load float, float* %arrayidx.i.i.us.5, align 4, !tbaa !12
  %add.i.i.us.5 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5
  %idxprom6.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx7.i.i.us.5 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.5
  %614 = load float, float* %arrayidx7.i.i.us.5, align 4, !tbaa !12
  %sub.i.i.us.5 = fsub float %614, %613
  store float %sub.i.i.us.5, float* %arrayidx7.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.5 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.5
  %615 = load float, float* %arrayidx10.i.i.us.5, align 4, !tbaa !12
  %mul11.i.i.us.5 = fmul float %25, %615
  %div.i.i.us.5 = fdiv float %sub.i.i.us.5, %mul11.i.i.us.5, !fpmath !26
  store float %div.i.i.us.5, float* %arrayidx7.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.5

if.end.r_exit.i.i.us.5:                           ; preds = %if.then.i.i.us.5, %pregion_for_entry.entry.i.i.us.5
  %616 = or i64 %_local_id_x.i.0.us.5, 1
  %add1.i.i.i.us.5.1 = add nuw nsw i64 %616, %mul.i.i.i
  %conv.i.i.us.5.1 = trunc i64 %add1.i.i.i.us.5.1 to i32
  %cmp4.i.i.us.5.1 = icmp sgt i32 %20, %conv.i.i.us.5.1
  br i1 %cmp4.i.i.us.5.1, label %if.then.i.i.us.5.1, label %if.end.r_exit.i.i.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.r_exit.i.i.us.5.1
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph237, %pregion_for_end.i.i.4
  %617 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.6 = or i32 %617, 6
  %cmp.i.i.6 = icmp sgt i32 %24, %conv2.i.i.6
  %mul.i.i.6 = mul nsw i32 %20, %conv2.i.i.6
  br i1 %cmp.i.i.6, label %vector.scevcheck260, label %pregion_for_end.i.i.6

vector.scevcheck260:                              ; preds = %pregion_for_end.i.i.5
  %618 = mul i32 %20, %conv2.i.i.6
  %619 = trunc i64 %2 to i32
  %620 = shl i32 %619, 5
  %621 = add i32 %618, %620
  %622 = icmp sgt i32 %621, 2147483616
  br i1 %622, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.memcheck282

pregion_for_entry.entry.i.i.us.6.preheader:       ; preds = %vector.memcheck282, %vector.scevcheck260
  br label %pregion_for_entry.entry.i.i.us.6

vector.memcheck282:                               ; preds = %vector.scevcheck260
  %623 = trunc i64 %2 to i32
  %624 = shl i32 %623, 5
  %625 = sext i32 %624 to i64
  %scevgep262 = getelementptr float, float* %6, i64 %625
  %626 = add nsw i64 %625, 32
  %scevgep264 = getelementptr float, float* %6, i64 %626
  %627 = mul i32 %20, %conv2.i.i.6
  %628 = add i32 %627, %624
  %629 = sext i32 %628 to i64
  %scevgep266 = getelementptr float, float* %12, i64 %629
  %630 = add nsw i64 %629, 32
  %scevgep268 = getelementptr float, float* %12, i64 %630
  %scevgep270 = getelementptr float, float* %9, i64 %625
  %scevgep272 = getelementptr float, float* %9, i64 %626
  %bound0274 = icmp ult float* %scevgep262, %scevgep268
  %bound1275 = icmp ult float* %scevgep266, %scevgep264
  %found.conflict276 = and i1 %bound0274, %bound1275
  %bound0277 = icmp ult float* %scevgep270, %scevgep268
  %bound1278 = icmp ult float* %scevgep266, %scevgep272
  %found.conflict279 = and i1 %bound0277, %bound1278
  %conflict.rdx280 = or i1 %found.conflict276, %found.conflict279
  br i1 %conflict.rdx280, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.ph283

vector.ph283:                                     ; preds = %vector.memcheck282
  %broadcast.splatinsert290 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat291 = shufflevector <8 x i64> %broadcast.splatinsert290, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert292 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat293 = shufflevector <8 x i32> %broadcast.splatinsert292, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert297 = insertelement <8 x float> undef, float %25, i32 0
  %broadcast.splat298 = shufflevector <8 x float> %broadcast.splatinsert297, <8 x float> undef, <8 x i32> zeroinitializer
  %631 = or <8 x i64> %broadcast.splat291, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %632 = trunc <8 x i64> %631 to <8 x i32>
  %633 = icmp sgt <8 x i32> %broadcast.splat293, %632
  %634 = extractelement <8 x i64> %631, i32 0
  %635 = shl i64 %634, 32
  %636 = ashr exact i64 %635, 32
  %637 = getelementptr inbounds float, float* %6, i64 %636
  %638 = bitcast float* %637 to <8 x float>*
  %wide.masked.load294 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %638, i32 4, <8 x i1> %633, <8 x float> undef), !tbaa !12, !alias.scope !192, !noalias !195
  %639 = extractelement <8 x i32> %632, i32 0
  %640 = add nsw i32 %mul.i.i.6, %639
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds float, float* %12, i64 %641
  %643 = bitcast float* %642 to <8 x float>*
  %wide.masked.load295 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %643, i32 4, <8 x i1> %633, <8 x float> undef), !tbaa !12, !alias.scope !195
  %644 = fsub <8 x float> %wide.masked.load295, %wide.masked.load294
  %645 = bitcast float* %642 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %644, <8 x float>* %645, i32 4, <8 x i1> %633), !tbaa !12, !alias.scope !195, !llvm.access.group !21
  %646 = getelementptr inbounds float, float* %9, i64 %636
  %647 = bitcast float* %646 to <8 x float>*
  %wide.masked.load296 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %647, i32 4, <8 x i1> %633, <8 x float> undef), !tbaa !12, !alias.scope !197, !noalias !195
  %648 = fmul <8 x float> %broadcast.splat298, %wide.masked.load296
  %649 = fdiv <8 x float> %644, %648, !fpmath !26
  %650 = bitcast float* %642 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %649, <8 x float>* %650, i32 4, <8 x i1> %633), !tbaa !12, !alias.scope !195, !llvm.access.group !21
  %651 = or <8 x i64> %broadcast.splat291, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %652 = trunc <8 x i64> %651 to <8 x i32>
  %653 = icmp sgt <8 x i32> %broadcast.splat293, %652
  %654 = extractelement <8 x i64> %651, i32 0
  %655 = shl i64 %654, 32
  %656 = ashr exact i64 %655, 32
  %657 = getelementptr inbounds float, float* %6, i64 %656
  %658 = bitcast float* %657 to <8 x float>*
  %wide.masked.load294.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %658, i32 4, <8 x i1> %653, <8 x float> undef), !tbaa !12, !alias.scope !192, !noalias !195
  %659 = extractelement <8 x i32> %652, i32 0
  %660 = add nsw i32 %mul.i.i.6, %659
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds float, float* %12, i64 %661
  %663 = bitcast float* %662 to <8 x float>*
  %wide.masked.load295.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %663, i32 4, <8 x i1> %653, <8 x float> undef), !tbaa !12, !alias.scope !195
  %664 = fsub <8 x float> %wide.masked.load295.1, %wide.masked.load294.1
  %665 = bitcast float* %662 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %664, <8 x float>* %665, i32 4, <8 x i1> %653), !tbaa !12, !alias.scope !195, !llvm.access.group !21
  %666 = getelementptr inbounds float, float* %9, i64 %656
  %667 = bitcast float* %666 to <8 x float>*
  %wide.masked.load296.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %667, i32 4, <8 x i1> %653, <8 x float> undef), !tbaa !12, !alias.scope !197, !noalias !195
  %668 = fmul <8 x float> %broadcast.splat298, %wide.masked.load296.1
  %669 = fdiv <8 x float> %664, %668, !fpmath !26
  %670 = bitcast float* %662 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %669, <8 x float>* %670, i32 4, <8 x i1> %653), !tbaa !12, !alias.scope !195, !llvm.access.group !21
  %671 = or <8 x i64> %broadcast.splat291, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %672 = trunc <8 x i64> %671 to <8 x i32>
  %673 = icmp sgt <8 x i32> %broadcast.splat293, %672
  %674 = extractelement <8 x i64> %671, i32 0
  %675 = shl i64 %674, 32
  %676 = ashr exact i64 %675, 32
  %677 = getelementptr inbounds float, float* %6, i64 %676
  %678 = bitcast float* %677 to <8 x float>*
  %wide.masked.load294.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %678, i32 4, <8 x i1> %673, <8 x float> undef), !tbaa !12, !alias.scope !192, !noalias !195
  %679 = extractelement <8 x i32> %672, i32 0
  %680 = add nsw i32 %mul.i.i.6, %679
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds float, float* %12, i64 %681
  %683 = bitcast float* %682 to <8 x float>*
  %wide.masked.load295.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %683, i32 4, <8 x i1> %673, <8 x float> undef), !tbaa !12, !alias.scope !195
  %684 = fsub <8 x float> %wide.masked.load295.2, %wide.masked.load294.2
  %685 = bitcast float* %682 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %684, <8 x float>* %685, i32 4, <8 x i1> %673), !tbaa !12, !alias.scope !195, !llvm.access.group !21
  %686 = getelementptr inbounds float, float* %9, i64 %676
  %687 = bitcast float* %686 to <8 x float>*
  %wide.masked.load296.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %687, i32 4, <8 x i1> %673, <8 x float> undef), !tbaa !12, !alias.scope !197, !noalias !195
  %688 = fmul <8 x float> %broadcast.splat298, %wide.masked.load296.2
  %689 = fdiv <8 x float> %684, %688, !fpmath !26
  %690 = bitcast float* %682 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %689, <8 x float>* %690, i32 4, <8 x i1> %673), !tbaa !12, !alias.scope !195, !llvm.access.group !21
  %691 = or <8 x i64> %broadcast.splat291, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %692 = trunc <8 x i64> %691 to <8 x i32>
  %693 = icmp sgt <8 x i32> %broadcast.splat293, %692
  %694 = extractelement <8 x i64> %691, i32 0
  %695 = shl i64 %694, 32
  %696 = ashr exact i64 %695, 32
  %697 = getelementptr inbounds float, float* %6, i64 %696
  %698 = bitcast float* %697 to <8 x float>*
  %wide.masked.load294.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %698, i32 4, <8 x i1> %693, <8 x float> undef), !tbaa !12, !alias.scope !192, !noalias !195
  %699 = extractelement <8 x i32> %692, i32 0
  %700 = add nsw i32 %mul.i.i.6, %699
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds float, float* %12, i64 %701
  %703 = bitcast float* %702 to <8 x float>*
  %wide.masked.load295.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %703, i32 4, <8 x i1> %693, <8 x float> undef), !tbaa !12, !alias.scope !195
  %704 = fsub <8 x float> %wide.masked.load295.3, %wide.masked.load294.3
  %705 = bitcast float* %702 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %704, <8 x float>* %705, i32 4, <8 x i1> %693), !tbaa !12, !alias.scope !195, !llvm.access.group !21
  %706 = getelementptr inbounds float, float* %9, i64 %696
  %707 = bitcast float* %706 to <8 x float>*
  %wide.masked.load296.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %707, i32 4, <8 x i1> %693, <8 x float> undef), !tbaa !12, !alias.scope !197, !noalias !195
  %708 = fmul <8 x float> %broadcast.splat298, %wide.masked.load296.3
  %709 = fdiv <8 x float> %704, %708, !fpmath !26
  %710 = bitcast float* %702 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %709, <8 x float>* %710, i32 4, <8 x i1> %693), !tbaa !12, !alias.scope !195, !llvm.access.group !21
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.6:                 ; preds = %if.end.r_exit.i.i.us.6.1, %pregion_for_entry.entry.i.i.us.6.preheader
  %_local_id_x.i.0.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.6.preheader ], [ %820, %if.end.r_exit.i.i.us.6.1 ]
  %add1.i.i.i.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.6, %mul.i.i.i
  %conv.i.i.us.6 = trunc i64 %add1.i.i.i.us.6 to i32
  %cmp4.i.i.us.6 = icmp sgt i32 %20, %conv.i.i.us.6
  br i1 %cmp4.i.i.us.6, label %if.then.i.i.us.6, label %if.end.r_exit.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %pregion_for_entry.entry.i.i.us.6
  %sext.i.i.us.6 = shl i64 %add1.i.i.i.us.6, 32
  %idxprom.i.i.us.6 = ashr exact i64 %sext.i.i.us.6, 32
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.6
  %711 = load float, float* %arrayidx.i.i.us.6, align 4, !tbaa !12
  %add.i.i.us.6 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6
  %idxprom6.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx7.i.i.us.6 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.6
  %712 = load float, float* %arrayidx7.i.i.us.6, align 4, !tbaa !12
  %sub.i.i.us.6 = fsub float %712, %711
  store float %sub.i.i.us.6, float* %arrayidx7.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.6 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.6
  %713 = load float, float* %arrayidx10.i.i.us.6, align 4, !tbaa !12
  %mul11.i.i.us.6 = fmul float %25, %713
  %div.i.i.us.6 = fdiv float %sub.i.i.us.6, %mul11.i.i.us.6, !fpmath !26
  store float %div.i.i.us.6, float* %arrayidx7.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.6

if.end.r_exit.i.i.us.6:                           ; preds = %if.then.i.i.us.6, %pregion_for_entry.entry.i.i.us.6
  %714 = or i64 %_local_id_x.i.0.us.6, 1
  %add1.i.i.i.us.6.1 = add nuw nsw i64 %714, %mul.i.i.i
  %conv.i.i.us.6.1 = trunc i64 %add1.i.i.i.us.6.1 to i32
  %cmp4.i.i.us.6.1 = icmp sgt i32 %20, %conv.i.i.us.6.1
  br i1 %cmp4.i.i.us.6.1, label %if.then.i.i.us.6.1, label %if.end.r_exit.i.i.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.r_exit.i.i.us.6.1
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph283, %pregion_for_end.i.i.5
  %715 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.7 = or i32 %715, 7
  %cmp.i.i.7 = icmp sgt i32 %24, %conv2.i.i.7
  %mul.i.i.7 = mul nsw i32 %20, %conv2.i.i.7
  br i1 %cmp.i.i.7, label %vector.scevcheck306, label %pregion_for_end.i.i.7

vector.scevcheck306:                              ; preds = %pregion_for_end.i.i.6
  %716 = mul i32 %20, %conv2.i.i.7
  %717 = trunc i64 %2 to i32
  %718 = shl i32 %717, 5
  %719 = add i32 %716, %718
  %720 = icmp sgt i32 %719, 2147483616
  br i1 %720, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.memcheck328

pregion_for_entry.entry.i.i.us.7.preheader:       ; preds = %vector.memcheck328, %vector.scevcheck306
  br label %pregion_for_entry.entry.i.i.us.7

vector.memcheck328:                               ; preds = %vector.scevcheck306
  %721 = trunc i64 %2 to i32
  %722 = shl i32 %721, 5
  %723 = sext i32 %722 to i64
  %scevgep308 = getelementptr float, float* %6, i64 %723
  %724 = add nsw i64 %723, 32
  %scevgep310 = getelementptr float, float* %6, i64 %724
  %725 = mul i32 %20, %conv2.i.i.7
  %726 = add i32 %725, %722
  %727 = sext i32 %726 to i64
  %scevgep312 = getelementptr float, float* %12, i64 %727
  %728 = add nsw i64 %727, 32
  %scevgep314 = getelementptr float, float* %12, i64 %728
  %scevgep316 = getelementptr float, float* %9, i64 %723
  %scevgep318 = getelementptr float, float* %9, i64 %724
  %bound0320 = icmp ult float* %scevgep308, %scevgep314
  %bound1321 = icmp ult float* %scevgep312, %scevgep310
  %found.conflict322 = and i1 %bound0320, %bound1321
  %bound0323 = icmp ult float* %scevgep316, %scevgep314
  %bound1324 = icmp ult float* %scevgep312, %scevgep318
  %found.conflict325 = and i1 %bound0323, %bound1324
  %conflict.rdx326 = or i1 %found.conflict322, %found.conflict325
  br i1 %conflict.rdx326, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.ph329

vector.ph329:                                     ; preds = %vector.memcheck328
  %broadcast.splatinsert336 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat337 = shufflevector <8 x i64> %broadcast.splatinsert336, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert338 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat339 = shufflevector <8 x i32> %broadcast.splatinsert338, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert343 = insertelement <8 x float> undef, float %25, i32 0
  %broadcast.splat344 = shufflevector <8 x float> %broadcast.splatinsert343, <8 x float> undef, <8 x i32> zeroinitializer
  %729 = or <8 x i64> %broadcast.splat337, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %730 = trunc <8 x i64> %729 to <8 x i32>
  %731 = icmp sgt <8 x i32> %broadcast.splat339, %730
  %732 = extractelement <8 x i64> %729, i32 0
  %733 = shl i64 %732, 32
  %734 = ashr exact i64 %733, 32
  %735 = getelementptr inbounds float, float* %6, i64 %734
  %736 = bitcast float* %735 to <8 x float>*
  %wide.masked.load340 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %736, i32 4, <8 x i1> %731, <8 x float> undef), !tbaa !12, !alias.scope !199, !noalias !202
  %737 = extractelement <8 x i32> %730, i32 0
  %738 = add nsw i32 %mul.i.i.7, %737
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds float, float* %12, i64 %739
  %741 = bitcast float* %740 to <8 x float>*
  %wide.masked.load341 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %741, i32 4, <8 x i1> %731, <8 x float> undef), !tbaa !12, !alias.scope !202
  %742 = fsub <8 x float> %wide.masked.load341, %wide.masked.load340
  %743 = bitcast float* %740 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %742, <8 x float>* %743, i32 4, <8 x i1> %731), !tbaa !12, !alias.scope !202, !llvm.access.group !21
  %744 = getelementptr inbounds float, float* %9, i64 %734
  %745 = bitcast float* %744 to <8 x float>*
  %wide.masked.load342 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %745, i32 4, <8 x i1> %731, <8 x float> undef), !tbaa !12, !alias.scope !204, !noalias !202
  %746 = fmul <8 x float> %broadcast.splat344, %wide.masked.load342
  %747 = fdiv <8 x float> %742, %746, !fpmath !26
  %748 = bitcast float* %740 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %747, <8 x float>* %748, i32 4, <8 x i1> %731), !tbaa !12, !alias.scope !202, !llvm.access.group !21
  %749 = or <8 x i64> %broadcast.splat337, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %750 = trunc <8 x i64> %749 to <8 x i32>
  %751 = icmp sgt <8 x i32> %broadcast.splat339, %750
  %752 = extractelement <8 x i64> %749, i32 0
  %753 = shl i64 %752, 32
  %754 = ashr exact i64 %753, 32
  %755 = getelementptr inbounds float, float* %6, i64 %754
  %756 = bitcast float* %755 to <8 x float>*
  %wide.masked.load340.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %756, i32 4, <8 x i1> %751, <8 x float> undef), !tbaa !12, !alias.scope !199, !noalias !202
  %757 = extractelement <8 x i32> %750, i32 0
  %758 = add nsw i32 %mul.i.i.7, %757
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds float, float* %12, i64 %759
  %761 = bitcast float* %760 to <8 x float>*
  %wide.masked.load341.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %761, i32 4, <8 x i1> %751, <8 x float> undef), !tbaa !12, !alias.scope !202
  %762 = fsub <8 x float> %wide.masked.load341.1, %wide.masked.load340.1
  %763 = bitcast float* %760 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %762, <8 x float>* %763, i32 4, <8 x i1> %751), !tbaa !12, !alias.scope !202, !llvm.access.group !21
  %764 = getelementptr inbounds float, float* %9, i64 %754
  %765 = bitcast float* %764 to <8 x float>*
  %wide.masked.load342.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %765, i32 4, <8 x i1> %751, <8 x float> undef), !tbaa !12, !alias.scope !204, !noalias !202
  %766 = fmul <8 x float> %broadcast.splat344, %wide.masked.load342.1
  %767 = fdiv <8 x float> %762, %766, !fpmath !26
  %768 = bitcast float* %760 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %767, <8 x float>* %768, i32 4, <8 x i1> %751), !tbaa !12, !alias.scope !202, !llvm.access.group !21
  %769 = or <8 x i64> %broadcast.splat337, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %770 = trunc <8 x i64> %769 to <8 x i32>
  %771 = icmp sgt <8 x i32> %broadcast.splat339, %770
  %772 = extractelement <8 x i64> %769, i32 0
  %773 = shl i64 %772, 32
  %774 = ashr exact i64 %773, 32
  %775 = getelementptr inbounds float, float* %6, i64 %774
  %776 = bitcast float* %775 to <8 x float>*
  %wide.masked.load340.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %776, i32 4, <8 x i1> %771, <8 x float> undef), !tbaa !12, !alias.scope !199, !noalias !202
  %777 = extractelement <8 x i32> %770, i32 0
  %778 = add nsw i32 %mul.i.i.7, %777
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds float, float* %12, i64 %779
  %781 = bitcast float* %780 to <8 x float>*
  %wide.masked.load341.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %781, i32 4, <8 x i1> %771, <8 x float> undef), !tbaa !12, !alias.scope !202
  %782 = fsub <8 x float> %wide.masked.load341.2, %wide.masked.load340.2
  %783 = bitcast float* %780 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %782, <8 x float>* %783, i32 4, <8 x i1> %771), !tbaa !12, !alias.scope !202, !llvm.access.group !21
  %784 = getelementptr inbounds float, float* %9, i64 %774
  %785 = bitcast float* %784 to <8 x float>*
  %wide.masked.load342.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %785, i32 4, <8 x i1> %771, <8 x float> undef), !tbaa !12, !alias.scope !204, !noalias !202
  %786 = fmul <8 x float> %broadcast.splat344, %wide.masked.load342.2
  %787 = fdiv <8 x float> %782, %786, !fpmath !26
  %788 = bitcast float* %780 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %787, <8 x float>* %788, i32 4, <8 x i1> %771), !tbaa !12, !alias.scope !202, !llvm.access.group !21
  %789 = or <8 x i64> %broadcast.splat337, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %790 = trunc <8 x i64> %789 to <8 x i32>
  %791 = icmp sgt <8 x i32> %broadcast.splat339, %790
  %792 = extractelement <8 x i64> %789, i32 0
  %793 = shl i64 %792, 32
  %794 = ashr exact i64 %793, 32
  %795 = getelementptr inbounds float, float* %6, i64 %794
  %796 = bitcast float* %795 to <8 x float>*
  %wide.masked.load340.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %796, i32 4, <8 x i1> %791, <8 x float> undef), !tbaa !12, !alias.scope !199, !noalias !202
  %797 = extractelement <8 x i32> %790, i32 0
  %798 = add nsw i32 %mul.i.i.7, %797
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds float, float* %12, i64 %799
  %801 = bitcast float* %800 to <8 x float>*
  %wide.masked.load341.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %801, i32 4, <8 x i1> %791, <8 x float> undef), !tbaa !12, !alias.scope !202
  %802 = fsub <8 x float> %wide.masked.load341.3, %wide.masked.load340.3
  %803 = bitcast float* %800 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %802, <8 x float>* %803, i32 4, <8 x i1> %791), !tbaa !12, !alias.scope !202, !llvm.access.group !21
  %804 = getelementptr inbounds float, float* %9, i64 %794
  %805 = bitcast float* %804 to <8 x float>*
  %wide.masked.load342.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %805, i32 4, <8 x i1> %791, <8 x float> undef), !tbaa !12, !alias.scope !204, !noalias !202
  %806 = fmul <8 x float> %broadcast.splat344, %wide.masked.load342.3
  %807 = fdiv <8 x float> %802, %806, !fpmath !26
  %808 = bitcast float* %800 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %807, <8 x float>* %808, i32 4, <8 x i1> %791), !tbaa !12, !alias.scope !202, !llvm.access.group !21
  br label %pregion_for_end.i.i.7

pregion_for_entry.entry.i.i.us.7:                 ; preds = %if.end.r_exit.i.i.us.7.1, %pregion_for_entry.entry.i.i.us.7.preheader
  %_local_id_x.i.0.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.7.preheader ], [ %816, %if.end.r_exit.i.i.us.7.1 ]
  %add1.i.i.i.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.7, %mul.i.i.i
  %conv.i.i.us.7 = trunc i64 %add1.i.i.i.us.7 to i32
  %cmp4.i.i.us.7 = icmp sgt i32 %20, %conv.i.i.us.7
  br i1 %cmp4.i.i.us.7, label %if.then.i.i.us.7, label %if.end.r_exit.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %pregion_for_entry.entry.i.i.us.7
  %sext.i.i.us.7 = shl i64 %add1.i.i.i.us.7, 32
  %idxprom.i.i.us.7 = ashr exact i64 %sext.i.i.us.7, 32
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.7
  %809 = load float, float* %arrayidx.i.i.us.7, align 4, !tbaa !12
  %add.i.i.us.7 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7
  %idxprom6.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx7.i.i.us.7 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.7
  %810 = load float, float* %arrayidx7.i.i.us.7, align 4, !tbaa !12
  %sub.i.i.us.7 = fsub float %810, %809
  store float %sub.i.i.us.7, float* %arrayidx7.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.7 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.7
  %811 = load float, float* %arrayidx10.i.i.us.7, align 4, !tbaa !12
  %mul11.i.i.us.7 = fmul float %25, %811
  %div.i.i.us.7 = fdiv float %sub.i.i.us.7, %mul11.i.i.us.7, !fpmath !26
  store float %div.i.i.us.7, float* %arrayidx7.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.7

if.end.r_exit.i.i.us.7:                           ; preds = %if.then.i.i.us.7, %pregion_for_entry.entry.i.i.us.7
  %812 = or i64 %_local_id_x.i.0.us.7, 1
  %add1.i.i.i.us.7.1 = add nuw nsw i64 %812, %mul.i.i.i
  %conv.i.i.us.7.1 = trunc i64 %add1.i.i.i.us.7.1 to i32
  %cmp4.i.i.us.7.1 = icmp sgt i32 %20, %conv.i.i.us.7.1
  br i1 %cmp4.i.i.us.7.1, label %if.then.i.i.us.7.1, label %if.end.r_exit.i.i.us.7.1

pregion_for_end.i.i.7.loopexit:                   ; preds = %if.end.r_exit.i.i.us.7.1
  br label %pregion_for_end.i.i.7

pregion_for_end.i.i.7:                            ; preds = %pregion_for_end.i.i.7.loopexit, %vector.ph329, %pregion_for_end.i.i.6
  ret void

if.then.i.i.us.7.1:                               ; preds = %if.end.r_exit.i.i.us.7
  %sext.i.i.us.7.1 = shl i64 %add1.i.i.i.us.7.1, 32
  %idxprom.i.i.us.7.1 = ashr exact i64 %sext.i.i.us.7.1, 32
  %arrayidx.i.i.us.7.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.7.1
  %813 = load float, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12
  %add.i.i.us.7.1 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.1
  %idxprom6.i.i.us.7.1 = sext i32 %add.i.i.us.7.1 to i64
  %arrayidx7.i.i.us.7.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.7.1
  %814 = load float, float* %arrayidx7.i.i.us.7.1, align 4, !tbaa !12
  %sub.i.i.us.7.1 = fsub float %814, %813
  store float %sub.i.i.us.7.1, float* %arrayidx7.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.7.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.7.1
  %815 = load float, float* %arrayidx10.i.i.us.7.1, align 4, !tbaa !12
  %mul11.i.i.us.7.1 = fmul float %25, %815
  %div.i.i.us.7.1 = fdiv float %sub.i.i.us.7.1, %mul11.i.i.us.7.1, !fpmath !26
  store float %div.i.i.us.7.1, float* %arrayidx7.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.7.1

if.end.r_exit.i.i.us.7.1:                         ; preds = %if.then.i.i.us.7.1, %if.end.r_exit.i.i.us.7
  %816 = add nuw nsw i64 %_local_id_x.i.0.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %816, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.i.7.loopexit, label %pregion_for_entry.entry.i.i.us.7, !llvm.loop !206

if.then.i.i.us.6.1:                               ; preds = %if.end.r_exit.i.i.us.6
  %sext.i.i.us.6.1 = shl i64 %add1.i.i.i.us.6.1, 32
  %idxprom.i.i.us.6.1 = ashr exact i64 %sext.i.i.us.6.1, 32
  %arrayidx.i.i.us.6.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.6.1
  %817 = load float, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12
  %add.i.i.us.6.1 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.1
  %idxprom6.i.i.us.6.1 = sext i32 %add.i.i.us.6.1 to i64
  %arrayidx7.i.i.us.6.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.6.1
  %818 = load float, float* %arrayidx7.i.i.us.6.1, align 4, !tbaa !12
  %sub.i.i.us.6.1 = fsub float %818, %817
  store float %sub.i.i.us.6.1, float* %arrayidx7.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.6.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.6.1
  %819 = load float, float* %arrayidx10.i.i.us.6.1, align 4, !tbaa !12
  %mul11.i.i.us.6.1 = fmul float %25, %819
  %div.i.i.us.6.1 = fdiv float %sub.i.i.us.6.1, %mul11.i.i.us.6.1, !fpmath !26
  store float %div.i.i.us.6.1, float* %arrayidx7.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.6.1

if.end.r_exit.i.i.us.6.1:                         ; preds = %if.then.i.i.us.6.1, %if.end.r_exit.i.i.us.6
  %820 = add nuw nsw i64 %_local_id_x.i.0.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %820, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.6, !llvm.loop !207

if.then.i.i.us.5.1:                               ; preds = %if.end.r_exit.i.i.us.5
  %sext.i.i.us.5.1 = shl i64 %add1.i.i.i.us.5.1, 32
  %idxprom.i.i.us.5.1 = ashr exact i64 %sext.i.i.us.5.1, 32
  %arrayidx.i.i.us.5.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.5.1
  %821 = load float, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12
  %add.i.i.us.5.1 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.1
  %idxprom6.i.i.us.5.1 = sext i32 %add.i.i.us.5.1 to i64
  %arrayidx7.i.i.us.5.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.5.1
  %822 = load float, float* %arrayidx7.i.i.us.5.1, align 4, !tbaa !12
  %sub.i.i.us.5.1 = fsub float %822, %821
  store float %sub.i.i.us.5.1, float* %arrayidx7.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.5.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.5.1
  %823 = load float, float* %arrayidx10.i.i.us.5.1, align 4, !tbaa !12
  %mul11.i.i.us.5.1 = fmul float %25, %823
  %div.i.i.us.5.1 = fdiv float %sub.i.i.us.5.1, %mul11.i.i.us.5.1, !fpmath !26
  store float %div.i.i.us.5.1, float* %arrayidx7.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.5.1

if.end.r_exit.i.i.us.5.1:                         ; preds = %if.then.i.i.us.5.1, %if.end.r_exit.i.i.us.5
  %824 = add nuw nsw i64 %_local_id_x.i.0.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %824, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.5, !llvm.loop !208

if.then.i.i.us.4.1:                               ; preds = %if.end.r_exit.i.i.us.4
  %sext.i.i.us.4.1 = shl i64 %add1.i.i.i.us.4.1, 32
  %idxprom.i.i.us.4.1 = ashr exact i64 %sext.i.i.us.4.1, 32
  %arrayidx.i.i.us.4.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.4.1
  %825 = load float, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12
  %add.i.i.us.4.1 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.1
  %idxprom6.i.i.us.4.1 = sext i32 %add.i.i.us.4.1 to i64
  %arrayidx7.i.i.us.4.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.4.1
  %826 = load float, float* %arrayidx7.i.i.us.4.1, align 4, !tbaa !12
  %sub.i.i.us.4.1 = fsub float %826, %825
  store float %sub.i.i.us.4.1, float* %arrayidx7.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.4.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.4.1
  %827 = load float, float* %arrayidx10.i.i.us.4.1, align 4, !tbaa !12
  %mul11.i.i.us.4.1 = fmul float %25, %827
  %div.i.i.us.4.1 = fdiv float %sub.i.i.us.4.1, %mul11.i.i.us.4.1, !fpmath !26
  store float %div.i.i.us.4.1, float* %arrayidx7.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.4.1

if.end.r_exit.i.i.us.4.1:                         ; preds = %if.then.i.i.us.4.1, %if.end.r_exit.i.i.us.4
  %828 = add nuw nsw i64 %_local_id_x.i.0.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %828, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.4, !llvm.loop !209

if.then.i.i.us.3.1:                               ; preds = %if.end.r_exit.i.i.us.3
  %sext.i.i.us.3.1 = shl i64 %add1.i.i.i.us.3.1, 32
  %idxprom.i.i.us.3.1 = ashr exact i64 %sext.i.i.us.3.1, 32
  %arrayidx.i.i.us.3.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.3.1
  %829 = load float, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12
  %add.i.i.us.3.1 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.1
  %idxprom6.i.i.us.3.1 = sext i32 %add.i.i.us.3.1 to i64
  %arrayidx7.i.i.us.3.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.3.1
  %830 = load float, float* %arrayidx7.i.i.us.3.1, align 4, !tbaa !12
  %sub.i.i.us.3.1 = fsub float %830, %829
  store float %sub.i.i.us.3.1, float* %arrayidx7.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.3.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.3.1
  %831 = load float, float* %arrayidx10.i.i.us.3.1, align 4, !tbaa !12
  %mul11.i.i.us.3.1 = fmul float %25, %831
  %div.i.i.us.3.1 = fdiv float %sub.i.i.us.3.1, %mul11.i.i.us.3.1, !fpmath !26
  store float %div.i.i.us.3.1, float* %arrayidx7.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.3.1

if.end.r_exit.i.i.us.3.1:                         ; preds = %if.then.i.i.us.3.1, %if.end.r_exit.i.i.us.3
  %832 = add nuw nsw i64 %_local_id_x.i.0.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %832, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.3, !llvm.loop !210

if.then.i.i.us.2.1:                               ; preds = %if.end.r_exit.i.i.us.2
  %sext.i.i.us.2.1 = shl i64 %add1.i.i.i.us.2.1, 32
  %idxprom.i.i.us.2.1 = ashr exact i64 %sext.i.i.us.2.1, 32
  %arrayidx.i.i.us.2.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.2.1
  %833 = load float, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12
  %add.i.i.us.2.1 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.1
  %idxprom6.i.i.us.2.1 = sext i32 %add.i.i.us.2.1 to i64
  %arrayidx7.i.i.us.2.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.2.1
  %834 = load float, float* %arrayidx7.i.i.us.2.1, align 4, !tbaa !12
  %sub.i.i.us.2.1 = fsub float %834, %833
  store float %sub.i.i.us.2.1, float* %arrayidx7.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.2.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.2.1
  %835 = load float, float* %arrayidx10.i.i.us.2.1, align 4, !tbaa !12
  %mul11.i.i.us.2.1 = fmul float %25, %835
  %div.i.i.us.2.1 = fdiv float %sub.i.i.us.2.1, %mul11.i.i.us.2.1, !fpmath !26
  store float %div.i.i.us.2.1, float* %arrayidx7.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.2.1

if.end.r_exit.i.i.us.2.1:                         ; preds = %if.then.i.i.us.2.1, %if.end.r_exit.i.i.us.2
  %836 = add nuw nsw i64 %_local_id_x.i.0.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %836, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.2, !llvm.loop !211

if.then.i.i.us.1.1:                               ; preds = %if.end.r_exit.i.i.us.1
  %sext.i.i.us.1.1 = shl i64 %add1.i.i.i.us.1.1, 32
  %idxprom.i.i.us.1.1 = ashr exact i64 %sext.i.i.us.1.1, 32
  %arrayidx.i.i.us.1.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.1.1
  %837 = load float, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12
  %add.i.i.us.1.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.1
  %idxprom6.i.i.us.1.1 = sext i32 %add.i.i.us.1.1 to i64
  %arrayidx7.i.i.us.1.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.1.1
  %838 = load float, float* %arrayidx7.i.i.us.1.1, align 4, !tbaa !12
  %sub.i.i.us.1.1 = fsub float %838, %837
  store float %sub.i.i.us.1.1, float* %arrayidx7.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.1.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.1.1
  %839 = load float, float* %arrayidx10.i.i.us.1.1, align 4, !tbaa !12
  %mul11.i.i.us.1.1 = fmul float %25, %839
  %div.i.i.us.1.1 = fdiv float %sub.i.i.us.1.1, %mul11.i.i.us.1.1, !fpmath !26
  store float %div.i.i.us.1.1, float* %arrayidx7.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.1.1

if.end.r_exit.i.i.us.1.1:                         ; preds = %if.then.i.i.us.1.1, %if.end.r_exit.i.i.us.1
  %840 = add nuw nsw i64 %_local_id_x.i.0.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %840, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.1, !llvm.loop !212

if.then.i.i.us.1368:                              ; preds = %if.end.r_exit.i.i.us
  %sext.i.i.us.1358 = shl i64 %add1.i.i.i.us.1354, 32
  %idxprom.i.i.us.1359 = ashr exact i64 %sext.i.i.us.1358, 32
  %arrayidx.i.i.us.1360 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.1359
  %841 = load float, float* %arrayidx.i.i.us.1360, align 4, !tbaa !12
  %add.i.i.us.1361 = add nsw i32 %mul.i.i, %conv.i.i.us.1355
  %idxprom6.i.i.us.1362 = sext i32 %add.i.i.us.1361 to i64
  %arrayidx7.i.i.us.1363 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.1362
  %842 = load float, float* %arrayidx7.i.i.us.1363, align 4, !tbaa !12
  %sub.i.i.us.1364 = fsub float %842, %841
  store float %sub.i.i.us.1364, float* %arrayidx7.i.i.us.1363, align 4, !tbaa !12, !llvm.access.group !21
  %arrayidx10.i.i.us.1365 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.1359
  %843 = load float, float* %arrayidx10.i.i.us.1365, align 4, !tbaa !12
  %mul11.i.i.us.1366 = fmul float %25, %843
  %div.i.i.us.1367 = fdiv float %sub.i.i.us.1364, %mul11.i.i.us.1366, !fpmath !26
  store float %div.i.i.us.1367, float* %arrayidx7.i.i.us.1363, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.1369

if.end.r_exit.i.i.us.1369:                        ; preds = %if.then.i.i.us.1368, %if.end.r_exit.i.i.us
  %844 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %844, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !213
}

; Function Attrs: argmemonly nounwind readonly willreturn
declare <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>*, i32 immarg, <8 x i1>, <8 x float>) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.masked.store.v8f32.p0v8f32(<8 x float>, <8 x float>*, i32 immarg, <8 x i1>) #4

attributes #0 = { nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind }
attributes #3 = { argmemonly nounwind readonly willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!opencl.ocl.version = !{!3}
!llvm.ident = !{!4}
!opencl.spir.version = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 1, i32 2}
!4 = !{!"clang version 11.0.0 (git@github.com:llvm/llvm-project.git 91e89f9a5115b0f83b8f026e1ad0e6d1f885fa9b)"}
!5 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"float", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !"", !""}
!10 = !{!"mean", !"std", !"data", !"float_n", !"m", !"n"}
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
!21 = !{!22, !23}
!22 = distinct !{}
!23 = distinct !{}
!24 = !{!25}
!25 = distinct !{!25, !18}
!26 = !{float 2.500000e+00}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = !{!33}
!33 = distinct !{!33, !29}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = !{!40}
!40 = distinct !{!40, !36}
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!45}
!45 = distinct !{!45, !43}
!46 = !{!47}
!47 = distinct !{!47, !43}
!48 = !{!49}
!49 = distinct !{!49, !50}
!50 = distinct !{!50, !"LVerDomain"}
!51 = !{!52}
!52 = distinct !{!52, !50}
!53 = !{!54}
!54 = distinct !{!54, !50}
!55 = !{!56}
!56 = distinct !{!56, !57}
!57 = distinct !{!57, !"LVerDomain"}
!58 = !{!59}
!59 = distinct !{!59, !57}
!60 = !{!61}
!61 = distinct !{!61, !57}
!62 = !{!63}
!63 = distinct !{!63, !64}
!64 = distinct !{!64, !"LVerDomain"}
!65 = !{!66}
!66 = distinct !{!66, !64}
!67 = !{!68}
!68 = distinct !{!68, !64}
!69 = !{!70}
!70 = distinct !{!70, !71}
!71 = distinct !{!71, !"LVerDomain"}
!72 = !{!73}
!73 = distinct !{!73, !71}
!74 = !{!75}
!75 = distinct !{!75, !71}
!76 = distinct !{!76, !77, !78}
!77 = !{!"llvm.loop.parallel_accesses", !22}
!78 = !{!"llvm.loop.isvectorized", i32 1}
!79 = distinct !{!79, !77, !78}
!80 = distinct !{!80, !77, !78}
!81 = distinct !{!81, !77, !78}
!82 = distinct !{!82, !77, !78}
!83 = distinct !{!83, !77, !78}
!84 = distinct !{!84, !77, !78}
!85 = distinct !{!85, !77, !78}
!86 = !{!87}
!87 = distinct !{!87, !88}
!88 = distinct !{!88, !"LVerDomain"}
!89 = !{!90}
!90 = distinct !{!90, !88}
!91 = !{!92}
!92 = distinct !{!92, !88}
!93 = !{!94}
!94 = distinct !{!94, !95}
!95 = distinct !{!95, !"LVerDomain"}
!96 = !{!97}
!97 = distinct !{!97, !95}
!98 = !{!99}
!99 = distinct !{!99, !95}
!100 = !{!101}
!101 = distinct !{!101, !102}
!102 = distinct !{!102, !"LVerDomain"}
!103 = !{!104}
!104 = distinct !{!104, !102}
!105 = !{!106}
!106 = distinct !{!106, !102}
!107 = !{!108}
!108 = distinct !{!108, !109}
!109 = distinct !{!109, !"LVerDomain"}
!110 = !{!111}
!111 = distinct !{!111, !109}
!112 = !{!113}
!113 = distinct !{!113, !109}
!114 = !{!115}
!115 = distinct !{!115, !116}
!116 = distinct !{!116, !"LVerDomain"}
!117 = !{!118}
!118 = distinct !{!118, !116}
!119 = !{!120}
!120 = distinct !{!120, !116}
!121 = !{!122}
!122 = distinct !{!122, !123}
!123 = distinct !{!123, !"LVerDomain"}
!124 = !{!125}
!125 = distinct !{!125, !123}
!126 = !{!127}
!127 = distinct !{!127, !123}
!128 = !{!129}
!129 = distinct !{!129, !130}
!130 = distinct !{!130, !"LVerDomain"}
!131 = !{!132}
!132 = distinct !{!132, !130}
!133 = !{!134}
!134 = distinct !{!134, !130}
!135 = !{!136}
!136 = distinct !{!136, !137}
!137 = distinct !{!137, !"LVerDomain"}
!138 = !{!139}
!139 = distinct !{!139, !137}
!140 = !{!141}
!141 = distinct !{!141, !137}
!142 = distinct !{!142, !77, !78}
!143 = distinct !{!143, !77, !78}
!144 = distinct !{!144, !77, !78}
!145 = distinct !{!145, !77, !78}
!146 = distinct !{!146, !77, !78}
!147 = distinct !{!147, !77, !78}
!148 = distinct !{!148, !77, !78}
!149 = distinct !{!149, !77, !78}
!150 = !{!151}
!151 = distinct !{!151, !152}
!152 = distinct !{!152, !"LVerDomain"}
!153 = !{!154}
!154 = distinct !{!154, !152}
!155 = !{!156}
!156 = distinct !{!156, !152}
!157 = !{!158}
!158 = distinct !{!158, !159}
!159 = distinct !{!159, !"LVerDomain"}
!160 = !{!161}
!161 = distinct !{!161, !159}
!162 = !{!163}
!163 = distinct !{!163, !159}
!164 = !{!165}
!165 = distinct !{!165, !166}
!166 = distinct !{!166, !"LVerDomain"}
!167 = !{!168}
!168 = distinct !{!168, !166}
!169 = !{!170}
!170 = distinct !{!170, !166}
!171 = !{!172}
!172 = distinct !{!172, !173}
!173 = distinct !{!173, !"LVerDomain"}
!174 = !{!175}
!175 = distinct !{!175, !173}
!176 = !{!177}
!177 = distinct !{!177, !173}
!178 = !{!179}
!179 = distinct !{!179, !180}
!180 = distinct !{!180, !"LVerDomain"}
!181 = !{!182}
!182 = distinct !{!182, !180}
!183 = !{!184}
!184 = distinct !{!184, !180}
!185 = !{!186}
!186 = distinct !{!186, !187}
!187 = distinct !{!187, !"LVerDomain"}
!188 = !{!189}
!189 = distinct !{!189, !187}
!190 = !{!191}
!191 = distinct !{!191, !187}
!192 = !{!193}
!193 = distinct !{!193, !194}
!194 = distinct !{!194, !"LVerDomain"}
!195 = !{!196}
!196 = distinct !{!196, !194}
!197 = !{!198}
!198 = distinct !{!198, !194}
!199 = !{!200}
!200 = distinct !{!200, !201}
!201 = distinct !{!201, !"LVerDomain"}
!202 = !{!203}
!203 = distinct !{!203, !201}
!204 = !{!205}
!205 = distinct !{!205, !201}
!206 = distinct !{!206, !77, !78}
!207 = distinct !{!207, !77, !78}
!208 = distinct !{!208, !77, !78}
!209 = distinct !{!209, !77, !78}
!210 = distinct !{!210, !77, !78}
!211 = distinct !{!211, !77, !78}
!212 = distinct !{!212, !77, !78}
!213 = distinct !{!213, !77, !78}
