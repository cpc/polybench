; ModuleID = './FL/PHDIPMJLMGCAKHKEGGDOKNDBIPHELLOOPBGIA/mm2_kernel2/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_mm2_kernel2(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, i32 %3, i32 %4, i32 %5, i32 %6, float %7, float %8, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %9, i64 %10, i64 %11, i64 %12) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %10, 5
  %mul3.i.i = shl i64 %11, 3
  %cmp32.i = icmp sgt i32 %4, 0
  %14 = sext i32 %6 to i64
  %wide.trip.count.i = zext i32 %4 to i64
  br i1 %cmp32.i, label %pregion_for_entry.pregion_for_init.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.preheader

pregion_for_entry.pregion_for_init.i.preheader:   ; preds = %13
  %conv.i = trunc i64 %mul.i.i to i32
  %15 = trunc i64 %mul.i.i to i32
  %conv.i.1 = or i32 %15, 1
  %16 = trunc i64 %mul.i.i to i32
  %conv.i.2 = or i32 %16, 2
  %17 = trunc i64 %mul.i.i to i32
  %conv.i.3 = or i32 %17, 3
  %18 = trunc i64 %mul.i.i to i32
  %conv.i.4 = or i32 %18, 4
  %19 = trunc i64 %mul.i.i to i32
  %conv.i.5 = or i32 %19, 5
  %20 = trunc i64 %mul.i.i to i32
  %conv.i.6 = or i32 %20, 6
  %21 = trunc i64 %mul.i.i to i32
  %conv.i.7 = or i32 %21, 7
  %22 = trunc i64 %mul.i.i to i32
  %conv.i.8 = or i32 %22, 8
  %23 = trunc i64 %mul.i.i to i32
  %conv.i.9 = or i32 %23, 9
  %24 = trunc i64 %mul.i.i to i32
  %conv.i.10 = or i32 %24, 10
  %25 = trunc i64 %mul.i.i to i32
  %conv.i.11 = or i32 %25, 11
  %26 = trunc i64 %mul.i.i to i32
  %conv.i.12 = or i32 %26, 12
  %27 = trunc i64 %mul.i.i to i32
  %conv.i.13 = or i32 %27, 13
  %28 = trunc i64 %mul.i.i to i32
  %conv.i.14 = or i32 %28, 14
  %29 = trunc i64 %mul.i.i to i32
  %conv.i.15 = or i32 %29, 15
  %30 = trunc i64 %mul.i.i to i32
  %conv.i.16 = or i32 %30, 16
  %31 = trunc i64 %mul.i.i to i32
  %conv.i.17 = or i32 %31, 17
  %32 = trunc i64 %mul.i.i to i32
  %conv.i.18 = or i32 %32, 18
  %33 = trunc i64 %mul.i.i to i32
  %conv.i.19 = or i32 %33, 19
  %34 = trunc i64 %mul.i.i to i32
  %conv.i.20 = or i32 %34, 20
  %35 = trunc i64 %mul.i.i to i32
  %conv.i.21 = or i32 %35, 21
  %36 = trunc i64 %mul.i.i to i32
  %conv.i.22 = or i32 %36, 22
  %37 = trunc i64 %mul.i.i to i32
  %conv.i.23 = or i32 %37, 23
  %38 = trunc i64 %mul.i.i to i32
  %conv.i.24 = or i32 %38, 24
  %39 = trunc i64 %mul.i.i to i32
  %conv.i.25 = or i32 %39, 25
  %40 = trunc i64 %mul.i.i to i32
  %conv.i.26 = or i32 %40, 26
  %41 = trunc i64 %mul.i.i to i32
  %conv.i.27 = or i32 %41, 27
  %42 = trunc i64 %mul.i.i to i32
  %conv.i.28 = or i32 %42, 28
  %43 = trunc i64 %mul.i.i to i32
  %conv.i.29 = or i32 %43, 29
  %44 = trunc i64 %mul.i.i to i32
  %conv.i.30 = or i32 %44, 30
  %45 = trunc i64 %mul.i.i to i32
  %conv.i.31 = or i32 %45, 31
  %ident.check = icmp ne i32 %6, 1
  %46 = trunc i64 %11 to i32
  %47 = shl i32 %46, 3
  %48 = add i32 %47, %conv.i
  %49 = icmp eq i32 %48, 2147483640
  %50 = or i1 %ident.check, %49
  %51 = add i32 %47, %conv.i
  %52 = or i32 %51, 2
  %53 = icmp sgt i32 %52, 2147483640
  %54 = or i1 %50, %53
  %55 = add i32 %47, %conv.i
  %56 = or i32 %55, 3
  %57 = icmp sgt i32 %56, 2147483640
  %58 = or i1 %54, %57
  %59 = add i32 %47, %conv.i
  %60 = or i32 %59, 4
  %61 = icmp sgt i32 %60, 2147483640
  %62 = or i1 %58, %61
  %63 = add i32 %47, %conv.i
  %64 = or i32 %63, 5
  %65 = icmp sgt i32 %64, 2147483640
  %66 = or i1 %62, %65
  %67 = add i32 %47, %conv.i
  %68 = or i32 %67, 6
  %69 = icmp sgt i32 %68, 2147483640
  %70 = or i1 %66, %69
  %71 = add i32 %47, %conv.i
  %72 = or i32 %71, 7
  %73 = icmp sgt i32 %72, 2147483640
  %74 = or i1 %70, %73
  %75 = add i32 %47, %conv.i
  %76 = add i32 %75, 9
  %77 = add i32 %75, 16
  %78 = icmp slt i32 %77, %76
  %79 = or i1 %74, %78
  %80 = add i32 %47, %conv.i
  %81 = add i32 %80, 10
  %82 = add i32 %80, 17
  %83 = icmp slt i32 %82, %81
  %84 = or i1 %79, %83
  %85 = add i32 %47, %conv.i
  %86 = add i32 %85, 11
  %87 = add i32 %85, 18
  %88 = icmp slt i32 %87, %86
  %89 = or i1 %84, %88
  %90 = add i32 %47, %conv.i
  %91 = add i32 %90, 12
  %92 = add i32 %90, 19
  %93 = icmp slt i32 %92, %91
  %94 = or i1 %89, %93
  %95 = add i32 %47, %conv.i
  %96 = add i32 %95, 13
  %97 = add i32 %95, 20
  %98 = icmp slt i32 %97, %96
  %99 = or i1 %94, %98
  %100 = add i32 %47, %conv.i
  %101 = add i32 %100, 14
  %102 = add i32 %100, 21
  %103 = icmp slt i32 %102, %101
  %104 = or i1 %99, %103
  %105 = add i32 %47, %conv.i
  %106 = add i32 %105, 15
  %107 = add i32 %105, 22
  %108 = icmp slt i32 %107, %106
  %109 = or i1 %104, %108
  %110 = add i32 %47, %conv.i
  %111 = add i32 %110, 17
  %112 = add i32 %110, 24
  %113 = icmp slt i32 %112, %111
  %114 = or i1 %109, %113
  %115 = add i32 %47, %conv.i
  %116 = add i32 %115, 18
  %117 = add i32 %115, 25
  %118 = icmp slt i32 %117, %116
  %119 = or i1 %114, %118
  %120 = add i32 %47, %conv.i
  %121 = add i32 %120, 19
  %122 = add i32 %120, 26
  %123 = icmp slt i32 %122, %121
  %124 = or i1 %119, %123
  %125 = add i32 %47, %conv.i
  %126 = add i32 %125, 20
  %127 = add i32 %125, 27
  %128 = icmp slt i32 %127, %126
  %129 = or i1 %124, %128
  %130 = add i32 %47, %conv.i
  %131 = add i32 %130, 21
  %132 = add i32 %130, 28
  %133 = icmp slt i32 %132, %131
  %134 = or i1 %129, %133
  %135 = add i32 %47, %conv.i
  %136 = add i32 %135, 22
  %137 = add i32 %135, 29
  %138 = icmp slt i32 %137, %136
  %139 = or i1 %134, %138
  %140 = add i32 %47, %conv.i
  %141 = add i32 %140, 23
  %142 = add i32 %140, 30
  %143 = icmp slt i32 %142, %141
  %144 = or i1 %139, %143
  %145 = add i32 %47, %conv.i
  %146 = add i32 %145, 25
  %147 = add i32 %145, 32
  %148 = icmp slt i32 %147, %146
  %149 = or i1 %144, %148
  %150 = add i32 %47, %conv.i
  %151 = add i32 %150, 26
  %152 = add i32 %150, 33
  %153 = icmp slt i32 %152, %151
  %154 = or i1 %149, %153
  %155 = add i32 %47, %conv.i
  %156 = add i32 %155, 27
  %157 = add i32 %155, 34
  %158 = icmp slt i32 %157, %156
  %159 = or i1 %154, %158
  %160 = add i32 %47, %conv.i
  %161 = add i32 %160, 28
  %162 = add i32 %160, 35
  %163 = icmp slt i32 %162, %161
  %164 = or i1 %159, %163
  %165 = add i32 %47, %conv.i
  %166 = add i32 %165, 29
  %167 = add i32 %165, 36
  %168 = icmp slt i32 %167, %166
  %169 = or i1 %164, %168
  %170 = add i32 %47, %conv.i
  %171 = add i32 %170, 30
  %172 = add i32 %170, 37
  %173 = icmp slt i32 %172, %171
  %174 = or i1 %169, %173
  %175 = add i32 %47, %conv.i
  %176 = add i32 %175, 31
  %177 = add i32 %175, 38
  %178 = icmp slt i32 %177, %176
  %179 = or i1 %174, %178
  br i1 %179, label %pregion_for_entry.pregion_for_init.i.preheader164, label %vector.ph

pregion_for_entry.pregion_for_init.i.preheader164: ; preds = %pregion_for_entry.pregion_for_init.i.preheader
  br label %pregion_for_entry.pregion_for_init.i

vector.ph:                                        ; preds = %pregion_for_entry.pregion_for_init.i.preheader
  %broadcast.splatinsert = insertelement <8 x float> undef, float %8, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %180 = trunc i64 %mul3.i.i to i32
  %181 = mul nsw i32 %180, %6
  %182 = add nsw i32 %181, %conv.i
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %2, i64 %183
  %185 = bitcast float* %184 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %185, align 4, !tbaa !12, !llvm.access.group !16
  %186 = fmul <8 x float> %wide.load, %broadcast.splat
  %187 = bitcast float* %184 to <8 x float>*
  store <8 x float> %186, <8 x float>* %187, align 4, !tbaa !12, !llvm.access.group !16
  %188 = add nsw i32 %181, %conv.i.1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %2, i64 %189
  %191 = bitcast float* %190 to <8 x float>*
  %wide.load114 = load <8 x float>, <8 x float>* %191, align 4, !tbaa !12, !llvm.access.group !16
  %192 = fmul <8 x float> %wide.load114, %broadcast.splat
  %193 = bitcast float* %190 to <8 x float>*
  store <8 x float> %192, <8 x float>* %193, align 4, !tbaa !12, !llvm.access.group !16
  %194 = add nsw i32 %181, %conv.i.2
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %2, i64 %195
  %197 = bitcast float* %196 to <8 x float>*
  %wide.load115 = load <8 x float>, <8 x float>* %197, align 4, !tbaa !12, !llvm.access.group !16
  %198 = fmul <8 x float> %wide.load115, %broadcast.splat
  %199 = bitcast float* %196 to <8 x float>*
  store <8 x float> %198, <8 x float>* %199, align 4, !tbaa !12, !llvm.access.group !16
  %200 = add nsw i32 %181, %conv.i.3
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %2, i64 %201
  %203 = bitcast float* %202 to <8 x float>*
  %wide.load116 = load <8 x float>, <8 x float>* %203, align 4, !tbaa !12, !llvm.access.group !16
  %204 = fmul <8 x float> %wide.load116, %broadcast.splat
  %205 = bitcast float* %202 to <8 x float>*
  store <8 x float> %204, <8 x float>* %205, align 4, !tbaa !12, !llvm.access.group !16
  %206 = add nsw i32 %181, %conv.i.4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %2, i64 %207
  %209 = bitcast float* %208 to <8 x float>*
  %wide.load117 = load <8 x float>, <8 x float>* %209, align 4, !tbaa !12, !llvm.access.group !16
  %210 = fmul <8 x float> %wide.load117, %broadcast.splat
  %211 = bitcast float* %208 to <8 x float>*
  store <8 x float> %210, <8 x float>* %211, align 4, !tbaa !12, !llvm.access.group !16
  %212 = add nsw i32 %181, %conv.i.5
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %2, i64 %213
  %215 = bitcast float* %214 to <8 x float>*
  %wide.load118 = load <8 x float>, <8 x float>* %215, align 4, !tbaa !12, !llvm.access.group !16
  %216 = fmul <8 x float> %wide.load118, %broadcast.splat
  %217 = bitcast float* %214 to <8 x float>*
  store <8 x float> %216, <8 x float>* %217, align 4, !tbaa !12, !llvm.access.group !16
  %218 = add nsw i32 %181, %conv.i.6
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %2, i64 %219
  %221 = bitcast float* %220 to <8 x float>*
  %wide.load119 = load <8 x float>, <8 x float>* %221, align 4, !tbaa !12, !llvm.access.group !16
  %222 = fmul <8 x float> %wide.load119, %broadcast.splat
  %223 = bitcast float* %220 to <8 x float>*
  store <8 x float> %222, <8 x float>* %223, align 4, !tbaa !12, !llvm.access.group !16
  %224 = add nsw i32 %181, %conv.i.7
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %2, i64 %225
  %227 = bitcast float* %226 to <8 x float>*
  %wide.load120 = load <8 x float>, <8 x float>* %227, align 4, !tbaa !12, !llvm.access.group !16
  %228 = fmul <8 x float> %wide.load120, %broadcast.splat
  %229 = bitcast float* %226 to <8 x float>*
  store <8 x float> %228, <8 x float>* %229, align 4, !tbaa !12, !llvm.access.group !16
  %230 = add nsw i32 %181, %conv.i.8
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %2, i64 %231
  %233 = bitcast float* %232 to <8 x float>*
  %wide.load121 = load <8 x float>, <8 x float>* %233, align 4, !tbaa !12, !llvm.access.group !16
  %234 = fmul <8 x float> %wide.load121, %broadcast.splat
  %235 = bitcast float* %232 to <8 x float>*
  store <8 x float> %234, <8 x float>* %235, align 4, !tbaa !12, !llvm.access.group !16
  %236 = add nsw i32 %181, %conv.i.9
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %2, i64 %237
  %239 = bitcast float* %238 to <8 x float>*
  %wide.load122 = load <8 x float>, <8 x float>* %239, align 4, !tbaa !12, !llvm.access.group !16
  %240 = fmul <8 x float> %wide.load122, %broadcast.splat
  %241 = bitcast float* %238 to <8 x float>*
  store <8 x float> %240, <8 x float>* %241, align 4, !tbaa !12, !llvm.access.group !16
  %242 = add nsw i32 %181, %conv.i.10
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %2, i64 %243
  %245 = bitcast float* %244 to <8 x float>*
  %wide.load123 = load <8 x float>, <8 x float>* %245, align 4, !tbaa !12, !llvm.access.group !16
  %246 = fmul <8 x float> %wide.load123, %broadcast.splat
  %247 = bitcast float* %244 to <8 x float>*
  store <8 x float> %246, <8 x float>* %247, align 4, !tbaa !12, !llvm.access.group !16
  %248 = add nsw i32 %181, %conv.i.11
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds float, float* %2, i64 %249
  %251 = bitcast float* %250 to <8 x float>*
  %wide.load124 = load <8 x float>, <8 x float>* %251, align 4, !tbaa !12, !llvm.access.group !16
  %252 = fmul <8 x float> %wide.load124, %broadcast.splat
  %253 = bitcast float* %250 to <8 x float>*
  store <8 x float> %252, <8 x float>* %253, align 4, !tbaa !12, !llvm.access.group !16
  %254 = add nsw i32 %181, %conv.i.12
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %2, i64 %255
  %257 = bitcast float* %256 to <8 x float>*
  %wide.load125 = load <8 x float>, <8 x float>* %257, align 4, !tbaa !12, !llvm.access.group !16
  %258 = fmul <8 x float> %wide.load125, %broadcast.splat
  %259 = bitcast float* %256 to <8 x float>*
  store <8 x float> %258, <8 x float>* %259, align 4, !tbaa !12, !llvm.access.group !16
  %260 = add nsw i32 %181, %conv.i.13
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %2, i64 %261
  %263 = bitcast float* %262 to <8 x float>*
  %wide.load126 = load <8 x float>, <8 x float>* %263, align 4, !tbaa !12, !llvm.access.group !16
  %264 = fmul <8 x float> %wide.load126, %broadcast.splat
  %265 = bitcast float* %262 to <8 x float>*
  store <8 x float> %264, <8 x float>* %265, align 4, !tbaa !12, !llvm.access.group !16
  %266 = add nsw i32 %181, %conv.i.14
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %2, i64 %267
  %269 = bitcast float* %268 to <8 x float>*
  %wide.load127 = load <8 x float>, <8 x float>* %269, align 4, !tbaa !12, !llvm.access.group !16
  %270 = fmul <8 x float> %wide.load127, %broadcast.splat
  %271 = bitcast float* %268 to <8 x float>*
  store <8 x float> %270, <8 x float>* %271, align 4, !tbaa !12, !llvm.access.group !16
  %272 = add nsw i32 %181, %conv.i.15
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float* %2, i64 %273
  %275 = bitcast float* %274 to <8 x float>*
  %wide.load128 = load <8 x float>, <8 x float>* %275, align 4, !tbaa !12, !llvm.access.group !16
  %276 = fmul <8 x float> %wide.load128, %broadcast.splat
  %277 = bitcast float* %274 to <8 x float>*
  store <8 x float> %276, <8 x float>* %277, align 4, !tbaa !12, !llvm.access.group !16
  %278 = add nsw i32 %181, %conv.i.16
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %2, i64 %279
  %281 = bitcast float* %280 to <8 x float>*
  %wide.load129 = load <8 x float>, <8 x float>* %281, align 4, !tbaa !12, !llvm.access.group !16
  %282 = fmul <8 x float> %wide.load129, %broadcast.splat
  %283 = bitcast float* %280 to <8 x float>*
  store <8 x float> %282, <8 x float>* %283, align 4, !tbaa !12, !llvm.access.group !16
  %284 = add nsw i32 %181, %conv.i.17
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds float, float* %2, i64 %285
  %287 = bitcast float* %286 to <8 x float>*
  %wide.load130 = load <8 x float>, <8 x float>* %287, align 4, !tbaa !12, !llvm.access.group !16
  %288 = fmul <8 x float> %wide.load130, %broadcast.splat
  %289 = bitcast float* %286 to <8 x float>*
  store <8 x float> %288, <8 x float>* %289, align 4, !tbaa !12, !llvm.access.group !16
  %290 = add nsw i32 %181, %conv.i.18
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, float* %2, i64 %291
  %293 = bitcast float* %292 to <8 x float>*
  %wide.load131 = load <8 x float>, <8 x float>* %293, align 4, !tbaa !12, !llvm.access.group !16
  %294 = fmul <8 x float> %wide.load131, %broadcast.splat
  %295 = bitcast float* %292 to <8 x float>*
  store <8 x float> %294, <8 x float>* %295, align 4, !tbaa !12, !llvm.access.group !16
  %296 = add nsw i32 %181, %conv.i.19
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds float, float* %2, i64 %297
  %299 = bitcast float* %298 to <8 x float>*
  %wide.load132 = load <8 x float>, <8 x float>* %299, align 4, !tbaa !12, !llvm.access.group !16
  %300 = fmul <8 x float> %wide.load132, %broadcast.splat
  %301 = bitcast float* %298 to <8 x float>*
  store <8 x float> %300, <8 x float>* %301, align 4, !tbaa !12, !llvm.access.group !16
  %302 = add nsw i32 %181, %conv.i.20
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %2, i64 %303
  %305 = bitcast float* %304 to <8 x float>*
  %wide.load133 = load <8 x float>, <8 x float>* %305, align 4, !tbaa !12, !llvm.access.group !16
  %306 = fmul <8 x float> %wide.load133, %broadcast.splat
  %307 = bitcast float* %304 to <8 x float>*
  store <8 x float> %306, <8 x float>* %307, align 4, !tbaa !12, !llvm.access.group !16
  %308 = add nsw i32 %181, %conv.i.21
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %2, i64 %309
  %311 = bitcast float* %310 to <8 x float>*
  %wide.load134 = load <8 x float>, <8 x float>* %311, align 4, !tbaa !12, !llvm.access.group !16
  %312 = fmul <8 x float> %wide.load134, %broadcast.splat
  %313 = bitcast float* %310 to <8 x float>*
  store <8 x float> %312, <8 x float>* %313, align 4, !tbaa !12, !llvm.access.group !16
  %314 = add nsw i32 %181, %conv.i.22
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds float, float* %2, i64 %315
  %317 = bitcast float* %316 to <8 x float>*
  %wide.load135 = load <8 x float>, <8 x float>* %317, align 4, !tbaa !12, !llvm.access.group !16
  %318 = fmul <8 x float> %wide.load135, %broadcast.splat
  %319 = bitcast float* %316 to <8 x float>*
  store <8 x float> %318, <8 x float>* %319, align 4, !tbaa !12, !llvm.access.group !16
  %320 = add nsw i32 %181, %conv.i.23
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds float, float* %2, i64 %321
  %323 = bitcast float* %322 to <8 x float>*
  %wide.load136 = load <8 x float>, <8 x float>* %323, align 4, !tbaa !12, !llvm.access.group !16
  %324 = fmul <8 x float> %wide.load136, %broadcast.splat
  %325 = bitcast float* %322 to <8 x float>*
  store <8 x float> %324, <8 x float>* %325, align 4, !tbaa !12, !llvm.access.group !16
  %326 = add nsw i32 %181, %conv.i.24
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %2, i64 %327
  %329 = bitcast float* %328 to <8 x float>*
  %wide.load137 = load <8 x float>, <8 x float>* %329, align 4, !tbaa !12, !llvm.access.group !16
  %330 = fmul <8 x float> %wide.load137, %broadcast.splat
  %331 = bitcast float* %328 to <8 x float>*
  store <8 x float> %330, <8 x float>* %331, align 4, !tbaa !12, !llvm.access.group !16
  %332 = add nsw i32 %181, %conv.i.25
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds float, float* %2, i64 %333
  %335 = bitcast float* %334 to <8 x float>*
  %wide.load138 = load <8 x float>, <8 x float>* %335, align 4, !tbaa !12, !llvm.access.group !16
  %336 = fmul <8 x float> %wide.load138, %broadcast.splat
  %337 = bitcast float* %334 to <8 x float>*
  store <8 x float> %336, <8 x float>* %337, align 4, !tbaa !12, !llvm.access.group !16
  %338 = add nsw i32 %181, %conv.i.26
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds float, float* %2, i64 %339
  %341 = bitcast float* %340 to <8 x float>*
  %wide.load139 = load <8 x float>, <8 x float>* %341, align 4, !tbaa !12, !llvm.access.group !16
  %342 = fmul <8 x float> %wide.load139, %broadcast.splat
  %343 = bitcast float* %340 to <8 x float>*
  store <8 x float> %342, <8 x float>* %343, align 4, !tbaa !12, !llvm.access.group !16
  %344 = add nsw i32 %181, %conv.i.27
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float, float* %2, i64 %345
  %347 = bitcast float* %346 to <8 x float>*
  %wide.load140 = load <8 x float>, <8 x float>* %347, align 4, !tbaa !12, !llvm.access.group !16
  %348 = fmul <8 x float> %wide.load140, %broadcast.splat
  %349 = bitcast float* %346 to <8 x float>*
  store <8 x float> %348, <8 x float>* %349, align 4, !tbaa !12, !llvm.access.group !16
  %350 = add nsw i32 %181, %conv.i.28
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds float, float* %2, i64 %351
  %353 = bitcast float* %352 to <8 x float>*
  %wide.load141 = load <8 x float>, <8 x float>* %353, align 4, !tbaa !12, !llvm.access.group !16
  %354 = fmul <8 x float> %wide.load141, %broadcast.splat
  %355 = bitcast float* %352 to <8 x float>*
  store <8 x float> %354, <8 x float>* %355, align 4, !tbaa !12, !llvm.access.group !16
  %356 = add nsw i32 %181, %conv.i.29
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds float, float* %2, i64 %357
  %359 = bitcast float* %358 to <8 x float>*
  %wide.load142 = load <8 x float>, <8 x float>* %359, align 4, !tbaa !12, !llvm.access.group !16
  %360 = fmul <8 x float> %wide.load142, %broadcast.splat
  %361 = bitcast float* %358 to <8 x float>*
  store <8 x float> %360, <8 x float>* %361, align 4, !tbaa !12, !llvm.access.group !16
  %362 = add nsw i32 %181, %conv.i.30
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float* %2, i64 %363
  %365 = bitcast float* %364 to <8 x float>*
  %wide.load143 = load <8 x float>, <8 x float>* %365, align 4, !tbaa !12, !llvm.access.group !16
  %366 = fmul <8 x float> %wide.load143, %broadcast.splat
  %367 = bitcast float* %364 to <8 x float>*
  store <8 x float> %366, <8 x float>* %367, align 4, !tbaa !12, !llvm.access.group !16
  %368 = add nsw i32 %181, %conv.i.31
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds float, float* %2, i64 %369
  %371 = bitcast float* %370 to <8 x float>*
  %wide.load144 = load <8 x float>, <8 x float>* %371, align 4, !tbaa !12, !llvm.access.group !16
  %372 = fmul <8 x float> %wide.load144, %broadcast.splat
  %373 = bitcast float* %370 to <8 x float>*
  store <8 x float> %372, <8 x float>* %373, align 4, !tbaa !12, !llvm.access.group !16
  br label %mm2_kernel2.exit

pregion_for_entry.pregion_for_init.i.us.preheader: ; preds = %13
  %conv2.i.us = trunc i64 %mul3.i.i to i32
  %mul.i.us = mul nsw i32 %conv2.i.us, %6
  %mul5.i.us = mul nsw i32 %conv2.i.us, %4
  %374 = sext i32 %mul5.i.us to i64
  br label %pregion_for_entry.entry.i.us.us

pregion_for_entry.entry.i.us.us:                  ; preds = %for.end.r_exit.i.loopexit.us.us.1163, %pregion_for_entry.pregion_for_init.i.us.preheader
  %_local_id_x.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.us.preheader ], [ %581, %for.end.r_exit.i.loopexit.us.us.1163 ]
  %add1.i.i.us.us = add nuw nsw i64 %_local_id_x.0.us.us, %mul.i.i
  %conv.i.us.us = trunc i64 %add1.i.i.us.us to i32
  %add.i.us.us = add nsw i32 %mul.i.us, %conv.i.us.us
  %idxprom.i.us.us = sext i32 %add.i.us.us to i64
  %arrayidx.i.us.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us
  %375 = load float, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us = fmul float %375, %8
  store float %mul3.i.us.us, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us = shl i64 %add1.i.i.us.us, 32
  %376 = ashr exact i64 %sext.i.us.us, 32
  br label %for.body.i.us.us

for.end.r_exit.i.loopexit.us.us:                  ; preds = %for.body.i.us.us
  %377 = or i64 %_local_id_x.0.us.us, 1
  %add1.i.i.us.us.1149 = add nuw nsw i64 %377, %mul.i.i
  %conv.i.us.us.1150 = trunc i64 %add1.i.i.us.us.1149 to i32
  %add.i.us.us.1151 = add nsw i32 %mul.i.us, %conv.i.us.us.1150
  %idxprom.i.us.us.1152 = sext i32 %add.i.us.us.1151 to i64
  %arrayidx.i.us.us.1153 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.1152
  %378 = load float, float* %arrayidx.i.us.us.1153, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.1154 = fmul float %378, %8
  store float %mul3.i.us.us.1154, float* %arrayidx.i.us.us.1153, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1155 = shl i64 %add1.i.i.us.us.1149, 32
  %379 = ashr exact i64 %sext.i.us.us.1155, 32
  br label %for.body.i.us.us.1162

for.body.i.us.us:                                 ; preds = %for.body.i.us.us, %pregion_for_entry.entry.i.us.us
  %indvars.iv.next.i2.us.us = phi i64 [ %indvars.iv.next.i.us.us, %for.body.i.us.us ], [ 0, %pregion_for_entry.entry.i.us.us ]
  %380 = phi float [ %386, %for.body.i.us.us ], [ %mul3.i.us.us, %pregion_for_entry.entry.i.us.us ]
  %381 = add nsw i64 %indvars.iv.next.i2.us.us, %374
  %arrayidx8.i.us.us = getelementptr inbounds float, float* %0, i64 %381
  %382 = load float, float* %arrayidx8.i.us.us, align 4, !tbaa !12
  %383 = mul nsw i64 %indvars.iv.next.i2.us.us, %14
  %384 = add nsw i64 %383, %376
  %arrayidx12.i.us.us = getelementptr inbounds float, float* %1, i64 %384
  %385 = load float, float* %arrayidx12.i.us.us, align 4, !tbaa !12
  %386 = tail call float @llvm.fmuladd.f32(float %382, float %385, float %380) #2
  store float %386, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.next.i2.us.us, 1
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %for.end.r_exit.i.loopexit.us.us, label %for.body.i.us.us, !llvm.loop !19

pregion_for_end.i.us-lcssa.us.us:                 ; preds = %for.end.r_exit.i.loopexit.us.us.1163
  %387 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.1 = or i32 %387, 1
  %mul.i.us.1 = mul nsw i32 %conv2.i.us.1, %6
  %mul5.i.us.1 = mul nsw i32 %conv2.i.us.1, %4
  %388 = sext i32 %mul5.i.us.1 to i64
  br label %pregion_for_entry.entry.i.us.us.1

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_entry.pregion_for_init.i, %pregion_for_entry.pregion_for_init.i.preheader164
  %_local_id_y.0 = phi i64 [ %421, %pregion_for_entry.pregion_for_init.i ], [ 0, %pregion_for_entry.pregion_for_init.i.preheader164 ]
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %mul.i = mul nsw i32 %conv2.i, %6
  %add.i = add nsw i32 %mul.i, %conv.i
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %2, i64 %idxprom.i
  %389 = load float, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i = fmul float %389, %8
  store float %mul3.i, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.1 = add nsw i32 %mul.i, %conv.i.1
  %idxprom.i.1 = sext i32 %add.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.1
  %390 = load float, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.1 = fmul float %390, %8
  store float %mul3.i.1, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.2 = add nsw i32 %mul.i, %conv.i.2
  %idxprom.i.2 = sext i32 %add.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.2
  %391 = load float, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.2 = fmul float %391, %8
  store float %mul3.i.2, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.3 = add nsw i32 %mul.i, %conv.i.3
  %idxprom.i.3 = sext i32 %add.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.3
  %392 = load float, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.3 = fmul float %392, %8
  store float %mul3.i.3, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.4 = add nsw i32 %mul.i, %conv.i.4
  %idxprom.i.4 = sext i32 %add.i.4 to i64
  %arrayidx.i.4 = getelementptr inbounds float, float* %2, i64 %idxprom.i.4
  %393 = load float, float* %arrayidx.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.4 = fmul float %393, %8
  store float %mul3.i.4, float* %arrayidx.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.5 = add nsw i32 %mul.i, %conv.i.5
  %idxprom.i.5 = sext i32 %add.i.5 to i64
  %arrayidx.i.5 = getelementptr inbounds float, float* %2, i64 %idxprom.i.5
  %394 = load float, float* %arrayidx.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.5 = fmul float %394, %8
  store float %mul3.i.5, float* %arrayidx.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.6 = add nsw i32 %mul.i, %conv.i.6
  %idxprom.i.6 = sext i32 %add.i.6 to i64
  %arrayidx.i.6 = getelementptr inbounds float, float* %2, i64 %idxprom.i.6
  %395 = load float, float* %arrayidx.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.6 = fmul float %395, %8
  store float %mul3.i.6, float* %arrayidx.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.7 = add nsw i32 %mul.i, %conv.i.7
  %idxprom.i.7 = sext i32 %add.i.7 to i64
  %arrayidx.i.7 = getelementptr inbounds float, float* %2, i64 %idxprom.i.7
  %396 = load float, float* %arrayidx.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.7 = fmul float %396, %8
  store float %mul3.i.7, float* %arrayidx.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.8 = add nsw i32 %mul.i, %conv.i.8
  %idxprom.i.8 = sext i32 %add.i.8 to i64
  %arrayidx.i.8 = getelementptr inbounds float, float* %2, i64 %idxprom.i.8
  %397 = load float, float* %arrayidx.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.8 = fmul float %397, %8
  store float %mul3.i.8, float* %arrayidx.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.9 = add nsw i32 %mul.i, %conv.i.9
  %idxprom.i.9 = sext i32 %add.i.9 to i64
  %arrayidx.i.9 = getelementptr inbounds float, float* %2, i64 %idxprom.i.9
  %398 = load float, float* %arrayidx.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.9 = fmul float %398, %8
  store float %mul3.i.9, float* %arrayidx.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.10 = add nsw i32 %mul.i, %conv.i.10
  %idxprom.i.10 = sext i32 %add.i.10 to i64
  %arrayidx.i.10 = getelementptr inbounds float, float* %2, i64 %idxprom.i.10
  %399 = load float, float* %arrayidx.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.10 = fmul float %399, %8
  store float %mul3.i.10, float* %arrayidx.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.11 = add nsw i32 %mul.i, %conv.i.11
  %idxprom.i.11 = sext i32 %add.i.11 to i64
  %arrayidx.i.11 = getelementptr inbounds float, float* %2, i64 %idxprom.i.11
  %400 = load float, float* %arrayidx.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.11 = fmul float %400, %8
  store float %mul3.i.11, float* %arrayidx.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.12 = add nsw i32 %mul.i, %conv.i.12
  %idxprom.i.12 = sext i32 %add.i.12 to i64
  %arrayidx.i.12 = getelementptr inbounds float, float* %2, i64 %idxprom.i.12
  %401 = load float, float* %arrayidx.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.12 = fmul float %401, %8
  store float %mul3.i.12, float* %arrayidx.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.13 = add nsw i32 %mul.i, %conv.i.13
  %idxprom.i.13 = sext i32 %add.i.13 to i64
  %arrayidx.i.13 = getelementptr inbounds float, float* %2, i64 %idxprom.i.13
  %402 = load float, float* %arrayidx.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.13 = fmul float %402, %8
  store float %mul3.i.13, float* %arrayidx.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.14 = add nsw i32 %mul.i, %conv.i.14
  %idxprom.i.14 = sext i32 %add.i.14 to i64
  %arrayidx.i.14 = getelementptr inbounds float, float* %2, i64 %idxprom.i.14
  %403 = load float, float* %arrayidx.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.14 = fmul float %403, %8
  store float %mul3.i.14, float* %arrayidx.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.15 = add nsw i32 %mul.i, %conv.i.15
  %idxprom.i.15 = sext i32 %add.i.15 to i64
  %arrayidx.i.15 = getelementptr inbounds float, float* %2, i64 %idxprom.i.15
  %404 = load float, float* %arrayidx.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.15 = fmul float %404, %8
  store float %mul3.i.15, float* %arrayidx.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.16 = add nsw i32 %mul.i, %conv.i.16
  %idxprom.i.16 = sext i32 %add.i.16 to i64
  %arrayidx.i.16 = getelementptr inbounds float, float* %2, i64 %idxprom.i.16
  %405 = load float, float* %arrayidx.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.16 = fmul float %405, %8
  store float %mul3.i.16, float* %arrayidx.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.17 = add nsw i32 %mul.i, %conv.i.17
  %idxprom.i.17 = sext i32 %add.i.17 to i64
  %arrayidx.i.17 = getelementptr inbounds float, float* %2, i64 %idxprom.i.17
  %406 = load float, float* %arrayidx.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.17 = fmul float %406, %8
  store float %mul3.i.17, float* %arrayidx.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.18 = add nsw i32 %mul.i, %conv.i.18
  %idxprom.i.18 = sext i32 %add.i.18 to i64
  %arrayidx.i.18 = getelementptr inbounds float, float* %2, i64 %idxprom.i.18
  %407 = load float, float* %arrayidx.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.18 = fmul float %407, %8
  store float %mul3.i.18, float* %arrayidx.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.19 = add nsw i32 %mul.i, %conv.i.19
  %idxprom.i.19 = sext i32 %add.i.19 to i64
  %arrayidx.i.19 = getelementptr inbounds float, float* %2, i64 %idxprom.i.19
  %408 = load float, float* %arrayidx.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.19 = fmul float %408, %8
  store float %mul3.i.19, float* %arrayidx.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.20 = add nsw i32 %mul.i, %conv.i.20
  %idxprom.i.20 = sext i32 %add.i.20 to i64
  %arrayidx.i.20 = getelementptr inbounds float, float* %2, i64 %idxprom.i.20
  %409 = load float, float* %arrayidx.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.20 = fmul float %409, %8
  store float %mul3.i.20, float* %arrayidx.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.21 = add nsw i32 %mul.i, %conv.i.21
  %idxprom.i.21 = sext i32 %add.i.21 to i64
  %arrayidx.i.21 = getelementptr inbounds float, float* %2, i64 %idxprom.i.21
  %410 = load float, float* %arrayidx.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.21 = fmul float %410, %8
  store float %mul3.i.21, float* %arrayidx.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.22 = add nsw i32 %mul.i, %conv.i.22
  %idxprom.i.22 = sext i32 %add.i.22 to i64
  %arrayidx.i.22 = getelementptr inbounds float, float* %2, i64 %idxprom.i.22
  %411 = load float, float* %arrayidx.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.22 = fmul float %411, %8
  store float %mul3.i.22, float* %arrayidx.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.23 = add nsw i32 %mul.i, %conv.i.23
  %idxprom.i.23 = sext i32 %add.i.23 to i64
  %arrayidx.i.23 = getelementptr inbounds float, float* %2, i64 %idxprom.i.23
  %412 = load float, float* %arrayidx.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.23 = fmul float %412, %8
  store float %mul3.i.23, float* %arrayidx.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.24 = add nsw i32 %mul.i, %conv.i.24
  %idxprom.i.24 = sext i32 %add.i.24 to i64
  %arrayidx.i.24 = getelementptr inbounds float, float* %2, i64 %idxprom.i.24
  %413 = load float, float* %arrayidx.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.24 = fmul float %413, %8
  store float %mul3.i.24, float* %arrayidx.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.25 = add nsw i32 %mul.i, %conv.i.25
  %idxprom.i.25 = sext i32 %add.i.25 to i64
  %arrayidx.i.25 = getelementptr inbounds float, float* %2, i64 %idxprom.i.25
  %414 = load float, float* %arrayidx.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.25 = fmul float %414, %8
  store float %mul3.i.25, float* %arrayidx.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.26 = add nsw i32 %mul.i, %conv.i.26
  %idxprom.i.26 = sext i32 %add.i.26 to i64
  %arrayidx.i.26 = getelementptr inbounds float, float* %2, i64 %idxprom.i.26
  %415 = load float, float* %arrayidx.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.26 = fmul float %415, %8
  store float %mul3.i.26, float* %arrayidx.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.27 = add nsw i32 %mul.i, %conv.i.27
  %idxprom.i.27 = sext i32 %add.i.27 to i64
  %arrayidx.i.27 = getelementptr inbounds float, float* %2, i64 %idxprom.i.27
  %416 = load float, float* %arrayidx.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.27 = fmul float %416, %8
  store float %mul3.i.27, float* %arrayidx.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.28 = add nsw i32 %mul.i, %conv.i.28
  %idxprom.i.28 = sext i32 %add.i.28 to i64
  %arrayidx.i.28 = getelementptr inbounds float, float* %2, i64 %idxprom.i.28
  %417 = load float, float* %arrayidx.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.28 = fmul float %417, %8
  store float %mul3.i.28, float* %arrayidx.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.29 = add nsw i32 %mul.i, %conv.i.29
  %idxprom.i.29 = sext i32 %add.i.29 to i64
  %arrayidx.i.29 = getelementptr inbounds float, float* %2, i64 %idxprom.i.29
  %418 = load float, float* %arrayidx.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.29 = fmul float %418, %8
  store float %mul3.i.29, float* %arrayidx.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.30 = add nsw i32 %mul.i, %conv.i.30
  %idxprom.i.30 = sext i32 %add.i.30 to i64
  %arrayidx.i.30 = getelementptr inbounds float, float* %2, i64 %idxprom.i.30
  %419 = load float, float* %arrayidx.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.30 = fmul float %419, %8
  store float %mul3.i.30, float* %arrayidx.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.31 = add nsw i32 %mul.i, %conv.i.31
  %idxprom.i.31 = sext i32 %add.i.31 to i64
  %arrayidx.i.31 = getelementptr inbounds float, float* %2, i64 %idxprom.i.31
  %420 = load float, float* %arrayidx.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.31 = fmul float %420, %8
  store float %mul3.i.31, float* %arrayidx.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %421 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond30.not = icmp eq i64 %421, 8
  br i1 %exitcond30.not, label %mm2_kernel2.exit.loopexit165, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !21

mm2_kernel2.exit.loopexit:                        ; preds = %for.end.r_exit.i.loopexit.us.us.7.1
  br label %mm2_kernel2.exit

mm2_kernel2.exit.loopexit165:                     ; preds = %pregion_for_entry.pregion_for_init.i
  br label %mm2_kernel2.exit

mm2_kernel2.exit:                                 ; preds = %mm2_kernel2.exit.loopexit165, %mm2_kernel2.exit.loopexit, %vector.ph
  ret void

pregion_for_entry.entry.i.us.us.1:                ; preds = %for.end.r_exit.i.loopexit.us.us.1.1, %pregion_for_end.i.us-lcssa.us.us
  %_local_id_x.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us ], [ %573, %for.end.r_exit.i.loopexit.us.us.1.1 ]
  %add1.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.0.us.us.1, %mul.i.i
  %conv.i.us.us.1 = trunc i64 %add1.i.i.us.us.1 to i32
  %add.i.us.us.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1
  %idxprom.i.us.us.1 = sext i32 %add.i.us.us.1 to i64
  %arrayidx.i.us.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.1
  %422 = load float, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.1 = fmul float %422, %8
  store float %mul3.i.us.us.1, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1 = shl i64 %add1.i.i.us.us.1, 32
  %423 = ashr exact i64 %sext.i.us.us.1, 32
  br label %for.body.i.us.us.1

for.body.i.us.us.1:                               ; preds = %for.body.i.us.us.1, %pregion_for_entry.entry.i.us.us.1
  %indvars.iv.next.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1, %for.body.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.us.us.1 ]
  %424 = phi float [ %430, %for.body.i.us.us.1 ], [ %mul3.i.us.us.1, %pregion_for_entry.entry.i.us.us.1 ]
  %425 = add nsw i64 %indvars.iv.next.i2.us.us.1, %388
  %arrayidx8.i.us.us.1 = getelementptr inbounds float, float* %0, i64 %425
  %426 = load float, float* %arrayidx8.i.us.us.1, align 4, !tbaa !12
  %427 = mul nsw i64 %indvars.iv.next.i2.us.us.1, %14
  %428 = add nsw i64 %427, %423
  %arrayidx12.i.us.us.1 = getelementptr inbounds float, float* %1, i64 %428
  %429 = load float, float* %arrayidx12.i.us.us.1, align 4, !tbaa !12
  %430 = tail call float @llvm.fmuladd.f32(float %426, float %429, float %424) #2
  store float %430, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1, 1
  %exitcond.not.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1, label %for.end.r_exit.i.loopexit.us.us.1, label %for.body.i.us.us.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.1:                ; preds = %for.body.i.us.us.1
  %431 = or i64 %_local_id_x.0.us.us.1, 1
  %add1.i.i.us.us.1.1 = add nuw nsw i64 %431, %mul.i.i
  %conv.i.us.us.1.1 = trunc i64 %add1.i.i.us.us.1.1 to i32
  %add.i.us.us.1.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1.1
  %idxprom.i.us.us.1.1 = sext i32 %add.i.us.us.1.1 to i64
  %arrayidx.i.us.us.1.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.1.1
  %432 = load float, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.1.1 = fmul float %432, %8
  store float %mul3.i.us.us.1.1, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1.1 = shl i64 %add1.i.i.us.us.1.1, 32
  %433 = ashr exact i64 %sext.i.us.us.1.1, 32
  br label %for.body.i.us.us.1.1

pregion_for_end.i.us-lcssa.us.us.1:               ; preds = %for.end.r_exit.i.loopexit.us.us.1.1
  %434 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.2 = or i32 %434, 2
  %mul.i.us.2 = mul nsw i32 %conv2.i.us.2, %6
  %mul5.i.us.2 = mul nsw i32 %conv2.i.us.2, %4
  %435 = sext i32 %mul5.i.us.2 to i64
  br label %pregion_for_entry.entry.i.us.us.2

pregion_for_entry.entry.i.us.us.2:                ; preds = %for.end.r_exit.i.loopexit.us.us.2.1, %pregion_for_end.i.us-lcssa.us.us.1
  %_local_id_x.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.1 ], [ %565, %for.end.r_exit.i.loopexit.us.us.2.1 ]
  %add1.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.0.us.us.2, %mul.i.i
  %conv.i.us.us.2 = trunc i64 %add1.i.i.us.us.2 to i32
  %add.i.us.us.2 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2
  %idxprom.i.us.us.2 = sext i32 %add.i.us.us.2 to i64
  %arrayidx.i.us.us.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.2
  %436 = load float, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.2 = fmul float %436, %8
  store float %mul3.i.us.us.2, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2 = shl i64 %add1.i.i.us.us.2, 32
  %437 = ashr exact i64 %sext.i.us.us.2, 32
  br label %for.body.i.us.us.2

for.body.i.us.us.2:                               ; preds = %for.body.i.us.us.2, %pregion_for_entry.entry.i.us.us.2
  %indvars.iv.next.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.us.us.2, %for.body.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.us.us.2 ]
  %438 = phi float [ %444, %for.body.i.us.us.2 ], [ %mul3.i.us.us.2, %pregion_for_entry.entry.i.us.us.2 ]
  %439 = add nsw i64 %indvars.iv.next.i2.us.us.2, %435
  %arrayidx8.i.us.us.2 = getelementptr inbounds float, float* %0, i64 %439
  %440 = load float, float* %arrayidx8.i.us.us.2, align 4, !tbaa !12
  %441 = mul nsw i64 %indvars.iv.next.i2.us.us.2, %14
  %442 = add nsw i64 %441, %437
  %arrayidx12.i.us.us.2 = getelementptr inbounds float, float* %1, i64 %442
  %443 = load float, float* %arrayidx12.i.us.us.2, align 4, !tbaa !12
  %444 = tail call float @llvm.fmuladd.f32(float %440, float %443, float %438) #2
  store float %444, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i2.us.us.2, 1
  %exitcond.not.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.us.us.2, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2, label %for.end.r_exit.i.loopexit.us.us.2, label %for.body.i.us.us.2, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.2:                ; preds = %for.body.i.us.us.2
  %445 = or i64 %_local_id_x.0.us.us.2, 1
  %add1.i.i.us.us.2.1 = add nuw nsw i64 %445, %mul.i.i
  %conv.i.us.us.2.1 = trunc i64 %add1.i.i.us.us.2.1 to i32
  %add.i.us.us.2.1 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2.1
  %idxprom.i.us.us.2.1 = sext i32 %add.i.us.us.2.1 to i64
  %arrayidx.i.us.us.2.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.2.1
  %446 = load float, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.2.1 = fmul float %446, %8
  store float %mul3.i.us.us.2.1, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2.1 = shl i64 %add1.i.i.us.us.2.1, 32
  %447 = ashr exact i64 %sext.i.us.us.2.1, 32
  br label %for.body.i.us.us.2.1

pregion_for_end.i.us-lcssa.us.us.2:               ; preds = %for.end.r_exit.i.loopexit.us.us.2.1
  %448 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.3 = or i32 %448, 3
  %mul.i.us.3 = mul nsw i32 %conv2.i.us.3, %6
  %mul5.i.us.3 = mul nsw i32 %conv2.i.us.3, %4
  %449 = sext i32 %mul5.i.us.3 to i64
  br label %pregion_for_entry.entry.i.us.us.3

pregion_for_entry.entry.i.us.us.3:                ; preds = %for.end.r_exit.i.loopexit.us.us.3.1, %pregion_for_end.i.us-lcssa.us.us.2
  %_local_id_x.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.2 ], [ %557, %for.end.r_exit.i.loopexit.us.us.3.1 ]
  %add1.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.0.us.us.3, %mul.i.i
  %conv.i.us.us.3 = trunc i64 %add1.i.i.us.us.3 to i32
  %add.i.us.us.3 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3
  %idxprom.i.us.us.3 = sext i32 %add.i.us.us.3 to i64
  %arrayidx.i.us.us.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.3
  %450 = load float, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.3 = fmul float %450, %8
  store float %mul3.i.us.us.3, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3 = shl i64 %add1.i.i.us.us.3, 32
  %451 = ashr exact i64 %sext.i.us.us.3, 32
  br label %for.body.i.us.us.3

for.body.i.us.us.3:                               ; preds = %for.body.i.us.us.3, %pregion_for_entry.entry.i.us.us.3
  %indvars.iv.next.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.us.us.3, %for.body.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.us.us.3 ]
  %452 = phi float [ %458, %for.body.i.us.us.3 ], [ %mul3.i.us.us.3, %pregion_for_entry.entry.i.us.us.3 ]
  %453 = add nsw i64 %indvars.iv.next.i2.us.us.3, %449
  %arrayidx8.i.us.us.3 = getelementptr inbounds float, float* %0, i64 %453
  %454 = load float, float* %arrayidx8.i.us.us.3, align 4, !tbaa !12
  %455 = mul nsw i64 %indvars.iv.next.i2.us.us.3, %14
  %456 = add nsw i64 %455, %451
  %arrayidx12.i.us.us.3 = getelementptr inbounds float, float* %1, i64 %456
  %457 = load float, float* %arrayidx12.i.us.us.3, align 4, !tbaa !12
  %458 = tail call float @llvm.fmuladd.f32(float %454, float %457, float %452) #2
  store float %458, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i2.us.us.3, 1
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3, label %for.end.r_exit.i.loopexit.us.us.3, label %for.body.i.us.us.3, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.3:                ; preds = %for.body.i.us.us.3
  %459 = or i64 %_local_id_x.0.us.us.3, 1
  %add1.i.i.us.us.3.1 = add nuw nsw i64 %459, %mul.i.i
  %conv.i.us.us.3.1 = trunc i64 %add1.i.i.us.us.3.1 to i32
  %add.i.us.us.3.1 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3.1
  %idxprom.i.us.us.3.1 = sext i32 %add.i.us.us.3.1 to i64
  %arrayidx.i.us.us.3.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.3.1
  %460 = load float, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.3.1 = fmul float %460, %8
  store float %mul3.i.us.us.3.1, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3.1 = shl i64 %add1.i.i.us.us.3.1, 32
  %461 = ashr exact i64 %sext.i.us.us.3.1, 32
  br label %for.body.i.us.us.3.1

pregion_for_end.i.us-lcssa.us.us.3:               ; preds = %for.end.r_exit.i.loopexit.us.us.3.1
  %462 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.4 = or i32 %462, 4
  %mul.i.us.4 = mul nsw i32 %conv2.i.us.4, %6
  %mul5.i.us.4 = mul nsw i32 %conv2.i.us.4, %4
  %463 = sext i32 %mul5.i.us.4 to i64
  br label %pregion_for_entry.entry.i.us.us.4

pregion_for_entry.entry.i.us.us.4:                ; preds = %for.end.r_exit.i.loopexit.us.us.4.1, %pregion_for_end.i.us-lcssa.us.us.3
  %_local_id_x.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.3 ], [ %549, %for.end.r_exit.i.loopexit.us.us.4.1 ]
  %add1.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.0.us.us.4, %mul.i.i
  %conv.i.us.us.4 = trunc i64 %add1.i.i.us.us.4 to i32
  %add.i.us.us.4 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4
  %idxprom.i.us.us.4 = sext i32 %add.i.us.us.4 to i64
  %arrayidx.i.us.us.4 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.4
  %464 = load float, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.4 = fmul float %464, %8
  store float %mul3.i.us.us.4, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4 = shl i64 %add1.i.i.us.us.4, 32
  %465 = ashr exact i64 %sext.i.us.us.4, 32
  br label %for.body.i.us.us.4

for.body.i.us.us.4:                               ; preds = %for.body.i.us.us.4, %pregion_for_entry.entry.i.us.us.4
  %indvars.iv.next.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.us.us.4, %for.body.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.us.us.4 ]
  %466 = phi float [ %472, %for.body.i.us.us.4 ], [ %mul3.i.us.us.4, %pregion_for_entry.entry.i.us.us.4 ]
  %467 = add nsw i64 %indvars.iv.next.i2.us.us.4, %463
  %arrayidx8.i.us.us.4 = getelementptr inbounds float, float* %0, i64 %467
  %468 = load float, float* %arrayidx8.i.us.us.4, align 4, !tbaa !12
  %469 = mul nsw i64 %indvars.iv.next.i2.us.us.4, %14
  %470 = add nsw i64 %469, %465
  %arrayidx12.i.us.us.4 = getelementptr inbounds float, float* %1, i64 %470
  %471 = load float, float* %arrayidx12.i.us.us.4, align 4, !tbaa !12
  %472 = tail call float @llvm.fmuladd.f32(float %468, float %471, float %466) #2
  store float %472, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i2.us.us.4, 1
  %exitcond.not.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.us.us.4, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4, label %for.end.r_exit.i.loopexit.us.us.4, label %for.body.i.us.us.4, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.4:                ; preds = %for.body.i.us.us.4
  %473 = or i64 %_local_id_x.0.us.us.4, 1
  %add1.i.i.us.us.4.1 = add nuw nsw i64 %473, %mul.i.i
  %conv.i.us.us.4.1 = trunc i64 %add1.i.i.us.us.4.1 to i32
  %add.i.us.us.4.1 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4.1
  %idxprom.i.us.us.4.1 = sext i32 %add.i.us.us.4.1 to i64
  %arrayidx.i.us.us.4.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.4.1
  %474 = load float, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.4.1 = fmul float %474, %8
  store float %mul3.i.us.us.4.1, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4.1 = shl i64 %add1.i.i.us.us.4.1, 32
  %475 = ashr exact i64 %sext.i.us.us.4.1, 32
  br label %for.body.i.us.us.4.1

pregion_for_end.i.us-lcssa.us.us.4:               ; preds = %for.end.r_exit.i.loopexit.us.us.4.1
  %476 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.5 = or i32 %476, 5
  %mul.i.us.5 = mul nsw i32 %conv2.i.us.5, %6
  %mul5.i.us.5 = mul nsw i32 %conv2.i.us.5, %4
  %477 = sext i32 %mul5.i.us.5 to i64
  br label %pregion_for_entry.entry.i.us.us.5

pregion_for_entry.entry.i.us.us.5:                ; preds = %for.end.r_exit.i.loopexit.us.us.5.1, %pregion_for_end.i.us-lcssa.us.us.4
  %_local_id_x.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.4 ], [ %541, %for.end.r_exit.i.loopexit.us.us.5.1 ]
  %add1.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.0.us.us.5, %mul.i.i
  %conv.i.us.us.5 = trunc i64 %add1.i.i.us.us.5 to i32
  %add.i.us.us.5 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5
  %idxprom.i.us.us.5 = sext i32 %add.i.us.us.5 to i64
  %arrayidx.i.us.us.5 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.5
  %478 = load float, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.5 = fmul float %478, %8
  store float %mul3.i.us.us.5, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5 = shl i64 %add1.i.i.us.us.5, 32
  %479 = ashr exact i64 %sext.i.us.us.5, 32
  br label %for.body.i.us.us.5

for.body.i.us.us.5:                               ; preds = %for.body.i.us.us.5, %pregion_for_entry.entry.i.us.us.5
  %indvars.iv.next.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.us.us.5, %for.body.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.us.us.5 ]
  %480 = phi float [ %486, %for.body.i.us.us.5 ], [ %mul3.i.us.us.5, %pregion_for_entry.entry.i.us.us.5 ]
  %481 = add nsw i64 %indvars.iv.next.i2.us.us.5, %477
  %arrayidx8.i.us.us.5 = getelementptr inbounds float, float* %0, i64 %481
  %482 = load float, float* %arrayidx8.i.us.us.5, align 4, !tbaa !12
  %483 = mul nsw i64 %indvars.iv.next.i2.us.us.5, %14
  %484 = add nsw i64 %483, %479
  %arrayidx12.i.us.us.5 = getelementptr inbounds float, float* %1, i64 %484
  %485 = load float, float* %arrayidx12.i.us.us.5, align 4, !tbaa !12
  %486 = tail call float @llvm.fmuladd.f32(float %482, float %485, float %480) #2
  store float %486, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i2.us.us.5, 1
  %exitcond.not.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.us.us.5, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5, label %for.end.r_exit.i.loopexit.us.us.5, label %for.body.i.us.us.5, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.5:                ; preds = %for.body.i.us.us.5
  %487 = or i64 %_local_id_x.0.us.us.5, 1
  %add1.i.i.us.us.5.1 = add nuw nsw i64 %487, %mul.i.i
  %conv.i.us.us.5.1 = trunc i64 %add1.i.i.us.us.5.1 to i32
  %add.i.us.us.5.1 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5.1
  %idxprom.i.us.us.5.1 = sext i32 %add.i.us.us.5.1 to i64
  %arrayidx.i.us.us.5.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.5.1
  %488 = load float, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.5.1 = fmul float %488, %8
  store float %mul3.i.us.us.5.1, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5.1 = shl i64 %add1.i.i.us.us.5.1, 32
  %489 = ashr exact i64 %sext.i.us.us.5.1, 32
  br label %for.body.i.us.us.5.1

pregion_for_end.i.us-lcssa.us.us.5:               ; preds = %for.end.r_exit.i.loopexit.us.us.5.1
  %490 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.6 = or i32 %490, 6
  %mul.i.us.6 = mul nsw i32 %conv2.i.us.6, %6
  %mul5.i.us.6 = mul nsw i32 %conv2.i.us.6, %4
  %491 = sext i32 %mul5.i.us.6 to i64
  br label %pregion_for_entry.entry.i.us.us.6

pregion_for_entry.entry.i.us.us.6:                ; preds = %for.end.r_exit.i.loopexit.us.us.6.1, %pregion_for_end.i.us-lcssa.us.us.5
  %_local_id_x.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.5 ], [ %533, %for.end.r_exit.i.loopexit.us.us.6.1 ]
  %add1.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.0.us.us.6, %mul.i.i
  %conv.i.us.us.6 = trunc i64 %add1.i.i.us.us.6 to i32
  %add.i.us.us.6 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6
  %idxprom.i.us.us.6 = sext i32 %add.i.us.us.6 to i64
  %arrayidx.i.us.us.6 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.6
  %492 = load float, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.6 = fmul float %492, %8
  store float %mul3.i.us.us.6, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6 = shl i64 %add1.i.i.us.us.6, 32
  %493 = ashr exact i64 %sext.i.us.us.6, 32
  br label %for.body.i.us.us.6

for.body.i.us.us.6:                               ; preds = %for.body.i.us.us.6, %pregion_for_entry.entry.i.us.us.6
  %indvars.iv.next.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.us.us.6, %for.body.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.us.us.6 ]
  %494 = phi float [ %500, %for.body.i.us.us.6 ], [ %mul3.i.us.us.6, %pregion_for_entry.entry.i.us.us.6 ]
  %495 = add nsw i64 %indvars.iv.next.i2.us.us.6, %491
  %arrayidx8.i.us.us.6 = getelementptr inbounds float, float* %0, i64 %495
  %496 = load float, float* %arrayidx8.i.us.us.6, align 4, !tbaa !12
  %497 = mul nsw i64 %indvars.iv.next.i2.us.us.6, %14
  %498 = add nsw i64 %497, %493
  %arrayidx12.i.us.us.6 = getelementptr inbounds float, float* %1, i64 %498
  %499 = load float, float* %arrayidx12.i.us.us.6, align 4, !tbaa !12
  %500 = tail call float @llvm.fmuladd.f32(float %496, float %499, float %494) #2
  store float %500, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i2.us.us.6, 1
  %exitcond.not.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.us.us.6, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6, label %for.end.r_exit.i.loopexit.us.us.6, label %for.body.i.us.us.6, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.6:                ; preds = %for.body.i.us.us.6
  %501 = or i64 %_local_id_x.0.us.us.6, 1
  %add1.i.i.us.us.6.1 = add nuw nsw i64 %501, %mul.i.i
  %conv.i.us.us.6.1 = trunc i64 %add1.i.i.us.us.6.1 to i32
  %add.i.us.us.6.1 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6.1
  %idxprom.i.us.us.6.1 = sext i32 %add.i.us.us.6.1 to i64
  %arrayidx.i.us.us.6.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.6.1
  %502 = load float, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.6.1 = fmul float %502, %8
  store float %mul3.i.us.us.6.1, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6.1 = shl i64 %add1.i.i.us.us.6.1, 32
  %503 = ashr exact i64 %sext.i.us.us.6.1, 32
  br label %for.body.i.us.us.6.1

pregion_for_end.i.us-lcssa.us.us.6:               ; preds = %for.end.r_exit.i.loopexit.us.us.6.1
  %504 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.7 = or i32 %504, 7
  %mul.i.us.7 = mul nsw i32 %conv2.i.us.7, %6
  %mul5.i.us.7 = mul nsw i32 %conv2.i.us.7, %4
  %505 = sext i32 %mul5.i.us.7 to i64
  br label %pregion_for_entry.entry.i.us.us.7

pregion_for_entry.entry.i.us.us.7:                ; preds = %for.end.r_exit.i.loopexit.us.us.7.1, %pregion_for_end.i.us-lcssa.us.us.6
  %_local_id_x.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.6 ], [ %525, %for.end.r_exit.i.loopexit.us.us.7.1 ]
  %add1.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.0.us.us.7, %mul.i.i
  %conv.i.us.us.7 = trunc i64 %add1.i.i.us.us.7 to i32
  %add.i.us.us.7 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7
  %idxprom.i.us.us.7 = sext i32 %add.i.us.us.7 to i64
  %arrayidx.i.us.us.7 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.7
  %506 = load float, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.7 = fmul float %506, %8
  store float %mul3.i.us.us.7, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7 = shl i64 %add1.i.i.us.us.7, 32
  %507 = ashr exact i64 %sext.i.us.us.7, 32
  br label %for.body.i.us.us.7

for.body.i.us.us.7:                               ; preds = %for.body.i.us.us.7, %pregion_for_entry.entry.i.us.us.7
  %indvars.iv.next.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.us.us.7, %for.body.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.us.us.7 ]
  %508 = phi float [ %514, %for.body.i.us.us.7 ], [ %mul3.i.us.us.7, %pregion_for_entry.entry.i.us.us.7 ]
  %509 = add nsw i64 %indvars.iv.next.i2.us.us.7, %505
  %arrayidx8.i.us.us.7 = getelementptr inbounds float, float* %0, i64 %509
  %510 = load float, float* %arrayidx8.i.us.us.7, align 4, !tbaa !12
  %511 = mul nsw i64 %indvars.iv.next.i2.us.us.7, %14
  %512 = add nsw i64 %511, %507
  %arrayidx12.i.us.us.7 = getelementptr inbounds float, float* %1, i64 %512
  %513 = load float, float* %arrayidx12.i.us.us.7, align 4, !tbaa !12
  %514 = tail call float @llvm.fmuladd.f32(float %510, float %513, float %508) #2
  store float %514, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i2.us.us.7, 1
  %exitcond.not.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.us.us.7, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7, label %for.end.r_exit.i.loopexit.us.us.7, label %for.body.i.us.us.7, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.7:                ; preds = %for.body.i.us.us.7
  %515 = or i64 %_local_id_x.0.us.us.7, 1
  %add1.i.i.us.us.7.1 = add nuw nsw i64 %515, %mul.i.i
  %conv.i.us.us.7.1 = trunc i64 %add1.i.i.us.us.7.1 to i32
  %add.i.us.us.7.1 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7.1
  %idxprom.i.us.us.7.1 = sext i32 %add.i.us.us.7.1 to i64
  %arrayidx.i.us.us.7.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.7.1
  %516 = load float, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.7.1 = fmul float %516, %8
  store float %mul3.i.us.us.7.1, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7.1 = shl i64 %add1.i.i.us.us.7.1, 32
  %517 = ashr exact i64 %sext.i.us.us.7.1, 32
  br label %for.body.i.us.us.7.1

for.body.i.us.us.7.1:                             ; preds = %for.body.i.us.us.7.1, %for.end.r_exit.i.loopexit.us.us.7
  %indvars.iv.next.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.us.us.7.1, %for.body.i.us.us.7.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.7 ]
  %518 = phi float [ %524, %for.body.i.us.us.7.1 ], [ %mul3.i.us.us.7.1, %for.end.r_exit.i.loopexit.us.us.7 ]
  %519 = add nsw i64 %indvars.iv.next.i2.us.us.7.1, %505
  %arrayidx8.i.us.us.7.1 = getelementptr inbounds float, float* %0, i64 %519
  %520 = load float, float* %arrayidx8.i.us.us.7.1, align 4, !tbaa !12
  %521 = mul nsw i64 %indvars.iv.next.i2.us.us.7.1, %14
  %522 = add nsw i64 %521, %517
  %arrayidx12.i.us.us.7.1 = getelementptr inbounds float, float* %1, i64 %522
  %523 = load float, float* %arrayidx12.i.us.us.7.1, align 4, !tbaa !12
  %524 = tail call float @llvm.fmuladd.f32(float %520, float %523, float %518) #2
  store float %524, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.7.1, 1
  %exitcond.not.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.us.us.7.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7.1, label %for.end.r_exit.i.loopexit.us.us.7.1, label %for.body.i.us.us.7.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.7.1:              ; preds = %for.body.i.us.us.7.1
  %525 = add nuw nsw i64 %_local_id_x.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %525, 32
  br i1 %exitcond.7.not.1, label %mm2_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.us.us.7, !llvm.loop !24

for.body.i.us.us.6.1:                             ; preds = %for.body.i.us.us.6.1, %for.end.r_exit.i.loopexit.us.us.6
  %indvars.iv.next.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.us.us.6.1, %for.body.i.us.us.6.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.6 ]
  %526 = phi float [ %532, %for.body.i.us.us.6.1 ], [ %mul3.i.us.us.6.1, %for.end.r_exit.i.loopexit.us.us.6 ]
  %527 = add nsw i64 %indvars.iv.next.i2.us.us.6.1, %491
  %arrayidx8.i.us.us.6.1 = getelementptr inbounds float, float* %0, i64 %527
  %528 = load float, float* %arrayidx8.i.us.us.6.1, align 4, !tbaa !12
  %529 = mul nsw i64 %indvars.iv.next.i2.us.us.6.1, %14
  %530 = add nsw i64 %529, %503
  %arrayidx12.i.us.us.6.1 = getelementptr inbounds float, float* %1, i64 %530
  %531 = load float, float* %arrayidx12.i.us.us.6.1, align 4, !tbaa !12
  %532 = tail call float @llvm.fmuladd.f32(float %528, float %531, float %526) #2
  store float %532, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.6.1, 1
  %exitcond.not.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.us.us.6.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6.1, label %for.end.r_exit.i.loopexit.us.us.6.1, label %for.body.i.us.us.6.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.6.1:              ; preds = %for.body.i.us.us.6.1
  %533 = add nuw nsw i64 %_local_id_x.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %533, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.us.us.6, !llvm.loop !24

for.body.i.us.us.5.1:                             ; preds = %for.body.i.us.us.5.1, %for.end.r_exit.i.loopexit.us.us.5
  %indvars.iv.next.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.us.us.5.1, %for.body.i.us.us.5.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.5 ]
  %534 = phi float [ %540, %for.body.i.us.us.5.1 ], [ %mul3.i.us.us.5.1, %for.end.r_exit.i.loopexit.us.us.5 ]
  %535 = add nsw i64 %indvars.iv.next.i2.us.us.5.1, %477
  %arrayidx8.i.us.us.5.1 = getelementptr inbounds float, float* %0, i64 %535
  %536 = load float, float* %arrayidx8.i.us.us.5.1, align 4, !tbaa !12
  %537 = mul nsw i64 %indvars.iv.next.i2.us.us.5.1, %14
  %538 = add nsw i64 %537, %489
  %arrayidx12.i.us.us.5.1 = getelementptr inbounds float, float* %1, i64 %538
  %539 = load float, float* %arrayidx12.i.us.us.5.1, align 4, !tbaa !12
  %540 = tail call float @llvm.fmuladd.f32(float %536, float %539, float %534) #2
  store float %540, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.5.1, 1
  %exitcond.not.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.us.us.5.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5.1, label %for.end.r_exit.i.loopexit.us.us.5.1, label %for.body.i.us.us.5.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.5.1:              ; preds = %for.body.i.us.us.5.1
  %541 = add nuw nsw i64 %_local_id_x.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %541, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.us.us.5, !llvm.loop !24

for.body.i.us.us.4.1:                             ; preds = %for.body.i.us.us.4.1, %for.end.r_exit.i.loopexit.us.us.4
  %indvars.iv.next.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.us.us.4.1, %for.body.i.us.us.4.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.4 ]
  %542 = phi float [ %548, %for.body.i.us.us.4.1 ], [ %mul3.i.us.us.4.1, %for.end.r_exit.i.loopexit.us.us.4 ]
  %543 = add nsw i64 %indvars.iv.next.i2.us.us.4.1, %463
  %arrayidx8.i.us.us.4.1 = getelementptr inbounds float, float* %0, i64 %543
  %544 = load float, float* %arrayidx8.i.us.us.4.1, align 4, !tbaa !12
  %545 = mul nsw i64 %indvars.iv.next.i2.us.us.4.1, %14
  %546 = add nsw i64 %545, %475
  %arrayidx12.i.us.us.4.1 = getelementptr inbounds float, float* %1, i64 %546
  %547 = load float, float* %arrayidx12.i.us.us.4.1, align 4, !tbaa !12
  %548 = tail call float @llvm.fmuladd.f32(float %544, float %547, float %542) #2
  store float %548, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.4.1, 1
  %exitcond.not.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.us.us.4.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4.1, label %for.end.r_exit.i.loopexit.us.us.4.1, label %for.body.i.us.us.4.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.4.1:              ; preds = %for.body.i.us.us.4.1
  %549 = add nuw nsw i64 %_local_id_x.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %549, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.us.us.4, !llvm.loop !24

for.body.i.us.us.3.1:                             ; preds = %for.body.i.us.us.3.1, %for.end.r_exit.i.loopexit.us.us.3
  %indvars.iv.next.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.us.us.3.1, %for.body.i.us.us.3.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.3 ]
  %550 = phi float [ %556, %for.body.i.us.us.3.1 ], [ %mul3.i.us.us.3.1, %for.end.r_exit.i.loopexit.us.us.3 ]
  %551 = add nsw i64 %indvars.iv.next.i2.us.us.3.1, %449
  %arrayidx8.i.us.us.3.1 = getelementptr inbounds float, float* %0, i64 %551
  %552 = load float, float* %arrayidx8.i.us.us.3.1, align 4, !tbaa !12
  %553 = mul nsw i64 %indvars.iv.next.i2.us.us.3.1, %14
  %554 = add nsw i64 %553, %461
  %arrayidx12.i.us.us.3.1 = getelementptr inbounds float, float* %1, i64 %554
  %555 = load float, float* %arrayidx12.i.us.us.3.1, align 4, !tbaa !12
  %556 = tail call float @llvm.fmuladd.f32(float %552, float %555, float %550) #2
  store float %556, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.3.1, 1
  %exitcond.not.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.us.us.3.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3.1, label %for.end.r_exit.i.loopexit.us.us.3.1, label %for.body.i.us.us.3.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.3.1:              ; preds = %for.body.i.us.us.3.1
  %557 = add nuw nsw i64 %_local_id_x.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %557, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.us.us.3, !llvm.loop !24

for.body.i.us.us.2.1:                             ; preds = %for.body.i.us.us.2.1, %for.end.r_exit.i.loopexit.us.us.2
  %indvars.iv.next.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.us.us.2.1, %for.body.i.us.us.2.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.2 ]
  %558 = phi float [ %564, %for.body.i.us.us.2.1 ], [ %mul3.i.us.us.2.1, %for.end.r_exit.i.loopexit.us.us.2 ]
  %559 = add nsw i64 %indvars.iv.next.i2.us.us.2.1, %435
  %arrayidx8.i.us.us.2.1 = getelementptr inbounds float, float* %0, i64 %559
  %560 = load float, float* %arrayidx8.i.us.us.2.1, align 4, !tbaa !12
  %561 = mul nsw i64 %indvars.iv.next.i2.us.us.2.1, %14
  %562 = add nsw i64 %561, %447
  %arrayidx12.i.us.us.2.1 = getelementptr inbounds float, float* %1, i64 %562
  %563 = load float, float* %arrayidx12.i.us.us.2.1, align 4, !tbaa !12
  %564 = tail call float @llvm.fmuladd.f32(float %560, float %563, float %558) #2
  store float %564, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.2.1, 1
  %exitcond.not.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.us.us.2.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2.1, label %for.end.r_exit.i.loopexit.us.us.2.1, label %for.body.i.us.us.2.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.2.1:              ; preds = %for.body.i.us.us.2.1
  %565 = add nuw nsw i64 %_local_id_x.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %565, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.us.us.2, !llvm.loop !24

for.body.i.us.us.1.1:                             ; preds = %for.body.i.us.us.1.1, %for.end.r_exit.i.loopexit.us.us.1
  %indvars.iv.next.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.us.us.1.1, %for.body.i.us.us.1.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.1 ]
  %566 = phi float [ %572, %for.body.i.us.us.1.1 ], [ %mul3.i.us.us.1.1, %for.end.r_exit.i.loopexit.us.us.1 ]
  %567 = add nsw i64 %indvars.iv.next.i2.us.us.1.1, %388
  %arrayidx8.i.us.us.1.1 = getelementptr inbounds float, float* %0, i64 %567
  %568 = load float, float* %arrayidx8.i.us.us.1.1, align 4, !tbaa !12
  %569 = mul nsw i64 %indvars.iv.next.i2.us.us.1.1, %14
  %570 = add nsw i64 %569, %433
  %arrayidx12.i.us.us.1.1 = getelementptr inbounds float, float* %1, i64 %570
  %571 = load float, float* %arrayidx12.i.us.us.1.1, align 4, !tbaa !12
  %572 = tail call float @llvm.fmuladd.f32(float %568, float %571, float %566) #2
  store float %572, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1.1, 1
  %exitcond.not.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.us.us.1.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1.1, label %for.end.r_exit.i.loopexit.us.us.1.1, label %for.body.i.us.us.1.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.1.1:              ; preds = %for.body.i.us.us.1.1
  %573 = add nuw nsw i64 %_local_id_x.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %573, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.us.us.1, !llvm.loop !24

for.body.i.us.us.1162:                            ; preds = %for.body.i.us.us.1162, %for.end.r_exit.i.loopexit.us.us
  %indvars.iv.next.i2.us.us.1157 = phi i64 [ %indvars.iv.next.i.us.us.1160, %for.body.i.us.us.1162 ], [ 0, %for.end.r_exit.i.loopexit.us.us ]
  %574 = phi float [ %580, %for.body.i.us.us.1162 ], [ %mul3.i.us.us.1154, %for.end.r_exit.i.loopexit.us.us ]
  %575 = add nsw i64 %indvars.iv.next.i2.us.us.1157, %374
  %arrayidx8.i.us.us.1158 = getelementptr inbounds float, float* %0, i64 %575
  %576 = load float, float* %arrayidx8.i.us.us.1158, align 4, !tbaa !12
  %577 = mul nsw i64 %indvars.iv.next.i2.us.us.1157, %14
  %578 = add nsw i64 %577, %379
  %arrayidx12.i.us.us.1159 = getelementptr inbounds float, float* %1, i64 %578
  %579 = load float, float* %arrayidx12.i.us.us.1159, align 4, !tbaa !12
  %580 = tail call float @llvm.fmuladd.f32(float %576, float %579, float %574) #2
  store float %580, float* %arrayidx.i.us.us.1153, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1160 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1157, 1
  %exitcond.not.i.us.us.1161 = icmp eq i64 %indvars.iv.next.i.us.us.1160, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1161, label %for.end.r_exit.i.loopexit.us.us.1163, label %for.body.i.us.us.1162, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.1163:             ; preds = %for.body.i.us.us.1162
  %581 = add nuw nsw i64 %_local_id_x.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %581, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.us.us, !llvm.loop !24
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
  %17 = getelementptr i8*, i8** %0, i64 4
  %18 = bitcast i8** %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 6
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr i8*, i8** %0, i64 8
  %26 = bitcast i8** %25 to float**
  %27 = load float*, float** %26, align 8
  %28 = load float, float* %27, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp32.i.i = icmp sgt i32 %20, 0
  %29 = sext i32 %24 to i64
  %wide.trip.count.i.i = zext i32 %20 to i64
  br i1 %cmp32.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  %conv.i.i = trunc i64 %mul.i.i.i to i32
  %30 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.1 = or i32 %30, 1
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.2 = or i32 %31, 2
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.3 = or i32 %32, 3
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.4 = or i32 %33, 4
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.5 = or i32 %34, 5
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.6 = or i32 %35, 6
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.7 = or i32 %36, 7
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.8 = or i32 %37, 8
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.9 = or i32 %38, 9
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.10 = or i32 %39, 10
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.11 = or i32 %40, 11
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.12 = or i32 %41, 12
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.13 = or i32 %42, 13
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.14 = or i32 %43, 14
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.15 = or i32 %44, 15
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.16 = or i32 %45, 16
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.17 = or i32 %46, 17
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.18 = or i32 %47, 18
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.19 = or i32 %48, 19
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.20 = or i32 %49, 20
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.21 = or i32 %50, 21
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.22 = or i32 %51, 22
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.23 = or i32 %52, 23
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.24 = or i32 %53, 24
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.25 = or i32 %54, 25
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.26 = or i32 %55, 26
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.27 = or i32 %56, 27
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.28 = or i32 %57, 28
  %58 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.29 = or i32 %58, 29
  %59 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.30 = or i32 %59, 30
  %60 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.31 = or i32 %60, 31
  %ident.check = icmp ne i32 %24, 1
  %61 = trunc i64 %3 to i32
  %62 = shl i32 %61, 3
  %63 = add i32 %62, %conv.i.i
  %64 = icmp eq i32 %63, 2147483640
  %65 = or i1 %ident.check, %64
  %66 = add i32 %62, %conv.i.i
  %67 = or i32 %66, 2
  %68 = icmp sgt i32 %67, 2147483640
  %69 = or i1 %65, %68
  %70 = add i32 %62, %conv.i.i
  %71 = or i32 %70, 3
  %72 = icmp sgt i32 %71, 2147483640
  %73 = or i1 %69, %72
  %74 = add i32 %62, %conv.i.i
  %75 = or i32 %74, 4
  %76 = icmp sgt i32 %75, 2147483640
  %77 = or i1 %73, %76
  %78 = add i32 %62, %conv.i.i
  %79 = or i32 %78, 5
  %80 = icmp sgt i32 %79, 2147483640
  %81 = or i1 %77, %80
  %82 = add i32 %62, %conv.i.i
  %83 = or i32 %82, 6
  %84 = icmp sgt i32 %83, 2147483640
  %85 = or i1 %81, %84
  %86 = add i32 %62, %conv.i.i
  %87 = or i32 %86, 7
  %88 = icmp sgt i32 %87, 2147483640
  %89 = or i1 %85, %88
  %90 = add i32 %62, %conv.i.i
  %91 = add i32 %90, 9
  %92 = add i32 %90, 16
  %93 = icmp slt i32 %92, %91
  %94 = or i1 %89, %93
  %95 = add i32 %62, %conv.i.i
  %96 = add i32 %95, 10
  %97 = add i32 %95, 17
  %98 = icmp slt i32 %97, %96
  %99 = or i1 %94, %98
  %100 = add i32 %62, %conv.i.i
  %101 = add i32 %100, 11
  %102 = add i32 %100, 18
  %103 = icmp slt i32 %102, %101
  %104 = or i1 %99, %103
  %105 = add i32 %62, %conv.i.i
  %106 = add i32 %105, 12
  %107 = add i32 %105, 19
  %108 = icmp slt i32 %107, %106
  %109 = or i1 %104, %108
  %110 = add i32 %62, %conv.i.i
  %111 = add i32 %110, 13
  %112 = add i32 %110, 20
  %113 = icmp slt i32 %112, %111
  %114 = or i1 %109, %113
  %115 = add i32 %62, %conv.i.i
  %116 = add i32 %115, 14
  %117 = add i32 %115, 21
  %118 = icmp slt i32 %117, %116
  %119 = or i1 %114, %118
  %120 = add i32 %62, %conv.i.i
  %121 = add i32 %120, 15
  %122 = add i32 %120, 22
  %123 = icmp slt i32 %122, %121
  %124 = or i1 %119, %123
  %125 = add i32 %62, %conv.i.i
  %126 = add i32 %125, 17
  %127 = add i32 %125, 24
  %128 = icmp slt i32 %127, %126
  %129 = or i1 %124, %128
  %130 = add i32 %62, %conv.i.i
  %131 = add i32 %130, 18
  %132 = add i32 %130, 25
  %133 = icmp slt i32 %132, %131
  %134 = or i1 %129, %133
  %135 = add i32 %62, %conv.i.i
  %136 = add i32 %135, 19
  %137 = add i32 %135, 26
  %138 = icmp slt i32 %137, %136
  %139 = or i1 %134, %138
  %140 = add i32 %62, %conv.i.i
  %141 = add i32 %140, 20
  %142 = add i32 %140, 27
  %143 = icmp slt i32 %142, %141
  %144 = or i1 %139, %143
  %145 = add i32 %62, %conv.i.i
  %146 = add i32 %145, 21
  %147 = add i32 %145, 28
  %148 = icmp slt i32 %147, %146
  %149 = or i1 %144, %148
  %150 = add i32 %62, %conv.i.i
  %151 = add i32 %150, 22
  %152 = add i32 %150, 29
  %153 = icmp slt i32 %152, %151
  %154 = or i1 %149, %153
  %155 = add i32 %62, %conv.i.i
  %156 = add i32 %155, 23
  %157 = add i32 %155, 30
  %158 = icmp slt i32 %157, %156
  %159 = or i1 %154, %158
  %160 = add i32 %62, %conv.i.i
  %161 = add i32 %160, 25
  %162 = add i32 %160, 32
  %163 = icmp slt i32 %162, %161
  %164 = or i1 %159, %163
  %165 = add i32 %62, %conv.i.i
  %166 = add i32 %165, 26
  %167 = add i32 %165, 33
  %168 = icmp slt i32 %167, %166
  %169 = or i1 %164, %168
  %170 = add i32 %62, %conv.i.i
  %171 = add i32 %170, 27
  %172 = add i32 %170, 34
  %173 = icmp slt i32 %172, %171
  %174 = or i1 %169, %173
  %175 = add i32 %62, %conv.i.i
  %176 = add i32 %175, 28
  %177 = add i32 %175, 35
  %178 = icmp slt i32 %177, %176
  %179 = or i1 %174, %178
  %180 = add i32 %62, %conv.i.i
  %181 = add i32 %180, 29
  %182 = add i32 %180, 36
  %183 = icmp slt i32 %182, %181
  %184 = or i1 %179, %183
  %185 = add i32 %62, %conv.i.i
  %186 = add i32 %185, 30
  %187 = add i32 %185, 37
  %188 = icmp slt i32 %187, %186
  %189 = or i1 %184, %188
  %190 = add i32 %62, %conv.i.i
  %191 = add i32 %190, 31
  %192 = add i32 %190, 38
  %193 = icmp slt i32 %192, %191
  %194 = or i1 %189, %193
  br i1 %194, label %pregion_for_entry.pregion_for_init.i.i.preheader164, label %vector.ph

pregion_for_entry.pregion_for_init.i.i.preheader164: ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  br label %pregion_for_entry.pregion_for_init.i.i

vector.ph:                                        ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %broadcast.splatinsert = insertelement <8 x float> undef, float %28, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %195 = trunc i64 %mul3.i.i.i to i32
  %196 = mul nsw i32 %24, %195
  %197 = add nsw i32 %196, %conv.i.i
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %16, i64 %198
  %200 = bitcast float* %199 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %200, align 4, !tbaa !12, !llvm.access.group !16
  %201 = fmul <8 x float> %broadcast.splat, %wide.load
  %202 = bitcast float* %199 to <8 x float>*
  store <8 x float> %201, <8 x float>* %202, align 4, !tbaa !12, !llvm.access.group !16
  %203 = add nsw i32 %196, %conv.i.i.1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %16, i64 %204
  %206 = bitcast float* %205 to <8 x float>*
  %wide.load114 = load <8 x float>, <8 x float>* %206, align 4, !tbaa !12, !llvm.access.group !16
  %207 = fmul <8 x float> %broadcast.splat, %wide.load114
  %208 = bitcast float* %205 to <8 x float>*
  store <8 x float> %207, <8 x float>* %208, align 4, !tbaa !12, !llvm.access.group !16
  %209 = add nsw i32 %196, %conv.i.i.2
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %16, i64 %210
  %212 = bitcast float* %211 to <8 x float>*
  %wide.load115 = load <8 x float>, <8 x float>* %212, align 4, !tbaa !12, !llvm.access.group !16
  %213 = fmul <8 x float> %broadcast.splat, %wide.load115
  %214 = bitcast float* %211 to <8 x float>*
  store <8 x float> %213, <8 x float>* %214, align 4, !tbaa !12, !llvm.access.group !16
  %215 = add nsw i32 %196, %conv.i.i.3
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %16, i64 %216
  %218 = bitcast float* %217 to <8 x float>*
  %wide.load116 = load <8 x float>, <8 x float>* %218, align 4, !tbaa !12, !llvm.access.group !16
  %219 = fmul <8 x float> %broadcast.splat, %wide.load116
  %220 = bitcast float* %217 to <8 x float>*
  store <8 x float> %219, <8 x float>* %220, align 4, !tbaa !12, !llvm.access.group !16
  %221 = add nsw i32 %196, %conv.i.i.4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %16, i64 %222
  %224 = bitcast float* %223 to <8 x float>*
  %wide.load117 = load <8 x float>, <8 x float>* %224, align 4, !tbaa !12, !llvm.access.group !16
  %225 = fmul <8 x float> %broadcast.splat, %wide.load117
  %226 = bitcast float* %223 to <8 x float>*
  store <8 x float> %225, <8 x float>* %226, align 4, !tbaa !12, !llvm.access.group !16
  %227 = add nsw i32 %196, %conv.i.i.5
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %16, i64 %228
  %230 = bitcast float* %229 to <8 x float>*
  %wide.load118 = load <8 x float>, <8 x float>* %230, align 4, !tbaa !12, !llvm.access.group !16
  %231 = fmul <8 x float> %broadcast.splat, %wide.load118
  %232 = bitcast float* %229 to <8 x float>*
  store <8 x float> %231, <8 x float>* %232, align 4, !tbaa !12, !llvm.access.group !16
  %233 = add nsw i32 %196, %conv.i.i.6
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %16, i64 %234
  %236 = bitcast float* %235 to <8 x float>*
  %wide.load119 = load <8 x float>, <8 x float>* %236, align 4, !tbaa !12, !llvm.access.group !16
  %237 = fmul <8 x float> %broadcast.splat, %wide.load119
  %238 = bitcast float* %235 to <8 x float>*
  store <8 x float> %237, <8 x float>* %238, align 4, !tbaa !12, !llvm.access.group !16
  %239 = add nsw i32 %196, %conv.i.i.7
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %16, i64 %240
  %242 = bitcast float* %241 to <8 x float>*
  %wide.load120 = load <8 x float>, <8 x float>* %242, align 4, !tbaa !12, !llvm.access.group !16
  %243 = fmul <8 x float> %broadcast.splat, %wide.load120
  %244 = bitcast float* %241 to <8 x float>*
  store <8 x float> %243, <8 x float>* %244, align 4, !tbaa !12, !llvm.access.group !16
  %245 = add nsw i32 %196, %conv.i.i.8
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %16, i64 %246
  %248 = bitcast float* %247 to <8 x float>*
  %wide.load121 = load <8 x float>, <8 x float>* %248, align 4, !tbaa !12, !llvm.access.group !16
  %249 = fmul <8 x float> %broadcast.splat, %wide.load121
  %250 = bitcast float* %247 to <8 x float>*
  store <8 x float> %249, <8 x float>* %250, align 4, !tbaa !12, !llvm.access.group !16
  %251 = add nsw i32 %196, %conv.i.i.9
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %16, i64 %252
  %254 = bitcast float* %253 to <8 x float>*
  %wide.load122 = load <8 x float>, <8 x float>* %254, align 4, !tbaa !12, !llvm.access.group !16
  %255 = fmul <8 x float> %broadcast.splat, %wide.load122
  %256 = bitcast float* %253 to <8 x float>*
  store <8 x float> %255, <8 x float>* %256, align 4, !tbaa !12, !llvm.access.group !16
  %257 = add nsw i32 %196, %conv.i.i.10
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %16, i64 %258
  %260 = bitcast float* %259 to <8 x float>*
  %wide.load123 = load <8 x float>, <8 x float>* %260, align 4, !tbaa !12, !llvm.access.group !16
  %261 = fmul <8 x float> %broadcast.splat, %wide.load123
  %262 = bitcast float* %259 to <8 x float>*
  store <8 x float> %261, <8 x float>* %262, align 4, !tbaa !12, !llvm.access.group !16
  %263 = add nsw i32 %196, %conv.i.i.11
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float, float* %16, i64 %264
  %266 = bitcast float* %265 to <8 x float>*
  %wide.load124 = load <8 x float>, <8 x float>* %266, align 4, !tbaa !12, !llvm.access.group !16
  %267 = fmul <8 x float> %broadcast.splat, %wide.load124
  %268 = bitcast float* %265 to <8 x float>*
  store <8 x float> %267, <8 x float>* %268, align 4, !tbaa !12, !llvm.access.group !16
  %269 = add nsw i32 %196, %conv.i.i.12
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %16, i64 %270
  %272 = bitcast float* %271 to <8 x float>*
  %wide.load125 = load <8 x float>, <8 x float>* %272, align 4, !tbaa !12, !llvm.access.group !16
  %273 = fmul <8 x float> %broadcast.splat, %wide.load125
  %274 = bitcast float* %271 to <8 x float>*
  store <8 x float> %273, <8 x float>* %274, align 4, !tbaa !12, !llvm.access.group !16
  %275 = add nsw i32 %196, %conv.i.i.13
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds float, float* %16, i64 %276
  %278 = bitcast float* %277 to <8 x float>*
  %wide.load126 = load <8 x float>, <8 x float>* %278, align 4, !tbaa !12, !llvm.access.group !16
  %279 = fmul <8 x float> %broadcast.splat, %wide.load126
  %280 = bitcast float* %277 to <8 x float>*
  store <8 x float> %279, <8 x float>* %280, align 4, !tbaa !12, !llvm.access.group !16
  %281 = add nsw i32 %196, %conv.i.i.14
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds float, float* %16, i64 %282
  %284 = bitcast float* %283 to <8 x float>*
  %wide.load127 = load <8 x float>, <8 x float>* %284, align 4, !tbaa !12, !llvm.access.group !16
  %285 = fmul <8 x float> %broadcast.splat, %wide.load127
  %286 = bitcast float* %283 to <8 x float>*
  store <8 x float> %285, <8 x float>* %286, align 4, !tbaa !12, !llvm.access.group !16
  %287 = add nsw i32 %196, %conv.i.i.15
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float* %16, i64 %288
  %290 = bitcast float* %289 to <8 x float>*
  %wide.load128 = load <8 x float>, <8 x float>* %290, align 4, !tbaa !12, !llvm.access.group !16
  %291 = fmul <8 x float> %broadcast.splat, %wide.load128
  %292 = bitcast float* %289 to <8 x float>*
  store <8 x float> %291, <8 x float>* %292, align 4, !tbaa !12, !llvm.access.group !16
  %293 = add nsw i32 %196, %conv.i.i.16
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %16, i64 %294
  %296 = bitcast float* %295 to <8 x float>*
  %wide.load129 = load <8 x float>, <8 x float>* %296, align 4, !tbaa !12, !llvm.access.group !16
  %297 = fmul <8 x float> %broadcast.splat, %wide.load129
  %298 = bitcast float* %295 to <8 x float>*
  store <8 x float> %297, <8 x float>* %298, align 4, !tbaa !12, !llvm.access.group !16
  %299 = add nsw i32 %196, %conv.i.i.17
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %16, i64 %300
  %302 = bitcast float* %301 to <8 x float>*
  %wide.load130 = load <8 x float>, <8 x float>* %302, align 4, !tbaa !12, !llvm.access.group !16
  %303 = fmul <8 x float> %broadcast.splat, %wide.load130
  %304 = bitcast float* %301 to <8 x float>*
  store <8 x float> %303, <8 x float>* %304, align 4, !tbaa !12, !llvm.access.group !16
  %305 = add nsw i32 %196, %conv.i.i.18
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %16, i64 %306
  %308 = bitcast float* %307 to <8 x float>*
  %wide.load131 = load <8 x float>, <8 x float>* %308, align 4, !tbaa !12, !llvm.access.group !16
  %309 = fmul <8 x float> %broadcast.splat, %wide.load131
  %310 = bitcast float* %307 to <8 x float>*
  store <8 x float> %309, <8 x float>* %310, align 4, !tbaa !12, !llvm.access.group !16
  %311 = add nsw i32 %196, %conv.i.i.19
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds float, float* %16, i64 %312
  %314 = bitcast float* %313 to <8 x float>*
  %wide.load132 = load <8 x float>, <8 x float>* %314, align 4, !tbaa !12, !llvm.access.group !16
  %315 = fmul <8 x float> %broadcast.splat, %wide.load132
  %316 = bitcast float* %313 to <8 x float>*
  store <8 x float> %315, <8 x float>* %316, align 4, !tbaa !12, !llvm.access.group !16
  %317 = add nsw i32 %196, %conv.i.i.20
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds float, float* %16, i64 %318
  %320 = bitcast float* %319 to <8 x float>*
  %wide.load133 = load <8 x float>, <8 x float>* %320, align 4, !tbaa !12, !llvm.access.group !16
  %321 = fmul <8 x float> %broadcast.splat, %wide.load133
  %322 = bitcast float* %319 to <8 x float>*
  store <8 x float> %321, <8 x float>* %322, align 4, !tbaa !12, !llvm.access.group !16
  %323 = add nsw i32 %196, %conv.i.i.21
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds float, float* %16, i64 %324
  %326 = bitcast float* %325 to <8 x float>*
  %wide.load134 = load <8 x float>, <8 x float>* %326, align 4, !tbaa !12, !llvm.access.group !16
  %327 = fmul <8 x float> %broadcast.splat, %wide.load134
  %328 = bitcast float* %325 to <8 x float>*
  store <8 x float> %327, <8 x float>* %328, align 4, !tbaa !12, !llvm.access.group !16
  %329 = add nsw i32 %196, %conv.i.i.22
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds float, float* %16, i64 %330
  %332 = bitcast float* %331 to <8 x float>*
  %wide.load135 = load <8 x float>, <8 x float>* %332, align 4, !tbaa !12, !llvm.access.group !16
  %333 = fmul <8 x float> %broadcast.splat, %wide.load135
  %334 = bitcast float* %331 to <8 x float>*
  store <8 x float> %333, <8 x float>* %334, align 4, !tbaa !12, !llvm.access.group !16
  %335 = add nsw i32 %196, %conv.i.i.23
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds float, float* %16, i64 %336
  %338 = bitcast float* %337 to <8 x float>*
  %wide.load136 = load <8 x float>, <8 x float>* %338, align 4, !tbaa !12, !llvm.access.group !16
  %339 = fmul <8 x float> %broadcast.splat, %wide.load136
  %340 = bitcast float* %337 to <8 x float>*
  store <8 x float> %339, <8 x float>* %340, align 4, !tbaa !12, !llvm.access.group !16
  %341 = add nsw i32 %196, %conv.i.i.24
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds float, float* %16, i64 %342
  %344 = bitcast float* %343 to <8 x float>*
  %wide.load137 = load <8 x float>, <8 x float>* %344, align 4, !tbaa !12, !llvm.access.group !16
  %345 = fmul <8 x float> %broadcast.splat, %wide.load137
  %346 = bitcast float* %343 to <8 x float>*
  store <8 x float> %345, <8 x float>* %346, align 4, !tbaa !12, !llvm.access.group !16
  %347 = add nsw i32 %196, %conv.i.i.25
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds float, float* %16, i64 %348
  %350 = bitcast float* %349 to <8 x float>*
  %wide.load138 = load <8 x float>, <8 x float>* %350, align 4, !tbaa !12, !llvm.access.group !16
  %351 = fmul <8 x float> %broadcast.splat, %wide.load138
  %352 = bitcast float* %349 to <8 x float>*
  store <8 x float> %351, <8 x float>* %352, align 4, !tbaa !12, !llvm.access.group !16
  %353 = add nsw i32 %196, %conv.i.i.26
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds float, float* %16, i64 %354
  %356 = bitcast float* %355 to <8 x float>*
  %wide.load139 = load <8 x float>, <8 x float>* %356, align 4, !tbaa !12, !llvm.access.group !16
  %357 = fmul <8 x float> %broadcast.splat, %wide.load139
  %358 = bitcast float* %355 to <8 x float>*
  store <8 x float> %357, <8 x float>* %358, align 4, !tbaa !12, !llvm.access.group !16
  %359 = add nsw i32 %196, %conv.i.i.27
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds float, float* %16, i64 %360
  %362 = bitcast float* %361 to <8 x float>*
  %wide.load140 = load <8 x float>, <8 x float>* %362, align 4, !tbaa !12, !llvm.access.group !16
  %363 = fmul <8 x float> %broadcast.splat, %wide.load140
  %364 = bitcast float* %361 to <8 x float>*
  store <8 x float> %363, <8 x float>* %364, align 4, !tbaa !12, !llvm.access.group !16
  %365 = add nsw i32 %196, %conv.i.i.28
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds float, float* %16, i64 %366
  %368 = bitcast float* %367 to <8 x float>*
  %wide.load141 = load <8 x float>, <8 x float>* %368, align 4, !tbaa !12, !llvm.access.group !16
  %369 = fmul <8 x float> %broadcast.splat, %wide.load141
  %370 = bitcast float* %367 to <8 x float>*
  store <8 x float> %369, <8 x float>* %370, align 4, !tbaa !12, !llvm.access.group !16
  %371 = add nsw i32 %196, %conv.i.i.29
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds float, float* %16, i64 %372
  %374 = bitcast float* %373 to <8 x float>*
  %wide.load142 = load <8 x float>, <8 x float>* %374, align 4, !tbaa !12, !llvm.access.group !16
  %375 = fmul <8 x float> %broadcast.splat, %wide.load142
  %376 = bitcast float* %373 to <8 x float>*
  store <8 x float> %375, <8 x float>* %376, align 4, !tbaa !12, !llvm.access.group !16
  %377 = add nsw i32 %196, %conv.i.i.30
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds float, float* %16, i64 %378
  %380 = bitcast float* %379 to <8 x float>*
  %wide.load143 = load <8 x float>, <8 x float>* %380, align 4, !tbaa !12, !llvm.access.group !16
  %381 = fmul <8 x float> %broadcast.splat, %wide.load143
  %382 = bitcast float* %379 to <8 x float>*
  store <8 x float> %381, <8 x float>* %382, align 4, !tbaa !12, !llvm.access.group !16
  %383 = add nsw i32 %196, %conv.i.i.31
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds float, float* %16, i64 %384
  %386 = bitcast float* %385 to <8 x float>*
  %wide.load144 = load <8 x float>, <8 x float>* %386, align 4, !tbaa !12, !llvm.access.group !16
  %387 = fmul <8 x float> %broadcast.splat, %wide.load144
  %388 = bitcast float* %385 to <8 x float>*
  store <8 x float> %387, <8 x float>* %388, align 4, !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_mm2_kernel2.exit

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %mul.i.i.us = mul nsw i32 %24, %conv2.i.i.us
  %mul5.i.i.us = mul nsw i32 %20, %conv2.i.i.us
  %389 = sext i32 %mul5.i.i.us to i64
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_entry.entry.i.i.us.us:                ; preds = %for.end.r_exit.i.i.loopexit.us.us.1163, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.i.us.preheader ], [ %596, %for.end.r_exit.i.i.loopexit.us.us.1163 ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us
  %390 = load float, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us = fmul float %28, %390
  store float %mul3.i.i.us.us, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %391 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

for.end.r_exit.i.i.loopexit.us.us:                ; preds = %for.body.i.i.us.us
  %392 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.1149 = add nuw nsw i64 %392, %mul.i.i.i
  %conv.i.i.us.us.1150 = trunc i64 %add1.i.i.i.us.us.1149 to i32
  %add.i.i.us.us.1151 = add nsw i32 %mul.i.i.us, %conv.i.i.us.us.1150
  %idxprom.i.i.us.us.1152 = sext i32 %add.i.i.us.us.1151 to i64
  %arrayidx.i.i.us.us.1153 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.1152
  %393 = load float, float* %arrayidx.i.i.us.us.1153, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1154 = fmul float %28, %393
  store float %mul3.i.i.us.us.1154, float* %arrayidx.i.i.us.us.1153, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1155 = shl i64 %add1.i.i.i.us.us.1149, 32
  %394 = ashr exact i64 %sext.i.i.us.us.1155, 32
  br label %for.body.i.i.us.us.1162

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %pregion_for_entry.entry.i.i.us.us
  %indvars.iv.next.i.i2.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us ]
  %395 = phi float [ %401, %for.body.i.i.us.us ], [ %mul3.i.i.us.us, %pregion_for_entry.entry.i.i.us.us ]
  %396 = add nsw i64 %indvars.iv.next.i.i2.us.us, %389
  %arrayidx8.i.i.us.us = getelementptr inbounds float, float* %8, i64 %396
  %397 = load float, float* %arrayidx8.i.i.us.us, align 4, !tbaa !12
  %398 = mul nsw i64 %indvars.iv.next.i.i2.us.us, %29
  %399 = add nsw i64 %398, %391
  %arrayidx12.i.i.us.us = getelementptr inbounds float, float* %12, i64 %399
  %400 = load float, float* %arrayidx12.i.i.us.us, align 4, !tbaa !12
  %401 = tail call float @llvm.fmuladd.f32(float %397, float %400, float %395) #2
  store float %401, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i2.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %for.end.r_exit.i.i.loopexit.us.us, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us:               ; preds = %for.end.r_exit.i.i.loopexit.us.us.1163
  %402 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %402, 1
  %mul.i.i.us.1 = mul nsw i32 %24, %conv2.i.i.us.1
  %mul5.i.i.us.1 = mul nsw i32 %20, %conv2.i.i.us.1
  %403 = sext i32 %mul5.i.i.us.1 to i64
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader164
  %_local_id_y.i.0 = phi i64 [ %436, %pregion_for_entry.pregion_for_init.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader164 ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %mul.i.i = mul nsw i32 %24, %conv2.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %16, i64 %idxprom.i.i
  %404 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i = fmul float %28, %404
  store float %mul3.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.1
  %405 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.1 = fmul float %28, %405
  store float %mul3.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.2 = add nsw i32 %mul.i.i, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.2
  %406 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.2 = fmul float %28, %406
  store float %mul3.i.i.2, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.3 = add nsw i32 %mul.i.i, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.3
  %407 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.3 = fmul float %28, %407
  store float %mul3.i.i.3, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.4 = add nsw i32 %mul.i.i, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.4
  %408 = load float, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.4 = fmul float %28, %408
  store float %mul3.i.i.4, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.5 = add nsw i32 %mul.i.i, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.5
  %409 = load float, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.5 = fmul float %28, %409
  store float %mul3.i.i.5, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.6 = add nsw i32 %mul.i.i, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.6
  %410 = load float, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.6 = fmul float %28, %410
  store float %mul3.i.i.6, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.7 = add nsw i32 %mul.i.i, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.7
  %411 = load float, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.7 = fmul float %28, %411
  store float %mul3.i.i.7, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.8 = add nsw i32 %mul.i.i, %conv.i.i.8
  %idxprom.i.i.8 = sext i32 %add.i.i.8 to i64
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.8
  %412 = load float, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.8 = fmul float %28, %412
  store float %mul3.i.i.8, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.9 = add nsw i32 %mul.i.i, %conv.i.i.9
  %idxprom.i.i.9 = sext i32 %add.i.i.9 to i64
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.9
  %413 = load float, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.9 = fmul float %28, %413
  store float %mul3.i.i.9, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.10 = add nsw i32 %mul.i.i, %conv.i.i.10
  %idxprom.i.i.10 = sext i32 %add.i.i.10 to i64
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.10
  %414 = load float, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.10 = fmul float %28, %414
  store float %mul3.i.i.10, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.11 = add nsw i32 %mul.i.i, %conv.i.i.11
  %idxprom.i.i.11 = sext i32 %add.i.i.11 to i64
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.11
  %415 = load float, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.11 = fmul float %28, %415
  store float %mul3.i.i.11, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.12 = add nsw i32 %mul.i.i, %conv.i.i.12
  %idxprom.i.i.12 = sext i32 %add.i.i.12 to i64
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.12
  %416 = load float, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.12 = fmul float %28, %416
  store float %mul3.i.i.12, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.13 = add nsw i32 %mul.i.i, %conv.i.i.13
  %idxprom.i.i.13 = sext i32 %add.i.i.13 to i64
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.13
  %417 = load float, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.13 = fmul float %28, %417
  store float %mul3.i.i.13, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.14 = add nsw i32 %mul.i.i, %conv.i.i.14
  %idxprom.i.i.14 = sext i32 %add.i.i.14 to i64
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.14
  %418 = load float, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.14 = fmul float %28, %418
  store float %mul3.i.i.14, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.15 = add nsw i32 %mul.i.i, %conv.i.i.15
  %idxprom.i.i.15 = sext i32 %add.i.i.15 to i64
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.15
  %419 = load float, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.15 = fmul float %28, %419
  store float %mul3.i.i.15, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.16 = add nsw i32 %mul.i.i, %conv.i.i.16
  %idxprom.i.i.16 = sext i32 %add.i.i.16 to i64
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.16
  %420 = load float, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.16 = fmul float %28, %420
  store float %mul3.i.i.16, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.17 = add nsw i32 %mul.i.i, %conv.i.i.17
  %idxprom.i.i.17 = sext i32 %add.i.i.17 to i64
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.17
  %421 = load float, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.17 = fmul float %28, %421
  store float %mul3.i.i.17, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.18 = add nsw i32 %mul.i.i, %conv.i.i.18
  %idxprom.i.i.18 = sext i32 %add.i.i.18 to i64
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.18
  %422 = load float, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.18 = fmul float %28, %422
  store float %mul3.i.i.18, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.19 = add nsw i32 %mul.i.i, %conv.i.i.19
  %idxprom.i.i.19 = sext i32 %add.i.i.19 to i64
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.19
  %423 = load float, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.19 = fmul float %28, %423
  store float %mul3.i.i.19, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.20 = add nsw i32 %mul.i.i, %conv.i.i.20
  %idxprom.i.i.20 = sext i32 %add.i.i.20 to i64
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.20
  %424 = load float, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.20 = fmul float %28, %424
  store float %mul3.i.i.20, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.21 = add nsw i32 %mul.i.i, %conv.i.i.21
  %idxprom.i.i.21 = sext i32 %add.i.i.21 to i64
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.21
  %425 = load float, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.21 = fmul float %28, %425
  store float %mul3.i.i.21, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.22 = add nsw i32 %mul.i.i, %conv.i.i.22
  %idxprom.i.i.22 = sext i32 %add.i.i.22 to i64
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.22
  %426 = load float, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.22 = fmul float %28, %426
  store float %mul3.i.i.22, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.23 = add nsw i32 %mul.i.i, %conv.i.i.23
  %idxprom.i.i.23 = sext i32 %add.i.i.23 to i64
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.23
  %427 = load float, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.23 = fmul float %28, %427
  store float %mul3.i.i.23, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.24 = add nsw i32 %mul.i.i, %conv.i.i.24
  %idxprom.i.i.24 = sext i32 %add.i.i.24 to i64
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.24
  %428 = load float, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.24 = fmul float %28, %428
  store float %mul3.i.i.24, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.25 = add nsw i32 %mul.i.i, %conv.i.i.25
  %idxprom.i.i.25 = sext i32 %add.i.i.25 to i64
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.25
  %429 = load float, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.25 = fmul float %28, %429
  store float %mul3.i.i.25, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.26 = add nsw i32 %mul.i.i, %conv.i.i.26
  %idxprom.i.i.26 = sext i32 %add.i.i.26 to i64
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.26
  %430 = load float, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.26 = fmul float %28, %430
  store float %mul3.i.i.26, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.27 = add nsw i32 %mul.i.i, %conv.i.i.27
  %idxprom.i.i.27 = sext i32 %add.i.i.27 to i64
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.27
  %431 = load float, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.27 = fmul float %28, %431
  store float %mul3.i.i.27, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.28 = add nsw i32 %mul.i.i, %conv.i.i.28
  %idxprom.i.i.28 = sext i32 %add.i.i.28 to i64
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.28
  %432 = load float, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.28 = fmul float %28, %432
  store float %mul3.i.i.28, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.29 = add nsw i32 %mul.i.i, %conv.i.i.29
  %idxprom.i.i.29 = sext i32 %add.i.i.29 to i64
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.29
  %433 = load float, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.29 = fmul float %28, %433
  store float %mul3.i.i.29, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.30 = add nsw i32 %mul.i.i, %conv.i.i.30
  %idxprom.i.i.30 = sext i32 %add.i.i.30 to i64
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.30
  %434 = load float, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.30 = fmul float %28, %434
  store float %mul3.i.i.30, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.31 = add nsw i32 %mul.i.i, %conv.i.i.31
  %idxprom.i.i.31 = sext i32 %add.i.i.31 to i64
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.31
  %435 = load float, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.31 = fmul float %28, %435
  store float %mul3.i.i.31, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %436 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond30.not = icmp eq i64 %436, 8
  br i1 %exitcond30.not, label %_pocl_kernel_mm2_kernel2.exit.loopexit165, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !26

_pocl_kernel_mm2_kernel2.exit.loopexit:           ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1
  br label %_pocl_kernel_mm2_kernel2.exit

_pocl_kernel_mm2_kernel2.exit.loopexit165:        ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %_pocl_kernel_mm2_kernel2.exit

_pocl_kernel_mm2_kernel2.exit:                    ; preds = %_pocl_kernel_mm2_kernel2.exit.loopexit165, %_pocl_kernel_mm2_kernel2.exit.loopexit, %vector.ph
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1, %pregion_for_end.i.i.us-lcssa.us.us
  %_local_id_x.i.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us ], [ %588, %for.end.r_exit.i.i.loopexit.us.us.1.1 ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.1
  %437 = load float, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1 = fmul float %28, %437
  store float %mul3.i.i.us.us.1, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %438 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1
  %indvars.iv.next.i.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1 ]
  %439 = phi float [ %445, %for.body.i.i.us.us.1 ], [ %mul3.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1 ]
  %440 = add nsw i64 %indvars.iv.next.i.i2.us.us.1, %403
  %arrayidx8.i.i.us.us.1 = getelementptr inbounds float, float* %8, i64 %440
  %441 = load float, float* %arrayidx8.i.i.us.us.1, align 4, !tbaa !12
  %442 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1, %29
  %443 = add nsw i64 %442, %438
  %arrayidx12.i.i.us.us.1 = getelementptr inbounds float, float* %12, i64 %443
  %444 = load float, float* %arrayidx12.i.i.us.us.1, align 4, !tbaa !12
  %445 = tail call float @llvm.fmuladd.f32(float %441, float %444, float %439) #2
  store float %445, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %for.end.r_exit.i.i.loopexit.us.us.1, label %for.body.i.i.us.us.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1:              ; preds = %for.body.i.i.us.us.1
  %446 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %446, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %add.i.i.us.us.1.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.1.1
  %447 = load float, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1.1 = fmul float %28, %447
  store float %mul3.i.i.us.us.1.1, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1.1 = shl i64 %add1.i.i.i.us.us.1.1, 32
  %448 = ashr exact i64 %sext.i.i.us.us.1.1, 32
  br label %for.body.i.i.us.us.1.1

pregion_for_end.i.i.us-lcssa.us.us.1:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1
  %449 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %449, 2
  %mul.i.i.us.2 = mul nsw i32 %24, %conv2.i.i.us.2
  %mul5.i.i.us.2 = mul nsw i32 %20, %conv2.i.i.us.2
  %450 = sext i32 %mul5.i.i.us.2 to i64
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1, %pregion_for_end.i.i.us-lcssa.us.us.1
  %_local_id_x.i.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.1 ], [ %580, %for.end.r_exit.i.i.loopexit.us.us.2.1 ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.2
  %451 = load float, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.2 = fmul float %28, %451
  store float %mul3.i.i.us.us.2, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %452 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2
  %indvars.iv.next.i.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2 ]
  %453 = phi float [ %459, %for.body.i.i.us.us.2 ], [ %mul3.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2 ]
  %454 = add nsw i64 %indvars.iv.next.i.i2.us.us.2, %450
  %arrayidx8.i.i.us.us.2 = getelementptr inbounds float, float* %8, i64 %454
  %455 = load float, float* %arrayidx8.i.i.us.us.2, align 4, !tbaa !12
  %456 = mul nsw i64 %indvars.iv.next.i.i2.us.us.2, %29
  %457 = add nsw i64 %456, %452
  %arrayidx12.i.i.us.us.2 = getelementptr inbounds float, float* %12, i64 %457
  %458 = load float, float* %arrayidx12.i.i.us.us.2, align 4, !tbaa !12
  %459 = tail call float @llvm.fmuladd.f32(float %455, float %458, float %453) #2
  store float %459, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %for.end.r_exit.i.i.loopexit.us.us.2, label %for.body.i.i.us.us.2, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2:              ; preds = %for.body.i.i.us.us.2
  %460 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %460, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %add.i.i.us.us.2.1 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.2.1
  %461 = load float, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.2.1 = fmul float %28, %461
  store float %mul3.i.i.us.us.2.1, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2.1 = shl i64 %add1.i.i.i.us.us.2.1, 32
  %462 = ashr exact i64 %sext.i.i.us.us.2.1, 32
  br label %for.body.i.i.us.us.2.1

pregion_for_end.i.i.us-lcssa.us.us.2:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1
  %463 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %463, 3
  %mul.i.i.us.3 = mul nsw i32 %24, %conv2.i.i.us.3
  %mul5.i.i.us.3 = mul nsw i32 %20, %conv2.i.i.us.3
  %464 = sext i32 %mul5.i.i.us.3 to i64
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1, %pregion_for_end.i.i.us-lcssa.us.us.2
  %_local_id_x.i.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.2 ], [ %572, %for.end.r_exit.i.i.loopexit.us.us.3.1 ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.3
  %465 = load float, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.3 = fmul float %28, %465
  store float %mul3.i.i.us.us.3, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %466 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3
  %indvars.iv.next.i.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3 ]
  %467 = phi float [ %473, %for.body.i.i.us.us.3 ], [ %mul3.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3 ]
  %468 = add nsw i64 %indvars.iv.next.i.i2.us.us.3, %464
  %arrayidx8.i.i.us.us.3 = getelementptr inbounds float, float* %8, i64 %468
  %469 = load float, float* %arrayidx8.i.i.us.us.3, align 4, !tbaa !12
  %470 = mul nsw i64 %indvars.iv.next.i.i2.us.us.3, %29
  %471 = add nsw i64 %470, %466
  %arrayidx12.i.i.us.us.3 = getelementptr inbounds float, float* %12, i64 %471
  %472 = load float, float* %arrayidx12.i.i.us.us.3, align 4, !tbaa !12
  %473 = tail call float @llvm.fmuladd.f32(float %469, float %472, float %467) #2
  store float %473, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %for.end.r_exit.i.i.loopexit.us.us.3, label %for.body.i.i.us.us.3, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3:              ; preds = %for.body.i.i.us.us.3
  %474 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %474, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %add.i.i.us.us.3.1 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.3.1
  %475 = load float, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.3.1 = fmul float %28, %475
  store float %mul3.i.i.us.us.3.1, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3.1 = shl i64 %add1.i.i.i.us.us.3.1, 32
  %476 = ashr exact i64 %sext.i.i.us.us.3.1, 32
  br label %for.body.i.i.us.us.3.1

pregion_for_end.i.i.us-lcssa.us.us.3:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1
  %477 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %477, 4
  %mul.i.i.us.4 = mul nsw i32 %24, %conv2.i.i.us.4
  %mul5.i.i.us.4 = mul nsw i32 %20, %conv2.i.i.us.4
  %478 = sext i32 %mul5.i.i.us.4 to i64
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1, %pregion_for_end.i.i.us-lcssa.us.us.3
  %_local_id_x.i.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.3 ], [ %564, %for.end.r_exit.i.i.loopexit.us.us.4.1 ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.4
  %479 = load float, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.4 = fmul float %28, %479
  store float %mul3.i.i.us.us.4, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %480 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4
  %indvars.iv.next.i.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4 ]
  %481 = phi float [ %487, %for.body.i.i.us.us.4 ], [ %mul3.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4 ]
  %482 = add nsw i64 %indvars.iv.next.i.i2.us.us.4, %478
  %arrayidx8.i.i.us.us.4 = getelementptr inbounds float, float* %8, i64 %482
  %483 = load float, float* %arrayidx8.i.i.us.us.4, align 4, !tbaa !12
  %484 = mul nsw i64 %indvars.iv.next.i.i2.us.us.4, %29
  %485 = add nsw i64 %484, %480
  %arrayidx12.i.i.us.us.4 = getelementptr inbounds float, float* %12, i64 %485
  %486 = load float, float* %arrayidx12.i.i.us.us.4, align 4, !tbaa !12
  %487 = tail call float @llvm.fmuladd.f32(float %483, float %486, float %481) #2
  store float %487, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %for.end.r_exit.i.i.loopexit.us.us.4, label %for.body.i.i.us.us.4, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4:              ; preds = %for.body.i.i.us.us.4
  %488 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %488, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %add.i.i.us.us.4.1 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.4.1
  %489 = load float, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.4.1 = fmul float %28, %489
  store float %mul3.i.i.us.us.4.1, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4.1 = shl i64 %add1.i.i.i.us.us.4.1, 32
  %490 = ashr exact i64 %sext.i.i.us.us.4.1, 32
  br label %for.body.i.i.us.us.4.1

pregion_for_end.i.i.us-lcssa.us.us.4:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1
  %491 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %491, 5
  %mul.i.i.us.5 = mul nsw i32 %24, %conv2.i.i.us.5
  %mul5.i.i.us.5 = mul nsw i32 %20, %conv2.i.i.us.5
  %492 = sext i32 %mul5.i.i.us.5 to i64
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1, %pregion_for_end.i.i.us-lcssa.us.us.4
  %_local_id_x.i.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.4 ], [ %556, %for.end.r_exit.i.i.loopexit.us.us.5.1 ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.5
  %493 = load float, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.5 = fmul float %28, %493
  store float %mul3.i.i.us.us.5, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %494 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5
  %indvars.iv.next.i.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5 ]
  %495 = phi float [ %501, %for.body.i.i.us.us.5 ], [ %mul3.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5 ]
  %496 = add nsw i64 %indvars.iv.next.i.i2.us.us.5, %492
  %arrayidx8.i.i.us.us.5 = getelementptr inbounds float, float* %8, i64 %496
  %497 = load float, float* %arrayidx8.i.i.us.us.5, align 4, !tbaa !12
  %498 = mul nsw i64 %indvars.iv.next.i.i2.us.us.5, %29
  %499 = add nsw i64 %498, %494
  %arrayidx12.i.i.us.us.5 = getelementptr inbounds float, float* %12, i64 %499
  %500 = load float, float* %arrayidx12.i.i.us.us.5, align 4, !tbaa !12
  %501 = tail call float @llvm.fmuladd.f32(float %497, float %500, float %495) #2
  store float %501, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %for.end.r_exit.i.i.loopexit.us.us.5, label %for.body.i.i.us.us.5, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5:              ; preds = %for.body.i.i.us.us.5
  %502 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %502, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %add.i.i.us.us.5.1 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.5.1
  %503 = load float, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.5.1 = fmul float %28, %503
  store float %mul3.i.i.us.us.5.1, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5.1 = shl i64 %add1.i.i.i.us.us.5.1, 32
  %504 = ashr exact i64 %sext.i.i.us.us.5.1, 32
  br label %for.body.i.i.us.us.5.1

pregion_for_end.i.i.us-lcssa.us.us.5:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1
  %505 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %505, 6
  %mul.i.i.us.6 = mul nsw i32 %24, %conv2.i.i.us.6
  %mul5.i.i.us.6 = mul nsw i32 %20, %conv2.i.i.us.6
  %506 = sext i32 %mul5.i.i.us.6 to i64
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1, %pregion_for_end.i.i.us-lcssa.us.us.5
  %_local_id_x.i.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.5 ], [ %548, %for.end.r_exit.i.i.loopexit.us.us.6.1 ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.6
  %507 = load float, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.6 = fmul float %28, %507
  store float %mul3.i.i.us.us.6, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %508 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6
  %indvars.iv.next.i.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6 ]
  %509 = phi float [ %515, %for.body.i.i.us.us.6 ], [ %mul3.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6 ]
  %510 = add nsw i64 %indvars.iv.next.i.i2.us.us.6, %506
  %arrayidx8.i.i.us.us.6 = getelementptr inbounds float, float* %8, i64 %510
  %511 = load float, float* %arrayidx8.i.i.us.us.6, align 4, !tbaa !12
  %512 = mul nsw i64 %indvars.iv.next.i.i2.us.us.6, %29
  %513 = add nsw i64 %512, %508
  %arrayidx12.i.i.us.us.6 = getelementptr inbounds float, float* %12, i64 %513
  %514 = load float, float* %arrayidx12.i.i.us.us.6, align 4, !tbaa !12
  %515 = tail call float @llvm.fmuladd.f32(float %511, float %514, float %509) #2
  store float %515, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %for.end.r_exit.i.i.loopexit.us.us.6, label %for.body.i.i.us.us.6, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6:              ; preds = %for.body.i.i.us.us.6
  %516 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %516, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %add.i.i.us.us.6.1 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.6.1
  %517 = load float, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.6.1 = fmul float %28, %517
  store float %mul3.i.i.us.us.6.1, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6.1 = shl i64 %add1.i.i.i.us.us.6.1, 32
  %518 = ashr exact i64 %sext.i.i.us.us.6.1, 32
  br label %for.body.i.i.us.us.6.1

pregion_for_end.i.i.us-lcssa.us.us.6:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1
  %519 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %519, 7
  %mul.i.i.us.7 = mul nsw i32 %24, %conv2.i.i.us.7
  %mul5.i.i.us.7 = mul nsw i32 %20, %conv2.i.i.us.7
  %520 = sext i32 %mul5.i.i.us.7 to i64
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1, %pregion_for_end.i.i.us-lcssa.us.us.6
  %_local_id_x.i.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.6 ], [ %540, %for.end.r_exit.i.i.loopexit.us.us.7.1 ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.7
  %521 = load float, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.7 = fmul float %28, %521
  store float %mul3.i.i.us.us.7, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %522 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7
  %indvars.iv.next.i.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7 ]
  %523 = phi float [ %529, %for.body.i.i.us.us.7 ], [ %mul3.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7 ]
  %524 = add nsw i64 %indvars.iv.next.i.i2.us.us.7, %520
  %arrayidx8.i.i.us.us.7 = getelementptr inbounds float, float* %8, i64 %524
  %525 = load float, float* %arrayidx8.i.i.us.us.7, align 4, !tbaa !12
  %526 = mul nsw i64 %indvars.iv.next.i.i2.us.us.7, %29
  %527 = add nsw i64 %526, %522
  %arrayidx12.i.i.us.us.7 = getelementptr inbounds float, float* %12, i64 %527
  %528 = load float, float* %arrayidx12.i.i.us.us.7, align 4, !tbaa !12
  %529 = tail call float @llvm.fmuladd.f32(float %525, float %528, float %523) #2
  store float %529, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %for.end.r_exit.i.i.loopexit.us.us.7, label %for.body.i.i.us.us.7, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7:              ; preds = %for.body.i.i.us.us.7
  %530 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %530, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %add.i.i.us.us.7.1 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.7.1
  %531 = load float, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.7.1 = fmul float %28, %531
  store float %mul3.i.i.us.us.7.1, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7.1 = shl i64 %add1.i.i.i.us.us.7.1, 32
  %532 = ashr exact i64 %sext.i.i.us.us.7.1, 32
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %for.end.r_exit.i.i.loopexit.us.us.7
  %indvars.iv.next.i.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %533 = phi float [ %539, %for.body.i.i.us.us.7.1 ], [ %mul3.i.i.us.us.7.1, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %534 = add nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %520
  %arrayidx8.i.i.us.us.7.1 = getelementptr inbounds float, float* %8, i64 %534
  %535 = load float, float* %arrayidx8.i.i.us.us.7.1, align 4, !tbaa !12
  %536 = mul nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %29
  %537 = add nsw i64 %536, %532
  %arrayidx12.i.i.us.us.7.1 = getelementptr inbounds float, float* %12, i64 %537
  %538 = load float, float* %arrayidx12.i.i.us.us.7.1, align 4, !tbaa !12
  %539 = tail call float @llvm.fmuladd.f32(float %535, float %538, float %533) #2
  store float %539, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7.1, label %for.end.r_exit.i.i.loopexit.us.us.7.1, label %for.body.i.i.us.us.7.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7.1:            ; preds = %for.body.i.i.us.us.7.1
  %540 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %540, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_mm2_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !24

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %for.end.r_exit.i.i.loopexit.us.us.6
  %indvars.iv.next.i.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %541 = phi float [ %547, %for.body.i.i.us.us.6.1 ], [ %mul3.i.i.us.us.6.1, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %542 = add nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %506
  %arrayidx8.i.i.us.us.6.1 = getelementptr inbounds float, float* %8, i64 %542
  %543 = load float, float* %arrayidx8.i.i.us.us.6.1, align 4, !tbaa !12
  %544 = mul nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %29
  %545 = add nsw i64 %544, %518
  %arrayidx12.i.i.us.us.6.1 = getelementptr inbounds float, float* %12, i64 %545
  %546 = load float, float* %arrayidx12.i.i.us.us.6.1, align 4, !tbaa !12
  %547 = tail call float @llvm.fmuladd.f32(float %543, float %546, float %541) #2
  store float %547, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6.1, label %for.end.r_exit.i.i.loopexit.us.us.6.1, label %for.body.i.i.us.us.6.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6.1:            ; preds = %for.body.i.i.us.us.6.1
  %548 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %548, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !24

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %for.end.r_exit.i.i.loopexit.us.us.5
  %indvars.iv.next.i.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %549 = phi float [ %555, %for.body.i.i.us.us.5.1 ], [ %mul3.i.i.us.us.5.1, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %550 = add nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %492
  %arrayidx8.i.i.us.us.5.1 = getelementptr inbounds float, float* %8, i64 %550
  %551 = load float, float* %arrayidx8.i.i.us.us.5.1, align 4, !tbaa !12
  %552 = mul nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %29
  %553 = add nsw i64 %552, %504
  %arrayidx12.i.i.us.us.5.1 = getelementptr inbounds float, float* %12, i64 %553
  %554 = load float, float* %arrayidx12.i.i.us.us.5.1, align 4, !tbaa !12
  %555 = tail call float @llvm.fmuladd.f32(float %551, float %554, float %549) #2
  store float %555, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5.1, label %for.end.r_exit.i.i.loopexit.us.us.5.1, label %for.body.i.i.us.us.5.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5.1:            ; preds = %for.body.i.i.us.us.5.1
  %556 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %556, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !24

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %for.end.r_exit.i.i.loopexit.us.us.4
  %indvars.iv.next.i.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %557 = phi float [ %563, %for.body.i.i.us.us.4.1 ], [ %mul3.i.i.us.us.4.1, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %558 = add nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %478
  %arrayidx8.i.i.us.us.4.1 = getelementptr inbounds float, float* %8, i64 %558
  %559 = load float, float* %arrayidx8.i.i.us.us.4.1, align 4, !tbaa !12
  %560 = mul nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %29
  %561 = add nsw i64 %560, %490
  %arrayidx12.i.i.us.us.4.1 = getelementptr inbounds float, float* %12, i64 %561
  %562 = load float, float* %arrayidx12.i.i.us.us.4.1, align 4, !tbaa !12
  %563 = tail call float @llvm.fmuladd.f32(float %559, float %562, float %557) #2
  store float %563, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4.1, label %for.end.r_exit.i.i.loopexit.us.us.4.1, label %for.body.i.i.us.us.4.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4.1:            ; preds = %for.body.i.i.us.us.4.1
  %564 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %564, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !24

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %for.end.r_exit.i.i.loopexit.us.us.3
  %indvars.iv.next.i.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %565 = phi float [ %571, %for.body.i.i.us.us.3.1 ], [ %mul3.i.i.us.us.3.1, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %566 = add nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %464
  %arrayidx8.i.i.us.us.3.1 = getelementptr inbounds float, float* %8, i64 %566
  %567 = load float, float* %arrayidx8.i.i.us.us.3.1, align 4, !tbaa !12
  %568 = mul nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %29
  %569 = add nsw i64 %568, %476
  %arrayidx12.i.i.us.us.3.1 = getelementptr inbounds float, float* %12, i64 %569
  %570 = load float, float* %arrayidx12.i.i.us.us.3.1, align 4, !tbaa !12
  %571 = tail call float @llvm.fmuladd.f32(float %567, float %570, float %565) #2
  store float %571, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3.1, label %for.end.r_exit.i.i.loopexit.us.us.3.1, label %for.body.i.i.us.us.3.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3.1:            ; preds = %for.body.i.i.us.us.3.1
  %572 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %572, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !24

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %for.end.r_exit.i.i.loopexit.us.us.2
  %indvars.iv.next.i.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %573 = phi float [ %579, %for.body.i.i.us.us.2.1 ], [ %mul3.i.i.us.us.2.1, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %574 = add nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %450
  %arrayidx8.i.i.us.us.2.1 = getelementptr inbounds float, float* %8, i64 %574
  %575 = load float, float* %arrayidx8.i.i.us.us.2.1, align 4, !tbaa !12
  %576 = mul nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %29
  %577 = add nsw i64 %576, %462
  %arrayidx12.i.i.us.us.2.1 = getelementptr inbounds float, float* %12, i64 %577
  %578 = load float, float* %arrayidx12.i.i.us.us.2.1, align 4, !tbaa !12
  %579 = tail call float @llvm.fmuladd.f32(float %575, float %578, float %573) #2
  store float %579, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2.1, label %for.end.r_exit.i.i.loopexit.us.us.2.1, label %for.body.i.i.us.us.2.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2.1:            ; preds = %for.body.i.i.us.us.2.1
  %580 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %580, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !24

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %for.end.r_exit.i.i.loopexit.us.us.1
  %indvars.iv.next.i.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %581 = phi float [ %587, %for.body.i.i.us.us.1.1 ], [ %mul3.i.i.us.us.1.1, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %582 = add nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %403
  %arrayidx8.i.i.us.us.1.1 = getelementptr inbounds float, float* %8, i64 %582
  %583 = load float, float* %arrayidx8.i.i.us.us.1.1, align 4, !tbaa !12
  %584 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %29
  %585 = add nsw i64 %584, %448
  %arrayidx12.i.i.us.us.1.1 = getelementptr inbounds float, float* %12, i64 %585
  %586 = load float, float* %arrayidx12.i.i.us.us.1.1, align 4, !tbaa !12
  %587 = tail call float @llvm.fmuladd.f32(float %583, float %586, float %581) #2
  store float %587, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1.1, label %for.end.r_exit.i.i.loopexit.us.us.1.1, label %for.body.i.i.us.us.1.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1.1:            ; preds = %for.body.i.i.us.us.1.1
  %588 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %588, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !24

for.body.i.i.us.us.1162:                          ; preds = %for.body.i.i.us.us.1162, %for.end.r_exit.i.i.loopexit.us.us
  %indvars.iv.next.i.i2.us.us.1157 = phi i64 [ %indvars.iv.next.i.i.us.us.1160, %for.body.i.i.us.us.1162 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us ]
  %589 = phi float [ %595, %for.body.i.i.us.us.1162 ], [ %mul3.i.i.us.us.1154, %for.end.r_exit.i.i.loopexit.us.us ]
  %590 = add nsw i64 %indvars.iv.next.i.i2.us.us.1157, %389
  %arrayidx8.i.i.us.us.1158 = getelementptr inbounds float, float* %8, i64 %590
  %591 = load float, float* %arrayidx8.i.i.us.us.1158, align 4, !tbaa !12
  %592 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1157, %29
  %593 = add nsw i64 %592, %394
  %arrayidx12.i.i.us.us.1159 = getelementptr inbounds float, float* %12, i64 %593
  %594 = load float, float* %arrayidx12.i.i.us.us.1159, align 4, !tbaa !12
  %595 = tail call float @llvm.fmuladd.f32(float %591, float %594, float %589) #2
  store float %595, float* %arrayidx.i.i.us.us.1153, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1160 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1157, 1
  %exitcond.not.i.i.us.us.1161 = icmp eq i64 %indvars.iv.next.i.i.us.us.1160, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1161, label %for.end.r_exit.i.i.loopexit.us.us.1163, label %for.body.i.i.us.us.1162, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1163:           ; preds = %for.body.i.i.us.us.1162
  %596 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %596, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !24
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
  %14 = getelementptr i8*, i8** %0, i64 4
  %15 = bitcast i8** %14 to i32**
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr i8*, i8** %0, i64 6
  %19 = bitcast i8** %18 to i32**
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr i8*, i8** %0, i64 8
  %23 = bitcast i8** %22 to float**
  %24 = load float*, float** %23, align 8
  %25 = load float, float* %24, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp32.i.i = icmp sgt i32 %17, 0
  %26 = sext i32 %21 to i64
  %wide.trip.count.i.i = zext i32 %17 to i64
  br i1 %cmp32.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  %conv.i.i = trunc i64 %mul.i.i.i to i32
  %27 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.1 = or i32 %27, 1
  %28 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.2 = or i32 %28, 2
  %29 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.3 = or i32 %29, 3
  %30 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.4 = or i32 %30, 4
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.5 = or i32 %31, 5
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.6 = or i32 %32, 6
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.7 = or i32 %33, 7
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.8 = or i32 %34, 8
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.9 = or i32 %35, 9
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.10 = or i32 %36, 10
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.11 = or i32 %37, 11
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.12 = or i32 %38, 12
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.13 = or i32 %39, 13
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.14 = or i32 %40, 14
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.15 = or i32 %41, 15
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.16 = or i32 %42, 16
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.17 = or i32 %43, 17
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.18 = or i32 %44, 18
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.19 = or i32 %45, 19
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.20 = or i32 %46, 20
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.21 = or i32 %47, 21
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.22 = or i32 %48, 22
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.23 = or i32 %49, 23
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.24 = or i32 %50, 24
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.25 = or i32 %51, 25
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.26 = or i32 %52, 26
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.27 = or i32 %53, 27
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.28 = or i32 %54, 28
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.29 = or i32 %55, 29
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.30 = or i32 %56, 30
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.31 = or i32 %57, 31
  %ident.check = icmp ne i32 %21, 1
  %58 = trunc i64 %3 to i32
  %59 = shl i32 %58, 3
  %60 = add i32 %59, %conv.i.i
  %61 = icmp eq i32 %60, 2147483640
  %62 = or i1 %ident.check, %61
  %63 = add i32 %59, %conv.i.i
  %64 = or i32 %63, 2
  %65 = icmp sgt i32 %64, 2147483640
  %66 = or i1 %62, %65
  %67 = add i32 %59, %conv.i.i
  %68 = or i32 %67, 3
  %69 = icmp sgt i32 %68, 2147483640
  %70 = or i1 %66, %69
  %71 = add i32 %59, %conv.i.i
  %72 = or i32 %71, 4
  %73 = icmp sgt i32 %72, 2147483640
  %74 = or i1 %70, %73
  %75 = add i32 %59, %conv.i.i
  %76 = or i32 %75, 5
  %77 = icmp sgt i32 %76, 2147483640
  %78 = or i1 %74, %77
  %79 = add i32 %59, %conv.i.i
  %80 = or i32 %79, 6
  %81 = icmp sgt i32 %80, 2147483640
  %82 = or i1 %78, %81
  %83 = add i32 %59, %conv.i.i
  %84 = or i32 %83, 7
  %85 = icmp sgt i32 %84, 2147483640
  %86 = or i1 %82, %85
  %87 = add i32 %59, %conv.i.i
  %88 = add i32 %87, 9
  %89 = add i32 %87, 16
  %90 = icmp slt i32 %89, %88
  %91 = or i1 %86, %90
  %92 = add i32 %59, %conv.i.i
  %93 = add i32 %92, 10
  %94 = add i32 %92, 17
  %95 = icmp slt i32 %94, %93
  %96 = or i1 %91, %95
  %97 = add i32 %59, %conv.i.i
  %98 = add i32 %97, 11
  %99 = add i32 %97, 18
  %100 = icmp slt i32 %99, %98
  %101 = or i1 %96, %100
  %102 = add i32 %59, %conv.i.i
  %103 = add i32 %102, 12
  %104 = add i32 %102, 19
  %105 = icmp slt i32 %104, %103
  %106 = or i1 %101, %105
  %107 = add i32 %59, %conv.i.i
  %108 = add i32 %107, 13
  %109 = add i32 %107, 20
  %110 = icmp slt i32 %109, %108
  %111 = or i1 %106, %110
  %112 = add i32 %59, %conv.i.i
  %113 = add i32 %112, 14
  %114 = add i32 %112, 21
  %115 = icmp slt i32 %114, %113
  %116 = or i1 %111, %115
  %117 = add i32 %59, %conv.i.i
  %118 = add i32 %117, 15
  %119 = add i32 %117, 22
  %120 = icmp slt i32 %119, %118
  %121 = or i1 %116, %120
  %122 = add i32 %59, %conv.i.i
  %123 = add i32 %122, 17
  %124 = add i32 %122, 24
  %125 = icmp slt i32 %124, %123
  %126 = or i1 %121, %125
  %127 = add i32 %59, %conv.i.i
  %128 = add i32 %127, 18
  %129 = add i32 %127, 25
  %130 = icmp slt i32 %129, %128
  %131 = or i1 %126, %130
  %132 = add i32 %59, %conv.i.i
  %133 = add i32 %132, 19
  %134 = add i32 %132, 26
  %135 = icmp slt i32 %134, %133
  %136 = or i1 %131, %135
  %137 = add i32 %59, %conv.i.i
  %138 = add i32 %137, 20
  %139 = add i32 %137, 27
  %140 = icmp slt i32 %139, %138
  %141 = or i1 %136, %140
  %142 = add i32 %59, %conv.i.i
  %143 = add i32 %142, 21
  %144 = add i32 %142, 28
  %145 = icmp slt i32 %144, %143
  %146 = or i1 %141, %145
  %147 = add i32 %59, %conv.i.i
  %148 = add i32 %147, 22
  %149 = add i32 %147, 29
  %150 = icmp slt i32 %149, %148
  %151 = or i1 %146, %150
  %152 = add i32 %59, %conv.i.i
  %153 = add i32 %152, 23
  %154 = add i32 %152, 30
  %155 = icmp slt i32 %154, %153
  %156 = or i1 %151, %155
  %157 = add i32 %59, %conv.i.i
  %158 = add i32 %157, 25
  %159 = add i32 %157, 32
  %160 = icmp slt i32 %159, %158
  %161 = or i1 %156, %160
  %162 = add i32 %59, %conv.i.i
  %163 = add i32 %162, 26
  %164 = add i32 %162, 33
  %165 = icmp slt i32 %164, %163
  %166 = or i1 %161, %165
  %167 = add i32 %59, %conv.i.i
  %168 = add i32 %167, 27
  %169 = add i32 %167, 34
  %170 = icmp slt i32 %169, %168
  %171 = or i1 %166, %170
  %172 = add i32 %59, %conv.i.i
  %173 = add i32 %172, 28
  %174 = add i32 %172, 35
  %175 = icmp slt i32 %174, %173
  %176 = or i1 %171, %175
  %177 = add i32 %59, %conv.i.i
  %178 = add i32 %177, 29
  %179 = add i32 %177, 36
  %180 = icmp slt i32 %179, %178
  %181 = or i1 %176, %180
  %182 = add i32 %59, %conv.i.i
  %183 = add i32 %182, 30
  %184 = add i32 %182, 37
  %185 = icmp slt i32 %184, %183
  %186 = or i1 %181, %185
  %187 = add i32 %59, %conv.i.i
  %188 = add i32 %187, 31
  %189 = add i32 %187, 38
  %190 = icmp slt i32 %189, %188
  %191 = or i1 %186, %190
  br i1 %191, label %pregion_for_entry.pregion_for_init.i.i.preheader164, label %vector.ph

pregion_for_entry.pregion_for_init.i.i.preheader164: ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  br label %pregion_for_entry.pregion_for_init.i.i

vector.ph:                                        ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %broadcast.splatinsert = insertelement <8 x float> undef, float %25, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %192 = trunc i64 %mul3.i.i.i to i32
  %193 = mul nsw i32 %21, %192
  %194 = add nsw i32 %193, %conv.i.i
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %13, i64 %195
  %197 = bitcast float* %196 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %197, align 4, !tbaa !12, !llvm.access.group !16
  %198 = fmul <8 x float> %broadcast.splat, %wide.load
  %199 = bitcast float* %196 to <8 x float>*
  store <8 x float> %198, <8 x float>* %199, align 4, !tbaa !12, !llvm.access.group !16
  %200 = add nsw i32 %193, %conv.i.i.1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %13, i64 %201
  %203 = bitcast float* %202 to <8 x float>*
  %wide.load114 = load <8 x float>, <8 x float>* %203, align 4, !tbaa !12, !llvm.access.group !16
  %204 = fmul <8 x float> %broadcast.splat, %wide.load114
  %205 = bitcast float* %202 to <8 x float>*
  store <8 x float> %204, <8 x float>* %205, align 4, !tbaa !12, !llvm.access.group !16
  %206 = add nsw i32 %193, %conv.i.i.2
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %13, i64 %207
  %209 = bitcast float* %208 to <8 x float>*
  %wide.load115 = load <8 x float>, <8 x float>* %209, align 4, !tbaa !12, !llvm.access.group !16
  %210 = fmul <8 x float> %broadcast.splat, %wide.load115
  %211 = bitcast float* %208 to <8 x float>*
  store <8 x float> %210, <8 x float>* %211, align 4, !tbaa !12, !llvm.access.group !16
  %212 = add nsw i32 %193, %conv.i.i.3
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %13, i64 %213
  %215 = bitcast float* %214 to <8 x float>*
  %wide.load116 = load <8 x float>, <8 x float>* %215, align 4, !tbaa !12, !llvm.access.group !16
  %216 = fmul <8 x float> %broadcast.splat, %wide.load116
  %217 = bitcast float* %214 to <8 x float>*
  store <8 x float> %216, <8 x float>* %217, align 4, !tbaa !12, !llvm.access.group !16
  %218 = add nsw i32 %193, %conv.i.i.4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %13, i64 %219
  %221 = bitcast float* %220 to <8 x float>*
  %wide.load117 = load <8 x float>, <8 x float>* %221, align 4, !tbaa !12, !llvm.access.group !16
  %222 = fmul <8 x float> %broadcast.splat, %wide.load117
  %223 = bitcast float* %220 to <8 x float>*
  store <8 x float> %222, <8 x float>* %223, align 4, !tbaa !12, !llvm.access.group !16
  %224 = add nsw i32 %193, %conv.i.i.5
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %13, i64 %225
  %227 = bitcast float* %226 to <8 x float>*
  %wide.load118 = load <8 x float>, <8 x float>* %227, align 4, !tbaa !12, !llvm.access.group !16
  %228 = fmul <8 x float> %broadcast.splat, %wide.load118
  %229 = bitcast float* %226 to <8 x float>*
  store <8 x float> %228, <8 x float>* %229, align 4, !tbaa !12, !llvm.access.group !16
  %230 = add nsw i32 %193, %conv.i.i.6
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %13, i64 %231
  %233 = bitcast float* %232 to <8 x float>*
  %wide.load119 = load <8 x float>, <8 x float>* %233, align 4, !tbaa !12, !llvm.access.group !16
  %234 = fmul <8 x float> %broadcast.splat, %wide.load119
  %235 = bitcast float* %232 to <8 x float>*
  store <8 x float> %234, <8 x float>* %235, align 4, !tbaa !12, !llvm.access.group !16
  %236 = add nsw i32 %193, %conv.i.i.7
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %13, i64 %237
  %239 = bitcast float* %238 to <8 x float>*
  %wide.load120 = load <8 x float>, <8 x float>* %239, align 4, !tbaa !12, !llvm.access.group !16
  %240 = fmul <8 x float> %broadcast.splat, %wide.load120
  %241 = bitcast float* %238 to <8 x float>*
  store <8 x float> %240, <8 x float>* %241, align 4, !tbaa !12, !llvm.access.group !16
  %242 = add nsw i32 %193, %conv.i.i.8
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %13, i64 %243
  %245 = bitcast float* %244 to <8 x float>*
  %wide.load121 = load <8 x float>, <8 x float>* %245, align 4, !tbaa !12, !llvm.access.group !16
  %246 = fmul <8 x float> %broadcast.splat, %wide.load121
  %247 = bitcast float* %244 to <8 x float>*
  store <8 x float> %246, <8 x float>* %247, align 4, !tbaa !12, !llvm.access.group !16
  %248 = add nsw i32 %193, %conv.i.i.9
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds float, float* %13, i64 %249
  %251 = bitcast float* %250 to <8 x float>*
  %wide.load122 = load <8 x float>, <8 x float>* %251, align 4, !tbaa !12, !llvm.access.group !16
  %252 = fmul <8 x float> %broadcast.splat, %wide.load122
  %253 = bitcast float* %250 to <8 x float>*
  store <8 x float> %252, <8 x float>* %253, align 4, !tbaa !12, !llvm.access.group !16
  %254 = add nsw i32 %193, %conv.i.i.10
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %13, i64 %255
  %257 = bitcast float* %256 to <8 x float>*
  %wide.load123 = load <8 x float>, <8 x float>* %257, align 4, !tbaa !12, !llvm.access.group !16
  %258 = fmul <8 x float> %broadcast.splat, %wide.load123
  %259 = bitcast float* %256 to <8 x float>*
  store <8 x float> %258, <8 x float>* %259, align 4, !tbaa !12, !llvm.access.group !16
  %260 = add nsw i32 %193, %conv.i.i.11
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %13, i64 %261
  %263 = bitcast float* %262 to <8 x float>*
  %wide.load124 = load <8 x float>, <8 x float>* %263, align 4, !tbaa !12, !llvm.access.group !16
  %264 = fmul <8 x float> %broadcast.splat, %wide.load124
  %265 = bitcast float* %262 to <8 x float>*
  store <8 x float> %264, <8 x float>* %265, align 4, !tbaa !12, !llvm.access.group !16
  %266 = add nsw i32 %193, %conv.i.i.12
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %13, i64 %267
  %269 = bitcast float* %268 to <8 x float>*
  %wide.load125 = load <8 x float>, <8 x float>* %269, align 4, !tbaa !12, !llvm.access.group !16
  %270 = fmul <8 x float> %broadcast.splat, %wide.load125
  %271 = bitcast float* %268 to <8 x float>*
  store <8 x float> %270, <8 x float>* %271, align 4, !tbaa !12, !llvm.access.group !16
  %272 = add nsw i32 %193, %conv.i.i.13
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float* %13, i64 %273
  %275 = bitcast float* %274 to <8 x float>*
  %wide.load126 = load <8 x float>, <8 x float>* %275, align 4, !tbaa !12, !llvm.access.group !16
  %276 = fmul <8 x float> %broadcast.splat, %wide.load126
  %277 = bitcast float* %274 to <8 x float>*
  store <8 x float> %276, <8 x float>* %277, align 4, !tbaa !12, !llvm.access.group !16
  %278 = add nsw i32 %193, %conv.i.i.14
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %13, i64 %279
  %281 = bitcast float* %280 to <8 x float>*
  %wide.load127 = load <8 x float>, <8 x float>* %281, align 4, !tbaa !12, !llvm.access.group !16
  %282 = fmul <8 x float> %broadcast.splat, %wide.load127
  %283 = bitcast float* %280 to <8 x float>*
  store <8 x float> %282, <8 x float>* %283, align 4, !tbaa !12, !llvm.access.group !16
  %284 = add nsw i32 %193, %conv.i.i.15
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds float, float* %13, i64 %285
  %287 = bitcast float* %286 to <8 x float>*
  %wide.load128 = load <8 x float>, <8 x float>* %287, align 4, !tbaa !12, !llvm.access.group !16
  %288 = fmul <8 x float> %broadcast.splat, %wide.load128
  %289 = bitcast float* %286 to <8 x float>*
  store <8 x float> %288, <8 x float>* %289, align 4, !tbaa !12, !llvm.access.group !16
  %290 = add nsw i32 %193, %conv.i.i.16
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, float* %13, i64 %291
  %293 = bitcast float* %292 to <8 x float>*
  %wide.load129 = load <8 x float>, <8 x float>* %293, align 4, !tbaa !12, !llvm.access.group !16
  %294 = fmul <8 x float> %broadcast.splat, %wide.load129
  %295 = bitcast float* %292 to <8 x float>*
  store <8 x float> %294, <8 x float>* %295, align 4, !tbaa !12, !llvm.access.group !16
  %296 = add nsw i32 %193, %conv.i.i.17
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds float, float* %13, i64 %297
  %299 = bitcast float* %298 to <8 x float>*
  %wide.load130 = load <8 x float>, <8 x float>* %299, align 4, !tbaa !12, !llvm.access.group !16
  %300 = fmul <8 x float> %broadcast.splat, %wide.load130
  %301 = bitcast float* %298 to <8 x float>*
  store <8 x float> %300, <8 x float>* %301, align 4, !tbaa !12, !llvm.access.group !16
  %302 = add nsw i32 %193, %conv.i.i.18
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %13, i64 %303
  %305 = bitcast float* %304 to <8 x float>*
  %wide.load131 = load <8 x float>, <8 x float>* %305, align 4, !tbaa !12, !llvm.access.group !16
  %306 = fmul <8 x float> %broadcast.splat, %wide.load131
  %307 = bitcast float* %304 to <8 x float>*
  store <8 x float> %306, <8 x float>* %307, align 4, !tbaa !12, !llvm.access.group !16
  %308 = add nsw i32 %193, %conv.i.i.19
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %13, i64 %309
  %311 = bitcast float* %310 to <8 x float>*
  %wide.load132 = load <8 x float>, <8 x float>* %311, align 4, !tbaa !12, !llvm.access.group !16
  %312 = fmul <8 x float> %broadcast.splat, %wide.load132
  %313 = bitcast float* %310 to <8 x float>*
  store <8 x float> %312, <8 x float>* %313, align 4, !tbaa !12, !llvm.access.group !16
  %314 = add nsw i32 %193, %conv.i.i.20
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds float, float* %13, i64 %315
  %317 = bitcast float* %316 to <8 x float>*
  %wide.load133 = load <8 x float>, <8 x float>* %317, align 4, !tbaa !12, !llvm.access.group !16
  %318 = fmul <8 x float> %broadcast.splat, %wide.load133
  %319 = bitcast float* %316 to <8 x float>*
  store <8 x float> %318, <8 x float>* %319, align 4, !tbaa !12, !llvm.access.group !16
  %320 = add nsw i32 %193, %conv.i.i.21
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds float, float* %13, i64 %321
  %323 = bitcast float* %322 to <8 x float>*
  %wide.load134 = load <8 x float>, <8 x float>* %323, align 4, !tbaa !12, !llvm.access.group !16
  %324 = fmul <8 x float> %broadcast.splat, %wide.load134
  %325 = bitcast float* %322 to <8 x float>*
  store <8 x float> %324, <8 x float>* %325, align 4, !tbaa !12, !llvm.access.group !16
  %326 = add nsw i32 %193, %conv.i.i.22
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %13, i64 %327
  %329 = bitcast float* %328 to <8 x float>*
  %wide.load135 = load <8 x float>, <8 x float>* %329, align 4, !tbaa !12, !llvm.access.group !16
  %330 = fmul <8 x float> %broadcast.splat, %wide.load135
  %331 = bitcast float* %328 to <8 x float>*
  store <8 x float> %330, <8 x float>* %331, align 4, !tbaa !12, !llvm.access.group !16
  %332 = add nsw i32 %193, %conv.i.i.23
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds float, float* %13, i64 %333
  %335 = bitcast float* %334 to <8 x float>*
  %wide.load136 = load <8 x float>, <8 x float>* %335, align 4, !tbaa !12, !llvm.access.group !16
  %336 = fmul <8 x float> %broadcast.splat, %wide.load136
  %337 = bitcast float* %334 to <8 x float>*
  store <8 x float> %336, <8 x float>* %337, align 4, !tbaa !12, !llvm.access.group !16
  %338 = add nsw i32 %193, %conv.i.i.24
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds float, float* %13, i64 %339
  %341 = bitcast float* %340 to <8 x float>*
  %wide.load137 = load <8 x float>, <8 x float>* %341, align 4, !tbaa !12, !llvm.access.group !16
  %342 = fmul <8 x float> %broadcast.splat, %wide.load137
  %343 = bitcast float* %340 to <8 x float>*
  store <8 x float> %342, <8 x float>* %343, align 4, !tbaa !12, !llvm.access.group !16
  %344 = add nsw i32 %193, %conv.i.i.25
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float, float* %13, i64 %345
  %347 = bitcast float* %346 to <8 x float>*
  %wide.load138 = load <8 x float>, <8 x float>* %347, align 4, !tbaa !12, !llvm.access.group !16
  %348 = fmul <8 x float> %broadcast.splat, %wide.load138
  %349 = bitcast float* %346 to <8 x float>*
  store <8 x float> %348, <8 x float>* %349, align 4, !tbaa !12, !llvm.access.group !16
  %350 = add nsw i32 %193, %conv.i.i.26
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds float, float* %13, i64 %351
  %353 = bitcast float* %352 to <8 x float>*
  %wide.load139 = load <8 x float>, <8 x float>* %353, align 4, !tbaa !12, !llvm.access.group !16
  %354 = fmul <8 x float> %broadcast.splat, %wide.load139
  %355 = bitcast float* %352 to <8 x float>*
  store <8 x float> %354, <8 x float>* %355, align 4, !tbaa !12, !llvm.access.group !16
  %356 = add nsw i32 %193, %conv.i.i.27
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds float, float* %13, i64 %357
  %359 = bitcast float* %358 to <8 x float>*
  %wide.load140 = load <8 x float>, <8 x float>* %359, align 4, !tbaa !12, !llvm.access.group !16
  %360 = fmul <8 x float> %broadcast.splat, %wide.load140
  %361 = bitcast float* %358 to <8 x float>*
  store <8 x float> %360, <8 x float>* %361, align 4, !tbaa !12, !llvm.access.group !16
  %362 = add nsw i32 %193, %conv.i.i.28
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float* %13, i64 %363
  %365 = bitcast float* %364 to <8 x float>*
  %wide.load141 = load <8 x float>, <8 x float>* %365, align 4, !tbaa !12, !llvm.access.group !16
  %366 = fmul <8 x float> %broadcast.splat, %wide.load141
  %367 = bitcast float* %364 to <8 x float>*
  store <8 x float> %366, <8 x float>* %367, align 4, !tbaa !12, !llvm.access.group !16
  %368 = add nsw i32 %193, %conv.i.i.29
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds float, float* %13, i64 %369
  %371 = bitcast float* %370 to <8 x float>*
  %wide.load142 = load <8 x float>, <8 x float>* %371, align 4, !tbaa !12, !llvm.access.group !16
  %372 = fmul <8 x float> %broadcast.splat, %wide.load142
  %373 = bitcast float* %370 to <8 x float>*
  store <8 x float> %372, <8 x float>* %373, align 4, !tbaa !12, !llvm.access.group !16
  %374 = add nsw i32 %193, %conv.i.i.30
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds float, float* %13, i64 %375
  %377 = bitcast float* %376 to <8 x float>*
  %wide.load143 = load <8 x float>, <8 x float>* %377, align 4, !tbaa !12, !llvm.access.group !16
  %378 = fmul <8 x float> %broadcast.splat, %wide.load143
  %379 = bitcast float* %376 to <8 x float>*
  store <8 x float> %378, <8 x float>* %379, align 4, !tbaa !12, !llvm.access.group !16
  %380 = add nsw i32 %193, %conv.i.i.31
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds float, float* %13, i64 %381
  %383 = bitcast float* %382 to <8 x float>*
  %wide.load144 = load <8 x float>, <8 x float>* %383, align 4, !tbaa !12, !llvm.access.group !16
  %384 = fmul <8 x float> %broadcast.splat, %wide.load144
  %385 = bitcast float* %382 to <8 x float>*
  store <8 x float> %384, <8 x float>* %385, align 4, !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_mm2_kernel2.exit

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %mul.i.i.us = mul nsw i32 %21, %conv2.i.i.us
  %mul5.i.i.us = mul nsw i32 %17, %conv2.i.i.us
  %386 = sext i32 %mul5.i.i.us to i64
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_entry.entry.i.i.us.us:                ; preds = %for.end.r_exit.i.i.loopexit.us.us.1163, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.i.us.preheader ], [ %593, %for.end.r_exit.i.i.loopexit.us.us.1163 ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us
  %387 = load float, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us = fmul float %25, %387
  store float %mul3.i.i.us.us, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %388 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

for.end.r_exit.i.i.loopexit.us.us:                ; preds = %for.body.i.i.us.us
  %389 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.1149 = add nuw nsw i64 %389, %mul.i.i.i
  %conv.i.i.us.us.1150 = trunc i64 %add1.i.i.i.us.us.1149 to i32
  %add.i.i.us.us.1151 = add nsw i32 %mul.i.i.us, %conv.i.i.us.us.1150
  %idxprom.i.i.us.us.1152 = sext i32 %add.i.i.us.us.1151 to i64
  %arrayidx.i.i.us.us.1153 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.1152
  %390 = load float, float* %arrayidx.i.i.us.us.1153, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1154 = fmul float %25, %390
  store float %mul3.i.i.us.us.1154, float* %arrayidx.i.i.us.us.1153, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1155 = shl i64 %add1.i.i.i.us.us.1149, 32
  %391 = ashr exact i64 %sext.i.i.us.us.1155, 32
  br label %for.body.i.i.us.us.1162

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %pregion_for_entry.entry.i.i.us.us
  %indvars.iv.next.i.i2.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us ]
  %392 = phi float [ %398, %for.body.i.i.us.us ], [ %mul3.i.i.us.us, %pregion_for_entry.entry.i.i.us.us ]
  %393 = add nsw i64 %indvars.iv.next.i.i2.us.us, %386
  %arrayidx8.i.i.us.us = getelementptr inbounds float, float* %7, i64 %393
  %394 = load float, float* %arrayidx8.i.i.us.us, align 4, !tbaa !12
  %395 = mul nsw i64 %indvars.iv.next.i.i2.us.us, %26
  %396 = add nsw i64 %395, %388
  %arrayidx12.i.i.us.us = getelementptr inbounds float, float* %10, i64 %396
  %397 = load float, float* %arrayidx12.i.i.us.us, align 4, !tbaa !12
  %398 = tail call float @llvm.fmuladd.f32(float %394, float %397, float %392) #2
  store float %398, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i2.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %for.end.r_exit.i.i.loopexit.us.us, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us:               ; preds = %for.end.r_exit.i.i.loopexit.us.us.1163
  %399 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %399, 1
  %mul.i.i.us.1 = mul nsw i32 %21, %conv2.i.i.us.1
  %mul5.i.i.us.1 = mul nsw i32 %17, %conv2.i.i.us.1
  %400 = sext i32 %mul5.i.i.us.1 to i64
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader164
  %_local_id_y.i.0 = phi i64 [ %433, %pregion_for_entry.pregion_for_init.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader164 ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %mul.i.i = mul nsw i32 %21, %conv2.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %13, i64 %idxprom.i.i
  %401 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i = fmul float %25, %401
  store float %mul3.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.1
  %402 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.1 = fmul float %25, %402
  store float %mul3.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.2 = add nsw i32 %mul.i.i, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.2
  %403 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.2 = fmul float %25, %403
  store float %mul3.i.i.2, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.3 = add nsw i32 %mul.i.i, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.3
  %404 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.3 = fmul float %25, %404
  store float %mul3.i.i.3, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.4 = add nsw i32 %mul.i.i, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.4
  %405 = load float, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.4 = fmul float %25, %405
  store float %mul3.i.i.4, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.5 = add nsw i32 %mul.i.i, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.5
  %406 = load float, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.5 = fmul float %25, %406
  store float %mul3.i.i.5, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.6 = add nsw i32 %mul.i.i, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.6
  %407 = load float, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.6 = fmul float %25, %407
  store float %mul3.i.i.6, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.7 = add nsw i32 %mul.i.i, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.7
  %408 = load float, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.7 = fmul float %25, %408
  store float %mul3.i.i.7, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.8 = add nsw i32 %mul.i.i, %conv.i.i.8
  %idxprom.i.i.8 = sext i32 %add.i.i.8 to i64
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.8
  %409 = load float, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.8 = fmul float %25, %409
  store float %mul3.i.i.8, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.9 = add nsw i32 %mul.i.i, %conv.i.i.9
  %idxprom.i.i.9 = sext i32 %add.i.i.9 to i64
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.9
  %410 = load float, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.9 = fmul float %25, %410
  store float %mul3.i.i.9, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.10 = add nsw i32 %mul.i.i, %conv.i.i.10
  %idxprom.i.i.10 = sext i32 %add.i.i.10 to i64
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.10
  %411 = load float, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.10 = fmul float %25, %411
  store float %mul3.i.i.10, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.11 = add nsw i32 %mul.i.i, %conv.i.i.11
  %idxprom.i.i.11 = sext i32 %add.i.i.11 to i64
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.11
  %412 = load float, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.11 = fmul float %25, %412
  store float %mul3.i.i.11, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.12 = add nsw i32 %mul.i.i, %conv.i.i.12
  %idxprom.i.i.12 = sext i32 %add.i.i.12 to i64
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.12
  %413 = load float, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.12 = fmul float %25, %413
  store float %mul3.i.i.12, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.13 = add nsw i32 %mul.i.i, %conv.i.i.13
  %idxprom.i.i.13 = sext i32 %add.i.i.13 to i64
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.13
  %414 = load float, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.13 = fmul float %25, %414
  store float %mul3.i.i.13, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.14 = add nsw i32 %mul.i.i, %conv.i.i.14
  %idxprom.i.i.14 = sext i32 %add.i.i.14 to i64
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.14
  %415 = load float, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.14 = fmul float %25, %415
  store float %mul3.i.i.14, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.15 = add nsw i32 %mul.i.i, %conv.i.i.15
  %idxprom.i.i.15 = sext i32 %add.i.i.15 to i64
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.15
  %416 = load float, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.15 = fmul float %25, %416
  store float %mul3.i.i.15, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.16 = add nsw i32 %mul.i.i, %conv.i.i.16
  %idxprom.i.i.16 = sext i32 %add.i.i.16 to i64
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.16
  %417 = load float, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.16 = fmul float %25, %417
  store float %mul3.i.i.16, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.17 = add nsw i32 %mul.i.i, %conv.i.i.17
  %idxprom.i.i.17 = sext i32 %add.i.i.17 to i64
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.17
  %418 = load float, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.17 = fmul float %25, %418
  store float %mul3.i.i.17, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.18 = add nsw i32 %mul.i.i, %conv.i.i.18
  %idxprom.i.i.18 = sext i32 %add.i.i.18 to i64
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.18
  %419 = load float, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.18 = fmul float %25, %419
  store float %mul3.i.i.18, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.19 = add nsw i32 %mul.i.i, %conv.i.i.19
  %idxprom.i.i.19 = sext i32 %add.i.i.19 to i64
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.19
  %420 = load float, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.19 = fmul float %25, %420
  store float %mul3.i.i.19, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.20 = add nsw i32 %mul.i.i, %conv.i.i.20
  %idxprom.i.i.20 = sext i32 %add.i.i.20 to i64
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.20
  %421 = load float, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.20 = fmul float %25, %421
  store float %mul3.i.i.20, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.21 = add nsw i32 %mul.i.i, %conv.i.i.21
  %idxprom.i.i.21 = sext i32 %add.i.i.21 to i64
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.21
  %422 = load float, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.21 = fmul float %25, %422
  store float %mul3.i.i.21, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.22 = add nsw i32 %mul.i.i, %conv.i.i.22
  %idxprom.i.i.22 = sext i32 %add.i.i.22 to i64
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.22
  %423 = load float, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.22 = fmul float %25, %423
  store float %mul3.i.i.22, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.23 = add nsw i32 %mul.i.i, %conv.i.i.23
  %idxprom.i.i.23 = sext i32 %add.i.i.23 to i64
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.23
  %424 = load float, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.23 = fmul float %25, %424
  store float %mul3.i.i.23, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.24 = add nsw i32 %mul.i.i, %conv.i.i.24
  %idxprom.i.i.24 = sext i32 %add.i.i.24 to i64
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.24
  %425 = load float, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.24 = fmul float %25, %425
  store float %mul3.i.i.24, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.25 = add nsw i32 %mul.i.i, %conv.i.i.25
  %idxprom.i.i.25 = sext i32 %add.i.i.25 to i64
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.25
  %426 = load float, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.25 = fmul float %25, %426
  store float %mul3.i.i.25, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.26 = add nsw i32 %mul.i.i, %conv.i.i.26
  %idxprom.i.i.26 = sext i32 %add.i.i.26 to i64
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.26
  %427 = load float, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.26 = fmul float %25, %427
  store float %mul3.i.i.26, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.27 = add nsw i32 %mul.i.i, %conv.i.i.27
  %idxprom.i.i.27 = sext i32 %add.i.i.27 to i64
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.27
  %428 = load float, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.27 = fmul float %25, %428
  store float %mul3.i.i.27, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.28 = add nsw i32 %mul.i.i, %conv.i.i.28
  %idxprom.i.i.28 = sext i32 %add.i.i.28 to i64
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.28
  %429 = load float, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.28 = fmul float %25, %429
  store float %mul3.i.i.28, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.29 = add nsw i32 %mul.i.i, %conv.i.i.29
  %idxprom.i.i.29 = sext i32 %add.i.i.29 to i64
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.29
  %430 = load float, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.29 = fmul float %25, %430
  store float %mul3.i.i.29, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.30 = add nsw i32 %mul.i.i, %conv.i.i.30
  %idxprom.i.i.30 = sext i32 %add.i.i.30 to i64
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.30
  %431 = load float, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.30 = fmul float %25, %431
  store float %mul3.i.i.30, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.31 = add nsw i32 %mul.i.i, %conv.i.i.31
  %idxprom.i.i.31 = sext i32 %add.i.i.31 to i64
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.31
  %432 = load float, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.31 = fmul float %25, %432
  store float %mul3.i.i.31, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %433 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond30.not = icmp eq i64 %433, 8
  br i1 %exitcond30.not, label %_pocl_kernel_mm2_kernel2.exit.loopexit165, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !27

_pocl_kernel_mm2_kernel2.exit.loopexit:           ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1
  br label %_pocl_kernel_mm2_kernel2.exit

_pocl_kernel_mm2_kernel2.exit.loopexit165:        ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %_pocl_kernel_mm2_kernel2.exit

_pocl_kernel_mm2_kernel2.exit:                    ; preds = %_pocl_kernel_mm2_kernel2.exit.loopexit165, %_pocl_kernel_mm2_kernel2.exit.loopexit, %vector.ph
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1, %pregion_for_end.i.i.us-lcssa.us.us
  %_local_id_x.i.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us ], [ %585, %for.end.r_exit.i.i.loopexit.us.us.1.1 ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.1
  %434 = load float, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1 = fmul float %25, %434
  store float %mul3.i.i.us.us.1, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %435 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1
  %indvars.iv.next.i.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1 ]
  %436 = phi float [ %442, %for.body.i.i.us.us.1 ], [ %mul3.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1 ]
  %437 = add nsw i64 %indvars.iv.next.i.i2.us.us.1, %400
  %arrayidx8.i.i.us.us.1 = getelementptr inbounds float, float* %7, i64 %437
  %438 = load float, float* %arrayidx8.i.i.us.us.1, align 4, !tbaa !12
  %439 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1, %26
  %440 = add nsw i64 %439, %435
  %arrayidx12.i.i.us.us.1 = getelementptr inbounds float, float* %10, i64 %440
  %441 = load float, float* %arrayidx12.i.i.us.us.1, align 4, !tbaa !12
  %442 = tail call float @llvm.fmuladd.f32(float %438, float %441, float %436) #2
  store float %442, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %for.end.r_exit.i.i.loopexit.us.us.1, label %for.body.i.i.us.us.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1:              ; preds = %for.body.i.i.us.us.1
  %443 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %443, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %add.i.i.us.us.1.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.1.1
  %444 = load float, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1.1 = fmul float %25, %444
  store float %mul3.i.i.us.us.1.1, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1.1 = shl i64 %add1.i.i.i.us.us.1.1, 32
  %445 = ashr exact i64 %sext.i.i.us.us.1.1, 32
  br label %for.body.i.i.us.us.1.1

pregion_for_end.i.i.us-lcssa.us.us.1:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1
  %446 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %446, 2
  %mul.i.i.us.2 = mul nsw i32 %21, %conv2.i.i.us.2
  %mul5.i.i.us.2 = mul nsw i32 %17, %conv2.i.i.us.2
  %447 = sext i32 %mul5.i.i.us.2 to i64
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1, %pregion_for_end.i.i.us-lcssa.us.us.1
  %_local_id_x.i.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.1 ], [ %577, %for.end.r_exit.i.i.loopexit.us.us.2.1 ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.2
  %448 = load float, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.2 = fmul float %25, %448
  store float %mul3.i.i.us.us.2, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %449 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2
  %indvars.iv.next.i.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2 ]
  %450 = phi float [ %456, %for.body.i.i.us.us.2 ], [ %mul3.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2 ]
  %451 = add nsw i64 %indvars.iv.next.i.i2.us.us.2, %447
  %arrayidx8.i.i.us.us.2 = getelementptr inbounds float, float* %7, i64 %451
  %452 = load float, float* %arrayidx8.i.i.us.us.2, align 4, !tbaa !12
  %453 = mul nsw i64 %indvars.iv.next.i.i2.us.us.2, %26
  %454 = add nsw i64 %453, %449
  %arrayidx12.i.i.us.us.2 = getelementptr inbounds float, float* %10, i64 %454
  %455 = load float, float* %arrayidx12.i.i.us.us.2, align 4, !tbaa !12
  %456 = tail call float @llvm.fmuladd.f32(float %452, float %455, float %450) #2
  store float %456, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %for.end.r_exit.i.i.loopexit.us.us.2, label %for.body.i.i.us.us.2, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2:              ; preds = %for.body.i.i.us.us.2
  %457 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %457, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %add.i.i.us.us.2.1 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.2.1
  %458 = load float, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.2.1 = fmul float %25, %458
  store float %mul3.i.i.us.us.2.1, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2.1 = shl i64 %add1.i.i.i.us.us.2.1, 32
  %459 = ashr exact i64 %sext.i.i.us.us.2.1, 32
  br label %for.body.i.i.us.us.2.1

pregion_for_end.i.i.us-lcssa.us.us.2:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1
  %460 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %460, 3
  %mul.i.i.us.3 = mul nsw i32 %21, %conv2.i.i.us.3
  %mul5.i.i.us.3 = mul nsw i32 %17, %conv2.i.i.us.3
  %461 = sext i32 %mul5.i.i.us.3 to i64
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1, %pregion_for_end.i.i.us-lcssa.us.us.2
  %_local_id_x.i.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.2 ], [ %569, %for.end.r_exit.i.i.loopexit.us.us.3.1 ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.3
  %462 = load float, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.3 = fmul float %25, %462
  store float %mul3.i.i.us.us.3, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %463 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3
  %indvars.iv.next.i.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3 ]
  %464 = phi float [ %470, %for.body.i.i.us.us.3 ], [ %mul3.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3 ]
  %465 = add nsw i64 %indvars.iv.next.i.i2.us.us.3, %461
  %arrayidx8.i.i.us.us.3 = getelementptr inbounds float, float* %7, i64 %465
  %466 = load float, float* %arrayidx8.i.i.us.us.3, align 4, !tbaa !12
  %467 = mul nsw i64 %indvars.iv.next.i.i2.us.us.3, %26
  %468 = add nsw i64 %467, %463
  %arrayidx12.i.i.us.us.3 = getelementptr inbounds float, float* %10, i64 %468
  %469 = load float, float* %arrayidx12.i.i.us.us.3, align 4, !tbaa !12
  %470 = tail call float @llvm.fmuladd.f32(float %466, float %469, float %464) #2
  store float %470, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %for.end.r_exit.i.i.loopexit.us.us.3, label %for.body.i.i.us.us.3, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3:              ; preds = %for.body.i.i.us.us.3
  %471 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %471, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %add.i.i.us.us.3.1 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.3.1
  %472 = load float, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.3.1 = fmul float %25, %472
  store float %mul3.i.i.us.us.3.1, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3.1 = shl i64 %add1.i.i.i.us.us.3.1, 32
  %473 = ashr exact i64 %sext.i.i.us.us.3.1, 32
  br label %for.body.i.i.us.us.3.1

pregion_for_end.i.i.us-lcssa.us.us.3:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1
  %474 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %474, 4
  %mul.i.i.us.4 = mul nsw i32 %21, %conv2.i.i.us.4
  %mul5.i.i.us.4 = mul nsw i32 %17, %conv2.i.i.us.4
  %475 = sext i32 %mul5.i.i.us.4 to i64
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1, %pregion_for_end.i.i.us-lcssa.us.us.3
  %_local_id_x.i.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.3 ], [ %561, %for.end.r_exit.i.i.loopexit.us.us.4.1 ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.4
  %476 = load float, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.4 = fmul float %25, %476
  store float %mul3.i.i.us.us.4, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %477 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4
  %indvars.iv.next.i.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4 ]
  %478 = phi float [ %484, %for.body.i.i.us.us.4 ], [ %mul3.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4 ]
  %479 = add nsw i64 %indvars.iv.next.i.i2.us.us.4, %475
  %arrayidx8.i.i.us.us.4 = getelementptr inbounds float, float* %7, i64 %479
  %480 = load float, float* %arrayidx8.i.i.us.us.4, align 4, !tbaa !12
  %481 = mul nsw i64 %indvars.iv.next.i.i2.us.us.4, %26
  %482 = add nsw i64 %481, %477
  %arrayidx12.i.i.us.us.4 = getelementptr inbounds float, float* %10, i64 %482
  %483 = load float, float* %arrayidx12.i.i.us.us.4, align 4, !tbaa !12
  %484 = tail call float @llvm.fmuladd.f32(float %480, float %483, float %478) #2
  store float %484, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %for.end.r_exit.i.i.loopexit.us.us.4, label %for.body.i.i.us.us.4, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4:              ; preds = %for.body.i.i.us.us.4
  %485 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %485, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %add.i.i.us.us.4.1 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.4.1
  %486 = load float, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.4.1 = fmul float %25, %486
  store float %mul3.i.i.us.us.4.1, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4.1 = shl i64 %add1.i.i.i.us.us.4.1, 32
  %487 = ashr exact i64 %sext.i.i.us.us.4.1, 32
  br label %for.body.i.i.us.us.4.1

pregion_for_end.i.i.us-lcssa.us.us.4:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1
  %488 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %488, 5
  %mul.i.i.us.5 = mul nsw i32 %21, %conv2.i.i.us.5
  %mul5.i.i.us.5 = mul nsw i32 %17, %conv2.i.i.us.5
  %489 = sext i32 %mul5.i.i.us.5 to i64
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1, %pregion_for_end.i.i.us-lcssa.us.us.4
  %_local_id_x.i.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.4 ], [ %553, %for.end.r_exit.i.i.loopexit.us.us.5.1 ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.5
  %490 = load float, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.5 = fmul float %25, %490
  store float %mul3.i.i.us.us.5, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %491 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5
  %indvars.iv.next.i.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5 ]
  %492 = phi float [ %498, %for.body.i.i.us.us.5 ], [ %mul3.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5 ]
  %493 = add nsw i64 %indvars.iv.next.i.i2.us.us.5, %489
  %arrayidx8.i.i.us.us.5 = getelementptr inbounds float, float* %7, i64 %493
  %494 = load float, float* %arrayidx8.i.i.us.us.5, align 4, !tbaa !12
  %495 = mul nsw i64 %indvars.iv.next.i.i2.us.us.5, %26
  %496 = add nsw i64 %495, %491
  %arrayidx12.i.i.us.us.5 = getelementptr inbounds float, float* %10, i64 %496
  %497 = load float, float* %arrayidx12.i.i.us.us.5, align 4, !tbaa !12
  %498 = tail call float @llvm.fmuladd.f32(float %494, float %497, float %492) #2
  store float %498, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %for.end.r_exit.i.i.loopexit.us.us.5, label %for.body.i.i.us.us.5, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5:              ; preds = %for.body.i.i.us.us.5
  %499 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %499, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %add.i.i.us.us.5.1 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.5.1
  %500 = load float, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.5.1 = fmul float %25, %500
  store float %mul3.i.i.us.us.5.1, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5.1 = shl i64 %add1.i.i.i.us.us.5.1, 32
  %501 = ashr exact i64 %sext.i.i.us.us.5.1, 32
  br label %for.body.i.i.us.us.5.1

pregion_for_end.i.i.us-lcssa.us.us.5:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1
  %502 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %502, 6
  %mul.i.i.us.6 = mul nsw i32 %21, %conv2.i.i.us.6
  %mul5.i.i.us.6 = mul nsw i32 %17, %conv2.i.i.us.6
  %503 = sext i32 %mul5.i.i.us.6 to i64
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1, %pregion_for_end.i.i.us-lcssa.us.us.5
  %_local_id_x.i.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.5 ], [ %545, %for.end.r_exit.i.i.loopexit.us.us.6.1 ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.6
  %504 = load float, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.6 = fmul float %25, %504
  store float %mul3.i.i.us.us.6, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %505 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6
  %indvars.iv.next.i.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6 ]
  %506 = phi float [ %512, %for.body.i.i.us.us.6 ], [ %mul3.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6 ]
  %507 = add nsw i64 %indvars.iv.next.i.i2.us.us.6, %503
  %arrayidx8.i.i.us.us.6 = getelementptr inbounds float, float* %7, i64 %507
  %508 = load float, float* %arrayidx8.i.i.us.us.6, align 4, !tbaa !12
  %509 = mul nsw i64 %indvars.iv.next.i.i2.us.us.6, %26
  %510 = add nsw i64 %509, %505
  %arrayidx12.i.i.us.us.6 = getelementptr inbounds float, float* %10, i64 %510
  %511 = load float, float* %arrayidx12.i.i.us.us.6, align 4, !tbaa !12
  %512 = tail call float @llvm.fmuladd.f32(float %508, float %511, float %506) #2
  store float %512, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %for.end.r_exit.i.i.loopexit.us.us.6, label %for.body.i.i.us.us.6, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6:              ; preds = %for.body.i.i.us.us.6
  %513 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %513, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %add.i.i.us.us.6.1 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.6.1
  %514 = load float, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.6.1 = fmul float %25, %514
  store float %mul3.i.i.us.us.6.1, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6.1 = shl i64 %add1.i.i.i.us.us.6.1, 32
  %515 = ashr exact i64 %sext.i.i.us.us.6.1, 32
  br label %for.body.i.i.us.us.6.1

pregion_for_end.i.i.us-lcssa.us.us.6:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1
  %516 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %516, 7
  %mul.i.i.us.7 = mul nsw i32 %21, %conv2.i.i.us.7
  %mul5.i.i.us.7 = mul nsw i32 %17, %conv2.i.i.us.7
  %517 = sext i32 %mul5.i.i.us.7 to i64
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1, %pregion_for_end.i.i.us-lcssa.us.us.6
  %_local_id_x.i.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.6 ], [ %537, %for.end.r_exit.i.i.loopexit.us.us.7.1 ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.7
  %518 = load float, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.7 = fmul float %25, %518
  store float %mul3.i.i.us.us.7, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %519 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7
  %indvars.iv.next.i.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7 ]
  %520 = phi float [ %526, %for.body.i.i.us.us.7 ], [ %mul3.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7 ]
  %521 = add nsw i64 %indvars.iv.next.i.i2.us.us.7, %517
  %arrayidx8.i.i.us.us.7 = getelementptr inbounds float, float* %7, i64 %521
  %522 = load float, float* %arrayidx8.i.i.us.us.7, align 4, !tbaa !12
  %523 = mul nsw i64 %indvars.iv.next.i.i2.us.us.7, %26
  %524 = add nsw i64 %523, %519
  %arrayidx12.i.i.us.us.7 = getelementptr inbounds float, float* %10, i64 %524
  %525 = load float, float* %arrayidx12.i.i.us.us.7, align 4, !tbaa !12
  %526 = tail call float @llvm.fmuladd.f32(float %522, float %525, float %520) #2
  store float %526, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %for.end.r_exit.i.i.loopexit.us.us.7, label %for.body.i.i.us.us.7, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7:              ; preds = %for.body.i.i.us.us.7
  %527 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %527, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %add.i.i.us.us.7.1 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.7.1
  %528 = load float, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.7.1 = fmul float %25, %528
  store float %mul3.i.i.us.us.7.1, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7.1 = shl i64 %add1.i.i.i.us.us.7.1, 32
  %529 = ashr exact i64 %sext.i.i.us.us.7.1, 32
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %for.end.r_exit.i.i.loopexit.us.us.7
  %indvars.iv.next.i.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %530 = phi float [ %536, %for.body.i.i.us.us.7.1 ], [ %mul3.i.i.us.us.7.1, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %531 = add nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %517
  %arrayidx8.i.i.us.us.7.1 = getelementptr inbounds float, float* %7, i64 %531
  %532 = load float, float* %arrayidx8.i.i.us.us.7.1, align 4, !tbaa !12
  %533 = mul nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %26
  %534 = add nsw i64 %533, %529
  %arrayidx12.i.i.us.us.7.1 = getelementptr inbounds float, float* %10, i64 %534
  %535 = load float, float* %arrayidx12.i.i.us.us.7.1, align 4, !tbaa !12
  %536 = tail call float @llvm.fmuladd.f32(float %532, float %535, float %530) #2
  store float %536, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7.1, label %for.end.r_exit.i.i.loopexit.us.us.7.1, label %for.body.i.i.us.us.7.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7.1:            ; preds = %for.body.i.i.us.us.7.1
  %537 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %537, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_mm2_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !24

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %for.end.r_exit.i.i.loopexit.us.us.6
  %indvars.iv.next.i.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %538 = phi float [ %544, %for.body.i.i.us.us.6.1 ], [ %mul3.i.i.us.us.6.1, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %539 = add nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %503
  %arrayidx8.i.i.us.us.6.1 = getelementptr inbounds float, float* %7, i64 %539
  %540 = load float, float* %arrayidx8.i.i.us.us.6.1, align 4, !tbaa !12
  %541 = mul nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %26
  %542 = add nsw i64 %541, %515
  %arrayidx12.i.i.us.us.6.1 = getelementptr inbounds float, float* %10, i64 %542
  %543 = load float, float* %arrayidx12.i.i.us.us.6.1, align 4, !tbaa !12
  %544 = tail call float @llvm.fmuladd.f32(float %540, float %543, float %538) #2
  store float %544, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6.1, label %for.end.r_exit.i.i.loopexit.us.us.6.1, label %for.body.i.i.us.us.6.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6.1:            ; preds = %for.body.i.i.us.us.6.1
  %545 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %545, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !24

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %for.end.r_exit.i.i.loopexit.us.us.5
  %indvars.iv.next.i.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %546 = phi float [ %552, %for.body.i.i.us.us.5.1 ], [ %mul3.i.i.us.us.5.1, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %547 = add nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %489
  %arrayidx8.i.i.us.us.5.1 = getelementptr inbounds float, float* %7, i64 %547
  %548 = load float, float* %arrayidx8.i.i.us.us.5.1, align 4, !tbaa !12
  %549 = mul nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %26
  %550 = add nsw i64 %549, %501
  %arrayidx12.i.i.us.us.5.1 = getelementptr inbounds float, float* %10, i64 %550
  %551 = load float, float* %arrayidx12.i.i.us.us.5.1, align 4, !tbaa !12
  %552 = tail call float @llvm.fmuladd.f32(float %548, float %551, float %546) #2
  store float %552, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5.1, label %for.end.r_exit.i.i.loopexit.us.us.5.1, label %for.body.i.i.us.us.5.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5.1:            ; preds = %for.body.i.i.us.us.5.1
  %553 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %553, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !24

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %for.end.r_exit.i.i.loopexit.us.us.4
  %indvars.iv.next.i.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %554 = phi float [ %560, %for.body.i.i.us.us.4.1 ], [ %mul3.i.i.us.us.4.1, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %555 = add nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %475
  %arrayidx8.i.i.us.us.4.1 = getelementptr inbounds float, float* %7, i64 %555
  %556 = load float, float* %arrayidx8.i.i.us.us.4.1, align 4, !tbaa !12
  %557 = mul nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %26
  %558 = add nsw i64 %557, %487
  %arrayidx12.i.i.us.us.4.1 = getelementptr inbounds float, float* %10, i64 %558
  %559 = load float, float* %arrayidx12.i.i.us.us.4.1, align 4, !tbaa !12
  %560 = tail call float @llvm.fmuladd.f32(float %556, float %559, float %554) #2
  store float %560, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4.1, label %for.end.r_exit.i.i.loopexit.us.us.4.1, label %for.body.i.i.us.us.4.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4.1:            ; preds = %for.body.i.i.us.us.4.1
  %561 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %561, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !24

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %for.end.r_exit.i.i.loopexit.us.us.3
  %indvars.iv.next.i.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %562 = phi float [ %568, %for.body.i.i.us.us.3.1 ], [ %mul3.i.i.us.us.3.1, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %563 = add nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %461
  %arrayidx8.i.i.us.us.3.1 = getelementptr inbounds float, float* %7, i64 %563
  %564 = load float, float* %arrayidx8.i.i.us.us.3.1, align 4, !tbaa !12
  %565 = mul nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %26
  %566 = add nsw i64 %565, %473
  %arrayidx12.i.i.us.us.3.1 = getelementptr inbounds float, float* %10, i64 %566
  %567 = load float, float* %arrayidx12.i.i.us.us.3.1, align 4, !tbaa !12
  %568 = tail call float @llvm.fmuladd.f32(float %564, float %567, float %562) #2
  store float %568, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3.1, label %for.end.r_exit.i.i.loopexit.us.us.3.1, label %for.body.i.i.us.us.3.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3.1:            ; preds = %for.body.i.i.us.us.3.1
  %569 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %569, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !24

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %for.end.r_exit.i.i.loopexit.us.us.2
  %indvars.iv.next.i.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %570 = phi float [ %576, %for.body.i.i.us.us.2.1 ], [ %mul3.i.i.us.us.2.1, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %571 = add nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %447
  %arrayidx8.i.i.us.us.2.1 = getelementptr inbounds float, float* %7, i64 %571
  %572 = load float, float* %arrayidx8.i.i.us.us.2.1, align 4, !tbaa !12
  %573 = mul nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %26
  %574 = add nsw i64 %573, %459
  %arrayidx12.i.i.us.us.2.1 = getelementptr inbounds float, float* %10, i64 %574
  %575 = load float, float* %arrayidx12.i.i.us.us.2.1, align 4, !tbaa !12
  %576 = tail call float @llvm.fmuladd.f32(float %572, float %575, float %570) #2
  store float %576, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2.1, label %for.end.r_exit.i.i.loopexit.us.us.2.1, label %for.body.i.i.us.us.2.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2.1:            ; preds = %for.body.i.i.us.us.2.1
  %577 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %577, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !24

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %for.end.r_exit.i.i.loopexit.us.us.1
  %indvars.iv.next.i.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %578 = phi float [ %584, %for.body.i.i.us.us.1.1 ], [ %mul3.i.i.us.us.1.1, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %579 = add nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %400
  %arrayidx8.i.i.us.us.1.1 = getelementptr inbounds float, float* %7, i64 %579
  %580 = load float, float* %arrayidx8.i.i.us.us.1.1, align 4, !tbaa !12
  %581 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %26
  %582 = add nsw i64 %581, %445
  %arrayidx12.i.i.us.us.1.1 = getelementptr inbounds float, float* %10, i64 %582
  %583 = load float, float* %arrayidx12.i.i.us.us.1.1, align 4, !tbaa !12
  %584 = tail call float @llvm.fmuladd.f32(float %580, float %583, float %578) #2
  store float %584, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1.1, label %for.end.r_exit.i.i.loopexit.us.us.1.1, label %for.body.i.i.us.us.1.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1.1:            ; preds = %for.body.i.i.us.us.1.1
  %585 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %585, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !24

for.body.i.i.us.us.1162:                          ; preds = %for.body.i.i.us.us.1162, %for.end.r_exit.i.i.loopexit.us.us
  %indvars.iv.next.i.i2.us.us.1157 = phi i64 [ %indvars.iv.next.i.i.us.us.1160, %for.body.i.i.us.us.1162 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us ]
  %586 = phi float [ %592, %for.body.i.i.us.us.1162 ], [ %mul3.i.i.us.us.1154, %for.end.r_exit.i.i.loopexit.us.us ]
  %587 = add nsw i64 %indvars.iv.next.i.i2.us.us.1157, %386
  %arrayidx8.i.i.us.us.1158 = getelementptr inbounds float, float* %7, i64 %587
  %588 = load float, float* %arrayidx8.i.i.us.us.1158, align 4, !tbaa !12
  %589 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1157, %26
  %590 = add nsw i64 %589, %391
  %arrayidx12.i.i.us.us.1159 = getelementptr inbounds float, float* %10, i64 %590
  %591 = load float, float* %arrayidx12.i.i.us.us.1159, align 4, !tbaa !12
  %592 = tail call float @llvm.fmuladd.f32(float %588, float %591, float %586) #2
  store float %592, float* %arrayidx.i.i.us.us.1153, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1160 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1157, 1
  %exitcond.not.i.i.us.us.1161 = icmp eq i64 %indvars.iv.next.i.i.us.us.1160, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1161, label %for.end.r_exit.i.i.loopexit.us.us.1163, label %for.body.i.i.us.us.1162, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1163:           ; preds = %for.body.i.i.us.us.1162
  %593 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %593, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !24
}

attributes #0 = { nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

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
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.parallel_accesses", !18}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.parallel_accesses", !17}
!26 = distinct !{!26, !22, !23}
!27 = distinct !{!27, !22, !23}
