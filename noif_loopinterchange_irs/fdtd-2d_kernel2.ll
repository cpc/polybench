; ModuleID = './JA/PPGOFAKNODIDBFJENOEJALAJOIPFMPCLGFIGI/fdtd_kernel2/32-8-1-goffs0-smallgrid/parallel.bc'
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
  %mul.i = mul nsw i32 %conv2.i, %4
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
  br i1 %20, label %pregion_for_entry.entry.i.preheader, label %vector.body

pregion_for_entry.entry.i.preheader:              ; preds = %pregion_for_entry.pregion_for_init.i
  br label %pregion_for_entry.entry.i

vector.body:                                      ; preds = %pregion_for_entry.pregion_for_init.i
  %21 = trunc i64 %mul.i.i to i32
  %22 = add i32 %mul.i, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %0, i64 %23
  %25 = bitcast float* %24 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %25, align 4, !tbaa !12, !llvm.access.group !16
  %26 = fpext <8 x float> %wide.load to <8 x double>
  %27 = getelementptr inbounds float, float* %2, i64 %23
  %28 = bitcast float* %27 to <8 x float>*
  %wide.load5 = load <8 x float>, <8 x float>* %28, align 4, !tbaa !12, !llvm.access.group !16
  %29 = add i32 %22, -1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %2, i64 %30
  %32 = bitcast float* %31 to <8 x float>*
  %wide.load6 = load <8 x float>, <8 x float>* %32, align 4, !tbaa !12, !llvm.access.group !16
  %33 = fsub <8 x float> %wide.load5, %wide.load6
  %34 = fpext <8 x float> %33 to <8 x double>
  %35 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %34, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %26)
  %36 = fptrunc <8 x double> %35 to <8 x float>
  %37 = bitcast float* %24 to <8 x float>*
  store <8 x float> %36, <8 x float>* %37, align 4, !tbaa !12, !llvm.access.group !16
  %38 = trunc i64 %mul.i.i to i32
  %39 = or i32 %38, 8
  %40 = add i32 %mul.i, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %0, i64 %41
  %43 = bitcast float* %42 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %43, align 4, !tbaa !12, !llvm.access.group !16
  %44 = fpext <8 x float> %wide.load.1 to <8 x double>
  %45 = getelementptr inbounds float, float* %2, i64 %41
  %46 = bitcast float* %45 to <8 x float>*
  %wide.load5.1 = load <8 x float>, <8 x float>* %46, align 4, !tbaa !12, !llvm.access.group !16
  %47 = add i32 %40, -1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %2, i64 %48
  %50 = bitcast float* %49 to <8 x float>*
  %wide.load6.1 = load <8 x float>, <8 x float>* %50, align 4, !tbaa !12, !llvm.access.group !16
  %51 = fsub <8 x float> %wide.load5.1, %wide.load6.1
  %52 = fpext <8 x float> %51 to <8 x double>
  %53 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %52, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %44)
  %54 = fptrunc <8 x double> %53 to <8 x float>
  %55 = bitcast float* %42 to <8 x float>*
  store <8 x float> %54, <8 x float>* %55, align 4, !tbaa !12, !llvm.access.group !16
  %56 = trunc i64 %mul.i.i to i32
  %57 = or i32 %56, 16
  %58 = add i32 %mul.i, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %0, i64 %59
  %61 = bitcast float* %60 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %61, align 4, !tbaa !12, !llvm.access.group !16
  %62 = fpext <8 x float> %wide.load.2 to <8 x double>
  %63 = getelementptr inbounds float, float* %2, i64 %59
  %64 = bitcast float* %63 to <8 x float>*
  %wide.load5.2 = load <8 x float>, <8 x float>* %64, align 4, !tbaa !12, !llvm.access.group !16
  %65 = add i32 %58, -1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %2, i64 %66
  %68 = bitcast float* %67 to <8 x float>*
  %wide.load6.2 = load <8 x float>, <8 x float>* %68, align 4, !tbaa !12, !llvm.access.group !16
  %69 = fsub <8 x float> %wide.load5.2, %wide.load6.2
  %70 = fpext <8 x float> %69 to <8 x double>
  %71 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %70, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %62)
  %72 = fptrunc <8 x double> %71 to <8 x float>
  %73 = bitcast float* %60 to <8 x float>*
  store <8 x float> %72, <8 x float>* %73, align 4, !tbaa !12, !llvm.access.group !16
  %74 = trunc i64 %mul.i.i to i32
  %75 = or i32 %74, 24
  %76 = add i32 %mul.i, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %0, i64 %77
  %79 = bitcast float* %78 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %79, align 4, !tbaa !12, !llvm.access.group !16
  %80 = fpext <8 x float> %wide.load.3 to <8 x double>
  %81 = getelementptr inbounds float, float* %2, i64 %77
  %82 = bitcast float* %81 to <8 x float>*
  %wide.load5.3 = load <8 x float>, <8 x float>* %82, align 4, !tbaa !12, !llvm.access.group !16
  %83 = add i32 %76, -1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %2, i64 %84
  %86 = bitcast float* %85 to <8 x float>*
  %wide.load6.3 = load <8 x float>, <8 x float>* %86, align 4, !tbaa !12, !llvm.access.group !16
  %87 = fsub <8 x float> %wide.load5.3, %wide.load6.3
  %88 = fpext <8 x float> %87 to <8 x double>
  %89 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %88, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %80)
  %90 = fptrunc <8 x double> %89 to <8 x float>
  %91 = bitcast float* %78 to <8 x float>*
  store <8 x float> %90, <8 x float>* %91, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i

pregion_for_end.i.loopexit:                       ; preds = %pregion_for_entry.entry.i
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %pregion_for_end.i.loopexit, %vector.body
  %92 = trunc i64 %mul3.i.i to i32
  %conv2.i.1 = or i32 %92, 1
  %mul.i.1 = mul nsw i32 %conv2.i.1, %4
  %93 = mul i32 %conv2.i.1, %4
  %94 = trunc i64 %6 to i32
  %95 = shl i32 %94, 5
  %96 = add i32 %93, %95
  %97 = icmp sgt i32 %96, 2147483616
  %98 = add i32 %93, %95
  %99 = add i32 %98, -1
  %100 = add i32 %98, 30
  %101 = icmp slt i32 %100, %99
  %102 = or i1 %97, %101
  br i1 %102, label %pregion_for_entry.entry.i.1.preheader, label %vector.body9

pregion_for_entry.entry.i.1.preheader:            ; preds = %pregion_for_end.i
  br label %pregion_for_entry.entry.i.1

vector.body9:                                     ; preds = %pregion_for_end.i
  %103 = trunc i64 %mul.i.i to i32
  %104 = add i32 %mul.i.1, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %0, i64 %105
  %107 = bitcast float* %106 to <8 x float>*
  %wide.load23 = load <8 x float>, <8 x float>* %107, align 4, !tbaa !12, !llvm.access.group !16
  %108 = fpext <8 x float> %wide.load23 to <8 x double>
  %109 = getelementptr inbounds float, float* %2, i64 %105
  %110 = bitcast float* %109 to <8 x float>*
  %wide.load24 = load <8 x float>, <8 x float>* %110, align 4, !tbaa !12, !llvm.access.group !16
  %111 = add i32 %104, -1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %2, i64 %112
  %114 = bitcast float* %113 to <8 x float>*
  %wide.load25 = load <8 x float>, <8 x float>* %114, align 4, !tbaa !12, !llvm.access.group !16
  %115 = fsub <8 x float> %wide.load24, %wide.load25
  %116 = fpext <8 x float> %115 to <8 x double>
  %117 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %116, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %108)
  %118 = fptrunc <8 x double> %117 to <8 x float>
  %119 = bitcast float* %106 to <8 x float>*
  store <8 x float> %118, <8 x float>* %119, align 4, !tbaa !12, !llvm.access.group !16
  %120 = trunc i64 %mul.i.i to i32
  %121 = or i32 %120, 8
  %122 = add i32 %mul.i.1, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %0, i64 %123
  %125 = bitcast float* %124 to <8 x float>*
  %wide.load23.1 = load <8 x float>, <8 x float>* %125, align 4, !tbaa !12, !llvm.access.group !16
  %126 = fpext <8 x float> %wide.load23.1 to <8 x double>
  %127 = getelementptr inbounds float, float* %2, i64 %123
  %128 = bitcast float* %127 to <8 x float>*
  %wide.load24.1 = load <8 x float>, <8 x float>* %128, align 4, !tbaa !12, !llvm.access.group !16
  %129 = add i32 %122, -1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %2, i64 %130
  %132 = bitcast float* %131 to <8 x float>*
  %wide.load25.1 = load <8 x float>, <8 x float>* %132, align 4, !tbaa !12, !llvm.access.group !16
  %133 = fsub <8 x float> %wide.load24.1, %wide.load25.1
  %134 = fpext <8 x float> %133 to <8 x double>
  %135 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %134, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %126)
  %136 = fptrunc <8 x double> %135 to <8 x float>
  %137 = bitcast float* %124 to <8 x float>*
  store <8 x float> %136, <8 x float>* %137, align 4, !tbaa !12, !llvm.access.group !16
  %138 = trunc i64 %mul.i.i to i32
  %139 = or i32 %138, 16
  %140 = add i32 %mul.i.1, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %0, i64 %141
  %143 = bitcast float* %142 to <8 x float>*
  %wide.load23.2 = load <8 x float>, <8 x float>* %143, align 4, !tbaa !12, !llvm.access.group !16
  %144 = fpext <8 x float> %wide.load23.2 to <8 x double>
  %145 = getelementptr inbounds float, float* %2, i64 %141
  %146 = bitcast float* %145 to <8 x float>*
  %wide.load24.2 = load <8 x float>, <8 x float>* %146, align 4, !tbaa !12, !llvm.access.group !16
  %147 = add i32 %140, -1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %2, i64 %148
  %150 = bitcast float* %149 to <8 x float>*
  %wide.load25.2 = load <8 x float>, <8 x float>* %150, align 4, !tbaa !12, !llvm.access.group !16
  %151 = fsub <8 x float> %wide.load24.2, %wide.load25.2
  %152 = fpext <8 x float> %151 to <8 x double>
  %153 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %152, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %144)
  %154 = fptrunc <8 x double> %153 to <8 x float>
  %155 = bitcast float* %142 to <8 x float>*
  store <8 x float> %154, <8 x float>* %155, align 4, !tbaa !12, !llvm.access.group !16
  %156 = trunc i64 %mul.i.i to i32
  %157 = or i32 %156, 24
  %158 = add i32 %mul.i.1, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %0, i64 %159
  %161 = bitcast float* %160 to <8 x float>*
  %wide.load23.3 = load <8 x float>, <8 x float>* %161, align 4, !tbaa !12, !llvm.access.group !16
  %162 = fpext <8 x float> %wide.load23.3 to <8 x double>
  %163 = getelementptr inbounds float, float* %2, i64 %159
  %164 = bitcast float* %163 to <8 x float>*
  %wide.load24.3 = load <8 x float>, <8 x float>* %164, align 4, !tbaa !12, !llvm.access.group !16
  %165 = add i32 %158, -1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %2, i64 %166
  %168 = bitcast float* %167 to <8 x float>*
  %wide.load25.3 = load <8 x float>, <8 x float>* %168, align 4, !tbaa !12, !llvm.access.group !16
  %169 = fsub <8 x float> %wide.load24.3, %wide.load25.3
  %170 = fpext <8 x float> %169 to <8 x double>
  %171 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %170, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %162)
  %172 = fptrunc <8 x double> %171 to <8 x float>
  %173 = bitcast float* %160 to <8 x float>*
  store <8 x float> %172, <8 x float>* %173, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.1

pregion_for_entry.entry.i:                        ; preds = %pregion_for_entry.entry.i, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ %183, %pregion_for_entry.entry.i ], [ 0, %pregion_for_entry.entry.i.preheader ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %conv.i = trunc i64 %add1.i.i to i32
  %add.i = add i32 %mul.i, %conv.i
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %0, i64 %idxprom.i
  %174 = load float, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i = fpext float %174 to double
  %arrayidx7.i = getelementptr inbounds float, float* %2, i64 %idxprom.i
  %175 = load float, float* %arrayidx7.i, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i = add i32 %add.i, -1
  %idxprom10.i = sext i32 %add9.i to i64
  %arrayidx11.i = getelementptr inbounds float, float* %2, i64 %idxprom10.i
  %176 = load float, float* %arrayidx11.i, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i = fsub float %175, %176
  %conv13.i = fpext float %sub12.i to double
  %177 = tail call double @llvm.fmuladd.f64(double %conv13.i, double -5.000000e-01, double %conv3.i) #3
  %conv15.i = fptrunc double %177 to float
  store float %conv15.i, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %178 = or i64 %_local_id_x.0, 1
  %add1.i.i.1149 = add nuw nsw i64 %178, %mul.i.i
  %conv.i.1150 = trunc i64 %add1.i.i.1149 to i32
  %add.i.1151 = add i32 %mul.i, %conv.i.1150
  %idxprom.i.1152 = sext i32 %add.i.1151 to i64
  %arrayidx.i.1153 = getelementptr inbounds float, float* %0, i64 %idxprom.i.1152
  %179 = load float, float* %arrayidx.i.1153, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.1154 = fpext float %179 to double
  %arrayidx7.i.1155 = getelementptr inbounds float, float* %2, i64 %idxprom.i.1152
  %180 = load float, float* %arrayidx7.i.1155, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.1156 = add nsw i32 %add.i.1151, -1
  %idxprom10.i.1157 = sext i32 %add9.i.1156 to i64
  %arrayidx11.i.1158 = getelementptr inbounds float, float* %2, i64 %idxprom10.i.1157
  %181 = load float, float* %arrayidx11.i.1158, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.1159 = fsub float %180, %181
  %conv13.i.1160 = fpext float %sub12.i.1159 to double
  %182 = tail call double @llvm.fmuladd.f64(double %conv13.i.1160, double -5.000000e-01, double %conv3.i.1154) #3
  %conv15.i.1161 = fptrunc double %182 to float
  store float %conv15.i.1161, float* %arrayidx.i.1153, align 4, !tbaa !12, !llvm.access.group !16
  %183 = add nuw nsw i64 %_local_id_x.0, 2
  %exitcond.not.1 = icmp eq i64 %183, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i, !llvm.loop !19

pregion_for_entry.entry.i.1:                      ; preds = %pregion_for_entry.entry.i.1, %pregion_for_entry.entry.i.1.preheader
  %_local_id_x.0.1 = phi i64 [ %193, %pregion_for_entry.entry.i.1 ], [ 0, %pregion_for_entry.entry.i.1.preheader ]
  %add1.i.i.1 = add nuw nsw i64 %_local_id_x.0.1, %mul.i.i
  %conv.i.1 = trunc i64 %add1.i.i.1 to i32
  %add.i.1 = add i32 %mul.i.1, %conv.i.1
  %idxprom.i.1 = sext i32 %add.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.1
  %184 = load float, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.1 = fpext float %184 to double
  %arrayidx7.i.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.1
  %185 = load float, float* %arrayidx7.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.1 = add i32 %add.i.1, -1
  %idxprom10.i.1 = sext i32 %add9.i.1 to i64
  %arrayidx11.i.1 = getelementptr inbounds float, float* %2, i64 %idxprom10.i.1
  %186 = load float, float* %arrayidx11.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.1 = fsub float %185, %186
  %conv13.i.1 = fpext float %sub12.i.1 to double
  %187 = tail call double @llvm.fmuladd.f64(double %conv13.i.1, double -5.000000e-01, double %conv3.i.1) #3
  %conv15.i.1 = fptrunc double %187 to float
  store float %conv15.i.1, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %188 = or i64 %_local_id_x.0.1, 1
  %add1.i.i.1.1 = add nuw nsw i64 %188, %mul.i.i
  %conv.i.1.1 = trunc i64 %add1.i.i.1.1 to i32
  %add.i.1.1 = add i32 %mul.i.1, %conv.i.1.1
  %idxprom.i.1.1 = sext i32 %add.i.1.1 to i64
  %arrayidx.i.1.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.1.1
  %189 = load float, float* %arrayidx.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.1.1 = fpext float %189 to double
  %arrayidx7.i.1.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.1.1
  %190 = load float, float* %arrayidx7.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.1.1 = add i32 %add.i.1.1, -1
  %idxprom10.i.1.1 = sext i32 %add9.i.1.1 to i64
  %arrayidx11.i.1.1 = getelementptr inbounds float, float* %2, i64 %idxprom10.i.1.1
  %191 = load float, float* %arrayidx11.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.1.1 = fsub float %190, %191
  %conv13.i.1.1 = fpext float %sub12.i.1.1 to double
  %192 = tail call double @llvm.fmuladd.f64(double %conv13.i.1.1, double -5.000000e-01, double %conv3.i.1.1) #3
  %conv15.i.1.1 = fptrunc double %192 to float
  store float %conv15.i.1.1, float* %arrayidx.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %193 = add nuw nsw i64 %_local_id_x.0.1, 2
  %exitcond.1.not.1 = icmp eq i64 %193, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.1.loopexit, label %pregion_for_entry.entry.i.1, !llvm.loop !22

pregion_for_end.i.1.loopexit:                     ; preds = %pregion_for_entry.entry.i.1
  br label %pregion_for_end.i.1

pregion_for_end.i.1:                              ; preds = %pregion_for_end.i.1.loopexit, %vector.body9
  %194 = trunc i64 %mul3.i.i to i32
  %conv2.i.2 = or i32 %194, 2
  %mul.i.2 = mul nsw i32 %conv2.i.2, %4
  %195 = mul i32 %conv2.i.2, %4
  %196 = trunc i64 %6 to i32
  %197 = shl i32 %196, 5
  %198 = add i32 %195, %197
  %199 = icmp sgt i32 %198, 2147483616
  %200 = add i32 %195, %197
  %201 = add i32 %200, -1
  %202 = add i32 %200, 30
  %203 = icmp slt i32 %202, %201
  %204 = or i1 %199, %203
  br i1 %204, label %pregion_for_entry.entry.i.2.preheader, label %vector.body28

pregion_for_entry.entry.i.2.preheader:            ; preds = %pregion_for_end.i.1
  br label %pregion_for_entry.entry.i.2

vector.body28:                                    ; preds = %pregion_for_end.i.1
  %205 = trunc i64 %mul.i.i to i32
  %206 = add i32 %mul.i.2, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %0, i64 %207
  %209 = bitcast float* %208 to <8 x float>*
  %wide.load42 = load <8 x float>, <8 x float>* %209, align 4, !tbaa !12, !llvm.access.group !16
  %210 = fpext <8 x float> %wide.load42 to <8 x double>
  %211 = getelementptr inbounds float, float* %2, i64 %207
  %212 = bitcast float* %211 to <8 x float>*
  %wide.load43 = load <8 x float>, <8 x float>* %212, align 4, !tbaa !12, !llvm.access.group !16
  %213 = add i32 %206, -1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %2, i64 %214
  %216 = bitcast float* %215 to <8 x float>*
  %wide.load44 = load <8 x float>, <8 x float>* %216, align 4, !tbaa !12, !llvm.access.group !16
  %217 = fsub <8 x float> %wide.load43, %wide.load44
  %218 = fpext <8 x float> %217 to <8 x double>
  %219 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %218, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %210)
  %220 = fptrunc <8 x double> %219 to <8 x float>
  %221 = bitcast float* %208 to <8 x float>*
  store <8 x float> %220, <8 x float>* %221, align 4, !tbaa !12, !llvm.access.group !16
  %222 = trunc i64 %mul.i.i to i32
  %223 = or i32 %222, 8
  %224 = add i32 %mul.i.2, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %0, i64 %225
  %227 = bitcast float* %226 to <8 x float>*
  %wide.load42.1 = load <8 x float>, <8 x float>* %227, align 4, !tbaa !12, !llvm.access.group !16
  %228 = fpext <8 x float> %wide.load42.1 to <8 x double>
  %229 = getelementptr inbounds float, float* %2, i64 %225
  %230 = bitcast float* %229 to <8 x float>*
  %wide.load43.1 = load <8 x float>, <8 x float>* %230, align 4, !tbaa !12, !llvm.access.group !16
  %231 = add i32 %224, -1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %2, i64 %232
  %234 = bitcast float* %233 to <8 x float>*
  %wide.load44.1 = load <8 x float>, <8 x float>* %234, align 4, !tbaa !12, !llvm.access.group !16
  %235 = fsub <8 x float> %wide.load43.1, %wide.load44.1
  %236 = fpext <8 x float> %235 to <8 x double>
  %237 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %236, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %228)
  %238 = fptrunc <8 x double> %237 to <8 x float>
  %239 = bitcast float* %226 to <8 x float>*
  store <8 x float> %238, <8 x float>* %239, align 4, !tbaa !12, !llvm.access.group !16
  %240 = trunc i64 %mul.i.i to i32
  %241 = or i32 %240, 16
  %242 = add i32 %mul.i.2, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %0, i64 %243
  %245 = bitcast float* %244 to <8 x float>*
  %wide.load42.2 = load <8 x float>, <8 x float>* %245, align 4, !tbaa !12, !llvm.access.group !16
  %246 = fpext <8 x float> %wide.load42.2 to <8 x double>
  %247 = getelementptr inbounds float, float* %2, i64 %243
  %248 = bitcast float* %247 to <8 x float>*
  %wide.load43.2 = load <8 x float>, <8 x float>* %248, align 4, !tbaa !12, !llvm.access.group !16
  %249 = add i32 %242, -1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %2, i64 %250
  %252 = bitcast float* %251 to <8 x float>*
  %wide.load44.2 = load <8 x float>, <8 x float>* %252, align 4, !tbaa !12, !llvm.access.group !16
  %253 = fsub <8 x float> %wide.load43.2, %wide.load44.2
  %254 = fpext <8 x float> %253 to <8 x double>
  %255 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %254, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %246)
  %256 = fptrunc <8 x double> %255 to <8 x float>
  %257 = bitcast float* %244 to <8 x float>*
  store <8 x float> %256, <8 x float>* %257, align 4, !tbaa !12, !llvm.access.group !16
  %258 = trunc i64 %mul.i.i to i32
  %259 = or i32 %258, 24
  %260 = add i32 %mul.i.2, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %0, i64 %261
  %263 = bitcast float* %262 to <8 x float>*
  %wide.load42.3 = load <8 x float>, <8 x float>* %263, align 4, !tbaa !12, !llvm.access.group !16
  %264 = fpext <8 x float> %wide.load42.3 to <8 x double>
  %265 = getelementptr inbounds float, float* %2, i64 %261
  %266 = bitcast float* %265 to <8 x float>*
  %wide.load43.3 = load <8 x float>, <8 x float>* %266, align 4, !tbaa !12, !llvm.access.group !16
  %267 = add i32 %260, -1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds float, float* %2, i64 %268
  %270 = bitcast float* %269 to <8 x float>*
  %wide.load44.3 = load <8 x float>, <8 x float>* %270, align 4, !tbaa !12, !llvm.access.group !16
  %271 = fsub <8 x float> %wide.load43.3, %wide.load44.3
  %272 = fpext <8 x float> %271 to <8 x double>
  %273 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %272, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %264)
  %274 = fptrunc <8 x double> %273 to <8 x float>
  %275 = bitcast float* %262 to <8 x float>*
  store <8 x float> %274, <8 x float>* %275, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.2

pregion_for_entry.entry.i.2:                      ; preds = %pregion_for_entry.entry.i.2, %pregion_for_entry.entry.i.2.preheader
  %_local_id_x.0.2 = phi i64 [ %285, %pregion_for_entry.entry.i.2 ], [ 0, %pregion_for_entry.entry.i.2.preheader ]
  %add1.i.i.2 = add nuw nsw i64 %_local_id_x.0.2, %mul.i.i
  %conv.i.2 = trunc i64 %add1.i.i.2 to i32
  %add.i.2 = add i32 %mul.i.2, %conv.i.2
  %idxprom.i.2 = sext i32 %add.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.2
  %276 = load float, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.2 = fpext float %276 to double
  %arrayidx7.i.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.2
  %277 = load float, float* %arrayidx7.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.2 = add i32 %add.i.2, -1
  %idxprom10.i.2 = sext i32 %add9.i.2 to i64
  %arrayidx11.i.2 = getelementptr inbounds float, float* %2, i64 %idxprom10.i.2
  %278 = load float, float* %arrayidx11.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.2 = fsub float %277, %278
  %conv13.i.2 = fpext float %sub12.i.2 to double
  %279 = tail call double @llvm.fmuladd.f64(double %conv13.i.2, double -5.000000e-01, double %conv3.i.2) #3
  %conv15.i.2 = fptrunc double %279 to float
  store float %conv15.i.2, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %280 = or i64 %_local_id_x.0.2, 1
  %add1.i.i.2.1 = add nuw nsw i64 %280, %mul.i.i
  %conv.i.2.1 = trunc i64 %add1.i.i.2.1 to i32
  %add.i.2.1 = add i32 %mul.i.2, %conv.i.2.1
  %idxprom.i.2.1 = sext i32 %add.i.2.1 to i64
  %arrayidx.i.2.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.2.1
  %281 = load float, float* %arrayidx.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.2.1 = fpext float %281 to double
  %arrayidx7.i.2.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.2.1
  %282 = load float, float* %arrayidx7.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.2.1 = add nsw i32 %add.i.2.1, -1
  %idxprom10.i.2.1 = sext i32 %add9.i.2.1 to i64
  %arrayidx11.i.2.1 = getelementptr inbounds float, float* %2, i64 %idxprom10.i.2.1
  %283 = load float, float* %arrayidx11.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.2.1 = fsub float %282, %283
  %conv13.i.2.1 = fpext float %sub12.i.2.1 to double
  %284 = tail call double @llvm.fmuladd.f64(double %conv13.i.2.1, double -5.000000e-01, double %conv3.i.2.1) #3
  %conv15.i.2.1 = fptrunc double %284 to float
  store float %conv15.i.2.1, float* %arrayidx.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %285 = add nuw nsw i64 %_local_id_x.0.2, 2
  %exitcond.2.not.1 = icmp eq i64 %285, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.2.loopexit, label %pregion_for_entry.entry.i.2, !llvm.loop !23

pregion_for_end.i.2.loopexit:                     ; preds = %pregion_for_entry.entry.i.2
  br label %pregion_for_end.i.2

pregion_for_end.i.2:                              ; preds = %pregion_for_end.i.2.loopexit, %vector.body28
  %286 = trunc i64 %mul3.i.i to i32
  %conv2.i.3 = or i32 %286, 3
  %mul.i.3 = mul nsw i32 %conv2.i.3, %4
  %287 = mul i32 %conv2.i.3, %4
  %288 = trunc i64 %6 to i32
  %289 = shl i32 %288, 5
  %290 = add i32 %287, %289
  %291 = icmp sgt i32 %290, 2147483616
  %292 = add i32 %287, %289
  %293 = add i32 %292, -1
  %294 = add i32 %292, 30
  %295 = icmp slt i32 %294, %293
  %296 = or i1 %291, %295
  br i1 %296, label %pregion_for_entry.entry.i.3.preheader, label %vector.body47

pregion_for_entry.entry.i.3.preheader:            ; preds = %pregion_for_end.i.2
  br label %pregion_for_entry.entry.i.3

vector.body47:                                    ; preds = %pregion_for_end.i.2
  %297 = trunc i64 %mul.i.i to i32
  %298 = add i32 %mul.i.3, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %0, i64 %299
  %301 = bitcast float* %300 to <8 x float>*
  %wide.load61 = load <8 x float>, <8 x float>* %301, align 4, !tbaa !12, !llvm.access.group !16
  %302 = fpext <8 x float> %wide.load61 to <8 x double>
  %303 = getelementptr inbounds float, float* %2, i64 %299
  %304 = bitcast float* %303 to <8 x float>*
  %wide.load62 = load <8 x float>, <8 x float>* %304, align 4, !tbaa !12, !llvm.access.group !16
  %305 = add i32 %298, -1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %2, i64 %306
  %308 = bitcast float* %307 to <8 x float>*
  %wide.load63 = load <8 x float>, <8 x float>* %308, align 4, !tbaa !12, !llvm.access.group !16
  %309 = fsub <8 x float> %wide.load62, %wide.load63
  %310 = fpext <8 x float> %309 to <8 x double>
  %311 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %310, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %302)
  %312 = fptrunc <8 x double> %311 to <8 x float>
  %313 = bitcast float* %300 to <8 x float>*
  store <8 x float> %312, <8 x float>* %313, align 4, !tbaa !12, !llvm.access.group !16
  %314 = trunc i64 %mul.i.i to i32
  %315 = or i32 %314, 8
  %316 = add i32 %mul.i.3, %315
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds float, float* %0, i64 %317
  %319 = bitcast float* %318 to <8 x float>*
  %wide.load61.1 = load <8 x float>, <8 x float>* %319, align 4, !tbaa !12, !llvm.access.group !16
  %320 = fpext <8 x float> %wide.load61.1 to <8 x double>
  %321 = getelementptr inbounds float, float* %2, i64 %317
  %322 = bitcast float* %321 to <8 x float>*
  %wide.load62.1 = load <8 x float>, <8 x float>* %322, align 4, !tbaa !12, !llvm.access.group !16
  %323 = add i32 %316, -1
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds float, float* %2, i64 %324
  %326 = bitcast float* %325 to <8 x float>*
  %wide.load63.1 = load <8 x float>, <8 x float>* %326, align 4, !tbaa !12, !llvm.access.group !16
  %327 = fsub <8 x float> %wide.load62.1, %wide.load63.1
  %328 = fpext <8 x float> %327 to <8 x double>
  %329 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %328, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %320)
  %330 = fptrunc <8 x double> %329 to <8 x float>
  %331 = bitcast float* %318 to <8 x float>*
  store <8 x float> %330, <8 x float>* %331, align 4, !tbaa !12, !llvm.access.group !16
  %332 = trunc i64 %mul.i.i to i32
  %333 = or i32 %332, 16
  %334 = add i32 %mul.i.3, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds float, float* %0, i64 %335
  %337 = bitcast float* %336 to <8 x float>*
  %wide.load61.2 = load <8 x float>, <8 x float>* %337, align 4, !tbaa !12, !llvm.access.group !16
  %338 = fpext <8 x float> %wide.load61.2 to <8 x double>
  %339 = getelementptr inbounds float, float* %2, i64 %335
  %340 = bitcast float* %339 to <8 x float>*
  %wide.load62.2 = load <8 x float>, <8 x float>* %340, align 4, !tbaa !12, !llvm.access.group !16
  %341 = add i32 %334, -1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds float, float* %2, i64 %342
  %344 = bitcast float* %343 to <8 x float>*
  %wide.load63.2 = load <8 x float>, <8 x float>* %344, align 4, !tbaa !12, !llvm.access.group !16
  %345 = fsub <8 x float> %wide.load62.2, %wide.load63.2
  %346 = fpext <8 x float> %345 to <8 x double>
  %347 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %346, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %338)
  %348 = fptrunc <8 x double> %347 to <8 x float>
  %349 = bitcast float* %336 to <8 x float>*
  store <8 x float> %348, <8 x float>* %349, align 4, !tbaa !12, !llvm.access.group !16
  %350 = trunc i64 %mul.i.i to i32
  %351 = or i32 %350, 24
  %352 = add i32 %mul.i.3, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds float, float* %0, i64 %353
  %355 = bitcast float* %354 to <8 x float>*
  %wide.load61.3 = load <8 x float>, <8 x float>* %355, align 4, !tbaa !12, !llvm.access.group !16
  %356 = fpext <8 x float> %wide.load61.3 to <8 x double>
  %357 = getelementptr inbounds float, float* %2, i64 %353
  %358 = bitcast float* %357 to <8 x float>*
  %wide.load62.3 = load <8 x float>, <8 x float>* %358, align 4, !tbaa !12, !llvm.access.group !16
  %359 = add i32 %352, -1
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds float, float* %2, i64 %360
  %362 = bitcast float* %361 to <8 x float>*
  %wide.load63.3 = load <8 x float>, <8 x float>* %362, align 4, !tbaa !12, !llvm.access.group !16
  %363 = fsub <8 x float> %wide.load62.3, %wide.load63.3
  %364 = fpext <8 x float> %363 to <8 x double>
  %365 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %364, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %356)
  %366 = fptrunc <8 x double> %365 to <8 x float>
  %367 = bitcast float* %354 to <8 x float>*
  store <8 x float> %366, <8 x float>* %367, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.3

pregion_for_entry.entry.i.3:                      ; preds = %pregion_for_entry.entry.i.3, %pregion_for_entry.entry.i.3.preheader
  %_local_id_x.0.3 = phi i64 [ %377, %pregion_for_entry.entry.i.3 ], [ 0, %pregion_for_entry.entry.i.3.preheader ]
  %add1.i.i.3 = add nuw nsw i64 %_local_id_x.0.3, %mul.i.i
  %conv.i.3 = trunc i64 %add1.i.i.3 to i32
  %add.i.3 = add i32 %mul.i.3, %conv.i.3
  %idxprom.i.3 = sext i32 %add.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.3
  %368 = load float, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.3 = fpext float %368 to double
  %arrayidx7.i.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.3
  %369 = load float, float* %arrayidx7.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.3 = add i32 %add.i.3, -1
  %idxprom10.i.3 = sext i32 %add9.i.3 to i64
  %arrayidx11.i.3 = getelementptr inbounds float, float* %2, i64 %idxprom10.i.3
  %370 = load float, float* %arrayidx11.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.3 = fsub float %369, %370
  %conv13.i.3 = fpext float %sub12.i.3 to double
  %371 = tail call double @llvm.fmuladd.f64(double %conv13.i.3, double -5.000000e-01, double %conv3.i.3) #3
  %conv15.i.3 = fptrunc double %371 to float
  store float %conv15.i.3, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %372 = or i64 %_local_id_x.0.3, 1
  %add1.i.i.3.1 = add nuw nsw i64 %372, %mul.i.i
  %conv.i.3.1 = trunc i64 %add1.i.i.3.1 to i32
  %add.i.3.1 = add i32 %mul.i.3, %conv.i.3.1
  %idxprom.i.3.1 = sext i32 %add.i.3.1 to i64
  %arrayidx.i.3.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.3.1
  %373 = load float, float* %arrayidx.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.3.1 = fpext float %373 to double
  %arrayidx7.i.3.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.3.1
  %374 = load float, float* %arrayidx7.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.3.1 = add i32 %add.i.3.1, -1
  %idxprom10.i.3.1 = sext i32 %add9.i.3.1 to i64
  %arrayidx11.i.3.1 = getelementptr inbounds float, float* %2, i64 %idxprom10.i.3.1
  %375 = load float, float* %arrayidx11.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.3.1 = fsub float %374, %375
  %conv13.i.3.1 = fpext float %sub12.i.3.1 to double
  %376 = tail call double @llvm.fmuladd.f64(double %conv13.i.3.1, double -5.000000e-01, double %conv3.i.3.1) #3
  %conv15.i.3.1 = fptrunc double %376 to float
  store float %conv15.i.3.1, float* %arrayidx.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %377 = add nuw nsw i64 %_local_id_x.0.3, 2
  %exitcond.3.not.1 = icmp eq i64 %377, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.3.loopexit, label %pregion_for_entry.entry.i.3, !llvm.loop !24

pregion_for_end.i.3.loopexit:                     ; preds = %pregion_for_entry.entry.i.3
  br label %pregion_for_end.i.3

pregion_for_end.i.3:                              ; preds = %pregion_for_end.i.3.loopexit, %vector.body47
  %378 = trunc i64 %mul3.i.i to i32
  %conv2.i.4 = or i32 %378, 4
  %mul.i.4 = mul nsw i32 %conv2.i.4, %4
  %379 = mul i32 %conv2.i.4, %4
  %380 = trunc i64 %6 to i32
  %381 = shl i32 %380, 5
  %382 = add i32 %379, %381
  %383 = icmp sgt i32 %382, 2147483616
  %384 = add i32 %379, %381
  %385 = add i32 %384, -1
  %386 = add i32 %384, 30
  %387 = icmp slt i32 %386, %385
  %388 = or i1 %383, %387
  br i1 %388, label %pregion_for_entry.entry.i.4.preheader, label %vector.body66

pregion_for_entry.entry.i.4.preheader:            ; preds = %pregion_for_end.i.3
  br label %pregion_for_entry.entry.i.4

vector.body66:                                    ; preds = %pregion_for_end.i.3
  %389 = trunc i64 %mul.i.i to i32
  %390 = add i32 %mul.i.4, %389
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds float, float* %0, i64 %391
  %393 = bitcast float* %392 to <8 x float>*
  %wide.load80 = load <8 x float>, <8 x float>* %393, align 4, !tbaa !12, !llvm.access.group !16
  %394 = fpext <8 x float> %wide.load80 to <8 x double>
  %395 = getelementptr inbounds float, float* %2, i64 %391
  %396 = bitcast float* %395 to <8 x float>*
  %wide.load81 = load <8 x float>, <8 x float>* %396, align 4, !tbaa !12, !llvm.access.group !16
  %397 = add i32 %390, -1
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds float, float* %2, i64 %398
  %400 = bitcast float* %399 to <8 x float>*
  %wide.load82 = load <8 x float>, <8 x float>* %400, align 4, !tbaa !12, !llvm.access.group !16
  %401 = fsub <8 x float> %wide.load81, %wide.load82
  %402 = fpext <8 x float> %401 to <8 x double>
  %403 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %402, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %394)
  %404 = fptrunc <8 x double> %403 to <8 x float>
  %405 = bitcast float* %392 to <8 x float>*
  store <8 x float> %404, <8 x float>* %405, align 4, !tbaa !12, !llvm.access.group !16
  %406 = trunc i64 %mul.i.i to i32
  %407 = or i32 %406, 8
  %408 = add i32 %mul.i.4, %407
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds float, float* %0, i64 %409
  %411 = bitcast float* %410 to <8 x float>*
  %wide.load80.1 = load <8 x float>, <8 x float>* %411, align 4, !tbaa !12, !llvm.access.group !16
  %412 = fpext <8 x float> %wide.load80.1 to <8 x double>
  %413 = getelementptr inbounds float, float* %2, i64 %409
  %414 = bitcast float* %413 to <8 x float>*
  %wide.load81.1 = load <8 x float>, <8 x float>* %414, align 4, !tbaa !12, !llvm.access.group !16
  %415 = add i32 %408, -1
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds float, float* %2, i64 %416
  %418 = bitcast float* %417 to <8 x float>*
  %wide.load82.1 = load <8 x float>, <8 x float>* %418, align 4, !tbaa !12, !llvm.access.group !16
  %419 = fsub <8 x float> %wide.load81.1, %wide.load82.1
  %420 = fpext <8 x float> %419 to <8 x double>
  %421 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %420, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %412)
  %422 = fptrunc <8 x double> %421 to <8 x float>
  %423 = bitcast float* %410 to <8 x float>*
  store <8 x float> %422, <8 x float>* %423, align 4, !tbaa !12, !llvm.access.group !16
  %424 = trunc i64 %mul.i.i to i32
  %425 = or i32 %424, 16
  %426 = add i32 %mul.i.4, %425
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds float, float* %0, i64 %427
  %429 = bitcast float* %428 to <8 x float>*
  %wide.load80.2 = load <8 x float>, <8 x float>* %429, align 4, !tbaa !12, !llvm.access.group !16
  %430 = fpext <8 x float> %wide.load80.2 to <8 x double>
  %431 = getelementptr inbounds float, float* %2, i64 %427
  %432 = bitcast float* %431 to <8 x float>*
  %wide.load81.2 = load <8 x float>, <8 x float>* %432, align 4, !tbaa !12, !llvm.access.group !16
  %433 = add i32 %426, -1
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds float, float* %2, i64 %434
  %436 = bitcast float* %435 to <8 x float>*
  %wide.load82.2 = load <8 x float>, <8 x float>* %436, align 4, !tbaa !12, !llvm.access.group !16
  %437 = fsub <8 x float> %wide.load81.2, %wide.load82.2
  %438 = fpext <8 x float> %437 to <8 x double>
  %439 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %438, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %430)
  %440 = fptrunc <8 x double> %439 to <8 x float>
  %441 = bitcast float* %428 to <8 x float>*
  store <8 x float> %440, <8 x float>* %441, align 4, !tbaa !12, !llvm.access.group !16
  %442 = trunc i64 %mul.i.i to i32
  %443 = or i32 %442, 24
  %444 = add i32 %mul.i.4, %443
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds float, float* %0, i64 %445
  %447 = bitcast float* %446 to <8 x float>*
  %wide.load80.3 = load <8 x float>, <8 x float>* %447, align 4, !tbaa !12, !llvm.access.group !16
  %448 = fpext <8 x float> %wide.load80.3 to <8 x double>
  %449 = getelementptr inbounds float, float* %2, i64 %445
  %450 = bitcast float* %449 to <8 x float>*
  %wide.load81.3 = load <8 x float>, <8 x float>* %450, align 4, !tbaa !12, !llvm.access.group !16
  %451 = add i32 %444, -1
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds float, float* %2, i64 %452
  %454 = bitcast float* %453 to <8 x float>*
  %wide.load82.3 = load <8 x float>, <8 x float>* %454, align 4, !tbaa !12, !llvm.access.group !16
  %455 = fsub <8 x float> %wide.load81.3, %wide.load82.3
  %456 = fpext <8 x float> %455 to <8 x double>
  %457 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %456, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %448)
  %458 = fptrunc <8 x double> %457 to <8 x float>
  %459 = bitcast float* %446 to <8 x float>*
  store <8 x float> %458, <8 x float>* %459, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.4

pregion_for_entry.entry.i.4:                      ; preds = %pregion_for_entry.entry.i.4, %pregion_for_entry.entry.i.4.preheader
  %_local_id_x.0.4 = phi i64 [ %469, %pregion_for_entry.entry.i.4 ], [ 0, %pregion_for_entry.entry.i.4.preheader ]
  %add1.i.i.4 = add nuw nsw i64 %_local_id_x.0.4, %mul.i.i
  %conv.i.4 = trunc i64 %add1.i.i.4 to i32
  %add.i.4 = add i32 %mul.i.4, %conv.i.4
  %idxprom.i.4 = sext i32 %add.i.4 to i64
  %arrayidx.i.4 = getelementptr inbounds float, float* %0, i64 %idxprom.i.4
  %460 = load float, float* %arrayidx.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.4 = fpext float %460 to double
  %arrayidx7.i.4 = getelementptr inbounds float, float* %2, i64 %idxprom.i.4
  %461 = load float, float* %arrayidx7.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.4 = add i32 %add.i.4, -1
  %idxprom10.i.4 = sext i32 %add9.i.4 to i64
  %arrayidx11.i.4 = getelementptr inbounds float, float* %2, i64 %idxprom10.i.4
  %462 = load float, float* %arrayidx11.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.4 = fsub float %461, %462
  %conv13.i.4 = fpext float %sub12.i.4 to double
  %463 = tail call double @llvm.fmuladd.f64(double %conv13.i.4, double -5.000000e-01, double %conv3.i.4) #3
  %conv15.i.4 = fptrunc double %463 to float
  store float %conv15.i.4, float* %arrayidx.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %464 = or i64 %_local_id_x.0.4, 1
  %add1.i.i.4.1 = add nuw nsw i64 %464, %mul.i.i
  %conv.i.4.1 = trunc i64 %add1.i.i.4.1 to i32
  %add.i.4.1 = add i32 %mul.i.4, %conv.i.4.1
  %idxprom.i.4.1 = sext i32 %add.i.4.1 to i64
  %arrayidx.i.4.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.4.1
  %465 = load float, float* %arrayidx.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.4.1 = fpext float %465 to double
  %arrayidx7.i.4.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.4.1
  %466 = load float, float* %arrayidx7.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.4.1 = add nsw i32 %add.i.4.1, -1
  %idxprom10.i.4.1 = sext i32 %add9.i.4.1 to i64
  %arrayidx11.i.4.1 = getelementptr inbounds float, float* %2, i64 %idxprom10.i.4.1
  %467 = load float, float* %arrayidx11.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.4.1 = fsub float %466, %467
  %conv13.i.4.1 = fpext float %sub12.i.4.1 to double
  %468 = tail call double @llvm.fmuladd.f64(double %conv13.i.4.1, double -5.000000e-01, double %conv3.i.4.1) #3
  %conv15.i.4.1 = fptrunc double %468 to float
  store float %conv15.i.4.1, float* %arrayidx.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %469 = add nuw nsw i64 %_local_id_x.0.4, 2
  %exitcond.4.not.1 = icmp eq i64 %469, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.4.loopexit, label %pregion_for_entry.entry.i.4, !llvm.loop !25

pregion_for_end.i.4.loopexit:                     ; preds = %pregion_for_entry.entry.i.4
  br label %pregion_for_end.i.4

pregion_for_end.i.4:                              ; preds = %pregion_for_end.i.4.loopexit, %vector.body66
  %470 = trunc i64 %mul3.i.i to i32
  %conv2.i.5 = or i32 %470, 5
  %mul.i.5 = mul nsw i32 %conv2.i.5, %4
  %471 = mul i32 %conv2.i.5, %4
  %472 = trunc i64 %6 to i32
  %473 = shl i32 %472, 5
  %474 = add i32 %471, %473
  %475 = icmp sgt i32 %474, 2147483616
  %476 = add i32 %471, %473
  %477 = add i32 %476, -1
  %478 = add i32 %476, 30
  %479 = icmp slt i32 %478, %477
  %480 = or i1 %475, %479
  br i1 %480, label %pregion_for_entry.entry.i.5.preheader, label %vector.body85

pregion_for_entry.entry.i.5.preheader:            ; preds = %pregion_for_end.i.4
  br label %pregion_for_entry.entry.i.5

vector.body85:                                    ; preds = %pregion_for_end.i.4
  %481 = trunc i64 %mul.i.i to i32
  %482 = add i32 %mul.i.5, %481
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds float, float* %0, i64 %483
  %485 = bitcast float* %484 to <8 x float>*
  %wide.load99 = load <8 x float>, <8 x float>* %485, align 4, !tbaa !12, !llvm.access.group !16
  %486 = fpext <8 x float> %wide.load99 to <8 x double>
  %487 = getelementptr inbounds float, float* %2, i64 %483
  %488 = bitcast float* %487 to <8 x float>*
  %wide.load100 = load <8 x float>, <8 x float>* %488, align 4, !tbaa !12, !llvm.access.group !16
  %489 = add i32 %482, -1
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds float, float* %2, i64 %490
  %492 = bitcast float* %491 to <8 x float>*
  %wide.load101 = load <8 x float>, <8 x float>* %492, align 4, !tbaa !12, !llvm.access.group !16
  %493 = fsub <8 x float> %wide.load100, %wide.load101
  %494 = fpext <8 x float> %493 to <8 x double>
  %495 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %494, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %486)
  %496 = fptrunc <8 x double> %495 to <8 x float>
  %497 = bitcast float* %484 to <8 x float>*
  store <8 x float> %496, <8 x float>* %497, align 4, !tbaa !12, !llvm.access.group !16
  %498 = trunc i64 %mul.i.i to i32
  %499 = or i32 %498, 8
  %500 = add i32 %mul.i.5, %499
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds float, float* %0, i64 %501
  %503 = bitcast float* %502 to <8 x float>*
  %wide.load99.1 = load <8 x float>, <8 x float>* %503, align 4, !tbaa !12, !llvm.access.group !16
  %504 = fpext <8 x float> %wide.load99.1 to <8 x double>
  %505 = getelementptr inbounds float, float* %2, i64 %501
  %506 = bitcast float* %505 to <8 x float>*
  %wide.load100.1 = load <8 x float>, <8 x float>* %506, align 4, !tbaa !12, !llvm.access.group !16
  %507 = add i32 %500, -1
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds float, float* %2, i64 %508
  %510 = bitcast float* %509 to <8 x float>*
  %wide.load101.1 = load <8 x float>, <8 x float>* %510, align 4, !tbaa !12, !llvm.access.group !16
  %511 = fsub <8 x float> %wide.load100.1, %wide.load101.1
  %512 = fpext <8 x float> %511 to <8 x double>
  %513 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %512, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %504)
  %514 = fptrunc <8 x double> %513 to <8 x float>
  %515 = bitcast float* %502 to <8 x float>*
  store <8 x float> %514, <8 x float>* %515, align 4, !tbaa !12, !llvm.access.group !16
  %516 = trunc i64 %mul.i.i to i32
  %517 = or i32 %516, 16
  %518 = add i32 %mul.i.5, %517
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds float, float* %0, i64 %519
  %521 = bitcast float* %520 to <8 x float>*
  %wide.load99.2 = load <8 x float>, <8 x float>* %521, align 4, !tbaa !12, !llvm.access.group !16
  %522 = fpext <8 x float> %wide.load99.2 to <8 x double>
  %523 = getelementptr inbounds float, float* %2, i64 %519
  %524 = bitcast float* %523 to <8 x float>*
  %wide.load100.2 = load <8 x float>, <8 x float>* %524, align 4, !tbaa !12, !llvm.access.group !16
  %525 = add i32 %518, -1
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds float, float* %2, i64 %526
  %528 = bitcast float* %527 to <8 x float>*
  %wide.load101.2 = load <8 x float>, <8 x float>* %528, align 4, !tbaa !12, !llvm.access.group !16
  %529 = fsub <8 x float> %wide.load100.2, %wide.load101.2
  %530 = fpext <8 x float> %529 to <8 x double>
  %531 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %530, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %522)
  %532 = fptrunc <8 x double> %531 to <8 x float>
  %533 = bitcast float* %520 to <8 x float>*
  store <8 x float> %532, <8 x float>* %533, align 4, !tbaa !12, !llvm.access.group !16
  %534 = trunc i64 %mul.i.i to i32
  %535 = or i32 %534, 24
  %536 = add i32 %mul.i.5, %535
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds float, float* %0, i64 %537
  %539 = bitcast float* %538 to <8 x float>*
  %wide.load99.3 = load <8 x float>, <8 x float>* %539, align 4, !tbaa !12, !llvm.access.group !16
  %540 = fpext <8 x float> %wide.load99.3 to <8 x double>
  %541 = getelementptr inbounds float, float* %2, i64 %537
  %542 = bitcast float* %541 to <8 x float>*
  %wide.load100.3 = load <8 x float>, <8 x float>* %542, align 4, !tbaa !12, !llvm.access.group !16
  %543 = add i32 %536, -1
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds float, float* %2, i64 %544
  %546 = bitcast float* %545 to <8 x float>*
  %wide.load101.3 = load <8 x float>, <8 x float>* %546, align 4, !tbaa !12, !llvm.access.group !16
  %547 = fsub <8 x float> %wide.load100.3, %wide.load101.3
  %548 = fpext <8 x float> %547 to <8 x double>
  %549 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %548, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %540)
  %550 = fptrunc <8 x double> %549 to <8 x float>
  %551 = bitcast float* %538 to <8 x float>*
  store <8 x float> %550, <8 x float>* %551, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.5

pregion_for_entry.entry.i.5:                      ; preds = %pregion_for_entry.entry.i.5, %pregion_for_entry.entry.i.5.preheader
  %_local_id_x.0.5 = phi i64 [ %561, %pregion_for_entry.entry.i.5 ], [ 0, %pregion_for_entry.entry.i.5.preheader ]
  %add1.i.i.5 = add nuw nsw i64 %_local_id_x.0.5, %mul.i.i
  %conv.i.5 = trunc i64 %add1.i.i.5 to i32
  %add.i.5 = add i32 %mul.i.5, %conv.i.5
  %idxprom.i.5 = sext i32 %add.i.5 to i64
  %arrayidx.i.5 = getelementptr inbounds float, float* %0, i64 %idxprom.i.5
  %552 = load float, float* %arrayidx.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.5 = fpext float %552 to double
  %arrayidx7.i.5 = getelementptr inbounds float, float* %2, i64 %idxprom.i.5
  %553 = load float, float* %arrayidx7.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.5 = add i32 %add.i.5, -1
  %idxprom10.i.5 = sext i32 %add9.i.5 to i64
  %arrayidx11.i.5 = getelementptr inbounds float, float* %2, i64 %idxprom10.i.5
  %554 = load float, float* %arrayidx11.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.5 = fsub float %553, %554
  %conv13.i.5 = fpext float %sub12.i.5 to double
  %555 = tail call double @llvm.fmuladd.f64(double %conv13.i.5, double -5.000000e-01, double %conv3.i.5) #3
  %conv15.i.5 = fptrunc double %555 to float
  store float %conv15.i.5, float* %arrayidx.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %556 = or i64 %_local_id_x.0.5, 1
  %add1.i.i.5.1 = add nuw nsw i64 %556, %mul.i.i
  %conv.i.5.1 = trunc i64 %add1.i.i.5.1 to i32
  %add.i.5.1 = add i32 %mul.i.5, %conv.i.5.1
  %idxprom.i.5.1 = sext i32 %add.i.5.1 to i64
  %arrayidx.i.5.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.5.1
  %557 = load float, float* %arrayidx.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.5.1 = fpext float %557 to double
  %arrayidx7.i.5.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.5.1
  %558 = load float, float* %arrayidx7.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.5.1 = add i32 %add.i.5.1, -1
  %idxprom10.i.5.1 = sext i32 %add9.i.5.1 to i64
  %arrayidx11.i.5.1 = getelementptr inbounds float, float* %2, i64 %idxprom10.i.5.1
  %559 = load float, float* %arrayidx11.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.5.1 = fsub float %558, %559
  %conv13.i.5.1 = fpext float %sub12.i.5.1 to double
  %560 = tail call double @llvm.fmuladd.f64(double %conv13.i.5.1, double -5.000000e-01, double %conv3.i.5.1) #3
  %conv15.i.5.1 = fptrunc double %560 to float
  store float %conv15.i.5.1, float* %arrayidx.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %561 = add nuw nsw i64 %_local_id_x.0.5, 2
  %exitcond.5.not.1 = icmp eq i64 %561, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.5.loopexit, label %pregion_for_entry.entry.i.5, !llvm.loop !26

pregion_for_end.i.5.loopexit:                     ; preds = %pregion_for_entry.entry.i.5
  br label %pregion_for_end.i.5

pregion_for_end.i.5:                              ; preds = %pregion_for_end.i.5.loopexit, %vector.body85
  %562 = trunc i64 %mul3.i.i to i32
  %conv2.i.6 = or i32 %562, 6
  %mul.i.6 = mul nsw i32 %conv2.i.6, %4
  %563 = mul i32 %conv2.i.6, %4
  %564 = trunc i64 %6 to i32
  %565 = shl i32 %564, 5
  %566 = add i32 %563, %565
  %567 = icmp sgt i32 %566, 2147483616
  %568 = add i32 %563, %565
  %569 = add i32 %568, -1
  %570 = add i32 %568, 30
  %571 = icmp slt i32 %570, %569
  %572 = or i1 %567, %571
  br i1 %572, label %pregion_for_entry.entry.i.6.preheader, label %vector.body104

pregion_for_entry.entry.i.6.preheader:            ; preds = %pregion_for_end.i.5
  br label %pregion_for_entry.entry.i.6

vector.body104:                                   ; preds = %pregion_for_end.i.5
  %573 = trunc i64 %mul.i.i to i32
  %574 = add i32 %mul.i.6, %573
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds float, float* %0, i64 %575
  %577 = bitcast float* %576 to <8 x float>*
  %wide.load118 = load <8 x float>, <8 x float>* %577, align 4, !tbaa !12, !llvm.access.group !16
  %578 = fpext <8 x float> %wide.load118 to <8 x double>
  %579 = getelementptr inbounds float, float* %2, i64 %575
  %580 = bitcast float* %579 to <8 x float>*
  %wide.load119 = load <8 x float>, <8 x float>* %580, align 4, !tbaa !12, !llvm.access.group !16
  %581 = add i32 %574, -1
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds float, float* %2, i64 %582
  %584 = bitcast float* %583 to <8 x float>*
  %wide.load120 = load <8 x float>, <8 x float>* %584, align 4, !tbaa !12, !llvm.access.group !16
  %585 = fsub <8 x float> %wide.load119, %wide.load120
  %586 = fpext <8 x float> %585 to <8 x double>
  %587 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %586, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %578)
  %588 = fptrunc <8 x double> %587 to <8 x float>
  %589 = bitcast float* %576 to <8 x float>*
  store <8 x float> %588, <8 x float>* %589, align 4, !tbaa !12, !llvm.access.group !16
  %590 = trunc i64 %mul.i.i to i32
  %591 = or i32 %590, 8
  %592 = add i32 %mul.i.6, %591
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds float, float* %0, i64 %593
  %595 = bitcast float* %594 to <8 x float>*
  %wide.load118.1 = load <8 x float>, <8 x float>* %595, align 4, !tbaa !12, !llvm.access.group !16
  %596 = fpext <8 x float> %wide.load118.1 to <8 x double>
  %597 = getelementptr inbounds float, float* %2, i64 %593
  %598 = bitcast float* %597 to <8 x float>*
  %wide.load119.1 = load <8 x float>, <8 x float>* %598, align 4, !tbaa !12, !llvm.access.group !16
  %599 = add i32 %592, -1
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds float, float* %2, i64 %600
  %602 = bitcast float* %601 to <8 x float>*
  %wide.load120.1 = load <8 x float>, <8 x float>* %602, align 4, !tbaa !12, !llvm.access.group !16
  %603 = fsub <8 x float> %wide.load119.1, %wide.load120.1
  %604 = fpext <8 x float> %603 to <8 x double>
  %605 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %604, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %596)
  %606 = fptrunc <8 x double> %605 to <8 x float>
  %607 = bitcast float* %594 to <8 x float>*
  store <8 x float> %606, <8 x float>* %607, align 4, !tbaa !12, !llvm.access.group !16
  %608 = trunc i64 %mul.i.i to i32
  %609 = or i32 %608, 16
  %610 = add i32 %mul.i.6, %609
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds float, float* %0, i64 %611
  %613 = bitcast float* %612 to <8 x float>*
  %wide.load118.2 = load <8 x float>, <8 x float>* %613, align 4, !tbaa !12, !llvm.access.group !16
  %614 = fpext <8 x float> %wide.load118.2 to <8 x double>
  %615 = getelementptr inbounds float, float* %2, i64 %611
  %616 = bitcast float* %615 to <8 x float>*
  %wide.load119.2 = load <8 x float>, <8 x float>* %616, align 4, !tbaa !12, !llvm.access.group !16
  %617 = add i32 %610, -1
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds float, float* %2, i64 %618
  %620 = bitcast float* %619 to <8 x float>*
  %wide.load120.2 = load <8 x float>, <8 x float>* %620, align 4, !tbaa !12, !llvm.access.group !16
  %621 = fsub <8 x float> %wide.load119.2, %wide.load120.2
  %622 = fpext <8 x float> %621 to <8 x double>
  %623 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %622, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %614)
  %624 = fptrunc <8 x double> %623 to <8 x float>
  %625 = bitcast float* %612 to <8 x float>*
  store <8 x float> %624, <8 x float>* %625, align 4, !tbaa !12, !llvm.access.group !16
  %626 = trunc i64 %mul.i.i to i32
  %627 = or i32 %626, 24
  %628 = add i32 %mul.i.6, %627
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds float, float* %0, i64 %629
  %631 = bitcast float* %630 to <8 x float>*
  %wide.load118.3 = load <8 x float>, <8 x float>* %631, align 4, !tbaa !12, !llvm.access.group !16
  %632 = fpext <8 x float> %wide.load118.3 to <8 x double>
  %633 = getelementptr inbounds float, float* %2, i64 %629
  %634 = bitcast float* %633 to <8 x float>*
  %wide.load119.3 = load <8 x float>, <8 x float>* %634, align 4, !tbaa !12, !llvm.access.group !16
  %635 = add i32 %628, -1
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds float, float* %2, i64 %636
  %638 = bitcast float* %637 to <8 x float>*
  %wide.load120.3 = load <8 x float>, <8 x float>* %638, align 4, !tbaa !12, !llvm.access.group !16
  %639 = fsub <8 x float> %wide.load119.3, %wide.load120.3
  %640 = fpext <8 x float> %639 to <8 x double>
  %641 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %640, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %632)
  %642 = fptrunc <8 x double> %641 to <8 x float>
  %643 = bitcast float* %630 to <8 x float>*
  store <8 x float> %642, <8 x float>* %643, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.6

pregion_for_entry.entry.i.6:                      ; preds = %pregion_for_entry.entry.i.6, %pregion_for_entry.entry.i.6.preheader
  %_local_id_x.0.6 = phi i64 [ %653, %pregion_for_entry.entry.i.6 ], [ 0, %pregion_for_entry.entry.i.6.preheader ]
  %add1.i.i.6 = add nuw nsw i64 %_local_id_x.0.6, %mul.i.i
  %conv.i.6 = trunc i64 %add1.i.i.6 to i32
  %add.i.6 = add i32 %mul.i.6, %conv.i.6
  %idxprom.i.6 = sext i32 %add.i.6 to i64
  %arrayidx.i.6 = getelementptr inbounds float, float* %0, i64 %idxprom.i.6
  %644 = load float, float* %arrayidx.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.6 = fpext float %644 to double
  %arrayidx7.i.6 = getelementptr inbounds float, float* %2, i64 %idxprom.i.6
  %645 = load float, float* %arrayidx7.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.6 = add i32 %add.i.6, -1
  %idxprom10.i.6 = sext i32 %add9.i.6 to i64
  %arrayidx11.i.6 = getelementptr inbounds float, float* %2, i64 %idxprom10.i.6
  %646 = load float, float* %arrayidx11.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.6 = fsub float %645, %646
  %conv13.i.6 = fpext float %sub12.i.6 to double
  %647 = tail call double @llvm.fmuladd.f64(double %conv13.i.6, double -5.000000e-01, double %conv3.i.6) #3
  %conv15.i.6 = fptrunc double %647 to float
  store float %conv15.i.6, float* %arrayidx.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %648 = or i64 %_local_id_x.0.6, 1
  %add1.i.i.6.1 = add nuw nsw i64 %648, %mul.i.i
  %conv.i.6.1 = trunc i64 %add1.i.i.6.1 to i32
  %add.i.6.1 = add i32 %mul.i.6, %conv.i.6.1
  %idxprom.i.6.1 = sext i32 %add.i.6.1 to i64
  %arrayidx.i.6.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.6.1
  %649 = load float, float* %arrayidx.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.6.1 = fpext float %649 to double
  %arrayidx7.i.6.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.6.1
  %650 = load float, float* %arrayidx7.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.6.1 = add nsw i32 %add.i.6.1, -1
  %idxprom10.i.6.1 = sext i32 %add9.i.6.1 to i64
  %arrayidx11.i.6.1 = getelementptr inbounds float, float* %2, i64 %idxprom10.i.6.1
  %651 = load float, float* %arrayidx11.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.6.1 = fsub float %650, %651
  %conv13.i.6.1 = fpext float %sub12.i.6.1 to double
  %652 = tail call double @llvm.fmuladd.f64(double %conv13.i.6.1, double -5.000000e-01, double %conv3.i.6.1) #3
  %conv15.i.6.1 = fptrunc double %652 to float
  store float %conv15.i.6.1, float* %arrayidx.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %653 = add nuw nsw i64 %_local_id_x.0.6, 2
  %exitcond.6.not.1 = icmp eq i64 %653, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.6.loopexit, label %pregion_for_entry.entry.i.6, !llvm.loop !27

pregion_for_end.i.6.loopexit:                     ; preds = %pregion_for_entry.entry.i.6
  br label %pregion_for_end.i.6

pregion_for_end.i.6:                              ; preds = %pregion_for_end.i.6.loopexit, %vector.body104
  %654 = trunc i64 %mul3.i.i to i32
  %conv2.i.7 = or i32 %654, 7
  %mul.i.7 = mul nsw i32 %conv2.i.7, %4
  %655 = mul i32 %conv2.i.7, %4
  %656 = trunc i64 %6 to i32
  %657 = shl i32 %656, 5
  %658 = add i32 %655, %657
  %659 = icmp sgt i32 %658, 2147483616
  %660 = add i32 %655, %657
  %661 = add i32 %660, -1
  %662 = add i32 %660, 30
  %663 = icmp slt i32 %662, %661
  %664 = or i1 %659, %663
  br i1 %664, label %pregion_for_entry.entry.i.7.preheader, label %vector.body123

pregion_for_entry.entry.i.7.preheader:            ; preds = %pregion_for_end.i.6
  br label %pregion_for_entry.entry.i.7

vector.body123:                                   ; preds = %pregion_for_end.i.6
  %665 = trunc i64 %mul.i.i to i32
  %666 = add i32 %mul.i.7, %665
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds float, float* %0, i64 %667
  %669 = bitcast float* %668 to <8 x float>*
  %wide.load137 = load <8 x float>, <8 x float>* %669, align 4, !tbaa !12, !llvm.access.group !16
  %670 = fpext <8 x float> %wide.load137 to <8 x double>
  %671 = getelementptr inbounds float, float* %2, i64 %667
  %672 = bitcast float* %671 to <8 x float>*
  %wide.load138 = load <8 x float>, <8 x float>* %672, align 4, !tbaa !12, !llvm.access.group !16
  %673 = add i32 %666, -1
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds float, float* %2, i64 %674
  %676 = bitcast float* %675 to <8 x float>*
  %wide.load139 = load <8 x float>, <8 x float>* %676, align 4, !tbaa !12, !llvm.access.group !16
  %677 = fsub <8 x float> %wide.load138, %wide.load139
  %678 = fpext <8 x float> %677 to <8 x double>
  %679 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %678, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %670)
  %680 = fptrunc <8 x double> %679 to <8 x float>
  %681 = bitcast float* %668 to <8 x float>*
  store <8 x float> %680, <8 x float>* %681, align 4, !tbaa !12, !llvm.access.group !16
  %682 = trunc i64 %mul.i.i to i32
  %683 = or i32 %682, 8
  %684 = add i32 %mul.i.7, %683
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds float, float* %0, i64 %685
  %687 = bitcast float* %686 to <8 x float>*
  %wide.load137.1 = load <8 x float>, <8 x float>* %687, align 4, !tbaa !12, !llvm.access.group !16
  %688 = fpext <8 x float> %wide.load137.1 to <8 x double>
  %689 = getelementptr inbounds float, float* %2, i64 %685
  %690 = bitcast float* %689 to <8 x float>*
  %wide.load138.1 = load <8 x float>, <8 x float>* %690, align 4, !tbaa !12, !llvm.access.group !16
  %691 = add i32 %684, -1
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds float, float* %2, i64 %692
  %694 = bitcast float* %693 to <8 x float>*
  %wide.load139.1 = load <8 x float>, <8 x float>* %694, align 4, !tbaa !12, !llvm.access.group !16
  %695 = fsub <8 x float> %wide.load138.1, %wide.load139.1
  %696 = fpext <8 x float> %695 to <8 x double>
  %697 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %696, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %688)
  %698 = fptrunc <8 x double> %697 to <8 x float>
  %699 = bitcast float* %686 to <8 x float>*
  store <8 x float> %698, <8 x float>* %699, align 4, !tbaa !12, !llvm.access.group !16
  %700 = trunc i64 %mul.i.i to i32
  %701 = or i32 %700, 16
  %702 = add i32 %mul.i.7, %701
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds float, float* %0, i64 %703
  %705 = bitcast float* %704 to <8 x float>*
  %wide.load137.2 = load <8 x float>, <8 x float>* %705, align 4, !tbaa !12, !llvm.access.group !16
  %706 = fpext <8 x float> %wide.load137.2 to <8 x double>
  %707 = getelementptr inbounds float, float* %2, i64 %703
  %708 = bitcast float* %707 to <8 x float>*
  %wide.load138.2 = load <8 x float>, <8 x float>* %708, align 4, !tbaa !12, !llvm.access.group !16
  %709 = add i32 %702, -1
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds float, float* %2, i64 %710
  %712 = bitcast float* %711 to <8 x float>*
  %wide.load139.2 = load <8 x float>, <8 x float>* %712, align 4, !tbaa !12, !llvm.access.group !16
  %713 = fsub <8 x float> %wide.load138.2, %wide.load139.2
  %714 = fpext <8 x float> %713 to <8 x double>
  %715 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %714, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %706)
  %716 = fptrunc <8 x double> %715 to <8 x float>
  %717 = bitcast float* %704 to <8 x float>*
  store <8 x float> %716, <8 x float>* %717, align 4, !tbaa !12, !llvm.access.group !16
  %718 = trunc i64 %mul.i.i to i32
  %719 = or i32 %718, 24
  %720 = add i32 %mul.i.7, %719
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds float, float* %0, i64 %721
  %723 = bitcast float* %722 to <8 x float>*
  %wide.load137.3 = load <8 x float>, <8 x float>* %723, align 4, !tbaa !12, !llvm.access.group !16
  %724 = fpext <8 x float> %wide.load137.3 to <8 x double>
  %725 = getelementptr inbounds float, float* %2, i64 %721
  %726 = bitcast float* %725 to <8 x float>*
  %wide.load138.3 = load <8 x float>, <8 x float>* %726, align 4, !tbaa !12, !llvm.access.group !16
  %727 = add i32 %720, -1
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds float, float* %2, i64 %728
  %730 = bitcast float* %729 to <8 x float>*
  %wide.load139.3 = load <8 x float>, <8 x float>* %730, align 4, !tbaa !12, !llvm.access.group !16
  %731 = fsub <8 x float> %wide.load138.3, %wide.load139.3
  %732 = fpext <8 x float> %731 to <8 x double>
  %733 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %732, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %724)
  %734 = fptrunc <8 x double> %733 to <8 x float>
  %735 = bitcast float* %722 to <8 x float>*
  store <8 x float> %734, <8 x float>* %735, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.7

pregion_for_entry.entry.i.7:                      ; preds = %pregion_for_entry.entry.i.7, %pregion_for_entry.entry.i.7.preheader
  %_local_id_x.0.7 = phi i64 [ %745, %pregion_for_entry.entry.i.7 ], [ 0, %pregion_for_entry.entry.i.7.preheader ]
  %add1.i.i.7 = add nuw nsw i64 %_local_id_x.0.7, %mul.i.i
  %conv.i.7 = trunc i64 %add1.i.i.7 to i32
  %add.i.7 = add i32 %mul.i.7, %conv.i.7
  %idxprom.i.7 = sext i32 %add.i.7 to i64
  %arrayidx.i.7 = getelementptr inbounds float, float* %0, i64 %idxprom.i.7
  %736 = load float, float* %arrayidx.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.7 = fpext float %736 to double
  %arrayidx7.i.7 = getelementptr inbounds float, float* %2, i64 %idxprom.i.7
  %737 = load float, float* %arrayidx7.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.7 = add i32 %add.i.7, -1
  %idxprom10.i.7 = sext i32 %add9.i.7 to i64
  %arrayidx11.i.7 = getelementptr inbounds float, float* %2, i64 %idxprom10.i.7
  %738 = load float, float* %arrayidx11.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.7 = fsub float %737, %738
  %conv13.i.7 = fpext float %sub12.i.7 to double
  %739 = tail call double @llvm.fmuladd.f64(double %conv13.i.7, double -5.000000e-01, double %conv3.i.7) #3
  %conv15.i.7 = fptrunc double %739 to float
  store float %conv15.i.7, float* %arrayidx.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %740 = or i64 %_local_id_x.0.7, 1
  %add1.i.i.7.1 = add nuw nsw i64 %740, %mul.i.i
  %conv.i.7.1 = trunc i64 %add1.i.i.7.1 to i32
  %add.i.7.1 = add i32 %mul.i.7, %conv.i.7.1
  %idxprom.i.7.1 = sext i32 %add.i.7.1 to i64
  %arrayidx.i.7.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.7.1
  %741 = load float, float* %arrayidx.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.7.1 = fpext float %741 to double
  %arrayidx7.i.7.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.7.1
  %742 = load float, float* %arrayidx7.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.7.1 = add i32 %add.i.7.1, -1
  %idxprom10.i.7.1 = sext i32 %add9.i.7.1 to i64
  %arrayidx11.i.7.1 = getelementptr inbounds float, float* %2, i64 %idxprom10.i.7.1
  %743 = load float, float* %arrayidx11.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.7.1 = fsub float %742, %743
  %conv13.i.7.1 = fpext float %sub12.i.7.1 to double
  %744 = tail call double @llvm.fmuladd.f64(double %conv13.i.7.1, double -5.000000e-01, double %conv3.i.7.1) #3
  %conv15.i.7.1 = fptrunc double %744 to float
  store float %conv15.i.7.1, float* %arrayidx.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %745 = add nuw nsw i64 %_local_id_x.0.7, 2
  %exitcond.7.not.1 = icmp eq i64 %745, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.7.loopexit, label %pregion_for_entry.entry.i.7, !llvm.loop !28

pregion_for_end.i.7.loopexit:                     ; preds = %pregion_for_entry.entry.i.7
  br label %pregion_for_end.i.7

pregion_for_end.i.7:                              ; preds = %pregion_for_end.i.7.loopexit, %vector.body123
  ret void
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
  %12 = getelementptr i8*, i8** %0, i64 4
  %13 = bitcast i8** %12 to i32**
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %conv2.i.i = trunc i64 %mul3.i.i.i to i32
  %mul.i.i = mul nsw i32 %15, %conv2.i.i
  %16 = trunc i64 %3 to i32
  %17 = mul i32 %15, %16
  %18 = shl i32 %17, 3
  %19 = trunc i64 %2 to i32
  %20 = shl i32 %19, 5
  %21 = add i32 %18, %20
  %22 = icmp sgt i32 %21, 2147483616
  %23 = add i32 %18, %20
  %24 = add i32 %23, -1
  %25 = add i32 %23, 30
  %26 = icmp slt i32 %25, %24
  %27 = or i1 %22, %26
  br i1 %27, label %pregion_for_entry.entry.i.i.preheader, label %vector.body

pregion_for_entry.entry.i.i.preheader:            ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %pregion_for_entry.entry.i.i

vector.body:                                      ; preds = %pregion_for_entry.pregion_for_init.i.i
  %28 = trunc i64 %mul.i.i.i to i32
  %29 = add i32 %mul.i.i, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %7, i64 %30
  %32 = bitcast float* %31 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %32, align 4, !tbaa !12, !llvm.access.group !16
  %33 = fpext <8 x float> %wide.load to <8 x double>
  %34 = getelementptr inbounds float, float* %11, i64 %30
  %35 = bitcast float* %34 to <8 x float>*
  %wide.load5 = load <8 x float>, <8 x float>* %35, align 4, !tbaa !12, !llvm.access.group !16
  %36 = add i32 %29, -1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %11, i64 %37
  %39 = bitcast float* %38 to <8 x float>*
  %wide.load6 = load <8 x float>, <8 x float>* %39, align 4, !tbaa !12, !llvm.access.group !16
  %40 = fsub <8 x float> %wide.load5, %wide.load6
  %41 = fpext <8 x float> %40 to <8 x double>
  %42 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %41, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %33)
  %43 = fptrunc <8 x double> %42 to <8 x float>
  %44 = bitcast float* %31 to <8 x float>*
  store <8 x float> %43, <8 x float>* %44, align 4, !tbaa !12, !llvm.access.group !16
  %45 = trunc i64 %mul.i.i.i to i32
  %46 = or i32 %45, 8
  %47 = add i32 %mul.i.i, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %7, i64 %48
  %50 = bitcast float* %49 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %50, align 4, !tbaa !12, !llvm.access.group !16
  %51 = fpext <8 x float> %wide.load.1 to <8 x double>
  %52 = getelementptr inbounds float, float* %11, i64 %48
  %53 = bitcast float* %52 to <8 x float>*
  %wide.load5.1 = load <8 x float>, <8 x float>* %53, align 4, !tbaa !12, !llvm.access.group !16
  %54 = add i32 %47, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %11, i64 %55
  %57 = bitcast float* %56 to <8 x float>*
  %wide.load6.1 = load <8 x float>, <8 x float>* %57, align 4, !tbaa !12, !llvm.access.group !16
  %58 = fsub <8 x float> %wide.load5.1, %wide.load6.1
  %59 = fpext <8 x float> %58 to <8 x double>
  %60 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %59, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %51)
  %61 = fptrunc <8 x double> %60 to <8 x float>
  %62 = bitcast float* %49 to <8 x float>*
  store <8 x float> %61, <8 x float>* %62, align 4, !tbaa !12, !llvm.access.group !16
  %63 = trunc i64 %mul.i.i.i to i32
  %64 = or i32 %63, 16
  %65 = add i32 %mul.i.i, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %7, i64 %66
  %68 = bitcast float* %67 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %68, align 4, !tbaa !12, !llvm.access.group !16
  %69 = fpext <8 x float> %wide.load.2 to <8 x double>
  %70 = getelementptr inbounds float, float* %11, i64 %66
  %71 = bitcast float* %70 to <8 x float>*
  %wide.load5.2 = load <8 x float>, <8 x float>* %71, align 4, !tbaa !12, !llvm.access.group !16
  %72 = add i32 %65, -1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %11, i64 %73
  %75 = bitcast float* %74 to <8 x float>*
  %wide.load6.2 = load <8 x float>, <8 x float>* %75, align 4, !tbaa !12, !llvm.access.group !16
  %76 = fsub <8 x float> %wide.load5.2, %wide.load6.2
  %77 = fpext <8 x float> %76 to <8 x double>
  %78 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %77, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %69)
  %79 = fptrunc <8 x double> %78 to <8 x float>
  %80 = bitcast float* %67 to <8 x float>*
  store <8 x float> %79, <8 x float>* %80, align 4, !tbaa !12, !llvm.access.group !16
  %81 = trunc i64 %mul.i.i.i to i32
  %82 = or i32 %81, 24
  %83 = add i32 %mul.i.i, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %7, i64 %84
  %86 = bitcast float* %85 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %86, align 4, !tbaa !12, !llvm.access.group !16
  %87 = fpext <8 x float> %wide.load.3 to <8 x double>
  %88 = getelementptr inbounds float, float* %11, i64 %84
  %89 = bitcast float* %88 to <8 x float>*
  %wide.load5.3 = load <8 x float>, <8 x float>* %89, align 4, !tbaa !12, !llvm.access.group !16
  %90 = add i32 %83, -1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %11, i64 %91
  %93 = bitcast float* %92 to <8 x float>*
  %wide.load6.3 = load <8 x float>, <8 x float>* %93, align 4, !tbaa !12, !llvm.access.group !16
  %94 = fsub <8 x float> %wide.load5.3, %wide.load6.3
  %95 = fpext <8 x float> %94 to <8 x double>
  %96 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %95, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %87)
  %97 = fptrunc <8 x double> %96 to <8 x float>
  %98 = bitcast float* %85 to <8 x float>*
  store <8 x float> %97, <8 x float>* %98, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

pregion_for_end.i.i.loopexit:                     ; preds = %pregion_for_entry.entry.i.i
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.body
  %99 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.1 = or i32 %99, 1
  %mul.i.i.1 = mul nsw i32 %15, %conv2.i.i.1
  %100 = mul i32 %15, %conv2.i.i.1
  %101 = trunc i64 %2 to i32
  %102 = shl i32 %101, 5
  %103 = add i32 %100, %102
  %104 = icmp sgt i32 %103, 2147483616
  %105 = add i32 %100, %102
  %106 = add i32 %105, -1
  %107 = add i32 %105, 30
  %108 = icmp slt i32 %107, %106
  %109 = or i1 %104, %108
  br i1 %109, label %pregion_for_entry.entry.i.i.1.preheader, label %vector.body9

pregion_for_entry.entry.i.i.1.preheader:          ; preds = %pregion_for_end.i.i
  br label %pregion_for_entry.entry.i.i.1

vector.body9:                                     ; preds = %pregion_for_end.i.i
  %110 = trunc i64 %mul.i.i.i to i32
  %111 = add i32 %mul.i.i.1, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %7, i64 %112
  %114 = bitcast float* %113 to <8 x float>*
  %wide.load23 = load <8 x float>, <8 x float>* %114, align 4, !tbaa !12, !llvm.access.group !16
  %115 = fpext <8 x float> %wide.load23 to <8 x double>
  %116 = getelementptr inbounds float, float* %11, i64 %112
  %117 = bitcast float* %116 to <8 x float>*
  %wide.load24 = load <8 x float>, <8 x float>* %117, align 4, !tbaa !12, !llvm.access.group !16
  %118 = add i32 %111, -1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %11, i64 %119
  %121 = bitcast float* %120 to <8 x float>*
  %wide.load25 = load <8 x float>, <8 x float>* %121, align 4, !tbaa !12, !llvm.access.group !16
  %122 = fsub <8 x float> %wide.load24, %wide.load25
  %123 = fpext <8 x float> %122 to <8 x double>
  %124 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %123, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %115)
  %125 = fptrunc <8 x double> %124 to <8 x float>
  %126 = bitcast float* %113 to <8 x float>*
  store <8 x float> %125, <8 x float>* %126, align 4, !tbaa !12, !llvm.access.group !16
  %127 = trunc i64 %mul.i.i.i to i32
  %128 = or i32 %127, 8
  %129 = add i32 %mul.i.i.1, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %7, i64 %130
  %132 = bitcast float* %131 to <8 x float>*
  %wide.load23.1 = load <8 x float>, <8 x float>* %132, align 4, !tbaa !12, !llvm.access.group !16
  %133 = fpext <8 x float> %wide.load23.1 to <8 x double>
  %134 = getelementptr inbounds float, float* %11, i64 %130
  %135 = bitcast float* %134 to <8 x float>*
  %wide.load24.1 = load <8 x float>, <8 x float>* %135, align 4, !tbaa !12, !llvm.access.group !16
  %136 = add i32 %129, -1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %11, i64 %137
  %139 = bitcast float* %138 to <8 x float>*
  %wide.load25.1 = load <8 x float>, <8 x float>* %139, align 4, !tbaa !12, !llvm.access.group !16
  %140 = fsub <8 x float> %wide.load24.1, %wide.load25.1
  %141 = fpext <8 x float> %140 to <8 x double>
  %142 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %141, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %133)
  %143 = fptrunc <8 x double> %142 to <8 x float>
  %144 = bitcast float* %131 to <8 x float>*
  store <8 x float> %143, <8 x float>* %144, align 4, !tbaa !12, !llvm.access.group !16
  %145 = trunc i64 %mul.i.i.i to i32
  %146 = or i32 %145, 16
  %147 = add i32 %mul.i.i.1, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %7, i64 %148
  %150 = bitcast float* %149 to <8 x float>*
  %wide.load23.2 = load <8 x float>, <8 x float>* %150, align 4, !tbaa !12, !llvm.access.group !16
  %151 = fpext <8 x float> %wide.load23.2 to <8 x double>
  %152 = getelementptr inbounds float, float* %11, i64 %148
  %153 = bitcast float* %152 to <8 x float>*
  %wide.load24.2 = load <8 x float>, <8 x float>* %153, align 4, !tbaa !12, !llvm.access.group !16
  %154 = add i32 %147, -1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %11, i64 %155
  %157 = bitcast float* %156 to <8 x float>*
  %wide.load25.2 = load <8 x float>, <8 x float>* %157, align 4, !tbaa !12, !llvm.access.group !16
  %158 = fsub <8 x float> %wide.load24.2, %wide.load25.2
  %159 = fpext <8 x float> %158 to <8 x double>
  %160 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %159, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %151)
  %161 = fptrunc <8 x double> %160 to <8 x float>
  %162 = bitcast float* %149 to <8 x float>*
  store <8 x float> %161, <8 x float>* %162, align 4, !tbaa !12, !llvm.access.group !16
  %163 = trunc i64 %mul.i.i.i to i32
  %164 = or i32 %163, 24
  %165 = add i32 %mul.i.i.1, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %7, i64 %166
  %168 = bitcast float* %167 to <8 x float>*
  %wide.load23.3 = load <8 x float>, <8 x float>* %168, align 4, !tbaa !12, !llvm.access.group !16
  %169 = fpext <8 x float> %wide.load23.3 to <8 x double>
  %170 = getelementptr inbounds float, float* %11, i64 %166
  %171 = bitcast float* %170 to <8 x float>*
  %wide.load24.3 = load <8 x float>, <8 x float>* %171, align 4, !tbaa !12, !llvm.access.group !16
  %172 = add i32 %165, -1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %11, i64 %173
  %175 = bitcast float* %174 to <8 x float>*
  %wide.load25.3 = load <8 x float>, <8 x float>* %175, align 4, !tbaa !12, !llvm.access.group !16
  %176 = fsub <8 x float> %wide.load24.3, %wide.load25.3
  %177 = fpext <8 x float> %176 to <8 x double>
  %178 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %177, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %169)
  %179 = fptrunc <8 x double> %178 to <8 x float>
  %180 = bitcast float* %167 to <8 x float>*
  store <8 x float> %179, <8 x float>* %180, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.1

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %190, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %add.i.i = add i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %7, i64 %idxprom.i.i
  %181 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i = fpext float %181 to double
  %arrayidx7.i.i = getelementptr inbounds float, float* %11, i64 %idxprom.i.i
  %182 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i = add i32 %add.i.i, -1
  %idxprom10.i.i = sext i32 %add9.i.i to i64
  %arrayidx11.i.i = getelementptr inbounds float, float* %11, i64 %idxprom10.i.i
  %183 = load float, float* %arrayidx11.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i = fsub float %182, %183
  %conv13.i.i = fpext float %sub12.i.i to double
  %184 = tail call double @llvm.fmuladd.f64(double %conv13.i.i, double -5.000000e-01, double %conv3.i.i) #3
  %conv15.i.i = fptrunc double %184 to float
  store float %conv15.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %185 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1149 = add nuw nsw i64 %185, %mul.i.i.i
  %conv.i.i.1150 = trunc i64 %add1.i.i.i.1149 to i32
  %add.i.i.1151 = add i32 %mul.i.i, %conv.i.i.1150
  %idxprom.i.i.1152 = sext i32 %add.i.i.1151 to i64
  %arrayidx.i.i.1153 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.1152
  %186 = load float, float* %arrayidx.i.i.1153, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.1154 = fpext float %186 to double
  %arrayidx7.i.i.1155 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.1152
  %187 = load float, float* %arrayidx7.i.i.1155, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.1156 = add nsw i32 %add.i.i.1151, -1
  %idxprom10.i.i.1157 = sext i32 %add9.i.i.1156 to i64
  %arrayidx11.i.i.1158 = getelementptr inbounds float, float* %11, i64 %idxprom10.i.i.1157
  %188 = load float, float* %arrayidx11.i.i.1158, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.1159 = fsub float %187, %188
  %conv13.i.i.1160 = fpext float %sub12.i.i.1159 to double
  %189 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.1160, double -5.000000e-01, double %conv3.i.i.1154) #3
  %conv15.i.i.1161 = fptrunc double %189 to float
  store float %conv15.i.i.1161, float* %arrayidx.i.i.1153, align 4, !tbaa !12, !llvm.access.group !16
  %190 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %190, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !29

pregion_for_entry.entry.i.i.1:                    ; preds = %pregion_for_entry.entry.i.i.1, %pregion_for_entry.entry.i.i.1.preheader
  %_local_id_x.i.0.1 = phi i64 [ %200, %pregion_for_entry.entry.i.i.1 ], [ 0, %pregion_for_entry.entry.i.i.1.preheader ]
  %add1.i.i.i.1 = add nuw nsw i64 %_local_id_x.i.0.1, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %add.i.i.1 = add i32 %mul.i.i.1, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.1
  %191 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.1 = fpext float %191 to double
  %arrayidx7.i.i.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.1
  %192 = load float, float* %arrayidx7.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.1 = add i32 %add.i.i.1, -1
  %idxprom10.i.i.1 = sext i32 %add9.i.i.1 to i64
  %arrayidx11.i.i.1 = getelementptr inbounds float, float* %11, i64 %idxprom10.i.i.1
  %193 = load float, float* %arrayidx11.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.1 = fsub float %192, %193
  %conv13.i.i.1 = fpext float %sub12.i.i.1 to double
  %194 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.1, double -5.000000e-01, double %conv3.i.i.1) #3
  %conv15.i.i.1 = fptrunc double %194 to float
  store float %conv15.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %195 = or i64 %_local_id_x.i.0.1, 1
  %add1.i.i.i.1.1 = add nuw nsw i64 %195, %mul.i.i.i
  %conv.i.i.1.1 = trunc i64 %add1.i.i.i.1.1 to i32
  %add.i.i.1.1 = add i32 %mul.i.i.1, %conv.i.i.1.1
  %idxprom.i.i.1.1 = sext i32 %add.i.i.1.1 to i64
  %arrayidx.i.i.1.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.1.1
  %196 = load float, float* %arrayidx.i.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.1.1 = fpext float %196 to double
  %arrayidx7.i.i.1.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.1.1
  %197 = load float, float* %arrayidx7.i.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.1.1 = add i32 %add.i.i.1.1, -1
  %idxprom10.i.i.1.1 = sext i32 %add9.i.i.1.1 to i64
  %arrayidx11.i.i.1.1 = getelementptr inbounds float, float* %11, i64 %idxprom10.i.i.1.1
  %198 = load float, float* %arrayidx11.i.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.1.1 = fsub float %197, %198
  %conv13.i.i.1.1 = fpext float %sub12.i.i.1.1 to double
  %199 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.1.1, double -5.000000e-01, double %conv3.i.i.1.1) #3
  %conv15.i.i.1.1 = fptrunc double %199 to float
  store float %conv15.i.i.1.1, float* %arrayidx.i.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %200 = add nuw nsw i64 %_local_id_x.i.0.1, 2
  %exitcond.1.not.1 = icmp eq i64 %200, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.1, !llvm.loop !30

pregion_for_end.i.i.1.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.1
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.body9
  %201 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.2 = or i32 %201, 2
  %mul.i.i.2 = mul nsw i32 %15, %conv2.i.i.2
  %202 = mul i32 %15, %conv2.i.i.2
  %203 = trunc i64 %2 to i32
  %204 = shl i32 %203, 5
  %205 = add i32 %202, %204
  %206 = icmp sgt i32 %205, 2147483616
  %207 = add i32 %202, %204
  %208 = add i32 %207, -1
  %209 = add i32 %207, 30
  %210 = icmp slt i32 %209, %208
  %211 = or i1 %206, %210
  br i1 %211, label %pregion_for_entry.entry.i.i.2.preheader, label %vector.body28

pregion_for_entry.entry.i.i.2.preheader:          ; preds = %pregion_for_end.i.i.1
  br label %pregion_for_entry.entry.i.i.2

vector.body28:                                    ; preds = %pregion_for_end.i.i.1
  %212 = trunc i64 %mul.i.i.i to i32
  %213 = add i32 %mul.i.i.2, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %7, i64 %214
  %216 = bitcast float* %215 to <8 x float>*
  %wide.load42 = load <8 x float>, <8 x float>* %216, align 4, !tbaa !12, !llvm.access.group !16
  %217 = fpext <8 x float> %wide.load42 to <8 x double>
  %218 = getelementptr inbounds float, float* %11, i64 %214
  %219 = bitcast float* %218 to <8 x float>*
  %wide.load43 = load <8 x float>, <8 x float>* %219, align 4, !tbaa !12, !llvm.access.group !16
  %220 = add i32 %213, -1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, float* %11, i64 %221
  %223 = bitcast float* %222 to <8 x float>*
  %wide.load44 = load <8 x float>, <8 x float>* %223, align 4, !tbaa !12, !llvm.access.group !16
  %224 = fsub <8 x float> %wide.load43, %wide.load44
  %225 = fpext <8 x float> %224 to <8 x double>
  %226 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %225, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %217)
  %227 = fptrunc <8 x double> %226 to <8 x float>
  %228 = bitcast float* %215 to <8 x float>*
  store <8 x float> %227, <8 x float>* %228, align 4, !tbaa !12, !llvm.access.group !16
  %229 = trunc i64 %mul.i.i.i to i32
  %230 = or i32 %229, 8
  %231 = add i32 %mul.i.i.2, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %7, i64 %232
  %234 = bitcast float* %233 to <8 x float>*
  %wide.load42.1 = load <8 x float>, <8 x float>* %234, align 4, !tbaa !12, !llvm.access.group !16
  %235 = fpext <8 x float> %wide.load42.1 to <8 x double>
  %236 = getelementptr inbounds float, float* %11, i64 %232
  %237 = bitcast float* %236 to <8 x float>*
  %wide.load43.1 = load <8 x float>, <8 x float>* %237, align 4, !tbaa !12, !llvm.access.group !16
  %238 = add i32 %231, -1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %11, i64 %239
  %241 = bitcast float* %240 to <8 x float>*
  %wide.load44.1 = load <8 x float>, <8 x float>* %241, align 4, !tbaa !12, !llvm.access.group !16
  %242 = fsub <8 x float> %wide.load43.1, %wide.load44.1
  %243 = fpext <8 x float> %242 to <8 x double>
  %244 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %243, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %235)
  %245 = fptrunc <8 x double> %244 to <8 x float>
  %246 = bitcast float* %233 to <8 x float>*
  store <8 x float> %245, <8 x float>* %246, align 4, !tbaa !12, !llvm.access.group !16
  %247 = trunc i64 %mul.i.i.i to i32
  %248 = or i32 %247, 16
  %249 = add i32 %mul.i.i.2, %248
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %7, i64 %250
  %252 = bitcast float* %251 to <8 x float>*
  %wide.load42.2 = load <8 x float>, <8 x float>* %252, align 4, !tbaa !12, !llvm.access.group !16
  %253 = fpext <8 x float> %wide.load42.2 to <8 x double>
  %254 = getelementptr inbounds float, float* %11, i64 %250
  %255 = bitcast float* %254 to <8 x float>*
  %wide.load43.2 = load <8 x float>, <8 x float>* %255, align 4, !tbaa !12, !llvm.access.group !16
  %256 = add i32 %249, -1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %11, i64 %257
  %259 = bitcast float* %258 to <8 x float>*
  %wide.load44.2 = load <8 x float>, <8 x float>* %259, align 4, !tbaa !12, !llvm.access.group !16
  %260 = fsub <8 x float> %wide.load43.2, %wide.load44.2
  %261 = fpext <8 x float> %260 to <8 x double>
  %262 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %261, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %253)
  %263 = fptrunc <8 x double> %262 to <8 x float>
  %264 = bitcast float* %251 to <8 x float>*
  store <8 x float> %263, <8 x float>* %264, align 4, !tbaa !12, !llvm.access.group !16
  %265 = trunc i64 %mul.i.i.i to i32
  %266 = or i32 %265, 24
  %267 = add i32 %mul.i.i.2, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds float, float* %7, i64 %268
  %270 = bitcast float* %269 to <8 x float>*
  %wide.load42.3 = load <8 x float>, <8 x float>* %270, align 4, !tbaa !12, !llvm.access.group !16
  %271 = fpext <8 x float> %wide.load42.3 to <8 x double>
  %272 = getelementptr inbounds float, float* %11, i64 %268
  %273 = bitcast float* %272 to <8 x float>*
  %wide.load43.3 = load <8 x float>, <8 x float>* %273, align 4, !tbaa !12, !llvm.access.group !16
  %274 = add i32 %267, -1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %11, i64 %275
  %277 = bitcast float* %276 to <8 x float>*
  %wide.load44.3 = load <8 x float>, <8 x float>* %277, align 4, !tbaa !12, !llvm.access.group !16
  %278 = fsub <8 x float> %wide.load43.3, %wide.load44.3
  %279 = fpext <8 x float> %278 to <8 x double>
  %280 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %279, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %271)
  %281 = fptrunc <8 x double> %280 to <8 x float>
  %282 = bitcast float* %269 to <8 x float>*
  store <8 x float> %281, <8 x float>* %282, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.2:                    ; preds = %pregion_for_entry.entry.i.i.2, %pregion_for_entry.entry.i.i.2.preheader
  %_local_id_x.i.0.2 = phi i64 [ %292, %pregion_for_entry.entry.i.i.2 ], [ 0, %pregion_for_entry.entry.i.i.2.preheader ]
  %add1.i.i.i.2 = add nuw nsw i64 %_local_id_x.i.0.2, %mul.i.i.i
  %conv.i.i.2 = trunc i64 %add1.i.i.i.2 to i32
  %add.i.i.2 = add i32 %mul.i.i.2, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.2
  %283 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.2 = fpext float %283 to double
  %arrayidx7.i.i.2 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.2
  %284 = load float, float* %arrayidx7.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.2 = add i32 %add.i.i.2, -1
  %idxprom10.i.i.2 = sext i32 %add9.i.i.2 to i64
  %arrayidx11.i.i.2 = getelementptr inbounds float, float* %11, i64 %idxprom10.i.i.2
  %285 = load float, float* %arrayidx11.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.2 = fsub float %284, %285
  %conv13.i.i.2 = fpext float %sub12.i.i.2 to double
  %286 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.2, double -5.000000e-01, double %conv3.i.i.2) #3
  %conv15.i.i.2 = fptrunc double %286 to float
  store float %conv15.i.i.2, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %287 = or i64 %_local_id_x.i.0.2, 1
  %add1.i.i.i.2.1 = add nuw nsw i64 %287, %mul.i.i.i
  %conv.i.i.2.1 = trunc i64 %add1.i.i.i.2.1 to i32
  %add.i.i.2.1 = add i32 %mul.i.i.2, %conv.i.i.2.1
  %idxprom.i.i.2.1 = sext i32 %add.i.i.2.1 to i64
  %arrayidx.i.i.2.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.2.1
  %288 = load float, float* %arrayidx.i.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.2.1 = fpext float %288 to double
  %arrayidx7.i.i.2.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.2.1
  %289 = load float, float* %arrayidx7.i.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.2.1 = add nsw i32 %add.i.i.2.1, -1
  %idxprom10.i.i.2.1 = sext i32 %add9.i.i.2.1 to i64
  %arrayidx11.i.i.2.1 = getelementptr inbounds float, float* %11, i64 %idxprom10.i.i.2.1
  %290 = load float, float* %arrayidx11.i.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.2.1 = fsub float %289, %290
  %conv13.i.i.2.1 = fpext float %sub12.i.i.2.1 to double
  %291 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.2.1, double -5.000000e-01, double %conv3.i.i.2.1) #3
  %conv15.i.i.2.1 = fptrunc double %291 to float
  store float %conv15.i.i.2.1, float* %arrayidx.i.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %292 = add nuw nsw i64 %_local_id_x.i.0.2, 2
  %exitcond.2.not.1 = icmp eq i64 %292, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.2, !llvm.loop !31

pregion_for_end.i.i.2.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.2
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.body28
  %293 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.3 = or i32 %293, 3
  %mul.i.i.3 = mul nsw i32 %15, %conv2.i.i.3
  %294 = mul i32 %15, %conv2.i.i.3
  %295 = trunc i64 %2 to i32
  %296 = shl i32 %295, 5
  %297 = add i32 %294, %296
  %298 = icmp sgt i32 %297, 2147483616
  %299 = add i32 %294, %296
  %300 = add i32 %299, -1
  %301 = add i32 %299, 30
  %302 = icmp slt i32 %301, %300
  %303 = or i1 %298, %302
  br i1 %303, label %pregion_for_entry.entry.i.i.3.preheader, label %vector.body47

pregion_for_entry.entry.i.i.3.preheader:          ; preds = %pregion_for_end.i.i.2
  br label %pregion_for_entry.entry.i.i.3

vector.body47:                                    ; preds = %pregion_for_end.i.i.2
  %304 = trunc i64 %mul.i.i.i to i32
  %305 = add i32 %mul.i.i.3, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %7, i64 %306
  %308 = bitcast float* %307 to <8 x float>*
  %wide.load61 = load <8 x float>, <8 x float>* %308, align 4, !tbaa !12, !llvm.access.group !16
  %309 = fpext <8 x float> %wide.load61 to <8 x double>
  %310 = getelementptr inbounds float, float* %11, i64 %306
  %311 = bitcast float* %310 to <8 x float>*
  %wide.load62 = load <8 x float>, <8 x float>* %311, align 4, !tbaa !12, !llvm.access.group !16
  %312 = add i32 %305, -1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds float, float* %11, i64 %313
  %315 = bitcast float* %314 to <8 x float>*
  %wide.load63 = load <8 x float>, <8 x float>* %315, align 4, !tbaa !12, !llvm.access.group !16
  %316 = fsub <8 x float> %wide.load62, %wide.load63
  %317 = fpext <8 x float> %316 to <8 x double>
  %318 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %317, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %309)
  %319 = fptrunc <8 x double> %318 to <8 x float>
  %320 = bitcast float* %307 to <8 x float>*
  store <8 x float> %319, <8 x float>* %320, align 4, !tbaa !12, !llvm.access.group !16
  %321 = trunc i64 %mul.i.i.i to i32
  %322 = or i32 %321, 8
  %323 = add i32 %mul.i.i.3, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds float, float* %7, i64 %324
  %326 = bitcast float* %325 to <8 x float>*
  %wide.load61.1 = load <8 x float>, <8 x float>* %326, align 4, !tbaa !12, !llvm.access.group !16
  %327 = fpext <8 x float> %wide.load61.1 to <8 x double>
  %328 = getelementptr inbounds float, float* %11, i64 %324
  %329 = bitcast float* %328 to <8 x float>*
  %wide.load62.1 = load <8 x float>, <8 x float>* %329, align 4, !tbaa !12, !llvm.access.group !16
  %330 = add i32 %323, -1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds float, float* %11, i64 %331
  %333 = bitcast float* %332 to <8 x float>*
  %wide.load63.1 = load <8 x float>, <8 x float>* %333, align 4, !tbaa !12, !llvm.access.group !16
  %334 = fsub <8 x float> %wide.load62.1, %wide.load63.1
  %335 = fpext <8 x float> %334 to <8 x double>
  %336 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %335, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %327)
  %337 = fptrunc <8 x double> %336 to <8 x float>
  %338 = bitcast float* %325 to <8 x float>*
  store <8 x float> %337, <8 x float>* %338, align 4, !tbaa !12, !llvm.access.group !16
  %339 = trunc i64 %mul.i.i.i to i32
  %340 = or i32 %339, 16
  %341 = add i32 %mul.i.i.3, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds float, float* %7, i64 %342
  %344 = bitcast float* %343 to <8 x float>*
  %wide.load61.2 = load <8 x float>, <8 x float>* %344, align 4, !tbaa !12, !llvm.access.group !16
  %345 = fpext <8 x float> %wide.load61.2 to <8 x double>
  %346 = getelementptr inbounds float, float* %11, i64 %342
  %347 = bitcast float* %346 to <8 x float>*
  %wide.load62.2 = load <8 x float>, <8 x float>* %347, align 4, !tbaa !12, !llvm.access.group !16
  %348 = add i32 %341, -1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds float, float* %11, i64 %349
  %351 = bitcast float* %350 to <8 x float>*
  %wide.load63.2 = load <8 x float>, <8 x float>* %351, align 4, !tbaa !12, !llvm.access.group !16
  %352 = fsub <8 x float> %wide.load62.2, %wide.load63.2
  %353 = fpext <8 x float> %352 to <8 x double>
  %354 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %353, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %345)
  %355 = fptrunc <8 x double> %354 to <8 x float>
  %356 = bitcast float* %343 to <8 x float>*
  store <8 x float> %355, <8 x float>* %356, align 4, !tbaa !12, !llvm.access.group !16
  %357 = trunc i64 %mul.i.i.i to i32
  %358 = or i32 %357, 24
  %359 = add i32 %mul.i.i.3, %358
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds float, float* %7, i64 %360
  %362 = bitcast float* %361 to <8 x float>*
  %wide.load61.3 = load <8 x float>, <8 x float>* %362, align 4, !tbaa !12, !llvm.access.group !16
  %363 = fpext <8 x float> %wide.load61.3 to <8 x double>
  %364 = getelementptr inbounds float, float* %11, i64 %360
  %365 = bitcast float* %364 to <8 x float>*
  %wide.load62.3 = load <8 x float>, <8 x float>* %365, align 4, !tbaa !12, !llvm.access.group !16
  %366 = add i32 %359, -1
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds float, float* %11, i64 %367
  %369 = bitcast float* %368 to <8 x float>*
  %wide.load63.3 = load <8 x float>, <8 x float>* %369, align 4, !tbaa !12, !llvm.access.group !16
  %370 = fsub <8 x float> %wide.load62.3, %wide.load63.3
  %371 = fpext <8 x float> %370 to <8 x double>
  %372 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %371, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %363)
  %373 = fptrunc <8 x double> %372 to <8 x float>
  %374 = bitcast float* %361 to <8 x float>*
  store <8 x float> %373, <8 x float>* %374, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.3:                    ; preds = %pregion_for_entry.entry.i.i.3, %pregion_for_entry.entry.i.i.3.preheader
  %_local_id_x.i.0.3 = phi i64 [ %384, %pregion_for_entry.entry.i.i.3 ], [ 0, %pregion_for_entry.entry.i.i.3.preheader ]
  %add1.i.i.i.3 = add nuw nsw i64 %_local_id_x.i.0.3, %mul.i.i.i
  %conv.i.i.3 = trunc i64 %add1.i.i.i.3 to i32
  %add.i.i.3 = add i32 %mul.i.i.3, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.3
  %375 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.3 = fpext float %375 to double
  %arrayidx7.i.i.3 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.3
  %376 = load float, float* %arrayidx7.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.3 = add i32 %add.i.i.3, -1
  %idxprom10.i.i.3 = sext i32 %add9.i.i.3 to i64
  %arrayidx11.i.i.3 = getelementptr inbounds float, float* %11, i64 %idxprom10.i.i.3
  %377 = load float, float* %arrayidx11.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.3 = fsub float %376, %377
  %conv13.i.i.3 = fpext float %sub12.i.i.3 to double
  %378 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.3, double -5.000000e-01, double %conv3.i.i.3) #3
  %conv15.i.i.3 = fptrunc double %378 to float
  store float %conv15.i.i.3, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %379 = or i64 %_local_id_x.i.0.3, 1
  %add1.i.i.i.3.1 = add nuw nsw i64 %379, %mul.i.i.i
  %conv.i.i.3.1 = trunc i64 %add1.i.i.i.3.1 to i32
  %add.i.i.3.1 = add i32 %mul.i.i.3, %conv.i.i.3.1
  %idxprom.i.i.3.1 = sext i32 %add.i.i.3.1 to i64
  %arrayidx.i.i.3.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.3.1
  %380 = load float, float* %arrayidx.i.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.3.1 = fpext float %380 to double
  %arrayidx7.i.i.3.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.3.1
  %381 = load float, float* %arrayidx7.i.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.3.1 = add i32 %add.i.i.3.1, -1
  %idxprom10.i.i.3.1 = sext i32 %add9.i.i.3.1 to i64
  %arrayidx11.i.i.3.1 = getelementptr inbounds float, float* %11, i64 %idxprom10.i.i.3.1
  %382 = load float, float* %arrayidx11.i.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.3.1 = fsub float %381, %382
  %conv13.i.i.3.1 = fpext float %sub12.i.i.3.1 to double
  %383 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.3.1, double -5.000000e-01, double %conv3.i.i.3.1) #3
  %conv15.i.i.3.1 = fptrunc double %383 to float
  store float %conv15.i.i.3.1, float* %arrayidx.i.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %384 = add nuw nsw i64 %_local_id_x.i.0.3, 2
  %exitcond.3.not.1 = icmp eq i64 %384, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.3, !llvm.loop !32

pregion_for_end.i.i.3.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.3
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.body47
  %385 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.4 = or i32 %385, 4
  %mul.i.i.4 = mul nsw i32 %15, %conv2.i.i.4
  %386 = mul i32 %15, %conv2.i.i.4
  %387 = trunc i64 %2 to i32
  %388 = shl i32 %387, 5
  %389 = add i32 %386, %388
  %390 = icmp sgt i32 %389, 2147483616
  %391 = add i32 %386, %388
  %392 = add i32 %391, -1
  %393 = add i32 %391, 30
  %394 = icmp slt i32 %393, %392
  %395 = or i1 %390, %394
  br i1 %395, label %pregion_for_entry.entry.i.i.4.preheader, label %vector.body66

pregion_for_entry.entry.i.i.4.preheader:          ; preds = %pregion_for_end.i.i.3
  br label %pregion_for_entry.entry.i.i.4

vector.body66:                                    ; preds = %pregion_for_end.i.i.3
  %396 = trunc i64 %mul.i.i.i to i32
  %397 = add i32 %mul.i.i.4, %396
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds float, float* %7, i64 %398
  %400 = bitcast float* %399 to <8 x float>*
  %wide.load80 = load <8 x float>, <8 x float>* %400, align 4, !tbaa !12, !llvm.access.group !16
  %401 = fpext <8 x float> %wide.load80 to <8 x double>
  %402 = getelementptr inbounds float, float* %11, i64 %398
  %403 = bitcast float* %402 to <8 x float>*
  %wide.load81 = load <8 x float>, <8 x float>* %403, align 4, !tbaa !12, !llvm.access.group !16
  %404 = add i32 %397, -1
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds float, float* %11, i64 %405
  %407 = bitcast float* %406 to <8 x float>*
  %wide.load82 = load <8 x float>, <8 x float>* %407, align 4, !tbaa !12, !llvm.access.group !16
  %408 = fsub <8 x float> %wide.load81, %wide.load82
  %409 = fpext <8 x float> %408 to <8 x double>
  %410 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %409, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %401)
  %411 = fptrunc <8 x double> %410 to <8 x float>
  %412 = bitcast float* %399 to <8 x float>*
  store <8 x float> %411, <8 x float>* %412, align 4, !tbaa !12, !llvm.access.group !16
  %413 = trunc i64 %mul.i.i.i to i32
  %414 = or i32 %413, 8
  %415 = add i32 %mul.i.i.4, %414
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds float, float* %7, i64 %416
  %418 = bitcast float* %417 to <8 x float>*
  %wide.load80.1 = load <8 x float>, <8 x float>* %418, align 4, !tbaa !12, !llvm.access.group !16
  %419 = fpext <8 x float> %wide.load80.1 to <8 x double>
  %420 = getelementptr inbounds float, float* %11, i64 %416
  %421 = bitcast float* %420 to <8 x float>*
  %wide.load81.1 = load <8 x float>, <8 x float>* %421, align 4, !tbaa !12, !llvm.access.group !16
  %422 = add i32 %415, -1
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds float, float* %11, i64 %423
  %425 = bitcast float* %424 to <8 x float>*
  %wide.load82.1 = load <8 x float>, <8 x float>* %425, align 4, !tbaa !12, !llvm.access.group !16
  %426 = fsub <8 x float> %wide.load81.1, %wide.load82.1
  %427 = fpext <8 x float> %426 to <8 x double>
  %428 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %427, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %419)
  %429 = fptrunc <8 x double> %428 to <8 x float>
  %430 = bitcast float* %417 to <8 x float>*
  store <8 x float> %429, <8 x float>* %430, align 4, !tbaa !12, !llvm.access.group !16
  %431 = trunc i64 %mul.i.i.i to i32
  %432 = or i32 %431, 16
  %433 = add i32 %mul.i.i.4, %432
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds float, float* %7, i64 %434
  %436 = bitcast float* %435 to <8 x float>*
  %wide.load80.2 = load <8 x float>, <8 x float>* %436, align 4, !tbaa !12, !llvm.access.group !16
  %437 = fpext <8 x float> %wide.load80.2 to <8 x double>
  %438 = getelementptr inbounds float, float* %11, i64 %434
  %439 = bitcast float* %438 to <8 x float>*
  %wide.load81.2 = load <8 x float>, <8 x float>* %439, align 4, !tbaa !12, !llvm.access.group !16
  %440 = add i32 %433, -1
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds float, float* %11, i64 %441
  %443 = bitcast float* %442 to <8 x float>*
  %wide.load82.2 = load <8 x float>, <8 x float>* %443, align 4, !tbaa !12, !llvm.access.group !16
  %444 = fsub <8 x float> %wide.load81.2, %wide.load82.2
  %445 = fpext <8 x float> %444 to <8 x double>
  %446 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %445, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %437)
  %447 = fptrunc <8 x double> %446 to <8 x float>
  %448 = bitcast float* %435 to <8 x float>*
  store <8 x float> %447, <8 x float>* %448, align 4, !tbaa !12, !llvm.access.group !16
  %449 = trunc i64 %mul.i.i.i to i32
  %450 = or i32 %449, 24
  %451 = add i32 %mul.i.i.4, %450
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds float, float* %7, i64 %452
  %454 = bitcast float* %453 to <8 x float>*
  %wide.load80.3 = load <8 x float>, <8 x float>* %454, align 4, !tbaa !12, !llvm.access.group !16
  %455 = fpext <8 x float> %wide.load80.3 to <8 x double>
  %456 = getelementptr inbounds float, float* %11, i64 %452
  %457 = bitcast float* %456 to <8 x float>*
  %wide.load81.3 = load <8 x float>, <8 x float>* %457, align 4, !tbaa !12, !llvm.access.group !16
  %458 = add i32 %451, -1
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds float, float* %11, i64 %459
  %461 = bitcast float* %460 to <8 x float>*
  %wide.load82.3 = load <8 x float>, <8 x float>* %461, align 4, !tbaa !12, !llvm.access.group !16
  %462 = fsub <8 x float> %wide.load81.3, %wide.load82.3
  %463 = fpext <8 x float> %462 to <8 x double>
  %464 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %463, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %455)
  %465 = fptrunc <8 x double> %464 to <8 x float>
  %466 = bitcast float* %453 to <8 x float>*
  store <8 x float> %465, <8 x float>* %466, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.4:                    ; preds = %pregion_for_entry.entry.i.i.4, %pregion_for_entry.entry.i.i.4.preheader
  %_local_id_x.i.0.4 = phi i64 [ %476, %pregion_for_entry.entry.i.i.4 ], [ 0, %pregion_for_entry.entry.i.i.4.preheader ]
  %add1.i.i.i.4 = add nuw nsw i64 %_local_id_x.i.0.4, %mul.i.i.i
  %conv.i.i.4 = trunc i64 %add1.i.i.i.4 to i32
  %add.i.i.4 = add i32 %mul.i.i.4, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.4
  %467 = load float, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.4 = fpext float %467 to double
  %arrayidx7.i.i.4 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.4
  %468 = load float, float* %arrayidx7.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.4 = add i32 %add.i.i.4, -1
  %idxprom10.i.i.4 = sext i32 %add9.i.i.4 to i64
  %arrayidx11.i.i.4 = getelementptr inbounds float, float* %11, i64 %idxprom10.i.i.4
  %469 = load float, float* %arrayidx11.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.4 = fsub float %468, %469
  %conv13.i.i.4 = fpext float %sub12.i.i.4 to double
  %470 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.4, double -5.000000e-01, double %conv3.i.i.4) #3
  %conv15.i.i.4 = fptrunc double %470 to float
  store float %conv15.i.i.4, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %471 = or i64 %_local_id_x.i.0.4, 1
  %add1.i.i.i.4.1 = add nuw nsw i64 %471, %mul.i.i.i
  %conv.i.i.4.1 = trunc i64 %add1.i.i.i.4.1 to i32
  %add.i.i.4.1 = add i32 %mul.i.i.4, %conv.i.i.4.1
  %idxprom.i.i.4.1 = sext i32 %add.i.i.4.1 to i64
  %arrayidx.i.i.4.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.4.1
  %472 = load float, float* %arrayidx.i.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.4.1 = fpext float %472 to double
  %arrayidx7.i.i.4.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.4.1
  %473 = load float, float* %arrayidx7.i.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.4.1 = add nsw i32 %add.i.i.4.1, -1
  %idxprom10.i.i.4.1 = sext i32 %add9.i.i.4.1 to i64
  %arrayidx11.i.i.4.1 = getelementptr inbounds float, float* %11, i64 %idxprom10.i.i.4.1
  %474 = load float, float* %arrayidx11.i.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.4.1 = fsub float %473, %474
  %conv13.i.i.4.1 = fpext float %sub12.i.i.4.1 to double
  %475 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.4.1, double -5.000000e-01, double %conv3.i.i.4.1) #3
  %conv15.i.i.4.1 = fptrunc double %475 to float
  store float %conv15.i.i.4.1, float* %arrayidx.i.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %476 = add nuw nsw i64 %_local_id_x.i.0.4, 2
  %exitcond.4.not.1 = icmp eq i64 %476, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.4, !llvm.loop !33

pregion_for_end.i.i.4.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.4
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.body66
  %477 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.5 = or i32 %477, 5
  %mul.i.i.5 = mul nsw i32 %15, %conv2.i.i.5
  %478 = mul i32 %15, %conv2.i.i.5
  %479 = trunc i64 %2 to i32
  %480 = shl i32 %479, 5
  %481 = add i32 %478, %480
  %482 = icmp sgt i32 %481, 2147483616
  %483 = add i32 %478, %480
  %484 = add i32 %483, -1
  %485 = add i32 %483, 30
  %486 = icmp slt i32 %485, %484
  %487 = or i1 %482, %486
  br i1 %487, label %pregion_for_entry.entry.i.i.5.preheader, label %vector.body85

pregion_for_entry.entry.i.i.5.preheader:          ; preds = %pregion_for_end.i.i.4
  br label %pregion_for_entry.entry.i.i.5

vector.body85:                                    ; preds = %pregion_for_end.i.i.4
  %488 = trunc i64 %mul.i.i.i to i32
  %489 = add i32 %mul.i.i.5, %488
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds float, float* %7, i64 %490
  %492 = bitcast float* %491 to <8 x float>*
  %wide.load99 = load <8 x float>, <8 x float>* %492, align 4, !tbaa !12, !llvm.access.group !16
  %493 = fpext <8 x float> %wide.load99 to <8 x double>
  %494 = getelementptr inbounds float, float* %11, i64 %490
  %495 = bitcast float* %494 to <8 x float>*
  %wide.load100 = load <8 x float>, <8 x float>* %495, align 4, !tbaa !12, !llvm.access.group !16
  %496 = add i32 %489, -1
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds float, float* %11, i64 %497
  %499 = bitcast float* %498 to <8 x float>*
  %wide.load101 = load <8 x float>, <8 x float>* %499, align 4, !tbaa !12, !llvm.access.group !16
  %500 = fsub <8 x float> %wide.load100, %wide.load101
  %501 = fpext <8 x float> %500 to <8 x double>
  %502 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %501, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %493)
  %503 = fptrunc <8 x double> %502 to <8 x float>
  %504 = bitcast float* %491 to <8 x float>*
  store <8 x float> %503, <8 x float>* %504, align 4, !tbaa !12, !llvm.access.group !16
  %505 = trunc i64 %mul.i.i.i to i32
  %506 = or i32 %505, 8
  %507 = add i32 %mul.i.i.5, %506
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds float, float* %7, i64 %508
  %510 = bitcast float* %509 to <8 x float>*
  %wide.load99.1 = load <8 x float>, <8 x float>* %510, align 4, !tbaa !12, !llvm.access.group !16
  %511 = fpext <8 x float> %wide.load99.1 to <8 x double>
  %512 = getelementptr inbounds float, float* %11, i64 %508
  %513 = bitcast float* %512 to <8 x float>*
  %wide.load100.1 = load <8 x float>, <8 x float>* %513, align 4, !tbaa !12, !llvm.access.group !16
  %514 = add i32 %507, -1
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds float, float* %11, i64 %515
  %517 = bitcast float* %516 to <8 x float>*
  %wide.load101.1 = load <8 x float>, <8 x float>* %517, align 4, !tbaa !12, !llvm.access.group !16
  %518 = fsub <8 x float> %wide.load100.1, %wide.load101.1
  %519 = fpext <8 x float> %518 to <8 x double>
  %520 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %519, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %511)
  %521 = fptrunc <8 x double> %520 to <8 x float>
  %522 = bitcast float* %509 to <8 x float>*
  store <8 x float> %521, <8 x float>* %522, align 4, !tbaa !12, !llvm.access.group !16
  %523 = trunc i64 %mul.i.i.i to i32
  %524 = or i32 %523, 16
  %525 = add i32 %mul.i.i.5, %524
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds float, float* %7, i64 %526
  %528 = bitcast float* %527 to <8 x float>*
  %wide.load99.2 = load <8 x float>, <8 x float>* %528, align 4, !tbaa !12, !llvm.access.group !16
  %529 = fpext <8 x float> %wide.load99.2 to <8 x double>
  %530 = getelementptr inbounds float, float* %11, i64 %526
  %531 = bitcast float* %530 to <8 x float>*
  %wide.load100.2 = load <8 x float>, <8 x float>* %531, align 4, !tbaa !12, !llvm.access.group !16
  %532 = add i32 %525, -1
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds float, float* %11, i64 %533
  %535 = bitcast float* %534 to <8 x float>*
  %wide.load101.2 = load <8 x float>, <8 x float>* %535, align 4, !tbaa !12, !llvm.access.group !16
  %536 = fsub <8 x float> %wide.load100.2, %wide.load101.2
  %537 = fpext <8 x float> %536 to <8 x double>
  %538 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %537, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %529)
  %539 = fptrunc <8 x double> %538 to <8 x float>
  %540 = bitcast float* %527 to <8 x float>*
  store <8 x float> %539, <8 x float>* %540, align 4, !tbaa !12, !llvm.access.group !16
  %541 = trunc i64 %mul.i.i.i to i32
  %542 = or i32 %541, 24
  %543 = add i32 %mul.i.i.5, %542
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds float, float* %7, i64 %544
  %546 = bitcast float* %545 to <8 x float>*
  %wide.load99.3 = load <8 x float>, <8 x float>* %546, align 4, !tbaa !12, !llvm.access.group !16
  %547 = fpext <8 x float> %wide.load99.3 to <8 x double>
  %548 = getelementptr inbounds float, float* %11, i64 %544
  %549 = bitcast float* %548 to <8 x float>*
  %wide.load100.3 = load <8 x float>, <8 x float>* %549, align 4, !tbaa !12, !llvm.access.group !16
  %550 = add i32 %543, -1
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds float, float* %11, i64 %551
  %553 = bitcast float* %552 to <8 x float>*
  %wide.load101.3 = load <8 x float>, <8 x float>* %553, align 4, !tbaa !12, !llvm.access.group !16
  %554 = fsub <8 x float> %wide.load100.3, %wide.load101.3
  %555 = fpext <8 x float> %554 to <8 x double>
  %556 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %555, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %547)
  %557 = fptrunc <8 x double> %556 to <8 x float>
  %558 = bitcast float* %545 to <8 x float>*
  store <8 x float> %557, <8 x float>* %558, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.5:                    ; preds = %pregion_for_entry.entry.i.i.5, %pregion_for_entry.entry.i.i.5.preheader
  %_local_id_x.i.0.5 = phi i64 [ %568, %pregion_for_entry.entry.i.i.5 ], [ 0, %pregion_for_entry.entry.i.i.5.preheader ]
  %add1.i.i.i.5 = add nuw nsw i64 %_local_id_x.i.0.5, %mul.i.i.i
  %conv.i.i.5 = trunc i64 %add1.i.i.i.5 to i32
  %add.i.i.5 = add i32 %mul.i.i.5, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.5
  %559 = load float, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.5 = fpext float %559 to double
  %arrayidx7.i.i.5 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.5
  %560 = load float, float* %arrayidx7.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.5 = add i32 %add.i.i.5, -1
  %idxprom10.i.i.5 = sext i32 %add9.i.i.5 to i64
  %arrayidx11.i.i.5 = getelementptr inbounds float, float* %11, i64 %idxprom10.i.i.5
  %561 = load float, float* %arrayidx11.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.5 = fsub float %560, %561
  %conv13.i.i.5 = fpext float %sub12.i.i.5 to double
  %562 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.5, double -5.000000e-01, double %conv3.i.i.5) #3
  %conv15.i.i.5 = fptrunc double %562 to float
  store float %conv15.i.i.5, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %563 = or i64 %_local_id_x.i.0.5, 1
  %add1.i.i.i.5.1 = add nuw nsw i64 %563, %mul.i.i.i
  %conv.i.i.5.1 = trunc i64 %add1.i.i.i.5.1 to i32
  %add.i.i.5.1 = add i32 %mul.i.i.5, %conv.i.i.5.1
  %idxprom.i.i.5.1 = sext i32 %add.i.i.5.1 to i64
  %arrayidx.i.i.5.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.5.1
  %564 = load float, float* %arrayidx.i.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.5.1 = fpext float %564 to double
  %arrayidx7.i.i.5.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.5.1
  %565 = load float, float* %arrayidx7.i.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.5.1 = add i32 %add.i.i.5.1, -1
  %idxprom10.i.i.5.1 = sext i32 %add9.i.i.5.1 to i64
  %arrayidx11.i.i.5.1 = getelementptr inbounds float, float* %11, i64 %idxprom10.i.i.5.1
  %566 = load float, float* %arrayidx11.i.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.5.1 = fsub float %565, %566
  %conv13.i.i.5.1 = fpext float %sub12.i.i.5.1 to double
  %567 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.5.1, double -5.000000e-01, double %conv3.i.i.5.1) #3
  %conv15.i.i.5.1 = fptrunc double %567 to float
  store float %conv15.i.i.5.1, float* %arrayidx.i.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %568 = add nuw nsw i64 %_local_id_x.i.0.5, 2
  %exitcond.5.not.1 = icmp eq i64 %568, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.5, !llvm.loop !34

pregion_for_end.i.i.5.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.5
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.body85
  %569 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.6 = or i32 %569, 6
  %mul.i.i.6 = mul nsw i32 %15, %conv2.i.i.6
  %570 = mul i32 %15, %conv2.i.i.6
  %571 = trunc i64 %2 to i32
  %572 = shl i32 %571, 5
  %573 = add i32 %570, %572
  %574 = icmp sgt i32 %573, 2147483616
  %575 = add i32 %570, %572
  %576 = add i32 %575, -1
  %577 = add i32 %575, 30
  %578 = icmp slt i32 %577, %576
  %579 = or i1 %574, %578
  br i1 %579, label %pregion_for_entry.entry.i.i.6.preheader, label %vector.body104

pregion_for_entry.entry.i.i.6.preheader:          ; preds = %pregion_for_end.i.i.5
  br label %pregion_for_entry.entry.i.i.6

vector.body104:                                   ; preds = %pregion_for_end.i.i.5
  %580 = trunc i64 %mul.i.i.i to i32
  %581 = add i32 %mul.i.i.6, %580
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds float, float* %7, i64 %582
  %584 = bitcast float* %583 to <8 x float>*
  %wide.load118 = load <8 x float>, <8 x float>* %584, align 4, !tbaa !12, !llvm.access.group !16
  %585 = fpext <8 x float> %wide.load118 to <8 x double>
  %586 = getelementptr inbounds float, float* %11, i64 %582
  %587 = bitcast float* %586 to <8 x float>*
  %wide.load119 = load <8 x float>, <8 x float>* %587, align 4, !tbaa !12, !llvm.access.group !16
  %588 = add i32 %581, -1
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds float, float* %11, i64 %589
  %591 = bitcast float* %590 to <8 x float>*
  %wide.load120 = load <8 x float>, <8 x float>* %591, align 4, !tbaa !12, !llvm.access.group !16
  %592 = fsub <8 x float> %wide.load119, %wide.load120
  %593 = fpext <8 x float> %592 to <8 x double>
  %594 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %593, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %585)
  %595 = fptrunc <8 x double> %594 to <8 x float>
  %596 = bitcast float* %583 to <8 x float>*
  store <8 x float> %595, <8 x float>* %596, align 4, !tbaa !12, !llvm.access.group !16
  %597 = trunc i64 %mul.i.i.i to i32
  %598 = or i32 %597, 8
  %599 = add i32 %mul.i.i.6, %598
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds float, float* %7, i64 %600
  %602 = bitcast float* %601 to <8 x float>*
  %wide.load118.1 = load <8 x float>, <8 x float>* %602, align 4, !tbaa !12, !llvm.access.group !16
  %603 = fpext <8 x float> %wide.load118.1 to <8 x double>
  %604 = getelementptr inbounds float, float* %11, i64 %600
  %605 = bitcast float* %604 to <8 x float>*
  %wide.load119.1 = load <8 x float>, <8 x float>* %605, align 4, !tbaa !12, !llvm.access.group !16
  %606 = add i32 %599, -1
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds float, float* %11, i64 %607
  %609 = bitcast float* %608 to <8 x float>*
  %wide.load120.1 = load <8 x float>, <8 x float>* %609, align 4, !tbaa !12, !llvm.access.group !16
  %610 = fsub <8 x float> %wide.load119.1, %wide.load120.1
  %611 = fpext <8 x float> %610 to <8 x double>
  %612 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %611, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %603)
  %613 = fptrunc <8 x double> %612 to <8 x float>
  %614 = bitcast float* %601 to <8 x float>*
  store <8 x float> %613, <8 x float>* %614, align 4, !tbaa !12, !llvm.access.group !16
  %615 = trunc i64 %mul.i.i.i to i32
  %616 = or i32 %615, 16
  %617 = add i32 %mul.i.i.6, %616
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds float, float* %7, i64 %618
  %620 = bitcast float* %619 to <8 x float>*
  %wide.load118.2 = load <8 x float>, <8 x float>* %620, align 4, !tbaa !12, !llvm.access.group !16
  %621 = fpext <8 x float> %wide.load118.2 to <8 x double>
  %622 = getelementptr inbounds float, float* %11, i64 %618
  %623 = bitcast float* %622 to <8 x float>*
  %wide.load119.2 = load <8 x float>, <8 x float>* %623, align 4, !tbaa !12, !llvm.access.group !16
  %624 = add i32 %617, -1
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds float, float* %11, i64 %625
  %627 = bitcast float* %626 to <8 x float>*
  %wide.load120.2 = load <8 x float>, <8 x float>* %627, align 4, !tbaa !12, !llvm.access.group !16
  %628 = fsub <8 x float> %wide.load119.2, %wide.load120.2
  %629 = fpext <8 x float> %628 to <8 x double>
  %630 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %629, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %621)
  %631 = fptrunc <8 x double> %630 to <8 x float>
  %632 = bitcast float* %619 to <8 x float>*
  store <8 x float> %631, <8 x float>* %632, align 4, !tbaa !12, !llvm.access.group !16
  %633 = trunc i64 %mul.i.i.i to i32
  %634 = or i32 %633, 24
  %635 = add i32 %mul.i.i.6, %634
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds float, float* %7, i64 %636
  %638 = bitcast float* %637 to <8 x float>*
  %wide.load118.3 = load <8 x float>, <8 x float>* %638, align 4, !tbaa !12, !llvm.access.group !16
  %639 = fpext <8 x float> %wide.load118.3 to <8 x double>
  %640 = getelementptr inbounds float, float* %11, i64 %636
  %641 = bitcast float* %640 to <8 x float>*
  %wide.load119.3 = load <8 x float>, <8 x float>* %641, align 4, !tbaa !12, !llvm.access.group !16
  %642 = add i32 %635, -1
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds float, float* %11, i64 %643
  %645 = bitcast float* %644 to <8 x float>*
  %wide.load120.3 = load <8 x float>, <8 x float>* %645, align 4, !tbaa !12, !llvm.access.group !16
  %646 = fsub <8 x float> %wide.load119.3, %wide.load120.3
  %647 = fpext <8 x float> %646 to <8 x double>
  %648 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %647, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %639)
  %649 = fptrunc <8 x double> %648 to <8 x float>
  %650 = bitcast float* %637 to <8 x float>*
  store <8 x float> %649, <8 x float>* %650, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.6:                    ; preds = %pregion_for_entry.entry.i.i.6, %pregion_for_entry.entry.i.i.6.preheader
  %_local_id_x.i.0.6 = phi i64 [ %660, %pregion_for_entry.entry.i.i.6 ], [ 0, %pregion_for_entry.entry.i.i.6.preheader ]
  %add1.i.i.i.6 = add nuw nsw i64 %_local_id_x.i.0.6, %mul.i.i.i
  %conv.i.i.6 = trunc i64 %add1.i.i.i.6 to i32
  %add.i.i.6 = add i32 %mul.i.i.6, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.6
  %651 = load float, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.6 = fpext float %651 to double
  %arrayidx7.i.i.6 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.6
  %652 = load float, float* %arrayidx7.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.6 = add i32 %add.i.i.6, -1
  %idxprom10.i.i.6 = sext i32 %add9.i.i.6 to i64
  %arrayidx11.i.i.6 = getelementptr inbounds float, float* %11, i64 %idxprom10.i.i.6
  %653 = load float, float* %arrayidx11.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.6 = fsub float %652, %653
  %conv13.i.i.6 = fpext float %sub12.i.i.6 to double
  %654 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.6, double -5.000000e-01, double %conv3.i.i.6) #3
  %conv15.i.i.6 = fptrunc double %654 to float
  store float %conv15.i.i.6, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %655 = or i64 %_local_id_x.i.0.6, 1
  %add1.i.i.i.6.1 = add nuw nsw i64 %655, %mul.i.i.i
  %conv.i.i.6.1 = trunc i64 %add1.i.i.i.6.1 to i32
  %add.i.i.6.1 = add i32 %mul.i.i.6, %conv.i.i.6.1
  %idxprom.i.i.6.1 = sext i32 %add.i.i.6.1 to i64
  %arrayidx.i.i.6.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.6.1
  %656 = load float, float* %arrayidx.i.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.6.1 = fpext float %656 to double
  %arrayidx7.i.i.6.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.6.1
  %657 = load float, float* %arrayidx7.i.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.6.1 = add nsw i32 %add.i.i.6.1, -1
  %idxprom10.i.i.6.1 = sext i32 %add9.i.i.6.1 to i64
  %arrayidx11.i.i.6.1 = getelementptr inbounds float, float* %11, i64 %idxprom10.i.i.6.1
  %658 = load float, float* %arrayidx11.i.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.6.1 = fsub float %657, %658
  %conv13.i.i.6.1 = fpext float %sub12.i.i.6.1 to double
  %659 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.6.1, double -5.000000e-01, double %conv3.i.i.6.1) #3
  %conv15.i.i.6.1 = fptrunc double %659 to float
  store float %conv15.i.i.6.1, float* %arrayidx.i.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %660 = add nuw nsw i64 %_local_id_x.i.0.6, 2
  %exitcond.6.not.1 = icmp eq i64 %660, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.6, !llvm.loop !35

pregion_for_end.i.i.6.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.6
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.body104
  %661 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.7 = or i32 %661, 7
  %mul.i.i.7 = mul nsw i32 %15, %conv2.i.i.7
  %662 = mul i32 %15, %conv2.i.i.7
  %663 = trunc i64 %2 to i32
  %664 = shl i32 %663, 5
  %665 = add i32 %662, %664
  %666 = icmp sgt i32 %665, 2147483616
  %667 = add i32 %662, %664
  %668 = add i32 %667, -1
  %669 = add i32 %667, 30
  %670 = icmp slt i32 %669, %668
  %671 = or i1 %666, %670
  br i1 %671, label %pregion_for_entry.entry.i.i.7.preheader, label %vector.body123

pregion_for_entry.entry.i.i.7.preheader:          ; preds = %pregion_for_end.i.i.6
  br label %pregion_for_entry.entry.i.i.7

vector.body123:                                   ; preds = %pregion_for_end.i.i.6
  %672 = trunc i64 %mul.i.i.i to i32
  %673 = add i32 %mul.i.i.7, %672
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds float, float* %7, i64 %674
  %676 = bitcast float* %675 to <8 x float>*
  %wide.load137 = load <8 x float>, <8 x float>* %676, align 4, !tbaa !12, !llvm.access.group !16
  %677 = fpext <8 x float> %wide.load137 to <8 x double>
  %678 = getelementptr inbounds float, float* %11, i64 %674
  %679 = bitcast float* %678 to <8 x float>*
  %wide.load138 = load <8 x float>, <8 x float>* %679, align 4, !tbaa !12, !llvm.access.group !16
  %680 = add i32 %673, -1
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds float, float* %11, i64 %681
  %683 = bitcast float* %682 to <8 x float>*
  %wide.load139 = load <8 x float>, <8 x float>* %683, align 4, !tbaa !12, !llvm.access.group !16
  %684 = fsub <8 x float> %wide.load138, %wide.load139
  %685 = fpext <8 x float> %684 to <8 x double>
  %686 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %685, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %677)
  %687 = fptrunc <8 x double> %686 to <8 x float>
  %688 = bitcast float* %675 to <8 x float>*
  store <8 x float> %687, <8 x float>* %688, align 4, !tbaa !12, !llvm.access.group !16
  %689 = trunc i64 %mul.i.i.i to i32
  %690 = or i32 %689, 8
  %691 = add i32 %mul.i.i.7, %690
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds float, float* %7, i64 %692
  %694 = bitcast float* %693 to <8 x float>*
  %wide.load137.1 = load <8 x float>, <8 x float>* %694, align 4, !tbaa !12, !llvm.access.group !16
  %695 = fpext <8 x float> %wide.load137.1 to <8 x double>
  %696 = getelementptr inbounds float, float* %11, i64 %692
  %697 = bitcast float* %696 to <8 x float>*
  %wide.load138.1 = load <8 x float>, <8 x float>* %697, align 4, !tbaa !12, !llvm.access.group !16
  %698 = add i32 %691, -1
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds float, float* %11, i64 %699
  %701 = bitcast float* %700 to <8 x float>*
  %wide.load139.1 = load <8 x float>, <8 x float>* %701, align 4, !tbaa !12, !llvm.access.group !16
  %702 = fsub <8 x float> %wide.load138.1, %wide.load139.1
  %703 = fpext <8 x float> %702 to <8 x double>
  %704 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %703, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %695)
  %705 = fptrunc <8 x double> %704 to <8 x float>
  %706 = bitcast float* %693 to <8 x float>*
  store <8 x float> %705, <8 x float>* %706, align 4, !tbaa !12, !llvm.access.group !16
  %707 = trunc i64 %mul.i.i.i to i32
  %708 = or i32 %707, 16
  %709 = add i32 %mul.i.i.7, %708
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds float, float* %7, i64 %710
  %712 = bitcast float* %711 to <8 x float>*
  %wide.load137.2 = load <8 x float>, <8 x float>* %712, align 4, !tbaa !12, !llvm.access.group !16
  %713 = fpext <8 x float> %wide.load137.2 to <8 x double>
  %714 = getelementptr inbounds float, float* %11, i64 %710
  %715 = bitcast float* %714 to <8 x float>*
  %wide.load138.2 = load <8 x float>, <8 x float>* %715, align 4, !tbaa !12, !llvm.access.group !16
  %716 = add i32 %709, -1
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds float, float* %11, i64 %717
  %719 = bitcast float* %718 to <8 x float>*
  %wide.load139.2 = load <8 x float>, <8 x float>* %719, align 4, !tbaa !12, !llvm.access.group !16
  %720 = fsub <8 x float> %wide.load138.2, %wide.load139.2
  %721 = fpext <8 x float> %720 to <8 x double>
  %722 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %721, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %713)
  %723 = fptrunc <8 x double> %722 to <8 x float>
  %724 = bitcast float* %711 to <8 x float>*
  store <8 x float> %723, <8 x float>* %724, align 4, !tbaa !12, !llvm.access.group !16
  %725 = trunc i64 %mul.i.i.i to i32
  %726 = or i32 %725, 24
  %727 = add i32 %mul.i.i.7, %726
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds float, float* %7, i64 %728
  %730 = bitcast float* %729 to <8 x float>*
  %wide.load137.3 = load <8 x float>, <8 x float>* %730, align 4, !tbaa !12, !llvm.access.group !16
  %731 = fpext <8 x float> %wide.load137.3 to <8 x double>
  %732 = getelementptr inbounds float, float* %11, i64 %728
  %733 = bitcast float* %732 to <8 x float>*
  %wide.load138.3 = load <8 x float>, <8 x float>* %733, align 4, !tbaa !12, !llvm.access.group !16
  %734 = add i32 %727, -1
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds float, float* %11, i64 %735
  %737 = bitcast float* %736 to <8 x float>*
  %wide.load139.3 = load <8 x float>, <8 x float>* %737, align 4, !tbaa !12, !llvm.access.group !16
  %738 = fsub <8 x float> %wide.load138.3, %wide.load139.3
  %739 = fpext <8 x float> %738 to <8 x double>
  %740 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %739, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %731)
  %741 = fptrunc <8 x double> %740 to <8 x float>
  %742 = bitcast float* %729 to <8 x float>*
  store <8 x float> %741, <8 x float>* %742, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.7

pregion_for_entry.entry.i.i.7:                    ; preds = %pregion_for_entry.entry.i.i.7, %pregion_for_entry.entry.i.i.7.preheader
  %_local_id_x.i.0.7 = phi i64 [ %752, %pregion_for_entry.entry.i.i.7 ], [ 0, %pregion_for_entry.entry.i.i.7.preheader ]
  %add1.i.i.i.7 = add nuw nsw i64 %_local_id_x.i.0.7, %mul.i.i.i
  %conv.i.i.7 = trunc i64 %add1.i.i.i.7 to i32
  %add.i.i.7 = add i32 %mul.i.i.7, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.7
  %743 = load float, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.7 = fpext float %743 to double
  %arrayidx7.i.i.7 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.7
  %744 = load float, float* %arrayidx7.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.7 = add i32 %add.i.i.7, -1
  %idxprom10.i.i.7 = sext i32 %add9.i.i.7 to i64
  %arrayidx11.i.i.7 = getelementptr inbounds float, float* %11, i64 %idxprom10.i.i.7
  %745 = load float, float* %arrayidx11.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.7 = fsub float %744, %745
  %conv13.i.i.7 = fpext float %sub12.i.i.7 to double
  %746 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.7, double -5.000000e-01, double %conv3.i.i.7) #3
  %conv15.i.i.7 = fptrunc double %746 to float
  store float %conv15.i.i.7, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %747 = or i64 %_local_id_x.i.0.7, 1
  %add1.i.i.i.7.1 = add nuw nsw i64 %747, %mul.i.i.i
  %conv.i.i.7.1 = trunc i64 %add1.i.i.i.7.1 to i32
  %add.i.i.7.1 = add i32 %mul.i.i.7, %conv.i.i.7.1
  %idxprom.i.i.7.1 = sext i32 %add.i.i.7.1 to i64
  %arrayidx.i.i.7.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.7.1
  %748 = load float, float* %arrayidx.i.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.7.1 = fpext float %748 to double
  %arrayidx7.i.i.7.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.7.1
  %749 = load float, float* %arrayidx7.i.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.7.1 = add i32 %add.i.i.7.1, -1
  %idxprom10.i.i.7.1 = sext i32 %add9.i.i.7.1 to i64
  %arrayidx11.i.i.7.1 = getelementptr inbounds float, float* %11, i64 %idxprom10.i.i.7.1
  %750 = load float, float* %arrayidx11.i.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.7.1 = fsub float %749, %750
  %conv13.i.i.7.1 = fpext float %sub12.i.i.7.1 to double
  %751 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.7.1, double -5.000000e-01, double %conv3.i.i.7.1) #3
  %conv15.i.i.7.1 = fptrunc double %751 to float
  store float %conv15.i.i.7.1, float* %arrayidx.i.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %752 = add nuw nsw i64 %_local_id_x.i.0.7, 2
  %exitcond.7.not.1 = icmp eq i64 %752, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.i.7.loopexit, label %pregion_for_entry.entry.i.i.7, !llvm.loop !36

pregion_for_end.i.i.7.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.7
  br label %pregion_for_end.i.i.7

pregion_for_end.i.i.7:                            ; preds = %pregion_for_end.i.i.7.loopexit, %vector.body123
  ret void
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_fdtd_kernel2_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
pregion_for_entry.pregion_for_init.i.i:
  %5 = bitcast i8** %0 to float**
  %6 = load float*, float** %5, align 8
  %7 = getelementptr i8*, i8** %0, i64 2
  %8 = bitcast i8** %7 to float**
  %9 = load float*, float** %8, align 8
  %10 = getelementptr i8*, i8** %0, i64 4
  %11 = bitcast i8** %10 to i32**
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %conv2.i.i = trunc i64 %mul3.i.i.i to i32
  %mul.i.i = mul nsw i32 %13, %conv2.i.i
  %14 = trunc i64 %3 to i32
  %15 = mul i32 %13, %14
  %16 = shl i32 %15, 3
  %17 = trunc i64 %2 to i32
  %18 = shl i32 %17, 5
  %19 = add i32 %16, %18
  %20 = icmp sgt i32 %19, 2147483616
  %21 = add i32 %16, %18
  %22 = add i32 %21, -1
  %23 = add i32 %21, 30
  %24 = icmp slt i32 %23, %22
  %25 = or i1 %20, %24
  br i1 %25, label %pregion_for_entry.entry.i.i.preheader, label %vector.body

pregion_for_entry.entry.i.i.preheader:            ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %pregion_for_entry.entry.i.i

vector.body:                                      ; preds = %pregion_for_entry.pregion_for_init.i.i
  %26 = trunc i64 %mul.i.i.i to i32
  %27 = add i32 %mul.i.i, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %6, i64 %28
  %30 = bitcast float* %29 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %30, align 4, !tbaa !12, !llvm.access.group !16
  %31 = fpext <8 x float> %wide.load to <8 x double>
  %32 = getelementptr inbounds float, float* %9, i64 %28
  %33 = bitcast float* %32 to <8 x float>*
  %wide.load5 = load <8 x float>, <8 x float>* %33, align 4, !tbaa !12, !llvm.access.group !16
  %34 = add i32 %27, -1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %9, i64 %35
  %37 = bitcast float* %36 to <8 x float>*
  %wide.load6 = load <8 x float>, <8 x float>* %37, align 4, !tbaa !12, !llvm.access.group !16
  %38 = fsub <8 x float> %wide.load5, %wide.load6
  %39 = fpext <8 x float> %38 to <8 x double>
  %40 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %39, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %31)
  %41 = fptrunc <8 x double> %40 to <8 x float>
  %42 = bitcast float* %29 to <8 x float>*
  store <8 x float> %41, <8 x float>* %42, align 4, !tbaa !12, !llvm.access.group !16
  %43 = trunc i64 %mul.i.i.i to i32
  %44 = or i32 %43, 8
  %45 = add i32 %mul.i.i, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %6, i64 %46
  %48 = bitcast float* %47 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %48, align 4, !tbaa !12, !llvm.access.group !16
  %49 = fpext <8 x float> %wide.load.1 to <8 x double>
  %50 = getelementptr inbounds float, float* %9, i64 %46
  %51 = bitcast float* %50 to <8 x float>*
  %wide.load5.1 = load <8 x float>, <8 x float>* %51, align 4, !tbaa !12, !llvm.access.group !16
  %52 = add i32 %45, -1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %9, i64 %53
  %55 = bitcast float* %54 to <8 x float>*
  %wide.load6.1 = load <8 x float>, <8 x float>* %55, align 4, !tbaa !12, !llvm.access.group !16
  %56 = fsub <8 x float> %wide.load5.1, %wide.load6.1
  %57 = fpext <8 x float> %56 to <8 x double>
  %58 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %57, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %49)
  %59 = fptrunc <8 x double> %58 to <8 x float>
  %60 = bitcast float* %47 to <8 x float>*
  store <8 x float> %59, <8 x float>* %60, align 4, !tbaa !12, !llvm.access.group !16
  %61 = trunc i64 %mul.i.i.i to i32
  %62 = or i32 %61, 16
  %63 = add i32 %mul.i.i, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %6, i64 %64
  %66 = bitcast float* %65 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %66, align 4, !tbaa !12, !llvm.access.group !16
  %67 = fpext <8 x float> %wide.load.2 to <8 x double>
  %68 = getelementptr inbounds float, float* %9, i64 %64
  %69 = bitcast float* %68 to <8 x float>*
  %wide.load5.2 = load <8 x float>, <8 x float>* %69, align 4, !tbaa !12, !llvm.access.group !16
  %70 = add i32 %63, -1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %9, i64 %71
  %73 = bitcast float* %72 to <8 x float>*
  %wide.load6.2 = load <8 x float>, <8 x float>* %73, align 4, !tbaa !12, !llvm.access.group !16
  %74 = fsub <8 x float> %wide.load5.2, %wide.load6.2
  %75 = fpext <8 x float> %74 to <8 x double>
  %76 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %75, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %67)
  %77 = fptrunc <8 x double> %76 to <8 x float>
  %78 = bitcast float* %65 to <8 x float>*
  store <8 x float> %77, <8 x float>* %78, align 4, !tbaa !12, !llvm.access.group !16
  %79 = trunc i64 %mul.i.i.i to i32
  %80 = or i32 %79, 24
  %81 = add i32 %mul.i.i, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %6, i64 %82
  %84 = bitcast float* %83 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %84, align 4, !tbaa !12, !llvm.access.group !16
  %85 = fpext <8 x float> %wide.load.3 to <8 x double>
  %86 = getelementptr inbounds float, float* %9, i64 %82
  %87 = bitcast float* %86 to <8 x float>*
  %wide.load5.3 = load <8 x float>, <8 x float>* %87, align 4, !tbaa !12, !llvm.access.group !16
  %88 = add i32 %81, -1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %9, i64 %89
  %91 = bitcast float* %90 to <8 x float>*
  %wide.load6.3 = load <8 x float>, <8 x float>* %91, align 4, !tbaa !12, !llvm.access.group !16
  %92 = fsub <8 x float> %wide.load5.3, %wide.load6.3
  %93 = fpext <8 x float> %92 to <8 x double>
  %94 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %93, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %85)
  %95 = fptrunc <8 x double> %94 to <8 x float>
  %96 = bitcast float* %83 to <8 x float>*
  store <8 x float> %95, <8 x float>* %96, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

pregion_for_end.i.i.loopexit:                     ; preds = %pregion_for_entry.entry.i.i
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.body
  %97 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.1 = or i32 %97, 1
  %mul.i.i.1 = mul nsw i32 %13, %conv2.i.i.1
  %98 = mul i32 %13, %conv2.i.i.1
  %99 = trunc i64 %2 to i32
  %100 = shl i32 %99, 5
  %101 = add i32 %98, %100
  %102 = icmp sgt i32 %101, 2147483616
  %103 = add i32 %98, %100
  %104 = add i32 %103, -1
  %105 = add i32 %103, 30
  %106 = icmp slt i32 %105, %104
  %107 = or i1 %102, %106
  br i1 %107, label %pregion_for_entry.entry.i.i.1.preheader, label %vector.body9

pregion_for_entry.entry.i.i.1.preheader:          ; preds = %pregion_for_end.i.i
  br label %pregion_for_entry.entry.i.i.1

vector.body9:                                     ; preds = %pregion_for_end.i.i
  %108 = trunc i64 %mul.i.i.i to i32
  %109 = add i32 %mul.i.i.1, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %6, i64 %110
  %112 = bitcast float* %111 to <8 x float>*
  %wide.load23 = load <8 x float>, <8 x float>* %112, align 4, !tbaa !12, !llvm.access.group !16
  %113 = fpext <8 x float> %wide.load23 to <8 x double>
  %114 = getelementptr inbounds float, float* %9, i64 %110
  %115 = bitcast float* %114 to <8 x float>*
  %wide.load24 = load <8 x float>, <8 x float>* %115, align 4, !tbaa !12, !llvm.access.group !16
  %116 = add i32 %109, -1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %9, i64 %117
  %119 = bitcast float* %118 to <8 x float>*
  %wide.load25 = load <8 x float>, <8 x float>* %119, align 4, !tbaa !12, !llvm.access.group !16
  %120 = fsub <8 x float> %wide.load24, %wide.load25
  %121 = fpext <8 x float> %120 to <8 x double>
  %122 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %121, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %113)
  %123 = fptrunc <8 x double> %122 to <8 x float>
  %124 = bitcast float* %111 to <8 x float>*
  store <8 x float> %123, <8 x float>* %124, align 4, !tbaa !12, !llvm.access.group !16
  %125 = trunc i64 %mul.i.i.i to i32
  %126 = or i32 %125, 8
  %127 = add i32 %mul.i.i.1, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %6, i64 %128
  %130 = bitcast float* %129 to <8 x float>*
  %wide.load23.1 = load <8 x float>, <8 x float>* %130, align 4, !tbaa !12, !llvm.access.group !16
  %131 = fpext <8 x float> %wide.load23.1 to <8 x double>
  %132 = getelementptr inbounds float, float* %9, i64 %128
  %133 = bitcast float* %132 to <8 x float>*
  %wide.load24.1 = load <8 x float>, <8 x float>* %133, align 4, !tbaa !12, !llvm.access.group !16
  %134 = add i32 %127, -1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %9, i64 %135
  %137 = bitcast float* %136 to <8 x float>*
  %wide.load25.1 = load <8 x float>, <8 x float>* %137, align 4, !tbaa !12, !llvm.access.group !16
  %138 = fsub <8 x float> %wide.load24.1, %wide.load25.1
  %139 = fpext <8 x float> %138 to <8 x double>
  %140 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %139, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %131)
  %141 = fptrunc <8 x double> %140 to <8 x float>
  %142 = bitcast float* %129 to <8 x float>*
  store <8 x float> %141, <8 x float>* %142, align 4, !tbaa !12, !llvm.access.group !16
  %143 = trunc i64 %mul.i.i.i to i32
  %144 = or i32 %143, 16
  %145 = add i32 %mul.i.i.1, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %6, i64 %146
  %148 = bitcast float* %147 to <8 x float>*
  %wide.load23.2 = load <8 x float>, <8 x float>* %148, align 4, !tbaa !12, !llvm.access.group !16
  %149 = fpext <8 x float> %wide.load23.2 to <8 x double>
  %150 = getelementptr inbounds float, float* %9, i64 %146
  %151 = bitcast float* %150 to <8 x float>*
  %wide.load24.2 = load <8 x float>, <8 x float>* %151, align 4, !tbaa !12, !llvm.access.group !16
  %152 = add i32 %145, -1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %9, i64 %153
  %155 = bitcast float* %154 to <8 x float>*
  %wide.load25.2 = load <8 x float>, <8 x float>* %155, align 4, !tbaa !12, !llvm.access.group !16
  %156 = fsub <8 x float> %wide.load24.2, %wide.load25.2
  %157 = fpext <8 x float> %156 to <8 x double>
  %158 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %157, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %149)
  %159 = fptrunc <8 x double> %158 to <8 x float>
  %160 = bitcast float* %147 to <8 x float>*
  store <8 x float> %159, <8 x float>* %160, align 4, !tbaa !12, !llvm.access.group !16
  %161 = trunc i64 %mul.i.i.i to i32
  %162 = or i32 %161, 24
  %163 = add i32 %mul.i.i.1, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %6, i64 %164
  %166 = bitcast float* %165 to <8 x float>*
  %wide.load23.3 = load <8 x float>, <8 x float>* %166, align 4, !tbaa !12, !llvm.access.group !16
  %167 = fpext <8 x float> %wide.load23.3 to <8 x double>
  %168 = getelementptr inbounds float, float* %9, i64 %164
  %169 = bitcast float* %168 to <8 x float>*
  %wide.load24.3 = load <8 x float>, <8 x float>* %169, align 4, !tbaa !12, !llvm.access.group !16
  %170 = add i32 %163, -1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %9, i64 %171
  %173 = bitcast float* %172 to <8 x float>*
  %wide.load25.3 = load <8 x float>, <8 x float>* %173, align 4, !tbaa !12, !llvm.access.group !16
  %174 = fsub <8 x float> %wide.load24.3, %wide.load25.3
  %175 = fpext <8 x float> %174 to <8 x double>
  %176 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %175, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %167)
  %177 = fptrunc <8 x double> %176 to <8 x float>
  %178 = bitcast float* %165 to <8 x float>*
  store <8 x float> %177, <8 x float>* %178, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.1

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %188, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %conv.i.i = trunc i64 %add1.i.i.i to i32
  %add.i.i = add i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %6, i64 %idxprom.i.i
  %179 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i = fpext float %179 to double
  %arrayidx7.i.i = getelementptr inbounds float, float* %9, i64 %idxprom.i.i
  %180 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i = add i32 %add.i.i, -1
  %idxprom10.i.i = sext i32 %add9.i.i to i64
  %arrayidx11.i.i = getelementptr inbounds float, float* %9, i64 %idxprom10.i.i
  %181 = load float, float* %arrayidx11.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i = fsub float %180, %181
  %conv13.i.i = fpext float %sub12.i.i to double
  %182 = tail call double @llvm.fmuladd.f64(double %conv13.i.i, double -5.000000e-01, double %conv3.i.i) #3
  %conv15.i.i = fptrunc double %182 to float
  store float %conv15.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %183 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1149 = add nuw nsw i64 %183, %mul.i.i.i
  %conv.i.i.1150 = trunc i64 %add1.i.i.i.1149 to i32
  %add.i.i.1151 = add i32 %mul.i.i, %conv.i.i.1150
  %idxprom.i.i.1152 = sext i32 %add.i.i.1151 to i64
  %arrayidx.i.i.1153 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.1152
  %184 = load float, float* %arrayidx.i.i.1153, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.1154 = fpext float %184 to double
  %arrayidx7.i.i.1155 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.1152
  %185 = load float, float* %arrayidx7.i.i.1155, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.1156 = add nsw i32 %add.i.i.1151, -1
  %idxprom10.i.i.1157 = sext i32 %add9.i.i.1156 to i64
  %arrayidx11.i.i.1158 = getelementptr inbounds float, float* %9, i64 %idxprom10.i.i.1157
  %186 = load float, float* %arrayidx11.i.i.1158, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.1159 = fsub float %185, %186
  %conv13.i.i.1160 = fpext float %sub12.i.i.1159 to double
  %187 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.1160, double -5.000000e-01, double %conv3.i.i.1154) #3
  %conv15.i.i.1161 = fptrunc double %187 to float
  store float %conv15.i.i.1161, float* %arrayidx.i.i.1153, align 4, !tbaa !12, !llvm.access.group !16
  %188 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %188, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !37

pregion_for_entry.entry.i.i.1:                    ; preds = %pregion_for_entry.entry.i.i.1, %pregion_for_entry.entry.i.i.1.preheader
  %_local_id_x.i.0.1 = phi i64 [ %198, %pregion_for_entry.entry.i.i.1 ], [ 0, %pregion_for_entry.entry.i.i.1.preheader ]
  %add1.i.i.i.1 = add nuw nsw i64 %_local_id_x.i.0.1, %mul.i.i.i
  %conv.i.i.1 = trunc i64 %add1.i.i.i.1 to i32
  %add.i.i.1 = add i32 %mul.i.i.1, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.1
  %189 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.1 = fpext float %189 to double
  %arrayidx7.i.i.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.1
  %190 = load float, float* %arrayidx7.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.1 = add i32 %add.i.i.1, -1
  %idxprom10.i.i.1 = sext i32 %add9.i.i.1 to i64
  %arrayidx11.i.i.1 = getelementptr inbounds float, float* %9, i64 %idxprom10.i.i.1
  %191 = load float, float* %arrayidx11.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.1 = fsub float %190, %191
  %conv13.i.i.1 = fpext float %sub12.i.i.1 to double
  %192 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.1, double -5.000000e-01, double %conv3.i.i.1) #3
  %conv15.i.i.1 = fptrunc double %192 to float
  store float %conv15.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %193 = or i64 %_local_id_x.i.0.1, 1
  %add1.i.i.i.1.1 = add nuw nsw i64 %193, %mul.i.i.i
  %conv.i.i.1.1 = trunc i64 %add1.i.i.i.1.1 to i32
  %add.i.i.1.1 = add i32 %mul.i.i.1, %conv.i.i.1.1
  %idxprom.i.i.1.1 = sext i32 %add.i.i.1.1 to i64
  %arrayidx.i.i.1.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.1.1
  %194 = load float, float* %arrayidx.i.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.1.1 = fpext float %194 to double
  %arrayidx7.i.i.1.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.1.1
  %195 = load float, float* %arrayidx7.i.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.1.1 = add i32 %add.i.i.1.1, -1
  %idxprom10.i.i.1.1 = sext i32 %add9.i.i.1.1 to i64
  %arrayidx11.i.i.1.1 = getelementptr inbounds float, float* %9, i64 %idxprom10.i.i.1.1
  %196 = load float, float* %arrayidx11.i.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.1.1 = fsub float %195, %196
  %conv13.i.i.1.1 = fpext float %sub12.i.i.1.1 to double
  %197 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.1.1, double -5.000000e-01, double %conv3.i.i.1.1) #3
  %conv15.i.i.1.1 = fptrunc double %197 to float
  store float %conv15.i.i.1.1, float* %arrayidx.i.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %198 = add nuw nsw i64 %_local_id_x.i.0.1, 2
  %exitcond.1.not.1 = icmp eq i64 %198, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.1, !llvm.loop !38

pregion_for_end.i.i.1.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.1
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.body9
  %199 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.2 = or i32 %199, 2
  %mul.i.i.2 = mul nsw i32 %13, %conv2.i.i.2
  %200 = mul i32 %13, %conv2.i.i.2
  %201 = trunc i64 %2 to i32
  %202 = shl i32 %201, 5
  %203 = add i32 %200, %202
  %204 = icmp sgt i32 %203, 2147483616
  %205 = add i32 %200, %202
  %206 = add i32 %205, -1
  %207 = add i32 %205, 30
  %208 = icmp slt i32 %207, %206
  %209 = or i1 %204, %208
  br i1 %209, label %pregion_for_entry.entry.i.i.2.preheader, label %vector.body28

pregion_for_entry.entry.i.i.2.preheader:          ; preds = %pregion_for_end.i.i.1
  br label %pregion_for_entry.entry.i.i.2

vector.body28:                                    ; preds = %pregion_for_end.i.i.1
  %210 = trunc i64 %mul.i.i.i to i32
  %211 = add i32 %mul.i.i.2, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float, float* %6, i64 %212
  %214 = bitcast float* %213 to <8 x float>*
  %wide.load42 = load <8 x float>, <8 x float>* %214, align 4, !tbaa !12, !llvm.access.group !16
  %215 = fpext <8 x float> %wide.load42 to <8 x double>
  %216 = getelementptr inbounds float, float* %9, i64 %212
  %217 = bitcast float* %216 to <8 x float>*
  %wide.load43 = load <8 x float>, <8 x float>* %217, align 4, !tbaa !12, !llvm.access.group !16
  %218 = add i32 %211, -1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %9, i64 %219
  %221 = bitcast float* %220 to <8 x float>*
  %wide.load44 = load <8 x float>, <8 x float>* %221, align 4, !tbaa !12, !llvm.access.group !16
  %222 = fsub <8 x float> %wide.load43, %wide.load44
  %223 = fpext <8 x float> %222 to <8 x double>
  %224 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %223, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %215)
  %225 = fptrunc <8 x double> %224 to <8 x float>
  %226 = bitcast float* %213 to <8 x float>*
  store <8 x float> %225, <8 x float>* %226, align 4, !tbaa !12, !llvm.access.group !16
  %227 = trunc i64 %mul.i.i.i to i32
  %228 = or i32 %227, 8
  %229 = add i32 %mul.i.i.2, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float, float* %6, i64 %230
  %232 = bitcast float* %231 to <8 x float>*
  %wide.load42.1 = load <8 x float>, <8 x float>* %232, align 4, !tbaa !12, !llvm.access.group !16
  %233 = fpext <8 x float> %wide.load42.1 to <8 x double>
  %234 = getelementptr inbounds float, float* %9, i64 %230
  %235 = bitcast float* %234 to <8 x float>*
  %wide.load43.1 = load <8 x float>, <8 x float>* %235, align 4, !tbaa !12, !llvm.access.group !16
  %236 = add i32 %229, -1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %9, i64 %237
  %239 = bitcast float* %238 to <8 x float>*
  %wide.load44.1 = load <8 x float>, <8 x float>* %239, align 4, !tbaa !12, !llvm.access.group !16
  %240 = fsub <8 x float> %wide.load43.1, %wide.load44.1
  %241 = fpext <8 x float> %240 to <8 x double>
  %242 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %241, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %233)
  %243 = fptrunc <8 x double> %242 to <8 x float>
  %244 = bitcast float* %231 to <8 x float>*
  store <8 x float> %243, <8 x float>* %244, align 4, !tbaa !12, !llvm.access.group !16
  %245 = trunc i64 %mul.i.i.i to i32
  %246 = or i32 %245, 16
  %247 = add i32 %mul.i.i.2, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds float, float* %6, i64 %248
  %250 = bitcast float* %249 to <8 x float>*
  %wide.load42.2 = load <8 x float>, <8 x float>* %250, align 4, !tbaa !12, !llvm.access.group !16
  %251 = fpext <8 x float> %wide.load42.2 to <8 x double>
  %252 = getelementptr inbounds float, float* %9, i64 %248
  %253 = bitcast float* %252 to <8 x float>*
  %wide.load43.2 = load <8 x float>, <8 x float>* %253, align 4, !tbaa !12, !llvm.access.group !16
  %254 = add i32 %247, -1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %9, i64 %255
  %257 = bitcast float* %256 to <8 x float>*
  %wide.load44.2 = load <8 x float>, <8 x float>* %257, align 4, !tbaa !12, !llvm.access.group !16
  %258 = fsub <8 x float> %wide.load43.2, %wide.load44.2
  %259 = fpext <8 x float> %258 to <8 x double>
  %260 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %259, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %251)
  %261 = fptrunc <8 x double> %260 to <8 x float>
  %262 = bitcast float* %249 to <8 x float>*
  store <8 x float> %261, <8 x float>* %262, align 4, !tbaa !12, !llvm.access.group !16
  %263 = trunc i64 %mul.i.i.i to i32
  %264 = or i32 %263, 24
  %265 = add i32 %mul.i.i.2, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %6, i64 %266
  %268 = bitcast float* %267 to <8 x float>*
  %wide.load42.3 = load <8 x float>, <8 x float>* %268, align 4, !tbaa !12, !llvm.access.group !16
  %269 = fpext <8 x float> %wide.load42.3 to <8 x double>
  %270 = getelementptr inbounds float, float* %9, i64 %266
  %271 = bitcast float* %270 to <8 x float>*
  %wide.load43.3 = load <8 x float>, <8 x float>* %271, align 4, !tbaa !12, !llvm.access.group !16
  %272 = add i32 %265, -1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float* %9, i64 %273
  %275 = bitcast float* %274 to <8 x float>*
  %wide.load44.3 = load <8 x float>, <8 x float>* %275, align 4, !tbaa !12, !llvm.access.group !16
  %276 = fsub <8 x float> %wide.load43.3, %wide.load44.3
  %277 = fpext <8 x float> %276 to <8 x double>
  %278 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %277, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %269)
  %279 = fptrunc <8 x double> %278 to <8 x float>
  %280 = bitcast float* %267 to <8 x float>*
  store <8 x float> %279, <8 x float>* %280, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.2:                    ; preds = %pregion_for_entry.entry.i.i.2, %pregion_for_entry.entry.i.i.2.preheader
  %_local_id_x.i.0.2 = phi i64 [ %290, %pregion_for_entry.entry.i.i.2 ], [ 0, %pregion_for_entry.entry.i.i.2.preheader ]
  %add1.i.i.i.2 = add nuw nsw i64 %_local_id_x.i.0.2, %mul.i.i.i
  %conv.i.i.2 = trunc i64 %add1.i.i.i.2 to i32
  %add.i.i.2 = add i32 %mul.i.i.2, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.2
  %281 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.2 = fpext float %281 to double
  %arrayidx7.i.i.2 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.2
  %282 = load float, float* %arrayidx7.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.2 = add i32 %add.i.i.2, -1
  %idxprom10.i.i.2 = sext i32 %add9.i.i.2 to i64
  %arrayidx11.i.i.2 = getelementptr inbounds float, float* %9, i64 %idxprom10.i.i.2
  %283 = load float, float* %arrayidx11.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.2 = fsub float %282, %283
  %conv13.i.i.2 = fpext float %sub12.i.i.2 to double
  %284 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.2, double -5.000000e-01, double %conv3.i.i.2) #3
  %conv15.i.i.2 = fptrunc double %284 to float
  store float %conv15.i.i.2, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %285 = or i64 %_local_id_x.i.0.2, 1
  %add1.i.i.i.2.1 = add nuw nsw i64 %285, %mul.i.i.i
  %conv.i.i.2.1 = trunc i64 %add1.i.i.i.2.1 to i32
  %add.i.i.2.1 = add i32 %mul.i.i.2, %conv.i.i.2.1
  %idxprom.i.i.2.1 = sext i32 %add.i.i.2.1 to i64
  %arrayidx.i.i.2.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.2.1
  %286 = load float, float* %arrayidx.i.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.2.1 = fpext float %286 to double
  %arrayidx7.i.i.2.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.2.1
  %287 = load float, float* %arrayidx7.i.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.2.1 = add nsw i32 %add.i.i.2.1, -1
  %idxprom10.i.i.2.1 = sext i32 %add9.i.i.2.1 to i64
  %arrayidx11.i.i.2.1 = getelementptr inbounds float, float* %9, i64 %idxprom10.i.i.2.1
  %288 = load float, float* %arrayidx11.i.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.2.1 = fsub float %287, %288
  %conv13.i.i.2.1 = fpext float %sub12.i.i.2.1 to double
  %289 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.2.1, double -5.000000e-01, double %conv3.i.i.2.1) #3
  %conv15.i.i.2.1 = fptrunc double %289 to float
  store float %conv15.i.i.2.1, float* %arrayidx.i.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %290 = add nuw nsw i64 %_local_id_x.i.0.2, 2
  %exitcond.2.not.1 = icmp eq i64 %290, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.2, !llvm.loop !39

pregion_for_end.i.i.2.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.2
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.body28
  %291 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.3 = or i32 %291, 3
  %mul.i.i.3 = mul nsw i32 %13, %conv2.i.i.3
  %292 = mul i32 %13, %conv2.i.i.3
  %293 = trunc i64 %2 to i32
  %294 = shl i32 %293, 5
  %295 = add i32 %292, %294
  %296 = icmp sgt i32 %295, 2147483616
  %297 = add i32 %292, %294
  %298 = add i32 %297, -1
  %299 = add i32 %297, 30
  %300 = icmp slt i32 %299, %298
  %301 = or i1 %296, %300
  br i1 %301, label %pregion_for_entry.entry.i.i.3.preheader, label %vector.body47

pregion_for_entry.entry.i.i.3.preheader:          ; preds = %pregion_for_end.i.i.2
  br label %pregion_for_entry.entry.i.i.3

vector.body47:                                    ; preds = %pregion_for_end.i.i.2
  %302 = trunc i64 %mul.i.i.i to i32
  %303 = add i32 %mul.i.i.3, %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds float, float* %6, i64 %304
  %306 = bitcast float* %305 to <8 x float>*
  %wide.load61 = load <8 x float>, <8 x float>* %306, align 4, !tbaa !12, !llvm.access.group !16
  %307 = fpext <8 x float> %wide.load61 to <8 x double>
  %308 = getelementptr inbounds float, float* %9, i64 %304
  %309 = bitcast float* %308 to <8 x float>*
  %wide.load62 = load <8 x float>, <8 x float>* %309, align 4, !tbaa !12, !llvm.access.group !16
  %310 = add i32 %303, -1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds float, float* %9, i64 %311
  %313 = bitcast float* %312 to <8 x float>*
  %wide.load63 = load <8 x float>, <8 x float>* %313, align 4, !tbaa !12, !llvm.access.group !16
  %314 = fsub <8 x float> %wide.load62, %wide.load63
  %315 = fpext <8 x float> %314 to <8 x double>
  %316 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %315, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %307)
  %317 = fptrunc <8 x double> %316 to <8 x float>
  %318 = bitcast float* %305 to <8 x float>*
  store <8 x float> %317, <8 x float>* %318, align 4, !tbaa !12, !llvm.access.group !16
  %319 = trunc i64 %mul.i.i.i to i32
  %320 = or i32 %319, 8
  %321 = add i32 %mul.i.i.3, %320
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds float, float* %6, i64 %322
  %324 = bitcast float* %323 to <8 x float>*
  %wide.load61.1 = load <8 x float>, <8 x float>* %324, align 4, !tbaa !12, !llvm.access.group !16
  %325 = fpext <8 x float> %wide.load61.1 to <8 x double>
  %326 = getelementptr inbounds float, float* %9, i64 %322
  %327 = bitcast float* %326 to <8 x float>*
  %wide.load62.1 = load <8 x float>, <8 x float>* %327, align 4, !tbaa !12, !llvm.access.group !16
  %328 = add i32 %321, -1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds float, float* %9, i64 %329
  %331 = bitcast float* %330 to <8 x float>*
  %wide.load63.1 = load <8 x float>, <8 x float>* %331, align 4, !tbaa !12, !llvm.access.group !16
  %332 = fsub <8 x float> %wide.load62.1, %wide.load63.1
  %333 = fpext <8 x float> %332 to <8 x double>
  %334 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %333, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %325)
  %335 = fptrunc <8 x double> %334 to <8 x float>
  %336 = bitcast float* %323 to <8 x float>*
  store <8 x float> %335, <8 x float>* %336, align 4, !tbaa !12, !llvm.access.group !16
  %337 = trunc i64 %mul.i.i.i to i32
  %338 = or i32 %337, 16
  %339 = add i32 %mul.i.i.3, %338
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds float, float* %6, i64 %340
  %342 = bitcast float* %341 to <8 x float>*
  %wide.load61.2 = load <8 x float>, <8 x float>* %342, align 4, !tbaa !12, !llvm.access.group !16
  %343 = fpext <8 x float> %wide.load61.2 to <8 x double>
  %344 = getelementptr inbounds float, float* %9, i64 %340
  %345 = bitcast float* %344 to <8 x float>*
  %wide.load62.2 = load <8 x float>, <8 x float>* %345, align 4, !tbaa !12, !llvm.access.group !16
  %346 = add i32 %339, -1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds float, float* %9, i64 %347
  %349 = bitcast float* %348 to <8 x float>*
  %wide.load63.2 = load <8 x float>, <8 x float>* %349, align 4, !tbaa !12, !llvm.access.group !16
  %350 = fsub <8 x float> %wide.load62.2, %wide.load63.2
  %351 = fpext <8 x float> %350 to <8 x double>
  %352 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %351, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %343)
  %353 = fptrunc <8 x double> %352 to <8 x float>
  %354 = bitcast float* %341 to <8 x float>*
  store <8 x float> %353, <8 x float>* %354, align 4, !tbaa !12, !llvm.access.group !16
  %355 = trunc i64 %mul.i.i.i to i32
  %356 = or i32 %355, 24
  %357 = add i32 %mul.i.i.3, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds float, float* %6, i64 %358
  %360 = bitcast float* %359 to <8 x float>*
  %wide.load61.3 = load <8 x float>, <8 x float>* %360, align 4, !tbaa !12, !llvm.access.group !16
  %361 = fpext <8 x float> %wide.load61.3 to <8 x double>
  %362 = getelementptr inbounds float, float* %9, i64 %358
  %363 = bitcast float* %362 to <8 x float>*
  %wide.load62.3 = load <8 x float>, <8 x float>* %363, align 4, !tbaa !12, !llvm.access.group !16
  %364 = add i32 %357, -1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds float, float* %9, i64 %365
  %367 = bitcast float* %366 to <8 x float>*
  %wide.load63.3 = load <8 x float>, <8 x float>* %367, align 4, !tbaa !12, !llvm.access.group !16
  %368 = fsub <8 x float> %wide.load62.3, %wide.load63.3
  %369 = fpext <8 x float> %368 to <8 x double>
  %370 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %369, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %361)
  %371 = fptrunc <8 x double> %370 to <8 x float>
  %372 = bitcast float* %359 to <8 x float>*
  store <8 x float> %371, <8 x float>* %372, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.3:                    ; preds = %pregion_for_entry.entry.i.i.3, %pregion_for_entry.entry.i.i.3.preheader
  %_local_id_x.i.0.3 = phi i64 [ %382, %pregion_for_entry.entry.i.i.3 ], [ 0, %pregion_for_entry.entry.i.i.3.preheader ]
  %add1.i.i.i.3 = add nuw nsw i64 %_local_id_x.i.0.3, %mul.i.i.i
  %conv.i.i.3 = trunc i64 %add1.i.i.i.3 to i32
  %add.i.i.3 = add i32 %mul.i.i.3, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.3
  %373 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.3 = fpext float %373 to double
  %arrayidx7.i.i.3 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.3
  %374 = load float, float* %arrayidx7.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.3 = add i32 %add.i.i.3, -1
  %idxprom10.i.i.3 = sext i32 %add9.i.i.3 to i64
  %arrayidx11.i.i.3 = getelementptr inbounds float, float* %9, i64 %idxprom10.i.i.3
  %375 = load float, float* %arrayidx11.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.3 = fsub float %374, %375
  %conv13.i.i.3 = fpext float %sub12.i.i.3 to double
  %376 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.3, double -5.000000e-01, double %conv3.i.i.3) #3
  %conv15.i.i.3 = fptrunc double %376 to float
  store float %conv15.i.i.3, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %377 = or i64 %_local_id_x.i.0.3, 1
  %add1.i.i.i.3.1 = add nuw nsw i64 %377, %mul.i.i.i
  %conv.i.i.3.1 = trunc i64 %add1.i.i.i.3.1 to i32
  %add.i.i.3.1 = add i32 %mul.i.i.3, %conv.i.i.3.1
  %idxprom.i.i.3.1 = sext i32 %add.i.i.3.1 to i64
  %arrayidx.i.i.3.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.3.1
  %378 = load float, float* %arrayidx.i.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.3.1 = fpext float %378 to double
  %arrayidx7.i.i.3.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.3.1
  %379 = load float, float* %arrayidx7.i.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.3.1 = add i32 %add.i.i.3.1, -1
  %idxprom10.i.i.3.1 = sext i32 %add9.i.i.3.1 to i64
  %arrayidx11.i.i.3.1 = getelementptr inbounds float, float* %9, i64 %idxprom10.i.i.3.1
  %380 = load float, float* %arrayidx11.i.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.3.1 = fsub float %379, %380
  %conv13.i.i.3.1 = fpext float %sub12.i.i.3.1 to double
  %381 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.3.1, double -5.000000e-01, double %conv3.i.i.3.1) #3
  %conv15.i.i.3.1 = fptrunc double %381 to float
  store float %conv15.i.i.3.1, float* %arrayidx.i.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %382 = add nuw nsw i64 %_local_id_x.i.0.3, 2
  %exitcond.3.not.1 = icmp eq i64 %382, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.3, !llvm.loop !40

pregion_for_end.i.i.3.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.3
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.body47
  %383 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.4 = or i32 %383, 4
  %mul.i.i.4 = mul nsw i32 %13, %conv2.i.i.4
  %384 = mul i32 %13, %conv2.i.i.4
  %385 = trunc i64 %2 to i32
  %386 = shl i32 %385, 5
  %387 = add i32 %384, %386
  %388 = icmp sgt i32 %387, 2147483616
  %389 = add i32 %384, %386
  %390 = add i32 %389, -1
  %391 = add i32 %389, 30
  %392 = icmp slt i32 %391, %390
  %393 = or i1 %388, %392
  br i1 %393, label %pregion_for_entry.entry.i.i.4.preheader, label %vector.body66

pregion_for_entry.entry.i.i.4.preheader:          ; preds = %pregion_for_end.i.i.3
  br label %pregion_for_entry.entry.i.i.4

vector.body66:                                    ; preds = %pregion_for_end.i.i.3
  %394 = trunc i64 %mul.i.i.i to i32
  %395 = add i32 %mul.i.i.4, %394
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds float, float* %6, i64 %396
  %398 = bitcast float* %397 to <8 x float>*
  %wide.load80 = load <8 x float>, <8 x float>* %398, align 4, !tbaa !12, !llvm.access.group !16
  %399 = fpext <8 x float> %wide.load80 to <8 x double>
  %400 = getelementptr inbounds float, float* %9, i64 %396
  %401 = bitcast float* %400 to <8 x float>*
  %wide.load81 = load <8 x float>, <8 x float>* %401, align 4, !tbaa !12, !llvm.access.group !16
  %402 = add i32 %395, -1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds float, float* %9, i64 %403
  %405 = bitcast float* %404 to <8 x float>*
  %wide.load82 = load <8 x float>, <8 x float>* %405, align 4, !tbaa !12, !llvm.access.group !16
  %406 = fsub <8 x float> %wide.load81, %wide.load82
  %407 = fpext <8 x float> %406 to <8 x double>
  %408 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %407, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %399)
  %409 = fptrunc <8 x double> %408 to <8 x float>
  %410 = bitcast float* %397 to <8 x float>*
  store <8 x float> %409, <8 x float>* %410, align 4, !tbaa !12, !llvm.access.group !16
  %411 = trunc i64 %mul.i.i.i to i32
  %412 = or i32 %411, 8
  %413 = add i32 %mul.i.i.4, %412
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds float, float* %6, i64 %414
  %416 = bitcast float* %415 to <8 x float>*
  %wide.load80.1 = load <8 x float>, <8 x float>* %416, align 4, !tbaa !12, !llvm.access.group !16
  %417 = fpext <8 x float> %wide.load80.1 to <8 x double>
  %418 = getelementptr inbounds float, float* %9, i64 %414
  %419 = bitcast float* %418 to <8 x float>*
  %wide.load81.1 = load <8 x float>, <8 x float>* %419, align 4, !tbaa !12, !llvm.access.group !16
  %420 = add i32 %413, -1
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds float, float* %9, i64 %421
  %423 = bitcast float* %422 to <8 x float>*
  %wide.load82.1 = load <8 x float>, <8 x float>* %423, align 4, !tbaa !12, !llvm.access.group !16
  %424 = fsub <8 x float> %wide.load81.1, %wide.load82.1
  %425 = fpext <8 x float> %424 to <8 x double>
  %426 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %425, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %417)
  %427 = fptrunc <8 x double> %426 to <8 x float>
  %428 = bitcast float* %415 to <8 x float>*
  store <8 x float> %427, <8 x float>* %428, align 4, !tbaa !12, !llvm.access.group !16
  %429 = trunc i64 %mul.i.i.i to i32
  %430 = or i32 %429, 16
  %431 = add i32 %mul.i.i.4, %430
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds float, float* %6, i64 %432
  %434 = bitcast float* %433 to <8 x float>*
  %wide.load80.2 = load <8 x float>, <8 x float>* %434, align 4, !tbaa !12, !llvm.access.group !16
  %435 = fpext <8 x float> %wide.load80.2 to <8 x double>
  %436 = getelementptr inbounds float, float* %9, i64 %432
  %437 = bitcast float* %436 to <8 x float>*
  %wide.load81.2 = load <8 x float>, <8 x float>* %437, align 4, !tbaa !12, !llvm.access.group !16
  %438 = add i32 %431, -1
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds float, float* %9, i64 %439
  %441 = bitcast float* %440 to <8 x float>*
  %wide.load82.2 = load <8 x float>, <8 x float>* %441, align 4, !tbaa !12, !llvm.access.group !16
  %442 = fsub <8 x float> %wide.load81.2, %wide.load82.2
  %443 = fpext <8 x float> %442 to <8 x double>
  %444 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %443, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %435)
  %445 = fptrunc <8 x double> %444 to <8 x float>
  %446 = bitcast float* %433 to <8 x float>*
  store <8 x float> %445, <8 x float>* %446, align 4, !tbaa !12, !llvm.access.group !16
  %447 = trunc i64 %mul.i.i.i to i32
  %448 = or i32 %447, 24
  %449 = add i32 %mul.i.i.4, %448
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds float, float* %6, i64 %450
  %452 = bitcast float* %451 to <8 x float>*
  %wide.load80.3 = load <8 x float>, <8 x float>* %452, align 4, !tbaa !12, !llvm.access.group !16
  %453 = fpext <8 x float> %wide.load80.3 to <8 x double>
  %454 = getelementptr inbounds float, float* %9, i64 %450
  %455 = bitcast float* %454 to <8 x float>*
  %wide.load81.3 = load <8 x float>, <8 x float>* %455, align 4, !tbaa !12, !llvm.access.group !16
  %456 = add i32 %449, -1
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds float, float* %9, i64 %457
  %459 = bitcast float* %458 to <8 x float>*
  %wide.load82.3 = load <8 x float>, <8 x float>* %459, align 4, !tbaa !12, !llvm.access.group !16
  %460 = fsub <8 x float> %wide.load81.3, %wide.load82.3
  %461 = fpext <8 x float> %460 to <8 x double>
  %462 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %461, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %453)
  %463 = fptrunc <8 x double> %462 to <8 x float>
  %464 = bitcast float* %451 to <8 x float>*
  store <8 x float> %463, <8 x float>* %464, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.4:                    ; preds = %pregion_for_entry.entry.i.i.4, %pregion_for_entry.entry.i.i.4.preheader
  %_local_id_x.i.0.4 = phi i64 [ %474, %pregion_for_entry.entry.i.i.4 ], [ 0, %pregion_for_entry.entry.i.i.4.preheader ]
  %add1.i.i.i.4 = add nuw nsw i64 %_local_id_x.i.0.4, %mul.i.i.i
  %conv.i.i.4 = trunc i64 %add1.i.i.i.4 to i32
  %add.i.i.4 = add i32 %mul.i.i.4, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.4
  %465 = load float, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.4 = fpext float %465 to double
  %arrayidx7.i.i.4 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.4
  %466 = load float, float* %arrayidx7.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.4 = add i32 %add.i.i.4, -1
  %idxprom10.i.i.4 = sext i32 %add9.i.i.4 to i64
  %arrayidx11.i.i.4 = getelementptr inbounds float, float* %9, i64 %idxprom10.i.i.4
  %467 = load float, float* %arrayidx11.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.4 = fsub float %466, %467
  %conv13.i.i.4 = fpext float %sub12.i.i.4 to double
  %468 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.4, double -5.000000e-01, double %conv3.i.i.4) #3
  %conv15.i.i.4 = fptrunc double %468 to float
  store float %conv15.i.i.4, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %469 = or i64 %_local_id_x.i.0.4, 1
  %add1.i.i.i.4.1 = add nuw nsw i64 %469, %mul.i.i.i
  %conv.i.i.4.1 = trunc i64 %add1.i.i.i.4.1 to i32
  %add.i.i.4.1 = add i32 %mul.i.i.4, %conv.i.i.4.1
  %idxprom.i.i.4.1 = sext i32 %add.i.i.4.1 to i64
  %arrayidx.i.i.4.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.4.1
  %470 = load float, float* %arrayidx.i.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.4.1 = fpext float %470 to double
  %arrayidx7.i.i.4.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.4.1
  %471 = load float, float* %arrayidx7.i.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.4.1 = add nsw i32 %add.i.i.4.1, -1
  %idxprom10.i.i.4.1 = sext i32 %add9.i.i.4.1 to i64
  %arrayidx11.i.i.4.1 = getelementptr inbounds float, float* %9, i64 %idxprom10.i.i.4.1
  %472 = load float, float* %arrayidx11.i.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.4.1 = fsub float %471, %472
  %conv13.i.i.4.1 = fpext float %sub12.i.i.4.1 to double
  %473 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.4.1, double -5.000000e-01, double %conv3.i.i.4.1) #3
  %conv15.i.i.4.1 = fptrunc double %473 to float
  store float %conv15.i.i.4.1, float* %arrayidx.i.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %474 = add nuw nsw i64 %_local_id_x.i.0.4, 2
  %exitcond.4.not.1 = icmp eq i64 %474, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.4, !llvm.loop !41

pregion_for_end.i.i.4.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.4
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.body66
  %475 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.5 = or i32 %475, 5
  %mul.i.i.5 = mul nsw i32 %13, %conv2.i.i.5
  %476 = mul i32 %13, %conv2.i.i.5
  %477 = trunc i64 %2 to i32
  %478 = shl i32 %477, 5
  %479 = add i32 %476, %478
  %480 = icmp sgt i32 %479, 2147483616
  %481 = add i32 %476, %478
  %482 = add i32 %481, -1
  %483 = add i32 %481, 30
  %484 = icmp slt i32 %483, %482
  %485 = or i1 %480, %484
  br i1 %485, label %pregion_for_entry.entry.i.i.5.preheader, label %vector.body85

pregion_for_entry.entry.i.i.5.preheader:          ; preds = %pregion_for_end.i.i.4
  br label %pregion_for_entry.entry.i.i.5

vector.body85:                                    ; preds = %pregion_for_end.i.i.4
  %486 = trunc i64 %mul.i.i.i to i32
  %487 = add i32 %mul.i.i.5, %486
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds float, float* %6, i64 %488
  %490 = bitcast float* %489 to <8 x float>*
  %wide.load99 = load <8 x float>, <8 x float>* %490, align 4, !tbaa !12, !llvm.access.group !16
  %491 = fpext <8 x float> %wide.load99 to <8 x double>
  %492 = getelementptr inbounds float, float* %9, i64 %488
  %493 = bitcast float* %492 to <8 x float>*
  %wide.load100 = load <8 x float>, <8 x float>* %493, align 4, !tbaa !12, !llvm.access.group !16
  %494 = add i32 %487, -1
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds float, float* %9, i64 %495
  %497 = bitcast float* %496 to <8 x float>*
  %wide.load101 = load <8 x float>, <8 x float>* %497, align 4, !tbaa !12, !llvm.access.group !16
  %498 = fsub <8 x float> %wide.load100, %wide.load101
  %499 = fpext <8 x float> %498 to <8 x double>
  %500 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %499, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %491)
  %501 = fptrunc <8 x double> %500 to <8 x float>
  %502 = bitcast float* %489 to <8 x float>*
  store <8 x float> %501, <8 x float>* %502, align 4, !tbaa !12, !llvm.access.group !16
  %503 = trunc i64 %mul.i.i.i to i32
  %504 = or i32 %503, 8
  %505 = add i32 %mul.i.i.5, %504
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds float, float* %6, i64 %506
  %508 = bitcast float* %507 to <8 x float>*
  %wide.load99.1 = load <8 x float>, <8 x float>* %508, align 4, !tbaa !12, !llvm.access.group !16
  %509 = fpext <8 x float> %wide.load99.1 to <8 x double>
  %510 = getelementptr inbounds float, float* %9, i64 %506
  %511 = bitcast float* %510 to <8 x float>*
  %wide.load100.1 = load <8 x float>, <8 x float>* %511, align 4, !tbaa !12, !llvm.access.group !16
  %512 = add i32 %505, -1
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds float, float* %9, i64 %513
  %515 = bitcast float* %514 to <8 x float>*
  %wide.load101.1 = load <8 x float>, <8 x float>* %515, align 4, !tbaa !12, !llvm.access.group !16
  %516 = fsub <8 x float> %wide.load100.1, %wide.load101.1
  %517 = fpext <8 x float> %516 to <8 x double>
  %518 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %517, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %509)
  %519 = fptrunc <8 x double> %518 to <8 x float>
  %520 = bitcast float* %507 to <8 x float>*
  store <8 x float> %519, <8 x float>* %520, align 4, !tbaa !12, !llvm.access.group !16
  %521 = trunc i64 %mul.i.i.i to i32
  %522 = or i32 %521, 16
  %523 = add i32 %mul.i.i.5, %522
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds float, float* %6, i64 %524
  %526 = bitcast float* %525 to <8 x float>*
  %wide.load99.2 = load <8 x float>, <8 x float>* %526, align 4, !tbaa !12, !llvm.access.group !16
  %527 = fpext <8 x float> %wide.load99.2 to <8 x double>
  %528 = getelementptr inbounds float, float* %9, i64 %524
  %529 = bitcast float* %528 to <8 x float>*
  %wide.load100.2 = load <8 x float>, <8 x float>* %529, align 4, !tbaa !12, !llvm.access.group !16
  %530 = add i32 %523, -1
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds float, float* %9, i64 %531
  %533 = bitcast float* %532 to <8 x float>*
  %wide.load101.2 = load <8 x float>, <8 x float>* %533, align 4, !tbaa !12, !llvm.access.group !16
  %534 = fsub <8 x float> %wide.load100.2, %wide.load101.2
  %535 = fpext <8 x float> %534 to <8 x double>
  %536 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %535, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %527)
  %537 = fptrunc <8 x double> %536 to <8 x float>
  %538 = bitcast float* %525 to <8 x float>*
  store <8 x float> %537, <8 x float>* %538, align 4, !tbaa !12, !llvm.access.group !16
  %539 = trunc i64 %mul.i.i.i to i32
  %540 = or i32 %539, 24
  %541 = add i32 %mul.i.i.5, %540
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds float, float* %6, i64 %542
  %544 = bitcast float* %543 to <8 x float>*
  %wide.load99.3 = load <8 x float>, <8 x float>* %544, align 4, !tbaa !12, !llvm.access.group !16
  %545 = fpext <8 x float> %wide.load99.3 to <8 x double>
  %546 = getelementptr inbounds float, float* %9, i64 %542
  %547 = bitcast float* %546 to <8 x float>*
  %wide.load100.3 = load <8 x float>, <8 x float>* %547, align 4, !tbaa !12, !llvm.access.group !16
  %548 = add i32 %541, -1
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds float, float* %9, i64 %549
  %551 = bitcast float* %550 to <8 x float>*
  %wide.load101.3 = load <8 x float>, <8 x float>* %551, align 4, !tbaa !12, !llvm.access.group !16
  %552 = fsub <8 x float> %wide.load100.3, %wide.load101.3
  %553 = fpext <8 x float> %552 to <8 x double>
  %554 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %553, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %545)
  %555 = fptrunc <8 x double> %554 to <8 x float>
  %556 = bitcast float* %543 to <8 x float>*
  store <8 x float> %555, <8 x float>* %556, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.5:                    ; preds = %pregion_for_entry.entry.i.i.5, %pregion_for_entry.entry.i.i.5.preheader
  %_local_id_x.i.0.5 = phi i64 [ %566, %pregion_for_entry.entry.i.i.5 ], [ 0, %pregion_for_entry.entry.i.i.5.preheader ]
  %add1.i.i.i.5 = add nuw nsw i64 %_local_id_x.i.0.5, %mul.i.i.i
  %conv.i.i.5 = trunc i64 %add1.i.i.i.5 to i32
  %add.i.i.5 = add i32 %mul.i.i.5, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.5
  %557 = load float, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.5 = fpext float %557 to double
  %arrayidx7.i.i.5 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.5
  %558 = load float, float* %arrayidx7.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.5 = add i32 %add.i.i.5, -1
  %idxprom10.i.i.5 = sext i32 %add9.i.i.5 to i64
  %arrayidx11.i.i.5 = getelementptr inbounds float, float* %9, i64 %idxprom10.i.i.5
  %559 = load float, float* %arrayidx11.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.5 = fsub float %558, %559
  %conv13.i.i.5 = fpext float %sub12.i.i.5 to double
  %560 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.5, double -5.000000e-01, double %conv3.i.i.5) #3
  %conv15.i.i.5 = fptrunc double %560 to float
  store float %conv15.i.i.5, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %561 = or i64 %_local_id_x.i.0.5, 1
  %add1.i.i.i.5.1 = add nuw nsw i64 %561, %mul.i.i.i
  %conv.i.i.5.1 = trunc i64 %add1.i.i.i.5.1 to i32
  %add.i.i.5.1 = add i32 %mul.i.i.5, %conv.i.i.5.1
  %idxprom.i.i.5.1 = sext i32 %add.i.i.5.1 to i64
  %arrayidx.i.i.5.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.5.1
  %562 = load float, float* %arrayidx.i.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.5.1 = fpext float %562 to double
  %arrayidx7.i.i.5.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.5.1
  %563 = load float, float* %arrayidx7.i.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.5.1 = add i32 %add.i.i.5.1, -1
  %idxprom10.i.i.5.1 = sext i32 %add9.i.i.5.1 to i64
  %arrayidx11.i.i.5.1 = getelementptr inbounds float, float* %9, i64 %idxprom10.i.i.5.1
  %564 = load float, float* %arrayidx11.i.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.5.1 = fsub float %563, %564
  %conv13.i.i.5.1 = fpext float %sub12.i.i.5.1 to double
  %565 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.5.1, double -5.000000e-01, double %conv3.i.i.5.1) #3
  %conv15.i.i.5.1 = fptrunc double %565 to float
  store float %conv15.i.i.5.1, float* %arrayidx.i.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %566 = add nuw nsw i64 %_local_id_x.i.0.5, 2
  %exitcond.5.not.1 = icmp eq i64 %566, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.5, !llvm.loop !42

pregion_for_end.i.i.5.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.5
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.body85
  %567 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.6 = or i32 %567, 6
  %mul.i.i.6 = mul nsw i32 %13, %conv2.i.i.6
  %568 = mul i32 %13, %conv2.i.i.6
  %569 = trunc i64 %2 to i32
  %570 = shl i32 %569, 5
  %571 = add i32 %568, %570
  %572 = icmp sgt i32 %571, 2147483616
  %573 = add i32 %568, %570
  %574 = add i32 %573, -1
  %575 = add i32 %573, 30
  %576 = icmp slt i32 %575, %574
  %577 = or i1 %572, %576
  br i1 %577, label %pregion_for_entry.entry.i.i.6.preheader, label %vector.body104

pregion_for_entry.entry.i.i.6.preheader:          ; preds = %pregion_for_end.i.i.5
  br label %pregion_for_entry.entry.i.i.6

vector.body104:                                   ; preds = %pregion_for_end.i.i.5
  %578 = trunc i64 %mul.i.i.i to i32
  %579 = add i32 %mul.i.i.6, %578
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds float, float* %6, i64 %580
  %582 = bitcast float* %581 to <8 x float>*
  %wide.load118 = load <8 x float>, <8 x float>* %582, align 4, !tbaa !12, !llvm.access.group !16
  %583 = fpext <8 x float> %wide.load118 to <8 x double>
  %584 = getelementptr inbounds float, float* %9, i64 %580
  %585 = bitcast float* %584 to <8 x float>*
  %wide.load119 = load <8 x float>, <8 x float>* %585, align 4, !tbaa !12, !llvm.access.group !16
  %586 = add i32 %579, -1
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds float, float* %9, i64 %587
  %589 = bitcast float* %588 to <8 x float>*
  %wide.load120 = load <8 x float>, <8 x float>* %589, align 4, !tbaa !12, !llvm.access.group !16
  %590 = fsub <8 x float> %wide.load119, %wide.load120
  %591 = fpext <8 x float> %590 to <8 x double>
  %592 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %591, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %583)
  %593 = fptrunc <8 x double> %592 to <8 x float>
  %594 = bitcast float* %581 to <8 x float>*
  store <8 x float> %593, <8 x float>* %594, align 4, !tbaa !12, !llvm.access.group !16
  %595 = trunc i64 %mul.i.i.i to i32
  %596 = or i32 %595, 8
  %597 = add i32 %mul.i.i.6, %596
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds float, float* %6, i64 %598
  %600 = bitcast float* %599 to <8 x float>*
  %wide.load118.1 = load <8 x float>, <8 x float>* %600, align 4, !tbaa !12, !llvm.access.group !16
  %601 = fpext <8 x float> %wide.load118.1 to <8 x double>
  %602 = getelementptr inbounds float, float* %9, i64 %598
  %603 = bitcast float* %602 to <8 x float>*
  %wide.load119.1 = load <8 x float>, <8 x float>* %603, align 4, !tbaa !12, !llvm.access.group !16
  %604 = add i32 %597, -1
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds float, float* %9, i64 %605
  %607 = bitcast float* %606 to <8 x float>*
  %wide.load120.1 = load <8 x float>, <8 x float>* %607, align 4, !tbaa !12, !llvm.access.group !16
  %608 = fsub <8 x float> %wide.load119.1, %wide.load120.1
  %609 = fpext <8 x float> %608 to <8 x double>
  %610 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %609, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %601)
  %611 = fptrunc <8 x double> %610 to <8 x float>
  %612 = bitcast float* %599 to <8 x float>*
  store <8 x float> %611, <8 x float>* %612, align 4, !tbaa !12, !llvm.access.group !16
  %613 = trunc i64 %mul.i.i.i to i32
  %614 = or i32 %613, 16
  %615 = add i32 %mul.i.i.6, %614
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds float, float* %6, i64 %616
  %618 = bitcast float* %617 to <8 x float>*
  %wide.load118.2 = load <8 x float>, <8 x float>* %618, align 4, !tbaa !12, !llvm.access.group !16
  %619 = fpext <8 x float> %wide.load118.2 to <8 x double>
  %620 = getelementptr inbounds float, float* %9, i64 %616
  %621 = bitcast float* %620 to <8 x float>*
  %wide.load119.2 = load <8 x float>, <8 x float>* %621, align 4, !tbaa !12, !llvm.access.group !16
  %622 = add i32 %615, -1
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds float, float* %9, i64 %623
  %625 = bitcast float* %624 to <8 x float>*
  %wide.load120.2 = load <8 x float>, <8 x float>* %625, align 4, !tbaa !12, !llvm.access.group !16
  %626 = fsub <8 x float> %wide.load119.2, %wide.load120.2
  %627 = fpext <8 x float> %626 to <8 x double>
  %628 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %627, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %619)
  %629 = fptrunc <8 x double> %628 to <8 x float>
  %630 = bitcast float* %617 to <8 x float>*
  store <8 x float> %629, <8 x float>* %630, align 4, !tbaa !12, !llvm.access.group !16
  %631 = trunc i64 %mul.i.i.i to i32
  %632 = or i32 %631, 24
  %633 = add i32 %mul.i.i.6, %632
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds float, float* %6, i64 %634
  %636 = bitcast float* %635 to <8 x float>*
  %wide.load118.3 = load <8 x float>, <8 x float>* %636, align 4, !tbaa !12, !llvm.access.group !16
  %637 = fpext <8 x float> %wide.load118.3 to <8 x double>
  %638 = getelementptr inbounds float, float* %9, i64 %634
  %639 = bitcast float* %638 to <8 x float>*
  %wide.load119.3 = load <8 x float>, <8 x float>* %639, align 4, !tbaa !12, !llvm.access.group !16
  %640 = add i32 %633, -1
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds float, float* %9, i64 %641
  %643 = bitcast float* %642 to <8 x float>*
  %wide.load120.3 = load <8 x float>, <8 x float>* %643, align 4, !tbaa !12, !llvm.access.group !16
  %644 = fsub <8 x float> %wide.load119.3, %wide.load120.3
  %645 = fpext <8 x float> %644 to <8 x double>
  %646 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %645, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %637)
  %647 = fptrunc <8 x double> %646 to <8 x float>
  %648 = bitcast float* %635 to <8 x float>*
  store <8 x float> %647, <8 x float>* %648, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.6:                    ; preds = %pregion_for_entry.entry.i.i.6, %pregion_for_entry.entry.i.i.6.preheader
  %_local_id_x.i.0.6 = phi i64 [ %658, %pregion_for_entry.entry.i.i.6 ], [ 0, %pregion_for_entry.entry.i.i.6.preheader ]
  %add1.i.i.i.6 = add nuw nsw i64 %_local_id_x.i.0.6, %mul.i.i.i
  %conv.i.i.6 = trunc i64 %add1.i.i.i.6 to i32
  %add.i.i.6 = add i32 %mul.i.i.6, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.6
  %649 = load float, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.6 = fpext float %649 to double
  %arrayidx7.i.i.6 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.6
  %650 = load float, float* %arrayidx7.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.6 = add i32 %add.i.i.6, -1
  %idxprom10.i.i.6 = sext i32 %add9.i.i.6 to i64
  %arrayidx11.i.i.6 = getelementptr inbounds float, float* %9, i64 %idxprom10.i.i.6
  %651 = load float, float* %arrayidx11.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.6 = fsub float %650, %651
  %conv13.i.i.6 = fpext float %sub12.i.i.6 to double
  %652 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.6, double -5.000000e-01, double %conv3.i.i.6) #3
  %conv15.i.i.6 = fptrunc double %652 to float
  store float %conv15.i.i.6, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %653 = or i64 %_local_id_x.i.0.6, 1
  %add1.i.i.i.6.1 = add nuw nsw i64 %653, %mul.i.i.i
  %conv.i.i.6.1 = trunc i64 %add1.i.i.i.6.1 to i32
  %add.i.i.6.1 = add i32 %mul.i.i.6, %conv.i.i.6.1
  %idxprom.i.i.6.1 = sext i32 %add.i.i.6.1 to i64
  %arrayidx.i.i.6.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.6.1
  %654 = load float, float* %arrayidx.i.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.6.1 = fpext float %654 to double
  %arrayidx7.i.i.6.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.6.1
  %655 = load float, float* %arrayidx7.i.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.6.1 = add nsw i32 %add.i.i.6.1, -1
  %idxprom10.i.i.6.1 = sext i32 %add9.i.i.6.1 to i64
  %arrayidx11.i.i.6.1 = getelementptr inbounds float, float* %9, i64 %idxprom10.i.i.6.1
  %656 = load float, float* %arrayidx11.i.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.6.1 = fsub float %655, %656
  %conv13.i.i.6.1 = fpext float %sub12.i.i.6.1 to double
  %657 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.6.1, double -5.000000e-01, double %conv3.i.i.6.1) #3
  %conv15.i.i.6.1 = fptrunc double %657 to float
  store float %conv15.i.i.6.1, float* %arrayidx.i.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %658 = add nuw nsw i64 %_local_id_x.i.0.6, 2
  %exitcond.6.not.1 = icmp eq i64 %658, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.6, !llvm.loop !43

pregion_for_end.i.i.6.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.6
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.body104
  %659 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.7 = or i32 %659, 7
  %mul.i.i.7 = mul nsw i32 %13, %conv2.i.i.7
  %660 = mul i32 %13, %conv2.i.i.7
  %661 = trunc i64 %2 to i32
  %662 = shl i32 %661, 5
  %663 = add i32 %660, %662
  %664 = icmp sgt i32 %663, 2147483616
  %665 = add i32 %660, %662
  %666 = add i32 %665, -1
  %667 = add i32 %665, 30
  %668 = icmp slt i32 %667, %666
  %669 = or i1 %664, %668
  br i1 %669, label %pregion_for_entry.entry.i.i.7.preheader, label %vector.body123

pregion_for_entry.entry.i.i.7.preheader:          ; preds = %pregion_for_end.i.i.6
  br label %pregion_for_entry.entry.i.i.7

vector.body123:                                   ; preds = %pregion_for_end.i.i.6
  %670 = trunc i64 %mul.i.i.i to i32
  %671 = add i32 %mul.i.i.7, %670
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds float, float* %6, i64 %672
  %674 = bitcast float* %673 to <8 x float>*
  %wide.load137 = load <8 x float>, <8 x float>* %674, align 4, !tbaa !12, !llvm.access.group !16
  %675 = fpext <8 x float> %wide.load137 to <8 x double>
  %676 = getelementptr inbounds float, float* %9, i64 %672
  %677 = bitcast float* %676 to <8 x float>*
  %wide.load138 = load <8 x float>, <8 x float>* %677, align 4, !tbaa !12, !llvm.access.group !16
  %678 = add i32 %671, -1
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds float, float* %9, i64 %679
  %681 = bitcast float* %680 to <8 x float>*
  %wide.load139 = load <8 x float>, <8 x float>* %681, align 4, !tbaa !12, !llvm.access.group !16
  %682 = fsub <8 x float> %wide.load138, %wide.load139
  %683 = fpext <8 x float> %682 to <8 x double>
  %684 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %683, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %675)
  %685 = fptrunc <8 x double> %684 to <8 x float>
  %686 = bitcast float* %673 to <8 x float>*
  store <8 x float> %685, <8 x float>* %686, align 4, !tbaa !12, !llvm.access.group !16
  %687 = trunc i64 %mul.i.i.i to i32
  %688 = or i32 %687, 8
  %689 = add i32 %mul.i.i.7, %688
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds float, float* %6, i64 %690
  %692 = bitcast float* %691 to <8 x float>*
  %wide.load137.1 = load <8 x float>, <8 x float>* %692, align 4, !tbaa !12, !llvm.access.group !16
  %693 = fpext <8 x float> %wide.load137.1 to <8 x double>
  %694 = getelementptr inbounds float, float* %9, i64 %690
  %695 = bitcast float* %694 to <8 x float>*
  %wide.load138.1 = load <8 x float>, <8 x float>* %695, align 4, !tbaa !12, !llvm.access.group !16
  %696 = add i32 %689, -1
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds float, float* %9, i64 %697
  %699 = bitcast float* %698 to <8 x float>*
  %wide.load139.1 = load <8 x float>, <8 x float>* %699, align 4, !tbaa !12, !llvm.access.group !16
  %700 = fsub <8 x float> %wide.load138.1, %wide.load139.1
  %701 = fpext <8 x float> %700 to <8 x double>
  %702 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %701, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %693)
  %703 = fptrunc <8 x double> %702 to <8 x float>
  %704 = bitcast float* %691 to <8 x float>*
  store <8 x float> %703, <8 x float>* %704, align 4, !tbaa !12, !llvm.access.group !16
  %705 = trunc i64 %mul.i.i.i to i32
  %706 = or i32 %705, 16
  %707 = add i32 %mul.i.i.7, %706
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds float, float* %6, i64 %708
  %710 = bitcast float* %709 to <8 x float>*
  %wide.load137.2 = load <8 x float>, <8 x float>* %710, align 4, !tbaa !12, !llvm.access.group !16
  %711 = fpext <8 x float> %wide.load137.2 to <8 x double>
  %712 = getelementptr inbounds float, float* %9, i64 %708
  %713 = bitcast float* %712 to <8 x float>*
  %wide.load138.2 = load <8 x float>, <8 x float>* %713, align 4, !tbaa !12, !llvm.access.group !16
  %714 = add i32 %707, -1
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds float, float* %9, i64 %715
  %717 = bitcast float* %716 to <8 x float>*
  %wide.load139.2 = load <8 x float>, <8 x float>* %717, align 4, !tbaa !12, !llvm.access.group !16
  %718 = fsub <8 x float> %wide.load138.2, %wide.load139.2
  %719 = fpext <8 x float> %718 to <8 x double>
  %720 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %719, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %711)
  %721 = fptrunc <8 x double> %720 to <8 x float>
  %722 = bitcast float* %709 to <8 x float>*
  store <8 x float> %721, <8 x float>* %722, align 4, !tbaa !12, !llvm.access.group !16
  %723 = trunc i64 %mul.i.i.i to i32
  %724 = or i32 %723, 24
  %725 = add i32 %mul.i.i.7, %724
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds float, float* %6, i64 %726
  %728 = bitcast float* %727 to <8 x float>*
  %wide.load137.3 = load <8 x float>, <8 x float>* %728, align 4, !tbaa !12, !llvm.access.group !16
  %729 = fpext <8 x float> %wide.load137.3 to <8 x double>
  %730 = getelementptr inbounds float, float* %9, i64 %726
  %731 = bitcast float* %730 to <8 x float>*
  %wide.load138.3 = load <8 x float>, <8 x float>* %731, align 4, !tbaa !12, !llvm.access.group !16
  %732 = add i32 %725, -1
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds float, float* %9, i64 %733
  %735 = bitcast float* %734 to <8 x float>*
  %wide.load139.3 = load <8 x float>, <8 x float>* %735, align 4, !tbaa !12, !llvm.access.group !16
  %736 = fsub <8 x float> %wide.load138.3, %wide.load139.3
  %737 = fpext <8 x float> %736 to <8 x double>
  %738 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %737, <8 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <8 x double> %729)
  %739 = fptrunc <8 x double> %738 to <8 x float>
  %740 = bitcast float* %727 to <8 x float>*
  store <8 x float> %739, <8 x float>* %740, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.7

pregion_for_entry.entry.i.i.7:                    ; preds = %pregion_for_entry.entry.i.i.7, %pregion_for_entry.entry.i.i.7.preheader
  %_local_id_x.i.0.7 = phi i64 [ %750, %pregion_for_entry.entry.i.i.7 ], [ 0, %pregion_for_entry.entry.i.i.7.preheader ]
  %add1.i.i.i.7 = add nuw nsw i64 %_local_id_x.i.0.7, %mul.i.i.i
  %conv.i.i.7 = trunc i64 %add1.i.i.i.7 to i32
  %add.i.i.7 = add i32 %mul.i.i.7, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.7
  %741 = load float, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.7 = fpext float %741 to double
  %arrayidx7.i.i.7 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.7
  %742 = load float, float* %arrayidx7.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.7 = add i32 %add.i.i.7, -1
  %idxprom10.i.i.7 = sext i32 %add9.i.i.7 to i64
  %arrayidx11.i.i.7 = getelementptr inbounds float, float* %9, i64 %idxprom10.i.i.7
  %743 = load float, float* %arrayidx11.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.7 = fsub float %742, %743
  %conv13.i.i.7 = fpext float %sub12.i.i.7 to double
  %744 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.7, double -5.000000e-01, double %conv3.i.i.7) #3
  %conv15.i.i.7 = fptrunc double %744 to float
  store float %conv15.i.i.7, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %745 = or i64 %_local_id_x.i.0.7, 1
  %add1.i.i.i.7.1 = add nuw nsw i64 %745, %mul.i.i.i
  %conv.i.i.7.1 = trunc i64 %add1.i.i.i.7.1 to i32
  %add.i.i.7.1 = add i32 %mul.i.i.7, %conv.i.i.7.1
  %idxprom.i.i.7.1 = sext i32 %add.i.i.7.1 to i64
  %arrayidx.i.i.7.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.7.1
  %746 = load float, float* %arrayidx.i.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %conv3.i.i.7.1 = fpext float %746 to double
  %arrayidx7.i.i.7.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.7.1
  %747 = load float, float* %arrayidx7.i.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %add9.i.i.7.1 = add i32 %add.i.i.7.1, -1
  %idxprom10.i.i.7.1 = sext i32 %add9.i.i.7.1 to i64
  %arrayidx11.i.i.7.1 = getelementptr inbounds float, float* %9, i64 %idxprom10.i.i.7.1
  %748 = load float, float* %arrayidx11.i.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sub12.i.i.7.1 = fsub float %747, %748
  %conv13.i.i.7.1 = fpext float %sub12.i.i.7.1 to double
  %749 = tail call double @llvm.fmuladd.f64(double %conv13.i.i.7.1, double -5.000000e-01, double %conv3.i.i.7.1) #3
  %conv15.i.i.7.1 = fptrunc double %749 to float
  store float %conv15.i.i.7.1, float* %arrayidx.i.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %750 = add nuw nsw i64 %_local_id_x.i.0.7, 2
  %exitcond.7.not.1 = icmp eq i64 %750, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.i.7.loopexit, label %pregion_for_entry.entry.i.i.7, !llvm.loop !44

pregion_for_end.i.i.7.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.7
  br label %pregion_for_end.i.i.7

pregion_for_end.i.i.7:                            ; preds = %pregion_for_end.i.i.7.loopexit, %vector.body123
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
!16 = !{!17, !18}
!17 = distinct !{}
!18 = distinct !{}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.parallel_accesses", !17}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = distinct !{!22, !20, !21}
!23 = distinct !{!23, !20, !21}
!24 = distinct !{!24, !20, !21}
!25 = distinct !{!25, !20, !21}
!26 = distinct !{!26, !20, !21}
!27 = distinct !{!27, !20, !21}
!28 = distinct !{!28, !20, !21}
!29 = distinct !{!29, !20, !21}
!30 = distinct !{!30, !20, !21}
!31 = distinct !{!31, !20, !21}
!32 = distinct !{!32, !20, !21}
!33 = distinct !{!33, !20, !21}
!34 = distinct !{!34, !20, !21}
!35 = distinct !{!35, !20, !21}
!36 = distinct !{!36, !20, !21}
!37 = distinct !{!37, !20, !21}
!38 = distinct !{!38, !20, !21}
!39 = distinct !{!39, !20, !21}
!40 = distinct !{!40, !20, !21}
!41 = distinct !{!41, !20, !21}
!42 = distinct !{!42, !20, !21}
!43 = distinct !{!43, !20, !21}
!44 = distinct !{!44, !20, !21}
