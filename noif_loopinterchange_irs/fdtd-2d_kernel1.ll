; ModuleID = './JA/PPGOFAKNODIDBFJENOEJALAJOIPFMPCLGFIGI/fdtd_kernel1/32-8-1-goffs0-smallgrid/parallel.bc'
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
  %conv.i.us = trunc i64 %mul.i.i to i32
  %13 = trunc i64 %mul.i.i to i32
  %conv.i.us.1 = or i32 %13, 1
  %14 = trunc i64 %mul.i.i to i32
  %conv.i.us.2 = or i32 %14, 2
  %15 = trunc i64 %mul.i.i to i32
  %conv.i.us.3 = or i32 %15, 3
  %16 = trunc i64 %mul.i.i to i32
  %conv.i.us.4 = or i32 %16, 4
  %17 = trunc i64 %mul.i.i to i32
  %conv.i.us.5 = or i32 %17, 5
  %18 = trunc i64 %mul.i.i to i32
  %conv.i.us.6 = or i32 %18, 6
  %19 = trunc i64 %mul.i.i to i32
  %conv.i.us.7 = or i32 %19, 7
  %20 = trunc i64 %mul.i.i to i32
  %conv.i.us.8 = or i32 %20, 8
  %21 = trunc i64 %mul.i.i to i32
  %conv.i.us.9 = or i32 %21, 9
  %22 = trunc i64 %mul.i.i to i32
  %conv.i.us.10 = or i32 %22, 10
  %23 = trunc i64 %mul.i.i to i32
  %conv.i.us.11 = or i32 %23, 11
  %24 = trunc i64 %mul.i.i to i32
  %conv.i.us.12 = or i32 %24, 12
  %25 = trunc i64 %mul.i.i to i32
  %conv.i.us.13 = or i32 %25, 13
  %26 = trunc i64 %mul.i.i to i32
  %conv.i.us.14 = or i32 %26, 14
  %27 = trunc i64 %mul.i.i to i32
  %conv.i.us.15 = or i32 %27, 15
  %28 = trunc i64 %mul.i.i to i32
  %conv.i.us.16 = or i32 %28, 16
  %29 = trunc i64 %mul.i.i to i32
  %conv.i.us.17 = or i32 %29, 17
  %30 = trunc i64 %mul.i.i to i32
  %conv.i.us.18 = or i32 %30, 18
  %31 = trunc i64 %mul.i.i to i32
  %conv.i.us.19 = or i32 %31, 19
  %32 = trunc i64 %mul.i.i to i32
  %conv.i.us.20 = or i32 %32, 20
  %33 = trunc i64 %mul.i.i to i32
  %conv.i.us.21 = or i32 %33, 21
  %34 = trunc i64 %mul.i.i to i32
  %conv.i.us.22 = or i32 %34, 22
  %35 = trunc i64 %mul.i.i to i32
  %conv.i.us.23 = or i32 %35, 23
  %36 = trunc i64 %mul.i.i to i32
  %conv.i.us.24 = or i32 %36, 24
  %37 = trunc i64 %mul.i.i to i32
  %conv.i.us.25 = or i32 %37, 25
  %38 = trunc i64 %mul.i.i to i32
  %conv.i.us.26 = or i32 %38, 26
  %39 = trunc i64 %mul.i.i to i32
  %conv.i.us.27 = or i32 %39, 27
  %40 = trunc i64 %mul.i.i to i32
  %conv.i.us.28 = or i32 %40, 28
  %41 = trunc i64 %mul.i.i to i32
  %conv.i.us.29 = or i32 %41, 29
  %42 = trunc i64 %mul.i.i to i32
  %conv.i.us.30 = or i32 %42, 30
  %43 = trunc i64 %mul.i.i to i32
  %conv.i.us.31 = or i32 %43, 31
  %44 = trunc i64 %9 to i32
  %45 = mul i32 %44, %6
  %46 = shl i32 %45, 3
  %47 = zext i32 %46 to i64
  %48 = trunc i64 %8 to i32
  %49 = shl i32 %48, 5
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %47, %50
  %52 = zext i32 %6 to i64
  %53 = shl i32 %44, 3
  %54 = add i32 %53, -1
  %55 = mul i32 %54, %6
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %56, %50
  %58 = trunc i64 %9 to i32
  %59 = mul i32 %58, %6
  %60 = shl i32 %59, 3
  %61 = zext i32 %60 to i64
  %62 = trunc i64 %8 to i32
  %63 = shl i32 %62, 5
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %61, %64
  %66 = zext i32 %6 to i64
  %scevgep8 = getelementptr float, float* %2, i64 32
  %67 = shl i32 %58, 3
  %68 = add i32 %67, -1
  %69 = mul i32 %68, %6
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %70, %64
  %scevgep13 = getelementptr float, float* %3, i64 32
  %scevgep18 = getelementptr float, float* %3, i64 32
  %bound021 = icmp ugt float* %scevgep18, %2
  %bound122 = icmp ugt float* %scevgep8, %3
  %found.conflict23 = and i1 %bound021, %bound122
  %72 = trunc i64 %mul.i.i to i32
  %73 = trunc i64 %mul.i.i to i32
  %74 = or i32 %73, 8
  %75 = trunc i64 %mul.i.i to i32
  %76 = or i32 %75, 16
  %77 = trunc i64 %mul.i.i to i32
  %78 = or i32 %77, 24
  br label %pregion_for_entry.pregion_for_init.i

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_end.i, %11
  %_local_id_y.0 = phi i64 [ 0, %11 ], [ %230, %pregion_for_end.i ]
  %79 = mul i64 %_local_id_y.0, %66
  %80 = add i64 %65, %79
  %sext = shl i64 %80, 32
  %81 = ashr exact i64 %sext, 32
  %scevgep = getelementptr float, float* %2, i64 %81
  %scevgep9 = getelementptr float, float* %scevgep8, i64 %81
  %82 = add i64 %71, %79
  %sext26 = shl i64 %82, 32
  %83 = ashr exact i64 %sext26, 32
  %scevgep11 = getelementptr float, float* %3, i64 %83
  %scevgep14 = getelementptr float, float* %scevgep13, i64 %83
  %84 = mul i64 %_local_id_y.0, %52
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %mul.i = mul nsw i32 %conv2.i, %6
  %cmp.i = icmp eq i32 %conv2.i, 0
  %sub.i = add nsw i32 %conv2.i, -1
  %mul17.i = mul nsw i32 %sub.i, %6
  br i1 %cmp.i, label %pregion_for_entry.entry.i.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i
  %85 = add i64 %57, %84
  %86 = trunc i64 %85 to i32
  %87 = add i64 %51, %84
  %88 = trunc i64 %87 to i32
  %89 = icmp sgt i32 %88, 2147483616
  %90 = icmp sgt i32 %86, 2147483616
  %91 = or i1 %89, %90
  br i1 %91, label %pregion_for_entry.entry.i.preheader, label %vector.memcheck

pregion_for_entry.entry.i.preheader:              ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult float* %scevgep, %scevgep14
  %bound1 = icmp ult float* %scevgep11, %scevgep9
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %92 = add nsw i32 %mul.i, %72
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %2, i64 %93
  %95 = bitcast float* %94 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %95, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %96 = fpext <8 x float> %wide.load to <8 x double>
  %97 = getelementptr inbounds float, float* %3, i64 %93
  %98 = bitcast float* %97 to <8 x float>*
  %wide.load24 = load <8 x float>, <8 x float>* %98, align 4, !tbaa !12, !alias.scope !22
  %99 = add nsw i32 %mul17.i, %72
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %3, i64 %100
  %102 = bitcast float* %101 to <8 x float>*
  %wide.load25 = load <8 x float>, <8 x float>* %102, align 4, !tbaa !12, !alias.scope !23
  %103 = fsub <8 x float> %wide.load24, %wide.load25
  %104 = fpext <8 x float> %103 to <8 x double>
  %105 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %104, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %96)
  %106 = fptrunc <8 x double> %105 to <8 x float>
  %107 = bitcast float* %94 to <8 x float>*
  store <8 x float> %106, <8 x float>* %107, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !24
  %108 = add nsw i32 %mul.i, %74
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %2, i64 %109
  %111 = bitcast float* %110 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %111, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %112 = fpext <8 x float> %wide.load.1 to <8 x double>
  %113 = getelementptr inbounds float, float* %3, i64 %109
  %114 = bitcast float* %113 to <8 x float>*
  %wide.load24.1 = load <8 x float>, <8 x float>* %114, align 4, !tbaa !12, !alias.scope !22
  %115 = add nsw i32 %mul17.i, %74
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %3, i64 %116
  %118 = bitcast float* %117 to <8 x float>*
  %wide.load25.1 = load <8 x float>, <8 x float>* %118, align 4, !tbaa !12, !alias.scope !23
  %119 = fsub <8 x float> %wide.load24.1, %wide.load25.1
  %120 = fpext <8 x float> %119 to <8 x double>
  %121 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %120, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %112)
  %122 = fptrunc <8 x double> %121 to <8 x float>
  %123 = bitcast float* %110 to <8 x float>*
  store <8 x float> %122, <8 x float>* %123, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !24
  %124 = add nsw i32 %mul.i, %76
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %2, i64 %125
  %127 = bitcast float* %126 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %127, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %128 = fpext <8 x float> %wide.load.2 to <8 x double>
  %129 = getelementptr inbounds float, float* %3, i64 %125
  %130 = bitcast float* %129 to <8 x float>*
  %wide.load24.2 = load <8 x float>, <8 x float>* %130, align 4, !tbaa !12, !alias.scope !22
  %131 = add nsw i32 %mul17.i, %76
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %3, i64 %132
  %134 = bitcast float* %133 to <8 x float>*
  %wide.load25.2 = load <8 x float>, <8 x float>* %134, align 4, !tbaa !12, !alias.scope !23
  %135 = fsub <8 x float> %wide.load24.2, %wide.load25.2
  %136 = fpext <8 x float> %135 to <8 x double>
  %137 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %136, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %128)
  %138 = fptrunc <8 x double> %137 to <8 x float>
  %139 = bitcast float* %126 to <8 x float>*
  store <8 x float> %138, <8 x float>* %139, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !24
  %140 = add nsw i32 %mul.i, %78
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %2, i64 %141
  %143 = bitcast float* %142 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %143, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %144 = fpext <8 x float> %wide.load.3 to <8 x double>
  %145 = getelementptr inbounds float, float* %3, i64 %141
  %146 = bitcast float* %145 to <8 x float>*
  %wide.load24.3 = load <8 x float>, <8 x float>* %146, align 4, !tbaa !12, !alias.scope !22
  %147 = add nsw i32 %mul17.i, %78
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %3, i64 %148
  %150 = bitcast float* %149 to <8 x float>*
  %wide.load25.3 = load <8 x float>, <8 x float>* %150, align 4, !tbaa !12, !alias.scope !23
  %151 = fsub <8 x float> %wide.load24.3, %wide.load25.3
  %152 = fpext <8 x float> %151 to <8 x double>
  %153 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %152, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %144)
  %154 = fptrunc <8 x double> %153 to <8 x float>
  %155 = bitcast float* %142 to <8 x float>*
  store <8 x float> %154, <8 x float>* %155, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !24
  br label %pregion_for_end.i

pregion_for_entry.entry.i.us.preheader:           ; preds = %pregion_for_entry.pregion_for_init.i
  %156 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us = add nuw nsw i32 %mul.i, %conv.i.us
  %idxprom6.i.us = sext i32 %add5.i.us to i64
  %arrayidx7.i.us = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us
  %157 = bitcast float* %arrayidx7.i.us to i32*
  store i32 %156, i32* %157, align 4, !tbaa !12, !llvm.access.group !24
  %158 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.1 = add nuw nsw i32 %mul.i, %conv.i.us.1
  %idxprom6.i.us.1 = sext i32 %add5.i.us.1 to i64
  %arrayidx7.i.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.1
  %159 = bitcast float* %arrayidx7.i.us.1 to i32*
  store i32 %158, i32* %159, align 4, !tbaa !12, !llvm.access.group !24
  %160 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.2 = add nuw nsw i32 %mul.i, %conv.i.us.2
  %idxprom6.i.us.2 = sext i32 %add5.i.us.2 to i64
  %arrayidx7.i.us.2 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.2
  %161 = bitcast float* %arrayidx7.i.us.2 to i32*
  store i32 %160, i32* %161, align 4, !tbaa !12, !llvm.access.group !24
  %162 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.3 = add nuw nsw i32 %mul.i, %conv.i.us.3
  %idxprom6.i.us.3 = sext i32 %add5.i.us.3 to i64
  %arrayidx7.i.us.3 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.3
  %163 = bitcast float* %arrayidx7.i.us.3 to i32*
  store i32 %162, i32* %163, align 4, !tbaa !12, !llvm.access.group !24
  %164 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.4 = add nuw nsw i32 %mul.i, %conv.i.us.4
  %idxprom6.i.us.4 = sext i32 %add5.i.us.4 to i64
  %arrayidx7.i.us.4 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.4
  %165 = bitcast float* %arrayidx7.i.us.4 to i32*
  store i32 %164, i32* %165, align 4, !tbaa !12, !llvm.access.group !24
  %166 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.5 = add nuw nsw i32 %mul.i, %conv.i.us.5
  %idxprom6.i.us.5 = sext i32 %add5.i.us.5 to i64
  %arrayidx7.i.us.5 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.5
  %167 = bitcast float* %arrayidx7.i.us.5 to i32*
  store i32 %166, i32* %167, align 4, !tbaa !12, !llvm.access.group !24
  %168 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.6 = add nuw nsw i32 %mul.i, %conv.i.us.6
  %idxprom6.i.us.6 = sext i32 %add5.i.us.6 to i64
  %arrayidx7.i.us.6 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.6
  %169 = bitcast float* %arrayidx7.i.us.6 to i32*
  store i32 %168, i32* %169, align 4, !tbaa !12, !llvm.access.group !24
  %170 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.7 = add nuw nsw i32 %mul.i, %conv.i.us.7
  %idxprom6.i.us.7 = sext i32 %add5.i.us.7 to i64
  %arrayidx7.i.us.7 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.7
  %171 = bitcast float* %arrayidx7.i.us.7 to i32*
  store i32 %170, i32* %171, align 4, !tbaa !12, !llvm.access.group !24
  %172 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.8 = add nuw nsw i32 %mul.i, %conv.i.us.8
  %idxprom6.i.us.8 = sext i32 %add5.i.us.8 to i64
  %arrayidx7.i.us.8 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.8
  %173 = bitcast float* %arrayidx7.i.us.8 to i32*
  store i32 %172, i32* %173, align 4, !tbaa !12, !llvm.access.group !24
  %174 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.9 = add nuw nsw i32 %mul.i, %conv.i.us.9
  %idxprom6.i.us.9 = sext i32 %add5.i.us.9 to i64
  %arrayidx7.i.us.9 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.9
  %175 = bitcast float* %arrayidx7.i.us.9 to i32*
  store i32 %174, i32* %175, align 4, !tbaa !12, !llvm.access.group !24
  %176 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.10 = add nuw nsw i32 %mul.i, %conv.i.us.10
  %idxprom6.i.us.10 = sext i32 %add5.i.us.10 to i64
  %arrayidx7.i.us.10 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.10
  %177 = bitcast float* %arrayidx7.i.us.10 to i32*
  store i32 %176, i32* %177, align 4, !tbaa !12, !llvm.access.group !24
  %178 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.11 = add nuw nsw i32 %mul.i, %conv.i.us.11
  %idxprom6.i.us.11 = sext i32 %add5.i.us.11 to i64
  %arrayidx7.i.us.11 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.11
  %179 = bitcast float* %arrayidx7.i.us.11 to i32*
  store i32 %178, i32* %179, align 4, !tbaa !12, !llvm.access.group !24
  %180 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.12 = add nuw nsw i32 %mul.i, %conv.i.us.12
  %idxprom6.i.us.12 = sext i32 %add5.i.us.12 to i64
  %arrayidx7.i.us.12 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.12
  %181 = bitcast float* %arrayidx7.i.us.12 to i32*
  store i32 %180, i32* %181, align 4, !tbaa !12, !llvm.access.group !24
  %182 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.13 = add nuw nsw i32 %mul.i, %conv.i.us.13
  %idxprom6.i.us.13 = sext i32 %add5.i.us.13 to i64
  %arrayidx7.i.us.13 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.13
  %183 = bitcast float* %arrayidx7.i.us.13 to i32*
  store i32 %182, i32* %183, align 4, !tbaa !12, !llvm.access.group !24
  %184 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.14 = add nuw nsw i32 %mul.i, %conv.i.us.14
  %idxprom6.i.us.14 = sext i32 %add5.i.us.14 to i64
  %arrayidx7.i.us.14 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.14
  %185 = bitcast float* %arrayidx7.i.us.14 to i32*
  store i32 %184, i32* %185, align 4, !tbaa !12, !llvm.access.group !24
  %186 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.15 = add nuw nsw i32 %mul.i, %conv.i.us.15
  %idxprom6.i.us.15 = sext i32 %add5.i.us.15 to i64
  %arrayidx7.i.us.15 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.15
  %187 = bitcast float* %arrayidx7.i.us.15 to i32*
  store i32 %186, i32* %187, align 4, !tbaa !12, !llvm.access.group !24
  %188 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.16 = add nuw nsw i32 %mul.i, %conv.i.us.16
  %idxprom6.i.us.16 = sext i32 %add5.i.us.16 to i64
  %arrayidx7.i.us.16 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.16
  %189 = bitcast float* %arrayidx7.i.us.16 to i32*
  store i32 %188, i32* %189, align 4, !tbaa !12, !llvm.access.group !24
  %190 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.17 = add nuw nsw i32 %mul.i, %conv.i.us.17
  %idxprom6.i.us.17 = sext i32 %add5.i.us.17 to i64
  %arrayidx7.i.us.17 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.17
  %191 = bitcast float* %arrayidx7.i.us.17 to i32*
  store i32 %190, i32* %191, align 4, !tbaa !12, !llvm.access.group !24
  %192 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.18 = add nuw nsw i32 %mul.i, %conv.i.us.18
  %idxprom6.i.us.18 = sext i32 %add5.i.us.18 to i64
  %arrayidx7.i.us.18 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.18
  %193 = bitcast float* %arrayidx7.i.us.18 to i32*
  store i32 %192, i32* %193, align 4, !tbaa !12, !llvm.access.group !24
  %194 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.19 = add nuw nsw i32 %mul.i, %conv.i.us.19
  %idxprom6.i.us.19 = sext i32 %add5.i.us.19 to i64
  %arrayidx7.i.us.19 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.19
  %195 = bitcast float* %arrayidx7.i.us.19 to i32*
  store i32 %194, i32* %195, align 4, !tbaa !12, !llvm.access.group !24
  %196 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.20 = add nuw nsw i32 %mul.i, %conv.i.us.20
  %idxprom6.i.us.20 = sext i32 %add5.i.us.20 to i64
  %arrayidx7.i.us.20 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.20
  %197 = bitcast float* %arrayidx7.i.us.20 to i32*
  store i32 %196, i32* %197, align 4, !tbaa !12, !llvm.access.group !24
  %198 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.21 = add nuw nsw i32 %mul.i, %conv.i.us.21
  %idxprom6.i.us.21 = sext i32 %add5.i.us.21 to i64
  %arrayidx7.i.us.21 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.21
  %199 = bitcast float* %arrayidx7.i.us.21 to i32*
  store i32 %198, i32* %199, align 4, !tbaa !12, !llvm.access.group !24
  %200 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.22 = add nuw nsw i32 %mul.i, %conv.i.us.22
  %idxprom6.i.us.22 = sext i32 %add5.i.us.22 to i64
  %arrayidx7.i.us.22 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.22
  %201 = bitcast float* %arrayidx7.i.us.22 to i32*
  store i32 %200, i32* %201, align 4, !tbaa !12, !llvm.access.group !24
  %202 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.23 = add nuw nsw i32 %mul.i, %conv.i.us.23
  %idxprom6.i.us.23 = sext i32 %add5.i.us.23 to i64
  %arrayidx7.i.us.23 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.23
  %203 = bitcast float* %arrayidx7.i.us.23 to i32*
  store i32 %202, i32* %203, align 4, !tbaa !12, !llvm.access.group !24
  %204 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.24 = add nuw nsw i32 %mul.i, %conv.i.us.24
  %idxprom6.i.us.24 = sext i32 %add5.i.us.24 to i64
  %arrayidx7.i.us.24 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.24
  %205 = bitcast float* %arrayidx7.i.us.24 to i32*
  store i32 %204, i32* %205, align 4, !tbaa !12, !llvm.access.group !24
  %206 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.25 = add nuw nsw i32 %mul.i, %conv.i.us.25
  %idxprom6.i.us.25 = sext i32 %add5.i.us.25 to i64
  %arrayidx7.i.us.25 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.25
  %207 = bitcast float* %arrayidx7.i.us.25 to i32*
  store i32 %206, i32* %207, align 4, !tbaa !12, !llvm.access.group !24
  %208 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.26 = add nuw nsw i32 %mul.i, %conv.i.us.26
  %idxprom6.i.us.26 = sext i32 %add5.i.us.26 to i64
  %arrayidx7.i.us.26 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.26
  %209 = bitcast float* %arrayidx7.i.us.26 to i32*
  store i32 %208, i32* %209, align 4, !tbaa !12, !llvm.access.group !24
  %210 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.27 = add nuw nsw i32 %mul.i, %conv.i.us.27
  %idxprom6.i.us.27 = sext i32 %add5.i.us.27 to i64
  %arrayidx7.i.us.27 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.27
  %211 = bitcast float* %arrayidx7.i.us.27 to i32*
  store i32 %210, i32* %211, align 4, !tbaa !12, !llvm.access.group !24
  %212 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.28 = add nuw nsw i32 %mul.i, %conv.i.us.28
  %idxprom6.i.us.28 = sext i32 %add5.i.us.28 to i64
  %arrayidx7.i.us.28 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.28
  %213 = bitcast float* %arrayidx7.i.us.28 to i32*
  store i32 %212, i32* %213, align 4, !tbaa !12, !llvm.access.group !24
  %214 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.29 = add nuw nsw i32 %mul.i, %conv.i.us.29
  %idxprom6.i.us.29 = sext i32 %add5.i.us.29 to i64
  %arrayidx7.i.us.29 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.29
  %215 = bitcast float* %arrayidx7.i.us.29 to i32*
  store i32 %214, i32* %215, align 4, !tbaa !12, !llvm.access.group !24
  %216 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.30 = add nuw nsw i32 %mul.i, %conv.i.us.30
  %idxprom6.i.us.30 = sext i32 %add5.i.us.30 to i64
  %arrayidx7.i.us.30 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.30
  %217 = bitcast float* %arrayidx7.i.us.30 to i32*
  store i32 %216, i32* %217, align 4, !tbaa !12, !llvm.access.group !24
  %218 = load i32, i32* %12, align 4, !tbaa !12
  %add5.i.us.31 = add nuw nsw i32 %mul.i, %conv.i.us.31
  %idxprom6.i.us.31 = sext i32 %add5.i.us.31 to i64
  %arrayidx7.i.us.31 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.31
  %219 = bitcast float* %arrayidx7.i.us.31 to i32*
  store i32 %218, i32* %219, align 4, !tbaa !12, !llvm.access.group !24
  br label %pregion_for_end.i

pregion_for_entry.entry.i:                        ; preds = %pregion_for_entry.entry.i, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ 0, %pregion_for_entry.entry.i.preheader ], [ %229, %pregion_for_entry.entry.i ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %add9.i = add nsw i32 %mul.i, %conv.i
  %idxprom10.i = sext i32 %add9.i to i64
  %arrayidx11.i = getelementptr inbounds float, float* %2, i64 %idxprom10.i
  %220 = load float, float* %arrayidx11.i, align 4, !tbaa !12
  %conv12.i = fpext float %220 to double
  %arrayidx16.i = getelementptr inbounds float, float* %3, i64 %idxprom10.i
  %221 = load float, float* %arrayidx16.i, align 4, !tbaa !12
  %add18.i = add nsw i32 %mul17.i, %conv.i
  %idxprom19.i = sext i32 %add18.i to i64
  %arrayidx20.i = getelementptr inbounds float, float* %3, i64 %idxprom19.i
  %222 = load float, float* %arrayidx20.i, align 4, !tbaa !12
  %sub21.i = fsub float %221, %222
  %conv22.i = fpext float %sub21.i to double
  %223 = tail call double @llvm.fmuladd.f64(double %conv22.i, double -5.000000e-01, double %conv12.i) #3
  %conv24.i = fptrunc double %223 to float
  store float %conv24.i, float* %arrayidx11.i, align 4, !tbaa !12, !llvm.access.group !24
  %224 = or i64 %_local_id_x.0, 1
  %add1.i.i.1 = add nuw nsw i64 %224, %mul.i.i
  %conv.i.1 = trunc i64 %add1.i.i.1 to i32
  %add9.i.1 = add nsw i32 %mul.i, %conv.i.1
  %idxprom10.i.1 = sext i32 %add9.i.1 to i64
  %arrayidx11.i.1 = getelementptr inbounds float, float* %2, i64 %idxprom10.i.1
  %225 = load float, float* %arrayidx11.i.1, align 4, !tbaa !12
  %conv12.i.1 = fpext float %225 to double
  %arrayidx16.i.1 = getelementptr inbounds float, float* %3, i64 %idxprom10.i.1
  %226 = load float, float* %arrayidx16.i.1, align 4, !tbaa !12
  %add18.i.1 = add nsw i32 %mul17.i, %conv.i.1
  %idxprom19.i.1 = sext i32 %add18.i.1 to i64
  %arrayidx20.i.1 = getelementptr inbounds float, float* %3, i64 %idxprom19.i.1
  %227 = load float, float* %arrayidx20.i.1, align 4, !tbaa !12
  %sub21.i.1 = fsub float %226, %227
  %conv22.i.1 = fpext float %sub21.i.1 to double
  %228 = tail call double @llvm.fmuladd.f64(double %conv22.i.1, double -5.000000e-01, double %conv12.i.1) #3
  %conv24.i.1 = fptrunc double %228 to float
  store float %conv24.i.1, float* %arrayidx11.i.1, align 4, !tbaa !12, !llvm.access.group !24
  %229 = add nuw nsw i64 %_local_id_x.0, 2
  %exitcond.not.1 = icmp eq i64 %229, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i, !llvm.loop !27

pregion_for_end.i.loopexit:                       ; preds = %pregion_for_entry.entry.i
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %pregion_for_end.i.loopexit, %pregion_for_entry.entry.i.us.preheader, %vector.body
  %230 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond3.not = icmp eq i64 %230, 8
  br i1 %exitcond3.not, label %fdtd_kernel1.exit, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !30

fdtd_kernel1.exit:                                ; preds = %pregion_for_end.i
  ret void
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
  %21 = getelementptr i8*, i8** %0, i64 6
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %idxprom.i.i = sext i32 %20 to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %8, i64 %idxprom.i.i
  %25 = bitcast float* %arrayidx.i.i to i32*
  %conv.i.i.us = trunc i64 %mul.i.i.i to i32
  %26 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.1 = or i32 %26, 1
  %27 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.2 = or i32 %27, 2
  %28 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.3 = or i32 %28, 3
  %29 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.4 = or i32 %29, 4
  %30 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.5 = or i32 %30, 5
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.6 = or i32 %31, 6
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.7 = or i32 %32, 7
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.8 = or i32 %33, 8
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.9 = or i32 %34, 9
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.10 = or i32 %35, 10
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.11 = or i32 %36, 11
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.12 = or i32 %37, 12
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.13 = or i32 %38, 13
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.14 = or i32 %39, 14
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.15 = or i32 %40, 15
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.16 = or i32 %41, 16
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.17 = or i32 %42, 17
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.18 = or i32 %43, 18
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.19 = or i32 %44, 19
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.20 = or i32 %45, 20
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.21 = or i32 %46, 21
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.22 = or i32 %47, 22
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.23 = or i32 %48, 23
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.24 = or i32 %49, 24
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.25 = or i32 %50, 25
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.26 = or i32 %51, 26
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.27 = or i32 %52, 27
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.28 = or i32 %53, 28
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.29 = or i32 %54, 29
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.30 = or i32 %55, 30
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.31 = or i32 %56, 31
  %57 = trunc i64 %3 to i32
  %58 = mul i32 %24, %57
  %59 = shl i32 %58, 3
  %60 = zext i32 %59 to i64
  %61 = trunc i64 %2 to i32
  %62 = shl i32 %61, 5
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = zext i32 %24 to i64
  %66 = shl i32 %57, 3
  %67 = add i32 %66, -1
  %68 = mul i32 %24, %67
  %69 = zext i32 %68 to i64
  %70 = add nsw i64 %69, %63
  %71 = trunc i64 %3 to i32
  %72 = mul i32 %24, %71
  %73 = shl i32 %72, 3
  %74 = zext i32 %73 to i64
  %75 = trunc i64 %2 to i32
  %76 = shl i32 %75, 5
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %74, %77
  %79 = zext i32 %24 to i64
  %scevgep8 = getelementptr float, float* %12, i64 32
  %80 = shl i32 %71, 3
  %81 = add i32 %80, -1
  %82 = mul i32 %24, %81
  %83 = zext i32 %82 to i64
  %84 = add nsw i64 %83, %77
  %scevgep13 = getelementptr float, float* %16, i64 32
  %scevgep18 = getelementptr float, float* %16, i64 32
  %bound021 = icmp ult float* %12, %scevgep18
  %bound122 = icmp ult float* %16, %scevgep8
  %found.conflict23 = and i1 %bound021, %bound122
  %85 = trunc i64 %mul.i.i.i to i32
  %86 = trunc i64 %mul.i.i.i to i32
  %87 = or i32 %86, 8
  %88 = trunc i64 %mul.i.i.i to i32
  %89 = or i32 %88, 16
  %90 = trunc i64 %mul.i.i.i to i32
  %91 = or i32 %90, 24
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %243, %pregion_for_end.i.i ]
  %92 = mul i64 %_local_id_y.i.0, %79
  %93 = add i64 %78, %92
  %sext = shl i64 %93, 32
  %94 = ashr exact i64 %sext, 32
  %scevgep = getelementptr float, float* %12, i64 %94
  %scevgep9 = getelementptr float, float* %scevgep8, i64 %94
  %95 = add i64 %84, %92
  %sext26 = shl i64 %95, 32
  %96 = ashr exact i64 %sext26, 32
  %scevgep11 = getelementptr float, float* %16, i64 %96
  %scevgep14 = getelementptr float, float* %scevgep13, i64 %96
  %97 = mul i64 %_local_id_y.i.0, %65
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %mul.i.i = mul nsw i32 %24, %conv2.i.i
  %cmp.i.i = icmp eq i32 %conv2.i.i, 0
  %sub.i.i = add nsw i32 %conv2.i.i, -1
  %mul17.i.i = mul nsw i32 %sub.i.i, %24
  br i1 %cmp.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %98 = add i64 %70, %97
  %99 = trunc i64 %98 to i32
  %100 = add i64 %64, %97
  %101 = trunc i64 %100 to i32
  %102 = icmp sgt i32 %101, 2147483616
  %103 = icmp sgt i32 %99, 2147483616
  %104 = or i1 %102, %103
  br i1 %104, label %pregion_for_entry.entry.i.i.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult float* %scevgep, %scevgep14
  %bound1 = icmp ult float* %scevgep11, %scevgep9
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %105 = add nsw i32 %mul.i.i, %85
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %12, i64 %106
  %108 = bitcast float* %107 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %108, align 4, !tbaa !12, !alias.scope !32, !noalias !35
  %109 = fpext <8 x float> %wide.load to <8 x double>
  %110 = getelementptr inbounds float, float* %16, i64 %106
  %111 = bitcast float* %110 to <8 x float>*
  %wide.load24 = load <8 x float>, <8 x float>* %111, align 4, !tbaa !12, !alias.scope !38
  %112 = add nsw i32 %mul17.i.i, %85
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %16, i64 %113
  %115 = bitcast float* %114 to <8 x float>*
  %wide.load25 = load <8 x float>, <8 x float>* %115, align 4, !tbaa !12, !alias.scope !39
  %116 = fsub <8 x float> %wide.load24, %wide.load25
  %117 = fpext <8 x float> %116 to <8 x double>
  %118 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %117, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %109)
  %119 = fptrunc <8 x double> %118 to <8 x float>
  %120 = bitcast float* %107 to <8 x float>*
  store <8 x float> %119, <8 x float>* %120, align 4, !tbaa !12, !alias.scope !32, !noalias !35, !llvm.access.group !24
  %121 = add nsw i32 %mul.i.i, %87
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %12, i64 %122
  %124 = bitcast float* %123 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %124, align 4, !tbaa !12, !alias.scope !32, !noalias !35
  %125 = fpext <8 x float> %wide.load.1 to <8 x double>
  %126 = getelementptr inbounds float, float* %16, i64 %122
  %127 = bitcast float* %126 to <8 x float>*
  %wide.load24.1 = load <8 x float>, <8 x float>* %127, align 4, !tbaa !12, !alias.scope !38
  %128 = add nsw i32 %mul17.i.i, %87
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %16, i64 %129
  %131 = bitcast float* %130 to <8 x float>*
  %wide.load25.1 = load <8 x float>, <8 x float>* %131, align 4, !tbaa !12, !alias.scope !39
  %132 = fsub <8 x float> %wide.load24.1, %wide.load25.1
  %133 = fpext <8 x float> %132 to <8 x double>
  %134 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %133, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %125)
  %135 = fptrunc <8 x double> %134 to <8 x float>
  %136 = bitcast float* %123 to <8 x float>*
  store <8 x float> %135, <8 x float>* %136, align 4, !tbaa !12, !alias.scope !32, !noalias !35, !llvm.access.group !24
  %137 = add nsw i32 %mul.i.i, %89
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %12, i64 %138
  %140 = bitcast float* %139 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %140, align 4, !tbaa !12, !alias.scope !32, !noalias !35
  %141 = fpext <8 x float> %wide.load.2 to <8 x double>
  %142 = getelementptr inbounds float, float* %16, i64 %138
  %143 = bitcast float* %142 to <8 x float>*
  %wide.load24.2 = load <8 x float>, <8 x float>* %143, align 4, !tbaa !12, !alias.scope !38
  %144 = add nsw i32 %mul17.i.i, %89
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %16, i64 %145
  %147 = bitcast float* %146 to <8 x float>*
  %wide.load25.2 = load <8 x float>, <8 x float>* %147, align 4, !tbaa !12, !alias.scope !39
  %148 = fsub <8 x float> %wide.load24.2, %wide.load25.2
  %149 = fpext <8 x float> %148 to <8 x double>
  %150 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %149, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %141)
  %151 = fptrunc <8 x double> %150 to <8 x float>
  %152 = bitcast float* %139 to <8 x float>*
  store <8 x float> %151, <8 x float>* %152, align 4, !tbaa !12, !alias.scope !32, !noalias !35, !llvm.access.group !24
  %153 = add nsw i32 %mul.i.i, %91
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %12, i64 %154
  %156 = bitcast float* %155 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %156, align 4, !tbaa !12, !alias.scope !32, !noalias !35
  %157 = fpext <8 x float> %wide.load.3 to <8 x double>
  %158 = getelementptr inbounds float, float* %16, i64 %154
  %159 = bitcast float* %158 to <8 x float>*
  %wide.load24.3 = load <8 x float>, <8 x float>* %159, align 4, !tbaa !12, !alias.scope !38
  %160 = add nsw i32 %mul17.i.i, %91
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %16, i64 %161
  %163 = bitcast float* %162 to <8 x float>*
  %wide.load25.3 = load <8 x float>, <8 x float>* %163, align 4, !tbaa !12, !alias.scope !39
  %164 = fsub <8 x float> %wide.load24.3, %wide.load25.3
  %165 = fpext <8 x float> %164 to <8 x double>
  %166 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %165, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %157)
  %167 = fptrunc <8 x double> %166 to <8 x float>
  %168 = bitcast float* %155 to <8 x float>*
  store <8 x float> %167, <8 x float>* %168, align 4, !tbaa !12, !alias.scope !32, !noalias !35, !llvm.access.group !24
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %pregion_for_entry.pregion_for_init.i.i
  %169 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us = add nuw nsw i32 %mul.i.i, %conv.i.i.us
  %idxprom6.i.i.us = sext i32 %add5.i.i.us to i64
  %arrayidx7.i.i.us = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us
  %170 = bitcast float* %arrayidx7.i.i.us to i32*
  store i32 %169, i32* %170, align 4, !tbaa !12, !llvm.access.group !24
  %171 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.1 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.1
  %idxprom6.i.i.us.1 = sext i32 %add5.i.i.us.1 to i64
  %arrayidx7.i.i.us.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.1
  %172 = bitcast float* %arrayidx7.i.i.us.1 to i32*
  store i32 %171, i32* %172, align 4, !tbaa !12, !llvm.access.group !24
  %173 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.2 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.2
  %idxprom6.i.i.us.2 = sext i32 %add5.i.i.us.2 to i64
  %arrayidx7.i.i.us.2 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.2
  %174 = bitcast float* %arrayidx7.i.i.us.2 to i32*
  store i32 %173, i32* %174, align 4, !tbaa !12, !llvm.access.group !24
  %175 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.3 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.3
  %idxprom6.i.i.us.3 = sext i32 %add5.i.i.us.3 to i64
  %arrayidx7.i.i.us.3 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.3
  %176 = bitcast float* %arrayidx7.i.i.us.3 to i32*
  store i32 %175, i32* %176, align 4, !tbaa !12, !llvm.access.group !24
  %177 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.4 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.4
  %idxprom6.i.i.us.4 = sext i32 %add5.i.i.us.4 to i64
  %arrayidx7.i.i.us.4 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.4
  %178 = bitcast float* %arrayidx7.i.i.us.4 to i32*
  store i32 %177, i32* %178, align 4, !tbaa !12, !llvm.access.group !24
  %179 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.5 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.5
  %idxprom6.i.i.us.5 = sext i32 %add5.i.i.us.5 to i64
  %arrayidx7.i.i.us.5 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.5
  %180 = bitcast float* %arrayidx7.i.i.us.5 to i32*
  store i32 %179, i32* %180, align 4, !tbaa !12, !llvm.access.group !24
  %181 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.6 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.6
  %idxprom6.i.i.us.6 = sext i32 %add5.i.i.us.6 to i64
  %arrayidx7.i.i.us.6 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.6
  %182 = bitcast float* %arrayidx7.i.i.us.6 to i32*
  store i32 %181, i32* %182, align 4, !tbaa !12, !llvm.access.group !24
  %183 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.7 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.7
  %idxprom6.i.i.us.7 = sext i32 %add5.i.i.us.7 to i64
  %arrayidx7.i.i.us.7 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.7
  %184 = bitcast float* %arrayidx7.i.i.us.7 to i32*
  store i32 %183, i32* %184, align 4, !tbaa !12, !llvm.access.group !24
  %185 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.8 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.8
  %idxprom6.i.i.us.8 = sext i32 %add5.i.i.us.8 to i64
  %arrayidx7.i.i.us.8 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.8
  %186 = bitcast float* %arrayidx7.i.i.us.8 to i32*
  store i32 %185, i32* %186, align 4, !tbaa !12, !llvm.access.group !24
  %187 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.9 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.9
  %idxprom6.i.i.us.9 = sext i32 %add5.i.i.us.9 to i64
  %arrayidx7.i.i.us.9 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.9
  %188 = bitcast float* %arrayidx7.i.i.us.9 to i32*
  store i32 %187, i32* %188, align 4, !tbaa !12, !llvm.access.group !24
  %189 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.10 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.10
  %idxprom6.i.i.us.10 = sext i32 %add5.i.i.us.10 to i64
  %arrayidx7.i.i.us.10 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.10
  %190 = bitcast float* %arrayidx7.i.i.us.10 to i32*
  store i32 %189, i32* %190, align 4, !tbaa !12, !llvm.access.group !24
  %191 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.11 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.11
  %idxprom6.i.i.us.11 = sext i32 %add5.i.i.us.11 to i64
  %arrayidx7.i.i.us.11 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.11
  %192 = bitcast float* %arrayidx7.i.i.us.11 to i32*
  store i32 %191, i32* %192, align 4, !tbaa !12, !llvm.access.group !24
  %193 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.12 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.12
  %idxprom6.i.i.us.12 = sext i32 %add5.i.i.us.12 to i64
  %arrayidx7.i.i.us.12 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.12
  %194 = bitcast float* %arrayidx7.i.i.us.12 to i32*
  store i32 %193, i32* %194, align 4, !tbaa !12, !llvm.access.group !24
  %195 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.13 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.13
  %idxprom6.i.i.us.13 = sext i32 %add5.i.i.us.13 to i64
  %arrayidx7.i.i.us.13 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.13
  %196 = bitcast float* %arrayidx7.i.i.us.13 to i32*
  store i32 %195, i32* %196, align 4, !tbaa !12, !llvm.access.group !24
  %197 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.14 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.14
  %idxprom6.i.i.us.14 = sext i32 %add5.i.i.us.14 to i64
  %arrayidx7.i.i.us.14 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.14
  %198 = bitcast float* %arrayidx7.i.i.us.14 to i32*
  store i32 %197, i32* %198, align 4, !tbaa !12, !llvm.access.group !24
  %199 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.15 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.15
  %idxprom6.i.i.us.15 = sext i32 %add5.i.i.us.15 to i64
  %arrayidx7.i.i.us.15 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.15
  %200 = bitcast float* %arrayidx7.i.i.us.15 to i32*
  store i32 %199, i32* %200, align 4, !tbaa !12, !llvm.access.group !24
  %201 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.16 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.16
  %idxprom6.i.i.us.16 = sext i32 %add5.i.i.us.16 to i64
  %arrayidx7.i.i.us.16 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.16
  %202 = bitcast float* %arrayidx7.i.i.us.16 to i32*
  store i32 %201, i32* %202, align 4, !tbaa !12, !llvm.access.group !24
  %203 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.17 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.17
  %idxprom6.i.i.us.17 = sext i32 %add5.i.i.us.17 to i64
  %arrayidx7.i.i.us.17 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.17
  %204 = bitcast float* %arrayidx7.i.i.us.17 to i32*
  store i32 %203, i32* %204, align 4, !tbaa !12, !llvm.access.group !24
  %205 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.18 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.18
  %idxprom6.i.i.us.18 = sext i32 %add5.i.i.us.18 to i64
  %arrayidx7.i.i.us.18 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.18
  %206 = bitcast float* %arrayidx7.i.i.us.18 to i32*
  store i32 %205, i32* %206, align 4, !tbaa !12, !llvm.access.group !24
  %207 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.19 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.19
  %idxprom6.i.i.us.19 = sext i32 %add5.i.i.us.19 to i64
  %arrayidx7.i.i.us.19 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.19
  %208 = bitcast float* %arrayidx7.i.i.us.19 to i32*
  store i32 %207, i32* %208, align 4, !tbaa !12, !llvm.access.group !24
  %209 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.20 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.20
  %idxprom6.i.i.us.20 = sext i32 %add5.i.i.us.20 to i64
  %arrayidx7.i.i.us.20 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.20
  %210 = bitcast float* %arrayidx7.i.i.us.20 to i32*
  store i32 %209, i32* %210, align 4, !tbaa !12, !llvm.access.group !24
  %211 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.21 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.21
  %idxprom6.i.i.us.21 = sext i32 %add5.i.i.us.21 to i64
  %arrayidx7.i.i.us.21 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.21
  %212 = bitcast float* %arrayidx7.i.i.us.21 to i32*
  store i32 %211, i32* %212, align 4, !tbaa !12, !llvm.access.group !24
  %213 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.22 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.22
  %idxprom6.i.i.us.22 = sext i32 %add5.i.i.us.22 to i64
  %arrayidx7.i.i.us.22 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.22
  %214 = bitcast float* %arrayidx7.i.i.us.22 to i32*
  store i32 %213, i32* %214, align 4, !tbaa !12, !llvm.access.group !24
  %215 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.23 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.23
  %idxprom6.i.i.us.23 = sext i32 %add5.i.i.us.23 to i64
  %arrayidx7.i.i.us.23 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.23
  %216 = bitcast float* %arrayidx7.i.i.us.23 to i32*
  store i32 %215, i32* %216, align 4, !tbaa !12, !llvm.access.group !24
  %217 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.24 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.24
  %idxprom6.i.i.us.24 = sext i32 %add5.i.i.us.24 to i64
  %arrayidx7.i.i.us.24 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.24
  %218 = bitcast float* %arrayidx7.i.i.us.24 to i32*
  store i32 %217, i32* %218, align 4, !tbaa !12, !llvm.access.group !24
  %219 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.25 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.25
  %idxprom6.i.i.us.25 = sext i32 %add5.i.i.us.25 to i64
  %arrayidx7.i.i.us.25 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.25
  %220 = bitcast float* %arrayidx7.i.i.us.25 to i32*
  store i32 %219, i32* %220, align 4, !tbaa !12, !llvm.access.group !24
  %221 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.26 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.26
  %idxprom6.i.i.us.26 = sext i32 %add5.i.i.us.26 to i64
  %arrayidx7.i.i.us.26 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.26
  %222 = bitcast float* %arrayidx7.i.i.us.26 to i32*
  store i32 %221, i32* %222, align 4, !tbaa !12, !llvm.access.group !24
  %223 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.27 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.27
  %idxprom6.i.i.us.27 = sext i32 %add5.i.i.us.27 to i64
  %arrayidx7.i.i.us.27 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.27
  %224 = bitcast float* %arrayidx7.i.i.us.27 to i32*
  store i32 %223, i32* %224, align 4, !tbaa !12, !llvm.access.group !24
  %225 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.28 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.28
  %idxprom6.i.i.us.28 = sext i32 %add5.i.i.us.28 to i64
  %arrayidx7.i.i.us.28 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.28
  %226 = bitcast float* %arrayidx7.i.i.us.28 to i32*
  store i32 %225, i32* %226, align 4, !tbaa !12, !llvm.access.group !24
  %227 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.29 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.29
  %idxprom6.i.i.us.29 = sext i32 %add5.i.i.us.29 to i64
  %arrayidx7.i.i.us.29 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.29
  %228 = bitcast float* %arrayidx7.i.i.us.29 to i32*
  store i32 %227, i32* %228, align 4, !tbaa !12, !llvm.access.group !24
  %229 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.30 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.30
  %idxprom6.i.i.us.30 = sext i32 %add5.i.i.us.30 to i64
  %arrayidx7.i.i.us.30 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.30
  %230 = bitcast float* %arrayidx7.i.i.us.30 to i32*
  store i32 %229, i32* %230, align 4, !tbaa !12, !llvm.access.group !24
  %231 = load i32, i32* %25, align 4, !tbaa !12
  %add5.i.i.us.31 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.31
  %idxprom6.i.i.us.31 = sext i32 %add5.i.i.us.31 to i64
  %arrayidx7.i.i.us.31 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.31
  %232 = bitcast float* %arrayidx7.i.i.us.31 to i32*
  store i32 %231, i32* %232, align 4, !tbaa !12, !llvm.access.group !24
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ 0, %pregion_for_entry.entry.i.i.preheader ], [ %242, %pregion_for_entry.entry.i.i ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %add9.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom10.i.i = sext i32 %add9.i.i to i64
  %arrayidx11.i.i = getelementptr inbounds float, float* %12, i64 %idxprom10.i.i
  %233 = load float, float* %arrayidx11.i.i, align 4, !tbaa !12
  %conv12.i.i = fpext float %233 to double
  %arrayidx16.i.i = getelementptr inbounds float, float* %16, i64 %idxprom10.i.i
  %234 = load float, float* %arrayidx16.i.i, align 4, !tbaa !12
  %add18.i.i = add nsw i32 %mul17.i.i, %conv.i.i
  %idxprom19.i.i = sext i32 %add18.i.i to i64
  %arrayidx20.i.i = getelementptr inbounds float, float* %16, i64 %idxprom19.i.i
  %235 = load float, float* %arrayidx20.i.i, align 4, !tbaa !12
  %sub21.i.i = fsub float %234, %235
  %conv22.i.i = fpext float %sub21.i.i to double
  %236 = tail call double @llvm.fmuladd.f64(double %conv22.i.i, double -5.000000e-01, double %conv12.i.i) #3
  %conv24.i.i = fptrunc double %236 to float
  store float %conv24.i.i, float* %arrayidx11.i.i, align 4, !tbaa !12, !llvm.access.group !24
  %237 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %237, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %add9.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom10.i.i.1 = sext i32 %add9.i.i.1 to i64
  %arrayidx11.i.i.1 = getelementptr inbounds float, float* %12, i64 %idxprom10.i.i.1
  %238 = load float, float* %arrayidx11.i.i.1, align 4, !tbaa !12
  %conv12.i.i.1 = fpext float %238 to double
  %arrayidx16.i.i.1 = getelementptr inbounds float, float* %16, i64 %idxprom10.i.i.1
  %239 = load float, float* %arrayidx16.i.i.1, align 4, !tbaa !12
  %add18.i.i.1 = add nsw i32 %mul17.i.i, %conv.i.i.1
  %idxprom19.i.i.1 = sext i32 %add18.i.i.1 to i64
  %arrayidx20.i.i.1 = getelementptr inbounds float, float* %16, i64 %idxprom19.i.i.1
  %240 = load float, float* %arrayidx20.i.i.1, align 4, !tbaa !12
  %sub21.i.i.1 = fsub float %239, %240
  %conv22.i.i.1 = fpext float %sub21.i.i.1 to double
  %241 = tail call double @llvm.fmuladd.f64(double %conv22.i.i.1, double -5.000000e-01, double %conv12.i.i.1) #3
  %conv24.i.i.1 = fptrunc double %241 to float
  store float %conv24.i.i.1, float* %arrayidx11.i.i.1, align 4, !tbaa !12, !llvm.access.group !24
  %242 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %242, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !40

pregion_for_end.i.i.loopexit:                     ; preds = %pregion_for_entry.entry.i.i
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %pregion_for_entry.entry.i.i.us.preheader, %vector.body
  %243 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond3.not = icmp eq i64 %243, 8
  br i1 %exitcond3.not, label %_pocl_kernel_fdtd_kernel1.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !30

_pocl_kernel_fdtd_kernel1.exit:                   ; preds = %pregion_for_end.i.i
  ret void
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
  %18 = getelementptr i8*, i8** %0, i64 6
  %19 = bitcast i8** %18 to i32**
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %idxprom.i.i = sext i32 %17 to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %7, i64 %idxprom.i.i
  %22 = bitcast float* %arrayidx.i.i to i32*
  %conv.i.i.us = trunc i64 %mul.i.i.i to i32
  %23 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.1 = or i32 %23, 1
  %24 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.2 = or i32 %24, 2
  %25 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.3 = or i32 %25, 3
  %26 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.4 = or i32 %26, 4
  %27 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.5 = or i32 %27, 5
  %28 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.6 = or i32 %28, 6
  %29 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.7 = or i32 %29, 7
  %30 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.8 = or i32 %30, 8
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.9 = or i32 %31, 9
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.10 = or i32 %32, 10
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.11 = or i32 %33, 11
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.12 = or i32 %34, 12
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.13 = or i32 %35, 13
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.14 = or i32 %36, 14
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.15 = or i32 %37, 15
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.16 = or i32 %38, 16
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.17 = or i32 %39, 17
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.18 = or i32 %40, 18
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.19 = or i32 %41, 19
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.20 = or i32 %42, 20
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.21 = or i32 %43, 21
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.22 = or i32 %44, 22
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.23 = or i32 %45, 23
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.24 = or i32 %46, 24
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.25 = or i32 %47, 25
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.26 = or i32 %48, 26
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.27 = or i32 %49, 27
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.28 = or i32 %50, 28
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.29 = or i32 %51, 29
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.30 = or i32 %52, 30
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.31 = or i32 %53, 31
  %54 = trunc i64 %3 to i32
  %55 = mul i32 %21, %54
  %56 = shl i32 %55, 3
  %57 = zext i32 %56 to i64
  %58 = trunc i64 %2 to i32
  %59 = shl i32 %58, 5
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %57, %60
  %62 = zext i32 %21 to i64
  %63 = shl i32 %54, 3
  %64 = add i32 %63, -1
  %65 = mul i32 %21, %64
  %66 = zext i32 %65 to i64
  %67 = add nsw i64 %66, %60
  %68 = trunc i64 %3 to i32
  %69 = mul i32 %21, %68
  %70 = shl i32 %69, 3
  %71 = zext i32 %70 to i64
  %72 = trunc i64 %2 to i32
  %73 = shl i32 %72, 5
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = zext i32 %21 to i64
  %scevgep8 = getelementptr float, float* %10, i64 32
  %77 = shl i32 %68, 3
  %78 = add i32 %77, -1
  %79 = mul i32 %21, %78
  %80 = zext i32 %79 to i64
  %81 = add nsw i64 %80, %74
  %scevgep13 = getelementptr float, float* %13, i64 32
  %scevgep18 = getelementptr float, float* %13, i64 32
  %bound021 = icmp ult float* %10, %scevgep18
  %bound122 = icmp ult float* %13, %scevgep8
  %found.conflict23 = and i1 %bound021, %bound122
  %82 = trunc i64 %mul.i.i.i to i32
  %83 = trunc i64 %mul.i.i.i to i32
  %84 = or i32 %83, 8
  %85 = trunc i64 %mul.i.i.i to i32
  %86 = or i32 %85, 16
  %87 = trunc i64 %mul.i.i.i to i32
  %88 = or i32 %87, 24
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %240, %pregion_for_end.i.i ]
  %89 = mul i64 %_local_id_y.i.0, %76
  %90 = add i64 %75, %89
  %sext = shl i64 %90, 32
  %91 = ashr exact i64 %sext, 32
  %scevgep = getelementptr float, float* %10, i64 %91
  %scevgep9 = getelementptr float, float* %scevgep8, i64 %91
  %92 = add i64 %81, %89
  %sext26 = shl i64 %92, 32
  %93 = ashr exact i64 %sext26, 32
  %scevgep11 = getelementptr float, float* %13, i64 %93
  %scevgep14 = getelementptr float, float* %scevgep13, i64 %93
  %94 = mul i64 %_local_id_y.i.0, %62
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %mul.i.i = mul nsw i32 %21, %conv2.i.i
  %cmp.i.i = icmp eq i32 %conv2.i.i, 0
  %sub.i.i = add nsw i32 %conv2.i.i, -1
  %mul17.i.i = mul nsw i32 %sub.i.i, %21
  br i1 %cmp.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %95 = add i64 %67, %94
  %96 = trunc i64 %95 to i32
  %97 = add i64 %61, %94
  %98 = trunc i64 %97 to i32
  %99 = icmp sgt i32 %98, 2147483616
  %100 = icmp sgt i32 %96, 2147483616
  %101 = or i1 %99, %100
  br i1 %101, label %pregion_for_entry.entry.i.i.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult float* %scevgep, %scevgep14
  %bound1 = icmp ult float* %scevgep11, %scevgep9
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %102 = add nsw i32 %mul.i.i, %82
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %10, i64 %103
  %105 = bitcast float* %104 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %105, align 4, !tbaa !12, !alias.scope !41, !noalias !44
  %106 = fpext <8 x float> %wide.load to <8 x double>
  %107 = getelementptr inbounds float, float* %13, i64 %103
  %108 = bitcast float* %107 to <8 x float>*
  %wide.load24 = load <8 x float>, <8 x float>* %108, align 4, !tbaa !12, !alias.scope !47
  %109 = add nsw i32 %mul17.i.i, %82
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %13, i64 %110
  %112 = bitcast float* %111 to <8 x float>*
  %wide.load25 = load <8 x float>, <8 x float>* %112, align 4, !tbaa !12, !alias.scope !48
  %113 = fsub <8 x float> %wide.load24, %wide.load25
  %114 = fpext <8 x float> %113 to <8 x double>
  %115 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %114, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %106)
  %116 = fptrunc <8 x double> %115 to <8 x float>
  %117 = bitcast float* %104 to <8 x float>*
  store <8 x float> %116, <8 x float>* %117, align 4, !tbaa !12, !alias.scope !41, !noalias !44, !llvm.access.group !24
  %118 = add nsw i32 %mul.i.i, %84
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %10, i64 %119
  %121 = bitcast float* %120 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %121, align 4, !tbaa !12, !alias.scope !41, !noalias !44
  %122 = fpext <8 x float> %wide.load.1 to <8 x double>
  %123 = getelementptr inbounds float, float* %13, i64 %119
  %124 = bitcast float* %123 to <8 x float>*
  %wide.load24.1 = load <8 x float>, <8 x float>* %124, align 4, !tbaa !12, !alias.scope !47
  %125 = add nsw i32 %mul17.i.i, %84
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %13, i64 %126
  %128 = bitcast float* %127 to <8 x float>*
  %wide.load25.1 = load <8 x float>, <8 x float>* %128, align 4, !tbaa !12, !alias.scope !48
  %129 = fsub <8 x float> %wide.load24.1, %wide.load25.1
  %130 = fpext <8 x float> %129 to <8 x double>
  %131 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %130, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %122)
  %132 = fptrunc <8 x double> %131 to <8 x float>
  %133 = bitcast float* %120 to <8 x float>*
  store <8 x float> %132, <8 x float>* %133, align 4, !tbaa !12, !alias.scope !41, !noalias !44, !llvm.access.group !24
  %134 = add nsw i32 %mul.i.i, %86
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %10, i64 %135
  %137 = bitcast float* %136 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %137, align 4, !tbaa !12, !alias.scope !41, !noalias !44
  %138 = fpext <8 x float> %wide.load.2 to <8 x double>
  %139 = getelementptr inbounds float, float* %13, i64 %135
  %140 = bitcast float* %139 to <8 x float>*
  %wide.load24.2 = load <8 x float>, <8 x float>* %140, align 4, !tbaa !12, !alias.scope !47
  %141 = add nsw i32 %mul17.i.i, %86
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %13, i64 %142
  %144 = bitcast float* %143 to <8 x float>*
  %wide.load25.2 = load <8 x float>, <8 x float>* %144, align 4, !tbaa !12, !alias.scope !48
  %145 = fsub <8 x float> %wide.load24.2, %wide.load25.2
  %146 = fpext <8 x float> %145 to <8 x double>
  %147 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %146, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %138)
  %148 = fptrunc <8 x double> %147 to <8 x float>
  %149 = bitcast float* %136 to <8 x float>*
  store <8 x float> %148, <8 x float>* %149, align 4, !tbaa !12, !alias.scope !41, !noalias !44, !llvm.access.group !24
  %150 = add nsw i32 %mul.i.i, %88
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %10, i64 %151
  %153 = bitcast float* %152 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %153, align 4, !tbaa !12, !alias.scope !41, !noalias !44
  %154 = fpext <8 x float> %wide.load.3 to <8 x double>
  %155 = getelementptr inbounds float, float* %13, i64 %151
  %156 = bitcast float* %155 to <8 x float>*
  %wide.load24.3 = load <8 x float>, <8 x float>* %156, align 4, !tbaa !12, !alias.scope !47
  %157 = add nsw i32 %mul17.i.i, %88
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %13, i64 %158
  %160 = bitcast float* %159 to <8 x float>*
  %wide.load25.3 = load <8 x float>, <8 x float>* %160, align 4, !tbaa !12, !alias.scope !48
  %161 = fsub <8 x float> %wide.load24.3, %wide.load25.3
  %162 = fpext <8 x float> %161 to <8 x double>
  %163 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %162, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %154)
  %164 = fptrunc <8 x double> %163 to <8 x float>
  %165 = bitcast float* %152 to <8 x float>*
  store <8 x float> %164, <8 x float>* %165, align 4, !tbaa !12, !alias.scope !41, !noalias !44, !llvm.access.group !24
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %pregion_for_entry.pregion_for_init.i.i
  %166 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us = add nuw nsw i32 %mul.i.i, %conv.i.i.us
  %idxprom6.i.i.us = sext i32 %add5.i.i.us to i64
  %arrayidx7.i.i.us = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us
  %167 = bitcast float* %arrayidx7.i.i.us to i32*
  store i32 %166, i32* %167, align 4, !tbaa !12, !llvm.access.group !24
  %168 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.1 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.1
  %idxprom6.i.i.us.1 = sext i32 %add5.i.i.us.1 to i64
  %arrayidx7.i.i.us.1 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.1
  %169 = bitcast float* %arrayidx7.i.i.us.1 to i32*
  store i32 %168, i32* %169, align 4, !tbaa !12, !llvm.access.group !24
  %170 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.2 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.2
  %idxprom6.i.i.us.2 = sext i32 %add5.i.i.us.2 to i64
  %arrayidx7.i.i.us.2 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.2
  %171 = bitcast float* %arrayidx7.i.i.us.2 to i32*
  store i32 %170, i32* %171, align 4, !tbaa !12, !llvm.access.group !24
  %172 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.3 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.3
  %idxprom6.i.i.us.3 = sext i32 %add5.i.i.us.3 to i64
  %arrayidx7.i.i.us.3 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.3
  %173 = bitcast float* %arrayidx7.i.i.us.3 to i32*
  store i32 %172, i32* %173, align 4, !tbaa !12, !llvm.access.group !24
  %174 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.4 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.4
  %idxprom6.i.i.us.4 = sext i32 %add5.i.i.us.4 to i64
  %arrayidx7.i.i.us.4 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.4
  %175 = bitcast float* %arrayidx7.i.i.us.4 to i32*
  store i32 %174, i32* %175, align 4, !tbaa !12, !llvm.access.group !24
  %176 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.5 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.5
  %idxprom6.i.i.us.5 = sext i32 %add5.i.i.us.5 to i64
  %arrayidx7.i.i.us.5 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.5
  %177 = bitcast float* %arrayidx7.i.i.us.5 to i32*
  store i32 %176, i32* %177, align 4, !tbaa !12, !llvm.access.group !24
  %178 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.6 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.6
  %idxprom6.i.i.us.6 = sext i32 %add5.i.i.us.6 to i64
  %arrayidx7.i.i.us.6 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.6
  %179 = bitcast float* %arrayidx7.i.i.us.6 to i32*
  store i32 %178, i32* %179, align 4, !tbaa !12, !llvm.access.group !24
  %180 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.7 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.7
  %idxprom6.i.i.us.7 = sext i32 %add5.i.i.us.7 to i64
  %arrayidx7.i.i.us.7 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.7
  %181 = bitcast float* %arrayidx7.i.i.us.7 to i32*
  store i32 %180, i32* %181, align 4, !tbaa !12, !llvm.access.group !24
  %182 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.8 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.8
  %idxprom6.i.i.us.8 = sext i32 %add5.i.i.us.8 to i64
  %arrayidx7.i.i.us.8 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.8
  %183 = bitcast float* %arrayidx7.i.i.us.8 to i32*
  store i32 %182, i32* %183, align 4, !tbaa !12, !llvm.access.group !24
  %184 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.9 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.9
  %idxprom6.i.i.us.9 = sext i32 %add5.i.i.us.9 to i64
  %arrayidx7.i.i.us.9 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.9
  %185 = bitcast float* %arrayidx7.i.i.us.9 to i32*
  store i32 %184, i32* %185, align 4, !tbaa !12, !llvm.access.group !24
  %186 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.10 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.10
  %idxprom6.i.i.us.10 = sext i32 %add5.i.i.us.10 to i64
  %arrayidx7.i.i.us.10 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.10
  %187 = bitcast float* %arrayidx7.i.i.us.10 to i32*
  store i32 %186, i32* %187, align 4, !tbaa !12, !llvm.access.group !24
  %188 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.11 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.11
  %idxprom6.i.i.us.11 = sext i32 %add5.i.i.us.11 to i64
  %arrayidx7.i.i.us.11 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.11
  %189 = bitcast float* %arrayidx7.i.i.us.11 to i32*
  store i32 %188, i32* %189, align 4, !tbaa !12, !llvm.access.group !24
  %190 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.12 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.12
  %idxprom6.i.i.us.12 = sext i32 %add5.i.i.us.12 to i64
  %arrayidx7.i.i.us.12 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.12
  %191 = bitcast float* %arrayidx7.i.i.us.12 to i32*
  store i32 %190, i32* %191, align 4, !tbaa !12, !llvm.access.group !24
  %192 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.13 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.13
  %idxprom6.i.i.us.13 = sext i32 %add5.i.i.us.13 to i64
  %arrayidx7.i.i.us.13 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.13
  %193 = bitcast float* %arrayidx7.i.i.us.13 to i32*
  store i32 %192, i32* %193, align 4, !tbaa !12, !llvm.access.group !24
  %194 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.14 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.14
  %idxprom6.i.i.us.14 = sext i32 %add5.i.i.us.14 to i64
  %arrayidx7.i.i.us.14 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.14
  %195 = bitcast float* %arrayidx7.i.i.us.14 to i32*
  store i32 %194, i32* %195, align 4, !tbaa !12, !llvm.access.group !24
  %196 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.15 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.15
  %idxprom6.i.i.us.15 = sext i32 %add5.i.i.us.15 to i64
  %arrayidx7.i.i.us.15 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.15
  %197 = bitcast float* %arrayidx7.i.i.us.15 to i32*
  store i32 %196, i32* %197, align 4, !tbaa !12, !llvm.access.group !24
  %198 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.16 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.16
  %idxprom6.i.i.us.16 = sext i32 %add5.i.i.us.16 to i64
  %arrayidx7.i.i.us.16 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.16
  %199 = bitcast float* %arrayidx7.i.i.us.16 to i32*
  store i32 %198, i32* %199, align 4, !tbaa !12, !llvm.access.group !24
  %200 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.17 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.17
  %idxprom6.i.i.us.17 = sext i32 %add5.i.i.us.17 to i64
  %arrayidx7.i.i.us.17 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.17
  %201 = bitcast float* %arrayidx7.i.i.us.17 to i32*
  store i32 %200, i32* %201, align 4, !tbaa !12, !llvm.access.group !24
  %202 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.18 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.18
  %idxprom6.i.i.us.18 = sext i32 %add5.i.i.us.18 to i64
  %arrayidx7.i.i.us.18 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.18
  %203 = bitcast float* %arrayidx7.i.i.us.18 to i32*
  store i32 %202, i32* %203, align 4, !tbaa !12, !llvm.access.group !24
  %204 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.19 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.19
  %idxprom6.i.i.us.19 = sext i32 %add5.i.i.us.19 to i64
  %arrayidx7.i.i.us.19 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.19
  %205 = bitcast float* %arrayidx7.i.i.us.19 to i32*
  store i32 %204, i32* %205, align 4, !tbaa !12, !llvm.access.group !24
  %206 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.20 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.20
  %idxprom6.i.i.us.20 = sext i32 %add5.i.i.us.20 to i64
  %arrayidx7.i.i.us.20 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.20
  %207 = bitcast float* %arrayidx7.i.i.us.20 to i32*
  store i32 %206, i32* %207, align 4, !tbaa !12, !llvm.access.group !24
  %208 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.21 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.21
  %idxprom6.i.i.us.21 = sext i32 %add5.i.i.us.21 to i64
  %arrayidx7.i.i.us.21 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.21
  %209 = bitcast float* %arrayidx7.i.i.us.21 to i32*
  store i32 %208, i32* %209, align 4, !tbaa !12, !llvm.access.group !24
  %210 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.22 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.22
  %idxprom6.i.i.us.22 = sext i32 %add5.i.i.us.22 to i64
  %arrayidx7.i.i.us.22 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.22
  %211 = bitcast float* %arrayidx7.i.i.us.22 to i32*
  store i32 %210, i32* %211, align 4, !tbaa !12, !llvm.access.group !24
  %212 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.23 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.23
  %idxprom6.i.i.us.23 = sext i32 %add5.i.i.us.23 to i64
  %arrayidx7.i.i.us.23 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.23
  %213 = bitcast float* %arrayidx7.i.i.us.23 to i32*
  store i32 %212, i32* %213, align 4, !tbaa !12, !llvm.access.group !24
  %214 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.24 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.24
  %idxprom6.i.i.us.24 = sext i32 %add5.i.i.us.24 to i64
  %arrayidx7.i.i.us.24 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.24
  %215 = bitcast float* %arrayidx7.i.i.us.24 to i32*
  store i32 %214, i32* %215, align 4, !tbaa !12, !llvm.access.group !24
  %216 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.25 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.25
  %idxprom6.i.i.us.25 = sext i32 %add5.i.i.us.25 to i64
  %arrayidx7.i.i.us.25 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.25
  %217 = bitcast float* %arrayidx7.i.i.us.25 to i32*
  store i32 %216, i32* %217, align 4, !tbaa !12, !llvm.access.group !24
  %218 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.26 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.26
  %idxprom6.i.i.us.26 = sext i32 %add5.i.i.us.26 to i64
  %arrayidx7.i.i.us.26 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.26
  %219 = bitcast float* %arrayidx7.i.i.us.26 to i32*
  store i32 %218, i32* %219, align 4, !tbaa !12, !llvm.access.group !24
  %220 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.27 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.27
  %idxprom6.i.i.us.27 = sext i32 %add5.i.i.us.27 to i64
  %arrayidx7.i.i.us.27 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.27
  %221 = bitcast float* %arrayidx7.i.i.us.27 to i32*
  store i32 %220, i32* %221, align 4, !tbaa !12, !llvm.access.group !24
  %222 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.28 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.28
  %idxprom6.i.i.us.28 = sext i32 %add5.i.i.us.28 to i64
  %arrayidx7.i.i.us.28 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.28
  %223 = bitcast float* %arrayidx7.i.i.us.28 to i32*
  store i32 %222, i32* %223, align 4, !tbaa !12, !llvm.access.group !24
  %224 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.29 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.29
  %idxprom6.i.i.us.29 = sext i32 %add5.i.i.us.29 to i64
  %arrayidx7.i.i.us.29 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.29
  %225 = bitcast float* %arrayidx7.i.i.us.29 to i32*
  store i32 %224, i32* %225, align 4, !tbaa !12, !llvm.access.group !24
  %226 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.30 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.30
  %idxprom6.i.i.us.30 = sext i32 %add5.i.i.us.30 to i64
  %arrayidx7.i.i.us.30 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.30
  %227 = bitcast float* %arrayidx7.i.i.us.30 to i32*
  store i32 %226, i32* %227, align 4, !tbaa !12, !llvm.access.group !24
  %228 = load i32, i32* %22, align 4, !tbaa !12
  %add5.i.i.us.31 = add nuw nsw i32 %mul.i.i, %conv.i.i.us.31
  %idxprom6.i.i.us.31 = sext i32 %add5.i.i.us.31 to i64
  %arrayidx7.i.i.us.31 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.31
  %229 = bitcast float* %arrayidx7.i.i.us.31 to i32*
  store i32 %228, i32* %229, align 4, !tbaa !12, !llvm.access.group !24
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ 0, %pregion_for_entry.entry.i.i.preheader ], [ %239, %pregion_for_entry.entry.i.i ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %add9.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom10.i.i = sext i32 %add9.i.i to i64
  %arrayidx11.i.i = getelementptr inbounds float, float* %10, i64 %idxprom10.i.i
  %230 = load float, float* %arrayidx11.i.i, align 4, !tbaa !12
  %conv12.i.i = fpext float %230 to double
  %arrayidx16.i.i = getelementptr inbounds float, float* %13, i64 %idxprom10.i.i
  %231 = load float, float* %arrayidx16.i.i, align 4, !tbaa !12
  %add18.i.i = add nsw i32 %mul17.i.i, %conv.i.i
  %idxprom19.i.i = sext i32 %add18.i.i to i64
  %arrayidx20.i.i = getelementptr inbounds float, float* %13, i64 %idxprom19.i.i
  %232 = load float, float* %arrayidx20.i.i, align 4, !tbaa !12
  %sub21.i.i = fsub float %231, %232
  %conv22.i.i = fpext float %sub21.i.i to double
  %233 = tail call double @llvm.fmuladd.f64(double %conv22.i.i, double -5.000000e-01, double %conv12.i.i) #3
  %conv24.i.i = fptrunc double %233 to float
  store float %conv24.i.i, float* %arrayidx11.i.i, align 4, !tbaa !12, !llvm.access.group !24
  %234 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %234, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %add9.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom10.i.i.1 = sext i32 %add9.i.i.1 to i64
  %arrayidx11.i.i.1 = getelementptr inbounds float, float* %10, i64 %idxprom10.i.i.1
  %235 = load float, float* %arrayidx11.i.i.1, align 4, !tbaa !12
  %conv12.i.i.1 = fpext float %235 to double
  %arrayidx16.i.i.1 = getelementptr inbounds float, float* %13, i64 %idxprom10.i.i.1
  %236 = load float, float* %arrayidx16.i.i.1, align 4, !tbaa !12
  %add18.i.i.1 = add nsw i32 %mul17.i.i, %conv.i.i.1
  %idxprom19.i.i.1 = sext i32 %add18.i.i.1 to i64
  %arrayidx20.i.i.1 = getelementptr inbounds float, float* %13, i64 %idxprom19.i.i.1
  %237 = load float, float* %arrayidx20.i.i.1, align 4, !tbaa !12
  %sub21.i.i.1 = fsub float %236, %237
  %conv22.i.i.1 = fpext float %sub21.i.i.1 to double
  %238 = tail call double @llvm.fmuladd.f64(double %conv22.i.i.1, double -5.000000e-01, double %conv12.i.i.1) #3
  %conv24.i.i.1 = fptrunc double %238 to float
  store float %conv24.i.i.1, float* %arrayidx11.i.i.1, align 4, !tbaa !12, !llvm.access.group !24
  %239 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %239, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !49

pregion_for_end.i.i.loopexit:                     ; preds = %pregion_for_entry.entry.i.i
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %pregion_for_entry.entry.i.i.us.preheader, %vector.body
  %240 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond3.not = icmp eq i64 %240, 8
  br i1 %exitcond3.not, label %_pocl_kernel_fdtd_kernel1.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !30

_pocl_kernel_fdtd_kernel1.exit:                   ; preds = %pregion_for_end.i.i
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #0

attributes #0 = { nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

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
!27 = distinct !{!27, !28, !29}
!28 = !{!"llvm.loop.parallel_accesses", !25}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.parallel_accesses", !26}
!32 = !{!33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!36, !37}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !34}
!38 = !{!37}
!39 = !{!36}
!40 = distinct !{!40, !28, !29}
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!45, !46}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !43}
!47 = !{!46}
!48 = !{!45}
!49 = distinct !{!49, !28, !29}
