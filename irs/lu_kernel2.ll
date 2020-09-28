; ModuleID = 'parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_lu_kernel2(float* nocapture %0, i32 %1, i32 %2, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %3, i64 %4, i64 %5, i64 %6) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
pregion_for_entry.pregion_for_init.i:
  %mul.i.i = shl i64 %4, 5
  %add.i = add nsw i32 %1, 1
  %mul3.i.i = shl i64 %5, 3
  %mul13.i = mul nsw i32 %2, %1
  %7 = trunc i64 %mul3.i.i to i32
  %conv7.i = add i32 %add.i, %7
  %mul.i = mul nsw i32 %conv7.i, %2
  %add10.i = add nsw i32 %mul.i, %1
  %idxprom11.i = sext i32 %add10.i to i64
  %arrayidx12.i = getelementptr inbounds float, float* %0, i64 %idxprom11.i
  %8 = mul i32 %conv7.i, %2
  %9 = add i32 %8, %1
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 5
  %12 = add i32 %9, %11
  %13 = add i32 %12, 1
  %14 = add i32 %12, 32
  %15 = icmp slt i32 %14, %13
  %16 = add i32 %2, 1
  %17 = mul i32 %16, %1
  %18 = add i32 %17, %11
  %19 = add i32 %18, 1
  %20 = add i32 %18, 32
  %21 = icmp slt i32 %20, %19
  %22 = or i1 %15, %21
  br i1 %22, label %pregion_for_entry.entry.i.preheader, label %vector.body

pregion_for_entry.entry.i.preheader:              ; preds = %pregion_for_entry.pregion_for_init.i
  br label %pregion_for_entry.entry.i

vector.body:                                      ; preds = %pregion_for_entry.pregion_for_init.i
  %23 = trunc i64 %mul.i.i to i32
  %24 = add i32 %add.i, %23
  %25 = add nsw i32 %24, %mul.i
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %0, i64 %26
  %28 = bitcast float* %27 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %28, align 4, !tbaa !12, !llvm.access.group !16
  %29 = load float, float* %arrayidx12.i, align 4, !tbaa !12, !llvm.access.group !16
  %30 = insertelement <8 x float> undef, float %29, i32 0
  %31 = shufflevector <8 x float> %30, <8 x float> undef, <8 x i32> zeroinitializer
  %32 = add nsw i32 %24, %mul13.i
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %0, i64 %33
  %35 = bitcast float* %34 to <8 x float>*
  %wide.load5 = load <8 x float>, <8 x float>* %35, align 4, !tbaa !12, !llvm.access.group !16
  %36 = fneg <8 x float> %31
  %37 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %36, <8 x float> %wide.load5, <8 x float> %wide.load)
  %38 = bitcast float* %27 to <8 x float>*
  store <8 x float> %37, <8 x float>* %38, align 4, !tbaa !12, !llvm.access.group !16
  %39 = trunc i64 %mul.i.i to i32
  %40 = or i32 %39, 8
  %41 = add i32 %add.i, %40
  %42 = add nsw i32 %41, %mul.i
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %0, i64 %43
  %45 = bitcast float* %44 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %45, align 4, !tbaa !12, !llvm.access.group !16
  %46 = load float, float* %arrayidx12.i, align 4, !tbaa !12, !llvm.access.group !16
  %47 = insertelement <8 x float> undef, float %46, i32 0
  %48 = shufflevector <8 x float> %47, <8 x float> undef, <8 x i32> zeroinitializer
  %49 = add nsw i32 %41, %mul13.i
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %0, i64 %50
  %52 = bitcast float* %51 to <8 x float>*
  %wide.load5.1 = load <8 x float>, <8 x float>* %52, align 4, !tbaa !12, !llvm.access.group !16
  %53 = fneg <8 x float> %48
  %54 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %53, <8 x float> %wide.load5.1, <8 x float> %wide.load.1)
  %55 = bitcast float* %44 to <8 x float>*
  store <8 x float> %54, <8 x float>* %55, align 4, !tbaa !12, !llvm.access.group !16
  %56 = trunc i64 %mul.i.i to i32
  %57 = or i32 %56, 16
  %58 = add i32 %add.i, %57
  %59 = add nsw i32 %58, %mul.i
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %0, i64 %60
  %62 = bitcast float* %61 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %62, align 4, !tbaa !12, !llvm.access.group !16
  %63 = load float, float* %arrayidx12.i, align 4, !tbaa !12, !llvm.access.group !16
  %64 = insertelement <8 x float> undef, float %63, i32 0
  %65 = shufflevector <8 x float> %64, <8 x float> undef, <8 x i32> zeroinitializer
  %66 = add nsw i32 %58, %mul13.i
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %0, i64 %67
  %69 = bitcast float* %68 to <8 x float>*
  %wide.load5.2 = load <8 x float>, <8 x float>* %69, align 4, !tbaa !12, !llvm.access.group !16
  %70 = fneg <8 x float> %65
  %71 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %70, <8 x float> %wide.load5.2, <8 x float> %wide.load.2)
  %72 = bitcast float* %61 to <8 x float>*
  store <8 x float> %71, <8 x float>* %72, align 4, !tbaa !12, !llvm.access.group !16
  %73 = trunc i64 %mul.i.i to i32
  %74 = or i32 %73, 24
  %75 = add i32 %add.i, %74
  %76 = add nsw i32 %75, %mul.i
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %0, i64 %77
  %79 = bitcast float* %78 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %79, align 4, !tbaa !12, !llvm.access.group !16
  %80 = load float, float* %arrayidx12.i, align 4, !tbaa !12, !llvm.access.group !16
  %81 = insertelement <8 x float> undef, float %80, i32 0
  %82 = shufflevector <8 x float> %81, <8 x float> undef, <8 x i32> zeroinitializer
  %83 = add nsw i32 %75, %mul13.i
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %0, i64 %84
  %86 = bitcast float* %85 to <8 x float>*
  %wide.load5.3 = load <8 x float>, <8 x float>* %86, align 4, !tbaa !12, !llvm.access.group !16
  %87 = fneg <8 x float> %82
  %88 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %87, <8 x float> %wide.load5.3, <8 x float> %wide.load.3)
  %89 = bitcast float* %78 to <8 x float>*
  store <8 x float> %88, <8 x float>* %89, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i

pregion_for_end.i.loopexit:                       ; preds = %pregion_for_entry.entry.i
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %pregion_for_end.i.loopexit, %vector.body
  %90 = trunc i64 %mul3.i.i to i32
  %91 = or i32 %90, 1
  %conv7.i.1 = add i32 %add.i, %91
  %mul.i.1 = mul nsw i32 %conv7.i.1, %2
  %add10.i.1 = add nsw i32 %mul.i.1, %1
  %idxprom11.i.1 = sext i32 %add10.i.1 to i64
  %arrayidx12.i.1 = getelementptr inbounds float, float* %0, i64 %idxprom11.i.1
  %92 = mul i32 %conv7.i.1, %2
  %93 = add i32 %92, %1
  %94 = trunc i64 %4 to i32
  %95 = shl i32 %94, 5
  %96 = add i32 %93, %95
  %97 = add i32 %96, 1
  %98 = add i32 %96, 32
  %99 = icmp slt i32 %98, %97
  %100 = add i32 %2, 1
  %101 = mul i32 %100, %1
  %102 = add i32 %101, %95
  %103 = add i32 %102, 1
  %104 = add i32 %102, 32
  %105 = icmp slt i32 %104, %103
  %106 = or i1 %99, %105
  br i1 %106, label %pregion_for_entry.entry.i.1.preheader, label %vector.body8

pregion_for_entry.entry.i.1.preheader:            ; preds = %pregion_for_end.i
  br label %pregion_for_entry.entry.i.1

vector.body8:                                     ; preds = %pregion_for_end.i
  %107 = trunc i64 %mul.i.i to i32
  %108 = add i32 %add.i, %107
  %109 = add nsw i32 %108, %mul.i.1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %0, i64 %110
  %112 = bitcast float* %111 to <8 x float>*
  %wide.load22 = load <8 x float>, <8 x float>* %112, align 4, !tbaa !12, !llvm.access.group !16
  %113 = load float, float* %arrayidx12.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %114 = insertelement <8 x float> undef, float %113, i32 0
  %115 = shufflevector <8 x float> %114, <8 x float> undef, <8 x i32> zeroinitializer
  %116 = add nsw i32 %108, %mul13.i
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %0, i64 %117
  %119 = bitcast float* %118 to <8 x float>*
  %wide.load23 = load <8 x float>, <8 x float>* %119, align 4, !tbaa !12, !llvm.access.group !16
  %120 = fneg <8 x float> %115
  %121 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %120, <8 x float> %wide.load23, <8 x float> %wide.load22)
  %122 = bitcast float* %111 to <8 x float>*
  store <8 x float> %121, <8 x float>* %122, align 4, !tbaa !12, !llvm.access.group !16
  %123 = trunc i64 %mul.i.i to i32
  %124 = or i32 %123, 8
  %125 = add i32 %add.i, %124
  %126 = add nsw i32 %125, %mul.i.1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %0, i64 %127
  %129 = bitcast float* %128 to <8 x float>*
  %wide.load22.1 = load <8 x float>, <8 x float>* %129, align 4, !tbaa !12, !llvm.access.group !16
  %130 = load float, float* %arrayidx12.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %131 = insertelement <8 x float> undef, float %130, i32 0
  %132 = shufflevector <8 x float> %131, <8 x float> undef, <8 x i32> zeroinitializer
  %133 = add nsw i32 %125, %mul13.i
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, float* %0, i64 %134
  %136 = bitcast float* %135 to <8 x float>*
  %wide.load23.1 = load <8 x float>, <8 x float>* %136, align 4, !tbaa !12, !llvm.access.group !16
  %137 = fneg <8 x float> %132
  %138 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %137, <8 x float> %wide.load23.1, <8 x float> %wide.load22.1)
  %139 = bitcast float* %128 to <8 x float>*
  store <8 x float> %138, <8 x float>* %139, align 4, !tbaa !12, !llvm.access.group !16
  %140 = trunc i64 %mul.i.i to i32
  %141 = or i32 %140, 16
  %142 = add i32 %add.i, %141
  %143 = add nsw i32 %142, %mul.i.1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %0, i64 %144
  %146 = bitcast float* %145 to <8 x float>*
  %wide.load22.2 = load <8 x float>, <8 x float>* %146, align 4, !tbaa !12, !llvm.access.group !16
  %147 = load float, float* %arrayidx12.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %148 = insertelement <8 x float> undef, float %147, i32 0
  %149 = shufflevector <8 x float> %148, <8 x float> undef, <8 x i32> zeroinitializer
  %150 = add nsw i32 %142, %mul13.i
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %0, i64 %151
  %153 = bitcast float* %152 to <8 x float>*
  %wide.load23.2 = load <8 x float>, <8 x float>* %153, align 4, !tbaa !12, !llvm.access.group !16
  %154 = fneg <8 x float> %149
  %155 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %154, <8 x float> %wide.load23.2, <8 x float> %wide.load22.2)
  %156 = bitcast float* %145 to <8 x float>*
  store <8 x float> %155, <8 x float>* %156, align 4, !tbaa !12, !llvm.access.group !16
  %157 = trunc i64 %mul.i.i to i32
  %158 = or i32 %157, 24
  %159 = add i32 %add.i, %158
  %160 = add nsw i32 %159, %mul.i.1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %0, i64 %161
  %163 = bitcast float* %162 to <8 x float>*
  %wide.load22.3 = load <8 x float>, <8 x float>* %163, align 4, !tbaa !12, !llvm.access.group !16
  %164 = load float, float* %arrayidx12.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %165 = insertelement <8 x float> undef, float %164, i32 0
  %166 = shufflevector <8 x float> %165, <8 x float> undef, <8 x i32> zeroinitializer
  %167 = add nsw i32 %159, %mul13.i
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %0, i64 %168
  %170 = bitcast float* %169 to <8 x float>*
  %wide.load23.3 = load <8 x float>, <8 x float>* %170, align 4, !tbaa !12, !llvm.access.group !16
  %171 = fneg <8 x float> %166
  %172 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %171, <8 x float> %wide.load23.3, <8 x float> %wide.load22.3)
  %173 = bitcast float* %162 to <8 x float>*
  store <8 x float> %172, <8 x float>* %173, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.1

pregion_for_entry.entry.i:                        ; preds = %pregion_for_entry.entry.i, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ %185, %pregion_for_entry.entry.i ], [ 0, %pregion_for_entry.entry.i.preheader ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %174 = trunc i64 %add1.i.i to i32
  %conv2.i = add i32 %add.i, %174
  %add8.i = add nsw i32 %conv2.i, %mul.i
  %idxprom.i = sext i32 %add8.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %0, i64 %idxprom.i
  %175 = load float, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %176 = load float, float* %arrayidx12.i, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i = add nsw i32 %conv2.i, %mul13.i
  %idxprom15.i = sext i32 %add14.i to i64
  %arrayidx16.i = getelementptr inbounds float, float* %0, i64 %idxprom15.i
  %177 = load float, float* %arrayidx16.i, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i = fneg float %176
  %178 = tail call float @llvm.fmuladd.f32(float %neg.i, float %177, float %175) #3
  store float %178, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %179 = or i64 %_local_id_x.0, 1
  %add1.i.i.1141 = add nuw nsw i64 %179, %mul.i.i
  %180 = trunc i64 %add1.i.i.1141 to i32
  %conv2.i.1142 = add i32 %add.i, %180
  %add8.i.1143 = add nsw i32 %conv2.i.1142, %mul.i
  %idxprom.i.1144 = sext i32 %add8.i.1143 to i64
  %arrayidx.i.1145 = getelementptr inbounds float, float* %0, i64 %idxprom.i.1144
  %181 = load float, float* %arrayidx.i.1145, align 4, !tbaa !12, !llvm.access.group !16
  %182 = load float, float* %arrayidx12.i, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.1146 = add nsw i32 %conv2.i.1142, %mul13.i
  %idxprom15.i.1147 = sext i32 %add14.i.1146 to i64
  %arrayidx16.i.1148 = getelementptr inbounds float, float* %0, i64 %idxprom15.i.1147
  %183 = load float, float* %arrayidx16.i.1148, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.1149 = fneg float %182
  %184 = tail call float @llvm.fmuladd.f32(float %neg.i.1149, float %183, float %181) #3
  store float %184, float* %arrayidx.i.1145, align 4, !tbaa !12, !llvm.access.group !16
  %185 = add nuw nsw i64 %_local_id_x.0, 2
  %exitcond.not.1 = icmp eq i64 %185, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i, !llvm.loop !19

pregion_for_entry.entry.i.1:                      ; preds = %pregion_for_entry.entry.i.1, %pregion_for_entry.entry.i.1.preheader
  %_local_id_x.0.1 = phi i64 [ %197, %pregion_for_entry.entry.i.1 ], [ 0, %pregion_for_entry.entry.i.1.preheader ]
  %add1.i.i.1 = add nuw nsw i64 %_local_id_x.0.1, %mul.i.i
  %186 = trunc i64 %add1.i.i.1 to i32
  %conv2.i.1 = add i32 %add.i, %186
  %add8.i.1 = add nsw i32 %conv2.i.1, %mul.i.1
  %idxprom.i.1 = sext i32 %add8.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.1
  %187 = load float, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %188 = load float, float* %arrayidx12.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.1 = add nsw i32 %conv2.i.1, %mul13.i
  %idxprom15.i.1 = sext i32 %add14.i.1 to i64
  %arrayidx16.i.1 = getelementptr inbounds float, float* %0, i64 %idxprom15.i.1
  %189 = load float, float* %arrayidx16.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.1 = fneg float %188
  %190 = tail call float @llvm.fmuladd.f32(float %neg.i.1, float %189, float %187) #3
  store float %190, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %191 = or i64 %_local_id_x.0.1, 1
  %add1.i.i.1.1 = add nuw nsw i64 %191, %mul.i.i
  %192 = trunc i64 %add1.i.i.1.1 to i32
  %conv2.i.1.1 = add i32 %add.i, %192
  %add8.i.1.1 = add nsw i32 %conv2.i.1.1, %mul.i.1
  %idxprom.i.1.1 = sext i32 %add8.i.1.1 to i64
  %arrayidx.i.1.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.1.1
  %193 = load float, float* %arrayidx.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %194 = load float, float* %arrayidx12.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.1.1 = add nsw i32 %conv2.i.1.1, %mul13.i
  %idxprom15.i.1.1 = sext i32 %add14.i.1.1 to i64
  %arrayidx16.i.1.1 = getelementptr inbounds float, float* %0, i64 %idxprom15.i.1.1
  %195 = load float, float* %arrayidx16.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.1.1 = fneg float %194
  %196 = tail call float @llvm.fmuladd.f32(float %neg.i.1.1, float %195, float %193) #3
  store float %196, float* %arrayidx.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %197 = add nuw nsw i64 %_local_id_x.0.1, 2
  %exitcond.1.not.1 = icmp eq i64 %197, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.1.loopexit, label %pregion_for_entry.entry.i.1, !llvm.loop !22

pregion_for_end.i.1.loopexit:                     ; preds = %pregion_for_entry.entry.i.1
  br label %pregion_for_end.i.1

pregion_for_end.i.1:                              ; preds = %pregion_for_end.i.1.loopexit, %vector.body8
  %198 = trunc i64 %mul3.i.i to i32
  %199 = or i32 %198, 2
  %conv7.i.2 = add i32 %add.i, %199
  %mul.i.2 = mul nsw i32 %conv7.i.2, %2
  %add10.i.2 = add nsw i32 %mul.i.2, %1
  %idxprom11.i.2 = sext i32 %add10.i.2 to i64
  %arrayidx12.i.2 = getelementptr inbounds float, float* %0, i64 %idxprom11.i.2
  %200 = mul i32 %conv7.i.2, %2
  %201 = add i32 %200, %1
  %202 = trunc i64 %4 to i32
  %203 = shl i32 %202, 5
  %204 = add i32 %201, %203
  %205 = add i32 %204, 1
  %206 = add i32 %204, 32
  %207 = icmp slt i32 %206, %205
  %208 = add i32 %2, 1
  %209 = mul i32 %208, %1
  %210 = add i32 %209, %203
  %211 = add i32 %210, 1
  %212 = add i32 %210, 32
  %213 = icmp slt i32 %212, %211
  %214 = or i1 %207, %213
  br i1 %214, label %pregion_for_entry.entry.i.2.preheader, label %vector.body26

pregion_for_entry.entry.i.2.preheader:            ; preds = %pregion_for_end.i.1
  br label %pregion_for_entry.entry.i.2

vector.body26:                                    ; preds = %pregion_for_end.i.1
  %215 = trunc i64 %mul.i.i to i32
  %216 = add i32 %add.i, %215
  %217 = add nsw i32 %216, %mul.i.2
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %0, i64 %218
  %220 = bitcast float* %219 to <8 x float>*
  %wide.load40 = load <8 x float>, <8 x float>* %220, align 4, !tbaa !12, !llvm.access.group !16
  %221 = load float, float* %arrayidx12.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %222 = insertelement <8 x float> undef, float %221, i32 0
  %223 = shufflevector <8 x float> %222, <8 x float> undef, <8 x i32> zeroinitializer
  %224 = add nsw i32 %216, %mul13.i
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %0, i64 %225
  %227 = bitcast float* %226 to <8 x float>*
  %wide.load41 = load <8 x float>, <8 x float>* %227, align 4, !tbaa !12, !llvm.access.group !16
  %228 = fneg <8 x float> %223
  %229 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %228, <8 x float> %wide.load41, <8 x float> %wide.load40)
  %230 = bitcast float* %219 to <8 x float>*
  store <8 x float> %229, <8 x float>* %230, align 4, !tbaa !12, !llvm.access.group !16
  %231 = trunc i64 %mul.i.i to i32
  %232 = or i32 %231, 8
  %233 = add i32 %add.i, %232
  %234 = add nsw i32 %233, %mul.i.2
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds float, float* %0, i64 %235
  %237 = bitcast float* %236 to <8 x float>*
  %wide.load40.1 = load <8 x float>, <8 x float>* %237, align 4, !tbaa !12, !llvm.access.group !16
  %238 = load float, float* %arrayidx12.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %239 = insertelement <8 x float> undef, float %238, i32 0
  %240 = shufflevector <8 x float> %239, <8 x float> undef, <8 x i32> zeroinitializer
  %241 = add nsw i32 %233, %mul13.i
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %0, i64 %242
  %244 = bitcast float* %243 to <8 x float>*
  %wide.load41.1 = load <8 x float>, <8 x float>* %244, align 4, !tbaa !12, !llvm.access.group !16
  %245 = fneg <8 x float> %240
  %246 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %245, <8 x float> %wide.load41.1, <8 x float> %wide.load40.1)
  %247 = bitcast float* %236 to <8 x float>*
  store <8 x float> %246, <8 x float>* %247, align 4, !tbaa !12, !llvm.access.group !16
  %248 = trunc i64 %mul.i.i to i32
  %249 = or i32 %248, 16
  %250 = add i32 %add.i, %249
  %251 = add nsw i32 %250, %mul.i.2
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %0, i64 %252
  %254 = bitcast float* %253 to <8 x float>*
  %wide.load40.2 = load <8 x float>, <8 x float>* %254, align 4, !tbaa !12, !llvm.access.group !16
  %255 = load float, float* %arrayidx12.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %256 = insertelement <8 x float> undef, float %255, i32 0
  %257 = shufflevector <8 x float> %256, <8 x float> undef, <8 x i32> zeroinitializer
  %258 = add nsw i32 %250, %mul13.i
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %0, i64 %259
  %261 = bitcast float* %260 to <8 x float>*
  %wide.load41.2 = load <8 x float>, <8 x float>* %261, align 4, !tbaa !12, !llvm.access.group !16
  %262 = fneg <8 x float> %257
  %263 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %262, <8 x float> %wide.load41.2, <8 x float> %wide.load40.2)
  %264 = bitcast float* %253 to <8 x float>*
  store <8 x float> %263, <8 x float>* %264, align 4, !tbaa !12, !llvm.access.group !16
  %265 = trunc i64 %mul.i.i to i32
  %266 = or i32 %265, 24
  %267 = add i32 %add.i, %266
  %268 = add nsw i32 %267, %mul.i.2
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds float, float* %0, i64 %269
  %271 = bitcast float* %270 to <8 x float>*
  %wide.load40.3 = load <8 x float>, <8 x float>* %271, align 4, !tbaa !12, !llvm.access.group !16
  %272 = load float, float* %arrayidx12.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %273 = insertelement <8 x float> undef, float %272, i32 0
  %274 = shufflevector <8 x float> %273, <8 x float> undef, <8 x i32> zeroinitializer
  %275 = add nsw i32 %267, %mul13.i
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds float, float* %0, i64 %276
  %278 = bitcast float* %277 to <8 x float>*
  %wide.load41.3 = load <8 x float>, <8 x float>* %278, align 4, !tbaa !12, !llvm.access.group !16
  %279 = fneg <8 x float> %274
  %280 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %279, <8 x float> %wide.load41.3, <8 x float> %wide.load40.3)
  %281 = bitcast float* %270 to <8 x float>*
  store <8 x float> %280, <8 x float>* %281, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.2

pregion_for_entry.entry.i.2:                      ; preds = %pregion_for_entry.entry.i.2, %pregion_for_entry.entry.i.2.preheader
  %_local_id_x.0.2 = phi i64 [ %293, %pregion_for_entry.entry.i.2 ], [ 0, %pregion_for_entry.entry.i.2.preheader ]
  %add1.i.i.2 = add nuw nsw i64 %_local_id_x.0.2, %mul.i.i
  %282 = trunc i64 %add1.i.i.2 to i32
  %conv2.i.2 = add i32 %add.i, %282
  %add8.i.2 = add nsw i32 %conv2.i.2, %mul.i.2
  %idxprom.i.2 = sext i32 %add8.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.2
  %283 = load float, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %284 = load float, float* %arrayidx12.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.2 = add nsw i32 %conv2.i.2, %mul13.i
  %idxprom15.i.2 = sext i32 %add14.i.2 to i64
  %arrayidx16.i.2 = getelementptr inbounds float, float* %0, i64 %idxprom15.i.2
  %285 = load float, float* %arrayidx16.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.2 = fneg float %284
  %286 = tail call float @llvm.fmuladd.f32(float %neg.i.2, float %285, float %283) #3
  store float %286, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %287 = or i64 %_local_id_x.0.2, 1
  %add1.i.i.2.1 = add nuw nsw i64 %287, %mul.i.i
  %288 = trunc i64 %add1.i.i.2.1 to i32
  %conv2.i.2.1 = add i32 %add.i, %288
  %add8.i.2.1 = add nsw i32 %conv2.i.2.1, %mul.i.2
  %idxprom.i.2.1 = sext i32 %add8.i.2.1 to i64
  %arrayidx.i.2.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.2.1
  %289 = load float, float* %arrayidx.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %290 = load float, float* %arrayidx12.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.2.1 = add nsw i32 %conv2.i.2.1, %mul13.i
  %idxprom15.i.2.1 = sext i32 %add14.i.2.1 to i64
  %arrayidx16.i.2.1 = getelementptr inbounds float, float* %0, i64 %idxprom15.i.2.1
  %291 = load float, float* %arrayidx16.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.2.1 = fneg float %290
  %292 = tail call float @llvm.fmuladd.f32(float %neg.i.2.1, float %291, float %289) #3
  store float %292, float* %arrayidx.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %293 = add nuw nsw i64 %_local_id_x.0.2, 2
  %exitcond.2.not.1 = icmp eq i64 %293, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.2.loopexit, label %pregion_for_entry.entry.i.2, !llvm.loop !23

pregion_for_end.i.2.loopexit:                     ; preds = %pregion_for_entry.entry.i.2
  br label %pregion_for_end.i.2

pregion_for_end.i.2:                              ; preds = %pregion_for_end.i.2.loopexit, %vector.body26
  %294 = trunc i64 %mul3.i.i to i32
  %295 = or i32 %294, 3
  %conv7.i.3 = add i32 %add.i, %295
  %mul.i.3 = mul nsw i32 %conv7.i.3, %2
  %add10.i.3 = add nsw i32 %mul.i.3, %1
  %idxprom11.i.3 = sext i32 %add10.i.3 to i64
  %arrayidx12.i.3 = getelementptr inbounds float, float* %0, i64 %idxprom11.i.3
  %296 = mul i32 %conv7.i.3, %2
  %297 = add i32 %296, %1
  %298 = trunc i64 %4 to i32
  %299 = shl i32 %298, 5
  %300 = add i32 %297, %299
  %301 = add i32 %300, 1
  %302 = add i32 %300, 32
  %303 = icmp slt i32 %302, %301
  %304 = add i32 %2, 1
  %305 = mul i32 %304, %1
  %306 = add i32 %305, %299
  %307 = add i32 %306, 1
  %308 = add i32 %306, 32
  %309 = icmp slt i32 %308, %307
  %310 = or i1 %303, %309
  br i1 %310, label %pregion_for_entry.entry.i.3.preheader, label %vector.body44

pregion_for_entry.entry.i.3.preheader:            ; preds = %pregion_for_end.i.2
  br label %pregion_for_entry.entry.i.3

vector.body44:                                    ; preds = %pregion_for_end.i.2
  %311 = trunc i64 %mul.i.i to i32
  %312 = add i32 %add.i, %311
  %313 = add nsw i32 %312, %mul.i.3
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float, float* %0, i64 %314
  %316 = bitcast float* %315 to <8 x float>*
  %wide.load58 = load <8 x float>, <8 x float>* %316, align 4, !tbaa !12, !llvm.access.group !16
  %317 = load float, float* %arrayidx12.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %318 = insertelement <8 x float> undef, float %317, i32 0
  %319 = shufflevector <8 x float> %318, <8 x float> undef, <8 x i32> zeroinitializer
  %320 = add nsw i32 %312, %mul13.i
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds float, float* %0, i64 %321
  %323 = bitcast float* %322 to <8 x float>*
  %wide.load59 = load <8 x float>, <8 x float>* %323, align 4, !tbaa !12, !llvm.access.group !16
  %324 = fneg <8 x float> %319
  %325 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %324, <8 x float> %wide.load59, <8 x float> %wide.load58)
  %326 = bitcast float* %315 to <8 x float>*
  store <8 x float> %325, <8 x float>* %326, align 4, !tbaa !12, !llvm.access.group !16
  %327 = trunc i64 %mul.i.i to i32
  %328 = or i32 %327, 8
  %329 = add i32 %add.i, %328
  %330 = add nsw i32 %329, %mul.i.3
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds float, float* %0, i64 %331
  %333 = bitcast float* %332 to <8 x float>*
  %wide.load58.1 = load <8 x float>, <8 x float>* %333, align 4, !tbaa !12, !llvm.access.group !16
  %334 = load float, float* %arrayidx12.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %335 = insertelement <8 x float> undef, float %334, i32 0
  %336 = shufflevector <8 x float> %335, <8 x float> undef, <8 x i32> zeroinitializer
  %337 = add nsw i32 %329, %mul13.i
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds float, float* %0, i64 %338
  %340 = bitcast float* %339 to <8 x float>*
  %wide.load59.1 = load <8 x float>, <8 x float>* %340, align 4, !tbaa !12, !llvm.access.group !16
  %341 = fneg <8 x float> %336
  %342 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %341, <8 x float> %wide.load59.1, <8 x float> %wide.load58.1)
  %343 = bitcast float* %332 to <8 x float>*
  store <8 x float> %342, <8 x float>* %343, align 4, !tbaa !12, !llvm.access.group !16
  %344 = trunc i64 %mul.i.i to i32
  %345 = or i32 %344, 16
  %346 = add i32 %add.i, %345
  %347 = add nsw i32 %346, %mul.i.3
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds float, float* %0, i64 %348
  %350 = bitcast float* %349 to <8 x float>*
  %wide.load58.2 = load <8 x float>, <8 x float>* %350, align 4, !tbaa !12, !llvm.access.group !16
  %351 = load float, float* %arrayidx12.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %352 = insertelement <8 x float> undef, float %351, i32 0
  %353 = shufflevector <8 x float> %352, <8 x float> undef, <8 x i32> zeroinitializer
  %354 = add nsw i32 %346, %mul13.i
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds float, float* %0, i64 %355
  %357 = bitcast float* %356 to <8 x float>*
  %wide.load59.2 = load <8 x float>, <8 x float>* %357, align 4, !tbaa !12, !llvm.access.group !16
  %358 = fneg <8 x float> %353
  %359 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %358, <8 x float> %wide.load59.2, <8 x float> %wide.load58.2)
  %360 = bitcast float* %349 to <8 x float>*
  store <8 x float> %359, <8 x float>* %360, align 4, !tbaa !12, !llvm.access.group !16
  %361 = trunc i64 %mul.i.i to i32
  %362 = or i32 %361, 24
  %363 = add i32 %add.i, %362
  %364 = add nsw i32 %363, %mul.i.3
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds float, float* %0, i64 %365
  %367 = bitcast float* %366 to <8 x float>*
  %wide.load58.3 = load <8 x float>, <8 x float>* %367, align 4, !tbaa !12, !llvm.access.group !16
  %368 = load float, float* %arrayidx12.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %369 = insertelement <8 x float> undef, float %368, i32 0
  %370 = shufflevector <8 x float> %369, <8 x float> undef, <8 x i32> zeroinitializer
  %371 = add nsw i32 %363, %mul13.i
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds float, float* %0, i64 %372
  %374 = bitcast float* %373 to <8 x float>*
  %wide.load59.3 = load <8 x float>, <8 x float>* %374, align 4, !tbaa !12, !llvm.access.group !16
  %375 = fneg <8 x float> %370
  %376 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %375, <8 x float> %wide.load59.3, <8 x float> %wide.load58.3)
  %377 = bitcast float* %366 to <8 x float>*
  store <8 x float> %376, <8 x float>* %377, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.3

pregion_for_entry.entry.i.3:                      ; preds = %pregion_for_entry.entry.i.3, %pregion_for_entry.entry.i.3.preheader
  %_local_id_x.0.3 = phi i64 [ %389, %pregion_for_entry.entry.i.3 ], [ 0, %pregion_for_entry.entry.i.3.preheader ]
  %add1.i.i.3 = add nuw nsw i64 %_local_id_x.0.3, %mul.i.i
  %378 = trunc i64 %add1.i.i.3 to i32
  %conv2.i.3 = add i32 %add.i, %378
  %add8.i.3 = add nsw i32 %conv2.i.3, %mul.i.3
  %idxprom.i.3 = sext i32 %add8.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.3
  %379 = load float, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %380 = load float, float* %arrayidx12.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.3 = add nsw i32 %conv2.i.3, %mul13.i
  %idxprom15.i.3 = sext i32 %add14.i.3 to i64
  %arrayidx16.i.3 = getelementptr inbounds float, float* %0, i64 %idxprom15.i.3
  %381 = load float, float* %arrayidx16.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.3 = fneg float %380
  %382 = tail call float @llvm.fmuladd.f32(float %neg.i.3, float %381, float %379) #3
  store float %382, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %383 = or i64 %_local_id_x.0.3, 1
  %add1.i.i.3.1 = add nuw nsw i64 %383, %mul.i.i
  %384 = trunc i64 %add1.i.i.3.1 to i32
  %conv2.i.3.1 = add i32 %add.i, %384
  %add8.i.3.1 = add nsw i32 %conv2.i.3.1, %mul.i.3
  %idxprom.i.3.1 = sext i32 %add8.i.3.1 to i64
  %arrayidx.i.3.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.3.1
  %385 = load float, float* %arrayidx.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %386 = load float, float* %arrayidx12.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.3.1 = add nsw i32 %conv2.i.3.1, %mul13.i
  %idxprom15.i.3.1 = sext i32 %add14.i.3.1 to i64
  %arrayidx16.i.3.1 = getelementptr inbounds float, float* %0, i64 %idxprom15.i.3.1
  %387 = load float, float* %arrayidx16.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.3.1 = fneg float %386
  %388 = tail call float @llvm.fmuladd.f32(float %neg.i.3.1, float %387, float %385) #3
  store float %388, float* %arrayidx.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %389 = add nuw nsw i64 %_local_id_x.0.3, 2
  %exitcond.3.not.1 = icmp eq i64 %389, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.3.loopexit, label %pregion_for_entry.entry.i.3, !llvm.loop !24

pregion_for_end.i.3.loopexit:                     ; preds = %pregion_for_entry.entry.i.3
  br label %pregion_for_end.i.3

pregion_for_end.i.3:                              ; preds = %pregion_for_end.i.3.loopexit, %vector.body44
  %390 = trunc i64 %mul3.i.i to i32
  %391 = or i32 %390, 4
  %conv7.i.4 = add i32 %add.i, %391
  %mul.i.4 = mul nsw i32 %conv7.i.4, %2
  %add10.i.4 = add nsw i32 %mul.i.4, %1
  %idxprom11.i.4 = sext i32 %add10.i.4 to i64
  %arrayidx12.i.4 = getelementptr inbounds float, float* %0, i64 %idxprom11.i.4
  %392 = mul i32 %conv7.i.4, %2
  %393 = add i32 %392, %1
  %394 = trunc i64 %4 to i32
  %395 = shl i32 %394, 5
  %396 = add i32 %393, %395
  %397 = add i32 %396, 1
  %398 = add i32 %396, 32
  %399 = icmp slt i32 %398, %397
  %400 = add i32 %2, 1
  %401 = mul i32 %400, %1
  %402 = add i32 %401, %395
  %403 = add i32 %402, 1
  %404 = add i32 %402, 32
  %405 = icmp slt i32 %404, %403
  %406 = or i1 %399, %405
  br i1 %406, label %pregion_for_entry.entry.i.4.preheader, label %vector.body62

pregion_for_entry.entry.i.4.preheader:            ; preds = %pregion_for_end.i.3
  br label %pregion_for_entry.entry.i.4

vector.body62:                                    ; preds = %pregion_for_end.i.3
  %407 = trunc i64 %mul.i.i to i32
  %408 = add i32 %add.i, %407
  %409 = add nsw i32 %408, %mul.i.4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds float, float* %0, i64 %410
  %412 = bitcast float* %411 to <8 x float>*
  %wide.load76 = load <8 x float>, <8 x float>* %412, align 4, !tbaa !12, !llvm.access.group !16
  %413 = load float, float* %arrayidx12.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %414 = insertelement <8 x float> undef, float %413, i32 0
  %415 = shufflevector <8 x float> %414, <8 x float> undef, <8 x i32> zeroinitializer
  %416 = add nsw i32 %408, %mul13.i
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds float, float* %0, i64 %417
  %419 = bitcast float* %418 to <8 x float>*
  %wide.load77 = load <8 x float>, <8 x float>* %419, align 4, !tbaa !12, !llvm.access.group !16
  %420 = fneg <8 x float> %415
  %421 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %420, <8 x float> %wide.load77, <8 x float> %wide.load76)
  %422 = bitcast float* %411 to <8 x float>*
  store <8 x float> %421, <8 x float>* %422, align 4, !tbaa !12, !llvm.access.group !16
  %423 = trunc i64 %mul.i.i to i32
  %424 = or i32 %423, 8
  %425 = add i32 %add.i, %424
  %426 = add nsw i32 %425, %mul.i.4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds float, float* %0, i64 %427
  %429 = bitcast float* %428 to <8 x float>*
  %wide.load76.1 = load <8 x float>, <8 x float>* %429, align 4, !tbaa !12, !llvm.access.group !16
  %430 = load float, float* %arrayidx12.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %431 = insertelement <8 x float> undef, float %430, i32 0
  %432 = shufflevector <8 x float> %431, <8 x float> undef, <8 x i32> zeroinitializer
  %433 = add nsw i32 %425, %mul13.i
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds float, float* %0, i64 %434
  %436 = bitcast float* %435 to <8 x float>*
  %wide.load77.1 = load <8 x float>, <8 x float>* %436, align 4, !tbaa !12, !llvm.access.group !16
  %437 = fneg <8 x float> %432
  %438 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %437, <8 x float> %wide.load77.1, <8 x float> %wide.load76.1)
  %439 = bitcast float* %428 to <8 x float>*
  store <8 x float> %438, <8 x float>* %439, align 4, !tbaa !12, !llvm.access.group !16
  %440 = trunc i64 %mul.i.i to i32
  %441 = or i32 %440, 16
  %442 = add i32 %add.i, %441
  %443 = add nsw i32 %442, %mul.i.4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds float, float* %0, i64 %444
  %446 = bitcast float* %445 to <8 x float>*
  %wide.load76.2 = load <8 x float>, <8 x float>* %446, align 4, !tbaa !12, !llvm.access.group !16
  %447 = load float, float* %arrayidx12.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %448 = insertelement <8 x float> undef, float %447, i32 0
  %449 = shufflevector <8 x float> %448, <8 x float> undef, <8 x i32> zeroinitializer
  %450 = add nsw i32 %442, %mul13.i
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds float, float* %0, i64 %451
  %453 = bitcast float* %452 to <8 x float>*
  %wide.load77.2 = load <8 x float>, <8 x float>* %453, align 4, !tbaa !12, !llvm.access.group !16
  %454 = fneg <8 x float> %449
  %455 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %454, <8 x float> %wide.load77.2, <8 x float> %wide.load76.2)
  %456 = bitcast float* %445 to <8 x float>*
  store <8 x float> %455, <8 x float>* %456, align 4, !tbaa !12, !llvm.access.group !16
  %457 = trunc i64 %mul.i.i to i32
  %458 = or i32 %457, 24
  %459 = add i32 %add.i, %458
  %460 = add nsw i32 %459, %mul.i.4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds float, float* %0, i64 %461
  %463 = bitcast float* %462 to <8 x float>*
  %wide.load76.3 = load <8 x float>, <8 x float>* %463, align 4, !tbaa !12, !llvm.access.group !16
  %464 = load float, float* %arrayidx12.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %465 = insertelement <8 x float> undef, float %464, i32 0
  %466 = shufflevector <8 x float> %465, <8 x float> undef, <8 x i32> zeroinitializer
  %467 = add nsw i32 %459, %mul13.i
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds float, float* %0, i64 %468
  %470 = bitcast float* %469 to <8 x float>*
  %wide.load77.3 = load <8 x float>, <8 x float>* %470, align 4, !tbaa !12, !llvm.access.group !16
  %471 = fneg <8 x float> %466
  %472 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %471, <8 x float> %wide.load77.3, <8 x float> %wide.load76.3)
  %473 = bitcast float* %462 to <8 x float>*
  store <8 x float> %472, <8 x float>* %473, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.4

pregion_for_entry.entry.i.4:                      ; preds = %pregion_for_entry.entry.i.4, %pregion_for_entry.entry.i.4.preheader
  %_local_id_x.0.4 = phi i64 [ %485, %pregion_for_entry.entry.i.4 ], [ 0, %pregion_for_entry.entry.i.4.preheader ]
  %add1.i.i.4 = add nuw nsw i64 %_local_id_x.0.4, %mul.i.i
  %474 = trunc i64 %add1.i.i.4 to i32
  %conv2.i.4 = add i32 %add.i, %474
  %add8.i.4 = add nsw i32 %conv2.i.4, %mul.i.4
  %idxprom.i.4 = sext i32 %add8.i.4 to i64
  %arrayidx.i.4 = getelementptr inbounds float, float* %0, i64 %idxprom.i.4
  %475 = load float, float* %arrayidx.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %476 = load float, float* %arrayidx12.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.4 = add nsw i32 %conv2.i.4, %mul13.i
  %idxprom15.i.4 = sext i32 %add14.i.4 to i64
  %arrayidx16.i.4 = getelementptr inbounds float, float* %0, i64 %idxprom15.i.4
  %477 = load float, float* %arrayidx16.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.4 = fneg float %476
  %478 = tail call float @llvm.fmuladd.f32(float %neg.i.4, float %477, float %475) #3
  store float %478, float* %arrayidx.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %479 = or i64 %_local_id_x.0.4, 1
  %add1.i.i.4.1 = add nuw nsw i64 %479, %mul.i.i
  %480 = trunc i64 %add1.i.i.4.1 to i32
  %conv2.i.4.1 = add i32 %add.i, %480
  %add8.i.4.1 = add nsw i32 %conv2.i.4.1, %mul.i.4
  %idxprom.i.4.1 = sext i32 %add8.i.4.1 to i64
  %arrayidx.i.4.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.4.1
  %481 = load float, float* %arrayidx.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %482 = load float, float* %arrayidx12.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.4.1 = add nsw i32 %conv2.i.4.1, %mul13.i
  %idxprom15.i.4.1 = sext i32 %add14.i.4.1 to i64
  %arrayidx16.i.4.1 = getelementptr inbounds float, float* %0, i64 %idxprom15.i.4.1
  %483 = load float, float* %arrayidx16.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.4.1 = fneg float %482
  %484 = tail call float @llvm.fmuladd.f32(float %neg.i.4.1, float %483, float %481) #3
  store float %484, float* %arrayidx.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %485 = add nuw nsw i64 %_local_id_x.0.4, 2
  %exitcond.4.not.1 = icmp eq i64 %485, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.4.loopexit, label %pregion_for_entry.entry.i.4, !llvm.loop !25

pregion_for_end.i.4.loopexit:                     ; preds = %pregion_for_entry.entry.i.4
  br label %pregion_for_end.i.4

pregion_for_end.i.4:                              ; preds = %pregion_for_end.i.4.loopexit, %vector.body62
  %486 = trunc i64 %mul3.i.i to i32
  %487 = or i32 %486, 5
  %conv7.i.5 = add i32 %add.i, %487
  %mul.i.5 = mul nsw i32 %conv7.i.5, %2
  %add10.i.5 = add nsw i32 %mul.i.5, %1
  %idxprom11.i.5 = sext i32 %add10.i.5 to i64
  %arrayidx12.i.5 = getelementptr inbounds float, float* %0, i64 %idxprom11.i.5
  %488 = mul i32 %conv7.i.5, %2
  %489 = add i32 %488, %1
  %490 = trunc i64 %4 to i32
  %491 = shl i32 %490, 5
  %492 = add i32 %489, %491
  %493 = add i32 %492, 1
  %494 = add i32 %492, 32
  %495 = icmp slt i32 %494, %493
  %496 = add i32 %2, 1
  %497 = mul i32 %496, %1
  %498 = add i32 %497, %491
  %499 = add i32 %498, 1
  %500 = add i32 %498, 32
  %501 = icmp slt i32 %500, %499
  %502 = or i1 %495, %501
  br i1 %502, label %pregion_for_entry.entry.i.5.preheader, label %vector.body80

pregion_for_entry.entry.i.5.preheader:            ; preds = %pregion_for_end.i.4
  br label %pregion_for_entry.entry.i.5

vector.body80:                                    ; preds = %pregion_for_end.i.4
  %503 = trunc i64 %mul.i.i to i32
  %504 = add i32 %add.i, %503
  %505 = add nsw i32 %504, %mul.i.5
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds float, float* %0, i64 %506
  %508 = bitcast float* %507 to <8 x float>*
  %wide.load94 = load <8 x float>, <8 x float>* %508, align 4, !tbaa !12, !llvm.access.group !16
  %509 = load float, float* %arrayidx12.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %510 = insertelement <8 x float> undef, float %509, i32 0
  %511 = shufflevector <8 x float> %510, <8 x float> undef, <8 x i32> zeroinitializer
  %512 = add nsw i32 %504, %mul13.i
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds float, float* %0, i64 %513
  %515 = bitcast float* %514 to <8 x float>*
  %wide.load95 = load <8 x float>, <8 x float>* %515, align 4, !tbaa !12, !llvm.access.group !16
  %516 = fneg <8 x float> %511
  %517 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %516, <8 x float> %wide.load95, <8 x float> %wide.load94)
  %518 = bitcast float* %507 to <8 x float>*
  store <8 x float> %517, <8 x float>* %518, align 4, !tbaa !12, !llvm.access.group !16
  %519 = trunc i64 %mul.i.i to i32
  %520 = or i32 %519, 8
  %521 = add i32 %add.i, %520
  %522 = add nsw i32 %521, %mul.i.5
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds float, float* %0, i64 %523
  %525 = bitcast float* %524 to <8 x float>*
  %wide.load94.1 = load <8 x float>, <8 x float>* %525, align 4, !tbaa !12, !llvm.access.group !16
  %526 = load float, float* %arrayidx12.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %527 = insertelement <8 x float> undef, float %526, i32 0
  %528 = shufflevector <8 x float> %527, <8 x float> undef, <8 x i32> zeroinitializer
  %529 = add nsw i32 %521, %mul13.i
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds float, float* %0, i64 %530
  %532 = bitcast float* %531 to <8 x float>*
  %wide.load95.1 = load <8 x float>, <8 x float>* %532, align 4, !tbaa !12, !llvm.access.group !16
  %533 = fneg <8 x float> %528
  %534 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %533, <8 x float> %wide.load95.1, <8 x float> %wide.load94.1)
  %535 = bitcast float* %524 to <8 x float>*
  store <8 x float> %534, <8 x float>* %535, align 4, !tbaa !12, !llvm.access.group !16
  %536 = trunc i64 %mul.i.i to i32
  %537 = or i32 %536, 16
  %538 = add i32 %add.i, %537
  %539 = add nsw i32 %538, %mul.i.5
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds float, float* %0, i64 %540
  %542 = bitcast float* %541 to <8 x float>*
  %wide.load94.2 = load <8 x float>, <8 x float>* %542, align 4, !tbaa !12, !llvm.access.group !16
  %543 = load float, float* %arrayidx12.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %544 = insertelement <8 x float> undef, float %543, i32 0
  %545 = shufflevector <8 x float> %544, <8 x float> undef, <8 x i32> zeroinitializer
  %546 = add nsw i32 %538, %mul13.i
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds float, float* %0, i64 %547
  %549 = bitcast float* %548 to <8 x float>*
  %wide.load95.2 = load <8 x float>, <8 x float>* %549, align 4, !tbaa !12, !llvm.access.group !16
  %550 = fneg <8 x float> %545
  %551 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %550, <8 x float> %wide.load95.2, <8 x float> %wide.load94.2)
  %552 = bitcast float* %541 to <8 x float>*
  store <8 x float> %551, <8 x float>* %552, align 4, !tbaa !12, !llvm.access.group !16
  %553 = trunc i64 %mul.i.i to i32
  %554 = or i32 %553, 24
  %555 = add i32 %add.i, %554
  %556 = add nsw i32 %555, %mul.i.5
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds float, float* %0, i64 %557
  %559 = bitcast float* %558 to <8 x float>*
  %wide.load94.3 = load <8 x float>, <8 x float>* %559, align 4, !tbaa !12, !llvm.access.group !16
  %560 = load float, float* %arrayidx12.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %561 = insertelement <8 x float> undef, float %560, i32 0
  %562 = shufflevector <8 x float> %561, <8 x float> undef, <8 x i32> zeroinitializer
  %563 = add nsw i32 %555, %mul13.i
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds float, float* %0, i64 %564
  %566 = bitcast float* %565 to <8 x float>*
  %wide.load95.3 = load <8 x float>, <8 x float>* %566, align 4, !tbaa !12, !llvm.access.group !16
  %567 = fneg <8 x float> %562
  %568 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %567, <8 x float> %wide.load95.3, <8 x float> %wide.load94.3)
  %569 = bitcast float* %558 to <8 x float>*
  store <8 x float> %568, <8 x float>* %569, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.5

pregion_for_entry.entry.i.5:                      ; preds = %pregion_for_entry.entry.i.5, %pregion_for_entry.entry.i.5.preheader
  %_local_id_x.0.5 = phi i64 [ %581, %pregion_for_entry.entry.i.5 ], [ 0, %pregion_for_entry.entry.i.5.preheader ]
  %add1.i.i.5 = add nuw nsw i64 %_local_id_x.0.5, %mul.i.i
  %570 = trunc i64 %add1.i.i.5 to i32
  %conv2.i.5 = add i32 %add.i, %570
  %add8.i.5 = add nsw i32 %conv2.i.5, %mul.i.5
  %idxprom.i.5 = sext i32 %add8.i.5 to i64
  %arrayidx.i.5 = getelementptr inbounds float, float* %0, i64 %idxprom.i.5
  %571 = load float, float* %arrayidx.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %572 = load float, float* %arrayidx12.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.5 = add nsw i32 %conv2.i.5, %mul13.i
  %idxprom15.i.5 = sext i32 %add14.i.5 to i64
  %arrayidx16.i.5 = getelementptr inbounds float, float* %0, i64 %idxprom15.i.5
  %573 = load float, float* %arrayidx16.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.5 = fneg float %572
  %574 = tail call float @llvm.fmuladd.f32(float %neg.i.5, float %573, float %571) #3
  store float %574, float* %arrayidx.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %575 = or i64 %_local_id_x.0.5, 1
  %add1.i.i.5.1 = add nuw nsw i64 %575, %mul.i.i
  %576 = trunc i64 %add1.i.i.5.1 to i32
  %conv2.i.5.1 = add i32 %add.i, %576
  %add8.i.5.1 = add nsw i32 %conv2.i.5.1, %mul.i.5
  %idxprom.i.5.1 = sext i32 %add8.i.5.1 to i64
  %arrayidx.i.5.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.5.1
  %577 = load float, float* %arrayidx.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %578 = load float, float* %arrayidx12.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.5.1 = add nsw i32 %conv2.i.5.1, %mul13.i
  %idxprom15.i.5.1 = sext i32 %add14.i.5.1 to i64
  %arrayidx16.i.5.1 = getelementptr inbounds float, float* %0, i64 %idxprom15.i.5.1
  %579 = load float, float* %arrayidx16.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.5.1 = fneg float %578
  %580 = tail call float @llvm.fmuladd.f32(float %neg.i.5.1, float %579, float %577) #3
  store float %580, float* %arrayidx.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %581 = add nuw nsw i64 %_local_id_x.0.5, 2
  %exitcond.5.not.1 = icmp eq i64 %581, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.5.loopexit, label %pregion_for_entry.entry.i.5, !llvm.loop !26

pregion_for_end.i.5.loopexit:                     ; preds = %pregion_for_entry.entry.i.5
  br label %pregion_for_end.i.5

pregion_for_end.i.5:                              ; preds = %pregion_for_end.i.5.loopexit, %vector.body80
  %582 = trunc i64 %mul3.i.i to i32
  %583 = or i32 %582, 6
  %conv7.i.6 = add i32 %add.i, %583
  %mul.i.6 = mul nsw i32 %conv7.i.6, %2
  %add10.i.6 = add nsw i32 %mul.i.6, %1
  %idxprom11.i.6 = sext i32 %add10.i.6 to i64
  %arrayidx12.i.6 = getelementptr inbounds float, float* %0, i64 %idxprom11.i.6
  %584 = mul i32 %conv7.i.6, %2
  %585 = add i32 %584, %1
  %586 = trunc i64 %4 to i32
  %587 = shl i32 %586, 5
  %588 = add i32 %585, %587
  %589 = add i32 %588, 1
  %590 = add i32 %588, 32
  %591 = icmp slt i32 %590, %589
  %592 = add i32 %2, 1
  %593 = mul i32 %592, %1
  %594 = add i32 %593, %587
  %595 = add i32 %594, 1
  %596 = add i32 %594, 32
  %597 = icmp slt i32 %596, %595
  %598 = or i1 %591, %597
  br i1 %598, label %pregion_for_entry.entry.i.6.preheader, label %vector.body98

pregion_for_entry.entry.i.6.preheader:            ; preds = %pregion_for_end.i.5
  br label %pregion_for_entry.entry.i.6

vector.body98:                                    ; preds = %pregion_for_end.i.5
  %599 = trunc i64 %mul.i.i to i32
  %600 = add i32 %add.i, %599
  %601 = add nsw i32 %600, %mul.i.6
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds float, float* %0, i64 %602
  %604 = bitcast float* %603 to <8 x float>*
  %wide.load112 = load <8 x float>, <8 x float>* %604, align 4, !tbaa !12, !llvm.access.group !16
  %605 = load float, float* %arrayidx12.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %606 = insertelement <8 x float> undef, float %605, i32 0
  %607 = shufflevector <8 x float> %606, <8 x float> undef, <8 x i32> zeroinitializer
  %608 = add nsw i32 %600, %mul13.i
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds float, float* %0, i64 %609
  %611 = bitcast float* %610 to <8 x float>*
  %wide.load113 = load <8 x float>, <8 x float>* %611, align 4, !tbaa !12, !llvm.access.group !16
  %612 = fneg <8 x float> %607
  %613 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %612, <8 x float> %wide.load113, <8 x float> %wide.load112)
  %614 = bitcast float* %603 to <8 x float>*
  store <8 x float> %613, <8 x float>* %614, align 4, !tbaa !12, !llvm.access.group !16
  %615 = trunc i64 %mul.i.i to i32
  %616 = or i32 %615, 8
  %617 = add i32 %add.i, %616
  %618 = add nsw i32 %617, %mul.i.6
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds float, float* %0, i64 %619
  %621 = bitcast float* %620 to <8 x float>*
  %wide.load112.1 = load <8 x float>, <8 x float>* %621, align 4, !tbaa !12, !llvm.access.group !16
  %622 = load float, float* %arrayidx12.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %623 = insertelement <8 x float> undef, float %622, i32 0
  %624 = shufflevector <8 x float> %623, <8 x float> undef, <8 x i32> zeroinitializer
  %625 = add nsw i32 %617, %mul13.i
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds float, float* %0, i64 %626
  %628 = bitcast float* %627 to <8 x float>*
  %wide.load113.1 = load <8 x float>, <8 x float>* %628, align 4, !tbaa !12, !llvm.access.group !16
  %629 = fneg <8 x float> %624
  %630 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %629, <8 x float> %wide.load113.1, <8 x float> %wide.load112.1)
  %631 = bitcast float* %620 to <8 x float>*
  store <8 x float> %630, <8 x float>* %631, align 4, !tbaa !12, !llvm.access.group !16
  %632 = trunc i64 %mul.i.i to i32
  %633 = or i32 %632, 16
  %634 = add i32 %add.i, %633
  %635 = add nsw i32 %634, %mul.i.6
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds float, float* %0, i64 %636
  %638 = bitcast float* %637 to <8 x float>*
  %wide.load112.2 = load <8 x float>, <8 x float>* %638, align 4, !tbaa !12, !llvm.access.group !16
  %639 = load float, float* %arrayidx12.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %640 = insertelement <8 x float> undef, float %639, i32 0
  %641 = shufflevector <8 x float> %640, <8 x float> undef, <8 x i32> zeroinitializer
  %642 = add nsw i32 %634, %mul13.i
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds float, float* %0, i64 %643
  %645 = bitcast float* %644 to <8 x float>*
  %wide.load113.2 = load <8 x float>, <8 x float>* %645, align 4, !tbaa !12, !llvm.access.group !16
  %646 = fneg <8 x float> %641
  %647 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %646, <8 x float> %wide.load113.2, <8 x float> %wide.load112.2)
  %648 = bitcast float* %637 to <8 x float>*
  store <8 x float> %647, <8 x float>* %648, align 4, !tbaa !12, !llvm.access.group !16
  %649 = trunc i64 %mul.i.i to i32
  %650 = or i32 %649, 24
  %651 = add i32 %add.i, %650
  %652 = add nsw i32 %651, %mul.i.6
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds float, float* %0, i64 %653
  %655 = bitcast float* %654 to <8 x float>*
  %wide.load112.3 = load <8 x float>, <8 x float>* %655, align 4, !tbaa !12, !llvm.access.group !16
  %656 = load float, float* %arrayidx12.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %657 = insertelement <8 x float> undef, float %656, i32 0
  %658 = shufflevector <8 x float> %657, <8 x float> undef, <8 x i32> zeroinitializer
  %659 = add nsw i32 %651, %mul13.i
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds float, float* %0, i64 %660
  %662 = bitcast float* %661 to <8 x float>*
  %wide.load113.3 = load <8 x float>, <8 x float>* %662, align 4, !tbaa !12, !llvm.access.group !16
  %663 = fneg <8 x float> %658
  %664 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %663, <8 x float> %wide.load113.3, <8 x float> %wide.load112.3)
  %665 = bitcast float* %654 to <8 x float>*
  store <8 x float> %664, <8 x float>* %665, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.6

pregion_for_entry.entry.i.6:                      ; preds = %pregion_for_entry.entry.i.6, %pregion_for_entry.entry.i.6.preheader
  %_local_id_x.0.6 = phi i64 [ %677, %pregion_for_entry.entry.i.6 ], [ 0, %pregion_for_entry.entry.i.6.preheader ]
  %add1.i.i.6 = add nuw nsw i64 %_local_id_x.0.6, %mul.i.i
  %666 = trunc i64 %add1.i.i.6 to i32
  %conv2.i.6 = add i32 %add.i, %666
  %add8.i.6 = add nsw i32 %conv2.i.6, %mul.i.6
  %idxprom.i.6 = sext i32 %add8.i.6 to i64
  %arrayidx.i.6 = getelementptr inbounds float, float* %0, i64 %idxprom.i.6
  %667 = load float, float* %arrayidx.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %668 = load float, float* %arrayidx12.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.6 = add nsw i32 %conv2.i.6, %mul13.i
  %idxprom15.i.6 = sext i32 %add14.i.6 to i64
  %arrayidx16.i.6 = getelementptr inbounds float, float* %0, i64 %idxprom15.i.6
  %669 = load float, float* %arrayidx16.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.6 = fneg float %668
  %670 = tail call float @llvm.fmuladd.f32(float %neg.i.6, float %669, float %667) #3
  store float %670, float* %arrayidx.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %671 = or i64 %_local_id_x.0.6, 1
  %add1.i.i.6.1 = add nuw nsw i64 %671, %mul.i.i
  %672 = trunc i64 %add1.i.i.6.1 to i32
  %conv2.i.6.1 = add i32 %add.i, %672
  %add8.i.6.1 = add nsw i32 %conv2.i.6.1, %mul.i.6
  %idxprom.i.6.1 = sext i32 %add8.i.6.1 to i64
  %arrayidx.i.6.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.6.1
  %673 = load float, float* %arrayidx.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %674 = load float, float* %arrayidx12.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.6.1 = add nsw i32 %conv2.i.6.1, %mul13.i
  %idxprom15.i.6.1 = sext i32 %add14.i.6.1 to i64
  %arrayidx16.i.6.1 = getelementptr inbounds float, float* %0, i64 %idxprom15.i.6.1
  %675 = load float, float* %arrayidx16.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.6.1 = fneg float %674
  %676 = tail call float @llvm.fmuladd.f32(float %neg.i.6.1, float %675, float %673) #3
  store float %676, float* %arrayidx.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %677 = add nuw nsw i64 %_local_id_x.0.6, 2
  %exitcond.6.not.1 = icmp eq i64 %677, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.6.loopexit, label %pregion_for_entry.entry.i.6, !llvm.loop !27

pregion_for_end.i.6.loopexit:                     ; preds = %pregion_for_entry.entry.i.6
  br label %pregion_for_end.i.6

pregion_for_end.i.6:                              ; preds = %pregion_for_end.i.6.loopexit, %vector.body98
  %678 = trunc i64 %mul3.i.i to i32
  %679 = or i32 %678, 7
  %conv7.i.7 = add i32 %add.i, %679
  %mul.i.7 = mul nsw i32 %conv7.i.7, %2
  %add10.i.7 = add nsw i32 %mul.i.7, %1
  %idxprom11.i.7 = sext i32 %add10.i.7 to i64
  %arrayidx12.i.7 = getelementptr inbounds float, float* %0, i64 %idxprom11.i.7
  %680 = mul i32 %conv7.i.7, %2
  %681 = add i32 %680, %1
  %682 = trunc i64 %4 to i32
  %683 = shl i32 %682, 5
  %684 = add i32 %681, %683
  %685 = add i32 %684, 1
  %686 = add i32 %684, 32
  %687 = icmp slt i32 %686, %685
  %688 = add i32 %2, 1
  %689 = mul i32 %688, %1
  %690 = add i32 %689, %683
  %691 = add i32 %690, 1
  %692 = add i32 %690, 32
  %693 = icmp slt i32 %692, %691
  %694 = or i1 %687, %693
  br i1 %694, label %pregion_for_entry.entry.i.7.preheader, label %vector.body116

pregion_for_entry.entry.i.7.preheader:            ; preds = %pregion_for_end.i.6
  br label %pregion_for_entry.entry.i.7

vector.body116:                                   ; preds = %pregion_for_end.i.6
  %695 = trunc i64 %mul.i.i to i32
  %696 = add i32 %add.i, %695
  %697 = add nsw i32 %696, %mul.i.7
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds float, float* %0, i64 %698
  %700 = bitcast float* %699 to <8 x float>*
  %wide.load130 = load <8 x float>, <8 x float>* %700, align 4, !tbaa !12, !llvm.access.group !16
  %701 = load float, float* %arrayidx12.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %702 = insertelement <8 x float> undef, float %701, i32 0
  %703 = shufflevector <8 x float> %702, <8 x float> undef, <8 x i32> zeroinitializer
  %704 = add nsw i32 %696, %mul13.i
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds float, float* %0, i64 %705
  %707 = bitcast float* %706 to <8 x float>*
  %wide.load131 = load <8 x float>, <8 x float>* %707, align 4, !tbaa !12, !llvm.access.group !16
  %708 = fneg <8 x float> %703
  %709 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %708, <8 x float> %wide.load131, <8 x float> %wide.load130)
  %710 = bitcast float* %699 to <8 x float>*
  store <8 x float> %709, <8 x float>* %710, align 4, !tbaa !12, !llvm.access.group !16
  %711 = trunc i64 %mul.i.i to i32
  %712 = or i32 %711, 8
  %713 = add i32 %add.i, %712
  %714 = add nsw i32 %713, %mul.i.7
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds float, float* %0, i64 %715
  %717 = bitcast float* %716 to <8 x float>*
  %wide.load130.1 = load <8 x float>, <8 x float>* %717, align 4, !tbaa !12, !llvm.access.group !16
  %718 = load float, float* %arrayidx12.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %719 = insertelement <8 x float> undef, float %718, i32 0
  %720 = shufflevector <8 x float> %719, <8 x float> undef, <8 x i32> zeroinitializer
  %721 = add nsw i32 %713, %mul13.i
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds float, float* %0, i64 %722
  %724 = bitcast float* %723 to <8 x float>*
  %wide.load131.1 = load <8 x float>, <8 x float>* %724, align 4, !tbaa !12, !llvm.access.group !16
  %725 = fneg <8 x float> %720
  %726 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %725, <8 x float> %wide.load131.1, <8 x float> %wide.load130.1)
  %727 = bitcast float* %716 to <8 x float>*
  store <8 x float> %726, <8 x float>* %727, align 4, !tbaa !12, !llvm.access.group !16
  %728 = trunc i64 %mul.i.i to i32
  %729 = or i32 %728, 16
  %730 = add i32 %add.i, %729
  %731 = add nsw i32 %730, %mul.i.7
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds float, float* %0, i64 %732
  %734 = bitcast float* %733 to <8 x float>*
  %wide.load130.2 = load <8 x float>, <8 x float>* %734, align 4, !tbaa !12, !llvm.access.group !16
  %735 = load float, float* %arrayidx12.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %736 = insertelement <8 x float> undef, float %735, i32 0
  %737 = shufflevector <8 x float> %736, <8 x float> undef, <8 x i32> zeroinitializer
  %738 = add nsw i32 %730, %mul13.i
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds float, float* %0, i64 %739
  %741 = bitcast float* %740 to <8 x float>*
  %wide.load131.2 = load <8 x float>, <8 x float>* %741, align 4, !tbaa !12, !llvm.access.group !16
  %742 = fneg <8 x float> %737
  %743 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %742, <8 x float> %wide.load131.2, <8 x float> %wide.load130.2)
  %744 = bitcast float* %733 to <8 x float>*
  store <8 x float> %743, <8 x float>* %744, align 4, !tbaa !12, !llvm.access.group !16
  %745 = trunc i64 %mul.i.i to i32
  %746 = or i32 %745, 24
  %747 = add i32 %add.i, %746
  %748 = add nsw i32 %747, %mul.i.7
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds float, float* %0, i64 %749
  %751 = bitcast float* %750 to <8 x float>*
  %wide.load130.3 = load <8 x float>, <8 x float>* %751, align 4, !tbaa !12, !llvm.access.group !16
  %752 = load float, float* %arrayidx12.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %753 = insertelement <8 x float> undef, float %752, i32 0
  %754 = shufflevector <8 x float> %753, <8 x float> undef, <8 x i32> zeroinitializer
  %755 = add nsw i32 %747, %mul13.i
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds float, float* %0, i64 %756
  %758 = bitcast float* %757 to <8 x float>*
  %wide.load131.3 = load <8 x float>, <8 x float>* %758, align 4, !tbaa !12, !llvm.access.group !16
  %759 = fneg <8 x float> %754
  %760 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %759, <8 x float> %wide.load131.3, <8 x float> %wide.load130.3)
  %761 = bitcast float* %750 to <8 x float>*
  store <8 x float> %760, <8 x float>* %761, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.7

pregion_for_entry.entry.i.7:                      ; preds = %pregion_for_entry.entry.i.7, %pregion_for_entry.entry.i.7.preheader
  %_local_id_x.0.7 = phi i64 [ %773, %pregion_for_entry.entry.i.7 ], [ 0, %pregion_for_entry.entry.i.7.preheader ]
  %add1.i.i.7 = add nuw nsw i64 %_local_id_x.0.7, %mul.i.i
  %762 = trunc i64 %add1.i.i.7 to i32
  %conv2.i.7 = add i32 %add.i, %762
  %add8.i.7 = add nsw i32 %conv2.i.7, %mul.i.7
  %idxprom.i.7 = sext i32 %add8.i.7 to i64
  %arrayidx.i.7 = getelementptr inbounds float, float* %0, i64 %idxprom.i.7
  %763 = load float, float* %arrayidx.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %764 = load float, float* %arrayidx12.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.7 = add nsw i32 %conv2.i.7, %mul13.i
  %idxprom15.i.7 = sext i32 %add14.i.7 to i64
  %arrayidx16.i.7 = getelementptr inbounds float, float* %0, i64 %idxprom15.i.7
  %765 = load float, float* %arrayidx16.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.7 = fneg float %764
  %766 = tail call float @llvm.fmuladd.f32(float %neg.i.7, float %765, float %763) #3
  store float %766, float* %arrayidx.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %767 = or i64 %_local_id_x.0.7, 1
  %add1.i.i.7.1 = add nuw nsw i64 %767, %mul.i.i
  %768 = trunc i64 %add1.i.i.7.1 to i32
  %conv2.i.7.1 = add i32 %add.i, %768
  %add8.i.7.1 = add nsw i32 %conv2.i.7.1, %mul.i.7
  %idxprom.i.7.1 = sext i32 %add8.i.7.1 to i64
  %arrayidx.i.7.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.7.1
  %769 = load float, float* %arrayidx.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %770 = load float, float* %arrayidx12.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.7.1 = add nsw i32 %conv2.i.7.1, %mul13.i
  %idxprom15.i.7.1 = sext i32 %add14.i.7.1 to i64
  %arrayidx16.i.7.1 = getelementptr inbounds float, float* %0, i64 %idxprom15.i.7.1
  %771 = load float, float* %arrayidx16.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.7.1 = fneg float %770
  %772 = tail call float @llvm.fmuladd.f32(float %neg.i.7.1, float %771, float %769) #3
  store float %772, float* %arrayidx.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %773 = add nuw nsw i64 %_local_id_x.0.7, 2
  %exitcond.7.not.1 = icmp eq i64 %773, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.7.loopexit, label %pregion_for_entry.entry.i.7, !llvm.loop !28

pregion_for_end.i.7.loopexit:                     ; preds = %pregion_for_entry.entry.i.7
  br label %pregion_for_end.i.7

pregion_for_end.i.7:                              ; preds = %pregion_for_end.i.7.loopexit, %vector.body116
  ret void
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_lu_kernel2_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
pregion_for_entry.pregion_for_init.i.i:
  %5 = bitcast i8** %0 to float***
  %6 = load float**, float*** %5, align 8
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to i32**
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr i8*, i8** %0, i64 2
  %13 = bitcast i8** %12 to i32**
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %mul.i.i.i = shl i64 %2, 5
  %add.i.i = add nsw i32 %11, 1
  %mul3.i.i.i = shl i64 %3, 3
  %mul13.i.i = mul nsw i32 %15, %11
  %16 = trunc i64 %mul3.i.i.i to i32
  %conv7.i.i = add i32 %add.i.i, %16
  %mul.i.i = mul nsw i32 %conv7.i.i, %15
  %add10.i.i = add nsw i32 %mul.i.i, %11
  %idxprom11.i.i = sext i32 %add10.i.i to i64
  %arrayidx12.i.i = getelementptr inbounds float, float* %7, i64 %idxprom11.i.i
  %17 = mul i32 %15, %conv7.i.i
  %18 = add i32 %11, %17
  %19 = trunc i64 %2 to i32
  %20 = shl i32 %19, 5
  %21 = add i32 %18, %20
  %22 = add i32 %21, 1
  %23 = add i32 %21, 32
  %24 = icmp slt i32 %23, %22
  %25 = add i32 %15, 1
  %26 = mul i32 %11, %25
  %27 = add i32 %26, %20
  %28 = add i32 %27, 1
  %29 = add i32 %27, 32
  %30 = icmp slt i32 %29, %28
  %31 = or i1 %24, %30
  br i1 %31, label %pregion_for_entry.entry.i.i.preheader, label %vector.body

pregion_for_entry.entry.i.i.preheader:            ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %pregion_for_entry.entry.i.i

vector.body:                                      ; preds = %pregion_for_entry.pregion_for_init.i.i
  %32 = trunc i64 %mul.i.i.i to i32
  %33 = add i32 %add.i.i, %32
  %34 = add nsw i32 %33, %mul.i.i
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %7, i64 %35
  %37 = bitcast float* %36 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %37, align 4, !tbaa !12, !llvm.access.group !16
  %38 = load float, float* %arrayidx12.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %39 = insertelement <8 x float> undef, float %38, i32 0
  %40 = shufflevector <8 x float> %39, <8 x float> undef, <8 x i32> zeroinitializer
  %41 = add nsw i32 %33, %mul13.i.i
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %7, i64 %42
  %44 = bitcast float* %43 to <8 x float>*
  %wide.load5 = load <8 x float>, <8 x float>* %44, align 4, !tbaa !12, !llvm.access.group !16
  %45 = fneg <8 x float> %40
  %46 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %45, <8 x float> %wide.load5, <8 x float> %wide.load)
  %47 = bitcast float* %36 to <8 x float>*
  store <8 x float> %46, <8 x float>* %47, align 4, !tbaa !12, !llvm.access.group !16
  %48 = trunc i64 %mul.i.i.i to i32
  %49 = or i32 %48, 8
  %50 = add i32 %add.i.i, %49
  %51 = add nsw i32 %50, %mul.i.i
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %7, i64 %52
  %54 = bitcast float* %53 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %54, align 4, !tbaa !12, !llvm.access.group !16
  %55 = load float, float* %arrayidx12.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %56 = insertelement <8 x float> undef, float %55, i32 0
  %57 = shufflevector <8 x float> %56, <8 x float> undef, <8 x i32> zeroinitializer
  %58 = add nsw i32 %50, %mul13.i.i
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %7, i64 %59
  %61 = bitcast float* %60 to <8 x float>*
  %wide.load5.1 = load <8 x float>, <8 x float>* %61, align 4, !tbaa !12, !llvm.access.group !16
  %62 = fneg <8 x float> %57
  %63 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %62, <8 x float> %wide.load5.1, <8 x float> %wide.load.1)
  %64 = bitcast float* %53 to <8 x float>*
  store <8 x float> %63, <8 x float>* %64, align 4, !tbaa !12, !llvm.access.group !16
  %65 = trunc i64 %mul.i.i.i to i32
  %66 = or i32 %65, 16
  %67 = add i32 %add.i.i, %66
  %68 = add nsw i32 %67, %mul.i.i
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %7, i64 %69
  %71 = bitcast float* %70 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %71, align 4, !tbaa !12, !llvm.access.group !16
  %72 = load float, float* %arrayidx12.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %73 = insertelement <8 x float> undef, float %72, i32 0
  %74 = shufflevector <8 x float> %73, <8 x float> undef, <8 x i32> zeroinitializer
  %75 = add nsw i32 %67, %mul13.i.i
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %7, i64 %76
  %78 = bitcast float* %77 to <8 x float>*
  %wide.load5.2 = load <8 x float>, <8 x float>* %78, align 4, !tbaa !12, !llvm.access.group !16
  %79 = fneg <8 x float> %74
  %80 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %79, <8 x float> %wide.load5.2, <8 x float> %wide.load.2)
  %81 = bitcast float* %70 to <8 x float>*
  store <8 x float> %80, <8 x float>* %81, align 4, !tbaa !12, !llvm.access.group !16
  %82 = trunc i64 %mul.i.i.i to i32
  %83 = or i32 %82, 24
  %84 = add i32 %add.i.i, %83
  %85 = add nsw i32 %84, %mul.i.i
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %7, i64 %86
  %88 = bitcast float* %87 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %88, align 4, !tbaa !12, !llvm.access.group !16
  %89 = load float, float* %arrayidx12.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %90 = insertelement <8 x float> undef, float %89, i32 0
  %91 = shufflevector <8 x float> %90, <8 x float> undef, <8 x i32> zeroinitializer
  %92 = add nsw i32 %84, %mul13.i.i
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %7, i64 %93
  %95 = bitcast float* %94 to <8 x float>*
  %wide.load5.3 = load <8 x float>, <8 x float>* %95, align 4, !tbaa !12, !llvm.access.group !16
  %96 = fneg <8 x float> %91
  %97 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %96, <8 x float> %wide.load5.3, <8 x float> %wide.load.3)
  %98 = bitcast float* %87 to <8 x float>*
  store <8 x float> %97, <8 x float>* %98, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

pregion_for_end.i.i.loopexit:                     ; preds = %pregion_for_entry.entry.i.i
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.body
  %99 = trunc i64 %mul3.i.i.i to i32
  %100 = or i32 %99, 1
  %conv7.i.i.1 = add i32 %add.i.i, %100
  %mul.i.i.1 = mul nsw i32 %conv7.i.i.1, %15
  %add10.i.i.1 = add nsw i32 %mul.i.i.1, %11
  %idxprom11.i.i.1 = sext i32 %add10.i.i.1 to i64
  %arrayidx12.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom11.i.i.1
  %101 = mul i32 %15, %conv7.i.i.1
  %102 = add i32 %11, %101
  %103 = trunc i64 %2 to i32
  %104 = shl i32 %103, 5
  %105 = add i32 %102, %104
  %106 = add i32 %105, 1
  %107 = add i32 %105, 32
  %108 = icmp slt i32 %107, %106
  %109 = add i32 %15, 1
  %110 = mul i32 %11, %109
  %111 = add i32 %110, %104
  %112 = add i32 %111, 1
  %113 = add i32 %111, 32
  %114 = icmp slt i32 %113, %112
  %115 = or i1 %108, %114
  br i1 %115, label %pregion_for_entry.entry.i.i.1.preheader, label %vector.body8

pregion_for_entry.entry.i.i.1.preheader:          ; preds = %pregion_for_end.i.i
  br label %pregion_for_entry.entry.i.i.1

vector.body8:                                     ; preds = %pregion_for_end.i.i
  %116 = trunc i64 %mul.i.i.i to i32
  %117 = add i32 %add.i.i, %116
  %118 = add nsw i32 %117, %mul.i.i.1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %7, i64 %119
  %121 = bitcast float* %120 to <8 x float>*
  %wide.load22 = load <8 x float>, <8 x float>* %121, align 4, !tbaa !12, !llvm.access.group !16
  %122 = load float, float* %arrayidx12.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %123 = insertelement <8 x float> undef, float %122, i32 0
  %124 = shufflevector <8 x float> %123, <8 x float> undef, <8 x i32> zeroinitializer
  %125 = add nsw i32 %117, %mul13.i.i
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %7, i64 %126
  %128 = bitcast float* %127 to <8 x float>*
  %wide.load23 = load <8 x float>, <8 x float>* %128, align 4, !tbaa !12, !llvm.access.group !16
  %129 = fneg <8 x float> %124
  %130 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %129, <8 x float> %wide.load23, <8 x float> %wide.load22)
  %131 = bitcast float* %120 to <8 x float>*
  store <8 x float> %130, <8 x float>* %131, align 4, !tbaa !12, !llvm.access.group !16
  %132 = trunc i64 %mul.i.i.i to i32
  %133 = or i32 %132, 8
  %134 = add i32 %add.i.i, %133
  %135 = add nsw i32 %134, %mul.i.i.1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %7, i64 %136
  %138 = bitcast float* %137 to <8 x float>*
  %wide.load22.1 = load <8 x float>, <8 x float>* %138, align 4, !tbaa !12, !llvm.access.group !16
  %139 = load float, float* %arrayidx12.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %140 = insertelement <8 x float> undef, float %139, i32 0
  %141 = shufflevector <8 x float> %140, <8 x float> undef, <8 x i32> zeroinitializer
  %142 = add nsw i32 %134, %mul13.i.i
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %7, i64 %143
  %145 = bitcast float* %144 to <8 x float>*
  %wide.load23.1 = load <8 x float>, <8 x float>* %145, align 4, !tbaa !12, !llvm.access.group !16
  %146 = fneg <8 x float> %141
  %147 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %146, <8 x float> %wide.load23.1, <8 x float> %wide.load22.1)
  %148 = bitcast float* %137 to <8 x float>*
  store <8 x float> %147, <8 x float>* %148, align 4, !tbaa !12, !llvm.access.group !16
  %149 = trunc i64 %mul.i.i.i to i32
  %150 = or i32 %149, 16
  %151 = add i32 %add.i.i, %150
  %152 = add nsw i32 %151, %mul.i.i.1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %7, i64 %153
  %155 = bitcast float* %154 to <8 x float>*
  %wide.load22.2 = load <8 x float>, <8 x float>* %155, align 4, !tbaa !12, !llvm.access.group !16
  %156 = load float, float* %arrayidx12.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %157 = insertelement <8 x float> undef, float %156, i32 0
  %158 = shufflevector <8 x float> %157, <8 x float> undef, <8 x i32> zeroinitializer
  %159 = add nsw i32 %151, %mul13.i.i
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %7, i64 %160
  %162 = bitcast float* %161 to <8 x float>*
  %wide.load23.2 = load <8 x float>, <8 x float>* %162, align 4, !tbaa !12, !llvm.access.group !16
  %163 = fneg <8 x float> %158
  %164 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %163, <8 x float> %wide.load23.2, <8 x float> %wide.load22.2)
  %165 = bitcast float* %154 to <8 x float>*
  store <8 x float> %164, <8 x float>* %165, align 4, !tbaa !12, !llvm.access.group !16
  %166 = trunc i64 %mul.i.i.i to i32
  %167 = or i32 %166, 24
  %168 = add i32 %add.i.i, %167
  %169 = add nsw i32 %168, %mul.i.i.1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %7, i64 %170
  %172 = bitcast float* %171 to <8 x float>*
  %wide.load22.3 = load <8 x float>, <8 x float>* %172, align 4, !tbaa !12, !llvm.access.group !16
  %173 = load float, float* %arrayidx12.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %174 = insertelement <8 x float> undef, float %173, i32 0
  %175 = shufflevector <8 x float> %174, <8 x float> undef, <8 x i32> zeroinitializer
  %176 = add nsw i32 %168, %mul13.i.i
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %7, i64 %177
  %179 = bitcast float* %178 to <8 x float>*
  %wide.load23.3 = load <8 x float>, <8 x float>* %179, align 4, !tbaa !12, !llvm.access.group !16
  %180 = fneg <8 x float> %175
  %181 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %180, <8 x float> %wide.load23.3, <8 x float> %wide.load22.3)
  %182 = bitcast float* %171 to <8 x float>*
  store <8 x float> %181, <8 x float>* %182, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.1

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %194, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %183 = trunc i64 %add1.i.i.i to i32
  %conv2.i.i = add i32 %add.i.i, %183
  %add8.i.i = add nsw i32 %conv2.i.i, %mul.i.i
  %idxprom.i.i = sext i32 %add8.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %7, i64 %idxprom.i.i
  %184 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %185 = load float, float* %arrayidx12.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i = add nsw i32 %conv2.i.i, %mul13.i.i
  %idxprom15.i.i = sext i32 %add14.i.i to i64
  %arrayidx16.i.i = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i
  %186 = load float, float* %arrayidx16.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i = fneg float %185
  %187 = tail call float @llvm.fmuladd.f32(float %neg.i.i, float %186, float %184) #3
  store float %187, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %188 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1141 = add nuw nsw i64 %188, %mul.i.i.i
  %189 = trunc i64 %add1.i.i.i.1141 to i32
  %conv2.i.i.1142 = add i32 %add.i.i, %189
  %add8.i.i.1143 = add nsw i32 %conv2.i.i.1142, %mul.i.i
  %idxprom.i.i.1144 = sext i32 %add8.i.i.1143 to i64
  %arrayidx.i.i.1145 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.1144
  %190 = load float, float* %arrayidx.i.i.1145, align 4, !tbaa !12, !llvm.access.group !16
  %191 = load float, float* %arrayidx12.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.1146 = add nsw i32 %conv2.i.i.1142, %mul13.i.i
  %idxprom15.i.i.1147 = sext i32 %add14.i.i.1146 to i64
  %arrayidx16.i.i.1148 = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i.1147
  %192 = load float, float* %arrayidx16.i.i.1148, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.1149 = fneg float %191
  %193 = tail call float @llvm.fmuladd.f32(float %neg.i.i.1149, float %192, float %190) #3
  store float %193, float* %arrayidx.i.i.1145, align 4, !tbaa !12, !llvm.access.group !16
  %194 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %194, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !29

pregion_for_entry.entry.i.i.1:                    ; preds = %pregion_for_entry.entry.i.i.1, %pregion_for_entry.entry.i.i.1.preheader
  %_local_id_x.i.0.1 = phi i64 [ %206, %pregion_for_entry.entry.i.i.1 ], [ 0, %pregion_for_entry.entry.i.i.1.preheader ]
  %add1.i.i.i.1 = add nuw nsw i64 %_local_id_x.i.0.1, %mul.i.i.i
  %195 = trunc i64 %add1.i.i.i.1 to i32
  %conv2.i.i.1 = add i32 %add.i.i, %195
  %add8.i.i.1 = add nsw i32 %conv2.i.i.1, %mul.i.i.1
  %idxprom.i.i.1 = sext i32 %add8.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.1
  %196 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %197 = load float, float* %arrayidx12.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.1 = add nsw i32 %conv2.i.i.1, %mul13.i.i
  %idxprom15.i.i.1 = sext i32 %add14.i.i.1 to i64
  %arrayidx16.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i.1
  %198 = load float, float* %arrayidx16.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.1 = fneg float %197
  %199 = tail call float @llvm.fmuladd.f32(float %neg.i.i.1, float %198, float %196) #3
  store float %199, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %200 = or i64 %_local_id_x.i.0.1, 1
  %add1.i.i.i.1.1 = add nuw nsw i64 %200, %mul.i.i.i
  %201 = trunc i64 %add1.i.i.i.1.1 to i32
  %conv2.i.i.1.1 = add i32 %add.i.i, %201
  %add8.i.i.1.1 = add nsw i32 %conv2.i.i.1.1, %mul.i.i.1
  %idxprom.i.i.1.1 = sext i32 %add8.i.i.1.1 to i64
  %arrayidx.i.i.1.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.1.1
  %202 = load float, float* %arrayidx.i.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %203 = load float, float* %arrayidx12.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.1.1 = add nsw i32 %conv2.i.i.1.1, %mul13.i.i
  %idxprom15.i.i.1.1 = sext i32 %add14.i.i.1.1 to i64
  %arrayidx16.i.i.1.1 = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i.1.1
  %204 = load float, float* %arrayidx16.i.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.1.1 = fneg float %203
  %205 = tail call float @llvm.fmuladd.f32(float %neg.i.i.1.1, float %204, float %202) #3
  store float %205, float* %arrayidx.i.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %206 = add nuw nsw i64 %_local_id_x.i.0.1, 2
  %exitcond.1.not.1 = icmp eq i64 %206, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.1, !llvm.loop !30

pregion_for_end.i.i.1.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.1
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.body8
  %207 = trunc i64 %mul3.i.i.i to i32
  %208 = or i32 %207, 2
  %conv7.i.i.2 = add i32 %add.i.i, %208
  %mul.i.i.2 = mul nsw i32 %conv7.i.i.2, %15
  %add10.i.i.2 = add nsw i32 %mul.i.i.2, %11
  %idxprom11.i.i.2 = sext i32 %add10.i.i.2 to i64
  %arrayidx12.i.i.2 = getelementptr inbounds float, float* %7, i64 %idxprom11.i.i.2
  %209 = mul i32 %15, %conv7.i.i.2
  %210 = add i32 %11, %209
  %211 = trunc i64 %2 to i32
  %212 = shl i32 %211, 5
  %213 = add i32 %210, %212
  %214 = add i32 %213, 1
  %215 = add i32 %213, 32
  %216 = icmp slt i32 %215, %214
  %217 = add i32 %15, 1
  %218 = mul i32 %11, %217
  %219 = add i32 %218, %212
  %220 = add i32 %219, 1
  %221 = add i32 %219, 32
  %222 = icmp slt i32 %221, %220
  %223 = or i1 %216, %222
  br i1 %223, label %pregion_for_entry.entry.i.i.2.preheader, label %vector.body26

pregion_for_entry.entry.i.i.2.preheader:          ; preds = %pregion_for_end.i.i.1
  br label %pregion_for_entry.entry.i.i.2

vector.body26:                                    ; preds = %pregion_for_end.i.i.1
  %224 = trunc i64 %mul.i.i.i to i32
  %225 = add i32 %add.i.i, %224
  %226 = add nsw i32 %225, %mul.i.i.2
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %7, i64 %227
  %229 = bitcast float* %228 to <8 x float>*
  %wide.load40 = load <8 x float>, <8 x float>* %229, align 4, !tbaa !12, !llvm.access.group !16
  %230 = load float, float* %arrayidx12.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %231 = insertelement <8 x float> undef, float %230, i32 0
  %232 = shufflevector <8 x float> %231, <8 x float> undef, <8 x i32> zeroinitializer
  %233 = add nsw i32 %225, %mul13.i.i
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %7, i64 %234
  %236 = bitcast float* %235 to <8 x float>*
  %wide.load41 = load <8 x float>, <8 x float>* %236, align 4, !tbaa !12, !llvm.access.group !16
  %237 = fneg <8 x float> %232
  %238 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %237, <8 x float> %wide.load41, <8 x float> %wide.load40)
  %239 = bitcast float* %228 to <8 x float>*
  store <8 x float> %238, <8 x float>* %239, align 4, !tbaa !12, !llvm.access.group !16
  %240 = trunc i64 %mul.i.i.i to i32
  %241 = or i32 %240, 8
  %242 = add i32 %add.i.i, %241
  %243 = add nsw i32 %242, %mul.i.i.2
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds float, float* %7, i64 %244
  %246 = bitcast float* %245 to <8 x float>*
  %wide.load40.1 = load <8 x float>, <8 x float>* %246, align 4, !tbaa !12, !llvm.access.group !16
  %247 = load float, float* %arrayidx12.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %248 = insertelement <8 x float> undef, float %247, i32 0
  %249 = shufflevector <8 x float> %248, <8 x float> undef, <8 x i32> zeroinitializer
  %250 = add nsw i32 %242, %mul13.i.i
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %7, i64 %251
  %253 = bitcast float* %252 to <8 x float>*
  %wide.load41.1 = load <8 x float>, <8 x float>* %253, align 4, !tbaa !12, !llvm.access.group !16
  %254 = fneg <8 x float> %249
  %255 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %254, <8 x float> %wide.load41.1, <8 x float> %wide.load40.1)
  %256 = bitcast float* %245 to <8 x float>*
  store <8 x float> %255, <8 x float>* %256, align 4, !tbaa !12, !llvm.access.group !16
  %257 = trunc i64 %mul.i.i.i to i32
  %258 = or i32 %257, 16
  %259 = add i32 %add.i.i, %258
  %260 = add nsw i32 %259, %mul.i.i.2
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %7, i64 %261
  %263 = bitcast float* %262 to <8 x float>*
  %wide.load40.2 = load <8 x float>, <8 x float>* %263, align 4, !tbaa !12, !llvm.access.group !16
  %264 = load float, float* %arrayidx12.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %265 = insertelement <8 x float> undef, float %264, i32 0
  %266 = shufflevector <8 x float> %265, <8 x float> undef, <8 x i32> zeroinitializer
  %267 = add nsw i32 %259, %mul13.i.i
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds float, float* %7, i64 %268
  %270 = bitcast float* %269 to <8 x float>*
  %wide.load41.2 = load <8 x float>, <8 x float>* %270, align 4, !tbaa !12, !llvm.access.group !16
  %271 = fneg <8 x float> %266
  %272 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %271, <8 x float> %wide.load41.2, <8 x float> %wide.load40.2)
  %273 = bitcast float* %262 to <8 x float>*
  store <8 x float> %272, <8 x float>* %273, align 4, !tbaa !12, !llvm.access.group !16
  %274 = trunc i64 %mul.i.i.i to i32
  %275 = or i32 %274, 24
  %276 = add i32 %add.i.i, %275
  %277 = add nsw i32 %276, %mul.i.i.2
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds float, float* %7, i64 %278
  %280 = bitcast float* %279 to <8 x float>*
  %wide.load40.3 = load <8 x float>, <8 x float>* %280, align 4, !tbaa !12, !llvm.access.group !16
  %281 = load float, float* %arrayidx12.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %282 = insertelement <8 x float> undef, float %281, i32 0
  %283 = shufflevector <8 x float> %282, <8 x float> undef, <8 x i32> zeroinitializer
  %284 = add nsw i32 %276, %mul13.i.i
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds float, float* %7, i64 %285
  %287 = bitcast float* %286 to <8 x float>*
  %wide.load41.3 = load <8 x float>, <8 x float>* %287, align 4, !tbaa !12, !llvm.access.group !16
  %288 = fneg <8 x float> %283
  %289 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %288, <8 x float> %wide.load41.3, <8 x float> %wide.load40.3)
  %290 = bitcast float* %279 to <8 x float>*
  store <8 x float> %289, <8 x float>* %290, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.2:                    ; preds = %pregion_for_entry.entry.i.i.2, %pregion_for_entry.entry.i.i.2.preheader
  %_local_id_x.i.0.2 = phi i64 [ %302, %pregion_for_entry.entry.i.i.2 ], [ 0, %pregion_for_entry.entry.i.i.2.preheader ]
  %add1.i.i.i.2 = add nuw nsw i64 %_local_id_x.i.0.2, %mul.i.i.i
  %291 = trunc i64 %add1.i.i.i.2 to i32
  %conv2.i.i.2 = add i32 %add.i.i, %291
  %add8.i.i.2 = add nsw i32 %conv2.i.i.2, %mul.i.i.2
  %idxprom.i.i.2 = sext i32 %add8.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.2
  %292 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %293 = load float, float* %arrayidx12.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.2 = add nsw i32 %conv2.i.i.2, %mul13.i.i
  %idxprom15.i.i.2 = sext i32 %add14.i.i.2 to i64
  %arrayidx16.i.i.2 = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i.2
  %294 = load float, float* %arrayidx16.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.2 = fneg float %293
  %295 = tail call float @llvm.fmuladd.f32(float %neg.i.i.2, float %294, float %292) #3
  store float %295, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %296 = or i64 %_local_id_x.i.0.2, 1
  %add1.i.i.i.2.1 = add nuw nsw i64 %296, %mul.i.i.i
  %297 = trunc i64 %add1.i.i.i.2.1 to i32
  %conv2.i.i.2.1 = add i32 %add.i.i, %297
  %add8.i.i.2.1 = add nsw i32 %conv2.i.i.2.1, %mul.i.i.2
  %idxprom.i.i.2.1 = sext i32 %add8.i.i.2.1 to i64
  %arrayidx.i.i.2.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.2.1
  %298 = load float, float* %arrayidx.i.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %299 = load float, float* %arrayidx12.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.2.1 = add nsw i32 %conv2.i.i.2.1, %mul13.i.i
  %idxprom15.i.i.2.1 = sext i32 %add14.i.i.2.1 to i64
  %arrayidx16.i.i.2.1 = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i.2.1
  %300 = load float, float* %arrayidx16.i.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.2.1 = fneg float %299
  %301 = tail call float @llvm.fmuladd.f32(float %neg.i.i.2.1, float %300, float %298) #3
  store float %301, float* %arrayidx.i.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %302 = add nuw nsw i64 %_local_id_x.i.0.2, 2
  %exitcond.2.not.1 = icmp eq i64 %302, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.2, !llvm.loop !31

pregion_for_end.i.i.2.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.2
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.body26
  %303 = trunc i64 %mul3.i.i.i to i32
  %304 = or i32 %303, 3
  %conv7.i.i.3 = add i32 %add.i.i, %304
  %mul.i.i.3 = mul nsw i32 %conv7.i.i.3, %15
  %add10.i.i.3 = add nsw i32 %mul.i.i.3, %11
  %idxprom11.i.i.3 = sext i32 %add10.i.i.3 to i64
  %arrayidx12.i.i.3 = getelementptr inbounds float, float* %7, i64 %idxprom11.i.i.3
  %305 = mul i32 %15, %conv7.i.i.3
  %306 = add i32 %11, %305
  %307 = trunc i64 %2 to i32
  %308 = shl i32 %307, 5
  %309 = add i32 %306, %308
  %310 = add i32 %309, 1
  %311 = add i32 %309, 32
  %312 = icmp slt i32 %311, %310
  %313 = add i32 %15, 1
  %314 = mul i32 %11, %313
  %315 = add i32 %314, %308
  %316 = add i32 %315, 1
  %317 = add i32 %315, 32
  %318 = icmp slt i32 %317, %316
  %319 = or i1 %312, %318
  br i1 %319, label %pregion_for_entry.entry.i.i.3.preheader, label %vector.body44

pregion_for_entry.entry.i.i.3.preheader:          ; preds = %pregion_for_end.i.i.2
  br label %pregion_for_entry.entry.i.i.3

vector.body44:                                    ; preds = %pregion_for_end.i.i.2
  %320 = trunc i64 %mul.i.i.i to i32
  %321 = add i32 %add.i.i, %320
  %322 = add nsw i32 %321, %mul.i.i.3
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds float, float* %7, i64 %323
  %325 = bitcast float* %324 to <8 x float>*
  %wide.load58 = load <8 x float>, <8 x float>* %325, align 4, !tbaa !12, !llvm.access.group !16
  %326 = load float, float* %arrayidx12.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %327 = insertelement <8 x float> undef, float %326, i32 0
  %328 = shufflevector <8 x float> %327, <8 x float> undef, <8 x i32> zeroinitializer
  %329 = add nsw i32 %321, %mul13.i.i
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds float, float* %7, i64 %330
  %332 = bitcast float* %331 to <8 x float>*
  %wide.load59 = load <8 x float>, <8 x float>* %332, align 4, !tbaa !12, !llvm.access.group !16
  %333 = fneg <8 x float> %328
  %334 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %333, <8 x float> %wide.load59, <8 x float> %wide.load58)
  %335 = bitcast float* %324 to <8 x float>*
  store <8 x float> %334, <8 x float>* %335, align 4, !tbaa !12, !llvm.access.group !16
  %336 = trunc i64 %mul.i.i.i to i32
  %337 = or i32 %336, 8
  %338 = add i32 %add.i.i, %337
  %339 = add nsw i32 %338, %mul.i.i.3
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds float, float* %7, i64 %340
  %342 = bitcast float* %341 to <8 x float>*
  %wide.load58.1 = load <8 x float>, <8 x float>* %342, align 4, !tbaa !12, !llvm.access.group !16
  %343 = load float, float* %arrayidx12.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %344 = insertelement <8 x float> undef, float %343, i32 0
  %345 = shufflevector <8 x float> %344, <8 x float> undef, <8 x i32> zeroinitializer
  %346 = add nsw i32 %338, %mul13.i.i
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds float, float* %7, i64 %347
  %349 = bitcast float* %348 to <8 x float>*
  %wide.load59.1 = load <8 x float>, <8 x float>* %349, align 4, !tbaa !12, !llvm.access.group !16
  %350 = fneg <8 x float> %345
  %351 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %350, <8 x float> %wide.load59.1, <8 x float> %wide.load58.1)
  %352 = bitcast float* %341 to <8 x float>*
  store <8 x float> %351, <8 x float>* %352, align 4, !tbaa !12, !llvm.access.group !16
  %353 = trunc i64 %mul.i.i.i to i32
  %354 = or i32 %353, 16
  %355 = add i32 %add.i.i, %354
  %356 = add nsw i32 %355, %mul.i.i.3
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds float, float* %7, i64 %357
  %359 = bitcast float* %358 to <8 x float>*
  %wide.load58.2 = load <8 x float>, <8 x float>* %359, align 4, !tbaa !12, !llvm.access.group !16
  %360 = load float, float* %arrayidx12.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %361 = insertelement <8 x float> undef, float %360, i32 0
  %362 = shufflevector <8 x float> %361, <8 x float> undef, <8 x i32> zeroinitializer
  %363 = add nsw i32 %355, %mul13.i.i
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds float, float* %7, i64 %364
  %366 = bitcast float* %365 to <8 x float>*
  %wide.load59.2 = load <8 x float>, <8 x float>* %366, align 4, !tbaa !12, !llvm.access.group !16
  %367 = fneg <8 x float> %362
  %368 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %367, <8 x float> %wide.load59.2, <8 x float> %wide.load58.2)
  %369 = bitcast float* %358 to <8 x float>*
  store <8 x float> %368, <8 x float>* %369, align 4, !tbaa !12, !llvm.access.group !16
  %370 = trunc i64 %mul.i.i.i to i32
  %371 = or i32 %370, 24
  %372 = add i32 %add.i.i, %371
  %373 = add nsw i32 %372, %mul.i.i.3
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds float, float* %7, i64 %374
  %376 = bitcast float* %375 to <8 x float>*
  %wide.load58.3 = load <8 x float>, <8 x float>* %376, align 4, !tbaa !12, !llvm.access.group !16
  %377 = load float, float* %arrayidx12.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %378 = insertelement <8 x float> undef, float %377, i32 0
  %379 = shufflevector <8 x float> %378, <8 x float> undef, <8 x i32> zeroinitializer
  %380 = add nsw i32 %372, %mul13.i.i
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds float, float* %7, i64 %381
  %383 = bitcast float* %382 to <8 x float>*
  %wide.load59.3 = load <8 x float>, <8 x float>* %383, align 4, !tbaa !12, !llvm.access.group !16
  %384 = fneg <8 x float> %379
  %385 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %384, <8 x float> %wide.load59.3, <8 x float> %wide.load58.3)
  %386 = bitcast float* %375 to <8 x float>*
  store <8 x float> %385, <8 x float>* %386, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.3:                    ; preds = %pregion_for_entry.entry.i.i.3, %pregion_for_entry.entry.i.i.3.preheader
  %_local_id_x.i.0.3 = phi i64 [ %398, %pregion_for_entry.entry.i.i.3 ], [ 0, %pregion_for_entry.entry.i.i.3.preheader ]
  %add1.i.i.i.3 = add nuw nsw i64 %_local_id_x.i.0.3, %mul.i.i.i
  %387 = trunc i64 %add1.i.i.i.3 to i32
  %conv2.i.i.3 = add i32 %add.i.i, %387
  %add8.i.i.3 = add nsw i32 %conv2.i.i.3, %mul.i.i.3
  %idxprom.i.i.3 = sext i32 %add8.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.3
  %388 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %389 = load float, float* %arrayidx12.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.3 = add nsw i32 %conv2.i.i.3, %mul13.i.i
  %idxprom15.i.i.3 = sext i32 %add14.i.i.3 to i64
  %arrayidx16.i.i.3 = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i.3
  %390 = load float, float* %arrayidx16.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.3 = fneg float %389
  %391 = tail call float @llvm.fmuladd.f32(float %neg.i.i.3, float %390, float %388) #3
  store float %391, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %392 = or i64 %_local_id_x.i.0.3, 1
  %add1.i.i.i.3.1 = add nuw nsw i64 %392, %mul.i.i.i
  %393 = trunc i64 %add1.i.i.i.3.1 to i32
  %conv2.i.i.3.1 = add i32 %add.i.i, %393
  %add8.i.i.3.1 = add nsw i32 %conv2.i.i.3.1, %mul.i.i.3
  %idxprom.i.i.3.1 = sext i32 %add8.i.i.3.1 to i64
  %arrayidx.i.i.3.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.3.1
  %394 = load float, float* %arrayidx.i.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %395 = load float, float* %arrayidx12.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.3.1 = add nsw i32 %conv2.i.i.3.1, %mul13.i.i
  %idxprom15.i.i.3.1 = sext i32 %add14.i.i.3.1 to i64
  %arrayidx16.i.i.3.1 = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i.3.1
  %396 = load float, float* %arrayidx16.i.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.3.1 = fneg float %395
  %397 = tail call float @llvm.fmuladd.f32(float %neg.i.i.3.1, float %396, float %394) #3
  store float %397, float* %arrayidx.i.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %398 = add nuw nsw i64 %_local_id_x.i.0.3, 2
  %exitcond.3.not.1 = icmp eq i64 %398, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.3, !llvm.loop !32

pregion_for_end.i.i.3.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.3
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.body44
  %399 = trunc i64 %mul3.i.i.i to i32
  %400 = or i32 %399, 4
  %conv7.i.i.4 = add i32 %add.i.i, %400
  %mul.i.i.4 = mul nsw i32 %conv7.i.i.4, %15
  %add10.i.i.4 = add nsw i32 %mul.i.i.4, %11
  %idxprom11.i.i.4 = sext i32 %add10.i.i.4 to i64
  %arrayidx12.i.i.4 = getelementptr inbounds float, float* %7, i64 %idxprom11.i.i.4
  %401 = mul i32 %15, %conv7.i.i.4
  %402 = add i32 %11, %401
  %403 = trunc i64 %2 to i32
  %404 = shl i32 %403, 5
  %405 = add i32 %402, %404
  %406 = add i32 %405, 1
  %407 = add i32 %405, 32
  %408 = icmp slt i32 %407, %406
  %409 = add i32 %15, 1
  %410 = mul i32 %11, %409
  %411 = add i32 %410, %404
  %412 = add i32 %411, 1
  %413 = add i32 %411, 32
  %414 = icmp slt i32 %413, %412
  %415 = or i1 %408, %414
  br i1 %415, label %pregion_for_entry.entry.i.i.4.preheader, label %vector.body62

pregion_for_entry.entry.i.i.4.preheader:          ; preds = %pregion_for_end.i.i.3
  br label %pregion_for_entry.entry.i.i.4

vector.body62:                                    ; preds = %pregion_for_end.i.i.3
  %416 = trunc i64 %mul.i.i.i to i32
  %417 = add i32 %add.i.i, %416
  %418 = add nsw i32 %417, %mul.i.i.4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds float, float* %7, i64 %419
  %421 = bitcast float* %420 to <8 x float>*
  %wide.load76 = load <8 x float>, <8 x float>* %421, align 4, !tbaa !12, !llvm.access.group !16
  %422 = load float, float* %arrayidx12.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %423 = insertelement <8 x float> undef, float %422, i32 0
  %424 = shufflevector <8 x float> %423, <8 x float> undef, <8 x i32> zeroinitializer
  %425 = add nsw i32 %417, %mul13.i.i
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds float, float* %7, i64 %426
  %428 = bitcast float* %427 to <8 x float>*
  %wide.load77 = load <8 x float>, <8 x float>* %428, align 4, !tbaa !12, !llvm.access.group !16
  %429 = fneg <8 x float> %424
  %430 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %429, <8 x float> %wide.load77, <8 x float> %wide.load76)
  %431 = bitcast float* %420 to <8 x float>*
  store <8 x float> %430, <8 x float>* %431, align 4, !tbaa !12, !llvm.access.group !16
  %432 = trunc i64 %mul.i.i.i to i32
  %433 = or i32 %432, 8
  %434 = add i32 %add.i.i, %433
  %435 = add nsw i32 %434, %mul.i.i.4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds float, float* %7, i64 %436
  %438 = bitcast float* %437 to <8 x float>*
  %wide.load76.1 = load <8 x float>, <8 x float>* %438, align 4, !tbaa !12, !llvm.access.group !16
  %439 = load float, float* %arrayidx12.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %440 = insertelement <8 x float> undef, float %439, i32 0
  %441 = shufflevector <8 x float> %440, <8 x float> undef, <8 x i32> zeroinitializer
  %442 = add nsw i32 %434, %mul13.i.i
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds float, float* %7, i64 %443
  %445 = bitcast float* %444 to <8 x float>*
  %wide.load77.1 = load <8 x float>, <8 x float>* %445, align 4, !tbaa !12, !llvm.access.group !16
  %446 = fneg <8 x float> %441
  %447 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %446, <8 x float> %wide.load77.1, <8 x float> %wide.load76.1)
  %448 = bitcast float* %437 to <8 x float>*
  store <8 x float> %447, <8 x float>* %448, align 4, !tbaa !12, !llvm.access.group !16
  %449 = trunc i64 %mul.i.i.i to i32
  %450 = or i32 %449, 16
  %451 = add i32 %add.i.i, %450
  %452 = add nsw i32 %451, %mul.i.i.4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds float, float* %7, i64 %453
  %455 = bitcast float* %454 to <8 x float>*
  %wide.load76.2 = load <8 x float>, <8 x float>* %455, align 4, !tbaa !12, !llvm.access.group !16
  %456 = load float, float* %arrayidx12.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %457 = insertelement <8 x float> undef, float %456, i32 0
  %458 = shufflevector <8 x float> %457, <8 x float> undef, <8 x i32> zeroinitializer
  %459 = add nsw i32 %451, %mul13.i.i
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds float, float* %7, i64 %460
  %462 = bitcast float* %461 to <8 x float>*
  %wide.load77.2 = load <8 x float>, <8 x float>* %462, align 4, !tbaa !12, !llvm.access.group !16
  %463 = fneg <8 x float> %458
  %464 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %463, <8 x float> %wide.load77.2, <8 x float> %wide.load76.2)
  %465 = bitcast float* %454 to <8 x float>*
  store <8 x float> %464, <8 x float>* %465, align 4, !tbaa !12, !llvm.access.group !16
  %466 = trunc i64 %mul.i.i.i to i32
  %467 = or i32 %466, 24
  %468 = add i32 %add.i.i, %467
  %469 = add nsw i32 %468, %mul.i.i.4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds float, float* %7, i64 %470
  %472 = bitcast float* %471 to <8 x float>*
  %wide.load76.3 = load <8 x float>, <8 x float>* %472, align 4, !tbaa !12, !llvm.access.group !16
  %473 = load float, float* %arrayidx12.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %474 = insertelement <8 x float> undef, float %473, i32 0
  %475 = shufflevector <8 x float> %474, <8 x float> undef, <8 x i32> zeroinitializer
  %476 = add nsw i32 %468, %mul13.i.i
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds float, float* %7, i64 %477
  %479 = bitcast float* %478 to <8 x float>*
  %wide.load77.3 = load <8 x float>, <8 x float>* %479, align 4, !tbaa !12, !llvm.access.group !16
  %480 = fneg <8 x float> %475
  %481 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %480, <8 x float> %wide.load77.3, <8 x float> %wide.load76.3)
  %482 = bitcast float* %471 to <8 x float>*
  store <8 x float> %481, <8 x float>* %482, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.4:                    ; preds = %pregion_for_entry.entry.i.i.4, %pregion_for_entry.entry.i.i.4.preheader
  %_local_id_x.i.0.4 = phi i64 [ %494, %pregion_for_entry.entry.i.i.4 ], [ 0, %pregion_for_entry.entry.i.i.4.preheader ]
  %add1.i.i.i.4 = add nuw nsw i64 %_local_id_x.i.0.4, %mul.i.i.i
  %483 = trunc i64 %add1.i.i.i.4 to i32
  %conv2.i.i.4 = add i32 %add.i.i, %483
  %add8.i.i.4 = add nsw i32 %conv2.i.i.4, %mul.i.i.4
  %idxprom.i.i.4 = sext i32 %add8.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.4
  %484 = load float, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %485 = load float, float* %arrayidx12.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.4 = add nsw i32 %conv2.i.i.4, %mul13.i.i
  %idxprom15.i.i.4 = sext i32 %add14.i.i.4 to i64
  %arrayidx16.i.i.4 = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i.4
  %486 = load float, float* %arrayidx16.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.4 = fneg float %485
  %487 = tail call float @llvm.fmuladd.f32(float %neg.i.i.4, float %486, float %484) #3
  store float %487, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %488 = or i64 %_local_id_x.i.0.4, 1
  %add1.i.i.i.4.1 = add nuw nsw i64 %488, %mul.i.i.i
  %489 = trunc i64 %add1.i.i.i.4.1 to i32
  %conv2.i.i.4.1 = add i32 %add.i.i, %489
  %add8.i.i.4.1 = add nsw i32 %conv2.i.i.4.1, %mul.i.i.4
  %idxprom.i.i.4.1 = sext i32 %add8.i.i.4.1 to i64
  %arrayidx.i.i.4.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.4.1
  %490 = load float, float* %arrayidx.i.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %491 = load float, float* %arrayidx12.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.4.1 = add nsw i32 %conv2.i.i.4.1, %mul13.i.i
  %idxprom15.i.i.4.1 = sext i32 %add14.i.i.4.1 to i64
  %arrayidx16.i.i.4.1 = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i.4.1
  %492 = load float, float* %arrayidx16.i.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.4.1 = fneg float %491
  %493 = tail call float @llvm.fmuladd.f32(float %neg.i.i.4.1, float %492, float %490) #3
  store float %493, float* %arrayidx.i.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %494 = add nuw nsw i64 %_local_id_x.i.0.4, 2
  %exitcond.4.not.1 = icmp eq i64 %494, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.4, !llvm.loop !33

pregion_for_end.i.i.4.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.4
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.body62
  %495 = trunc i64 %mul3.i.i.i to i32
  %496 = or i32 %495, 5
  %conv7.i.i.5 = add i32 %add.i.i, %496
  %mul.i.i.5 = mul nsw i32 %conv7.i.i.5, %15
  %add10.i.i.5 = add nsw i32 %mul.i.i.5, %11
  %idxprom11.i.i.5 = sext i32 %add10.i.i.5 to i64
  %arrayidx12.i.i.5 = getelementptr inbounds float, float* %7, i64 %idxprom11.i.i.5
  %497 = mul i32 %15, %conv7.i.i.5
  %498 = add i32 %11, %497
  %499 = trunc i64 %2 to i32
  %500 = shl i32 %499, 5
  %501 = add i32 %498, %500
  %502 = add i32 %501, 1
  %503 = add i32 %501, 32
  %504 = icmp slt i32 %503, %502
  %505 = add i32 %15, 1
  %506 = mul i32 %11, %505
  %507 = add i32 %506, %500
  %508 = add i32 %507, 1
  %509 = add i32 %507, 32
  %510 = icmp slt i32 %509, %508
  %511 = or i1 %504, %510
  br i1 %511, label %pregion_for_entry.entry.i.i.5.preheader, label %vector.body80

pregion_for_entry.entry.i.i.5.preheader:          ; preds = %pregion_for_end.i.i.4
  br label %pregion_for_entry.entry.i.i.5

vector.body80:                                    ; preds = %pregion_for_end.i.i.4
  %512 = trunc i64 %mul.i.i.i to i32
  %513 = add i32 %add.i.i, %512
  %514 = add nsw i32 %513, %mul.i.i.5
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds float, float* %7, i64 %515
  %517 = bitcast float* %516 to <8 x float>*
  %wide.load94 = load <8 x float>, <8 x float>* %517, align 4, !tbaa !12, !llvm.access.group !16
  %518 = load float, float* %arrayidx12.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %519 = insertelement <8 x float> undef, float %518, i32 0
  %520 = shufflevector <8 x float> %519, <8 x float> undef, <8 x i32> zeroinitializer
  %521 = add nsw i32 %513, %mul13.i.i
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds float, float* %7, i64 %522
  %524 = bitcast float* %523 to <8 x float>*
  %wide.load95 = load <8 x float>, <8 x float>* %524, align 4, !tbaa !12, !llvm.access.group !16
  %525 = fneg <8 x float> %520
  %526 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %525, <8 x float> %wide.load95, <8 x float> %wide.load94)
  %527 = bitcast float* %516 to <8 x float>*
  store <8 x float> %526, <8 x float>* %527, align 4, !tbaa !12, !llvm.access.group !16
  %528 = trunc i64 %mul.i.i.i to i32
  %529 = or i32 %528, 8
  %530 = add i32 %add.i.i, %529
  %531 = add nsw i32 %530, %mul.i.i.5
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds float, float* %7, i64 %532
  %534 = bitcast float* %533 to <8 x float>*
  %wide.load94.1 = load <8 x float>, <8 x float>* %534, align 4, !tbaa !12, !llvm.access.group !16
  %535 = load float, float* %arrayidx12.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %536 = insertelement <8 x float> undef, float %535, i32 0
  %537 = shufflevector <8 x float> %536, <8 x float> undef, <8 x i32> zeroinitializer
  %538 = add nsw i32 %530, %mul13.i.i
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds float, float* %7, i64 %539
  %541 = bitcast float* %540 to <8 x float>*
  %wide.load95.1 = load <8 x float>, <8 x float>* %541, align 4, !tbaa !12, !llvm.access.group !16
  %542 = fneg <8 x float> %537
  %543 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %542, <8 x float> %wide.load95.1, <8 x float> %wide.load94.1)
  %544 = bitcast float* %533 to <8 x float>*
  store <8 x float> %543, <8 x float>* %544, align 4, !tbaa !12, !llvm.access.group !16
  %545 = trunc i64 %mul.i.i.i to i32
  %546 = or i32 %545, 16
  %547 = add i32 %add.i.i, %546
  %548 = add nsw i32 %547, %mul.i.i.5
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds float, float* %7, i64 %549
  %551 = bitcast float* %550 to <8 x float>*
  %wide.load94.2 = load <8 x float>, <8 x float>* %551, align 4, !tbaa !12, !llvm.access.group !16
  %552 = load float, float* %arrayidx12.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %553 = insertelement <8 x float> undef, float %552, i32 0
  %554 = shufflevector <8 x float> %553, <8 x float> undef, <8 x i32> zeroinitializer
  %555 = add nsw i32 %547, %mul13.i.i
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds float, float* %7, i64 %556
  %558 = bitcast float* %557 to <8 x float>*
  %wide.load95.2 = load <8 x float>, <8 x float>* %558, align 4, !tbaa !12, !llvm.access.group !16
  %559 = fneg <8 x float> %554
  %560 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %559, <8 x float> %wide.load95.2, <8 x float> %wide.load94.2)
  %561 = bitcast float* %550 to <8 x float>*
  store <8 x float> %560, <8 x float>* %561, align 4, !tbaa !12, !llvm.access.group !16
  %562 = trunc i64 %mul.i.i.i to i32
  %563 = or i32 %562, 24
  %564 = add i32 %add.i.i, %563
  %565 = add nsw i32 %564, %mul.i.i.5
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds float, float* %7, i64 %566
  %568 = bitcast float* %567 to <8 x float>*
  %wide.load94.3 = load <8 x float>, <8 x float>* %568, align 4, !tbaa !12, !llvm.access.group !16
  %569 = load float, float* %arrayidx12.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %570 = insertelement <8 x float> undef, float %569, i32 0
  %571 = shufflevector <8 x float> %570, <8 x float> undef, <8 x i32> zeroinitializer
  %572 = add nsw i32 %564, %mul13.i.i
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds float, float* %7, i64 %573
  %575 = bitcast float* %574 to <8 x float>*
  %wide.load95.3 = load <8 x float>, <8 x float>* %575, align 4, !tbaa !12, !llvm.access.group !16
  %576 = fneg <8 x float> %571
  %577 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %576, <8 x float> %wide.load95.3, <8 x float> %wide.load94.3)
  %578 = bitcast float* %567 to <8 x float>*
  store <8 x float> %577, <8 x float>* %578, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.5:                    ; preds = %pregion_for_entry.entry.i.i.5, %pregion_for_entry.entry.i.i.5.preheader
  %_local_id_x.i.0.5 = phi i64 [ %590, %pregion_for_entry.entry.i.i.5 ], [ 0, %pregion_for_entry.entry.i.i.5.preheader ]
  %add1.i.i.i.5 = add nuw nsw i64 %_local_id_x.i.0.5, %mul.i.i.i
  %579 = trunc i64 %add1.i.i.i.5 to i32
  %conv2.i.i.5 = add i32 %add.i.i, %579
  %add8.i.i.5 = add nsw i32 %conv2.i.i.5, %mul.i.i.5
  %idxprom.i.i.5 = sext i32 %add8.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.5
  %580 = load float, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %581 = load float, float* %arrayidx12.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.5 = add nsw i32 %conv2.i.i.5, %mul13.i.i
  %idxprom15.i.i.5 = sext i32 %add14.i.i.5 to i64
  %arrayidx16.i.i.5 = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i.5
  %582 = load float, float* %arrayidx16.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.5 = fneg float %581
  %583 = tail call float @llvm.fmuladd.f32(float %neg.i.i.5, float %582, float %580) #3
  store float %583, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %584 = or i64 %_local_id_x.i.0.5, 1
  %add1.i.i.i.5.1 = add nuw nsw i64 %584, %mul.i.i.i
  %585 = trunc i64 %add1.i.i.i.5.1 to i32
  %conv2.i.i.5.1 = add i32 %add.i.i, %585
  %add8.i.i.5.1 = add nsw i32 %conv2.i.i.5.1, %mul.i.i.5
  %idxprom.i.i.5.1 = sext i32 %add8.i.i.5.1 to i64
  %arrayidx.i.i.5.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.5.1
  %586 = load float, float* %arrayidx.i.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %587 = load float, float* %arrayidx12.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.5.1 = add nsw i32 %conv2.i.i.5.1, %mul13.i.i
  %idxprom15.i.i.5.1 = sext i32 %add14.i.i.5.1 to i64
  %arrayidx16.i.i.5.1 = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i.5.1
  %588 = load float, float* %arrayidx16.i.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.5.1 = fneg float %587
  %589 = tail call float @llvm.fmuladd.f32(float %neg.i.i.5.1, float %588, float %586) #3
  store float %589, float* %arrayidx.i.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %590 = add nuw nsw i64 %_local_id_x.i.0.5, 2
  %exitcond.5.not.1 = icmp eq i64 %590, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.5, !llvm.loop !34

pregion_for_end.i.i.5.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.5
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.body80
  %591 = trunc i64 %mul3.i.i.i to i32
  %592 = or i32 %591, 6
  %conv7.i.i.6 = add i32 %add.i.i, %592
  %mul.i.i.6 = mul nsw i32 %conv7.i.i.6, %15
  %add10.i.i.6 = add nsw i32 %mul.i.i.6, %11
  %idxprom11.i.i.6 = sext i32 %add10.i.i.6 to i64
  %arrayidx12.i.i.6 = getelementptr inbounds float, float* %7, i64 %idxprom11.i.i.6
  %593 = mul i32 %15, %conv7.i.i.6
  %594 = add i32 %11, %593
  %595 = trunc i64 %2 to i32
  %596 = shl i32 %595, 5
  %597 = add i32 %594, %596
  %598 = add i32 %597, 1
  %599 = add i32 %597, 32
  %600 = icmp slt i32 %599, %598
  %601 = add i32 %15, 1
  %602 = mul i32 %11, %601
  %603 = add i32 %602, %596
  %604 = add i32 %603, 1
  %605 = add i32 %603, 32
  %606 = icmp slt i32 %605, %604
  %607 = or i1 %600, %606
  br i1 %607, label %pregion_for_entry.entry.i.i.6.preheader, label %vector.body98

pregion_for_entry.entry.i.i.6.preheader:          ; preds = %pregion_for_end.i.i.5
  br label %pregion_for_entry.entry.i.i.6

vector.body98:                                    ; preds = %pregion_for_end.i.i.5
  %608 = trunc i64 %mul.i.i.i to i32
  %609 = add i32 %add.i.i, %608
  %610 = add nsw i32 %609, %mul.i.i.6
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds float, float* %7, i64 %611
  %613 = bitcast float* %612 to <8 x float>*
  %wide.load112 = load <8 x float>, <8 x float>* %613, align 4, !tbaa !12, !llvm.access.group !16
  %614 = load float, float* %arrayidx12.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %615 = insertelement <8 x float> undef, float %614, i32 0
  %616 = shufflevector <8 x float> %615, <8 x float> undef, <8 x i32> zeroinitializer
  %617 = add nsw i32 %609, %mul13.i.i
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds float, float* %7, i64 %618
  %620 = bitcast float* %619 to <8 x float>*
  %wide.load113 = load <8 x float>, <8 x float>* %620, align 4, !tbaa !12, !llvm.access.group !16
  %621 = fneg <8 x float> %616
  %622 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %621, <8 x float> %wide.load113, <8 x float> %wide.load112)
  %623 = bitcast float* %612 to <8 x float>*
  store <8 x float> %622, <8 x float>* %623, align 4, !tbaa !12, !llvm.access.group !16
  %624 = trunc i64 %mul.i.i.i to i32
  %625 = or i32 %624, 8
  %626 = add i32 %add.i.i, %625
  %627 = add nsw i32 %626, %mul.i.i.6
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds float, float* %7, i64 %628
  %630 = bitcast float* %629 to <8 x float>*
  %wide.load112.1 = load <8 x float>, <8 x float>* %630, align 4, !tbaa !12, !llvm.access.group !16
  %631 = load float, float* %arrayidx12.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %632 = insertelement <8 x float> undef, float %631, i32 0
  %633 = shufflevector <8 x float> %632, <8 x float> undef, <8 x i32> zeroinitializer
  %634 = add nsw i32 %626, %mul13.i.i
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds float, float* %7, i64 %635
  %637 = bitcast float* %636 to <8 x float>*
  %wide.load113.1 = load <8 x float>, <8 x float>* %637, align 4, !tbaa !12, !llvm.access.group !16
  %638 = fneg <8 x float> %633
  %639 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %638, <8 x float> %wide.load113.1, <8 x float> %wide.load112.1)
  %640 = bitcast float* %629 to <8 x float>*
  store <8 x float> %639, <8 x float>* %640, align 4, !tbaa !12, !llvm.access.group !16
  %641 = trunc i64 %mul.i.i.i to i32
  %642 = or i32 %641, 16
  %643 = add i32 %add.i.i, %642
  %644 = add nsw i32 %643, %mul.i.i.6
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds float, float* %7, i64 %645
  %647 = bitcast float* %646 to <8 x float>*
  %wide.load112.2 = load <8 x float>, <8 x float>* %647, align 4, !tbaa !12, !llvm.access.group !16
  %648 = load float, float* %arrayidx12.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %649 = insertelement <8 x float> undef, float %648, i32 0
  %650 = shufflevector <8 x float> %649, <8 x float> undef, <8 x i32> zeroinitializer
  %651 = add nsw i32 %643, %mul13.i.i
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds float, float* %7, i64 %652
  %654 = bitcast float* %653 to <8 x float>*
  %wide.load113.2 = load <8 x float>, <8 x float>* %654, align 4, !tbaa !12, !llvm.access.group !16
  %655 = fneg <8 x float> %650
  %656 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %655, <8 x float> %wide.load113.2, <8 x float> %wide.load112.2)
  %657 = bitcast float* %646 to <8 x float>*
  store <8 x float> %656, <8 x float>* %657, align 4, !tbaa !12, !llvm.access.group !16
  %658 = trunc i64 %mul.i.i.i to i32
  %659 = or i32 %658, 24
  %660 = add i32 %add.i.i, %659
  %661 = add nsw i32 %660, %mul.i.i.6
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds float, float* %7, i64 %662
  %664 = bitcast float* %663 to <8 x float>*
  %wide.load112.3 = load <8 x float>, <8 x float>* %664, align 4, !tbaa !12, !llvm.access.group !16
  %665 = load float, float* %arrayidx12.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %666 = insertelement <8 x float> undef, float %665, i32 0
  %667 = shufflevector <8 x float> %666, <8 x float> undef, <8 x i32> zeroinitializer
  %668 = add nsw i32 %660, %mul13.i.i
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds float, float* %7, i64 %669
  %671 = bitcast float* %670 to <8 x float>*
  %wide.load113.3 = load <8 x float>, <8 x float>* %671, align 4, !tbaa !12, !llvm.access.group !16
  %672 = fneg <8 x float> %667
  %673 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %672, <8 x float> %wide.load113.3, <8 x float> %wide.load112.3)
  %674 = bitcast float* %663 to <8 x float>*
  store <8 x float> %673, <8 x float>* %674, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.6:                    ; preds = %pregion_for_entry.entry.i.i.6, %pregion_for_entry.entry.i.i.6.preheader
  %_local_id_x.i.0.6 = phi i64 [ %686, %pregion_for_entry.entry.i.i.6 ], [ 0, %pregion_for_entry.entry.i.i.6.preheader ]
  %add1.i.i.i.6 = add nuw nsw i64 %_local_id_x.i.0.6, %mul.i.i.i
  %675 = trunc i64 %add1.i.i.i.6 to i32
  %conv2.i.i.6 = add i32 %add.i.i, %675
  %add8.i.i.6 = add nsw i32 %conv2.i.i.6, %mul.i.i.6
  %idxprom.i.i.6 = sext i32 %add8.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.6
  %676 = load float, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %677 = load float, float* %arrayidx12.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.6 = add nsw i32 %conv2.i.i.6, %mul13.i.i
  %idxprom15.i.i.6 = sext i32 %add14.i.i.6 to i64
  %arrayidx16.i.i.6 = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i.6
  %678 = load float, float* %arrayidx16.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.6 = fneg float %677
  %679 = tail call float @llvm.fmuladd.f32(float %neg.i.i.6, float %678, float %676) #3
  store float %679, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %680 = or i64 %_local_id_x.i.0.6, 1
  %add1.i.i.i.6.1 = add nuw nsw i64 %680, %mul.i.i.i
  %681 = trunc i64 %add1.i.i.i.6.1 to i32
  %conv2.i.i.6.1 = add i32 %add.i.i, %681
  %add8.i.i.6.1 = add nsw i32 %conv2.i.i.6.1, %mul.i.i.6
  %idxprom.i.i.6.1 = sext i32 %add8.i.i.6.1 to i64
  %arrayidx.i.i.6.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.6.1
  %682 = load float, float* %arrayidx.i.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %683 = load float, float* %arrayidx12.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.6.1 = add nsw i32 %conv2.i.i.6.1, %mul13.i.i
  %idxprom15.i.i.6.1 = sext i32 %add14.i.i.6.1 to i64
  %arrayidx16.i.i.6.1 = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i.6.1
  %684 = load float, float* %arrayidx16.i.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.6.1 = fneg float %683
  %685 = tail call float @llvm.fmuladd.f32(float %neg.i.i.6.1, float %684, float %682) #3
  store float %685, float* %arrayidx.i.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %686 = add nuw nsw i64 %_local_id_x.i.0.6, 2
  %exitcond.6.not.1 = icmp eq i64 %686, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.6, !llvm.loop !35

pregion_for_end.i.i.6.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.6
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.body98
  %687 = trunc i64 %mul3.i.i.i to i32
  %688 = or i32 %687, 7
  %conv7.i.i.7 = add i32 %add.i.i, %688
  %mul.i.i.7 = mul nsw i32 %conv7.i.i.7, %15
  %add10.i.i.7 = add nsw i32 %mul.i.i.7, %11
  %idxprom11.i.i.7 = sext i32 %add10.i.i.7 to i64
  %arrayidx12.i.i.7 = getelementptr inbounds float, float* %7, i64 %idxprom11.i.i.7
  %689 = mul i32 %15, %conv7.i.i.7
  %690 = add i32 %11, %689
  %691 = trunc i64 %2 to i32
  %692 = shl i32 %691, 5
  %693 = add i32 %690, %692
  %694 = add i32 %693, 1
  %695 = add i32 %693, 32
  %696 = icmp slt i32 %695, %694
  %697 = add i32 %15, 1
  %698 = mul i32 %11, %697
  %699 = add i32 %698, %692
  %700 = add i32 %699, 1
  %701 = add i32 %699, 32
  %702 = icmp slt i32 %701, %700
  %703 = or i1 %696, %702
  br i1 %703, label %pregion_for_entry.entry.i.i.7.preheader, label %vector.body116

pregion_for_entry.entry.i.i.7.preheader:          ; preds = %pregion_for_end.i.i.6
  br label %pregion_for_entry.entry.i.i.7

vector.body116:                                   ; preds = %pregion_for_end.i.i.6
  %704 = trunc i64 %mul.i.i.i to i32
  %705 = add i32 %add.i.i, %704
  %706 = add nsw i32 %705, %mul.i.i.7
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds float, float* %7, i64 %707
  %709 = bitcast float* %708 to <8 x float>*
  %wide.load130 = load <8 x float>, <8 x float>* %709, align 4, !tbaa !12, !llvm.access.group !16
  %710 = load float, float* %arrayidx12.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %711 = insertelement <8 x float> undef, float %710, i32 0
  %712 = shufflevector <8 x float> %711, <8 x float> undef, <8 x i32> zeroinitializer
  %713 = add nsw i32 %705, %mul13.i.i
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds float, float* %7, i64 %714
  %716 = bitcast float* %715 to <8 x float>*
  %wide.load131 = load <8 x float>, <8 x float>* %716, align 4, !tbaa !12, !llvm.access.group !16
  %717 = fneg <8 x float> %712
  %718 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %717, <8 x float> %wide.load131, <8 x float> %wide.load130)
  %719 = bitcast float* %708 to <8 x float>*
  store <8 x float> %718, <8 x float>* %719, align 4, !tbaa !12, !llvm.access.group !16
  %720 = trunc i64 %mul.i.i.i to i32
  %721 = or i32 %720, 8
  %722 = add i32 %add.i.i, %721
  %723 = add nsw i32 %722, %mul.i.i.7
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds float, float* %7, i64 %724
  %726 = bitcast float* %725 to <8 x float>*
  %wide.load130.1 = load <8 x float>, <8 x float>* %726, align 4, !tbaa !12, !llvm.access.group !16
  %727 = load float, float* %arrayidx12.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %728 = insertelement <8 x float> undef, float %727, i32 0
  %729 = shufflevector <8 x float> %728, <8 x float> undef, <8 x i32> zeroinitializer
  %730 = add nsw i32 %722, %mul13.i.i
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds float, float* %7, i64 %731
  %733 = bitcast float* %732 to <8 x float>*
  %wide.load131.1 = load <8 x float>, <8 x float>* %733, align 4, !tbaa !12, !llvm.access.group !16
  %734 = fneg <8 x float> %729
  %735 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %734, <8 x float> %wide.load131.1, <8 x float> %wide.load130.1)
  %736 = bitcast float* %725 to <8 x float>*
  store <8 x float> %735, <8 x float>* %736, align 4, !tbaa !12, !llvm.access.group !16
  %737 = trunc i64 %mul.i.i.i to i32
  %738 = or i32 %737, 16
  %739 = add i32 %add.i.i, %738
  %740 = add nsw i32 %739, %mul.i.i.7
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds float, float* %7, i64 %741
  %743 = bitcast float* %742 to <8 x float>*
  %wide.load130.2 = load <8 x float>, <8 x float>* %743, align 4, !tbaa !12, !llvm.access.group !16
  %744 = load float, float* %arrayidx12.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %745 = insertelement <8 x float> undef, float %744, i32 0
  %746 = shufflevector <8 x float> %745, <8 x float> undef, <8 x i32> zeroinitializer
  %747 = add nsw i32 %739, %mul13.i.i
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds float, float* %7, i64 %748
  %750 = bitcast float* %749 to <8 x float>*
  %wide.load131.2 = load <8 x float>, <8 x float>* %750, align 4, !tbaa !12, !llvm.access.group !16
  %751 = fneg <8 x float> %746
  %752 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %751, <8 x float> %wide.load131.2, <8 x float> %wide.load130.2)
  %753 = bitcast float* %742 to <8 x float>*
  store <8 x float> %752, <8 x float>* %753, align 4, !tbaa !12, !llvm.access.group !16
  %754 = trunc i64 %mul.i.i.i to i32
  %755 = or i32 %754, 24
  %756 = add i32 %add.i.i, %755
  %757 = add nsw i32 %756, %mul.i.i.7
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds float, float* %7, i64 %758
  %760 = bitcast float* %759 to <8 x float>*
  %wide.load130.3 = load <8 x float>, <8 x float>* %760, align 4, !tbaa !12, !llvm.access.group !16
  %761 = load float, float* %arrayidx12.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %762 = insertelement <8 x float> undef, float %761, i32 0
  %763 = shufflevector <8 x float> %762, <8 x float> undef, <8 x i32> zeroinitializer
  %764 = add nsw i32 %756, %mul13.i.i
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds float, float* %7, i64 %765
  %767 = bitcast float* %766 to <8 x float>*
  %wide.load131.3 = load <8 x float>, <8 x float>* %767, align 4, !tbaa !12, !llvm.access.group !16
  %768 = fneg <8 x float> %763
  %769 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %768, <8 x float> %wide.load131.3, <8 x float> %wide.load130.3)
  %770 = bitcast float* %759 to <8 x float>*
  store <8 x float> %769, <8 x float>* %770, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.7

pregion_for_entry.entry.i.i.7:                    ; preds = %pregion_for_entry.entry.i.i.7, %pregion_for_entry.entry.i.i.7.preheader
  %_local_id_x.i.0.7 = phi i64 [ %782, %pregion_for_entry.entry.i.i.7 ], [ 0, %pregion_for_entry.entry.i.i.7.preheader ]
  %add1.i.i.i.7 = add nuw nsw i64 %_local_id_x.i.0.7, %mul.i.i.i
  %771 = trunc i64 %add1.i.i.i.7 to i32
  %conv2.i.i.7 = add i32 %add.i.i, %771
  %add8.i.i.7 = add nsw i32 %conv2.i.i.7, %mul.i.i.7
  %idxprom.i.i.7 = sext i32 %add8.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.7
  %772 = load float, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %773 = load float, float* %arrayidx12.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.7 = add nsw i32 %conv2.i.i.7, %mul13.i.i
  %idxprom15.i.i.7 = sext i32 %add14.i.i.7 to i64
  %arrayidx16.i.i.7 = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i.7
  %774 = load float, float* %arrayidx16.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.7 = fneg float %773
  %775 = tail call float @llvm.fmuladd.f32(float %neg.i.i.7, float %774, float %772) #3
  store float %775, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %776 = or i64 %_local_id_x.i.0.7, 1
  %add1.i.i.i.7.1 = add nuw nsw i64 %776, %mul.i.i.i
  %777 = trunc i64 %add1.i.i.i.7.1 to i32
  %conv2.i.i.7.1 = add i32 %add.i.i, %777
  %add8.i.i.7.1 = add nsw i32 %conv2.i.i.7.1, %mul.i.i.7
  %idxprom.i.i.7.1 = sext i32 %add8.i.i.7.1 to i64
  %arrayidx.i.i.7.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.7.1
  %778 = load float, float* %arrayidx.i.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %779 = load float, float* %arrayidx12.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.7.1 = add nsw i32 %conv2.i.i.7.1, %mul13.i.i
  %idxprom15.i.i.7.1 = sext i32 %add14.i.i.7.1 to i64
  %arrayidx16.i.i.7.1 = getelementptr inbounds float, float* %7, i64 %idxprom15.i.i.7.1
  %780 = load float, float* %arrayidx16.i.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.7.1 = fneg float %779
  %781 = tail call float @llvm.fmuladd.f32(float %neg.i.i.7.1, float %780, float %778) #3
  store float %781, float* %arrayidx.i.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %782 = add nuw nsw i64 %_local_id_x.i.0.7, 2
  %exitcond.7.not.1 = icmp eq i64 %782, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.i.7.loopexit, label %pregion_for_entry.entry.i.i.7, !llvm.loop !36

pregion_for_end.i.i.7.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.7
  br label %pregion_for_end.i.i.7

pregion_for_end.i.i.7:                            ; preds = %pregion_for_end.i.i.7.loopexit, %vector.body116
  ret void
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_lu_kernel2_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
pregion_for_entry.pregion_for_init.i.i:
  %5 = bitcast i8** %0 to float**
  %6 = load float*, float** %5, align 8
  %7 = getelementptr i8*, i8** %0, i64 1
  %8 = bitcast i8** %7 to i32**
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr i8*, i8** %0, i64 2
  %12 = bitcast i8** %11 to i32**
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %mul.i.i.i = shl i64 %2, 5
  %add.i.i = add nsw i32 %10, 1
  %mul3.i.i.i = shl i64 %3, 3
  %mul13.i.i = mul nsw i32 %14, %10
  %15 = trunc i64 %mul3.i.i.i to i32
  %conv7.i.i = add i32 %add.i.i, %15
  %mul.i.i = mul nsw i32 %conv7.i.i, %14
  %add10.i.i = add nsw i32 %mul.i.i, %10
  %idxprom11.i.i = sext i32 %add10.i.i to i64
  %arrayidx12.i.i = getelementptr inbounds float, float* %6, i64 %idxprom11.i.i
  %16 = mul i32 %14, %conv7.i.i
  %17 = add i32 %10, %16
  %18 = trunc i64 %2 to i32
  %19 = shl i32 %18, 5
  %20 = add i32 %17, %19
  %21 = add i32 %20, 1
  %22 = add i32 %20, 32
  %23 = icmp slt i32 %22, %21
  %24 = add i32 %14, 1
  %25 = mul i32 %10, %24
  %26 = add i32 %25, %19
  %27 = add i32 %26, 1
  %28 = add i32 %26, 32
  %29 = icmp slt i32 %28, %27
  %30 = or i1 %23, %29
  br i1 %30, label %pregion_for_entry.entry.i.i.preheader, label %vector.body

pregion_for_entry.entry.i.i.preheader:            ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %pregion_for_entry.entry.i.i

vector.body:                                      ; preds = %pregion_for_entry.pregion_for_init.i.i
  %31 = trunc i64 %mul.i.i.i to i32
  %32 = add i32 %add.i.i, %31
  %33 = add nsw i32 %32, %mul.i.i
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %6, i64 %34
  %36 = bitcast float* %35 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %36, align 4, !tbaa !12, !llvm.access.group !16
  %37 = load float, float* %arrayidx12.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %38 = insertelement <8 x float> undef, float %37, i32 0
  %39 = shufflevector <8 x float> %38, <8 x float> undef, <8 x i32> zeroinitializer
  %40 = add nsw i32 %32, %mul13.i.i
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %6, i64 %41
  %43 = bitcast float* %42 to <8 x float>*
  %wide.load5 = load <8 x float>, <8 x float>* %43, align 4, !tbaa !12, !llvm.access.group !16
  %44 = fneg <8 x float> %39
  %45 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %44, <8 x float> %wide.load5, <8 x float> %wide.load)
  %46 = bitcast float* %35 to <8 x float>*
  store <8 x float> %45, <8 x float>* %46, align 4, !tbaa !12, !llvm.access.group !16
  %47 = trunc i64 %mul.i.i.i to i32
  %48 = or i32 %47, 8
  %49 = add i32 %add.i.i, %48
  %50 = add nsw i32 %49, %mul.i.i
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %6, i64 %51
  %53 = bitcast float* %52 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %53, align 4, !tbaa !12, !llvm.access.group !16
  %54 = load float, float* %arrayidx12.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %55 = insertelement <8 x float> undef, float %54, i32 0
  %56 = shufflevector <8 x float> %55, <8 x float> undef, <8 x i32> zeroinitializer
  %57 = add nsw i32 %49, %mul13.i.i
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %6, i64 %58
  %60 = bitcast float* %59 to <8 x float>*
  %wide.load5.1 = load <8 x float>, <8 x float>* %60, align 4, !tbaa !12, !llvm.access.group !16
  %61 = fneg <8 x float> %56
  %62 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %61, <8 x float> %wide.load5.1, <8 x float> %wide.load.1)
  %63 = bitcast float* %52 to <8 x float>*
  store <8 x float> %62, <8 x float>* %63, align 4, !tbaa !12, !llvm.access.group !16
  %64 = trunc i64 %mul.i.i.i to i32
  %65 = or i32 %64, 16
  %66 = add i32 %add.i.i, %65
  %67 = add nsw i32 %66, %mul.i.i
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %6, i64 %68
  %70 = bitcast float* %69 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %70, align 4, !tbaa !12, !llvm.access.group !16
  %71 = load float, float* %arrayidx12.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %72 = insertelement <8 x float> undef, float %71, i32 0
  %73 = shufflevector <8 x float> %72, <8 x float> undef, <8 x i32> zeroinitializer
  %74 = add nsw i32 %66, %mul13.i.i
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %6, i64 %75
  %77 = bitcast float* %76 to <8 x float>*
  %wide.load5.2 = load <8 x float>, <8 x float>* %77, align 4, !tbaa !12, !llvm.access.group !16
  %78 = fneg <8 x float> %73
  %79 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %78, <8 x float> %wide.load5.2, <8 x float> %wide.load.2)
  %80 = bitcast float* %69 to <8 x float>*
  store <8 x float> %79, <8 x float>* %80, align 4, !tbaa !12, !llvm.access.group !16
  %81 = trunc i64 %mul.i.i.i to i32
  %82 = or i32 %81, 24
  %83 = add i32 %add.i.i, %82
  %84 = add nsw i32 %83, %mul.i.i
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %6, i64 %85
  %87 = bitcast float* %86 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %87, align 4, !tbaa !12, !llvm.access.group !16
  %88 = load float, float* %arrayidx12.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %89 = insertelement <8 x float> undef, float %88, i32 0
  %90 = shufflevector <8 x float> %89, <8 x float> undef, <8 x i32> zeroinitializer
  %91 = add nsw i32 %83, %mul13.i.i
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %6, i64 %92
  %94 = bitcast float* %93 to <8 x float>*
  %wide.load5.3 = load <8 x float>, <8 x float>* %94, align 4, !tbaa !12, !llvm.access.group !16
  %95 = fneg <8 x float> %90
  %96 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %95, <8 x float> %wide.load5.3, <8 x float> %wide.load.3)
  %97 = bitcast float* %86 to <8 x float>*
  store <8 x float> %96, <8 x float>* %97, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i

pregion_for_end.i.i.loopexit:                     ; preds = %pregion_for_entry.entry.i.i
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.body
  %98 = trunc i64 %mul3.i.i.i to i32
  %99 = or i32 %98, 1
  %conv7.i.i.1 = add i32 %add.i.i, %99
  %mul.i.i.1 = mul nsw i32 %conv7.i.i.1, %14
  %add10.i.i.1 = add nsw i32 %mul.i.i.1, %10
  %idxprom11.i.i.1 = sext i32 %add10.i.i.1 to i64
  %arrayidx12.i.i.1 = getelementptr inbounds float, float* %6, i64 %idxprom11.i.i.1
  %100 = mul i32 %14, %conv7.i.i.1
  %101 = add i32 %10, %100
  %102 = trunc i64 %2 to i32
  %103 = shl i32 %102, 5
  %104 = add i32 %101, %103
  %105 = add i32 %104, 1
  %106 = add i32 %104, 32
  %107 = icmp slt i32 %106, %105
  %108 = add i32 %14, 1
  %109 = mul i32 %10, %108
  %110 = add i32 %109, %103
  %111 = add i32 %110, 1
  %112 = add i32 %110, 32
  %113 = icmp slt i32 %112, %111
  %114 = or i1 %107, %113
  br i1 %114, label %pregion_for_entry.entry.i.i.1.preheader, label %vector.body8

pregion_for_entry.entry.i.i.1.preheader:          ; preds = %pregion_for_end.i.i
  br label %pregion_for_entry.entry.i.i.1

vector.body8:                                     ; preds = %pregion_for_end.i.i
  %115 = trunc i64 %mul.i.i.i to i32
  %116 = add i32 %add.i.i, %115
  %117 = add nsw i32 %116, %mul.i.i.1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %6, i64 %118
  %120 = bitcast float* %119 to <8 x float>*
  %wide.load22 = load <8 x float>, <8 x float>* %120, align 4, !tbaa !12, !llvm.access.group !16
  %121 = load float, float* %arrayidx12.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %122 = insertelement <8 x float> undef, float %121, i32 0
  %123 = shufflevector <8 x float> %122, <8 x float> undef, <8 x i32> zeroinitializer
  %124 = add nsw i32 %116, %mul13.i.i
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %6, i64 %125
  %127 = bitcast float* %126 to <8 x float>*
  %wide.load23 = load <8 x float>, <8 x float>* %127, align 4, !tbaa !12, !llvm.access.group !16
  %128 = fneg <8 x float> %123
  %129 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %128, <8 x float> %wide.load23, <8 x float> %wide.load22)
  %130 = bitcast float* %119 to <8 x float>*
  store <8 x float> %129, <8 x float>* %130, align 4, !tbaa !12, !llvm.access.group !16
  %131 = trunc i64 %mul.i.i.i to i32
  %132 = or i32 %131, 8
  %133 = add i32 %add.i.i, %132
  %134 = add nsw i32 %133, %mul.i.i.1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %6, i64 %135
  %137 = bitcast float* %136 to <8 x float>*
  %wide.load22.1 = load <8 x float>, <8 x float>* %137, align 4, !tbaa !12, !llvm.access.group !16
  %138 = load float, float* %arrayidx12.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %139 = insertelement <8 x float> undef, float %138, i32 0
  %140 = shufflevector <8 x float> %139, <8 x float> undef, <8 x i32> zeroinitializer
  %141 = add nsw i32 %133, %mul13.i.i
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %6, i64 %142
  %144 = bitcast float* %143 to <8 x float>*
  %wide.load23.1 = load <8 x float>, <8 x float>* %144, align 4, !tbaa !12, !llvm.access.group !16
  %145 = fneg <8 x float> %140
  %146 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %145, <8 x float> %wide.load23.1, <8 x float> %wide.load22.1)
  %147 = bitcast float* %136 to <8 x float>*
  store <8 x float> %146, <8 x float>* %147, align 4, !tbaa !12, !llvm.access.group !16
  %148 = trunc i64 %mul.i.i.i to i32
  %149 = or i32 %148, 16
  %150 = add i32 %add.i.i, %149
  %151 = add nsw i32 %150, %mul.i.i.1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %6, i64 %152
  %154 = bitcast float* %153 to <8 x float>*
  %wide.load22.2 = load <8 x float>, <8 x float>* %154, align 4, !tbaa !12, !llvm.access.group !16
  %155 = load float, float* %arrayidx12.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %156 = insertelement <8 x float> undef, float %155, i32 0
  %157 = shufflevector <8 x float> %156, <8 x float> undef, <8 x i32> zeroinitializer
  %158 = add nsw i32 %150, %mul13.i.i
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %6, i64 %159
  %161 = bitcast float* %160 to <8 x float>*
  %wide.load23.2 = load <8 x float>, <8 x float>* %161, align 4, !tbaa !12, !llvm.access.group !16
  %162 = fneg <8 x float> %157
  %163 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %162, <8 x float> %wide.load23.2, <8 x float> %wide.load22.2)
  %164 = bitcast float* %153 to <8 x float>*
  store <8 x float> %163, <8 x float>* %164, align 4, !tbaa !12, !llvm.access.group !16
  %165 = trunc i64 %mul.i.i.i to i32
  %166 = or i32 %165, 24
  %167 = add i32 %add.i.i, %166
  %168 = add nsw i32 %167, %mul.i.i.1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %6, i64 %169
  %171 = bitcast float* %170 to <8 x float>*
  %wide.load22.3 = load <8 x float>, <8 x float>* %171, align 4, !tbaa !12, !llvm.access.group !16
  %172 = load float, float* %arrayidx12.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %173 = insertelement <8 x float> undef, float %172, i32 0
  %174 = shufflevector <8 x float> %173, <8 x float> undef, <8 x i32> zeroinitializer
  %175 = add nsw i32 %167, %mul13.i.i
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %6, i64 %176
  %178 = bitcast float* %177 to <8 x float>*
  %wide.load23.3 = load <8 x float>, <8 x float>* %178, align 4, !tbaa !12, !llvm.access.group !16
  %179 = fneg <8 x float> %174
  %180 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %179, <8 x float> %wide.load23.3, <8 x float> %wide.load22.3)
  %181 = bitcast float* %170 to <8 x float>*
  store <8 x float> %180, <8 x float>* %181, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.1

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %193, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %182 = trunc i64 %add1.i.i.i to i32
  %conv2.i.i = add i32 %add.i.i, %182
  %add8.i.i = add nsw i32 %conv2.i.i, %mul.i.i
  %idxprom.i.i = sext i32 %add8.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %6, i64 %idxprom.i.i
  %183 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %184 = load float, float* %arrayidx12.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i = add nsw i32 %conv2.i.i, %mul13.i.i
  %idxprom15.i.i = sext i32 %add14.i.i to i64
  %arrayidx16.i.i = getelementptr inbounds float, float* %6, i64 %idxprom15.i.i
  %185 = load float, float* %arrayidx16.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i = fneg float %184
  %186 = tail call float @llvm.fmuladd.f32(float %neg.i.i, float %185, float %183) #3
  store float %186, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %187 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1141 = add nuw nsw i64 %187, %mul.i.i.i
  %188 = trunc i64 %add1.i.i.i.1141 to i32
  %conv2.i.i.1142 = add i32 %add.i.i, %188
  %add8.i.i.1143 = add nsw i32 %conv2.i.i.1142, %mul.i.i
  %idxprom.i.i.1144 = sext i32 %add8.i.i.1143 to i64
  %arrayidx.i.i.1145 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.1144
  %189 = load float, float* %arrayidx.i.i.1145, align 4, !tbaa !12, !llvm.access.group !16
  %190 = load float, float* %arrayidx12.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.1146 = add nsw i32 %conv2.i.i.1142, %mul13.i.i
  %idxprom15.i.i.1147 = sext i32 %add14.i.i.1146 to i64
  %arrayidx16.i.i.1148 = getelementptr inbounds float, float* %6, i64 %idxprom15.i.i.1147
  %191 = load float, float* %arrayidx16.i.i.1148, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.1149 = fneg float %190
  %192 = tail call float @llvm.fmuladd.f32(float %neg.i.i.1149, float %191, float %189) #3
  store float %192, float* %arrayidx.i.i.1145, align 4, !tbaa !12, !llvm.access.group !16
  %193 = add nuw nsw i64 %_local_id_x.i.0, 2
  %exitcond.not.1 = icmp eq i64 %193, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i, !llvm.loop !37

pregion_for_entry.entry.i.i.1:                    ; preds = %pregion_for_entry.entry.i.i.1, %pregion_for_entry.entry.i.i.1.preheader
  %_local_id_x.i.0.1 = phi i64 [ %205, %pregion_for_entry.entry.i.i.1 ], [ 0, %pregion_for_entry.entry.i.i.1.preheader ]
  %add1.i.i.i.1 = add nuw nsw i64 %_local_id_x.i.0.1, %mul.i.i.i
  %194 = trunc i64 %add1.i.i.i.1 to i32
  %conv2.i.i.1 = add i32 %add.i.i, %194
  %add8.i.i.1 = add nsw i32 %conv2.i.i.1, %mul.i.i.1
  %idxprom.i.i.1 = sext i32 %add8.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.1
  %195 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %196 = load float, float* %arrayidx12.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.1 = add nsw i32 %conv2.i.i.1, %mul13.i.i
  %idxprom15.i.i.1 = sext i32 %add14.i.i.1 to i64
  %arrayidx16.i.i.1 = getelementptr inbounds float, float* %6, i64 %idxprom15.i.i.1
  %197 = load float, float* %arrayidx16.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.1 = fneg float %196
  %198 = tail call float @llvm.fmuladd.f32(float %neg.i.i.1, float %197, float %195) #3
  store float %198, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %199 = or i64 %_local_id_x.i.0.1, 1
  %add1.i.i.i.1.1 = add nuw nsw i64 %199, %mul.i.i.i
  %200 = trunc i64 %add1.i.i.i.1.1 to i32
  %conv2.i.i.1.1 = add i32 %add.i.i, %200
  %add8.i.i.1.1 = add nsw i32 %conv2.i.i.1.1, %mul.i.i.1
  %idxprom.i.i.1.1 = sext i32 %add8.i.i.1.1 to i64
  %arrayidx.i.i.1.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.1.1
  %201 = load float, float* %arrayidx.i.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %202 = load float, float* %arrayidx12.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.1.1 = add nsw i32 %conv2.i.i.1.1, %mul13.i.i
  %idxprom15.i.i.1.1 = sext i32 %add14.i.i.1.1 to i64
  %arrayidx16.i.i.1.1 = getelementptr inbounds float, float* %6, i64 %idxprom15.i.i.1.1
  %203 = load float, float* %arrayidx16.i.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.1.1 = fneg float %202
  %204 = tail call float @llvm.fmuladd.f32(float %neg.i.i.1.1, float %203, float %201) #3
  store float %204, float* %arrayidx.i.i.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %205 = add nuw nsw i64 %_local_id_x.i.0.1, 2
  %exitcond.1.not.1 = icmp eq i64 %205, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.1, !llvm.loop !38

pregion_for_end.i.i.1.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.1
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.body8
  %206 = trunc i64 %mul3.i.i.i to i32
  %207 = or i32 %206, 2
  %conv7.i.i.2 = add i32 %add.i.i, %207
  %mul.i.i.2 = mul nsw i32 %conv7.i.i.2, %14
  %add10.i.i.2 = add nsw i32 %mul.i.i.2, %10
  %idxprom11.i.i.2 = sext i32 %add10.i.i.2 to i64
  %arrayidx12.i.i.2 = getelementptr inbounds float, float* %6, i64 %idxprom11.i.i.2
  %208 = mul i32 %14, %conv7.i.i.2
  %209 = add i32 %10, %208
  %210 = trunc i64 %2 to i32
  %211 = shl i32 %210, 5
  %212 = add i32 %209, %211
  %213 = add i32 %212, 1
  %214 = add i32 %212, 32
  %215 = icmp slt i32 %214, %213
  %216 = add i32 %14, 1
  %217 = mul i32 %10, %216
  %218 = add i32 %217, %211
  %219 = add i32 %218, 1
  %220 = add i32 %218, 32
  %221 = icmp slt i32 %220, %219
  %222 = or i1 %215, %221
  br i1 %222, label %pregion_for_entry.entry.i.i.2.preheader, label %vector.body26

pregion_for_entry.entry.i.i.2.preheader:          ; preds = %pregion_for_end.i.i.1
  br label %pregion_for_entry.entry.i.i.2

vector.body26:                                    ; preds = %pregion_for_end.i.i.1
  %223 = trunc i64 %mul.i.i.i to i32
  %224 = add i32 %add.i.i, %223
  %225 = add nsw i32 %224, %mul.i.i.2
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds float, float* %6, i64 %226
  %228 = bitcast float* %227 to <8 x float>*
  %wide.load40 = load <8 x float>, <8 x float>* %228, align 4, !tbaa !12, !llvm.access.group !16
  %229 = load float, float* %arrayidx12.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %230 = insertelement <8 x float> undef, float %229, i32 0
  %231 = shufflevector <8 x float> %230, <8 x float> undef, <8 x i32> zeroinitializer
  %232 = add nsw i32 %224, %mul13.i.i
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %6, i64 %233
  %235 = bitcast float* %234 to <8 x float>*
  %wide.load41 = load <8 x float>, <8 x float>* %235, align 4, !tbaa !12, !llvm.access.group !16
  %236 = fneg <8 x float> %231
  %237 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %236, <8 x float> %wide.load41, <8 x float> %wide.load40)
  %238 = bitcast float* %227 to <8 x float>*
  store <8 x float> %237, <8 x float>* %238, align 4, !tbaa !12, !llvm.access.group !16
  %239 = trunc i64 %mul.i.i.i to i32
  %240 = or i32 %239, 8
  %241 = add i32 %add.i.i, %240
  %242 = add nsw i32 %241, %mul.i.i.2
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %6, i64 %243
  %245 = bitcast float* %244 to <8 x float>*
  %wide.load40.1 = load <8 x float>, <8 x float>* %245, align 4, !tbaa !12, !llvm.access.group !16
  %246 = load float, float* %arrayidx12.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %247 = insertelement <8 x float> undef, float %246, i32 0
  %248 = shufflevector <8 x float> %247, <8 x float> undef, <8 x i32> zeroinitializer
  %249 = add nsw i32 %241, %mul13.i.i
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %6, i64 %250
  %252 = bitcast float* %251 to <8 x float>*
  %wide.load41.1 = load <8 x float>, <8 x float>* %252, align 4, !tbaa !12, !llvm.access.group !16
  %253 = fneg <8 x float> %248
  %254 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %253, <8 x float> %wide.load41.1, <8 x float> %wide.load40.1)
  %255 = bitcast float* %244 to <8 x float>*
  store <8 x float> %254, <8 x float>* %255, align 4, !tbaa !12, !llvm.access.group !16
  %256 = trunc i64 %mul.i.i.i to i32
  %257 = or i32 %256, 16
  %258 = add i32 %add.i.i, %257
  %259 = add nsw i32 %258, %mul.i.i.2
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float* %6, i64 %260
  %262 = bitcast float* %261 to <8 x float>*
  %wide.load40.2 = load <8 x float>, <8 x float>* %262, align 4, !tbaa !12, !llvm.access.group !16
  %263 = load float, float* %arrayidx12.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %264 = insertelement <8 x float> undef, float %263, i32 0
  %265 = shufflevector <8 x float> %264, <8 x float> undef, <8 x i32> zeroinitializer
  %266 = add nsw i32 %258, %mul13.i.i
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %6, i64 %267
  %269 = bitcast float* %268 to <8 x float>*
  %wide.load41.2 = load <8 x float>, <8 x float>* %269, align 4, !tbaa !12, !llvm.access.group !16
  %270 = fneg <8 x float> %265
  %271 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %270, <8 x float> %wide.load41.2, <8 x float> %wide.load40.2)
  %272 = bitcast float* %261 to <8 x float>*
  store <8 x float> %271, <8 x float>* %272, align 4, !tbaa !12, !llvm.access.group !16
  %273 = trunc i64 %mul.i.i.i to i32
  %274 = or i32 %273, 24
  %275 = add i32 %add.i.i, %274
  %276 = add nsw i32 %275, %mul.i.i.2
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds float, float* %6, i64 %277
  %279 = bitcast float* %278 to <8 x float>*
  %wide.load40.3 = load <8 x float>, <8 x float>* %279, align 4, !tbaa !12, !llvm.access.group !16
  %280 = load float, float* %arrayidx12.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %281 = insertelement <8 x float> undef, float %280, i32 0
  %282 = shufflevector <8 x float> %281, <8 x float> undef, <8 x i32> zeroinitializer
  %283 = add nsw i32 %275, %mul13.i.i
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds float, float* %6, i64 %284
  %286 = bitcast float* %285 to <8 x float>*
  %wide.load41.3 = load <8 x float>, <8 x float>* %286, align 4, !tbaa !12, !llvm.access.group !16
  %287 = fneg <8 x float> %282
  %288 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %287, <8 x float> %wide.load41.3, <8 x float> %wide.load40.3)
  %289 = bitcast float* %278 to <8 x float>*
  store <8 x float> %288, <8 x float>* %289, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.2:                    ; preds = %pregion_for_entry.entry.i.i.2, %pregion_for_entry.entry.i.i.2.preheader
  %_local_id_x.i.0.2 = phi i64 [ %301, %pregion_for_entry.entry.i.i.2 ], [ 0, %pregion_for_entry.entry.i.i.2.preheader ]
  %add1.i.i.i.2 = add nuw nsw i64 %_local_id_x.i.0.2, %mul.i.i.i
  %290 = trunc i64 %add1.i.i.i.2 to i32
  %conv2.i.i.2 = add i32 %add.i.i, %290
  %add8.i.i.2 = add nsw i32 %conv2.i.i.2, %mul.i.i.2
  %idxprom.i.i.2 = sext i32 %add8.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.2
  %291 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %292 = load float, float* %arrayidx12.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.2 = add nsw i32 %conv2.i.i.2, %mul13.i.i
  %idxprom15.i.i.2 = sext i32 %add14.i.i.2 to i64
  %arrayidx16.i.i.2 = getelementptr inbounds float, float* %6, i64 %idxprom15.i.i.2
  %293 = load float, float* %arrayidx16.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.2 = fneg float %292
  %294 = tail call float @llvm.fmuladd.f32(float %neg.i.i.2, float %293, float %291) #3
  store float %294, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %295 = or i64 %_local_id_x.i.0.2, 1
  %add1.i.i.i.2.1 = add nuw nsw i64 %295, %mul.i.i.i
  %296 = trunc i64 %add1.i.i.i.2.1 to i32
  %conv2.i.i.2.1 = add i32 %add.i.i, %296
  %add8.i.i.2.1 = add nsw i32 %conv2.i.i.2.1, %mul.i.i.2
  %idxprom.i.i.2.1 = sext i32 %add8.i.i.2.1 to i64
  %arrayidx.i.i.2.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.2.1
  %297 = load float, float* %arrayidx.i.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %298 = load float, float* %arrayidx12.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.2.1 = add nsw i32 %conv2.i.i.2.1, %mul13.i.i
  %idxprom15.i.i.2.1 = sext i32 %add14.i.i.2.1 to i64
  %arrayidx16.i.i.2.1 = getelementptr inbounds float, float* %6, i64 %idxprom15.i.i.2.1
  %299 = load float, float* %arrayidx16.i.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.2.1 = fneg float %298
  %300 = tail call float @llvm.fmuladd.f32(float %neg.i.i.2.1, float %299, float %297) #3
  store float %300, float* %arrayidx.i.i.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %301 = add nuw nsw i64 %_local_id_x.i.0.2, 2
  %exitcond.2.not.1 = icmp eq i64 %301, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.2, !llvm.loop !39

pregion_for_end.i.i.2.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.2
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.body26
  %302 = trunc i64 %mul3.i.i.i to i32
  %303 = or i32 %302, 3
  %conv7.i.i.3 = add i32 %add.i.i, %303
  %mul.i.i.3 = mul nsw i32 %conv7.i.i.3, %14
  %add10.i.i.3 = add nsw i32 %mul.i.i.3, %10
  %idxprom11.i.i.3 = sext i32 %add10.i.i.3 to i64
  %arrayidx12.i.i.3 = getelementptr inbounds float, float* %6, i64 %idxprom11.i.i.3
  %304 = mul i32 %14, %conv7.i.i.3
  %305 = add i32 %10, %304
  %306 = trunc i64 %2 to i32
  %307 = shl i32 %306, 5
  %308 = add i32 %305, %307
  %309 = add i32 %308, 1
  %310 = add i32 %308, 32
  %311 = icmp slt i32 %310, %309
  %312 = add i32 %14, 1
  %313 = mul i32 %10, %312
  %314 = add i32 %313, %307
  %315 = add i32 %314, 1
  %316 = add i32 %314, 32
  %317 = icmp slt i32 %316, %315
  %318 = or i1 %311, %317
  br i1 %318, label %pregion_for_entry.entry.i.i.3.preheader, label %vector.body44

pregion_for_entry.entry.i.i.3.preheader:          ; preds = %pregion_for_end.i.i.2
  br label %pregion_for_entry.entry.i.i.3

vector.body44:                                    ; preds = %pregion_for_end.i.i.2
  %319 = trunc i64 %mul.i.i.i to i32
  %320 = add i32 %add.i.i, %319
  %321 = add nsw i32 %320, %mul.i.i.3
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds float, float* %6, i64 %322
  %324 = bitcast float* %323 to <8 x float>*
  %wide.load58 = load <8 x float>, <8 x float>* %324, align 4, !tbaa !12, !llvm.access.group !16
  %325 = load float, float* %arrayidx12.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %326 = insertelement <8 x float> undef, float %325, i32 0
  %327 = shufflevector <8 x float> %326, <8 x float> undef, <8 x i32> zeroinitializer
  %328 = add nsw i32 %320, %mul13.i.i
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds float, float* %6, i64 %329
  %331 = bitcast float* %330 to <8 x float>*
  %wide.load59 = load <8 x float>, <8 x float>* %331, align 4, !tbaa !12, !llvm.access.group !16
  %332 = fneg <8 x float> %327
  %333 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %332, <8 x float> %wide.load59, <8 x float> %wide.load58)
  %334 = bitcast float* %323 to <8 x float>*
  store <8 x float> %333, <8 x float>* %334, align 4, !tbaa !12, !llvm.access.group !16
  %335 = trunc i64 %mul.i.i.i to i32
  %336 = or i32 %335, 8
  %337 = add i32 %add.i.i, %336
  %338 = add nsw i32 %337, %mul.i.i.3
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds float, float* %6, i64 %339
  %341 = bitcast float* %340 to <8 x float>*
  %wide.load58.1 = load <8 x float>, <8 x float>* %341, align 4, !tbaa !12, !llvm.access.group !16
  %342 = load float, float* %arrayidx12.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %343 = insertelement <8 x float> undef, float %342, i32 0
  %344 = shufflevector <8 x float> %343, <8 x float> undef, <8 x i32> zeroinitializer
  %345 = add nsw i32 %337, %mul13.i.i
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds float, float* %6, i64 %346
  %348 = bitcast float* %347 to <8 x float>*
  %wide.load59.1 = load <8 x float>, <8 x float>* %348, align 4, !tbaa !12, !llvm.access.group !16
  %349 = fneg <8 x float> %344
  %350 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %349, <8 x float> %wide.load59.1, <8 x float> %wide.load58.1)
  %351 = bitcast float* %340 to <8 x float>*
  store <8 x float> %350, <8 x float>* %351, align 4, !tbaa !12, !llvm.access.group !16
  %352 = trunc i64 %mul.i.i.i to i32
  %353 = or i32 %352, 16
  %354 = add i32 %add.i.i, %353
  %355 = add nsw i32 %354, %mul.i.i.3
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds float, float* %6, i64 %356
  %358 = bitcast float* %357 to <8 x float>*
  %wide.load58.2 = load <8 x float>, <8 x float>* %358, align 4, !tbaa !12, !llvm.access.group !16
  %359 = load float, float* %arrayidx12.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %360 = insertelement <8 x float> undef, float %359, i32 0
  %361 = shufflevector <8 x float> %360, <8 x float> undef, <8 x i32> zeroinitializer
  %362 = add nsw i32 %354, %mul13.i.i
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float* %6, i64 %363
  %365 = bitcast float* %364 to <8 x float>*
  %wide.load59.2 = load <8 x float>, <8 x float>* %365, align 4, !tbaa !12, !llvm.access.group !16
  %366 = fneg <8 x float> %361
  %367 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %366, <8 x float> %wide.load59.2, <8 x float> %wide.load58.2)
  %368 = bitcast float* %357 to <8 x float>*
  store <8 x float> %367, <8 x float>* %368, align 4, !tbaa !12, !llvm.access.group !16
  %369 = trunc i64 %mul.i.i.i to i32
  %370 = or i32 %369, 24
  %371 = add i32 %add.i.i, %370
  %372 = add nsw i32 %371, %mul.i.i.3
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds float, float* %6, i64 %373
  %375 = bitcast float* %374 to <8 x float>*
  %wide.load58.3 = load <8 x float>, <8 x float>* %375, align 4, !tbaa !12, !llvm.access.group !16
  %376 = load float, float* %arrayidx12.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %377 = insertelement <8 x float> undef, float %376, i32 0
  %378 = shufflevector <8 x float> %377, <8 x float> undef, <8 x i32> zeroinitializer
  %379 = add nsw i32 %371, %mul13.i.i
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds float, float* %6, i64 %380
  %382 = bitcast float* %381 to <8 x float>*
  %wide.load59.3 = load <8 x float>, <8 x float>* %382, align 4, !tbaa !12, !llvm.access.group !16
  %383 = fneg <8 x float> %378
  %384 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %383, <8 x float> %wide.load59.3, <8 x float> %wide.load58.3)
  %385 = bitcast float* %374 to <8 x float>*
  store <8 x float> %384, <8 x float>* %385, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.3:                    ; preds = %pregion_for_entry.entry.i.i.3, %pregion_for_entry.entry.i.i.3.preheader
  %_local_id_x.i.0.3 = phi i64 [ %397, %pregion_for_entry.entry.i.i.3 ], [ 0, %pregion_for_entry.entry.i.i.3.preheader ]
  %add1.i.i.i.3 = add nuw nsw i64 %_local_id_x.i.0.3, %mul.i.i.i
  %386 = trunc i64 %add1.i.i.i.3 to i32
  %conv2.i.i.3 = add i32 %add.i.i, %386
  %add8.i.i.3 = add nsw i32 %conv2.i.i.3, %mul.i.i.3
  %idxprom.i.i.3 = sext i32 %add8.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.3
  %387 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %388 = load float, float* %arrayidx12.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.3 = add nsw i32 %conv2.i.i.3, %mul13.i.i
  %idxprom15.i.i.3 = sext i32 %add14.i.i.3 to i64
  %arrayidx16.i.i.3 = getelementptr inbounds float, float* %6, i64 %idxprom15.i.i.3
  %389 = load float, float* %arrayidx16.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.3 = fneg float %388
  %390 = tail call float @llvm.fmuladd.f32(float %neg.i.i.3, float %389, float %387) #3
  store float %390, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %391 = or i64 %_local_id_x.i.0.3, 1
  %add1.i.i.i.3.1 = add nuw nsw i64 %391, %mul.i.i.i
  %392 = trunc i64 %add1.i.i.i.3.1 to i32
  %conv2.i.i.3.1 = add i32 %add.i.i, %392
  %add8.i.i.3.1 = add nsw i32 %conv2.i.i.3.1, %mul.i.i.3
  %idxprom.i.i.3.1 = sext i32 %add8.i.i.3.1 to i64
  %arrayidx.i.i.3.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.3.1
  %393 = load float, float* %arrayidx.i.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %394 = load float, float* %arrayidx12.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.3.1 = add nsw i32 %conv2.i.i.3.1, %mul13.i.i
  %idxprom15.i.i.3.1 = sext i32 %add14.i.i.3.1 to i64
  %arrayidx16.i.i.3.1 = getelementptr inbounds float, float* %6, i64 %idxprom15.i.i.3.1
  %395 = load float, float* %arrayidx16.i.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.3.1 = fneg float %394
  %396 = tail call float @llvm.fmuladd.f32(float %neg.i.i.3.1, float %395, float %393) #3
  store float %396, float* %arrayidx.i.i.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %397 = add nuw nsw i64 %_local_id_x.i.0.3, 2
  %exitcond.3.not.1 = icmp eq i64 %397, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.3, !llvm.loop !40

pregion_for_end.i.i.3.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.3
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.body44
  %398 = trunc i64 %mul3.i.i.i to i32
  %399 = or i32 %398, 4
  %conv7.i.i.4 = add i32 %add.i.i, %399
  %mul.i.i.4 = mul nsw i32 %conv7.i.i.4, %14
  %add10.i.i.4 = add nsw i32 %mul.i.i.4, %10
  %idxprom11.i.i.4 = sext i32 %add10.i.i.4 to i64
  %arrayidx12.i.i.4 = getelementptr inbounds float, float* %6, i64 %idxprom11.i.i.4
  %400 = mul i32 %14, %conv7.i.i.4
  %401 = add i32 %10, %400
  %402 = trunc i64 %2 to i32
  %403 = shl i32 %402, 5
  %404 = add i32 %401, %403
  %405 = add i32 %404, 1
  %406 = add i32 %404, 32
  %407 = icmp slt i32 %406, %405
  %408 = add i32 %14, 1
  %409 = mul i32 %10, %408
  %410 = add i32 %409, %403
  %411 = add i32 %410, 1
  %412 = add i32 %410, 32
  %413 = icmp slt i32 %412, %411
  %414 = or i1 %407, %413
  br i1 %414, label %pregion_for_entry.entry.i.i.4.preheader, label %vector.body62

pregion_for_entry.entry.i.i.4.preheader:          ; preds = %pregion_for_end.i.i.3
  br label %pregion_for_entry.entry.i.i.4

vector.body62:                                    ; preds = %pregion_for_end.i.i.3
  %415 = trunc i64 %mul.i.i.i to i32
  %416 = add i32 %add.i.i, %415
  %417 = add nsw i32 %416, %mul.i.i.4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds float, float* %6, i64 %418
  %420 = bitcast float* %419 to <8 x float>*
  %wide.load76 = load <8 x float>, <8 x float>* %420, align 4, !tbaa !12, !llvm.access.group !16
  %421 = load float, float* %arrayidx12.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %422 = insertelement <8 x float> undef, float %421, i32 0
  %423 = shufflevector <8 x float> %422, <8 x float> undef, <8 x i32> zeroinitializer
  %424 = add nsw i32 %416, %mul13.i.i
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds float, float* %6, i64 %425
  %427 = bitcast float* %426 to <8 x float>*
  %wide.load77 = load <8 x float>, <8 x float>* %427, align 4, !tbaa !12, !llvm.access.group !16
  %428 = fneg <8 x float> %423
  %429 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %428, <8 x float> %wide.load77, <8 x float> %wide.load76)
  %430 = bitcast float* %419 to <8 x float>*
  store <8 x float> %429, <8 x float>* %430, align 4, !tbaa !12, !llvm.access.group !16
  %431 = trunc i64 %mul.i.i.i to i32
  %432 = or i32 %431, 8
  %433 = add i32 %add.i.i, %432
  %434 = add nsw i32 %433, %mul.i.i.4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds float, float* %6, i64 %435
  %437 = bitcast float* %436 to <8 x float>*
  %wide.load76.1 = load <8 x float>, <8 x float>* %437, align 4, !tbaa !12, !llvm.access.group !16
  %438 = load float, float* %arrayidx12.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %439 = insertelement <8 x float> undef, float %438, i32 0
  %440 = shufflevector <8 x float> %439, <8 x float> undef, <8 x i32> zeroinitializer
  %441 = add nsw i32 %433, %mul13.i.i
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds float, float* %6, i64 %442
  %444 = bitcast float* %443 to <8 x float>*
  %wide.load77.1 = load <8 x float>, <8 x float>* %444, align 4, !tbaa !12, !llvm.access.group !16
  %445 = fneg <8 x float> %440
  %446 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %445, <8 x float> %wide.load77.1, <8 x float> %wide.load76.1)
  %447 = bitcast float* %436 to <8 x float>*
  store <8 x float> %446, <8 x float>* %447, align 4, !tbaa !12, !llvm.access.group !16
  %448 = trunc i64 %mul.i.i.i to i32
  %449 = or i32 %448, 16
  %450 = add i32 %add.i.i, %449
  %451 = add nsw i32 %450, %mul.i.i.4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds float, float* %6, i64 %452
  %454 = bitcast float* %453 to <8 x float>*
  %wide.load76.2 = load <8 x float>, <8 x float>* %454, align 4, !tbaa !12, !llvm.access.group !16
  %455 = load float, float* %arrayidx12.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %456 = insertelement <8 x float> undef, float %455, i32 0
  %457 = shufflevector <8 x float> %456, <8 x float> undef, <8 x i32> zeroinitializer
  %458 = add nsw i32 %450, %mul13.i.i
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds float, float* %6, i64 %459
  %461 = bitcast float* %460 to <8 x float>*
  %wide.load77.2 = load <8 x float>, <8 x float>* %461, align 4, !tbaa !12, !llvm.access.group !16
  %462 = fneg <8 x float> %457
  %463 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %462, <8 x float> %wide.load77.2, <8 x float> %wide.load76.2)
  %464 = bitcast float* %453 to <8 x float>*
  store <8 x float> %463, <8 x float>* %464, align 4, !tbaa !12, !llvm.access.group !16
  %465 = trunc i64 %mul.i.i.i to i32
  %466 = or i32 %465, 24
  %467 = add i32 %add.i.i, %466
  %468 = add nsw i32 %467, %mul.i.i.4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds float, float* %6, i64 %469
  %471 = bitcast float* %470 to <8 x float>*
  %wide.load76.3 = load <8 x float>, <8 x float>* %471, align 4, !tbaa !12, !llvm.access.group !16
  %472 = load float, float* %arrayidx12.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %473 = insertelement <8 x float> undef, float %472, i32 0
  %474 = shufflevector <8 x float> %473, <8 x float> undef, <8 x i32> zeroinitializer
  %475 = add nsw i32 %467, %mul13.i.i
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds float, float* %6, i64 %476
  %478 = bitcast float* %477 to <8 x float>*
  %wide.load77.3 = load <8 x float>, <8 x float>* %478, align 4, !tbaa !12, !llvm.access.group !16
  %479 = fneg <8 x float> %474
  %480 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %479, <8 x float> %wide.load77.3, <8 x float> %wide.load76.3)
  %481 = bitcast float* %470 to <8 x float>*
  store <8 x float> %480, <8 x float>* %481, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.4:                    ; preds = %pregion_for_entry.entry.i.i.4, %pregion_for_entry.entry.i.i.4.preheader
  %_local_id_x.i.0.4 = phi i64 [ %493, %pregion_for_entry.entry.i.i.4 ], [ 0, %pregion_for_entry.entry.i.i.4.preheader ]
  %add1.i.i.i.4 = add nuw nsw i64 %_local_id_x.i.0.4, %mul.i.i.i
  %482 = trunc i64 %add1.i.i.i.4 to i32
  %conv2.i.i.4 = add i32 %add.i.i, %482
  %add8.i.i.4 = add nsw i32 %conv2.i.i.4, %mul.i.i.4
  %idxprom.i.i.4 = sext i32 %add8.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.4
  %483 = load float, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %484 = load float, float* %arrayidx12.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.4 = add nsw i32 %conv2.i.i.4, %mul13.i.i
  %idxprom15.i.i.4 = sext i32 %add14.i.i.4 to i64
  %arrayidx16.i.i.4 = getelementptr inbounds float, float* %6, i64 %idxprom15.i.i.4
  %485 = load float, float* %arrayidx16.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.4 = fneg float %484
  %486 = tail call float @llvm.fmuladd.f32(float %neg.i.i.4, float %485, float %483) #3
  store float %486, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %487 = or i64 %_local_id_x.i.0.4, 1
  %add1.i.i.i.4.1 = add nuw nsw i64 %487, %mul.i.i.i
  %488 = trunc i64 %add1.i.i.i.4.1 to i32
  %conv2.i.i.4.1 = add i32 %add.i.i, %488
  %add8.i.i.4.1 = add nsw i32 %conv2.i.i.4.1, %mul.i.i.4
  %idxprom.i.i.4.1 = sext i32 %add8.i.i.4.1 to i64
  %arrayidx.i.i.4.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.4.1
  %489 = load float, float* %arrayidx.i.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %490 = load float, float* %arrayidx12.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.4.1 = add nsw i32 %conv2.i.i.4.1, %mul13.i.i
  %idxprom15.i.i.4.1 = sext i32 %add14.i.i.4.1 to i64
  %arrayidx16.i.i.4.1 = getelementptr inbounds float, float* %6, i64 %idxprom15.i.i.4.1
  %491 = load float, float* %arrayidx16.i.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.4.1 = fneg float %490
  %492 = tail call float @llvm.fmuladd.f32(float %neg.i.i.4.1, float %491, float %489) #3
  store float %492, float* %arrayidx.i.i.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %493 = add nuw nsw i64 %_local_id_x.i.0.4, 2
  %exitcond.4.not.1 = icmp eq i64 %493, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.4, !llvm.loop !41

pregion_for_end.i.i.4.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.4
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.body62
  %494 = trunc i64 %mul3.i.i.i to i32
  %495 = or i32 %494, 5
  %conv7.i.i.5 = add i32 %add.i.i, %495
  %mul.i.i.5 = mul nsw i32 %conv7.i.i.5, %14
  %add10.i.i.5 = add nsw i32 %mul.i.i.5, %10
  %idxprom11.i.i.5 = sext i32 %add10.i.i.5 to i64
  %arrayidx12.i.i.5 = getelementptr inbounds float, float* %6, i64 %idxprom11.i.i.5
  %496 = mul i32 %14, %conv7.i.i.5
  %497 = add i32 %10, %496
  %498 = trunc i64 %2 to i32
  %499 = shl i32 %498, 5
  %500 = add i32 %497, %499
  %501 = add i32 %500, 1
  %502 = add i32 %500, 32
  %503 = icmp slt i32 %502, %501
  %504 = add i32 %14, 1
  %505 = mul i32 %10, %504
  %506 = add i32 %505, %499
  %507 = add i32 %506, 1
  %508 = add i32 %506, 32
  %509 = icmp slt i32 %508, %507
  %510 = or i1 %503, %509
  br i1 %510, label %pregion_for_entry.entry.i.i.5.preheader, label %vector.body80

pregion_for_entry.entry.i.i.5.preheader:          ; preds = %pregion_for_end.i.i.4
  br label %pregion_for_entry.entry.i.i.5

vector.body80:                                    ; preds = %pregion_for_end.i.i.4
  %511 = trunc i64 %mul.i.i.i to i32
  %512 = add i32 %add.i.i, %511
  %513 = add nsw i32 %512, %mul.i.i.5
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds float, float* %6, i64 %514
  %516 = bitcast float* %515 to <8 x float>*
  %wide.load94 = load <8 x float>, <8 x float>* %516, align 4, !tbaa !12, !llvm.access.group !16
  %517 = load float, float* %arrayidx12.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %518 = insertelement <8 x float> undef, float %517, i32 0
  %519 = shufflevector <8 x float> %518, <8 x float> undef, <8 x i32> zeroinitializer
  %520 = add nsw i32 %512, %mul13.i.i
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds float, float* %6, i64 %521
  %523 = bitcast float* %522 to <8 x float>*
  %wide.load95 = load <8 x float>, <8 x float>* %523, align 4, !tbaa !12, !llvm.access.group !16
  %524 = fneg <8 x float> %519
  %525 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %524, <8 x float> %wide.load95, <8 x float> %wide.load94)
  %526 = bitcast float* %515 to <8 x float>*
  store <8 x float> %525, <8 x float>* %526, align 4, !tbaa !12, !llvm.access.group !16
  %527 = trunc i64 %mul.i.i.i to i32
  %528 = or i32 %527, 8
  %529 = add i32 %add.i.i, %528
  %530 = add nsw i32 %529, %mul.i.i.5
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds float, float* %6, i64 %531
  %533 = bitcast float* %532 to <8 x float>*
  %wide.load94.1 = load <8 x float>, <8 x float>* %533, align 4, !tbaa !12, !llvm.access.group !16
  %534 = load float, float* %arrayidx12.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %535 = insertelement <8 x float> undef, float %534, i32 0
  %536 = shufflevector <8 x float> %535, <8 x float> undef, <8 x i32> zeroinitializer
  %537 = add nsw i32 %529, %mul13.i.i
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds float, float* %6, i64 %538
  %540 = bitcast float* %539 to <8 x float>*
  %wide.load95.1 = load <8 x float>, <8 x float>* %540, align 4, !tbaa !12, !llvm.access.group !16
  %541 = fneg <8 x float> %536
  %542 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %541, <8 x float> %wide.load95.1, <8 x float> %wide.load94.1)
  %543 = bitcast float* %532 to <8 x float>*
  store <8 x float> %542, <8 x float>* %543, align 4, !tbaa !12, !llvm.access.group !16
  %544 = trunc i64 %mul.i.i.i to i32
  %545 = or i32 %544, 16
  %546 = add i32 %add.i.i, %545
  %547 = add nsw i32 %546, %mul.i.i.5
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds float, float* %6, i64 %548
  %550 = bitcast float* %549 to <8 x float>*
  %wide.load94.2 = load <8 x float>, <8 x float>* %550, align 4, !tbaa !12, !llvm.access.group !16
  %551 = load float, float* %arrayidx12.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %552 = insertelement <8 x float> undef, float %551, i32 0
  %553 = shufflevector <8 x float> %552, <8 x float> undef, <8 x i32> zeroinitializer
  %554 = add nsw i32 %546, %mul13.i.i
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds float, float* %6, i64 %555
  %557 = bitcast float* %556 to <8 x float>*
  %wide.load95.2 = load <8 x float>, <8 x float>* %557, align 4, !tbaa !12, !llvm.access.group !16
  %558 = fneg <8 x float> %553
  %559 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %558, <8 x float> %wide.load95.2, <8 x float> %wide.load94.2)
  %560 = bitcast float* %549 to <8 x float>*
  store <8 x float> %559, <8 x float>* %560, align 4, !tbaa !12, !llvm.access.group !16
  %561 = trunc i64 %mul.i.i.i to i32
  %562 = or i32 %561, 24
  %563 = add i32 %add.i.i, %562
  %564 = add nsw i32 %563, %mul.i.i.5
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds float, float* %6, i64 %565
  %567 = bitcast float* %566 to <8 x float>*
  %wide.load94.3 = load <8 x float>, <8 x float>* %567, align 4, !tbaa !12, !llvm.access.group !16
  %568 = load float, float* %arrayidx12.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %569 = insertelement <8 x float> undef, float %568, i32 0
  %570 = shufflevector <8 x float> %569, <8 x float> undef, <8 x i32> zeroinitializer
  %571 = add nsw i32 %563, %mul13.i.i
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds float, float* %6, i64 %572
  %574 = bitcast float* %573 to <8 x float>*
  %wide.load95.3 = load <8 x float>, <8 x float>* %574, align 4, !tbaa !12, !llvm.access.group !16
  %575 = fneg <8 x float> %570
  %576 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %575, <8 x float> %wide.load95.3, <8 x float> %wide.load94.3)
  %577 = bitcast float* %566 to <8 x float>*
  store <8 x float> %576, <8 x float>* %577, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.5:                    ; preds = %pregion_for_entry.entry.i.i.5, %pregion_for_entry.entry.i.i.5.preheader
  %_local_id_x.i.0.5 = phi i64 [ %589, %pregion_for_entry.entry.i.i.5 ], [ 0, %pregion_for_entry.entry.i.i.5.preheader ]
  %add1.i.i.i.5 = add nuw nsw i64 %_local_id_x.i.0.5, %mul.i.i.i
  %578 = trunc i64 %add1.i.i.i.5 to i32
  %conv2.i.i.5 = add i32 %add.i.i, %578
  %add8.i.i.5 = add nsw i32 %conv2.i.i.5, %mul.i.i.5
  %idxprom.i.i.5 = sext i32 %add8.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.5
  %579 = load float, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %580 = load float, float* %arrayidx12.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.5 = add nsw i32 %conv2.i.i.5, %mul13.i.i
  %idxprom15.i.i.5 = sext i32 %add14.i.i.5 to i64
  %arrayidx16.i.i.5 = getelementptr inbounds float, float* %6, i64 %idxprom15.i.i.5
  %581 = load float, float* %arrayidx16.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.5 = fneg float %580
  %582 = tail call float @llvm.fmuladd.f32(float %neg.i.i.5, float %581, float %579) #3
  store float %582, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %583 = or i64 %_local_id_x.i.0.5, 1
  %add1.i.i.i.5.1 = add nuw nsw i64 %583, %mul.i.i.i
  %584 = trunc i64 %add1.i.i.i.5.1 to i32
  %conv2.i.i.5.1 = add i32 %add.i.i, %584
  %add8.i.i.5.1 = add nsw i32 %conv2.i.i.5.1, %mul.i.i.5
  %idxprom.i.i.5.1 = sext i32 %add8.i.i.5.1 to i64
  %arrayidx.i.i.5.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.5.1
  %585 = load float, float* %arrayidx.i.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %586 = load float, float* %arrayidx12.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.5.1 = add nsw i32 %conv2.i.i.5.1, %mul13.i.i
  %idxprom15.i.i.5.1 = sext i32 %add14.i.i.5.1 to i64
  %arrayidx16.i.i.5.1 = getelementptr inbounds float, float* %6, i64 %idxprom15.i.i.5.1
  %587 = load float, float* %arrayidx16.i.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.5.1 = fneg float %586
  %588 = tail call float @llvm.fmuladd.f32(float %neg.i.i.5.1, float %587, float %585) #3
  store float %588, float* %arrayidx.i.i.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %589 = add nuw nsw i64 %_local_id_x.i.0.5, 2
  %exitcond.5.not.1 = icmp eq i64 %589, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.5, !llvm.loop !42

pregion_for_end.i.i.5.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.5
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.body80
  %590 = trunc i64 %mul3.i.i.i to i32
  %591 = or i32 %590, 6
  %conv7.i.i.6 = add i32 %add.i.i, %591
  %mul.i.i.6 = mul nsw i32 %conv7.i.i.6, %14
  %add10.i.i.6 = add nsw i32 %mul.i.i.6, %10
  %idxprom11.i.i.6 = sext i32 %add10.i.i.6 to i64
  %arrayidx12.i.i.6 = getelementptr inbounds float, float* %6, i64 %idxprom11.i.i.6
  %592 = mul i32 %14, %conv7.i.i.6
  %593 = add i32 %10, %592
  %594 = trunc i64 %2 to i32
  %595 = shl i32 %594, 5
  %596 = add i32 %593, %595
  %597 = add i32 %596, 1
  %598 = add i32 %596, 32
  %599 = icmp slt i32 %598, %597
  %600 = add i32 %14, 1
  %601 = mul i32 %10, %600
  %602 = add i32 %601, %595
  %603 = add i32 %602, 1
  %604 = add i32 %602, 32
  %605 = icmp slt i32 %604, %603
  %606 = or i1 %599, %605
  br i1 %606, label %pregion_for_entry.entry.i.i.6.preheader, label %vector.body98

pregion_for_entry.entry.i.i.6.preheader:          ; preds = %pregion_for_end.i.i.5
  br label %pregion_for_entry.entry.i.i.6

vector.body98:                                    ; preds = %pregion_for_end.i.i.5
  %607 = trunc i64 %mul.i.i.i to i32
  %608 = add i32 %add.i.i, %607
  %609 = add nsw i32 %608, %mul.i.i.6
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds float, float* %6, i64 %610
  %612 = bitcast float* %611 to <8 x float>*
  %wide.load112 = load <8 x float>, <8 x float>* %612, align 4, !tbaa !12, !llvm.access.group !16
  %613 = load float, float* %arrayidx12.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %614 = insertelement <8 x float> undef, float %613, i32 0
  %615 = shufflevector <8 x float> %614, <8 x float> undef, <8 x i32> zeroinitializer
  %616 = add nsw i32 %608, %mul13.i.i
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds float, float* %6, i64 %617
  %619 = bitcast float* %618 to <8 x float>*
  %wide.load113 = load <8 x float>, <8 x float>* %619, align 4, !tbaa !12, !llvm.access.group !16
  %620 = fneg <8 x float> %615
  %621 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %620, <8 x float> %wide.load113, <8 x float> %wide.load112)
  %622 = bitcast float* %611 to <8 x float>*
  store <8 x float> %621, <8 x float>* %622, align 4, !tbaa !12, !llvm.access.group !16
  %623 = trunc i64 %mul.i.i.i to i32
  %624 = or i32 %623, 8
  %625 = add i32 %add.i.i, %624
  %626 = add nsw i32 %625, %mul.i.i.6
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds float, float* %6, i64 %627
  %629 = bitcast float* %628 to <8 x float>*
  %wide.load112.1 = load <8 x float>, <8 x float>* %629, align 4, !tbaa !12, !llvm.access.group !16
  %630 = load float, float* %arrayidx12.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %631 = insertelement <8 x float> undef, float %630, i32 0
  %632 = shufflevector <8 x float> %631, <8 x float> undef, <8 x i32> zeroinitializer
  %633 = add nsw i32 %625, %mul13.i.i
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds float, float* %6, i64 %634
  %636 = bitcast float* %635 to <8 x float>*
  %wide.load113.1 = load <8 x float>, <8 x float>* %636, align 4, !tbaa !12, !llvm.access.group !16
  %637 = fneg <8 x float> %632
  %638 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %637, <8 x float> %wide.load113.1, <8 x float> %wide.load112.1)
  %639 = bitcast float* %628 to <8 x float>*
  store <8 x float> %638, <8 x float>* %639, align 4, !tbaa !12, !llvm.access.group !16
  %640 = trunc i64 %mul.i.i.i to i32
  %641 = or i32 %640, 16
  %642 = add i32 %add.i.i, %641
  %643 = add nsw i32 %642, %mul.i.i.6
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds float, float* %6, i64 %644
  %646 = bitcast float* %645 to <8 x float>*
  %wide.load112.2 = load <8 x float>, <8 x float>* %646, align 4, !tbaa !12, !llvm.access.group !16
  %647 = load float, float* %arrayidx12.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %648 = insertelement <8 x float> undef, float %647, i32 0
  %649 = shufflevector <8 x float> %648, <8 x float> undef, <8 x i32> zeroinitializer
  %650 = add nsw i32 %642, %mul13.i.i
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds float, float* %6, i64 %651
  %653 = bitcast float* %652 to <8 x float>*
  %wide.load113.2 = load <8 x float>, <8 x float>* %653, align 4, !tbaa !12, !llvm.access.group !16
  %654 = fneg <8 x float> %649
  %655 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %654, <8 x float> %wide.load113.2, <8 x float> %wide.load112.2)
  %656 = bitcast float* %645 to <8 x float>*
  store <8 x float> %655, <8 x float>* %656, align 4, !tbaa !12, !llvm.access.group !16
  %657 = trunc i64 %mul.i.i.i to i32
  %658 = or i32 %657, 24
  %659 = add i32 %add.i.i, %658
  %660 = add nsw i32 %659, %mul.i.i.6
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds float, float* %6, i64 %661
  %663 = bitcast float* %662 to <8 x float>*
  %wide.load112.3 = load <8 x float>, <8 x float>* %663, align 4, !tbaa !12, !llvm.access.group !16
  %664 = load float, float* %arrayidx12.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %665 = insertelement <8 x float> undef, float %664, i32 0
  %666 = shufflevector <8 x float> %665, <8 x float> undef, <8 x i32> zeroinitializer
  %667 = add nsw i32 %659, %mul13.i.i
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds float, float* %6, i64 %668
  %670 = bitcast float* %669 to <8 x float>*
  %wide.load113.3 = load <8 x float>, <8 x float>* %670, align 4, !tbaa !12, !llvm.access.group !16
  %671 = fneg <8 x float> %666
  %672 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %671, <8 x float> %wide.load113.3, <8 x float> %wide.load112.3)
  %673 = bitcast float* %662 to <8 x float>*
  store <8 x float> %672, <8 x float>* %673, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.6:                    ; preds = %pregion_for_entry.entry.i.i.6, %pregion_for_entry.entry.i.i.6.preheader
  %_local_id_x.i.0.6 = phi i64 [ %685, %pregion_for_entry.entry.i.i.6 ], [ 0, %pregion_for_entry.entry.i.i.6.preheader ]
  %add1.i.i.i.6 = add nuw nsw i64 %_local_id_x.i.0.6, %mul.i.i.i
  %674 = trunc i64 %add1.i.i.i.6 to i32
  %conv2.i.i.6 = add i32 %add.i.i, %674
  %add8.i.i.6 = add nsw i32 %conv2.i.i.6, %mul.i.i.6
  %idxprom.i.i.6 = sext i32 %add8.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.6
  %675 = load float, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %676 = load float, float* %arrayidx12.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.6 = add nsw i32 %conv2.i.i.6, %mul13.i.i
  %idxprom15.i.i.6 = sext i32 %add14.i.i.6 to i64
  %arrayidx16.i.i.6 = getelementptr inbounds float, float* %6, i64 %idxprom15.i.i.6
  %677 = load float, float* %arrayidx16.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.6 = fneg float %676
  %678 = tail call float @llvm.fmuladd.f32(float %neg.i.i.6, float %677, float %675) #3
  store float %678, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %679 = or i64 %_local_id_x.i.0.6, 1
  %add1.i.i.i.6.1 = add nuw nsw i64 %679, %mul.i.i.i
  %680 = trunc i64 %add1.i.i.i.6.1 to i32
  %conv2.i.i.6.1 = add i32 %add.i.i, %680
  %add8.i.i.6.1 = add nsw i32 %conv2.i.i.6.1, %mul.i.i.6
  %idxprom.i.i.6.1 = sext i32 %add8.i.i.6.1 to i64
  %arrayidx.i.i.6.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.6.1
  %681 = load float, float* %arrayidx.i.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %682 = load float, float* %arrayidx12.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.6.1 = add nsw i32 %conv2.i.i.6.1, %mul13.i.i
  %idxprom15.i.i.6.1 = sext i32 %add14.i.i.6.1 to i64
  %arrayidx16.i.i.6.1 = getelementptr inbounds float, float* %6, i64 %idxprom15.i.i.6.1
  %683 = load float, float* %arrayidx16.i.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.6.1 = fneg float %682
  %684 = tail call float @llvm.fmuladd.f32(float %neg.i.i.6.1, float %683, float %681) #3
  store float %684, float* %arrayidx.i.i.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %685 = add nuw nsw i64 %_local_id_x.i.0.6, 2
  %exitcond.6.not.1 = icmp eq i64 %685, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.6, !llvm.loop !43

pregion_for_end.i.i.6.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.6
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.body98
  %686 = trunc i64 %mul3.i.i.i to i32
  %687 = or i32 %686, 7
  %conv7.i.i.7 = add i32 %add.i.i, %687
  %mul.i.i.7 = mul nsw i32 %conv7.i.i.7, %14
  %add10.i.i.7 = add nsw i32 %mul.i.i.7, %10
  %idxprom11.i.i.7 = sext i32 %add10.i.i.7 to i64
  %arrayidx12.i.i.7 = getelementptr inbounds float, float* %6, i64 %idxprom11.i.i.7
  %688 = mul i32 %14, %conv7.i.i.7
  %689 = add i32 %10, %688
  %690 = trunc i64 %2 to i32
  %691 = shl i32 %690, 5
  %692 = add i32 %689, %691
  %693 = add i32 %692, 1
  %694 = add i32 %692, 32
  %695 = icmp slt i32 %694, %693
  %696 = add i32 %14, 1
  %697 = mul i32 %10, %696
  %698 = add i32 %697, %691
  %699 = add i32 %698, 1
  %700 = add i32 %698, 32
  %701 = icmp slt i32 %700, %699
  %702 = or i1 %695, %701
  br i1 %702, label %pregion_for_entry.entry.i.i.7.preheader, label %vector.body116

pregion_for_entry.entry.i.i.7.preheader:          ; preds = %pregion_for_end.i.i.6
  br label %pregion_for_entry.entry.i.i.7

vector.body116:                                   ; preds = %pregion_for_end.i.i.6
  %703 = trunc i64 %mul.i.i.i to i32
  %704 = add i32 %add.i.i, %703
  %705 = add nsw i32 %704, %mul.i.i.7
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds float, float* %6, i64 %706
  %708 = bitcast float* %707 to <8 x float>*
  %wide.load130 = load <8 x float>, <8 x float>* %708, align 4, !tbaa !12, !llvm.access.group !16
  %709 = load float, float* %arrayidx12.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %710 = insertelement <8 x float> undef, float %709, i32 0
  %711 = shufflevector <8 x float> %710, <8 x float> undef, <8 x i32> zeroinitializer
  %712 = add nsw i32 %704, %mul13.i.i
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds float, float* %6, i64 %713
  %715 = bitcast float* %714 to <8 x float>*
  %wide.load131 = load <8 x float>, <8 x float>* %715, align 4, !tbaa !12, !llvm.access.group !16
  %716 = fneg <8 x float> %711
  %717 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %716, <8 x float> %wide.load131, <8 x float> %wide.load130)
  %718 = bitcast float* %707 to <8 x float>*
  store <8 x float> %717, <8 x float>* %718, align 4, !tbaa !12, !llvm.access.group !16
  %719 = trunc i64 %mul.i.i.i to i32
  %720 = or i32 %719, 8
  %721 = add i32 %add.i.i, %720
  %722 = add nsw i32 %721, %mul.i.i.7
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds float, float* %6, i64 %723
  %725 = bitcast float* %724 to <8 x float>*
  %wide.load130.1 = load <8 x float>, <8 x float>* %725, align 4, !tbaa !12, !llvm.access.group !16
  %726 = load float, float* %arrayidx12.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %727 = insertelement <8 x float> undef, float %726, i32 0
  %728 = shufflevector <8 x float> %727, <8 x float> undef, <8 x i32> zeroinitializer
  %729 = add nsw i32 %721, %mul13.i.i
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds float, float* %6, i64 %730
  %732 = bitcast float* %731 to <8 x float>*
  %wide.load131.1 = load <8 x float>, <8 x float>* %732, align 4, !tbaa !12, !llvm.access.group !16
  %733 = fneg <8 x float> %728
  %734 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %733, <8 x float> %wide.load131.1, <8 x float> %wide.load130.1)
  %735 = bitcast float* %724 to <8 x float>*
  store <8 x float> %734, <8 x float>* %735, align 4, !tbaa !12, !llvm.access.group !16
  %736 = trunc i64 %mul.i.i.i to i32
  %737 = or i32 %736, 16
  %738 = add i32 %add.i.i, %737
  %739 = add nsw i32 %738, %mul.i.i.7
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds float, float* %6, i64 %740
  %742 = bitcast float* %741 to <8 x float>*
  %wide.load130.2 = load <8 x float>, <8 x float>* %742, align 4, !tbaa !12, !llvm.access.group !16
  %743 = load float, float* %arrayidx12.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %744 = insertelement <8 x float> undef, float %743, i32 0
  %745 = shufflevector <8 x float> %744, <8 x float> undef, <8 x i32> zeroinitializer
  %746 = add nsw i32 %738, %mul13.i.i
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds float, float* %6, i64 %747
  %749 = bitcast float* %748 to <8 x float>*
  %wide.load131.2 = load <8 x float>, <8 x float>* %749, align 4, !tbaa !12, !llvm.access.group !16
  %750 = fneg <8 x float> %745
  %751 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %750, <8 x float> %wide.load131.2, <8 x float> %wide.load130.2)
  %752 = bitcast float* %741 to <8 x float>*
  store <8 x float> %751, <8 x float>* %752, align 4, !tbaa !12, !llvm.access.group !16
  %753 = trunc i64 %mul.i.i.i to i32
  %754 = or i32 %753, 24
  %755 = add i32 %add.i.i, %754
  %756 = add nsw i32 %755, %mul.i.i.7
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds float, float* %6, i64 %757
  %759 = bitcast float* %758 to <8 x float>*
  %wide.load130.3 = load <8 x float>, <8 x float>* %759, align 4, !tbaa !12, !llvm.access.group !16
  %760 = load float, float* %arrayidx12.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %761 = insertelement <8 x float> undef, float %760, i32 0
  %762 = shufflevector <8 x float> %761, <8 x float> undef, <8 x i32> zeroinitializer
  %763 = add nsw i32 %755, %mul13.i.i
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds float, float* %6, i64 %764
  %766 = bitcast float* %765 to <8 x float>*
  %wide.load131.3 = load <8 x float>, <8 x float>* %766, align 4, !tbaa !12, !llvm.access.group !16
  %767 = fneg <8 x float> %762
  %768 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %767, <8 x float> %wide.load131.3, <8 x float> %wide.load130.3)
  %769 = bitcast float* %758 to <8 x float>*
  store <8 x float> %768, <8 x float>* %769, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i.7

pregion_for_entry.entry.i.i.7:                    ; preds = %pregion_for_entry.entry.i.i.7, %pregion_for_entry.entry.i.i.7.preheader
  %_local_id_x.i.0.7 = phi i64 [ %781, %pregion_for_entry.entry.i.i.7 ], [ 0, %pregion_for_entry.entry.i.i.7.preheader ]
  %add1.i.i.i.7 = add nuw nsw i64 %_local_id_x.i.0.7, %mul.i.i.i
  %770 = trunc i64 %add1.i.i.i.7 to i32
  %conv2.i.i.7 = add i32 %add.i.i, %770
  %add8.i.i.7 = add nsw i32 %conv2.i.i.7, %mul.i.i.7
  %idxprom.i.i.7 = sext i32 %add8.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.7
  %771 = load float, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %772 = load float, float* %arrayidx12.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.7 = add nsw i32 %conv2.i.i.7, %mul13.i.i
  %idxprom15.i.i.7 = sext i32 %add14.i.i.7 to i64
  %arrayidx16.i.i.7 = getelementptr inbounds float, float* %6, i64 %idxprom15.i.i.7
  %773 = load float, float* %arrayidx16.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.7 = fneg float %772
  %774 = tail call float @llvm.fmuladd.f32(float %neg.i.i.7, float %773, float %771) #3
  store float %774, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %775 = or i64 %_local_id_x.i.0.7, 1
  %add1.i.i.i.7.1 = add nuw nsw i64 %775, %mul.i.i.i
  %776 = trunc i64 %add1.i.i.i.7.1 to i32
  %conv2.i.i.7.1 = add i32 %add.i.i, %776
  %add8.i.i.7.1 = add nsw i32 %conv2.i.i.7.1, %mul.i.i.7
  %idxprom.i.i.7.1 = sext i32 %add8.i.i.7.1 to i64
  %arrayidx.i.i.7.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.7.1
  %777 = load float, float* %arrayidx.i.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %778 = load float, float* %arrayidx12.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add14.i.i.7.1 = add nsw i32 %conv2.i.i.7.1, %mul13.i.i
  %idxprom15.i.i.7.1 = sext i32 %add14.i.i.7.1 to i64
  %arrayidx16.i.i.7.1 = getelementptr inbounds float, float* %6, i64 %idxprom15.i.i.7.1
  %779 = load float, float* %arrayidx16.i.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %neg.i.i.7.1 = fneg float %778
  %780 = tail call float @llvm.fmuladd.f32(float %neg.i.i.7.1, float %779, float %777) #3
  store float %780, float* %arrayidx.i.i.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %781 = add nuw nsw i64 %_local_id_x.i.0.7, 2
  %exitcond.7.not.1 = icmp eq i64 %781, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.i.7.loopexit, label %pregion_for_entry.entry.i.i.7, !llvm.loop !44

pregion_for_end.i.i.7.loopexit:                   ; preds = %pregion_for_entry.entry.i.i.7
  br label %pregion_for_end.i.i.7

pregion_for_end.i.i.7:                            ; preds = %pregion_for_end.i.i.7.loopexit, %vector.body116
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #0

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
!5 = !{i32 1, i32 0, i32 0}
!6 = !{!"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"int", !"int"}
!8 = !{!"float*", !"int", !"int"}
!9 = !{!"", !"", !""}
!10 = !{!"A", !"k", !"n"}
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
