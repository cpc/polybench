; ModuleID = './CE/HMLMAPAJJBLPBKGGCCBDEJJLIPIDBFCCIIFBD/fdtd_kernel1/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_fdtd_kernel1(float* nocapture readonly %0, float* nocapture readnone %1, float* nocapture %2, float* nocapture readonly %3, i32 %4, i32 %5, i32 %6, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %7, i64 %8, i64 %9, i64 %10) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %8, 5
  %mul3.i.i = shl i64 %9, 3
  %idxprom.i = sext i32 %4 to i64
  %arrayidx.i = getelementptr inbounds float, float* %0, i64 %idxprom.i
  %12 = bitcast float* %arrayidx.i to i32*
  %conv.i.us.us = trunc i64 %mul.i.i to i32
  %cmp4.i.us.us = icmp slt i32 %conv.i.us.us, %6
  %13 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.1 = or i32 %13, 1
  %cmp4.i.us.us.1 = icmp slt i32 %conv.i.us.us.1, %6
  %14 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.2 = or i32 %14, 2
  %cmp4.i.us.us.2 = icmp slt i32 %conv.i.us.us.2, %6
  %15 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.3 = or i32 %15, 3
  %cmp4.i.us.us.3 = icmp slt i32 %conv.i.us.us.3, %6
  %16 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.4 = or i32 %16, 4
  %cmp4.i.us.us.4 = icmp slt i32 %conv.i.us.us.4, %6
  %17 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.5 = or i32 %17, 5
  %cmp4.i.us.us.5 = icmp slt i32 %conv.i.us.us.5, %6
  %18 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.6 = or i32 %18, 6
  %cmp4.i.us.us.6 = icmp slt i32 %conv.i.us.us.6, %6
  %19 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.7 = or i32 %19, 7
  %cmp4.i.us.us.7 = icmp slt i32 %conv.i.us.us.7, %6
  %20 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.8 = or i32 %20, 8
  %cmp4.i.us.us.8 = icmp slt i32 %conv.i.us.us.8, %6
  %21 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.9 = or i32 %21, 9
  %cmp4.i.us.us.9 = icmp slt i32 %conv.i.us.us.9, %6
  %22 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.10 = or i32 %22, 10
  %cmp4.i.us.us.10 = icmp slt i32 %conv.i.us.us.10, %6
  %23 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.11 = or i32 %23, 11
  %cmp4.i.us.us.11 = icmp slt i32 %conv.i.us.us.11, %6
  %24 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.12 = or i32 %24, 12
  %cmp4.i.us.us.12 = icmp slt i32 %conv.i.us.us.12, %6
  %25 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.13 = or i32 %25, 13
  %cmp4.i.us.us.13 = icmp slt i32 %conv.i.us.us.13, %6
  %26 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.14 = or i32 %26, 14
  %cmp4.i.us.us.14 = icmp slt i32 %conv.i.us.us.14, %6
  %27 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.15 = or i32 %27, 15
  %cmp4.i.us.us.15 = icmp slt i32 %conv.i.us.us.15, %6
  %28 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.16 = or i32 %28, 16
  %cmp4.i.us.us.16 = icmp slt i32 %conv.i.us.us.16, %6
  %29 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.17 = or i32 %29, 17
  %cmp4.i.us.us.17 = icmp slt i32 %conv.i.us.us.17, %6
  %30 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.18 = or i32 %30, 18
  %cmp4.i.us.us.18 = icmp slt i32 %conv.i.us.us.18, %6
  %31 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.19 = or i32 %31, 19
  %cmp4.i.us.us.19 = icmp slt i32 %conv.i.us.us.19, %6
  %32 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.20 = or i32 %32, 20
  %cmp4.i.us.us.20 = icmp slt i32 %conv.i.us.us.20, %6
  %33 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.21 = or i32 %33, 21
  %cmp4.i.us.us.21 = icmp slt i32 %conv.i.us.us.21, %6
  %34 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.22 = or i32 %34, 22
  %cmp4.i.us.us.22 = icmp slt i32 %conv.i.us.us.22, %6
  %35 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.23 = or i32 %35, 23
  %cmp4.i.us.us.23 = icmp slt i32 %conv.i.us.us.23, %6
  %36 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.24 = or i32 %36, 24
  %cmp4.i.us.us.24 = icmp slt i32 %conv.i.us.us.24, %6
  %37 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.25 = or i32 %37, 25
  %cmp4.i.us.us.25 = icmp slt i32 %conv.i.us.us.25, %6
  %38 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.26 = or i32 %38, 26
  %cmp4.i.us.us.26 = icmp slt i32 %conv.i.us.us.26, %6
  %39 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.27 = or i32 %39, 27
  %cmp4.i.us.us.27 = icmp slt i32 %conv.i.us.us.27, %6
  %40 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.28 = or i32 %40, 28
  %cmp4.i.us.us.28 = icmp slt i32 %conv.i.us.us.28, %6
  %41 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.29 = or i32 %41, 29
  %cmp4.i.us.us.29 = icmp slt i32 %conv.i.us.us.29, %6
  %42 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.30 = or i32 %42, 30
  %cmp4.i.us.us.30 = icmp slt i32 %conv.i.us.us.30, %6
  %43 = trunc i64 %mul.i.i to i32
  %conv.i.us.us.31 = or i32 %43, 31
  %cmp4.i.us.us.31 = icmp slt i32 %conv.i.us.us.31, %6
  %44 = trunc i64 %9 to i32
  %45 = mul i32 %44, %6
  %46 = shl i32 %45, 3
  %47 = trunc i64 %8 to i32
  %48 = shl i32 %47, 5
  %49 = add i32 %46, %48
  %50 = zext i32 %6 to i64
  %51 = shl i32 %44, 3
  %52 = add i32 %51, -1
  %53 = mul i32 %52, %6
  %54 = add i32 %53, %48
  %55 = trunc i64 %9 to i32
  %56 = mul i32 %55, %6
  %57 = shl i32 %56, 3
  %58 = trunc i64 %8 to i32
  %59 = shl i32 %58, 5
  %60 = add i32 %57, %59
  %61 = zext i32 %6 to i64
  %scevgep9 = getelementptr float, float* %2, i64 32
  %62 = shl i32 %55, 3
  %63 = add i32 %62, -1
  %64 = mul i32 %63, %6
  %65 = add i32 %64, %59
  %scevgep14 = getelementptr float, float* %3, i64 32
  %scevgep19 = getelementptr float, float* %3, i64 32
  %bound022 = icmp ugt float* %scevgep19, %2
  %bound123 = icmp ugt float* %scevgep9, %3
  %found.conflict24 = and i1 %bound022, %bound123
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert25 = insertelement <8 x i32> undef, i32 %6, i32 0
  %broadcast.splat26 = shufflevector <8 x i32> %broadcast.splatinsert25, <8 x i32> undef, <8 x i32> zeroinitializer
  %66 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %67 = or <8 x i32> %66, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %68 = icmp sgt <8 x i32> %broadcast.splat26, %67
  %69 = extractelement <8 x i32> %67, i32 0
  %70 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %71 = or <8 x i32> %70, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %72 = icmp sgt <8 x i32> %broadcast.splat26, %71
  %73 = extractelement <8 x i32> %71, i32 0
  %74 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %75 = or <8 x i32> %74, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %76 = icmp sgt <8 x i32> %broadcast.splat26, %75
  %77 = extractelement <8 x i32> %75, i32 0
  %78 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %79 = or <8 x i32> %78, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %80 = icmp sgt <8 x i32> %broadcast.splat26, %79
  %81 = extractelement <8 x i32> %79, i32 0
  br label %pregion_for_entry.pregion_for_init.i

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_end.i, %11
  %_local_id_y.0 = phi i64 [ 0, %11 ], [ %168, %pregion_for_end.i ]
  %82 = mul i64 %_local_id_y.0, %61
  %83 = trunc i64 %82 to i32
  %84 = add i32 %60, %83
  %85 = sext i32 %84 to i64
  %scevgep = getelementptr float, float* %2, i64 %85
  %scevgep10 = getelementptr float, float* %scevgep9, i64 %85
  %86 = trunc i64 %82 to i32
  %87 = add i32 %65, %86
  %88 = sext i32 %87 to i64
  %scevgep12 = getelementptr float, float* %3, i64 %88
  %scevgep15 = getelementptr float, float* %scevgep14, i64 %88
  %89 = mul i64 %_local_id_y.0, %50
  %90 = trunc i64 %89 to i32
  %91 = add i32 %49, %90
  %92 = trunc i64 %89 to i32
  %93 = add i32 %54, %92
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %cmp.i = icmp slt i32 %conv2.i, %5
  %mul.i = mul nsw i32 %conv2.i, %6
  %sub.i = add nsw i32 %conv2.i, -1
  %mul22.i = mul nsw i32 %sub.i, %6
  br i1 %cmp.i, label %pregion_for_entry.pregion_for_init.i.split.us, label %pregion_for_end.i

pregion_for_entry.pregion_for_init.i.split.us:    ; preds = %pregion_for_entry.pregion_for_init.i
  %cmp6.i = icmp eq i32 %conv2.i, 0
  br i1 %cmp6.i, label %pregion_for_entry.entry.i.us.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.split.us
  %94 = icmp sgt i32 %91, 2147483616
  %95 = icmp sgt i32 %93, 2147483616
  %96 = or i1 %94, %95
  br i1 %96, label %pregion_for_entry.entry.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.us.preheader:           ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult float* %scevgep, %scevgep15
  %bound1 = icmp ult float* %scevgep12, %scevgep10
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.us.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %97 = add nsw i32 %mul.i, %69
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %2, i64 %98
  %100 = bitcast float* %99 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %100, i32 4, <8 x i1> %68, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %101 = fpext <8 x float> %wide.masked.load to <8 x double>
  %102 = getelementptr inbounds float, float* %3, i64 %98
  %103 = bitcast float* %102 to <8 x float>*
  %wide.masked.load27 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %103, i32 4, <8 x i1> %68, <8 x float> undef), !tbaa !12, !alias.scope !22
  %104 = add nsw i32 %mul22.i, %69
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %3, i64 %105
  %107 = bitcast float* %106 to <8 x float>*
  %wide.masked.load28 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %107, i32 4, <8 x i1> %68, <8 x float> undef), !tbaa !12, !alias.scope !23
  %108 = fsub <8 x float> %wide.masked.load27, %wide.masked.load28
  %109 = fpext <8 x float> %108 to <8 x double>
  %110 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %109, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %101)
  %111 = fptrunc <8 x double> %110 to <8 x float>
  %112 = bitcast float* %99 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %111, <8 x float>* %112, i32 4, <8 x i1> %68), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !24
  %113 = add nsw i32 %mul.i, %73
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %2, i64 %114
  %116 = bitcast float* %115 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %116, i32 4, <8 x i1> %72, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %117 = fpext <8 x float> %wide.masked.load.1 to <8 x double>
  %118 = getelementptr inbounds float, float* %3, i64 %114
  %119 = bitcast float* %118 to <8 x float>*
  %wide.masked.load27.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %119, i32 4, <8 x i1> %72, <8 x float> undef), !tbaa !12, !alias.scope !22
  %120 = add nsw i32 %mul22.i, %73
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %3, i64 %121
  %123 = bitcast float* %122 to <8 x float>*
  %wide.masked.load28.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %123, i32 4, <8 x i1> %72, <8 x float> undef), !tbaa !12, !alias.scope !23
  %124 = fsub <8 x float> %wide.masked.load27.1, %wide.masked.load28.1
  %125 = fpext <8 x float> %124 to <8 x double>
  %126 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %125, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %117)
  %127 = fptrunc <8 x double> %126 to <8 x float>
  %128 = bitcast float* %115 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %127, <8 x float>* %128, i32 4, <8 x i1> %72), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !24
  %129 = add nsw i32 %mul.i, %77
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %2, i64 %130
  %132 = bitcast float* %131 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %132, i32 4, <8 x i1> %76, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %133 = fpext <8 x float> %wide.masked.load.2 to <8 x double>
  %134 = getelementptr inbounds float, float* %3, i64 %130
  %135 = bitcast float* %134 to <8 x float>*
  %wide.masked.load27.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %135, i32 4, <8 x i1> %76, <8 x float> undef), !tbaa !12, !alias.scope !22
  %136 = add nsw i32 %mul22.i, %77
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %3, i64 %137
  %139 = bitcast float* %138 to <8 x float>*
  %wide.masked.load28.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %139, i32 4, <8 x i1> %76, <8 x float> undef), !tbaa !12, !alias.scope !23
  %140 = fsub <8 x float> %wide.masked.load27.2, %wide.masked.load28.2
  %141 = fpext <8 x float> %140 to <8 x double>
  %142 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %141, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %133)
  %143 = fptrunc <8 x double> %142 to <8 x float>
  %144 = bitcast float* %131 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %143, <8 x float>* %144, i32 4, <8 x i1> %76), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !24
  %145 = add nsw i32 %mul.i, %81
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %2, i64 %146
  %148 = bitcast float* %147 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %148, i32 4, <8 x i1> %80, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %149 = fpext <8 x float> %wide.masked.load.3 to <8 x double>
  %150 = getelementptr inbounds float, float* %3, i64 %146
  %151 = bitcast float* %150 to <8 x float>*
  %wide.masked.load27.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %151, i32 4, <8 x i1> %80, <8 x float> undef), !tbaa !12, !alias.scope !22
  %152 = add nsw i32 %mul22.i, %81
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %3, i64 %153
  %155 = bitcast float* %154 to <8 x float>*
  %wide.masked.load28.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %155, i32 4, <8 x i1> %80, <8 x float> undef), !tbaa !12, !alias.scope !23
  %156 = fsub <8 x float> %wide.masked.load27.3, %wide.masked.load28.3
  %157 = fpext <8 x float> %156 to <8 x double>
  %158 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %157, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %149)
  %159 = fptrunc <8 x double> %158 to <8 x float>
  %160 = bitcast float* %147 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %159, <8 x float>* %160, i32 4, <8 x i1> %80), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !24
  br label %pregion_for_end.i

pregion_for_entry.entry.i.us.us.preheader:        ; preds = %pregion_for_entry.pregion_for_init.i.split.us
  br i1 %cmp4.i.us.us, label %if.then8.i.us.us, label %if.end34.i.us.us

if.then8.i.us.us:                                 ; preds = %pregion_for_entry.entry.i.us.us.preheader
  %161 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us = add nuw nsw i32 %mul.i, %conv.i.us.us
  %idxprom11.i.us.us = sext i32 %add10.i.us.us to i64
  %arrayidx12.i.us.us = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us
  %162 = bitcast float* %arrayidx12.i.us.us to i32*
  store i32 %161, i32* %162, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us

if.end34.i.us.us:                                 ; preds = %if.then8.i.us.us, %pregion_for_entry.entry.i.us.us.preheader
  br i1 %cmp4.i.us.us.1, label %if.then8.i.us.us.1, label %if.end34.i.us.us.1

pregion_for_entry.entry.i.us:                     ; preds = %if.end34.i.us.1, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.us.preheader ], [ %235, %if.end34.i.us.1 ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp4.i.us = icmp slt i32 %conv.i.us, %6
  br i1 %cmp4.i.us, label %if.else.i.us, label %if.end34.i.us

if.else.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %add14.i.us = add nsw i32 %mul.i, %conv.i.us
  %idxprom15.i.us = sext i32 %add14.i.us to i64
  %arrayidx16.i.us = getelementptr inbounds float, float* %2, i64 %idxprom15.i.us
  %163 = load float, float* %arrayidx16.i.us, align 4, !tbaa !12
  %conv17.i.us = fpext float %163 to double
  %arrayidx21.i.us = getelementptr inbounds float, float* %3, i64 %idxprom15.i.us
  %164 = load float, float* %arrayidx21.i.us, align 4, !tbaa !12
  %add23.i.us = add nsw i32 %mul22.i, %conv.i.us
  %idxprom24.i.us = sext i32 %add23.i.us to i64
  %arrayidx25.i.us = getelementptr inbounds float, float* %3, i64 %idxprom24.i.us
  %165 = load float, float* %arrayidx25.i.us, align 4, !tbaa !12
  %sub26.i.us = fsub float %164, %165
  %conv27.i.us = fpext float %sub26.i.us to double
  %166 = tail call double @llvm.fmuladd.f64(double %conv27.i.us, double -5.000000e-01, double %conv17.i.us) #5
  %conv29.i.us = fptrunc double %166 to float
  store float %conv29.i.us, float* %arrayidx16.i.us, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us

if.end34.i.us:                                    ; preds = %if.else.i.us, %pregion_for_entry.entry.i.us
  %167 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1 = add nuw nsw i64 %167, %mul.i.i
  %conv.i.us.1 = trunc i64 %add1.i.i.us.1 to i32
  %cmp4.i.us.1 = icmp slt i32 %conv.i.us.1, %6
  br i1 %cmp4.i.us.1, label %if.else.i.us.1, label %if.end34.i.us.1

pregion_for_end.i.loopexit:                       ; preds = %if.end34.i.us.1
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %if.then8.i.us.us.31, %if.end34.i.us.us.30, %pregion_for_end.i.loopexit, %vector.body, %pregion_for_entry.pregion_for_init.i
  %168 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond4.not = icmp eq i64 %168, 8
  br i1 %exitcond4.not, label %fdtd_kernel1.exit, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !27

fdtd_kernel1.exit:                                ; preds = %pregion_for_end.i
  ret void

if.then8.i.us.us.1:                               ; preds = %if.end34.i.us.us
  %169 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.1 = add nuw nsw i32 %mul.i, %conv.i.us.us.1
  %idxprom11.i.us.us.1 = sext i32 %add10.i.us.us.1 to i64
  %arrayidx12.i.us.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.1
  %170 = bitcast float* %arrayidx12.i.us.us.1 to i32*
  store i32 %169, i32* %170, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.1

if.end34.i.us.us.1:                               ; preds = %if.then8.i.us.us.1, %if.end34.i.us.us
  br i1 %cmp4.i.us.us.2, label %if.then8.i.us.us.2, label %if.end34.i.us.us.2

if.then8.i.us.us.2:                               ; preds = %if.end34.i.us.us.1
  %171 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.2 = add nuw nsw i32 %mul.i, %conv.i.us.us.2
  %idxprom11.i.us.us.2 = sext i32 %add10.i.us.us.2 to i64
  %arrayidx12.i.us.us.2 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.2
  %172 = bitcast float* %arrayidx12.i.us.us.2 to i32*
  store i32 %171, i32* %172, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.2

if.end34.i.us.us.2:                               ; preds = %if.then8.i.us.us.2, %if.end34.i.us.us.1
  br i1 %cmp4.i.us.us.3, label %if.then8.i.us.us.3, label %if.end34.i.us.us.3

if.then8.i.us.us.3:                               ; preds = %if.end34.i.us.us.2
  %173 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.3 = add nuw nsw i32 %mul.i, %conv.i.us.us.3
  %idxprom11.i.us.us.3 = sext i32 %add10.i.us.us.3 to i64
  %arrayidx12.i.us.us.3 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.3
  %174 = bitcast float* %arrayidx12.i.us.us.3 to i32*
  store i32 %173, i32* %174, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.3

if.end34.i.us.us.3:                               ; preds = %if.then8.i.us.us.3, %if.end34.i.us.us.2
  br i1 %cmp4.i.us.us.4, label %if.then8.i.us.us.4, label %if.end34.i.us.us.4

if.then8.i.us.us.4:                               ; preds = %if.end34.i.us.us.3
  %175 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.4 = add nuw nsw i32 %mul.i, %conv.i.us.us.4
  %idxprom11.i.us.us.4 = sext i32 %add10.i.us.us.4 to i64
  %arrayidx12.i.us.us.4 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.4
  %176 = bitcast float* %arrayidx12.i.us.us.4 to i32*
  store i32 %175, i32* %176, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.4

if.end34.i.us.us.4:                               ; preds = %if.then8.i.us.us.4, %if.end34.i.us.us.3
  br i1 %cmp4.i.us.us.5, label %if.then8.i.us.us.5, label %if.end34.i.us.us.5

if.then8.i.us.us.5:                               ; preds = %if.end34.i.us.us.4
  %177 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.5 = add nuw nsw i32 %mul.i, %conv.i.us.us.5
  %idxprom11.i.us.us.5 = sext i32 %add10.i.us.us.5 to i64
  %arrayidx12.i.us.us.5 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.5
  %178 = bitcast float* %arrayidx12.i.us.us.5 to i32*
  store i32 %177, i32* %178, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.5

if.end34.i.us.us.5:                               ; preds = %if.then8.i.us.us.5, %if.end34.i.us.us.4
  br i1 %cmp4.i.us.us.6, label %if.then8.i.us.us.6, label %if.end34.i.us.us.6

if.then8.i.us.us.6:                               ; preds = %if.end34.i.us.us.5
  %179 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.6 = add nuw nsw i32 %mul.i, %conv.i.us.us.6
  %idxprom11.i.us.us.6 = sext i32 %add10.i.us.us.6 to i64
  %arrayidx12.i.us.us.6 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.6
  %180 = bitcast float* %arrayidx12.i.us.us.6 to i32*
  store i32 %179, i32* %180, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.6

if.end34.i.us.us.6:                               ; preds = %if.then8.i.us.us.6, %if.end34.i.us.us.5
  br i1 %cmp4.i.us.us.7, label %if.then8.i.us.us.7, label %if.end34.i.us.us.7

if.then8.i.us.us.7:                               ; preds = %if.end34.i.us.us.6
  %181 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.7 = add nuw nsw i32 %mul.i, %conv.i.us.us.7
  %idxprom11.i.us.us.7 = sext i32 %add10.i.us.us.7 to i64
  %arrayidx12.i.us.us.7 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.7
  %182 = bitcast float* %arrayidx12.i.us.us.7 to i32*
  store i32 %181, i32* %182, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.7

if.end34.i.us.us.7:                               ; preds = %if.then8.i.us.us.7, %if.end34.i.us.us.6
  br i1 %cmp4.i.us.us.8, label %if.then8.i.us.us.8, label %if.end34.i.us.us.8

if.then8.i.us.us.8:                               ; preds = %if.end34.i.us.us.7
  %183 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.8 = add nuw nsw i32 %mul.i, %conv.i.us.us.8
  %idxprom11.i.us.us.8 = sext i32 %add10.i.us.us.8 to i64
  %arrayidx12.i.us.us.8 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.8
  %184 = bitcast float* %arrayidx12.i.us.us.8 to i32*
  store i32 %183, i32* %184, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.8

if.end34.i.us.us.8:                               ; preds = %if.then8.i.us.us.8, %if.end34.i.us.us.7
  br i1 %cmp4.i.us.us.9, label %if.then8.i.us.us.9, label %if.end34.i.us.us.9

if.then8.i.us.us.9:                               ; preds = %if.end34.i.us.us.8
  %185 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.9 = add nuw nsw i32 %mul.i, %conv.i.us.us.9
  %idxprom11.i.us.us.9 = sext i32 %add10.i.us.us.9 to i64
  %arrayidx12.i.us.us.9 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.9
  %186 = bitcast float* %arrayidx12.i.us.us.9 to i32*
  store i32 %185, i32* %186, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.9

if.end34.i.us.us.9:                               ; preds = %if.then8.i.us.us.9, %if.end34.i.us.us.8
  br i1 %cmp4.i.us.us.10, label %if.then8.i.us.us.10, label %if.end34.i.us.us.10

if.then8.i.us.us.10:                              ; preds = %if.end34.i.us.us.9
  %187 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.10 = add nuw nsw i32 %mul.i, %conv.i.us.us.10
  %idxprom11.i.us.us.10 = sext i32 %add10.i.us.us.10 to i64
  %arrayidx12.i.us.us.10 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.10
  %188 = bitcast float* %arrayidx12.i.us.us.10 to i32*
  store i32 %187, i32* %188, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.10

if.end34.i.us.us.10:                              ; preds = %if.then8.i.us.us.10, %if.end34.i.us.us.9
  br i1 %cmp4.i.us.us.11, label %if.then8.i.us.us.11, label %if.end34.i.us.us.11

if.then8.i.us.us.11:                              ; preds = %if.end34.i.us.us.10
  %189 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.11 = add nuw nsw i32 %mul.i, %conv.i.us.us.11
  %idxprom11.i.us.us.11 = sext i32 %add10.i.us.us.11 to i64
  %arrayidx12.i.us.us.11 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.11
  %190 = bitcast float* %arrayidx12.i.us.us.11 to i32*
  store i32 %189, i32* %190, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.11

if.end34.i.us.us.11:                              ; preds = %if.then8.i.us.us.11, %if.end34.i.us.us.10
  br i1 %cmp4.i.us.us.12, label %if.then8.i.us.us.12, label %if.end34.i.us.us.12

if.then8.i.us.us.12:                              ; preds = %if.end34.i.us.us.11
  %191 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.12 = add nuw nsw i32 %mul.i, %conv.i.us.us.12
  %idxprom11.i.us.us.12 = sext i32 %add10.i.us.us.12 to i64
  %arrayidx12.i.us.us.12 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.12
  %192 = bitcast float* %arrayidx12.i.us.us.12 to i32*
  store i32 %191, i32* %192, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.12

if.end34.i.us.us.12:                              ; preds = %if.then8.i.us.us.12, %if.end34.i.us.us.11
  br i1 %cmp4.i.us.us.13, label %if.then8.i.us.us.13, label %if.end34.i.us.us.13

if.then8.i.us.us.13:                              ; preds = %if.end34.i.us.us.12
  %193 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.13 = add nuw nsw i32 %mul.i, %conv.i.us.us.13
  %idxprom11.i.us.us.13 = sext i32 %add10.i.us.us.13 to i64
  %arrayidx12.i.us.us.13 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.13
  %194 = bitcast float* %arrayidx12.i.us.us.13 to i32*
  store i32 %193, i32* %194, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.13

if.end34.i.us.us.13:                              ; preds = %if.then8.i.us.us.13, %if.end34.i.us.us.12
  br i1 %cmp4.i.us.us.14, label %if.then8.i.us.us.14, label %if.end34.i.us.us.14

if.then8.i.us.us.14:                              ; preds = %if.end34.i.us.us.13
  %195 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.14 = add nuw nsw i32 %mul.i, %conv.i.us.us.14
  %idxprom11.i.us.us.14 = sext i32 %add10.i.us.us.14 to i64
  %arrayidx12.i.us.us.14 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.14
  %196 = bitcast float* %arrayidx12.i.us.us.14 to i32*
  store i32 %195, i32* %196, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.14

if.end34.i.us.us.14:                              ; preds = %if.then8.i.us.us.14, %if.end34.i.us.us.13
  br i1 %cmp4.i.us.us.15, label %if.then8.i.us.us.15, label %if.end34.i.us.us.15

if.then8.i.us.us.15:                              ; preds = %if.end34.i.us.us.14
  %197 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.15 = add nuw nsw i32 %mul.i, %conv.i.us.us.15
  %idxprom11.i.us.us.15 = sext i32 %add10.i.us.us.15 to i64
  %arrayidx12.i.us.us.15 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.15
  %198 = bitcast float* %arrayidx12.i.us.us.15 to i32*
  store i32 %197, i32* %198, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.15

if.end34.i.us.us.15:                              ; preds = %if.then8.i.us.us.15, %if.end34.i.us.us.14
  br i1 %cmp4.i.us.us.16, label %if.then8.i.us.us.16, label %if.end34.i.us.us.16

if.then8.i.us.us.16:                              ; preds = %if.end34.i.us.us.15
  %199 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.16 = add nuw nsw i32 %mul.i, %conv.i.us.us.16
  %idxprom11.i.us.us.16 = sext i32 %add10.i.us.us.16 to i64
  %arrayidx12.i.us.us.16 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.16
  %200 = bitcast float* %arrayidx12.i.us.us.16 to i32*
  store i32 %199, i32* %200, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.16

if.end34.i.us.us.16:                              ; preds = %if.then8.i.us.us.16, %if.end34.i.us.us.15
  br i1 %cmp4.i.us.us.17, label %if.then8.i.us.us.17, label %if.end34.i.us.us.17

if.then8.i.us.us.17:                              ; preds = %if.end34.i.us.us.16
  %201 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.17 = add nuw nsw i32 %mul.i, %conv.i.us.us.17
  %idxprom11.i.us.us.17 = sext i32 %add10.i.us.us.17 to i64
  %arrayidx12.i.us.us.17 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.17
  %202 = bitcast float* %arrayidx12.i.us.us.17 to i32*
  store i32 %201, i32* %202, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.17

if.end34.i.us.us.17:                              ; preds = %if.then8.i.us.us.17, %if.end34.i.us.us.16
  br i1 %cmp4.i.us.us.18, label %if.then8.i.us.us.18, label %if.end34.i.us.us.18

if.then8.i.us.us.18:                              ; preds = %if.end34.i.us.us.17
  %203 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.18 = add nuw nsw i32 %mul.i, %conv.i.us.us.18
  %idxprom11.i.us.us.18 = sext i32 %add10.i.us.us.18 to i64
  %arrayidx12.i.us.us.18 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.18
  %204 = bitcast float* %arrayidx12.i.us.us.18 to i32*
  store i32 %203, i32* %204, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.18

if.end34.i.us.us.18:                              ; preds = %if.then8.i.us.us.18, %if.end34.i.us.us.17
  br i1 %cmp4.i.us.us.19, label %if.then8.i.us.us.19, label %if.end34.i.us.us.19

if.then8.i.us.us.19:                              ; preds = %if.end34.i.us.us.18
  %205 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.19 = add nuw nsw i32 %mul.i, %conv.i.us.us.19
  %idxprom11.i.us.us.19 = sext i32 %add10.i.us.us.19 to i64
  %arrayidx12.i.us.us.19 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.19
  %206 = bitcast float* %arrayidx12.i.us.us.19 to i32*
  store i32 %205, i32* %206, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.19

if.end34.i.us.us.19:                              ; preds = %if.then8.i.us.us.19, %if.end34.i.us.us.18
  br i1 %cmp4.i.us.us.20, label %if.then8.i.us.us.20, label %if.end34.i.us.us.20

if.then8.i.us.us.20:                              ; preds = %if.end34.i.us.us.19
  %207 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.20 = add nuw nsw i32 %mul.i, %conv.i.us.us.20
  %idxprom11.i.us.us.20 = sext i32 %add10.i.us.us.20 to i64
  %arrayidx12.i.us.us.20 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.20
  %208 = bitcast float* %arrayidx12.i.us.us.20 to i32*
  store i32 %207, i32* %208, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.20

if.end34.i.us.us.20:                              ; preds = %if.then8.i.us.us.20, %if.end34.i.us.us.19
  br i1 %cmp4.i.us.us.21, label %if.then8.i.us.us.21, label %if.end34.i.us.us.21

if.then8.i.us.us.21:                              ; preds = %if.end34.i.us.us.20
  %209 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.21 = add nuw nsw i32 %mul.i, %conv.i.us.us.21
  %idxprom11.i.us.us.21 = sext i32 %add10.i.us.us.21 to i64
  %arrayidx12.i.us.us.21 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.21
  %210 = bitcast float* %arrayidx12.i.us.us.21 to i32*
  store i32 %209, i32* %210, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.21

if.end34.i.us.us.21:                              ; preds = %if.then8.i.us.us.21, %if.end34.i.us.us.20
  br i1 %cmp4.i.us.us.22, label %if.then8.i.us.us.22, label %if.end34.i.us.us.22

if.then8.i.us.us.22:                              ; preds = %if.end34.i.us.us.21
  %211 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.22 = add nuw nsw i32 %mul.i, %conv.i.us.us.22
  %idxprom11.i.us.us.22 = sext i32 %add10.i.us.us.22 to i64
  %arrayidx12.i.us.us.22 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.22
  %212 = bitcast float* %arrayidx12.i.us.us.22 to i32*
  store i32 %211, i32* %212, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.22

if.end34.i.us.us.22:                              ; preds = %if.then8.i.us.us.22, %if.end34.i.us.us.21
  br i1 %cmp4.i.us.us.23, label %if.then8.i.us.us.23, label %if.end34.i.us.us.23

if.then8.i.us.us.23:                              ; preds = %if.end34.i.us.us.22
  %213 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.23 = add nuw nsw i32 %mul.i, %conv.i.us.us.23
  %idxprom11.i.us.us.23 = sext i32 %add10.i.us.us.23 to i64
  %arrayidx12.i.us.us.23 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.23
  %214 = bitcast float* %arrayidx12.i.us.us.23 to i32*
  store i32 %213, i32* %214, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.23

if.end34.i.us.us.23:                              ; preds = %if.then8.i.us.us.23, %if.end34.i.us.us.22
  br i1 %cmp4.i.us.us.24, label %if.then8.i.us.us.24, label %if.end34.i.us.us.24

if.then8.i.us.us.24:                              ; preds = %if.end34.i.us.us.23
  %215 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.24 = add nuw nsw i32 %mul.i, %conv.i.us.us.24
  %idxprom11.i.us.us.24 = sext i32 %add10.i.us.us.24 to i64
  %arrayidx12.i.us.us.24 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.24
  %216 = bitcast float* %arrayidx12.i.us.us.24 to i32*
  store i32 %215, i32* %216, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.24

if.end34.i.us.us.24:                              ; preds = %if.then8.i.us.us.24, %if.end34.i.us.us.23
  br i1 %cmp4.i.us.us.25, label %if.then8.i.us.us.25, label %if.end34.i.us.us.25

if.then8.i.us.us.25:                              ; preds = %if.end34.i.us.us.24
  %217 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.25 = add nuw nsw i32 %mul.i, %conv.i.us.us.25
  %idxprom11.i.us.us.25 = sext i32 %add10.i.us.us.25 to i64
  %arrayidx12.i.us.us.25 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.25
  %218 = bitcast float* %arrayidx12.i.us.us.25 to i32*
  store i32 %217, i32* %218, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.25

if.end34.i.us.us.25:                              ; preds = %if.then8.i.us.us.25, %if.end34.i.us.us.24
  br i1 %cmp4.i.us.us.26, label %if.then8.i.us.us.26, label %if.end34.i.us.us.26

if.then8.i.us.us.26:                              ; preds = %if.end34.i.us.us.25
  %219 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.26 = add nuw nsw i32 %mul.i, %conv.i.us.us.26
  %idxprom11.i.us.us.26 = sext i32 %add10.i.us.us.26 to i64
  %arrayidx12.i.us.us.26 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.26
  %220 = bitcast float* %arrayidx12.i.us.us.26 to i32*
  store i32 %219, i32* %220, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.26

if.end34.i.us.us.26:                              ; preds = %if.then8.i.us.us.26, %if.end34.i.us.us.25
  br i1 %cmp4.i.us.us.27, label %if.then8.i.us.us.27, label %if.end34.i.us.us.27

if.then8.i.us.us.27:                              ; preds = %if.end34.i.us.us.26
  %221 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.27 = add nuw nsw i32 %mul.i, %conv.i.us.us.27
  %idxprom11.i.us.us.27 = sext i32 %add10.i.us.us.27 to i64
  %arrayidx12.i.us.us.27 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.27
  %222 = bitcast float* %arrayidx12.i.us.us.27 to i32*
  store i32 %221, i32* %222, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.27

if.end34.i.us.us.27:                              ; preds = %if.then8.i.us.us.27, %if.end34.i.us.us.26
  br i1 %cmp4.i.us.us.28, label %if.then8.i.us.us.28, label %if.end34.i.us.us.28

if.then8.i.us.us.28:                              ; preds = %if.end34.i.us.us.27
  %223 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.28 = add nuw nsw i32 %mul.i, %conv.i.us.us.28
  %idxprom11.i.us.us.28 = sext i32 %add10.i.us.us.28 to i64
  %arrayidx12.i.us.us.28 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.28
  %224 = bitcast float* %arrayidx12.i.us.us.28 to i32*
  store i32 %223, i32* %224, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.28

if.end34.i.us.us.28:                              ; preds = %if.then8.i.us.us.28, %if.end34.i.us.us.27
  br i1 %cmp4.i.us.us.29, label %if.then8.i.us.us.29, label %if.end34.i.us.us.29

if.then8.i.us.us.29:                              ; preds = %if.end34.i.us.us.28
  %225 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.29 = add nuw nsw i32 %mul.i, %conv.i.us.us.29
  %idxprom11.i.us.us.29 = sext i32 %add10.i.us.us.29 to i64
  %arrayidx12.i.us.us.29 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.29
  %226 = bitcast float* %arrayidx12.i.us.us.29 to i32*
  store i32 %225, i32* %226, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.29

if.end34.i.us.us.29:                              ; preds = %if.then8.i.us.us.29, %if.end34.i.us.us.28
  br i1 %cmp4.i.us.us.30, label %if.then8.i.us.us.30, label %if.end34.i.us.us.30

if.then8.i.us.us.30:                              ; preds = %if.end34.i.us.us.29
  %227 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.30 = add nuw nsw i32 %mul.i, %conv.i.us.us.30
  %idxprom11.i.us.us.30 = sext i32 %add10.i.us.us.30 to i64
  %arrayidx12.i.us.us.30 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.30
  %228 = bitcast float* %arrayidx12.i.us.us.30 to i32*
  store i32 %227, i32* %228, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.us.30

if.end34.i.us.us.30:                              ; preds = %if.then8.i.us.us.30, %if.end34.i.us.us.29
  br i1 %cmp4.i.us.us.31, label %if.then8.i.us.us.31, label %pregion_for_end.i

if.then8.i.us.us.31:                              ; preds = %if.end34.i.us.us.30
  %229 = load i32, i32* %12, align 4, !tbaa !12
  %add10.i.us.us.31 = add nuw nsw i32 %mul.i, %conv.i.us.us.31
  %idxprom11.i.us.us.31 = sext i32 %add10.i.us.us.31 to i64
  %arrayidx12.i.us.us.31 = getelementptr inbounds float, float* %2, i64 %idxprom11.i.us.us.31
  %230 = bitcast float* %arrayidx12.i.us.us.31 to i32*
  store i32 %229, i32* %230, align 4, !tbaa !12, !llvm.access.group !24
  br label %pregion_for_end.i

if.else.i.us.1:                                   ; preds = %if.end34.i.us
  %add14.i.us.1 = add nsw i32 %mul.i, %conv.i.us.1
  %idxprom15.i.us.1 = sext i32 %add14.i.us.1 to i64
  %arrayidx16.i.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom15.i.us.1
  %231 = load float, float* %arrayidx16.i.us.1, align 4, !tbaa !12
  %conv17.i.us.1 = fpext float %231 to double
  %arrayidx21.i.us.1 = getelementptr inbounds float, float* %3, i64 %idxprom15.i.us.1
  %232 = load float, float* %arrayidx21.i.us.1, align 4, !tbaa !12
  %add23.i.us.1 = add nsw i32 %mul22.i, %conv.i.us.1
  %idxprom24.i.us.1 = sext i32 %add23.i.us.1 to i64
  %arrayidx25.i.us.1 = getelementptr inbounds float, float* %3, i64 %idxprom24.i.us.1
  %233 = load float, float* %arrayidx25.i.us.1, align 4, !tbaa !12
  %sub26.i.us.1 = fsub float %232, %233
  %conv27.i.us.1 = fpext float %sub26.i.us.1 to double
  %234 = tail call double @llvm.fmuladd.f64(double %conv27.i.us.1, double -5.000000e-01, double %conv17.i.us.1) #5
  %conv29.i.us.1 = fptrunc double %234 to float
  store float %conv29.i.us.1, float* %arrayidx16.i.us.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.us.1

if.end34.i.us.1:                                  ; preds = %if.else.i.us.1, %if.end34.i.us
  %235 = add nuw nsw i64 %_local_id_x.0.us, 2
  %exitcond.not.1 = icmp eq i64 %235, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !29
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_fdtd_kernel1_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float***
  %7 = load float**, float*** %6, align 8
  %8 = load float*, float** %7, align 8
  %9 = getelementptr i8*, i8** %0, i64 2
  %10 = bitcast i8** %9 to float***
  %11 = load float**, float*** %10, align 8
  %12 = load float*, float** %11, align 8
  %13 = getelementptr i8*, i8** %0, i64 3
  %14 = bitcast i8** %13 to float***
  %15 = load float**, float*** %14, align 8
  %16 = load float*, float** %15, align 8
  %17 = getelementptr i8*, i8** %0, i64 4
  %18 = bitcast i8** %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 5
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr i8*, i8** %0, i64 6
  %26 = bitcast i8** %25 to i32**
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %idxprom.i.i = sext i32 %20 to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %8, i64 %idxprom.i.i
  %29 = bitcast float* %arrayidx.i.i to i32*
  %conv.i.i.us.us = trunc i64 %mul.i.i.i to i32
  %cmp4.i.i.us.us = icmp sgt i32 %28, %conv.i.i.us.us
  %30 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.1 = or i32 %30, 1
  %cmp4.i.i.us.us.1 = icmp sgt i32 %28, %conv.i.i.us.us.1
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.2 = or i32 %31, 2
  %cmp4.i.i.us.us.2 = icmp sgt i32 %28, %conv.i.i.us.us.2
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.3 = or i32 %32, 3
  %cmp4.i.i.us.us.3 = icmp sgt i32 %28, %conv.i.i.us.us.3
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.4 = or i32 %33, 4
  %cmp4.i.i.us.us.4 = icmp sgt i32 %28, %conv.i.i.us.us.4
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.5 = or i32 %34, 5
  %cmp4.i.i.us.us.5 = icmp sgt i32 %28, %conv.i.i.us.us.5
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.6 = or i32 %35, 6
  %cmp4.i.i.us.us.6 = icmp sgt i32 %28, %conv.i.i.us.us.6
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.7 = or i32 %36, 7
  %cmp4.i.i.us.us.7 = icmp sgt i32 %28, %conv.i.i.us.us.7
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.8 = or i32 %37, 8
  %cmp4.i.i.us.us.8 = icmp sgt i32 %28, %conv.i.i.us.us.8
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.9 = or i32 %38, 9
  %cmp4.i.i.us.us.9 = icmp sgt i32 %28, %conv.i.i.us.us.9
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.10 = or i32 %39, 10
  %cmp4.i.i.us.us.10 = icmp sgt i32 %28, %conv.i.i.us.us.10
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.11 = or i32 %40, 11
  %cmp4.i.i.us.us.11 = icmp sgt i32 %28, %conv.i.i.us.us.11
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.12 = or i32 %41, 12
  %cmp4.i.i.us.us.12 = icmp sgt i32 %28, %conv.i.i.us.us.12
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.13 = or i32 %42, 13
  %cmp4.i.i.us.us.13 = icmp sgt i32 %28, %conv.i.i.us.us.13
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.14 = or i32 %43, 14
  %cmp4.i.i.us.us.14 = icmp sgt i32 %28, %conv.i.i.us.us.14
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.15 = or i32 %44, 15
  %cmp4.i.i.us.us.15 = icmp sgt i32 %28, %conv.i.i.us.us.15
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.16 = or i32 %45, 16
  %cmp4.i.i.us.us.16 = icmp sgt i32 %28, %conv.i.i.us.us.16
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.17 = or i32 %46, 17
  %cmp4.i.i.us.us.17 = icmp sgt i32 %28, %conv.i.i.us.us.17
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.18 = or i32 %47, 18
  %cmp4.i.i.us.us.18 = icmp sgt i32 %28, %conv.i.i.us.us.18
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.19 = or i32 %48, 19
  %cmp4.i.i.us.us.19 = icmp sgt i32 %28, %conv.i.i.us.us.19
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.20 = or i32 %49, 20
  %cmp4.i.i.us.us.20 = icmp sgt i32 %28, %conv.i.i.us.us.20
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.21 = or i32 %50, 21
  %cmp4.i.i.us.us.21 = icmp sgt i32 %28, %conv.i.i.us.us.21
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.22 = or i32 %51, 22
  %cmp4.i.i.us.us.22 = icmp sgt i32 %28, %conv.i.i.us.us.22
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.23 = or i32 %52, 23
  %cmp4.i.i.us.us.23 = icmp sgt i32 %28, %conv.i.i.us.us.23
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.24 = or i32 %53, 24
  %cmp4.i.i.us.us.24 = icmp sgt i32 %28, %conv.i.i.us.us.24
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.25 = or i32 %54, 25
  %cmp4.i.i.us.us.25 = icmp sgt i32 %28, %conv.i.i.us.us.25
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.26 = or i32 %55, 26
  %cmp4.i.i.us.us.26 = icmp sgt i32 %28, %conv.i.i.us.us.26
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.27 = or i32 %56, 27
  %cmp4.i.i.us.us.27 = icmp sgt i32 %28, %conv.i.i.us.us.27
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.28 = or i32 %57, 28
  %cmp4.i.i.us.us.28 = icmp sgt i32 %28, %conv.i.i.us.us.28
  %58 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.29 = or i32 %58, 29
  %cmp4.i.i.us.us.29 = icmp sgt i32 %28, %conv.i.i.us.us.29
  %59 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.30 = or i32 %59, 30
  %cmp4.i.i.us.us.30 = icmp sgt i32 %28, %conv.i.i.us.us.30
  %60 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.31 = or i32 %60, 31
  %cmp4.i.i.us.us.31 = icmp sgt i32 %28, %conv.i.i.us.us.31
  %61 = trunc i64 %3 to i32
  %62 = mul i32 %28, %61
  %63 = shl i32 %62, 3
  %64 = trunc i64 %2 to i32
  %65 = shl i32 %64, 5
  %66 = add i32 %63, %65
  %67 = zext i32 %28 to i64
  %68 = shl i32 %61, 3
  %69 = add i32 %68, -1
  %70 = mul i32 %28, %69
  %71 = add i32 %70, %65
  %72 = trunc i64 %3 to i32
  %73 = mul i32 %28, %72
  %74 = shl i32 %73, 3
  %75 = trunc i64 %2 to i32
  %76 = shl i32 %75, 5
  %77 = add i32 %74, %76
  %78 = zext i32 %28 to i64
  %scevgep9 = getelementptr float, float* %12, i64 32
  %79 = shl i32 %72, 3
  %80 = add i32 %79, -1
  %81 = mul i32 %28, %80
  %82 = add i32 %81, %76
  %scevgep14 = getelementptr float, float* %16, i64 32
  %scevgep19 = getelementptr float, float* %16, i64 32
  %bound022 = icmp ult float* %12, %scevgep19
  %bound123 = icmp ult float* %16, %scevgep9
  %found.conflict24 = and i1 %bound022, %bound123
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert25 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat26 = shufflevector <8 x i32> %broadcast.splatinsert25, <8 x i32> undef, <8 x i32> zeroinitializer
  %83 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %84 = or <8 x i32> %83, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %85 = icmp sgt <8 x i32> %broadcast.splat26, %84
  %86 = extractelement <8 x i32> %84, i32 0
  %87 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %88 = or <8 x i32> %87, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %89 = icmp sgt <8 x i32> %broadcast.splat26, %88
  %90 = extractelement <8 x i32> %88, i32 0
  %91 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %92 = or <8 x i32> %91, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %93 = icmp sgt <8 x i32> %broadcast.splat26, %92
  %94 = extractelement <8 x i32> %92, i32 0
  %95 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %96 = or <8 x i32> %95, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %97 = icmp sgt <8 x i32> %broadcast.splat26, %96
  %98 = extractelement <8 x i32> %96, i32 0
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %185, %pregion_for_end.i.i ]
  %99 = mul i64 %_local_id_y.i.0, %78
  %100 = trunc i64 %99 to i32
  %101 = add i32 %77, %100
  %102 = sext i32 %101 to i64
  %scevgep = getelementptr float, float* %12, i64 %102
  %scevgep10 = getelementptr float, float* %scevgep9, i64 %102
  %103 = trunc i64 %99 to i32
  %104 = add i32 %82, %103
  %105 = sext i32 %104 to i64
  %scevgep12 = getelementptr float, float* %16, i64 %105
  %scevgep15 = getelementptr float, float* %scevgep14, i64 %105
  %106 = mul i64 %_local_id_y.i.0, %67
  %107 = trunc i64 %106 to i32
  %108 = add i32 %66, %107
  %109 = trunc i64 %106 to i32
  %110 = add i32 %71, %109
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %24, %conv2.i.i
  %mul.i.i = mul nsw i32 %28, %conv2.i.i
  %sub.i.i = add nsw i32 %conv2.i.i, -1
  %mul22.i.i = mul nsw i32 %sub.i.i, %28
  br i1 %cmp.i.i, label %pregion_for_entry.pregion_for_init.i.i.split.us, label %pregion_for_end.i.i

pregion_for_entry.pregion_for_init.i.i.split.us:  ; preds = %pregion_for_entry.pregion_for_init.i.i
  %cmp6.i.i = icmp eq i32 %conv2.i.i, 0
  br i1 %cmp6.i.i, label %pregion_for_entry.entry.i.i.us.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i.split.us
  %111 = icmp sgt i32 %108, 2147483616
  %112 = icmp sgt i32 %110, 2147483616
  %113 = or i1 %111, %112
  br i1 %113, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult float* %scevgep, %scevgep15
  %bound1 = icmp ult float* %scevgep12, %scevgep10
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %114 = add nsw i32 %mul.i.i, %86
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %12, i64 %115
  %117 = bitcast float* %116 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %117, i32 4, <8 x i1> %85, <8 x float> undef), !tbaa !12, !alias.scope !32, !noalias !35
  %118 = fpext <8 x float> %wide.masked.load to <8 x double>
  %119 = getelementptr inbounds float, float* %16, i64 %115
  %120 = bitcast float* %119 to <8 x float>*
  %wide.masked.load27 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %120, i32 4, <8 x i1> %85, <8 x float> undef), !tbaa !12, !alias.scope !38
  %121 = add nsw i32 %mul22.i.i, %86
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %16, i64 %122
  %124 = bitcast float* %123 to <8 x float>*
  %wide.masked.load28 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %124, i32 4, <8 x i1> %85, <8 x float> undef), !tbaa !12, !alias.scope !39
  %125 = fsub <8 x float> %wide.masked.load27, %wide.masked.load28
  %126 = fpext <8 x float> %125 to <8 x double>
  %127 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %126, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %118)
  %128 = fptrunc <8 x double> %127 to <8 x float>
  %129 = bitcast float* %116 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %128, <8 x float>* %129, i32 4, <8 x i1> %85), !tbaa !12, !alias.scope !32, !noalias !35, !llvm.access.group !24
  %130 = add nsw i32 %mul.i.i, %90
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %12, i64 %131
  %133 = bitcast float* %132 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %133, i32 4, <8 x i1> %89, <8 x float> undef), !tbaa !12, !alias.scope !32, !noalias !35
  %134 = fpext <8 x float> %wide.masked.load.1 to <8 x double>
  %135 = getelementptr inbounds float, float* %16, i64 %131
  %136 = bitcast float* %135 to <8 x float>*
  %wide.masked.load27.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %136, i32 4, <8 x i1> %89, <8 x float> undef), !tbaa !12, !alias.scope !38
  %137 = add nsw i32 %mul22.i.i, %90
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %16, i64 %138
  %140 = bitcast float* %139 to <8 x float>*
  %wide.masked.load28.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %140, i32 4, <8 x i1> %89, <8 x float> undef), !tbaa !12, !alias.scope !39
  %141 = fsub <8 x float> %wide.masked.load27.1, %wide.masked.load28.1
  %142 = fpext <8 x float> %141 to <8 x double>
  %143 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %142, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %134)
  %144 = fptrunc <8 x double> %143 to <8 x float>
  %145 = bitcast float* %132 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %144, <8 x float>* %145, i32 4, <8 x i1> %89), !tbaa !12, !alias.scope !32, !noalias !35, !llvm.access.group !24
  %146 = add nsw i32 %mul.i.i, %94
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %12, i64 %147
  %149 = bitcast float* %148 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %149, i32 4, <8 x i1> %93, <8 x float> undef), !tbaa !12, !alias.scope !32, !noalias !35
  %150 = fpext <8 x float> %wide.masked.load.2 to <8 x double>
  %151 = getelementptr inbounds float, float* %16, i64 %147
  %152 = bitcast float* %151 to <8 x float>*
  %wide.masked.load27.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %152, i32 4, <8 x i1> %93, <8 x float> undef), !tbaa !12, !alias.scope !38
  %153 = add nsw i32 %mul22.i.i, %94
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %16, i64 %154
  %156 = bitcast float* %155 to <8 x float>*
  %wide.masked.load28.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %156, i32 4, <8 x i1> %93, <8 x float> undef), !tbaa !12, !alias.scope !39
  %157 = fsub <8 x float> %wide.masked.load27.2, %wide.masked.load28.2
  %158 = fpext <8 x float> %157 to <8 x double>
  %159 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %158, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %150)
  %160 = fptrunc <8 x double> %159 to <8 x float>
  %161 = bitcast float* %148 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %160, <8 x float>* %161, i32 4, <8 x i1> %93), !tbaa !12, !alias.scope !32, !noalias !35, !llvm.access.group !24
  %162 = add nsw i32 %mul.i.i, %98
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %12, i64 %163
  %165 = bitcast float* %164 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %165, i32 4, <8 x i1> %97, <8 x float> undef), !tbaa !12, !alias.scope !32, !noalias !35
  %166 = fpext <8 x float> %wide.masked.load.3 to <8 x double>
  %167 = getelementptr inbounds float, float* %16, i64 %163
  %168 = bitcast float* %167 to <8 x float>*
  %wide.masked.load27.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %168, i32 4, <8 x i1> %97, <8 x float> undef), !tbaa !12, !alias.scope !38
  %169 = add nsw i32 %mul22.i.i, %98
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %16, i64 %170
  %172 = bitcast float* %171 to <8 x float>*
  %wide.masked.load28.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %172, i32 4, <8 x i1> %97, <8 x float> undef), !tbaa !12, !alias.scope !39
  %173 = fsub <8 x float> %wide.masked.load27.3, %wide.masked.load28.3
  %174 = fpext <8 x float> %173 to <8 x double>
  %175 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %174, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %166)
  %176 = fptrunc <8 x double> %175 to <8 x float>
  %177 = bitcast float* %164 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %176, <8 x float>* %177, i32 4, <8 x i1> %97), !tbaa !12, !alias.scope !32, !noalias !35, !llvm.access.group !24
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us.us.preheader:      ; preds = %pregion_for_entry.pregion_for_init.i.i.split.us
  br i1 %cmp4.i.i.us.us, label %if.then8.i.i.us.us, label %if.end34.i.i.us.us

if.then8.i.i.us.us:                               ; preds = %pregion_for_entry.entry.i.i.us.us.preheader
  %178 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us
  %idxprom11.i.i.us.us = sext i32 %add10.i.i.us.us to i64
  %arrayidx12.i.i.us.us = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us
  %179 = bitcast float* %arrayidx12.i.i.us.us to i32*
  store i32 %178, i32* %179, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us

if.end34.i.i.us.us:                               ; preds = %if.then8.i.i.us.us, %pregion_for_entry.entry.i.i.us.us.preheader
  br i1 %cmp4.i.i.us.us.1, label %if.then8.i.i.us.us.1, label %if.end34.i.i.us.us.1

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end34.i.i.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.preheader ], [ %252, %if.end34.i.i.us.1 ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %28, %conv.i.i.us
  br i1 %cmp4.i.i.us, label %if.else.i.i.us, label %if.end34.i.i.us

if.else.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add14.i.i.us = add nsw i32 %mul.i.i, %conv.i.i.us
  %idxprom15.i.i.us = sext i32 %add14.i.i.us to i64
  %arrayidx16.i.i.us = getelementptr inbounds float, float* %12, i64 %idxprom15.i.i.us
  %180 = load float, float* %arrayidx16.i.i.us, align 4, !tbaa !12
  %conv17.i.i.us = fpext float %180 to double
  %arrayidx21.i.i.us = getelementptr inbounds float, float* %16, i64 %idxprom15.i.i.us
  %181 = load float, float* %arrayidx21.i.i.us, align 4, !tbaa !12
  %add23.i.i.us = add nsw i32 %mul22.i.i, %conv.i.i.us
  %idxprom24.i.i.us = sext i32 %add23.i.i.us to i64
  %arrayidx25.i.i.us = getelementptr inbounds float, float* %16, i64 %idxprom24.i.i.us
  %182 = load float, float* %arrayidx25.i.i.us, align 4, !tbaa !12
  %sub26.i.i.us = fsub float %181, %182
  %conv27.i.i.us = fpext float %sub26.i.i.us to double
  %183 = tail call double @llvm.fmuladd.f64(double %conv27.i.i.us, double -5.000000e-01, double %conv17.i.i.us) #5
  %conv29.i.i.us = fptrunc double %183 to float
  store float %conv29.i.i.us, float* %arrayidx16.i.i.us, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us

if.end34.i.i.us:                                  ; preds = %if.else.i.i.us, %pregion_for_entry.entry.i.i.us
  %184 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %184, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp4.i.i.us.1 = icmp sgt i32 %28, %conv.i.i.us.1
  br i1 %cmp4.i.i.us.1, label %if.else.i.i.us.1, label %if.end34.i.i.us.1

pregion_for_end.i.i.loopexit:                     ; preds = %if.end34.i.i.us.1
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %if.then8.i.i.us.us.31, %if.end34.i.i.us.us.30, %pregion_for_end.i.i.loopexit, %vector.body, %pregion_for_entry.pregion_for_init.i.i
  %185 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond4.not = icmp eq i64 %185, 8
  br i1 %exitcond4.not, label %_pocl_kernel_fdtd_kernel1.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !27

_pocl_kernel_fdtd_kernel1.exit:                   ; preds = %pregion_for_end.i.i
  ret void

if.then8.i.i.us.us.1:                             ; preds = %if.end34.i.i.us.us
  %186 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.1 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.1
  %idxprom11.i.i.us.us.1 = sext i32 %add10.i.i.us.us.1 to i64
  %arrayidx12.i.i.us.us.1 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.1
  %187 = bitcast float* %arrayidx12.i.i.us.us.1 to i32*
  store i32 %186, i32* %187, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.1

if.end34.i.i.us.us.1:                             ; preds = %if.then8.i.i.us.us.1, %if.end34.i.i.us.us
  br i1 %cmp4.i.i.us.us.2, label %if.then8.i.i.us.us.2, label %if.end34.i.i.us.us.2

if.then8.i.i.us.us.2:                             ; preds = %if.end34.i.i.us.us.1
  %188 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.2 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.2
  %idxprom11.i.i.us.us.2 = sext i32 %add10.i.i.us.us.2 to i64
  %arrayidx12.i.i.us.us.2 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.2
  %189 = bitcast float* %arrayidx12.i.i.us.us.2 to i32*
  store i32 %188, i32* %189, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.2

if.end34.i.i.us.us.2:                             ; preds = %if.then8.i.i.us.us.2, %if.end34.i.i.us.us.1
  br i1 %cmp4.i.i.us.us.3, label %if.then8.i.i.us.us.3, label %if.end34.i.i.us.us.3

if.then8.i.i.us.us.3:                             ; preds = %if.end34.i.i.us.us.2
  %190 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.3 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.3
  %idxprom11.i.i.us.us.3 = sext i32 %add10.i.i.us.us.3 to i64
  %arrayidx12.i.i.us.us.3 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.3
  %191 = bitcast float* %arrayidx12.i.i.us.us.3 to i32*
  store i32 %190, i32* %191, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.3

if.end34.i.i.us.us.3:                             ; preds = %if.then8.i.i.us.us.3, %if.end34.i.i.us.us.2
  br i1 %cmp4.i.i.us.us.4, label %if.then8.i.i.us.us.4, label %if.end34.i.i.us.us.4

if.then8.i.i.us.us.4:                             ; preds = %if.end34.i.i.us.us.3
  %192 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.4 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.4
  %idxprom11.i.i.us.us.4 = sext i32 %add10.i.i.us.us.4 to i64
  %arrayidx12.i.i.us.us.4 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.4
  %193 = bitcast float* %arrayidx12.i.i.us.us.4 to i32*
  store i32 %192, i32* %193, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.4

if.end34.i.i.us.us.4:                             ; preds = %if.then8.i.i.us.us.4, %if.end34.i.i.us.us.3
  br i1 %cmp4.i.i.us.us.5, label %if.then8.i.i.us.us.5, label %if.end34.i.i.us.us.5

if.then8.i.i.us.us.5:                             ; preds = %if.end34.i.i.us.us.4
  %194 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.5 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.5
  %idxprom11.i.i.us.us.5 = sext i32 %add10.i.i.us.us.5 to i64
  %arrayidx12.i.i.us.us.5 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.5
  %195 = bitcast float* %arrayidx12.i.i.us.us.5 to i32*
  store i32 %194, i32* %195, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.5

if.end34.i.i.us.us.5:                             ; preds = %if.then8.i.i.us.us.5, %if.end34.i.i.us.us.4
  br i1 %cmp4.i.i.us.us.6, label %if.then8.i.i.us.us.6, label %if.end34.i.i.us.us.6

if.then8.i.i.us.us.6:                             ; preds = %if.end34.i.i.us.us.5
  %196 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.6 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.6
  %idxprom11.i.i.us.us.6 = sext i32 %add10.i.i.us.us.6 to i64
  %arrayidx12.i.i.us.us.6 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.6
  %197 = bitcast float* %arrayidx12.i.i.us.us.6 to i32*
  store i32 %196, i32* %197, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.6

if.end34.i.i.us.us.6:                             ; preds = %if.then8.i.i.us.us.6, %if.end34.i.i.us.us.5
  br i1 %cmp4.i.i.us.us.7, label %if.then8.i.i.us.us.7, label %if.end34.i.i.us.us.7

if.then8.i.i.us.us.7:                             ; preds = %if.end34.i.i.us.us.6
  %198 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.7 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.7
  %idxprom11.i.i.us.us.7 = sext i32 %add10.i.i.us.us.7 to i64
  %arrayidx12.i.i.us.us.7 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.7
  %199 = bitcast float* %arrayidx12.i.i.us.us.7 to i32*
  store i32 %198, i32* %199, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.7

if.end34.i.i.us.us.7:                             ; preds = %if.then8.i.i.us.us.7, %if.end34.i.i.us.us.6
  br i1 %cmp4.i.i.us.us.8, label %if.then8.i.i.us.us.8, label %if.end34.i.i.us.us.8

if.then8.i.i.us.us.8:                             ; preds = %if.end34.i.i.us.us.7
  %200 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.8 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.8
  %idxprom11.i.i.us.us.8 = sext i32 %add10.i.i.us.us.8 to i64
  %arrayidx12.i.i.us.us.8 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.8
  %201 = bitcast float* %arrayidx12.i.i.us.us.8 to i32*
  store i32 %200, i32* %201, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.8

if.end34.i.i.us.us.8:                             ; preds = %if.then8.i.i.us.us.8, %if.end34.i.i.us.us.7
  br i1 %cmp4.i.i.us.us.9, label %if.then8.i.i.us.us.9, label %if.end34.i.i.us.us.9

if.then8.i.i.us.us.9:                             ; preds = %if.end34.i.i.us.us.8
  %202 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.9 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.9
  %idxprom11.i.i.us.us.9 = sext i32 %add10.i.i.us.us.9 to i64
  %arrayidx12.i.i.us.us.9 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.9
  %203 = bitcast float* %arrayidx12.i.i.us.us.9 to i32*
  store i32 %202, i32* %203, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.9

if.end34.i.i.us.us.9:                             ; preds = %if.then8.i.i.us.us.9, %if.end34.i.i.us.us.8
  br i1 %cmp4.i.i.us.us.10, label %if.then8.i.i.us.us.10, label %if.end34.i.i.us.us.10

if.then8.i.i.us.us.10:                            ; preds = %if.end34.i.i.us.us.9
  %204 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.10 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.10
  %idxprom11.i.i.us.us.10 = sext i32 %add10.i.i.us.us.10 to i64
  %arrayidx12.i.i.us.us.10 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.10
  %205 = bitcast float* %arrayidx12.i.i.us.us.10 to i32*
  store i32 %204, i32* %205, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.10

if.end34.i.i.us.us.10:                            ; preds = %if.then8.i.i.us.us.10, %if.end34.i.i.us.us.9
  br i1 %cmp4.i.i.us.us.11, label %if.then8.i.i.us.us.11, label %if.end34.i.i.us.us.11

if.then8.i.i.us.us.11:                            ; preds = %if.end34.i.i.us.us.10
  %206 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.11 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.11
  %idxprom11.i.i.us.us.11 = sext i32 %add10.i.i.us.us.11 to i64
  %arrayidx12.i.i.us.us.11 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.11
  %207 = bitcast float* %arrayidx12.i.i.us.us.11 to i32*
  store i32 %206, i32* %207, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.11

if.end34.i.i.us.us.11:                            ; preds = %if.then8.i.i.us.us.11, %if.end34.i.i.us.us.10
  br i1 %cmp4.i.i.us.us.12, label %if.then8.i.i.us.us.12, label %if.end34.i.i.us.us.12

if.then8.i.i.us.us.12:                            ; preds = %if.end34.i.i.us.us.11
  %208 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.12 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.12
  %idxprom11.i.i.us.us.12 = sext i32 %add10.i.i.us.us.12 to i64
  %arrayidx12.i.i.us.us.12 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.12
  %209 = bitcast float* %arrayidx12.i.i.us.us.12 to i32*
  store i32 %208, i32* %209, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.12

if.end34.i.i.us.us.12:                            ; preds = %if.then8.i.i.us.us.12, %if.end34.i.i.us.us.11
  br i1 %cmp4.i.i.us.us.13, label %if.then8.i.i.us.us.13, label %if.end34.i.i.us.us.13

if.then8.i.i.us.us.13:                            ; preds = %if.end34.i.i.us.us.12
  %210 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.13 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.13
  %idxprom11.i.i.us.us.13 = sext i32 %add10.i.i.us.us.13 to i64
  %arrayidx12.i.i.us.us.13 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.13
  %211 = bitcast float* %arrayidx12.i.i.us.us.13 to i32*
  store i32 %210, i32* %211, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.13

if.end34.i.i.us.us.13:                            ; preds = %if.then8.i.i.us.us.13, %if.end34.i.i.us.us.12
  br i1 %cmp4.i.i.us.us.14, label %if.then8.i.i.us.us.14, label %if.end34.i.i.us.us.14

if.then8.i.i.us.us.14:                            ; preds = %if.end34.i.i.us.us.13
  %212 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.14 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.14
  %idxprom11.i.i.us.us.14 = sext i32 %add10.i.i.us.us.14 to i64
  %arrayidx12.i.i.us.us.14 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.14
  %213 = bitcast float* %arrayidx12.i.i.us.us.14 to i32*
  store i32 %212, i32* %213, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.14

if.end34.i.i.us.us.14:                            ; preds = %if.then8.i.i.us.us.14, %if.end34.i.i.us.us.13
  br i1 %cmp4.i.i.us.us.15, label %if.then8.i.i.us.us.15, label %if.end34.i.i.us.us.15

if.then8.i.i.us.us.15:                            ; preds = %if.end34.i.i.us.us.14
  %214 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.15 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.15
  %idxprom11.i.i.us.us.15 = sext i32 %add10.i.i.us.us.15 to i64
  %arrayidx12.i.i.us.us.15 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.15
  %215 = bitcast float* %arrayidx12.i.i.us.us.15 to i32*
  store i32 %214, i32* %215, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.15

if.end34.i.i.us.us.15:                            ; preds = %if.then8.i.i.us.us.15, %if.end34.i.i.us.us.14
  br i1 %cmp4.i.i.us.us.16, label %if.then8.i.i.us.us.16, label %if.end34.i.i.us.us.16

if.then8.i.i.us.us.16:                            ; preds = %if.end34.i.i.us.us.15
  %216 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.16 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.16
  %idxprom11.i.i.us.us.16 = sext i32 %add10.i.i.us.us.16 to i64
  %arrayidx12.i.i.us.us.16 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.16
  %217 = bitcast float* %arrayidx12.i.i.us.us.16 to i32*
  store i32 %216, i32* %217, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.16

if.end34.i.i.us.us.16:                            ; preds = %if.then8.i.i.us.us.16, %if.end34.i.i.us.us.15
  br i1 %cmp4.i.i.us.us.17, label %if.then8.i.i.us.us.17, label %if.end34.i.i.us.us.17

if.then8.i.i.us.us.17:                            ; preds = %if.end34.i.i.us.us.16
  %218 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.17 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.17
  %idxprom11.i.i.us.us.17 = sext i32 %add10.i.i.us.us.17 to i64
  %arrayidx12.i.i.us.us.17 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.17
  %219 = bitcast float* %arrayidx12.i.i.us.us.17 to i32*
  store i32 %218, i32* %219, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.17

if.end34.i.i.us.us.17:                            ; preds = %if.then8.i.i.us.us.17, %if.end34.i.i.us.us.16
  br i1 %cmp4.i.i.us.us.18, label %if.then8.i.i.us.us.18, label %if.end34.i.i.us.us.18

if.then8.i.i.us.us.18:                            ; preds = %if.end34.i.i.us.us.17
  %220 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.18 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.18
  %idxprom11.i.i.us.us.18 = sext i32 %add10.i.i.us.us.18 to i64
  %arrayidx12.i.i.us.us.18 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.18
  %221 = bitcast float* %arrayidx12.i.i.us.us.18 to i32*
  store i32 %220, i32* %221, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.18

if.end34.i.i.us.us.18:                            ; preds = %if.then8.i.i.us.us.18, %if.end34.i.i.us.us.17
  br i1 %cmp4.i.i.us.us.19, label %if.then8.i.i.us.us.19, label %if.end34.i.i.us.us.19

if.then8.i.i.us.us.19:                            ; preds = %if.end34.i.i.us.us.18
  %222 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.19 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.19
  %idxprom11.i.i.us.us.19 = sext i32 %add10.i.i.us.us.19 to i64
  %arrayidx12.i.i.us.us.19 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.19
  %223 = bitcast float* %arrayidx12.i.i.us.us.19 to i32*
  store i32 %222, i32* %223, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.19

if.end34.i.i.us.us.19:                            ; preds = %if.then8.i.i.us.us.19, %if.end34.i.i.us.us.18
  br i1 %cmp4.i.i.us.us.20, label %if.then8.i.i.us.us.20, label %if.end34.i.i.us.us.20

if.then8.i.i.us.us.20:                            ; preds = %if.end34.i.i.us.us.19
  %224 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.20 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.20
  %idxprom11.i.i.us.us.20 = sext i32 %add10.i.i.us.us.20 to i64
  %arrayidx12.i.i.us.us.20 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.20
  %225 = bitcast float* %arrayidx12.i.i.us.us.20 to i32*
  store i32 %224, i32* %225, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.20

if.end34.i.i.us.us.20:                            ; preds = %if.then8.i.i.us.us.20, %if.end34.i.i.us.us.19
  br i1 %cmp4.i.i.us.us.21, label %if.then8.i.i.us.us.21, label %if.end34.i.i.us.us.21

if.then8.i.i.us.us.21:                            ; preds = %if.end34.i.i.us.us.20
  %226 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.21 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.21
  %idxprom11.i.i.us.us.21 = sext i32 %add10.i.i.us.us.21 to i64
  %arrayidx12.i.i.us.us.21 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.21
  %227 = bitcast float* %arrayidx12.i.i.us.us.21 to i32*
  store i32 %226, i32* %227, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.21

if.end34.i.i.us.us.21:                            ; preds = %if.then8.i.i.us.us.21, %if.end34.i.i.us.us.20
  br i1 %cmp4.i.i.us.us.22, label %if.then8.i.i.us.us.22, label %if.end34.i.i.us.us.22

if.then8.i.i.us.us.22:                            ; preds = %if.end34.i.i.us.us.21
  %228 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.22 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.22
  %idxprom11.i.i.us.us.22 = sext i32 %add10.i.i.us.us.22 to i64
  %arrayidx12.i.i.us.us.22 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.22
  %229 = bitcast float* %arrayidx12.i.i.us.us.22 to i32*
  store i32 %228, i32* %229, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.22

if.end34.i.i.us.us.22:                            ; preds = %if.then8.i.i.us.us.22, %if.end34.i.i.us.us.21
  br i1 %cmp4.i.i.us.us.23, label %if.then8.i.i.us.us.23, label %if.end34.i.i.us.us.23

if.then8.i.i.us.us.23:                            ; preds = %if.end34.i.i.us.us.22
  %230 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.23 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.23
  %idxprom11.i.i.us.us.23 = sext i32 %add10.i.i.us.us.23 to i64
  %arrayidx12.i.i.us.us.23 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.23
  %231 = bitcast float* %arrayidx12.i.i.us.us.23 to i32*
  store i32 %230, i32* %231, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.23

if.end34.i.i.us.us.23:                            ; preds = %if.then8.i.i.us.us.23, %if.end34.i.i.us.us.22
  br i1 %cmp4.i.i.us.us.24, label %if.then8.i.i.us.us.24, label %if.end34.i.i.us.us.24

if.then8.i.i.us.us.24:                            ; preds = %if.end34.i.i.us.us.23
  %232 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.24 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.24
  %idxprom11.i.i.us.us.24 = sext i32 %add10.i.i.us.us.24 to i64
  %arrayidx12.i.i.us.us.24 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.24
  %233 = bitcast float* %arrayidx12.i.i.us.us.24 to i32*
  store i32 %232, i32* %233, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.24

if.end34.i.i.us.us.24:                            ; preds = %if.then8.i.i.us.us.24, %if.end34.i.i.us.us.23
  br i1 %cmp4.i.i.us.us.25, label %if.then8.i.i.us.us.25, label %if.end34.i.i.us.us.25

if.then8.i.i.us.us.25:                            ; preds = %if.end34.i.i.us.us.24
  %234 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.25 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.25
  %idxprom11.i.i.us.us.25 = sext i32 %add10.i.i.us.us.25 to i64
  %arrayidx12.i.i.us.us.25 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.25
  %235 = bitcast float* %arrayidx12.i.i.us.us.25 to i32*
  store i32 %234, i32* %235, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.25

if.end34.i.i.us.us.25:                            ; preds = %if.then8.i.i.us.us.25, %if.end34.i.i.us.us.24
  br i1 %cmp4.i.i.us.us.26, label %if.then8.i.i.us.us.26, label %if.end34.i.i.us.us.26

if.then8.i.i.us.us.26:                            ; preds = %if.end34.i.i.us.us.25
  %236 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.26 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.26
  %idxprom11.i.i.us.us.26 = sext i32 %add10.i.i.us.us.26 to i64
  %arrayidx12.i.i.us.us.26 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.26
  %237 = bitcast float* %arrayidx12.i.i.us.us.26 to i32*
  store i32 %236, i32* %237, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.26

if.end34.i.i.us.us.26:                            ; preds = %if.then8.i.i.us.us.26, %if.end34.i.i.us.us.25
  br i1 %cmp4.i.i.us.us.27, label %if.then8.i.i.us.us.27, label %if.end34.i.i.us.us.27

if.then8.i.i.us.us.27:                            ; preds = %if.end34.i.i.us.us.26
  %238 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.27 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.27
  %idxprom11.i.i.us.us.27 = sext i32 %add10.i.i.us.us.27 to i64
  %arrayidx12.i.i.us.us.27 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.27
  %239 = bitcast float* %arrayidx12.i.i.us.us.27 to i32*
  store i32 %238, i32* %239, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.27

if.end34.i.i.us.us.27:                            ; preds = %if.then8.i.i.us.us.27, %if.end34.i.i.us.us.26
  br i1 %cmp4.i.i.us.us.28, label %if.then8.i.i.us.us.28, label %if.end34.i.i.us.us.28

if.then8.i.i.us.us.28:                            ; preds = %if.end34.i.i.us.us.27
  %240 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.28 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.28
  %idxprom11.i.i.us.us.28 = sext i32 %add10.i.i.us.us.28 to i64
  %arrayidx12.i.i.us.us.28 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.28
  %241 = bitcast float* %arrayidx12.i.i.us.us.28 to i32*
  store i32 %240, i32* %241, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.28

if.end34.i.i.us.us.28:                            ; preds = %if.then8.i.i.us.us.28, %if.end34.i.i.us.us.27
  br i1 %cmp4.i.i.us.us.29, label %if.then8.i.i.us.us.29, label %if.end34.i.i.us.us.29

if.then8.i.i.us.us.29:                            ; preds = %if.end34.i.i.us.us.28
  %242 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.29 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.29
  %idxprom11.i.i.us.us.29 = sext i32 %add10.i.i.us.us.29 to i64
  %arrayidx12.i.i.us.us.29 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.29
  %243 = bitcast float* %arrayidx12.i.i.us.us.29 to i32*
  store i32 %242, i32* %243, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.29

if.end34.i.i.us.us.29:                            ; preds = %if.then8.i.i.us.us.29, %if.end34.i.i.us.us.28
  br i1 %cmp4.i.i.us.us.30, label %if.then8.i.i.us.us.30, label %if.end34.i.i.us.us.30

if.then8.i.i.us.us.30:                            ; preds = %if.end34.i.i.us.us.29
  %244 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.30 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.30
  %idxprom11.i.i.us.us.30 = sext i32 %add10.i.i.us.us.30 to i64
  %arrayidx12.i.i.us.us.30 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.30
  %245 = bitcast float* %arrayidx12.i.i.us.us.30 to i32*
  store i32 %244, i32* %245, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.30

if.end34.i.i.us.us.30:                            ; preds = %if.then8.i.i.us.us.30, %if.end34.i.i.us.us.29
  br i1 %cmp4.i.i.us.us.31, label %if.then8.i.i.us.us.31, label %pregion_for_end.i.i

if.then8.i.i.us.us.31:                            ; preds = %if.end34.i.i.us.us.30
  %246 = load i32, i32* %29, align 4, !tbaa !12
  %add10.i.i.us.us.31 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.31
  %idxprom11.i.i.us.us.31 = sext i32 %add10.i.i.us.us.31 to i64
  %arrayidx12.i.i.us.us.31 = getelementptr inbounds float, float* %12, i64 %idxprom11.i.i.us.us.31
  %247 = bitcast float* %arrayidx12.i.i.us.us.31 to i32*
  store i32 %246, i32* %247, align 4, !tbaa !12, !llvm.access.group !24
  br label %pregion_for_end.i.i

if.else.i.i.us.1:                                 ; preds = %if.end34.i.i.us
  %add14.i.i.us.1 = add nsw i32 %mul.i.i, %conv.i.i.us.1
  %idxprom15.i.i.us.1 = sext i32 %add14.i.i.us.1 to i64
  %arrayidx16.i.i.us.1 = getelementptr inbounds float, float* %12, i64 %idxprom15.i.i.us.1
  %248 = load float, float* %arrayidx16.i.i.us.1, align 4, !tbaa !12
  %conv17.i.i.us.1 = fpext float %248 to double
  %arrayidx21.i.i.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom15.i.i.us.1
  %249 = load float, float* %arrayidx21.i.i.us.1, align 4, !tbaa !12
  %add23.i.i.us.1 = add nsw i32 %mul22.i.i, %conv.i.i.us.1
  %idxprom24.i.i.us.1 = sext i32 %add23.i.i.us.1 to i64
  %arrayidx25.i.i.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom24.i.i.us.1
  %250 = load float, float* %arrayidx25.i.i.us.1, align 4, !tbaa !12
  %sub26.i.i.us.1 = fsub float %249, %250
  %conv27.i.i.us.1 = fpext float %sub26.i.i.us.1 to double
  %251 = tail call double @llvm.fmuladd.f64(double %conv27.i.i.us.1, double -5.000000e-01, double %conv17.i.i.us.1) #5
  %conv29.i.i.us.1 = fptrunc double %251 to float
  store float %conv29.i.i.us.1, float* %arrayidx16.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.1

if.end34.i.i.us.1:                                ; preds = %if.else.i.i.us.1, %if.end34.i.i.us
  %252 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %252, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !40
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_fdtd_kernel1_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 2
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 3
  %12 = bitcast i8** %11 to float**
  %13 = load float*, float** %12, align 8
  %14 = getelementptr i8*, i8** %0, i64 4
  %15 = bitcast i8** %14 to i32**
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr i8*, i8** %0, i64 5
  %19 = bitcast i8** %18 to i32**
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr i8*, i8** %0, i64 6
  %23 = bitcast i8** %22 to i32**
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %idxprom.i.i = sext i32 %17 to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %7, i64 %idxprom.i.i
  %26 = bitcast float* %arrayidx.i.i to i32*
  %conv.i.i.us.us = trunc i64 %mul.i.i.i to i32
  %cmp4.i.i.us.us = icmp sgt i32 %25, %conv.i.i.us.us
  %27 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.1 = or i32 %27, 1
  %cmp4.i.i.us.us.1 = icmp sgt i32 %25, %conv.i.i.us.us.1
  %28 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.2 = or i32 %28, 2
  %cmp4.i.i.us.us.2 = icmp sgt i32 %25, %conv.i.i.us.us.2
  %29 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.3 = or i32 %29, 3
  %cmp4.i.i.us.us.3 = icmp sgt i32 %25, %conv.i.i.us.us.3
  %30 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.4 = or i32 %30, 4
  %cmp4.i.i.us.us.4 = icmp sgt i32 %25, %conv.i.i.us.us.4
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.5 = or i32 %31, 5
  %cmp4.i.i.us.us.5 = icmp sgt i32 %25, %conv.i.i.us.us.5
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.6 = or i32 %32, 6
  %cmp4.i.i.us.us.6 = icmp sgt i32 %25, %conv.i.i.us.us.6
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.7 = or i32 %33, 7
  %cmp4.i.i.us.us.7 = icmp sgt i32 %25, %conv.i.i.us.us.7
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.8 = or i32 %34, 8
  %cmp4.i.i.us.us.8 = icmp sgt i32 %25, %conv.i.i.us.us.8
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.9 = or i32 %35, 9
  %cmp4.i.i.us.us.9 = icmp sgt i32 %25, %conv.i.i.us.us.9
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.10 = or i32 %36, 10
  %cmp4.i.i.us.us.10 = icmp sgt i32 %25, %conv.i.i.us.us.10
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.11 = or i32 %37, 11
  %cmp4.i.i.us.us.11 = icmp sgt i32 %25, %conv.i.i.us.us.11
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.12 = or i32 %38, 12
  %cmp4.i.i.us.us.12 = icmp sgt i32 %25, %conv.i.i.us.us.12
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.13 = or i32 %39, 13
  %cmp4.i.i.us.us.13 = icmp sgt i32 %25, %conv.i.i.us.us.13
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.14 = or i32 %40, 14
  %cmp4.i.i.us.us.14 = icmp sgt i32 %25, %conv.i.i.us.us.14
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.15 = or i32 %41, 15
  %cmp4.i.i.us.us.15 = icmp sgt i32 %25, %conv.i.i.us.us.15
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.16 = or i32 %42, 16
  %cmp4.i.i.us.us.16 = icmp sgt i32 %25, %conv.i.i.us.us.16
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.17 = or i32 %43, 17
  %cmp4.i.i.us.us.17 = icmp sgt i32 %25, %conv.i.i.us.us.17
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.18 = or i32 %44, 18
  %cmp4.i.i.us.us.18 = icmp sgt i32 %25, %conv.i.i.us.us.18
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.19 = or i32 %45, 19
  %cmp4.i.i.us.us.19 = icmp sgt i32 %25, %conv.i.i.us.us.19
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.20 = or i32 %46, 20
  %cmp4.i.i.us.us.20 = icmp sgt i32 %25, %conv.i.i.us.us.20
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.21 = or i32 %47, 21
  %cmp4.i.i.us.us.21 = icmp sgt i32 %25, %conv.i.i.us.us.21
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.22 = or i32 %48, 22
  %cmp4.i.i.us.us.22 = icmp sgt i32 %25, %conv.i.i.us.us.22
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.23 = or i32 %49, 23
  %cmp4.i.i.us.us.23 = icmp sgt i32 %25, %conv.i.i.us.us.23
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.24 = or i32 %50, 24
  %cmp4.i.i.us.us.24 = icmp sgt i32 %25, %conv.i.i.us.us.24
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.25 = or i32 %51, 25
  %cmp4.i.i.us.us.25 = icmp sgt i32 %25, %conv.i.i.us.us.25
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.26 = or i32 %52, 26
  %cmp4.i.i.us.us.26 = icmp sgt i32 %25, %conv.i.i.us.us.26
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.27 = or i32 %53, 27
  %cmp4.i.i.us.us.27 = icmp sgt i32 %25, %conv.i.i.us.us.27
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.28 = or i32 %54, 28
  %cmp4.i.i.us.us.28 = icmp sgt i32 %25, %conv.i.i.us.us.28
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.29 = or i32 %55, 29
  %cmp4.i.i.us.us.29 = icmp sgt i32 %25, %conv.i.i.us.us.29
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.30 = or i32 %56, 30
  %cmp4.i.i.us.us.30 = icmp sgt i32 %25, %conv.i.i.us.us.30
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.us.31 = or i32 %57, 31
  %cmp4.i.i.us.us.31 = icmp sgt i32 %25, %conv.i.i.us.us.31
  %58 = trunc i64 %3 to i32
  %59 = mul i32 %25, %58
  %60 = shl i32 %59, 3
  %61 = trunc i64 %2 to i32
  %62 = shl i32 %61, 5
  %63 = add i32 %60, %62
  %64 = zext i32 %25 to i64
  %65 = shl i32 %58, 3
  %66 = add i32 %65, -1
  %67 = mul i32 %25, %66
  %68 = add i32 %67, %62
  %69 = trunc i64 %3 to i32
  %70 = mul i32 %25, %69
  %71 = shl i32 %70, 3
  %72 = trunc i64 %2 to i32
  %73 = shl i32 %72, 5
  %74 = add i32 %71, %73
  %75 = zext i32 %25 to i64
  %scevgep9 = getelementptr float, float* %10, i64 32
  %76 = shl i32 %69, 3
  %77 = add i32 %76, -1
  %78 = mul i32 %25, %77
  %79 = add i32 %78, %73
  %scevgep14 = getelementptr float, float* %13, i64 32
  %scevgep19 = getelementptr float, float* %13, i64 32
  %bound022 = icmp ult float* %10, %scevgep19
  %bound123 = icmp ult float* %13, %scevgep9
  %found.conflict24 = and i1 %bound022, %bound123
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert25 = insertelement <8 x i32> undef, i32 %25, i32 0
  %broadcast.splat26 = shufflevector <8 x i32> %broadcast.splatinsert25, <8 x i32> undef, <8 x i32> zeroinitializer
  %80 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %81 = or <8 x i32> %80, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %82 = icmp sgt <8 x i32> %broadcast.splat26, %81
  %83 = extractelement <8 x i32> %81, i32 0
  %84 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %85 = or <8 x i32> %84, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %86 = icmp sgt <8 x i32> %broadcast.splat26, %85
  %87 = extractelement <8 x i32> %85, i32 0
  %88 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %89 = or <8 x i32> %88, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %90 = icmp sgt <8 x i32> %broadcast.splat26, %89
  %91 = extractelement <8 x i32> %89, i32 0
  %92 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %93 = or <8 x i32> %92, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %94 = icmp sgt <8 x i32> %broadcast.splat26, %93
  %95 = extractelement <8 x i32> %93, i32 0
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %182, %pregion_for_end.i.i ]
  %96 = mul i64 %_local_id_y.i.0, %75
  %97 = trunc i64 %96 to i32
  %98 = add i32 %74, %97
  %99 = sext i32 %98 to i64
  %scevgep = getelementptr float, float* %10, i64 %99
  %scevgep10 = getelementptr float, float* %scevgep9, i64 %99
  %100 = trunc i64 %96 to i32
  %101 = add i32 %79, %100
  %102 = sext i32 %101 to i64
  %scevgep12 = getelementptr float, float* %13, i64 %102
  %scevgep15 = getelementptr float, float* %scevgep14, i64 %102
  %103 = mul i64 %_local_id_y.i.0, %64
  %104 = trunc i64 %103 to i32
  %105 = add i32 %63, %104
  %106 = trunc i64 %103 to i32
  %107 = add i32 %68, %106
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %21, %conv2.i.i
  %mul.i.i = mul nsw i32 %25, %conv2.i.i
  %sub.i.i = add nsw i32 %conv2.i.i, -1
  %mul22.i.i = mul nsw i32 %sub.i.i, %25
  br i1 %cmp.i.i, label %pregion_for_entry.pregion_for_init.i.i.split.us, label %pregion_for_end.i.i

pregion_for_entry.pregion_for_init.i.i.split.us:  ; preds = %pregion_for_entry.pregion_for_init.i.i
  %cmp6.i.i = icmp eq i32 %conv2.i.i, 0
  br i1 %cmp6.i.i, label %pregion_for_entry.entry.i.i.us.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i.split.us
  %108 = icmp sgt i32 %105, 2147483616
  %109 = icmp sgt i32 %107, 2147483616
  %110 = or i1 %108, %109
  br i1 %110, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult float* %scevgep, %scevgep15
  %bound1 = icmp ult float* %scevgep12, %scevgep10
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %111 = add nsw i32 %mul.i.i, %83
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %10, i64 %112
  %114 = bitcast float* %113 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %114, i32 4, <8 x i1> %82, <8 x float> undef), !tbaa !12, !alias.scope !41, !noalias !44
  %115 = fpext <8 x float> %wide.masked.load to <8 x double>
  %116 = getelementptr inbounds float, float* %13, i64 %112
  %117 = bitcast float* %116 to <8 x float>*
  %wide.masked.load27 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %117, i32 4, <8 x i1> %82, <8 x float> undef), !tbaa !12, !alias.scope !47
  %118 = add nsw i32 %mul22.i.i, %83
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %13, i64 %119
  %121 = bitcast float* %120 to <8 x float>*
  %wide.masked.load28 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %121, i32 4, <8 x i1> %82, <8 x float> undef), !tbaa !12, !alias.scope !48
  %122 = fsub <8 x float> %wide.masked.load27, %wide.masked.load28
  %123 = fpext <8 x float> %122 to <8 x double>
  %124 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %123, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %115)
  %125 = fptrunc <8 x double> %124 to <8 x float>
  %126 = bitcast float* %113 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %125, <8 x float>* %126, i32 4, <8 x i1> %82), !tbaa !12, !alias.scope !41, !noalias !44, !llvm.access.group !24
  %127 = add nsw i32 %mul.i.i, %87
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %10, i64 %128
  %130 = bitcast float* %129 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %130, i32 4, <8 x i1> %86, <8 x float> undef), !tbaa !12, !alias.scope !41, !noalias !44
  %131 = fpext <8 x float> %wide.masked.load.1 to <8 x double>
  %132 = getelementptr inbounds float, float* %13, i64 %128
  %133 = bitcast float* %132 to <8 x float>*
  %wide.masked.load27.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %133, i32 4, <8 x i1> %86, <8 x float> undef), !tbaa !12, !alias.scope !47
  %134 = add nsw i32 %mul22.i.i, %87
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %13, i64 %135
  %137 = bitcast float* %136 to <8 x float>*
  %wide.masked.load28.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %137, i32 4, <8 x i1> %86, <8 x float> undef), !tbaa !12, !alias.scope !48
  %138 = fsub <8 x float> %wide.masked.load27.1, %wide.masked.load28.1
  %139 = fpext <8 x float> %138 to <8 x double>
  %140 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %139, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %131)
  %141 = fptrunc <8 x double> %140 to <8 x float>
  %142 = bitcast float* %129 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %141, <8 x float>* %142, i32 4, <8 x i1> %86), !tbaa !12, !alias.scope !41, !noalias !44, !llvm.access.group !24
  %143 = add nsw i32 %mul.i.i, %91
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %10, i64 %144
  %146 = bitcast float* %145 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %146, i32 4, <8 x i1> %90, <8 x float> undef), !tbaa !12, !alias.scope !41, !noalias !44
  %147 = fpext <8 x float> %wide.masked.load.2 to <8 x double>
  %148 = getelementptr inbounds float, float* %13, i64 %144
  %149 = bitcast float* %148 to <8 x float>*
  %wide.masked.load27.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %149, i32 4, <8 x i1> %90, <8 x float> undef), !tbaa !12, !alias.scope !47
  %150 = add nsw i32 %mul22.i.i, %91
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %13, i64 %151
  %153 = bitcast float* %152 to <8 x float>*
  %wide.masked.load28.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %153, i32 4, <8 x i1> %90, <8 x float> undef), !tbaa !12, !alias.scope !48
  %154 = fsub <8 x float> %wide.masked.load27.2, %wide.masked.load28.2
  %155 = fpext <8 x float> %154 to <8 x double>
  %156 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %155, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %147)
  %157 = fptrunc <8 x double> %156 to <8 x float>
  %158 = bitcast float* %145 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %157, <8 x float>* %158, i32 4, <8 x i1> %90), !tbaa !12, !alias.scope !41, !noalias !44, !llvm.access.group !24
  %159 = add nsw i32 %mul.i.i, %95
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %10, i64 %160
  %162 = bitcast float* %161 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %162, i32 4, <8 x i1> %94, <8 x float> undef), !tbaa !12, !alias.scope !41, !noalias !44
  %163 = fpext <8 x float> %wide.masked.load.3 to <8 x double>
  %164 = getelementptr inbounds float, float* %13, i64 %160
  %165 = bitcast float* %164 to <8 x float>*
  %wide.masked.load27.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %165, i32 4, <8 x i1> %94, <8 x float> undef), !tbaa !12, !alias.scope !47
  %166 = add nsw i32 %mul22.i.i, %95
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %13, i64 %167
  %169 = bitcast float* %168 to <8 x float>*
  %wide.masked.load28.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %169, i32 4, <8 x i1> %94, <8 x float> undef), !tbaa !12, !alias.scope !48
  %170 = fsub <8 x float> %wide.masked.load27.3, %wide.masked.load28.3
  %171 = fpext <8 x float> %170 to <8 x double>
  %172 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %171, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %163)
  %173 = fptrunc <8 x double> %172 to <8 x float>
  %174 = bitcast float* %161 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %173, <8 x float>* %174, i32 4, <8 x i1> %94), !tbaa !12, !alias.scope !41, !noalias !44, !llvm.access.group !24
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us.us.preheader:      ; preds = %pregion_for_entry.pregion_for_init.i.i.split.us
  br i1 %cmp4.i.i.us.us, label %if.then8.i.i.us.us, label %if.end34.i.i.us.us

if.then8.i.i.us.us:                               ; preds = %pregion_for_entry.entry.i.i.us.us.preheader
  %175 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us
  %idxprom11.i.i.us.us = sext i32 %add10.i.i.us.us to i64
  %arrayidx12.i.i.us.us = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us
  %176 = bitcast float* %arrayidx12.i.i.us.us to i32*
  store i32 %175, i32* %176, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us

if.end34.i.i.us.us:                               ; preds = %if.then8.i.i.us.us, %pregion_for_entry.entry.i.i.us.us.preheader
  br i1 %cmp4.i.i.us.us.1, label %if.then8.i.i.us.us.1, label %if.end34.i.i.us.us.1

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end34.i.i.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.preheader ], [ %249, %if.end34.i.i.us.1 ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %25, %conv.i.i.us
  br i1 %cmp4.i.i.us, label %if.else.i.i.us, label %if.end34.i.i.us

if.else.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add14.i.i.us = add nsw i32 %mul.i.i, %conv.i.i.us
  %idxprom15.i.i.us = sext i32 %add14.i.i.us to i64
  %arrayidx16.i.i.us = getelementptr inbounds float, float* %10, i64 %idxprom15.i.i.us
  %177 = load float, float* %arrayidx16.i.i.us, align 4, !tbaa !12
  %conv17.i.i.us = fpext float %177 to double
  %arrayidx21.i.i.us = getelementptr inbounds float, float* %13, i64 %idxprom15.i.i.us
  %178 = load float, float* %arrayidx21.i.i.us, align 4, !tbaa !12
  %add23.i.i.us = add nsw i32 %mul22.i.i, %conv.i.i.us
  %idxprom24.i.i.us = sext i32 %add23.i.i.us to i64
  %arrayidx25.i.i.us = getelementptr inbounds float, float* %13, i64 %idxprom24.i.i.us
  %179 = load float, float* %arrayidx25.i.i.us, align 4, !tbaa !12
  %sub26.i.i.us = fsub float %178, %179
  %conv27.i.i.us = fpext float %sub26.i.i.us to double
  %180 = tail call double @llvm.fmuladd.f64(double %conv27.i.i.us, double -5.000000e-01, double %conv17.i.i.us) #5
  %conv29.i.i.us = fptrunc double %180 to float
  store float %conv29.i.i.us, float* %arrayidx16.i.i.us, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us

if.end34.i.i.us:                                  ; preds = %if.else.i.i.us, %pregion_for_entry.entry.i.i.us
  %181 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %181, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp4.i.i.us.1 = icmp sgt i32 %25, %conv.i.i.us.1
  br i1 %cmp4.i.i.us.1, label %if.else.i.i.us.1, label %if.end34.i.i.us.1

pregion_for_end.i.i.loopexit:                     ; preds = %if.end34.i.i.us.1
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %if.then8.i.i.us.us.31, %if.end34.i.i.us.us.30, %pregion_for_end.i.i.loopexit, %vector.body, %pregion_for_entry.pregion_for_init.i.i
  %182 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond4.not = icmp eq i64 %182, 8
  br i1 %exitcond4.not, label %_pocl_kernel_fdtd_kernel1.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !27

_pocl_kernel_fdtd_kernel1.exit:                   ; preds = %pregion_for_end.i.i
  ret void

if.then8.i.i.us.us.1:                             ; preds = %if.end34.i.i.us.us
  %183 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.1 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.1
  %idxprom11.i.i.us.us.1 = sext i32 %add10.i.i.us.us.1 to i64
  %arrayidx12.i.i.us.us.1 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.1
  %184 = bitcast float* %arrayidx12.i.i.us.us.1 to i32*
  store i32 %183, i32* %184, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.1

if.end34.i.i.us.us.1:                             ; preds = %if.then8.i.i.us.us.1, %if.end34.i.i.us.us
  br i1 %cmp4.i.i.us.us.2, label %if.then8.i.i.us.us.2, label %if.end34.i.i.us.us.2

if.then8.i.i.us.us.2:                             ; preds = %if.end34.i.i.us.us.1
  %185 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.2 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.2
  %idxprom11.i.i.us.us.2 = sext i32 %add10.i.i.us.us.2 to i64
  %arrayidx12.i.i.us.us.2 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.2
  %186 = bitcast float* %arrayidx12.i.i.us.us.2 to i32*
  store i32 %185, i32* %186, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.2

if.end34.i.i.us.us.2:                             ; preds = %if.then8.i.i.us.us.2, %if.end34.i.i.us.us.1
  br i1 %cmp4.i.i.us.us.3, label %if.then8.i.i.us.us.3, label %if.end34.i.i.us.us.3

if.then8.i.i.us.us.3:                             ; preds = %if.end34.i.i.us.us.2
  %187 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.3 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.3
  %idxprom11.i.i.us.us.3 = sext i32 %add10.i.i.us.us.3 to i64
  %arrayidx12.i.i.us.us.3 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.3
  %188 = bitcast float* %arrayidx12.i.i.us.us.3 to i32*
  store i32 %187, i32* %188, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.3

if.end34.i.i.us.us.3:                             ; preds = %if.then8.i.i.us.us.3, %if.end34.i.i.us.us.2
  br i1 %cmp4.i.i.us.us.4, label %if.then8.i.i.us.us.4, label %if.end34.i.i.us.us.4

if.then8.i.i.us.us.4:                             ; preds = %if.end34.i.i.us.us.3
  %189 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.4 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.4
  %idxprom11.i.i.us.us.4 = sext i32 %add10.i.i.us.us.4 to i64
  %arrayidx12.i.i.us.us.4 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.4
  %190 = bitcast float* %arrayidx12.i.i.us.us.4 to i32*
  store i32 %189, i32* %190, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.4

if.end34.i.i.us.us.4:                             ; preds = %if.then8.i.i.us.us.4, %if.end34.i.i.us.us.3
  br i1 %cmp4.i.i.us.us.5, label %if.then8.i.i.us.us.5, label %if.end34.i.i.us.us.5

if.then8.i.i.us.us.5:                             ; preds = %if.end34.i.i.us.us.4
  %191 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.5 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.5
  %idxprom11.i.i.us.us.5 = sext i32 %add10.i.i.us.us.5 to i64
  %arrayidx12.i.i.us.us.5 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.5
  %192 = bitcast float* %arrayidx12.i.i.us.us.5 to i32*
  store i32 %191, i32* %192, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.5

if.end34.i.i.us.us.5:                             ; preds = %if.then8.i.i.us.us.5, %if.end34.i.i.us.us.4
  br i1 %cmp4.i.i.us.us.6, label %if.then8.i.i.us.us.6, label %if.end34.i.i.us.us.6

if.then8.i.i.us.us.6:                             ; preds = %if.end34.i.i.us.us.5
  %193 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.6 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.6
  %idxprom11.i.i.us.us.6 = sext i32 %add10.i.i.us.us.6 to i64
  %arrayidx12.i.i.us.us.6 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.6
  %194 = bitcast float* %arrayidx12.i.i.us.us.6 to i32*
  store i32 %193, i32* %194, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.6

if.end34.i.i.us.us.6:                             ; preds = %if.then8.i.i.us.us.6, %if.end34.i.i.us.us.5
  br i1 %cmp4.i.i.us.us.7, label %if.then8.i.i.us.us.7, label %if.end34.i.i.us.us.7

if.then8.i.i.us.us.7:                             ; preds = %if.end34.i.i.us.us.6
  %195 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.7 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.7
  %idxprom11.i.i.us.us.7 = sext i32 %add10.i.i.us.us.7 to i64
  %arrayidx12.i.i.us.us.7 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.7
  %196 = bitcast float* %arrayidx12.i.i.us.us.7 to i32*
  store i32 %195, i32* %196, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.7

if.end34.i.i.us.us.7:                             ; preds = %if.then8.i.i.us.us.7, %if.end34.i.i.us.us.6
  br i1 %cmp4.i.i.us.us.8, label %if.then8.i.i.us.us.8, label %if.end34.i.i.us.us.8

if.then8.i.i.us.us.8:                             ; preds = %if.end34.i.i.us.us.7
  %197 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.8 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.8
  %idxprom11.i.i.us.us.8 = sext i32 %add10.i.i.us.us.8 to i64
  %arrayidx12.i.i.us.us.8 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.8
  %198 = bitcast float* %arrayidx12.i.i.us.us.8 to i32*
  store i32 %197, i32* %198, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.8

if.end34.i.i.us.us.8:                             ; preds = %if.then8.i.i.us.us.8, %if.end34.i.i.us.us.7
  br i1 %cmp4.i.i.us.us.9, label %if.then8.i.i.us.us.9, label %if.end34.i.i.us.us.9

if.then8.i.i.us.us.9:                             ; preds = %if.end34.i.i.us.us.8
  %199 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.9 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.9
  %idxprom11.i.i.us.us.9 = sext i32 %add10.i.i.us.us.9 to i64
  %arrayidx12.i.i.us.us.9 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.9
  %200 = bitcast float* %arrayidx12.i.i.us.us.9 to i32*
  store i32 %199, i32* %200, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.9

if.end34.i.i.us.us.9:                             ; preds = %if.then8.i.i.us.us.9, %if.end34.i.i.us.us.8
  br i1 %cmp4.i.i.us.us.10, label %if.then8.i.i.us.us.10, label %if.end34.i.i.us.us.10

if.then8.i.i.us.us.10:                            ; preds = %if.end34.i.i.us.us.9
  %201 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.10 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.10
  %idxprom11.i.i.us.us.10 = sext i32 %add10.i.i.us.us.10 to i64
  %arrayidx12.i.i.us.us.10 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.10
  %202 = bitcast float* %arrayidx12.i.i.us.us.10 to i32*
  store i32 %201, i32* %202, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.10

if.end34.i.i.us.us.10:                            ; preds = %if.then8.i.i.us.us.10, %if.end34.i.i.us.us.9
  br i1 %cmp4.i.i.us.us.11, label %if.then8.i.i.us.us.11, label %if.end34.i.i.us.us.11

if.then8.i.i.us.us.11:                            ; preds = %if.end34.i.i.us.us.10
  %203 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.11 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.11
  %idxprom11.i.i.us.us.11 = sext i32 %add10.i.i.us.us.11 to i64
  %arrayidx12.i.i.us.us.11 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.11
  %204 = bitcast float* %arrayidx12.i.i.us.us.11 to i32*
  store i32 %203, i32* %204, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.11

if.end34.i.i.us.us.11:                            ; preds = %if.then8.i.i.us.us.11, %if.end34.i.i.us.us.10
  br i1 %cmp4.i.i.us.us.12, label %if.then8.i.i.us.us.12, label %if.end34.i.i.us.us.12

if.then8.i.i.us.us.12:                            ; preds = %if.end34.i.i.us.us.11
  %205 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.12 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.12
  %idxprom11.i.i.us.us.12 = sext i32 %add10.i.i.us.us.12 to i64
  %arrayidx12.i.i.us.us.12 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.12
  %206 = bitcast float* %arrayidx12.i.i.us.us.12 to i32*
  store i32 %205, i32* %206, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.12

if.end34.i.i.us.us.12:                            ; preds = %if.then8.i.i.us.us.12, %if.end34.i.i.us.us.11
  br i1 %cmp4.i.i.us.us.13, label %if.then8.i.i.us.us.13, label %if.end34.i.i.us.us.13

if.then8.i.i.us.us.13:                            ; preds = %if.end34.i.i.us.us.12
  %207 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.13 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.13
  %idxprom11.i.i.us.us.13 = sext i32 %add10.i.i.us.us.13 to i64
  %arrayidx12.i.i.us.us.13 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.13
  %208 = bitcast float* %arrayidx12.i.i.us.us.13 to i32*
  store i32 %207, i32* %208, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.13

if.end34.i.i.us.us.13:                            ; preds = %if.then8.i.i.us.us.13, %if.end34.i.i.us.us.12
  br i1 %cmp4.i.i.us.us.14, label %if.then8.i.i.us.us.14, label %if.end34.i.i.us.us.14

if.then8.i.i.us.us.14:                            ; preds = %if.end34.i.i.us.us.13
  %209 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.14 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.14
  %idxprom11.i.i.us.us.14 = sext i32 %add10.i.i.us.us.14 to i64
  %arrayidx12.i.i.us.us.14 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.14
  %210 = bitcast float* %arrayidx12.i.i.us.us.14 to i32*
  store i32 %209, i32* %210, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.14

if.end34.i.i.us.us.14:                            ; preds = %if.then8.i.i.us.us.14, %if.end34.i.i.us.us.13
  br i1 %cmp4.i.i.us.us.15, label %if.then8.i.i.us.us.15, label %if.end34.i.i.us.us.15

if.then8.i.i.us.us.15:                            ; preds = %if.end34.i.i.us.us.14
  %211 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.15 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.15
  %idxprom11.i.i.us.us.15 = sext i32 %add10.i.i.us.us.15 to i64
  %arrayidx12.i.i.us.us.15 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.15
  %212 = bitcast float* %arrayidx12.i.i.us.us.15 to i32*
  store i32 %211, i32* %212, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.15

if.end34.i.i.us.us.15:                            ; preds = %if.then8.i.i.us.us.15, %if.end34.i.i.us.us.14
  br i1 %cmp4.i.i.us.us.16, label %if.then8.i.i.us.us.16, label %if.end34.i.i.us.us.16

if.then8.i.i.us.us.16:                            ; preds = %if.end34.i.i.us.us.15
  %213 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.16 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.16
  %idxprom11.i.i.us.us.16 = sext i32 %add10.i.i.us.us.16 to i64
  %arrayidx12.i.i.us.us.16 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.16
  %214 = bitcast float* %arrayidx12.i.i.us.us.16 to i32*
  store i32 %213, i32* %214, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.16

if.end34.i.i.us.us.16:                            ; preds = %if.then8.i.i.us.us.16, %if.end34.i.i.us.us.15
  br i1 %cmp4.i.i.us.us.17, label %if.then8.i.i.us.us.17, label %if.end34.i.i.us.us.17

if.then8.i.i.us.us.17:                            ; preds = %if.end34.i.i.us.us.16
  %215 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.17 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.17
  %idxprom11.i.i.us.us.17 = sext i32 %add10.i.i.us.us.17 to i64
  %arrayidx12.i.i.us.us.17 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.17
  %216 = bitcast float* %arrayidx12.i.i.us.us.17 to i32*
  store i32 %215, i32* %216, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.17

if.end34.i.i.us.us.17:                            ; preds = %if.then8.i.i.us.us.17, %if.end34.i.i.us.us.16
  br i1 %cmp4.i.i.us.us.18, label %if.then8.i.i.us.us.18, label %if.end34.i.i.us.us.18

if.then8.i.i.us.us.18:                            ; preds = %if.end34.i.i.us.us.17
  %217 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.18 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.18
  %idxprom11.i.i.us.us.18 = sext i32 %add10.i.i.us.us.18 to i64
  %arrayidx12.i.i.us.us.18 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.18
  %218 = bitcast float* %arrayidx12.i.i.us.us.18 to i32*
  store i32 %217, i32* %218, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.18

if.end34.i.i.us.us.18:                            ; preds = %if.then8.i.i.us.us.18, %if.end34.i.i.us.us.17
  br i1 %cmp4.i.i.us.us.19, label %if.then8.i.i.us.us.19, label %if.end34.i.i.us.us.19

if.then8.i.i.us.us.19:                            ; preds = %if.end34.i.i.us.us.18
  %219 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.19 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.19
  %idxprom11.i.i.us.us.19 = sext i32 %add10.i.i.us.us.19 to i64
  %arrayidx12.i.i.us.us.19 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.19
  %220 = bitcast float* %arrayidx12.i.i.us.us.19 to i32*
  store i32 %219, i32* %220, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.19

if.end34.i.i.us.us.19:                            ; preds = %if.then8.i.i.us.us.19, %if.end34.i.i.us.us.18
  br i1 %cmp4.i.i.us.us.20, label %if.then8.i.i.us.us.20, label %if.end34.i.i.us.us.20

if.then8.i.i.us.us.20:                            ; preds = %if.end34.i.i.us.us.19
  %221 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.20 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.20
  %idxprom11.i.i.us.us.20 = sext i32 %add10.i.i.us.us.20 to i64
  %arrayidx12.i.i.us.us.20 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.20
  %222 = bitcast float* %arrayidx12.i.i.us.us.20 to i32*
  store i32 %221, i32* %222, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.20

if.end34.i.i.us.us.20:                            ; preds = %if.then8.i.i.us.us.20, %if.end34.i.i.us.us.19
  br i1 %cmp4.i.i.us.us.21, label %if.then8.i.i.us.us.21, label %if.end34.i.i.us.us.21

if.then8.i.i.us.us.21:                            ; preds = %if.end34.i.i.us.us.20
  %223 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.21 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.21
  %idxprom11.i.i.us.us.21 = sext i32 %add10.i.i.us.us.21 to i64
  %arrayidx12.i.i.us.us.21 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.21
  %224 = bitcast float* %arrayidx12.i.i.us.us.21 to i32*
  store i32 %223, i32* %224, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.21

if.end34.i.i.us.us.21:                            ; preds = %if.then8.i.i.us.us.21, %if.end34.i.i.us.us.20
  br i1 %cmp4.i.i.us.us.22, label %if.then8.i.i.us.us.22, label %if.end34.i.i.us.us.22

if.then8.i.i.us.us.22:                            ; preds = %if.end34.i.i.us.us.21
  %225 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.22 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.22
  %idxprom11.i.i.us.us.22 = sext i32 %add10.i.i.us.us.22 to i64
  %arrayidx12.i.i.us.us.22 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.22
  %226 = bitcast float* %arrayidx12.i.i.us.us.22 to i32*
  store i32 %225, i32* %226, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.22

if.end34.i.i.us.us.22:                            ; preds = %if.then8.i.i.us.us.22, %if.end34.i.i.us.us.21
  br i1 %cmp4.i.i.us.us.23, label %if.then8.i.i.us.us.23, label %if.end34.i.i.us.us.23

if.then8.i.i.us.us.23:                            ; preds = %if.end34.i.i.us.us.22
  %227 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.23 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.23
  %idxprom11.i.i.us.us.23 = sext i32 %add10.i.i.us.us.23 to i64
  %arrayidx12.i.i.us.us.23 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.23
  %228 = bitcast float* %arrayidx12.i.i.us.us.23 to i32*
  store i32 %227, i32* %228, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.23

if.end34.i.i.us.us.23:                            ; preds = %if.then8.i.i.us.us.23, %if.end34.i.i.us.us.22
  br i1 %cmp4.i.i.us.us.24, label %if.then8.i.i.us.us.24, label %if.end34.i.i.us.us.24

if.then8.i.i.us.us.24:                            ; preds = %if.end34.i.i.us.us.23
  %229 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.24 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.24
  %idxprom11.i.i.us.us.24 = sext i32 %add10.i.i.us.us.24 to i64
  %arrayidx12.i.i.us.us.24 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.24
  %230 = bitcast float* %arrayidx12.i.i.us.us.24 to i32*
  store i32 %229, i32* %230, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.24

if.end34.i.i.us.us.24:                            ; preds = %if.then8.i.i.us.us.24, %if.end34.i.i.us.us.23
  br i1 %cmp4.i.i.us.us.25, label %if.then8.i.i.us.us.25, label %if.end34.i.i.us.us.25

if.then8.i.i.us.us.25:                            ; preds = %if.end34.i.i.us.us.24
  %231 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.25 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.25
  %idxprom11.i.i.us.us.25 = sext i32 %add10.i.i.us.us.25 to i64
  %arrayidx12.i.i.us.us.25 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.25
  %232 = bitcast float* %arrayidx12.i.i.us.us.25 to i32*
  store i32 %231, i32* %232, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.25

if.end34.i.i.us.us.25:                            ; preds = %if.then8.i.i.us.us.25, %if.end34.i.i.us.us.24
  br i1 %cmp4.i.i.us.us.26, label %if.then8.i.i.us.us.26, label %if.end34.i.i.us.us.26

if.then8.i.i.us.us.26:                            ; preds = %if.end34.i.i.us.us.25
  %233 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.26 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.26
  %idxprom11.i.i.us.us.26 = sext i32 %add10.i.i.us.us.26 to i64
  %arrayidx12.i.i.us.us.26 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.26
  %234 = bitcast float* %arrayidx12.i.i.us.us.26 to i32*
  store i32 %233, i32* %234, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.26

if.end34.i.i.us.us.26:                            ; preds = %if.then8.i.i.us.us.26, %if.end34.i.i.us.us.25
  br i1 %cmp4.i.i.us.us.27, label %if.then8.i.i.us.us.27, label %if.end34.i.i.us.us.27

if.then8.i.i.us.us.27:                            ; preds = %if.end34.i.i.us.us.26
  %235 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.27 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.27
  %idxprom11.i.i.us.us.27 = sext i32 %add10.i.i.us.us.27 to i64
  %arrayidx12.i.i.us.us.27 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.27
  %236 = bitcast float* %arrayidx12.i.i.us.us.27 to i32*
  store i32 %235, i32* %236, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.27

if.end34.i.i.us.us.27:                            ; preds = %if.then8.i.i.us.us.27, %if.end34.i.i.us.us.26
  br i1 %cmp4.i.i.us.us.28, label %if.then8.i.i.us.us.28, label %if.end34.i.i.us.us.28

if.then8.i.i.us.us.28:                            ; preds = %if.end34.i.i.us.us.27
  %237 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.28 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.28
  %idxprom11.i.i.us.us.28 = sext i32 %add10.i.i.us.us.28 to i64
  %arrayidx12.i.i.us.us.28 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.28
  %238 = bitcast float* %arrayidx12.i.i.us.us.28 to i32*
  store i32 %237, i32* %238, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.28

if.end34.i.i.us.us.28:                            ; preds = %if.then8.i.i.us.us.28, %if.end34.i.i.us.us.27
  br i1 %cmp4.i.i.us.us.29, label %if.then8.i.i.us.us.29, label %if.end34.i.i.us.us.29

if.then8.i.i.us.us.29:                            ; preds = %if.end34.i.i.us.us.28
  %239 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.29 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.29
  %idxprom11.i.i.us.us.29 = sext i32 %add10.i.i.us.us.29 to i64
  %arrayidx12.i.i.us.us.29 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.29
  %240 = bitcast float* %arrayidx12.i.i.us.us.29 to i32*
  store i32 %239, i32* %240, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.29

if.end34.i.i.us.us.29:                            ; preds = %if.then8.i.i.us.us.29, %if.end34.i.i.us.us.28
  br i1 %cmp4.i.i.us.us.30, label %if.then8.i.i.us.us.30, label %if.end34.i.i.us.us.30

if.then8.i.i.us.us.30:                            ; preds = %if.end34.i.i.us.us.29
  %241 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.30 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.30
  %idxprom11.i.i.us.us.30 = sext i32 %add10.i.i.us.us.30 to i64
  %arrayidx12.i.i.us.us.30 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.30
  %242 = bitcast float* %arrayidx12.i.i.us.us.30 to i32*
  store i32 %241, i32* %242, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.us.30

if.end34.i.i.us.us.30:                            ; preds = %if.then8.i.i.us.us.30, %if.end34.i.i.us.us.29
  br i1 %cmp4.i.i.us.us.31, label %if.then8.i.i.us.us.31, label %pregion_for_end.i.i

if.then8.i.i.us.us.31:                            ; preds = %if.end34.i.i.us.us.30
  %243 = load i32, i32* %26, align 4, !tbaa !12
  %add10.i.i.us.us.31 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.us.31
  %idxprom11.i.i.us.us.31 = sext i32 %add10.i.i.us.us.31 to i64
  %arrayidx12.i.i.us.us.31 = getelementptr inbounds float, float* %10, i64 %idxprom11.i.i.us.us.31
  %244 = bitcast float* %arrayidx12.i.i.us.us.31 to i32*
  store i32 %243, i32* %244, align 4, !tbaa !12, !llvm.access.group !24
  br label %pregion_for_end.i.i

if.else.i.i.us.1:                                 ; preds = %if.end34.i.i.us
  %add14.i.i.us.1 = add nsw i32 %mul.i.i, %conv.i.i.us.1
  %idxprom15.i.i.us.1 = sext i32 %add14.i.i.us.1 to i64
  %arrayidx16.i.i.us.1 = getelementptr inbounds float, float* %10, i64 %idxprom15.i.i.us.1
  %245 = load float, float* %arrayidx16.i.i.us.1, align 4, !tbaa !12
  %conv17.i.i.us.1 = fpext float %245 to double
  %arrayidx21.i.i.us.1 = getelementptr inbounds float, float* %13, i64 %idxprom15.i.i.us.1
  %246 = load float, float* %arrayidx21.i.i.us.1, align 4, !tbaa !12
  %add23.i.i.us.1 = add nsw i32 %mul22.i.i, %conv.i.i.us.1
  %idxprom24.i.i.us.1 = sext i32 %add23.i.i.us.1 to i64
  %arrayidx25.i.i.us.1 = getelementptr inbounds float, float* %13, i64 %idxprom24.i.i.us.1
  %247 = load float, float* %arrayidx25.i.i.us.1, align 4, !tbaa !12
  %sub26.i.i.us.1 = fsub float %246, %247
  %conv27.i.i.us.1 = fpext float %sub26.i.i.us.1 to double
  %248 = tail call double @llvm.fmuladd.f64(double %conv27.i.i.us.1, double -5.000000e-01, double %conv17.i.i.us.1) #5
  %conv29.i.i.us.1 = fptrunc double %248 to float
  store float %conv29.i.i.us.1, float* %arrayidx16.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end34.i.i.us.1

if.end34.i.i.us.1:                                ; preds = %if.else.i.i.us.1, %if.end34.i.i.us
  %249 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %249, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !49
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
!5 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"float*", !"int", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !"", !"", !""}
!10 = !{!"_fict_", !"ex", !"ey", !"hz", !"t", !"nx", !"ny"}
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
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.parallel_accesses", !26}
!29 = distinct !{!29, !30, !31}
!30 = !{!"llvm.loop.parallel_accesses", !25}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!36, !37}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !34}
!38 = !{!37}
!39 = !{!36}
!40 = distinct !{!40, !30, !31}
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!45, !46}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !43}
!47 = !{!46}
!48 = !{!45}
!49 = distinct !{!49, !30, !31}
