; ModuleID = './NN/PIABNLMPBCCDKKLCJLPFFDMLPCEOMEAIPNGLL/reduce_kernel/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_reduce_kernel(float* nocapture readonly %0, float* nocapture %1, i32 %2, i32 %3, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %4, i64 %5, i64 %6, i64 %7) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
pregion_for_entry.pregion_for_init.i:
  %mul.i.i = shl i64 %5, 5
  %mul3.i.i = shl i64 %6, 3
  %conv2.i = trunc i64 %mul3.i.i to i32
  %cmp.i = icmp slt i32 %conv2.i, %3
  %mul.i = mul nsw i32 %conv2.i, %2
  br i1 %cmp.i, label %vector.scevcheck, label %pregion_for_end.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i
  %8 = trunc i64 %6 to i32
  %9 = mul i32 %8, %2
  %10 = shl i32 %9, 3
  %11 = trunc i64 %5 to i32
  %12 = shl i32 %11, 5
  %13 = add i32 %10, %12
  %14 = icmp sgt i32 %13, 2147483616
  br i1 %14, label %pregion_for_entry.entry.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.us.preheader:           ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %15 = trunc i64 %5 to i32
  %16 = shl i32 %15, 5
  %17 = sext i32 %16 to i64
  %scevgep = getelementptr float, float* %0, i64 %17
  %18 = add nsw i64 %17, 32
  %scevgep4 = getelementptr float, float* %0, i64 %18
  %19 = trunc i64 %6 to i32
  %20 = mul i32 %19, %2
  %21 = shl i32 %20, 3
  %22 = add i32 %21, %16
  %23 = sext i32 %22 to i64
  %scevgep6 = getelementptr float, float* %1, i64 %23
  %24 = add nsw i64 %23, 32
  %scevgep8 = getelementptr float, float* %1, i64 %24
  %bound0 = icmp ult float* %scevgep, %scevgep8
  %bound1 = icmp ult float* %scevgep6, %scevgep4
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert10 = insertelement <8 x i32> undef, i32 %2, i32 0
  %broadcast.splat11 = shufflevector <8 x i32> %broadcast.splatinsert10, <8 x i32> undef, <8 x i32> zeroinitializer
  %25 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %26 = trunc <8 x i64> %25 to <8 x i32>
  %27 = icmp sgt <8 x i32> %broadcast.splat11, %26
  %28 = extractelement <8 x i64> %25, i32 0
  %29 = shl i64 %28, 32
  %30 = ashr exact i64 %29, 32
  %31 = getelementptr inbounds float, float* %0, i64 %30
  %32 = bitcast float* %31 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %32, i32 4, <8 x i1> %27, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %33 = extractelement <8 x i32> %26, i32 0
  %34 = add nsw i32 %mul.i, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %1, i64 %35
  %37 = bitcast float* %36 to <8 x float>*
  %wide.masked.load12 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %37, i32 4, <8 x i1> %27, <8 x float> undef), !tbaa !12, !alias.scope !19
  %38 = fsub <8 x float> %wide.masked.load12, %wide.masked.load
  %39 = bitcast float* %36 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %38, <8 x float>* %39, i32 4, <8 x i1> %27), !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %40 = or <8 x i64> %broadcast.splat, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %41 = trunc <8 x i64> %40 to <8 x i32>
  %42 = icmp sgt <8 x i32> %broadcast.splat11, %41
  %43 = extractelement <8 x i64> %40, i32 0
  %44 = shl i64 %43, 32
  %45 = ashr exact i64 %44, 32
  %46 = getelementptr inbounds float, float* %0, i64 %45
  %47 = bitcast float* %46 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %47, i32 4, <8 x i1> %42, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %48 = extractelement <8 x i32> %41, i32 0
  %49 = add nsw i32 %mul.i, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %1, i64 %50
  %52 = bitcast float* %51 to <8 x float>*
  %wide.masked.load12.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %52, i32 4, <8 x i1> %42, <8 x float> undef), !tbaa !12, !alias.scope !19
  %53 = fsub <8 x float> %wide.masked.load12.1, %wide.masked.load.1
  %54 = bitcast float* %51 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %53, <8 x float>* %54, i32 4, <8 x i1> %42), !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %55 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %56 = trunc <8 x i64> %55 to <8 x i32>
  %57 = icmp sgt <8 x i32> %broadcast.splat11, %56
  %58 = extractelement <8 x i64> %55, i32 0
  %59 = shl i64 %58, 32
  %60 = ashr exact i64 %59, 32
  %61 = getelementptr inbounds float, float* %0, i64 %60
  %62 = bitcast float* %61 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %62, i32 4, <8 x i1> %57, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %63 = extractelement <8 x i32> %56, i32 0
  %64 = add nsw i32 %mul.i, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %1, i64 %65
  %67 = bitcast float* %66 to <8 x float>*
  %wide.masked.load12.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %67, i32 4, <8 x i1> %57, <8 x float> undef), !tbaa !12, !alias.scope !19
  %68 = fsub <8 x float> %wide.masked.load12.2, %wide.masked.load.2
  %69 = bitcast float* %66 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %68, <8 x float>* %69, i32 4, <8 x i1> %57), !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %70 = or <8 x i64> %broadcast.splat, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %71 = trunc <8 x i64> %70 to <8 x i32>
  %72 = icmp sgt <8 x i32> %broadcast.splat11, %71
  %73 = extractelement <8 x i64> %70, i32 0
  %74 = shl i64 %73, 32
  %75 = ashr exact i64 %74, 32
  %76 = getelementptr inbounds float, float* %0, i64 %75
  %77 = bitcast float* %76 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %77, i32 4, <8 x i1> %72, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %78 = extractelement <8 x i32> %71, i32 0
  %79 = add nsw i32 %mul.i, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %1, i64 %80
  %82 = bitcast float* %81 to <8 x float>*
  %wide.masked.load12.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %82, i32 4, <8 x i1> %72, <8 x float> undef), !tbaa !12, !alias.scope !19
  %83 = fsub <8 x float> %wide.masked.load12.3, %wide.masked.load.3
  %84 = bitcast float* %81 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %83, <8 x float>* %84, i32 4, <8 x i1> %72), !tbaa !12, !alias.scope !19, !llvm.access.group !21
  br label %pregion_for_end.i

pregion_for_entry.entry.i.us:                     ; preds = %if.end.r_exit.i.us.1279, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.us.preheader ], [ %650, %if.end.r_exit.i.us.1279 ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp4.i.us = icmp slt i32 %conv.i.us, %2
  br i1 %cmp4.i.us, label %if.then.i.us, label %if.end.r_exit.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %sext.i.us = shl i64 %add1.i.i.us, 32
  %idxprom.i.us = ashr exact i64 %sext.i.us, 32
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %idxprom.i.us
  %85 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %add.i.us = add nsw i32 %mul.i, %conv.i.us
  %idxprom6.i.us = sext i32 %add.i.us to i64
  %arrayidx7.i.us = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us
  %86 = load float, float* %arrayidx7.i.us, align 4, !tbaa !12
  %sub.i.us = fsub float %86, %85
  store float %sub.i.us, float* %arrayidx7.i.us, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us

if.end.r_exit.i.us:                               ; preds = %if.then.i.us, %pregion_for_entry.entry.i.us
  %87 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1267 = add nuw nsw i64 %87, %mul.i.i
  %conv.i.us.1268 = trunc i64 %add1.i.i.us.1267 to i32
  %cmp4.i.us.1269 = icmp slt i32 %conv.i.us.1268, %2
  br i1 %cmp4.i.us.1269, label %if.then.i.us.1278, label %if.end.r_exit.i.us.1279

pregion_for_end.i.loopexit:                       ; preds = %if.end.r_exit.i.us.1279
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %pregion_for_end.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i
  %88 = trunc i64 %mul3.i.i to i32
  %conv2.i.1 = or i32 %88, 1
  %cmp.i.1 = icmp slt i32 %conv2.i.1, %3
  %mul.i.1 = mul nsw i32 %conv2.i.1, %2
  br i1 %cmp.i.1, label %vector.scevcheck20, label %pregion_for_end.i.1

vector.scevcheck20:                               ; preds = %pregion_for_end.i
  %89 = mul i32 %conv2.i.1, %2
  %90 = trunc i64 %5 to i32
  %91 = shl i32 %90, 5
  %92 = add i32 %89, %91
  %93 = icmp sgt i32 %92, 2147483616
  br i1 %93, label %pregion_for_entry.entry.i.us.1.preheader, label %vector.memcheck34

pregion_for_entry.entry.i.us.1.preheader:         ; preds = %vector.memcheck34, %vector.scevcheck20
  br label %pregion_for_entry.entry.i.us.1

vector.memcheck34:                                ; preds = %vector.scevcheck20
  %94 = trunc i64 %5 to i32
  %95 = shl i32 %94, 5
  %96 = sext i32 %95 to i64
  %scevgep22 = getelementptr float, float* %0, i64 %96
  %97 = add nsw i64 %96, 32
  %scevgep24 = getelementptr float, float* %0, i64 %97
  %98 = mul i32 %conv2.i.1, %2
  %99 = add i32 %98, %95
  %100 = sext i32 %99 to i64
  %scevgep26 = getelementptr float, float* %1, i64 %100
  %101 = add nsw i64 %100, 32
  %scevgep28 = getelementptr float, float* %1, i64 %101
  %bound030 = icmp ult float* %scevgep22, %scevgep28
  %bound131 = icmp ult float* %scevgep26, %scevgep24
  %found.conflict32 = and i1 %bound030, %bound131
  br i1 %found.conflict32, label %pregion_for_entry.entry.i.us.1.preheader, label %vector.ph35

vector.ph35:                                      ; preds = %vector.memcheck34
  %broadcast.splatinsert42 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat43 = shufflevector <8 x i64> %broadcast.splatinsert42, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert44 = insertelement <8 x i32> undef, i32 %2, i32 0
  %broadcast.splat45 = shufflevector <8 x i32> %broadcast.splatinsert44, <8 x i32> undef, <8 x i32> zeroinitializer
  %102 = or <8 x i64> %broadcast.splat43, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %103 = trunc <8 x i64> %102 to <8 x i32>
  %104 = icmp sgt <8 x i32> %broadcast.splat45, %103
  %105 = extractelement <8 x i64> %102, i32 0
  %106 = shl i64 %105, 32
  %107 = ashr exact i64 %106, 32
  %108 = getelementptr inbounds float, float* %0, i64 %107
  %109 = bitcast float* %108 to <8 x float>*
  %wide.masked.load46 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %109, i32 4, <8 x i1> %104, <8 x float> undef), !tbaa !12, !alias.scope !24, !noalias !27
  %110 = extractelement <8 x i32> %103, i32 0
  %111 = add nsw i32 %mul.i.1, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %1, i64 %112
  %114 = bitcast float* %113 to <8 x float>*
  %wide.masked.load47 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %114, i32 4, <8 x i1> %104, <8 x float> undef), !tbaa !12, !alias.scope !27
  %115 = fsub <8 x float> %wide.masked.load47, %wide.masked.load46
  %116 = bitcast float* %113 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %115, <8 x float>* %116, i32 4, <8 x i1> %104), !tbaa !12, !alias.scope !27, !llvm.access.group !21
  %117 = or <8 x i64> %broadcast.splat43, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %118 = trunc <8 x i64> %117 to <8 x i32>
  %119 = icmp sgt <8 x i32> %broadcast.splat45, %118
  %120 = extractelement <8 x i64> %117, i32 0
  %121 = shl i64 %120, 32
  %122 = ashr exact i64 %121, 32
  %123 = getelementptr inbounds float, float* %0, i64 %122
  %124 = bitcast float* %123 to <8 x float>*
  %wide.masked.load46.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %124, i32 4, <8 x i1> %119, <8 x float> undef), !tbaa !12, !alias.scope !24, !noalias !27
  %125 = extractelement <8 x i32> %118, i32 0
  %126 = add nsw i32 %mul.i.1, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %1, i64 %127
  %129 = bitcast float* %128 to <8 x float>*
  %wide.masked.load47.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %129, i32 4, <8 x i1> %119, <8 x float> undef), !tbaa !12, !alias.scope !27
  %130 = fsub <8 x float> %wide.masked.load47.1, %wide.masked.load46.1
  %131 = bitcast float* %128 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %130, <8 x float>* %131, i32 4, <8 x i1> %119), !tbaa !12, !alias.scope !27, !llvm.access.group !21
  %132 = or <8 x i64> %broadcast.splat43, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %133 = trunc <8 x i64> %132 to <8 x i32>
  %134 = icmp sgt <8 x i32> %broadcast.splat45, %133
  %135 = extractelement <8 x i64> %132, i32 0
  %136 = shl i64 %135, 32
  %137 = ashr exact i64 %136, 32
  %138 = getelementptr inbounds float, float* %0, i64 %137
  %139 = bitcast float* %138 to <8 x float>*
  %wide.masked.load46.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %139, i32 4, <8 x i1> %134, <8 x float> undef), !tbaa !12, !alias.scope !24, !noalias !27
  %140 = extractelement <8 x i32> %133, i32 0
  %141 = add nsw i32 %mul.i.1, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %1, i64 %142
  %144 = bitcast float* %143 to <8 x float>*
  %wide.masked.load47.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %144, i32 4, <8 x i1> %134, <8 x float> undef), !tbaa !12, !alias.scope !27
  %145 = fsub <8 x float> %wide.masked.load47.2, %wide.masked.load46.2
  %146 = bitcast float* %143 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %145, <8 x float>* %146, i32 4, <8 x i1> %134), !tbaa !12, !alias.scope !27, !llvm.access.group !21
  %147 = or <8 x i64> %broadcast.splat43, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %148 = trunc <8 x i64> %147 to <8 x i32>
  %149 = icmp sgt <8 x i32> %broadcast.splat45, %148
  %150 = extractelement <8 x i64> %147, i32 0
  %151 = shl i64 %150, 32
  %152 = ashr exact i64 %151, 32
  %153 = getelementptr inbounds float, float* %0, i64 %152
  %154 = bitcast float* %153 to <8 x float>*
  %wide.masked.load46.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %154, i32 4, <8 x i1> %149, <8 x float> undef), !tbaa !12, !alias.scope !24, !noalias !27
  %155 = extractelement <8 x i32> %148, i32 0
  %156 = add nsw i32 %mul.i.1, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %1, i64 %157
  %159 = bitcast float* %158 to <8 x float>*
  %wide.masked.load47.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %159, i32 4, <8 x i1> %149, <8 x float> undef), !tbaa !12, !alias.scope !27
  %160 = fsub <8 x float> %wide.masked.load47.3, %wide.masked.load46.3
  %161 = bitcast float* %158 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %160, <8 x float>* %161, i32 4, <8 x i1> %149), !tbaa !12, !alias.scope !27, !llvm.access.group !21
  br label %pregion_for_end.i.1

pregion_for_entry.entry.i.us.1:                   ; preds = %if.end.r_exit.i.us.1.1, %pregion_for_entry.entry.i.us.1.preheader
  %_local_id_x.0.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.us.1.preheader ], [ %647, %if.end.r_exit.i.us.1.1 ]
  %add1.i.i.us.1 = add nuw nsw i64 %_local_id_x.0.us.1, %mul.i.i
  %conv.i.us.1 = trunc i64 %add1.i.i.us.1 to i32
  %cmp4.i.us.1 = icmp slt i32 %conv.i.us.1, %2
  br i1 %cmp4.i.us.1, label %if.then.i.us.1, label %if.end.r_exit.i.us.1

if.then.i.us.1:                                   ; preds = %pregion_for_entry.entry.i.us.1
  %sext.i.us.1 = shl i64 %add1.i.i.us.1, 32
  %idxprom.i.us.1 = ashr exact i64 %sext.i.us.1, 32
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.1
  %162 = load float, float* %arrayidx.i.us.1, align 4, !tbaa !12
  %add.i.us.1 = add nsw i32 %mul.i.1, %conv.i.us.1
  %idxprom6.i.us.1 = sext i32 %add.i.us.1 to i64
  %arrayidx7.i.us.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.1
  %163 = load float, float* %arrayidx7.i.us.1, align 4, !tbaa !12
  %sub.i.us.1 = fsub float %163, %162
  store float %sub.i.us.1, float* %arrayidx7.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.1

if.end.r_exit.i.us.1:                             ; preds = %if.then.i.us.1, %pregion_for_entry.entry.i.us.1
  %164 = or i64 %_local_id_x.0.us.1, 1
  %add1.i.i.us.1.1 = add nuw nsw i64 %164, %mul.i.i
  %conv.i.us.1.1 = trunc i64 %add1.i.i.us.1.1 to i32
  %cmp4.i.us.1.1 = icmp slt i32 %conv.i.us.1.1, %2
  br i1 %cmp4.i.us.1.1, label %if.then.i.us.1.1, label %if.end.r_exit.i.us.1.1

pregion_for_end.i.1.loopexit:                     ; preds = %if.end.r_exit.i.us.1.1
  br label %pregion_for_end.i.1

pregion_for_end.i.1:                              ; preds = %pregion_for_end.i.1.loopexit, %vector.ph35, %pregion_for_end.i
  %165 = trunc i64 %mul3.i.i to i32
  %conv2.i.2 = or i32 %165, 2
  %cmp.i.2 = icmp slt i32 %conv2.i.2, %3
  %mul.i.2 = mul nsw i32 %conv2.i.2, %2
  br i1 %cmp.i.2, label %vector.scevcheck55, label %pregion_for_end.i.2

vector.scevcheck55:                               ; preds = %pregion_for_end.i.1
  %166 = mul i32 %conv2.i.2, %2
  %167 = trunc i64 %5 to i32
  %168 = shl i32 %167, 5
  %169 = add i32 %166, %168
  %170 = icmp sgt i32 %169, 2147483616
  br i1 %170, label %pregion_for_entry.entry.i.us.2.preheader, label %vector.memcheck69

pregion_for_entry.entry.i.us.2.preheader:         ; preds = %vector.memcheck69, %vector.scevcheck55
  br label %pregion_for_entry.entry.i.us.2

vector.memcheck69:                                ; preds = %vector.scevcheck55
  %171 = trunc i64 %5 to i32
  %172 = shl i32 %171, 5
  %173 = sext i32 %172 to i64
  %scevgep57 = getelementptr float, float* %0, i64 %173
  %174 = add nsw i64 %173, 32
  %scevgep59 = getelementptr float, float* %0, i64 %174
  %175 = mul i32 %conv2.i.2, %2
  %176 = add i32 %175, %172
  %177 = sext i32 %176 to i64
  %scevgep61 = getelementptr float, float* %1, i64 %177
  %178 = add nsw i64 %177, 32
  %scevgep63 = getelementptr float, float* %1, i64 %178
  %bound065 = icmp ult float* %scevgep57, %scevgep63
  %bound166 = icmp ult float* %scevgep61, %scevgep59
  %found.conflict67 = and i1 %bound065, %bound166
  br i1 %found.conflict67, label %pregion_for_entry.entry.i.us.2.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck69
  %broadcast.splatinsert77 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat78 = shufflevector <8 x i64> %broadcast.splatinsert77, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert79 = insertelement <8 x i32> undef, i32 %2, i32 0
  %broadcast.splat80 = shufflevector <8 x i32> %broadcast.splatinsert79, <8 x i32> undef, <8 x i32> zeroinitializer
  %179 = or <8 x i64> %broadcast.splat78, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %180 = trunc <8 x i64> %179 to <8 x i32>
  %181 = icmp sgt <8 x i32> %broadcast.splat80, %180
  %182 = extractelement <8 x i64> %179, i32 0
  %183 = shl i64 %182, 32
  %184 = ashr exact i64 %183, 32
  %185 = getelementptr inbounds float, float* %0, i64 %184
  %186 = bitcast float* %185 to <8 x float>*
  %wide.masked.load81 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %186, i32 4, <8 x i1> %181, <8 x float> undef), !tbaa !12, !alias.scope !29, !noalias !32
  %187 = extractelement <8 x i32> %180, i32 0
  %188 = add nsw i32 %mul.i.2, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %1, i64 %189
  %191 = bitcast float* %190 to <8 x float>*
  %wide.masked.load82 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %191, i32 4, <8 x i1> %181, <8 x float> undef), !tbaa !12, !alias.scope !32
  %192 = fsub <8 x float> %wide.masked.load82, %wide.masked.load81
  %193 = bitcast float* %190 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %192, <8 x float>* %193, i32 4, <8 x i1> %181), !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %194 = or <8 x i64> %broadcast.splat78, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %195 = trunc <8 x i64> %194 to <8 x i32>
  %196 = icmp sgt <8 x i32> %broadcast.splat80, %195
  %197 = extractelement <8 x i64> %194, i32 0
  %198 = shl i64 %197, 32
  %199 = ashr exact i64 %198, 32
  %200 = getelementptr inbounds float, float* %0, i64 %199
  %201 = bitcast float* %200 to <8 x float>*
  %wide.masked.load81.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %201, i32 4, <8 x i1> %196, <8 x float> undef), !tbaa !12, !alias.scope !29, !noalias !32
  %202 = extractelement <8 x i32> %195, i32 0
  %203 = add nsw i32 %mul.i.2, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %1, i64 %204
  %206 = bitcast float* %205 to <8 x float>*
  %wide.masked.load82.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %206, i32 4, <8 x i1> %196, <8 x float> undef), !tbaa !12, !alias.scope !32
  %207 = fsub <8 x float> %wide.masked.load82.1, %wide.masked.load81.1
  %208 = bitcast float* %205 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %207, <8 x float>* %208, i32 4, <8 x i1> %196), !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %209 = or <8 x i64> %broadcast.splat78, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %210 = trunc <8 x i64> %209 to <8 x i32>
  %211 = icmp sgt <8 x i32> %broadcast.splat80, %210
  %212 = extractelement <8 x i64> %209, i32 0
  %213 = shl i64 %212, 32
  %214 = ashr exact i64 %213, 32
  %215 = getelementptr inbounds float, float* %0, i64 %214
  %216 = bitcast float* %215 to <8 x float>*
  %wide.masked.load81.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %216, i32 4, <8 x i1> %211, <8 x float> undef), !tbaa !12, !alias.scope !29, !noalias !32
  %217 = extractelement <8 x i32> %210, i32 0
  %218 = add nsw i32 %mul.i.2, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %1, i64 %219
  %221 = bitcast float* %220 to <8 x float>*
  %wide.masked.load82.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %221, i32 4, <8 x i1> %211, <8 x float> undef), !tbaa !12, !alias.scope !32
  %222 = fsub <8 x float> %wide.masked.load82.2, %wide.masked.load81.2
  %223 = bitcast float* %220 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %222, <8 x float>* %223, i32 4, <8 x i1> %211), !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %224 = or <8 x i64> %broadcast.splat78, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %225 = trunc <8 x i64> %224 to <8 x i32>
  %226 = icmp sgt <8 x i32> %broadcast.splat80, %225
  %227 = extractelement <8 x i64> %224, i32 0
  %228 = shl i64 %227, 32
  %229 = ashr exact i64 %228, 32
  %230 = getelementptr inbounds float, float* %0, i64 %229
  %231 = bitcast float* %230 to <8 x float>*
  %wide.masked.load81.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %231, i32 4, <8 x i1> %226, <8 x float> undef), !tbaa !12, !alias.scope !29, !noalias !32
  %232 = extractelement <8 x i32> %225, i32 0
  %233 = add nsw i32 %mul.i.2, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %1, i64 %234
  %236 = bitcast float* %235 to <8 x float>*
  %wide.masked.load82.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %236, i32 4, <8 x i1> %226, <8 x float> undef), !tbaa !12, !alias.scope !32
  %237 = fsub <8 x float> %wide.masked.load82.3, %wide.masked.load81.3
  %238 = bitcast float* %235 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %237, <8 x float>* %238, i32 4, <8 x i1> %226), !tbaa !12, !alias.scope !32, !llvm.access.group !21
  br label %pregion_for_end.i.2

pregion_for_entry.entry.i.us.2:                   ; preds = %if.end.r_exit.i.us.2.1, %pregion_for_entry.entry.i.us.2.preheader
  %_local_id_x.0.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.us.2.preheader ], [ %644, %if.end.r_exit.i.us.2.1 ]
  %add1.i.i.us.2 = add nuw nsw i64 %_local_id_x.0.us.2, %mul.i.i
  %conv.i.us.2 = trunc i64 %add1.i.i.us.2 to i32
  %cmp4.i.us.2 = icmp slt i32 %conv.i.us.2, %2
  br i1 %cmp4.i.us.2, label %if.then.i.us.2, label %if.end.r_exit.i.us.2

if.then.i.us.2:                                   ; preds = %pregion_for_entry.entry.i.us.2
  %sext.i.us.2 = shl i64 %add1.i.i.us.2, 32
  %idxprom.i.us.2 = ashr exact i64 %sext.i.us.2, 32
  %arrayidx.i.us.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.2
  %239 = load float, float* %arrayidx.i.us.2, align 4, !tbaa !12
  %add.i.us.2 = add nsw i32 %mul.i.2, %conv.i.us.2
  %idxprom6.i.us.2 = sext i32 %add.i.us.2 to i64
  %arrayidx7.i.us.2 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.2
  %240 = load float, float* %arrayidx7.i.us.2, align 4, !tbaa !12
  %sub.i.us.2 = fsub float %240, %239
  store float %sub.i.us.2, float* %arrayidx7.i.us.2, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.2

if.end.r_exit.i.us.2:                             ; preds = %if.then.i.us.2, %pregion_for_entry.entry.i.us.2
  %241 = or i64 %_local_id_x.0.us.2, 1
  %add1.i.i.us.2.1 = add nuw nsw i64 %241, %mul.i.i
  %conv.i.us.2.1 = trunc i64 %add1.i.i.us.2.1 to i32
  %cmp4.i.us.2.1 = icmp slt i32 %conv.i.us.2.1, %2
  br i1 %cmp4.i.us.2.1, label %if.then.i.us.2.1, label %if.end.r_exit.i.us.2.1

pregion_for_end.i.2.loopexit:                     ; preds = %if.end.r_exit.i.us.2.1
  br label %pregion_for_end.i.2

pregion_for_end.i.2:                              ; preds = %pregion_for_end.i.2.loopexit, %vector.ph70, %pregion_for_end.i.1
  %242 = trunc i64 %mul3.i.i to i32
  %conv2.i.3 = or i32 %242, 3
  %cmp.i.3 = icmp slt i32 %conv2.i.3, %3
  %mul.i.3 = mul nsw i32 %conv2.i.3, %2
  br i1 %cmp.i.3, label %vector.scevcheck90, label %pregion_for_end.i.3

vector.scevcheck90:                               ; preds = %pregion_for_end.i.2
  %243 = mul i32 %conv2.i.3, %2
  %244 = trunc i64 %5 to i32
  %245 = shl i32 %244, 5
  %246 = add i32 %243, %245
  %247 = icmp sgt i32 %246, 2147483616
  br i1 %247, label %pregion_for_entry.entry.i.us.3.preheader, label %vector.memcheck104

pregion_for_entry.entry.i.us.3.preheader:         ; preds = %vector.memcheck104, %vector.scevcheck90
  br label %pregion_for_entry.entry.i.us.3

vector.memcheck104:                               ; preds = %vector.scevcheck90
  %248 = trunc i64 %5 to i32
  %249 = shl i32 %248, 5
  %250 = sext i32 %249 to i64
  %scevgep92 = getelementptr float, float* %0, i64 %250
  %251 = add nsw i64 %250, 32
  %scevgep94 = getelementptr float, float* %0, i64 %251
  %252 = mul i32 %conv2.i.3, %2
  %253 = add i32 %252, %249
  %254 = sext i32 %253 to i64
  %scevgep96 = getelementptr float, float* %1, i64 %254
  %255 = add nsw i64 %254, 32
  %scevgep98 = getelementptr float, float* %1, i64 %255
  %bound0100 = icmp ult float* %scevgep92, %scevgep98
  %bound1101 = icmp ult float* %scevgep96, %scevgep94
  %found.conflict102 = and i1 %bound0100, %bound1101
  br i1 %found.conflict102, label %pregion_for_entry.entry.i.us.3.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %vector.memcheck104
  %broadcast.splatinsert112 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat113 = shufflevector <8 x i64> %broadcast.splatinsert112, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert114 = insertelement <8 x i32> undef, i32 %2, i32 0
  %broadcast.splat115 = shufflevector <8 x i32> %broadcast.splatinsert114, <8 x i32> undef, <8 x i32> zeroinitializer
  %256 = or <8 x i64> %broadcast.splat113, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %257 = trunc <8 x i64> %256 to <8 x i32>
  %258 = icmp sgt <8 x i32> %broadcast.splat115, %257
  %259 = extractelement <8 x i64> %256, i32 0
  %260 = shl i64 %259, 32
  %261 = ashr exact i64 %260, 32
  %262 = getelementptr inbounds float, float* %0, i64 %261
  %263 = bitcast float* %262 to <8 x float>*
  %wide.masked.load116 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %263, i32 4, <8 x i1> %258, <8 x float> undef), !tbaa !12, !alias.scope !34, !noalias !37
  %264 = extractelement <8 x i32> %257, i32 0
  %265 = add nsw i32 %mul.i.3, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %1, i64 %266
  %268 = bitcast float* %267 to <8 x float>*
  %wide.masked.load117 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %268, i32 4, <8 x i1> %258, <8 x float> undef), !tbaa !12, !alias.scope !37
  %269 = fsub <8 x float> %wide.masked.load117, %wide.masked.load116
  %270 = bitcast float* %267 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %269, <8 x float>* %270, i32 4, <8 x i1> %258), !tbaa !12, !alias.scope !37, !llvm.access.group !21
  %271 = or <8 x i64> %broadcast.splat113, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %272 = trunc <8 x i64> %271 to <8 x i32>
  %273 = icmp sgt <8 x i32> %broadcast.splat115, %272
  %274 = extractelement <8 x i64> %271, i32 0
  %275 = shl i64 %274, 32
  %276 = ashr exact i64 %275, 32
  %277 = getelementptr inbounds float, float* %0, i64 %276
  %278 = bitcast float* %277 to <8 x float>*
  %wide.masked.load116.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %278, i32 4, <8 x i1> %273, <8 x float> undef), !tbaa !12, !alias.scope !34, !noalias !37
  %279 = extractelement <8 x i32> %272, i32 0
  %280 = add nsw i32 %mul.i.3, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds float, float* %1, i64 %281
  %283 = bitcast float* %282 to <8 x float>*
  %wide.masked.load117.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %283, i32 4, <8 x i1> %273, <8 x float> undef), !tbaa !12, !alias.scope !37
  %284 = fsub <8 x float> %wide.masked.load117.1, %wide.masked.load116.1
  %285 = bitcast float* %282 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %284, <8 x float>* %285, i32 4, <8 x i1> %273), !tbaa !12, !alias.scope !37, !llvm.access.group !21
  %286 = or <8 x i64> %broadcast.splat113, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %287 = trunc <8 x i64> %286 to <8 x i32>
  %288 = icmp sgt <8 x i32> %broadcast.splat115, %287
  %289 = extractelement <8 x i64> %286, i32 0
  %290 = shl i64 %289, 32
  %291 = ashr exact i64 %290, 32
  %292 = getelementptr inbounds float, float* %0, i64 %291
  %293 = bitcast float* %292 to <8 x float>*
  %wide.masked.load116.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %293, i32 4, <8 x i1> %288, <8 x float> undef), !tbaa !12, !alias.scope !34, !noalias !37
  %294 = extractelement <8 x i32> %287, i32 0
  %295 = add nsw i32 %mul.i.3, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds float, float* %1, i64 %296
  %298 = bitcast float* %297 to <8 x float>*
  %wide.masked.load117.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %298, i32 4, <8 x i1> %288, <8 x float> undef), !tbaa !12, !alias.scope !37
  %299 = fsub <8 x float> %wide.masked.load117.2, %wide.masked.load116.2
  %300 = bitcast float* %297 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %299, <8 x float>* %300, i32 4, <8 x i1> %288), !tbaa !12, !alias.scope !37, !llvm.access.group !21
  %301 = or <8 x i64> %broadcast.splat113, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %302 = trunc <8 x i64> %301 to <8 x i32>
  %303 = icmp sgt <8 x i32> %broadcast.splat115, %302
  %304 = extractelement <8 x i64> %301, i32 0
  %305 = shl i64 %304, 32
  %306 = ashr exact i64 %305, 32
  %307 = getelementptr inbounds float, float* %0, i64 %306
  %308 = bitcast float* %307 to <8 x float>*
  %wide.masked.load116.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %308, i32 4, <8 x i1> %303, <8 x float> undef), !tbaa !12, !alias.scope !34, !noalias !37
  %309 = extractelement <8 x i32> %302, i32 0
  %310 = add nsw i32 %mul.i.3, %309
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds float, float* %1, i64 %311
  %313 = bitcast float* %312 to <8 x float>*
  %wide.masked.load117.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %313, i32 4, <8 x i1> %303, <8 x float> undef), !tbaa !12, !alias.scope !37
  %314 = fsub <8 x float> %wide.masked.load117.3, %wide.masked.load116.3
  %315 = bitcast float* %312 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %314, <8 x float>* %315, i32 4, <8 x i1> %303), !tbaa !12, !alias.scope !37, !llvm.access.group !21
  br label %pregion_for_end.i.3

pregion_for_entry.entry.i.us.3:                   ; preds = %if.end.r_exit.i.us.3.1, %pregion_for_entry.entry.i.us.3.preheader
  %_local_id_x.0.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.us.3.preheader ], [ %641, %if.end.r_exit.i.us.3.1 ]
  %add1.i.i.us.3 = add nuw nsw i64 %_local_id_x.0.us.3, %mul.i.i
  %conv.i.us.3 = trunc i64 %add1.i.i.us.3 to i32
  %cmp4.i.us.3 = icmp slt i32 %conv.i.us.3, %2
  br i1 %cmp4.i.us.3, label %if.then.i.us.3, label %if.end.r_exit.i.us.3

if.then.i.us.3:                                   ; preds = %pregion_for_entry.entry.i.us.3
  %sext.i.us.3 = shl i64 %add1.i.i.us.3, 32
  %idxprom.i.us.3 = ashr exact i64 %sext.i.us.3, 32
  %arrayidx.i.us.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.3
  %316 = load float, float* %arrayidx.i.us.3, align 4, !tbaa !12
  %add.i.us.3 = add nsw i32 %mul.i.3, %conv.i.us.3
  %idxprom6.i.us.3 = sext i32 %add.i.us.3 to i64
  %arrayidx7.i.us.3 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.3
  %317 = load float, float* %arrayidx7.i.us.3, align 4, !tbaa !12
  %sub.i.us.3 = fsub float %317, %316
  store float %sub.i.us.3, float* %arrayidx7.i.us.3, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.3

if.end.r_exit.i.us.3:                             ; preds = %if.then.i.us.3, %pregion_for_entry.entry.i.us.3
  %318 = or i64 %_local_id_x.0.us.3, 1
  %add1.i.i.us.3.1 = add nuw nsw i64 %318, %mul.i.i
  %conv.i.us.3.1 = trunc i64 %add1.i.i.us.3.1 to i32
  %cmp4.i.us.3.1 = icmp slt i32 %conv.i.us.3.1, %2
  br i1 %cmp4.i.us.3.1, label %if.then.i.us.3.1, label %if.end.r_exit.i.us.3.1

pregion_for_end.i.3.loopexit:                     ; preds = %if.end.r_exit.i.us.3.1
  br label %pregion_for_end.i.3

pregion_for_end.i.3:                              ; preds = %pregion_for_end.i.3.loopexit, %vector.ph105, %pregion_for_end.i.2
  %319 = trunc i64 %mul3.i.i to i32
  %conv2.i.4 = or i32 %319, 4
  %cmp.i.4 = icmp slt i32 %conv2.i.4, %3
  %mul.i.4 = mul nsw i32 %conv2.i.4, %2
  br i1 %cmp.i.4, label %vector.scevcheck125, label %pregion_for_end.i.4

vector.scevcheck125:                              ; preds = %pregion_for_end.i.3
  %320 = mul i32 %conv2.i.4, %2
  %321 = trunc i64 %5 to i32
  %322 = shl i32 %321, 5
  %323 = add i32 %320, %322
  %324 = icmp sgt i32 %323, 2147483616
  br i1 %324, label %pregion_for_entry.entry.i.us.4.preheader, label %vector.memcheck139

pregion_for_entry.entry.i.us.4.preheader:         ; preds = %vector.memcheck139, %vector.scevcheck125
  br label %pregion_for_entry.entry.i.us.4

vector.memcheck139:                               ; preds = %vector.scevcheck125
  %325 = trunc i64 %5 to i32
  %326 = shl i32 %325, 5
  %327 = sext i32 %326 to i64
  %scevgep127 = getelementptr float, float* %0, i64 %327
  %328 = add nsw i64 %327, 32
  %scevgep129 = getelementptr float, float* %0, i64 %328
  %329 = mul i32 %conv2.i.4, %2
  %330 = add i32 %329, %326
  %331 = sext i32 %330 to i64
  %scevgep131 = getelementptr float, float* %1, i64 %331
  %332 = add nsw i64 %331, 32
  %scevgep133 = getelementptr float, float* %1, i64 %332
  %bound0135 = icmp ult float* %scevgep127, %scevgep133
  %bound1136 = icmp ult float* %scevgep131, %scevgep129
  %found.conflict137 = and i1 %bound0135, %bound1136
  br i1 %found.conflict137, label %pregion_for_entry.entry.i.us.4.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck139
  %broadcast.splatinsert147 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat148 = shufflevector <8 x i64> %broadcast.splatinsert147, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <8 x i32> undef, i32 %2, i32 0
  %broadcast.splat150 = shufflevector <8 x i32> %broadcast.splatinsert149, <8 x i32> undef, <8 x i32> zeroinitializer
  %333 = or <8 x i64> %broadcast.splat148, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %334 = trunc <8 x i64> %333 to <8 x i32>
  %335 = icmp sgt <8 x i32> %broadcast.splat150, %334
  %336 = extractelement <8 x i64> %333, i32 0
  %337 = shl i64 %336, 32
  %338 = ashr exact i64 %337, 32
  %339 = getelementptr inbounds float, float* %0, i64 %338
  %340 = bitcast float* %339 to <8 x float>*
  %wide.masked.load151 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %340, i32 4, <8 x i1> %335, <8 x float> undef), !tbaa !12, !alias.scope !39, !noalias !42
  %341 = extractelement <8 x i32> %334, i32 0
  %342 = add nsw i32 %mul.i.4, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds float, float* %1, i64 %343
  %345 = bitcast float* %344 to <8 x float>*
  %wide.masked.load152 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %345, i32 4, <8 x i1> %335, <8 x float> undef), !tbaa !12, !alias.scope !42
  %346 = fsub <8 x float> %wide.masked.load152, %wide.masked.load151
  %347 = bitcast float* %344 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %346, <8 x float>* %347, i32 4, <8 x i1> %335), !tbaa !12, !alias.scope !42, !llvm.access.group !21
  %348 = or <8 x i64> %broadcast.splat148, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %349 = trunc <8 x i64> %348 to <8 x i32>
  %350 = icmp sgt <8 x i32> %broadcast.splat150, %349
  %351 = extractelement <8 x i64> %348, i32 0
  %352 = shl i64 %351, 32
  %353 = ashr exact i64 %352, 32
  %354 = getelementptr inbounds float, float* %0, i64 %353
  %355 = bitcast float* %354 to <8 x float>*
  %wide.masked.load151.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %355, i32 4, <8 x i1> %350, <8 x float> undef), !tbaa !12, !alias.scope !39, !noalias !42
  %356 = extractelement <8 x i32> %349, i32 0
  %357 = add nsw i32 %mul.i.4, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds float, float* %1, i64 %358
  %360 = bitcast float* %359 to <8 x float>*
  %wide.masked.load152.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %360, i32 4, <8 x i1> %350, <8 x float> undef), !tbaa !12, !alias.scope !42
  %361 = fsub <8 x float> %wide.masked.load152.1, %wide.masked.load151.1
  %362 = bitcast float* %359 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %361, <8 x float>* %362, i32 4, <8 x i1> %350), !tbaa !12, !alias.scope !42, !llvm.access.group !21
  %363 = or <8 x i64> %broadcast.splat148, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %364 = trunc <8 x i64> %363 to <8 x i32>
  %365 = icmp sgt <8 x i32> %broadcast.splat150, %364
  %366 = extractelement <8 x i64> %363, i32 0
  %367 = shl i64 %366, 32
  %368 = ashr exact i64 %367, 32
  %369 = getelementptr inbounds float, float* %0, i64 %368
  %370 = bitcast float* %369 to <8 x float>*
  %wide.masked.load151.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %370, i32 4, <8 x i1> %365, <8 x float> undef), !tbaa !12, !alias.scope !39, !noalias !42
  %371 = extractelement <8 x i32> %364, i32 0
  %372 = add nsw i32 %mul.i.4, %371
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds float, float* %1, i64 %373
  %375 = bitcast float* %374 to <8 x float>*
  %wide.masked.load152.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %375, i32 4, <8 x i1> %365, <8 x float> undef), !tbaa !12, !alias.scope !42
  %376 = fsub <8 x float> %wide.masked.load152.2, %wide.masked.load151.2
  %377 = bitcast float* %374 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %376, <8 x float>* %377, i32 4, <8 x i1> %365), !tbaa !12, !alias.scope !42, !llvm.access.group !21
  %378 = or <8 x i64> %broadcast.splat148, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %379 = trunc <8 x i64> %378 to <8 x i32>
  %380 = icmp sgt <8 x i32> %broadcast.splat150, %379
  %381 = extractelement <8 x i64> %378, i32 0
  %382 = shl i64 %381, 32
  %383 = ashr exact i64 %382, 32
  %384 = getelementptr inbounds float, float* %0, i64 %383
  %385 = bitcast float* %384 to <8 x float>*
  %wide.masked.load151.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %385, i32 4, <8 x i1> %380, <8 x float> undef), !tbaa !12, !alias.scope !39, !noalias !42
  %386 = extractelement <8 x i32> %379, i32 0
  %387 = add nsw i32 %mul.i.4, %386
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds float, float* %1, i64 %388
  %390 = bitcast float* %389 to <8 x float>*
  %wide.masked.load152.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %390, i32 4, <8 x i1> %380, <8 x float> undef), !tbaa !12, !alias.scope !42
  %391 = fsub <8 x float> %wide.masked.load152.3, %wide.masked.load151.3
  %392 = bitcast float* %389 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %391, <8 x float>* %392, i32 4, <8 x i1> %380), !tbaa !12, !alias.scope !42, !llvm.access.group !21
  br label %pregion_for_end.i.4

pregion_for_entry.entry.i.us.4:                   ; preds = %if.end.r_exit.i.us.4.1, %pregion_for_entry.entry.i.us.4.preheader
  %_local_id_x.0.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.us.4.preheader ], [ %638, %if.end.r_exit.i.us.4.1 ]
  %add1.i.i.us.4 = add nuw nsw i64 %_local_id_x.0.us.4, %mul.i.i
  %conv.i.us.4 = trunc i64 %add1.i.i.us.4 to i32
  %cmp4.i.us.4 = icmp slt i32 %conv.i.us.4, %2
  br i1 %cmp4.i.us.4, label %if.then.i.us.4, label %if.end.r_exit.i.us.4

if.then.i.us.4:                                   ; preds = %pregion_for_entry.entry.i.us.4
  %sext.i.us.4 = shl i64 %add1.i.i.us.4, 32
  %idxprom.i.us.4 = ashr exact i64 %sext.i.us.4, 32
  %arrayidx.i.us.4 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.4
  %393 = load float, float* %arrayidx.i.us.4, align 4, !tbaa !12
  %add.i.us.4 = add nsw i32 %mul.i.4, %conv.i.us.4
  %idxprom6.i.us.4 = sext i32 %add.i.us.4 to i64
  %arrayidx7.i.us.4 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.4
  %394 = load float, float* %arrayidx7.i.us.4, align 4, !tbaa !12
  %sub.i.us.4 = fsub float %394, %393
  store float %sub.i.us.4, float* %arrayidx7.i.us.4, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.4

if.end.r_exit.i.us.4:                             ; preds = %if.then.i.us.4, %pregion_for_entry.entry.i.us.4
  %395 = or i64 %_local_id_x.0.us.4, 1
  %add1.i.i.us.4.1 = add nuw nsw i64 %395, %mul.i.i
  %conv.i.us.4.1 = trunc i64 %add1.i.i.us.4.1 to i32
  %cmp4.i.us.4.1 = icmp slt i32 %conv.i.us.4.1, %2
  br i1 %cmp4.i.us.4.1, label %if.then.i.us.4.1, label %if.end.r_exit.i.us.4.1

pregion_for_end.i.4.loopexit:                     ; preds = %if.end.r_exit.i.us.4.1
  br label %pregion_for_end.i.4

pregion_for_end.i.4:                              ; preds = %pregion_for_end.i.4.loopexit, %vector.ph140, %pregion_for_end.i.3
  %396 = trunc i64 %mul3.i.i to i32
  %conv2.i.5 = or i32 %396, 5
  %cmp.i.5 = icmp slt i32 %conv2.i.5, %3
  %mul.i.5 = mul nsw i32 %conv2.i.5, %2
  br i1 %cmp.i.5, label %vector.scevcheck160, label %pregion_for_end.i.5

vector.scevcheck160:                              ; preds = %pregion_for_end.i.4
  %397 = mul i32 %conv2.i.5, %2
  %398 = trunc i64 %5 to i32
  %399 = shl i32 %398, 5
  %400 = add i32 %397, %399
  %401 = icmp sgt i32 %400, 2147483616
  br i1 %401, label %pregion_for_entry.entry.i.us.5.preheader, label %vector.memcheck174

pregion_for_entry.entry.i.us.5.preheader:         ; preds = %vector.memcheck174, %vector.scevcheck160
  br label %pregion_for_entry.entry.i.us.5

vector.memcheck174:                               ; preds = %vector.scevcheck160
  %402 = trunc i64 %5 to i32
  %403 = shl i32 %402, 5
  %404 = sext i32 %403 to i64
  %scevgep162 = getelementptr float, float* %0, i64 %404
  %405 = add nsw i64 %404, 32
  %scevgep164 = getelementptr float, float* %0, i64 %405
  %406 = mul i32 %conv2.i.5, %2
  %407 = add i32 %406, %403
  %408 = sext i32 %407 to i64
  %scevgep166 = getelementptr float, float* %1, i64 %408
  %409 = add nsw i64 %408, 32
  %scevgep168 = getelementptr float, float* %1, i64 %409
  %bound0170 = icmp ult float* %scevgep162, %scevgep168
  %bound1171 = icmp ult float* %scevgep166, %scevgep164
  %found.conflict172 = and i1 %bound0170, %bound1171
  br i1 %found.conflict172, label %pregion_for_entry.entry.i.us.5.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck174
  %broadcast.splatinsert182 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat183 = shufflevector <8 x i64> %broadcast.splatinsert182, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert184 = insertelement <8 x i32> undef, i32 %2, i32 0
  %broadcast.splat185 = shufflevector <8 x i32> %broadcast.splatinsert184, <8 x i32> undef, <8 x i32> zeroinitializer
  %410 = or <8 x i64> %broadcast.splat183, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %411 = trunc <8 x i64> %410 to <8 x i32>
  %412 = icmp sgt <8 x i32> %broadcast.splat185, %411
  %413 = extractelement <8 x i64> %410, i32 0
  %414 = shl i64 %413, 32
  %415 = ashr exact i64 %414, 32
  %416 = getelementptr inbounds float, float* %0, i64 %415
  %417 = bitcast float* %416 to <8 x float>*
  %wide.masked.load186 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %417, i32 4, <8 x i1> %412, <8 x float> undef), !tbaa !12, !alias.scope !44, !noalias !47
  %418 = extractelement <8 x i32> %411, i32 0
  %419 = add nsw i32 %mul.i.5, %418
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds float, float* %1, i64 %420
  %422 = bitcast float* %421 to <8 x float>*
  %wide.masked.load187 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %422, i32 4, <8 x i1> %412, <8 x float> undef), !tbaa !12, !alias.scope !47
  %423 = fsub <8 x float> %wide.masked.load187, %wide.masked.load186
  %424 = bitcast float* %421 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %423, <8 x float>* %424, i32 4, <8 x i1> %412), !tbaa !12, !alias.scope !47, !llvm.access.group !21
  %425 = or <8 x i64> %broadcast.splat183, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %426 = trunc <8 x i64> %425 to <8 x i32>
  %427 = icmp sgt <8 x i32> %broadcast.splat185, %426
  %428 = extractelement <8 x i64> %425, i32 0
  %429 = shl i64 %428, 32
  %430 = ashr exact i64 %429, 32
  %431 = getelementptr inbounds float, float* %0, i64 %430
  %432 = bitcast float* %431 to <8 x float>*
  %wide.masked.load186.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %432, i32 4, <8 x i1> %427, <8 x float> undef), !tbaa !12, !alias.scope !44, !noalias !47
  %433 = extractelement <8 x i32> %426, i32 0
  %434 = add nsw i32 %mul.i.5, %433
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds float, float* %1, i64 %435
  %437 = bitcast float* %436 to <8 x float>*
  %wide.masked.load187.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %437, i32 4, <8 x i1> %427, <8 x float> undef), !tbaa !12, !alias.scope !47
  %438 = fsub <8 x float> %wide.masked.load187.1, %wide.masked.load186.1
  %439 = bitcast float* %436 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %438, <8 x float>* %439, i32 4, <8 x i1> %427), !tbaa !12, !alias.scope !47, !llvm.access.group !21
  %440 = or <8 x i64> %broadcast.splat183, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %441 = trunc <8 x i64> %440 to <8 x i32>
  %442 = icmp sgt <8 x i32> %broadcast.splat185, %441
  %443 = extractelement <8 x i64> %440, i32 0
  %444 = shl i64 %443, 32
  %445 = ashr exact i64 %444, 32
  %446 = getelementptr inbounds float, float* %0, i64 %445
  %447 = bitcast float* %446 to <8 x float>*
  %wide.masked.load186.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %447, i32 4, <8 x i1> %442, <8 x float> undef), !tbaa !12, !alias.scope !44, !noalias !47
  %448 = extractelement <8 x i32> %441, i32 0
  %449 = add nsw i32 %mul.i.5, %448
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds float, float* %1, i64 %450
  %452 = bitcast float* %451 to <8 x float>*
  %wide.masked.load187.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %452, i32 4, <8 x i1> %442, <8 x float> undef), !tbaa !12, !alias.scope !47
  %453 = fsub <8 x float> %wide.masked.load187.2, %wide.masked.load186.2
  %454 = bitcast float* %451 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %453, <8 x float>* %454, i32 4, <8 x i1> %442), !tbaa !12, !alias.scope !47, !llvm.access.group !21
  %455 = or <8 x i64> %broadcast.splat183, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %456 = trunc <8 x i64> %455 to <8 x i32>
  %457 = icmp sgt <8 x i32> %broadcast.splat185, %456
  %458 = extractelement <8 x i64> %455, i32 0
  %459 = shl i64 %458, 32
  %460 = ashr exact i64 %459, 32
  %461 = getelementptr inbounds float, float* %0, i64 %460
  %462 = bitcast float* %461 to <8 x float>*
  %wide.masked.load186.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %462, i32 4, <8 x i1> %457, <8 x float> undef), !tbaa !12, !alias.scope !44, !noalias !47
  %463 = extractelement <8 x i32> %456, i32 0
  %464 = add nsw i32 %mul.i.5, %463
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds float, float* %1, i64 %465
  %467 = bitcast float* %466 to <8 x float>*
  %wide.masked.load187.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %467, i32 4, <8 x i1> %457, <8 x float> undef), !tbaa !12, !alias.scope !47
  %468 = fsub <8 x float> %wide.masked.load187.3, %wide.masked.load186.3
  %469 = bitcast float* %466 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %468, <8 x float>* %469, i32 4, <8 x i1> %457), !tbaa !12, !alias.scope !47, !llvm.access.group !21
  br label %pregion_for_end.i.5

pregion_for_entry.entry.i.us.5:                   ; preds = %if.end.r_exit.i.us.5.1, %pregion_for_entry.entry.i.us.5.preheader
  %_local_id_x.0.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.us.5.preheader ], [ %635, %if.end.r_exit.i.us.5.1 ]
  %add1.i.i.us.5 = add nuw nsw i64 %_local_id_x.0.us.5, %mul.i.i
  %conv.i.us.5 = trunc i64 %add1.i.i.us.5 to i32
  %cmp4.i.us.5 = icmp slt i32 %conv.i.us.5, %2
  br i1 %cmp4.i.us.5, label %if.then.i.us.5, label %if.end.r_exit.i.us.5

if.then.i.us.5:                                   ; preds = %pregion_for_entry.entry.i.us.5
  %sext.i.us.5 = shl i64 %add1.i.i.us.5, 32
  %idxprom.i.us.5 = ashr exact i64 %sext.i.us.5, 32
  %arrayidx.i.us.5 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.5
  %470 = load float, float* %arrayidx.i.us.5, align 4, !tbaa !12
  %add.i.us.5 = add nsw i32 %mul.i.5, %conv.i.us.5
  %idxprom6.i.us.5 = sext i32 %add.i.us.5 to i64
  %arrayidx7.i.us.5 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.5
  %471 = load float, float* %arrayidx7.i.us.5, align 4, !tbaa !12
  %sub.i.us.5 = fsub float %471, %470
  store float %sub.i.us.5, float* %arrayidx7.i.us.5, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.5

if.end.r_exit.i.us.5:                             ; preds = %if.then.i.us.5, %pregion_for_entry.entry.i.us.5
  %472 = or i64 %_local_id_x.0.us.5, 1
  %add1.i.i.us.5.1 = add nuw nsw i64 %472, %mul.i.i
  %conv.i.us.5.1 = trunc i64 %add1.i.i.us.5.1 to i32
  %cmp4.i.us.5.1 = icmp slt i32 %conv.i.us.5.1, %2
  br i1 %cmp4.i.us.5.1, label %if.then.i.us.5.1, label %if.end.r_exit.i.us.5.1

pregion_for_end.i.5.loopexit:                     ; preds = %if.end.r_exit.i.us.5.1
  br label %pregion_for_end.i.5

pregion_for_end.i.5:                              ; preds = %pregion_for_end.i.5.loopexit, %vector.ph175, %pregion_for_end.i.4
  %473 = trunc i64 %mul3.i.i to i32
  %conv2.i.6 = or i32 %473, 6
  %cmp.i.6 = icmp slt i32 %conv2.i.6, %3
  %mul.i.6 = mul nsw i32 %conv2.i.6, %2
  br i1 %cmp.i.6, label %vector.scevcheck195, label %pregion_for_end.i.6

vector.scevcheck195:                              ; preds = %pregion_for_end.i.5
  %474 = mul i32 %conv2.i.6, %2
  %475 = trunc i64 %5 to i32
  %476 = shl i32 %475, 5
  %477 = add i32 %474, %476
  %478 = icmp sgt i32 %477, 2147483616
  br i1 %478, label %pregion_for_entry.entry.i.us.6.preheader, label %vector.memcheck209

pregion_for_entry.entry.i.us.6.preheader:         ; preds = %vector.memcheck209, %vector.scevcheck195
  br label %pregion_for_entry.entry.i.us.6

vector.memcheck209:                               ; preds = %vector.scevcheck195
  %479 = trunc i64 %5 to i32
  %480 = shl i32 %479, 5
  %481 = sext i32 %480 to i64
  %scevgep197 = getelementptr float, float* %0, i64 %481
  %482 = add nsw i64 %481, 32
  %scevgep199 = getelementptr float, float* %0, i64 %482
  %483 = mul i32 %conv2.i.6, %2
  %484 = add i32 %483, %480
  %485 = sext i32 %484 to i64
  %scevgep201 = getelementptr float, float* %1, i64 %485
  %486 = add nsw i64 %485, 32
  %scevgep203 = getelementptr float, float* %1, i64 %486
  %bound0205 = icmp ult float* %scevgep197, %scevgep203
  %bound1206 = icmp ult float* %scevgep201, %scevgep199
  %found.conflict207 = and i1 %bound0205, %bound1206
  br i1 %found.conflict207, label %pregion_for_entry.entry.i.us.6.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %vector.memcheck209
  %broadcast.splatinsert217 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat218 = shufflevector <8 x i64> %broadcast.splatinsert217, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert219 = insertelement <8 x i32> undef, i32 %2, i32 0
  %broadcast.splat220 = shufflevector <8 x i32> %broadcast.splatinsert219, <8 x i32> undef, <8 x i32> zeroinitializer
  %487 = or <8 x i64> %broadcast.splat218, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %488 = trunc <8 x i64> %487 to <8 x i32>
  %489 = icmp sgt <8 x i32> %broadcast.splat220, %488
  %490 = extractelement <8 x i64> %487, i32 0
  %491 = shl i64 %490, 32
  %492 = ashr exact i64 %491, 32
  %493 = getelementptr inbounds float, float* %0, i64 %492
  %494 = bitcast float* %493 to <8 x float>*
  %wide.masked.load221 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %494, i32 4, <8 x i1> %489, <8 x float> undef), !tbaa !12, !alias.scope !49, !noalias !52
  %495 = extractelement <8 x i32> %488, i32 0
  %496 = add nsw i32 %mul.i.6, %495
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds float, float* %1, i64 %497
  %499 = bitcast float* %498 to <8 x float>*
  %wide.masked.load222 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %499, i32 4, <8 x i1> %489, <8 x float> undef), !tbaa !12, !alias.scope !52
  %500 = fsub <8 x float> %wide.masked.load222, %wide.masked.load221
  %501 = bitcast float* %498 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %500, <8 x float>* %501, i32 4, <8 x i1> %489), !tbaa !12, !alias.scope !52, !llvm.access.group !21
  %502 = or <8 x i64> %broadcast.splat218, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %503 = trunc <8 x i64> %502 to <8 x i32>
  %504 = icmp sgt <8 x i32> %broadcast.splat220, %503
  %505 = extractelement <8 x i64> %502, i32 0
  %506 = shl i64 %505, 32
  %507 = ashr exact i64 %506, 32
  %508 = getelementptr inbounds float, float* %0, i64 %507
  %509 = bitcast float* %508 to <8 x float>*
  %wide.masked.load221.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %509, i32 4, <8 x i1> %504, <8 x float> undef), !tbaa !12, !alias.scope !49, !noalias !52
  %510 = extractelement <8 x i32> %503, i32 0
  %511 = add nsw i32 %mul.i.6, %510
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds float, float* %1, i64 %512
  %514 = bitcast float* %513 to <8 x float>*
  %wide.masked.load222.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %514, i32 4, <8 x i1> %504, <8 x float> undef), !tbaa !12, !alias.scope !52
  %515 = fsub <8 x float> %wide.masked.load222.1, %wide.masked.load221.1
  %516 = bitcast float* %513 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %515, <8 x float>* %516, i32 4, <8 x i1> %504), !tbaa !12, !alias.scope !52, !llvm.access.group !21
  %517 = or <8 x i64> %broadcast.splat218, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %518 = trunc <8 x i64> %517 to <8 x i32>
  %519 = icmp sgt <8 x i32> %broadcast.splat220, %518
  %520 = extractelement <8 x i64> %517, i32 0
  %521 = shl i64 %520, 32
  %522 = ashr exact i64 %521, 32
  %523 = getelementptr inbounds float, float* %0, i64 %522
  %524 = bitcast float* %523 to <8 x float>*
  %wide.masked.load221.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %524, i32 4, <8 x i1> %519, <8 x float> undef), !tbaa !12, !alias.scope !49, !noalias !52
  %525 = extractelement <8 x i32> %518, i32 0
  %526 = add nsw i32 %mul.i.6, %525
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds float, float* %1, i64 %527
  %529 = bitcast float* %528 to <8 x float>*
  %wide.masked.load222.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %529, i32 4, <8 x i1> %519, <8 x float> undef), !tbaa !12, !alias.scope !52
  %530 = fsub <8 x float> %wide.masked.load222.2, %wide.masked.load221.2
  %531 = bitcast float* %528 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %530, <8 x float>* %531, i32 4, <8 x i1> %519), !tbaa !12, !alias.scope !52, !llvm.access.group !21
  %532 = or <8 x i64> %broadcast.splat218, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %533 = trunc <8 x i64> %532 to <8 x i32>
  %534 = icmp sgt <8 x i32> %broadcast.splat220, %533
  %535 = extractelement <8 x i64> %532, i32 0
  %536 = shl i64 %535, 32
  %537 = ashr exact i64 %536, 32
  %538 = getelementptr inbounds float, float* %0, i64 %537
  %539 = bitcast float* %538 to <8 x float>*
  %wide.masked.load221.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %539, i32 4, <8 x i1> %534, <8 x float> undef), !tbaa !12, !alias.scope !49, !noalias !52
  %540 = extractelement <8 x i32> %533, i32 0
  %541 = add nsw i32 %mul.i.6, %540
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds float, float* %1, i64 %542
  %544 = bitcast float* %543 to <8 x float>*
  %wide.masked.load222.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %544, i32 4, <8 x i1> %534, <8 x float> undef), !tbaa !12, !alias.scope !52
  %545 = fsub <8 x float> %wide.masked.load222.3, %wide.masked.load221.3
  %546 = bitcast float* %543 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %545, <8 x float>* %546, i32 4, <8 x i1> %534), !tbaa !12, !alias.scope !52, !llvm.access.group !21
  br label %pregion_for_end.i.6

pregion_for_entry.entry.i.us.6:                   ; preds = %if.end.r_exit.i.us.6.1, %pregion_for_entry.entry.i.us.6.preheader
  %_local_id_x.0.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.us.6.preheader ], [ %632, %if.end.r_exit.i.us.6.1 ]
  %add1.i.i.us.6 = add nuw nsw i64 %_local_id_x.0.us.6, %mul.i.i
  %conv.i.us.6 = trunc i64 %add1.i.i.us.6 to i32
  %cmp4.i.us.6 = icmp slt i32 %conv.i.us.6, %2
  br i1 %cmp4.i.us.6, label %if.then.i.us.6, label %if.end.r_exit.i.us.6

if.then.i.us.6:                                   ; preds = %pregion_for_entry.entry.i.us.6
  %sext.i.us.6 = shl i64 %add1.i.i.us.6, 32
  %idxprom.i.us.6 = ashr exact i64 %sext.i.us.6, 32
  %arrayidx.i.us.6 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.6
  %547 = load float, float* %arrayidx.i.us.6, align 4, !tbaa !12
  %add.i.us.6 = add nsw i32 %mul.i.6, %conv.i.us.6
  %idxprom6.i.us.6 = sext i32 %add.i.us.6 to i64
  %arrayidx7.i.us.6 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.6
  %548 = load float, float* %arrayidx7.i.us.6, align 4, !tbaa !12
  %sub.i.us.6 = fsub float %548, %547
  store float %sub.i.us.6, float* %arrayidx7.i.us.6, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.6

if.end.r_exit.i.us.6:                             ; preds = %if.then.i.us.6, %pregion_for_entry.entry.i.us.6
  %549 = or i64 %_local_id_x.0.us.6, 1
  %add1.i.i.us.6.1 = add nuw nsw i64 %549, %mul.i.i
  %conv.i.us.6.1 = trunc i64 %add1.i.i.us.6.1 to i32
  %cmp4.i.us.6.1 = icmp slt i32 %conv.i.us.6.1, %2
  br i1 %cmp4.i.us.6.1, label %if.then.i.us.6.1, label %if.end.r_exit.i.us.6.1

pregion_for_end.i.6.loopexit:                     ; preds = %if.end.r_exit.i.us.6.1
  br label %pregion_for_end.i.6

pregion_for_end.i.6:                              ; preds = %pregion_for_end.i.6.loopexit, %vector.ph210, %pregion_for_end.i.5
  %550 = trunc i64 %mul3.i.i to i32
  %conv2.i.7 = or i32 %550, 7
  %cmp.i.7 = icmp slt i32 %conv2.i.7, %3
  %mul.i.7 = mul nsw i32 %conv2.i.7, %2
  br i1 %cmp.i.7, label %vector.scevcheck230, label %pregion_for_end.i.7

vector.scevcheck230:                              ; preds = %pregion_for_end.i.6
  %551 = mul i32 %conv2.i.7, %2
  %552 = trunc i64 %5 to i32
  %553 = shl i32 %552, 5
  %554 = add i32 %551, %553
  %555 = icmp sgt i32 %554, 2147483616
  br i1 %555, label %pregion_for_entry.entry.i.us.7.preheader, label %vector.memcheck244

pregion_for_entry.entry.i.us.7.preheader:         ; preds = %vector.memcheck244, %vector.scevcheck230
  br label %pregion_for_entry.entry.i.us.7

vector.memcheck244:                               ; preds = %vector.scevcheck230
  %556 = trunc i64 %5 to i32
  %557 = shl i32 %556, 5
  %558 = sext i32 %557 to i64
  %scevgep232 = getelementptr float, float* %0, i64 %558
  %559 = add nsw i64 %558, 32
  %scevgep234 = getelementptr float, float* %0, i64 %559
  %560 = mul i32 %conv2.i.7, %2
  %561 = add i32 %560, %557
  %562 = sext i32 %561 to i64
  %scevgep236 = getelementptr float, float* %1, i64 %562
  %563 = add nsw i64 %562, 32
  %scevgep238 = getelementptr float, float* %1, i64 %563
  %bound0240 = icmp ult float* %scevgep232, %scevgep238
  %bound1241 = icmp ult float* %scevgep236, %scevgep234
  %found.conflict242 = and i1 %bound0240, %bound1241
  br i1 %found.conflict242, label %pregion_for_entry.entry.i.us.7.preheader, label %vector.ph245

vector.ph245:                                     ; preds = %vector.memcheck244
  %broadcast.splatinsert252 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat253 = shufflevector <8 x i64> %broadcast.splatinsert252, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert254 = insertelement <8 x i32> undef, i32 %2, i32 0
  %broadcast.splat255 = shufflevector <8 x i32> %broadcast.splatinsert254, <8 x i32> undef, <8 x i32> zeroinitializer
  %564 = or <8 x i64> %broadcast.splat253, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %565 = trunc <8 x i64> %564 to <8 x i32>
  %566 = icmp sgt <8 x i32> %broadcast.splat255, %565
  %567 = extractelement <8 x i64> %564, i32 0
  %568 = shl i64 %567, 32
  %569 = ashr exact i64 %568, 32
  %570 = getelementptr inbounds float, float* %0, i64 %569
  %571 = bitcast float* %570 to <8 x float>*
  %wide.masked.load256 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %571, i32 4, <8 x i1> %566, <8 x float> undef), !tbaa !12, !alias.scope !54, !noalias !57
  %572 = extractelement <8 x i32> %565, i32 0
  %573 = add nsw i32 %mul.i.7, %572
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds float, float* %1, i64 %574
  %576 = bitcast float* %575 to <8 x float>*
  %wide.masked.load257 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %576, i32 4, <8 x i1> %566, <8 x float> undef), !tbaa !12, !alias.scope !57
  %577 = fsub <8 x float> %wide.masked.load257, %wide.masked.load256
  %578 = bitcast float* %575 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %577, <8 x float>* %578, i32 4, <8 x i1> %566), !tbaa !12, !alias.scope !57, !llvm.access.group !21
  %579 = or <8 x i64> %broadcast.splat253, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %580 = trunc <8 x i64> %579 to <8 x i32>
  %581 = icmp sgt <8 x i32> %broadcast.splat255, %580
  %582 = extractelement <8 x i64> %579, i32 0
  %583 = shl i64 %582, 32
  %584 = ashr exact i64 %583, 32
  %585 = getelementptr inbounds float, float* %0, i64 %584
  %586 = bitcast float* %585 to <8 x float>*
  %wide.masked.load256.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %586, i32 4, <8 x i1> %581, <8 x float> undef), !tbaa !12, !alias.scope !54, !noalias !57
  %587 = extractelement <8 x i32> %580, i32 0
  %588 = add nsw i32 %mul.i.7, %587
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds float, float* %1, i64 %589
  %591 = bitcast float* %590 to <8 x float>*
  %wide.masked.load257.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %591, i32 4, <8 x i1> %581, <8 x float> undef), !tbaa !12, !alias.scope !57
  %592 = fsub <8 x float> %wide.masked.load257.1, %wide.masked.load256.1
  %593 = bitcast float* %590 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %592, <8 x float>* %593, i32 4, <8 x i1> %581), !tbaa !12, !alias.scope !57, !llvm.access.group !21
  %594 = or <8 x i64> %broadcast.splat253, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %595 = trunc <8 x i64> %594 to <8 x i32>
  %596 = icmp sgt <8 x i32> %broadcast.splat255, %595
  %597 = extractelement <8 x i64> %594, i32 0
  %598 = shl i64 %597, 32
  %599 = ashr exact i64 %598, 32
  %600 = getelementptr inbounds float, float* %0, i64 %599
  %601 = bitcast float* %600 to <8 x float>*
  %wide.masked.load256.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %601, i32 4, <8 x i1> %596, <8 x float> undef), !tbaa !12, !alias.scope !54, !noalias !57
  %602 = extractelement <8 x i32> %595, i32 0
  %603 = add nsw i32 %mul.i.7, %602
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds float, float* %1, i64 %604
  %606 = bitcast float* %605 to <8 x float>*
  %wide.masked.load257.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %606, i32 4, <8 x i1> %596, <8 x float> undef), !tbaa !12, !alias.scope !57
  %607 = fsub <8 x float> %wide.masked.load257.2, %wide.masked.load256.2
  %608 = bitcast float* %605 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %607, <8 x float>* %608, i32 4, <8 x i1> %596), !tbaa !12, !alias.scope !57, !llvm.access.group !21
  %609 = or <8 x i64> %broadcast.splat253, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %610 = trunc <8 x i64> %609 to <8 x i32>
  %611 = icmp sgt <8 x i32> %broadcast.splat255, %610
  %612 = extractelement <8 x i64> %609, i32 0
  %613 = shl i64 %612, 32
  %614 = ashr exact i64 %613, 32
  %615 = getelementptr inbounds float, float* %0, i64 %614
  %616 = bitcast float* %615 to <8 x float>*
  %wide.masked.load256.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %616, i32 4, <8 x i1> %611, <8 x float> undef), !tbaa !12, !alias.scope !54, !noalias !57
  %617 = extractelement <8 x i32> %610, i32 0
  %618 = add nsw i32 %mul.i.7, %617
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds float, float* %1, i64 %619
  %621 = bitcast float* %620 to <8 x float>*
  %wide.masked.load257.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %621, i32 4, <8 x i1> %611, <8 x float> undef), !tbaa !12, !alias.scope !57
  %622 = fsub <8 x float> %wide.masked.load257.3, %wide.masked.load256.3
  %623 = bitcast float* %620 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %622, <8 x float>* %623, i32 4, <8 x i1> %611), !tbaa !12, !alias.scope !57, !llvm.access.group !21
  br label %pregion_for_end.i.7

pregion_for_entry.entry.i.us.7:                   ; preds = %if.end.r_exit.i.us.7.1, %pregion_for_entry.entry.i.us.7.preheader
  %_local_id_x.0.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.us.7.preheader ], [ %629, %if.end.r_exit.i.us.7.1 ]
  %add1.i.i.us.7 = add nuw nsw i64 %_local_id_x.0.us.7, %mul.i.i
  %conv.i.us.7 = trunc i64 %add1.i.i.us.7 to i32
  %cmp4.i.us.7 = icmp slt i32 %conv.i.us.7, %2
  br i1 %cmp4.i.us.7, label %if.then.i.us.7, label %if.end.r_exit.i.us.7

if.then.i.us.7:                                   ; preds = %pregion_for_entry.entry.i.us.7
  %sext.i.us.7 = shl i64 %add1.i.i.us.7, 32
  %idxprom.i.us.7 = ashr exact i64 %sext.i.us.7, 32
  %arrayidx.i.us.7 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.7
  %624 = load float, float* %arrayidx.i.us.7, align 4, !tbaa !12
  %add.i.us.7 = add nsw i32 %mul.i.7, %conv.i.us.7
  %idxprom6.i.us.7 = sext i32 %add.i.us.7 to i64
  %arrayidx7.i.us.7 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.7
  %625 = load float, float* %arrayidx7.i.us.7, align 4, !tbaa !12
  %sub.i.us.7 = fsub float %625, %624
  store float %sub.i.us.7, float* %arrayidx7.i.us.7, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.7

if.end.r_exit.i.us.7:                             ; preds = %if.then.i.us.7, %pregion_for_entry.entry.i.us.7
  %626 = or i64 %_local_id_x.0.us.7, 1
  %add1.i.i.us.7.1 = add nuw nsw i64 %626, %mul.i.i
  %conv.i.us.7.1 = trunc i64 %add1.i.i.us.7.1 to i32
  %cmp4.i.us.7.1 = icmp slt i32 %conv.i.us.7.1, %2
  br i1 %cmp4.i.us.7.1, label %if.then.i.us.7.1, label %if.end.r_exit.i.us.7.1

pregion_for_end.i.7.loopexit:                     ; preds = %if.end.r_exit.i.us.7.1
  br label %pregion_for_end.i.7

pregion_for_end.i.7:                              ; preds = %pregion_for_end.i.7.loopexit, %vector.ph245, %pregion_for_end.i.6
  ret void

if.then.i.us.7.1:                                 ; preds = %if.end.r_exit.i.us.7
  %sext.i.us.7.1 = shl i64 %add1.i.i.us.7.1, 32
  %idxprom.i.us.7.1 = ashr exact i64 %sext.i.us.7.1, 32
  %arrayidx.i.us.7.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.7.1
  %627 = load float, float* %arrayidx.i.us.7.1, align 4, !tbaa !12
  %add.i.us.7.1 = add nsw i32 %mul.i.7, %conv.i.us.7.1
  %idxprom6.i.us.7.1 = sext i32 %add.i.us.7.1 to i64
  %arrayidx7.i.us.7.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.7.1
  %628 = load float, float* %arrayidx7.i.us.7.1, align 4, !tbaa !12
  %sub.i.us.7.1 = fsub float %628, %627
  store float %sub.i.us.7.1, float* %arrayidx7.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.7.1

if.end.r_exit.i.us.7.1:                           ; preds = %if.then.i.us.7.1, %if.end.r_exit.i.us.7
  %629 = add nuw nsw i64 %_local_id_x.0.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %629, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.7.loopexit, label %pregion_for_entry.entry.i.us.7, !llvm.loop !59

if.then.i.us.6.1:                                 ; preds = %if.end.r_exit.i.us.6
  %sext.i.us.6.1 = shl i64 %add1.i.i.us.6.1, 32
  %idxprom.i.us.6.1 = ashr exact i64 %sext.i.us.6.1, 32
  %arrayidx.i.us.6.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.6.1
  %630 = load float, float* %arrayidx.i.us.6.1, align 4, !tbaa !12
  %add.i.us.6.1 = add nsw i32 %mul.i.6, %conv.i.us.6.1
  %idxprom6.i.us.6.1 = sext i32 %add.i.us.6.1 to i64
  %arrayidx7.i.us.6.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.6.1
  %631 = load float, float* %arrayidx7.i.us.6.1, align 4, !tbaa !12
  %sub.i.us.6.1 = fsub float %631, %630
  store float %sub.i.us.6.1, float* %arrayidx7.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.6.1

if.end.r_exit.i.us.6.1:                           ; preds = %if.then.i.us.6.1, %if.end.r_exit.i.us.6
  %632 = add nuw nsw i64 %_local_id_x.0.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %632, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.6.loopexit, label %pregion_for_entry.entry.i.us.6, !llvm.loop !62

if.then.i.us.5.1:                                 ; preds = %if.end.r_exit.i.us.5
  %sext.i.us.5.1 = shl i64 %add1.i.i.us.5.1, 32
  %idxprom.i.us.5.1 = ashr exact i64 %sext.i.us.5.1, 32
  %arrayidx.i.us.5.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.5.1
  %633 = load float, float* %arrayidx.i.us.5.1, align 4, !tbaa !12
  %add.i.us.5.1 = add nsw i32 %mul.i.5, %conv.i.us.5.1
  %idxprom6.i.us.5.1 = sext i32 %add.i.us.5.1 to i64
  %arrayidx7.i.us.5.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.5.1
  %634 = load float, float* %arrayidx7.i.us.5.1, align 4, !tbaa !12
  %sub.i.us.5.1 = fsub float %634, %633
  store float %sub.i.us.5.1, float* %arrayidx7.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.5.1

if.end.r_exit.i.us.5.1:                           ; preds = %if.then.i.us.5.1, %if.end.r_exit.i.us.5
  %635 = add nuw nsw i64 %_local_id_x.0.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %635, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.5.loopexit, label %pregion_for_entry.entry.i.us.5, !llvm.loop !63

if.then.i.us.4.1:                                 ; preds = %if.end.r_exit.i.us.4
  %sext.i.us.4.1 = shl i64 %add1.i.i.us.4.1, 32
  %idxprom.i.us.4.1 = ashr exact i64 %sext.i.us.4.1, 32
  %arrayidx.i.us.4.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.4.1
  %636 = load float, float* %arrayidx.i.us.4.1, align 4, !tbaa !12
  %add.i.us.4.1 = add nsw i32 %mul.i.4, %conv.i.us.4.1
  %idxprom6.i.us.4.1 = sext i32 %add.i.us.4.1 to i64
  %arrayidx7.i.us.4.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.4.1
  %637 = load float, float* %arrayidx7.i.us.4.1, align 4, !tbaa !12
  %sub.i.us.4.1 = fsub float %637, %636
  store float %sub.i.us.4.1, float* %arrayidx7.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.4.1

if.end.r_exit.i.us.4.1:                           ; preds = %if.then.i.us.4.1, %if.end.r_exit.i.us.4
  %638 = add nuw nsw i64 %_local_id_x.0.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %638, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.4.loopexit, label %pregion_for_entry.entry.i.us.4, !llvm.loop !64

if.then.i.us.3.1:                                 ; preds = %if.end.r_exit.i.us.3
  %sext.i.us.3.1 = shl i64 %add1.i.i.us.3.1, 32
  %idxprom.i.us.3.1 = ashr exact i64 %sext.i.us.3.1, 32
  %arrayidx.i.us.3.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.3.1
  %639 = load float, float* %arrayidx.i.us.3.1, align 4, !tbaa !12
  %add.i.us.3.1 = add nsw i32 %mul.i.3, %conv.i.us.3.1
  %idxprom6.i.us.3.1 = sext i32 %add.i.us.3.1 to i64
  %arrayidx7.i.us.3.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.3.1
  %640 = load float, float* %arrayidx7.i.us.3.1, align 4, !tbaa !12
  %sub.i.us.3.1 = fsub float %640, %639
  store float %sub.i.us.3.1, float* %arrayidx7.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.3.1

if.end.r_exit.i.us.3.1:                           ; preds = %if.then.i.us.3.1, %if.end.r_exit.i.us.3
  %641 = add nuw nsw i64 %_local_id_x.0.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %641, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.3.loopexit, label %pregion_for_entry.entry.i.us.3, !llvm.loop !65

if.then.i.us.2.1:                                 ; preds = %if.end.r_exit.i.us.2
  %sext.i.us.2.1 = shl i64 %add1.i.i.us.2.1, 32
  %idxprom.i.us.2.1 = ashr exact i64 %sext.i.us.2.1, 32
  %arrayidx.i.us.2.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.2.1
  %642 = load float, float* %arrayidx.i.us.2.1, align 4, !tbaa !12
  %add.i.us.2.1 = add nsw i32 %mul.i.2, %conv.i.us.2.1
  %idxprom6.i.us.2.1 = sext i32 %add.i.us.2.1 to i64
  %arrayidx7.i.us.2.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.2.1
  %643 = load float, float* %arrayidx7.i.us.2.1, align 4, !tbaa !12
  %sub.i.us.2.1 = fsub float %643, %642
  store float %sub.i.us.2.1, float* %arrayidx7.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.2.1

if.end.r_exit.i.us.2.1:                           ; preds = %if.then.i.us.2.1, %if.end.r_exit.i.us.2
  %644 = add nuw nsw i64 %_local_id_x.0.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %644, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.2.loopexit, label %pregion_for_entry.entry.i.us.2, !llvm.loop !66

if.then.i.us.1.1:                                 ; preds = %if.end.r_exit.i.us.1
  %sext.i.us.1.1 = shl i64 %add1.i.i.us.1.1, 32
  %idxprom.i.us.1.1 = ashr exact i64 %sext.i.us.1.1, 32
  %arrayidx.i.us.1.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.1.1
  %645 = load float, float* %arrayidx.i.us.1.1, align 4, !tbaa !12
  %add.i.us.1.1 = add nsw i32 %mul.i.1, %conv.i.us.1.1
  %idxprom6.i.us.1.1 = sext i32 %add.i.us.1.1 to i64
  %arrayidx7.i.us.1.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.1.1
  %646 = load float, float* %arrayidx7.i.us.1.1, align 4, !tbaa !12
  %sub.i.us.1.1 = fsub float %646, %645
  store float %sub.i.us.1.1, float* %arrayidx7.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.1.1

if.end.r_exit.i.us.1.1:                           ; preds = %if.then.i.us.1.1, %if.end.r_exit.i.us.1
  %647 = add nuw nsw i64 %_local_id_x.0.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %647, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.1.loopexit, label %pregion_for_entry.entry.i.us.1, !llvm.loop !67

if.then.i.us.1278:                                ; preds = %if.end.r_exit.i.us
  %sext.i.us.1271 = shl i64 %add1.i.i.us.1267, 32
  %idxprom.i.us.1272 = ashr exact i64 %sext.i.us.1271, 32
  %arrayidx.i.us.1273 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.1272
  %648 = load float, float* %arrayidx.i.us.1273, align 4, !tbaa !12
  %add.i.us.1274 = add nsw i32 %mul.i, %conv.i.us.1268
  %idxprom6.i.us.1275 = sext i32 %add.i.us.1274 to i64
  %arrayidx7.i.us.1276 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.1275
  %649 = load float, float* %arrayidx7.i.us.1276, align 4, !tbaa !12
  %sub.i.us.1277 = fsub float %649, %648
  store float %sub.i.us.1277, float* %arrayidx7.i.us.1276, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.us.1279

if.end.r_exit.i.us.1279:                          ; preds = %if.then.i.us.1278, %if.end.r_exit.i.us
  %650 = add nuw nsw i64 %_local_id_x.0.us, 2
  %exitcond.not.1 = icmp eq i64 %650, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !68
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_reduce_kernel_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
pregion_for_entry.pregion_for_init.i.i:
  %5 = bitcast i8** %0 to float***
  %6 = load float**, float*** %5, align 8
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float***
  %10 = load float**, float*** %9, align 8
  %11 = load float*, float** %10, align 8
  %12 = getelementptr i8*, i8** %0, i64 2
  %13 = bitcast i8** %12 to i32**
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr i8*, i8** %0, i64 3
  %17 = bitcast i8** %16 to i32**
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %conv2.i.i = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %19, %conv2.i.i
  %mul.i.i = mul nsw i32 %15, %conv2.i.i
  br i1 %cmp.i.i, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %20 = trunc i64 %3 to i32
  %21 = mul i32 %15, %20
  %22 = shl i32 %21, 3
  %23 = trunc i64 %2 to i32
  %24 = shl i32 %23, 5
  %25 = add i32 %22, %24
  %26 = icmp sgt i32 %25, 2147483616
  br i1 %26, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %27 = trunc i64 %2 to i32
  %28 = shl i32 %27, 5
  %29 = sext i32 %28 to i64
  %scevgep = getelementptr float, float* %7, i64 %29
  %30 = add nsw i64 %29, 32
  %scevgep4 = getelementptr float, float* %7, i64 %30
  %31 = trunc i64 %3 to i32
  %32 = mul i32 %15, %31
  %33 = shl i32 %32, 3
  %34 = add i32 %33, %28
  %35 = sext i32 %34 to i64
  %scevgep6 = getelementptr float, float* %11, i64 %35
  %36 = add nsw i64 %35, 32
  %scevgep8 = getelementptr float, float* %11, i64 %36
  %bound0 = icmp ult float* %scevgep, %scevgep8
  %bound1 = icmp ult float* %scevgep6, %scevgep4
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert10 = insertelement <8 x i32> undef, i32 %15, i32 0
  %broadcast.splat11 = shufflevector <8 x i32> %broadcast.splatinsert10, <8 x i32> undef, <8 x i32> zeroinitializer
  %37 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %38 = trunc <8 x i64> %37 to <8 x i32>
  %39 = icmp sgt <8 x i32> %broadcast.splat11, %38
  %40 = extractelement <8 x i64> %37, i32 0
  %41 = shl i64 %40, 32
  %42 = ashr exact i64 %41, 32
  %43 = getelementptr inbounds float, float* %7, i64 %42
  %44 = bitcast float* %43 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %44, i32 4, <8 x i1> %39, <8 x float> undef), !tbaa !12, !alias.scope !69, !noalias !72
  %45 = extractelement <8 x i32> %38, i32 0
  %46 = add nsw i32 %mul.i.i, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %11, i64 %47
  %49 = bitcast float* %48 to <8 x float>*
  %wide.masked.load12 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %49, i32 4, <8 x i1> %39, <8 x float> undef), !tbaa !12, !alias.scope !72
  %50 = fsub <8 x float> %wide.masked.load12, %wide.masked.load
  %51 = bitcast float* %48 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %50, <8 x float>* %51, i32 4, <8 x i1> %39), !tbaa !12, !alias.scope !72, !llvm.access.group !21
  %52 = or <8 x i64> %broadcast.splat, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %53 = trunc <8 x i64> %52 to <8 x i32>
  %54 = icmp sgt <8 x i32> %broadcast.splat11, %53
  %55 = extractelement <8 x i64> %52, i32 0
  %56 = shl i64 %55, 32
  %57 = ashr exact i64 %56, 32
  %58 = getelementptr inbounds float, float* %7, i64 %57
  %59 = bitcast float* %58 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %59, i32 4, <8 x i1> %54, <8 x float> undef), !tbaa !12, !alias.scope !69, !noalias !72
  %60 = extractelement <8 x i32> %53, i32 0
  %61 = add nsw i32 %mul.i.i, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %11, i64 %62
  %64 = bitcast float* %63 to <8 x float>*
  %wide.masked.load12.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %64, i32 4, <8 x i1> %54, <8 x float> undef), !tbaa !12, !alias.scope !72
  %65 = fsub <8 x float> %wide.masked.load12.1, %wide.masked.load.1
  %66 = bitcast float* %63 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %65, <8 x float>* %66, i32 4, <8 x i1> %54), !tbaa !12, !alias.scope !72, !llvm.access.group !21
  %67 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %68 = trunc <8 x i64> %67 to <8 x i32>
  %69 = icmp sgt <8 x i32> %broadcast.splat11, %68
  %70 = extractelement <8 x i64> %67, i32 0
  %71 = shl i64 %70, 32
  %72 = ashr exact i64 %71, 32
  %73 = getelementptr inbounds float, float* %7, i64 %72
  %74 = bitcast float* %73 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %74, i32 4, <8 x i1> %69, <8 x float> undef), !tbaa !12, !alias.scope !69, !noalias !72
  %75 = extractelement <8 x i32> %68, i32 0
  %76 = add nsw i32 %mul.i.i, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %11, i64 %77
  %79 = bitcast float* %78 to <8 x float>*
  %wide.masked.load12.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %79, i32 4, <8 x i1> %69, <8 x float> undef), !tbaa !12, !alias.scope !72
  %80 = fsub <8 x float> %wide.masked.load12.2, %wide.masked.load.2
  %81 = bitcast float* %78 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %80, <8 x float>* %81, i32 4, <8 x i1> %69), !tbaa !12, !alias.scope !72, !llvm.access.group !21
  %82 = or <8 x i64> %broadcast.splat, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %83 = trunc <8 x i64> %82 to <8 x i32>
  %84 = icmp sgt <8 x i32> %broadcast.splat11, %83
  %85 = extractelement <8 x i64> %82, i32 0
  %86 = shl i64 %85, 32
  %87 = ashr exact i64 %86, 32
  %88 = getelementptr inbounds float, float* %7, i64 %87
  %89 = bitcast float* %88 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %89, i32 4, <8 x i1> %84, <8 x float> undef), !tbaa !12, !alias.scope !69, !noalias !72
  %90 = extractelement <8 x i32> %83, i32 0
  %91 = add nsw i32 %mul.i.i, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %11, i64 %92
  %94 = bitcast float* %93 to <8 x float>*
  %wide.masked.load12.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %94, i32 4, <8 x i1> %84, <8 x float> undef), !tbaa !12, !alias.scope !72
  %95 = fsub <8 x float> %wide.masked.load12.3, %wide.masked.load.3
  %96 = bitcast float* %93 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %95, <8 x float>* %96, i32 4, <8 x i1> %84), !tbaa !12, !alias.scope !72, !llvm.access.group !21
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us.1279, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.preheader ], [ %662, %if.end.r_exit.i.i.us.1279 ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %15, %conv.i.i.us
  br i1 %cmp4.i.i.us, label %if.then.i.i.us, label %if.end.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us
  %97 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %add.i.i.us = add nsw i32 %mul.i.i, %conv.i.i.us
  %idxprom6.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx7.i.i.us = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us
  %98 = load float, float* %arrayidx7.i.i.us, align 4, !tbaa !12
  %sub.i.i.us = fsub float %98, %97
  store float %sub.i.i.us, float* %arrayidx7.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %99 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1267 = add nuw nsw i64 %99, %mul.i.i.i
  %conv.i.i.us.1268 = trunc i64 %add1.i.i.i.us.1267 to i32
  %cmp4.i.i.us.1269 = icmp sgt i32 %15, %conv.i.i.us.1268
  br i1 %cmp4.i.i.us.1269, label %if.then.i.i.us.1278, label %if.end.r_exit.i.i.us.1279

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.r_exit.i.i.us.1279
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i
  %100 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.1 = or i32 %100, 1
  %cmp.i.i.1 = icmp sgt i32 %19, %conv2.i.i.1
  %mul.i.i.1 = mul nsw i32 %15, %conv2.i.i.1
  br i1 %cmp.i.i.1, label %vector.scevcheck20, label %pregion_for_end.i.i.1

vector.scevcheck20:                               ; preds = %pregion_for_end.i.i
  %101 = mul i32 %15, %conv2.i.i.1
  %102 = trunc i64 %2 to i32
  %103 = shl i32 %102, 5
  %104 = add i32 %101, %103
  %105 = icmp sgt i32 %104, 2147483616
  br i1 %105, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.memcheck34

pregion_for_entry.entry.i.i.us.1.preheader:       ; preds = %vector.memcheck34, %vector.scevcheck20
  br label %pregion_for_entry.entry.i.i.us.1

vector.memcheck34:                                ; preds = %vector.scevcheck20
  %106 = trunc i64 %2 to i32
  %107 = shl i32 %106, 5
  %108 = sext i32 %107 to i64
  %scevgep22 = getelementptr float, float* %7, i64 %108
  %109 = add nsw i64 %108, 32
  %scevgep24 = getelementptr float, float* %7, i64 %109
  %110 = mul i32 %15, %conv2.i.i.1
  %111 = add i32 %110, %107
  %112 = sext i32 %111 to i64
  %scevgep26 = getelementptr float, float* %11, i64 %112
  %113 = add nsw i64 %112, 32
  %scevgep28 = getelementptr float, float* %11, i64 %113
  %bound030 = icmp ult float* %scevgep22, %scevgep28
  %bound131 = icmp ult float* %scevgep26, %scevgep24
  %found.conflict32 = and i1 %bound030, %bound131
  br i1 %found.conflict32, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.ph35

vector.ph35:                                      ; preds = %vector.memcheck34
  %broadcast.splatinsert42 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat43 = shufflevector <8 x i64> %broadcast.splatinsert42, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert44 = insertelement <8 x i32> undef, i32 %15, i32 0
  %broadcast.splat45 = shufflevector <8 x i32> %broadcast.splatinsert44, <8 x i32> undef, <8 x i32> zeroinitializer
  %114 = or <8 x i64> %broadcast.splat43, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %115 = trunc <8 x i64> %114 to <8 x i32>
  %116 = icmp sgt <8 x i32> %broadcast.splat45, %115
  %117 = extractelement <8 x i64> %114, i32 0
  %118 = shl i64 %117, 32
  %119 = ashr exact i64 %118, 32
  %120 = getelementptr inbounds float, float* %7, i64 %119
  %121 = bitcast float* %120 to <8 x float>*
  %wide.masked.load46 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %121, i32 4, <8 x i1> %116, <8 x float> undef), !tbaa !12, !alias.scope !74, !noalias !77
  %122 = extractelement <8 x i32> %115, i32 0
  %123 = add nsw i32 %mul.i.i.1, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %11, i64 %124
  %126 = bitcast float* %125 to <8 x float>*
  %wide.masked.load47 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %126, i32 4, <8 x i1> %116, <8 x float> undef), !tbaa !12, !alias.scope !77
  %127 = fsub <8 x float> %wide.masked.load47, %wide.masked.load46
  %128 = bitcast float* %125 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %127, <8 x float>* %128, i32 4, <8 x i1> %116), !tbaa !12, !alias.scope !77, !llvm.access.group !21
  %129 = or <8 x i64> %broadcast.splat43, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %130 = trunc <8 x i64> %129 to <8 x i32>
  %131 = icmp sgt <8 x i32> %broadcast.splat45, %130
  %132 = extractelement <8 x i64> %129, i32 0
  %133 = shl i64 %132, 32
  %134 = ashr exact i64 %133, 32
  %135 = getelementptr inbounds float, float* %7, i64 %134
  %136 = bitcast float* %135 to <8 x float>*
  %wide.masked.load46.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %136, i32 4, <8 x i1> %131, <8 x float> undef), !tbaa !12, !alias.scope !74, !noalias !77
  %137 = extractelement <8 x i32> %130, i32 0
  %138 = add nsw i32 %mul.i.i.1, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %11, i64 %139
  %141 = bitcast float* %140 to <8 x float>*
  %wide.masked.load47.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %141, i32 4, <8 x i1> %131, <8 x float> undef), !tbaa !12, !alias.scope !77
  %142 = fsub <8 x float> %wide.masked.load47.1, %wide.masked.load46.1
  %143 = bitcast float* %140 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %142, <8 x float>* %143, i32 4, <8 x i1> %131), !tbaa !12, !alias.scope !77, !llvm.access.group !21
  %144 = or <8 x i64> %broadcast.splat43, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %145 = trunc <8 x i64> %144 to <8 x i32>
  %146 = icmp sgt <8 x i32> %broadcast.splat45, %145
  %147 = extractelement <8 x i64> %144, i32 0
  %148 = shl i64 %147, 32
  %149 = ashr exact i64 %148, 32
  %150 = getelementptr inbounds float, float* %7, i64 %149
  %151 = bitcast float* %150 to <8 x float>*
  %wide.masked.load46.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %151, i32 4, <8 x i1> %146, <8 x float> undef), !tbaa !12, !alias.scope !74, !noalias !77
  %152 = extractelement <8 x i32> %145, i32 0
  %153 = add nsw i32 %mul.i.i.1, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %11, i64 %154
  %156 = bitcast float* %155 to <8 x float>*
  %wide.masked.load47.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %156, i32 4, <8 x i1> %146, <8 x float> undef), !tbaa !12, !alias.scope !77
  %157 = fsub <8 x float> %wide.masked.load47.2, %wide.masked.load46.2
  %158 = bitcast float* %155 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %157, <8 x float>* %158, i32 4, <8 x i1> %146), !tbaa !12, !alias.scope !77, !llvm.access.group !21
  %159 = or <8 x i64> %broadcast.splat43, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %160 = trunc <8 x i64> %159 to <8 x i32>
  %161 = icmp sgt <8 x i32> %broadcast.splat45, %160
  %162 = extractelement <8 x i64> %159, i32 0
  %163 = shl i64 %162, 32
  %164 = ashr exact i64 %163, 32
  %165 = getelementptr inbounds float, float* %7, i64 %164
  %166 = bitcast float* %165 to <8 x float>*
  %wide.masked.load46.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %166, i32 4, <8 x i1> %161, <8 x float> undef), !tbaa !12, !alias.scope !74, !noalias !77
  %167 = extractelement <8 x i32> %160, i32 0
  %168 = add nsw i32 %mul.i.i.1, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %11, i64 %169
  %171 = bitcast float* %170 to <8 x float>*
  %wide.masked.load47.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %171, i32 4, <8 x i1> %161, <8 x float> undef), !tbaa !12, !alias.scope !77
  %172 = fsub <8 x float> %wide.masked.load47.3, %wide.masked.load46.3
  %173 = bitcast float* %170 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %172, <8 x float>* %173, i32 4, <8 x i1> %161), !tbaa !12, !alias.scope !77, !llvm.access.group !21
  br label %pregion_for_end.i.i.1

pregion_for_entry.entry.i.i.us.1:                 ; preds = %if.end.r_exit.i.i.us.1.1, %pregion_for_entry.entry.i.i.us.1.preheader
  %_local_id_x.i.0.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.1.preheader ], [ %659, %if.end.r_exit.i.i.us.1.1 ]
  %add1.i.i.i.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.1, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp4.i.i.us.1 = icmp sgt i32 %15, %conv.i.i.us.1
  br i1 %cmp4.i.i.us.1, label %if.then.i.i.us.1, label %if.end.r_exit.i.i.us.1

if.then.i.i.us.1:                                 ; preds = %pregion_for_entry.entry.i.i.us.1
  %sext.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom.i.i.us.1 = ashr exact i64 %sext.i.i.us.1, 32
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.1
  %174 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %add.i.i.us.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1
  %idxprom6.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx7.i.i.us.1 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.1
  %175 = load float, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12
  %sub.i.i.us.1 = fsub float %175, %174
  store float %sub.i.i.us.1, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.1

if.end.r_exit.i.i.us.1:                           ; preds = %if.then.i.i.us.1, %pregion_for_entry.entry.i.i.us.1
  %176 = or i64 %_local_id_x.i.0.us.1, 1
  %add1.i.i.i.us.1.1 = add nuw nsw i64 %176, %mul.i.i.i
  %conv.i.i.us.1.1 = trunc i64 %add1.i.i.i.us.1.1 to i32
  %cmp4.i.i.us.1.1 = icmp sgt i32 %15, %conv.i.i.us.1.1
  br i1 %cmp4.i.i.us.1.1, label %if.then.i.i.us.1.1, label %if.end.r_exit.i.i.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.r_exit.i.i.us.1.1
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph35, %pregion_for_end.i.i
  %177 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.2 = or i32 %177, 2
  %cmp.i.i.2 = icmp sgt i32 %19, %conv2.i.i.2
  %mul.i.i.2 = mul nsw i32 %15, %conv2.i.i.2
  br i1 %cmp.i.i.2, label %vector.scevcheck55, label %pregion_for_end.i.i.2

vector.scevcheck55:                               ; preds = %pregion_for_end.i.i.1
  %178 = mul i32 %15, %conv2.i.i.2
  %179 = trunc i64 %2 to i32
  %180 = shl i32 %179, 5
  %181 = add i32 %178, %180
  %182 = icmp sgt i32 %181, 2147483616
  br i1 %182, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.memcheck69

pregion_for_entry.entry.i.i.us.2.preheader:       ; preds = %vector.memcheck69, %vector.scevcheck55
  br label %pregion_for_entry.entry.i.i.us.2

vector.memcheck69:                                ; preds = %vector.scevcheck55
  %183 = trunc i64 %2 to i32
  %184 = shl i32 %183, 5
  %185 = sext i32 %184 to i64
  %scevgep57 = getelementptr float, float* %7, i64 %185
  %186 = add nsw i64 %185, 32
  %scevgep59 = getelementptr float, float* %7, i64 %186
  %187 = mul i32 %15, %conv2.i.i.2
  %188 = add i32 %187, %184
  %189 = sext i32 %188 to i64
  %scevgep61 = getelementptr float, float* %11, i64 %189
  %190 = add nsw i64 %189, 32
  %scevgep63 = getelementptr float, float* %11, i64 %190
  %bound065 = icmp ult float* %scevgep57, %scevgep63
  %bound166 = icmp ult float* %scevgep61, %scevgep59
  %found.conflict67 = and i1 %bound065, %bound166
  br i1 %found.conflict67, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck69
  %broadcast.splatinsert77 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat78 = shufflevector <8 x i64> %broadcast.splatinsert77, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert79 = insertelement <8 x i32> undef, i32 %15, i32 0
  %broadcast.splat80 = shufflevector <8 x i32> %broadcast.splatinsert79, <8 x i32> undef, <8 x i32> zeroinitializer
  %191 = or <8 x i64> %broadcast.splat78, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %192 = trunc <8 x i64> %191 to <8 x i32>
  %193 = icmp sgt <8 x i32> %broadcast.splat80, %192
  %194 = extractelement <8 x i64> %191, i32 0
  %195 = shl i64 %194, 32
  %196 = ashr exact i64 %195, 32
  %197 = getelementptr inbounds float, float* %7, i64 %196
  %198 = bitcast float* %197 to <8 x float>*
  %wide.masked.load81 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %198, i32 4, <8 x i1> %193, <8 x float> undef), !tbaa !12, !alias.scope !79, !noalias !82
  %199 = extractelement <8 x i32> %192, i32 0
  %200 = add nsw i32 %mul.i.i.2, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %11, i64 %201
  %203 = bitcast float* %202 to <8 x float>*
  %wide.masked.load82 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %203, i32 4, <8 x i1> %193, <8 x float> undef), !tbaa !12, !alias.scope !82
  %204 = fsub <8 x float> %wide.masked.load82, %wide.masked.load81
  %205 = bitcast float* %202 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %204, <8 x float>* %205, i32 4, <8 x i1> %193), !tbaa !12, !alias.scope !82, !llvm.access.group !21
  %206 = or <8 x i64> %broadcast.splat78, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %207 = trunc <8 x i64> %206 to <8 x i32>
  %208 = icmp sgt <8 x i32> %broadcast.splat80, %207
  %209 = extractelement <8 x i64> %206, i32 0
  %210 = shl i64 %209, 32
  %211 = ashr exact i64 %210, 32
  %212 = getelementptr inbounds float, float* %7, i64 %211
  %213 = bitcast float* %212 to <8 x float>*
  %wide.masked.load81.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %213, i32 4, <8 x i1> %208, <8 x float> undef), !tbaa !12, !alias.scope !79, !noalias !82
  %214 = extractelement <8 x i32> %207, i32 0
  %215 = add nsw i32 %mul.i.i.2, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %11, i64 %216
  %218 = bitcast float* %217 to <8 x float>*
  %wide.masked.load82.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %218, i32 4, <8 x i1> %208, <8 x float> undef), !tbaa !12, !alias.scope !82
  %219 = fsub <8 x float> %wide.masked.load82.1, %wide.masked.load81.1
  %220 = bitcast float* %217 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %219, <8 x float>* %220, i32 4, <8 x i1> %208), !tbaa !12, !alias.scope !82, !llvm.access.group !21
  %221 = or <8 x i64> %broadcast.splat78, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %222 = trunc <8 x i64> %221 to <8 x i32>
  %223 = icmp sgt <8 x i32> %broadcast.splat80, %222
  %224 = extractelement <8 x i64> %221, i32 0
  %225 = shl i64 %224, 32
  %226 = ashr exact i64 %225, 32
  %227 = getelementptr inbounds float, float* %7, i64 %226
  %228 = bitcast float* %227 to <8 x float>*
  %wide.masked.load81.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %228, i32 4, <8 x i1> %223, <8 x float> undef), !tbaa !12, !alias.scope !79, !noalias !82
  %229 = extractelement <8 x i32> %222, i32 0
  %230 = add nsw i32 %mul.i.i.2, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %11, i64 %231
  %233 = bitcast float* %232 to <8 x float>*
  %wide.masked.load82.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %233, i32 4, <8 x i1> %223, <8 x float> undef), !tbaa !12, !alias.scope !82
  %234 = fsub <8 x float> %wide.masked.load82.2, %wide.masked.load81.2
  %235 = bitcast float* %232 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %234, <8 x float>* %235, i32 4, <8 x i1> %223), !tbaa !12, !alias.scope !82, !llvm.access.group !21
  %236 = or <8 x i64> %broadcast.splat78, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %237 = trunc <8 x i64> %236 to <8 x i32>
  %238 = icmp sgt <8 x i32> %broadcast.splat80, %237
  %239 = extractelement <8 x i64> %236, i32 0
  %240 = shl i64 %239, 32
  %241 = ashr exact i64 %240, 32
  %242 = getelementptr inbounds float, float* %7, i64 %241
  %243 = bitcast float* %242 to <8 x float>*
  %wide.masked.load81.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %243, i32 4, <8 x i1> %238, <8 x float> undef), !tbaa !12, !alias.scope !79, !noalias !82
  %244 = extractelement <8 x i32> %237, i32 0
  %245 = add nsw i32 %mul.i.i.2, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %11, i64 %246
  %248 = bitcast float* %247 to <8 x float>*
  %wide.masked.load82.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %248, i32 4, <8 x i1> %238, <8 x float> undef), !tbaa !12, !alias.scope !82
  %249 = fsub <8 x float> %wide.masked.load82.3, %wide.masked.load81.3
  %250 = bitcast float* %247 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %249, <8 x float>* %250, i32 4, <8 x i1> %238), !tbaa !12, !alias.scope !82, !llvm.access.group !21
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.2:                 ; preds = %if.end.r_exit.i.i.us.2.1, %pregion_for_entry.entry.i.i.us.2.preheader
  %_local_id_x.i.0.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.2.preheader ], [ %656, %if.end.r_exit.i.i.us.2.1 ]
  %add1.i.i.i.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.2, %mul.i.i.i
  %conv.i.i.us.2 = trunc i64 %add1.i.i.i.us.2 to i32
  %cmp4.i.i.us.2 = icmp sgt i32 %15, %conv.i.i.us.2
  br i1 %cmp4.i.i.us.2, label %if.then.i.i.us.2, label %if.end.r_exit.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %pregion_for_entry.entry.i.i.us.2
  %sext.i.i.us.2 = shl i64 %add1.i.i.i.us.2, 32
  %idxprom.i.i.us.2 = ashr exact i64 %sext.i.i.us.2, 32
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.2
  %251 = load float, float* %arrayidx.i.i.us.2, align 4, !tbaa !12
  %add.i.i.us.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2
  %idxprom6.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx7.i.i.us.2 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.2
  %252 = load float, float* %arrayidx7.i.i.us.2, align 4, !tbaa !12
  %sub.i.i.us.2 = fsub float %252, %251
  store float %sub.i.i.us.2, float* %arrayidx7.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.2

if.end.r_exit.i.i.us.2:                           ; preds = %if.then.i.i.us.2, %pregion_for_entry.entry.i.i.us.2
  %253 = or i64 %_local_id_x.i.0.us.2, 1
  %add1.i.i.i.us.2.1 = add nuw nsw i64 %253, %mul.i.i.i
  %conv.i.i.us.2.1 = trunc i64 %add1.i.i.i.us.2.1 to i32
  %cmp4.i.i.us.2.1 = icmp sgt i32 %15, %conv.i.i.us.2.1
  br i1 %cmp4.i.i.us.2.1, label %if.then.i.i.us.2.1, label %if.end.r_exit.i.i.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.r_exit.i.i.us.2.1
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph70, %pregion_for_end.i.i.1
  %254 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.3 = or i32 %254, 3
  %cmp.i.i.3 = icmp sgt i32 %19, %conv2.i.i.3
  %mul.i.i.3 = mul nsw i32 %15, %conv2.i.i.3
  br i1 %cmp.i.i.3, label %vector.scevcheck90, label %pregion_for_end.i.i.3

vector.scevcheck90:                               ; preds = %pregion_for_end.i.i.2
  %255 = mul i32 %15, %conv2.i.i.3
  %256 = trunc i64 %2 to i32
  %257 = shl i32 %256, 5
  %258 = add i32 %255, %257
  %259 = icmp sgt i32 %258, 2147483616
  br i1 %259, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.memcheck104

pregion_for_entry.entry.i.i.us.3.preheader:       ; preds = %vector.memcheck104, %vector.scevcheck90
  br label %pregion_for_entry.entry.i.i.us.3

vector.memcheck104:                               ; preds = %vector.scevcheck90
  %260 = trunc i64 %2 to i32
  %261 = shl i32 %260, 5
  %262 = sext i32 %261 to i64
  %scevgep92 = getelementptr float, float* %7, i64 %262
  %263 = add nsw i64 %262, 32
  %scevgep94 = getelementptr float, float* %7, i64 %263
  %264 = mul i32 %15, %conv2.i.i.3
  %265 = add i32 %264, %261
  %266 = sext i32 %265 to i64
  %scevgep96 = getelementptr float, float* %11, i64 %266
  %267 = add nsw i64 %266, 32
  %scevgep98 = getelementptr float, float* %11, i64 %267
  %bound0100 = icmp ult float* %scevgep92, %scevgep98
  %bound1101 = icmp ult float* %scevgep96, %scevgep94
  %found.conflict102 = and i1 %bound0100, %bound1101
  br i1 %found.conflict102, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %vector.memcheck104
  %broadcast.splatinsert112 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat113 = shufflevector <8 x i64> %broadcast.splatinsert112, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert114 = insertelement <8 x i32> undef, i32 %15, i32 0
  %broadcast.splat115 = shufflevector <8 x i32> %broadcast.splatinsert114, <8 x i32> undef, <8 x i32> zeroinitializer
  %268 = or <8 x i64> %broadcast.splat113, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %269 = trunc <8 x i64> %268 to <8 x i32>
  %270 = icmp sgt <8 x i32> %broadcast.splat115, %269
  %271 = extractelement <8 x i64> %268, i32 0
  %272 = shl i64 %271, 32
  %273 = ashr exact i64 %272, 32
  %274 = getelementptr inbounds float, float* %7, i64 %273
  %275 = bitcast float* %274 to <8 x float>*
  %wide.masked.load116 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %275, i32 4, <8 x i1> %270, <8 x float> undef), !tbaa !12, !alias.scope !84, !noalias !87
  %276 = extractelement <8 x i32> %269, i32 0
  %277 = add nsw i32 %mul.i.i.3, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds float, float* %11, i64 %278
  %280 = bitcast float* %279 to <8 x float>*
  %wide.masked.load117 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %280, i32 4, <8 x i1> %270, <8 x float> undef), !tbaa !12, !alias.scope !87
  %281 = fsub <8 x float> %wide.masked.load117, %wide.masked.load116
  %282 = bitcast float* %279 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %281, <8 x float>* %282, i32 4, <8 x i1> %270), !tbaa !12, !alias.scope !87, !llvm.access.group !21
  %283 = or <8 x i64> %broadcast.splat113, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %284 = trunc <8 x i64> %283 to <8 x i32>
  %285 = icmp sgt <8 x i32> %broadcast.splat115, %284
  %286 = extractelement <8 x i64> %283, i32 0
  %287 = shl i64 %286, 32
  %288 = ashr exact i64 %287, 32
  %289 = getelementptr inbounds float, float* %7, i64 %288
  %290 = bitcast float* %289 to <8 x float>*
  %wide.masked.load116.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %290, i32 4, <8 x i1> %285, <8 x float> undef), !tbaa !12, !alias.scope !84, !noalias !87
  %291 = extractelement <8 x i32> %284, i32 0
  %292 = add nsw i32 %mul.i.i.3, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float, float* %11, i64 %293
  %295 = bitcast float* %294 to <8 x float>*
  %wide.masked.load117.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %295, i32 4, <8 x i1> %285, <8 x float> undef), !tbaa !12, !alias.scope !87
  %296 = fsub <8 x float> %wide.masked.load117.1, %wide.masked.load116.1
  %297 = bitcast float* %294 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %296, <8 x float>* %297, i32 4, <8 x i1> %285), !tbaa !12, !alias.scope !87, !llvm.access.group !21
  %298 = or <8 x i64> %broadcast.splat113, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %299 = trunc <8 x i64> %298 to <8 x i32>
  %300 = icmp sgt <8 x i32> %broadcast.splat115, %299
  %301 = extractelement <8 x i64> %298, i32 0
  %302 = shl i64 %301, 32
  %303 = ashr exact i64 %302, 32
  %304 = getelementptr inbounds float, float* %7, i64 %303
  %305 = bitcast float* %304 to <8 x float>*
  %wide.masked.load116.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %305, i32 4, <8 x i1> %300, <8 x float> undef), !tbaa !12, !alias.scope !84, !noalias !87
  %306 = extractelement <8 x i32> %299, i32 0
  %307 = add nsw i32 %mul.i.i.3, %306
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %11, i64 %308
  %310 = bitcast float* %309 to <8 x float>*
  %wide.masked.load117.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %310, i32 4, <8 x i1> %300, <8 x float> undef), !tbaa !12, !alias.scope !87
  %311 = fsub <8 x float> %wide.masked.load117.2, %wide.masked.load116.2
  %312 = bitcast float* %309 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %311, <8 x float>* %312, i32 4, <8 x i1> %300), !tbaa !12, !alias.scope !87, !llvm.access.group !21
  %313 = or <8 x i64> %broadcast.splat113, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %314 = trunc <8 x i64> %313 to <8 x i32>
  %315 = icmp sgt <8 x i32> %broadcast.splat115, %314
  %316 = extractelement <8 x i64> %313, i32 0
  %317 = shl i64 %316, 32
  %318 = ashr exact i64 %317, 32
  %319 = getelementptr inbounds float, float* %7, i64 %318
  %320 = bitcast float* %319 to <8 x float>*
  %wide.masked.load116.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %320, i32 4, <8 x i1> %315, <8 x float> undef), !tbaa !12, !alias.scope !84, !noalias !87
  %321 = extractelement <8 x i32> %314, i32 0
  %322 = add nsw i32 %mul.i.i.3, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds float, float* %11, i64 %323
  %325 = bitcast float* %324 to <8 x float>*
  %wide.masked.load117.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %325, i32 4, <8 x i1> %315, <8 x float> undef), !tbaa !12, !alias.scope !87
  %326 = fsub <8 x float> %wide.masked.load117.3, %wide.masked.load116.3
  %327 = bitcast float* %324 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %326, <8 x float>* %327, i32 4, <8 x i1> %315), !tbaa !12, !alias.scope !87, !llvm.access.group !21
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.3:                 ; preds = %if.end.r_exit.i.i.us.3.1, %pregion_for_entry.entry.i.i.us.3.preheader
  %_local_id_x.i.0.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.3.preheader ], [ %653, %if.end.r_exit.i.i.us.3.1 ]
  %add1.i.i.i.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.3, %mul.i.i.i
  %conv.i.i.us.3 = trunc i64 %add1.i.i.i.us.3 to i32
  %cmp4.i.i.us.3 = icmp sgt i32 %15, %conv.i.i.us.3
  br i1 %cmp4.i.i.us.3, label %if.then.i.i.us.3, label %if.end.r_exit.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %pregion_for_entry.entry.i.i.us.3
  %sext.i.i.us.3 = shl i64 %add1.i.i.i.us.3, 32
  %idxprom.i.i.us.3 = ashr exact i64 %sext.i.i.us.3, 32
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.3
  %328 = load float, float* %arrayidx.i.i.us.3, align 4, !tbaa !12
  %add.i.i.us.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3
  %idxprom6.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx7.i.i.us.3 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.3
  %329 = load float, float* %arrayidx7.i.i.us.3, align 4, !tbaa !12
  %sub.i.i.us.3 = fsub float %329, %328
  store float %sub.i.i.us.3, float* %arrayidx7.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.3

if.end.r_exit.i.i.us.3:                           ; preds = %if.then.i.i.us.3, %pregion_for_entry.entry.i.i.us.3
  %330 = or i64 %_local_id_x.i.0.us.3, 1
  %add1.i.i.i.us.3.1 = add nuw nsw i64 %330, %mul.i.i.i
  %conv.i.i.us.3.1 = trunc i64 %add1.i.i.i.us.3.1 to i32
  %cmp4.i.i.us.3.1 = icmp sgt i32 %15, %conv.i.i.us.3.1
  br i1 %cmp4.i.i.us.3.1, label %if.then.i.i.us.3.1, label %if.end.r_exit.i.i.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.r_exit.i.i.us.3.1
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph105, %pregion_for_end.i.i.2
  %331 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.4 = or i32 %331, 4
  %cmp.i.i.4 = icmp sgt i32 %19, %conv2.i.i.4
  %mul.i.i.4 = mul nsw i32 %15, %conv2.i.i.4
  br i1 %cmp.i.i.4, label %vector.scevcheck125, label %pregion_for_end.i.i.4

vector.scevcheck125:                              ; preds = %pregion_for_end.i.i.3
  %332 = mul i32 %15, %conv2.i.i.4
  %333 = trunc i64 %2 to i32
  %334 = shl i32 %333, 5
  %335 = add i32 %332, %334
  %336 = icmp sgt i32 %335, 2147483616
  br i1 %336, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.memcheck139

pregion_for_entry.entry.i.i.us.4.preheader:       ; preds = %vector.memcheck139, %vector.scevcheck125
  br label %pregion_for_entry.entry.i.i.us.4

vector.memcheck139:                               ; preds = %vector.scevcheck125
  %337 = trunc i64 %2 to i32
  %338 = shl i32 %337, 5
  %339 = sext i32 %338 to i64
  %scevgep127 = getelementptr float, float* %7, i64 %339
  %340 = add nsw i64 %339, 32
  %scevgep129 = getelementptr float, float* %7, i64 %340
  %341 = mul i32 %15, %conv2.i.i.4
  %342 = add i32 %341, %338
  %343 = sext i32 %342 to i64
  %scevgep131 = getelementptr float, float* %11, i64 %343
  %344 = add nsw i64 %343, 32
  %scevgep133 = getelementptr float, float* %11, i64 %344
  %bound0135 = icmp ult float* %scevgep127, %scevgep133
  %bound1136 = icmp ult float* %scevgep131, %scevgep129
  %found.conflict137 = and i1 %bound0135, %bound1136
  br i1 %found.conflict137, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck139
  %broadcast.splatinsert147 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat148 = shufflevector <8 x i64> %broadcast.splatinsert147, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <8 x i32> undef, i32 %15, i32 0
  %broadcast.splat150 = shufflevector <8 x i32> %broadcast.splatinsert149, <8 x i32> undef, <8 x i32> zeroinitializer
  %345 = or <8 x i64> %broadcast.splat148, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %346 = trunc <8 x i64> %345 to <8 x i32>
  %347 = icmp sgt <8 x i32> %broadcast.splat150, %346
  %348 = extractelement <8 x i64> %345, i32 0
  %349 = shl i64 %348, 32
  %350 = ashr exact i64 %349, 32
  %351 = getelementptr inbounds float, float* %7, i64 %350
  %352 = bitcast float* %351 to <8 x float>*
  %wide.masked.load151 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %352, i32 4, <8 x i1> %347, <8 x float> undef), !tbaa !12, !alias.scope !89, !noalias !92
  %353 = extractelement <8 x i32> %346, i32 0
  %354 = add nsw i32 %mul.i.i.4, %353
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds float, float* %11, i64 %355
  %357 = bitcast float* %356 to <8 x float>*
  %wide.masked.load152 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %357, i32 4, <8 x i1> %347, <8 x float> undef), !tbaa !12, !alias.scope !92
  %358 = fsub <8 x float> %wide.masked.load152, %wide.masked.load151
  %359 = bitcast float* %356 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %358, <8 x float>* %359, i32 4, <8 x i1> %347), !tbaa !12, !alias.scope !92, !llvm.access.group !21
  %360 = or <8 x i64> %broadcast.splat148, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %361 = trunc <8 x i64> %360 to <8 x i32>
  %362 = icmp sgt <8 x i32> %broadcast.splat150, %361
  %363 = extractelement <8 x i64> %360, i32 0
  %364 = shl i64 %363, 32
  %365 = ashr exact i64 %364, 32
  %366 = getelementptr inbounds float, float* %7, i64 %365
  %367 = bitcast float* %366 to <8 x float>*
  %wide.masked.load151.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %367, i32 4, <8 x i1> %362, <8 x float> undef), !tbaa !12, !alias.scope !89, !noalias !92
  %368 = extractelement <8 x i32> %361, i32 0
  %369 = add nsw i32 %mul.i.i.4, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds float, float* %11, i64 %370
  %372 = bitcast float* %371 to <8 x float>*
  %wide.masked.load152.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %372, i32 4, <8 x i1> %362, <8 x float> undef), !tbaa !12, !alias.scope !92
  %373 = fsub <8 x float> %wide.masked.load152.1, %wide.masked.load151.1
  %374 = bitcast float* %371 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %373, <8 x float>* %374, i32 4, <8 x i1> %362), !tbaa !12, !alias.scope !92, !llvm.access.group !21
  %375 = or <8 x i64> %broadcast.splat148, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %376 = trunc <8 x i64> %375 to <8 x i32>
  %377 = icmp sgt <8 x i32> %broadcast.splat150, %376
  %378 = extractelement <8 x i64> %375, i32 0
  %379 = shl i64 %378, 32
  %380 = ashr exact i64 %379, 32
  %381 = getelementptr inbounds float, float* %7, i64 %380
  %382 = bitcast float* %381 to <8 x float>*
  %wide.masked.load151.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %382, i32 4, <8 x i1> %377, <8 x float> undef), !tbaa !12, !alias.scope !89, !noalias !92
  %383 = extractelement <8 x i32> %376, i32 0
  %384 = add nsw i32 %mul.i.i.4, %383
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds float, float* %11, i64 %385
  %387 = bitcast float* %386 to <8 x float>*
  %wide.masked.load152.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %387, i32 4, <8 x i1> %377, <8 x float> undef), !tbaa !12, !alias.scope !92
  %388 = fsub <8 x float> %wide.masked.load152.2, %wide.masked.load151.2
  %389 = bitcast float* %386 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %388, <8 x float>* %389, i32 4, <8 x i1> %377), !tbaa !12, !alias.scope !92, !llvm.access.group !21
  %390 = or <8 x i64> %broadcast.splat148, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %391 = trunc <8 x i64> %390 to <8 x i32>
  %392 = icmp sgt <8 x i32> %broadcast.splat150, %391
  %393 = extractelement <8 x i64> %390, i32 0
  %394 = shl i64 %393, 32
  %395 = ashr exact i64 %394, 32
  %396 = getelementptr inbounds float, float* %7, i64 %395
  %397 = bitcast float* %396 to <8 x float>*
  %wide.masked.load151.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %397, i32 4, <8 x i1> %392, <8 x float> undef), !tbaa !12, !alias.scope !89, !noalias !92
  %398 = extractelement <8 x i32> %391, i32 0
  %399 = add nsw i32 %mul.i.i.4, %398
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds float, float* %11, i64 %400
  %402 = bitcast float* %401 to <8 x float>*
  %wide.masked.load152.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %402, i32 4, <8 x i1> %392, <8 x float> undef), !tbaa !12, !alias.scope !92
  %403 = fsub <8 x float> %wide.masked.load152.3, %wide.masked.load151.3
  %404 = bitcast float* %401 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %403, <8 x float>* %404, i32 4, <8 x i1> %392), !tbaa !12, !alias.scope !92, !llvm.access.group !21
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.4:                 ; preds = %if.end.r_exit.i.i.us.4.1, %pregion_for_entry.entry.i.i.us.4.preheader
  %_local_id_x.i.0.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.4.preheader ], [ %650, %if.end.r_exit.i.i.us.4.1 ]
  %add1.i.i.i.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.4, %mul.i.i.i
  %conv.i.i.us.4 = trunc i64 %add1.i.i.i.us.4 to i32
  %cmp4.i.i.us.4 = icmp sgt i32 %15, %conv.i.i.us.4
  br i1 %cmp4.i.i.us.4, label %if.then.i.i.us.4, label %if.end.r_exit.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %pregion_for_entry.entry.i.i.us.4
  %sext.i.i.us.4 = shl i64 %add1.i.i.i.us.4, 32
  %idxprom.i.i.us.4 = ashr exact i64 %sext.i.i.us.4, 32
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.4
  %405 = load float, float* %arrayidx.i.i.us.4, align 4, !tbaa !12
  %add.i.i.us.4 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4
  %idxprom6.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx7.i.i.us.4 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.4
  %406 = load float, float* %arrayidx7.i.i.us.4, align 4, !tbaa !12
  %sub.i.i.us.4 = fsub float %406, %405
  store float %sub.i.i.us.4, float* %arrayidx7.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.4

if.end.r_exit.i.i.us.4:                           ; preds = %if.then.i.i.us.4, %pregion_for_entry.entry.i.i.us.4
  %407 = or i64 %_local_id_x.i.0.us.4, 1
  %add1.i.i.i.us.4.1 = add nuw nsw i64 %407, %mul.i.i.i
  %conv.i.i.us.4.1 = trunc i64 %add1.i.i.i.us.4.1 to i32
  %cmp4.i.i.us.4.1 = icmp sgt i32 %15, %conv.i.i.us.4.1
  br i1 %cmp4.i.i.us.4.1, label %if.then.i.i.us.4.1, label %if.end.r_exit.i.i.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.r_exit.i.i.us.4.1
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph140, %pregion_for_end.i.i.3
  %408 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.5 = or i32 %408, 5
  %cmp.i.i.5 = icmp sgt i32 %19, %conv2.i.i.5
  %mul.i.i.5 = mul nsw i32 %15, %conv2.i.i.5
  br i1 %cmp.i.i.5, label %vector.scevcheck160, label %pregion_for_end.i.i.5

vector.scevcheck160:                              ; preds = %pregion_for_end.i.i.4
  %409 = mul i32 %15, %conv2.i.i.5
  %410 = trunc i64 %2 to i32
  %411 = shl i32 %410, 5
  %412 = add i32 %409, %411
  %413 = icmp sgt i32 %412, 2147483616
  br i1 %413, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.memcheck174

pregion_for_entry.entry.i.i.us.5.preheader:       ; preds = %vector.memcheck174, %vector.scevcheck160
  br label %pregion_for_entry.entry.i.i.us.5

vector.memcheck174:                               ; preds = %vector.scevcheck160
  %414 = trunc i64 %2 to i32
  %415 = shl i32 %414, 5
  %416 = sext i32 %415 to i64
  %scevgep162 = getelementptr float, float* %7, i64 %416
  %417 = add nsw i64 %416, 32
  %scevgep164 = getelementptr float, float* %7, i64 %417
  %418 = mul i32 %15, %conv2.i.i.5
  %419 = add i32 %418, %415
  %420 = sext i32 %419 to i64
  %scevgep166 = getelementptr float, float* %11, i64 %420
  %421 = add nsw i64 %420, 32
  %scevgep168 = getelementptr float, float* %11, i64 %421
  %bound0170 = icmp ult float* %scevgep162, %scevgep168
  %bound1171 = icmp ult float* %scevgep166, %scevgep164
  %found.conflict172 = and i1 %bound0170, %bound1171
  br i1 %found.conflict172, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck174
  %broadcast.splatinsert182 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat183 = shufflevector <8 x i64> %broadcast.splatinsert182, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert184 = insertelement <8 x i32> undef, i32 %15, i32 0
  %broadcast.splat185 = shufflevector <8 x i32> %broadcast.splatinsert184, <8 x i32> undef, <8 x i32> zeroinitializer
  %422 = or <8 x i64> %broadcast.splat183, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %423 = trunc <8 x i64> %422 to <8 x i32>
  %424 = icmp sgt <8 x i32> %broadcast.splat185, %423
  %425 = extractelement <8 x i64> %422, i32 0
  %426 = shl i64 %425, 32
  %427 = ashr exact i64 %426, 32
  %428 = getelementptr inbounds float, float* %7, i64 %427
  %429 = bitcast float* %428 to <8 x float>*
  %wide.masked.load186 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %429, i32 4, <8 x i1> %424, <8 x float> undef), !tbaa !12, !alias.scope !94, !noalias !97
  %430 = extractelement <8 x i32> %423, i32 0
  %431 = add nsw i32 %mul.i.i.5, %430
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds float, float* %11, i64 %432
  %434 = bitcast float* %433 to <8 x float>*
  %wide.masked.load187 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %434, i32 4, <8 x i1> %424, <8 x float> undef), !tbaa !12, !alias.scope !97
  %435 = fsub <8 x float> %wide.masked.load187, %wide.masked.load186
  %436 = bitcast float* %433 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %435, <8 x float>* %436, i32 4, <8 x i1> %424), !tbaa !12, !alias.scope !97, !llvm.access.group !21
  %437 = or <8 x i64> %broadcast.splat183, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %438 = trunc <8 x i64> %437 to <8 x i32>
  %439 = icmp sgt <8 x i32> %broadcast.splat185, %438
  %440 = extractelement <8 x i64> %437, i32 0
  %441 = shl i64 %440, 32
  %442 = ashr exact i64 %441, 32
  %443 = getelementptr inbounds float, float* %7, i64 %442
  %444 = bitcast float* %443 to <8 x float>*
  %wide.masked.load186.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %444, i32 4, <8 x i1> %439, <8 x float> undef), !tbaa !12, !alias.scope !94, !noalias !97
  %445 = extractelement <8 x i32> %438, i32 0
  %446 = add nsw i32 %mul.i.i.5, %445
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds float, float* %11, i64 %447
  %449 = bitcast float* %448 to <8 x float>*
  %wide.masked.load187.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %449, i32 4, <8 x i1> %439, <8 x float> undef), !tbaa !12, !alias.scope !97
  %450 = fsub <8 x float> %wide.masked.load187.1, %wide.masked.load186.1
  %451 = bitcast float* %448 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %450, <8 x float>* %451, i32 4, <8 x i1> %439), !tbaa !12, !alias.scope !97, !llvm.access.group !21
  %452 = or <8 x i64> %broadcast.splat183, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %453 = trunc <8 x i64> %452 to <8 x i32>
  %454 = icmp sgt <8 x i32> %broadcast.splat185, %453
  %455 = extractelement <8 x i64> %452, i32 0
  %456 = shl i64 %455, 32
  %457 = ashr exact i64 %456, 32
  %458 = getelementptr inbounds float, float* %7, i64 %457
  %459 = bitcast float* %458 to <8 x float>*
  %wide.masked.load186.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %459, i32 4, <8 x i1> %454, <8 x float> undef), !tbaa !12, !alias.scope !94, !noalias !97
  %460 = extractelement <8 x i32> %453, i32 0
  %461 = add nsw i32 %mul.i.i.5, %460
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds float, float* %11, i64 %462
  %464 = bitcast float* %463 to <8 x float>*
  %wide.masked.load187.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %464, i32 4, <8 x i1> %454, <8 x float> undef), !tbaa !12, !alias.scope !97
  %465 = fsub <8 x float> %wide.masked.load187.2, %wide.masked.load186.2
  %466 = bitcast float* %463 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %465, <8 x float>* %466, i32 4, <8 x i1> %454), !tbaa !12, !alias.scope !97, !llvm.access.group !21
  %467 = or <8 x i64> %broadcast.splat183, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %468 = trunc <8 x i64> %467 to <8 x i32>
  %469 = icmp sgt <8 x i32> %broadcast.splat185, %468
  %470 = extractelement <8 x i64> %467, i32 0
  %471 = shl i64 %470, 32
  %472 = ashr exact i64 %471, 32
  %473 = getelementptr inbounds float, float* %7, i64 %472
  %474 = bitcast float* %473 to <8 x float>*
  %wide.masked.load186.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %474, i32 4, <8 x i1> %469, <8 x float> undef), !tbaa !12, !alias.scope !94, !noalias !97
  %475 = extractelement <8 x i32> %468, i32 0
  %476 = add nsw i32 %mul.i.i.5, %475
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds float, float* %11, i64 %477
  %479 = bitcast float* %478 to <8 x float>*
  %wide.masked.load187.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %479, i32 4, <8 x i1> %469, <8 x float> undef), !tbaa !12, !alias.scope !97
  %480 = fsub <8 x float> %wide.masked.load187.3, %wide.masked.load186.3
  %481 = bitcast float* %478 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %480, <8 x float>* %481, i32 4, <8 x i1> %469), !tbaa !12, !alias.scope !97, !llvm.access.group !21
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.5:                 ; preds = %if.end.r_exit.i.i.us.5.1, %pregion_for_entry.entry.i.i.us.5.preheader
  %_local_id_x.i.0.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.5.preheader ], [ %647, %if.end.r_exit.i.i.us.5.1 ]
  %add1.i.i.i.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.5, %mul.i.i.i
  %conv.i.i.us.5 = trunc i64 %add1.i.i.i.us.5 to i32
  %cmp4.i.i.us.5 = icmp sgt i32 %15, %conv.i.i.us.5
  br i1 %cmp4.i.i.us.5, label %if.then.i.i.us.5, label %if.end.r_exit.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %pregion_for_entry.entry.i.i.us.5
  %sext.i.i.us.5 = shl i64 %add1.i.i.i.us.5, 32
  %idxprom.i.i.us.5 = ashr exact i64 %sext.i.i.us.5, 32
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.5
  %482 = load float, float* %arrayidx.i.i.us.5, align 4, !tbaa !12
  %add.i.i.us.5 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5
  %idxprom6.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx7.i.i.us.5 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.5
  %483 = load float, float* %arrayidx7.i.i.us.5, align 4, !tbaa !12
  %sub.i.i.us.5 = fsub float %483, %482
  store float %sub.i.i.us.5, float* %arrayidx7.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.5

if.end.r_exit.i.i.us.5:                           ; preds = %if.then.i.i.us.5, %pregion_for_entry.entry.i.i.us.5
  %484 = or i64 %_local_id_x.i.0.us.5, 1
  %add1.i.i.i.us.5.1 = add nuw nsw i64 %484, %mul.i.i.i
  %conv.i.i.us.5.1 = trunc i64 %add1.i.i.i.us.5.1 to i32
  %cmp4.i.i.us.5.1 = icmp sgt i32 %15, %conv.i.i.us.5.1
  br i1 %cmp4.i.i.us.5.1, label %if.then.i.i.us.5.1, label %if.end.r_exit.i.i.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.r_exit.i.i.us.5.1
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph175, %pregion_for_end.i.i.4
  %485 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.6 = or i32 %485, 6
  %cmp.i.i.6 = icmp sgt i32 %19, %conv2.i.i.6
  %mul.i.i.6 = mul nsw i32 %15, %conv2.i.i.6
  br i1 %cmp.i.i.6, label %vector.scevcheck195, label %pregion_for_end.i.i.6

vector.scevcheck195:                              ; preds = %pregion_for_end.i.i.5
  %486 = mul i32 %15, %conv2.i.i.6
  %487 = trunc i64 %2 to i32
  %488 = shl i32 %487, 5
  %489 = add i32 %486, %488
  %490 = icmp sgt i32 %489, 2147483616
  br i1 %490, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.memcheck209

pregion_for_entry.entry.i.i.us.6.preheader:       ; preds = %vector.memcheck209, %vector.scevcheck195
  br label %pregion_for_entry.entry.i.i.us.6

vector.memcheck209:                               ; preds = %vector.scevcheck195
  %491 = trunc i64 %2 to i32
  %492 = shl i32 %491, 5
  %493 = sext i32 %492 to i64
  %scevgep197 = getelementptr float, float* %7, i64 %493
  %494 = add nsw i64 %493, 32
  %scevgep199 = getelementptr float, float* %7, i64 %494
  %495 = mul i32 %15, %conv2.i.i.6
  %496 = add i32 %495, %492
  %497 = sext i32 %496 to i64
  %scevgep201 = getelementptr float, float* %11, i64 %497
  %498 = add nsw i64 %497, 32
  %scevgep203 = getelementptr float, float* %11, i64 %498
  %bound0205 = icmp ult float* %scevgep197, %scevgep203
  %bound1206 = icmp ult float* %scevgep201, %scevgep199
  %found.conflict207 = and i1 %bound0205, %bound1206
  br i1 %found.conflict207, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %vector.memcheck209
  %broadcast.splatinsert217 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat218 = shufflevector <8 x i64> %broadcast.splatinsert217, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert219 = insertelement <8 x i32> undef, i32 %15, i32 0
  %broadcast.splat220 = shufflevector <8 x i32> %broadcast.splatinsert219, <8 x i32> undef, <8 x i32> zeroinitializer
  %499 = or <8 x i64> %broadcast.splat218, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %500 = trunc <8 x i64> %499 to <8 x i32>
  %501 = icmp sgt <8 x i32> %broadcast.splat220, %500
  %502 = extractelement <8 x i64> %499, i32 0
  %503 = shl i64 %502, 32
  %504 = ashr exact i64 %503, 32
  %505 = getelementptr inbounds float, float* %7, i64 %504
  %506 = bitcast float* %505 to <8 x float>*
  %wide.masked.load221 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %506, i32 4, <8 x i1> %501, <8 x float> undef), !tbaa !12, !alias.scope !99, !noalias !102
  %507 = extractelement <8 x i32> %500, i32 0
  %508 = add nsw i32 %mul.i.i.6, %507
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds float, float* %11, i64 %509
  %511 = bitcast float* %510 to <8 x float>*
  %wide.masked.load222 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %511, i32 4, <8 x i1> %501, <8 x float> undef), !tbaa !12, !alias.scope !102
  %512 = fsub <8 x float> %wide.masked.load222, %wide.masked.load221
  %513 = bitcast float* %510 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %512, <8 x float>* %513, i32 4, <8 x i1> %501), !tbaa !12, !alias.scope !102, !llvm.access.group !21
  %514 = or <8 x i64> %broadcast.splat218, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %515 = trunc <8 x i64> %514 to <8 x i32>
  %516 = icmp sgt <8 x i32> %broadcast.splat220, %515
  %517 = extractelement <8 x i64> %514, i32 0
  %518 = shl i64 %517, 32
  %519 = ashr exact i64 %518, 32
  %520 = getelementptr inbounds float, float* %7, i64 %519
  %521 = bitcast float* %520 to <8 x float>*
  %wide.masked.load221.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %521, i32 4, <8 x i1> %516, <8 x float> undef), !tbaa !12, !alias.scope !99, !noalias !102
  %522 = extractelement <8 x i32> %515, i32 0
  %523 = add nsw i32 %mul.i.i.6, %522
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds float, float* %11, i64 %524
  %526 = bitcast float* %525 to <8 x float>*
  %wide.masked.load222.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %526, i32 4, <8 x i1> %516, <8 x float> undef), !tbaa !12, !alias.scope !102
  %527 = fsub <8 x float> %wide.masked.load222.1, %wide.masked.load221.1
  %528 = bitcast float* %525 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %527, <8 x float>* %528, i32 4, <8 x i1> %516), !tbaa !12, !alias.scope !102, !llvm.access.group !21
  %529 = or <8 x i64> %broadcast.splat218, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %530 = trunc <8 x i64> %529 to <8 x i32>
  %531 = icmp sgt <8 x i32> %broadcast.splat220, %530
  %532 = extractelement <8 x i64> %529, i32 0
  %533 = shl i64 %532, 32
  %534 = ashr exact i64 %533, 32
  %535 = getelementptr inbounds float, float* %7, i64 %534
  %536 = bitcast float* %535 to <8 x float>*
  %wide.masked.load221.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %536, i32 4, <8 x i1> %531, <8 x float> undef), !tbaa !12, !alias.scope !99, !noalias !102
  %537 = extractelement <8 x i32> %530, i32 0
  %538 = add nsw i32 %mul.i.i.6, %537
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds float, float* %11, i64 %539
  %541 = bitcast float* %540 to <8 x float>*
  %wide.masked.load222.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %541, i32 4, <8 x i1> %531, <8 x float> undef), !tbaa !12, !alias.scope !102
  %542 = fsub <8 x float> %wide.masked.load222.2, %wide.masked.load221.2
  %543 = bitcast float* %540 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %542, <8 x float>* %543, i32 4, <8 x i1> %531), !tbaa !12, !alias.scope !102, !llvm.access.group !21
  %544 = or <8 x i64> %broadcast.splat218, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %545 = trunc <8 x i64> %544 to <8 x i32>
  %546 = icmp sgt <8 x i32> %broadcast.splat220, %545
  %547 = extractelement <8 x i64> %544, i32 0
  %548 = shl i64 %547, 32
  %549 = ashr exact i64 %548, 32
  %550 = getelementptr inbounds float, float* %7, i64 %549
  %551 = bitcast float* %550 to <8 x float>*
  %wide.masked.load221.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %551, i32 4, <8 x i1> %546, <8 x float> undef), !tbaa !12, !alias.scope !99, !noalias !102
  %552 = extractelement <8 x i32> %545, i32 0
  %553 = add nsw i32 %mul.i.i.6, %552
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds float, float* %11, i64 %554
  %556 = bitcast float* %555 to <8 x float>*
  %wide.masked.load222.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %556, i32 4, <8 x i1> %546, <8 x float> undef), !tbaa !12, !alias.scope !102
  %557 = fsub <8 x float> %wide.masked.load222.3, %wide.masked.load221.3
  %558 = bitcast float* %555 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %557, <8 x float>* %558, i32 4, <8 x i1> %546), !tbaa !12, !alias.scope !102, !llvm.access.group !21
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.6:                 ; preds = %if.end.r_exit.i.i.us.6.1, %pregion_for_entry.entry.i.i.us.6.preheader
  %_local_id_x.i.0.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.6.preheader ], [ %644, %if.end.r_exit.i.i.us.6.1 ]
  %add1.i.i.i.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.6, %mul.i.i.i
  %conv.i.i.us.6 = trunc i64 %add1.i.i.i.us.6 to i32
  %cmp4.i.i.us.6 = icmp sgt i32 %15, %conv.i.i.us.6
  br i1 %cmp4.i.i.us.6, label %if.then.i.i.us.6, label %if.end.r_exit.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %pregion_for_entry.entry.i.i.us.6
  %sext.i.i.us.6 = shl i64 %add1.i.i.i.us.6, 32
  %idxprom.i.i.us.6 = ashr exact i64 %sext.i.i.us.6, 32
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.6
  %559 = load float, float* %arrayidx.i.i.us.6, align 4, !tbaa !12
  %add.i.i.us.6 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6
  %idxprom6.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx7.i.i.us.6 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.6
  %560 = load float, float* %arrayidx7.i.i.us.6, align 4, !tbaa !12
  %sub.i.i.us.6 = fsub float %560, %559
  store float %sub.i.i.us.6, float* %arrayidx7.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.6

if.end.r_exit.i.i.us.6:                           ; preds = %if.then.i.i.us.6, %pregion_for_entry.entry.i.i.us.6
  %561 = or i64 %_local_id_x.i.0.us.6, 1
  %add1.i.i.i.us.6.1 = add nuw nsw i64 %561, %mul.i.i.i
  %conv.i.i.us.6.1 = trunc i64 %add1.i.i.i.us.6.1 to i32
  %cmp4.i.i.us.6.1 = icmp sgt i32 %15, %conv.i.i.us.6.1
  br i1 %cmp4.i.i.us.6.1, label %if.then.i.i.us.6.1, label %if.end.r_exit.i.i.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.r_exit.i.i.us.6.1
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph210, %pregion_for_end.i.i.5
  %562 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.7 = or i32 %562, 7
  %cmp.i.i.7 = icmp sgt i32 %19, %conv2.i.i.7
  %mul.i.i.7 = mul nsw i32 %15, %conv2.i.i.7
  br i1 %cmp.i.i.7, label %vector.scevcheck230, label %pregion_for_end.i.i.7

vector.scevcheck230:                              ; preds = %pregion_for_end.i.i.6
  %563 = mul i32 %15, %conv2.i.i.7
  %564 = trunc i64 %2 to i32
  %565 = shl i32 %564, 5
  %566 = add i32 %563, %565
  %567 = icmp sgt i32 %566, 2147483616
  br i1 %567, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.memcheck244

pregion_for_entry.entry.i.i.us.7.preheader:       ; preds = %vector.memcheck244, %vector.scevcheck230
  br label %pregion_for_entry.entry.i.i.us.7

vector.memcheck244:                               ; preds = %vector.scevcheck230
  %568 = trunc i64 %2 to i32
  %569 = shl i32 %568, 5
  %570 = sext i32 %569 to i64
  %scevgep232 = getelementptr float, float* %7, i64 %570
  %571 = add nsw i64 %570, 32
  %scevgep234 = getelementptr float, float* %7, i64 %571
  %572 = mul i32 %15, %conv2.i.i.7
  %573 = add i32 %572, %569
  %574 = sext i32 %573 to i64
  %scevgep236 = getelementptr float, float* %11, i64 %574
  %575 = add nsw i64 %574, 32
  %scevgep238 = getelementptr float, float* %11, i64 %575
  %bound0240 = icmp ult float* %scevgep232, %scevgep238
  %bound1241 = icmp ult float* %scevgep236, %scevgep234
  %found.conflict242 = and i1 %bound0240, %bound1241
  br i1 %found.conflict242, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.ph245

vector.ph245:                                     ; preds = %vector.memcheck244
  %broadcast.splatinsert252 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat253 = shufflevector <8 x i64> %broadcast.splatinsert252, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert254 = insertelement <8 x i32> undef, i32 %15, i32 0
  %broadcast.splat255 = shufflevector <8 x i32> %broadcast.splatinsert254, <8 x i32> undef, <8 x i32> zeroinitializer
  %576 = or <8 x i64> %broadcast.splat253, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %577 = trunc <8 x i64> %576 to <8 x i32>
  %578 = icmp sgt <8 x i32> %broadcast.splat255, %577
  %579 = extractelement <8 x i64> %576, i32 0
  %580 = shl i64 %579, 32
  %581 = ashr exact i64 %580, 32
  %582 = getelementptr inbounds float, float* %7, i64 %581
  %583 = bitcast float* %582 to <8 x float>*
  %wide.masked.load256 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %583, i32 4, <8 x i1> %578, <8 x float> undef), !tbaa !12, !alias.scope !104, !noalias !107
  %584 = extractelement <8 x i32> %577, i32 0
  %585 = add nsw i32 %mul.i.i.7, %584
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds float, float* %11, i64 %586
  %588 = bitcast float* %587 to <8 x float>*
  %wide.masked.load257 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %588, i32 4, <8 x i1> %578, <8 x float> undef), !tbaa !12, !alias.scope !107
  %589 = fsub <8 x float> %wide.masked.load257, %wide.masked.load256
  %590 = bitcast float* %587 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %589, <8 x float>* %590, i32 4, <8 x i1> %578), !tbaa !12, !alias.scope !107, !llvm.access.group !21
  %591 = or <8 x i64> %broadcast.splat253, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %592 = trunc <8 x i64> %591 to <8 x i32>
  %593 = icmp sgt <8 x i32> %broadcast.splat255, %592
  %594 = extractelement <8 x i64> %591, i32 0
  %595 = shl i64 %594, 32
  %596 = ashr exact i64 %595, 32
  %597 = getelementptr inbounds float, float* %7, i64 %596
  %598 = bitcast float* %597 to <8 x float>*
  %wide.masked.load256.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %598, i32 4, <8 x i1> %593, <8 x float> undef), !tbaa !12, !alias.scope !104, !noalias !107
  %599 = extractelement <8 x i32> %592, i32 0
  %600 = add nsw i32 %mul.i.i.7, %599
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds float, float* %11, i64 %601
  %603 = bitcast float* %602 to <8 x float>*
  %wide.masked.load257.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %603, i32 4, <8 x i1> %593, <8 x float> undef), !tbaa !12, !alias.scope !107
  %604 = fsub <8 x float> %wide.masked.load257.1, %wide.masked.load256.1
  %605 = bitcast float* %602 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %604, <8 x float>* %605, i32 4, <8 x i1> %593), !tbaa !12, !alias.scope !107, !llvm.access.group !21
  %606 = or <8 x i64> %broadcast.splat253, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %607 = trunc <8 x i64> %606 to <8 x i32>
  %608 = icmp sgt <8 x i32> %broadcast.splat255, %607
  %609 = extractelement <8 x i64> %606, i32 0
  %610 = shl i64 %609, 32
  %611 = ashr exact i64 %610, 32
  %612 = getelementptr inbounds float, float* %7, i64 %611
  %613 = bitcast float* %612 to <8 x float>*
  %wide.masked.load256.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %613, i32 4, <8 x i1> %608, <8 x float> undef), !tbaa !12, !alias.scope !104, !noalias !107
  %614 = extractelement <8 x i32> %607, i32 0
  %615 = add nsw i32 %mul.i.i.7, %614
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds float, float* %11, i64 %616
  %618 = bitcast float* %617 to <8 x float>*
  %wide.masked.load257.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %618, i32 4, <8 x i1> %608, <8 x float> undef), !tbaa !12, !alias.scope !107
  %619 = fsub <8 x float> %wide.masked.load257.2, %wide.masked.load256.2
  %620 = bitcast float* %617 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %619, <8 x float>* %620, i32 4, <8 x i1> %608), !tbaa !12, !alias.scope !107, !llvm.access.group !21
  %621 = or <8 x i64> %broadcast.splat253, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %622 = trunc <8 x i64> %621 to <8 x i32>
  %623 = icmp sgt <8 x i32> %broadcast.splat255, %622
  %624 = extractelement <8 x i64> %621, i32 0
  %625 = shl i64 %624, 32
  %626 = ashr exact i64 %625, 32
  %627 = getelementptr inbounds float, float* %7, i64 %626
  %628 = bitcast float* %627 to <8 x float>*
  %wide.masked.load256.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %628, i32 4, <8 x i1> %623, <8 x float> undef), !tbaa !12, !alias.scope !104, !noalias !107
  %629 = extractelement <8 x i32> %622, i32 0
  %630 = add nsw i32 %mul.i.i.7, %629
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds float, float* %11, i64 %631
  %633 = bitcast float* %632 to <8 x float>*
  %wide.masked.load257.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %633, i32 4, <8 x i1> %623, <8 x float> undef), !tbaa !12, !alias.scope !107
  %634 = fsub <8 x float> %wide.masked.load257.3, %wide.masked.load256.3
  %635 = bitcast float* %632 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %634, <8 x float>* %635, i32 4, <8 x i1> %623), !tbaa !12, !alias.scope !107, !llvm.access.group !21
  br label %pregion_for_end.i.i.7

pregion_for_entry.entry.i.i.us.7:                 ; preds = %if.end.r_exit.i.i.us.7.1, %pregion_for_entry.entry.i.i.us.7.preheader
  %_local_id_x.i.0.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.7.preheader ], [ %641, %if.end.r_exit.i.i.us.7.1 ]
  %add1.i.i.i.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.7, %mul.i.i.i
  %conv.i.i.us.7 = trunc i64 %add1.i.i.i.us.7 to i32
  %cmp4.i.i.us.7 = icmp sgt i32 %15, %conv.i.i.us.7
  br i1 %cmp4.i.i.us.7, label %if.then.i.i.us.7, label %if.end.r_exit.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %pregion_for_entry.entry.i.i.us.7
  %sext.i.i.us.7 = shl i64 %add1.i.i.i.us.7, 32
  %idxprom.i.i.us.7 = ashr exact i64 %sext.i.i.us.7, 32
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.7
  %636 = load float, float* %arrayidx.i.i.us.7, align 4, !tbaa !12
  %add.i.i.us.7 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7
  %idxprom6.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx7.i.i.us.7 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.7
  %637 = load float, float* %arrayidx7.i.i.us.7, align 4, !tbaa !12
  %sub.i.i.us.7 = fsub float %637, %636
  store float %sub.i.i.us.7, float* %arrayidx7.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.7

if.end.r_exit.i.i.us.7:                           ; preds = %if.then.i.i.us.7, %pregion_for_entry.entry.i.i.us.7
  %638 = or i64 %_local_id_x.i.0.us.7, 1
  %add1.i.i.i.us.7.1 = add nuw nsw i64 %638, %mul.i.i.i
  %conv.i.i.us.7.1 = trunc i64 %add1.i.i.i.us.7.1 to i32
  %cmp4.i.i.us.7.1 = icmp sgt i32 %15, %conv.i.i.us.7.1
  br i1 %cmp4.i.i.us.7.1, label %if.then.i.i.us.7.1, label %if.end.r_exit.i.i.us.7.1

pregion_for_end.i.i.7.loopexit:                   ; preds = %if.end.r_exit.i.i.us.7.1
  br label %pregion_for_end.i.i.7

pregion_for_end.i.i.7:                            ; preds = %pregion_for_end.i.i.7.loopexit, %vector.ph245, %pregion_for_end.i.i.6
  ret void

if.then.i.i.us.7.1:                               ; preds = %if.end.r_exit.i.i.us.7
  %sext.i.i.us.7.1 = shl i64 %add1.i.i.i.us.7.1, 32
  %idxprom.i.i.us.7.1 = ashr exact i64 %sext.i.i.us.7.1, 32
  %arrayidx.i.i.us.7.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.7.1
  %639 = load float, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12
  %add.i.i.us.7.1 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.1
  %idxprom6.i.i.us.7.1 = sext i32 %add.i.i.us.7.1 to i64
  %arrayidx7.i.i.us.7.1 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.7.1
  %640 = load float, float* %arrayidx7.i.i.us.7.1, align 4, !tbaa !12
  %sub.i.i.us.7.1 = fsub float %640, %639
  store float %sub.i.i.us.7.1, float* %arrayidx7.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.7.1

if.end.r_exit.i.i.us.7.1:                         ; preds = %if.then.i.i.us.7.1, %if.end.r_exit.i.i.us.7
  %641 = add nuw nsw i64 %_local_id_x.i.0.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %641, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.i.7.loopexit, label %pregion_for_entry.entry.i.i.us.7, !llvm.loop !109

if.then.i.i.us.6.1:                               ; preds = %if.end.r_exit.i.i.us.6
  %sext.i.i.us.6.1 = shl i64 %add1.i.i.i.us.6.1, 32
  %idxprom.i.i.us.6.1 = ashr exact i64 %sext.i.i.us.6.1, 32
  %arrayidx.i.i.us.6.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.6.1
  %642 = load float, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12
  %add.i.i.us.6.1 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.1
  %idxprom6.i.i.us.6.1 = sext i32 %add.i.i.us.6.1 to i64
  %arrayidx7.i.i.us.6.1 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.6.1
  %643 = load float, float* %arrayidx7.i.i.us.6.1, align 4, !tbaa !12
  %sub.i.i.us.6.1 = fsub float %643, %642
  store float %sub.i.i.us.6.1, float* %arrayidx7.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.6.1

if.end.r_exit.i.i.us.6.1:                         ; preds = %if.then.i.i.us.6.1, %if.end.r_exit.i.i.us.6
  %644 = add nuw nsw i64 %_local_id_x.i.0.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %644, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.6, !llvm.loop !110

if.then.i.i.us.5.1:                               ; preds = %if.end.r_exit.i.i.us.5
  %sext.i.i.us.5.1 = shl i64 %add1.i.i.i.us.5.1, 32
  %idxprom.i.i.us.5.1 = ashr exact i64 %sext.i.i.us.5.1, 32
  %arrayidx.i.i.us.5.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.5.1
  %645 = load float, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12
  %add.i.i.us.5.1 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.1
  %idxprom6.i.i.us.5.1 = sext i32 %add.i.i.us.5.1 to i64
  %arrayidx7.i.i.us.5.1 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.5.1
  %646 = load float, float* %arrayidx7.i.i.us.5.1, align 4, !tbaa !12
  %sub.i.i.us.5.1 = fsub float %646, %645
  store float %sub.i.i.us.5.1, float* %arrayidx7.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.5.1

if.end.r_exit.i.i.us.5.1:                         ; preds = %if.then.i.i.us.5.1, %if.end.r_exit.i.i.us.5
  %647 = add nuw nsw i64 %_local_id_x.i.0.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %647, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.5, !llvm.loop !111

if.then.i.i.us.4.1:                               ; preds = %if.end.r_exit.i.i.us.4
  %sext.i.i.us.4.1 = shl i64 %add1.i.i.i.us.4.1, 32
  %idxprom.i.i.us.4.1 = ashr exact i64 %sext.i.i.us.4.1, 32
  %arrayidx.i.i.us.4.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.4.1
  %648 = load float, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12
  %add.i.i.us.4.1 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.1
  %idxprom6.i.i.us.4.1 = sext i32 %add.i.i.us.4.1 to i64
  %arrayidx7.i.i.us.4.1 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.4.1
  %649 = load float, float* %arrayidx7.i.i.us.4.1, align 4, !tbaa !12
  %sub.i.i.us.4.1 = fsub float %649, %648
  store float %sub.i.i.us.4.1, float* %arrayidx7.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.4.1

if.end.r_exit.i.i.us.4.1:                         ; preds = %if.then.i.i.us.4.1, %if.end.r_exit.i.i.us.4
  %650 = add nuw nsw i64 %_local_id_x.i.0.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %650, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.4, !llvm.loop !112

if.then.i.i.us.3.1:                               ; preds = %if.end.r_exit.i.i.us.3
  %sext.i.i.us.3.1 = shl i64 %add1.i.i.i.us.3.1, 32
  %idxprom.i.i.us.3.1 = ashr exact i64 %sext.i.i.us.3.1, 32
  %arrayidx.i.i.us.3.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.3.1
  %651 = load float, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12
  %add.i.i.us.3.1 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.1
  %idxprom6.i.i.us.3.1 = sext i32 %add.i.i.us.3.1 to i64
  %arrayidx7.i.i.us.3.1 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.3.1
  %652 = load float, float* %arrayidx7.i.i.us.3.1, align 4, !tbaa !12
  %sub.i.i.us.3.1 = fsub float %652, %651
  store float %sub.i.i.us.3.1, float* %arrayidx7.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.3.1

if.end.r_exit.i.i.us.3.1:                         ; preds = %if.then.i.i.us.3.1, %if.end.r_exit.i.i.us.3
  %653 = add nuw nsw i64 %_local_id_x.i.0.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %653, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.3, !llvm.loop !113

if.then.i.i.us.2.1:                               ; preds = %if.end.r_exit.i.i.us.2
  %sext.i.i.us.2.1 = shl i64 %add1.i.i.i.us.2.1, 32
  %idxprom.i.i.us.2.1 = ashr exact i64 %sext.i.i.us.2.1, 32
  %arrayidx.i.i.us.2.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.2.1
  %654 = load float, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12
  %add.i.i.us.2.1 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.1
  %idxprom6.i.i.us.2.1 = sext i32 %add.i.i.us.2.1 to i64
  %arrayidx7.i.i.us.2.1 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.2.1
  %655 = load float, float* %arrayidx7.i.i.us.2.1, align 4, !tbaa !12
  %sub.i.i.us.2.1 = fsub float %655, %654
  store float %sub.i.i.us.2.1, float* %arrayidx7.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.2.1

if.end.r_exit.i.i.us.2.1:                         ; preds = %if.then.i.i.us.2.1, %if.end.r_exit.i.i.us.2
  %656 = add nuw nsw i64 %_local_id_x.i.0.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %656, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.2, !llvm.loop !114

if.then.i.i.us.1.1:                               ; preds = %if.end.r_exit.i.i.us.1
  %sext.i.i.us.1.1 = shl i64 %add1.i.i.i.us.1.1, 32
  %idxprom.i.i.us.1.1 = ashr exact i64 %sext.i.i.us.1.1, 32
  %arrayidx.i.i.us.1.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.1.1
  %657 = load float, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12
  %add.i.i.us.1.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.1
  %idxprom6.i.i.us.1.1 = sext i32 %add.i.i.us.1.1 to i64
  %arrayidx7.i.i.us.1.1 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.1.1
  %658 = load float, float* %arrayidx7.i.i.us.1.1, align 4, !tbaa !12
  %sub.i.i.us.1.1 = fsub float %658, %657
  store float %sub.i.i.us.1.1, float* %arrayidx7.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.1.1

if.end.r_exit.i.i.us.1.1:                         ; preds = %if.then.i.i.us.1.1, %if.end.r_exit.i.i.us.1
  %659 = add nuw nsw i64 %_local_id_x.i.0.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %659, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.1, !llvm.loop !115

if.then.i.i.us.1278:                              ; preds = %if.end.r_exit.i.i.us
  %sext.i.i.us.1271 = shl i64 %add1.i.i.i.us.1267, 32
  %idxprom.i.i.us.1272 = ashr exact i64 %sext.i.i.us.1271, 32
  %arrayidx.i.i.us.1273 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.1272
  %660 = load float, float* %arrayidx.i.i.us.1273, align 4, !tbaa !12
  %add.i.i.us.1274 = add nsw i32 %mul.i.i, %conv.i.i.us.1268
  %idxprom6.i.i.us.1275 = sext i32 %add.i.i.us.1274 to i64
  %arrayidx7.i.i.us.1276 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.1275
  %661 = load float, float* %arrayidx7.i.i.us.1276, align 4, !tbaa !12
  %sub.i.i.us.1277 = fsub float %661, %660
  store float %sub.i.i.us.1277, float* %arrayidx7.i.i.us.1276, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.1279

if.end.r_exit.i.i.us.1279:                        ; preds = %if.then.i.i.us.1278, %if.end.r_exit.i.i.us
  %662 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %662, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !116
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_reduce_kernel_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
pregion_for_entry.pregion_for_init.i.i:
  %5 = bitcast i8** %0 to float**
  %6 = load float*, float** %5, align 8
  %7 = getelementptr i8*, i8** %0, i64 1
  %8 = bitcast i8** %7 to float**
  %9 = load float*, float** %8, align 8
  %10 = getelementptr i8*, i8** %0, i64 2
  %11 = bitcast i8** %10 to i32**
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr i8*, i8** %0, i64 3
  %15 = bitcast i8** %14 to i32**
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %conv2.i.i = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %17, %conv2.i.i
  %mul.i.i = mul nsw i32 %13, %conv2.i.i
  br i1 %cmp.i.i, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %18 = trunc i64 %3 to i32
  %19 = mul i32 %13, %18
  %20 = shl i32 %19, 3
  %21 = trunc i64 %2 to i32
  %22 = shl i32 %21, 5
  %23 = add i32 %20, %22
  %24 = icmp sgt i32 %23, 2147483616
  br i1 %24, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %25 = trunc i64 %2 to i32
  %26 = shl i32 %25, 5
  %27 = sext i32 %26 to i64
  %scevgep = getelementptr float, float* %6, i64 %27
  %28 = add nsw i64 %27, 32
  %scevgep4 = getelementptr float, float* %6, i64 %28
  %29 = trunc i64 %3 to i32
  %30 = mul i32 %13, %29
  %31 = shl i32 %30, 3
  %32 = add i32 %31, %26
  %33 = sext i32 %32 to i64
  %scevgep6 = getelementptr float, float* %9, i64 %33
  %34 = add nsw i64 %33, 32
  %scevgep8 = getelementptr float, float* %9, i64 %34
  %bound0 = icmp ult float* %scevgep, %scevgep8
  %bound1 = icmp ult float* %scevgep6, %scevgep4
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert10 = insertelement <8 x i32> undef, i32 %13, i32 0
  %broadcast.splat11 = shufflevector <8 x i32> %broadcast.splatinsert10, <8 x i32> undef, <8 x i32> zeroinitializer
  %35 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %36 = trunc <8 x i64> %35 to <8 x i32>
  %37 = icmp sgt <8 x i32> %broadcast.splat11, %36
  %38 = extractelement <8 x i64> %35, i32 0
  %39 = shl i64 %38, 32
  %40 = ashr exact i64 %39, 32
  %41 = getelementptr inbounds float, float* %6, i64 %40
  %42 = bitcast float* %41 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %42, i32 4, <8 x i1> %37, <8 x float> undef), !tbaa !12, !alias.scope !117, !noalias !120
  %43 = extractelement <8 x i32> %36, i32 0
  %44 = add nsw i32 %mul.i.i, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %9, i64 %45
  %47 = bitcast float* %46 to <8 x float>*
  %wide.masked.load12 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %47, i32 4, <8 x i1> %37, <8 x float> undef), !tbaa !12, !alias.scope !120
  %48 = fsub <8 x float> %wide.masked.load12, %wide.masked.load
  %49 = bitcast float* %46 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %48, <8 x float>* %49, i32 4, <8 x i1> %37), !tbaa !12, !alias.scope !120, !llvm.access.group !21
  %50 = or <8 x i64> %broadcast.splat, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %51 = trunc <8 x i64> %50 to <8 x i32>
  %52 = icmp sgt <8 x i32> %broadcast.splat11, %51
  %53 = extractelement <8 x i64> %50, i32 0
  %54 = shl i64 %53, 32
  %55 = ashr exact i64 %54, 32
  %56 = getelementptr inbounds float, float* %6, i64 %55
  %57 = bitcast float* %56 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %57, i32 4, <8 x i1> %52, <8 x float> undef), !tbaa !12, !alias.scope !117, !noalias !120
  %58 = extractelement <8 x i32> %51, i32 0
  %59 = add nsw i32 %mul.i.i, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %9, i64 %60
  %62 = bitcast float* %61 to <8 x float>*
  %wide.masked.load12.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %62, i32 4, <8 x i1> %52, <8 x float> undef), !tbaa !12, !alias.scope !120
  %63 = fsub <8 x float> %wide.masked.load12.1, %wide.masked.load.1
  %64 = bitcast float* %61 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %63, <8 x float>* %64, i32 4, <8 x i1> %52), !tbaa !12, !alias.scope !120, !llvm.access.group !21
  %65 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %66 = trunc <8 x i64> %65 to <8 x i32>
  %67 = icmp sgt <8 x i32> %broadcast.splat11, %66
  %68 = extractelement <8 x i64> %65, i32 0
  %69 = shl i64 %68, 32
  %70 = ashr exact i64 %69, 32
  %71 = getelementptr inbounds float, float* %6, i64 %70
  %72 = bitcast float* %71 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %72, i32 4, <8 x i1> %67, <8 x float> undef), !tbaa !12, !alias.scope !117, !noalias !120
  %73 = extractelement <8 x i32> %66, i32 0
  %74 = add nsw i32 %mul.i.i, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %9, i64 %75
  %77 = bitcast float* %76 to <8 x float>*
  %wide.masked.load12.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %77, i32 4, <8 x i1> %67, <8 x float> undef), !tbaa !12, !alias.scope !120
  %78 = fsub <8 x float> %wide.masked.load12.2, %wide.masked.load.2
  %79 = bitcast float* %76 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %78, <8 x float>* %79, i32 4, <8 x i1> %67), !tbaa !12, !alias.scope !120, !llvm.access.group !21
  %80 = or <8 x i64> %broadcast.splat, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %81 = trunc <8 x i64> %80 to <8 x i32>
  %82 = icmp sgt <8 x i32> %broadcast.splat11, %81
  %83 = extractelement <8 x i64> %80, i32 0
  %84 = shl i64 %83, 32
  %85 = ashr exact i64 %84, 32
  %86 = getelementptr inbounds float, float* %6, i64 %85
  %87 = bitcast float* %86 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %87, i32 4, <8 x i1> %82, <8 x float> undef), !tbaa !12, !alias.scope !117, !noalias !120
  %88 = extractelement <8 x i32> %81, i32 0
  %89 = add nsw i32 %mul.i.i, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %9, i64 %90
  %92 = bitcast float* %91 to <8 x float>*
  %wide.masked.load12.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %92, i32 4, <8 x i1> %82, <8 x float> undef), !tbaa !12, !alias.scope !120
  %93 = fsub <8 x float> %wide.masked.load12.3, %wide.masked.load.3
  %94 = bitcast float* %91 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %93, <8 x float>* %94, i32 4, <8 x i1> %82), !tbaa !12, !alias.scope !120, !llvm.access.group !21
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us.1279, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.preheader ], [ %660, %if.end.r_exit.i.i.us.1279 ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %13, %conv.i.i.us
  br i1 %cmp4.i.i.us, label %if.then.i.i.us, label %if.end.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us
  %95 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %add.i.i.us = add nsw i32 %mul.i.i, %conv.i.i.us
  %idxprom6.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx7.i.i.us = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us
  %96 = load float, float* %arrayidx7.i.i.us, align 4, !tbaa !12
  %sub.i.i.us = fsub float %96, %95
  store float %sub.i.i.us, float* %arrayidx7.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %97 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1267 = add nuw nsw i64 %97, %mul.i.i.i
  %conv.i.i.us.1268 = trunc i64 %add1.i.i.i.us.1267 to i32
  %cmp4.i.i.us.1269 = icmp sgt i32 %13, %conv.i.i.us.1268
  br i1 %cmp4.i.i.us.1269, label %if.then.i.i.us.1278, label %if.end.r_exit.i.i.us.1279

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.r_exit.i.i.us.1279
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i
  %98 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.1 = or i32 %98, 1
  %cmp.i.i.1 = icmp sgt i32 %17, %conv2.i.i.1
  %mul.i.i.1 = mul nsw i32 %13, %conv2.i.i.1
  br i1 %cmp.i.i.1, label %vector.scevcheck20, label %pregion_for_end.i.i.1

vector.scevcheck20:                               ; preds = %pregion_for_end.i.i
  %99 = mul i32 %13, %conv2.i.i.1
  %100 = trunc i64 %2 to i32
  %101 = shl i32 %100, 5
  %102 = add i32 %99, %101
  %103 = icmp sgt i32 %102, 2147483616
  br i1 %103, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.memcheck34

pregion_for_entry.entry.i.i.us.1.preheader:       ; preds = %vector.memcheck34, %vector.scevcheck20
  br label %pregion_for_entry.entry.i.i.us.1

vector.memcheck34:                                ; preds = %vector.scevcheck20
  %104 = trunc i64 %2 to i32
  %105 = shl i32 %104, 5
  %106 = sext i32 %105 to i64
  %scevgep22 = getelementptr float, float* %6, i64 %106
  %107 = add nsw i64 %106, 32
  %scevgep24 = getelementptr float, float* %6, i64 %107
  %108 = mul i32 %13, %conv2.i.i.1
  %109 = add i32 %108, %105
  %110 = sext i32 %109 to i64
  %scevgep26 = getelementptr float, float* %9, i64 %110
  %111 = add nsw i64 %110, 32
  %scevgep28 = getelementptr float, float* %9, i64 %111
  %bound030 = icmp ult float* %scevgep22, %scevgep28
  %bound131 = icmp ult float* %scevgep26, %scevgep24
  %found.conflict32 = and i1 %bound030, %bound131
  br i1 %found.conflict32, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.ph35

vector.ph35:                                      ; preds = %vector.memcheck34
  %broadcast.splatinsert42 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat43 = shufflevector <8 x i64> %broadcast.splatinsert42, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert44 = insertelement <8 x i32> undef, i32 %13, i32 0
  %broadcast.splat45 = shufflevector <8 x i32> %broadcast.splatinsert44, <8 x i32> undef, <8 x i32> zeroinitializer
  %112 = or <8 x i64> %broadcast.splat43, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %113 = trunc <8 x i64> %112 to <8 x i32>
  %114 = icmp sgt <8 x i32> %broadcast.splat45, %113
  %115 = extractelement <8 x i64> %112, i32 0
  %116 = shl i64 %115, 32
  %117 = ashr exact i64 %116, 32
  %118 = getelementptr inbounds float, float* %6, i64 %117
  %119 = bitcast float* %118 to <8 x float>*
  %wide.masked.load46 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %119, i32 4, <8 x i1> %114, <8 x float> undef), !tbaa !12, !alias.scope !122, !noalias !125
  %120 = extractelement <8 x i32> %113, i32 0
  %121 = add nsw i32 %mul.i.i.1, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %9, i64 %122
  %124 = bitcast float* %123 to <8 x float>*
  %wide.masked.load47 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %124, i32 4, <8 x i1> %114, <8 x float> undef), !tbaa !12, !alias.scope !125
  %125 = fsub <8 x float> %wide.masked.load47, %wide.masked.load46
  %126 = bitcast float* %123 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %125, <8 x float>* %126, i32 4, <8 x i1> %114), !tbaa !12, !alias.scope !125, !llvm.access.group !21
  %127 = or <8 x i64> %broadcast.splat43, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %128 = trunc <8 x i64> %127 to <8 x i32>
  %129 = icmp sgt <8 x i32> %broadcast.splat45, %128
  %130 = extractelement <8 x i64> %127, i32 0
  %131 = shl i64 %130, 32
  %132 = ashr exact i64 %131, 32
  %133 = getelementptr inbounds float, float* %6, i64 %132
  %134 = bitcast float* %133 to <8 x float>*
  %wide.masked.load46.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %134, i32 4, <8 x i1> %129, <8 x float> undef), !tbaa !12, !alias.scope !122, !noalias !125
  %135 = extractelement <8 x i32> %128, i32 0
  %136 = add nsw i32 %mul.i.i.1, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %9, i64 %137
  %139 = bitcast float* %138 to <8 x float>*
  %wide.masked.load47.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %139, i32 4, <8 x i1> %129, <8 x float> undef), !tbaa !12, !alias.scope !125
  %140 = fsub <8 x float> %wide.masked.load47.1, %wide.masked.load46.1
  %141 = bitcast float* %138 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %140, <8 x float>* %141, i32 4, <8 x i1> %129), !tbaa !12, !alias.scope !125, !llvm.access.group !21
  %142 = or <8 x i64> %broadcast.splat43, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %143 = trunc <8 x i64> %142 to <8 x i32>
  %144 = icmp sgt <8 x i32> %broadcast.splat45, %143
  %145 = extractelement <8 x i64> %142, i32 0
  %146 = shl i64 %145, 32
  %147 = ashr exact i64 %146, 32
  %148 = getelementptr inbounds float, float* %6, i64 %147
  %149 = bitcast float* %148 to <8 x float>*
  %wide.masked.load46.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %149, i32 4, <8 x i1> %144, <8 x float> undef), !tbaa !12, !alias.scope !122, !noalias !125
  %150 = extractelement <8 x i32> %143, i32 0
  %151 = add nsw i32 %mul.i.i.1, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %9, i64 %152
  %154 = bitcast float* %153 to <8 x float>*
  %wide.masked.load47.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %154, i32 4, <8 x i1> %144, <8 x float> undef), !tbaa !12, !alias.scope !125
  %155 = fsub <8 x float> %wide.masked.load47.2, %wide.masked.load46.2
  %156 = bitcast float* %153 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %155, <8 x float>* %156, i32 4, <8 x i1> %144), !tbaa !12, !alias.scope !125, !llvm.access.group !21
  %157 = or <8 x i64> %broadcast.splat43, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %158 = trunc <8 x i64> %157 to <8 x i32>
  %159 = icmp sgt <8 x i32> %broadcast.splat45, %158
  %160 = extractelement <8 x i64> %157, i32 0
  %161 = shl i64 %160, 32
  %162 = ashr exact i64 %161, 32
  %163 = getelementptr inbounds float, float* %6, i64 %162
  %164 = bitcast float* %163 to <8 x float>*
  %wide.masked.load46.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %164, i32 4, <8 x i1> %159, <8 x float> undef), !tbaa !12, !alias.scope !122, !noalias !125
  %165 = extractelement <8 x i32> %158, i32 0
  %166 = add nsw i32 %mul.i.i.1, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %9, i64 %167
  %169 = bitcast float* %168 to <8 x float>*
  %wide.masked.load47.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %169, i32 4, <8 x i1> %159, <8 x float> undef), !tbaa !12, !alias.scope !125
  %170 = fsub <8 x float> %wide.masked.load47.3, %wide.masked.load46.3
  %171 = bitcast float* %168 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %170, <8 x float>* %171, i32 4, <8 x i1> %159), !tbaa !12, !alias.scope !125, !llvm.access.group !21
  br label %pregion_for_end.i.i.1

pregion_for_entry.entry.i.i.us.1:                 ; preds = %if.end.r_exit.i.i.us.1.1, %pregion_for_entry.entry.i.i.us.1.preheader
  %_local_id_x.i.0.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.1.preheader ], [ %657, %if.end.r_exit.i.i.us.1.1 ]
  %add1.i.i.i.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.1, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp4.i.i.us.1 = icmp sgt i32 %13, %conv.i.i.us.1
  br i1 %cmp4.i.i.us.1, label %if.then.i.i.us.1, label %if.end.r_exit.i.i.us.1

if.then.i.i.us.1:                                 ; preds = %pregion_for_entry.entry.i.i.us.1
  %sext.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom.i.i.us.1 = ashr exact i64 %sext.i.i.us.1, 32
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.1
  %172 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %add.i.i.us.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1
  %idxprom6.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx7.i.i.us.1 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.1
  %173 = load float, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12
  %sub.i.i.us.1 = fsub float %173, %172
  store float %sub.i.i.us.1, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.1

if.end.r_exit.i.i.us.1:                           ; preds = %if.then.i.i.us.1, %pregion_for_entry.entry.i.i.us.1
  %174 = or i64 %_local_id_x.i.0.us.1, 1
  %add1.i.i.i.us.1.1 = add nuw nsw i64 %174, %mul.i.i.i
  %conv.i.i.us.1.1 = trunc i64 %add1.i.i.i.us.1.1 to i32
  %cmp4.i.i.us.1.1 = icmp sgt i32 %13, %conv.i.i.us.1.1
  br i1 %cmp4.i.i.us.1.1, label %if.then.i.i.us.1.1, label %if.end.r_exit.i.i.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.r_exit.i.i.us.1.1
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph35, %pregion_for_end.i.i
  %175 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.2 = or i32 %175, 2
  %cmp.i.i.2 = icmp sgt i32 %17, %conv2.i.i.2
  %mul.i.i.2 = mul nsw i32 %13, %conv2.i.i.2
  br i1 %cmp.i.i.2, label %vector.scevcheck55, label %pregion_for_end.i.i.2

vector.scevcheck55:                               ; preds = %pregion_for_end.i.i.1
  %176 = mul i32 %13, %conv2.i.i.2
  %177 = trunc i64 %2 to i32
  %178 = shl i32 %177, 5
  %179 = add i32 %176, %178
  %180 = icmp sgt i32 %179, 2147483616
  br i1 %180, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.memcheck69

pregion_for_entry.entry.i.i.us.2.preheader:       ; preds = %vector.memcheck69, %vector.scevcheck55
  br label %pregion_for_entry.entry.i.i.us.2

vector.memcheck69:                                ; preds = %vector.scevcheck55
  %181 = trunc i64 %2 to i32
  %182 = shl i32 %181, 5
  %183 = sext i32 %182 to i64
  %scevgep57 = getelementptr float, float* %6, i64 %183
  %184 = add nsw i64 %183, 32
  %scevgep59 = getelementptr float, float* %6, i64 %184
  %185 = mul i32 %13, %conv2.i.i.2
  %186 = add i32 %185, %182
  %187 = sext i32 %186 to i64
  %scevgep61 = getelementptr float, float* %9, i64 %187
  %188 = add nsw i64 %187, 32
  %scevgep63 = getelementptr float, float* %9, i64 %188
  %bound065 = icmp ult float* %scevgep57, %scevgep63
  %bound166 = icmp ult float* %scevgep61, %scevgep59
  %found.conflict67 = and i1 %bound065, %bound166
  br i1 %found.conflict67, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck69
  %broadcast.splatinsert77 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat78 = shufflevector <8 x i64> %broadcast.splatinsert77, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert79 = insertelement <8 x i32> undef, i32 %13, i32 0
  %broadcast.splat80 = shufflevector <8 x i32> %broadcast.splatinsert79, <8 x i32> undef, <8 x i32> zeroinitializer
  %189 = or <8 x i64> %broadcast.splat78, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %190 = trunc <8 x i64> %189 to <8 x i32>
  %191 = icmp sgt <8 x i32> %broadcast.splat80, %190
  %192 = extractelement <8 x i64> %189, i32 0
  %193 = shl i64 %192, 32
  %194 = ashr exact i64 %193, 32
  %195 = getelementptr inbounds float, float* %6, i64 %194
  %196 = bitcast float* %195 to <8 x float>*
  %wide.masked.load81 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %196, i32 4, <8 x i1> %191, <8 x float> undef), !tbaa !12, !alias.scope !127, !noalias !130
  %197 = extractelement <8 x i32> %190, i32 0
  %198 = add nsw i32 %mul.i.i.2, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %9, i64 %199
  %201 = bitcast float* %200 to <8 x float>*
  %wide.masked.load82 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %201, i32 4, <8 x i1> %191, <8 x float> undef), !tbaa !12, !alias.scope !130
  %202 = fsub <8 x float> %wide.masked.load82, %wide.masked.load81
  %203 = bitcast float* %200 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %202, <8 x float>* %203, i32 4, <8 x i1> %191), !tbaa !12, !alias.scope !130, !llvm.access.group !21
  %204 = or <8 x i64> %broadcast.splat78, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %205 = trunc <8 x i64> %204 to <8 x i32>
  %206 = icmp sgt <8 x i32> %broadcast.splat80, %205
  %207 = extractelement <8 x i64> %204, i32 0
  %208 = shl i64 %207, 32
  %209 = ashr exact i64 %208, 32
  %210 = getelementptr inbounds float, float* %6, i64 %209
  %211 = bitcast float* %210 to <8 x float>*
  %wide.masked.load81.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %211, i32 4, <8 x i1> %206, <8 x float> undef), !tbaa !12, !alias.scope !127, !noalias !130
  %212 = extractelement <8 x i32> %205, i32 0
  %213 = add nsw i32 %mul.i.i.2, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %9, i64 %214
  %216 = bitcast float* %215 to <8 x float>*
  %wide.masked.load82.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %216, i32 4, <8 x i1> %206, <8 x float> undef), !tbaa !12, !alias.scope !130
  %217 = fsub <8 x float> %wide.masked.load82.1, %wide.masked.load81.1
  %218 = bitcast float* %215 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %217, <8 x float>* %218, i32 4, <8 x i1> %206), !tbaa !12, !alias.scope !130, !llvm.access.group !21
  %219 = or <8 x i64> %broadcast.splat78, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %220 = trunc <8 x i64> %219 to <8 x i32>
  %221 = icmp sgt <8 x i32> %broadcast.splat80, %220
  %222 = extractelement <8 x i64> %219, i32 0
  %223 = shl i64 %222, 32
  %224 = ashr exact i64 %223, 32
  %225 = getelementptr inbounds float, float* %6, i64 %224
  %226 = bitcast float* %225 to <8 x float>*
  %wide.masked.load81.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %226, i32 4, <8 x i1> %221, <8 x float> undef), !tbaa !12, !alias.scope !127, !noalias !130
  %227 = extractelement <8 x i32> %220, i32 0
  %228 = add nsw i32 %mul.i.i.2, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %9, i64 %229
  %231 = bitcast float* %230 to <8 x float>*
  %wide.masked.load82.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %231, i32 4, <8 x i1> %221, <8 x float> undef), !tbaa !12, !alias.scope !130
  %232 = fsub <8 x float> %wide.masked.load82.2, %wide.masked.load81.2
  %233 = bitcast float* %230 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %232, <8 x float>* %233, i32 4, <8 x i1> %221), !tbaa !12, !alias.scope !130, !llvm.access.group !21
  %234 = or <8 x i64> %broadcast.splat78, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %235 = trunc <8 x i64> %234 to <8 x i32>
  %236 = icmp sgt <8 x i32> %broadcast.splat80, %235
  %237 = extractelement <8 x i64> %234, i32 0
  %238 = shl i64 %237, 32
  %239 = ashr exact i64 %238, 32
  %240 = getelementptr inbounds float, float* %6, i64 %239
  %241 = bitcast float* %240 to <8 x float>*
  %wide.masked.load81.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %241, i32 4, <8 x i1> %236, <8 x float> undef), !tbaa !12, !alias.scope !127, !noalias !130
  %242 = extractelement <8 x i32> %235, i32 0
  %243 = add nsw i32 %mul.i.i.2, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds float, float* %9, i64 %244
  %246 = bitcast float* %245 to <8 x float>*
  %wide.masked.load82.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %246, i32 4, <8 x i1> %236, <8 x float> undef), !tbaa !12, !alias.scope !130
  %247 = fsub <8 x float> %wide.masked.load82.3, %wide.masked.load81.3
  %248 = bitcast float* %245 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %247, <8 x float>* %248, i32 4, <8 x i1> %236), !tbaa !12, !alias.scope !130, !llvm.access.group !21
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.2:                 ; preds = %if.end.r_exit.i.i.us.2.1, %pregion_for_entry.entry.i.i.us.2.preheader
  %_local_id_x.i.0.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.2.preheader ], [ %654, %if.end.r_exit.i.i.us.2.1 ]
  %add1.i.i.i.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.2, %mul.i.i.i
  %conv.i.i.us.2 = trunc i64 %add1.i.i.i.us.2 to i32
  %cmp4.i.i.us.2 = icmp sgt i32 %13, %conv.i.i.us.2
  br i1 %cmp4.i.i.us.2, label %if.then.i.i.us.2, label %if.end.r_exit.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %pregion_for_entry.entry.i.i.us.2
  %sext.i.i.us.2 = shl i64 %add1.i.i.i.us.2, 32
  %idxprom.i.i.us.2 = ashr exact i64 %sext.i.i.us.2, 32
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.2
  %249 = load float, float* %arrayidx.i.i.us.2, align 4, !tbaa !12
  %add.i.i.us.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2
  %idxprom6.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx7.i.i.us.2 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.2
  %250 = load float, float* %arrayidx7.i.i.us.2, align 4, !tbaa !12
  %sub.i.i.us.2 = fsub float %250, %249
  store float %sub.i.i.us.2, float* %arrayidx7.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.2

if.end.r_exit.i.i.us.2:                           ; preds = %if.then.i.i.us.2, %pregion_for_entry.entry.i.i.us.2
  %251 = or i64 %_local_id_x.i.0.us.2, 1
  %add1.i.i.i.us.2.1 = add nuw nsw i64 %251, %mul.i.i.i
  %conv.i.i.us.2.1 = trunc i64 %add1.i.i.i.us.2.1 to i32
  %cmp4.i.i.us.2.1 = icmp sgt i32 %13, %conv.i.i.us.2.1
  br i1 %cmp4.i.i.us.2.1, label %if.then.i.i.us.2.1, label %if.end.r_exit.i.i.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.r_exit.i.i.us.2.1
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph70, %pregion_for_end.i.i.1
  %252 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.3 = or i32 %252, 3
  %cmp.i.i.3 = icmp sgt i32 %17, %conv2.i.i.3
  %mul.i.i.3 = mul nsw i32 %13, %conv2.i.i.3
  br i1 %cmp.i.i.3, label %vector.scevcheck90, label %pregion_for_end.i.i.3

vector.scevcheck90:                               ; preds = %pregion_for_end.i.i.2
  %253 = mul i32 %13, %conv2.i.i.3
  %254 = trunc i64 %2 to i32
  %255 = shl i32 %254, 5
  %256 = add i32 %253, %255
  %257 = icmp sgt i32 %256, 2147483616
  br i1 %257, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.memcheck104

pregion_for_entry.entry.i.i.us.3.preheader:       ; preds = %vector.memcheck104, %vector.scevcheck90
  br label %pregion_for_entry.entry.i.i.us.3

vector.memcheck104:                               ; preds = %vector.scevcheck90
  %258 = trunc i64 %2 to i32
  %259 = shl i32 %258, 5
  %260 = sext i32 %259 to i64
  %scevgep92 = getelementptr float, float* %6, i64 %260
  %261 = add nsw i64 %260, 32
  %scevgep94 = getelementptr float, float* %6, i64 %261
  %262 = mul i32 %13, %conv2.i.i.3
  %263 = add i32 %262, %259
  %264 = sext i32 %263 to i64
  %scevgep96 = getelementptr float, float* %9, i64 %264
  %265 = add nsw i64 %264, 32
  %scevgep98 = getelementptr float, float* %9, i64 %265
  %bound0100 = icmp ult float* %scevgep92, %scevgep98
  %bound1101 = icmp ult float* %scevgep96, %scevgep94
  %found.conflict102 = and i1 %bound0100, %bound1101
  br i1 %found.conflict102, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %vector.memcheck104
  %broadcast.splatinsert112 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat113 = shufflevector <8 x i64> %broadcast.splatinsert112, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert114 = insertelement <8 x i32> undef, i32 %13, i32 0
  %broadcast.splat115 = shufflevector <8 x i32> %broadcast.splatinsert114, <8 x i32> undef, <8 x i32> zeroinitializer
  %266 = or <8 x i64> %broadcast.splat113, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %267 = trunc <8 x i64> %266 to <8 x i32>
  %268 = icmp sgt <8 x i32> %broadcast.splat115, %267
  %269 = extractelement <8 x i64> %266, i32 0
  %270 = shl i64 %269, 32
  %271 = ashr exact i64 %270, 32
  %272 = getelementptr inbounds float, float* %6, i64 %271
  %273 = bitcast float* %272 to <8 x float>*
  %wide.masked.load116 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %273, i32 4, <8 x i1> %268, <8 x float> undef), !tbaa !12, !alias.scope !132, !noalias !135
  %274 = extractelement <8 x i32> %267, i32 0
  %275 = add nsw i32 %mul.i.i.3, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds float, float* %9, i64 %276
  %278 = bitcast float* %277 to <8 x float>*
  %wide.masked.load117 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %278, i32 4, <8 x i1> %268, <8 x float> undef), !tbaa !12, !alias.scope !135
  %279 = fsub <8 x float> %wide.masked.load117, %wide.masked.load116
  %280 = bitcast float* %277 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %279, <8 x float>* %280, i32 4, <8 x i1> %268), !tbaa !12, !alias.scope !135, !llvm.access.group !21
  %281 = or <8 x i64> %broadcast.splat113, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %282 = trunc <8 x i64> %281 to <8 x i32>
  %283 = icmp sgt <8 x i32> %broadcast.splat115, %282
  %284 = extractelement <8 x i64> %281, i32 0
  %285 = shl i64 %284, 32
  %286 = ashr exact i64 %285, 32
  %287 = getelementptr inbounds float, float* %6, i64 %286
  %288 = bitcast float* %287 to <8 x float>*
  %wide.masked.load116.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %288, i32 4, <8 x i1> %283, <8 x float> undef), !tbaa !12, !alias.scope !132, !noalias !135
  %289 = extractelement <8 x i32> %282, i32 0
  %290 = add nsw i32 %mul.i.i.3, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, float* %9, i64 %291
  %293 = bitcast float* %292 to <8 x float>*
  %wide.masked.load117.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %293, i32 4, <8 x i1> %283, <8 x float> undef), !tbaa !12, !alias.scope !135
  %294 = fsub <8 x float> %wide.masked.load117.1, %wide.masked.load116.1
  %295 = bitcast float* %292 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %294, <8 x float>* %295, i32 4, <8 x i1> %283), !tbaa !12, !alias.scope !135, !llvm.access.group !21
  %296 = or <8 x i64> %broadcast.splat113, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %297 = trunc <8 x i64> %296 to <8 x i32>
  %298 = icmp sgt <8 x i32> %broadcast.splat115, %297
  %299 = extractelement <8 x i64> %296, i32 0
  %300 = shl i64 %299, 32
  %301 = ashr exact i64 %300, 32
  %302 = getelementptr inbounds float, float* %6, i64 %301
  %303 = bitcast float* %302 to <8 x float>*
  %wide.masked.load116.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %303, i32 4, <8 x i1> %298, <8 x float> undef), !tbaa !12, !alias.scope !132, !noalias !135
  %304 = extractelement <8 x i32> %297, i32 0
  %305 = add nsw i32 %mul.i.i.3, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %9, i64 %306
  %308 = bitcast float* %307 to <8 x float>*
  %wide.masked.load117.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %308, i32 4, <8 x i1> %298, <8 x float> undef), !tbaa !12, !alias.scope !135
  %309 = fsub <8 x float> %wide.masked.load117.2, %wide.masked.load116.2
  %310 = bitcast float* %307 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %309, <8 x float>* %310, i32 4, <8 x i1> %298), !tbaa !12, !alias.scope !135, !llvm.access.group !21
  %311 = or <8 x i64> %broadcast.splat113, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %312 = trunc <8 x i64> %311 to <8 x i32>
  %313 = icmp sgt <8 x i32> %broadcast.splat115, %312
  %314 = extractelement <8 x i64> %311, i32 0
  %315 = shl i64 %314, 32
  %316 = ashr exact i64 %315, 32
  %317 = getelementptr inbounds float, float* %6, i64 %316
  %318 = bitcast float* %317 to <8 x float>*
  %wide.masked.load116.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %318, i32 4, <8 x i1> %313, <8 x float> undef), !tbaa !12, !alias.scope !132, !noalias !135
  %319 = extractelement <8 x i32> %312, i32 0
  %320 = add nsw i32 %mul.i.i.3, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds float, float* %9, i64 %321
  %323 = bitcast float* %322 to <8 x float>*
  %wide.masked.load117.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %323, i32 4, <8 x i1> %313, <8 x float> undef), !tbaa !12, !alias.scope !135
  %324 = fsub <8 x float> %wide.masked.load117.3, %wide.masked.load116.3
  %325 = bitcast float* %322 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %324, <8 x float>* %325, i32 4, <8 x i1> %313), !tbaa !12, !alias.scope !135, !llvm.access.group !21
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.3:                 ; preds = %if.end.r_exit.i.i.us.3.1, %pregion_for_entry.entry.i.i.us.3.preheader
  %_local_id_x.i.0.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.3.preheader ], [ %651, %if.end.r_exit.i.i.us.3.1 ]
  %add1.i.i.i.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.3, %mul.i.i.i
  %conv.i.i.us.3 = trunc i64 %add1.i.i.i.us.3 to i32
  %cmp4.i.i.us.3 = icmp sgt i32 %13, %conv.i.i.us.3
  br i1 %cmp4.i.i.us.3, label %if.then.i.i.us.3, label %if.end.r_exit.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %pregion_for_entry.entry.i.i.us.3
  %sext.i.i.us.3 = shl i64 %add1.i.i.i.us.3, 32
  %idxprom.i.i.us.3 = ashr exact i64 %sext.i.i.us.3, 32
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.3
  %326 = load float, float* %arrayidx.i.i.us.3, align 4, !tbaa !12
  %add.i.i.us.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3
  %idxprom6.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx7.i.i.us.3 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.3
  %327 = load float, float* %arrayidx7.i.i.us.3, align 4, !tbaa !12
  %sub.i.i.us.3 = fsub float %327, %326
  store float %sub.i.i.us.3, float* %arrayidx7.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.3

if.end.r_exit.i.i.us.3:                           ; preds = %if.then.i.i.us.3, %pregion_for_entry.entry.i.i.us.3
  %328 = or i64 %_local_id_x.i.0.us.3, 1
  %add1.i.i.i.us.3.1 = add nuw nsw i64 %328, %mul.i.i.i
  %conv.i.i.us.3.1 = trunc i64 %add1.i.i.i.us.3.1 to i32
  %cmp4.i.i.us.3.1 = icmp sgt i32 %13, %conv.i.i.us.3.1
  br i1 %cmp4.i.i.us.3.1, label %if.then.i.i.us.3.1, label %if.end.r_exit.i.i.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.r_exit.i.i.us.3.1
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph105, %pregion_for_end.i.i.2
  %329 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.4 = or i32 %329, 4
  %cmp.i.i.4 = icmp sgt i32 %17, %conv2.i.i.4
  %mul.i.i.4 = mul nsw i32 %13, %conv2.i.i.4
  br i1 %cmp.i.i.4, label %vector.scevcheck125, label %pregion_for_end.i.i.4

vector.scevcheck125:                              ; preds = %pregion_for_end.i.i.3
  %330 = mul i32 %13, %conv2.i.i.4
  %331 = trunc i64 %2 to i32
  %332 = shl i32 %331, 5
  %333 = add i32 %330, %332
  %334 = icmp sgt i32 %333, 2147483616
  br i1 %334, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.memcheck139

pregion_for_entry.entry.i.i.us.4.preheader:       ; preds = %vector.memcheck139, %vector.scevcheck125
  br label %pregion_for_entry.entry.i.i.us.4

vector.memcheck139:                               ; preds = %vector.scevcheck125
  %335 = trunc i64 %2 to i32
  %336 = shl i32 %335, 5
  %337 = sext i32 %336 to i64
  %scevgep127 = getelementptr float, float* %6, i64 %337
  %338 = add nsw i64 %337, 32
  %scevgep129 = getelementptr float, float* %6, i64 %338
  %339 = mul i32 %13, %conv2.i.i.4
  %340 = add i32 %339, %336
  %341 = sext i32 %340 to i64
  %scevgep131 = getelementptr float, float* %9, i64 %341
  %342 = add nsw i64 %341, 32
  %scevgep133 = getelementptr float, float* %9, i64 %342
  %bound0135 = icmp ult float* %scevgep127, %scevgep133
  %bound1136 = icmp ult float* %scevgep131, %scevgep129
  %found.conflict137 = and i1 %bound0135, %bound1136
  br i1 %found.conflict137, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck139
  %broadcast.splatinsert147 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat148 = shufflevector <8 x i64> %broadcast.splatinsert147, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <8 x i32> undef, i32 %13, i32 0
  %broadcast.splat150 = shufflevector <8 x i32> %broadcast.splatinsert149, <8 x i32> undef, <8 x i32> zeroinitializer
  %343 = or <8 x i64> %broadcast.splat148, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %344 = trunc <8 x i64> %343 to <8 x i32>
  %345 = icmp sgt <8 x i32> %broadcast.splat150, %344
  %346 = extractelement <8 x i64> %343, i32 0
  %347 = shl i64 %346, 32
  %348 = ashr exact i64 %347, 32
  %349 = getelementptr inbounds float, float* %6, i64 %348
  %350 = bitcast float* %349 to <8 x float>*
  %wide.masked.load151 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %350, i32 4, <8 x i1> %345, <8 x float> undef), !tbaa !12, !alias.scope !137, !noalias !140
  %351 = extractelement <8 x i32> %344, i32 0
  %352 = add nsw i32 %mul.i.i.4, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds float, float* %9, i64 %353
  %355 = bitcast float* %354 to <8 x float>*
  %wide.masked.load152 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %355, i32 4, <8 x i1> %345, <8 x float> undef), !tbaa !12, !alias.scope !140
  %356 = fsub <8 x float> %wide.masked.load152, %wide.masked.load151
  %357 = bitcast float* %354 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %356, <8 x float>* %357, i32 4, <8 x i1> %345), !tbaa !12, !alias.scope !140, !llvm.access.group !21
  %358 = or <8 x i64> %broadcast.splat148, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %359 = trunc <8 x i64> %358 to <8 x i32>
  %360 = icmp sgt <8 x i32> %broadcast.splat150, %359
  %361 = extractelement <8 x i64> %358, i32 0
  %362 = shl i64 %361, 32
  %363 = ashr exact i64 %362, 32
  %364 = getelementptr inbounds float, float* %6, i64 %363
  %365 = bitcast float* %364 to <8 x float>*
  %wide.masked.load151.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %365, i32 4, <8 x i1> %360, <8 x float> undef), !tbaa !12, !alias.scope !137, !noalias !140
  %366 = extractelement <8 x i32> %359, i32 0
  %367 = add nsw i32 %mul.i.i.4, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds float, float* %9, i64 %368
  %370 = bitcast float* %369 to <8 x float>*
  %wide.masked.load152.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %370, i32 4, <8 x i1> %360, <8 x float> undef), !tbaa !12, !alias.scope !140
  %371 = fsub <8 x float> %wide.masked.load152.1, %wide.masked.load151.1
  %372 = bitcast float* %369 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %371, <8 x float>* %372, i32 4, <8 x i1> %360), !tbaa !12, !alias.scope !140, !llvm.access.group !21
  %373 = or <8 x i64> %broadcast.splat148, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %374 = trunc <8 x i64> %373 to <8 x i32>
  %375 = icmp sgt <8 x i32> %broadcast.splat150, %374
  %376 = extractelement <8 x i64> %373, i32 0
  %377 = shl i64 %376, 32
  %378 = ashr exact i64 %377, 32
  %379 = getelementptr inbounds float, float* %6, i64 %378
  %380 = bitcast float* %379 to <8 x float>*
  %wide.masked.load151.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %380, i32 4, <8 x i1> %375, <8 x float> undef), !tbaa !12, !alias.scope !137, !noalias !140
  %381 = extractelement <8 x i32> %374, i32 0
  %382 = add nsw i32 %mul.i.i.4, %381
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds float, float* %9, i64 %383
  %385 = bitcast float* %384 to <8 x float>*
  %wide.masked.load152.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %385, i32 4, <8 x i1> %375, <8 x float> undef), !tbaa !12, !alias.scope !140
  %386 = fsub <8 x float> %wide.masked.load152.2, %wide.masked.load151.2
  %387 = bitcast float* %384 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %386, <8 x float>* %387, i32 4, <8 x i1> %375), !tbaa !12, !alias.scope !140, !llvm.access.group !21
  %388 = or <8 x i64> %broadcast.splat148, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %389 = trunc <8 x i64> %388 to <8 x i32>
  %390 = icmp sgt <8 x i32> %broadcast.splat150, %389
  %391 = extractelement <8 x i64> %388, i32 0
  %392 = shl i64 %391, 32
  %393 = ashr exact i64 %392, 32
  %394 = getelementptr inbounds float, float* %6, i64 %393
  %395 = bitcast float* %394 to <8 x float>*
  %wide.masked.load151.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %395, i32 4, <8 x i1> %390, <8 x float> undef), !tbaa !12, !alias.scope !137, !noalias !140
  %396 = extractelement <8 x i32> %389, i32 0
  %397 = add nsw i32 %mul.i.i.4, %396
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds float, float* %9, i64 %398
  %400 = bitcast float* %399 to <8 x float>*
  %wide.masked.load152.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %400, i32 4, <8 x i1> %390, <8 x float> undef), !tbaa !12, !alias.scope !140
  %401 = fsub <8 x float> %wide.masked.load152.3, %wide.masked.load151.3
  %402 = bitcast float* %399 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %401, <8 x float>* %402, i32 4, <8 x i1> %390), !tbaa !12, !alias.scope !140, !llvm.access.group !21
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.4:                 ; preds = %if.end.r_exit.i.i.us.4.1, %pregion_for_entry.entry.i.i.us.4.preheader
  %_local_id_x.i.0.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.4.preheader ], [ %648, %if.end.r_exit.i.i.us.4.1 ]
  %add1.i.i.i.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.4, %mul.i.i.i
  %conv.i.i.us.4 = trunc i64 %add1.i.i.i.us.4 to i32
  %cmp4.i.i.us.4 = icmp sgt i32 %13, %conv.i.i.us.4
  br i1 %cmp4.i.i.us.4, label %if.then.i.i.us.4, label %if.end.r_exit.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %pregion_for_entry.entry.i.i.us.4
  %sext.i.i.us.4 = shl i64 %add1.i.i.i.us.4, 32
  %idxprom.i.i.us.4 = ashr exact i64 %sext.i.i.us.4, 32
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.4
  %403 = load float, float* %arrayidx.i.i.us.4, align 4, !tbaa !12
  %add.i.i.us.4 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4
  %idxprom6.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx7.i.i.us.4 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.4
  %404 = load float, float* %arrayidx7.i.i.us.4, align 4, !tbaa !12
  %sub.i.i.us.4 = fsub float %404, %403
  store float %sub.i.i.us.4, float* %arrayidx7.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.4

if.end.r_exit.i.i.us.4:                           ; preds = %if.then.i.i.us.4, %pregion_for_entry.entry.i.i.us.4
  %405 = or i64 %_local_id_x.i.0.us.4, 1
  %add1.i.i.i.us.4.1 = add nuw nsw i64 %405, %mul.i.i.i
  %conv.i.i.us.4.1 = trunc i64 %add1.i.i.i.us.4.1 to i32
  %cmp4.i.i.us.4.1 = icmp sgt i32 %13, %conv.i.i.us.4.1
  br i1 %cmp4.i.i.us.4.1, label %if.then.i.i.us.4.1, label %if.end.r_exit.i.i.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.r_exit.i.i.us.4.1
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph140, %pregion_for_end.i.i.3
  %406 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.5 = or i32 %406, 5
  %cmp.i.i.5 = icmp sgt i32 %17, %conv2.i.i.5
  %mul.i.i.5 = mul nsw i32 %13, %conv2.i.i.5
  br i1 %cmp.i.i.5, label %vector.scevcheck160, label %pregion_for_end.i.i.5

vector.scevcheck160:                              ; preds = %pregion_for_end.i.i.4
  %407 = mul i32 %13, %conv2.i.i.5
  %408 = trunc i64 %2 to i32
  %409 = shl i32 %408, 5
  %410 = add i32 %407, %409
  %411 = icmp sgt i32 %410, 2147483616
  br i1 %411, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.memcheck174

pregion_for_entry.entry.i.i.us.5.preheader:       ; preds = %vector.memcheck174, %vector.scevcheck160
  br label %pregion_for_entry.entry.i.i.us.5

vector.memcheck174:                               ; preds = %vector.scevcheck160
  %412 = trunc i64 %2 to i32
  %413 = shl i32 %412, 5
  %414 = sext i32 %413 to i64
  %scevgep162 = getelementptr float, float* %6, i64 %414
  %415 = add nsw i64 %414, 32
  %scevgep164 = getelementptr float, float* %6, i64 %415
  %416 = mul i32 %13, %conv2.i.i.5
  %417 = add i32 %416, %413
  %418 = sext i32 %417 to i64
  %scevgep166 = getelementptr float, float* %9, i64 %418
  %419 = add nsw i64 %418, 32
  %scevgep168 = getelementptr float, float* %9, i64 %419
  %bound0170 = icmp ult float* %scevgep162, %scevgep168
  %bound1171 = icmp ult float* %scevgep166, %scevgep164
  %found.conflict172 = and i1 %bound0170, %bound1171
  br i1 %found.conflict172, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck174
  %broadcast.splatinsert182 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat183 = shufflevector <8 x i64> %broadcast.splatinsert182, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert184 = insertelement <8 x i32> undef, i32 %13, i32 0
  %broadcast.splat185 = shufflevector <8 x i32> %broadcast.splatinsert184, <8 x i32> undef, <8 x i32> zeroinitializer
  %420 = or <8 x i64> %broadcast.splat183, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %421 = trunc <8 x i64> %420 to <8 x i32>
  %422 = icmp sgt <8 x i32> %broadcast.splat185, %421
  %423 = extractelement <8 x i64> %420, i32 0
  %424 = shl i64 %423, 32
  %425 = ashr exact i64 %424, 32
  %426 = getelementptr inbounds float, float* %6, i64 %425
  %427 = bitcast float* %426 to <8 x float>*
  %wide.masked.load186 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %427, i32 4, <8 x i1> %422, <8 x float> undef), !tbaa !12, !alias.scope !142, !noalias !145
  %428 = extractelement <8 x i32> %421, i32 0
  %429 = add nsw i32 %mul.i.i.5, %428
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds float, float* %9, i64 %430
  %432 = bitcast float* %431 to <8 x float>*
  %wide.masked.load187 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %432, i32 4, <8 x i1> %422, <8 x float> undef), !tbaa !12, !alias.scope !145
  %433 = fsub <8 x float> %wide.masked.load187, %wide.masked.load186
  %434 = bitcast float* %431 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %433, <8 x float>* %434, i32 4, <8 x i1> %422), !tbaa !12, !alias.scope !145, !llvm.access.group !21
  %435 = or <8 x i64> %broadcast.splat183, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %436 = trunc <8 x i64> %435 to <8 x i32>
  %437 = icmp sgt <8 x i32> %broadcast.splat185, %436
  %438 = extractelement <8 x i64> %435, i32 0
  %439 = shl i64 %438, 32
  %440 = ashr exact i64 %439, 32
  %441 = getelementptr inbounds float, float* %6, i64 %440
  %442 = bitcast float* %441 to <8 x float>*
  %wide.masked.load186.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %442, i32 4, <8 x i1> %437, <8 x float> undef), !tbaa !12, !alias.scope !142, !noalias !145
  %443 = extractelement <8 x i32> %436, i32 0
  %444 = add nsw i32 %mul.i.i.5, %443
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds float, float* %9, i64 %445
  %447 = bitcast float* %446 to <8 x float>*
  %wide.masked.load187.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %447, i32 4, <8 x i1> %437, <8 x float> undef), !tbaa !12, !alias.scope !145
  %448 = fsub <8 x float> %wide.masked.load187.1, %wide.masked.load186.1
  %449 = bitcast float* %446 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %448, <8 x float>* %449, i32 4, <8 x i1> %437), !tbaa !12, !alias.scope !145, !llvm.access.group !21
  %450 = or <8 x i64> %broadcast.splat183, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %451 = trunc <8 x i64> %450 to <8 x i32>
  %452 = icmp sgt <8 x i32> %broadcast.splat185, %451
  %453 = extractelement <8 x i64> %450, i32 0
  %454 = shl i64 %453, 32
  %455 = ashr exact i64 %454, 32
  %456 = getelementptr inbounds float, float* %6, i64 %455
  %457 = bitcast float* %456 to <8 x float>*
  %wide.masked.load186.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %457, i32 4, <8 x i1> %452, <8 x float> undef), !tbaa !12, !alias.scope !142, !noalias !145
  %458 = extractelement <8 x i32> %451, i32 0
  %459 = add nsw i32 %mul.i.i.5, %458
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds float, float* %9, i64 %460
  %462 = bitcast float* %461 to <8 x float>*
  %wide.masked.load187.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %462, i32 4, <8 x i1> %452, <8 x float> undef), !tbaa !12, !alias.scope !145
  %463 = fsub <8 x float> %wide.masked.load187.2, %wide.masked.load186.2
  %464 = bitcast float* %461 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %463, <8 x float>* %464, i32 4, <8 x i1> %452), !tbaa !12, !alias.scope !145, !llvm.access.group !21
  %465 = or <8 x i64> %broadcast.splat183, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %466 = trunc <8 x i64> %465 to <8 x i32>
  %467 = icmp sgt <8 x i32> %broadcast.splat185, %466
  %468 = extractelement <8 x i64> %465, i32 0
  %469 = shl i64 %468, 32
  %470 = ashr exact i64 %469, 32
  %471 = getelementptr inbounds float, float* %6, i64 %470
  %472 = bitcast float* %471 to <8 x float>*
  %wide.masked.load186.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %472, i32 4, <8 x i1> %467, <8 x float> undef), !tbaa !12, !alias.scope !142, !noalias !145
  %473 = extractelement <8 x i32> %466, i32 0
  %474 = add nsw i32 %mul.i.i.5, %473
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds float, float* %9, i64 %475
  %477 = bitcast float* %476 to <8 x float>*
  %wide.masked.load187.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %477, i32 4, <8 x i1> %467, <8 x float> undef), !tbaa !12, !alias.scope !145
  %478 = fsub <8 x float> %wide.masked.load187.3, %wide.masked.load186.3
  %479 = bitcast float* %476 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %478, <8 x float>* %479, i32 4, <8 x i1> %467), !tbaa !12, !alias.scope !145, !llvm.access.group !21
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.5:                 ; preds = %if.end.r_exit.i.i.us.5.1, %pregion_for_entry.entry.i.i.us.5.preheader
  %_local_id_x.i.0.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.5.preheader ], [ %645, %if.end.r_exit.i.i.us.5.1 ]
  %add1.i.i.i.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.5, %mul.i.i.i
  %conv.i.i.us.5 = trunc i64 %add1.i.i.i.us.5 to i32
  %cmp4.i.i.us.5 = icmp sgt i32 %13, %conv.i.i.us.5
  br i1 %cmp4.i.i.us.5, label %if.then.i.i.us.5, label %if.end.r_exit.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %pregion_for_entry.entry.i.i.us.5
  %sext.i.i.us.5 = shl i64 %add1.i.i.i.us.5, 32
  %idxprom.i.i.us.5 = ashr exact i64 %sext.i.i.us.5, 32
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.5
  %480 = load float, float* %arrayidx.i.i.us.5, align 4, !tbaa !12
  %add.i.i.us.5 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5
  %idxprom6.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx7.i.i.us.5 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.5
  %481 = load float, float* %arrayidx7.i.i.us.5, align 4, !tbaa !12
  %sub.i.i.us.5 = fsub float %481, %480
  store float %sub.i.i.us.5, float* %arrayidx7.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.5

if.end.r_exit.i.i.us.5:                           ; preds = %if.then.i.i.us.5, %pregion_for_entry.entry.i.i.us.5
  %482 = or i64 %_local_id_x.i.0.us.5, 1
  %add1.i.i.i.us.5.1 = add nuw nsw i64 %482, %mul.i.i.i
  %conv.i.i.us.5.1 = trunc i64 %add1.i.i.i.us.5.1 to i32
  %cmp4.i.i.us.5.1 = icmp sgt i32 %13, %conv.i.i.us.5.1
  br i1 %cmp4.i.i.us.5.1, label %if.then.i.i.us.5.1, label %if.end.r_exit.i.i.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.r_exit.i.i.us.5.1
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph175, %pregion_for_end.i.i.4
  %483 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.6 = or i32 %483, 6
  %cmp.i.i.6 = icmp sgt i32 %17, %conv2.i.i.6
  %mul.i.i.6 = mul nsw i32 %13, %conv2.i.i.6
  br i1 %cmp.i.i.6, label %vector.scevcheck195, label %pregion_for_end.i.i.6

vector.scevcheck195:                              ; preds = %pregion_for_end.i.i.5
  %484 = mul i32 %13, %conv2.i.i.6
  %485 = trunc i64 %2 to i32
  %486 = shl i32 %485, 5
  %487 = add i32 %484, %486
  %488 = icmp sgt i32 %487, 2147483616
  br i1 %488, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.memcheck209

pregion_for_entry.entry.i.i.us.6.preheader:       ; preds = %vector.memcheck209, %vector.scevcheck195
  br label %pregion_for_entry.entry.i.i.us.6

vector.memcheck209:                               ; preds = %vector.scevcheck195
  %489 = trunc i64 %2 to i32
  %490 = shl i32 %489, 5
  %491 = sext i32 %490 to i64
  %scevgep197 = getelementptr float, float* %6, i64 %491
  %492 = add nsw i64 %491, 32
  %scevgep199 = getelementptr float, float* %6, i64 %492
  %493 = mul i32 %13, %conv2.i.i.6
  %494 = add i32 %493, %490
  %495 = sext i32 %494 to i64
  %scevgep201 = getelementptr float, float* %9, i64 %495
  %496 = add nsw i64 %495, 32
  %scevgep203 = getelementptr float, float* %9, i64 %496
  %bound0205 = icmp ult float* %scevgep197, %scevgep203
  %bound1206 = icmp ult float* %scevgep201, %scevgep199
  %found.conflict207 = and i1 %bound0205, %bound1206
  br i1 %found.conflict207, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %vector.memcheck209
  %broadcast.splatinsert217 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat218 = shufflevector <8 x i64> %broadcast.splatinsert217, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert219 = insertelement <8 x i32> undef, i32 %13, i32 0
  %broadcast.splat220 = shufflevector <8 x i32> %broadcast.splatinsert219, <8 x i32> undef, <8 x i32> zeroinitializer
  %497 = or <8 x i64> %broadcast.splat218, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %498 = trunc <8 x i64> %497 to <8 x i32>
  %499 = icmp sgt <8 x i32> %broadcast.splat220, %498
  %500 = extractelement <8 x i64> %497, i32 0
  %501 = shl i64 %500, 32
  %502 = ashr exact i64 %501, 32
  %503 = getelementptr inbounds float, float* %6, i64 %502
  %504 = bitcast float* %503 to <8 x float>*
  %wide.masked.load221 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %504, i32 4, <8 x i1> %499, <8 x float> undef), !tbaa !12, !alias.scope !147, !noalias !150
  %505 = extractelement <8 x i32> %498, i32 0
  %506 = add nsw i32 %mul.i.i.6, %505
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds float, float* %9, i64 %507
  %509 = bitcast float* %508 to <8 x float>*
  %wide.masked.load222 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %509, i32 4, <8 x i1> %499, <8 x float> undef), !tbaa !12, !alias.scope !150
  %510 = fsub <8 x float> %wide.masked.load222, %wide.masked.load221
  %511 = bitcast float* %508 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %510, <8 x float>* %511, i32 4, <8 x i1> %499), !tbaa !12, !alias.scope !150, !llvm.access.group !21
  %512 = or <8 x i64> %broadcast.splat218, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %513 = trunc <8 x i64> %512 to <8 x i32>
  %514 = icmp sgt <8 x i32> %broadcast.splat220, %513
  %515 = extractelement <8 x i64> %512, i32 0
  %516 = shl i64 %515, 32
  %517 = ashr exact i64 %516, 32
  %518 = getelementptr inbounds float, float* %6, i64 %517
  %519 = bitcast float* %518 to <8 x float>*
  %wide.masked.load221.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %519, i32 4, <8 x i1> %514, <8 x float> undef), !tbaa !12, !alias.scope !147, !noalias !150
  %520 = extractelement <8 x i32> %513, i32 0
  %521 = add nsw i32 %mul.i.i.6, %520
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds float, float* %9, i64 %522
  %524 = bitcast float* %523 to <8 x float>*
  %wide.masked.load222.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %524, i32 4, <8 x i1> %514, <8 x float> undef), !tbaa !12, !alias.scope !150
  %525 = fsub <8 x float> %wide.masked.load222.1, %wide.masked.load221.1
  %526 = bitcast float* %523 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %525, <8 x float>* %526, i32 4, <8 x i1> %514), !tbaa !12, !alias.scope !150, !llvm.access.group !21
  %527 = or <8 x i64> %broadcast.splat218, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %528 = trunc <8 x i64> %527 to <8 x i32>
  %529 = icmp sgt <8 x i32> %broadcast.splat220, %528
  %530 = extractelement <8 x i64> %527, i32 0
  %531 = shl i64 %530, 32
  %532 = ashr exact i64 %531, 32
  %533 = getelementptr inbounds float, float* %6, i64 %532
  %534 = bitcast float* %533 to <8 x float>*
  %wide.masked.load221.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %534, i32 4, <8 x i1> %529, <8 x float> undef), !tbaa !12, !alias.scope !147, !noalias !150
  %535 = extractelement <8 x i32> %528, i32 0
  %536 = add nsw i32 %mul.i.i.6, %535
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds float, float* %9, i64 %537
  %539 = bitcast float* %538 to <8 x float>*
  %wide.masked.load222.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %539, i32 4, <8 x i1> %529, <8 x float> undef), !tbaa !12, !alias.scope !150
  %540 = fsub <8 x float> %wide.masked.load222.2, %wide.masked.load221.2
  %541 = bitcast float* %538 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %540, <8 x float>* %541, i32 4, <8 x i1> %529), !tbaa !12, !alias.scope !150, !llvm.access.group !21
  %542 = or <8 x i64> %broadcast.splat218, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %543 = trunc <8 x i64> %542 to <8 x i32>
  %544 = icmp sgt <8 x i32> %broadcast.splat220, %543
  %545 = extractelement <8 x i64> %542, i32 0
  %546 = shl i64 %545, 32
  %547 = ashr exact i64 %546, 32
  %548 = getelementptr inbounds float, float* %6, i64 %547
  %549 = bitcast float* %548 to <8 x float>*
  %wide.masked.load221.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %549, i32 4, <8 x i1> %544, <8 x float> undef), !tbaa !12, !alias.scope !147, !noalias !150
  %550 = extractelement <8 x i32> %543, i32 0
  %551 = add nsw i32 %mul.i.i.6, %550
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds float, float* %9, i64 %552
  %554 = bitcast float* %553 to <8 x float>*
  %wide.masked.load222.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %554, i32 4, <8 x i1> %544, <8 x float> undef), !tbaa !12, !alias.scope !150
  %555 = fsub <8 x float> %wide.masked.load222.3, %wide.masked.load221.3
  %556 = bitcast float* %553 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %555, <8 x float>* %556, i32 4, <8 x i1> %544), !tbaa !12, !alias.scope !150, !llvm.access.group !21
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.6:                 ; preds = %if.end.r_exit.i.i.us.6.1, %pregion_for_entry.entry.i.i.us.6.preheader
  %_local_id_x.i.0.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.6.preheader ], [ %642, %if.end.r_exit.i.i.us.6.1 ]
  %add1.i.i.i.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.6, %mul.i.i.i
  %conv.i.i.us.6 = trunc i64 %add1.i.i.i.us.6 to i32
  %cmp4.i.i.us.6 = icmp sgt i32 %13, %conv.i.i.us.6
  br i1 %cmp4.i.i.us.6, label %if.then.i.i.us.6, label %if.end.r_exit.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %pregion_for_entry.entry.i.i.us.6
  %sext.i.i.us.6 = shl i64 %add1.i.i.i.us.6, 32
  %idxprom.i.i.us.6 = ashr exact i64 %sext.i.i.us.6, 32
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.6
  %557 = load float, float* %arrayidx.i.i.us.6, align 4, !tbaa !12
  %add.i.i.us.6 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6
  %idxprom6.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx7.i.i.us.6 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.6
  %558 = load float, float* %arrayidx7.i.i.us.6, align 4, !tbaa !12
  %sub.i.i.us.6 = fsub float %558, %557
  store float %sub.i.i.us.6, float* %arrayidx7.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.6

if.end.r_exit.i.i.us.6:                           ; preds = %if.then.i.i.us.6, %pregion_for_entry.entry.i.i.us.6
  %559 = or i64 %_local_id_x.i.0.us.6, 1
  %add1.i.i.i.us.6.1 = add nuw nsw i64 %559, %mul.i.i.i
  %conv.i.i.us.6.1 = trunc i64 %add1.i.i.i.us.6.1 to i32
  %cmp4.i.i.us.6.1 = icmp sgt i32 %13, %conv.i.i.us.6.1
  br i1 %cmp4.i.i.us.6.1, label %if.then.i.i.us.6.1, label %if.end.r_exit.i.i.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.r_exit.i.i.us.6.1
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph210, %pregion_for_end.i.i.5
  %560 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.7 = or i32 %560, 7
  %cmp.i.i.7 = icmp sgt i32 %17, %conv2.i.i.7
  %mul.i.i.7 = mul nsw i32 %13, %conv2.i.i.7
  br i1 %cmp.i.i.7, label %vector.scevcheck230, label %pregion_for_end.i.i.7

vector.scevcheck230:                              ; preds = %pregion_for_end.i.i.6
  %561 = mul i32 %13, %conv2.i.i.7
  %562 = trunc i64 %2 to i32
  %563 = shl i32 %562, 5
  %564 = add i32 %561, %563
  %565 = icmp sgt i32 %564, 2147483616
  br i1 %565, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.memcheck244

pregion_for_entry.entry.i.i.us.7.preheader:       ; preds = %vector.memcheck244, %vector.scevcheck230
  br label %pregion_for_entry.entry.i.i.us.7

vector.memcheck244:                               ; preds = %vector.scevcheck230
  %566 = trunc i64 %2 to i32
  %567 = shl i32 %566, 5
  %568 = sext i32 %567 to i64
  %scevgep232 = getelementptr float, float* %6, i64 %568
  %569 = add nsw i64 %568, 32
  %scevgep234 = getelementptr float, float* %6, i64 %569
  %570 = mul i32 %13, %conv2.i.i.7
  %571 = add i32 %570, %567
  %572 = sext i32 %571 to i64
  %scevgep236 = getelementptr float, float* %9, i64 %572
  %573 = add nsw i64 %572, 32
  %scevgep238 = getelementptr float, float* %9, i64 %573
  %bound0240 = icmp ult float* %scevgep232, %scevgep238
  %bound1241 = icmp ult float* %scevgep236, %scevgep234
  %found.conflict242 = and i1 %bound0240, %bound1241
  br i1 %found.conflict242, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.ph245

vector.ph245:                                     ; preds = %vector.memcheck244
  %broadcast.splatinsert252 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat253 = shufflevector <8 x i64> %broadcast.splatinsert252, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert254 = insertelement <8 x i32> undef, i32 %13, i32 0
  %broadcast.splat255 = shufflevector <8 x i32> %broadcast.splatinsert254, <8 x i32> undef, <8 x i32> zeroinitializer
  %574 = or <8 x i64> %broadcast.splat253, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %575 = trunc <8 x i64> %574 to <8 x i32>
  %576 = icmp sgt <8 x i32> %broadcast.splat255, %575
  %577 = extractelement <8 x i64> %574, i32 0
  %578 = shl i64 %577, 32
  %579 = ashr exact i64 %578, 32
  %580 = getelementptr inbounds float, float* %6, i64 %579
  %581 = bitcast float* %580 to <8 x float>*
  %wide.masked.load256 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %581, i32 4, <8 x i1> %576, <8 x float> undef), !tbaa !12, !alias.scope !152, !noalias !155
  %582 = extractelement <8 x i32> %575, i32 0
  %583 = add nsw i32 %mul.i.i.7, %582
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds float, float* %9, i64 %584
  %586 = bitcast float* %585 to <8 x float>*
  %wide.masked.load257 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %586, i32 4, <8 x i1> %576, <8 x float> undef), !tbaa !12, !alias.scope !155
  %587 = fsub <8 x float> %wide.masked.load257, %wide.masked.load256
  %588 = bitcast float* %585 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %587, <8 x float>* %588, i32 4, <8 x i1> %576), !tbaa !12, !alias.scope !155, !llvm.access.group !21
  %589 = or <8 x i64> %broadcast.splat253, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %590 = trunc <8 x i64> %589 to <8 x i32>
  %591 = icmp sgt <8 x i32> %broadcast.splat255, %590
  %592 = extractelement <8 x i64> %589, i32 0
  %593 = shl i64 %592, 32
  %594 = ashr exact i64 %593, 32
  %595 = getelementptr inbounds float, float* %6, i64 %594
  %596 = bitcast float* %595 to <8 x float>*
  %wide.masked.load256.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %596, i32 4, <8 x i1> %591, <8 x float> undef), !tbaa !12, !alias.scope !152, !noalias !155
  %597 = extractelement <8 x i32> %590, i32 0
  %598 = add nsw i32 %mul.i.i.7, %597
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds float, float* %9, i64 %599
  %601 = bitcast float* %600 to <8 x float>*
  %wide.masked.load257.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %601, i32 4, <8 x i1> %591, <8 x float> undef), !tbaa !12, !alias.scope !155
  %602 = fsub <8 x float> %wide.masked.load257.1, %wide.masked.load256.1
  %603 = bitcast float* %600 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %602, <8 x float>* %603, i32 4, <8 x i1> %591), !tbaa !12, !alias.scope !155, !llvm.access.group !21
  %604 = or <8 x i64> %broadcast.splat253, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %605 = trunc <8 x i64> %604 to <8 x i32>
  %606 = icmp sgt <8 x i32> %broadcast.splat255, %605
  %607 = extractelement <8 x i64> %604, i32 0
  %608 = shl i64 %607, 32
  %609 = ashr exact i64 %608, 32
  %610 = getelementptr inbounds float, float* %6, i64 %609
  %611 = bitcast float* %610 to <8 x float>*
  %wide.masked.load256.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %611, i32 4, <8 x i1> %606, <8 x float> undef), !tbaa !12, !alias.scope !152, !noalias !155
  %612 = extractelement <8 x i32> %605, i32 0
  %613 = add nsw i32 %mul.i.i.7, %612
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds float, float* %9, i64 %614
  %616 = bitcast float* %615 to <8 x float>*
  %wide.masked.load257.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %616, i32 4, <8 x i1> %606, <8 x float> undef), !tbaa !12, !alias.scope !155
  %617 = fsub <8 x float> %wide.masked.load257.2, %wide.masked.load256.2
  %618 = bitcast float* %615 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %617, <8 x float>* %618, i32 4, <8 x i1> %606), !tbaa !12, !alias.scope !155, !llvm.access.group !21
  %619 = or <8 x i64> %broadcast.splat253, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %620 = trunc <8 x i64> %619 to <8 x i32>
  %621 = icmp sgt <8 x i32> %broadcast.splat255, %620
  %622 = extractelement <8 x i64> %619, i32 0
  %623 = shl i64 %622, 32
  %624 = ashr exact i64 %623, 32
  %625 = getelementptr inbounds float, float* %6, i64 %624
  %626 = bitcast float* %625 to <8 x float>*
  %wide.masked.load256.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %626, i32 4, <8 x i1> %621, <8 x float> undef), !tbaa !12, !alias.scope !152, !noalias !155
  %627 = extractelement <8 x i32> %620, i32 0
  %628 = add nsw i32 %mul.i.i.7, %627
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds float, float* %9, i64 %629
  %631 = bitcast float* %630 to <8 x float>*
  %wide.masked.load257.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %631, i32 4, <8 x i1> %621, <8 x float> undef), !tbaa !12, !alias.scope !155
  %632 = fsub <8 x float> %wide.masked.load257.3, %wide.masked.load256.3
  %633 = bitcast float* %630 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %632, <8 x float>* %633, i32 4, <8 x i1> %621), !tbaa !12, !alias.scope !155, !llvm.access.group !21
  br label %pregion_for_end.i.i.7

pregion_for_entry.entry.i.i.us.7:                 ; preds = %if.end.r_exit.i.i.us.7.1, %pregion_for_entry.entry.i.i.us.7.preheader
  %_local_id_x.i.0.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.7.preheader ], [ %639, %if.end.r_exit.i.i.us.7.1 ]
  %add1.i.i.i.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.7, %mul.i.i.i
  %conv.i.i.us.7 = trunc i64 %add1.i.i.i.us.7 to i32
  %cmp4.i.i.us.7 = icmp sgt i32 %13, %conv.i.i.us.7
  br i1 %cmp4.i.i.us.7, label %if.then.i.i.us.7, label %if.end.r_exit.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %pregion_for_entry.entry.i.i.us.7
  %sext.i.i.us.7 = shl i64 %add1.i.i.i.us.7, 32
  %idxprom.i.i.us.7 = ashr exact i64 %sext.i.i.us.7, 32
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.7
  %634 = load float, float* %arrayidx.i.i.us.7, align 4, !tbaa !12
  %add.i.i.us.7 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7
  %idxprom6.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx7.i.i.us.7 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.7
  %635 = load float, float* %arrayidx7.i.i.us.7, align 4, !tbaa !12
  %sub.i.i.us.7 = fsub float %635, %634
  store float %sub.i.i.us.7, float* %arrayidx7.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.7

if.end.r_exit.i.i.us.7:                           ; preds = %if.then.i.i.us.7, %pregion_for_entry.entry.i.i.us.7
  %636 = or i64 %_local_id_x.i.0.us.7, 1
  %add1.i.i.i.us.7.1 = add nuw nsw i64 %636, %mul.i.i.i
  %conv.i.i.us.7.1 = trunc i64 %add1.i.i.i.us.7.1 to i32
  %cmp4.i.i.us.7.1 = icmp sgt i32 %13, %conv.i.i.us.7.1
  br i1 %cmp4.i.i.us.7.1, label %if.then.i.i.us.7.1, label %if.end.r_exit.i.i.us.7.1

pregion_for_end.i.i.7.loopexit:                   ; preds = %if.end.r_exit.i.i.us.7.1
  br label %pregion_for_end.i.i.7

pregion_for_end.i.i.7:                            ; preds = %pregion_for_end.i.i.7.loopexit, %vector.ph245, %pregion_for_end.i.i.6
  ret void

if.then.i.i.us.7.1:                               ; preds = %if.end.r_exit.i.i.us.7
  %sext.i.i.us.7.1 = shl i64 %add1.i.i.i.us.7.1, 32
  %idxprom.i.i.us.7.1 = ashr exact i64 %sext.i.i.us.7.1, 32
  %arrayidx.i.i.us.7.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.7.1
  %637 = load float, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12
  %add.i.i.us.7.1 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.1
  %idxprom6.i.i.us.7.1 = sext i32 %add.i.i.us.7.1 to i64
  %arrayidx7.i.i.us.7.1 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.7.1
  %638 = load float, float* %arrayidx7.i.i.us.7.1, align 4, !tbaa !12
  %sub.i.i.us.7.1 = fsub float %638, %637
  store float %sub.i.i.us.7.1, float* %arrayidx7.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.7.1

if.end.r_exit.i.i.us.7.1:                         ; preds = %if.then.i.i.us.7.1, %if.end.r_exit.i.i.us.7
  %639 = add nuw nsw i64 %_local_id_x.i.0.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %639, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.i.7.loopexit, label %pregion_for_entry.entry.i.i.us.7, !llvm.loop !157

if.then.i.i.us.6.1:                               ; preds = %if.end.r_exit.i.i.us.6
  %sext.i.i.us.6.1 = shl i64 %add1.i.i.i.us.6.1, 32
  %idxprom.i.i.us.6.1 = ashr exact i64 %sext.i.i.us.6.1, 32
  %arrayidx.i.i.us.6.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.6.1
  %640 = load float, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12
  %add.i.i.us.6.1 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.1
  %idxprom6.i.i.us.6.1 = sext i32 %add.i.i.us.6.1 to i64
  %arrayidx7.i.i.us.6.1 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.6.1
  %641 = load float, float* %arrayidx7.i.i.us.6.1, align 4, !tbaa !12
  %sub.i.i.us.6.1 = fsub float %641, %640
  store float %sub.i.i.us.6.1, float* %arrayidx7.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.6.1

if.end.r_exit.i.i.us.6.1:                         ; preds = %if.then.i.i.us.6.1, %if.end.r_exit.i.i.us.6
  %642 = add nuw nsw i64 %_local_id_x.i.0.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %642, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.6, !llvm.loop !158

if.then.i.i.us.5.1:                               ; preds = %if.end.r_exit.i.i.us.5
  %sext.i.i.us.5.1 = shl i64 %add1.i.i.i.us.5.1, 32
  %idxprom.i.i.us.5.1 = ashr exact i64 %sext.i.i.us.5.1, 32
  %arrayidx.i.i.us.5.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.5.1
  %643 = load float, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12
  %add.i.i.us.5.1 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.1
  %idxprom6.i.i.us.5.1 = sext i32 %add.i.i.us.5.1 to i64
  %arrayidx7.i.i.us.5.1 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.5.1
  %644 = load float, float* %arrayidx7.i.i.us.5.1, align 4, !tbaa !12
  %sub.i.i.us.5.1 = fsub float %644, %643
  store float %sub.i.i.us.5.1, float* %arrayidx7.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.5.1

if.end.r_exit.i.i.us.5.1:                         ; preds = %if.then.i.i.us.5.1, %if.end.r_exit.i.i.us.5
  %645 = add nuw nsw i64 %_local_id_x.i.0.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %645, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.5, !llvm.loop !159

if.then.i.i.us.4.1:                               ; preds = %if.end.r_exit.i.i.us.4
  %sext.i.i.us.4.1 = shl i64 %add1.i.i.i.us.4.1, 32
  %idxprom.i.i.us.4.1 = ashr exact i64 %sext.i.i.us.4.1, 32
  %arrayidx.i.i.us.4.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.4.1
  %646 = load float, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12
  %add.i.i.us.4.1 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.1
  %idxprom6.i.i.us.4.1 = sext i32 %add.i.i.us.4.1 to i64
  %arrayidx7.i.i.us.4.1 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.4.1
  %647 = load float, float* %arrayidx7.i.i.us.4.1, align 4, !tbaa !12
  %sub.i.i.us.4.1 = fsub float %647, %646
  store float %sub.i.i.us.4.1, float* %arrayidx7.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.4.1

if.end.r_exit.i.i.us.4.1:                         ; preds = %if.then.i.i.us.4.1, %if.end.r_exit.i.i.us.4
  %648 = add nuw nsw i64 %_local_id_x.i.0.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %648, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.4, !llvm.loop !160

if.then.i.i.us.3.1:                               ; preds = %if.end.r_exit.i.i.us.3
  %sext.i.i.us.3.1 = shl i64 %add1.i.i.i.us.3.1, 32
  %idxprom.i.i.us.3.1 = ashr exact i64 %sext.i.i.us.3.1, 32
  %arrayidx.i.i.us.3.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.3.1
  %649 = load float, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12
  %add.i.i.us.3.1 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.1
  %idxprom6.i.i.us.3.1 = sext i32 %add.i.i.us.3.1 to i64
  %arrayidx7.i.i.us.3.1 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.3.1
  %650 = load float, float* %arrayidx7.i.i.us.3.1, align 4, !tbaa !12
  %sub.i.i.us.3.1 = fsub float %650, %649
  store float %sub.i.i.us.3.1, float* %arrayidx7.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.3.1

if.end.r_exit.i.i.us.3.1:                         ; preds = %if.then.i.i.us.3.1, %if.end.r_exit.i.i.us.3
  %651 = add nuw nsw i64 %_local_id_x.i.0.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %651, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.3, !llvm.loop !161

if.then.i.i.us.2.1:                               ; preds = %if.end.r_exit.i.i.us.2
  %sext.i.i.us.2.1 = shl i64 %add1.i.i.i.us.2.1, 32
  %idxprom.i.i.us.2.1 = ashr exact i64 %sext.i.i.us.2.1, 32
  %arrayidx.i.i.us.2.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.2.1
  %652 = load float, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12
  %add.i.i.us.2.1 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.1
  %idxprom6.i.i.us.2.1 = sext i32 %add.i.i.us.2.1 to i64
  %arrayidx7.i.i.us.2.1 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.2.1
  %653 = load float, float* %arrayidx7.i.i.us.2.1, align 4, !tbaa !12
  %sub.i.i.us.2.1 = fsub float %653, %652
  store float %sub.i.i.us.2.1, float* %arrayidx7.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.2.1

if.end.r_exit.i.i.us.2.1:                         ; preds = %if.then.i.i.us.2.1, %if.end.r_exit.i.i.us.2
  %654 = add nuw nsw i64 %_local_id_x.i.0.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %654, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.2, !llvm.loop !162

if.then.i.i.us.1.1:                               ; preds = %if.end.r_exit.i.i.us.1
  %sext.i.i.us.1.1 = shl i64 %add1.i.i.i.us.1.1, 32
  %idxprom.i.i.us.1.1 = ashr exact i64 %sext.i.i.us.1.1, 32
  %arrayidx.i.i.us.1.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.1.1
  %655 = load float, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12
  %add.i.i.us.1.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.1
  %idxprom6.i.i.us.1.1 = sext i32 %add.i.i.us.1.1 to i64
  %arrayidx7.i.i.us.1.1 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.1.1
  %656 = load float, float* %arrayidx7.i.i.us.1.1, align 4, !tbaa !12
  %sub.i.i.us.1.1 = fsub float %656, %655
  store float %sub.i.i.us.1.1, float* %arrayidx7.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.1.1

if.end.r_exit.i.i.us.1.1:                         ; preds = %if.then.i.i.us.1.1, %if.end.r_exit.i.i.us.1
  %657 = add nuw nsw i64 %_local_id_x.i.0.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %657, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.1, !llvm.loop !163

if.then.i.i.us.1278:                              ; preds = %if.end.r_exit.i.i.us
  %sext.i.i.us.1271 = shl i64 %add1.i.i.i.us.1267, 32
  %idxprom.i.i.us.1272 = ashr exact i64 %sext.i.i.us.1271, 32
  %arrayidx.i.i.us.1273 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.1272
  %658 = load float, float* %arrayidx.i.i.us.1273, align 4, !tbaa !12
  %add.i.i.us.1274 = add nsw i32 %mul.i.i, %conv.i.i.us.1268
  %idxprom6.i.i.us.1275 = sext i32 %add.i.i.us.1274 to i64
  %arrayidx7.i.i.us.1276 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.1275
  %659 = load float, float* %arrayidx7.i.i.us.1276, align 4, !tbaa !12
  %sub.i.i.us.1277 = fsub float %659, %658
  store float %sub.i.i.us.1277, float* %arrayidx7.i.i.us.1276, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.r_exit.i.i.us.1279

if.end.r_exit.i.i.us.1279:                        ; preds = %if.then.i.i.us.1278, %if.end.r_exit.i.i.us
  %660 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %660, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !164
}

; Function Attrs: argmemonly nounwind readonly willreturn
declare <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>*, i32 immarg, <8 x i1>, <8 x float>) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.masked.store.v8f32.p0v8f32(<8 x float>, <8 x float>*, i32 immarg, <8 x i1>) #3

attributes #0 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree norecurse nounwind }
attributes #2 = { argmemonly nounwind readonly willreturn }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!opencl.ocl.version = !{!3}
!llvm.ident = !{!4}
!opencl.spir.version = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 1, i32 2}
!4 = !{!"clang version 11.0.0 (git@github.com:llvm/llvm-project.git 91e89f9a5115b0f83b8f026e1ad0e6d1f885fa9b)"}
!5 = !{i32 1, i32 1, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int"}
!8 = !{!"float*", !"float*", !"int", !"int"}
!9 = !{!"", !"", !"", !""}
!10 = !{!"mean", !"data", !"m", !"n"}
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
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = !{!45}
!45 = distinct !{!45, !46}
!46 = distinct !{!46, !"LVerDomain"}
!47 = !{!48}
!48 = distinct !{!48, !46}
!49 = !{!50}
!50 = distinct !{!50, !51}
!51 = distinct !{!51, !"LVerDomain"}
!52 = !{!53}
!53 = distinct !{!53, !51}
!54 = !{!55}
!55 = distinct !{!55, !56}
!56 = distinct !{!56, !"LVerDomain"}
!57 = !{!58}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.parallel_accesses", !22}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = distinct !{!62, !60, !61}
!63 = distinct !{!63, !60, !61}
!64 = distinct !{!64, !60, !61}
!65 = distinct !{!65, !60, !61}
!66 = distinct !{!66, !60, !61}
!67 = distinct !{!67, !60, !61}
!68 = distinct !{!68, !60, !61}
!69 = !{!70}
!70 = distinct !{!70, !71}
!71 = distinct !{!71, !"LVerDomain"}
!72 = !{!73}
!73 = distinct !{!73, !71}
!74 = !{!75}
!75 = distinct !{!75, !76}
!76 = distinct !{!76, !"LVerDomain"}
!77 = !{!78}
!78 = distinct !{!78, !76}
!79 = !{!80}
!80 = distinct !{!80, !81}
!81 = distinct !{!81, !"LVerDomain"}
!82 = !{!83}
!83 = distinct !{!83, !81}
!84 = !{!85}
!85 = distinct !{!85, !86}
!86 = distinct !{!86, !"LVerDomain"}
!87 = !{!88}
!88 = distinct !{!88, !86}
!89 = !{!90}
!90 = distinct !{!90, !91}
!91 = distinct !{!91, !"LVerDomain"}
!92 = !{!93}
!93 = distinct !{!93, !91}
!94 = !{!95}
!95 = distinct !{!95, !96}
!96 = distinct !{!96, !"LVerDomain"}
!97 = !{!98}
!98 = distinct !{!98, !96}
!99 = !{!100}
!100 = distinct !{!100, !101}
!101 = distinct !{!101, !"LVerDomain"}
!102 = !{!103}
!103 = distinct !{!103, !101}
!104 = !{!105}
!105 = distinct !{!105, !106}
!106 = distinct !{!106, !"LVerDomain"}
!107 = !{!108}
!108 = distinct !{!108, !106}
!109 = distinct !{!109, !60, !61}
!110 = distinct !{!110, !60, !61}
!111 = distinct !{!111, !60, !61}
!112 = distinct !{!112, !60, !61}
!113 = distinct !{!113, !60, !61}
!114 = distinct !{!114, !60, !61}
!115 = distinct !{!115, !60, !61}
!116 = distinct !{!116, !60, !61}
!117 = !{!118}
!118 = distinct !{!118, !119}
!119 = distinct !{!119, !"LVerDomain"}
!120 = !{!121}
!121 = distinct !{!121, !119}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = !{!128}
!128 = distinct !{!128, !129}
!129 = distinct !{!129, !"LVerDomain"}
!130 = !{!131}
!131 = distinct !{!131, !129}
!132 = !{!133}
!133 = distinct !{!133, !134}
!134 = distinct !{!134, !"LVerDomain"}
!135 = !{!136}
!136 = distinct !{!136, !134}
!137 = !{!138}
!138 = distinct !{!138, !139}
!139 = distinct !{!139, !"LVerDomain"}
!140 = !{!141}
!141 = distinct !{!141, !139}
!142 = !{!143}
!143 = distinct !{!143, !144}
!144 = distinct !{!144, !"LVerDomain"}
!145 = !{!146}
!146 = distinct !{!146, !144}
!147 = !{!148}
!148 = distinct !{!148, !149}
!149 = distinct !{!149, !"LVerDomain"}
!150 = !{!151}
!151 = distinct !{!151, !149}
!152 = !{!153}
!153 = distinct !{!153, !154}
!154 = distinct !{!154, !"LVerDomain"}
!155 = !{!156}
!156 = distinct !{!156, !154}
!157 = distinct !{!157, !60, !61}
!158 = distinct !{!158, !60, !61}
!159 = distinct !{!159, !60, !61}
!160 = distinct !{!160, !60, !61}
!161 = distinct !{!161, !60, !61}
!162 = distinct !{!162, !60, !61}
!163 = distinct !{!163, !60, !61}
!164 = distinct !{!164, !60, !61}
