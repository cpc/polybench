; ModuleID = './CE/HMLMAPAJJBLPBKGGCCBDEJJLIPIDBFCCIIFBD/fdtd_kernel2/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_fdtd_kernel2(float* nocapture %0, float* nocapture readnone %1, float* nocapture readonly %2, i32 %3, i32 %4, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %5, i64 %6, i64 %7, i64 %8) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
pregion_for_entry.pregion_for_init.i:
  %mul.i.i = shl i64 %6, 5
  %mul3.i.i = shl i64 %7, 3
  %conv2.i = trunc i64 %mul3.i.i to i32
  %cmp.i = icmp slt i32 %conv2.i, %3
  %mul.i = mul nsw i32 %conv2.i, %4
  br i1 %cmp.i, label %vector.scevcheck, label %pregion_for_end.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i
  %9 = trunc i64 %7 to i32
  %10 = mul i32 %9, %4
  %11 = shl i32 %10, 3
  %12 = trunc i64 %6 to i32
  %13 = shl i32 %12, 5
  %14 = add i32 %11, %13
  %15 = icmp sgt i32 %14, 2147483616
  %16 = add i32 %11, %13
  %17 = add i32 %16, -1
  %18 = add i32 %16, 30
  %19 = icmp slt i32 %18, %17
  %20 = or i1 %15, %19
  br i1 %20, label %pregion_for_entry.entry.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.us.preheader:           ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %21 = trunc i64 %7 to i32
  %22 = mul i32 %21, %4
  %23 = shl i32 %22, 3
  %24 = trunc i64 %6 to i32
  %25 = shl i32 %24, 5
  %26 = add i32 %23, %25
  %27 = sext i32 %26 to i64
  %scevgep = getelementptr float, float* %0, i64 %27
  %28 = add nsw i64 %27, 32
  %scevgep7 = getelementptr float, float* %0, i64 %28
  %29 = add i32 %23, %25
  %30 = add i32 %29, -8
  %31 = sext i32 %30 to i64
  %32 = or i64 %31, 7
  %scevgep9 = getelementptr float, float* %2, i64 %32
  %33 = add nsw i64 %31, 39
  %scevgep11 = getelementptr float, float* %2, i64 %33
  %scevgep13 = getelementptr float, float* %2, i64 %27
  %scevgep15 = getelementptr float, float* %2, i64 %28
  %bound0 = icmp ult float* %scevgep, %scevgep11
  %bound1 = icmp ult float* %scevgep9, %scevgep7
  %found.conflict = and i1 %bound0, %bound1
  %bound017 = icmp ult float* %scevgep, %scevgep15
  %bound118 = icmp ult float* %scevgep13, %scevgep7
  %found.conflict19 = and i1 %bound017, %bound118
  %conflict.rdx = or i1 %found.conflict, %found.conflict19
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert20 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat21 = shufflevector <8 x i32> %broadcast.splatinsert20, <8 x i32> undef, <8 x i32> zeroinitializer
  %34 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %35 = or <8 x i32> %34, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %36 = icmp sgt <8 x i32> %broadcast.splat21, %35
  %37 = icmp sgt <8 x i32> %35, zeroinitializer
  %38 = and <8 x i1> %36, %37
  %39 = extractelement <8 x i32> %35, i32 0
  %40 = add i32 %mul.i, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %0, i64 %41
  %43 = bitcast float* %42 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %43, i32 4, <8 x i1> %38, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %44 = fpext <8 x float> %wide.masked.load to <8 x double>
  %45 = getelementptr inbounds float, float* %2, i64 %41
  %46 = bitcast float* %45 to <8 x float>*
  %wide.masked.load22 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %46, i32 4, <8 x i1> %38, <8 x float> undef), !tbaa !12, !alias.scope !22
  %47 = add i32 %40, -1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %2, i64 %48
  %50 = bitcast float* %49 to <8 x float>*
  %wide.masked.load23 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %50, i32 4, <8 x i1> %38, <8 x float> undef), !tbaa !12, !alias.scope !23
  %51 = fsub <8 x float> %wide.masked.load22, %wide.masked.load23
  %52 = fpext <8 x float> %51 to <8 x double>
  %53 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %52, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %44)
  %54 = fptrunc <8 x double> %53 to <8 x float>
  %55 = bitcast float* %42 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %54, <8 x float>* %55, i32 4, <8 x i1> %38), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !24
  %56 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %57 = or <8 x i32> %56, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %58 = icmp sgt <8 x i32> %broadcast.splat21, %57
  %59 = icmp sgt <8 x i32> %57, zeroinitializer
  %60 = and <8 x i1> %58, %59
  %61 = extractelement <8 x i32> %57, i32 0
  %62 = add i32 %mul.i, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %0, i64 %63
  %65 = bitcast float* %64 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %65, i32 4, <8 x i1> %60, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %66 = fpext <8 x float> %wide.masked.load.1 to <8 x double>
  %67 = getelementptr inbounds float, float* %2, i64 %63
  %68 = bitcast float* %67 to <8 x float>*
  %wide.masked.load22.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %68, i32 4, <8 x i1> %60, <8 x float> undef), !tbaa !12, !alias.scope !22
  %69 = add i32 %62, -1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %2, i64 %70
  %72 = bitcast float* %71 to <8 x float>*
  %wide.masked.load23.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %72, i32 4, <8 x i1> %60, <8 x float> undef), !tbaa !12, !alias.scope !23
  %73 = fsub <8 x float> %wide.masked.load22.1, %wide.masked.load23.1
  %74 = fpext <8 x float> %73 to <8 x double>
  %75 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %74, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %66)
  %76 = fptrunc <8 x double> %75 to <8 x float>
  %77 = bitcast float* %64 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %76, <8 x float>* %77, i32 4, <8 x i1> %60), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !24
  %78 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %79 = or <8 x i32> %78, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %80 = icmp sgt <8 x i32> %broadcast.splat21, %79
  %81 = icmp sgt <8 x i32> %79, zeroinitializer
  %82 = and <8 x i1> %80, %81
  %83 = extractelement <8 x i32> %79, i32 0
  %84 = add i32 %mul.i, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %0, i64 %85
  %87 = bitcast float* %86 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %87, i32 4, <8 x i1> %82, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %88 = fpext <8 x float> %wide.masked.load.2 to <8 x double>
  %89 = getelementptr inbounds float, float* %2, i64 %85
  %90 = bitcast float* %89 to <8 x float>*
  %wide.masked.load22.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %90, i32 4, <8 x i1> %82, <8 x float> undef), !tbaa !12, !alias.scope !22
  %91 = add i32 %84, -1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %2, i64 %92
  %94 = bitcast float* %93 to <8 x float>*
  %wide.masked.load23.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %94, i32 4, <8 x i1> %82, <8 x float> undef), !tbaa !12, !alias.scope !23
  %95 = fsub <8 x float> %wide.masked.load22.2, %wide.masked.load23.2
  %96 = fpext <8 x float> %95 to <8 x double>
  %97 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %96, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %88)
  %98 = fptrunc <8 x double> %97 to <8 x float>
  %99 = bitcast float* %86 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %98, <8 x float>* %99, i32 4, <8 x i1> %82), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !24
  %100 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %101 = or <8 x i32> %100, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %102 = icmp sgt <8 x i32> %broadcast.splat21, %101
  %103 = icmp sgt <8 x i32> %101, zeroinitializer
  %104 = and <8 x i1> %102, %103
  %105 = extractelement <8 x i32> %101, i32 0
  %106 = add i32 %mul.i, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %0, i64 %107
  %109 = bitcast float* %108 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %109, i32 4, <8 x i1> %104, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %110 = fpext <8 x float> %wide.masked.load.3 to <8 x double>
  %111 = getelementptr inbounds float, float* %2, i64 %107
  %112 = bitcast float* %111 to <8 x float>*
  %wide.masked.load22.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %112, i32 4, <8 x i1> %104, <8 x float> undef), !tbaa !12, !alias.scope !22
  %113 = add i32 %106, -1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %2, i64 %114
  %116 = bitcast float* %115 to <8 x float>*
  %wide.masked.load23.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %116, i32 4, <8 x i1> %104, <8 x float> undef), !tbaa !12, !alias.scope !23
  %117 = fsub <8 x float> %wide.masked.load22.3, %wide.masked.load23.3
  %118 = fpext <8 x float> %117 to <8 x double>
  %119 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %118, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %110)
  %120 = fptrunc <8 x double> %119 to <8 x float>
  %121 = bitcast float* %108 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %120, <8 x float>* %121, i32 4, <8 x i1> %104), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !24
  br label %pregion_for_end.i

pregion_for_entry.entry.i.us:                     ; preds = %if.end.i.us.1380, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.us.preheader ], [ %967, %if.end.i.us.1380 ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp4.i.us = icmp slt i32 %conv.i.us, %4
  %cmp7.i.us = icmp sgt i32 %conv.i.us, 0
  %or.cond.i.us = and i1 %cmp4.i.us, %cmp7.i.us
  br i1 %or.cond.i.us, label %if.then.i.us, label %if.end.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %add.i.us = add i32 %mul.i, %conv.i.us
  %idxprom.i.us = sext i32 %add.i.us to i64
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %idxprom.i.us
  %122 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %conv9.i.us = fpext float %122 to double
  %arrayidx13.i.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us
  %123 = load float, float* %arrayidx13.i.us, align 4, !tbaa !12
  %add15.i.us = add i32 %add.i.us, -1
  %idxprom16.i.us = sext i32 %add15.i.us to i64
  %arrayidx17.i.us = getelementptr inbounds float, float* %2, i64 %idxprom16.i.us
  %124 = load float, float* %arrayidx17.i.us, align 4, !tbaa !12
  %sub18.i.us = fsub float %123, %124
  %conv19.i.us = fpext float %sub18.i.us to double
  %125 = tail call double @llvm.fmuladd.f64(double %conv19.i.us, double -5.000000e-01, double %conv9.i.us) #5
  %conv21.i.us = fptrunc double %125 to float
  store float %conv21.i.us, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.us

if.end.i.us:                                      ; preds = %if.then.i.us, %pregion_for_entry.entry.i.us
  %126 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1362 = add nuw nsw i64 %126, %mul.i.i
  %conv.i.us.1363 = trunc i64 %add1.i.i.us.1362 to i32
  %cmp4.i.us.1364 = icmp slt i32 %conv.i.us.1363, %4
  %cmp7.i.us.1365 = icmp sgt i32 %conv.i.us.1363, 0
  %or.cond.i.us.1366 = and i1 %cmp4.i.us.1364, %cmp7.i.us.1365
  br i1 %or.cond.i.us.1366, label %if.then.i.us.1379, label %if.end.i.us.1380

pregion_for_end.i.loopexit:                       ; preds = %if.end.i.us.1380
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %pregion_for_end.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i
  %127 = trunc i64 %mul3.i.i to i32
  %conv2.i.1 = or i32 %127, 1
  %cmp.i.1 = icmp slt i32 %conv2.i.1, %3
  %mul.i.1 = mul nsw i32 %conv2.i.1, %4
  br i1 %cmp.i.1, label %vector.scevcheck34, label %pregion_for_end.i.1

vector.scevcheck34:                               ; preds = %pregion_for_end.i
  %128 = mul i32 %conv2.i.1, %4
  %129 = trunc i64 %6 to i32
  %130 = shl i32 %129, 5
  %131 = add i32 %128, %130
  %132 = icmp sgt i32 %131, 2147483616
  %133 = add i32 %128, %130
  %134 = add i32 %133, -1
  %135 = add i32 %133, 30
  %136 = icmp slt i32 %135, %134
  %137 = or i1 %132, %136
  br i1 %137, label %pregion_for_entry.entry.i.us.1.preheader, label %vector.memcheck56

pregion_for_entry.entry.i.us.1.preheader:         ; preds = %vector.memcheck56, %vector.scevcheck34
  br label %pregion_for_entry.entry.i.us.1

vector.memcheck56:                                ; preds = %vector.scevcheck34
  %138 = mul i32 %conv2.i.1, %4
  %139 = trunc i64 %6 to i32
  %140 = shl i32 %139, 5
  %141 = add i32 %138, %140
  %142 = sext i32 %141 to i64
  %scevgep36 = getelementptr float, float* %0, i64 %142
  %143 = add nsw i64 %142, 32
  %scevgep38 = getelementptr float, float* %0, i64 %143
  %144 = add i32 %138, %140
  %145 = add i32 %144, -1
  %146 = sext i32 %145 to i64
  %scevgep40 = getelementptr float, float* %2, i64 %146
  %147 = add nsw i64 %146, 32
  %scevgep42 = getelementptr float, float* %2, i64 %147
  %scevgep44 = getelementptr float, float* %2, i64 %142
  %scevgep46 = getelementptr float, float* %2, i64 %143
  %bound048 = icmp ult float* %scevgep36, %scevgep42
  %bound149 = icmp ult float* %scevgep40, %scevgep38
  %found.conflict50 = and i1 %bound048, %bound149
  %bound051 = icmp ult float* %scevgep36, %scevgep46
  %bound152 = icmp ult float* %scevgep44, %scevgep38
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx54 = or i1 %found.conflict50, %found.conflict53
  br i1 %conflict.rdx54, label %pregion_for_entry.entry.i.us.1.preheader, label %vector.ph57

vector.ph57:                                      ; preds = %vector.memcheck56
  %broadcast.splatinsert64 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat65 = shufflevector <8 x i64> %broadcast.splatinsert64, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert66 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat67 = shufflevector <8 x i32> %broadcast.splatinsert66, <8 x i32> undef, <8 x i32> zeroinitializer
  %148 = trunc <8 x i64> %broadcast.splat65 to <8 x i32>
  %149 = or <8 x i32> %148, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %150 = icmp sgt <8 x i32> %broadcast.splat67, %149
  %151 = icmp sgt <8 x i32> %149, zeroinitializer
  %152 = and <8 x i1> %150, %151
  %153 = extractelement <8 x i32> %149, i32 0
  %154 = add i32 %mul.i.1, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %0, i64 %155
  %157 = bitcast float* %156 to <8 x float>*
  %wide.masked.load68 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %157, i32 4, <8 x i1> %152, <8 x float> undef), !tbaa !12, !alias.scope !27, !noalias !30
  %158 = fpext <8 x float> %wide.masked.load68 to <8 x double>
  %159 = getelementptr inbounds float, float* %2, i64 %155
  %160 = bitcast float* %159 to <8 x float>*
  %wide.masked.load69 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %160, i32 4, <8 x i1> %152, <8 x float> undef), !tbaa !12, !alias.scope !33
  %161 = add i32 %154, -1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %2, i64 %162
  %164 = bitcast float* %163 to <8 x float>*
  %wide.masked.load70 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %164, i32 4, <8 x i1> %152, <8 x float> undef), !tbaa !12, !alias.scope !34
  %165 = fsub <8 x float> %wide.masked.load69, %wide.masked.load70
  %166 = fpext <8 x float> %165 to <8 x double>
  %167 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %166, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %158)
  %168 = fptrunc <8 x double> %167 to <8 x float>
  %169 = bitcast float* %156 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %168, <8 x float>* %169, i32 4, <8 x i1> %152), !tbaa !12, !alias.scope !27, !noalias !30, !llvm.access.group !24
  %170 = trunc <8 x i64> %broadcast.splat65 to <8 x i32>
  %171 = or <8 x i32> %170, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %172 = icmp sgt <8 x i32> %broadcast.splat67, %171
  %173 = icmp sgt <8 x i32> %171, zeroinitializer
  %174 = and <8 x i1> %172, %173
  %175 = extractelement <8 x i32> %171, i32 0
  %176 = add i32 %mul.i.1, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %0, i64 %177
  %179 = bitcast float* %178 to <8 x float>*
  %wide.masked.load68.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %179, i32 4, <8 x i1> %174, <8 x float> undef), !tbaa !12, !alias.scope !27, !noalias !30
  %180 = fpext <8 x float> %wide.masked.load68.1 to <8 x double>
  %181 = getelementptr inbounds float, float* %2, i64 %177
  %182 = bitcast float* %181 to <8 x float>*
  %wide.masked.load69.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %182, i32 4, <8 x i1> %174, <8 x float> undef), !tbaa !12, !alias.scope !33
  %183 = add i32 %176, -1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %2, i64 %184
  %186 = bitcast float* %185 to <8 x float>*
  %wide.masked.load70.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %186, i32 4, <8 x i1> %174, <8 x float> undef), !tbaa !12, !alias.scope !34
  %187 = fsub <8 x float> %wide.masked.load69.1, %wide.masked.load70.1
  %188 = fpext <8 x float> %187 to <8 x double>
  %189 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %188, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %180)
  %190 = fptrunc <8 x double> %189 to <8 x float>
  %191 = bitcast float* %178 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %190, <8 x float>* %191, i32 4, <8 x i1> %174), !tbaa !12, !alias.scope !27, !noalias !30, !llvm.access.group !24
  %192 = trunc <8 x i64> %broadcast.splat65 to <8 x i32>
  %193 = or <8 x i32> %192, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %194 = icmp sgt <8 x i32> %broadcast.splat67, %193
  %195 = icmp sgt <8 x i32> %193, zeroinitializer
  %196 = and <8 x i1> %194, %195
  %197 = extractelement <8 x i32> %193, i32 0
  %198 = add i32 %mul.i.1, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %0, i64 %199
  %201 = bitcast float* %200 to <8 x float>*
  %wide.masked.load68.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %201, i32 4, <8 x i1> %196, <8 x float> undef), !tbaa !12, !alias.scope !27, !noalias !30
  %202 = fpext <8 x float> %wide.masked.load68.2 to <8 x double>
  %203 = getelementptr inbounds float, float* %2, i64 %199
  %204 = bitcast float* %203 to <8 x float>*
  %wide.masked.load69.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %204, i32 4, <8 x i1> %196, <8 x float> undef), !tbaa !12, !alias.scope !33
  %205 = add i32 %198, -1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %2, i64 %206
  %208 = bitcast float* %207 to <8 x float>*
  %wide.masked.load70.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %208, i32 4, <8 x i1> %196, <8 x float> undef), !tbaa !12, !alias.scope !34
  %209 = fsub <8 x float> %wide.masked.load69.2, %wide.masked.load70.2
  %210 = fpext <8 x float> %209 to <8 x double>
  %211 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %210, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %202)
  %212 = fptrunc <8 x double> %211 to <8 x float>
  %213 = bitcast float* %200 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %212, <8 x float>* %213, i32 4, <8 x i1> %196), !tbaa !12, !alias.scope !27, !noalias !30, !llvm.access.group !24
  %214 = trunc <8 x i64> %broadcast.splat65 to <8 x i32>
  %215 = or <8 x i32> %214, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %216 = icmp sgt <8 x i32> %broadcast.splat67, %215
  %217 = icmp sgt <8 x i32> %215, zeroinitializer
  %218 = and <8 x i1> %216, %217
  %219 = extractelement <8 x i32> %215, i32 0
  %220 = add i32 %mul.i.1, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, float* %0, i64 %221
  %223 = bitcast float* %222 to <8 x float>*
  %wide.masked.load68.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %223, i32 4, <8 x i1> %218, <8 x float> undef), !tbaa !12, !alias.scope !27, !noalias !30
  %224 = fpext <8 x float> %wide.masked.load68.3 to <8 x double>
  %225 = getelementptr inbounds float, float* %2, i64 %221
  %226 = bitcast float* %225 to <8 x float>*
  %wide.masked.load69.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %226, i32 4, <8 x i1> %218, <8 x float> undef), !tbaa !12, !alias.scope !33
  %227 = add i32 %220, -1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %2, i64 %228
  %230 = bitcast float* %229 to <8 x float>*
  %wide.masked.load70.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %230, i32 4, <8 x i1> %218, <8 x float> undef), !tbaa !12, !alias.scope !34
  %231 = fsub <8 x float> %wide.masked.load69.3, %wide.masked.load70.3
  %232 = fpext <8 x float> %231 to <8 x double>
  %233 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %232, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %224)
  %234 = fptrunc <8 x double> %233 to <8 x float>
  %235 = bitcast float* %222 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %234, <8 x float>* %235, i32 4, <8 x i1> %218), !tbaa !12, !alias.scope !27, !noalias !30, !llvm.access.group !24
  br label %pregion_for_end.i.1

pregion_for_entry.entry.i.us.1:                   ; preds = %if.end.i.us.1.1, %pregion_for_entry.entry.i.us.1.preheader
  %_local_id_x.0.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.us.1.preheader ], [ %962, %if.end.i.us.1.1 ]
  %add1.i.i.us.1 = add nuw nsw i64 %_local_id_x.0.us.1, %mul.i.i
  %conv.i.us.1 = trunc i64 %add1.i.i.us.1 to i32
  %cmp4.i.us.1 = icmp slt i32 %conv.i.us.1, %4
  %cmp7.i.us.1 = icmp sgt i32 %conv.i.us.1, 0
  %or.cond.i.us.1 = and i1 %cmp4.i.us.1, %cmp7.i.us.1
  br i1 %or.cond.i.us.1, label %if.then.i.us.1, label %if.end.i.us.1

if.then.i.us.1:                                   ; preds = %pregion_for_entry.entry.i.us.1
  %add.i.us.1 = add i32 %mul.i.1, %conv.i.us.1
  %idxprom.i.us.1 = sext i32 %add.i.us.1 to i64
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.1
  %236 = load float, float* %arrayidx.i.us.1, align 4, !tbaa !12
  %conv9.i.us.1 = fpext float %236 to double
  %arrayidx13.i.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1
  %237 = load float, float* %arrayidx13.i.us.1, align 4, !tbaa !12
  %add15.i.us.1 = add i32 %add.i.us.1, -1
  %idxprom16.i.us.1 = sext i32 %add15.i.us.1 to i64
  %arrayidx17.i.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom16.i.us.1
  %238 = load float, float* %arrayidx17.i.us.1, align 4, !tbaa !12
  %sub18.i.us.1 = fsub float %237, %238
  %conv19.i.us.1 = fpext float %sub18.i.us.1 to double
  %239 = tail call double @llvm.fmuladd.f64(double %conv19.i.us.1, double -5.000000e-01, double %conv9.i.us.1) #5
  %conv21.i.us.1 = fptrunc double %239 to float
  store float %conv21.i.us.1, float* %arrayidx.i.us.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.us.1

if.end.i.us.1:                                    ; preds = %if.then.i.us.1, %pregion_for_entry.entry.i.us.1
  %240 = or i64 %_local_id_x.0.us.1, 1
  %add1.i.i.us.1.1 = add nuw nsw i64 %240, %mul.i.i
  %conv.i.us.1.1 = trunc i64 %add1.i.i.us.1.1 to i32
  %cmp4.i.us.1.1 = icmp slt i32 %conv.i.us.1.1, %4
  %cmp7.i.us.1.1 = icmp sgt i32 %conv.i.us.1.1, 0
  %or.cond.i.us.1.1 = and i1 %cmp4.i.us.1.1, %cmp7.i.us.1.1
  br i1 %or.cond.i.us.1.1, label %if.then.i.us.1.1, label %if.end.i.us.1.1

pregion_for_end.i.1.loopexit:                     ; preds = %if.end.i.us.1.1
  br label %pregion_for_end.i.1

pregion_for_end.i.1:                              ; preds = %pregion_for_end.i.1.loopexit, %vector.ph57, %pregion_for_end.i
  %241 = trunc i64 %mul3.i.i to i32
  %conv2.i.2 = or i32 %241, 2
  %cmp.i.2 = icmp slt i32 %conv2.i.2, %3
  %mul.i.2 = mul nsw i32 %conv2.i.2, %4
  br i1 %cmp.i.2, label %vector.scevcheck81, label %pregion_for_end.i.2

vector.scevcheck81:                               ; preds = %pregion_for_end.i.1
  %242 = mul i32 %conv2.i.2, %4
  %243 = trunc i64 %6 to i32
  %244 = shl i32 %243, 5
  %245 = add i32 %242, %244
  %246 = icmp sgt i32 %245, 2147483616
  %247 = add i32 %242, %244
  %248 = add i32 %247, -1
  %249 = add i32 %247, 30
  %250 = icmp slt i32 %249, %248
  %251 = or i1 %246, %250
  br i1 %251, label %pregion_for_entry.entry.i.us.2.preheader, label %vector.memcheck103

pregion_for_entry.entry.i.us.2.preheader:         ; preds = %vector.memcheck103, %vector.scevcheck81
  br label %pregion_for_entry.entry.i.us.2

vector.memcheck103:                               ; preds = %vector.scevcheck81
  %252 = mul i32 %conv2.i.2, %4
  %253 = trunc i64 %6 to i32
  %254 = shl i32 %253, 5
  %255 = add i32 %252, %254
  %256 = sext i32 %255 to i64
  %scevgep83 = getelementptr float, float* %0, i64 %256
  %257 = add nsw i64 %256, 32
  %scevgep85 = getelementptr float, float* %0, i64 %257
  %258 = add i32 %252, %254
  %259 = add i32 %258, -2
  %260 = sext i32 %259 to i64
  %261 = add nuw nsw i64 %260, 1
  %scevgep87 = getelementptr float, float* %2, i64 %261
  %262 = add nsw i64 %260, 33
  %scevgep89 = getelementptr float, float* %2, i64 %262
  %scevgep91 = getelementptr float, float* %2, i64 %256
  %scevgep93 = getelementptr float, float* %2, i64 %257
  %bound095 = icmp ult float* %scevgep83, %scevgep89
  %bound196 = icmp ult float* %scevgep87, %scevgep85
  %found.conflict97 = and i1 %bound095, %bound196
  %bound098 = icmp ult float* %scevgep83, %scevgep93
  %bound199 = icmp ult float* %scevgep91, %scevgep85
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx101 = or i1 %found.conflict97, %found.conflict100
  br i1 %conflict.rdx101, label %pregion_for_entry.entry.i.us.2.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck103
  %broadcast.splatinsert111 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat112 = shufflevector <8 x i64> %broadcast.splatinsert111, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat114 = shufflevector <8 x i32> %broadcast.splatinsert113, <8 x i32> undef, <8 x i32> zeroinitializer
  %263 = trunc <8 x i64> %broadcast.splat112 to <8 x i32>
  %264 = or <8 x i32> %263, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %265 = icmp sgt <8 x i32> %broadcast.splat114, %264
  %266 = icmp sgt <8 x i32> %264, zeroinitializer
  %267 = and <8 x i1> %265, %266
  %268 = extractelement <8 x i32> %264, i32 0
  %269 = add i32 %mul.i.2, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %0, i64 %270
  %272 = bitcast float* %271 to <8 x float>*
  %wide.masked.load115 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %272, i32 4, <8 x i1> %267, <8 x float> undef), !tbaa !12, !alias.scope !35, !noalias !38
  %273 = fpext <8 x float> %wide.masked.load115 to <8 x double>
  %274 = getelementptr inbounds float, float* %2, i64 %270
  %275 = bitcast float* %274 to <8 x float>*
  %wide.masked.load116 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %275, i32 4, <8 x i1> %267, <8 x float> undef), !tbaa !12, !alias.scope !41
  %276 = add i32 %269, -1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds float, float* %2, i64 %277
  %279 = bitcast float* %278 to <8 x float>*
  %wide.masked.load117 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %279, i32 4, <8 x i1> %267, <8 x float> undef), !tbaa !12, !alias.scope !42
  %280 = fsub <8 x float> %wide.masked.load116, %wide.masked.load117
  %281 = fpext <8 x float> %280 to <8 x double>
  %282 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %281, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %273)
  %283 = fptrunc <8 x double> %282 to <8 x float>
  %284 = bitcast float* %271 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %283, <8 x float>* %284, i32 4, <8 x i1> %267), !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !24
  %285 = trunc <8 x i64> %broadcast.splat112 to <8 x i32>
  %286 = or <8 x i32> %285, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %287 = icmp sgt <8 x i32> %broadcast.splat114, %286
  %288 = icmp sgt <8 x i32> %286, zeroinitializer
  %289 = and <8 x i1> %287, %288
  %290 = extractelement <8 x i32> %286, i32 0
  %291 = add i32 %mul.i.2, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds float, float* %0, i64 %292
  %294 = bitcast float* %293 to <8 x float>*
  %wide.masked.load115.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %294, i32 4, <8 x i1> %289, <8 x float> undef), !tbaa !12, !alias.scope !35, !noalias !38
  %295 = fpext <8 x float> %wide.masked.load115.1 to <8 x double>
  %296 = getelementptr inbounds float, float* %2, i64 %292
  %297 = bitcast float* %296 to <8 x float>*
  %wide.masked.load116.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %297, i32 4, <8 x i1> %289, <8 x float> undef), !tbaa !12, !alias.scope !41
  %298 = add i32 %291, -1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %2, i64 %299
  %301 = bitcast float* %300 to <8 x float>*
  %wide.masked.load117.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %301, i32 4, <8 x i1> %289, <8 x float> undef), !tbaa !12, !alias.scope !42
  %302 = fsub <8 x float> %wide.masked.load116.1, %wide.masked.load117.1
  %303 = fpext <8 x float> %302 to <8 x double>
  %304 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %303, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %295)
  %305 = fptrunc <8 x double> %304 to <8 x float>
  %306 = bitcast float* %293 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %305, <8 x float>* %306, i32 4, <8 x i1> %289), !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !24
  %307 = trunc <8 x i64> %broadcast.splat112 to <8 x i32>
  %308 = or <8 x i32> %307, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %309 = icmp sgt <8 x i32> %broadcast.splat114, %308
  %310 = icmp sgt <8 x i32> %308, zeroinitializer
  %311 = and <8 x i1> %309, %310
  %312 = extractelement <8 x i32> %308, i32 0
  %313 = add i32 %mul.i.2, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float, float* %0, i64 %314
  %316 = bitcast float* %315 to <8 x float>*
  %wide.masked.load115.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %316, i32 4, <8 x i1> %311, <8 x float> undef), !tbaa !12, !alias.scope !35, !noalias !38
  %317 = fpext <8 x float> %wide.masked.load115.2 to <8 x double>
  %318 = getelementptr inbounds float, float* %2, i64 %314
  %319 = bitcast float* %318 to <8 x float>*
  %wide.masked.load116.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %319, i32 4, <8 x i1> %311, <8 x float> undef), !tbaa !12, !alias.scope !41
  %320 = add i32 %313, -1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds float, float* %2, i64 %321
  %323 = bitcast float* %322 to <8 x float>*
  %wide.masked.load117.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %323, i32 4, <8 x i1> %311, <8 x float> undef), !tbaa !12, !alias.scope !42
  %324 = fsub <8 x float> %wide.masked.load116.2, %wide.masked.load117.2
  %325 = fpext <8 x float> %324 to <8 x double>
  %326 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %325, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %317)
  %327 = fptrunc <8 x double> %326 to <8 x float>
  %328 = bitcast float* %315 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %327, <8 x float>* %328, i32 4, <8 x i1> %311), !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !24
  %329 = trunc <8 x i64> %broadcast.splat112 to <8 x i32>
  %330 = or <8 x i32> %329, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %331 = icmp sgt <8 x i32> %broadcast.splat114, %330
  %332 = icmp sgt <8 x i32> %330, zeroinitializer
  %333 = and <8 x i1> %331, %332
  %334 = extractelement <8 x i32> %330, i32 0
  %335 = add i32 %mul.i.2, %334
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds float, float* %0, i64 %336
  %338 = bitcast float* %337 to <8 x float>*
  %wide.masked.load115.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %338, i32 4, <8 x i1> %333, <8 x float> undef), !tbaa !12, !alias.scope !35, !noalias !38
  %339 = fpext <8 x float> %wide.masked.load115.3 to <8 x double>
  %340 = getelementptr inbounds float, float* %2, i64 %336
  %341 = bitcast float* %340 to <8 x float>*
  %wide.masked.load116.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %341, i32 4, <8 x i1> %333, <8 x float> undef), !tbaa !12, !alias.scope !41
  %342 = add i32 %335, -1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds float, float* %2, i64 %343
  %345 = bitcast float* %344 to <8 x float>*
  %wide.masked.load117.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %345, i32 4, <8 x i1> %333, <8 x float> undef), !tbaa !12, !alias.scope !42
  %346 = fsub <8 x float> %wide.masked.load116.3, %wide.masked.load117.3
  %347 = fpext <8 x float> %346 to <8 x double>
  %348 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %347, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %339)
  %349 = fptrunc <8 x double> %348 to <8 x float>
  %350 = bitcast float* %337 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %349, <8 x float>* %350, i32 4, <8 x i1> %333), !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !24
  br label %pregion_for_end.i.2

pregion_for_entry.entry.i.us.2:                   ; preds = %if.end.i.us.2.1, %pregion_for_entry.entry.i.us.2.preheader
  %_local_id_x.0.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.us.2.preheader ], [ %957, %if.end.i.us.2.1 ]
  %add1.i.i.us.2 = add nuw nsw i64 %_local_id_x.0.us.2, %mul.i.i
  %conv.i.us.2 = trunc i64 %add1.i.i.us.2 to i32
  %cmp4.i.us.2 = icmp slt i32 %conv.i.us.2, %4
  %cmp7.i.us.2 = icmp sgt i32 %conv.i.us.2, 0
  %or.cond.i.us.2 = and i1 %cmp4.i.us.2, %cmp7.i.us.2
  br i1 %or.cond.i.us.2, label %if.then.i.us.2, label %if.end.i.us.2

if.then.i.us.2:                                   ; preds = %pregion_for_entry.entry.i.us.2
  %add.i.us.2 = add i32 %mul.i.2, %conv.i.us.2
  %idxprom.i.us.2 = sext i32 %add.i.us.2 to i64
  %arrayidx.i.us.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.2
  %351 = load float, float* %arrayidx.i.us.2, align 4, !tbaa !12
  %conv9.i.us.2 = fpext float %351 to double
  %arrayidx13.i.us.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.2
  %352 = load float, float* %arrayidx13.i.us.2, align 4, !tbaa !12
  %add15.i.us.2 = add i32 %add.i.us.2, -1
  %idxprom16.i.us.2 = sext i32 %add15.i.us.2 to i64
  %arrayidx17.i.us.2 = getelementptr inbounds float, float* %2, i64 %idxprom16.i.us.2
  %353 = load float, float* %arrayidx17.i.us.2, align 4, !tbaa !12
  %sub18.i.us.2 = fsub float %352, %353
  %conv19.i.us.2 = fpext float %sub18.i.us.2 to double
  %354 = tail call double @llvm.fmuladd.f64(double %conv19.i.us.2, double -5.000000e-01, double %conv9.i.us.2) #5
  %conv21.i.us.2 = fptrunc double %354 to float
  store float %conv21.i.us.2, float* %arrayidx.i.us.2, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.us.2

if.end.i.us.2:                                    ; preds = %if.then.i.us.2, %pregion_for_entry.entry.i.us.2
  %355 = or i64 %_local_id_x.0.us.2, 1
  %add1.i.i.us.2.1 = add nuw nsw i64 %355, %mul.i.i
  %conv.i.us.2.1 = trunc i64 %add1.i.i.us.2.1 to i32
  %cmp4.i.us.2.1 = icmp slt i32 %conv.i.us.2.1, %4
  %cmp7.i.us.2.1 = icmp sgt i32 %conv.i.us.2.1, 0
  %or.cond.i.us.2.1 = and i1 %cmp4.i.us.2.1, %cmp7.i.us.2.1
  br i1 %or.cond.i.us.2.1, label %if.then.i.us.2.1, label %if.end.i.us.2.1

pregion_for_end.i.2.loopexit:                     ; preds = %if.end.i.us.2.1
  br label %pregion_for_end.i.2

pregion_for_end.i.2:                              ; preds = %pregion_for_end.i.2.loopexit, %vector.ph104, %pregion_for_end.i.1
  %356 = trunc i64 %mul3.i.i to i32
  %conv2.i.3 = or i32 %356, 3
  %cmp.i.3 = icmp slt i32 %conv2.i.3, %3
  %mul.i.3 = mul nsw i32 %conv2.i.3, %4
  br i1 %cmp.i.3, label %vector.scevcheck128, label %pregion_for_end.i.3

vector.scevcheck128:                              ; preds = %pregion_for_end.i.2
  %357 = mul i32 %conv2.i.3, %4
  %358 = trunc i64 %6 to i32
  %359 = shl i32 %358, 5
  %360 = add i32 %357, %359
  %361 = icmp sgt i32 %360, 2147483616
  %362 = add i32 %357, %359
  %363 = add i32 %362, -1
  %364 = add i32 %362, 30
  %365 = icmp slt i32 %364, %363
  %366 = or i1 %361, %365
  br i1 %366, label %pregion_for_entry.entry.i.us.3.preheader, label %vector.memcheck150

pregion_for_entry.entry.i.us.3.preheader:         ; preds = %vector.memcheck150, %vector.scevcheck128
  br label %pregion_for_entry.entry.i.us.3

vector.memcheck150:                               ; preds = %vector.scevcheck128
  %367 = mul i32 %conv2.i.3, %4
  %368 = trunc i64 %6 to i32
  %369 = shl i32 %368, 5
  %370 = add i32 %367, %369
  %371 = sext i32 %370 to i64
  %scevgep130 = getelementptr float, float* %0, i64 %371
  %372 = add nsw i64 %371, 32
  %scevgep132 = getelementptr float, float* %0, i64 %372
  %373 = add i32 %367, %369
  %374 = add i32 %373, -1
  %375 = sext i32 %374 to i64
  %scevgep134 = getelementptr float, float* %2, i64 %375
  %376 = add nsw i64 %375, 32
  %scevgep136 = getelementptr float, float* %2, i64 %376
  %scevgep138 = getelementptr float, float* %2, i64 %371
  %scevgep140 = getelementptr float, float* %2, i64 %372
  %bound0142 = icmp ult float* %scevgep130, %scevgep136
  %bound1143 = icmp ult float* %scevgep134, %scevgep132
  %found.conflict144 = and i1 %bound0142, %bound1143
  %bound0145 = icmp ult float* %scevgep130, %scevgep140
  %bound1146 = icmp ult float* %scevgep138, %scevgep132
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx148 = or i1 %found.conflict144, %found.conflict147
  br i1 %conflict.rdx148, label %pregion_for_entry.entry.i.us.3.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck150
  %broadcast.splatinsert158 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat159 = shufflevector <8 x i64> %broadcast.splatinsert158, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert160 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat161 = shufflevector <8 x i32> %broadcast.splatinsert160, <8 x i32> undef, <8 x i32> zeroinitializer
  %377 = trunc <8 x i64> %broadcast.splat159 to <8 x i32>
  %378 = or <8 x i32> %377, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %379 = icmp sgt <8 x i32> %broadcast.splat161, %378
  %380 = icmp sgt <8 x i32> %378, zeroinitializer
  %381 = and <8 x i1> %379, %380
  %382 = extractelement <8 x i32> %378, i32 0
  %383 = add i32 %mul.i.3, %382
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds float, float* %0, i64 %384
  %386 = bitcast float* %385 to <8 x float>*
  %wide.masked.load162 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %386, i32 4, <8 x i1> %381, <8 x float> undef), !tbaa !12, !alias.scope !43, !noalias !46
  %387 = fpext <8 x float> %wide.masked.load162 to <8 x double>
  %388 = getelementptr inbounds float, float* %2, i64 %384
  %389 = bitcast float* %388 to <8 x float>*
  %wide.masked.load163 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %389, i32 4, <8 x i1> %381, <8 x float> undef), !tbaa !12, !alias.scope !49
  %390 = add i32 %383, -1
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds float, float* %2, i64 %391
  %393 = bitcast float* %392 to <8 x float>*
  %wide.masked.load164 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %393, i32 4, <8 x i1> %381, <8 x float> undef), !tbaa !12, !alias.scope !50
  %394 = fsub <8 x float> %wide.masked.load163, %wide.masked.load164
  %395 = fpext <8 x float> %394 to <8 x double>
  %396 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %395, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %387)
  %397 = fptrunc <8 x double> %396 to <8 x float>
  %398 = bitcast float* %385 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %397, <8 x float>* %398, i32 4, <8 x i1> %381), !tbaa !12, !alias.scope !43, !noalias !46, !llvm.access.group !24
  %399 = trunc <8 x i64> %broadcast.splat159 to <8 x i32>
  %400 = or <8 x i32> %399, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %401 = icmp sgt <8 x i32> %broadcast.splat161, %400
  %402 = icmp sgt <8 x i32> %400, zeroinitializer
  %403 = and <8 x i1> %401, %402
  %404 = extractelement <8 x i32> %400, i32 0
  %405 = add i32 %mul.i.3, %404
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds float, float* %0, i64 %406
  %408 = bitcast float* %407 to <8 x float>*
  %wide.masked.load162.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %408, i32 4, <8 x i1> %403, <8 x float> undef), !tbaa !12, !alias.scope !43, !noalias !46
  %409 = fpext <8 x float> %wide.masked.load162.1 to <8 x double>
  %410 = getelementptr inbounds float, float* %2, i64 %406
  %411 = bitcast float* %410 to <8 x float>*
  %wide.masked.load163.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %411, i32 4, <8 x i1> %403, <8 x float> undef), !tbaa !12, !alias.scope !49
  %412 = add i32 %405, -1
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds float, float* %2, i64 %413
  %415 = bitcast float* %414 to <8 x float>*
  %wide.masked.load164.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %415, i32 4, <8 x i1> %403, <8 x float> undef), !tbaa !12, !alias.scope !50
  %416 = fsub <8 x float> %wide.masked.load163.1, %wide.masked.load164.1
  %417 = fpext <8 x float> %416 to <8 x double>
  %418 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %417, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %409)
  %419 = fptrunc <8 x double> %418 to <8 x float>
  %420 = bitcast float* %407 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %419, <8 x float>* %420, i32 4, <8 x i1> %403), !tbaa !12, !alias.scope !43, !noalias !46, !llvm.access.group !24
  %421 = trunc <8 x i64> %broadcast.splat159 to <8 x i32>
  %422 = or <8 x i32> %421, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %423 = icmp sgt <8 x i32> %broadcast.splat161, %422
  %424 = icmp sgt <8 x i32> %422, zeroinitializer
  %425 = and <8 x i1> %423, %424
  %426 = extractelement <8 x i32> %422, i32 0
  %427 = add i32 %mul.i.3, %426
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds float, float* %0, i64 %428
  %430 = bitcast float* %429 to <8 x float>*
  %wide.masked.load162.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %430, i32 4, <8 x i1> %425, <8 x float> undef), !tbaa !12, !alias.scope !43, !noalias !46
  %431 = fpext <8 x float> %wide.masked.load162.2 to <8 x double>
  %432 = getelementptr inbounds float, float* %2, i64 %428
  %433 = bitcast float* %432 to <8 x float>*
  %wide.masked.load163.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %433, i32 4, <8 x i1> %425, <8 x float> undef), !tbaa !12, !alias.scope !49
  %434 = add i32 %427, -1
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds float, float* %2, i64 %435
  %437 = bitcast float* %436 to <8 x float>*
  %wide.masked.load164.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %437, i32 4, <8 x i1> %425, <8 x float> undef), !tbaa !12, !alias.scope !50
  %438 = fsub <8 x float> %wide.masked.load163.2, %wide.masked.load164.2
  %439 = fpext <8 x float> %438 to <8 x double>
  %440 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %439, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %431)
  %441 = fptrunc <8 x double> %440 to <8 x float>
  %442 = bitcast float* %429 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %441, <8 x float>* %442, i32 4, <8 x i1> %425), !tbaa !12, !alias.scope !43, !noalias !46, !llvm.access.group !24
  %443 = trunc <8 x i64> %broadcast.splat159 to <8 x i32>
  %444 = or <8 x i32> %443, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %445 = icmp sgt <8 x i32> %broadcast.splat161, %444
  %446 = icmp sgt <8 x i32> %444, zeroinitializer
  %447 = and <8 x i1> %445, %446
  %448 = extractelement <8 x i32> %444, i32 0
  %449 = add i32 %mul.i.3, %448
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds float, float* %0, i64 %450
  %452 = bitcast float* %451 to <8 x float>*
  %wide.masked.load162.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %452, i32 4, <8 x i1> %447, <8 x float> undef), !tbaa !12, !alias.scope !43, !noalias !46
  %453 = fpext <8 x float> %wide.masked.load162.3 to <8 x double>
  %454 = getelementptr inbounds float, float* %2, i64 %450
  %455 = bitcast float* %454 to <8 x float>*
  %wide.masked.load163.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %455, i32 4, <8 x i1> %447, <8 x float> undef), !tbaa !12, !alias.scope !49
  %456 = add i32 %449, -1
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds float, float* %2, i64 %457
  %459 = bitcast float* %458 to <8 x float>*
  %wide.masked.load164.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %459, i32 4, <8 x i1> %447, <8 x float> undef), !tbaa !12, !alias.scope !50
  %460 = fsub <8 x float> %wide.masked.load163.3, %wide.masked.load164.3
  %461 = fpext <8 x float> %460 to <8 x double>
  %462 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %461, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %453)
  %463 = fptrunc <8 x double> %462 to <8 x float>
  %464 = bitcast float* %451 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %463, <8 x float>* %464, i32 4, <8 x i1> %447), !tbaa !12, !alias.scope !43, !noalias !46, !llvm.access.group !24
  br label %pregion_for_end.i.3

pregion_for_entry.entry.i.us.3:                   ; preds = %if.end.i.us.3.1, %pregion_for_entry.entry.i.us.3.preheader
  %_local_id_x.0.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.us.3.preheader ], [ %952, %if.end.i.us.3.1 ]
  %add1.i.i.us.3 = add nuw nsw i64 %_local_id_x.0.us.3, %mul.i.i
  %conv.i.us.3 = trunc i64 %add1.i.i.us.3 to i32
  %cmp4.i.us.3 = icmp slt i32 %conv.i.us.3, %4
  %cmp7.i.us.3 = icmp sgt i32 %conv.i.us.3, 0
  %or.cond.i.us.3 = and i1 %cmp4.i.us.3, %cmp7.i.us.3
  br i1 %or.cond.i.us.3, label %if.then.i.us.3, label %if.end.i.us.3

if.then.i.us.3:                                   ; preds = %pregion_for_entry.entry.i.us.3
  %add.i.us.3 = add i32 %mul.i.3, %conv.i.us.3
  %idxprom.i.us.3 = sext i32 %add.i.us.3 to i64
  %arrayidx.i.us.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.3
  %465 = load float, float* %arrayidx.i.us.3, align 4, !tbaa !12
  %conv9.i.us.3 = fpext float %465 to double
  %arrayidx13.i.us.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.3
  %466 = load float, float* %arrayidx13.i.us.3, align 4, !tbaa !12
  %add15.i.us.3 = add i32 %add.i.us.3, -1
  %idxprom16.i.us.3 = sext i32 %add15.i.us.3 to i64
  %arrayidx17.i.us.3 = getelementptr inbounds float, float* %2, i64 %idxprom16.i.us.3
  %467 = load float, float* %arrayidx17.i.us.3, align 4, !tbaa !12
  %sub18.i.us.3 = fsub float %466, %467
  %conv19.i.us.3 = fpext float %sub18.i.us.3 to double
  %468 = tail call double @llvm.fmuladd.f64(double %conv19.i.us.3, double -5.000000e-01, double %conv9.i.us.3) #5
  %conv21.i.us.3 = fptrunc double %468 to float
  store float %conv21.i.us.3, float* %arrayidx.i.us.3, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.us.3

if.end.i.us.3:                                    ; preds = %if.then.i.us.3, %pregion_for_entry.entry.i.us.3
  %469 = or i64 %_local_id_x.0.us.3, 1
  %add1.i.i.us.3.1 = add nuw nsw i64 %469, %mul.i.i
  %conv.i.us.3.1 = trunc i64 %add1.i.i.us.3.1 to i32
  %cmp4.i.us.3.1 = icmp slt i32 %conv.i.us.3.1, %4
  %cmp7.i.us.3.1 = icmp sgt i32 %conv.i.us.3.1, 0
  %or.cond.i.us.3.1 = and i1 %cmp4.i.us.3.1, %cmp7.i.us.3.1
  br i1 %or.cond.i.us.3.1, label %if.then.i.us.3.1, label %if.end.i.us.3.1

pregion_for_end.i.3.loopexit:                     ; preds = %if.end.i.us.3.1
  br label %pregion_for_end.i.3

pregion_for_end.i.3:                              ; preds = %pregion_for_end.i.3.loopexit, %vector.ph151, %pregion_for_end.i.2
  %470 = trunc i64 %mul3.i.i to i32
  %conv2.i.4 = or i32 %470, 4
  %cmp.i.4 = icmp slt i32 %conv2.i.4, %3
  %mul.i.4 = mul nsw i32 %conv2.i.4, %4
  br i1 %cmp.i.4, label %vector.scevcheck175, label %pregion_for_end.i.4

vector.scevcheck175:                              ; preds = %pregion_for_end.i.3
  %471 = mul i32 %conv2.i.4, %4
  %472 = trunc i64 %6 to i32
  %473 = shl i32 %472, 5
  %474 = add i32 %471, %473
  %475 = icmp sgt i32 %474, 2147483616
  %476 = add i32 %471, %473
  %477 = add i32 %476, -1
  %478 = add i32 %476, 30
  %479 = icmp slt i32 %478, %477
  %480 = or i1 %475, %479
  br i1 %480, label %pregion_for_entry.entry.i.us.4.preheader, label %vector.memcheck197

pregion_for_entry.entry.i.us.4.preheader:         ; preds = %vector.memcheck197, %vector.scevcheck175
  br label %pregion_for_entry.entry.i.us.4

vector.memcheck197:                               ; preds = %vector.scevcheck175
  %481 = mul i32 %conv2.i.4, %4
  %482 = trunc i64 %6 to i32
  %483 = shl i32 %482, 5
  %484 = add i32 %481, %483
  %485 = sext i32 %484 to i64
  %scevgep177 = getelementptr float, float* %0, i64 %485
  %486 = add nsw i64 %485, 32
  %scevgep179 = getelementptr float, float* %0, i64 %486
  %487 = add i32 %481, %483
  %488 = add i32 %487, -4
  %489 = sext i32 %488 to i64
  %490 = add nuw nsw i64 %489, 3
  %scevgep181 = getelementptr float, float* %2, i64 %490
  %491 = add nsw i64 %489, 35
  %scevgep183 = getelementptr float, float* %2, i64 %491
  %scevgep185 = getelementptr float, float* %2, i64 %485
  %scevgep187 = getelementptr float, float* %2, i64 %486
  %bound0189 = icmp ult float* %scevgep177, %scevgep183
  %bound1190 = icmp ult float* %scevgep181, %scevgep179
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0192 = icmp ult float* %scevgep177, %scevgep187
  %bound1193 = icmp ult float* %scevgep185, %scevgep179
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %found.conflict191, %found.conflict194
  br i1 %conflict.rdx195, label %pregion_for_entry.entry.i.us.4.preheader, label %vector.ph198

vector.ph198:                                     ; preds = %vector.memcheck197
  %broadcast.splatinsert205 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat206 = shufflevector <8 x i64> %broadcast.splatinsert205, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert207 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat208 = shufflevector <8 x i32> %broadcast.splatinsert207, <8 x i32> undef, <8 x i32> zeroinitializer
  %492 = trunc <8 x i64> %broadcast.splat206 to <8 x i32>
  %493 = or <8 x i32> %492, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %494 = icmp sgt <8 x i32> %broadcast.splat208, %493
  %495 = icmp sgt <8 x i32> %493, zeroinitializer
  %496 = and <8 x i1> %494, %495
  %497 = extractelement <8 x i32> %493, i32 0
  %498 = add i32 %mul.i.4, %497
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds float, float* %0, i64 %499
  %501 = bitcast float* %500 to <8 x float>*
  %wide.masked.load209 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %501, i32 4, <8 x i1> %496, <8 x float> undef), !tbaa !12, !alias.scope !51, !noalias !54
  %502 = fpext <8 x float> %wide.masked.load209 to <8 x double>
  %503 = getelementptr inbounds float, float* %2, i64 %499
  %504 = bitcast float* %503 to <8 x float>*
  %wide.masked.load210 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %504, i32 4, <8 x i1> %496, <8 x float> undef), !tbaa !12, !alias.scope !57
  %505 = add i32 %498, -1
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds float, float* %2, i64 %506
  %508 = bitcast float* %507 to <8 x float>*
  %wide.masked.load211 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %508, i32 4, <8 x i1> %496, <8 x float> undef), !tbaa !12, !alias.scope !58
  %509 = fsub <8 x float> %wide.masked.load210, %wide.masked.load211
  %510 = fpext <8 x float> %509 to <8 x double>
  %511 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %510, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %502)
  %512 = fptrunc <8 x double> %511 to <8 x float>
  %513 = bitcast float* %500 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %512, <8 x float>* %513, i32 4, <8 x i1> %496), !tbaa !12, !alias.scope !51, !noalias !54, !llvm.access.group !24
  %514 = trunc <8 x i64> %broadcast.splat206 to <8 x i32>
  %515 = or <8 x i32> %514, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %516 = icmp sgt <8 x i32> %broadcast.splat208, %515
  %517 = icmp sgt <8 x i32> %515, zeroinitializer
  %518 = and <8 x i1> %516, %517
  %519 = extractelement <8 x i32> %515, i32 0
  %520 = add i32 %mul.i.4, %519
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds float, float* %0, i64 %521
  %523 = bitcast float* %522 to <8 x float>*
  %wide.masked.load209.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %523, i32 4, <8 x i1> %518, <8 x float> undef), !tbaa !12, !alias.scope !51, !noalias !54
  %524 = fpext <8 x float> %wide.masked.load209.1 to <8 x double>
  %525 = getelementptr inbounds float, float* %2, i64 %521
  %526 = bitcast float* %525 to <8 x float>*
  %wide.masked.load210.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %526, i32 4, <8 x i1> %518, <8 x float> undef), !tbaa !12, !alias.scope !57
  %527 = add i32 %520, -1
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds float, float* %2, i64 %528
  %530 = bitcast float* %529 to <8 x float>*
  %wide.masked.load211.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %530, i32 4, <8 x i1> %518, <8 x float> undef), !tbaa !12, !alias.scope !58
  %531 = fsub <8 x float> %wide.masked.load210.1, %wide.masked.load211.1
  %532 = fpext <8 x float> %531 to <8 x double>
  %533 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %532, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %524)
  %534 = fptrunc <8 x double> %533 to <8 x float>
  %535 = bitcast float* %522 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %534, <8 x float>* %535, i32 4, <8 x i1> %518), !tbaa !12, !alias.scope !51, !noalias !54, !llvm.access.group !24
  %536 = trunc <8 x i64> %broadcast.splat206 to <8 x i32>
  %537 = or <8 x i32> %536, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %538 = icmp sgt <8 x i32> %broadcast.splat208, %537
  %539 = icmp sgt <8 x i32> %537, zeroinitializer
  %540 = and <8 x i1> %538, %539
  %541 = extractelement <8 x i32> %537, i32 0
  %542 = add i32 %mul.i.4, %541
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds float, float* %0, i64 %543
  %545 = bitcast float* %544 to <8 x float>*
  %wide.masked.load209.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %545, i32 4, <8 x i1> %540, <8 x float> undef), !tbaa !12, !alias.scope !51, !noalias !54
  %546 = fpext <8 x float> %wide.masked.load209.2 to <8 x double>
  %547 = getelementptr inbounds float, float* %2, i64 %543
  %548 = bitcast float* %547 to <8 x float>*
  %wide.masked.load210.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %548, i32 4, <8 x i1> %540, <8 x float> undef), !tbaa !12, !alias.scope !57
  %549 = add i32 %542, -1
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds float, float* %2, i64 %550
  %552 = bitcast float* %551 to <8 x float>*
  %wide.masked.load211.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %552, i32 4, <8 x i1> %540, <8 x float> undef), !tbaa !12, !alias.scope !58
  %553 = fsub <8 x float> %wide.masked.load210.2, %wide.masked.load211.2
  %554 = fpext <8 x float> %553 to <8 x double>
  %555 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %554, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %546)
  %556 = fptrunc <8 x double> %555 to <8 x float>
  %557 = bitcast float* %544 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %556, <8 x float>* %557, i32 4, <8 x i1> %540), !tbaa !12, !alias.scope !51, !noalias !54, !llvm.access.group !24
  %558 = trunc <8 x i64> %broadcast.splat206 to <8 x i32>
  %559 = or <8 x i32> %558, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %560 = icmp sgt <8 x i32> %broadcast.splat208, %559
  %561 = icmp sgt <8 x i32> %559, zeroinitializer
  %562 = and <8 x i1> %560, %561
  %563 = extractelement <8 x i32> %559, i32 0
  %564 = add i32 %mul.i.4, %563
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds float, float* %0, i64 %565
  %567 = bitcast float* %566 to <8 x float>*
  %wide.masked.load209.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %567, i32 4, <8 x i1> %562, <8 x float> undef), !tbaa !12, !alias.scope !51, !noalias !54
  %568 = fpext <8 x float> %wide.masked.load209.3 to <8 x double>
  %569 = getelementptr inbounds float, float* %2, i64 %565
  %570 = bitcast float* %569 to <8 x float>*
  %wide.masked.load210.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %570, i32 4, <8 x i1> %562, <8 x float> undef), !tbaa !12, !alias.scope !57
  %571 = add i32 %564, -1
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds float, float* %2, i64 %572
  %574 = bitcast float* %573 to <8 x float>*
  %wide.masked.load211.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %574, i32 4, <8 x i1> %562, <8 x float> undef), !tbaa !12, !alias.scope !58
  %575 = fsub <8 x float> %wide.masked.load210.3, %wide.masked.load211.3
  %576 = fpext <8 x float> %575 to <8 x double>
  %577 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %576, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %568)
  %578 = fptrunc <8 x double> %577 to <8 x float>
  %579 = bitcast float* %566 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %578, <8 x float>* %579, i32 4, <8 x i1> %562), !tbaa !12, !alias.scope !51, !noalias !54, !llvm.access.group !24
  br label %pregion_for_end.i.4

pregion_for_entry.entry.i.us.4:                   ; preds = %if.end.i.us.4.1, %pregion_for_entry.entry.i.us.4.preheader
  %_local_id_x.0.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.us.4.preheader ], [ %947, %if.end.i.us.4.1 ]
  %add1.i.i.us.4 = add nuw nsw i64 %_local_id_x.0.us.4, %mul.i.i
  %conv.i.us.4 = trunc i64 %add1.i.i.us.4 to i32
  %cmp4.i.us.4 = icmp slt i32 %conv.i.us.4, %4
  %cmp7.i.us.4 = icmp sgt i32 %conv.i.us.4, 0
  %or.cond.i.us.4 = and i1 %cmp4.i.us.4, %cmp7.i.us.4
  br i1 %or.cond.i.us.4, label %if.then.i.us.4, label %if.end.i.us.4

if.then.i.us.4:                                   ; preds = %pregion_for_entry.entry.i.us.4
  %add.i.us.4 = add i32 %mul.i.4, %conv.i.us.4
  %idxprom.i.us.4 = sext i32 %add.i.us.4 to i64
  %arrayidx.i.us.4 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.4
  %580 = load float, float* %arrayidx.i.us.4, align 4, !tbaa !12
  %conv9.i.us.4 = fpext float %580 to double
  %arrayidx13.i.us.4 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.4
  %581 = load float, float* %arrayidx13.i.us.4, align 4, !tbaa !12
  %add15.i.us.4 = add i32 %add.i.us.4, -1
  %idxprom16.i.us.4 = sext i32 %add15.i.us.4 to i64
  %arrayidx17.i.us.4 = getelementptr inbounds float, float* %2, i64 %idxprom16.i.us.4
  %582 = load float, float* %arrayidx17.i.us.4, align 4, !tbaa !12
  %sub18.i.us.4 = fsub float %581, %582
  %conv19.i.us.4 = fpext float %sub18.i.us.4 to double
  %583 = tail call double @llvm.fmuladd.f64(double %conv19.i.us.4, double -5.000000e-01, double %conv9.i.us.4) #5
  %conv21.i.us.4 = fptrunc double %583 to float
  store float %conv21.i.us.4, float* %arrayidx.i.us.4, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.us.4

if.end.i.us.4:                                    ; preds = %if.then.i.us.4, %pregion_for_entry.entry.i.us.4
  %584 = or i64 %_local_id_x.0.us.4, 1
  %add1.i.i.us.4.1 = add nuw nsw i64 %584, %mul.i.i
  %conv.i.us.4.1 = trunc i64 %add1.i.i.us.4.1 to i32
  %cmp4.i.us.4.1 = icmp slt i32 %conv.i.us.4.1, %4
  %cmp7.i.us.4.1 = icmp sgt i32 %conv.i.us.4.1, 0
  %or.cond.i.us.4.1 = and i1 %cmp4.i.us.4.1, %cmp7.i.us.4.1
  br i1 %or.cond.i.us.4.1, label %if.then.i.us.4.1, label %if.end.i.us.4.1

pregion_for_end.i.4.loopexit:                     ; preds = %if.end.i.us.4.1
  br label %pregion_for_end.i.4

pregion_for_end.i.4:                              ; preds = %pregion_for_end.i.4.loopexit, %vector.ph198, %pregion_for_end.i.3
  %585 = trunc i64 %mul3.i.i to i32
  %conv2.i.5 = or i32 %585, 5
  %cmp.i.5 = icmp slt i32 %conv2.i.5, %3
  %mul.i.5 = mul nsw i32 %conv2.i.5, %4
  br i1 %cmp.i.5, label %vector.scevcheck222, label %pregion_for_end.i.5

vector.scevcheck222:                              ; preds = %pregion_for_end.i.4
  %586 = mul i32 %conv2.i.5, %4
  %587 = trunc i64 %6 to i32
  %588 = shl i32 %587, 5
  %589 = add i32 %586, %588
  %590 = icmp sgt i32 %589, 2147483616
  %591 = add i32 %586, %588
  %592 = add i32 %591, -1
  %593 = add i32 %591, 30
  %594 = icmp slt i32 %593, %592
  %595 = or i1 %590, %594
  br i1 %595, label %pregion_for_entry.entry.i.us.5.preheader, label %vector.memcheck244

pregion_for_entry.entry.i.us.5.preheader:         ; preds = %vector.memcheck244, %vector.scevcheck222
  br label %pregion_for_entry.entry.i.us.5

vector.memcheck244:                               ; preds = %vector.scevcheck222
  %596 = mul i32 %conv2.i.5, %4
  %597 = trunc i64 %6 to i32
  %598 = shl i32 %597, 5
  %599 = add i32 %596, %598
  %600 = sext i32 %599 to i64
  %scevgep224 = getelementptr float, float* %0, i64 %600
  %601 = add nsw i64 %600, 32
  %scevgep226 = getelementptr float, float* %0, i64 %601
  %602 = add i32 %596, %598
  %603 = add i32 %602, -1
  %604 = sext i32 %603 to i64
  %scevgep228 = getelementptr float, float* %2, i64 %604
  %605 = add nsw i64 %604, 32
  %scevgep230 = getelementptr float, float* %2, i64 %605
  %scevgep232 = getelementptr float, float* %2, i64 %600
  %scevgep234 = getelementptr float, float* %2, i64 %601
  %bound0236 = icmp ult float* %scevgep224, %scevgep230
  %bound1237 = icmp ult float* %scevgep228, %scevgep226
  %found.conflict238 = and i1 %bound0236, %bound1237
  %bound0239 = icmp ult float* %scevgep224, %scevgep234
  %bound1240 = icmp ult float* %scevgep232, %scevgep226
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx242 = or i1 %found.conflict238, %found.conflict241
  br i1 %conflict.rdx242, label %pregion_for_entry.entry.i.us.5.preheader, label %vector.ph245

vector.ph245:                                     ; preds = %vector.memcheck244
  %broadcast.splatinsert252 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat253 = shufflevector <8 x i64> %broadcast.splatinsert252, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert254 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat255 = shufflevector <8 x i32> %broadcast.splatinsert254, <8 x i32> undef, <8 x i32> zeroinitializer
  %606 = trunc <8 x i64> %broadcast.splat253 to <8 x i32>
  %607 = or <8 x i32> %606, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %608 = icmp sgt <8 x i32> %broadcast.splat255, %607
  %609 = icmp sgt <8 x i32> %607, zeroinitializer
  %610 = and <8 x i1> %608, %609
  %611 = extractelement <8 x i32> %607, i32 0
  %612 = add i32 %mul.i.5, %611
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds float, float* %0, i64 %613
  %615 = bitcast float* %614 to <8 x float>*
  %wide.masked.load256 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %615, i32 4, <8 x i1> %610, <8 x float> undef), !tbaa !12, !alias.scope !59, !noalias !62
  %616 = fpext <8 x float> %wide.masked.load256 to <8 x double>
  %617 = getelementptr inbounds float, float* %2, i64 %613
  %618 = bitcast float* %617 to <8 x float>*
  %wide.masked.load257 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %618, i32 4, <8 x i1> %610, <8 x float> undef), !tbaa !12, !alias.scope !65
  %619 = add i32 %612, -1
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds float, float* %2, i64 %620
  %622 = bitcast float* %621 to <8 x float>*
  %wide.masked.load258 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %622, i32 4, <8 x i1> %610, <8 x float> undef), !tbaa !12, !alias.scope !66
  %623 = fsub <8 x float> %wide.masked.load257, %wide.masked.load258
  %624 = fpext <8 x float> %623 to <8 x double>
  %625 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %624, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %616)
  %626 = fptrunc <8 x double> %625 to <8 x float>
  %627 = bitcast float* %614 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %626, <8 x float>* %627, i32 4, <8 x i1> %610), !tbaa !12, !alias.scope !59, !noalias !62, !llvm.access.group !24
  %628 = trunc <8 x i64> %broadcast.splat253 to <8 x i32>
  %629 = or <8 x i32> %628, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %630 = icmp sgt <8 x i32> %broadcast.splat255, %629
  %631 = icmp sgt <8 x i32> %629, zeroinitializer
  %632 = and <8 x i1> %630, %631
  %633 = extractelement <8 x i32> %629, i32 0
  %634 = add i32 %mul.i.5, %633
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds float, float* %0, i64 %635
  %637 = bitcast float* %636 to <8 x float>*
  %wide.masked.load256.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %637, i32 4, <8 x i1> %632, <8 x float> undef), !tbaa !12, !alias.scope !59, !noalias !62
  %638 = fpext <8 x float> %wide.masked.load256.1 to <8 x double>
  %639 = getelementptr inbounds float, float* %2, i64 %635
  %640 = bitcast float* %639 to <8 x float>*
  %wide.masked.load257.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %640, i32 4, <8 x i1> %632, <8 x float> undef), !tbaa !12, !alias.scope !65
  %641 = add i32 %634, -1
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds float, float* %2, i64 %642
  %644 = bitcast float* %643 to <8 x float>*
  %wide.masked.load258.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %644, i32 4, <8 x i1> %632, <8 x float> undef), !tbaa !12, !alias.scope !66
  %645 = fsub <8 x float> %wide.masked.load257.1, %wide.masked.load258.1
  %646 = fpext <8 x float> %645 to <8 x double>
  %647 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %646, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %638)
  %648 = fptrunc <8 x double> %647 to <8 x float>
  %649 = bitcast float* %636 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %648, <8 x float>* %649, i32 4, <8 x i1> %632), !tbaa !12, !alias.scope !59, !noalias !62, !llvm.access.group !24
  %650 = trunc <8 x i64> %broadcast.splat253 to <8 x i32>
  %651 = or <8 x i32> %650, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %652 = icmp sgt <8 x i32> %broadcast.splat255, %651
  %653 = icmp sgt <8 x i32> %651, zeroinitializer
  %654 = and <8 x i1> %652, %653
  %655 = extractelement <8 x i32> %651, i32 0
  %656 = add i32 %mul.i.5, %655
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds float, float* %0, i64 %657
  %659 = bitcast float* %658 to <8 x float>*
  %wide.masked.load256.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %659, i32 4, <8 x i1> %654, <8 x float> undef), !tbaa !12, !alias.scope !59, !noalias !62
  %660 = fpext <8 x float> %wide.masked.load256.2 to <8 x double>
  %661 = getelementptr inbounds float, float* %2, i64 %657
  %662 = bitcast float* %661 to <8 x float>*
  %wide.masked.load257.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %662, i32 4, <8 x i1> %654, <8 x float> undef), !tbaa !12, !alias.scope !65
  %663 = add i32 %656, -1
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds float, float* %2, i64 %664
  %666 = bitcast float* %665 to <8 x float>*
  %wide.masked.load258.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %666, i32 4, <8 x i1> %654, <8 x float> undef), !tbaa !12, !alias.scope !66
  %667 = fsub <8 x float> %wide.masked.load257.2, %wide.masked.load258.2
  %668 = fpext <8 x float> %667 to <8 x double>
  %669 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %668, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %660)
  %670 = fptrunc <8 x double> %669 to <8 x float>
  %671 = bitcast float* %658 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %670, <8 x float>* %671, i32 4, <8 x i1> %654), !tbaa !12, !alias.scope !59, !noalias !62, !llvm.access.group !24
  %672 = trunc <8 x i64> %broadcast.splat253 to <8 x i32>
  %673 = or <8 x i32> %672, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %674 = icmp sgt <8 x i32> %broadcast.splat255, %673
  %675 = icmp sgt <8 x i32> %673, zeroinitializer
  %676 = and <8 x i1> %674, %675
  %677 = extractelement <8 x i32> %673, i32 0
  %678 = add i32 %mul.i.5, %677
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds float, float* %0, i64 %679
  %681 = bitcast float* %680 to <8 x float>*
  %wide.masked.load256.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %681, i32 4, <8 x i1> %676, <8 x float> undef), !tbaa !12, !alias.scope !59, !noalias !62
  %682 = fpext <8 x float> %wide.masked.load256.3 to <8 x double>
  %683 = getelementptr inbounds float, float* %2, i64 %679
  %684 = bitcast float* %683 to <8 x float>*
  %wide.masked.load257.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %684, i32 4, <8 x i1> %676, <8 x float> undef), !tbaa !12, !alias.scope !65
  %685 = add i32 %678, -1
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds float, float* %2, i64 %686
  %688 = bitcast float* %687 to <8 x float>*
  %wide.masked.load258.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %688, i32 4, <8 x i1> %676, <8 x float> undef), !tbaa !12, !alias.scope !66
  %689 = fsub <8 x float> %wide.masked.load257.3, %wide.masked.load258.3
  %690 = fpext <8 x float> %689 to <8 x double>
  %691 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %690, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %682)
  %692 = fptrunc <8 x double> %691 to <8 x float>
  %693 = bitcast float* %680 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %692, <8 x float>* %693, i32 4, <8 x i1> %676), !tbaa !12, !alias.scope !59, !noalias !62, !llvm.access.group !24
  br label %pregion_for_end.i.5

pregion_for_entry.entry.i.us.5:                   ; preds = %if.end.i.us.5.1, %pregion_for_entry.entry.i.us.5.preheader
  %_local_id_x.0.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.us.5.preheader ], [ %942, %if.end.i.us.5.1 ]
  %add1.i.i.us.5 = add nuw nsw i64 %_local_id_x.0.us.5, %mul.i.i
  %conv.i.us.5 = trunc i64 %add1.i.i.us.5 to i32
  %cmp4.i.us.5 = icmp slt i32 %conv.i.us.5, %4
  %cmp7.i.us.5 = icmp sgt i32 %conv.i.us.5, 0
  %or.cond.i.us.5 = and i1 %cmp4.i.us.5, %cmp7.i.us.5
  br i1 %or.cond.i.us.5, label %if.then.i.us.5, label %if.end.i.us.5

if.then.i.us.5:                                   ; preds = %pregion_for_entry.entry.i.us.5
  %add.i.us.5 = add i32 %mul.i.5, %conv.i.us.5
  %idxprom.i.us.5 = sext i32 %add.i.us.5 to i64
  %arrayidx.i.us.5 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.5
  %694 = load float, float* %arrayidx.i.us.5, align 4, !tbaa !12
  %conv9.i.us.5 = fpext float %694 to double
  %arrayidx13.i.us.5 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.5
  %695 = load float, float* %arrayidx13.i.us.5, align 4, !tbaa !12
  %add15.i.us.5 = add i32 %add.i.us.5, -1
  %idxprom16.i.us.5 = sext i32 %add15.i.us.5 to i64
  %arrayidx17.i.us.5 = getelementptr inbounds float, float* %2, i64 %idxprom16.i.us.5
  %696 = load float, float* %arrayidx17.i.us.5, align 4, !tbaa !12
  %sub18.i.us.5 = fsub float %695, %696
  %conv19.i.us.5 = fpext float %sub18.i.us.5 to double
  %697 = tail call double @llvm.fmuladd.f64(double %conv19.i.us.5, double -5.000000e-01, double %conv9.i.us.5) #5
  %conv21.i.us.5 = fptrunc double %697 to float
  store float %conv21.i.us.5, float* %arrayidx.i.us.5, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.us.5

if.end.i.us.5:                                    ; preds = %if.then.i.us.5, %pregion_for_entry.entry.i.us.5
  %698 = or i64 %_local_id_x.0.us.5, 1
  %add1.i.i.us.5.1 = add nuw nsw i64 %698, %mul.i.i
  %conv.i.us.5.1 = trunc i64 %add1.i.i.us.5.1 to i32
  %cmp4.i.us.5.1 = icmp slt i32 %conv.i.us.5.1, %4
  %cmp7.i.us.5.1 = icmp sgt i32 %conv.i.us.5.1, 0
  %or.cond.i.us.5.1 = and i1 %cmp4.i.us.5.1, %cmp7.i.us.5.1
  br i1 %or.cond.i.us.5.1, label %if.then.i.us.5.1, label %if.end.i.us.5.1

pregion_for_end.i.5.loopexit:                     ; preds = %if.end.i.us.5.1
  br label %pregion_for_end.i.5

pregion_for_end.i.5:                              ; preds = %pregion_for_end.i.5.loopexit, %vector.ph245, %pregion_for_end.i.4
  %699 = trunc i64 %mul3.i.i to i32
  %conv2.i.6 = or i32 %699, 6
  %cmp.i.6 = icmp slt i32 %conv2.i.6, %3
  %mul.i.6 = mul nsw i32 %conv2.i.6, %4
  br i1 %cmp.i.6, label %vector.scevcheck269, label %pregion_for_end.i.6

vector.scevcheck269:                              ; preds = %pregion_for_end.i.5
  %700 = mul i32 %conv2.i.6, %4
  %701 = trunc i64 %6 to i32
  %702 = shl i32 %701, 5
  %703 = add i32 %700, %702
  %704 = icmp sgt i32 %703, 2147483616
  %705 = add i32 %700, %702
  %706 = add i32 %705, -1
  %707 = add i32 %705, 30
  %708 = icmp slt i32 %707, %706
  %709 = or i1 %704, %708
  br i1 %709, label %pregion_for_entry.entry.i.us.6.preheader, label %vector.memcheck291

pregion_for_entry.entry.i.us.6.preheader:         ; preds = %vector.memcheck291, %vector.scevcheck269
  br label %pregion_for_entry.entry.i.us.6

vector.memcheck291:                               ; preds = %vector.scevcheck269
  %710 = mul i32 %conv2.i.6, %4
  %711 = trunc i64 %6 to i32
  %712 = shl i32 %711, 5
  %713 = add i32 %710, %712
  %714 = sext i32 %713 to i64
  %scevgep271 = getelementptr float, float* %0, i64 %714
  %715 = add nsw i64 %714, 32
  %scevgep273 = getelementptr float, float* %0, i64 %715
  %716 = add i32 %710, %712
  %717 = add i32 %716, -2
  %718 = sext i32 %717 to i64
  %719 = add nuw nsw i64 %718, 1
  %scevgep275 = getelementptr float, float* %2, i64 %719
  %720 = add nsw i64 %718, 33
  %scevgep277 = getelementptr float, float* %2, i64 %720
  %scevgep279 = getelementptr float, float* %2, i64 %714
  %scevgep281 = getelementptr float, float* %2, i64 %715
  %bound0283 = icmp ult float* %scevgep271, %scevgep277
  %bound1284 = icmp ult float* %scevgep275, %scevgep273
  %found.conflict285 = and i1 %bound0283, %bound1284
  %bound0286 = icmp ult float* %scevgep271, %scevgep281
  %bound1287 = icmp ult float* %scevgep279, %scevgep273
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx289 = or i1 %found.conflict285, %found.conflict288
  br i1 %conflict.rdx289, label %pregion_for_entry.entry.i.us.6.preheader, label %vector.ph292

vector.ph292:                                     ; preds = %vector.memcheck291
  %broadcast.splatinsert299 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat300 = shufflevector <8 x i64> %broadcast.splatinsert299, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert301 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat302 = shufflevector <8 x i32> %broadcast.splatinsert301, <8 x i32> undef, <8 x i32> zeroinitializer
  %721 = trunc <8 x i64> %broadcast.splat300 to <8 x i32>
  %722 = or <8 x i32> %721, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %723 = icmp sgt <8 x i32> %broadcast.splat302, %722
  %724 = icmp sgt <8 x i32> %722, zeroinitializer
  %725 = and <8 x i1> %723, %724
  %726 = extractelement <8 x i32> %722, i32 0
  %727 = add i32 %mul.i.6, %726
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds float, float* %0, i64 %728
  %730 = bitcast float* %729 to <8 x float>*
  %wide.masked.load303 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %730, i32 4, <8 x i1> %725, <8 x float> undef), !tbaa !12, !alias.scope !67, !noalias !70
  %731 = fpext <8 x float> %wide.masked.load303 to <8 x double>
  %732 = getelementptr inbounds float, float* %2, i64 %728
  %733 = bitcast float* %732 to <8 x float>*
  %wide.masked.load304 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %733, i32 4, <8 x i1> %725, <8 x float> undef), !tbaa !12, !alias.scope !73
  %734 = add i32 %727, -1
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds float, float* %2, i64 %735
  %737 = bitcast float* %736 to <8 x float>*
  %wide.masked.load305 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %737, i32 4, <8 x i1> %725, <8 x float> undef), !tbaa !12, !alias.scope !74
  %738 = fsub <8 x float> %wide.masked.load304, %wide.masked.load305
  %739 = fpext <8 x float> %738 to <8 x double>
  %740 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %739, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %731)
  %741 = fptrunc <8 x double> %740 to <8 x float>
  %742 = bitcast float* %729 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %741, <8 x float>* %742, i32 4, <8 x i1> %725), !tbaa !12, !alias.scope !67, !noalias !70, !llvm.access.group !24
  %743 = trunc <8 x i64> %broadcast.splat300 to <8 x i32>
  %744 = or <8 x i32> %743, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %745 = icmp sgt <8 x i32> %broadcast.splat302, %744
  %746 = icmp sgt <8 x i32> %744, zeroinitializer
  %747 = and <8 x i1> %745, %746
  %748 = extractelement <8 x i32> %744, i32 0
  %749 = add i32 %mul.i.6, %748
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds float, float* %0, i64 %750
  %752 = bitcast float* %751 to <8 x float>*
  %wide.masked.load303.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %752, i32 4, <8 x i1> %747, <8 x float> undef), !tbaa !12, !alias.scope !67, !noalias !70
  %753 = fpext <8 x float> %wide.masked.load303.1 to <8 x double>
  %754 = getelementptr inbounds float, float* %2, i64 %750
  %755 = bitcast float* %754 to <8 x float>*
  %wide.masked.load304.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %755, i32 4, <8 x i1> %747, <8 x float> undef), !tbaa !12, !alias.scope !73
  %756 = add i32 %749, -1
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds float, float* %2, i64 %757
  %759 = bitcast float* %758 to <8 x float>*
  %wide.masked.load305.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %759, i32 4, <8 x i1> %747, <8 x float> undef), !tbaa !12, !alias.scope !74
  %760 = fsub <8 x float> %wide.masked.load304.1, %wide.masked.load305.1
  %761 = fpext <8 x float> %760 to <8 x double>
  %762 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %761, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %753)
  %763 = fptrunc <8 x double> %762 to <8 x float>
  %764 = bitcast float* %751 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %763, <8 x float>* %764, i32 4, <8 x i1> %747), !tbaa !12, !alias.scope !67, !noalias !70, !llvm.access.group !24
  %765 = trunc <8 x i64> %broadcast.splat300 to <8 x i32>
  %766 = or <8 x i32> %765, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %767 = icmp sgt <8 x i32> %broadcast.splat302, %766
  %768 = icmp sgt <8 x i32> %766, zeroinitializer
  %769 = and <8 x i1> %767, %768
  %770 = extractelement <8 x i32> %766, i32 0
  %771 = add i32 %mul.i.6, %770
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds float, float* %0, i64 %772
  %774 = bitcast float* %773 to <8 x float>*
  %wide.masked.load303.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %774, i32 4, <8 x i1> %769, <8 x float> undef), !tbaa !12, !alias.scope !67, !noalias !70
  %775 = fpext <8 x float> %wide.masked.load303.2 to <8 x double>
  %776 = getelementptr inbounds float, float* %2, i64 %772
  %777 = bitcast float* %776 to <8 x float>*
  %wide.masked.load304.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %777, i32 4, <8 x i1> %769, <8 x float> undef), !tbaa !12, !alias.scope !73
  %778 = add i32 %771, -1
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds float, float* %2, i64 %779
  %781 = bitcast float* %780 to <8 x float>*
  %wide.masked.load305.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %781, i32 4, <8 x i1> %769, <8 x float> undef), !tbaa !12, !alias.scope !74
  %782 = fsub <8 x float> %wide.masked.load304.2, %wide.masked.load305.2
  %783 = fpext <8 x float> %782 to <8 x double>
  %784 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %783, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %775)
  %785 = fptrunc <8 x double> %784 to <8 x float>
  %786 = bitcast float* %773 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %785, <8 x float>* %786, i32 4, <8 x i1> %769), !tbaa !12, !alias.scope !67, !noalias !70, !llvm.access.group !24
  %787 = trunc <8 x i64> %broadcast.splat300 to <8 x i32>
  %788 = or <8 x i32> %787, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %789 = icmp sgt <8 x i32> %broadcast.splat302, %788
  %790 = icmp sgt <8 x i32> %788, zeroinitializer
  %791 = and <8 x i1> %789, %790
  %792 = extractelement <8 x i32> %788, i32 0
  %793 = add i32 %mul.i.6, %792
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds float, float* %0, i64 %794
  %796 = bitcast float* %795 to <8 x float>*
  %wide.masked.load303.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %796, i32 4, <8 x i1> %791, <8 x float> undef), !tbaa !12, !alias.scope !67, !noalias !70
  %797 = fpext <8 x float> %wide.masked.load303.3 to <8 x double>
  %798 = getelementptr inbounds float, float* %2, i64 %794
  %799 = bitcast float* %798 to <8 x float>*
  %wide.masked.load304.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %799, i32 4, <8 x i1> %791, <8 x float> undef), !tbaa !12, !alias.scope !73
  %800 = add i32 %793, -1
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds float, float* %2, i64 %801
  %803 = bitcast float* %802 to <8 x float>*
  %wide.masked.load305.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %803, i32 4, <8 x i1> %791, <8 x float> undef), !tbaa !12, !alias.scope !74
  %804 = fsub <8 x float> %wide.masked.load304.3, %wide.masked.load305.3
  %805 = fpext <8 x float> %804 to <8 x double>
  %806 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %805, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %797)
  %807 = fptrunc <8 x double> %806 to <8 x float>
  %808 = bitcast float* %795 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %807, <8 x float>* %808, i32 4, <8 x i1> %791), !tbaa !12, !alias.scope !67, !noalias !70, !llvm.access.group !24
  br label %pregion_for_end.i.6

pregion_for_entry.entry.i.us.6:                   ; preds = %if.end.i.us.6.1, %pregion_for_entry.entry.i.us.6.preheader
  %_local_id_x.0.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.us.6.preheader ], [ %937, %if.end.i.us.6.1 ]
  %add1.i.i.us.6 = add nuw nsw i64 %_local_id_x.0.us.6, %mul.i.i
  %conv.i.us.6 = trunc i64 %add1.i.i.us.6 to i32
  %cmp4.i.us.6 = icmp slt i32 %conv.i.us.6, %4
  %cmp7.i.us.6 = icmp sgt i32 %conv.i.us.6, 0
  %or.cond.i.us.6 = and i1 %cmp4.i.us.6, %cmp7.i.us.6
  br i1 %or.cond.i.us.6, label %if.then.i.us.6, label %if.end.i.us.6

if.then.i.us.6:                                   ; preds = %pregion_for_entry.entry.i.us.6
  %add.i.us.6 = add i32 %mul.i.6, %conv.i.us.6
  %idxprom.i.us.6 = sext i32 %add.i.us.6 to i64
  %arrayidx.i.us.6 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.6
  %809 = load float, float* %arrayidx.i.us.6, align 4, !tbaa !12
  %conv9.i.us.6 = fpext float %809 to double
  %arrayidx13.i.us.6 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.6
  %810 = load float, float* %arrayidx13.i.us.6, align 4, !tbaa !12
  %add15.i.us.6 = add i32 %add.i.us.6, -1
  %idxprom16.i.us.6 = sext i32 %add15.i.us.6 to i64
  %arrayidx17.i.us.6 = getelementptr inbounds float, float* %2, i64 %idxprom16.i.us.6
  %811 = load float, float* %arrayidx17.i.us.6, align 4, !tbaa !12
  %sub18.i.us.6 = fsub float %810, %811
  %conv19.i.us.6 = fpext float %sub18.i.us.6 to double
  %812 = tail call double @llvm.fmuladd.f64(double %conv19.i.us.6, double -5.000000e-01, double %conv9.i.us.6) #5
  %conv21.i.us.6 = fptrunc double %812 to float
  store float %conv21.i.us.6, float* %arrayidx.i.us.6, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.us.6

if.end.i.us.6:                                    ; preds = %if.then.i.us.6, %pregion_for_entry.entry.i.us.6
  %813 = or i64 %_local_id_x.0.us.6, 1
  %add1.i.i.us.6.1 = add nuw nsw i64 %813, %mul.i.i
  %conv.i.us.6.1 = trunc i64 %add1.i.i.us.6.1 to i32
  %cmp4.i.us.6.1 = icmp slt i32 %conv.i.us.6.1, %4
  %cmp7.i.us.6.1 = icmp sgt i32 %conv.i.us.6.1, 0
  %or.cond.i.us.6.1 = and i1 %cmp4.i.us.6.1, %cmp7.i.us.6.1
  br i1 %or.cond.i.us.6.1, label %if.then.i.us.6.1, label %if.end.i.us.6.1

pregion_for_end.i.6.loopexit:                     ; preds = %if.end.i.us.6.1
  br label %pregion_for_end.i.6

pregion_for_end.i.6:                              ; preds = %pregion_for_end.i.6.loopexit, %vector.ph292, %pregion_for_end.i.5
  %814 = trunc i64 %mul3.i.i to i32
  %conv2.i.7 = or i32 %814, 7
  %cmp.i.7 = icmp slt i32 %conv2.i.7, %3
  %mul.i.7 = mul nsw i32 %conv2.i.7, %4
  br i1 %cmp.i.7, label %vector.scevcheck316, label %pregion_for_end.i.7

vector.scevcheck316:                              ; preds = %pregion_for_end.i.6
  %815 = mul i32 %conv2.i.7, %4
  %816 = trunc i64 %6 to i32
  %817 = shl i32 %816, 5
  %818 = add i32 %815, %817
  %819 = icmp sgt i32 %818, 2147483616
  %820 = add i32 %815, %817
  %821 = add i32 %820, -1
  %822 = add i32 %820, 30
  %823 = icmp slt i32 %822, %821
  %824 = or i1 %819, %823
  br i1 %824, label %pregion_for_entry.entry.i.us.7.preheader, label %vector.memcheck338

pregion_for_entry.entry.i.us.7.preheader:         ; preds = %vector.memcheck338, %vector.scevcheck316
  br label %pregion_for_entry.entry.i.us.7

vector.memcheck338:                               ; preds = %vector.scevcheck316
  %825 = mul i32 %conv2.i.7, %4
  %826 = trunc i64 %6 to i32
  %827 = shl i32 %826, 5
  %828 = add i32 %825, %827
  %829 = sext i32 %828 to i64
  %scevgep318 = getelementptr float, float* %0, i64 %829
  %830 = add nsw i64 %829, 32
  %scevgep320 = getelementptr float, float* %0, i64 %830
  %831 = add i32 %825, %827
  %832 = add i32 %831, -1
  %833 = sext i32 %832 to i64
  %scevgep322 = getelementptr float, float* %2, i64 %833
  %834 = add nsw i64 %833, 32
  %scevgep324 = getelementptr float, float* %2, i64 %834
  %scevgep326 = getelementptr float, float* %2, i64 %829
  %scevgep328 = getelementptr float, float* %2, i64 %830
  %bound0330 = icmp ult float* %scevgep318, %scevgep324
  %bound1331 = icmp ult float* %scevgep322, %scevgep320
  %found.conflict332 = and i1 %bound0330, %bound1331
  %bound0333 = icmp ult float* %scevgep318, %scevgep328
  %bound1334 = icmp ult float* %scevgep326, %scevgep320
  %found.conflict335 = and i1 %bound0333, %bound1334
  %conflict.rdx336 = or i1 %found.conflict332, %found.conflict335
  br i1 %conflict.rdx336, label %pregion_for_entry.entry.i.us.7.preheader, label %vector.ph339

vector.ph339:                                     ; preds = %vector.memcheck338
  %broadcast.splatinsert346 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat347 = shufflevector <8 x i64> %broadcast.splatinsert346, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert348 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat349 = shufflevector <8 x i32> %broadcast.splatinsert348, <8 x i32> undef, <8 x i32> zeroinitializer
  %835 = trunc <8 x i64> %broadcast.splat347 to <8 x i32>
  %836 = or <8 x i32> %835, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %837 = icmp sgt <8 x i32> %broadcast.splat349, %836
  %838 = icmp sgt <8 x i32> %836, zeroinitializer
  %839 = and <8 x i1> %837, %838
  %840 = extractelement <8 x i32> %836, i32 0
  %841 = add i32 %mul.i.7, %840
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds float, float* %0, i64 %842
  %844 = bitcast float* %843 to <8 x float>*
  %wide.masked.load350 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %844, i32 4, <8 x i1> %839, <8 x float> undef), !tbaa !12, !alias.scope !75, !noalias !78
  %845 = fpext <8 x float> %wide.masked.load350 to <8 x double>
  %846 = getelementptr inbounds float, float* %2, i64 %842
  %847 = bitcast float* %846 to <8 x float>*
  %wide.masked.load351 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %847, i32 4, <8 x i1> %839, <8 x float> undef), !tbaa !12, !alias.scope !81
  %848 = add i32 %841, -1
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds float, float* %2, i64 %849
  %851 = bitcast float* %850 to <8 x float>*
  %wide.masked.load352 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %851, i32 4, <8 x i1> %839, <8 x float> undef), !tbaa !12, !alias.scope !82
  %852 = fsub <8 x float> %wide.masked.load351, %wide.masked.load352
  %853 = fpext <8 x float> %852 to <8 x double>
  %854 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %853, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %845)
  %855 = fptrunc <8 x double> %854 to <8 x float>
  %856 = bitcast float* %843 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %855, <8 x float>* %856, i32 4, <8 x i1> %839), !tbaa !12, !alias.scope !75, !noalias !78, !llvm.access.group !24
  %857 = trunc <8 x i64> %broadcast.splat347 to <8 x i32>
  %858 = or <8 x i32> %857, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %859 = icmp sgt <8 x i32> %broadcast.splat349, %858
  %860 = icmp sgt <8 x i32> %858, zeroinitializer
  %861 = and <8 x i1> %859, %860
  %862 = extractelement <8 x i32> %858, i32 0
  %863 = add i32 %mul.i.7, %862
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds float, float* %0, i64 %864
  %866 = bitcast float* %865 to <8 x float>*
  %wide.masked.load350.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %866, i32 4, <8 x i1> %861, <8 x float> undef), !tbaa !12, !alias.scope !75, !noalias !78
  %867 = fpext <8 x float> %wide.masked.load350.1 to <8 x double>
  %868 = getelementptr inbounds float, float* %2, i64 %864
  %869 = bitcast float* %868 to <8 x float>*
  %wide.masked.load351.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %869, i32 4, <8 x i1> %861, <8 x float> undef), !tbaa !12, !alias.scope !81
  %870 = add i32 %863, -1
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds float, float* %2, i64 %871
  %873 = bitcast float* %872 to <8 x float>*
  %wide.masked.load352.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %873, i32 4, <8 x i1> %861, <8 x float> undef), !tbaa !12, !alias.scope !82
  %874 = fsub <8 x float> %wide.masked.load351.1, %wide.masked.load352.1
  %875 = fpext <8 x float> %874 to <8 x double>
  %876 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %875, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %867)
  %877 = fptrunc <8 x double> %876 to <8 x float>
  %878 = bitcast float* %865 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %877, <8 x float>* %878, i32 4, <8 x i1> %861), !tbaa !12, !alias.scope !75, !noalias !78, !llvm.access.group !24
  %879 = trunc <8 x i64> %broadcast.splat347 to <8 x i32>
  %880 = or <8 x i32> %879, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %881 = icmp sgt <8 x i32> %broadcast.splat349, %880
  %882 = icmp sgt <8 x i32> %880, zeroinitializer
  %883 = and <8 x i1> %881, %882
  %884 = extractelement <8 x i32> %880, i32 0
  %885 = add i32 %mul.i.7, %884
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds float, float* %0, i64 %886
  %888 = bitcast float* %887 to <8 x float>*
  %wide.masked.load350.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %888, i32 4, <8 x i1> %883, <8 x float> undef), !tbaa !12, !alias.scope !75, !noalias !78
  %889 = fpext <8 x float> %wide.masked.load350.2 to <8 x double>
  %890 = getelementptr inbounds float, float* %2, i64 %886
  %891 = bitcast float* %890 to <8 x float>*
  %wide.masked.load351.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %891, i32 4, <8 x i1> %883, <8 x float> undef), !tbaa !12, !alias.scope !81
  %892 = add i32 %885, -1
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds float, float* %2, i64 %893
  %895 = bitcast float* %894 to <8 x float>*
  %wide.masked.load352.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %895, i32 4, <8 x i1> %883, <8 x float> undef), !tbaa !12, !alias.scope !82
  %896 = fsub <8 x float> %wide.masked.load351.2, %wide.masked.load352.2
  %897 = fpext <8 x float> %896 to <8 x double>
  %898 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %897, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %889)
  %899 = fptrunc <8 x double> %898 to <8 x float>
  %900 = bitcast float* %887 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %899, <8 x float>* %900, i32 4, <8 x i1> %883), !tbaa !12, !alias.scope !75, !noalias !78, !llvm.access.group !24
  %901 = trunc <8 x i64> %broadcast.splat347 to <8 x i32>
  %902 = or <8 x i32> %901, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %903 = icmp sgt <8 x i32> %broadcast.splat349, %902
  %904 = icmp sgt <8 x i32> %902, zeroinitializer
  %905 = and <8 x i1> %903, %904
  %906 = extractelement <8 x i32> %902, i32 0
  %907 = add i32 %mul.i.7, %906
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds float, float* %0, i64 %908
  %910 = bitcast float* %909 to <8 x float>*
  %wide.masked.load350.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %910, i32 4, <8 x i1> %905, <8 x float> undef), !tbaa !12, !alias.scope !75, !noalias !78
  %911 = fpext <8 x float> %wide.masked.load350.3 to <8 x double>
  %912 = getelementptr inbounds float, float* %2, i64 %908
  %913 = bitcast float* %912 to <8 x float>*
  %wide.masked.load351.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %913, i32 4, <8 x i1> %905, <8 x float> undef), !tbaa !12, !alias.scope !81
  %914 = add i32 %907, -1
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds float, float* %2, i64 %915
  %917 = bitcast float* %916 to <8 x float>*
  %wide.masked.load352.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %917, i32 4, <8 x i1> %905, <8 x float> undef), !tbaa !12, !alias.scope !82
  %918 = fsub <8 x float> %wide.masked.load351.3, %wide.masked.load352.3
  %919 = fpext <8 x float> %918 to <8 x double>
  %920 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %919, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %911)
  %921 = fptrunc <8 x double> %920 to <8 x float>
  %922 = bitcast float* %909 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %921, <8 x float>* %922, i32 4, <8 x i1> %905), !tbaa !12, !alias.scope !75, !noalias !78, !llvm.access.group !24
  br label %pregion_for_end.i.7

pregion_for_entry.entry.i.us.7:                   ; preds = %if.end.i.us.7.1, %pregion_for_entry.entry.i.us.7.preheader
  %_local_id_x.0.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.us.7.preheader ], [ %932, %if.end.i.us.7.1 ]
  %add1.i.i.us.7 = add nuw nsw i64 %_local_id_x.0.us.7, %mul.i.i
  %conv.i.us.7 = trunc i64 %add1.i.i.us.7 to i32
  %cmp4.i.us.7 = icmp slt i32 %conv.i.us.7, %4
  %cmp7.i.us.7 = icmp sgt i32 %conv.i.us.7, 0
  %or.cond.i.us.7 = and i1 %cmp4.i.us.7, %cmp7.i.us.7
  br i1 %or.cond.i.us.7, label %if.then.i.us.7, label %if.end.i.us.7

if.then.i.us.7:                                   ; preds = %pregion_for_entry.entry.i.us.7
  %add.i.us.7 = add i32 %mul.i.7, %conv.i.us.7
  %idxprom.i.us.7 = sext i32 %add.i.us.7 to i64
  %arrayidx.i.us.7 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.7
  %923 = load float, float* %arrayidx.i.us.7, align 4, !tbaa !12
  %conv9.i.us.7 = fpext float %923 to double
  %arrayidx13.i.us.7 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.7
  %924 = load float, float* %arrayidx13.i.us.7, align 4, !tbaa !12
  %add15.i.us.7 = add i32 %add.i.us.7, -1
  %idxprom16.i.us.7 = sext i32 %add15.i.us.7 to i64
  %arrayidx17.i.us.7 = getelementptr inbounds float, float* %2, i64 %idxprom16.i.us.7
  %925 = load float, float* %arrayidx17.i.us.7, align 4, !tbaa !12
  %sub18.i.us.7 = fsub float %924, %925
  %conv19.i.us.7 = fpext float %sub18.i.us.7 to double
  %926 = tail call double @llvm.fmuladd.f64(double %conv19.i.us.7, double -5.000000e-01, double %conv9.i.us.7) #5
  %conv21.i.us.7 = fptrunc double %926 to float
  store float %conv21.i.us.7, float* %arrayidx.i.us.7, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.us.7

if.end.i.us.7:                                    ; preds = %if.then.i.us.7, %pregion_for_entry.entry.i.us.7
  %927 = or i64 %_local_id_x.0.us.7, 1
  %add1.i.i.us.7.1 = add nuw nsw i64 %927, %mul.i.i
  %conv.i.us.7.1 = trunc i64 %add1.i.i.us.7.1 to i32
  %cmp4.i.us.7.1 = icmp slt i32 %conv.i.us.7.1, %4
  %cmp7.i.us.7.1 = icmp sgt i32 %conv.i.us.7.1, 0
  %or.cond.i.us.7.1 = and i1 %cmp4.i.us.7.1, %cmp7.i.us.7.1
  br i1 %or.cond.i.us.7.1, label %if.then.i.us.7.1, label %if.end.i.us.7.1

pregion_for_end.i.7.loopexit:                     ; preds = %if.end.i.us.7.1
  br label %pregion_for_end.i.7

pregion_for_end.i.7:                              ; preds = %pregion_for_end.i.7.loopexit, %vector.ph339, %pregion_for_end.i.6
  ret void

if.then.i.us.7.1:                                 ; preds = %if.end.i.us.7
  %add.i.us.7.1 = add i32 %mul.i.7, %conv.i.us.7.1
  %idxprom.i.us.7.1 = sext i32 %add.i.us.7.1 to i64
  %arrayidx.i.us.7.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.7.1
  %928 = load float, float* %arrayidx.i.us.7.1, align 4, !tbaa !12
  %conv9.i.us.7.1 = fpext float %928 to double
  %arrayidx13.i.us.7.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.7.1
  %929 = load float, float* %arrayidx13.i.us.7.1, align 4, !tbaa !12
  %add15.i.us.7.1 = add i32 %add.i.us.7.1, -1
  %idxprom16.i.us.7.1 = sext i32 %add15.i.us.7.1 to i64
  %arrayidx17.i.us.7.1 = getelementptr inbounds float, float* %2, i64 %idxprom16.i.us.7.1
  %930 = load float, float* %arrayidx17.i.us.7.1, align 4, !tbaa !12
  %sub18.i.us.7.1 = fsub float %929, %930
  %conv19.i.us.7.1 = fpext float %sub18.i.us.7.1 to double
  %931 = tail call double @llvm.fmuladd.f64(double %conv19.i.us.7.1, double -5.000000e-01, double %conv9.i.us.7.1) #5
  %conv21.i.us.7.1 = fptrunc double %931 to float
  store float %conv21.i.us.7.1, float* %arrayidx.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.us.7.1

if.end.i.us.7.1:                                  ; preds = %if.then.i.us.7.1, %if.end.i.us.7
  %932 = add nuw nsw i64 %_local_id_x.0.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %932, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.7.loopexit, label %pregion_for_entry.entry.i.us.7, !llvm.loop !83

if.then.i.us.6.1:                                 ; preds = %if.end.i.us.6
  %add.i.us.6.1 = add i32 %mul.i.6, %conv.i.us.6.1
  %idxprom.i.us.6.1 = sext i32 %add.i.us.6.1 to i64
  %arrayidx.i.us.6.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.6.1
  %933 = load float, float* %arrayidx.i.us.6.1, align 4, !tbaa !12
  %conv9.i.us.6.1 = fpext float %933 to double
  %arrayidx13.i.us.6.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.6.1
  %934 = load float, float* %arrayidx13.i.us.6.1, align 4, !tbaa !12
  %add15.i.us.6.1 = add nsw i32 %add.i.us.6.1, -1
  %idxprom16.i.us.6.1 = sext i32 %add15.i.us.6.1 to i64
  %arrayidx17.i.us.6.1 = getelementptr inbounds float, float* %2, i64 %idxprom16.i.us.6.1
  %935 = load float, float* %arrayidx17.i.us.6.1, align 4, !tbaa !12
  %sub18.i.us.6.1 = fsub float %934, %935
  %conv19.i.us.6.1 = fpext float %sub18.i.us.6.1 to double
  %936 = tail call double @llvm.fmuladd.f64(double %conv19.i.us.6.1, double -5.000000e-01, double %conv9.i.us.6.1) #5
  %conv21.i.us.6.1 = fptrunc double %936 to float
  store float %conv21.i.us.6.1, float* %arrayidx.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.us.6.1

if.end.i.us.6.1:                                  ; preds = %if.then.i.us.6.1, %if.end.i.us.6
  %937 = add nuw nsw i64 %_local_id_x.0.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %937, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.6.loopexit, label %pregion_for_entry.entry.i.us.6, !llvm.loop !86

if.then.i.us.5.1:                                 ; preds = %if.end.i.us.5
  %add.i.us.5.1 = add i32 %mul.i.5, %conv.i.us.5.1
  %idxprom.i.us.5.1 = sext i32 %add.i.us.5.1 to i64
  %arrayidx.i.us.5.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.5.1
  %938 = load float, float* %arrayidx.i.us.5.1, align 4, !tbaa !12
  %conv9.i.us.5.1 = fpext float %938 to double
  %arrayidx13.i.us.5.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.5.1
  %939 = load float, float* %arrayidx13.i.us.5.1, align 4, !tbaa !12
  %add15.i.us.5.1 = add i32 %add.i.us.5.1, -1
  %idxprom16.i.us.5.1 = sext i32 %add15.i.us.5.1 to i64
  %arrayidx17.i.us.5.1 = getelementptr inbounds float, float* %2, i64 %idxprom16.i.us.5.1
  %940 = load float, float* %arrayidx17.i.us.5.1, align 4, !tbaa !12
  %sub18.i.us.5.1 = fsub float %939, %940
  %conv19.i.us.5.1 = fpext float %sub18.i.us.5.1 to double
  %941 = tail call double @llvm.fmuladd.f64(double %conv19.i.us.5.1, double -5.000000e-01, double %conv9.i.us.5.1) #5
  %conv21.i.us.5.1 = fptrunc double %941 to float
  store float %conv21.i.us.5.1, float* %arrayidx.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.us.5.1

if.end.i.us.5.1:                                  ; preds = %if.then.i.us.5.1, %if.end.i.us.5
  %942 = add nuw nsw i64 %_local_id_x.0.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %942, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.5.loopexit, label %pregion_for_entry.entry.i.us.5, !llvm.loop !87

if.then.i.us.4.1:                                 ; preds = %if.end.i.us.4
  %add.i.us.4.1 = add i32 %mul.i.4, %conv.i.us.4.1
  %idxprom.i.us.4.1 = sext i32 %add.i.us.4.1 to i64
  %arrayidx.i.us.4.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.4.1
  %943 = load float, float* %arrayidx.i.us.4.1, align 4, !tbaa !12
  %conv9.i.us.4.1 = fpext float %943 to double
  %arrayidx13.i.us.4.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.4.1
  %944 = load float, float* %arrayidx13.i.us.4.1, align 4, !tbaa !12
  %add15.i.us.4.1 = add nsw i32 %add.i.us.4.1, -1
  %idxprom16.i.us.4.1 = sext i32 %add15.i.us.4.1 to i64
  %arrayidx17.i.us.4.1 = getelementptr inbounds float, float* %2, i64 %idxprom16.i.us.4.1
  %945 = load float, float* %arrayidx17.i.us.4.1, align 4, !tbaa !12
  %sub18.i.us.4.1 = fsub float %944, %945
  %conv19.i.us.4.1 = fpext float %sub18.i.us.4.1 to double
  %946 = tail call double @llvm.fmuladd.f64(double %conv19.i.us.4.1, double -5.000000e-01, double %conv9.i.us.4.1) #5
  %conv21.i.us.4.1 = fptrunc double %946 to float
  store float %conv21.i.us.4.1, float* %arrayidx.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.us.4.1

if.end.i.us.4.1:                                  ; preds = %if.then.i.us.4.1, %if.end.i.us.4
  %947 = add nuw nsw i64 %_local_id_x.0.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %947, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.4.loopexit, label %pregion_for_entry.entry.i.us.4, !llvm.loop !88

if.then.i.us.3.1:                                 ; preds = %if.end.i.us.3
  %add.i.us.3.1 = add i32 %mul.i.3, %conv.i.us.3.1
  %idxprom.i.us.3.1 = sext i32 %add.i.us.3.1 to i64
  %arrayidx.i.us.3.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.3.1
  %948 = load float, float* %arrayidx.i.us.3.1, align 4, !tbaa !12
  %conv9.i.us.3.1 = fpext float %948 to double
  %arrayidx13.i.us.3.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.3.1
  %949 = load float, float* %arrayidx13.i.us.3.1, align 4, !tbaa !12
  %add15.i.us.3.1 = add i32 %add.i.us.3.1, -1
  %idxprom16.i.us.3.1 = sext i32 %add15.i.us.3.1 to i64
  %arrayidx17.i.us.3.1 = getelementptr inbounds float, float* %2, i64 %idxprom16.i.us.3.1
  %950 = load float, float* %arrayidx17.i.us.3.1, align 4, !tbaa !12
  %sub18.i.us.3.1 = fsub float %949, %950
  %conv19.i.us.3.1 = fpext float %sub18.i.us.3.1 to double
  %951 = tail call double @llvm.fmuladd.f64(double %conv19.i.us.3.1, double -5.000000e-01, double %conv9.i.us.3.1) #5
  %conv21.i.us.3.1 = fptrunc double %951 to float
  store float %conv21.i.us.3.1, float* %arrayidx.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.us.3.1

if.end.i.us.3.1:                                  ; preds = %if.then.i.us.3.1, %if.end.i.us.3
  %952 = add nuw nsw i64 %_local_id_x.0.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %952, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.3.loopexit, label %pregion_for_entry.entry.i.us.3, !llvm.loop !89

if.then.i.us.2.1:                                 ; preds = %if.end.i.us.2
  %add.i.us.2.1 = add i32 %mul.i.2, %conv.i.us.2.1
  %idxprom.i.us.2.1 = sext i32 %add.i.us.2.1 to i64
  %arrayidx.i.us.2.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.2.1
  %953 = load float, float* %arrayidx.i.us.2.1, align 4, !tbaa !12
  %conv9.i.us.2.1 = fpext float %953 to double
  %arrayidx13.i.us.2.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.2.1
  %954 = load float, float* %arrayidx13.i.us.2.1, align 4, !tbaa !12
  %add15.i.us.2.1 = add nsw i32 %add.i.us.2.1, -1
  %idxprom16.i.us.2.1 = sext i32 %add15.i.us.2.1 to i64
  %arrayidx17.i.us.2.1 = getelementptr inbounds float, float* %2, i64 %idxprom16.i.us.2.1
  %955 = load float, float* %arrayidx17.i.us.2.1, align 4, !tbaa !12
  %sub18.i.us.2.1 = fsub float %954, %955
  %conv19.i.us.2.1 = fpext float %sub18.i.us.2.1 to double
  %956 = tail call double @llvm.fmuladd.f64(double %conv19.i.us.2.1, double -5.000000e-01, double %conv9.i.us.2.1) #5
  %conv21.i.us.2.1 = fptrunc double %956 to float
  store float %conv21.i.us.2.1, float* %arrayidx.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.us.2.1

if.end.i.us.2.1:                                  ; preds = %if.then.i.us.2.1, %if.end.i.us.2
  %957 = add nuw nsw i64 %_local_id_x.0.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %957, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.2.loopexit, label %pregion_for_entry.entry.i.us.2, !llvm.loop !90

if.then.i.us.1.1:                                 ; preds = %if.end.i.us.1
  %add.i.us.1.1 = add i32 %mul.i.1, %conv.i.us.1.1
  %idxprom.i.us.1.1 = sext i32 %add.i.us.1.1 to i64
  %arrayidx.i.us.1.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.1.1
  %958 = load float, float* %arrayidx.i.us.1.1, align 4, !tbaa !12
  %conv9.i.us.1.1 = fpext float %958 to double
  %arrayidx13.i.us.1.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1.1
  %959 = load float, float* %arrayidx13.i.us.1.1, align 4, !tbaa !12
  %add15.i.us.1.1 = add i32 %add.i.us.1.1, -1
  %idxprom16.i.us.1.1 = sext i32 %add15.i.us.1.1 to i64
  %arrayidx17.i.us.1.1 = getelementptr inbounds float, float* %2, i64 %idxprom16.i.us.1.1
  %960 = load float, float* %arrayidx17.i.us.1.1, align 4, !tbaa !12
  %sub18.i.us.1.1 = fsub float %959, %960
  %conv19.i.us.1.1 = fpext float %sub18.i.us.1.1 to double
  %961 = tail call double @llvm.fmuladd.f64(double %conv19.i.us.1.1, double -5.000000e-01, double %conv9.i.us.1.1) #5
  %conv21.i.us.1.1 = fptrunc double %961 to float
  store float %conv21.i.us.1.1, float* %arrayidx.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.us.1.1

if.end.i.us.1.1:                                  ; preds = %if.then.i.us.1.1, %if.end.i.us.1
  %962 = add nuw nsw i64 %_local_id_x.0.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %962, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.1.loopexit, label %pregion_for_entry.entry.i.us.1, !llvm.loop !91

if.then.i.us.1379:                                ; preds = %if.end.i.us
  %add.i.us.1368 = add i32 %mul.i, %conv.i.us.1363
  %idxprom.i.us.1369 = sext i32 %add.i.us.1368 to i64
  %arrayidx.i.us.1370 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.1369
  %963 = load float, float* %arrayidx.i.us.1370, align 4, !tbaa !12
  %conv9.i.us.1371 = fpext float %963 to double
  %arrayidx13.i.us.1372 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1369
  %964 = load float, float* %arrayidx13.i.us.1372, align 4, !tbaa !12
  %add15.i.us.1373 = add nsw i32 %add.i.us.1368, -1
  %idxprom16.i.us.1374 = sext i32 %add15.i.us.1373 to i64
  %arrayidx17.i.us.1375 = getelementptr inbounds float, float* %2, i64 %idxprom16.i.us.1374
  %965 = load float, float* %arrayidx17.i.us.1375, align 4, !tbaa !12
  %sub18.i.us.1376 = fsub float %964, %965
  %conv19.i.us.1377 = fpext float %sub18.i.us.1376 to double
  %966 = tail call double @llvm.fmuladd.f64(double %conv19.i.us.1377, double -5.000000e-01, double %conv9.i.us.1371) #5
  %conv21.i.us.1378 = fptrunc double %966 to float
  store float %conv21.i.us.1378, float* %arrayidx.i.us.1370, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.us.1380

if.end.i.us.1380:                                 ; preds = %if.then.i.us.1379, %if.end.i.us
  %967 = add nuw nsw i64 %_local_id_x.0.us, 2
  %exitcond.not.1 = icmp eq i64 %967, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !92
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_fdtd_kernel2_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
pregion_for_entry.pregion_for_init.i.i:
  %5 = bitcast i8** %0 to float***
  %6 = load float**, float*** %5, align 8
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 2
  %9 = bitcast i8** %8 to float***
  %10 = load float**, float*** %9, align 8
  %11 = load float*, float** %10, align 8
  %12 = getelementptr i8*, i8** %0, i64 3
  %13 = bitcast i8** %12 to i32**
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr i8*, i8** %0, i64 4
  %17 = bitcast i8** %16 to i32**
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %conv2.i.i = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %15, %conv2.i.i
  %mul.i.i = mul nsw i32 %19, %conv2.i.i
  br i1 %cmp.i.i, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %20 = trunc i64 %3 to i32
  %21 = mul i32 %19, %20
  %22 = shl i32 %21, 3
  %23 = trunc i64 %2 to i32
  %24 = shl i32 %23, 5
  %25 = add i32 %22, %24
  %26 = icmp sgt i32 %25, 2147483616
  %27 = add i32 %22, %24
  %28 = add i32 %27, -1
  %29 = add i32 %27, 30
  %30 = icmp slt i32 %29, %28
  %31 = or i1 %26, %30
  br i1 %31, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %32 = trunc i64 %3 to i32
  %33 = mul i32 %19, %32
  %34 = shl i32 %33, 3
  %35 = trunc i64 %2 to i32
  %36 = shl i32 %35, 5
  %37 = add i32 %34, %36
  %38 = sext i32 %37 to i64
  %scevgep = getelementptr float, float* %7, i64 %38
  %39 = add nsw i64 %38, 32
  %scevgep7 = getelementptr float, float* %7, i64 %39
  %40 = add i32 %34, %36
  %41 = add i32 %40, -8
  %42 = sext i32 %41 to i64
  %43 = or i64 %42, 7
  %scevgep9 = getelementptr float, float* %11, i64 %43
  %44 = add nsw i64 %42, 39
  %scevgep11 = getelementptr float, float* %11, i64 %44
  %scevgep13 = getelementptr float, float* %11, i64 %38
  %scevgep15 = getelementptr float, float* %11, i64 %39
  %bound0 = icmp ult float* %scevgep, %scevgep11
  %bound1 = icmp ult float* %scevgep9, %scevgep7
  %found.conflict = and i1 %bound0, %bound1
  %bound017 = icmp ult float* %scevgep, %scevgep15
  %bound118 = icmp ult float* %scevgep13, %scevgep7
  %found.conflict19 = and i1 %bound017, %bound118
  %conflict.rdx = or i1 %found.conflict, %found.conflict19
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert20 = insertelement <8 x i32> undef, i32 %19, i32 0
  %broadcast.splat21 = shufflevector <8 x i32> %broadcast.splatinsert20, <8 x i32> undef, <8 x i32> zeroinitializer
  %45 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %46 = or <8 x i32> %45, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %47 = icmp sgt <8 x i32> %broadcast.splat21, %46
  %48 = icmp sgt <8 x i32> %46, zeroinitializer
  %49 = and <8 x i1> %47, %48
  %50 = extractelement <8 x i32> %46, i32 0
  %51 = add i32 %mul.i.i, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %7, i64 %52
  %54 = bitcast float* %53 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %54, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !93, !noalias !96
  %55 = fpext <8 x float> %wide.masked.load to <8 x double>
  %56 = getelementptr inbounds float, float* %11, i64 %52
  %57 = bitcast float* %56 to <8 x float>*
  %wide.masked.load22 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %57, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !99
  %58 = add i32 %51, -1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %11, i64 %59
  %61 = bitcast float* %60 to <8 x float>*
  %wide.masked.load23 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %61, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !100
  %62 = fsub <8 x float> %wide.masked.load22, %wide.masked.load23
  %63 = fpext <8 x float> %62 to <8 x double>
  %64 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %63, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %55)
  %65 = fptrunc <8 x double> %64 to <8 x float>
  %66 = bitcast float* %53 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %65, <8 x float>* %66, i32 4, <8 x i1> %49), !tbaa !12, !alias.scope !93, !noalias !96, !llvm.access.group !24
  %67 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %68 = or <8 x i32> %67, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %69 = icmp sgt <8 x i32> %broadcast.splat21, %68
  %70 = icmp sgt <8 x i32> %68, zeroinitializer
  %71 = and <8 x i1> %69, %70
  %72 = extractelement <8 x i32> %68, i32 0
  %73 = add i32 %mul.i.i, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %7, i64 %74
  %76 = bitcast float* %75 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %76, i32 4, <8 x i1> %71, <8 x float> undef), !tbaa !12, !alias.scope !93, !noalias !96
  %77 = fpext <8 x float> %wide.masked.load.1 to <8 x double>
  %78 = getelementptr inbounds float, float* %11, i64 %74
  %79 = bitcast float* %78 to <8 x float>*
  %wide.masked.load22.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %79, i32 4, <8 x i1> %71, <8 x float> undef), !tbaa !12, !alias.scope !99
  %80 = add i32 %73, -1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %11, i64 %81
  %83 = bitcast float* %82 to <8 x float>*
  %wide.masked.load23.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %83, i32 4, <8 x i1> %71, <8 x float> undef), !tbaa !12, !alias.scope !100
  %84 = fsub <8 x float> %wide.masked.load22.1, %wide.masked.load23.1
  %85 = fpext <8 x float> %84 to <8 x double>
  %86 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %85, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %77)
  %87 = fptrunc <8 x double> %86 to <8 x float>
  %88 = bitcast float* %75 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %87, <8 x float>* %88, i32 4, <8 x i1> %71), !tbaa !12, !alias.scope !93, !noalias !96, !llvm.access.group !24
  %89 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %90 = or <8 x i32> %89, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %91 = icmp sgt <8 x i32> %broadcast.splat21, %90
  %92 = icmp sgt <8 x i32> %90, zeroinitializer
  %93 = and <8 x i1> %91, %92
  %94 = extractelement <8 x i32> %90, i32 0
  %95 = add i32 %mul.i.i, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %7, i64 %96
  %98 = bitcast float* %97 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %98, i32 4, <8 x i1> %93, <8 x float> undef), !tbaa !12, !alias.scope !93, !noalias !96
  %99 = fpext <8 x float> %wide.masked.load.2 to <8 x double>
  %100 = getelementptr inbounds float, float* %11, i64 %96
  %101 = bitcast float* %100 to <8 x float>*
  %wide.masked.load22.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %101, i32 4, <8 x i1> %93, <8 x float> undef), !tbaa !12, !alias.scope !99
  %102 = add i32 %95, -1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %11, i64 %103
  %105 = bitcast float* %104 to <8 x float>*
  %wide.masked.load23.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %105, i32 4, <8 x i1> %93, <8 x float> undef), !tbaa !12, !alias.scope !100
  %106 = fsub <8 x float> %wide.masked.load22.2, %wide.masked.load23.2
  %107 = fpext <8 x float> %106 to <8 x double>
  %108 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %107, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %99)
  %109 = fptrunc <8 x double> %108 to <8 x float>
  %110 = bitcast float* %97 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %109, <8 x float>* %110, i32 4, <8 x i1> %93), !tbaa !12, !alias.scope !93, !noalias !96, !llvm.access.group !24
  %111 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %112 = or <8 x i32> %111, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %113 = icmp sgt <8 x i32> %broadcast.splat21, %112
  %114 = icmp sgt <8 x i32> %112, zeroinitializer
  %115 = and <8 x i1> %113, %114
  %116 = extractelement <8 x i32> %112, i32 0
  %117 = add i32 %mul.i.i, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %7, i64 %118
  %120 = bitcast float* %119 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %120, i32 4, <8 x i1> %115, <8 x float> undef), !tbaa !12, !alias.scope !93, !noalias !96
  %121 = fpext <8 x float> %wide.masked.load.3 to <8 x double>
  %122 = getelementptr inbounds float, float* %11, i64 %118
  %123 = bitcast float* %122 to <8 x float>*
  %wide.masked.load22.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %123, i32 4, <8 x i1> %115, <8 x float> undef), !tbaa !12, !alias.scope !99
  %124 = add i32 %117, -1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %11, i64 %125
  %127 = bitcast float* %126 to <8 x float>*
  %wide.masked.load23.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %127, i32 4, <8 x i1> %115, <8 x float> undef), !tbaa !12, !alias.scope !100
  %128 = fsub <8 x float> %wide.masked.load22.3, %wide.masked.load23.3
  %129 = fpext <8 x float> %128 to <8 x double>
  %130 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %129, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %121)
  %131 = fptrunc <8 x double> %130 to <8 x float>
  %132 = bitcast float* %119 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %131, <8 x float>* %132, i32 4, <8 x i1> %115), !tbaa !12, !alias.scope !93, !noalias !96, !llvm.access.group !24
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us.1380, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.preheader ], [ %978, %if.end.i.i.us.1380 ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %19, %conv.i.i.us
  %cmp7.i.i.us = icmp sgt i32 %conv.i.i.us, 0
  %or.cond.i.i.us = and i1 %cmp4.i.i.us, %cmp7.i.i.us
  br i1 %or.cond.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add.i.i.us = add i32 %mul.i.i, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us
  %133 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %conv9.i.i.us = fpext float %133 to double
  %arrayidx13.i.i.us = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us
  %134 = load float, float* %arrayidx13.i.i.us, align 4, !tbaa !12
  %add15.i.i.us = add i32 %add.i.i.us, -1
  %idxprom16.i.i.us = sext i32 %add15.i.i.us to i64
  %arrayidx17.i.i.us = getelementptr inbounds float, float* %11, i64 %idxprom16.i.i.us
  %135 = load float, float* %arrayidx17.i.i.us, align 4, !tbaa !12
  %sub18.i.i.us = fsub float %134, %135
  %conv19.i.i.us = fpext float %sub18.i.i.us to double
  %136 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us, double -5.000000e-01, double %conv9.i.i.us) #5
  %conv21.i.i.us = fptrunc double %136 to float
  store float %conv21.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %137 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1362 = add nuw nsw i64 %137, %mul.i.i.i
  %conv.i.i.us.1363 = trunc i64 %add1.i.i.i.us.1362 to i32
  %cmp4.i.i.us.1364 = icmp sgt i32 %19, %conv.i.i.us.1363
  %cmp7.i.i.us.1365 = icmp sgt i32 %conv.i.i.us.1363, 0
  %or.cond.i.i.us.1366 = and i1 %cmp4.i.i.us.1364, %cmp7.i.i.us.1365
  br i1 %or.cond.i.i.us.1366, label %if.then.i.i.us.1379, label %if.end.i.i.us.1380

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.i.i.us.1380
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i
  %138 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.1 = or i32 %138, 1
  %cmp.i.i.1 = icmp sgt i32 %15, %conv2.i.i.1
  %mul.i.i.1 = mul nsw i32 %19, %conv2.i.i.1
  br i1 %cmp.i.i.1, label %vector.scevcheck34, label %pregion_for_end.i.i.1

vector.scevcheck34:                               ; preds = %pregion_for_end.i.i
  %139 = mul i32 %19, %conv2.i.i.1
  %140 = trunc i64 %2 to i32
  %141 = shl i32 %140, 5
  %142 = add i32 %139, %141
  %143 = icmp sgt i32 %142, 2147483616
  %144 = add i32 %139, %141
  %145 = add i32 %144, -1
  %146 = add i32 %144, 30
  %147 = icmp slt i32 %146, %145
  %148 = or i1 %143, %147
  br i1 %148, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.memcheck56

pregion_for_entry.entry.i.i.us.1.preheader:       ; preds = %vector.memcheck56, %vector.scevcheck34
  br label %pregion_for_entry.entry.i.i.us.1

vector.memcheck56:                                ; preds = %vector.scevcheck34
  %149 = mul i32 %19, %conv2.i.i.1
  %150 = trunc i64 %2 to i32
  %151 = shl i32 %150, 5
  %152 = add i32 %149, %151
  %153 = sext i32 %152 to i64
  %scevgep36 = getelementptr float, float* %7, i64 %153
  %154 = add nsw i64 %153, 32
  %scevgep38 = getelementptr float, float* %7, i64 %154
  %155 = add i32 %149, %151
  %156 = add i32 %155, -1
  %157 = sext i32 %156 to i64
  %scevgep40 = getelementptr float, float* %11, i64 %157
  %158 = add nsw i64 %157, 32
  %scevgep42 = getelementptr float, float* %11, i64 %158
  %scevgep44 = getelementptr float, float* %11, i64 %153
  %scevgep46 = getelementptr float, float* %11, i64 %154
  %bound048 = icmp ult float* %scevgep36, %scevgep42
  %bound149 = icmp ult float* %scevgep40, %scevgep38
  %found.conflict50 = and i1 %bound048, %bound149
  %bound051 = icmp ult float* %scevgep36, %scevgep46
  %bound152 = icmp ult float* %scevgep44, %scevgep38
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx54 = or i1 %found.conflict50, %found.conflict53
  br i1 %conflict.rdx54, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.ph57

vector.ph57:                                      ; preds = %vector.memcheck56
  %broadcast.splatinsert64 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat65 = shufflevector <8 x i64> %broadcast.splatinsert64, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert66 = insertelement <8 x i32> undef, i32 %19, i32 0
  %broadcast.splat67 = shufflevector <8 x i32> %broadcast.splatinsert66, <8 x i32> undef, <8 x i32> zeroinitializer
  %159 = trunc <8 x i64> %broadcast.splat65 to <8 x i32>
  %160 = or <8 x i32> %159, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %161 = icmp sgt <8 x i32> %broadcast.splat67, %160
  %162 = icmp sgt <8 x i32> %160, zeroinitializer
  %163 = and <8 x i1> %161, %162
  %164 = extractelement <8 x i32> %160, i32 0
  %165 = add i32 %mul.i.i.1, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %7, i64 %166
  %168 = bitcast float* %167 to <8 x float>*
  %wide.masked.load68 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %168, i32 4, <8 x i1> %163, <8 x float> undef), !tbaa !12, !alias.scope !101, !noalias !104
  %169 = fpext <8 x float> %wide.masked.load68 to <8 x double>
  %170 = getelementptr inbounds float, float* %11, i64 %166
  %171 = bitcast float* %170 to <8 x float>*
  %wide.masked.load69 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %171, i32 4, <8 x i1> %163, <8 x float> undef), !tbaa !12, !alias.scope !107
  %172 = add i32 %165, -1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %11, i64 %173
  %175 = bitcast float* %174 to <8 x float>*
  %wide.masked.load70 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %175, i32 4, <8 x i1> %163, <8 x float> undef), !tbaa !12, !alias.scope !108
  %176 = fsub <8 x float> %wide.masked.load69, %wide.masked.load70
  %177 = fpext <8 x float> %176 to <8 x double>
  %178 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %177, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %169)
  %179 = fptrunc <8 x double> %178 to <8 x float>
  %180 = bitcast float* %167 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %179, <8 x float>* %180, i32 4, <8 x i1> %163), !tbaa !12, !alias.scope !101, !noalias !104, !llvm.access.group !24
  %181 = trunc <8 x i64> %broadcast.splat65 to <8 x i32>
  %182 = or <8 x i32> %181, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %183 = icmp sgt <8 x i32> %broadcast.splat67, %182
  %184 = icmp sgt <8 x i32> %182, zeroinitializer
  %185 = and <8 x i1> %183, %184
  %186 = extractelement <8 x i32> %182, i32 0
  %187 = add i32 %mul.i.i.1, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, float* %7, i64 %188
  %190 = bitcast float* %189 to <8 x float>*
  %wide.masked.load68.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %190, i32 4, <8 x i1> %185, <8 x float> undef), !tbaa !12, !alias.scope !101, !noalias !104
  %191 = fpext <8 x float> %wide.masked.load68.1 to <8 x double>
  %192 = getelementptr inbounds float, float* %11, i64 %188
  %193 = bitcast float* %192 to <8 x float>*
  %wide.masked.load69.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %193, i32 4, <8 x i1> %185, <8 x float> undef), !tbaa !12, !alias.scope !107
  %194 = add i32 %187, -1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %11, i64 %195
  %197 = bitcast float* %196 to <8 x float>*
  %wide.masked.load70.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %197, i32 4, <8 x i1> %185, <8 x float> undef), !tbaa !12, !alias.scope !108
  %198 = fsub <8 x float> %wide.masked.load69.1, %wide.masked.load70.1
  %199 = fpext <8 x float> %198 to <8 x double>
  %200 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %199, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %191)
  %201 = fptrunc <8 x double> %200 to <8 x float>
  %202 = bitcast float* %189 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %201, <8 x float>* %202, i32 4, <8 x i1> %185), !tbaa !12, !alias.scope !101, !noalias !104, !llvm.access.group !24
  %203 = trunc <8 x i64> %broadcast.splat65 to <8 x i32>
  %204 = or <8 x i32> %203, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %205 = icmp sgt <8 x i32> %broadcast.splat67, %204
  %206 = icmp sgt <8 x i32> %204, zeroinitializer
  %207 = and <8 x i1> %205, %206
  %208 = extractelement <8 x i32> %204, i32 0
  %209 = add i32 %mul.i.i.1, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %7, i64 %210
  %212 = bitcast float* %211 to <8 x float>*
  %wide.masked.load68.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %212, i32 4, <8 x i1> %207, <8 x float> undef), !tbaa !12, !alias.scope !101, !noalias !104
  %213 = fpext <8 x float> %wide.masked.load68.2 to <8 x double>
  %214 = getelementptr inbounds float, float* %11, i64 %210
  %215 = bitcast float* %214 to <8 x float>*
  %wide.masked.load69.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %215, i32 4, <8 x i1> %207, <8 x float> undef), !tbaa !12, !alias.scope !107
  %216 = add i32 %209, -1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float, float* %11, i64 %217
  %219 = bitcast float* %218 to <8 x float>*
  %wide.masked.load70.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %219, i32 4, <8 x i1> %207, <8 x float> undef), !tbaa !12, !alias.scope !108
  %220 = fsub <8 x float> %wide.masked.load69.2, %wide.masked.load70.2
  %221 = fpext <8 x float> %220 to <8 x double>
  %222 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %221, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %213)
  %223 = fptrunc <8 x double> %222 to <8 x float>
  %224 = bitcast float* %211 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %223, <8 x float>* %224, i32 4, <8 x i1> %207), !tbaa !12, !alias.scope !101, !noalias !104, !llvm.access.group !24
  %225 = trunc <8 x i64> %broadcast.splat65 to <8 x i32>
  %226 = or <8 x i32> %225, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %227 = icmp sgt <8 x i32> %broadcast.splat67, %226
  %228 = icmp sgt <8 x i32> %226, zeroinitializer
  %229 = and <8 x i1> %227, %228
  %230 = extractelement <8 x i32> %226, i32 0
  %231 = add i32 %mul.i.i.1, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %7, i64 %232
  %234 = bitcast float* %233 to <8 x float>*
  %wide.masked.load68.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %234, i32 4, <8 x i1> %229, <8 x float> undef), !tbaa !12, !alias.scope !101, !noalias !104
  %235 = fpext <8 x float> %wide.masked.load68.3 to <8 x double>
  %236 = getelementptr inbounds float, float* %11, i64 %232
  %237 = bitcast float* %236 to <8 x float>*
  %wide.masked.load69.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %237, i32 4, <8 x i1> %229, <8 x float> undef), !tbaa !12, !alias.scope !107
  %238 = add i32 %231, -1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %11, i64 %239
  %241 = bitcast float* %240 to <8 x float>*
  %wide.masked.load70.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %241, i32 4, <8 x i1> %229, <8 x float> undef), !tbaa !12, !alias.scope !108
  %242 = fsub <8 x float> %wide.masked.load69.3, %wide.masked.load70.3
  %243 = fpext <8 x float> %242 to <8 x double>
  %244 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %243, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %235)
  %245 = fptrunc <8 x double> %244 to <8 x float>
  %246 = bitcast float* %233 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %245, <8 x float>* %246, i32 4, <8 x i1> %229), !tbaa !12, !alias.scope !101, !noalias !104, !llvm.access.group !24
  br label %pregion_for_end.i.i.1

pregion_for_entry.entry.i.i.us.1:                 ; preds = %if.end.i.i.us.1.1, %pregion_for_entry.entry.i.i.us.1.preheader
  %_local_id_x.i.0.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.1.preheader ], [ %973, %if.end.i.i.us.1.1 ]
  %add1.i.i.i.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.1, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp4.i.i.us.1 = icmp sgt i32 %19, %conv.i.i.us.1
  %cmp7.i.i.us.1 = icmp sgt i32 %conv.i.i.us.1, 0
  %or.cond.i.i.us.1 = and i1 %cmp4.i.i.us.1, %cmp7.i.i.us.1
  br i1 %or.cond.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

if.then.i.i.us.1:                                 ; preds = %pregion_for_entry.entry.i.i.us.1
  %add.i.i.us.1 = add i32 %mul.i.i.1, %conv.i.i.us.1
  %idxprom.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.1
  %247 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %conv9.i.i.us.1 = fpext float %247 to double
  %arrayidx13.i.i.us.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.1
  %248 = load float, float* %arrayidx13.i.i.us.1, align 4, !tbaa !12
  %add15.i.i.us.1 = add i32 %add.i.i.us.1, -1
  %idxprom16.i.i.us.1 = sext i32 %add15.i.i.us.1 to i64
  %arrayidx17.i.i.us.1 = getelementptr inbounds float, float* %11, i64 %idxprom16.i.i.us.1
  %249 = load float, float* %arrayidx17.i.i.us.1, align 4, !tbaa !12
  %sub18.i.i.us.1 = fsub float %248, %249
  %conv19.i.i.us.1 = fpext float %sub18.i.i.us.1 to double
  %250 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.1, double -5.000000e-01, double %conv9.i.i.us.1) #5
  %conv21.i.i.us.1 = fptrunc double %250 to float
  store float %conv21.i.i.us.1, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.then.i.i.us.1, %pregion_for_entry.entry.i.i.us.1
  %251 = or i64 %_local_id_x.i.0.us.1, 1
  %add1.i.i.i.us.1.1 = add nuw nsw i64 %251, %mul.i.i.i
  %conv.i.i.us.1.1 = trunc i64 %add1.i.i.i.us.1.1 to i32
  %cmp4.i.i.us.1.1 = icmp sgt i32 %19, %conv.i.i.us.1.1
  %cmp7.i.i.us.1.1 = icmp sgt i32 %conv.i.i.us.1.1, 0
  %or.cond.i.i.us.1.1 = and i1 %cmp4.i.i.us.1.1, %cmp7.i.i.us.1.1
  br i1 %or.cond.i.i.us.1.1, label %if.then.i.i.us.1.1, label %if.end.i.i.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.i.i.us.1.1
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph57, %pregion_for_end.i.i
  %252 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.2 = or i32 %252, 2
  %cmp.i.i.2 = icmp sgt i32 %15, %conv2.i.i.2
  %mul.i.i.2 = mul nsw i32 %19, %conv2.i.i.2
  br i1 %cmp.i.i.2, label %vector.scevcheck81, label %pregion_for_end.i.i.2

vector.scevcheck81:                               ; preds = %pregion_for_end.i.i.1
  %253 = mul i32 %19, %conv2.i.i.2
  %254 = trunc i64 %2 to i32
  %255 = shl i32 %254, 5
  %256 = add i32 %253, %255
  %257 = icmp sgt i32 %256, 2147483616
  %258 = add i32 %253, %255
  %259 = add i32 %258, -1
  %260 = add i32 %258, 30
  %261 = icmp slt i32 %260, %259
  %262 = or i1 %257, %261
  br i1 %262, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.memcheck103

pregion_for_entry.entry.i.i.us.2.preheader:       ; preds = %vector.memcheck103, %vector.scevcheck81
  br label %pregion_for_entry.entry.i.i.us.2

vector.memcheck103:                               ; preds = %vector.scevcheck81
  %263 = mul i32 %19, %conv2.i.i.2
  %264 = trunc i64 %2 to i32
  %265 = shl i32 %264, 5
  %266 = add i32 %263, %265
  %267 = sext i32 %266 to i64
  %scevgep83 = getelementptr float, float* %7, i64 %267
  %268 = add nsw i64 %267, 32
  %scevgep85 = getelementptr float, float* %7, i64 %268
  %269 = add i32 %263, %265
  %270 = add i32 %269, -2
  %271 = sext i32 %270 to i64
  %272 = add nuw nsw i64 %271, 1
  %scevgep87 = getelementptr float, float* %11, i64 %272
  %273 = add nsw i64 %271, 33
  %scevgep89 = getelementptr float, float* %11, i64 %273
  %scevgep91 = getelementptr float, float* %11, i64 %267
  %scevgep93 = getelementptr float, float* %11, i64 %268
  %bound095 = icmp ult float* %scevgep83, %scevgep89
  %bound196 = icmp ult float* %scevgep87, %scevgep85
  %found.conflict97 = and i1 %bound095, %bound196
  %bound098 = icmp ult float* %scevgep83, %scevgep93
  %bound199 = icmp ult float* %scevgep91, %scevgep85
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx101 = or i1 %found.conflict97, %found.conflict100
  br i1 %conflict.rdx101, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck103
  %broadcast.splatinsert111 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat112 = shufflevector <8 x i64> %broadcast.splatinsert111, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <8 x i32> undef, i32 %19, i32 0
  %broadcast.splat114 = shufflevector <8 x i32> %broadcast.splatinsert113, <8 x i32> undef, <8 x i32> zeroinitializer
  %274 = trunc <8 x i64> %broadcast.splat112 to <8 x i32>
  %275 = or <8 x i32> %274, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %276 = icmp sgt <8 x i32> %broadcast.splat114, %275
  %277 = icmp sgt <8 x i32> %275, zeroinitializer
  %278 = and <8 x i1> %276, %277
  %279 = extractelement <8 x i32> %275, i32 0
  %280 = add i32 %mul.i.i.2, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds float, float* %7, i64 %281
  %283 = bitcast float* %282 to <8 x float>*
  %wide.masked.load115 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %283, i32 4, <8 x i1> %278, <8 x float> undef), !tbaa !12, !alias.scope !109, !noalias !112
  %284 = fpext <8 x float> %wide.masked.load115 to <8 x double>
  %285 = getelementptr inbounds float, float* %11, i64 %281
  %286 = bitcast float* %285 to <8 x float>*
  %wide.masked.load116 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %286, i32 4, <8 x i1> %278, <8 x float> undef), !tbaa !12, !alias.scope !115
  %287 = add i32 %280, -1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float* %11, i64 %288
  %290 = bitcast float* %289 to <8 x float>*
  %wide.masked.load117 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %290, i32 4, <8 x i1> %278, <8 x float> undef), !tbaa !12, !alias.scope !116
  %291 = fsub <8 x float> %wide.masked.load116, %wide.masked.load117
  %292 = fpext <8 x float> %291 to <8 x double>
  %293 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %292, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %284)
  %294 = fptrunc <8 x double> %293 to <8 x float>
  %295 = bitcast float* %282 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %294, <8 x float>* %295, i32 4, <8 x i1> %278), !tbaa !12, !alias.scope !109, !noalias !112, !llvm.access.group !24
  %296 = trunc <8 x i64> %broadcast.splat112 to <8 x i32>
  %297 = or <8 x i32> %296, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %298 = icmp sgt <8 x i32> %broadcast.splat114, %297
  %299 = icmp sgt <8 x i32> %297, zeroinitializer
  %300 = and <8 x i1> %298, %299
  %301 = extractelement <8 x i32> %297, i32 0
  %302 = add i32 %mul.i.i.2, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %7, i64 %303
  %305 = bitcast float* %304 to <8 x float>*
  %wide.masked.load115.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %305, i32 4, <8 x i1> %300, <8 x float> undef), !tbaa !12, !alias.scope !109, !noalias !112
  %306 = fpext <8 x float> %wide.masked.load115.1 to <8 x double>
  %307 = getelementptr inbounds float, float* %11, i64 %303
  %308 = bitcast float* %307 to <8 x float>*
  %wide.masked.load116.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %308, i32 4, <8 x i1> %300, <8 x float> undef), !tbaa !12, !alias.scope !115
  %309 = add i32 %302, -1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds float, float* %11, i64 %310
  %312 = bitcast float* %311 to <8 x float>*
  %wide.masked.load117.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %312, i32 4, <8 x i1> %300, <8 x float> undef), !tbaa !12, !alias.scope !116
  %313 = fsub <8 x float> %wide.masked.load116.1, %wide.masked.load117.1
  %314 = fpext <8 x float> %313 to <8 x double>
  %315 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %314, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %306)
  %316 = fptrunc <8 x double> %315 to <8 x float>
  %317 = bitcast float* %304 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %316, <8 x float>* %317, i32 4, <8 x i1> %300), !tbaa !12, !alias.scope !109, !noalias !112, !llvm.access.group !24
  %318 = trunc <8 x i64> %broadcast.splat112 to <8 x i32>
  %319 = or <8 x i32> %318, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %320 = icmp sgt <8 x i32> %broadcast.splat114, %319
  %321 = icmp sgt <8 x i32> %319, zeroinitializer
  %322 = and <8 x i1> %320, %321
  %323 = extractelement <8 x i32> %319, i32 0
  %324 = add i32 %mul.i.i.2, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds float, float* %7, i64 %325
  %327 = bitcast float* %326 to <8 x float>*
  %wide.masked.load115.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %327, i32 4, <8 x i1> %322, <8 x float> undef), !tbaa !12, !alias.scope !109, !noalias !112
  %328 = fpext <8 x float> %wide.masked.load115.2 to <8 x double>
  %329 = getelementptr inbounds float, float* %11, i64 %325
  %330 = bitcast float* %329 to <8 x float>*
  %wide.masked.load116.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %330, i32 4, <8 x i1> %322, <8 x float> undef), !tbaa !12, !alias.scope !115
  %331 = add i32 %324, -1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds float, float* %11, i64 %332
  %334 = bitcast float* %333 to <8 x float>*
  %wide.masked.load117.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %334, i32 4, <8 x i1> %322, <8 x float> undef), !tbaa !12, !alias.scope !116
  %335 = fsub <8 x float> %wide.masked.load116.2, %wide.masked.load117.2
  %336 = fpext <8 x float> %335 to <8 x double>
  %337 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %336, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %328)
  %338 = fptrunc <8 x double> %337 to <8 x float>
  %339 = bitcast float* %326 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %338, <8 x float>* %339, i32 4, <8 x i1> %322), !tbaa !12, !alias.scope !109, !noalias !112, !llvm.access.group !24
  %340 = trunc <8 x i64> %broadcast.splat112 to <8 x i32>
  %341 = or <8 x i32> %340, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %342 = icmp sgt <8 x i32> %broadcast.splat114, %341
  %343 = icmp sgt <8 x i32> %341, zeroinitializer
  %344 = and <8 x i1> %342, %343
  %345 = extractelement <8 x i32> %341, i32 0
  %346 = add i32 %mul.i.i.2, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds float, float* %7, i64 %347
  %349 = bitcast float* %348 to <8 x float>*
  %wide.masked.load115.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %349, i32 4, <8 x i1> %344, <8 x float> undef), !tbaa !12, !alias.scope !109, !noalias !112
  %350 = fpext <8 x float> %wide.masked.load115.3 to <8 x double>
  %351 = getelementptr inbounds float, float* %11, i64 %347
  %352 = bitcast float* %351 to <8 x float>*
  %wide.masked.load116.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %352, i32 4, <8 x i1> %344, <8 x float> undef), !tbaa !12, !alias.scope !115
  %353 = add i32 %346, -1
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds float, float* %11, i64 %354
  %356 = bitcast float* %355 to <8 x float>*
  %wide.masked.load117.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %356, i32 4, <8 x i1> %344, <8 x float> undef), !tbaa !12, !alias.scope !116
  %357 = fsub <8 x float> %wide.masked.load116.3, %wide.masked.load117.3
  %358 = fpext <8 x float> %357 to <8 x double>
  %359 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %358, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %350)
  %360 = fptrunc <8 x double> %359 to <8 x float>
  %361 = bitcast float* %348 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %360, <8 x float>* %361, i32 4, <8 x i1> %344), !tbaa !12, !alias.scope !109, !noalias !112, !llvm.access.group !24
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.2:                 ; preds = %if.end.i.i.us.2.1, %pregion_for_entry.entry.i.i.us.2.preheader
  %_local_id_x.i.0.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.2.preheader ], [ %968, %if.end.i.i.us.2.1 ]
  %add1.i.i.i.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.2, %mul.i.i.i
  %conv.i.i.us.2 = trunc i64 %add1.i.i.i.us.2 to i32
  %cmp4.i.i.us.2 = icmp sgt i32 %19, %conv.i.i.us.2
  %cmp7.i.i.us.2 = icmp sgt i32 %conv.i.i.us.2, 0
  %or.cond.i.i.us.2 = and i1 %cmp4.i.i.us.2, %cmp7.i.i.us.2
  br i1 %or.cond.i.i.us.2, label %if.then.i.i.us.2, label %if.end.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %pregion_for_entry.entry.i.i.us.2
  %add.i.i.us.2 = add i32 %mul.i.i.2, %conv.i.i.us.2
  %idxprom.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.2
  %362 = load float, float* %arrayidx.i.i.us.2, align 4, !tbaa !12
  %conv9.i.i.us.2 = fpext float %362 to double
  %arrayidx13.i.i.us.2 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.2
  %363 = load float, float* %arrayidx13.i.i.us.2, align 4, !tbaa !12
  %add15.i.i.us.2 = add i32 %add.i.i.us.2, -1
  %idxprom16.i.i.us.2 = sext i32 %add15.i.i.us.2 to i64
  %arrayidx17.i.i.us.2 = getelementptr inbounds float, float* %11, i64 %idxprom16.i.i.us.2
  %364 = load float, float* %arrayidx17.i.i.us.2, align 4, !tbaa !12
  %sub18.i.i.us.2 = fsub float %363, %364
  %conv19.i.i.us.2 = fpext float %sub18.i.i.us.2 to double
  %365 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.2, double -5.000000e-01, double %conv9.i.i.us.2) #5
  %conv21.i.i.us.2 = fptrunc double %365 to float
  store float %conv21.i.i.us.2, float* %arrayidx.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.2

if.end.i.i.us.2:                                  ; preds = %if.then.i.i.us.2, %pregion_for_entry.entry.i.i.us.2
  %366 = or i64 %_local_id_x.i.0.us.2, 1
  %add1.i.i.i.us.2.1 = add nuw nsw i64 %366, %mul.i.i.i
  %conv.i.i.us.2.1 = trunc i64 %add1.i.i.i.us.2.1 to i32
  %cmp4.i.i.us.2.1 = icmp sgt i32 %19, %conv.i.i.us.2.1
  %cmp7.i.i.us.2.1 = icmp sgt i32 %conv.i.i.us.2.1, 0
  %or.cond.i.i.us.2.1 = and i1 %cmp4.i.i.us.2.1, %cmp7.i.i.us.2.1
  br i1 %or.cond.i.i.us.2.1, label %if.then.i.i.us.2.1, label %if.end.i.i.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.i.i.us.2.1
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph104, %pregion_for_end.i.i.1
  %367 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.3 = or i32 %367, 3
  %cmp.i.i.3 = icmp sgt i32 %15, %conv2.i.i.3
  %mul.i.i.3 = mul nsw i32 %19, %conv2.i.i.3
  br i1 %cmp.i.i.3, label %vector.scevcheck128, label %pregion_for_end.i.i.3

vector.scevcheck128:                              ; preds = %pregion_for_end.i.i.2
  %368 = mul i32 %19, %conv2.i.i.3
  %369 = trunc i64 %2 to i32
  %370 = shl i32 %369, 5
  %371 = add i32 %368, %370
  %372 = icmp sgt i32 %371, 2147483616
  %373 = add i32 %368, %370
  %374 = add i32 %373, -1
  %375 = add i32 %373, 30
  %376 = icmp slt i32 %375, %374
  %377 = or i1 %372, %376
  br i1 %377, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.memcheck150

pregion_for_entry.entry.i.i.us.3.preheader:       ; preds = %vector.memcheck150, %vector.scevcheck128
  br label %pregion_for_entry.entry.i.i.us.3

vector.memcheck150:                               ; preds = %vector.scevcheck128
  %378 = mul i32 %19, %conv2.i.i.3
  %379 = trunc i64 %2 to i32
  %380 = shl i32 %379, 5
  %381 = add i32 %378, %380
  %382 = sext i32 %381 to i64
  %scevgep130 = getelementptr float, float* %7, i64 %382
  %383 = add nsw i64 %382, 32
  %scevgep132 = getelementptr float, float* %7, i64 %383
  %384 = add i32 %378, %380
  %385 = add i32 %384, -1
  %386 = sext i32 %385 to i64
  %scevgep134 = getelementptr float, float* %11, i64 %386
  %387 = add nsw i64 %386, 32
  %scevgep136 = getelementptr float, float* %11, i64 %387
  %scevgep138 = getelementptr float, float* %11, i64 %382
  %scevgep140 = getelementptr float, float* %11, i64 %383
  %bound0142 = icmp ult float* %scevgep130, %scevgep136
  %bound1143 = icmp ult float* %scevgep134, %scevgep132
  %found.conflict144 = and i1 %bound0142, %bound1143
  %bound0145 = icmp ult float* %scevgep130, %scevgep140
  %bound1146 = icmp ult float* %scevgep138, %scevgep132
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx148 = or i1 %found.conflict144, %found.conflict147
  br i1 %conflict.rdx148, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck150
  %broadcast.splatinsert158 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat159 = shufflevector <8 x i64> %broadcast.splatinsert158, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert160 = insertelement <8 x i32> undef, i32 %19, i32 0
  %broadcast.splat161 = shufflevector <8 x i32> %broadcast.splatinsert160, <8 x i32> undef, <8 x i32> zeroinitializer
  %388 = trunc <8 x i64> %broadcast.splat159 to <8 x i32>
  %389 = or <8 x i32> %388, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %390 = icmp sgt <8 x i32> %broadcast.splat161, %389
  %391 = icmp sgt <8 x i32> %389, zeroinitializer
  %392 = and <8 x i1> %390, %391
  %393 = extractelement <8 x i32> %389, i32 0
  %394 = add i32 %mul.i.i.3, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds float, float* %7, i64 %395
  %397 = bitcast float* %396 to <8 x float>*
  %wide.masked.load162 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %397, i32 4, <8 x i1> %392, <8 x float> undef), !tbaa !12, !alias.scope !117, !noalias !120
  %398 = fpext <8 x float> %wide.masked.load162 to <8 x double>
  %399 = getelementptr inbounds float, float* %11, i64 %395
  %400 = bitcast float* %399 to <8 x float>*
  %wide.masked.load163 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %400, i32 4, <8 x i1> %392, <8 x float> undef), !tbaa !12, !alias.scope !123
  %401 = add i32 %394, -1
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds float, float* %11, i64 %402
  %404 = bitcast float* %403 to <8 x float>*
  %wide.masked.load164 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %404, i32 4, <8 x i1> %392, <8 x float> undef), !tbaa !12, !alias.scope !124
  %405 = fsub <8 x float> %wide.masked.load163, %wide.masked.load164
  %406 = fpext <8 x float> %405 to <8 x double>
  %407 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %406, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %398)
  %408 = fptrunc <8 x double> %407 to <8 x float>
  %409 = bitcast float* %396 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %408, <8 x float>* %409, i32 4, <8 x i1> %392), !tbaa !12, !alias.scope !117, !noalias !120, !llvm.access.group !24
  %410 = trunc <8 x i64> %broadcast.splat159 to <8 x i32>
  %411 = or <8 x i32> %410, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %412 = icmp sgt <8 x i32> %broadcast.splat161, %411
  %413 = icmp sgt <8 x i32> %411, zeroinitializer
  %414 = and <8 x i1> %412, %413
  %415 = extractelement <8 x i32> %411, i32 0
  %416 = add i32 %mul.i.i.3, %415
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds float, float* %7, i64 %417
  %419 = bitcast float* %418 to <8 x float>*
  %wide.masked.load162.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %419, i32 4, <8 x i1> %414, <8 x float> undef), !tbaa !12, !alias.scope !117, !noalias !120
  %420 = fpext <8 x float> %wide.masked.load162.1 to <8 x double>
  %421 = getelementptr inbounds float, float* %11, i64 %417
  %422 = bitcast float* %421 to <8 x float>*
  %wide.masked.load163.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %422, i32 4, <8 x i1> %414, <8 x float> undef), !tbaa !12, !alias.scope !123
  %423 = add i32 %416, -1
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds float, float* %11, i64 %424
  %426 = bitcast float* %425 to <8 x float>*
  %wide.masked.load164.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %426, i32 4, <8 x i1> %414, <8 x float> undef), !tbaa !12, !alias.scope !124
  %427 = fsub <8 x float> %wide.masked.load163.1, %wide.masked.load164.1
  %428 = fpext <8 x float> %427 to <8 x double>
  %429 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %428, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %420)
  %430 = fptrunc <8 x double> %429 to <8 x float>
  %431 = bitcast float* %418 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %430, <8 x float>* %431, i32 4, <8 x i1> %414), !tbaa !12, !alias.scope !117, !noalias !120, !llvm.access.group !24
  %432 = trunc <8 x i64> %broadcast.splat159 to <8 x i32>
  %433 = or <8 x i32> %432, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %434 = icmp sgt <8 x i32> %broadcast.splat161, %433
  %435 = icmp sgt <8 x i32> %433, zeroinitializer
  %436 = and <8 x i1> %434, %435
  %437 = extractelement <8 x i32> %433, i32 0
  %438 = add i32 %mul.i.i.3, %437
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds float, float* %7, i64 %439
  %441 = bitcast float* %440 to <8 x float>*
  %wide.masked.load162.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %441, i32 4, <8 x i1> %436, <8 x float> undef), !tbaa !12, !alias.scope !117, !noalias !120
  %442 = fpext <8 x float> %wide.masked.load162.2 to <8 x double>
  %443 = getelementptr inbounds float, float* %11, i64 %439
  %444 = bitcast float* %443 to <8 x float>*
  %wide.masked.load163.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %444, i32 4, <8 x i1> %436, <8 x float> undef), !tbaa !12, !alias.scope !123
  %445 = add i32 %438, -1
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds float, float* %11, i64 %446
  %448 = bitcast float* %447 to <8 x float>*
  %wide.masked.load164.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %448, i32 4, <8 x i1> %436, <8 x float> undef), !tbaa !12, !alias.scope !124
  %449 = fsub <8 x float> %wide.masked.load163.2, %wide.masked.load164.2
  %450 = fpext <8 x float> %449 to <8 x double>
  %451 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %450, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %442)
  %452 = fptrunc <8 x double> %451 to <8 x float>
  %453 = bitcast float* %440 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %452, <8 x float>* %453, i32 4, <8 x i1> %436), !tbaa !12, !alias.scope !117, !noalias !120, !llvm.access.group !24
  %454 = trunc <8 x i64> %broadcast.splat159 to <8 x i32>
  %455 = or <8 x i32> %454, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %456 = icmp sgt <8 x i32> %broadcast.splat161, %455
  %457 = icmp sgt <8 x i32> %455, zeroinitializer
  %458 = and <8 x i1> %456, %457
  %459 = extractelement <8 x i32> %455, i32 0
  %460 = add i32 %mul.i.i.3, %459
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds float, float* %7, i64 %461
  %463 = bitcast float* %462 to <8 x float>*
  %wide.masked.load162.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %463, i32 4, <8 x i1> %458, <8 x float> undef), !tbaa !12, !alias.scope !117, !noalias !120
  %464 = fpext <8 x float> %wide.masked.load162.3 to <8 x double>
  %465 = getelementptr inbounds float, float* %11, i64 %461
  %466 = bitcast float* %465 to <8 x float>*
  %wide.masked.load163.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %466, i32 4, <8 x i1> %458, <8 x float> undef), !tbaa !12, !alias.scope !123
  %467 = add i32 %460, -1
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds float, float* %11, i64 %468
  %470 = bitcast float* %469 to <8 x float>*
  %wide.masked.load164.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %470, i32 4, <8 x i1> %458, <8 x float> undef), !tbaa !12, !alias.scope !124
  %471 = fsub <8 x float> %wide.masked.load163.3, %wide.masked.load164.3
  %472 = fpext <8 x float> %471 to <8 x double>
  %473 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %472, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %464)
  %474 = fptrunc <8 x double> %473 to <8 x float>
  %475 = bitcast float* %462 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %474, <8 x float>* %475, i32 4, <8 x i1> %458), !tbaa !12, !alias.scope !117, !noalias !120, !llvm.access.group !24
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.3:                 ; preds = %if.end.i.i.us.3.1, %pregion_for_entry.entry.i.i.us.3.preheader
  %_local_id_x.i.0.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.3.preheader ], [ %963, %if.end.i.i.us.3.1 ]
  %add1.i.i.i.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.3, %mul.i.i.i
  %conv.i.i.us.3 = trunc i64 %add1.i.i.i.us.3 to i32
  %cmp4.i.i.us.3 = icmp sgt i32 %19, %conv.i.i.us.3
  %cmp7.i.i.us.3 = icmp sgt i32 %conv.i.i.us.3, 0
  %or.cond.i.i.us.3 = and i1 %cmp4.i.i.us.3, %cmp7.i.i.us.3
  br i1 %or.cond.i.i.us.3, label %if.then.i.i.us.3, label %if.end.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %pregion_for_entry.entry.i.i.us.3
  %add.i.i.us.3 = add i32 %mul.i.i.3, %conv.i.i.us.3
  %idxprom.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.3
  %476 = load float, float* %arrayidx.i.i.us.3, align 4, !tbaa !12
  %conv9.i.i.us.3 = fpext float %476 to double
  %arrayidx13.i.i.us.3 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.3
  %477 = load float, float* %arrayidx13.i.i.us.3, align 4, !tbaa !12
  %add15.i.i.us.3 = add i32 %add.i.i.us.3, -1
  %idxprom16.i.i.us.3 = sext i32 %add15.i.i.us.3 to i64
  %arrayidx17.i.i.us.3 = getelementptr inbounds float, float* %11, i64 %idxprom16.i.i.us.3
  %478 = load float, float* %arrayidx17.i.i.us.3, align 4, !tbaa !12
  %sub18.i.i.us.3 = fsub float %477, %478
  %conv19.i.i.us.3 = fpext float %sub18.i.i.us.3 to double
  %479 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.3, double -5.000000e-01, double %conv9.i.i.us.3) #5
  %conv21.i.i.us.3 = fptrunc double %479 to float
  store float %conv21.i.i.us.3, float* %arrayidx.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.3

if.end.i.i.us.3:                                  ; preds = %if.then.i.i.us.3, %pregion_for_entry.entry.i.i.us.3
  %480 = or i64 %_local_id_x.i.0.us.3, 1
  %add1.i.i.i.us.3.1 = add nuw nsw i64 %480, %mul.i.i.i
  %conv.i.i.us.3.1 = trunc i64 %add1.i.i.i.us.3.1 to i32
  %cmp4.i.i.us.3.1 = icmp sgt i32 %19, %conv.i.i.us.3.1
  %cmp7.i.i.us.3.1 = icmp sgt i32 %conv.i.i.us.3.1, 0
  %or.cond.i.i.us.3.1 = and i1 %cmp4.i.i.us.3.1, %cmp7.i.i.us.3.1
  br i1 %or.cond.i.i.us.3.1, label %if.then.i.i.us.3.1, label %if.end.i.i.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.i.i.us.3.1
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph151, %pregion_for_end.i.i.2
  %481 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.4 = or i32 %481, 4
  %cmp.i.i.4 = icmp sgt i32 %15, %conv2.i.i.4
  %mul.i.i.4 = mul nsw i32 %19, %conv2.i.i.4
  br i1 %cmp.i.i.4, label %vector.scevcheck175, label %pregion_for_end.i.i.4

vector.scevcheck175:                              ; preds = %pregion_for_end.i.i.3
  %482 = mul i32 %19, %conv2.i.i.4
  %483 = trunc i64 %2 to i32
  %484 = shl i32 %483, 5
  %485 = add i32 %482, %484
  %486 = icmp sgt i32 %485, 2147483616
  %487 = add i32 %482, %484
  %488 = add i32 %487, -1
  %489 = add i32 %487, 30
  %490 = icmp slt i32 %489, %488
  %491 = or i1 %486, %490
  br i1 %491, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.memcheck197

pregion_for_entry.entry.i.i.us.4.preheader:       ; preds = %vector.memcheck197, %vector.scevcheck175
  br label %pregion_for_entry.entry.i.i.us.4

vector.memcheck197:                               ; preds = %vector.scevcheck175
  %492 = mul i32 %19, %conv2.i.i.4
  %493 = trunc i64 %2 to i32
  %494 = shl i32 %493, 5
  %495 = add i32 %492, %494
  %496 = sext i32 %495 to i64
  %scevgep177 = getelementptr float, float* %7, i64 %496
  %497 = add nsw i64 %496, 32
  %scevgep179 = getelementptr float, float* %7, i64 %497
  %498 = add i32 %492, %494
  %499 = add i32 %498, -4
  %500 = sext i32 %499 to i64
  %501 = add nuw nsw i64 %500, 3
  %scevgep181 = getelementptr float, float* %11, i64 %501
  %502 = add nsw i64 %500, 35
  %scevgep183 = getelementptr float, float* %11, i64 %502
  %scevgep185 = getelementptr float, float* %11, i64 %496
  %scevgep187 = getelementptr float, float* %11, i64 %497
  %bound0189 = icmp ult float* %scevgep177, %scevgep183
  %bound1190 = icmp ult float* %scevgep181, %scevgep179
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0192 = icmp ult float* %scevgep177, %scevgep187
  %bound1193 = icmp ult float* %scevgep185, %scevgep179
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %found.conflict191, %found.conflict194
  br i1 %conflict.rdx195, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.ph198

vector.ph198:                                     ; preds = %vector.memcheck197
  %broadcast.splatinsert205 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat206 = shufflevector <8 x i64> %broadcast.splatinsert205, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert207 = insertelement <8 x i32> undef, i32 %19, i32 0
  %broadcast.splat208 = shufflevector <8 x i32> %broadcast.splatinsert207, <8 x i32> undef, <8 x i32> zeroinitializer
  %503 = trunc <8 x i64> %broadcast.splat206 to <8 x i32>
  %504 = or <8 x i32> %503, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %505 = icmp sgt <8 x i32> %broadcast.splat208, %504
  %506 = icmp sgt <8 x i32> %504, zeroinitializer
  %507 = and <8 x i1> %505, %506
  %508 = extractelement <8 x i32> %504, i32 0
  %509 = add i32 %mul.i.i.4, %508
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds float, float* %7, i64 %510
  %512 = bitcast float* %511 to <8 x float>*
  %wide.masked.load209 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %512, i32 4, <8 x i1> %507, <8 x float> undef), !tbaa !12, !alias.scope !125, !noalias !128
  %513 = fpext <8 x float> %wide.masked.load209 to <8 x double>
  %514 = getelementptr inbounds float, float* %11, i64 %510
  %515 = bitcast float* %514 to <8 x float>*
  %wide.masked.load210 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %515, i32 4, <8 x i1> %507, <8 x float> undef), !tbaa !12, !alias.scope !131
  %516 = add i32 %509, -1
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds float, float* %11, i64 %517
  %519 = bitcast float* %518 to <8 x float>*
  %wide.masked.load211 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %519, i32 4, <8 x i1> %507, <8 x float> undef), !tbaa !12, !alias.scope !132
  %520 = fsub <8 x float> %wide.masked.load210, %wide.masked.load211
  %521 = fpext <8 x float> %520 to <8 x double>
  %522 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %521, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %513)
  %523 = fptrunc <8 x double> %522 to <8 x float>
  %524 = bitcast float* %511 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %523, <8 x float>* %524, i32 4, <8 x i1> %507), !tbaa !12, !alias.scope !125, !noalias !128, !llvm.access.group !24
  %525 = trunc <8 x i64> %broadcast.splat206 to <8 x i32>
  %526 = or <8 x i32> %525, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %527 = icmp sgt <8 x i32> %broadcast.splat208, %526
  %528 = icmp sgt <8 x i32> %526, zeroinitializer
  %529 = and <8 x i1> %527, %528
  %530 = extractelement <8 x i32> %526, i32 0
  %531 = add i32 %mul.i.i.4, %530
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds float, float* %7, i64 %532
  %534 = bitcast float* %533 to <8 x float>*
  %wide.masked.load209.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %534, i32 4, <8 x i1> %529, <8 x float> undef), !tbaa !12, !alias.scope !125, !noalias !128
  %535 = fpext <8 x float> %wide.masked.load209.1 to <8 x double>
  %536 = getelementptr inbounds float, float* %11, i64 %532
  %537 = bitcast float* %536 to <8 x float>*
  %wide.masked.load210.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %537, i32 4, <8 x i1> %529, <8 x float> undef), !tbaa !12, !alias.scope !131
  %538 = add i32 %531, -1
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds float, float* %11, i64 %539
  %541 = bitcast float* %540 to <8 x float>*
  %wide.masked.load211.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %541, i32 4, <8 x i1> %529, <8 x float> undef), !tbaa !12, !alias.scope !132
  %542 = fsub <8 x float> %wide.masked.load210.1, %wide.masked.load211.1
  %543 = fpext <8 x float> %542 to <8 x double>
  %544 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %543, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %535)
  %545 = fptrunc <8 x double> %544 to <8 x float>
  %546 = bitcast float* %533 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %545, <8 x float>* %546, i32 4, <8 x i1> %529), !tbaa !12, !alias.scope !125, !noalias !128, !llvm.access.group !24
  %547 = trunc <8 x i64> %broadcast.splat206 to <8 x i32>
  %548 = or <8 x i32> %547, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %549 = icmp sgt <8 x i32> %broadcast.splat208, %548
  %550 = icmp sgt <8 x i32> %548, zeroinitializer
  %551 = and <8 x i1> %549, %550
  %552 = extractelement <8 x i32> %548, i32 0
  %553 = add i32 %mul.i.i.4, %552
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds float, float* %7, i64 %554
  %556 = bitcast float* %555 to <8 x float>*
  %wide.masked.load209.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %556, i32 4, <8 x i1> %551, <8 x float> undef), !tbaa !12, !alias.scope !125, !noalias !128
  %557 = fpext <8 x float> %wide.masked.load209.2 to <8 x double>
  %558 = getelementptr inbounds float, float* %11, i64 %554
  %559 = bitcast float* %558 to <8 x float>*
  %wide.masked.load210.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %559, i32 4, <8 x i1> %551, <8 x float> undef), !tbaa !12, !alias.scope !131
  %560 = add i32 %553, -1
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds float, float* %11, i64 %561
  %563 = bitcast float* %562 to <8 x float>*
  %wide.masked.load211.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %563, i32 4, <8 x i1> %551, <8 x float> undef), !tbaa !12, !alias.scope !132
  %564 = fsub <8 x float> %wide.masked.load210.2, %wide.masked.load211.2
  %565 = fpext <8 x float> %564 to <8 x double>
  %566 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %565, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %557)
  %567 = fptrunc <8 x double> %566 to <8 x float>
  %568 = bitcast float* %555 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %567, <8 x float>* %568, i32 4, <8 x i1> %551), !tbaa !12, !alias.scope !125, !noalias !128, !llvm.access.group !24
  %569 = trunc <8 x i64> %broadcast.splat206 to <8 x i32>
  %570 = or <8 x i32> %569, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %571 = icmp sgt <8 x i32> %broadcast.splat208, %570
  %572 = icmp sgt <8 x i32> %570, zeroinitializer
  %573 = and <8 x i1> %571, %572
  %574 = extractelement <8 x i32> %570, i32 0
  %575 = add i32 %mul.i.i.4, %574
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds float, float* %7, i64 %576
  %578 = bitcast float* %577 to <8 x float>*
  %wide.masked.load209.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %578, i32 4, <8 x i1> %573, <8 x float> undef), !tbaa !12, !alias.scope !125, !noalias !128
  %579 = fpext <8 x float> %wide.masked.load209.3 to <8 x double>
  %580 = getelementptr inbounds float, float* %11, i64 %576
  %581 = bitcast float* %580 to <8 x float>*
  %wide.masked.load210.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %581, i32 4, <8 x i1> %573, <8 x float> undef), !tbaa !12, !alias.scope !131
  %582 = add i32 %575, -1
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds float, float* %11, i64 %583
  %585 = bitcast float* %584 to <8 x float>*
  %wide.masked.load211.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %585, i32 4, <8 x i1> %573, <8 x float> undef), !tbaa !12, !alias.scope !132
  %586 = fsub <8 x float> %wide.masked.load210.3, %wide.masked.load211.3
  %587 = fpext <8 x float> %586 to <8 x double>
  %588 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %587, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %579)
  %589 = fptrunc <8 x double> %588 to <8 x float>
  %590 = bitcast float* %577 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %589, <8 x float>* %590, i32 4, <8 x i1> %573), !tbaa !12, !alias.scope !125, !noalias !128, !llvm.access.group !24
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.4:                 ; preds = %if.end.i.i.us.4.1, %pregion_for_entry.entry.i.i.us.4.preheader
  %_local_id_x.i.0.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.4.preheader ], [ %958, %if.end.i.i.us.4.1 ]
  %add1.i.i.i.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.4, %mul.i.i.i
  %conv.i.i.us.4 = trunc i64 %add1.i.i.i.us.4 to i32
  %cmp4.i.i.us.4 = icmp sgt i32 %19, %conv.i.i.us.4
  %cmp7.i.i.us.4 = icmp sgt i32 %conv.i.i.us.4, 0
  %or.cond.i.i.us.4 = and i1 %cmp4.i.i.us.4, %cmp7.i.i.us.4
  br i1 %or.cond.i.i.us.4, label %if.then.i.i.us.4, label %if.end.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %pregion_for_entry.entry.i.i.us.4
  %add.i.i.us.4 = add i32 %mul.i.i.4, %conv.i.i.us.4
  %idxprom.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.4
  %591 = load float, float* %arrayidx.i.i.us.4, align 4, !tbaa !12
  %conv9.i.i.us.4 = fpext float %591 to double
  %arrayidx13.i.i.us.4 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.4
  %592 = load float, float* %arrayidx13.i.i.us.4, align 4, !tbaa !12
  %add15.i.i.us.4 = add i32 %add.i.i.us.4, -1
  %idxprom16.i.i.us.4 = sext i32 %add15.i.i.us.4 to i64
  %arrayidx17.i.i.us.4 = getelementptr inbounds float, float* %11, i64 %idxprom16.i.i.us.4
  %593 = load float, float* %arrayidx17.i.i.us.4, align 4, !tbaa !12
  %sub18.i.i.us.4 = fsub float %592, %593
  %conv19.i.i.us.4 = fpext float %sub18.i.i.us.4 to double
  %594 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.4, double -5.000000e-01, double %conv9.i.i.us.4) #5
  %conv21.i.i.us.4 = fptrunc double %594 to float
  store float %conv21.i.i.us.4, float* %arrayidx.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.4

if.end.i.i.us.4:                                  ; preds = %if.then.i.i.us.4, %pregion_for_entry.entry.i.i.us.4
  %595 = or i64 %_local_id_x.i.0.us.4, 1
  %add1.i.i.i.us.4.1 = add nuw nsw i64 %595, %mul.i.i.i
  %conv.i.i.us.4.1 = trunc i64 %add1.i.i.i.us.4.1 to i32
  %cmp4.i.i.us.4.1 = icmp sgt i32 %19, %conv.i.i.us.4.1
  %cmp7.i.i.us.4.1 = icmp sgt i32 %conv.i.i.us.4.1, 0
  %or.cond.i.i.us.4.1 = and i1 %cmp4.i.i.us.4.1, %cmp7.i.i.us.4.1
  br i1 %or.cond.i.i.us.4.1, label %if.then.i.i.us.4.1, label %if.end.i.i.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.i.i.us.4.1
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph198, %pregion_for_end.i.i.3
  %596 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.5 = or i32 %596, 5
  %cmp.i.i.5 = icmp sgt i32 %15, %conv2.i.i.5
  %mul.i.i.5 = mul nsw i32 %19, %conv2.i.i.5
  br i1 %cmp.i.i.5, label %vector.scevcheck222, label %pregion_for_end.i.i.5

vector.scevcheck222:                              ; preds = %pregion_for_end.i.i.4
  %597 = mul i32 %19, %conv2.i.i.5
  %598 = trunc i64 %2 to i32
  %599 = shl i32 %598, 5
  %600 = add i32 %597, %599
  %601 = icmp sgt i32 %600, 2147483616
  %602 = add i32 %597, %599
  %603 = add i32 %602, -1
  %604 = add i32 %602, 30
  %605 = icmp slt i32 %604, %603
  %606 = or i1 %601, %605
  br i1 %606, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.memcheck244

pregion_for_entry.entry.i.i.us.5.preheader:       ; preds = %vector.memcheck244, %vector.scevcheck222
  br label %pregion_for_entry.entry.i.i.us.5

vector.memcheck244:                               ; preds = %vector.scevcheck222
  %607 = mul i32 %19, %conv2.i.i.5
  %608 = trunc i64 %2 to i32
  %609 = shl i32 %608, 5
  %610 = add i32 %607, %609
  %611 = sext i32 %610 to i64
  %scevgep224 = getelementptr float, float* %7, i64 %611
  %612 = add nsw i64 %611, 32
  %scevgep226 = getelementptr float, float* %7, i64 %612
  %613 = add i32 %607, %609
  %614 = add i32 %613, -1
  %615 = sext i32 %614 to i64
  %scevgep228 = getelementptr float, float* %11, i64 %615
  %616 = add nsw i64 %615, 32
  %scevgep230 = getelementptr float, float* %11, i64 %616
  %scevgep232 = getelementptr float, float* %11, i64 %611
  %scevgep234 = getelementptr float, float* %11, i64 %612
  %bound0236 = icmp ult float* %scevgep224, %scevgep230
  %bound1237 = icmp ult float* %scevgep228, %scevgep226
  %found.conflict238 = and i1 %bound0236, %bound1237
  %bound0239 = icmp ult float* %scevgep224, %scevgep234
  %bound1240 = icmp ult float* %scevgep232, %scevgep226
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx242 = or i1 %found.conflict238, %found.conflict241
  br i1 %conflict.rdx242, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.ph245

vector.ph245:                                     ; preds = %vector.memcheck244
  %broadcast.splatinsert252 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat253 = shufflevector <8 x i64> %broadcast.splatinsert252, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert254 = insertelement <8 x i32> undef, i32 %19, i32 0
  %broadcast.splat255 = shufflevector <8 x i32> %broadcast.splatinsert254, <8 x i32> undef, <8 x i32> zeroinitializer
  %617 = trunc <8 x i64> %broadcast.splat253 to <8 x i32>
  %618 = or <8 x i32> %617, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %619 = icmp sgt <8 x i32> %broadcast.splat255, %618
  %620 = icmp sgt <8 x i32> %618, zeroinitializer
  %621 = and <8 x i1> %619, %620
  %622 = extractelement <8 x i32> %618, i32 0
  %623 = add i32 %mul.i.i.5, %622
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds float, float* %7, i64 %624
  %626 = bitcast float* %625 to <8 x float>*
  %wide.masked.load256 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %626, i32 4, <8 x i1> %621, <8 x float> undef), !tbaa !12, !alias.scope !133, !noalias !136
  %627 = fpext <8 x float> %wide.masked.load256 to <8 x double>
  %628 = getelementptr inbounds float, float* %11, i64 %624
  %629 = bitcast float* %628 to <8 x float>*
  %wide.masked.load257 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %629, i32 4, <8 x i1> %621, <8 x float> undef), !tbaa !12, !alias.scope !139
  %630 = add i32 %623, -1
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds float, float* %11, i64 %631
  %633 = bitcast float* %632 to <8 x float>*
  %wide.masked.load258 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %633, i32 4, <8 x i1> %621, <8 x float> undef), !tbaa !12, !alias.scope !140
  %634 = fsub <8 x float> %wide.masked.load257, %wide.masked.load258
  %635 = fpext <8 x float> %634 to <8 x double>
  %636 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %635, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %627)
  %637 = fptrunc <8 x double> %636 to <8 x float>
  %638 = bitcast float* %625 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %637, <8 x float>* %638, i32 4, <8 x i1> %621), !tbaa !12, !alias.scope !133, !noalias !136, !llvm.access.group !24
  %639 = trunc <8 x i64> %broadcast.splat253 to <8 x i32>
  %640 = or <8 x i32> %639, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %641 = icmp sgt <8 x i32> %broadcast.splat255, %640
  %642 = icmp sgt <8 x i32> %640, zeroinitializer
  %643 = and <8 x i1> %641, %642
  %644 = extractelement <8 x i32> %640, i32 0
  %645 = add i32 %mul.i.i.5, %644
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds float, float* %7, i64 %646
  %648 = bitcast float* %647 to <8 x float>*
  %wide.masked.load256.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %648, i32 4, <8 x i1> %643, <8 x float> undef), !tbaa !12, !alias.scope !133, !noalias !136
  %649 = fpext <8 x float> %wide.masked.load256.1 to <8 x double>
  %650 = getelementptr inbounds float, float* %11, i64 %646
  %651 = bitcast float* %650 to <8 x float>*
  %wide.masked.load257.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %651, i32 4, <8 x i1> %643, <8 x float> undef), !tbaa !12, !alias.scope !139
  %652 = add i32 %645, -1
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds float, float* %11, i64 %653
  %655 = bitcast float* %654 to <8 x float>*
  %wide.masked.load258.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %655, i32 4, <8 x i1> %643, <8 x float> undef), !tbaa !12, !alias.scope !140
  %656 = fsub <8 x float> %wide.masked.load257.1, %wide.masked.load258.1
  %657 = fpext <8 x float> %656 to <8 x double>
  %658 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %657, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %649)
  %659 = fptrunc <8 x double> %658 to <8 x float>
  %660 = bitcast float* %647 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %659, <8 x float>* %660, i32 4, <8 x i1> %643), !tbaa !12, !alias.scope !133, !noalias !136, !llvm.access.group !24
  %661 = trunc <8 x i64> %broadcast.splat253 to <8 x i32>
  %662 = or <8 x i32> %661, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %663 = icmp sgt <8 x i32> %broadcast.splat255, %662
  %664 = icmp sgt <8 x i32> %662, zeroinitializer
  %665 = and <8 x i1> %663, %664
  %666 = extractelement <8 x i32> %662, i32 0
  %667 = add i32 %mul.i.i.5, %666
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds float, float* %7, i64 %668
  %670 = bitcast float* %669 to <8 x float>*
  %wide.masked.load256.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %670, i32 4, <8 x i1> %665, <8 x float> undef), !tbaa !12, !alias.scope !133, !noalias !136
  %671 = fpext <8 x float> %wide.masked.load256.2 to <8 x double>
  %672 = getelementptr inbounds float, float* %11, i64 %668
  %673 = bitcast float* %672 to <8 x float>*
  %wide.masked.load257.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %673, i32 4, <8 x i1> %665, <8 x float> undef), !tbaa !12, !alias.scope !139
  %674 = add i32 %667, -1
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds float, float* %11, i64 %675
  %677 = bitcast float* %676 to <8 x float>*
  %wide.masked.load258.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %677, i32 4, <8 x i1> %665, <8 x float> undef), !tbaa !12, !alias.scope !140
  %678 = fsub <8 x float> %wide.masked.load257.2, %wide.masked.load258.2
  %679 = fpext <8 x float> %678 to <8 x double>
  %680 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %679, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %671)
  %681 = fptrunc <8 x double> %680 to <8 x float>
  %682 = bitcast float* %669 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %681, <8 x float>* %682, i32 4, <8 x i1> %665), !tbaa !12, !alias.scope !133, !noalias !136, !llvm.access.group !24
  %683 = trunc <8 x i64> %broadcast.splat253 to <8 x i32>
  %684 = or <8 x i32> %683, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %685 = icmp sgt <8 x i32> %broadcast.splat255, %684
  %686 = icmp sgt <8 x i32> %684, zeroinitializer
  %687 = and <8 x i1> %685, %686
  %688 = extractelement <8 x i32> %684, i32 0
  %689 = add i32 %mul.i.i.5, %688
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds float, float* %7, i64 %690
  %692 = bitcast float* %691 to <8 x float>*
  %wide.masked.load256.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %692, i32 4, <8 x i1> %687, <8 x float> undef), !tbaa !12, !alias.scope !133, !noalias !136
  %693 = fpext <8 x float> %wide.masked.load256.3 to <8 x double>
  %694 = getelementptr inbounds float, float* %11, i64 %690
  %695 = bitcast float* %694 to <8 x float>*
  %wide.masked.load257.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %695, i32 4, <8 x i1> %687, <8 x float> undef), !tbaa !12, !alias.scope !139
  %696 = add i32 %689, -1
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds float, float* %11, i64 %697
  %699 = bitcast float* %698 to <8 x float>*
  %wide.masked.load258.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %699, i32 4, <8 x i1> %687, <8 x float> undef), !tbaa !12, !alias.scope !140
  %700 = fsub <8 x float> %wide.masked.load257.3, %wide.masked.load258.3
  %701 = fpext <8 x float> %700 to <8 x double>
  %702 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %701, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %693)
  %703 = fptrunc <8 x double> %702 to <8 x float>
  %704 = bitcast float* %691 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %703, <8 x float>* %704, i32 4, <8 x i1> %687), !tbaa !12, !alias.scope !133, !noalias !136, !llvm.access.group !24
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.5:                 ; preds = %if.end.i.i.us.5.1, %pregion_for_entry.entry.i.i.us.5.preheader
  %_local_id_x.i.0.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.5.preheader ], [ %953, %if.end.i.i.us.5.1 ]
  %add1.i.i.i.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.5, %mul.i.i.i
  %conv.i.i.us.5 = trunc i64 %add1.i.i.i.us.5 to i32
  %cmp4.i.i.us.5 = icmp sgt i32 %19, %conv.i.i.us.5
  %cmp7.i.i.us.5 = icmp sgt i32 %conv.i.i.us.5, 0
  %or.cond.i.i.us.5 = and i1 %cmp4.i.i.us.5, %cmp7.i.i.us.5
  br i1 %or.cond.i.i.us.5, label %if.then.i.i.us.5, label %if.end.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %pregion_for_entry.entry.i.i.us.5
  %add.i.i.us.5 = add i32 %mul.i.i.5, %conv.i.i.us.5
  %idxprom.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.5
  %705 = load float, float* %arrayidx.i.i.us.5, align 4, !tbaa !12
  %conv9.i.i.us.5 = fpext float %705 to double
  %arrayidx13.i.i.us.5 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.5
  %706 = load float, float* %arrayidx13.i.i.us.5, align 4, !tbaa !12
  %add15.i.i.us.5 = add i32 %add.i.i.us.5, -1
  %idxprom16.i.i.us.5 = sext i32 %add15.i.i.us.5 to i64
  %arrayidx17.i.i.us.5 = getelementptr inbounds float, float* %11, i64 %idxprom16.i.i.us.5
  %707 = load float, float* %arrayidx17.i.i.us.5, align 4, !tbaa !12
  %sub18.i.i.us.5 = fsub float %706, %707
  %conv19.i.i.us.5 = fpext float %sub18.i.i.us.5 to double
  %708 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.5, double -5.000000e-01, double %conv9.i.i.us.5) #5
  %conv21.i.i.us.5 = fptrunc double %708 to float
  store float %conv21.i.i.us.5, float* %arrayidx.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.5

if.end.i.i.us.5:                                  ; preds = %if.then.i.i.us.5, %pregion_for_entry.entry.i.i.us.5
  %709 = or i64 %_local_id_x.i.0.us.5, 1
  %add1.i.i.i.us.5.1 = add nuw nsw i64 %709, %mul.i.i.i
  %conv.i.i.us.5.1 = trunc i64 %add1.i.i.i.us.5.1 to i32
  %cmp4.i.i.us.5.1 = icmp sgt i32 %19, %conv.i.i.us.5.1
  %cmp7.i.i.us.5.1 = icmp sgt i32 %conv.i.i.us.5.1, 0
  %or.cond.i.i.us.5.1 = and i1 %cmp4.i.i.us.5.1, %cmp7.i.i.us.5.1
  br i1 %or.cond.i.i.us.5.1, label %if.then.i.i.us.5.1, label %if.end.i.i.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.i.i.us.5.1
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph245, %pregion_for_end.i.i.4
  %710 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.6 = or i32 %710, 6
  %cmp.i.i.6 = icmp sgt i32 %15, %conv2.i.i.6
  %mul.i.i.6 = mul nsw i32 %19, %conv2.i.i.6
  br i1 %cmp.i.i.6, label %vector.scevcheck269, label %pregion_for_end.i.i.6

vector.scevcheck269:                              ; preds = %pregion_for_end.i.i.5
  %711 = mul i32 %19, %conv2.i.i.6
  %712 = trunc i64 %2 to i32
  %713 = shl i32 %712, 5
  %714 = add i32 %711, %713
  %715 = icmp sgt i32 %714, 2147483616
  %716 = add i32 %711, %713
  %717 = add i32 %716, -1
  %718 = add i32 %716, 30
  %719 = icmp slt i32 %718, %717
  %720 = or i1 %715, %719
  br i1 %720, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.memcheck291

pregion_for_entry.entry.i.i.us.6.preheader:       ; preds = %vector.memcheck291, %vector.scevcheck269
  br label %pregion_for_entry.entry.i.i.us.6

vector.memcheck291:                               ; preds = %vector.scevcheck269
  %721 = mul i32 %19, %conv2.i.i.6
  %722 = trunc i64 %2 to i32
  %723 = shl i32 %722, 5
  %724 = add i32 %721, %723
  %725 = sext i32 %724 to i64
  %scevgep271 = getelementptr float, float* %7, i64 %725
  %726 = add nsw i64 %725, 32
  %scevgep273 = getelementptr float, float* %7, i64 %726
  %727 = add i32 %721, %723
  %728 = add i32 %727, -2
  %729 = sext i32 %728 to i64
  %730 = add nuw nsw i64 %729, 1
  %scevgep275 = getelementptr float, float* %11, i64 %730
  %731 = add nsw i64 %729, 33
  %scevgep277 = getelementptr float, float* %11, i64 %731
  %scevgep279 = getelementptr float, float* %11, i64 %725
  %scevgep281 = getelementptr float, float* %11, i64 %726
  %bound0283 = icmp ult float* %scevgep271, %scevgep277
  %bound1284 = icmp ult float* %scevgep275, %scevgep273
  %found.conflict285 = and i1 %bound0283, %bound1284
  %bound0286 = icmp ult float* %scevgep271, %scevgep281
  %bound1287 = icmp ult float* %scevgep279, %scevgep273
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx289 = or i1 %found.conflict285, %found.conflict288
  br i1 %conflict.rdx289, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.ph292

vector.ph292:                                     ; preds = %vector.memcheck291
  %broadcast.splatinsert299 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat300 = shufflevector <8 x i64> %broadcast.splatinsert299, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert301 = insertelement <8 x i32> undef, i32 %19, i32 0
  %broadcast.splat302 = shufflevector <8 x i32> %broadcast.splatinsert301, <8 x i32> undef, <8 x i32> zeroinitializer
  %732 = trunc <8 x i64> %broadcast.splat300 to <8 x i32>
  %733 = or <8 x i32> %732, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %734 = icmp sgt <8 x i32> %broadcast.splat302, %733
  %735 = icmp sgt <8 x i32> %733, zeroinitializer
  %736 = and <8 x i1> %734, %735
  %737 = extractelement <8 x i32> %733, i32 0
  %738 = add i32 %mul.i.i.6, %737
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds float, float* %7, i64 %739
  %741 = bitcast float* %740 to <8 x float>*
  %wide.masked.load303 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %741, i32 4, <8 x i1> %736, <8 x float> undef), !tbaa !12, !alias.scope !141, !noalias !144
  %742 = fpext <8 x float> %wide.masked.load303 to <8 x double>
  %743 = getelementptr inbounds float, float* %11, i64 %739
  %744 = bitcast float* %743 to <8 x float>*
  %wide.masked.load304 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %744, i32 4, <8 x i1> %736, <8 x float> undef), !tbaa !12, !alias.scope !147
  %745 = add i32 %738, -1
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds float, float* %11, i64 %746
  %748 = bitcast float* %747 to <8 x float>*
  %wide.masked.load305 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %748, i32 4, <8 x i1> %736, <8 x float> undef), !tbaa !12, !alias.scope !148
  %749 = fsub <8 x float> %wide.masked.load304, %wide.masked.load305
  %750 = fpext <8 x float> %749 to <8 x double>
  %751 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %750, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %742)
  %752 = fptrunc <8 x double> %751 to <8 x float>
  %753 = bitcast float* %740 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %752, <8 x float>* %753, i32 4, <8 x i1> %736), !tbaa !12, !alias.scope !141, !noalias !144, !llvm.access.group !24
  %754 = trunc <8 x i64> %broadcast.splat300 to <8 x i32>
  %755 = or <8 x i32> %754, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %756 = icmp sgt <8 x i32> %broadcast.splat302, %755
  %757 = icmp sgt <8 x i32> %755, zeroinitializer
  %758 = and <8 x i1> %756, %757
  %759 = extractelement <8 x i32> %755, i32 0
  %760 = add i32 %mul.i.i.6, %759
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds float, float* %7, i64 %761
  %763 = bitcast float* %762 to <8 x float>*
  %wide.masked.load303.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %763, i32 4, <8 x i1> %758, <8 x float> undef), !tbaa !12, !alias.scope !141, !noalias !144
  %764 = fpext <8 x float> %wide.masked.load303.1 to <8 x double>
  %765 = getelementptr inbounds float, float* %11, i64 %761
  %766 = bitcast float* %765 to <8 x float>*
  %wide.masked.load304.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %766, i32 4, <8 x i1> %758, <8 x float> undef), !tbaa !12, !alias.scope !147
  %767 = add i32 %760, -1
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds float, float* %11, i64 %768
  %770 = bitcast float* %769 to <8 x float>*
  %wide.masked.load305.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %770, i32 4, <8 x i1> %758, <8 x float> undef), !tbaa !12, !alias.scope !148
  %771 = fsub <8 x float> %wide.masked.load304.1, %wide.masked.load305.1
  %772 = fpext <8 x float> %771 to <8 x double>
  %773 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %772, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %764)
  %774 = fptrunc <8 x double> %773 to <8 x float>
  %775 = bitcast float* %762 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %774, <8 x float>* %775, i32 4, <8 x i1> %758), !tbaa !12, !alias.scope !141, !noalias !144, !llvm.access.group !24
  %776 = trunc <8 x i64> %broadcast.splat300 to <8 x i32>
  %777 = or <8 x i32> %776, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %778 = icmp sgt <8 x i32> %broadcast.splat302, %777
  %779 = icmp sgt <8 x i32> %777, zeroinitializer
  %780 = and <8 x i1> %778, %779
  %781 = extractelement <8 x i32> %777, i32 0
  %782 = add i32 %mul.i.i.6, %781
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds float, float* %7, i64 %783
  %785 = bitcast float* %784 to <8 x float>*
  %wide.masked.load303.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %785, i32 4, <8 x i1> %780, <8 x float> undef), !tbaa !12, !alias.scope !141, !noalias !144
  %786 = fpext <8 x float> %wide.masked.load303.2 to <8 x double>
  %787 = getelementptr inbounds float, float* %11, i64 %783
  %788 = bitcast float* %787 to <8 x float>*
  %wide.masked.load304.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %788, i32 4, <8 x i1> %780, <8 x float> undef), !tbaa !12, !alias.scope !147
  %789 = add i32 %782, -1
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds float, float* %11, i64 %790
  %792 = bitcast float* %791 to <8 x float>*
  %wide.masked.load305.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %792, i32 4, <8 x i1> %780, <8 x float> undef), !tbaa !12, !alias.scope !148
  %793 = fsub <8 x float> %wide.masked.load304.2, %wide.masked.load305.2
  %794 = fpext <8 x float> %793 to <8 x double>
  %795 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %794, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %786)
  %796 = fptrunc <8 x double> %795 to <8 x float>
  %797 = bitcast float* %784 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %796, <8 x float>* %797, i32 4, <8 x i1> %780), !tbaa !12, !alias.scope !141, !noalias !144, !llvm.access.group !24
  %798 = trunc <8 x i64> %broadcast.splat300 to <8 x i32>
  %799 = or <8 x i32> %798, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %800 = icmp sgt <8 x i32> %broadcast.splat302, %799
  %801 = icmp sgt <8 x i32> %799, zeroinitializer
  %802 = and <8 x i1> %800, %801
  %803 = extractelement <8 x i32> %799, i32 0
  %804 = add i32 %mul.i.i.6, %803
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds float, float* %7, i64 %805
  %807 = bitcast float* %806 to <8 x float>*
  %wide.masked.load303.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %807, i32 4, <8 x i1> %802, <8 x float> undef), !tbaa !12, !alias.scope !141, !noalias !144
  %808 = fpext <8 x float> %wide.masked.load303.3 to <8 x double>
  %809 = getelementptr inbounds float, float* %11, i64 %805
  %810 = bitcast float* %809 to <8 x float>*
  %wide.masked.load304.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %810, i32 4, <8 x i1> %802, <8 x float> undef), !tbaa !12, !alias.scope !147
  %811 = add i32 %804, -1
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds float, float* %11, i64 %812
  %814 = bitcast float* %813 to <8 x float>*
  %wide.masked.load305.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %814, i32 4, <8 x i1> %802, <8 x float> undef), !tbaa !12, !alias.scope !148
  %815 = fsub <8 x float> %wide.masked.load304.3, %wide.masked.load305.3
  %816 = fpext <8 x float> %815 to <8 x double>
  %817 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %816, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %808)
  %818 = fptrunc <8 x double> %817 to <8 x float>
  %819 = bitcast float* %806 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %818, <8 x float>* %819, i32 4, <8 x i1> %802), !tbaa !12, !alias.scope !141, !noalias !144, !llvm.access.group !24
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.6:                 ; preds = %if.end.i.i.us.6.1, %pregion_for_entry.entry.i.i.us.6.preheader
  %_local_id_x.i.0.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.6.preheader ], [ %948, %if.end.i.i.us.6.1 ]
  %add1.i.i.i.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.6, %mul.i.i.i
  %conv.i.i.us.6 = trunc i64 %add1.i.i.i.us.6 to i32
  %cmp4.i.i.us.6 = icmp sgt i32 %19, %conv.i.i.us.6
  %cmp7.i.i.us.6 = icmp sgt i32 %conv.i.i.us.6, 0
  %or.cond.i.i.us.6 = and i1 %cmp4.i.i.us.6, %cmp7.i.i.us.6
  br i1 %or.cond.i.i.us.6, label %if.then.i.i.us.6, label %if.end.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %pregion_for_entry.entry.i.i.us.6
  %add.i.i.us.6 = add i32 %mul.i.i.6, %conv.i.i.us.6
  %idxprom.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.6
  %820 = load float, float* %arrayidx.i.i.us.6, align 4, !tbaa !12
  %conv9.i.i.us.6 = fpext float %820 to double
  %arrayidx13.i.i.us.6 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.6
  %821 = load float, float* %arrayidx13.i.i.us.6, align 4, !tbaa !12
  %add15.i.i.us.6 = add i32 %add.i.i.us.6, -1
  %idxprom16.i.i.us.6 = sext i32 %add15.i.i.us.6 to i64
  %arrayidx17.i.i.us.6 = getelementptr inbounds float, float* %11, i64 %idxprom16.i.i.us.6
  %822 = load float, float* %arrayidx17.i.i.us.6, align 4, !tbaa !12
  %sub18.i.i.us.6 = fsub float %821, %822
  %conv19.i.i.us.6 = fpext float %sub18.i.i.us.6 to double
  %823 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.6, double -5.000000e-01, double %conv9.i.i.us.6) #5
  %conv21.i.i.us.6 = fptrunc double %823 to float
  store float %conv21.i.i.us.6, float* %arrayidx.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.6

if.end.i.i.us.6:                                  ; preds = %if.then.i.i.us.6, %pregion_for_entry.entry.i.i.us.6
  %824 = or i64 %_local_id_x.i.0.us.6, 1
  %add1.i.i.i.us.6.1 = add nuw nsw i64 %824, %mul.i.i.i
  %conv.i.i.us.6.1 = trunc i64 %add1.i.i.i.us.6.1 to i32
  %cmp4.i.i.us.6.1 = icmp sgt i32 %19, %conv.i.i.us.6.1
  %cmp7.i.i.us.6.1 = icmp sgt i32 %conv.i.i.us.6.1, 0
  %or.cond.i.i.us.6.1 = and i1 %cmp4.i.i.us.6.1, %cmp7.i.i.us.6.1
  br i1 %or.cond.i.i.us.6.1, label %if.then.i.i.us.6.1, label %if.end.i.i.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.i.i.us.6.1
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph292, %pregion_for_end.i.i.5
  %825 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.7 = or i32 %825, 7
  %cmp.i.i.7 = icmp sgt i32 %15, %conv2.i.i.7
  %mul.i.i.7 = mul nsw i32 %19, %conv2.i.i.7
  br i1 %cmp.i.i.7, label %vector.scevcheck316, label %pregion_for_end.i.i.7

vector.scevcheck316:                              ; preds = %pregion_for_end.i.i.6
  %826 = mul i32 %19, %conv2.i.i.7
  %827 = trunc i64 %2 to i32
  %828 = shl i32 %827, 5
  %829 = add i32 %826, %828
  %830 = icmp sgt i32 %829, 2147483616
  %831 = add i32 %826, %828
  %832 = add i32 %831, -1
  %833 = add i32 %831, 30
  %834 = icmp slt i32 %833, %832
  %835 = or i1 %830, %834
  br i1 %835, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.memcheck338

pregion_for_entry.entry.i.i.us.7.preheader:       ; preds = %vector.memcheck338, %vector.scevcheck316
  br label %pregion_for_entry.entry.i.i.us.7

vector.memcheck338:                               ; preds = %vector.scevcheck316
  %836 = mul i32 %19, %conv2.i.i.7
  %837 = trunc i64 %2 to i32
  %838 = shl i32 %837, 5
  %839 = add i32 %836, %838
  %840 = sext i32 %839 to i64
  %scevgep318 = getelementptr float, float* %7, i64 %840
  %841 = add nsw i64 %840, 32
  %scevgep320 = getelementptr float, float* %7, i64 %841
  %842 = add i32 %836, %838
  %843 = add i32 %842, -1
  %844 = sext i32 %843 to i64
  %scevgep322 = getelementptr float, float* %11, i64 %844
  %845 = add nsw i64 %844, 32
  %scevgep324 = getelementptr float, float* %11, i64 %845
  %scevgep326 = getelementptr float, float* %11, i64 %840
  %scevgep328 = getelementptr float, float* %11, i64 %841
  %bound0330 = icmp ult float* %scevgep318, %scevgep324
  %bound1331 = icmp ult float* %scevgep322, %scevgep320
  %found.conflict332 = and i1 %bound0330, %bound1331
  %bound0333 = icmp ult float* %scevgep318, %scevgep328
  %bound1334 = icmp ult float* %scevgep326, %scevgep320
  %found.conflict335 = and i1 %bound0333, %bound1334
  %conflict.rdx336 = or i1 %found.conflict332, %found.conflict335
  br i1 %conflict.rdx336, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.ph339

vector.ph339:                                     ; preds = %vector.memcheck338
  %broadcast.splatinsert346 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat347 = shufflevector <8 x i64> %broadcast.splatinsert346, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert348 = insertelement <8 x i32> undef, i32 %19, i32 0
  %broadcast.splat349 = shufflevector <8 x i32> %broadcast.splatinsert348, <8 x i32> undef, <8 x i32> zeroinitializer
  %846 = trunc <8 x i64> %broadcast.splat347 to <8 x i32>
  %847 = or <8 x i32> %846, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %848 = icmp sgt <8 x i32> %broadcast.splat349, %847
  %849 = icmp sgt <8 x i32> %847, zeroinitializer
  %850 = and <8 x i1> %848, %849
  %851 = extractelement <8 x i32> %847, i32 0
  %852 = add i32 %mul.i.i.7, %851
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds float, float* %7, i64 %853
  %855 = bitcast float* %854 to <8 x float>*
  %wide.masked.load350 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %855, i32 4, <8 x i1> %850, <8 x float> undef), !tbaa !12, !alias.scope !149, !noalias !152
  %856 = fpext <8 x float> %wide.masked.load350 to <8 x double>
  %857 = getelementptr inbounds float, float* %11, i64 %853
  %858 = bitcast float* %857 to <8 x float>*
  %wide.masked.load351 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %858, i32 4, <8 x i1> %850, <8 x float> undef), !tbaa !12, !alias.scope !155
  %859 = add i32 %852, -1
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds float, float* %11, i64 %860
  %862 = bitcast float* %861 to <8 x float>*
  %wide.masked.load352 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %862, i32 4, <8 x i1> %850, <8 x float> undef), !tbaa !12, !alias.scope !156
  %863 = fsub <8 x float> %wide.masked.load351, %wide.masked.load352
  %864 = fpext <8 x float> %863 to <8 x double>
  %865 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %864, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %856)
  %866 = fptrunc <8 x double> %865 to <8 x float>
  %867 = bitcast float* %854 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %866, <8 x float>* %867, i32 4, <8 x i1> %850), !tbaa !12, !alias.scope !149, !noalias !152, !llvm.access.group !24
  %868 = trunc <8 x i64> %broadcast.splat347 to <8 x i32>
  %869 = or <8 x i32> %868, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %870 = icmp sgt <8 x i32> %broadcast.splat349, %869
  %871 = icmp sgt <8 x i32> %869, zeroinitializer
  %872 = and <8 x i1> %870, %871
  %873 = extractelement <8 x i32> %869, i32 0
  %874 = add i32 %mul.i.i.7, %873
  %875 = sext i32 %874 to i64
  %876 = getelementptr inbounds float, float* %7, i64 %875
  %877 = bitcast float* %876 to <8 x float>*
  %wide.masked.load350.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %877, i32 4, <8 x i1> %872, <8 x float> undef), !tbaa !12, !alias.scope !149, !noalias !152
  %878 = fpext <8 x float> %wide.masked.load350.1 to <8 x double>
  %879 = getelementptr inbounds float, float* %11, i64 %875
  %880 = bitcast float* %879 to <8 x float>*
  %wide.masked.load351.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %880, i32 4, <8 x i1> %872, <8 x float> undef), !tbaa !12, !alias.scope !155
  %881 = add i32 %874, -1
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds float, float* %11, i64 %882
  %884 = bitcast float* %883 to <8 x float>*
  %wide.masked.load352.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %884, i32 4, <8 x i1> %872, <8 x float> undef), !tbaa !12, !alias.scope !156
  %885 = fsub <8 x float> %wide.masked.load351.1, %wide.masked.load352.1
  %886 = fpext <8 x float> %885 to <8 x double>
  %887 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %886, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %878)
  %888 = fptrunc <8 x double> %887 to <8 x float>
  %889 = bitcast float* %876 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %888, <8 x float>* %889, i32 4, <8 x i1> %872), !tbaa !12, !alias.scope !149, !noalias !152, !llvm.access.group !24
  %890 = trunc <8 x i64> %broadcast.splat347 to <8 x i32>
  %891 = or <8 x i32> %890, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %892 = icmp sgt <8 x i32> %broadcast.splat349, %891
  %893 = icmp sgt <8 x i32> %891, zeroinitializer
  %894 = and <8 x i1> %892, %893
  %895 = extractelement <8 x i32> %891, i32 0
  %896 = add i32 %mul.i.i.7, %895
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds float, float* %7, i64 %897
  %899 = bitcast float* %898 to <8 x float>*
  %wide.masked.load350.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %899, i32 4, <8 x i1> %894, <8 x float> undef), !tbaa !12, !alias.scope !149, !noalias !152
  %900 = fpext <8 x float> %wide.masked.load350.2 to <8 x double>
  %901 = getelementptr inbounds float, float* %11, i64 %897
  %902 = bitcast float* %901 to <8 x float>*
  %wide.masked.load351.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %902, i32 4, <8 x i1> %894, <8 x float> undef), !tbaa !12, !alias.scope !155
  %903 = add i32 %896, -1
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds float, float* %11, i64 %904
  %906 = bitcast float* %905 to <8 x float>*
  %wide.masked.load352.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %906, i32 4, <8 x i1> %894, <8 x float> undef), !tbaa !12, !alias.scope !156
  %907 = fsub <8 x float> %wide.masked.load351.2, %wide.masked.load352.2
  %908 = fpext <8 x float> %907 to <8 x double>
  %909 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %908, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %900)
  %910 = fptrunc <8 x double> %909 to <8 x float>
  %911 = bitcast float* %898 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %910, <8 x float>* %911, i32 4, <8 x i1> %894), !tbaa !12, !alias.scope !149, !noalias !152, !llvm.access.group !24
  %912 = trunc <8 x i64> %broadcast.splat347 to <8 x i32>
  %913 = or <8 x i32> %912, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %914 = icmp sgt <8 x i32> %broadcast.splat349, %913
  %915 = icmp sgt <8 x i32> %913, zeroinitializer
  %916 = and <8 x i1> %914, %915
  %917 = extractelement <8 x i32> %913, i32 0
  %918 = add i32 %mul.i.i.7, %917
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds float, float* %7, i64 %919
  %921 = bitcast float* %920 to <8 x float>*
  %wide.masked.load350.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %921, i32 4, <8 x i1> %916, <8 x float> undef), !tbaa !12, !alias.scope !149, !noalias !152
  %922 = fpext <8 x float> %wide.masked.load350.3 to <8 x double>
  %923 = getelementptr inbounds float, float* %11, i64 %919
  %924 = bitcast float* %923 to <8 x float>*
  %wide.masked.load351.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %924, i32 4, <8 x i1> %916, <8 x float> undef), !tbaa !12, !alias.scope !155
  %925 = add i32 %918, -1
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds float, float* %11, i64 %926
  %928 = bitcast float* %927 to <8 x float>*
  %wide.masked.load352.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %928, i32 4, <8 x i1> %916, <8 x float> undef), !tbaa !12, !alias.scope !156
  %929 = fsub <8 x float> %wide.masked.load351.3, %wide.masked.load352.3
  %930 = fpext <8 x float> %929 to <8 x double>
  %931 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %930, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %922)
  %932 = fptrunc <8 x double> %931 to <8 x float>
  %933 = bitcast float* %920 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %932, <8 x float>* %933, i32 4, <8 x i1> %916), !tbaa !12, !alias.scope !149, !noalias !152, !llvm.access.group !24
  br label %pregion_for_end.i.i.7

pregion_for_entry.entry.i.i.us.7:                 ; preds = %if.end.i.i.us.7.1, %pregion_for_entry.entry.i.i.us.7.preheader
  %_local_id_x.i.0.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.7.preheader ], [ %943, %if.end.i.i.us.7.1 ]
  %add1.i.i.i.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.7, %mul.i.i.i
  %conv.i.i.us.7 = trunc i64 %add1.i.i.i.us.7 to i32
  %cmp4.i.i.us.7 = icmp sgt i32 %19, %conv.i.i.us.7
  %cmp7.i.i.us.7 = icmp sgt i32 %conv.i.i.us.7, 0
  %or.cond.i.i.us.7 = and i1 %cmp4.i.i.us.7, %cmp7.i.i.us.7
  br i1 %or.cond.i.i.us.7, label %if.then.i.i.us.7, label %if.end.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %pregion_for_entry.entry.i.i.us.7
  %add.i.i.us.7 = add i32 %mul.i.i.7, %conv.i.i.us.7
  %idxprom.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.7
  %934 = load float, float* %arrayidx.i.i.us.7, align 4, !tbaa !12
  %conv9.i.i.us.7 = fpext float %934 to double
  %arrayidx13.i.i.us.7 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.7
  %935 = load float, float* %arrayidx13.i.i.us.7, align 4, !tbaa !12
  %add15.i.i.us.7 = add i32 %add.i.i.us.7, -1
  %idxprom16.i.i.us.7 = sext i32 %add15.i.i.us.7 to i64
  %arrayidx17.i.i.us.7 = getelementptr inbounds float, float* %11, i64 %idxprom16.i.i.us.7
  %936 = load float, float* %arrayidx17.i.i.us.7, align 4, !tbaa !12
  %sub18.i.i.us.7 = fsub float %935, %936
  %conv19.i.i.us.7 = fpext float %sub18.i.i.us.7 to double
  %937 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.7, double -5.000000e-01, double %conv9.i.i.us.7) #5
  %conv21.i.i.us.7 = fptrunc double %937 to float
  store float %conv21.i.i.us.7, float* %arrayidx.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.7

if.end.i.i.us.7:                                  ; preds = %if.then.i.i.us.7, %pregion_for_entry.entry.i.i.us.7
  %938 = or i64 %_local_id_x.i.0.us.7, 1
  %add1.i.i.i.us.7.1 = add nuw nsw i64 %938, %mul.i.i.i
  %conv.i.i.us.7.1 = trunc i64 %add1.i.i.i.us.7.1 to i32
  %cmp4.i.i.us.7.1 = icmp sgt i32 %19, %conv.i.i.us.7.1
  %cmp7.i.i.us.7.1 = icmp sgt i32 %conv.i.i.us.7.1, 0
  %or.cond.i.i.us.7.1 = and i1 %cmp4.i.i.us.7.1, %cmp7.i.i.us.7.1
  br i1 %or.cond.i.i.us.7.1, label %if.then.i.i.us.7.1, label %if.end.i.i.us.7.1

pregion_for_end.i.i.7.loopexit:                   ; preds = %if.end.i.i.us.7.1
  br label %pregion_for_end.i.i.7

pregion_for_end.i.i.7:                            ; preds = %pregion_for_end.i.i.7.loopexit, %vector.ph339, %pregion_for_end.i.i.6
  ret void

if.then.i.i.us.7.1:                               ; preds = %if.end.i.i.us.7
  %add.i.i.us.7.1 = add i32 %mul.i.i.7, %conv.i.i.us.7.1
  %idxprom.i.i.us.7.1 = sext i32 %add.i.i.us.7.1 to i64
  %arrayidx.i.i.us.7.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.7.1
  %939 = load float, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12
  %conv9.i.i.us.7.1 = fpext float %939 to double
  %arrayidx13.i.i.us.7.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.7.1
  %940 = load float, float* %arrayidx13.i.i.us.7.1, align 4, !tbaa !12
  %add15.i.i.us.7.1 = add i32 %add.i.i.us.7.1, -1
  %idxprom16.i.i.us.7.1 = sext i32 %add15.i.i.us.7.1 to i64
  %arrayidx17.i.i.us.7.1 = getelementptr inbounds float, float* %11, i64 %idxprom16.i.i.us.7.1
  %941 = load float, float* %arrayidx17.i.i.us.7.1, align 4, !tbaa !12
  %sub18.i.i.us.7.1 = fsub float %940, %941
  %conv19.i.i.us.7.1 = fpext float %sub18.i.i.us.7.1 to double
  %942 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.7.1, double -5.000000e-01, double %conv9.i.i.us.7.1) #5
  %conv21.i.i.us.7.1 = fptrunc double %942 to float
  store float %conv21.i.i.us.7.1, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.7.1

if.end.i.i.us.7.1:                                ; preds = %if.then.i.i.us.7.1, %if.end.i.i.us.7
  %943 = add nuw nsw i64 %_local_id_x.i.0.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %943, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.i.7.loopexit, label %pregion_for_entry.entry.i.i.us.7, !llvm.loop !157

if.then.i.i.us.6.1:                               ; preds = %if.end.i.i.us.6
  %add.i.i.us.6.1 = add i32 %mul.i.i.6, %conv.i.i.us.6.1
  %idxprom.i.i.us.6.1 = sext i32 %add.i.i.us.6.1 to i64
  %arrayidx.i.i.us.6.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.6.1
  %944 = load float, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12
  %conv9.i.i.us.6.1 = fpext float %944 to double
  %arrayidx13.i.i.us.6.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.6.1
  %945 = load float, float* %arrayidx13.i.i.us.6.1, align 4, !tbaa !12
  %add15.i.i.us.6.1 = add nsw i32 %add.i.i.us.6.1, -1
  %idxprom16.i.i.us.6.1 = sext i32 %add15.i.i.us.6.1 to i64
  %arrayidx17.i.i.us.6.1 = getelementptr inbounds float, float* %11, i64 %idxprom16.i.i.us.6.1
  %946 = load float, float* %arrayidx17.i.i.us.6.1, align 4, !tbaa !12
  %sub18.i.i.us.6.1 = fsub float %945, %946
  %conv19.i.i.us.6.1 = fpext float %sub18.i.i.us.6.1 to double
  %947 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.6.1, double -5.000000e-01, double %conv9.i.i.us.6.1) #5
  %conv21.i.i.us.6.1 = fptrunc double %947 to float
  store float %conv21.i.i.us.6.1, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.6.1

if.end.i.i.us.6.1:                                ; preds = %if.then.i.i.us.6.1, %if.end.i.i.us.6
  %948 = add nuw nsw i64 %_local_id_x.i.0.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %948, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.6, !llvm.loop !158

if.then.i.i.us.5.1:                               ; preds = %if.end.i.i.us.5
  %add.i.i.us.5.1 = add i32 %mul.i.i.5, %conv.i.i.us.5.1
  %idxprom.i.i.us.5.1 = sext i32 %add.i.i.us.5.1 to i64
  %arrayidx.i.i.us.5.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.5.1
  %949 = load float, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12
  %conv9.i.i.us.5.1 = fpext float %949 to double
  %arrayidx13.i.i.us.5.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.5.1
  %950 = load float, float* %arrayidx13.i.i.us.5.1, align 4, !tbaa !12
  %add15.i.i.us.5.1 = add i32 %add.i.i.us.5.1, -1
  %idxprom16.i.i.us.5.1 = sext i32 %add15.i.i.us.5.1 to i64
  %arrayidx17.i.i.us.5.1 = getelementptr inbounds float, float* %11, i64 %idxprom16.i.i.us.5.1
  %951 = load float, float* %arrayidx17.i.i.us.5.1, align 4, !tbaa !12
  %sub18.i.i.us.5.1 = fsub float %950, %951
  %conv19.i.i.us.5.1 = fpext float %sub18.i.i.us.5.1 to double
  %952 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.5.1, double -5.000000e-01, double %conv9.i.i.us.5.1) #5
  %conv21.i.i.us.5.1 = fptrunc double %952 to float
  store float %conv21.i.i.us.5.1, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.5.1

if.end.i.i.us.5.1:                                ; preds = %if.then.i.i.us.5.1, %if.end.i.i.us.5
  %953 = add nuw nsw i64 %_local_id_x.i.0.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %953, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.5, !llvm.loop !159

if.then.i.i.us.4.1:                               ; preds = %if.end.i.i.us.4
  %add.i.i.us.4.1 = add i32 %mul.i.i.4, %conv.i.i.us.4.1
  %idxprom.i.i.us.4.1 = sext i32 %add.i.i.us.4.1 to i64
  %arrayidx.i.i.us.4.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.4.1
  %954 = load float, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12
  %conv9.i.i.us.4.1 = fpext float %954 to double
  %arrayidx13.i.i.us.4.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.4.1
  %955 = load float, float* %arrayidx13.i.i.us.4.1, align 4, !tbaa !12
  %add15.i.i.us.4.1 = add nsw i32 %add.i.i.us.4.1, -1
  %idxprom16.i.i.us.4.1 = sext i32 %add15.i.i.us.4.1 to i64
  %arrayidx17.i.i.us.4.1 = getelementptr inbounds float, float* %11, i64 %idxprom16.i.i.us.4.1
  %956 = load float, float* %arrayidx17.i.i.us.4.1, align 4, !tbaa !12
  %sub18.i.i.us.4.1 = fsub float %955, %956
  %conv19.i.i.us.4.1 = fpext float %sub18.i.i.us.4.1 to double
  %957 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.4.1, double -5.000000e-01, double %conv9.i.i.us.4.1) #5
  %conv21.i.i.us.4.1 = fptrunc double %957 to float
  store float %conv21.i.i.us.4.1, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.4.1

if.end.i.i.us.4.1:                                ; preds = %if.then.i.i.us.4.1, %if.end.i.i.us.4
  %958 = add nuw nsw i64 %_local_id_x.i.0.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %958, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.4, !llvm.loop !160

if.then.i.i.us.3.1:                               ; preds = %if.end.i.i.us.3
  %add.i.i.us.3.1 = add i32 %mul.i.i.3, %conv.i.i.us.3.1
  %idxprom.i.i.us.3.1 = sext i32 %add.i.i.us.3.1 to i64
  %arrayidx.i.i.us.3.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.3.1
  %959 = load float, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12
  %conv9.i.i.us.3.1 = fpext float %959 to double
  %arrayidx13.i.i.us.3.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.3.1
  %960 = load float, float* %arrayidx13.i.i.us.3.1, align 4, !tbaa !12
  %add15.i.i.us.3.1 = add i32 %add.i.i.us.3.1, -1
  %idxprom16.i.i.us.3.1 = sext i32 %add15.i.i.us.3.1 to i64
  %arrayidx17.i.i.us.3.1 = getelementptr inbounds float, float* %11, i64 %idxprom16.i.i.us.3.1
  %961 = load float, float* %arrayidx17.i.i.us.3.1, align 4, !tbaa !12
  %sub18.i.i.us.3.1 = fsub float %960, %961
  %conv19.i.i.us.3.1 = fpext float %sub18.i.i.us.3.1 to double
  %962 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.3.1, double -5.000000e-01, double %conv9.i.i.us.3.1) #5
  %conv21.i.i.us.3.1 = fptrunc double %962 to float
  store float %conv21.i.i.us.3.1, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.3.1

if.end.i.i.us.3.1:                                ; preds = %if.then.i.i.us.3.1, %if.end.i.i.us.3
  %963 = add nuw nsw i64 %_local_id_x.i.0.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %963, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.3, !llvm.loop !161

if.then.i.i.us.2.1:                               ; preds = %if.end.i.i.us.2
  %add.i.i.us.2.1 = add i32 %mul.i.i.2, %conv.i.i.us.2.1
  %idxprom.i.i.us.2.1 = sext i32 %add.i.i.us.2.1 to i64
  %arrayidx.i.i.us.2.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.2.1
  %964 = load float, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12
  %conv9.i.i.us.2.1 = fpext float %964 to double
  %arrayidx13.i.i.us.2.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.2.1
  %965 = load float, float* %arrayidx13.i.i.us.2.1, align 4, !tbaa !12
  %add15.i.i.us.2.1 = add nsw i32 %add.i.i.us.2.1, -1
  %idxprom16.i.i.us.2.1 = sext i32 %add15.i.i.us.2.1 to i64
  %arrayidx17.i.i.us.2.1 = getelementptr inbounds float, float* %11, i64 %idxprom16.i.i.us.2.1
  %966 = load float, float* %arrayidx17.i.i.us.2.1, align 4, !tbaa !12
  %sub18.i.i.us.2.1 = fsub float %965, %966
  %conv19.i.i.us.2.1 = fpext float %sub18.i.i.us.2.1 to double
  %967 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.2.1, double -5.000000e-01, double %conv9.i.i.us.2.1) #5
  %conv21.i.i.us.2.1 = fptrunc double %967 to float
  store float %conv21.i.i.us.2.1, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.2.1

if.end.i.i.us.2.1:                                ; preds = %if.then.i.i.us.2.1, %if.end.i.i.us.2
  %968 = add nuw nsw i64 %_local_id_x.i.0.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %968, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.2, !llvm.loop !162

if.then.i.i.us.1.1:                               ; preds = %if.end.i.i.us.1
  %add.i.i.us.1.1 = add i32 %mul.i.i.1, %conv.i.i.us.1.1
  %idxprom.i.i.us.1.1 = sext i32 %add.i.i.us.1.1 to i64
  %arrayidx.i.i.us.1.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.1.1
  %969 = load float, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12
  %conv9.i.i.us.1.1 = fpext float %969 to double
  %arrayidx13.i.i.us.1.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.1.1
  %970 = load float, float* %arrayidx13.i.i.us.1.1, align 4, !tbaa !12
  %add15.i.i.us.1.1 = add i32 %add.i.i.us.1.1, -1
  %idxprom16.i.i.us.1.1 = sext i32 %add15.i.i.us.1.1 to i64
  %arrayidx17.i.i.us.1.1 = getelementptr inbounds float, float* %11, i64 %idxprom16.i.i.us.1.1
  %971 = load float, float* %arrayidx17.i.i.us.1.1, align 4, !tbaa !12
  %sub18.i.i.us.1.1 = fsub float %970, %971
  %conv19.i.i.us.1.1 = fpext float %sub18.i.i.us.1.1 to double
  %972 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.1.1, double -5.000000e-01, double %conv9.i.i.us.1.1) #5
  %conv21.i.i.us.1.1 = fptrunc double %972 to float
  store float %conv21.i.i.us.1.1, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.1.1

if.end.i.i.us.1.1:                                ; preds = %if.then.i.i.us.1.1, %if.end.i.i.us.1
  %973 = add nuw nsw i64 %_local_id_x.i.0.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %973, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.1, !llvm.loop !163

if.then.i.i.us.1379:                              ; preds = %if.end.i.i.us
  %add.i.i.us.1368 = add i32 %mul.i.i, %conv.i.i.us.1363
  %idxprom.i.i.us.1369 = sext i32 %add.i.i.us.1368 to i64
  %arrayidx.i.i.us.1370 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.1369
  %974 = load float, float* %arrayidx.i.i.us.1370, align 4, !tbaa !12
  %conv9.i.i.us.1371 = fpext float %974 to double
  %arrayidx13.i.i.us.1372 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.1369
  %975 = load float, float* %arrayidx13.i.i.us.1372, align 4, !tbaa !12
  %add15.i.i.us.1373 = add nsw i32 %add.i.i.us.1368, -1
  %idxprom16.i.i.us.1374 = sext i32 %add15.i.i.us.1373 to i64
  %arrayidx17.i.i.us.1375 = getelementptr inbounds float, float* %11, i64 %idxprom16.i.i.us.1374
  %976 = load float, float* %arrayidx17.i.i.us.1375, align 4, !tbaa !12
  %sub18.i.i.us.1376 = fsub float %975, %976
  %conv19.i.i.us.1377 = fpext float %sub18.i.i.us.1376 to double
  %977 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.1377, double -5.000000e-01, double %conv9.i.i.us.1371) #5
  %conv21.i.i.us.1378 = fptrunc double %977 to float
  store float %conv21.i.i.us.1378, float* %arrayidx.i.i.us.1370, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.1380

if.end.i.i.us.1380:                               ; preds = %if.then.i.i.us.1379, %if.end.i.i.us
  %978 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %978, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !164
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_fdtd_kernel2_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
pregion_for_entry.pregion_for_init.i.i:
  %5 = bitcast i8** %0 to float**
  %6 = load float*, float** %5, align 8
  %7 = getelementptr i8*, i8** %0, i64 2
  %8 = bitcast i8** %7 to float**
  %9 = load float*, float** %8, align 8
  %10 = getelementptr i8*, i8** %0, i64 3
  %11 = bitcast i8** %10 to i32**
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr i8*, i8** %0, i64 4
  %15 = bitcast i8** %14 to i32**
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %conv2.i.i = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %13, %conv2.i.i
  %mul.i.i = mul nsw i32 %17, %conv2.i.i
  br i1 %cmp.i.i, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %18 = trunc i64 %3 to i32
  %19 = mul i32 %17, %18
  %20 = shl i32 %19, 3
  %21 = trunc i64 %2 to i32
  %22 = shl i32 %21, 5
  %23 = add i32 %20, %22
  %24 = icmp sgt i32 %23, 2147483616
  %25 = add i32 %20, %22
  %26 = add i32 %25, -1
  %27 = add i32 %25, 30
  %28 = icmp slt i32 %27, %26
  %29 = or i1 %24, %28
  br i1 %29, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %30 = trunc i64 %3 to i32
  %31 = mul i32 %17, %30
  %32 = shl i32 %31, 3
  %33 = trunc i64 %2 to i32
  %34 = shl i32 %33, 5
  %35 = add i32 %32, %34
  %36 = sext i32 %35 to i64
  %scevgep = getelementptr float, float* %6, i64 %36
  %37 = add nsw i64 %36, 32
  %scevgep7 = getelementptr float, float* %6, i64 %37
  %38 = add i32 %32, %34
  %39 = add i32 %38, -8
  %40 = sext i32 %39 to i64
  %41 = or i64 %40, 7
  %scevgep9 = getelementptr float, float* %9, i64 %41
  %42 = add nsw i64 %40, 39
  %scevgep11 = getelementptr float, float* %9, i64 %42
  %scevgep13 = getelementptr float, float* %9, i64 %36
  %scevgep15 = getelementptr float, float* %9, i64 %37
  %bound0 = icmp ult float* %scevgep, %scevgep11
  %bound1 = icmp ult float* %scevgep9, %scevgep7
  %found.conflict = and i1 %bound0, %bound1
  %bound017 = icmp ult float* %scevgep, %scevgep15
  %bound118 = icmp ult float* %scevgep13, %scevgep7
  %found.conflict19 = and i1 %bound017, %bound118
  %conflict.rdx = or i1 %found.conflict, %found.conflict19
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert20 = insertelement <8 x i32> undef, i32 %17, i32 0
  %broadcast.splat21 = shufflevector <8 x i32> %broadcast.splatinsert20, <8 x i32> undef, <8 x i32> zeroinitializer
  %43 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %44 = or <8 x i32> %43, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %45 = icmp sgt <8 x i32> %broadcast.splat21, %44
  %46 = icmp sgt <8 x i32> %44, zeroinitializer
  %47 = and <8 x i1> %45, %46
  %48 = extractelement <8 x i32> %44, i32 0
  %49 = add i32 %mul.i.i, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %6, i64 %50
  %52 = bitcast float* %51 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %52, i32 4, <8 x i1> %47, <8 x float> undef), !tbaa !12, !alias.scope !165, !noalias !168
  %53 = fpext <8 x float> %wide.masked.load to <8 x double>
  %54 = getelementptr inbounds float, float* %9, i64 %50
  %55 = bitcast float* %54 to <8 x float>*
  %wide.masked.load22 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %55, i32 4, <8 x i1> %47, <8 x float> undef), !tbaa !12, !alias.scope !171
  %56 = add i32 %49, -1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %9, i64 %57
  %59 = bitcast float* %58 to <8 x float>*
  %wide.masked.load23 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %59, i32 4, <8 x i1> %47, <8 x float> undef), !tbaa !12, !alias.scope !172
  %60 = fsub <8 x float> %wide.masked.load22, %wide.masked.load23
  %61 = fpext <8 x float> %60 to <8 x double>
  %62 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %61, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %53)
  %63 = fptrunc <8 x double> %62 to <8 x float>
  %64 = bitcast float* %51 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %63, <8 x float>* %64, i32 4, <8 x i1> %47), !tbaa !12, !alias.scope !165, !noalias !168, !llvm.access.group !24
  %65 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %66 = or <8 x i32> %65, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %67 = icmp sgt <8 x i32> %broadcast.splat21, %66
  %68 = icmp sgt <8 x i32> %66, zeroinitializer
  %69 = and <8 x i1> %67, %68
  %70 = extractelement <8 x i32> %66, i32 0
  %71 = add i32 %mul.i.i, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %6, i64 %72
  %74 = bitcast float* %73 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %74, i32 4, <8 x i1> %69, <8 x float> undef), !tbaa !12, !alias.scope !165, !noalias !168
  %75 = fpext <8 x float> %wide.masked.load.1 to <8 x double>
  %76 = getelementptr inbounds float, float* %9, i64 %72
  %77 = bitcast float* %76 to <8 x float>*
  %wide.masked.load22.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %77, i32 4, <8 x i1> %69, <8 x float> undef), !tbaa !12, !alias.scope !171
  %78 = add i32 %71, -1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %9, i64 %79
  %81 = bitcast float* %80 to <8 x float>*
  %wide.masked.load23.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %81, i32 4, <8 x i1> %69, <8 x float> undef), !tbaa !12, !alias.scope !172
  %82 = fsub <8 x float> %wide.masked.load22.1, %wide.masked.load23.1
  %83 = fpext <8 x float> %82 to <8 x double>
  %84 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %83, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %75)
  %85 = fptrunc <8 x double> %84 to <8 x float>
  %86 = bitcast float* %73 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %85, <8 x float>* %86, i32 4, <8 x i1> %69), !tbaa !12, !alias.scope !165, !noalias !168, !llvm.access.group !24
  %87 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %88 = or <8 x i32> %87, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %89 = icmp sgt <8 x i32> %broadcast.splat21, %88
  %90 = icmp sgt <8 x i32> %88, zeroinitializer
  %91 = and <8 x i1> %89, %90
  %92 = extractelement <8 x i32> %88, i32 0
  %93 = add i32 %mul.i.i, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %6, i64 %94
  %96 = bitcast float* %95 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %96, i32 4, <8 x i1> %91, <8 x float> undef), !tbaa !12, !alias.scope !165, !noalias !168
  %97 = fpext <8 x float> %wide.masked.load.2 to <8 x double>
  %98 = getelementptr inbounds float, float* %9, i64 %94
  %99 = bitcast float* %98 to <8 x float>*
  %wide.masked.load22.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %99, i32 4, <8 x i1> %91, <8 x float> undef), !tbaa !12, !alias.scope !171
  %100 = add i32 %93, -1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %9, i64 %101
  %103 = bitcast float* %102 to <8 x float>*
  %wide.masked.load23.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %103, i32 4, <8 x i1> %91, <8 x float> undef), !tbaa !12, !alias.scope !172
  %104 = fsub <8 x float> %wide.masked.load22.2, %wide.masked.load23.2
  %105 = fpext <8 x float> %104 to <8 x double>
  %106 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %105, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %97)
  %107 = fptrunc <8 x double> %106 to <8 x float>
  %108 = bitcast float* %95 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %107, <8 x float>* %108, i32 4, <8 x i1> %91), !tbaa !12, !alias.scope !165, !noalias !168, !llvm.access.group !24
  %109 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %110 = or <8 x i32> %109, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %111 = icmp sgt <8 x i32> %broadcast.splat21, %110
  %112 = icmp sgt <8 x i32> %110, zeroinitializer
  %113 = and <8 x i1> %111, %112
  %114 = extractelement <8 x i32> %110, i32 0
  %115 = add i32 %mul.i.i, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %6, i64 %116
  %118 = bitcast float* %117 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %118, i32 4, <8 x i1> %113, <8 x float> undef), !tbaa !12, !alias.scope !165, !noalias !168
  %119 = fpext <8 x float> %wide.masked.load.3 to <8 x double>
  %120 = getelementptr inbounds float, float* %9, i64 %116
  %121 = bitcast float* %120 to <8 x float>*
  %wide.masked.load22.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %121, i32 4, <8 x i1> %113, <8 x float> undef), !tbaa !12, !alias.scope !171
  %122 = add i32 %115, -1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %9, i64 %123
  %125 = bitcast float* %124 to <8 x float>*
  %wide.masked.load23.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %125, i32 4, <8 x i1> %113, <8 x float> undef), !tbaa !12, !alias.scope !172
  %126 = fsub <8 x float> %wide.masked.load22.3, %wide.masked.load23.3
  %127 = fpext <8 x float> %126 to <8 x double>
  %128 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %127, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %119)
  %129 = fptrunc <8 x double> %128 to <8 x float>
  %130 = bitcast float* %117 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %129, <8 x float>* %130, i32 4, <8 x i1> %113), !tbaa !12, !alias.scope !165, !noalias !168, !llvm.access.group !24
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us.1380, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.preheader ], [ %976, %if.end.i.i.us.1380 ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %17, %conv.i.i.us
  %cmp7.i.i.us = icmp sgt i32 %conv.i.i.us, 0
  %or.cond.i.i.us = and i1 %cmp4.i.i.us, %cmp7.i.i.us
  br i1 %or.cond.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add.i.i.us = add i32 %mul.i.i, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us
  %131 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %conv9.i.i.us = fpext float %131 to double
  %arrayidx13.i.i.us = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us
  %132 = load float, float* %arrayidx13.i.i.us, align 4, !tbaa !12
  %add15.i.i.us = add i32 %add.i.i.us, -1
  %idxprom16.i.i.us = sext i32 %add15.i.i.us to i64
  %arrayidx17.i.i.us = getelementptr inbounds float, float* %9, i64 %idxprom16.i.i.us
  %133 = load float, float* %arrayidx17.i.i.us, align 4, !tbaa !12
  %sub18.i.i.us = fsub float %132, %133
  %conv19.i.i.us = fpext float %sub18.i.i.us to double
  %134 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us, double -5.000000e-01, double %conv9.i.i.us) #5
  %conv21.i.i.us = fptrunc double %134 to float
  store float %conv21.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %135 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1362 = add nuw nsw i64 %135, %mul.i.i.i
  %conv.i.i.us.1363 = trunc i64 %add1.i.i.i.us.1362 to i32
  %cmp4.i.i.us.1364 = icmp sgt i32 %17, %conv.i.i.us.1363
  %cmp7.i.i.us.1365 = icmp sgt i32 %conv.i.i.us.1363, 0
  %or.cond.i.i.us.1366 = and i1 %cmp4.i.i.us.1364, %cmp7.i.i.us.1365
  br i1 %or.cond.i.i.us.1366, label %if.then.i.i.us.1379, label %if.end.i.i.us.1380

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.i.i.us.1380
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i
  %136 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.1 = or i32 %136, 1
  %cmp.i.i.1 = icmp sgt i32 %13, %conv2.i.i.1
  %mul.i.i.1 = mul nsw i32 %17, %conv2.i.i.1
  br i1 %cmp.i.i.1, label %vector.scevcheck34, label %pregion_for_end.i.i.1

vector.scevcheck34:                               ; preds = %pregion_for_end.i.i
  %137 = mul i32 %17, %conv2.i.i.1
  %138 = trunc i64 %2 to i32
  %139 = shl i32 %138, 5
  %140 = add i32 %137, %139
  %141 = icmp sgt i32 %140, 2147483616
  %142 = add i32 %137, %139
  %143 = add i32 %142, -1
  %144 = add i32 %142, 30
  %145 = icmp slt i32 %144, %143
  %146 = or i1 %141, %145
  br i1 %146, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.memcheck56

pregion_for_entry.entry.i.i.us.1.preheader:       ; preds = %vector.memcheck56, %vector.scevcheck34
  br label %pregion_for_entry.entry.i.i.us.1

vector.memcheck56:                                ; preds = %vector.scevcheck34
  %147 = mul i32 %17, %conv2.i.i.1
  %148 = trunc i64 %2 to i32
  %149 = shl i32 %148, 5
  %150 = add i32 %147, %149
  %151 = sext i32 %150 to i64
  %scevgep36 = getelementptr float, float* %6, i64 %151
  %152 = add nsw i64 %151, 32
  %scevgep38 = getelementptr float, float* %6, i64 %152
  %153 = add i32 %147, %149
  %154 = add i32 %153, -1
  %155 = sext i32 %154 to i64
  %scevgep40 = getelementptr float, float* %9, i64 %155
  %156 = add nsw i64 %155, 32
  %scevgep42 = getelementptr float, float* %9, i64 %156
  %scevgep44 = getelementptr float, float* %9, i64 %151
  %scevgep46 = getelementptr float, float* %9, i64 %152
  %bound048 = icmp ult float* %scevgep36, %scevgep42
  %bound149 = icmp ult float* %scevgep40, %scevgep38
  %found.conflict50 = and i1 %bound048, %bound149
  %bound051 = icmp ult float* %scevgep36, %scevgep46
  %bound152 = icmp ult float* %scevgep44, %scevgep38
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx54 = or i1 %found.conflict50, %found.conflict53
  br i1 %conflict.rdx54, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.ph57

vector.ph57:                                      ; preds = %vector.memcheck56
  %broadcast.splatinsert64 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat65 = shufflevector <8 x i64> %broadcast.splatinsert64, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert66 = insertelement <8 x i32> undef, i32 %17, i32 0
  %broadcast.splat67 = shufflevector <8 x i32> %broadcast.splatinsert66, <8 x i32> undef, <8 x i32> zeroinitializer
  %157 = trunc <8 x i64> %broadcast.splat65 to <8 x i32>
  %158 = or <8 x i32> %157, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %159 = icmp sgt <8 x i32> %broadcast.splat67, %158
  %160 = icmp sgt <8 x i32> %158, zeroinitializer
  %161 = and <8 x i1> %159, %160
  %162 = extractelement <8 x i32> %158, i32 0
  %163 = add i32 %mul.i.i.1, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %6, i64 %164
  %166 = bitcast float* %165 to <8 x float>*
  %wide.masked.load68 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %166, i32 4, <8 x i1> %161, <8 x float> undef), !tbaa !12, !alias.scope !173, !noalias !176
  %167 = fpext <8 x float> %wide.masked.load68 to <8 x double>
  %168 = getelementptr inbounds float, float* %9, i64 %164
  %169 = bitcast float* %168 to <8 x float>*
  %wide.masked.load69 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %169, i32 4, <8 x i1> %161, <8 x float> undef), !tbaa !12, !alias.scope !179
  %170 = add i32 %163, -1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %9, i64 %171
  %173 = bitcast float* %172 to <8 x float>*
  %wide.masked.load70 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %173, i32 4, <8 x i1> %161, <8 x float> undef), !tbaa !12, !alias.scope !180
  %174 = fsub <8 x float> %wide.masked.load69, %wide.masked.load70
  %175 = fpext <8 x float> %174 to <8 x double>
  %176 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %175, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %167)
  %177 = fptrunc <8 x double> %176 to <8 x float>
  %178 = bitcast float* %165 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %177, <8 x float>* %178, i32 4, <8 x i1> %161), !tbaa !12, !alias.scope !173, !noalias !176, !llvm.access.group !24
  %179 = trunc <8 x i64> %broadcast.splat65 to <8 x i32>
  %180 = or <8 x i32> %179, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %181 = icmp sgt <8 x i32> %broadcast.splat67, %180
  %182 = icmp sgt <8 x i32> %180, zeroinitializer
  %183 = and <8 x i1> %181, %182
  %184 = extractelement <8 x i32> %180, i32 0
  %185 = add i32 %mul.i.i.1, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %6, i64 %186
  %188 = bitcast float* %187 to <8 x float>*
  %wide.masked.load68.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %188, i32 4, <8 x i1> %183, <8 x float> undef), !tbaa !12, !alias.scope !173, !noalias !176
  %189 = fpext <8 x float> %wide.masked.load68.1 to <8 x double>
  %190 = getelementptr inbounds float, float* %9, i64 %186
  %191 = bitcast float* %190 to <8 x float>*
  %wide.masked.load69.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %191, i32 4, <8 x i1> %183, <8 x float> undef), !tbaa !12, !alias.scope !179
  %192 = add i32 %185, -1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %9, i64 %193
  %195 = bitcast float* %194 to <8 x float>*
  %wide.masked.load70.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %195, i32 4, <8 x i1> %183, <8 x float> undef), !tbaa !12, !alias.scope !180
  %196 = fsub <8 x float> %wide.masked.load69.1, %wide.masked.load70.1
  %197 = fpext <8 x float> %196 to <8 x double>
  %198 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %197, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %189)
  %199 = fptrunc <8 x double> %198 to <8 x float>
  %200 = bitcast float* %187 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %199, <8 x float>* %200, i32 4, <8 x i1> %183), !tbaa !12, !alias.scope !173, !noalias !176, !llvm.access.group !24
  %201 = trunc <8 x i64> %broadcast.splat65 to <8 x i32>
  %202 = or <8 x i32> %201, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %203 = icmp sgt <8 x i32> %broadcast.splat67, %202
  %204 = icmp sgt <8 x i32> %202, zeroinitializer
  %205 = and <8 x i1> %203, %204
  %206 = extractelement <8 x i32> %202, i32 0
  %207 = add i32 %mul.i.i.1, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %6, i64 %208
  %210 = bitcast float* %209 to <8 x float>*
  %wide.masked.load68.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %210, i32 4, <8 x i1> %205, <8 x float> undef), !tbaa !12, !alias.scope !173, !noalias !176
  %211 = fpext <8 x float> %wide.masked.load68.2 to <8 x double>
  %212 = getelementptr inbounds float, float* %9, i64 %208
  %213 = bitcast float* %212 to <8 x float>*
  %wide.masked.load69.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %213, i32 4, <8 x i1> %205, <8 x float> undef), !tbaa !12, !alias.scope !179
  %214 = add i32 %207, -1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %9, i64 %215
  %217 = bitcast float* %216 to <8 x float>*
  %wide.masked.load70.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %217, i32 4, <8 x i1> %205, <8 x float> undef), !tbaa !12, !alias.scope !180
  %218 = fsub <8 x float> %wide.masked.load69.2, %wide.masked.load70.2
  %219 = fpext <8 x float> %218 to <8 x double>
  %220 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %219, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %211)
  %221 = fptrunc <8 x double> %220 to <8 x float>
  %222 = bitcast float* %209 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %221, <8 x float>* %222, i32 4, <8 x i1> %205), !tbaa !12, !alias.scope !173, !noalias !176, !llvm.access.group !24
  %223 = trunc <8 x i64> %broadcast.splat65 to <8 x i32>
  %224 = or <8 x i32> %223, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %225 = icmp sgt <8 x i32> %broadcast.splat67, %224
  %226 = icmp sgt <8 x i32> %224, zeroinitializer
  %227 = and <8 x i1> %225, %226
  %228 = extractelement <8 x i32> %224, i32 0
  %229 = add i32 %mul.i.i.1, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float, float* %6, i64 %230
  %232 = bitcast float* %231 to <8 x float>*
  %wide.masked.load68.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %232, i32 4, <8 x i1> %227, <8 x float> undef), !tbaa !12, !alias.scope !173, !noalias !176
  %233 = fpext <8 x float> %wide.masked.load68.3 to <8 x double>
  %234 = getelementptr inbounds float, float* %9, i64 %230
  %235 = bitcast float* %234 to <8 x float>*
  %wide.masked.load69.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %235, i32 4, <8 x i1> %227, <8 x float> undef), !tbaa !12, !alias.scope !179
  %236 = add i32 %229, -1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %9, i64 %237
  %239 = bitcast float* %238 to <8 x float>*
  %wide.masked.load70.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %239, i32 4, <8 x i1> %227, <8 x float> undef), !tbaa !12, !alias.scope !180
  %240 = fsub <8 x float> %wide.masked.load69.3, %wide.masked.load70.3
  %241 = fpext <8 x float> %240 to <8 x double>
  %242 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %241, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %233)
  %243 = fptrunc <8 x double> %242 to <8 x float>
  %244 = bitcast float* %231 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %243, <8 x float>* %244, i32 4, <8 x i1> %227), !tbaa !12, !alias.scope !173, !noalias !176, !llvm.access.group !24
  br label %pregion_for_end.i.i.1

pregion_for_entry.entry.i.i.us.1:                 ; preds = %if.end.i.i.us.1.1, %pregion_for_entry.entry.i.i.us.1.preheader
  %_local_id_x.i.0.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.1.preheader ], [ %971, %if.end.i.i.us.1.1 ]
  %add1.i.i.i.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.1, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp4.i.i.us.1 = icmp sgt i32 %17, %conv.i.i.us.1
  %cmp7.i.i.us.1 = icmp sgt i32 %conv.i.i.us.1, 0
  %or.cond.i.i.us.1 = and i1 %cmp4.i.i.us.1, %cmp7.i.i.us.1
  br i1 %or.cond.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

if.then.i.i.us.1:                                 ; preds = %pregion_for_entry.entry.i.i.us.1
  %add.i.i.us.1 = add i32 %mul.i.i.1, %conv.i.i.us.1
  %idxprom.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.1
  %245 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %conv9.i.i.us.1 = fpext float %245 to double
  %arrayidx13.i.i.us.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.1
  %246 = load float, float* %arrayidx13.i.i.us.1, align 4, !tbaa !12
  %add15.i.i.us.1 = add i32 %add.i.i.us.1, -1
  %idxprom16.i.i.us.1 = sext i32 %add15.i.i.us.1 to i64
  %arrayidx17.i.i.us.1 = getelementptr inbounds float, float* %9, i64 %idxprom16.i.i.us.1
  %247 = load float, float* %arrayidx17.i.i.us.1, align 4, !tbaa !12
  %sub18.i.i.us.1 = fsub float %246, %247
  %conv19.i.i.us.1 = fpext float %sub18.i.i.us.1 to double
  %248 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.1, double -5.000000e-01, double %conv9.i.i.us.1) #5
  %conv21.i.i.us.1 = fptrunc double %248 to float
  store float %conv21.i.i.us.1, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.then.i.i.us.1, %pregion_for_entry.entry.i.i.us.1
  %249 = or i64 %_local_id_x.i.0.us.1, 1
  %add1.i.i.i.us.1.1 = add nuw nsw i64 %249, %mul.i.i.i
  %conv.i.i.us.1.1 = trunc i64 %add1.i.i.i.us.1.1 to i32
  %cmp4.i.i.us.1.1 = icmp sgt i32 %17, %conv.i.i.us.1.1
  %cmp7.i.i.us.1.1 = icmp sgt i32 %conv.i.i.us.1.1, 0
  %or.cond.i.i.us.1.1 = and i1 %cmp4.i.i.us.1.1, %cmp7.i.i.us.1.1
  br i1 %or.cond.i.i.us.1.1, label %if.then.i.i.us.1.1, label %if.end.i.i.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.i.i.us.1.1
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph57, %pregion_for_end.i.i
  %250 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.2 = or i32 %250, 2
  %cmp.i.i.2 = icmp sgt i32 %13, %conv2.i.i.2
  %mul.i.i.2 = mul nsw i32 %17, %conv2.i.i.2
  br i1 %cmp.i.i.2, label %vector.scevcheck81, label %pregion_for_end.i.i.2

vector.scevcheck81:                               ; preds = %pregion_for_end.i.i.1
  %251 = mul i32 %17, %conv2.i.i.2
  %252 = trunc i64 %2 to i32
  %253 = shl i32 %252, 5
  %254 = add i32 %251, %253
  %255 = icmp sgt i32 %254, 2147483616
  %256 = add i32 %251, %253
  %257 = add i32 %256, -1
  %258 = add i32 %256, 30
  %259 = icmp slt i32 %258, %257
  %260 = or i1 %255, %259
  br i1 %260, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.memcheck103

pregion_for_entry.entry.i.i.us.2.preheader:       ; preds = %vector.memcheck103, %vector.scevcheck81
  br label %pregion_for_entry.entry.i.i.us.2

vector.memcheck103:                               ; preds = %vector.scevcheck81
  %261 = mul i32 %17, %conv2.i.i.2
  %262 = trunc i64 %2 to i32
  %263 = shl i32 %262, 5
  %264 = add i32 %261, %263
  %265 = sext i32 %264 to i64
  %scevgep83 = getelementptr float, float* %6, i64 %265
  %266 = add nsw i64 %265, 32
  %scevgep85 = getelementptr float, float* %6, i64 %266
  %267 = add i32 %261, %263
  %268 = add i32 %267, -2
  %269 = sext i32 %268 to i64
  %270 = add nuw nsw i64 %269, 1
  %scevgep87 = getelementptr float, float* %9, i64 %270
  %271 = add nsw i64 %269, 33
  %scevgep89 = getelementptr float, float* %9, i64 %271
  %scevgep91 = getelementptr float, float* %9, i64 %265
  %scevgep93 = getelementptr float, float* %9, i64 %266
  %bound095 = icmp ult float* %scevgep83, %scevgep89
  %bound196 = icmp ult float* %scevgep87, %scevgep85
  %found.conflict97 = and i1 %bound095, %bound196
  %bound098 = icmp ult float* %scevgep83, %scevgep93
  %bound199 = icmp ult float* %scevgep91, %scevgep85
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx101 = or i1 %found.conflict97, %found.conflict100
  br i1 %conflict.rdx101, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck103
  %broadcast.splatinsert111 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat112 = shufflevector <8 x i64> %broadcast.splatinsert111, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <8 x i32> undef, i32 %17, i32 0
  %broadcast.splat114 = shufflevector <8 x i32> %broadcast.splatinsert113, <8 x i32> undef, <8 x i32> zeroinitializer
  %272 = trunc <8 x i64> %broadcast.splat112 to <8 x i32>
  %273 = or <8 x i32> %272, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %274 = icmp sgt <8 x i32> %broadcast.splat114, %273
  %275 = icmp sgt <8 x i32> %273, zeroinitializer
  %276 = and <8 x i1> %274, %275
  %277 = extractelement <8 x i32> %273, i32 0
  %278 = add i32 %mul.i.i.2, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %6, i64 %279
  %281 = bitcast float* %280 to <8 x float>*
  %wide.masked.load115 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %281, i32 4, <8 x i1> %276, <8 x float> undef), !tbaa !12, !alias.scope !181, !noalias !184
  %282 = fpext <8 x float> %wide.masked.load115 to <8 x double>
  %283 = getelementptr inbounds float, float* %9, i64 %279
  %284 = bitcast float* %283 to <8 x float>*
  %wide.masked.load116 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %284, i32 4, <8 x i1> %276, <8 x float> undef), !tbaa !12, !alias.scope !187
  %285 = add i32 %278, -1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds float, float* %9, i64 %286
  %288 = bitcast float* %287 to <8 x float>*
  %wide.masked.load117 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %288, i32 4, <8 x i1> %276, <8 x float> undef), !tbaa !12, !alias.scope !188
  %289 = fsub <8 x float> %wide.masked.load116, %wide.masked.load117
  %290 = fpext <8 x float> %289 to <8 x double>
  %291 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %290, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %282)
  %292 = fptrunc <8 x double> %291 to <8 x float>
  %293 = bitcast float* %280 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %292, <8 x float>* %293, i32 4, <8 x i1> %276), !tbaa !12, !alias.scope !181, !noalias !184, !llvm.access.group !24
  %294 = trunc <8 x i64> %broadcast.splat112 to <8 x i32>
  %295 = or <8 x i32> %294, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %296 = icmp sgt <8 x i32> %broadcast.splat114, %295
  %297 = icmp sgt <8 x i32> %295, zeroinitializer
  %298 = and <8 x i1> %296, %297
  %299 = extractelement <8 x i32> %295, i32 0
  %300 = add i32 %mul.i.i.2, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds float, float* %6, i64 %301
  %303 = bitcast float* %302 to <8 x float>*
  %wide.masked.load115.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %303, i32 4, <8 x i1> %298, <8 x float> undef), !tbaa !12, !alias.scope !181, !noalias !184
  %304 = fpext <8 x float> %wide.masked.load115.1 to <8 x double>
  %305 = getelementptr inbounds float, float* %9, i64 %301
  %306 = bitcast float* %305 to <8 x float>*
  %wide.masked.load116.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %306, i32 4, <8 x i1> %298, <8 x float> undef), !tbaa !12, !alias.scope !187
  %307 = add i32 %300, -1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %9, i64 %308
  %310 = bitcast float* %309 to <8 x float>*
  %wide.masked.load117.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %310, i32 4, <8 x i1> %298, <8 x float> undef), !tbaa !12, !alias.scope !188
  %311 = fsub <8 x float> %wide.masked.load116.1, %wide.masked.load117.1
  %312 = fpext <8 x float> %311 to <8 x double>
  %313 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %312, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %304)
  %314 = fptrunc <8 x double> %313 to <8 x float>
  %315 = bitcast float* %302 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %314, <8 x float>* %315, i32 4, <8 x i1> %298), !tbaa !12, !alias.scope !181, !noalias !184, !llvm.access.group !24
  %316 = trunc <8 x i64> %broadcast.splat112 to <8 x i32>
  %317 = or <8 x i32> %316, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %318 = icmp sgt <8 x i32> %broadcast.splat114, %317
  %319 = icmp sgt <8 x i32> %317, zeroinitializer
  %320 = and <8 x i1> %318, %319
  %321 = extractelement <8 x i32> %317, i32 0
  %322 = add i32 %mul.i.i.2, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds float, float* %6, i64 %323
  %325 = bitcast float* %324 to <8 x float>*
  %wide.masked.load115.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %325, i32 4, <8 x i1> %320, <8 x float> undef), !tbaa !12, !alias.scope !181, !noalias !184
  %326 = fpext <8 x float> %wide.masked.load115.2 to <8 x double>
  %327 = getelementptr inbounds float, float* %9, i64 %323
  %328 = bitcast float* %327 to <8 x float>*
  %wide.masked.load116.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %328, i32 4, <8 x i1> %320, <8 x float> undef), !tbaa !12, !alias.scope !187
  %329 = add i32 %322, -1
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds float, float* %9, i64 %330
  %332 = bitcast float* %331 to <8 x float>*
  %wide.masked.load117.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %332, i32 4, <8 x i1> %320, <8 x float> undef), !tbaa !12, !alias.scope !188
  %333 = fsub <8 x float> %wide.masked.load116.2, %wide.masked.load117.2
  %334 = fpext <8 x float> %333 to <8 x double>
  %335 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %334, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %326)
  %336 = fptrunc <8 x double> %335 to <8 x float>
  %337 = bitcast float* %324 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %336, <8 x float>* %337, i32 4, <8 x i1> %320), !tbaa !12, !alias.scope !181, !noalias !184, !llvm.access.group !24
  %338 = trunc <8 x i64> %broadcast.splat112 to <8 x i32>
  %339 = or <8 x i32> %338, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %340 = icmp sgt <8 x i32> %broadcast.splat114, %339
  %341 = icmp sgt <8 x i32> %339, zeroinitializer
  %342 = and <8 x i1> %340, %341
  %343 = extractelement <8 x i32> %339, i32 0
  %344 = add i32 %mul.i.i.2, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float, float* %6, i64 %345
  %347 = bitcast float* %346 to <8 x float>*
  %wide.masked.load115.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %347, i32 4, <8 x i1> %342, <8 x float> undef), !tbaa !12, !alias.scope !181, !noalias !184
  %348 = fpext <8 x float> %wide.masked.load115.3 to <8 x double>
  %349 = getelementptr inbounds float, float* %9, i64 %345
  %350 = bitcast float* %349 to <8 x float>*
  %wide.masked.load116.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %350, i32 4, <8 x i1> %342, <8 x float> undef), !tbaa !12, !alias.scope !187
  %351 = add i32 %344, -1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds float, float* %9, i64 %352
  %354 = bitcast float* %353 to <8 x float>*
  %wide.masked.load117.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %354, i32 4, <8 x i1> %342, <8 x float> undef), !tbaa !12, !alias.scope !188
  %355 = fsub <8 x float> %wide.masked.load116.3, %wide.masked.load117.3
  %356 = fpext <8 x float> %355 to <8 x double>
  %357 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %356, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %348)
  %358 = fptrunc <8 x double> %357 to <8 x float>
  %359 = bitcast float* %346 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %358, <8 x float>* %359, i32 4, <8 x i1> %342), !tbaa !12, !alias.scope !181, !noalias !184, !llvm.access.group !24
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.2:                 ; preds = %if.end.i.i.us.2.1, %pregion_for_entry.entry.i.i.us.2.preheader
  %_local_id_x.i.0.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.2.preheader ], [ %966, %if.end.i.i.us.2.1 ]
  %add1.i.i.i.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.2, %mul.i.i.i
  %conv.i.i.us.2 = trunc i64 %add1.i.i.i.us.2 to i32
  %cmp4.i.i.us.2 = icmp sgt i32 %17, %conv.i.i.us.2
  %cmp7.i.i.us.2 = icmp sgt i32 %conv.i.i.us.2, 0
  %or.cond.i.i.us.2 = and i1 %cmp4.i.i.us.2, %cmp7.i.i.us.2
  br i1 %or.cond.i.i.us.2, label %if.then.i.i.us.2, label %if.end.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %pregion_for_entry.entry.i.i.us.2
  %add.i.i.us.2 = add i32 %mul.i.i.2, %conv.i.i.us.2
  %idxprom.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.2
  %360 = load float, float* %arrayidx.i.i.us.2, align 4, !tbaa !12
  %conv9.i.i.us.2 = fpext float %360 to double
  %arrayidx13.i.i.us.2 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.2
  %361 = load float, float* %arrayidx13.i.i.us.2, align 4, !tbaa !12
  %add15.i.i.us.2 = add i32 %add.i.i.us.2, -1
  %idxprom16.i.i.us.2 = sext i32 %add15.i.i.us.2 to i64
  %arrayidx17.i.i.us.2 = getelementptr inbounds float, float* %9, i64 %idxprom16.i.i.us.2
  %362 = load float, float* %arrayidx17.i.i.us.2, align 4, !tbaa !12
  %sub18.i.i.us.2 = fsub float %361, %362
  %conv19.i.i.us.2 = fpext float %sub18.i.i.us.2 to double
  %363 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.2, double -5.000000e-01, double %conv9.i.i.us.2) #5
  %conv21.i.i.us.2 = fptrunc double %363 to float
  store float %conv21.i.i.us.2, float* %arrayidx.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.2

if.end.i.i.us.2:                                  ; preds = %if.then.i.i.us.2, %pregion_for_entry.entry.i.i.us.2
  %364 = or i64 %_local_id_x.i.0.us.2, 1
  %add1.i.i.i.us.2.1 = add nuw nsw i64 %364, %mul.i.i.i
  %conv.i.i.us.2.1 = trunc i64 %add1.i.i.i.us.2.1 to i32
  %cmp4.i.i.us.2.1 = icmp sgt i32 %17, %conv.i.i.us.2.1
  %cmp7.i.i.us.2.1 = icmp sgt i32 %conv.i.i.us.2.1, 0
  %or.cond.i.i.us.2.1 = and i1 %cmp4.i.i.us.2.1, %cmp7.i.i.us.2.1
  br i1 %or.cond.i.i.us.2.1, label %if.then.i.i.us.2.1, label %if.end.i.i.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.i.i.us.2.1
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph104, %pregion_for_end.i.i.1
  %365 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.3 = or i32 %365, 3
  %cmp.i.i.3 = icmp sgt i32 %13, %conv2.i.i.3
  %mul.i.i.3 = mul nsw i32 %17, %conv2.i.i.3
  br i1 %cmp.i.i.3, label %vector.scevcheck128, label %pregion_for_end.i.i.3

vector.scevcheck128:                              ; preds = %pregion_for_end.i.i.2
  %366 = mul i32 %17, %conv2.i.i.3
  %367 = trunc i64 %2 to i32
  %368 = shl i32 %367, 5
  %369 = add i32 %366, %368
  %370 = icmp sgt i32 %369, 2147483616
  %371 = add i32 %366, %368
  %372 = add i32 %371, -1
  %373 = add i32 %371, 30
  %374 = icmp slt i32 %373, %372
  %375 = or i1 %370, %374
  br i1 %375, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.memcheck150

pregion_for_entry.entry.i.i.us.3.preheader:       ; preds = %vector.memcheck150, %vector.scevcheck128
  br label %pregion_for_entry.entry.i.i.us.3

vector.memcheck150:                               ; preds = %vector.scevcheck128
  %376 = mul i32 %17, %conv2.i.i.3
  %377 = trunc i64 %2 to i32
  %378 = shl i32 %377, 5
  %379 = add i32 %376, %378
  %380 = sext i32 %379 to i64
  %scevgep130 = getelementptr float, float* %6, i64 %380
  %381 = add nsw i64 %380, 32
  %scevgep132 = getelementptr float, float* %6, i64 %381
  %382 = add i32 %376, %378
  %383 = add i32 %382, -1
  %384 = sext i32 %383 to i64
  %scevgep134 = getelementptr float, float* %9, i64 %384
  %385 = add nsw i64 %384, 32
  %scevgep136 = getelementptr float, float* %9, i64 %385
  %scevgep138 = getelementptr float, float* %9, i64 %380
  %scevgep140 = getelementptr float, float* %9, i64 %381
  %bound0142 = icmp ult float* %scevgep130, %scevgep136
  %bound1143 = icmp ult float* %scevgep134, %scevgep132
  %found.conflict144 = and i1 %bound0142, %bound1143
  %bound0145 = icmp ult float* %scevgep130, %scevgep140
  %bound1146 = icmp ult float* %scevgep138, %scevgep132
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx148 = or i1 %found.conflict144, %found.conflict147
  br i1 %conflict.rdx148, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck150
  %broadcast.splatinsert158 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat159 = shufflevector <8 x i64> %broadcast.splatinsert158, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert160 = insertelement <8 x i32> undef, i32 %17, i32 0
  %broadcast.splat161 = shufflevector <8 x i32> %broadcast.splatinsert160, <8 x i32> undef, <8 x i32> zeroinitializer
  %386 = trunc <8 x i64> %broadcast.splat159 to <8 x i32>
  %387 = or <8 x i32> %386, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %388 = icmp sgt <8 x i32> %broadcast.splat161, %387
  %389 = icmp sgt <8 x i32> %387, zeroinitializer
  %390 = and <8 x i1> %388, %389
  %391 = extractelement <8 x i32> %387, i32 0
  %392 = add i32 %mul.i.i.3, %391
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds float, float* %6, i64 %393
  %395 = bitcast float* %394 to <8 x float>*
  %wide.masked.load162 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %395, i32 4, <8 x i1> %390, <8 x float> undef), !tbaa !12, !alias.scope !189, !noalias !192
  %396 = fpext <8 x float> %wide.masked.load162 to <8 x double>
  %397 = getelementptr inbounds float, float* %9, i64 %393
  %398 = bitcast float* %397 to <8 x float>*
  %wide.masked.load163 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %398, i32 4, <8 x i1> %390, <8 x float> undef), !tbaa !12, !alias.scope !195
  %399 = add i32 %392, -1
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds float, float* %9, i64 %400
  %402 = bitcast float* %401 to <8 x float>*
  %wide.masked.load164 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %402, i32 4, <8 x i1> %390, <8 x float> undef), !tbaa !12, !alias.scope !196
  %403 = fsub <8 x float> %wide.masked.load163, %wide.masked.load164
  %404 = fpext <8 x float> %403 to <8 x double>
  %405 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %404, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %396)
  %406 = fptrunc <8 x double> %405 to <8 x float>
  %407 = bitcast float* %394 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %406, <8 x float>* %407, i32 4, <8 x i1> %390), !tbaa !12, !alias.scope !189, !noalias !192, !llvm.access.group !24
  %408 = trunc <8 x i64> %broadcast.splat159 to <8 x i32>
  %409 = or <8 x i32> %408, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %410 = icmp sgt <8 x i32> %broadcast.splat161, %409
  %411 = icmp sgt <8 x i32> %409, zeroinitializer
  %412 = and <8 x i1> %410, %411
  %413 = extractelement <8 x i32> %409, i32 0
  %414 = add i32 %mul.i.i.3, %413
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds float, float* %6, i64 %415
  %417 = bitcast float* %416 to <8 x float>*
  %wide.masked.load162.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %417, i32 4, <8 x i1> %412, <8 x float> undef), !tbaa !12, !alias.scope !189, !noalias !192
  %418 = fpext <8 x float> %wide.masked.load162.1 to <8 x double>
  %419 = getelementptr inbounds float, float* %9, i64 %415
  %420 = bitcast float* %419 to <8 x float>*
  %wide.masked.load163.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %420, i32 4, <8 x i1> %412, <8 x float> undef), !tbaa !12, !alias.scope !195
  %421 = add i32 %414, -1
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds float, float* %9, i64 %422
  %424 = bitcast float* %423 to <8 x float>*
  %wide.masked.load164.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %424, i32 4, <8 x i1> %412, <8 x float> undef), !tbaa !12, !alias.scope !196
  %425 = fsub <8 x float> %wide.masked.load163.1, %wide.masked.load164.1
  %426 = fpext <8 x float> %425 to <8 x double>
  %427 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %426, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %418)
  %428 = fptrunc <8 x double> %427 to <8 x float>
  %429 = bitcast float* %416 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %428, <8 x float>* %429, i32 4, <8 x i1> %412), !tbaa !12, !alias.scope !189, !noalias !192, !llvm.access.group !24
  %430 = trunc <8 x i64> %broadcast.splat159 to <8 x i32>
  %431 = or <8 x i32> %430, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %432 = icmp sgt <8 x i32> %broadcast.splat161, %431
  %433 = icmp sgt <8 x i32> %431, zeroinitializer
  %434 = and <8 x i1> %432, %433
  %435 = extractelement <8 x i32> %431, i32 0
  %436 = add i32 %mul.i.i.3, %435
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds float, float* %6, i64 %437
  %439 = bitcast float* %438 to <8 x float>*
  %wide.masked.load162.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %439, i32 4, <8 x i1> %434, <8 x float> undef), !tbaa !12, !alias.scope !189, !noalias !192
  %440 = fpext <8 x float> %wide.masked.load162.2 to <8 x double>
  %441 = getelementptr inbounds float, float* %9, i64 %437
  %442 = bitcast float* %441 to <8 x float>*
  %wide.masked.load163.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %442, i32 4, <8 x i1> %434, <8 x float> undef), !tbaa !12, !alias.scope !195
  %443 = add i32 %436, -1
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds float, float* %9, i64 %444
  %446 = bitcast float* %445 to <8 x float>*
  %wide.masked.load164.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %446, i32 4, <8 x i1> %434, <8 x float> undef), !tbaa !12, !alias.scope !196
  %447 = fsub <8 x float> %wide.masked.load163.2, %wide.masked.load164.2
  %448 = fpext <8 x float> %447 to <8 x double>
  %449 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %448, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %440)
  %450 = fptrunc <8 x double> %449 to <8 x float>
  %451 = bitcast float* %438 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %450, <8 x float>* %451, i32 4, <8 x i1> %434), !tbaa !12, !alias.scope !189, !noalias !192, !llvm.access.group !24
  %452 = trunc <8 x i64> %broadcast.splat159 to <8 x i32>
  %453 = or <8 x i32> %452, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %454 = icmp sgt <8 x i32> %broadcast.splat161, %453
  %455 = icmp sgt <8 x i32> %453, zeroinitializer
  %456 = and <8 x i1> %454, %455
  %457 = extractelement <8 x i32> %453, i32 0
  %458 = add i32 %mul.i.i.3, %457
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds float, float* %6, i64 %459
  %461 = bitcast float* %460 to <8 x float>*
  %wide.masked.load162.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %461, i32 4, <8 x i1> %456, <8 x float> undef), !tbaa !12, !alias.scope !189, !noalias !192
  %462 = fpext <8 x float> %wide.masked.load162.3 to <8 x double>
  %463 = getelementptr inbounds float, float* %9, i64 %459
  %464 = bitcast float* %463 to <8 x float>*
  %wide.masked.load163.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %464, i32 4, <8 x i1> %456, <8 x float> undef), !tbaa !12, !alias.scope !195
  %465 = add i32 %458, -1
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds float, float* %9, i64 %466
  %468 = bitcast float* %467 to <8 x float>*
  %wide.masked.load164.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %468, i32 4, <8 x i1> %456, <8 x float> undef), !tbaa !12, !alias.scope !196
  %469 = fsub <8 x float> %wide.masked.load163.3, %wide.masked.load164.3
  %470 = fpext <8 x float> %469 to <8 x double>
  %471 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %470, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %462)
  %472 = fptrunc <8 x double> %471 to <8 x float>
  %473 = bitcast float* %460 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %472, <8 x float>* %473, i32 4, <8 x i1> %456), !tbaa !12, !alias.scope !189, !noalias !192, !llvm.access.group !24
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.3:                 ; preds = %if.end.i.i.us.3.1, %pregion_for_entry.entry.i.i.us.3.preheader
  %_local_id_x.i.0.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.3.preheader ], [ %961, %if.end.i.i.us.3.1 ]
  %add1.i.i.i.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.3, %mul.i.i.i
  %conv.i.i.us.3 = trunc i64 %add1.i.i.i.us.3 to i32
  %cmp4.i.i.us.3 = icmp sgt i32 %17, %conv.i.i.us.3
  %cmp7.i.i.us.3 = icmp sgt i32 %conv.i.i.us.3, 0
  %or.cond.i.i.us.3 = and i1 %cmp4.i.i.us.3, %cmp7.i.i.us.3
  br i1 %or.cond.i.i.us.3, label %if.then.i.i.us.3, label %if.end.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %pregion_for_entry.entry.i.i.us.3
  %add.i.i.us.3 = add i32 %mul.i.i.3, %conv.i.i.us.3
  %idxprom.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.3
  %474 = load float, float* %arrayidx.i.i.us.3, align 4, !tbaa !12
  %conv9.i.i.us.3 = fpext float %474 to double
  %arrayidx13.i.i.us.3 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.3
  %475 = load float, float* %arrayidx13.i.i.us.3, align 4, !tbaa !12
  %add15.i.i.us.3 = add i32 %add.i.i.us.3, -1
  %idxprom16.i.i.us.3 = sext i32 %add15.i.i.us.3 to i64
  %arrayidx17.i.i.us.3 = getelementptr inbounds float, float* %9, i64 %idxprom16.i.i.us.3
  %476 = load float, float* %arrayidx17.i.i.us.3, align 4, !tbaa !12
  %sub18.i.i.us.3 = fsub float %475, %476
  %conv19.i.i.us.3 = fpext float %sub18.i.i.us.3 to double
  %477 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.3, double -5.000000e-01, double %conv9.i.i.us.3) #5
  %conv21.i.i.us.3 = fptrunc double %477 to float
  store float %conv21.i.i.us.3, float* %arrayidx.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.3

if.end.i.i.us.3:                                  ; preds = %if.then.i.i.us.3, %pregion_for_entry.entry.i.i.us.3
  %478 = or i64 %_local_id_x.i.0.us.3, 1
  %add1.i.i.i.us.3.1 = add nuw nsw i64 %478, %mul.i.i.i
  %conv.i.i.us.3.1 = trunc i64 %add1.i.i.i.us.3.1 to i32
  %cmp4.i.i.us.3.1 = icmp sgt i32 %17, %conv.i.i.us.3.1
  %cmp7.i.i.us.3.1 = icmp sgt i32 %conv.i.i.us.3.1, 0
  %or.cond.i.i.us.3.1 = and i1 %cmp4.i.i.us.3.1, %cmp7.i.i.us.3.1
  br i1 %or.cond.i.i.us.3.1, label %if.then.i.i.us.3.1, label %if.end.i.i.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.i.i.us.3.1
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph151, %pregion_for_end.i.i.2
  %479 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.4 = or i32 %479, 4
  %cmp.i.i.4 = icmp sgt i32 %13, %conv2.i.i.4
  %mul.i.i.4 = mul nsw i32 %17, %conv2.i.i.4
  br i1 %cmp.i.i.4, label %vector.scevcheck175, label %pregion_for_end.i.i.4

vector.scevcheck175:                              ; preds = %pregion_for_end.i.i.3
  %480 = mul i32 %17, %conv2.i.i.4
  %481 = trunc i64 %2 to i32
  %482 = shl i32 %481, 5
  %483 = add i32 %480, %482
  %484 = icmp sgt i32 %483, 2147483616
  %485 = add i32 %480, %482
  %486 = add i32 %485, -1
  %487 = add i32 %485, 30
  %488 = icmp slt i32 %487, %486
  %489 = or i1 %484, %488
  br i1 %489, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.memcheck197

pregion_for_entry.entry.i.i.us.4.preheader:       ; preds = %vector.memcheck197, %vector.scevcheck175
  br label %pregion_for_entry.entry.i.i.us.4

vector.memcheck197:                               ; preds = %vector.scevcheck175
  %490 = mul i32 %17, %conv2.i.i.4
  %491 = trunc i64 %2 to i32
  %492 = shl i32 %491, 5
  %493 = add i32 %490, %492
  %494 = sext i32 %493 to i64
  %scevgep177 = getelementptr float, float* %6, i64 %494
  %495 = add nsw i64 %494, 32
  %scevgep179 = getelementptr float, float* %6, i64 %495
  %496 = add i32 %490, %492
  %497 = add i32 %496, -4
  %498 = sext i32 %497 to i64
  %499 = add nuw nsw i64 %498, 3
  %scevgep181 = getelementptr float, float* %9, i64 %499
  %500 = add nsw i64 %498, 35
  %scevgep183 = getelementptr float, float* %9, i64 %500
  %scevgep185 = getelementptr float, float* %9, i64 %494
  %scevgep187 = getelementptr float, float* %9, i64 %495
  %bound0189 = icmp ult float* %scevgep177, %scevgep183
  %bound1190 = icmp ult float* %scevgep181, %scevgep179
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0192 = icmp ult float* %scevgep177, %scevgep187
  %bound1193 = icmp ult float* %scevgep185, %scevgep179
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %found.conflict191, %found.conflict194
  br i1 %conflict.rdx195, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.ph198

vector.ph198:                                     ; preds = %vector.memcheck197
  %broadcast.splatinsert205 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat206 = shufflevector <8 x i64> %broadcast.splatinsert205, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert207 = insertelement <8 x i32> undef, i32 %17, i32 0
  %broadcast.splat208 = shufflevector <8 x i32> %broadcast.splatinsert207, <8 x i32> undef, <8 x i32> zeroinitializer
  %501 = trunc <8 x i64> %broadcast.splat206 to <8 x i32>
  %502 = or <8 x i32> %501, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %503 = icmp sgt <8 x i32> %broadcast.splat208, %502
  %504 = icmp sgt <8 x i32> %502, zeroinitializer
  %505 = and <8 x i1> %503, %504
  %506 = extractelement <8 x i32> %502, i32 0
  %507 = add i32 %mul.i.i.4, %506
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds float, float* %6, i64 %508
  %510 = bitcast float* %509 to <8 x float>*
  %wide.masked.load209 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %510, i32 4, <8 x i1> %505, <8 x float> undef), !tbaa !12, !alias.scope !197, !noalias !200
  %511 = fpext <8 x float> %wide.masked.load209 to <8 x double>
  %512 = getelementptr inbounds float, float* %9, i64 %508
  %513 = bitcast float* %512 to <8 x float>*
  %wide.masked.load210 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %513, i32 4, <8 x i1> %505, <8 x float> undef), !tbaa !12, !alias.scope !203
  %514 = add i32 %507, -1
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds float, float* %9, i64 %515
  %517 = bitcast float* %516 to <8 x float>*
  %wide.masked.load211 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %517, i32 4, <8 x i1> %505, <8 x float> undef), !tbaa !12, !alias.scope !204
  %518 = fsub <8 x float> %wide.masked.load210, %wide.masked.load211
  %519 = fpext <8 x float> %518 to <8 x double>
  %520 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %519, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %511)
  %521 = fptrunc <8 x double> %520 to <8 x float>
  %522 = bitcast float* %509 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %521, <8 x float>* %522, i32 4, <8 x i1> %505), !tbaa !12, !alias.scope !197, !noalias !200, !llvm.access.group !24
  %523 = trunc <8 x i64> %broadcast.splat206 to <8 x i32>
  %524 = or <8 x i32> %523, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %525 = icmp sgt <8 x i32> %broadcast.splat208, %524
  %526 = icmp sgt <8 x i32> %524, zeroinitializer
  %527 = and <8 x i1> %525, %526
  %528 = extractelement <8 x i32> %524, i32 0
  %529 = add i32 %mul.i.i.4, %528
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds float, float* %6, i64 %530
  %532 = bitcast float* %531 to <8 x float>*
  %wide.masked.load209.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %532, i32 4, <8 x i1> %527, <8 x float> undef), !tbaa !12, !alias.scope !197, !noalias !200
  %533 = fpext <8 x float> %wide.masked.load209.1 to <8 x double>
  %534 = getelementptr inbounds float, float* %9, i64 %530
  %535 = bitcast float* %534 to <8 x float>*
  %wide.masked.load210.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %535, i32 4, <8 x i1> %527, <8 x float> undef), !tbaa !12, !alias.scope !203
  %536 = add i32 %529, -1
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds float, float* %9, i64 %537
  %539 = bitcast float* %538 to <8 x float>*
  %wide.masked.load211.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %539, i32 4, <8 x i1> %527, <8 x float> undef), !tbaa !12, !alias.scope !204
  %540 = fsub <8 x float> %wide.masked.load210.1, %wide.masked.load211.1
  %541 = fpext <8 x float> %540 to <8 x double>
  %542 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %541, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %533)
  %543 = fptrunc <8 x double> %542 to <8 x float>
  %544 = bitcast float* %531 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %543, <8 x float>* %544, i32 4, <8 x i1> %527), !tbaa !12, !alias.scope !197, !noalias !200, !llvm.access.group !24
  %545 = trunc <8 x i64> %broadcast.splat206 to <8 x i32>
  %546 = or <8 x i32> %545, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %547 = icmp sgt <8 x i32> %broadcast.splat208, %546
  %548 = icmp sgt <8 x i32> %546, zeroinitializer
  %549 = and <8 x i1> %547, %548
  %550 = extractelement <8 x i32> %546, i32 0
  %551 = add i32 %mul.i.i.4, %550
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds float, float* %6, i64 %552
  %554 = bitcast float* %553 to <8 x float>*
  %wide.masked.load209.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %554, i32 4, <8 x i1> %549, <8 x float> undef), !tbaa !12, !alias.scope !197, !noalias !200
  %555 = fpext <8 x float> %wide.masked.load209.2 to <8 x double>
  %556 = getelementptr inbounds float, float* %9, i64 %552
  %557 = bitcast float* %556 to <8 x float>*
  %wide.masked.load210.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %557, i32 4, <8 x i1> %549, <8 x float> undef), !tbaa !12, !alias.scope !203
  %558 = add i32 %551, -1
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds float, float* %9, i64 %559
  %561 = bitcast float* %560 to <8 x float>*
  %wide.masked.load211.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %561, i32 4, <8 x i1> %549, <8 x float> undef), !tbaa !12, !alias.scope !204
  %562 = fsub <8 x float> %wide.masked.load210.2, %wide.masked.load211.2
  %563 = fpext <8 x float> %562 to <8 x double>
  %564 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %563, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %555)
  %565 = fptrunc <8 x double> %564 to <8 x float>
  %566 = bitcast float* %553 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %565, <8 x float>* %566, i32 4, <8 x i1> %549), !tbaa !12, !alias.scope !197, !noalias !200, !llvm.access.group !24
  %567 = trunc <8 x i64> %broadcast.splat206 to <8 x i32>
  %568 = or <8 x i32> %567, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %569 = icmp sgt <8 x i32> %broadcast.splat208, %568
  %570 = icmp sgt <8 x i32> %568, zeroinitializer
  %571 = and <8 x i1> %569, %570
  %572 = extractelement <8 x i32> %568, i32 0
  %573 = add i32 %mul.i.i.4, %572
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds float, float* %6, i64 %574
  %576 = bitcast float* %575 to <8 x float>*
  %wide.masked.load209.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %576, i32 4, <8 x i1> %571, <8 x float> undef), !tbaa !12, !alias.scope !197, !noalias !200
  %577 = fpext <8 x float> %wide.masked.load209.3 to <8 x double>
  %578 = getelementptr inbounds float, float* %9, i64 %574
  %579 = bitcast float* %578 to <8 x float>*
  %wide.masked.load210.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %579, i32 4, <8 x i1> %571, <8 x float> undef), !tbaa !12, !alias.scope !203
  %580 = add i32 %573, -1
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds float, float* %9, i64 %581
  %583 = bitcast float* %582 to <8 x float>*
  %wide.masked.load211.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %583, i32 4, <8 x i1> %571, <8 x float> undef), !tbaa !12, !alias.scope !204
  %584 = fsub <8 x float> %wide.masked.load210.3, %wide.masked.load211.3
  %585 = fpext <8 x float> %584 to <8 x double>
  %586 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %585, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %577)
  %587 = fptrunc <8 x double> %586 to <8 x float>
  %588 = bitcast float* %575 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %587, <8 x float>* %588, i32 4, <8 x i1> %571), !tbaa !12, !alias.scope !197, !noalias !200, !llvm.access.group !24
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.4:                 ; preds = %if.end.i.i.us.4.1, %pregion_for_entry.entry.i.i.us.4.preheader
  %_local_id_x.i.0.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.4.preheader ], [ %956, %if.end.i.i.us.4.1 ]
  %add1.i.i.i.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.4, %mul.i.i.i
  %conv.i.i.us.4 = trunc i64 %add1.i.i.i.us.4 to i32
  %cmp4.i.i.us.4 = icmp sgt i32 %17, %conv.i.i.us.4
  %cmp7.i.i.us.4 = icmp sgt i32 %conv.i.i.us.4, 0
  %or.cond.i.i.us.4 = and i1 %cmp4.i.i.us.4, %cmp7.i.i.us.4
  br i1 %or.cond.i.i.us.4, label %if.then.i.i.us.4, label %if.end.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %pregion_for_entry.entry.i.i.us.4
  %add.i.i.us.4 = add i32 %mul.i.i.4, %conv.i.i.us.4
  %idxprom.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.4
  %589 = load float, float* %arrayidx.i.i.us.4, align 4, !tbaa !12
  %conv9.i.i.us.4 = fpext float %589 to double
  %arrayidx13.i.i.us.4 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.4
  %590 = load float, float* %arrayidx13.i.i.us.4, align 4, !tbaa !12
  %add15.i.i.us.4 = add i32 %add.i.i.us.4, -1
  %idxprom16.i.i.us.4 = sext i32 %add15.i.i.us.4 to i64
  %arrayidx17.i.i.us.4 = getelementptr inbounds float, float* %9, i64 %idxprom16.i.i.us.4
  %591 = load float, float* %arrayidx17.i.i.us.4, align 4, !tbaa !12
  %sub18.i.i.us.4 = fsub float %590, %591
  %conv19.i.i.us.4 = fpext float %sub18.i.i.us.4 to double
  %592 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.4, double -5.000000e-01, double %conv9.i.i.us.4) #5
  %conv21.i.i.us.4 = fptrunc double %592 to float
  store float %conv21.i.i.us.4, float* %arrayidx.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.4

if.end.i.i.us.4:                                  ; preds = %if.then.i.i.us.4, %pregion_for_entry.entry.i.i.us.4
  %593 = or i64 %_local_id_x.i.0.us.4, 1
  %add1.i.i.i.us.4.1 = add nuw nsw i64 %593, %mul.i.i.i
  %conv.i.i.us.4.1 = trunc i64 %add1.i.i.i.us.4.1 to i32
  %cmp4.i.i.us.4.1 = icmp sgt i32 %17, %conv.i.i.us.4.1
  %cmp7.i.i.us.4.1 = icmp sgt i32 %conv.i.i.us.4.1, 0
  %or.cond.i.i.us.4.1 = and i1 %cmp4.i.i.us.4.1, %cmp7.i.i.us.4.1
  br i1 %or.cond.i.i.us.4.1, label %if.then.i.i.us.4.1, label %if.end.i.i.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.i.i.us.4.1
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph198, %pregion_for_end.i.i.3
  %594 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.5 = or i32 %594, 5
  %cmp.i.i.5 = icmp sgt i32 %13, %conv2.i.i.5
  %mul.i.i.5 = mul nsw i32 %17, %conv2.i.i.5
  br i1 %cmp.i.i.5, label %vector.scevcheck222, label %pregion_for_end.i.i.5

vector.scevcheck222:                              ; preds = %pregion_for_end.i.i.4
  %595 = mul i32 %17, %conv2.i.i.5
  %596 = trunc i64 %2 to i32
  %597 = shl i32 %596, 5
  %598 = add i32 %595, %597
  %599 = icmp sgt i32 %598, 2147483616
  %600 = add i32 %595, %597
  %601 = add i32 %600, -1
  %602 = add i32 %600, 30
  %603 = icmp slt i32 %602, %601
  %604 = or i1 %599, %603
  br i1 %604, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.memcheck244

pregion_for_entry.entry.i.i.us.5.preheader:       ; preds = %vector.memcheck244, %vector.scevcheck222
  br label %pregion_for_entry.entry.i.i.us.5

vector.memcheck244:                               ; preds = %vector.scevcheck222
  %605 = mul i32 %17, %conv2.i.i.5
  %606 = trunc i64 %2 to i32
  %607 = shl i32 %606, 5
  %608 = add i32 %605, %607
  %609 = sext i32 %608 to i64
  %scevgep224 = getelementptr float, float* %6, i64 %609
  %610 = add nsw i64 %609, 32
  %scevgep226 = getelementptr float, float* %6, i64 %610
  %611 = add i32 %605, %607
  %612 = add i32 %611, -1
  %613 = sext i32 %612 to i64
  %scevgep228 = getelementptr float, float* %9, i64 %613
  %614 = add nsw i64 %613, 32
  %scevgep230 = getelementptr float, float* %9, i64 %614
  %scevgep232 = getelementptr float, float* %9, i64 %609
  %scevgep234 = getelementptr float, float* %9, i64 %610
  %bound0236 = icmp ult float* %scevgep224, %scevgep230
  %bound1237 = icmp ult float* %scevgep228, %scevgep226
  %found.conflict238 = and i1 %bound0236, %bound1237
  %bound0239 = icmp ult float* %scevgep224, %scevgep234
  %bound1240 = icmp ult float* %scevgep232, %scevgep226
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx242 = or i1 %found.conflict238, %found.conflict241
  br i1 %conflict.rdx242, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.ph245

vector.ph245:                                     ; preds = %vector.memcheck244
  %broadcast.splatinsert252 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat253 = shufflevector <8 x i64> %broadcast.splatinsert252, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert254 = insertelement <8 x i32> undef, i32 %17, i32 0
  %broadcast.splat255 = shufflevector <8 x i32> %broadcast.splatinsert254, <8 x i32> undef, <8 x i32> zeroinitializer
  %615 = trunc <8 x i64> %broadcast.splat253 to <8 x i32>
  %616 = or <8 x i32> %615, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %617 = icmp sgt <8 x i32> %broadcast.splat255, %616
  %618 = icmp sgt <8 x i32> %616, zeroinitializer
  %619 = and <8 x i1> %617, %618
  %620 = extractelement <8 x i32> %616, i32 0
  %621 = add i32 %mul.i.i.5, %620
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds float, float* %6, i64 %622
  %624 = bitcast float* %623 to <8 x float>*
  %wide.masked.load256 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %624, i32 4, <8 x i1> %619, <8 x float> undef), !tbaa !12, !alias.scope !205, !noalias !208
  %625 = fpext <8 x float> %wide.masked.load256 to <8 x double>
  %626 = getelementptr inbounds float, float* %9, i64 %622
  %627 = bitcast float* %626 to <8 x float>*
  %wide.masked.load257 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %627, i32 4, <8 x i1> %619, <8 x float> undef), !tbaa !12, !alias.scope !211
  %628 = add i32 %621, -1
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds float, float* %9, i64 %629
  %631 = bitcast float* %630 to <8 x float>*
  %wide.masked.load258 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %631, i32 4, <8 x i1> %619, <8 x float> undef), !tbaa !12, !alias.scope !212
  %632 = fsub <8 x float> %wide.masked.load257, %wide.masked.load258
  %633 = fpext <8 x float> %632 to <8 x double>
  %634 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %633, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %625)
  %635 = fptrunc <8 x double> %634 to <8 x float>
  %636 = bitcast float* %623 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %635, <8 x float>* %636, i32 4, <8 x i1> %619), !tbaa !12, !alias.scope !205, !noalias !208, !llvm.access.group !24
  %637 = trunc <8 x i64> %broadcast.splat253 to <8 x i32>
  %638 = or <8 x i32> %637, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %639 = icmp sgt <8 x i32> %broadcast.splat255, %638
  %640 = icmp sgt <8 x i32> %638, zeroinitializer
  %641 = and <8 x i1> %639, %640
  %642 = extractelement <8 x i32> %638, i32 0
  %643 = add i32 %mul.i.i.5, %642
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds float, float* %6, i64 %644
  %646 = bitcast float* %645 to <8 x float>*
  %wide.masked.load256.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %646, i32 4, <8 x i1> %641, <8 x float> undef), !tbaa !12, !alias.scope !205, !noalias !208
  %647 = fpext <8 x float> %wide.masked.load256.1 to <8 x double>
  %648 = getelementptr inbounds float, float* %9, i64 %644
  %649 = bitcast float* %648 to <8 x float>*
  %wide.masked.load257.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %649, i32 4, <8 x i1> %641, <8 x float> undef), !tbaa !12, !alias.scope !211
  %650 = add i32 %643, -1
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds float, float* %9, i64 %651
  %653 = bitcast float* %652 to <8 x float>*
  %wide.masked.load258.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %653, i32 4, <8 x i1> %641, <8 x float> undef), !tbaa !12, !alias.scope !212
  %654 = fsub <8 x float> %wide.masked.load257.1, %wide.masked.load258.1
  %655 = fpext <8 x float> %654 to <8 x double>
  %656 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %655, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %647)
  %657 = fptrunc <8 x double> %656 to <8 x float>
  %658 = bitcast float* %645 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %657, <8 x float>* %658, i32 4, <8 x i1> %641), !tbaa !12, !alias.scope !205, !noalias !208, !llvm.access.group !24
  %659 = trunc <8 x i64> %broadcast.splat253 to <8 x i32>
  %660 = or <8 x i32> %659, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %661 = icmp sgt <8 x i32> %broadcast.splat255, %660
  %662 = icmp sgt <8 x i32> %660, zeroinitializer
  %663 = and <8 x i1> %661, %662
  %664 = extractelement <8 x i32> %660, i32 0
  %665 = add i32 %mul.i.i.5, %664
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds float, float* %6, i64 %666
  %668 = bitcast float* %667 to <8 x float>*
  %wide.masked.load256.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %668, i32 4, <8 x i1> %663, <8 x float> undef), !tbaa !12, !alias.scope !205, !noalias !208
  %669 = fpext <8 x float> %wide.masked.load256.2 to <8 x double>
  %670 = getelementptr inbounds float, float* %9, i64 %666
  %671 = bitcast float* %670 to <8 x float>*
  %wide.masked.load257.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %671, i32 4, <8 x i1> %663, <8 x float> undef), !tbaa !12, !alias.scope !211
  %672 = add i32 %665, -1
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds float, float* %9, i64 %673
  %675 = bitcast float* %674 to <8 x float>*
  %wide.masked.load258.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %675, i32 4, <8 x i1> %663, <8 x float> undef), !tbaa !12, !alias.scope !212
  %676 = fsub <8 x float> %wide.masked.load257.2, %wide.masked.load258.2
  %677 = fpext <8 x float> %676 to <8 x double>
  %678 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %677, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %669)
  %679 = fptrunc <8 x double> %678 to <8 x float>
  %680 = bitcast float* %667 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %679, <8 x float>* %680, i32 4, <8 x i1> %663), !tbaa !12, !alias.scope !205, !noalias !208, !llvm.access.group !24
  %681 = trunc <8 x i64> %broadcast.splat253 to <8 x i32>
  %682 = or <8 x i32> %681, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %683 = icmp sgt <8 x i32> %broadcast.splat255, %682
  %684 = icmp sgt <8 x i32> %682, zeroinitializer
  %685 = and <8 x i1> %683, %684
  %686 = extractelement <8 x i32> %682, i32 0
  %687 = add i32 %mul.i.i.5, %686
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds float, float* %6, i64 %688
  %690 = bitcast float* %689 to <8 x float>*
  %wide.masked.load256.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %690, i32 4, <8 x i1> %685, <8 x float> undef), !tbaa !12, !alias.scope !205, !noalias !208
  %691 = fpext <8 x float> %wide.masked.load256.3 to <8 x double>
  %692 = getelementptr inbounds float, float* %9, i64 %688
  %693 = bitcast float* %692 to <8 x float>*
  %wide.masked.load257.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %693, i32 4, <8 x i1> %685, <8 x float> undef), !tbaa !12, !alias.scope !211
  %694 = add i32 %687, -1
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds float, float* %9, i64 %695
  %697 = bitcast float* %696 to <8 x float>*
  %wide.masked.load258.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %697, i32 4, <8 x i1> %685, <8 x float> undef), !tbaa !12, !alias.scope !212
  %698 = fsub <8 x float> %wide.masked.load257.3, %wide.masked.load258.3
  %699 = fpext <8 x float> %698 to <8 x double>
  %700 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %699, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %691)
  %701 = fptrunc <8 x double> %700 to <8 x float>
  %702 = bitcast float* %689 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %701, <8 x float>* %702, i32 4, <8 x i1> %685), !tbaa !12, !alias.scope !205, !noalias !208, !llvm.access.group !24
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.5:                 ; preds = %if.end.i.i.us.5.1, %pregion_for_entry.entry.i.i.us.5.preheader
  %_local_id_x.i.0.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.5.preheader ], [ %951, %if.end.i.i.us.5.1 ]
  %add1.i.i.i.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.5, %mul.i.i.i
  %conv.i.i.us.5 = trunc i64 %add1.i.i.i.us.5 to i32
  %cmp4.i.i.us.5 = icmp sgt i32 %17, %conv.i.i.us.5
  %cmp7.i.i.us.5 = icmp sgt i32 %conv.i.i.us.5, 0
  %or.cond.i.i.us.5 = and i1 %cmp4.i.i.us.5, %cmp7.i.i.us.5
  br i1 %or.cond.i.i.us.5, label %if.then.i.i.us.5, label %if.end.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %pregion_for_entry.entry.i.i.us.5
  %add.i.i.us.5 = add i32 %mul.i.i.5, %conv.i.i.us.5
  %idxprom.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.5
  %703 = load float, float* %arrayidx.i.i.us.5, align 4, !tbaa !12
  %conv9.i.i.us.5 = fpext float %703 to double
  %arrayidx13.i.i.us.5 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.5
  %704 = load float, float* %arrayidx13.i.i.us.5, align 4, !tbaa !12
  %add15.i.i.us.5 = add i32 %add.i.i.us.5, -1
  %idxprom16.i.i.us.5 = sext i32 %add15.i.i.us.5 to i64
  %arrayidx17.i.i.us.5 = getelementptr inbounds float, float* %9, i64 %idxprom16.i.i.us.5
  %705 = load float, float* %arrayidx17.i.i.us.5, align 4, !tbaa !12
  %sub18.i.i.us.5 = fsub float %704, %705
  %conv19.i.i.us.5 = fpext float %sub18.i.i.us.5 to double
  %706 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.5, double -5.000000e-01, double %conv9.i.i.us.5) #5
  %conv21.i.i.us.5 = fptrunc double %706 to float
  store float %conv21.i.i.us.5, float* %arrayidx.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.5

if.end.i.i.us.5:                                  ; preds = %if.then.i.i.us.5, %pregion_for_entry.entry.i.i.us.5
  %707 = or i64 %_local_id_x.i.0.us.5, 1
  %add1.i.i.i.us.5.1 = add nuw nsw i64 %707, %mul.i.i.i
  %conv.i.i.us.5.1 = trunc i64 %add1.i.i.i.us.5.1 to i32
  %cmp4.i.i.us.5.1 = icmp sgt i32 %17, %conv.i.i.us.5.1
  %cmp7.i.i.us.5.1 = icmp sgt i32 %conv.i.i.us.5.1, 0
  %or.cond.i.i.us.5.1 = and i1 %cmp4.i.i.us.5.1, %cmp7.i.i.us.5.1
  br i1 %or.cond.i.i.us.5.1, label %if.then.i.i.us.5.1, label %if.end.i.i.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.i.i.us.5.1
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph245, %pregion_for_end.i.i.4
  %708 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.6 = or i32 %708, 6
  %cmp.i.i.6 = icmp sgt i32 %13, %conv2.i.i.6
  %mul.i.i.6 = mul nsw i32 %17, %conv2.i.i.6
  br i1 %cmp.i.i.6, label %vector.scevcheck269, label %pregion_for_end.i.i.6

vector.scevcheck269:                              ; preds = %pregion_for_end.i.i.5
  %709 = mul i32 %17, %conv2.i.i.6
  %710 = trunc i64 %2 to i32
  %711 = shl i32 %710, 5
  %712 = add i32 %709, %711
  %713 = icmp sgt i32 %712, 2147483616
  %714 = add i32 %709, %711
  %715 = add i32 %714, -1
  %716 = add i32 %714, 30
  %717 = icmp slt i32 %716, %715
  %718 = or i1 %713, %717
  br i1 %718, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.memcheck291

pregion_for_entry.entry.i.i.us.6.preheader:       ; preds = %vector.memcheck291, %vector.scevcheck269
  br label %pregion_for_entry.entry.i.i.us.6

vector.memcheck291:                               ; preds = %vector.scevcheck269
  %719 = mul i32 %17, %conv2.i.i.6
  %720 = trunc i64 %2 to i32
  %721 = shl i32 %720, 5
  %722 = add i32 %719, %721
  %723 = sext i32 %722 to i64
  %scevgep271 = getelementptr float, float* %6, i64 %723
  %724 = add nsw i64 %723, 32
  %scevgep273 = getelementptr float, float* %6, i64 %724
  %725 = add i32 %719, %721
  %726 = add i32 %725, -2
  %727 = sext i32 %726 to i64
  %728 = add nuw nsw i64 %727, 1
  %scevgep275 = getelementptr float, float* %9, i64 %728
  %729 = add nsw i64 %727, 33
  %scevgep277 = getelementptr float, float* %9, i64 %729
  %scevgep279 = getelementptr float, float* %9, i64 %723
  %scevgep281 = getelementptr float, float* %9, i64 %724
  %bound0283 = icmp ult float* %scevgep271, %scevgep277
  %bound1284 = icmp ult float* %scevgep275, %scevgep273
  %found.conflict285 = and i1 %bound0283, %bound1284
  %bound0286 = icmp ult float* %scevgep271, %scevgep281
  %bound1287 = icmp ult float* %scevgep279, %scevgep273
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx289 = or i1 %found.conflict285, %found.conflict288
  br i1 %conflict.rdx289, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.ph292

vector.ph292:                                     ; preds = %vector.memcheck291
  %broadcast.splatinsert299 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat300 = shufflevector <8 x i64> %broadcast.splatinsert299, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert301 = insertelement <8 x i32> undef, i32 %17, i32 0
  %broadcast.splat302 = shufflevector <8 x i32> %broadcast.splatinsert301, <8 x i32> undef, <8 x i32> zeroinitializer
  %730 = trunc <8 x i64> %broadcast.splat300 to <8 x i32>
  %731 = or <8 x i32> %730, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %732 = icmp sgt <8 x i32> %broadcast.splat302, %731
  %733 = icmp sgt <8 x i32> %731, zeroinitializer
  %734 = and <8 x i1> %732, %733
  %735 = extractelement <8 x i32> %731, i32 0
  %736 = add i32 %mul.i.i.6, %735
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds float, float* %6, i64 %737
  %739 = bitcast float* %738 to <8 x float>*
  %wide.masked.load303 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %739, i32 4, <8 x i1> %734, <8 x float> undef), !tbaa !12, !alias.scope !213, !noalias !216
  %740 = fpext <8 x float> %wide.masked.load303 to <8 x double>
  %741 = getelementptr inbounds float, float* %9, i64 %737
  %742 = bitcast float* %741 to <8 x float>*
  %wide.masked.load304 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %742, i32 4, <8 x i1> %734, <8 x float> undef), !tbaa !12, !alias.scope !219
  %743 = add i32 %736, -1
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds float, float* %9, i64 %744
  %746 = bitcast float* %745 to <8 x float>*
  %wide.masked.load305 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %746, i32 4, <8 x i1> %734, <8 x float> undef), !tbaa !12, !alias.scope !220
  %747 = fsub <8 x float> %wide.masked.load304, %wide.masked.load305
  %748 = fpext <8 x float> %747 to <8 x double>
  %749 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %748, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %740)
  %750 = fptrunc <8 x double> %749 to <8 x float>
  %751 = bitcast float* %738 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %750, <8 x float>* %751, i32 4, <8 x i1> %734), !tbaa !12, !alias.scope !213, !noalias !216, !llvm.access.group !24
  %752 = trunc <8 x i64> %broadcast.splat300 to <8 x i32>
  %753 = or <8 x i32> %752, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %754 = icmp sgt <8 x i32> %broadcast.splat302, %753
  %755 = icmp sgt <8 x i32> %753, zeroinitializer
  %756 = and <8 x i1> %754, %755
  %757 = extractelement <8 x i32> %753, i32 0
  %758 = add i32 %mul.i.i.6, %757
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds float, float* %6, i64 %759
  %761 = bitcast float* %760 to <8 x float>*
  %wide.masked.load303.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %761, i32 4, <8 x i1> %756, <8 x float> undef), !tbaa !12, !alias.scope !213, !noalias !216
  %762 = fpext <8 x float> %wide.masked.load303.1 to <8 x double>
  %763 = getelementptr inbounds float, float* %9, i64 %759
  %764 = bitcast float* %763 to <8 x float>*
  %wide.masked.load304.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %764, i32 4, <8 x i1> %756, <8 x float> undef), !tbaa !12, !alias.scope !219
  %765 = add i32 %758, -1
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds float, float* %9, i64 %766
  %768 = bitcast float* %767 to <8 x float>*
  %wide.masked.load305.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %768, i32 4, <8 x i1> %756, <8 x float> undef), !tbaa !12, !alias.scope !220
  %769 = fsub <8 x float> %wide.masked.load304.1, %wide.masked.load305.1
  %770 = fpext <8 x float> %769 to <8 x double>
  %771 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %770, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %762)
  %772 = fptrunc <8 x double> %771 to <8 x float>
  %773 = bitcast float* %760 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %772, <8 x float>* %773, i32 4, <8 x i1> %756), !tbaa !12, !alias.scope !213, !noalias !216, !llvm.access.group !24
  %774 = trunc <8 x i64> %broadcast.splat300 to <8 x i32>
  %775 = or <8 x i32> %774, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %776 = icmp sgt <8 x i32> %broadcast.splat302, %775
  %777 = icmp sgt <8 x i32> %775, zeroinitializer
  %778 = and <8 x i1> %776, %777
  %779 = extractelement <8 x i32> %775, i32 0
  %780 = add i32 %mul.i.i.6, %779
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds float, float* %6, i64 %781
  %783 = bitcast float* %782 to <8 x float>*
  %wide.masked.load303.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %783, i32 4, <8 x i1> %778, <8 x float> undef), !tbaa !12, !alias.scope !213, !noalias !216
  %784 = fpext <8 x float> %wide.masked.load303.2 to <8 x double>
  %785 = getelementptr inbounds float, float* %9, i64 %781
  %786 = bitcast float* %785 to <8 x float>*
  %wide.masked.load304.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %786, i32 4, <8 x i1> %778, <8 x float> undef), !tbaa !12, !alias.scope !219
  %787 = add i32 %780, -1
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds float, float* %9, i64 %788
  %790 = bitcast float* %789 to <8 x float>*
  %wide.masked.load305.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %790, i32 4, <8 x i1> %778, <8 x float> undef), !tbaa !12, !alias.scope !220
  %791 = fsub <8 x float> %wide.masked.load304.2, %wide.masked.load305.2
  %792 = fpext <8 x float> %791 to <8 x double>
  %793 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %792, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %784)
  %794 = fptrunc <8 x double> %793 to <8 x float>
  %795 = bitcast float* %782 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %794, <8 x float>* %795, i32 4, <8 x i1> %778), !tbaa !12, !alias.scope !213, !noalias !216, !llvm.access.group !24
  %796 = trunc <8 x i64> %broadcast.splat300 to <8 x i32>
  %797 = or <8 x i32> %796, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %798 = icmp sgt <8 x i32> %broadcast.splat302, %797
  %799 = icmp sgt <8 x i32> %797, zeroinitializer
  %800 = and <8 x i1> %798, %799
  %801 = extractelement <8 x i32> %797, i32 0
  %802 = add i32 %mul.i.i.6, %801
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds float, float* %6, i64 %803
  %805 = bitcast float* %804 to <8 x float>*
  %wide.masked.load303.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %805, i32 4, <8 x i1> %800, <8 x float> undef), !tbaa !12, !alias.scope !213, !noalias !216
  %806 = fpext <8 x float> %wide.masked.load303.3 to <8 x double>
  %807 = getelementptr inbounds float, float* %9, i64 %803
  %808 = bitcast float* %807 to <8 x float>*
  %wide.masked.load304.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %808, i32 4, <8 x i1> %800, <8 x float> undef), !tbaa !12, !alias.scope !219
  %809 = add i32 %802, -1
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds float, float* %9, i64 %810
  %812 = bitcast float* %811 to <8 x float>*
  %wide.masked.load305.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %812, i32 4, <8 x i1> %800, <8 x float> undef), !tbaa !12, !alias.scope !220
  %813 = fsub <8 x float> %wide.masked.load304.3, %wide.masked.load305.3
  %814 = fpext <8 x float> %813 to <8 x double>
  %815 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %814, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %806)
  %816 = fptrunc <8 x double> %815 to <8 x float>
  %817 = bitcast float* %804 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %816, <8 x float>* %817, i32 4, <8 x i1> %800), !tbaa !12, !alias.scope !213, !noalias !216, !llvm.access.group !24
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.6:                 ; preds = %if.end.i.i.us.6.1, %pregion_for_entry.entry.i.i.us.6.preheader
  %_local_id_x.i.0.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.6.preheader ], [ %946, %if.end.i.i.us.6.1 ]
  %add1.i.i.i.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.6, %mul.i.i.i
  %conv.i.i.us.6 = trunc i64 %add1.i.i.i.us.6 to i32
  %cmp4.i.i.us.6 = icmp sgt i32 %17, %conv.i.i.us.6
  %cmp7.i.i.us.6 = icmp sgt i32 %conv.i.i.us.6, 0
  %or.cond.i.i.us.6 = and i1 %cmp4.i.i.us.6, %cmp7.i.i.us.6
  br i1 %or.cond.i.i.us.6, label %if.then.i.i.us.6, label %if.end.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %pregion_for_entry.entry.i.i.us.6
  %add.i.i.us.6 = add i32 %mul.i.i.6, %conv.i.i.us.6
  %idxprom.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.6
  %818 = load float, float* %arrayidx.i.i.us.6, align 4, !tbaa !12
  %conv9.i.i.us.6 = fpext float %818 to double
  %arrayidx13.i.i.us.6 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.6
  %819 = load float, float* %arrayidx13.i.i.us.6, align 4, !tbaa !12
  %add15.i.i.us.6 = add i32 %add.i.i.us.6, -1
  %idxprom16.i.i.us.6 = sext i32 %add15.i.i.us.6 to i64
  %arrayidx17.i.i.us.6 = getelementptr inbounds float, float* %9, i64 %idxprom16.i.i.us.6
  %820 = load float, float* %arrayidx17.i.i.us.6, align 4, !tbaa !12
  %sub18.i.i.us.6 = fsub float %819, %820
  %conv19.i.i.us.6 = fpext float %sub18.i.i.us.6 to double
  %821 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.6, double -5.000000e-01, double %conv9.i.i.us.6) #5
  %conv21.i.i.us.6 = fptrunc double %821 to float
  store float %conv21.i.i.us.6, float* %arrayidx.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.6

if.end.i.i.us.6:                                  ; preds = %if.then.i.i.us.6, %pregion_for_entry.entry.i.i.us.6
  %822 = or i64 %_local_id_x.i.0.us.6, 1
  %add1.i.i.i.us.6.1 = add nuw nsw i64 %822, %mul.i.i.i
  %conv.i.i.us.6.1 = trunc i64 %add1.i.i.i.us.6.1 to i32
  %cmp4.i.i.us.6.1 = icmp sgt i32 %17, %conv.i.i.us.6.1
  %cmp7.i.i.us.6.1 = icmp sgt i32 %conv.i.i.us.6.1, 0
  %or.cond.i.i.us.6.1 = and i1 %cmp4.i.i.us.6.1, %cmp7.i.i.us.6.1
  br i1 %or.cond.i.i.us.6.1, label %if.then.i.i.us.6.1, label %if.end.i.i.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.i.i.us.6.1
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph292, %pregion_for_end.i.i.5
  %823 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.7 = or i32 %823, 7
  %cmp.i.i.7 = icmp sgt i32 %13, %conv2.i.i.7
  %mul.i.i.7 = mul nsw i32 %17, %conv2.i.i.7
  br i1 %cmp.i.i.7, label %vector.scevcheck316, label %pregion_for_end.i.i.7

vector.scevcheck316:                              ; preds = %pregion_for_end.i.i.6
  %824 = mul i32 %17, %conv2.i.i.7
  %825 = trunc i64 %2 to i32
  %826 = shl i32 %825, 5
  %827 = add i32 %824, %826
  %828 = icmp sgt i32 %827, 2147483616
  %829 = add i32 %824, %826
  %830 = add i32 %829, -1
  %831 = add i32 %829, 30
  %832 = icmp slt i32 %831, %830
  %833 = or i1 %828, %832
  br i1 %833, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.memcheck338

pregion_for_entry.entry.i.i.us.7.preheader:       ; preds = %vector.memcheck338, %vector.scevcheck316
  br label %pregion_for_entry.entry.i.i.us.7

vector.memcheck338:                               ; preds = %vector.scevcheck316
  %834 = mul i32 %17, %conv2.i.i.7
  %835 = trunc i64 %2 to i32
  %836 = shl i32 %835, 5
  %837 = add i32 %834, %836
  %838 = sext i32 %837 to i64
  %scevgep318 = getelementptr float, float* %6, i64 %838
  %839 = add nsw i64 %838, 32
  %scevgep320 = getelementptr float, float* %6, i64 %839
  %840 = add i32 %834, %836
  %841 = add i32 %840, -1
  %842 = sext i32 %841 to i64
  %scevgep322 = getelementptr float, float* %9, i64 %842
  %843 = add nsw i64 %842, 32
  %scevgep324 = getelementptr float, float* %9, i64 %843
  %scevgep326 = getelementptr float, float* %9, i64 %838
  %scevgep328 = getelementptr float, float* %9, i64 %839
  %bound0330 = icmp ult float* %scevgep318, %scevgep324
  %bound1331 = icmp ult float* %scevgep322, %scevgep320
  %found.conflict332 = and i1 %bound0330, %bound1331
  %bound0333 = icmp ult float* %scevgep318, %scevgep328
  %bound1334 = icmp ult float* %scevgep326, %scevgep320
  %found.conflict335 = and i1 %bound0333, %bound1334
  %conflict.rdx336 = or i1 %found.conflict332, %found.conflict335
  br i1 %conflict.rdx336, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.ph339

vector.ph339:                                     ; preds = %vector.memcheck338
  %broadcast.splatinsert346 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat347 = shufflevector <8 x i64> %broadcast.splatinsert346, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert348 = insertelement <8 x i32> undef, i32 %17, i32 0
  %broadcast.splat349 = shufflevector <8 x i32> %broadcast.splatinsert348, <8 x i32> undef, <8 x i32> zeroinitializer
  %844 = trunc <8 x i64> %broadcast.splat347 to <8 x i32>
  %845 = or <8 x i32> %844, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %846 = icmp sgt <8 x i32> %broadcast.splat349, %845
  %847 = icmp sgt <8 x i32> %845, zeroinitializer
  %848 = and <8 x i1> %846, %847
  %849 = extractelement <8 x i32> %845, i32 0
  %850 = add i32 %mul.i.i.7, %849
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds float, float* %6, i64 %851
  %853 = bitcast float* %852 to <8 x float>*
  %wide.masked.load350 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %853, i32 4, <8 x i1> %848, <8 x float> undef), !tbaa !12, !alias.scope !221, !noalias !224
  %854 = fpext <8 x float> %wide.masked.load350 to <8 x double>
  %855 = getelementptr inbounds float, float* %9, i64 %851
  %856 = bitcast float* %855 to <8 x float>*
  %wide.masked.load351 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %856, i32 4, <8 x i1> %848, <8 x float> undef), !tbaa !12, !alias.scope !227
  %857 = add i32 %850, -1
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds float, float* %9, i64 %858
  %860 = bitcast float* %859 to <8 x float>*
  %wide.masked.load352 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %860, i32 4, <8 x i1> %848, <8 x float> undef), !tbaa !12, !alias.scope !228
  %861 = fsub <8 x float> %wide.masked.load351, %wide.masked.load352
  %862 = fpext <8 x float> %861 to <8 x double>
  %863 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %862, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %854)
  %864 = fptrunc <8 x double> %863 to <8 x float>
  %865 = bitcast float* %852 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %864, <8 x float>* %865, i32 4, <8 x i1> %848), !tbaa !12, !alias.scope !221, !noalias !224, !llvm.access.group !24
  %866 = trunc <8 x i64> %broadcast.splat347 to <8 x i32>
  %867 = or <8 x i32> %866, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %868 = icmp sgt <8 x i32> %broadcast.splat349, %867
  %869 = icmp sgt <8 x i32> %867, zeroinitializer
  %870 = and <8 x i1> %868, %869
  %871 = extractelement <8 x i32> %867, i32 0
  %872 = add i32 %mul.i.i.7, %871
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds float, float* %6, i64 %873
  %875 = bitcast float* %874 to <8 x float>*
  %wide.masked.load350.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %875, i32 4, <8 x i1> %870, <8 x float> undef), !tbaa !12, !alias.scope !221, !noalias !224
  %876 = fpext <8 x float> %wide.masked.load350.1 to <8 x double>
  %877 = getelementptr inbounds float, float* %9, i64 %873
  %878 = bitcast float* %877 to <8 x float>*
  %wide.masked.load351.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %878, i32 4, <8 x i1> %870, <8 x float> undef), !tbaa !12, !alias.scope !227
  %879 = add i32 %872, -1
  %880 = sext i32 %879 to i64
  %881 = getelementptr inbounds float, float* %9, i64 %880
  %882 = bitcast float* %881 to <8 x float>*
  %wide.masked.load352.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %882, i32 4, <8 x i1> %870, <8 x float> undef), !tbaa !12, !alias.scope !228
  %883 = fsub <8 x float> %wide.masked.load351.1, %wide.masked.load352.1
  %884 = fpext <8 x float> %883 to <8 x double>
  %885 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %884, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %876)
  %886 = fptrunc <8 x double> %885 to <8 x float>
  %887 = bitcast float* %874 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %886, <8 x float>* %887, i32 4, <8 x i1> %870), !tbaa !12, !alias.scope !221, !noalias !224, !llvm.access.group !24
  %888 = trunc <8 x i64> %broadcast.splat347 to <8 x i32>
  %889 = or <8 x i32> %888, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %890 = icmp sgt <8 x i32> %broadcast.splat349, %889
  %891 = icmp sgt <8 x i32> %889, zeroinitializer
  %892 = and <8 x i1> %890, %891
  %893 = extractelement <8 x i32> %889, i32 0
  %894 = add i32 %mul.i.i.7, %893
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds float, float* %6, i64 %895
  %897 = bitcast float* %896 to <8 x float>*
  %wide.masked.load350.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %897, i32 4, <8 x i1> %892, <8 x float> undef), !tbaa !12, !alias.scope !221, !noalias !224
  %898 = fpext <8 x float> %wide.masked.load350.2 to <8 x double>
  %899 = getelementptr inbounds float, float* %9, i64 %895
  %900 = bitcast float* %899 to <8 x float>*
  %wide.masked.load351.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %900, i32 4, <8 x i1> %892, <8 x float> undef), !tbaa !12, !alias.scope !227
  %901 = add i32 %894, -1
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds float, float* %9, i64 %902
  %904 = bitcast float* %903 to <8 x float>*
  %wide.masked.load352.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %904, i32 4, <8 x i1> %892, <8 x float> undef), !tbaa !12, !alias.scope !228
  %905 = fsub <8 x float> %wide.masked.load351.2, %wide.masked.load352.2
  %906 = fpext <8 x float> %905 to <8 x double>
  %907 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %906, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %898)
  %908 = fptrunc <8 x double> %907 to <8 x float>
  %909 = bitcast float* %896 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %908, <8 x float>* %909, i32 4, <8 x i1> %892), !tbaa !12, !alias.scope !221, !noalias !224, !llvm.access.group !24
  %910 = trunc <8 x i64> %broadcast.splat347 to <8 x i32>
  %911 = or <8 x i32> %910, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %912 = icmp sgt <8 x i32> %broadcast.splat349, %911
  %913 = icmp sgt <8 x i32> %911, zeroinitializer
  %914 = and <8 x i1> %912, %913
  %915 = extractelement <8 x i32> %911, i32 0
  %916 = add i32 %mul.i.i.7, %915
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds float, float* %6, i64 %917
  %919 = bitcast float* %918 to <8 x float>*
  %wide.masked.load350.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %919, i32 4, <8 x i1> %914, <8 x float> undef), !tbaa !12, !alias.scope !221, !noalias !224
  %920 = fpext <8 x float> %wide.masked.load350.3 to <8 x double>
  %921 = getelementptr inbounds float, float* %9, i64 %917
  %922 = bitcast float* %921 to <8 x float>*
  %wide.masked.load351.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %922, i32 4, <8 x i1> %914, <8 x float> undef), !tbaa !12, !alias.scope !227
  %923 = add i32 %916, -1
  %924 = sext i32 %923 to i64
  %925 = getelementptr inbounds float, float* %9, i64 %924
  %926 = bitcast float* %925 to <8 x float>*
  %wide.masked.load352.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %926, i32 4, <8 x i1> %914, <8 x float> undef), !tbaa !12, !alias.scope !228
  %927 = fsub <8 x float> %wide.masked.load351.3, %wide.masked.load352.3
  %928 = fpext <8 x float> %927 to <8 x double>
  %929 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %928, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %920)
  %930 = fptrunc <8 x double> %929 to <8 x float>
  %931 = bitcast float* %918 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %930, <8 x float>* %931, i32 4, <8 x i1> %914), !tbaa !12, !alias.scope !221, !noalias !224, !llvm.access.group !24
  br label %pregion_for_end.i.i.7

pregion_for_entry.entry.i.i.us.7:                 ; preds = %if.end.i.i.us.7.1, %pregion_for_entry.entry.i.i.us.7.preheader
  %_local_id_x.i.0.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.7.preheader ], [ %941, %if.end.i.i.us.7.1 ]
  %add1.i.i.i.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.7, %mul.i.i.i
  %conv.i.i.us.7 = trunc i64 %add1.i.i.i.us.7 to i32
  %cmp4.i.i.us.7 = icmp sgt i32 %17, %conv.i.i.us.7
  %cmp7.i.i.us.7 = icmp sgt i32 %conv.i.i.us.7, 0
  %or.cond.i.i.us.7 = and i1 %cmp4.i.i.us.7, %cmp7.i.i.us.7
  br i1 %or.cond.i.i.us.7, label %if.then.i.i.us.7, label %if.end.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %pregion_for_entry.entry.i.i.us.7
  %add.i.i.us.7 = add i32 %mul.i.i.7, %conv.i.i.us.7
  %idxprom.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.7
  %932 = load float, float* %arrayidx.i.i.us.7, align 4, !tbaa !12
  %conv9.i.i.us.7 = fpext float %932 to double
  %arrayidx13.i.i.us.7 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.7
  %933 = load float, float* %arrayidx13.i.i.us.7, align 4, !tbaa !12
  %add15.i.i.us.7 = add i32 %add.i.i.us.7, -1
  %idxprom16.i.i.us.7 = sext i32 %add15.i.i.us.7 to i64
  %arrayidx17.i.i.us.7 = getelementptr inbounds float, float* %9, i64 %idxprom16.i.i.us.7
  %934 = load float, float* %arrayidx17.i.i.us.7, align 4, !tbaa !12
  %sub18.i.i.us.7 = fsub float %933, %934
  %conv19.i.i.us.7 = fpext float %sub18.i.i.us.7 to double
  %935 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.7, double -5.000000e-01, double %conv9.i.i.us.7) #5
  %conv21.i.i.us.7 = fptrunc double %935 to float
  store float %conv21.i.i.us.7, float* %arrayidx.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.7

if.end.i.i.us.7:                                  ; preds = %if.then.i.i.us.7, %pregion_for_entry.entry.i.i.us.7
  %936 = or i64 %_local_id_x.i.0.us.7, 1
  %add1.i.i.i.us.7.1 = add nuw nsw i64 %936, %mul.i.i.i
  %conv.i.i.us.7.1 = trunc i64 %add1.i.i.i.us.7.1 to i32
  %cmp4.i.i.us.7.1 = icmp sgt i32 %17, %conv.i.i.us.7.1
  %cmp7.i.i.us.7.1 = icmp sgt i32 %conv.i.i.us.7.1, 0
  %or.cond.i.i.us.7.1 = and i1 %cmp4.i.i.us.7.1, %cmp7.i.i.us.7.1
  br i1 %or.cond.i.i.us.7.1, label %if.then.i.i.us.7.1, label %if.end.i.i.us.7.1

pregion_for_end.i.i.7.loopexit:                   ; preds = %if.end.i.i.us.7.1
  br label %pregion_for_end.i.i.7

pregion_for_end.i.i.7:                            ; preds = %pregion_for_end.i.i.7.loopexit, %vector.ph339, %pregion_for_end.i.i.6
  ret void

if.then.i.i.us.7.1:                               ; preds = %if.end.i.i.us.7
  %add.i.i.us.7.1 = add i32 %mul.i.i.7, %conv.i.i.us.7.1
  %idxprom.i.i.us.7.1 = sext i32 %add.i.i.us.7.1 to i64
  %arrayidx.i.i.us.7.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.7.1
  %937 = load float, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12
  %conv9.i.i.us.7.1 = fpext float %937 to double
  %arrayidx13.i.i.us.7.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.7.1
  %938 = load float, float* %arrayidx13.i.i.us.7.1, align 4, !tbaa !12
  %add15.i.i.us.7.1 = add i32 %add.i.i.us.7.1, -1
  %idxprom16.i.i.us.7.1 = sext i32 %add15.i.i.us.7.1 to i64
  %arrayidx17.i.i.us.7.1 = getelementptr inbounds float, float* %9, i64 %idxprom16.i.i.us.7.1
  %939 = load float, float* %arrayidx17.i.i.us.7.1, align 4, !tbaa !12
  %sub18.i.i.us.7.1 = fsub float %938, %939
  %conv19.i.i.us.7.1 = fpext float %sub18.i.i.us.7.1 to double
  %940 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.7.1, double -5.000000e-01, double %conv9.i.i.us.7.1) #5
  %conv21.i.i.us.7.1 = fptrunc double %940 to float
  store float %conv21.i.i.us.7.1, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.7.1

if.end.i.i.us.7.1:                                ; preds = %if.then.i.i.us.7.1, %if.end.i.i.us.7
  %941 = add nuw nsw i64 %_local_id_x.i.0.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %941, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.i.7.loopexit, label %pregion_for_entry.entry.i.i.us.7, !llvm.loop !229

if.then.i.i.us.6.1:                               ; preds = %if.end.i.i.us.6
  %add.i.i.us.6.1 = add i32 %mul.i.i.6, %conv.i.i.us.6.1
  %idxprom.i.i.us.6.1 = sext i32 %add.i.i.us.6.1 to i64
  %arrayidx.i.i.us.6.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.6.1
  %942 = load float, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12
  %conv9.i.i.us.6.1 = fpext float %942 to double
  %arrayidx13.i.i.us.6.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.6.1
  %943 = load float, float* %arrayidx13.i.i.us.6.1, align 4, !tbaa !12
  %add15.i.i.us.6.1 = add nsw i32 %add.i.i.us.6.1, -1
  %idxprom16.i.i.us.6.1 = sext i32 %add15.i.i.us.6.1 to i64
  %arrayidx17.i.i.us.6.1 = getelementptr inbounds float, float* %9, i64 %idxprom16.i.i.us.6.1
  %944 = load float, float* %arrayidx17.i.i.us.6.1, align 4, !tbaa !12
  %sub18.i.i.us.6.1 = fsub float %943, %944
  %conv19.i.i.us.6.1 = fpext float %sub18.i.i.us.6.1 to double
  %945 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.6.1, double -5.000000e-01, double %conv9.i.i.us.6.1) #5
  %conv21.i.i.us.6.1 = fptrunc double %945 to float
  store float %conv21.i.i.us.6.1, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.6.1

if.end.i.i.us.6.1:                                ; preds = %if.then.i.i.us.6.1, %if.end.i.i.us.6
  %946 = add nuw nsw i64 %_local_id_x.i.0.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %946, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.6, !llvm.loop !230

if.then.i.i.us.5.1:                               ; preds = %if.end.i.i.us.5
  %add.i.i.us.5.1 = add i32 %mul.i.i.5, %conv.i.i.us.5.1
  %idxprom.i.i.us.5.1 = sext i32 %add.i.i.us.5.1 to i64
  %arrayidx.i.i.us.5.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.5.1
  %947 = load float, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12
  %conv9.i.i.us.5.1 = fpext float %947 to double
  %arrayidx13.i.i.us.5.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.5.1
  %948 = load float, float* %arrayidx13.i.i.us.5.1, align 4, !tbaa !12
  %add15.i.i.us.5.1 = add i32 %add.i.i.us.5.1, -1
  %idxprom16.i.i.us.5.1 = sext i32 %add15.i.i.us.5.1 to i64
  %arrayidx17.i.i.us.5.1 = getelementptr inbounds float, float* %9, i64 %idxprom16.i.i.us.5.1
  %949 = load float, float* %arrayidx17.i.i.us.5.1, align 4, !tbaa !12
  %sub18.i.i.us.5.1 = fsub float %948, %949
  %conv19.i.i.us.5.1 = fpext float %sub18.i.i.us.5.1 to double
  %950 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.5.1, double -5.000000e-01, double %conv9.i.i.us.5.1) #5
  %conv21.i.i.us.5.1 = fptrunc double %950 to float
  store float %conv21.i.i.us.5.1, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.5.1

if.end.i.i.us.5.1:                                ; preds = %if.then.i.i.us.5.1, %if.end.i.i.us.5
  %951 = add nuw nsw i64 %_local_id_x.i.0.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %951, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.5, !llvm.loop !231

if.then.i.i.us.4.1:                               ; preds = %if.end.i.i.us.4
  %add.i.i.us.4.1 = add i32 %mul.i.i.4, %conv.i.i.us.4.1
  %idxprom.i.i.us.4.1 = sext i32 %add.i.i.us.4.1 to i64
  %arrayidx.i.i.us.4.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.4.1
  %952 = load float, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12
  %conv9.i.i.us.4.1 = fpext float %952 to double
  %arrayidx13.i.i.us.4.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.4.1
  %953 = load float, float* %arrayidx13.i.i.us.4.1, align 4, !tbaa !12
  %add15.i.i.us.4.1 = add nsw i32 %add.i.i.us.4.1, -1
  %idxprom16.i.i.us.4.1 = sext i32 %add15.i.i.us.4.1 to i64
  %arrayidx17.i.i.us.4.1 = getelementptr inbounds float, float* %9, i64 %idxprom16.i.i.us.4.1
  %954 = load float, float* %arrayidx17.i.i.us.4.1, align 4, !tbaa !12
  %sub18.i.i.us.4.1 = fsub float %953, %954
  %conv19.i.i.us.4.1 = fpext float %sub18.i.i.us.4.1 to double
  %955 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.4.1, double -5.000000e-01, double %conv9.i.i.us.4.1) #5
  %conv21.i.i.us.4.1 = fptrunc double %955 to float
  store float %conv21.i.i.us.4.1, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.4.1

if.end.i.i.us.4.1:                                ; preds = %if.then.i.i.us.4.1, %if.end.i.i.us.4
  %956 = add nuw nsw i64 %_local_id_x.i.0.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %956, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.4, !llvm.loop !232

if.then.i.i.us.3.1:                               ; preds = %if.end.i.i.us.3
  %add.i.i.us.3.1 = add i32 %mul.i.i.3, %conv.i.i.us.3.1
  %idxprom.i.i.us.3.1 = sext i32 %add.i.i.us.3.1 to i64
  %arrayidx.i.i.us.3.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.3.1
  %957 = load float, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12
  %conv9.i.i.us.3.1 = fpext float %957 to double
  %arrayidx13.i.i.us.3.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.3.1
  %958 = load float, float* %arrayidx13.i.i.us.3.1, align 4, !tbaa !12
  %add15.i.i.us.3.1 = add i32 %add.i.i.us.3.1, -1
  %idxprom16.i.i.us.3.1 = sext i32 %add15.i.i.us.3.1 to i64
  %arrayidx17.i.i.us.3.1 = getelementptr inbounds float, float* %9, i64 %idxprom16.i.i.us.3.1
  %959 = load float, float* %arrayidx17.i.i.us.3.1, align 4, !tbaa !12
  %sub18.i.i.us.3.1 = fsub float %958, %959
  %conv19.i.i.us.3.1 = fpext float %sub18.i.i.us.3.1 to double
  %960 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.3.1, double -5.000000e-01, double %conv9.i.i.us.3.1) #5
  %conv21.i.i.us.3.1 = fptrunc double %960 to float
  store float %conv21.i.i.us.3.1, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.3.1

if.end.i.i.us.3.1:                                ; preds = %if.then.i.i.us.3.1, %if.end.i.i.us.3
  %961 = add nuw nsw i64 %_local_id_x.i.0.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %961, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.3, !llvm.loop !233

if.then.i.i.us.2.1:                               ; preds = %if.end.i.i.us.2
  %add.i.i.us.2.1 = add i32 %mul.i.i.2, %conv.i.i.us.2.1
  %idxprom.i.i.us.2.1 = sext i32 %add.i.i.us.2.1 to i64
  %arrayidx.i.i.us.2.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.2.1
  %962 = load float, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12
  %conv9.i.i.us.2.1 = fpext float %962 to double
  %arrayidx13.i.i.us.2.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.2.1
  %963 = load float, float* %arrayidx13.i.i.us.2.1, align 4, !tbaa !12
  %add15.i.i.us.2.1 = add nsw i32 %add.i.i.us.2.1, -1
  %idxprom16.i.i.us.2.1 = sext i32 %add15.i.i.us.2.1 to i64
  %arrayidx17.i.i.us.2.1 = getelementptr inbounds float, float* %9, i64 %idxprom16.i.i.us.2.1
  %964 = load float, float* %arrayidx17.i.i.us.2.1, align 4, !tbaa !12
  %sub18.i.i.us.2.1 = fsub float %963, %964
  %conv19.i.i.us.2.1 = fpext float %sub18.i.i.us.2.1 to double
  %965 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.2.1, double -5.000000e-01, double %conv9.i.i.us.2.1) #5
  %conv21.i.i.us.2.1 = fptrunc double %965 to float
  store float %conv21.i.i.us.2.1, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.2.1

if.end.i.i.us.2.1:                                ; preds = %if.then.i.i.us.2.1, %if.end.i.i.us.2
  %966 = add nuw nsw i64 %_local_id_x.i.0.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %966, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.2, !llvm.loop !234

if.then.i.i.us.1.1:                               ; preds = %if.end.i.i.us.1
  %add.i.i.us.1.1 = add i32 %mul.i.i.1, %conv.i.i.us.1.1
  %idxprom.i.i.us.1.1 = sext i32 %add.i.i.us.1.1 to i64
  %arrayidx.i.i.us.1.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.1.1
  %967 = load float, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12
  %conv9.i.i.us.1.1 = fpext float %967 to double
  %arrayidx13.i.i.us.1.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.1.1
  %968 = load float, float* %arrayidx13.i.i.us.1.1, align 4, !tbaa !12
  %add15.i.i.us.1.1 = add i32 %add.i.i.us.1.1, -1
  %idxprom16.i.i.us.1.1 = sext i32 %add15.i.i.us.1.1 to i64
  %arrayidx17.i.i.us.1.1 = getelementptr inbounds float, float* %9, i64 %idxprom16.i.i.us.1.1
  %969 = load float, float* %arrayidx17.i.i.us.1.1, align 4, !tbaa !12
  %sub18.i.i.us.1.1 = fsub float %968, %969
  %conv19.i.i.us.1.1 = fpext float %sub18.i.i.us.1.1 to double
  %970 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.1.1, double -5.000000e-01, double %conv9.i.i.us.1.1) #5
  %conv21.i.i.us.1.1 = fptrunc double %970 to float
  store float %conv21.i.i.us.1.1, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.1.1

if.end.i.i.us.1.1:                                ; preds = %if.then.i.i.us.1.1, %if.end.i.i.us.1
  %971 = add nuw nsw i64 %_local_id_x.i.0.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %971, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.1, !llvm.loop !235

if.then.i.i.us.1379:                              ; preds = %if.end.i.i.us
  %add.i.i.us.1368 = add i32 %mul.i.i, %conv.i.i.us.1363
  %idxprom.i.i.us.1369 = sext i32 %add.i.i.us.1368 to i64
  %arrayidx.i.i.us.1370 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.1369
  %972 = load float, float* %arrayidx.i.i.us.1370, align 4, !tbaa !12
  %conv9.i.i.us.1371 = fpext float %972 to double
  %arrayidx13.i.i.us.1372 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.1369
  %973 = load float, float* %arrayidx13.i.i.us.1372, align 4, !tbaa !12
  %add15.i.i.us.1373 = add nsw i32 %add.i.i.us.1368, -1
  %idxprom16.i.i.us.1374 = sext i32 %add15.i.i.us.1373 to i64
  %arrayidx17.i.i.us.1375 = getelementptr inbounds float, float* %9, i64 %idxprom16.i.i.us.1374
  %974 = load float, float* %arrayidx17.i.i.us.1375, align 4, !tbaa !12
  %sub18.i.i.us.1376 = fsub float %973, %974
  %conv19.i.i.us.1377 = fpext float %sub18.i.i.us.1376 to double
  %975 = tail call double @llvm.fmuladd.f64(double %conv19.i.i.us.1377, double -5.000000e-01, double %conv9.i.i.us.1371) #5
  %conv21.i.i.us.1378 = fptrunc double %975 to float
  store float %conv21.i.i.us.1378, float* %arrayidx.i.i.us.1370, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.i.i.us.1380

if.end.i.i.us.1380:                               ; preds = %if.then.i.i.us.1379, %if.end.i.i.us
  %976 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %976, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !236
}

; Function Attrs: argmemonly nounwind readonly willreturn
declare <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>*, i32 immarg, <8 x i1>, <8 x float>) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #0

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
!5 = !{i32 1, i32 1, i32 1, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !""}
!10 = !{!"ex", !"ey", !"hz", !"nx", !"ny"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20, !21}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = !{!21}
!23 = !{!20}
!24 = !{!25, !26}
!25 = distinct !{}
!26 = distinct !{}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31, !32}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
!33 = !{!32}
!34 = !{!31}
!35 = !{!36}
!36 = distinct !{!36, !37}
!37 = distinct !{!37, !"LVerDomain"}
!38 = !{!39, !40}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !37}
!41 = !{!40}
!42 = !{!39}
!43 = !{!44}
!44 = distinct !{!44, !45}
!45 = distinct !{!45, !"LVerDomain"}
!46 = !{!47, !48}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !45}
!49 = !{!48}
!50 = !{!47}
!51 = !{!52}
!52 = distinct !{!52, !53}
!53 = distinct !{!53, !"LVerDomain"}
!54 = !{!55, !56}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !53}
!57 = !{!56}
!58 = !{!55}
!59 = !{!60}
!60 = distinct !{!60, !61}
!61 = distinct !{!61, !"LVerDomain"}
!62 = !{!63, !64}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !61}
!65 = !{!64}
!66 = !{!63}
!67 = !{!68}
!68 = distinct !{!68, !69}
!69 = distinct !{!69, !"LVerDomain"}
!70 = !{!71, !72}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !69}
!73 = !{!72}
!74 = !{!71}
!75 = !{!76}
!76 = distinct !{!76, !77}
!77 = distinct !{!77, !"LVerDomain"}
!78 = !{!79, !80}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !77}
!81 = !{!80}
!82 = !{!79}
!83 = distinct !{!83, !84, !85}
!84 = !{!"llvm.loop.parallel_accesses", !25}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = distinct !{!86, !84, !85}
!87 = distinct !{!87, !84, !85}
!88 = distinct !{!88, !84, !85}
!89 = distinct !{!89, !84, !85}
!90 = distinct !{!90, !84, !85}
!91 = distinct !{!91, !84, !85}
!92 = distinct !{!92, !84, !85}
!93 = !{!94}
!94 = distinct !{!94, !95}
!95 = distinct !{!95, !"LVerDomain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95}
!98 = distinct !{!98, !95}
!99 = !{!98}
!100 = !{!97}
!101 = !{!102}
!102 = distinct !{!102, !103}
!103 = distinct !{!103, !"LVerDomain"}
!104 = !{!105, !106}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !103}
!107 = !{!106}
!108 = !{!105}
!109 = !{!110}
!110 = distinct !{!110, !111}
!111 = distinct !{!111, !"LVerDomain"}
!112 = !{!113, !114}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !111}
!115 = !{!114}
!116 = !{!113}
!117 = !{!118}
!118 = distinct !{!118, !119}
!119 = distinct !{!119, !"LVerDomain"}
!120 = !{!121, !122}
!121 = distinct !{!121, !119}
!122 = distinct !{!122, !119}
!123 = !{!122}
!124 = !{!121}
!125 = !{!126}
!126 = distinct !{!126, !127}
!127 = distinct !{!127, !"LVerDomain"}
!128 = !{!129, !130}
!129 = distinct !{!129, !127}
!130 = distinct !{!130, !127}
!131 = !{!130}
!132 = !{!129}
!133 = !{!134}
!134 = distinct !{!134, !135}
!135 = distinct !{!135, !"LVerDomain"}
!136 = !{!137, !138}
!137 = distinct !{!137, !135}
!138 = distinct !{!138, !135}
!139 = !{!138}
!140 = !{!137}
!141 = !{!142}
!142 = distinct !{!142, !143}
!143 = distinct !{!143, !"LVerDomain"}
!144 = !{!145, !146}
!145 = distinct !{!145, !143}
!146 = distinct !{!146, !143}
!147 = !{!146}
!148 = !{!145}
!149 = !{!150}
!150 = distinct !{!150, !151}
!151 = distinct !{!151, !"LVerDomain"}
!152 = !{!153, !154}
!153 = distinct !{!153, !151}
!154 = distinct !{!154, !151}
!155 = !{!154}
!156 = !{!153}
!157 = distinct !{!157, !84, !85}
!158 = distinct !{!158, !84, !85}
!159 = distinct !{!159, !84, !85}
!160 = distinct !{!160, !84, !85}
!161 = distinct !{!161, !84, !85}
!162 = distinct !{!162, !84, !85}
!163 = distinct !{!163, !84, !85}
!164 = distinct !{!164, !84, !85}
!165 = !{!166}
!166 = distinct !{!166, !167}
!167 = distinct !{!167, !"LVerDomain"}
!168 = !{!169, !170}
!169 = distinct !{!169, !167}
!170 = distinct !{!170, !167}
!171 = !{!170}
!172 = !{!169}
!173 = !{!174}
!174 = distinct !{!174, !175}
!175 = distinct !{!175, !"LVerDomain"}
!176 = !{!177, !178}
!177 = distinct !{!177, !175}
!178 = distinct !{!178, !175}
!179 = !{!178}
!180 = !{!177}
!181 = !{!182}
!182 = distinct !{!182, !183}
!183 = distinct !{!183, !"LVerDomain"}
!184 = !{!185, !186}
!185 = distinct !{!185, !183}
!186 = distinct !{!186, !183}
!187 = !{!186}
!188 = !{!185}
!189 = !{!190}
!190 = distinct !{!190, !191}
!191 = distinct !{!191, !"LVerDomain"}
!192 = !{!193, !194}
!193 = distinct !{!193, !191}
!194 = distinct !{!194, !191}
!195 = !{!194}
!196 = !{!193}
!197 = !{!198}
!198 = distinct !{!198, !199}
!199 = distinct !{!199, !"LVerDomain"}
!200 = !{!201, !202}
!201 = distinct !{!201, !199}
!202 = distinct !{!202, !199}
!203 = !{!202}
!204 = !{!201}
!205 = !{!206}
!206 = distinct !{!206, !207}
!207 = distinct !{!207, !"LVerDomain"}
!208 = !{!209, !210}
!209 = distinct !{!209, !207}
!210 = distinct !{!210, !207}
!211 = !{!210}
!212 = !{!209}
!213 = !{!214}
!214 = distinct !{!214, !215}
!215 = distinct !{!215, !"LVerDomain"}
!216 = !{!217, !218}
!217 = distinct !{!217, !215}
!218 = distinct !{!218, !215}
!219 = !{!218}
!220 = !{!217}
!221 = !{!222}
!222 = distinct !{!222, !223}
!223 = distinct !{!223, !"LVerDomain"}
!224 = !{!225, !226}
!225 = distinct !{!225, !223}
!226 = distinct !{!226, !223}
!227 = !{!226}
!228 = !{!225}
!229 = distinct !{!229, !84, !85}
!230 = distinct !{!230, !84, !85}
!231 = distinct !{!231, !84, !85}
!232 = distinct !{!232, !84, !85}
!233 = distinct !{!233, !84, !85}
!234 = distinct !{!234, !84, !85}
!235 = distinct !{!235, !84, !85}
!236 = distinct !{!236, !84, !85}
