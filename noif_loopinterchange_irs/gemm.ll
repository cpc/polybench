; ModuleID = './JG/ILHGEHOGBKMLNIICJBKCNKAPKNDBDCDJNAOLL/gemm/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_gemm(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, float %3, float %4, i32 %5, i32 %6, i32 %7, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %8, i64 %9, i64 %10, i64 %11) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %9, 5
  %mul3.i.i = shl i64 %10, 3
  %cmp33.i = icmp sgt i32 %7, 0
  %13 = sext i32 %6 to i64
  %wide.trip.count.i = zext i32 %7 to i64
  br i1 %cmp33.i, label %pregion_for_entry.pregion_for_init.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.preheader

pregion_for_entry.pregion_for_init.i.preheader:   ; preds = %12
  %conv.i = trunc i64 %mul.i.i to i32
  %14 = trunc i64 %mul.i.i to i32
  %conv.i.1 = or i32 %14, 1
  %15 = trunc i64 %mul.i.i to i32
  %conv.i.2 = or i32 %15, 2
  %16 = trunc i64 %mul.i.i to i32
  %conv.i.3 = or i32 %16, 3
  %17 = trunc i64 %mul.i.i to i32
  %conv.i.4 = or i32 %17, 4
  %18 = trunc i64 %mul.i.i to i32
  %conv.i.5 = or i32 %18, 5
  %19 = trunc i64 %mul.i.i to i32
  %conv.i.6 = or i32 %19, 6
  %20 = trunc i64 %mul.i.i to i32
  %conv.i.7 = or i32 %20, 7
  %21 = trunc i64 %mul.i.i to i32
  %conv.i.8 = or i32 %21, 8
  %22 = trunc i64 %mul.i.i to i32
  %conv.i.9 = or i32 %22, 9
  %23 = trunc i64 %mul.i.i to i32
  %conv.i.10 = or i32 %23, 10
  %24 = trunc i64 %mul.i.i to i32
  %conv.i.11 = or i32 %24, 11
  %25 = trunc i64 %mul.i.i to i32
  %conv.i.12 = or i32 %25, 12
  %26 = trunc i64 %mul.i.i to i32
  %conv.i.13 = or i32 %26, 13
  %27 = trunc i64 %mul.i.i to i32
  %conv.i.14 = or i32 %27, 14
  %28 = trunc i64 %mul.i.i to i32
  %conv.i.15 = or i32 %28, 15
  %29 = trunc i64 %mul.i.i to i32
  %conv.i.16 = or i32 %29, 16
  %30 = trunc i64 %mul.i.i to i32
  %conv.i.17 = or i32 %30, 17
  %31 = trunc i64 %mul.i.i to i32
  %conv.i.18 = or i32 %31, 18
  %32 = trunc i64 %mul.i.i to i32
  %conv.i.19 = or i32 %32, 19
  %33 = trunc i64 %mul.i.i to i32
  %conv.i.20 = or i32 %33, 20
  %34 = trunc i64 %mul.i.i to i32
  %conv.i.21 = or i32 %34, 21
  %35 = trunc i64 %mul.i.i to i32
  %conv.i.22 = or i32 %35, 22
  %36 = trunc i64 %mul.i.i to i32
  %conv.i.23 = or i32 %36, 23
  %37 = trunc i64 %mul.i.i to i32
  %conv.i.24 = or i32 %37, 24
  %38 = trunc i64 %mul.i.i to i32
  %conv.i.25 = or i32 %38, 25
  %39 = trunc i64 %mul.i.i to i32
  %conv.i.26 = or i32 %39, 26
  %40 = trunc i64 %mul.i.i to i32
  %conv.i.27 = or i32 %40, 27
  %41 = trunc i64 %mul.i.i to i32
  %conv.i.28 = or i32 %41, 28
  %42 = trunc i64 %mul.i.i to i32
  %conv.i.29 = or i32 %42, 29
  %43 = trunc i64 %mul.i.i to i32
  %conv.i.30 = or i32 %43, 30
  %44 = trunc i64 %mul.i.i to i32
  %conv.i.31 = or i32 %44, 31
  %ident.check = icmp ne i32 %6, 1
  %45 = trunc i64 %10 to i32
  %46 = shl i32 %45, 3
  %47 = add i32 %46, %conv.i
  %48 = icmp eq i32 %47, 2147483640
  %49 = or i1 %ident.check, %48
  %50 = add i32 %46, %conv.i
  %51 = or i32 %50, 2
  %52 = icmp sgt i32 %51, 2147483640
  %53 = or i1 %49, %52
  %54 = add i32 %46, %conv.i
  %55 = or i32 %54, 3
  %56 = icmp sgt i32 %55, 2147483640
  %57 = or i1 %53, %56
  %58 = add i32 %46, %conv.i
  %59 = or i32 %58, 4
  %60 = icmp sgt i32 %59, 2147483640
  %61 = or i1 %57, %60
  %62 = add i32 %46, %conv.i
  %63 = or i32 %62, 5
  %64 = icmp sgt i32 %63, 2147483640
  %65 = or i1 %61, %64
  %66 = add i32 %46, %conv.i
  %67 = or i32 %66, 6
  %68 = icmp sgt i32 %67, 2147483640
  %69 = or i1 %65, %68
  %70 = add i32 %46, %conv.i
  %71 = or i32 %70, 7
  %72 = icmp sgt i32 %71, 2147483640
  %73 = or i1 %69, %72
  %74 = add i32 %46, %conv.i
  %75 = add i32 %74, 9
  %76 = add i32 %74, 16
  %77 = icmp slt i32 %76, %75
  %78 = or i1 %73, %77
  %79 = add i32 %46, %conv.i
  %80 = add i32 %79, 10
  %81 = add i32 %79, 17
  %82 = icmp slt i32 %81, %80
  %83 = or i1 %78, %82
  %84 = add i32 %46, %conv.i
  %85 = add i32 %84, 11
  %86 = add i32 %84, 18
  %87 = icmp slt i32 %86, %85
  %88 = or i1 %83, %87
  %89 = add i32 %46, %conv.i
  %90 = add i32 %89, 12
  %91 = add i32 %89, 19
  %92 = icmp slt i32 %91, %90
  %93 = or i1 %88, %92
  %94 = add i32 %46, %conv.i
  %95 = add i32 %94, 13
  %96 = add i32 %94, 20
  %97 = icmp slt i32 %96, %95
  %98 = or i1 %93, %97
  %99 = add i32 %46, %conv.i
  %100 = add i32 %99, 14
  %101 = add i32 %99, 21
  %102 = icmp slt i32 %101, %100
  %103 = or i1 %98, %102
  %104 = add i32 %46, %conv.i
  %105 = add i32 %104, 15
  %106 = add i32 %104, 22
  %107 = icmp slt i32 %106, %105
  %108 = or i1 %103, %107
  %109 = add i32 %46, %conv.i
  %110 = add i32 %109, 17
  %111 = add i32 %109, 24
  %112 = icmp slt i32 %111, %110
  %113 = or i1 %108, %112
  %114 = add i32 %46, %conv.i
  %115 = add i32 %114, 18
  %116 = add i32 %114, 25
  %117 = icmp slt i32 %116, %115
  %118 = or i1 %113, %117
  %119 = add i32 %46, %conv.i
  %120 = add i32 %119, 19
  %121 = add i32 %119, 26
  %122 = icmp slt i32 %121, %120
  %123 = or i1 %118, %122
  %124 = add i32 %46, %conv.i
  %125 = add i32 %124, 20
  %126 = add i32 %124, 27
  %127 = icmp slt i32 %126, %125
  %128 = or i1 %123, %127
  %129 = add i32 %46, %conv.i
  %130 = add i32 %129, 21
  %131 = add i32 %129, 28
  %132 = icmp slt i32 %131, %130
  %133 = or i1 %128, %132
  %134 = add i32 %46, %conv.i
  %135 = add i32 %134, 22
  %136 = add i32 %134, 29
  %137 = icmp slt i32 %136, %135
  %138 = or i1 %133, %137
  %139 = add i32 %46, %conv.i
  %140 = add i32 %139, 23
  %141 = add i32 %139, 30
  %142 = icmp slt i32 %141, %140
  %143 = or i1 %138, %142
  %144 = add i32 %46, %conv.i
  %145 = add i32 %144, 25
  %146 = add i32 %144, 32
  %147 = icmp slt i32 %146, %145
  %148 = or i1 %143, %147
  %149 = add i32 %46, %conv.i
  %150 = add i32 %149, 26
  %151 = add i32 %149, 33
  %152 = icmp slt i32 %151, %150
  %153 = or i1 %148, %152
  %154 = add i32 %46, %conv.i
  %155 = add i32 %154, 27
  %156 = add i32 %154, 34
  %157 = icmp slt i32 %156, %155
  %158 = or i1 %153, %157
  %159 = add i32 %46, %conv.i
  %160 = add i32 %159, 28
  %161 = add i32 %159, 35
  %162 = icmp slt i32 %161, %160
  %163 = or i1 %158, %162
  %164 = add i32 %46, %conv.i
  %165 = add i32 %164, 29
  %166 = add i32 %164, 36
  %167 = icmp slt i32 %166, %165
  %168 = or i1 %163, %167
  %169 = add i32 %46, %conv.i
  %170 = add i32 %169, 30
  %171 = add i32 %169, 37
  %172 = icmp slt i32 %171, %170
  %173 = or i1 %168, %172
  %174 = add i32 %46, %conv.i
  %175 = add i32 %174, 31
  %176 = add i32 %174, 38
  %177 = icmp slt i32 %176, %175
  %178 = or i1 %173, %177
  br i1 %178, label %pregion_for_entry.pregion_for_init.i.preheader166, label %vector.ph

pregion_for_entry.pregion_for_init.i.preheader166: ; preds = %pregion_for_entry.pregion_for_init.i.preheader
  br label %pregion_for_entry.pregion_for_init.i

vector.ph:                                        ; preds = %pregion_for_entry.pregion_for_init.i.preheader
  %broadcast.splatinsert = insertelement <8 x float> undef, float %4, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %179 = trunc i64 %mul3.i.i to i32
  %180 = mul nsw i32 %179, %6
  %181 = add nsw i32 %180, %conv.i
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %2, i64 %182
  %184 = bitcast float* %183 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %184, align 4, !tbaa !12, !llvm.access.group !16
  %185 = fmul <8 x float> %wide.load, %broadcast.splat
  %186 = bitcast float* %183 to <8 x float>*
  store <8 x float> %185, <8 x float>* %186, align 4, !tbaa !12, !llvm.access.group !16
  %187 = add nsw i32 %180, %conv.i.1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, float* %2, i64 %188
  %190 = bitcast float* %189 to <8 x float>*
  %wide.load115 = load <8 x float>, <8 x float>* %190, align 4, !tbaa !12, !llvm.access.group !16
  %191 = fmul <8 x float> %wide.load115, %broadcast.splat
  %192 = bitcast float* %189 to <8 x float>*
  store <8 x float> %191, <8 x float>* %192, align 4, !tbaa !12, !llvm.access.group !16
  %193 = add nsw i32 %180, %conv.i.2
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %2, i64 %194
  %196 = bitcast float* %195 to <8 x float>*
  %wide.load116 = load <8 x float>, <8 x float>* %196, align 4, !tbaa !12, !llvm.access.group !16
  %197 = fmul <8 x float> %wide.load116, %broadcast.splat
  %198 = bitcast float* %195 to <8 x float>*
  store <8 x float> %197, <8 x float>* %198, align 4, !tbaa !12, !llvm.access.group !16
  %199 = add nsw i32 %180, %conv.i.3
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %2, i64 %200
  %202 = bitcast float* %201 to <8 x float>*
  %wide.load117 = load <8 x float>, <8 x float>* %202, align 4, !tbaa !12, !llvm.access.group !16
  %203 = fmul <8 x float> %wide.load117, %broadcast.splat
  %204 = bitcast float* %201 to <8 x float>*
  store <8 x float> %203, <8 x float>* %204, align 4, !tbaa !12, !llvm.access.group !16
  %205 = add nsw i32 %180, %conv.i.4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %2, i64 %206
  %208 = bitcast float* %207 to <8 x float>*
  %wide.load118 = load <8 x float>, <8 x float>* %208, align 4, !tbaa !12, !llvm.access.group !16
  %209 = fmul <8 x float> %wide.load118, %broadcast.splat
  %210 = bitcast float* %207 to <8 x float>*
  store <8 x float> %209, <8 x float>* %210, align 4, !tbaa !12, !llvm.access.group !16
  %211 = add nsw i32 %180, %conv.i.5
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float, float* %2, i64 %212
  %214 = bitcast float* %213 to <8 x float>*
  %wide.load119 = load <8 x float>, <8 x float>* %214, align 4, !tbaa !12, !llvm.access.group !16
  %215 = fmul <8 x float> %wide.load119, %broadcast.splat
  %216 = bitcast float* %213 to <8 x float>*
  store <8 x float> %215, <8 x float>* %216, align 4, !tbaa !12, !llvm.access.group !16
  %217 = add nsw i32 %180, %conv.i.6
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %2, i64 %218
  %220 = bitcast float* %219 to <8 x float>*
  %wide.load120 = load <8 x float>, <8 x float>* %220, align 4, !tbaa !12, !llvm.access.group !16
  %221 = fmul <8 x float> %wide.load120, %broadcast.splat
  %222 = bitcast float* %219 to <8 x float>*
  store <8 x float> %221, <8 x float>* %222, align 4, !tbaa !12, !llvm.access.group !16
  %223 = add nsw i32 %180, %conv.i.7
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, float* %2, i64 %224
  %226 = bitcast float* %225 to <8 x float>*
  %wide.load121 = load <8 x float>, <8 x float>* %226, align 4, !tbaa !12, !llvm.access.group !16
  %227 = fmul <8 x float> %wide.load121, %broadcast.splat
  %228 = bitcast float* %225 to <8 x float>*
  store <8 x float> %227, <8 x float>* %228, align 4, !tbaa !12, !llvm.access.group !16
  %229 = add nsw i32 %180, %conv.i.8
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float, float* %2, i64 %230
  %232 = bitcast float* %231 to <8 x float>*
  %wide.load122 = load <8 x float>, <8 x float>* %232, align 4, !tbaa !12, !llvm.access.group !16
  %233 = fmul <8 x float> %wide.load122, %broadcast.splat
  %234 = bitcast float* %231 to <8 x float>*
  store <8 x float> %233, <8 x float>* %234, align 4, !tbaa !12, !llvm.access.group !16
  %235 = add nsw i32 %180, %conv.i.9
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %2, i64 %236
  %238 = bitcast float* %237 to <8 x float>*
  %wide.load123 = load <8 x float>, <8 x float>* %238, align 4, !tbaa !12, !llvm.access.group !16
  %239 = fmul <8 x float> %wide.load123, %broadcast.splat
  %240 = bitcast float* %237 to <8 x float>*
  store <8 x float> %239, <8 x float>* %240, align 4, !tbaa !12, !llvm.access.group !16
  %241 = add nsw i32 %180, %conv.i.10
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %2, i64 %242
  %244 = bitcast float* %243 to <8 x float>*
  %wide.load124 = load <8 x float>, <8 x float>* %244, align 4, !tbaa !12, !llvm.access.group !16
  %245 = fmul <8 x float> %wide.load124, %broadcast.splat
  %246 = bitcast float* %243 to <8 x float>*
  store <8 x float> %245, <8 x float>* %246, align 4, !tbaa !12, !llvm.access.group !16
  %247 = add nsw i32 %180, %conv.i.11
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds float, float* %2, i64 %248
  %250 = bitcast float* %249 to <8 x float>*
  %wide.load125 = load <8 x float>, <8 x float>* %250, align 4, !tbaa !12, !llvm.access.group !16
  %251 = fmul <8 x float> %wide.load125, %broadcast.splat
  %252 = bitcast float* %249 to <8 x float>*
  store <8 x float> %251, <8 x float>* %252, align 4, !tbaa !12, !llvm.access.group !16
  %253 = add nsw i32 %180, %conv.i.12
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float, float* %2, i64 %254
  %256 = bitcast float* %255 to <8 x float>*
  %wide.load126 = load <8 x float>, <8 x float>* %256, align 4, !tbaa !12, !llvm.access.group !16
  %257 = fmul <8 x float> %wide.load126, %broadcast.splat
  %258 = bitcast float* %255 to <8 x float>*
  store <8 x float> %257, <8 x float>* %258, align 4, !tbaa !12, !llvm.access.group !16
  %259 = add nsw i32 %180, %conv.i.13
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float* %2, i64 %260
  %262 = bitcast float* %261 to <8 x float>*
  %wide.load127 = load <8 x float>, <8 x float>* %262, align 4, !tbaa !12, !llvm.access.group !16
  %263 = fmul <8 x float> %wide.load127, %broadcast.splat
  %264 = bitcast float* %261 to <8 x float>*
  store <8 x float> %263, <8 x float>* %264, align 4, !tbaa !12, !llvm.access.group !16
  %265 = add nsw i32 %180, %conv.i.14
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %2, i64 %266
  %268 = bitcast float* %267 to <8 x float>*
  %wide.load128 = load <8 x float>, <8 x float>* %268, align 4, !tbaa !12, !llvm.access.group !16
  %269 = fmul <8 x float> %wide.load128, %broadcast.splat
  %270 = bitcast float* %267 to <8 x float>*
  store <8 x float> %269, <8 x float>* %270, align 4, !tbaa !12, !llvm.access.group !16
  %271 = add nsw i32 %180, %conv.i.15
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds float, float* %2, i64 %272
  %274 = bitcast float* %273 to <8 x float>*
  %wide.load129 = load <8 x float>, <8 x float>* %274, align 4, !tbaa !12, !llvm.access.group !16
  %275 = fmul <8 x float> %wide.load129, %broadcast.splat
  %276 = bitcast float* %273 to <8 x float>*
  store <8 x float> %275, <8 x float>* %276, align 4, !tbaa !12, !llvm.access.group !16
  %277 = add nsw i32 %180, %conv.i.16
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds float, float* %2, i64 %278
  %280 = bitcast float* %279 to <8 x float>*
  %wide.load130 = load <8 x float>, <8 x float>* %280, align 4, !tbaa !12, !llvm.access.group !16
  %281 = fmul <8 x float> %wide.load130, %broadcast.splat
  %282 = bitcast float* %279 to <8 x float>*
  store <8 x float> %281, <8 x float>* %282, align 4, !tbaa !12, !llvm.access.group !16
  %283 = add nsw i32 %180, %conv.i.17
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds float, float* %2, i64 %284
  %286 = bitcast float* %285 to <8 x float>*
  %wide.load131 = load <8 x float>, <8 x float>* %286, align 4, !tbaa !12, !llvm.access.group !16
  %287 = fmul <8 x float> %wide.load131, %broadcast.splat
  %288 = bitcast float* %285 to <8 x float>*
  store <8 x float> %287, <8 x float>* %288, align 4, !tbaa !12, !llvm.access.group !16
  %289 = add nsw i32 %180, %conv.i.18
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds float, float* %2, i64 %290
  %292 = bitcast float* %291 to <8 x float>*
  %wide.load132 = load <8 x float>, <8 x float>* %292, align 4, !tbaa !12, !llvm.access.group !16
  %293 = fmul <8 x float> %wide.load132, %broadcast.splat
  %294 = bitcast float* %291 to <8 x float>*
  store <8 x float> %293, <8 x float>* %294, align 4, !tbaa !12, !llvm.access.group !16
  %295 = add nsw i32 %180, %conv.i.19
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds float, float* %2, i64 %296
  %298 = bitcast float* %297 to <8 x float>*
  %wide.load133 = load <8 x float>, <8 x float>* %298, align 4, !tbaa !12, !llvm.access.group !16
  %299 = fmul <8 x float> %wide.load133, %broadcast.splat
  %300 = bitcast float* %297 to <8 x float>*
  store <8 x float> %299, <8 x float>* %300, align 4, !tbaa !12, !llvm.access.group !16
  %301 = add nsw i32 %180, %conv.i.20
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds float, float* %2, i64 %302
  %304 = bitcast float* %303 to <8 x float>*
  %wide.load134 = load <8 x float>, <8 x float>* %304, align 4, !tbaa !12, !llvm.access.group !16
  %305 = fmul <8 x float> %wide.load134, %broadcast.splat
  %306 = bitcast float* %303 to <8 x float>*
  store <8 x float> %305, <8 x float>* %306, align 4, !tbaa !12, !llvm.access.group !16
  %307 = add nsw i32 %180, %conv.i.21
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %2, i64 %308
  %310 = bitcast float* %309 to <8 x float>*
  %wide.load135 = load <8 x float>, <8 x float>* %310, align 4, !tbaa !12, !llvm.access.group !16
  %311 = fmul <8 x float> %wide.load135, %broadcast.splat
  %312 = bitcast float* %309 to <8 x float>*
  store <8 x float> %311, <8 x float>* %312, align 4, !tbaa !12, !llvm.access.group !16
  %313 = add nsw i32 %180, %conv.i.22
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float, float* %2, i64 %314
  %316 = bitcast float* %315 to <8 x float>*
  %wide.load136 = load <8 x float>, <8 x float>* %316, align 4, !tbaa !12, !llvm.access.group !16
  %317 = fmul <8 x float> %wide.load136, %broadcast.splat
  %318 = bitcast float* %315 to <8 x float>*
  store <8 x float> %317, <8 x float>* %318, align 4, !tbaa !12, !llvm.access.group !16
  %319 = add nsw i32 %180, %conv.i.23
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds float, float* %2, i64 %320
  %322 = bitcast float* %321 to <8 x float>*
  %wide.load137 = load <8 x float>, <8 x float>* %322, align 4, !tbaa !12, !llvm.access.group !16
  %323 = fmul <8 x float> %wide.load137, %broadcast.splat
  %324 = bitcast float* %321 to <8 x float>*
  store <8 x float> %323, <8 x float>* %324, align 4, !tbaa !12, !llvm.access.group !16
  %325 = add nsw i32 %180, %conv.i.24
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds float, float* %2, i64 %326
  %328 = bitcast float* %327 to <8 x float>*
  %wide.load138 = load <8 x float>, <8 x float>* %328, align 4, !tbaa !12, !llvm.access.group !16
  %329 = fmul <8 x float> %wide.load138, %broadcast.splat
  %330 = bitcast float* %327 to <8 x float>*
  store <8 x float> %329, <8 x float>* %330, align 4, !tbaa !12, !llvm.access.group !16
  %331 = add nsw i32 %180, %conv.i.25
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds float, float* %2, i64 %332
  %334 = bitcast float* %333 to <8 x float>*
  %wide.load139 = load <8 x float>, <8 x float>* %334, align 4, !tbaa !12, !llvm.access.group !16
  %335 = fmul <8 x float> %wide.load139, %broadcast.splat
  %336 = bitcast float* %333 to <8 x float>*
  store <8 x float> %335, <8 x float>* %336, align 4, !tbaa !12, !llvm.access.group !16
  %337 = add nsw i32 %180, %conv.i.26
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds float, float* %2, i64 %338
  %340 = bitcast float* %339 to <8 x float>*
  %wide.load140 = load <8 x float>, <8 x float>* %340, align 4, !tbaa !12, !llvm.access.group !16
  %341 = fmul <8 x float> %wide.load140, %broadcast.splat
  %342 = bitcast float* %339 to <8 x float>*
  store <8 x float> %341, <8 x float>* %342, align 4, !tbaa !12, !llvm.access.group !16
  %343 = add nsw i32 %180, %conv.i.27
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds float, float* %2, i64 %344
  %346 = bitcast float* %345 to <8 x float>*
  %wide.load141 = load <8 x float>, <8 x float>* %346, align 4, !tbaa !12, !llvm.access.group !16
  %347 = fmul <8 x float> %wide.load141, %broadcast.splat
  %348 = bitcast float* %345 to <8 x float>*
  store <8 x float> %347, <8 x float>* %348, align 4, !tbaa !12, !llvm.access.group !16
  %349 = add nsw i32 %180, %conv.i.28
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds float, float* %2, i64 %350
  %352 = bitcast float* %351 to <8 x float>*
  %wide.load142 = load <8 x float>, <8 x float>* %352, align 4, !tbaa !12, !llvm.access.group !16
  %353 = fmul <8 x float> %wide.load142, %broadcast.splat
  %354 = bitcast float* %351 to <8 x float>*
  store <8 x float> %353, <8 x float>* %354, align 4, !tbaa !12, !llvm.access.group !16
  %355 = add nsw i32 %180, %conv.i.29
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds float, float* %2, i64 %356
  %358 = bitcast float* %357 to <8 x float>*
  %wide.load143 = load <8 x float>, <8 x float>* %358, align 4, !tbaa !12, !llvm.access.group !16
  %359 = fmul <8 x float> %wide.load143, %broadcast.splat
  %360 = bitcast float* %357 to <8 x float>*
  store <8 x float> %359, <8 x float>* %360, align 4, !tbaa !12, !llvm.access.group !16
  %361 = add nsw i32 %180, %conv.i.30
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds float, float* %2, i64 %362
  %364 = bitcast float* %363 to <8 x float>*
  %wide.load144 = load <8 x float>, <8 x float>* %364, align 4, !tbaa !12, !llvm.access.group !16
  %365 = fmul <8 x float> %wide.load144, %broadcast.splat
  %366 = bitcast float* %363 to <8 x float>*
  store <8 x float> %365, <8 x float>* %366, align 4, !tbaa !12, !llvm.access.group !16
  %367 = add nsw i32 %180, %conv.i.31
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds float, float* %2, i64 %368
  %370 = bitcast float* %369 to <8 x float>*
  %wide.load145 = load <8 x float>, <8 x float>* %370, align 4, !tbaa !12, !llvm.access.group !16
  %371 = fmul <8 x float> %wide.load145, %broadcast.splat
  %372 = bitcast float* %369 to <8 x float>*
  store <8 x float> %371, <8 x float>* %372, align 4, !tbaa !12, !llvm.access.group !16
  br label %gemm.exit

pregion_for_entry.pregion_for_init.i.us.preheader: ; preds = %12
  %conv2.i.us = trunc i64 %mul3.i.i to i32
  %mul.i.us = mul nsw i32 %conv2.i.us, %6
  %mul5.i.us = mul nsw i32 %conv2.i.us, %7
  %373 = sext i32 %mul5.i.us to i64
  br label %pregion_for_entry.entry.i.us.us

pregion_for_entry.entry.i.us.us:                  ; preds = %for.end.r_exit.i.loopexit.us.us.1165, %pregion_for_entry.pregion_for_init.i.us.preheader
  %_local_id_x.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.us.preheader ], [ %580, %for.end.r_exit.i.loopexit.us.us.1165 ]
  %add1.i.i.us.us = add nuw nsw i64 %_local_id_x.0.us.us, %mul.i.i
  %conv.i.us.us = trunc i64 %add1.i.i.us.us to i32
  %add.i.us.us = add nsw i32 %mul.i.us, %conv.i.us.us
  %idxprom.i.us.us = sext i32 %add.i.us.us to i64
  %arrayidx.i.us.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us
  %374 = load float, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us = fmul float %374, %4
  store float %mul3.i.us.us, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us = shl i64 %add1.i.i.us.us, 32
  %375 = ashr exact i64 %sext.i.us.us, 32
  br label %for.body.i.us.us

for.end.r_exit.i.loopexit.us.us:                  ; preds = %for.body.i.us.us
  %376 = or i64 %_local_id_x.0.us.us, 1
  %add1.i.i.us.us.1150 = add nuw nsw i64 %376, %mul.i.i
  %conv.i.us.us.1151 = trunc i64 %add1.i.i.us.us.1150 to i32
  %add.i.us.us.1152 = add nsw i32 %mul.i.us, %conv.i.us.us.1151
  %idxprom.i.us.us.1153 = sext i32 %add.i.us.us.1152 to i64
  %arrayidx.i.us.us.1154 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.1153
  %377 = load float, float* %arrayidx.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.1155 = fmul float %377, %4
  store float %mul3.i.us.us.1155, float* %arrayidx.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1156 = shl i64 %add1.i.i.us.us.1150, 32
  %378 = ashr exact i64 %sext.i.us.us.1156, 32
  br label %for.body.i.us.us.1164

for.body.i.us.us:                                 ; preds = %for.body.i.us.us, %pregion_for_entry.entry.i.us.us
  %indvars.iv.next.i2.us.us = phi i64 [ %indvars.iv.next.i.us.us, %for.body.i.us.us ], [ 0, %pregion_for_entry.entry.i.us.us ]
  %379 = phi float [ %385, %for.body.i.us.us ], [ %mul3.i.us.us, %pregion_for_entry.entry.i.us.us ]
  %380 = add nsw i64 %indvars.iv.next.i2.us.us, %373
  %arrayidx8.i.us.us = getelementptr inbounds float, float* %0, i64 %380
  %381 = load float, float* %arrayidx8.i.us.us, align 4, !tbaa !12
  %mul9.i.us.us = fmul float %381, %3
  %382 = mul nsw i64 %indvars.iv.next.i2.us.us, %13
  %383 = add nsw i64 %382, %375
  %arrayidx13.i.us.us = getelementptr inbounds float, float* %1, i64 %383
  %384 = load float, float* %arrayidx13.i.us.us, align 4, !tbaa !12
  %385 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us, float %384, float %379) #2
  store float %385, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.next.i2.us.us, 1
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %for.end.r_exit.i.loopexit.us.us, label %for.body.i.us.us, !llvm.loop !19

pregion_for_end.i.us-lcssa.us.us:                 ; preds = %for.end.r_exit.i.loopexit.us.us.1165
  %386 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.1 = or i32 %386, 1
  %mul.i.us.1 = mul nsw i32 %conv2.i.us.1, %6
  %mul5.i.us.1 = mul nsw i32 %conv2.i.us.1, %7
  %387 = sext i32 %mul5.i.us.1 to i64
  br label %pregion_for_entry.entry.i.us.us.1

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_entry.pregion_for_init.i, %pregion_for_entry.pregion_for_init.i.preheader166
  %_local_id_y.0 = phi i64 [ %420, %pregion_for_entry.pregion_for_init.i ], [ 0, %pregion_for_entry.pregion_for_init.i.preheader166 ]
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %mul.i = mul nsw i32 %conv2.i, %6
  %add.i = add nsw i32 %mul.i, %conv.i
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %2, i64 %idxprom.i
  %388 = load float, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i = fmul float %388, %4
  store float %mul3.i, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.1 = add nsw i32 %mul.i, %conv.i.1
  %idxprom.i.1 = sext i32 %add.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.1
  %389 = load float, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.1 = fmul float %389, %4
  store float %mul3.i.1, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.2 = add nsw i32 %mul.i, %conv.i.2
  %idxprom.i.2 = sext i32 %add.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.2
  %390 = load float, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.2 = fmul float %390, %4
  store float %mul3.i.2, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.3 = add nsw i32 %mul.i, %conv.i.3
  %idxprom.i.3 = sext i32 %add.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.3
  %391 = load float, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.3 = fmul float %391, %4
  store float %mul3.i.3, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.4 = add nsw i32 %mul.i, %conv.i.4
  %idxprom.i.4 = sext i32 %add.i.4 to i64
  %arrayidx.i.4 = getelementptr inbounds float, float* %2, i64 %idxprom.i.4
  %392 = load float, float* %arrayidx.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.4 = fmul float %392, %4
  store float %mul3.i.4, float* %arrayidx.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.5 = add nsw i32 %mul.i, %conv.i.5
  %idxprom.i.5 = sext i32 %add.i.5 to i64
  %arrayidx.i.5 = getelementptr inbounds float, float* %2, i64 %idxprom.i.5
  %393 = load float, float* %arrayidx.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.5 = fmul float %393, %4
  store float %mul3.i.5, float* %arrayidx.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.6 = add nsw i32 %mul.i, %conv.i.6
  %idxprom.i.6 = sext i32 %add.i.6 to i64
  %arrayidx.i.6 = getelementptr inbounds float, float* %2, i64 %idxprom.i.6
  %394 = load float, float* %arrayidx.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.6 = fmul float %394, %4
  store float %mul3.i.6, float* %arrayidx.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.7 = add nsw i32 %mul.i, %conv.i.7
  %idxprom.i.7 = sext i32 %add.i.7 to i64
  %arrayidx.i.7 = getelementptr inbounds float, float* %2, i64 %idxprom.i.7
  %395 = load float, float* %arrayidx.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.7 = fmul float %395, %4
  store float %mul3.i.7, float* %arrayidx.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.8 = add nsw i32 %mul.i, %conv.i.8
  %idxprom.i.8 = sext i32 %add.i.8 to i64
  %arrayidx.i.8 = getelementptr inbounds float, float* %2, i64 %idxprom.i.8
  %396 = load float, float* %arrayidx.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.8 = fmul float %396, %4
  store float %mul3.i.8, float* %arrayidx.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.9 = add nsw i32 %mul.i, %conv.i.9
  %idxprom.i.9 = sext i32 %add.i.9 to i64
  %arrayidx.i.9 = getelementptr inbounds float, float* %2, i64 %idxprom.i.9
  %397 = load float, float* %arrayidx.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.9 = fmul float %397, %4
  store float %mul3.i.9, float* %arrayidx.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.10 = add nsw i32 %mul.i, %conv.i.10
  %idxprom.i.10 = sext i32 %add.i.10 to i64
  %arrayidx.i.10 = getelementptr inbounds float, float* %2, i64 %idxprom.i.10
  %398 = load float, float* %arrayidx.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.10 = fmul float %398, %4
  store float %mul3.i.10, float* %arrayidx.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.11 = add nsw i32 %mul.i, %conv.i.11
  %idxprom.i.11 = sext i32 %add.i.11 to i64
  %arrayidx.i.11 = getelementptr inbounds float, float* %2, i64 %idxprom.i.11
  %399 = load float, float* %arrayidx.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.11 = fmul float %399, %4
  store float %mul3.i.11, float* %arrayidx.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.12 = add nsw i32 %mul.i, %conv.i.12
  %idxprom.i.12 = sext i32 %add.i.12 to i64
  %arrayidx.i.12 = getelementptr inbounds float, float* %2, i64 %idxprom.i.12
  %400 = load float, float* %arrayidx.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.12 = fmul float %400, %4
  store float %mul3.i.12, float* %arrayidx.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.13 = add nsw i32 %mul.i, %conv.i.13
  %idxprom.i.13 = sext i32 %add.i.13 to i64
  %arrayidx.i.13 = getelementptr inbounds float, float* %2, i64 %idxprom.i.13
  %401 = load float, float* %arrayidx.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.13 = fmul float %401, %4
  store float %mul3.i.13, float* %arrayidx.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.14 = add nsw i32 %mul.i, %conv.i.14
  %idxprom.i.14 = sext i32 %add.i.14 to i64
  %arrayidx.i.14 = getelementptr inbounds float, float* %2, i64 %idxprom.i.14
  %402 = load float, float* %arrayidx.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.14 = fmul float %402, %4
  store float %mul3.i.14, float* %arrayidx.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.15 = add nsw i32 %mul.i, %conv.i.15
  %idxprom.i.15 = sext i32 %add.i.15 to i64
  %arrayidx.i.15 = getelementptr inbounds float, float* %2, i64 %idxprom.i.15
  %403 = load float, float* %arrayidx.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.15 = fmul float %403, %4
  store float %mul3.i.15, float* %arrayidx.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.16 = add nsw i32 %mul.i, %conv.i.16
  %idxprom.i.16 = sext i32 %add.i.16 to i64
  %arrayidx.i.16 = getelementptr inbounds float, float* %2, i64 %idxprom.i.16
  %404 = load float, float* %arrayidx.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.16 = fmul float %404, %4
  store float %mul3.i.16, float* %arrayidx.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.17 = add nsw i32 %mul.i, %conv.i.17
  %idxprom.i.17 = sext i32 %add.i.17 to i64
  %arrayidx.i.17 = getelementptr inbounds float, float* %2, i64 %idxprom.i.17
  %405 = load float, float* %arrayidx.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.17 = fmul float %405, %4
  store float %mul3.i.17, float* %arrayidx.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.18 = add nsw i32 %mul.i, %conv.i.18
  %idxprom.i.18 = sext i32 %add.i.18 to i64
  %arrayidx.i.18 = getelementptr inbounds float, float* %2, i64 %idxprom.i.18
  %406 = load float, float* %arrayidx.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.18 = fmul float %406, %4
  store float %mul3.i.18, float* %arrayidx.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.19 = add nsw i32 %mul.i, %conv.i.19
  %idxprom.i.19 = sext i32 %add.i.19 to i64
  %arrayidx.i.19 = getelementptr inbounds float, float* %2, i64 %idxprom.i.19
  %407 = load float, float* %arrayidx.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.19 = fmul float %407, %4
  store float %mul3.i.19, float* %arrayidx.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.20 = add nsw i32 %mul.i, %conv.i.20
  %idxprom.i.20 = sext i32 %add.i.20 to i64
  %arrayidx.i.20 = getelementptr inbounds float, float* %2, i64 %idxprom.i.20
  %408 = load float, float* %arrayidx.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.20 = fmul float %408, %4
  store float %mul3.i.20, float* %arrayidx.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.21 = add nsw i32 %mul.i, %conv.i.21
  %idxprom.i.21 = sext i32 %add.i.21 to i64
  %arrayidx.i.21 = getelementptr inbounds float, float* %2, i64 %idxprom.i.21
  %409 = load float, float* %arrayidx.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.21 = fmul float %409, %4
  store float %mul3.i.21, float* %arrayidx.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.22 = add nsw i32 %mul.i, %conv.i.22
  %idxprom.i.22 = sext i32 %add.i.22 to i64
  %arrayidx.i.22 = getelementptr inbounds float, float* %2, i64 %idxprom.i.22
  %410 = load float, float* %arrayidx.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.22 = fmul float %410, %4
  store float %mul3.i.22, float* %arrayidx.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.23 = add nsw i32 %mul.i, %conv.i.23
  %idxprom.i.23 = sext i32 %add.i.23 to i64
  %arrayidx.i.23 = getelementptr inbounds float, float* %2, i64 %idxprom.i.23
  %411 = load float, float* %arrayidx.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.23 = fmul float %411, %4
  store float %mul3.i.23, float* %arrayidx.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.24 = add nsw i32 %mul.i, %conv.i.24
  %idxprom.i.24 = sext i32 %add.i.24 to i64
  %arrayidx.i.24 = getelementptr inbounds float, float* %2, i64 %idxprom.i.24
  %412 = load float, float* %arrayidx.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.24 = fmul float %412, %4
  store float %mul3.i.24, float* %arrayidx.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.25 = add nsw i32 %mul.i, %conv.i.25
  %idxprom.i.25 = sext i32 %add.i.25 to i64
  %arrayidx.i.25 = getelementptr inbounds float, float* %2, i64 %idxprom.i.25
  %413 = load float, float* %arrayidx.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.25 = fmul float %413, %4
  store float %mul3.i.25, float* %arrayidx.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.26 = add nsw i32 %mul.i, %conv.i.26
  %idxprom.i.26 = sext i32 %add.i.26 to i64
  %arrayidx.i.26 = getelementptr inbounds float, float* %2, i64 %idxprom.i.26
  %414 = load float, float* %arrayidx.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.26 = fmul float %414, %4
  store float %mul3.i.26, float* %arrayidx.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.27 = add nsw i32 %mul.i, %conv.i.27
  %idxprom.i.27 = sext i32 %add.i.27 to i64
  %arrayidx.i.27 = getelementptr inbounds float, float* %2, i64 %idxprom.i.27
  %415 = load float, float* %arrayidx.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.27 = fmul float %415, %4
  store float %mul3.i.27, float* %arrayidx.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.28 = add nsw i32 %mul.i, %conv.i.28
  %idxprom.i.28 = sext i32 %add.i.28 to i64
  %arrayidx.i.28 = getelementptr inbounds float, float* %2, i64 %idxprom.i.28
  %416 = load float, float* %arrayidx.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.28 = fmul float %416, %4
  store float %mul3.i.28, float* %arrayidx.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.29 = add nsw i32 %mul.i, %conv.i.29
  %idxprom.i.29 = sext i32 %add.i.29 to i64
  %arrayidx.i.29 = getelementptr inbounds float, float* %2, i64 %idxprom.i.29
  %417 = load float, float* %arrayidx.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.29 = fmul float %417, %4
  store float %mul3.i.29, float* %arrayidx.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.30 = add nsw i32 %mul.i, %conv.i.30
  %idxprom.i.30 = sext i32 %add.i.30 to i64
  %arrayidx.i.30 = getelementptr inbounds float, float* %2, i64 %idxprom.i.30
  %418 = load float, float* %arrayidx.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.30 = fmul float %418, %4
  store float %mul3.i.30, float* %arrayidx.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.31 = add nsw i32 %mul.i, %conv.i.31
  %idxprom.i.31 = sext i32 %add.i.31 to i64
  %arrayidx.i.31 = getelementptr inbounds float, float* %2, i64 %idxprom.i.31
  %419 = load float, float* %arrayidx.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.31 = fmul float %419, %4
  store float %mul3.i.31, float* %arrayidx.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %420 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond31.not = icmp eq i64 %420, 8
  br i1 %exitcond31.not, label %gemm.exit.loopexit167, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !21

gemm.exit.loopexit:                               ; preds = %for.end.r_exit.i.loopexit.us.us.7.1
  br label %gemm.exit

gemm.exit.loopexit167:                            ; preds = %pregion_for_entry.pregion_for_init.i
  br label %gemm.exit

gemm.exit:                                        ; preds = %gemm.exit.loopexit167, %gemm.exit.loopexit, %vector.ph
  ret void

pregion_for_entry.entry.i.us.us.1:                ; preds = %for.end.r_exit.i.loopexit.us.us.1.1, %pregion_for_end.i.us-lcssa.us.us
  %_local_id_x.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us ], [ %572, %for.end.r_exit.i.loopexit.us.us.1.1 ]
  %add1.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.0.us.us.1, %mul.i.i
  %conv.i.us.us.1 = trunc i64 %add1.i.i.us.us.1 to i32
  %add.i.us.us.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1
  %idxprom.i.us.us.1 = sext i32 %add.i.us.us.1 to i64
  %arrayidx.i.us.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.1
  %421 = load float, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.1 = fmul float %421, %4
  store float %mul3.i.us.us.1, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1 = shl i64 %add1.i.i.us.us.1, 32
  %422 = ashr exact i64 %sext.i.us.us.1, 32
  br label %for.body.i.us.us.1

for.body.i.us.us.1:                               ; preds = %for.body.i.us.us.1, %pregion_for_entry.entry.i.us.us.1
  %indvars.iv.next.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1, %for.body.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.us.us.1 ]
  %423 = phi float [ %429, %for.body.i.us.us.1 ], [ %mul3.i.us.us.1, %pregion_for_entry.entry.i.us.us.1 ]
  %424 = add nsw i64 %indvars.iv.next.i2.us.us.1, %387
  %arrayidx8.i.us.us.1 = getelementptr inbounds float, float* %0, i64 %424
  %425 = load float, float* %arrayidx8.i.us.us.1, align 4, !tbaa !12
  %mul9.i.us.us.1 = fmul float %425, %3
  %426 = mul nsw i64 %indvars.iv.next.i2.us.us.1, %13
  %427 = add nsw i64 %426, %422
  %arrayidx13.i.us.us.1 = getelementptr inbounds float, float* %1, i64 %427
  %428 = load float, float* %arrayidx13.i.us.us.1, align 4, !tbaa !12
  %429 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.1, float %428, float %423) #2
  store float %429, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1, 1
  %exitcond.not.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1, label %for.end.r_exit.i.loopexit.us.us.1, label %for.body.i.us.us.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.1:                ; preds = %for.body.i.us.us.1
  %430 = or i64 %_local_id_x.0.us.us.1, 1
  %add1.i.i.us.us.1.1 = add nuw nsw i64 %430, %mul.i.i
  %conv.i.us.us.1.1 = trunc i64 %add1.i.i.us.us.1.1 to i32
  %add.i.us.us.1.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1.1
  %idxprom.i.us.us.1.1 = sext i32 %add.i.us.us.1.1 to i64
  %arrayidx.i.us.us.1.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.1.1
  %431 = load float, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.1.1 = fmul float %431, %4
  store float %mul3.i.us.us.1.1, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1.1 = shl i64 %add1.i.i.us.us.1.1, 32
  %432 = ashr exact i64 %sext.i.us.us.1.1, 32
  br label %for.body.i.us.us.1.1

pregion_for_end.i.us-lcssa.us.us.1:               ; preds = %for.end.r_exit.i.loopexit.us.us.1.1
  %433 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.2 = or i32 %433, 2
  %mul.i.us.2 = mul nsw i32 %conv2.i.us.2, %6
  %mul5.i.us.2 = mul nsw i32 %conv2.i.us.2, %7
  %434 = sext i32 %mul5.i.us.2 to i64
  br label %pregion_for_entry.entry.i.us.us.2

pregion_for_entry.entry.i.us.us.2:                ; preds = %for.end.r_exit.i.loopexit.us.us.2.1, %pregion_for_end.i.us-lcssa.us.us.1
  %_local_id_x.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.1 ], [ %564, %for.end.r_exit.i.loopexit.us.us.2.1 ]
  %add1.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.0.us.us.2, %mul.i.i
  %conv.i.us.us.2 = trunc i64 %add1.i.i.us.us.2 to i32
  %add.i.us.us.2 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2
  %idxprom.i.us.us.2 = sext i32 %add.i.us.us.2 to i64
  %arrayidx.i.us.us.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.2
  %435 = load float, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.2 = fmul float %435, %4
  store float %mul3.i.us.us.2, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2 = shl i64 %add1.i.i.us.us.2, 32
  %436 = ashr exact i64 %sext.i.us.us.2, 32
  br label %for.body.i.us.us.2

for.body.i.us.us.2:                               ; preds = %for.body.i.us.us.2, %pregion_for_entry.entry.i.us.us.2
  %indvars.iv.next.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.us.us.2, %for.body.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.us.us.2 ]
  %437 = phi float [ %443, %for.body.i.us.us.2 ], [ %mul3.i.us.us.2, %pregion_for_entry.entry.i.us.us.2 ]
  %438 = add nsw i64 %indvars.iv.next.i2.us.us.2, %434
  %arrayidx8.i.us.us.2 = getelementptr inbounds float, float* %0, i64 %438
  %439 = load float, float* %arrayidx8.i.us.us.2, align 4, !tbaa !12
  %mul9.i.us.us.2 = fmul float %439, %3
  %440 = mul nsw i64 %indvars.iv.next.i2.us.us.2, %13
  %441 = add nsw i64 %440, %436
  %arrayidx13.i.us.us.2 = getelementptr inbounds float, float* %1, i64 %441
  %442 = load float, float* %arrayidx13.i.us.us.2, align 4, !tbaa !12
  %443 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.2, float %442, float %437) #2
  store float %443, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i2.us.us.2, 1
  %exitcond.not.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.us.us.2, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2, label %for.end.r_exit.i.loopexit.us.us.2, label %for.body.i.us.us.2, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.2:                ; preds = %for.body.i.us.us.2
  %444 = or i64 %_local_id_x.0.us.us.2, 1
  %add1.i.i.us.us.2.1 = add nuw nsw i64 %444, %mul.i.i
  %conv.i.us.us.2.1 = trunc i64 %add1.i.i.us.us.2.1 to i32
  %add.i.us.us.2.1 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2.1
  %idxprom.i.us.us.2.1 = sext i32 %add.i.us.us.2.1 to i64
  %arrayidx.i.us.us.2.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.2.1
  %445 = load float, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.2.1 = fmul float %445, %4
  store float %mul3.i.us.us.2.1, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2.1 = shl i64 %add1.i.i.us.us.2.1, 32
  %446 = ashr exact i64 %sext.i.us.us.2.1, 32
  br label %for.body.i.us.us.2.1

pregion_for_end.i.us-lcssa.us.us.2:               ; preds = %for.end.r_exit.i.loopexit.us.us.2.1
  %447 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.3 = or i32 %447, 3
  %mul.i.us.3 = mul nsw i32 %conv2.i.us.3, %6
  %mul5.i.us.3 = mul nsw i32 %conv2.i.us.3, %7
  %448 = sext i32 %mul5.i.us.3 to i64
  br label %pregion_for_entry.entry.i.us.us.3

pregion_for_entry.entry.i.us.us.3:                ; preds = %for.end.r_exit.i.loopexit.us.us.3.1, %pregion_for_end.i.us-lcssa.us.us.2
  %_local_id_x.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.2 ], [ %556, %for.end.r_exit.i.loopexit.us.us.3.1 ]
  %add1.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.0.us.us.3, %mul.i.i
  %conv.i.us.us.3 = trunc i64 %add1.i.i.us.us.3 to i32
  %add.i.us.us.3 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3
  %idxprom.i.us.us.3 = sext i32 %add.i.us.us.3 to i64
  %arrayidx.i.us.us.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.3
  %449 = load float, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.3 = fmul float %449, %4
  store float %mul3.i.us.us.3, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3 = shl i64 %add1.i.i.us.us.3, 32
  %450 = ashr exact i64 %sext.i.us.us.3, 32
  br label %for.body.i.us.us.3

for.body.i.us.us.3:                               ; preds = %for.body.i.us.us.3, %pregion_for_entry.entry.i.us.us.3
  %indvars.iv.next.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.us.us.3, %for.body.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.us.us.3 ]
  %451 = phi float [ %457, %for.body.i.us.us.3 ], [ %mul3.i.us.us.3, %pregion_for_entry.entry.i.us.us.3 ]
  %452 = add nsw i64 %indvars.iv.next.i2.us.us.3, %448
  %arrayidx8.i.us.us.3 = getelementptr inbounds float, float* %0, i64 %452
  %453 = load float, float* %arrayidx8.i.us.us.3, align 4, !tbaa !12
  %mul9.i.us.us.3 = fmul float %453, %3
  %454 = mul nsw i64 %indvars.iv.next.i2.us.us.3, %13
  %455 = add nsw i64 %454, %450
  %arrayidx13.i.us.us.3 = getelementptr inbounds float, float* %1, i64 %455
  %456 = load float, float* %arrayidx13.i.us.us.3, align 4, !tbaa !12
  %457 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.3, float %456, float %451) #2
  store float %457, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i2.us.us.3, 1
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3, label %for.end.r_exit.i.loopexit.us.us.3, label %for.body.i.us.us.3, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.3:                ; preds = %for.body.i.us.us.3
  %458 = or i64 %_local_id_x.0.us.us.3, 1
  %add1.i.i.us.us.3.1 = add nuw nsw i64 %458, %mul.i.i
  %conv.i.us.us.3.1 = trunc i64 %add1.i.i.us.us.3.1 to i32
  %add.i.us.us.3.1 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3.1
  %idxprom.i.us.us.3.1 = sext i32 %add.i.us.us.3.1 to i64
  %arrayidx.i.us.us.3.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.3.1
  %459 = load float, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.3.1 = fmul float %459, %4
  store float %mul3.i.us.us.3.1, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3.1 = shl i64 %add1.i.i.us.us.3.1, 32
  %460 = ashr exact i64 %sext.i.us.us.3.1, 32
  br label %for.body.i.us.us.3.1

pregion_for_end.i.us-lcssa.us.us.3:               ; preds = %for.end.r_exit.i.loopexit.us.us.3.1
  %461 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.4 = or i32 %461, 4
  %mul.i.us.4 = mul nsw i32 %conv2.i.us.4, %6
  %mul5.i.us.4 = mul nsw i32 %conv2.i.us.4, %7
  %462 = sext i32 %mul5.i.us.4 to i64
  br label %pregion_for_entry.entry.i.us.us.4

pregion_for_entry.entry.i.us.us.4:                ; preds = %for.end.r_exit.i.loopexit.us.us.4.1, %pregion_for_end.i.us-lcssa.us.us.3
  %_local_id_x.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.3 ], [ %548, %for.end.r_exit.i.loopexit.us.us.4.1 ]
  %add1.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.0.us.us.4, %mul.i.i
  %conv.i.us.us.4 = trunc i64 %add1.i.i.us.us.4 to i32
  %add.i.us.us.4 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4
  %idxprom.i.us.us.4 = sext i32 %add.i.us.us.4 to i64
  %arrayidx.i.us.us.4 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.4
  %463 = load float, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.4 = fmul float %463, %4
  store float %mul3.i.us.us.4, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4 = shl i64 %add1.i.i.us.us.4, 32
  %464 = ashr exact i64 %sext.i.us.us.4, 32
  br label %for.body.i.us.us.4

for.body.i.us.us.4:                               ; preds = %for.body.i.us.us.4, %pregion_for_entry.entry.i.us.us.4
  %indvars.iv.next.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.us.us.4, %for.body.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.us.us.4 ]
  %465 = phi float [ %471, %for.body.i.us.us.4 ], [ %mul3.i.us.us.4, %pregion_for_entry.entry.i.us.us.4 ]
  %466 = add nsw i64 %indvars.iv.next.i2.us.us.4, %462
  %arrayidx8.i.us.us.4 = getelementptr inbounds float, float* %0, i64 %466
  %467 = load float, float* %arrayidx8.i.us.us.4, align 4, !tbaa !12
  %mul9.i.us.us.4 = fmul float %467, %3
  %468 = mul nsw i64 %indvars.iv.next.i2.us.us.4, %13
  %469 = add nsw i64 %468, %464
  %arrayidx13.i.us.us.4 = getelementptr inbounds float, float* %1, i64 %469
  %470 = load float, float* %arrayidx13.i.us.us.4, align 4, !tbaa !12
  %471 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.4, float %470, float %465) #2
  store float %471, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i2.us.us.4, 1
  %exitcond.not.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.us.us.4, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4, label %for.end.r_exit.i.loopexit.us.us.4, label %for.body.i.us.us.4, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.4:                ; preds = %for.body.i.us.us.4
  %472 = or i64 %_local_id_x.0.us.us.4, 1
  %add1.i.i.us.us.4.1 = add nuw nsw i64 %472, %mul.i.i
  %conv.i.us.us.4.1 = trunc i64 %add1.i.i.us.us.4.1 to i32
  %add.i.us.us.4.1 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4.1
  %idxprom.i.us.us.4.1 = sext i32 %add.i.us.us.4.1 to i64
  %arrayidx.i.us.us.4.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.4.1
  %473 = load float, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.4.1 = fmul float %473, %4
  store float %mul3.i.us.us.4.1, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4.1 = shl i64 %add1.i.i.us.us.4.1, 32
  %474 = ashr exact i64 %sext.i.us.us.4.1, 32
  br label %for.body.i.us.us.4.1

pregion_for_end.i.us-lcssa.us.us.4:               ; preds = %for.end.r_exit.i.loopexit.us.us.4.1
  %475 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.5 = or i32 %475, 5
  %mul.i.us.5 = mul nsw i32 %conv2.i.us.5, %6
  %mul5.i.us.5 = mul nsw i32 %conv2.i.us.5, %7
  %476 = sext i32 %mul5.i.us.5 to i64
  br label %pregion_for_entry.entry.i.us.us.5

pregion_for_entry.entry.i.us.us.5:                ; preds = %for.end.r_exit.i.loopexit.us.us.5.1, %pregion_for_end.i.us-lcssa.us.us.4
  %_local_id_x.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.4 ], [ %540, %for.end.r_exit.i.loopexit.us.us.5.1 ]
  %add1.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.0.us.us.5, %mul.i.i
  %conv.i.us.us.5 = trunc i64 %add1.i.i.us.us.5 to i32
  %add.i.us.us.5 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5
  %idxprom.i.us.us.5 = sext i32 %add.i.us.us.5 to i64
  %arrayidx.i.us.us.5 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.5
  %477 = load float, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.5 = fmul float %477, %4
  store float %mul3.i.us.us.5, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5 = shl i64 %add1.i.i.us.us.5, 32
  %478 = ashr exact i64 %sext.i.us.us.5, 32
  br label %for.body.i.us.us.5

for.body.i.us.us.5:                               ; preds = %for.body.i.us.us.5, %pregion_for_entry.entry.i.us.us.5
  %indvars.iv.next.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.us.us.5, %for.body.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.us.us.5 ]
  %479 = phi float [ %485, %for.body.i.us.us.5 ], [ %mul3.i.us.us.5, %pregion_for_entry.entry.i.us.us.5 ]
  %480 = add nsw i64 %indvars.iv.next.i2.us.us.5, %476
  %arrayidx8.i.us.us.5 = getelementptr inbounds float, float* %0, i64 %480
  %481 = load float, float* %arrayidx8.i.us.us.5, align 4, !tbaa !12
  %mul9.i.us.us.5 = fmul float %481, %3
  %482 = mul nsw i64 %indvars.iv.next.i2.us.us.5, %13
  %483 = add nsw i64 %482, %478
  %arrayidx13.i.us.us.5 = getelementptr inbounds float, float* %1, i64 %483
  %484 = load float, float* %arrayidx13.i.us.us.5, align 4, !tbaa !12
  %485 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.5, float %484, float %479) #2
  store float %485, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i2.us.us.5, 1
  %exitcond.not.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.us.us.5, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5, label %for.end.r_exit.i.loopexit.us.us.5, label %for.body.i.us.us.5, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.5:                ; preds = %for.body.i.us.us.5
  %486 = or i64 %_local_id_x.0.us.us.5, 1
  %add1.i.i.us.us.5.1 = add nuw nsw i64 %486, %mul.i.i
  %conv.i.us.us.5.1 = trunc i64 %add1.i.i.us.us.5.1 to i32
  %add.i.us.us.5.1 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5.1
  %idxprom.i.us.us.5.1 = sext i32 %add.i.us.us.5.1 to i64
  %arrayidx.i.us.us.5.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.5.1
  %487 = load float, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.5.1 = fmul float %487, %4
  store float %mul3.i.us.us.5.1, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5.1 = shl i64 %add1.i.i.us.us.5.1, 32
  %488 = ashr exact i64 %sext.i.us.us.5.1, 32
  br label %for.body.i.us.us.5.1

pregion_for_end.i.us-lcssa.us.us.5:               ; preds = %for.end.r_exit.i.loopexit.us.us.5.1
  %489 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.6 = or i32 %489, 6
  %mul.i.us.6 = mul nsw i32 %conv2.i.us.6, %6
  %mul5.i.us.6 = mul nsw i32 %conv2.i.us.6, %7
  %490 = sext i32 %mul5.i.us.6 to i64
  br label %pregion_for_entry.entry.i.us.us.6

pregion_for_entry.entry.i.us.us.6:                ; preds = %for.end.r_exit.i.loopexit.us.us.6.1, %pregion_for_end.i.us-lcssa.us.us.5
  %_local_id_x.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.5 ], [ %532, %for.end.r_exit.i.loopexit.us.us.6.1 ]
  %add1.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.0.us.us.6, %mul.i.i
  %conv.i.us.us.6 = trunc i64 %add1.i.i.us.us.6 to i32
  %add.i.us.us.6 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6
  %idxprom.i.us.us.6 = sext i32 %add.i.us.us.6 to i64
  %arrayidx.i.us.us.6 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.6
  %491 = load float, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.6 = fmul float %491, %4
  store float %mul3.i.us.us.6, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6 = shl i64 %add1.i.i.us.us.6, 32
  %492 = ashr exact i64 %sext.i.us.us.6, 32
  br label %for.body.i.us.us.6

for.body.i.us.us.6:                               ; preds = %for.body.i.us.us.6, %pregion_for_entry.entry.i.us.us.6
  %indvars.iv.next.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.us.us.6, %for.body.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.us.us.6 ]
  %493 = phi float [ %499, %for.body.i.us.us.6 ], [ %mul3.i.us.us.6, %pregion_for_entry.entry.i.us.us.6 ]
  %494 = add nsw i64 %indvars.iv.next.i2.us.us.6, %490
  %arrayidx8.i.us.us.6 = getelementptr inbounds float, float* %0, i64 %494
  %495 = load float, float* %arrayidx8.i.us.us.6, align 4, !tbaa !12
  %mul9.i.us.us.6 = fmul float %495, %3
  %496 = mul nsw i64 %indvars.iv.next.i2.us.us.6, %13
  %497 = add nsw i64 %496, %492
  %arrayidx13.i.us.us.6 = getelementptr inbounds float, float* %1, i64 %497
  %498 = load float, float* %arrayidx13.i.us.us.6, align 4, !tbaa !12
  %499 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.6, float %498, float %493) #2
  store float %499, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i2.us.us.6, 1
  %exitcond.not.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.us.us.6, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6, label %for.end.r_exit.i.loopexit.us.us.6, label %for.body.i.us.us.6, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.6:                ; preds = %for.body.i.us.us.6
  %500 = or i64 %_local_id_x.0.us.us.6, 1
  %add1.i.i.us.us.6.1 = add nuw nsw i64 %500, %mul.i.i
  %conv.i.us.us.6.1 = trunc i64 %add1.i.i.us.us.6.1 to i32
  %add.i.us.us.6.1 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6.1
  %idxprom.i.us.us.6.1 = sext i32 %add.i.us.us.6.1 to i64
  %arrayidx.i.us.us.6.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.6.1
  %501 = load float, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.6.1 = fmul float %501, %4
  store float %mul3.i.us.us.6.1, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6.1 = shl i64 %add1.i.i.us.us.6.1, 32
  %502 = ashr exact i64 %sext.i.us.us.6.1, 32
  br label %for.body.i.us.us.6.1

pregion_for_end.i.us-lcssa.us.us.6:               ; preds = %for.end.r_exit.i.loopexit.us.us.6.1
  %503 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.7 = or i32 %503, 7
  %mul.i.us.7 = mul nsw i32 %conv2.i.us.7, %6
  %mul5.i.us.7 = mul nsw i32 %conv2.i.us.7, %7
  %504 = sext i32 %mul5.i.us.7 to i64
  br label %pregion_for_entry.entry.i.us.us.7

pregion_for_entry.entry.i.us.us.7:                ; preds = %for.end.r_exit.i.loopexit.us.us.7.1, %pregion_for_end.i.us-lcssa.us.us.6
  %_local_id_x.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.6 ], [ %524, %for.end.r_exit.i.loopexit.us.us.7.1 ]
  %add1.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.0.us.us.7, %mul.i.i
  %conv.i.us.us.7 = trunc i64 %add1.i.i.us.us.7 to i32
  %add.i.us.us.7 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7
  %idxprom.i.us.us.7 = sext i32 %add.i.us.us.7 to i64
  %arrayidx.i.us.us.7 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.7
  %505 = load float, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.7 = fmul float %505, %4
  store float %mul3.i.us.us.7, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7 = shl i64 %add1.i.i.us.us.7, 32
  %506 = ashr exact i64 %sext.i.us.us.7, 32
  br label %for.body.i.us.us.7

for.body.i.us.us.7:                               ; preds = %for.body.i.us.us.7, %pregion_for_entry.entry.i.us.us.7
  %indvars.iv.next.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.us.us.7, %for.body.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.us.us.7 ]
  %507 = phi float [ %513, %for.body.i.us.us.7 ], [ %mul3.i.us.us.7, %pregion_for_entry.entry.i.us.us.7 ]
  %508 = add nsw i64 %indvars.iv.next.i2.us.us.7, %504
  %arrayidx8.i.us.us.7 = getelementptr inbounds float, float* %0, i64 %508
  %509 = load float, float* %arrayidx8.i.us.us.7, align 4, !tbaa !12
  %mul9.i.us.us.7 = fmul float %509, %3
  %510 = mul nsw i64 %indvars.iv.next.i2.us.us.7, %13
  %511 = add nsw i64 %510, %506
  %arrayidx13.i.us.us.7 = getelementptr inbounds float, float* %1, i64 %511
  %512 = load float, float* %arrayidx13.i.us.us.7, align 4, !tbaa !12
  %513 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.7, float %512, float %507) #2
  store float %513, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i2.us.us.7, 1
  %exitcond.not.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.us.us.7, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7, label %for.end.r_exit.i.loopexit.us.us.7, label %for.body.i.us.us.7, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.7:                ; preds = %for.body.i.us.us.7
  %514 = or i64 %_local_id_x.0.us.us.7, 1
  %add1.i.i.us.us.7.1 = add nuw nsw i64 %514, %mul.i.i
  %conv.i.us.us.7.1 = trunc i64 %add1.i.i.us.us.7.1 to i32
  %add.i.us.us.7.1 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7.1
  %idxprom.i.us.us.7.1 = sext i32 %add.i.us.us.7.1 to i64
  %arrayidx.i.us.us.7.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.7.1
  %515 = load float, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.7.1 = fmul float %515, %4
  store float %mul3.i.us.us.7.1, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7.1 = shl i64 %add1.i.i.us.us.7.1, 32
  %516 = ashr exact i64 %sext.i.us.us.7.1, 32
  br label %for.body.i.us.us.7.1

for.body.i.us.us.7.1:                             ; preds = %for.body.i.us.us.7.1, %for.end.r_exit.i.loopexit.us.us.7
  %indvars.iv.next.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.us.us.7.1, %for.body.i.us.us.7.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.7 ]
  %517 = phi float [ %523, %for.body.i.us.us.7.1 ], [ %mul3.i.us.us.7.1, %for.end.r_exit.i.loopexit.us.us.7 ]
  %518 = add nsw i64 %indvars.iv.next.i2.us.us.7.1, %504
  %arrayidx8.i.us.us.7.1 = getelementptr inbounds float, float* %0, i64 %518
  %519 = load float, float* %arrayidx8.i.us.us.7.1, align 4, !tbaa !12
  %mul9.i.us.us.7.1 = fmul float %519, %3
  %520 = mul nsw i64 %indvars.iv.next.i2.us.us.7.1, %13
  %521 = add nsw i64 %520, %516
  %arrayidx13.i.us.us.7.1 = getelementptr inbounds float, float* %1, i64 %521
  %522 = load float, float* %arrayidx13.i.us.us.7.1, align 4, !tbaa !12
  %523 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.7.1, float %522, float %517) #2
  store float %523, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.7.1, 1
  %exitcond.not.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.us.us.7.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7.1, label %for.end.r_exit.i.loopexit.us.us.7.1, label %for.body.i.us.us.7.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.7.1:              ; preds = %for.body.i.us.us.7.1
  %524 = add nuw nsw i64 %_local_id_x.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %524, 32
  br i1 %exitcond.7.not.1, label %gemm.exit.loopexit, label %pregion_for_entry.entry.i.us.us.7, !llvm.loop !24

for.body.i.us.us.6.1:                             ; preds = %for.body.i.us.us.6.1, %for.end.r_exit.i.loopexit.us.us.6
  %indvars.iv.next.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.us.us.6.1, %for.body.i.us.us.6.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.6 ]
  %525 = phi float [ %531, %for.body.i.us.us.6.1 ], [ %mul3.i.us.us.6.1, %for.end.r_exit.i.loopexit.us.us.6 ]
  %526 = add nsw i64 %indvars.iv.next.i2.us.us.6.1, %490
  %arrayidx8.i.us.us.6.1 = getelementptr inbounds float, float* %0, i64 %526
  %527 = load float, float* %arrayidx8.i.us.us.6.1, align 4, !tbaa !12
  %mul9.i.us.us.6.1 = fmul float %527, %3
  %528 = mul nsw i64 %indvars.iv.next.i2.us.us.6.1, %13
  %529 = add nsw i64 %528, %502
  %arrayidx13.i.us.us.6.1 = getelementptr inbounds float, float* %1, i64 %529
  %530 = load float, float* %arrayidx13.i.us.us.6.1, align 4, !tbaa !12
  %531 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.6.1, float %530, float %525) #2
  store float %531, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.6.1, 1
  %exitcond.not.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.us.us.6.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6.1, label %for.end.r_exit.i.loopexit.us.us.6.1, label %for.body.i.us.us.6.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.6.1:              ; preds = %for.body.i.us.us.6.1
  %532 = add nuw nsw i64 %_local_id_x.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %532, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.us.us.6, !llvm.loop !24

for.body.i.us.us.5.1:                             ; preds = %for.body.i.us.us.5.1, %for.end.r_exit.i.loopexit.us.us.5
  %indvars.iv.next.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.us.us.5.1, %for.body.i.us.us.5.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.5 ]
  %533 = phi float [ %539, %for.body.i.us.us.5.1 ], [ %mul3.i.us.us.5.1, %for.end.r_exit.i.loopexit.us.us.5 ]
  %534 = add nsw i64 %indvars.iv.next.i2.us.us.5.1, %476
  %arrayidx8.i.us.us.5.1 = getelementptr inbounds float, float* %0, i64 %534
  %535 = load float, float* %arrayidx8.i.us.us.5.1, align 4, !tbaa !12
  %mul9.i.us.us.5.1 = fmul float %535, %3
  %536 = mul nsw i64 %indvars.iv.next.i2.us.us.5.1, %13
  %537 = add nsw i64 %536, %488
  %arrayidx13.i.us.us.5.1 = getelementptr inbounds float, float* %1, i64 %537
  %538 = load float, float* %arrayidx13.i.us.us.5.1, align 4, !tbaa !12
  %539 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.5.1, float %538, float %533) #2
  store float %539, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.5.1, 1
  %exitcond.not.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.us.us.5.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5.1, label %for.end.r_exit.i.loopexit.us.us.5.1, label %for.body.i.us.us.5.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.5.1:              ; preds = %for.body.i.us.us.5.1
  %540 = add nuw nsw i64 %_local_id_x.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %540, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.us.us.5, !llvm.loop !24

for.body.i.us.us.4.1:                             ; preds = %for.body.i.us.us.4.1, %for.end.r_exit.i.loopexit.us.us.4
  %indvars.iv.next.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.us.us.4.1, %for.body.i.us.us.4.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.4 ]
  %541 = phi float [ %547, %for.body.i.us.us.4.1 ], [ %mul3.i.us.us.4.1, %for.end.r_exit.i.loopexit.us.us.4 ]
  %542 = add nsw i64 %indvars.iv.next.i2.us.us.4.1, %462
  %arrayidx8.i.us.us.4.1 = getelementptr inbounds float, float* %0, i64 %542
  %543 = load float, float* %arrayidx8.i.us.us.4.1, align 4, !tbaa !12
  %mul9.i.us.us.4.1 = fmul float %543, %3
  %544 = mul nsw i64 %indvars.iv.next.i2.us.us.4.1, %13
  %545 = add nsw i64 %544, %474
  %arrayidx13.i.us.us.4.1 = getelementptr inbounds float, float* %1, i64 %545
  %546 = load float, float* %arrayidx13.i.us.us.4.1, align 4, !tbaa !12
  %547 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.4.1, float %546, float %541) #2
  store float %547, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.4.1, 1
  %exitcond.not.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.us.us.4.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4.1, label %for.end.r_exit.i.loopexit.us.us.4.1, label %for.body.i.us.us.4.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.4.1:              ; preds = %for.body.i.us.us.4.1
  %548 = add nuw nsw i64 %_local_id_x.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %548, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.us.us.4, !llvm.loop !24

for.body.i.us.us.3.1:                             ; preds = %for.body.i.us.us.3.1, %for.end.r_exit.i.loopexit.us.us.3
  %indvars.iv.next.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.us.us.3.1, %for.body.i.us.us.3.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.3 ]
  %549 = phi float [ %555, %for.body.i.us.us.3.1 ], [ %mul3.i.us.us.3.1, %for.end.r_exit.i.loopexit.us.us.3 ]
  %550 = add nsw i64 %indvars.iv.next.i2.us.us.3.1, %448
  %arrayidx8.i.us.us.3.1 = getelementptr inbounds float, float* %0, i64 %550
  %551 = load float, float* %arrayidx8.i.us.us.3.1, align 4, !tbaa !12
  %mul9.i.us.us.3.1 = fmul float %551, %3
  %552 = mul nsw i64 %indvars.iv.next.i2.us.us.3.1, %13
  %553 = add nsw i64 %552, %460
  %arrayidx13.i.us.us.3.1 = getelementptr inbounds float, float* %1, i64 %553
  %554 = load float, float* %arrayidx13.i.us.us.3.1, align 4, !tbaa !12
  %555 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.3.1, float %554, float %549) #2
  store float %555, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.3.1, 1
  %exitcond.not.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.us.us.3.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3.1, label %for.end.r_exit.i.loopexit.us.us.3.1, label %for.body.i.us.us.3.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.3.1:              ; preds = %for.body.i.us.us.3.1
  %556 = add nuw nsw i64 %_local_id_x.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %556, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.us.us.3, !llvm.loop !24

for.body.i.us.us.2.1:                             ; preds = %for.body.i.us.us.2.1, %for.end.r_exit.i.loopexit.us.us.2
  %indvars.iv.next.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.us.us.2.1, %for.body.i.us.us.2.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.2 ]
  %557 = phi float [ %563, %for.body.i.us.us.2.1 ], [ %mul3.i.us.us.2.1, %for.end.r_exit.i.loopexit.us.us.2 ]
  %558 = add nsw i64 %indvars.iv.next.i2.us.us.2.1, %434
  %arrayidx8.i.us.us.2.1 = getelementptr inbounds float, float* %0, i64 %558
  %559 = load float, float* %arrayidx8.i.us.us.2.1, align 4, !tbaa !12
  %mul9.i.us.us.2.1 = fmul float %559, %3
  %560 = mul nsw i64 %indvars.iv.next.i2.us.us.2.1, %13
  %561 = add nsw i64 %560, %446
  %arrayidx13.i.us.us.2.1 = getelementptr inbounds float, float* %1, i64 %561
  %562 = load float, float* %arrayidx13.i.us.us.2.1, align 4, !tbaa !12
  %563 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.2.1, float %562, float %557) #2
  store float %563, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.2.1, 1
  %exitcond.not.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.us.us.2.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2.1, label %for.end.r_exit.i.loopexit.us.us.2.1, label %for.body.i.us.us.2.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.2.1:              ; preds = %for.body.i.us.us.2.1
  %564 = add nuw nsw i64 %_local_id_x.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %564, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.us.us.2, !llvm.loop !24

for.body.i.us.us.1.1:                             ; preds = %for.body.i.us.us.1.1, %for.end.r_exit.i.loopexit.us.us.1
  %indvars.iv.next.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.us.us.1.1, %for.body.i.us.us.1.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.1 ]
  %565 = phi float [ %571, %for.body.i.us.us.1.1 ], [ %mul3.i.us.us.1.1, %for.end.r_exit.i.loopexit.us.us.1 ]
  %566 = add nsw i64 %indvars.iv.next.i2.us.us.1.1, %387
  %arrayidx8.i.us.us.1.1 = getelementptr inbounds float, float* %0, i64 %566
  %567 = load float, float* %arrayidx8.i.us.us.1.1, align 4, !tbaa !12
  %mul9.i.us.us.1.1 = fmul float %567, %3
  %568 = mul nsw i64 %indvars.iv.next.i2.us.us.1.1, %13
  %569 = add nsw i64 %568, %432
  %arrayidx13.i.us.us.1.1 = getelementptr inbounds float, float* %1, i64 %569
  %570 = load float, float* %arrayidx13.i.us.us.1.1, align 4, !tbaa !12
  %571 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.1.1, float %570, float %565) #2
  store float %571, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1.1, 1
  %exitcond.not.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.us.us.1.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1.1, label %for.end.r_exit.i.loopexit.us.us.1.1, label %for.body.i.us.us.1.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.1.1:              ; preds = %for.body.i.us.us.1.1
  %572 = add nuw nsw i64 %_local_id_x.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %572, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.us.us.1, !llvm.loop !24

for.body.i.us.us.1164:                            ; preds = %for.body.i.us.us.1164, %for.end.r_exit.i.loopexit.us.us
  %indvars.iv.next.i2.us.us.1158 = phi i64 [ %indvars.iv.next.i.us.us.1162, %for.body.i.us.us.1164 ], [ 0, %for.end.r_exit.i.loopexit.us.us ]
  %573 = phi float [ %579, %for.body.i.us.us.1164 ], [ %mul3.i.us.us.1155, %for.end.r_exit.i.loopexit.us.us ]
  %574 = add nsw i64 %indvars.iv.next.i2.us.us.1158, %373
  %arrayidx8.i.us.us.1159 = getelementptr inbounds float, float* %0, i64 %574
  %575 = load float, float* %arrayidx8.i.us.us.1159, align 4, !tbaa !12
  %mul9.i.us.us.1160 = fmul float %575, %3
  %576 = mul nsw i64 %indvars.iv.next.i2.us.us.1158, %13
  %577 = add nsw i64 %576, %378
  %arrayidx13.i.us.us.1161 = getelementptr inbounds float, float* %1, i64 %577
  %578 = load float, float* %arrayidx13.i.us.us.1161, align 4, !tbaa !12
  %579 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.1160, float %578, float %573) #2
  store float %579, float* %arrayidx.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1162 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1158, 1
  %exitcond.not.i.us.us.1163 = icmp eq i64 %indvars.iv.next.i.us.us.1162, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1163, label %for.end.r_exit.i.loopexit.us.us.1165, label %for.body.i.us.us.1164, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.1165:             ; preds = %for.body.i.us.us.1164
  %580 = add nuw nsw i64 %_local_id_x.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %580, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.us.us, !llvm.loop !24
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
  %25 = getelementptr i8*, i8** %0, i64 6
  %26 = bitcast i8** %25 to i32**
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr i8*, i8** %0, i64 7
  %30 = bitcast i8** %29 to i32**
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp33.i.i = icmp sgt i32 %32, 0
  %33 = sext i32 %28 to i64
  %wide.trip.count.i.i = zext i32 %32 to i64
  br i1 %cmp33.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  %conv.i.i = trunc i64 %mul.i.i.i to i32
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.1 = or i32 %34, 1
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.2 = or i32 %35, 2
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.3 = or i32 %36, 3
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.4 = or i32 %37, 4
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.5 = or i32 %38, 5
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.6 = or i32 %39, 6
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.7 = or i32 %40, 7
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.8 = or i32 %41, 8
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.9 = or i32 %42, 9
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.10 = or i32 %43, 10
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.11 = or i32 %44, 11
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.12 = or i32 %45, 12
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.13 = or i32 %46, 13
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.14 = or i32 %47, 14
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.15 = or i32 %48, 15
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.16 = or i32 %49, 16
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.17 = or i32 %50, 17
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.18 = or i32 %51, 18
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.19 = or i32 %52, 19
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.20 = or i32 %53, 20
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.21 = or i32 %54, 21
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.22 = or i32 %55, 22
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.23 = or i32 %56, 23
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.24 = or i32 %57, 24
  %58 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.25 = or i32 %58, 25
  %59 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.26 = or i32 %59, 26
  %60 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.27 = or i32 %60, 27
  %61 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.28 = or i32 %61, 28
  %62 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.29 = or i32 %62, 29
  %63 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.30 = or i32 %63, 30
  %64 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.31 = or i32 %64, 31
  %ident.check = icmp ne i32 %28, 1
  %65 = trunc i64 %3 to i32
  %66 = shl i32 %65, 3
  %67 = add i32 %66, %conv.i.i
  %68 = icmp eq i32 %67, 2147483640
  %69 = or i1 %ident.check, %68
  %70 = add i32 %66, %conv.i.i
  %71 = or i32 %70, 2
  %72 = icmp sgt i32 %71, 2147483640
  %73 = or i1 %69, %72
  %74 = add i32 %66, %conv.i.i
  %75 = or i32 %74, 3
  %76 = icmp sgt i32 %75, 2147483640
  %77 = or i1 %73, %76
  %78 = add i32 %66, %conv.i.i
  %79 = or i32 %78, 4
  %80 = icmp sgt i32 %79, 2147483640
  %81 = or i1 %77, %80
  %82 = add i32 %66, %conv.i.i
  %83 = or i32 %82, 5
  %84 = icmp sgt i32 %83, 2147483640
  %85 = or i1 %81, %84
  %86 = add i32 %66, %conv.i.i
  %87 = or i32 %86, 6
  %88 = icmp sgt i32 %87, 2147483640
  %89 = or i1 %85, %88
  %90 = add i32 %66, %conv.i.i
  %91 = or i32 %90, 7
  %92 = icmp sgt i32 %91, 2147483640
  %93 = or i1 %89, %92
  %94 = add i32 %66, %conv.i.i
  %95 = add i32 %94, 9
  %96 = add i32 %94, 16
  %97 = icmp slt i32 %96, %95
  %98 = or i1 %93, %97
  %99 = add i32 %66, %conv.i.i
  %100 = add i32 %99, 10
  %101 = add i32 %99, 17
  %102 = icmp slt i32 %101, %100
  %103 = or i1 %98, %102
  %104 = add i32 %66, %conv.i.i
  %105 = add i32 %104, 11
  %106 = add i32 %104, 18
  %107 = icmp slt i32 %106, %105
  %108 = or i1 %103, %107
  %109 = add i32 %66, %conv.i.i
  %110 = add i32 %109, 12
  %111 = add i32 %109, 19
  %112 = icmp slt i32 %111, %110
  %113 = or i1 %108, %112
  %114 = add i32 %66, %conv.i.i
  %115 = add i32 %114, 13
  %116 = add i32 %114, 20
  %117 = icmp slt i32 %116, %115
  %118 = or i1 %113, %117
  %119 = add i32 %66, %conv.i.i
  %120 = add i32 %119, 14
  %121 = add i32 %119, 21
  %122 = icmp slt i32 %121, %120
  %123 = or i1 %118, %122
  %124 = add i32 %66, %conv.i.i
  %125 = add i32 %124, 15
  %126 = add i32 %124, 22
  %127 = icmp slt i32 %126, %125
  %128 = or i1 %123, %127
  %129 = add i32 %66, %conv.i.i
  %130 = add i32 %129, 17
  %131 = add i32 %129, 24
  %132 = icmp slt i32 %131, %130
  %133 = or i1 %128, %132
  %134 = add i32 %66, %conv.i.i
  %135 = add i32 %134, 18
  %136 = add i32 %134, 25
  %137 = icmp slt i32 %136, %135
  %138 = or i1 %133, %137
  %139 = add i32 %66, %conv.i.i
  %140 = add i32 %139, 19
  %141 = add i32 %139, 26
  %142 = icmp slt i32 %141, %140
  %143 = or i1 %138, %142
  %144 = add i32 %66, %conv.i.i
  %145 = add i32 %144, 20
  %146 = add i32 %144, 27
  %147 = icmp slt i32 %146, %145
  %148 = or i1 %143, %147
  %149 = add i32 %66, %conv.i.i
  %150 = add i32 %149, 21
  %151 = add i32 %149, 28
  %152 = icmp slt i32 %151, %150
  %153 = or i1 %148, %152
  %154 = add i32 %66, %conv.i.i
  %155 = add i32 %154, 22
  %156 = add i32 %154, 29
  %157 = icmp slt i32 %156, %155
  %158 = or i1 %153, %157
  %159 = add i32 %66, %conv.i.i
  %160 = add i32 %159, 23
  %161 = add i32 %159, 30
  %162 = icmp slt i32 %161, %160
  %163 = or i1 %158, %162
  %164 = add i32 %66, %conv.i.i
  %165 = add i32 %164, 25
  %166 = add i32 %164, 32
  %167 = icmp slt i32 %166, %165
  %168 = or i1 %163, %167
  %169 = add i32 %66, %conv.i.i
  %170 = add i32 %169, 26
  %171 = add i32 %169, 33
  %172 = icmp slt i32 %171, %170
  %173 = or i1 %168, %172
  %174 = add i32 %66, %conv.i.i
  %175 = add i32 %174, 27
  %176 = add i32 %174, 34
  %177 = icmp slt i32 %176, %175
  %178 = or i1 %173, %177
  %179 = add i32 %66, %conv.i.i
  %180 = add i32 %179, 28
  %181 = add i32 %179, 35
  %182 = icmp slt i32 %181, %180
  %183 = or i1 %178, %182
  %184 = add i32 %66, %conv.i.i
  %185 = add i32 %184, 29
  %186 = add i32 %184, 36
  %187 = icmp slt i32 %186, %185
  %188 = or i1 %183, %187
  %189 = add i32 %66, %conv.i.i
  %190 = add i32 %189, 30
  %191 = add i32 %189, 37
  %192 = icmp slt i32 %191, %190
  %193 = or i1 %188, %192
  %194 = add i32 %66, %conv.i.i
  %195 = add i32 %194, 31
  %196 = add i32 %194, 38
  %197 = icmp slt i32 %196, %195
  %198 = or i1 %193, %197
  br i1 %198, label %pregion_for_entry.pregion_for_init.i.i.preheader166, label %vector.ph

pregion_for_entry.pregion_for_init.i.i.preheader166: ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  br label %pregion_for_entry.pregion_for_init.i.i

vector.ph:                                        ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %broadcast.splatinsert = insertelement <8 x float> undef, float %24, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %199 = trunc i64 %mul3.i.i.i to i32
  %200 = mul nsw i32 %28, %199
  %201 = add nsw i32 %200, %conv.i.i
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %16, i64 %202
  %204 = bitcast float* %203 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %204, align 4, !tbaa !12, !llvm.access.group !16
  %205 = fmul <8 x float> %broadcast.splat, %wide.load
  %206 = bitcast float* %203 to <8 x float>*
  store <8 x float> %205, <8 x float>* %206, align 4, !tbaa !12, !llvm.access.group !16
  %207 = add nsw i32 %200, %conv.i.i.1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %16, i64 %208
  %210 = bitcast float* %209 to <8 x float>*
  %wide.load115 = load <8 x float>, <8 x float>* %210, align 4, !tbaa !12, !llvm.access.group !16
  %211 = fmul <8 x float> %broadcast.splat, %wide.load115
  %212 = bitcast float* %209 to <8 x float>*
  store <8 x float> %211, <8 x float>* %212, align 4, !tbaa !12, !llvm.access.group !16
  %213 = add nsw i32 %200, %conv.i.i.2
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %16, i64 %214
  %216 = bitcast float* %215 to <8 x float>*
  %wide.load116 = load <8 x float>, <8 x float>* %216, align 4, !tbaa !12, !llvm.access.group !16
  %217 = fmul <8 x float> %broadcast.splat, %wide.load116
  %218 = bitcast float* %215 to <8 x float>*
  store <8 x float> %217, <8 x float>* %218, align 4, !tbaa !12, !llvm.access.group !16
  %219 = add nsw i32 %200, %conv.i.i.3
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %16, i64 %220
  %222 = bitcast float* %221 to <8 x float>*
  %wide.load117 = load <8 x float>, <8 x float>* %222, align 4, !tbaa !12, !llvm.access.group !16
  %223 = fmul <8 x float> %broadcast.splat, %wide.load117
  %224 = bitcast float* %221 to <8 x float>*
  store <8 x float> %223, <8 x float>* %224, align 4, !tbaa !12, !llvm.access.group !16
  %225 = add nsw i32 %200, %conv.i.i.4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds float, float* %16, i64 %226
  %228 = bitcast float* %227 to <8 x float>*
  %wide.load118 = load <8 x float>, <8 x float>* %228, align 4, !tbaa !12, !llvm.access.group !16
  %229 = fmul <8 x float> %broadcast.splat, %wide.load118
  %230 = bitcast float* %227 to <8 x float>*
  store <8 x float> %229, <8 x float>* %230, align 4, !tbaa !12, !llvm.access.group !16
  %231 = add nsw i32 %200, %conv.i.i.5
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %16, i64 %232
  %234 = bitcast float* %233 to <8 x float>*
  %wide.load119 = load <8 x float>, <8 x float>* %234, align 4, !tbaa !12, !llvm.access.group !16
  %235 = fmul <8 x float> %broadcast.splat, %wide.load119
  %236 = bitcast float* %233 to <8 x float>*
  store <8 x float> %235, <8 x float>* %236, align 4, !tbaa !12, !llvm.access.group !16
  %237 = add nsw i32 %200, %conv.i.i.6
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %16, i64 %238
  %240 = bitcast float* %239 to <8 x float>*
  %wide.load120 = load <8 x float>, <8 x float>* %240, align 4, !tbaa !12, !llvm.access.group !16
  %241 = fmul <8 x float> %broadcast.splat, %wide.load120
  %242 = bitcast float* %239 to <8 x float>*
  store <8 x float> %241, <8 x float>* %242, align 4, !tbaa !12, !llvm.access.group !16
  %243 = add nsw i32 %200, %conv.i.i.7
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds float, float* %16, i64 %244
  %246 = bitcast float* %245 to <8 x float>*
  %wide.load121 = load <8 x float>, <8 x float>* %246, align 4, !tbaa !12, !llvm.access.group !16
  %247 = fmul <8 x float> %broadcast.splat, %wide.load121
  %248 = bitcast float* %245 to <8 x float>*
  store <8 x float> %247, <8 x float>* %248, align 4, !tbaa !12, !llvm.access.group !16
  %249 = add nsw i32 %200, %conv.i.i.8
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %16, i64 %250
  %252 = bitcast float* %251 to <8 x float>*
  %wide.load122 = load <8 x float>, <8 x float>* %252, align 4, !tbaa !12, !llvm.access.group !16
  %253 = fmul <8 x float> %broadcast.splat, %wide.load122
  %254 = bitcast float* %251 to <8 x float>*
  store <8 x float> %253, <8 x float>* %254, align 4, !tbaa !12, !llvm.access.group !16
  %255 = add nsw i32 %200, %conv.i.i.9
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, float* %16, i64 %256
  %258 = bitcast float* %257 to <8 x float>*
  %wide.load123 = load <8 x float>, <8 x float>* %258, align 4, !tbaa !12, !llvm.access.group !16
  %259 = fmul <8 x float> %broadcast.splat, %wide.load123
  %260 = bitcast float* %257 to <8 x float>*
  store <8 x float> %259, <8 x float>* %260, align 4, !tbaa !12, !llvm.access.group !16
  %261 = add nsw i32 %200, %conv.i.i.10
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %16, i64 %262
  %264 = bitcast float* %263 to <8 x float>*
  %wide.load124 = load <8 x float>, <8 x float>* %264, align 4, !tbaa !12, !llvm.access.group !16
  %265 = fmul <8 x float> %broadcast.splat, %wide.load124
  %266 = bitcast float* %263 to <8 x float>*
  store <8 x float> %265, <8 x float>* %266, align 4, !tbaa !12, !llvm.access.group !16
  %267 = add nsw i32 %200, %conv.i.i.11
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds float, float* %16, i64 %268
  %270 = bitcast float* %269 to <8 x float>*
  %wide.load125 = load <8 x float>, <8 x float>* %270, align 4, !tbaa !12, !llvm.access.group !16
  %271 = fmul <8 x float> %broadcast.splat, %wide.load125
  %272 = bitcast float* %269 to <8 x float>*
  store <8 x float> %271, <8 x float>* %272, align 4, !tbaa !12, !llvm.access.group !16
  %273 = add nsw i32 %200, %conv.i.i.12
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds float, float* %16, i64 %274
  %276 = bitcast float* %275 to <8 x float>*
  %wide.load126 = load <8 x float>, <8 x float>* %276, align 4, !tbaa !12, !llvm.access.group !16
  %277 = fmul <8 x float> %broadcast.splat, %wide.load126
  %278 = bitcast float* %275 to <8 x float>*
  store <8 x float> %277, <8 x float>* %278, align 4, !tbaa !12, !llvm.access.group !16
  %279 = add nsw i32 %200, %conv.i.i.13
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds float, float* %16, i64 %280
  %282 = bitcast float* %281 to <8 x float>*
  %wide.load127 = load <8 x float>, <8 x float>* %282, align 4, !tbaa !12, !llvm.access.group !16
  %283 = fmul <8 x float> %broadcast.splat, %wide.load127
  %284 = bitcast float* %281 to <8 x float>*
  store <8 x float> %283, <8 x float>* %284, align 4, !tbaa !12, !llvm.access.group !16
  %285 = add nsw i32 %200, %conv.i.i.14
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds float, float* %16, i64 %286
  %288 = bitcast float* %287 to <8 x float>*
  %wide.load128 = load <8 x float>, <8 x float>* %288, align 4, !tbaa !12, !llvm.access.group !16
  %289 = fmul <8 x float> %broadcast.splat, %wide.load128
  %290 = bitcast float* %287 to <8 x float>*
  store <8 x float> %289, <8 x float>* %290, align 4, !tbaa !12, !llvm.access.group !16
  %291 = add nsw i32 %200, %conv.i.i.15
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds float, float* %16, i64 %292
  %294 = bitcast float* %293 to <8 x float>*
  %wide.load129 = load <8 x float>, <8 x float>* %294, align 4, !tbaa !12, !llvm.access.group !16
  %295 = fmul <8 x float> %broadcast.splat, %wide.load129
  %296 = bitcast float* %293 to <8 x float>*
  store <8 x float> %295, <8 x float>* %296, align 4, !tbaa !12, !llvm.access.group !16
  %297 = add nsw i32 %200, %conv.i.i.16
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float, float* %16, i64 %298
  %300 = bitcast float* %299 to <8 x float>*
  %wide.load130 = load <8 x float>, <8 x float>* %300, align 4, !tbaa !12, !llvm.access.group !16
  %301 = fmul <8 x float> %broadcast.splat, %wide.load130
  %302 = bitcast float* %299 to <8 x float>*
  store <8 x float> %301, <8 x float>* %302, align 4, !tbaa !12, !llvm.access.group !16
  %303 = add nsw i32 %200, %conv.i.i.17
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds float, float* %16, i64 %304
  %306 = bitcast float* %305 to <8 x float>*
  %wide.load131 = load <8 x float>, <8 x float>* %306, align 4, !tbaa !12, !llvm.access.group !16
  %307 = fmul <8 x float> %broadcast.splat, %wide.load131
  %308 = bitcast float* %305 to <8 x float>*
  store <8 x float> %307, <8 x float>* %308, align 4, !tbaa !12, !llvm.access.group !16
  %309 = add nsw i32 %200, %conv.i.i.18
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds float, float* %16, i64 %310
  %312 = bitcast float* %311 to <8 x float>*
  %wide.load132 = load <8 x float>, <8 x float>* %312, align 4, !tbaa !12, !llvm.access.group !16
  %313 = fmul <8 x float> %broadcast.splat, %wide.load132
  %314 = bitcast float* %311 to <8 x float>*
  store <8 x float> %313, <8 x float>* %314, align 4, !tbaa !12, !llvm.access.group !16
  %315 = add nsw i32 %200, %conv.i.i.19
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds float, float* %16, i64 %316
  %318 = bitcast float* %317 to <8 x float>*
  %wide.load133 = load <8 x float>, <8 x float>* %318, align 4, !tbaa !12, !llvm.access.group !16
  %319 = fmul <8 x float> %broadcast.splat, %wide.load133
  %320 = bitcast float* %317 to <8 x float>*
  store <8 x float> %319, <8 x float>* %320, align 4, !tbaa !12, !llvm.access.group !16
  %321 = add nsw i32 %200, %conv.i.i.20
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds float, float* %16, i64 %322
  %324 = bitcast float* %323 to <8 x float>*
  %wide.load134 = load <8 x float>, <8 x float>* %324, align 4, !tbaa !12, !llvm.access.group !16
  %325 = fmul <8 x float> %broadcast.splat, %wide.load134
  %326 = bitcast float* %323 to <8 x float>*
  store <8 x float> %325, <8 x float>* %326, align 4, !tbaa !12, !llvm.access.group !16
  %327 = add nsw i32 %200, %conv.i.i.21
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds float, float* %16, i64 %328
  %330 = bitcast float* %329 to <8 x float>*
  %wide.load135 = load <8 x float>, <8 x float>* %330, align 4, !tbaa !12, !llvm.access.group !16
  %331 = fmul <8 x float> %broadcast.splat, %wide.load135
  %332 = bitcast float* %329 to <8 x float>*
  store <8 x float> %331, <8 x float>* %332, align 4, !tbaa !12, !llvm.access.group !16
  %333 = add nsw i32 %200, %conv.i.i.22
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds float, float* %16, i64 %334
  %336 = bitcast float* %335 to <8 x float>*
  %wide.load136 = load <8 x float>, <8 x float>* %336, align 4, !tbaa !12, !llvm.access.group !16
  %337 = fmul <8 x float> %broadcast.splat, %wide.load136
  %338 = bitcast float* %335 to <8 x float>*
  store <8 x float> %337, <8 x float>* %338, align 4, !tbaa !12, !llvm.access.group !16
  %339 = add nsw i32 %200, %conv.i.i.23
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds float, float* %16, i64 %340
  %342 = bitcast float* %341 to <8 x float>*
  %wide.load137 = load <8 x float>, <8 x float>* %342, align 4, !tbaa !12, !llvm.access.group !16
  %343 = fmul <8 x float> %broadcast.splat, %wide.load137
  %344 = bitcast float* %341 to <8 x float>*
  store <8 x float> %343, <8 x float>* %344, align 4, !tbaa !12, !llvm.access.group !16
  %345 = add nsw i32 %200, %conv.i.i.24
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds float, float* %16, i64 %346
  %348 = bitcast float* %347 to <8 x float>*
  %wide.load138 = load <8 x float>, <8 x float>* %348, align 4, !tbaa !12, !llvm.access.group !16
  %349 = fmul <8 x float> %broadcast.splat, %wide.load138
  %350 = bitcast float* %347 to <8 x float>*
  store <8 x float> %349, <8 x float>* %350, align 4, !tbaa !12, !llvm.access.group !16
  %351 = add nsw i32 %200, %conv.i.i.25
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds float, float* %16, i64 %352
  %354 = bitcast float* %353 to <8 x float>*
  %wide.load139 = load <8 x float>, <8 x float>* %354, align 4, !tbaa !12, !llvm.access.group !16
  %355 = fmul <8 x float> %broadcast.splat, %wide.load139
  %356 = bitcast float* %353 to <8 x float>*
  store <8 x float> %355, <8 x float>* %356, align 4, !tbaa !12, !llvm.access.group !16
  %357 = add nsw i32 %200, %conv.i.i.26
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds float, float* %16, i64 %358
  %360 = bitcast float* %359 to <8 x float>*
  %wide.load140 = load <8 x float>, <8 x float>* %360, align 4, !tbaa !12, !llvm.access.group !16
  %361 = fmul <8 x float> %broadcast.splat, %wide.load140
  %362 = bitcast float* %359 to <8 x float>*
  store <8 x float> %361, <8 x float>* %362, align 4, !tbaa !12, !llvm.access.group !16
  %363 = add nsw i32 %200, %conv.i.i.27
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds float, float* %16, i64 %364
  %366 = bitcast float* %365 to <8 x float>*
  %wide.load141 = load <8 x float>, <8 x float>* %366, align 4, !tbaa !12, !llvm.access.group !16
  %367 = fmul <8 x float> %broadcast.splat, %wide.load141
  %368 = bitcast float* %365 to <8 x float>*
  store <8 x float> %367, <8 x float>* %368, align 4, !tbaa !12, !llvm.access.group !16
  %369 = add nsw i32 %200, %conv.i.i.28
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds float, float* %16, i64 %370
  %372 = bitcast float* %371 to <8 x float>*
  %wide.load142 = load <8 x float>, <8 x float>* %372, align 4, !tbaa !12, !llvm.access.group !16
  %373 = fmul <8 x float> %broadcast.splat, %wide.load142
  %374 = bitcast float* %371 to <8 x float>*
  store <8 x float> %373, <8 x float>* %374, align 4, !tbaa !12, !llvm.access.group !16
  %375 = add nsw i32 %200, %conv.i.i.29
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds float, float* %16, i64 %376
  %378 = bitcast float* %377 to <8 x float>*
  %wide.load143 = load <8 x float>, <8 x float>* %378, align 4, !tbaa !12, !llvm.access.group !16
  %379 = fmul <8 x float> %broadcast.splat, %wide.load143
  %380 = bitcast float* %377 to <8 x float>*
  store <8 x float> %379, <8 x float>* %380, align 4, !tbaa !12, !llvm.access.group !16
  %381 = add nsw i32 %200, %conv.i.i.30
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds float, float* %16, i64 %382
  %384 = bitcast float* %383 to <8 x float>*
  %wide.load144 = load <8 x float>, <8 x float>* %384, align 4, !tbaa !12, !llvm.access.group !16
  %385 = fmul <8 x float> %broadcast.splat, %wide.load144
  %386 = bitcast float* %383 to <8 x float>*
  store <8 x float> %385, <8 x float>* %386, align 4, !tbaa !12, !llvm.access.group !16
  %387 = add nsw i32 %200, %conv.i.i.31
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds float, float* %16, i64 %388
  %390 = bitcast float* %389 to <8 x float>*
  %wide.load145 = load <8 x float>, <8 x float>* %390, align 4, !tbaa !12, !llvm.access.group !16
  %391 = fmul <8 x float> %broadcast.splat, %wide.load145
  %392 = bitcast float* %389 to <8 x float>*
  store <8 x float> %391, <8 x float>* %392, align 4, !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_gemm.exit

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %mul.i.i.us = mul nsw i32 %28, %conv2.i.i.us
  %mul5.i.i.us = mul nsw i32 %32, %conv2.i.i.us
  %393 = sext i32 %mul5.i.i.us to i64
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_entry.entry.i.i.us.us:                ; preds = %for.end.r_exit.i.i.loopexit.us.us.1165, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.i.us.preheader ], [ %600, %for.end.r_exit.i.i.loopexit.us.us.1165 ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us
  %394 = load float, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us = fmul float %24, %394
  store float %mul3.i.i.us.us, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %395 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

for.end.r_exit.i.i.loopexit.us.us:                ; preds = %for.body.i.i.us.us
  %396 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.1150 = add nuw nsw i64 %396, %mul.i.i.i
  %conv.i.i.us.us.1151 = trunc i64 %add1.i.i.i.us.us.1150 to i32
  %add.i.i.us.us.1152 = add nsw i32 %mul.i.i.us, %conv.i.i.us.us.1151
  %idxprom.i.i.us.us.1153 = sext i32 %add.i.i.us.us.1152 to i64
  %arrayidx.i.i.us.us.1154 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.1153
  %397 = load float, float* %arrayidx.i.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1155 = fmul float %24, %397
  store float %mul3.i.i.us.us.1155, float* %arrayidx.i.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1156 = shl i64 %add1.i.i.i.us.us.1150, 32
  %398 = ashr exact i64 %sext.i.i.us.us.1156, 32
  br label %for.body.i.i.us.us.1164

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %pregion_for_entry.entry.i.i.us.us
  %indvars.iv.next.i.i2.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us ]
  %399 = phi float [ %405, %for.body.i.i.us.us ], [ %mul3.i.i.us.us, %pregion_for_entry.entry.i.i.us.us ]
  %400 = add nsw i64 %indvars.iv.next.i.i2.us.us, %393
  %arrayidx8.i.i.us.us = getelementptr inbounds float, float* %8, i64 %400
  %401 = load float, float* %arrayidx8.i.i.us.us, align 4, !tbaa !12
  %mul9.i.i.us.us = fmul float %20, %401
  %402 = mul nsw i64 %indvars.iv.next.i.i2.us.us, %33
  %403 = add nsw i64 %402, %395
  %arrayidx13.i.i.us.us = getelementptr inbounds float, float* %12, i64 %403
  %404 = load float, float* %arrayidx13.i.i.us.us, align 4, !tbaa !12
  %405 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us, float %404, float %399) #2
  store float %405, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i2.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %for.end.r_exit.i.i.loopexit.us.us, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us:               ; preds = %for.end.r_exit.i.i.loopexit.us.us.1165
  %406 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %406, 1
  %mul.i.i.us.1 = mul nsw i32 %28, %conv2.i.i.us.1
  %mul5.i.i.us.1 = mul nsw i32 %32, %conv2.i.i.us.1
  %407 = sext i32 %mul5.i.i.us.1 to i64
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader166
  %_local_id_y.i.0 = phi i64 [ %440, %pregion_for_entry.pregion_for_init.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader166 ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %mul.i.i = mul nsw i32 %28, %conv2.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %16, i64 %idxprom.i.i
  %408 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i = fmul float %24, %408
  store float %mul3.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.1
  %409 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.1 = fmul float %24, %409
  store float %mul3.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.2 = add nsw i32 %mul.i.i, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.2
  %410 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.2 = fmul float %24, %410
  store float %mul3.i.i.2, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.3 = add nsw i32 %mul.i.i, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.3
  %411 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.3 = fmul float %24, %411
  store float %mul3.i.i.3, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.4 = add nsw i32 %mul.i.i, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.4
  %412 = load float, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.4 = fmul float %24, %412
  store float %mul3.i.i.4, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.5 = add nsw i32 %mul.i.i, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.5
  %413 = load float, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.5 = fmul float %24, %413
  store float %mul3.i.i.5, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.6 = add nsw i32 %mul.i.i, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.6
  %414 = load float, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.6 = fmul float %24, %414
  store float %mul3.i.i.6, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.7 = add nsw i32 %mul.i.i, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.7
  %415 = load float, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.7 = fmul float %24, %415
  store float %mul3.i.i.7, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.8 = add nsw i32 %mul.i.i, %conv.i.i.8
  %idxprom.i.i.8 = sext i32 %add.i.i.8 to i64
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.8
  %416 = load float, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.8 = fmul float %24, %416
  store float %mul3.i.i.8, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.9 = add nsw i32 %mul.i.i, %conv.i.i.9
  %idxprom.i.i.9 = sext i32 %add.i.i.9 to i64
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.9
  %417 = load float, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.9 = fmul float %24, %417
  store float %mul3.i.i.9, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.10 = add nsw i32 %mul.i.i, %conv.i.i.10
  %idxprom.i.i.10 = sext i32 %add.i.i.10 to i64
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.10
  %418 = load float, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.10 = fmul float %24, %418
  store float %mul3.i.i.10, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.11 = add nsw i32 %mul.i.i, %conv.i.i.11
  %idxprom.i.i.11 = sext i32 %add.i.i.11 to i64
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.11
  %419 = load float, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.11 = fmul float %24, %419
  store float %mul3.i.i.11, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.12 = add nsw i32 %mul.i.i, %conv.i.i.12
  %idxprom.i.i.12 = sext i32 %add.i.i.12 to i64
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.12
  %420 = load float, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.12 = fmul float %24, %420
  store float %mul3.i.i.12, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.13 = add nsw i32 %mul.i.i, %conv.i.i.13
  %idxprom.i.i.13 = sext i32 %add.i.i.13 to i64
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.13
  %421 = load float, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.13 = fmul float %24, %421
  store float %mul3.i.i.13, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.14 = add nsw i32 %mul.i.i, %conv.i.i.14
  %idxprom.i.i.14 = sext i32 %add.i.i.14 to i64
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.14
  %422 = load float, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.14 = fmul float %24, %422
  store float %mul3.i.i.14, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.15 = add nsw i32 %mul.i.i, %conv.i.i.15
  %idxprom.i.i.15 = sext i32 %add.i.i.15 to i64
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.15
  %423 = load float, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.15 = fmul float %24, %423
  store float %mul3.i.i.15, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.16 = add nsw i32 %mul.i.i, %conv.i.i.16
  %idxprom.i.i.16 = sext i32 %add.i.i.16 to i64
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.16
  %424 = load float, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.16 = fmul float %24, %424
  store float %mul3.i.i.16, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.17 = add nsw i32 %mul.i.i, %conv.i.i.17
  %idxprom.i.i.17 = sext i32 %add.i.i.17 to i64
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.17
  %425 = load float, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.17 = fmul float %24, %425
  store float %mul3.i.i.17, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.18 = add nsw i32 %mul.i.i, %conv.i.i.18
  %idxprom.i.i.18 = sext i32 %add.i.i.18 to i64
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.18
  %426 = load float, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.18 = fmul float %24, %426
  store float %mul3.i.i.18, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.19 = add nsw i32 %mul.i.i, %conv.i.i.19
  %idxprom.i.i.19 = sext i32 %add.i.i.19 to i64
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.19
  %427 = load float, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.19 = fmul float %24, %427
  store float %mul3.i.i.19, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.20 = add nsw i32 %mul.i.i, %conv.i.i.20
  %idxprom.i.i.20 = sext i32 %add.i.i.20 to i64
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.20
  %428 = load float, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.20 = fmul float %24, %428
  store float %mul3.i.i.20, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.21 = add nsw i32 %mul.i.i, %conv.i.i.21
  %idxprom.i.i.21 = sext i32 %add.i.i.21 to i64
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.21
  %429 = load float, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.21 = fmul float %24, %429
  store float %mul3.i.i.21, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.22 = add nsw i32 %mul.i.i, %conv.i.i.22
  %idxprom.i.i.22 = sext i32 %add.i.i.22 to i64
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.22
  %430 = load float, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.22 = fmul float %24, %430
  store float %mul3.i.i.22, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.23 = add nsw i32 %mul.i.i, %conv.i.i.23
  %idxprom.i.i.23 = sext i32 %add.i.i.23 to i64
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.23
  %431 = load float, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.23 = fmul float %24, %431
  store float %mul3.i.i.23, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.24 = add nsw i32 %mul.i.i, %conv.i.i.24
  %idxprom.i.i.24 = sext i32 %add.i.i.24 to i64
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.24
  %432 = load float, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.24 = fmul float %24, %432
  store float %mul3.i.i.24, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.25 = add nsw i32 %mul.i.i, %conv.i.i.25
  %idxprom.i.i.25 = sext i32 %add.i.i.25 to i64
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.25
  %433 = load float, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.25 = fmul float %24, %433
  store float %mul3.i.i.25, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.26 = add nsw i32 %mul.i.i, %conv.i.i.26
  %idxprom.i.i.26 = sext i32 %add.i.i.26 to i64
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.26
  %434 = load float, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.26 = fmul float %24, %434
  store float %mul3.i.i.26, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.27 = add nsw i32 %mul.i.i, %conv.i.i.27
  %idxprom.i.i.27 = sext i32 %add.i.i.27 to i64
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.27
  %435 = load float, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.27 = fmul float %24, %435
  store float %mul3.i.i.27, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.28 = add nsw i32 %mul.i.i, %conv.i.i.28
  %idxprom.i.i.28 = sext i32 %add.i.i.28 to i64
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.28
  %436 = load float, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.28 = fmul float %24, %436
  store float %mul3.i.i.28, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.29 = add nsw i32 %mul.i.i, %conv.i.i.29
  %idxprom.i.i.29 = sext i32 %add.i.i.29 to i64
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.29
  %437 = load float, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.29 = fmul float %24, %437
  store float %mul3.i.i.29, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.30 = add nsw i32 %mul.i.i, %conv.i.i.30
  %idxprom.i.i.30 = sext i32 %add.i.i.30 to i64
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.30
  %438 = load float, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.30 = fmul float %24, %438
  store float %mul3.i.i.30, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.31 = add nsw i32 %mul.i.i, %conv.i.i.31
  %idxprom.i.i.31 = sext i32 %add.i.i.31 to i64
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.31
  %439 = load float, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.31 = fmul float %24, %439
  store float %mul3.i.i.31, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %440 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond31.not = icmp eq i64 %440, 8
  br i1 %exitcond31.not, label %_pocl_kernel_gemm.exit.loopexit167, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !26

_pocl_kernel_gemm.exit.loopexit:                  ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1
  br label %_pocl_kernel_gemm.exit

_pocl_kernel_gemm.exit.loopexit167:               ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %_pocl_kernel_gemm.exit

_pocl_kernel_gemm.exit:                           ; preds = %_pocl_kernel_gemm.exit.loopexit167, %_pocl_kernel_gemm.exit.loopexit, %vector.ph
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1, %pregion_for_end.i.i.us-lcssa.us.us
  %_local_id_x.i.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us ], [ %592, %for.end.r_exit.i.i.loopexit.us.us.1.1 ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.1
  %441 = load float, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1 = fmul float %24, %441
  store float %mul3.i.i.us.us.1, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %442 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1
  %indvars.iv.next.i.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1 ]
  %443 = phi float [ %449, %for.body.i.i.us.us.1 ], [ %mul3.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1 ]
  %444 = add nsw i64 %indvars.iv.next.i.i2.us.us.1, %407
  %arrayidx8.i.i.us.us.1 = getelementptr inbounds float, float* %8, i64 %444
  %445 = load float, float* %arrayidx8.i.i.us.us.1, align 4, !tbaa !12
  %mul9.i.i.us.us.1 = fmul float %20, %445
  %446 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1, %33
  %447 = add nsw i64 %446, %442
  %arrayidx13.i.i.us.us.1 = getelementptr inbounds float, float* %12, i64 %447
  %448 = load float, float* %arrayidx13.i.i.us.us.1, align 4, !tbaa !12
  %449 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.1, float %448, float %443) #2
  store float %449, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %for.end.r_exit.i.i.loopexit.us.us.1, label %for.body.i.i.us.us.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1:              ; preds = %for.body.i.i.us.us.1
  %450 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %450, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %add.i.i.us.us.1.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.1.1
  %451 = load float, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1.1 = fmul float %24, %451
  store float %mul3.i.i.us.us.1.1, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1.1 = shl i64 %add1.i.i.i.us.us.1.1, 32
  %452 = ashr exact i64 %sext.i.i.us.us.1.1, 32
  br label %for.body.i.i.us.us.1.1

pregion_for_end.i.i.us-lcssa.us.us.1:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1
  %453 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %453, 2
  %mul.i.i.us.2 = mul nsw i32 %28, %conv2.i.i.us.2
  %mul5.i.i.us.2 = mul nsw i32 %32, %conv2.i.i.us.2
  %454 = sext i32 %mul5.i.i.us.2 to i64
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1, %pregion_for_end.i.i.us-lcssa.us.us.1
  %_local_id_x.i.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.1 ], [ %584, %for.end.r_exit.i.i.loopexit.us.us.2.1 ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.2
  %455 = load float, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.2 = fmul float %24, %455
  store float %mul3.i.i.us.us.2, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %456 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2
  %indvars.iv.next.i.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2 ]
  %457 = phi float [ %463, %for.body.i.i.us.us.2 ], [ %mul3.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2 ]
  %458 = add nsw i64 %indvars.iv.next.i.i2.us.us.2, %454
  %arrayidx8.i.i.us.us.2 = getelementptr inbounds float, float* %8, i64 %458
  %459 = load float, float* %arrayidx8.i.i.us.us.2, align 4, !tbaa !12
  %mul9.i.i.us.us.2 = fmul float %20, %459
  %460 = mul nsw i64 %indvars.iv.next.i.i2.us.us.2, %33
  %461 = add nsw i64 %460, %456
  %arrayidx13.i.i.us.us.2 = getelementptr inbounds float, float* %12, i64 %461
  %462 = load float, float* %arrayidx13.i.i.us.us.2, align 4, !tbaa !12
  %463 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.2, float %462, float %457) #2
  store float %463, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %for.end.r_exit.i.i.loopexit.us.us.2, label %for.body.i.i.us.us.2, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2:              ; preds = %for.body.i.i.us.us.2
  %464 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %464, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %add.i.i.us.us.2.1 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.2.1
  %465 = load float, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.2.1 = fmul float %24, %465
  store float %mul3.i.i.us.us.2.1, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2.1 = shl i64 %add1.i.i.i.us.us.2.1, 32
  %466 = ashr exact i64 %sext.i.i.us.us.2.1, 32
  br label %for.body.i.i.us.us.2.1

pregion_for_end.i.i.us-lcssa.us.us.2:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1
  %467 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %467, 3
  %mul.i.i.us.3 = mul nsw i32 %28, %conv2.i.i.us.3
  %mul5.i.i.us.3 = mul nsw i32 %32, %conv2.i.i.us.3
  %468 = sext i32 %mul5.i.i.us.3 to i64
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1, %pregion_for_end.i.i.us-lcssa.us.us.2
  %_local_id_x.i.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.2 ], [ %576, %for.end.r_exit.i.i.loopexit.us.us.3.1 ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.3
  %469 = load float, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.3 = fmul float %24, %469
  store float %mul3.i.i.us.us.3, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %470 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3
  %indvars.iv.next.i.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3 ]
  %471 = phi float [ %477, %for.body.i.i.us.us.3 ], [ %mul3.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3 ]
  %472 = add nsw i64 %indvars.iv.next.i.i2.us.us.3, %468
  %arrayidx8.i.i.us.us.3 = getelementptr inbounds float, float* %8, i64 %472
  %473 = load float, float* %arrayidx8.i.i.us.us.3, align 4, !tbaa !12
  %mul9.i.i.us.us.3 = fmul float %20, %473
  %474 = mul nsw i64 %indvars.iv.next.i.i2.us.us.3, %33
  %475 = add nsw i64 %474, %470
  %arrayidx13.i.i.us.us.3 = getelementptr inbounds float, float* %12, i64 %475
  %476 = load float, float* %arrayidx13.i.i.us.us.3, align 4, !tbaa !12
  %477 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.3, float %476, float %471) #2
  store float %477, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %for.end.r_exit.i.i.loopexit.us.us.3, label %for.body.i.i.us.us.3, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3:              ; preds = %for.body.i.i.us.us.3
  %478 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %478, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %add.i.i.us.us.3.1 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.3.1
  %479 = load float, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.3.1 = fmul float %24, %479
  store float %mul3.i.i.us.us.3.1, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3.1 = shl i64 %add1.i.i.i.us.us.3.1, 32
  %480 = ashr exact i64 %sext.i.i.us.us.3.1, 32
  br label %for.body.i.i.us.us.3.1

pregion_for_end.i.i.us-lcssa.us.us.3:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1
  %481 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %481, 4
  %mul.i.i.us.4 = mul nsw i32 %28, %conv2.i.i.us.4
  %mul5.i.i.us.4 = mul nsw i32 %32, %conv2.i.i.us.4
  %482 = sext i32 %mul5.i.i.us.4 to i64
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1, %pregion_for_end.i.i.us-lcssa.us.us.3
  %_local_id_x.i.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.3 ], [ %568, %for.end.r_exit.i.i.loopexit.us.us.4.1 ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.4
  %483 = load float, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.4 = fmul float %24, %483
  store float %mul3.i.i.us.us.4, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %484 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4
  %indvars.iv.next.i.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4 ]
  %485 = phi float [ %491, %for.body.i.i.us.us.4 ], [ %mul3.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4 ]
  %486 = add nsw i64 %indvars.iv.next.i.i2.us.us.4, %482
  %arrayidx8.i.i.us.us.4 = getelementptr inbounds float, float* %8, i64 %486
  %487 = load float, float* %arrayidx8.i.i.us.us.4, align 4, !tbaa !12
  %mul9.i.i.us.us.4 = fmul float %20, %487
  %488 = mul nsw i64 %indvars.iv.next.i.i2.us.us.4, %33
  %489 = add nsw i64 %488, %484
  %arrayidx13.i.i.us.us.4 = getelementptr inbounds float, float* %12, i64 %489
  %490 = load float, float* %arrayidx13.i.i.us.us.4, align 4, !tbaa !12
  %491 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.4, float %490, float %485) #2
  store float %491, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %for.end.r_exit.i.i.loopexit.us.us.4, label %for.body.i.i.us.us.4, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4:              ; preds = %for.body.i.i.us.us.4
  %492 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %492, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %add.i.i.us.us.4.1 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.4.1
  %493 = load float, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.4.1 = fmul float %24, %493
  store float %mul3.i.i.us.us.4.1, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4.1 = shl i64 %add1.i.i.i.us.us.4.1, 32
  %494 = ashr exact i64 %sext.i.i.us.us.4.1, 32
  br label %for.body.i.i.us.us.4.1

pregion_for_end.i.i.us-lcssa.us.us.4:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1
  %495 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %495, 5
  %mul.i.i.us.5 = mul nsw i32 %28, %conv2.i.i.us.5
  %mul5.i.i.us.5 = mul nsw i32 %32, %conv2.i.i.us.5
  %496 = sext i32 %mul5.i.i.us.5 to i64
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1, %pregion_for_end.i.i.us-lcssa.us.us.4
  %_local_id_x.i.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.4 ], [ %560, %for.end.r_exit.i.i.loopexit.us.us.5.1 ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.5
  %497 = load float, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.5 = fmul float %24, %497
  store float %mul3.i.i.us.us.5, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %498 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5
  %indvars.iv.next.i.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5 ]
  %499 = phi float [ %505, %for.body.i.i.us.us.5 ], [ %mul3.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5 ]
  %500 = add nsw i64 %indvars.iv.next.i.i2.us.us.5, %496
  %arrayidx8.i.i.us.us.5 = getelementptr inbounds float, float* %8, i64 %500
  %501 = load float, float* %arrayidx8.i.i.us.us.5, align 4, !tbaa !12
  %mul9.i.i.us.us.5 = fmul float %20, %501
  %502 = mul nsw i64 %indvars.iv.next.i.i2.us.us.5, %33
  %503 = add nsw i64 %502, %498
  %arrayidx13.i.i.us.us.5 = getelementptr inbounds float, float* %12, i64 %503
  %504 = load float, float* %arrayidx13.i.i.us.us.5, align 4, !tbaa !12
  %505 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.5, float %504, float %499) #2
  store float %505, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %for.end.r_exit.i.i.loopexit.us.us.5, label %for.body.i.i.us.us.5, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5:              ; preds = %for.body.i.i.us.us.5
  %506 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %506, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %add.i.i.us.us.5.1 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.5.1
  %507 = load float, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.5.1 = fmul float %24, %507
  store float %mul3.i.i.us.us.5.1, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5.1 = shl i64 %add1.i.i.i.us.us.5.1, 32
  %508 = ashr exact i64 %sext.i.i.us.us.5.1, 32
  br label %for.body.i.i.us.us.5.1

pregion_for_end.i.i.us-lcssa.us.us.5:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1
  %509 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %509, 6
  %mul.i.i.us.6 = mul nsw i32 %28, %conv2.i.i.us.6
  %mul5.i.i.us.6 = mul nsw i32 %32, %conv2.i.i.us.6
  %510 = sext i32 %mul5.i.i.us.6 to i64
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1, %pregion_for_end.i.i.us-lcssa.us.us.5
  %_local_id_x.i.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.5 ], [ %552, %for.end.r_exit.i.i.loopexit.us.us.6.1 ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.6
  %511 = load float, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.6 = fmul float %24, %511
  store float %mul3.i.i.us.us.6, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %512 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6
  %indvars.iv.next.i.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6 ]
  %513 = phi float [ %519, %for.body.i.i.us.us.6 ], [ %mul3.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6 ]
  %514 = add nsw i64 %indvars.iv.next.i.i2.us.us.6, %510
  %arrayidx8.i.i.us.us.6 = getelementptr inbounds float, float* %8, i64 %514
  %515 = load float, float* %arrayidx8.i.i.us.us.6, align 4, !tbaa !12
  %mul9.i.i.us.us.6 = fmul float %20, %515
  %516 = mul nsw i64 %indvars.iv.next.i.i2.us.us.6, %33
  %517 = add nsw i64 %516, %512
  %arrayidx13.i.i.us.us.6 = getelementptr inbounds float, float* %12, i64 %517
  %518 = load float, float* %arrayidx13.i.i.us.us.6, align 4, !tbaa !12
  %519 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.6, float %518, float %513) #2
  store float %519, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %for.end.r_exit.i.i.loopexit.us.us.6, label %for.body.i.i.us.us.6, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6:              ; preds = %for.body.i.i.us.us.6
  %520 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %520, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %add.i.i.us.us.6.1 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.6.1
  %521 = load float, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.6.1 = fmul float %24, %521
  store float %mul3.i.i.us.us.6.1, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6.1 = shl i64 %add1.i.i.i.us.us.6.1, 32
  %522 = ashr exact i64 %sext.i.i.us.us.6.1, 32
  br label %for.body.i.i.us.us.6.1

pregion_for_end.i.i.us-lcssa.us.us.6:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1
  %523 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %523, 7
  %mul.i.i.us.7 = mul nsw i32 %28, %conv2.i.i.us.7
  %mul5.i.i.us.7 = mul nsw i32 %32, %conv2.i.i.us.7
  %524 = sext i32 %mul5.i.i.us.7 to i64
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1, %pregion_for_end.i.i.us-lcssa.us.us.6
  %_local_id_x.i.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.6 ], [ %544, %for.end.r_exit.i.i.loopexit.us.us.7.1 ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.7
  %525 = load float, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.7 = fmul float %24, %525
  store float %mul3.i.i.us.us.7, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %526 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7
  %indvars.iv.next.i.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7 ]
  %527 = phi float [ %533, %for.body.i.i.us.us.7 ], [ %mul3.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7 ]
  %528 = add nsw i64 %indvars.iv.next.i.i2.us.us.7, %524
  %arrayidx8.i.i.us.us.7 = getelementptr inbounds float, float* %8, i64 %528
  %529 = load float, float* %arrayidx8.i.i.us.us.7, align 4, !tbaa !12
  %mul9.i.i.us.us.7 = fmul float %20, %529
  %530 = mul nsw i64 %indvars.iv.next.i.i2.us.us.7, %33
  %531 = add nsw i64 %530, %526
  %arrayidx13.i.i.us.us.7 = getelementptr inbounds float, float* %12, i64 %531
  %532 = load float, float* %arrayidx13.i.i.us.us.7, align 4, !tbaa !12
  %533 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.7, float %532, float %527) #2
  store float %533, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %for.end.r_exit.i.i.loopexit.us.us.7, label %for.body.i.i.us.us.7, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7:              ; preds = %for.body.i.i.us.us.7
  %534 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %534, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %add.i.i.us.us.7.1 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.7.1
  %535 = load float, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.7.1 = fmul float %24, %535
  store float %mul3.i.i.us.us.7.1, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7.1 = shl i64 %add1.i.i.i.us.us.7.1, 32
  %536 = ashr exact i64 %sext.i.i.us.us.7.1, 32
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %for.end.r_exit.i.i.loopexit.us.us.7
  %indvars.iv.next.i.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %537 = phi float [ %543, %for.body.i.i.us.us.7.1 ], [ %mul3.i.i.us.us.7.1, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %538 = add nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %524
  %arrayidx8.i.i.us.us.7.1 = getelementptr inbounds float, float* %8, i64 %538
  %539 = load float, float* %arrayidx8.i.i.us.us.7.1, align 4, !tbaa !12
  %mul9.i.i.us.us.7.1 = fmul float %20, %539
  %540 = mul nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %33
  %541 = add nsw i64 %540, %536
  %arrayidx13.i.i.us.us.7.1 = getelementptr inbounds float, float* %12, i64 %541
  %542 = load float, float* %arrayidx13.i.i.us.us.7.1, align 4, !tbaa !12
  %543 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.7.1, float %542, float %537) #2
  store float %543, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7.1, label %for.end.r_exit.i.i.loopexit.us.us.7.1, label %for.body.i.i.us.us.7.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7.1:            ; preds = %for.body.i.i.us.us.7.1
  %544 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %544, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_gemm.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !24

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %for.end.r_exit.i.i.loopexit.us.us.6
  %indvars.iv.next.i.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %545 = phi float [ %551, %for.body.i.i.us.us.6.1 ], [ %mul3.i.i.us.us.6.1, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %546 = add nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %510
  %arrayidx8.i.i.us.us.6.1 = getelementptr inbounds float, float* %8, i64 %546
  %547 = load float, float* %arrayidx8.i.i.us.us.6.1, align 4, !tbaa !12
  %mul9.i.i.us.us.6.1 = fmul float %20, %547
  %548 = mul nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %33
  %549 = add nsw i64 %548, %522
  %arrayidx13.i.i.us.us.6.1 = getelementptr inbounds float, float* %12, i64 %549
  %550 = load float, float* %arrayidx13.i.i.us.us.6.1, align 4, !tbaa !12
  %551 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.6.1, float %550, float %545) #2
  store float %551, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6.1, label %for.end.r_exit.i.i.loopexit.us.us.6.1, label %for.body.i.i.us.us.6.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6.1:            ; preds = %for.body.i.i.us.us.6.1
  %552 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %552, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !24

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %for.end.r_exit.i.i.loopexit.us.us.5
  %indvars.iv.next.i.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %553 = phi float [ %559, %for.body.i.i.us.us.5.1 ], [ %mul3.i.i.us.us.5.1, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %554 = add nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %496
  %arrayidx8.i.i.us.us.5.1 = getelementptr inbounds float, float* %8, i64 %554
  %555 = load float, float* %arrayidx8.i.i.us.us.5.1, align 4, !tbaa !12
  %mul9.i.i.us.us.5.1 = fmul float %20, %555
  %556 = mul nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %33
  %557 = add nsw i64 %556, %508
  %arrayidx13.i.i.us.us.5.1 = getelementptr inbounds float, float* %12, i64 %557
  %558 = load float, float* %arrayidx13.i.i.us.us.5.1, align 4, !tbaa !12
  %559 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.5.1, float %558, float %553) #2
  store float %559, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5.1, label %for.end.r_exit.i.i.loopexit.us.us.5.1, label %for.body.i.i.us.us.5.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5.1:            ; preds = %for.body.i.i.us.us.5.1
  %560 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %560, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !24

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %for.end.r_exit.i.i.loopexit.us.us.4
  %indvars.iv.next.i.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %561 = phi float [ %567, %for.body.i.i.us.us.4.1 ], [ %mul3.i.i.us.us.4.1, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %562 = add nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %482
  %arrayidx8.i.i.us.us.4.1 = getelementptr inbounds float, float* %8, i64 %562
  %563 = load float, float* %arrayidx8.i.i.us.us.4.1, align 4, !tbaa !12
  %mul9.i.i.us.us.4.1 = fmul float %20, %563
  %564 = mul nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %33
  %565 = add nsw i64 %564, %494
  %arrayidx13.i.i.us.us.4.1 = getelementptr inbounds float, float* %12, i64 %565
  %566 = load float, float* %arrayidx13.i.i.us.us.4.1, align 4, !tbaa !12
  %567 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.4.1, float %566, float %561) #2
  store float %567, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4.1, label %for.end.r_exit.i.i.loopexit.us.us.4.1, label %for.body.i.i.us.us.4.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4.1:            ; preds = %for.body.i.i.us.us.4.1
  %568 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %568, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !24

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %for.end.r_exit.i.i.loopexit.us.us.3
  %indvars.iv.next.i.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %569 = phi float [ %575, %for.body.i.i.us.us.3.1 ], [ %mul3.i.i.us.us.3.1, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %570 = add nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %468
  %arrayidx8.i.i.us.us.3.1 = getelementptr inbounds float, float* %8, i64 %570
  %571 = load float, float* %arrayidx8.i.i.us.us.3.1, align 4, !tbaa !12
  %mul9.i.i.us.us.3.1 = fmul float %20, %571
  %572 = mul nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %33
  %573 = add nsw i64 %572, %480
  %arrayidx13.i.i.us.us.3.1 = getelementptr inbounds float, float* %12, i64 %573
  %574 = load float, float* %arrayidx13.i.i.us.us.3.1, align 4, !tbaa !12
  %575 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.3.1, float %574, float %569) #2
  store float %575, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3.1, label %for.end.r_exit.i.i.loopexit.us.us.3.1, label %for.body.i.i.us.us.3.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3.1:            ; preds = %for.body.i.i.us.us.3.1
  %576 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %576, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !24

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %for.end.r_exit.i.i.loopexit.us.us.2
  %indvars.iv.next.i.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %577 = phi float [ %583, %for.body.i.i.us.us.2.1 ], [ %mul3.i.i.us.us.2.1, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %578 = add nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %454
  %arrayidx8.i.i.us.us.2.1 = getelementptr inbounds float, float* %8, i64 %578
  %579 = load float, float* %arrayidx8.i.i.us.us.2.1, align 4, !tbaa !12
  %mul9.i.i.us.us.2.1 = fmul float %20, %579
  %580 = mul nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %33
  %581 = add nsw i64 %580, %466
  %arrayidx13.i.i.us.us.2.1 = getelementptr inbounds float, float* %12, i64 %581
  %582 = load float, float* %arrayidx13.i.i.us.us.2.1, align 4, !tbaa !12
  %583 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.2.1, float %582, float %577) #2
  store float %583, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2.1, label %for.end.r_exit.i.i.loopexit.us.us.2.1, label %for.body.i.i.us.us.2.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2.1:            ; preds = %for.body.i.i.us.us.2.1
  %584 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %584, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !24

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %for.end.r_exit.i.i.loopexit.us.us.1
  %indvars.iv.next.i.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %585 = phi float [ %591, %for.body.i.i.us.us.1.1 ], [ %mul3.i.i.us.us.1.1, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %586 = add nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %407
  %arrayidx8.i.i.us.us.1.1 = getelementptr inbounds float, float* %8, i64 %586
  %587 = load float, float* %arrayidx8.i.i.us.us.1.1, align 4, !tbaa !12
  %mul9.i.i.us.us.1.1 = fmul float %20, %587
  %588 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %33
  %589 = add nsw i64 %588, %452
  %arrayidx13.i.i.us.us.1.1 = getelementptr inbounds float, float* %12, i64 %589
  %590 = load float, float* %arrayidx13.i.i.us.us.1.1, align 4, !tbaa !12
  %591 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.1.1, float %590, float %585) #2
  store float %591, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1.1, label %for.end.r_exit.i.i.loopexit.us.us.1.1, label %for.body.i.i.us.us.1.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1.1:            ; preds = %for.body.i.i.us.us.1.1
  %592 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %592, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !24

for.body.i.i.us.us.1164:                          ; preds = %for.body.i.i.us.us.1164, %for.end.r_exit.i.i.loopexit.us.us
  %indvars.iv.next.i.i2.us.us.1158 = phi i64 [ %indvars.iv.next.i.i.us.us.1162, %for.body.i.i.us.us.1164 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us ]
  %593 = phi float [ %599, %for.body.i.i.us.us.1164 ], [ %mul3.i.i.us.us.1155, %for.end.r_exit.i.i.loopexit.us.us ]
  %594 = add nsw i64 %indvars.iv.next.i.i2.us.us.1158, %393
  %arrayidx8.i.i.us.us.1159 = getelementptr inbounds float, float* %8, i64 %594
  %595 = load float, float* %arrayidx8.i.i.us.us.1159, align 4, !tbaa !12
  %mul9.i.i.us.us.1160 = fmul float %20, %595
  %596 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1158, %33
  %597 = add nsw i64 %596, %398
  %arrayidx13.i.i.us.us.1161 = getelementptr inbounds float, float* %12, i64 %597
  %598 = load float, float* %arrayidx13.i.i.us.us.1161, align 4, !tbaa !12
  %599 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.1160, float %598, float %593) #2
  store float %599, float* %arrayidx.i.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1162 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1158, 1
  %exitcond.not.i.i.us.us.1163 = icmp eq i64 %indvars.iv.next.i.i.us.us.1162, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1163, label %for.end.r_exit.i.i.loopexit.us.us.1165, label %for.body.i.i.us.us.1164, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1165:           ; preds = %for.body.i.i.us.us.1164
  %600 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %600, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !24
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
  %22 = getelementptr i8*, i8** %0, i64 6
  %23 = bitcast i8** %22 to i32**
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr i8*, i8** %0, i64 7
  %27 = bitcast i8** %26 to i32**
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %28, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp33.i.i = icmp sgt i32 %29, 0
  %30 = sext i32 %25 to i64
  %wide.trip.count.i.i = zext i32 %29 to i64
  br i1 %cmp33.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  %conv.i.i = trunc i64 %mul.i.i.i to i32
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.1 = or i32 %31, 1
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.2 = or i32 %32, 2
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.3 = or i32 %33, 3
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.4 = or i32 %34, 4
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.5 = or i32 %35, 5
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.6 = or i32 %36, 6
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.7 = or i32 %37, 7
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.8 = or i32 %38, 8
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.9 = or i32 %39, 9
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.10 = or i32 %40, 10
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.11 = or i32 %41, 11
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.12 = or i32 %42, 12
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.13 = or i32 %43, 13
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.14 = or i32 %44, 14
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.15 = or i32 %45, 15
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.16 = or i32 %46, 16
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.17 = or i32 %47, 17
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.18 = or i32 %48, 18
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.19 = or i32 %49, 19
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.20 = or i32 %50, 20
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.21 = or i32 %51, 21
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.22 = or i32 %52, 22
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.23 = or i32 %53, 23
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.24 = or i32 %54, 24
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.25 = or i32 %55, 25
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.26 = or i32 %56, 26
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.27 = or i32 %57, 27
  %58 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.28 = or i32 %58, 28
  %59 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.29 = or i32 %59, 29
  %60 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.30 = or i32 %60, 30
  %61 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.31 = or i32 %61, 31
  %ident.check = icmp ne i32 %25, 1
  %62 = trunc i64 %3 to i32
  %63 = shl i32 %62, 3
  %64 = add i32 %63, %conv.i.i
  %65 = icmp eq i32 %64, 2147483640
  %66 = or i1 %ident.check, %65
  %67 = add i32 %63, %conv.i.i
  %68 = or i32 %67, 2
  %69 = icmp sgt i32 %68, 2147483640
  %70 = or i1 %66, %69
  %71 = add i32 %63, %conv.i.i
  %72 = or i32 %71, 3
  %73 = icmp sgt i32 %72, 2147483640
  %74 = or i1 %70, %73
  %75 = add i32 %63, %conv.i.i
  %76 = or i32 %75, 4
  %77 = icmp sgt i32 %76, 2147483640
  %78 = or i1 %74, %77
  %79 = add i32 %63, %conv.i.i
  %80 = or i32 %79, 5
  %81 = icmp sgt i32 %80, 2147483640
  %82 = or i1 %78, %81
  %83 = add i32 %63, %conv.i.i
  %84 = or i32 %83, 6
  %85 = icmp sgt i32 %84, 2147483640
  %86 = or i1 %82, %85
  %87 = add i32 %63, %conv.i.i
  %88 = or i32 %87, 7
  %89 = icmp sgt i32 %88, 2147483640
  %90 = or i1 %86, %89
  %91 = add i32 %63, %conv.i.i
  %92 = add i32 %91, 9
  %93 = add i32 %91, 16
  %94 = icmp slt i32 %93, %92
  %95 = or i1 %90, %94
  %96 = add i32 %63, %conv.i.i
  %97 = add i32 %96, 10
  %98 = add i32 %96, 17
  %99 = icmp slt i32 %98, %97
  %100 = or i1 %95, %99
  %101 = add i32 %63, %conv.i.i
  %102 = add i32 %101, 11
  %103 = add i32 %101, 18
  %104 = icmp slt i32 %103, %102
  %105 = or i1 %100, %104
  %106 = add i32 %63, %conv.i.i
  %107 = add i32 %106, 12
  %108 = add i32 %106, 19
  %109 = icmp slt i32 %108, %107
  %110 = or i1 %105, %109
  %111 = add i32 %63, %conv.i.i
  %112 = add i32 %111, 13
  %113 = add i32 %111, 20
  %114 = icmp slt i32 %113, %112
  %115 = or i1 %110, %114
  %116 = add i32 %63, %conv.i.i
  %117 = add i32 %116, 14
  %118 = add i32 %116, 21
  %119 = icmp slt i32 %118, %117
  %120 = or i1 %115, %119
  %121 = add i32 %63, %conv.i.i
  %122 = add i32 %121, 15
  %123 = add i32 %121, 22
  %124 = icmp slt i32 %123, %122
  %125 = or i1 %120, %124
  %126 = add i32 %63, %conv.i.i
  %127 = add i32 %126, 17
  %128 = add i32 %126, 24
  %129 = icmp slt i32 %128, %127
  %130 = or i1 %125, %129
  %131 = add i32 %63, %conv.i.i
  %132 = add i32 %131, 18
  %133 = add i32 %131, 25
  %134 = icmp slt i32 %133, %132
  %135 = or i1 %130, %134
  %136 = add i32 %63, %conv.i.i
  %137 = add i32 %136, 19
  %138 = add i32 %136, 26
  %139 = icmp slt i32 %138, %137
  %140 = or i1 %135, %139
  %141 = add i32 %63, %conv.i.i
  %142 = add i32 %141, 20
  %143 = add i32 %141, 27
  %144 = icmp slt i32 %143, %142
  %145 = or i1 %140, %144
  %146 = add i32 %63, %conv.i.i
  %147 = add i32 %146, 21
  %148 = add i32 %146, 28
  %149 = icmp slt i32 %148, %147
  %150 = or i1 %145, %149
  %151 = add i32 %63, %conv.i.i
  %152 = add i32 %151, 22
  %153 = add i32 %151, 29
  %154 = icmp slt i32 %153, %152
  %155 = or i1 %150, %154
  %156 = add i32 %63, %conv.i.i
  %157 = add i32 %156, 23
  %158 = add i32 %156, 30
  %159 = icmp slt i32 %158, %157
  %160 = or i1 %155, %159
  %161 = add i32 %63, %conv.i.i
  %162 = add i32 %161, 25
  %163 = add i32 %161, 32
  %164 = icmp slt i32 %163, %162
  %165 = or i1 %160, %164
  %166 = add i32 %63, %conv.i.i
  %167 = add i32 %166, 26
  %168 = add i32 %166, 33
  %169 = icmp slt i32 %168, %167
  %170 = or i1 %165, %169
  %171 = add i32 %63, %conv.i.i
  %172 = add i32 %171, 27
  %173 = add i32 %171, 34
  %174 = icmp slt i32 %173, %172
  %175 = or i1 %170, %174
  %176 = add i32 %63, %conv.i.i
  %177 = add i32 %176, 28
  %178 = add i32 %176, 35
  %179 = icmp slt i32 %178, %177
  %180 = or i1 %175, %179
  %181 = add i32 %63, %conv.i.i
  %182 = add i32 %181, 29
  %183 = add i32 %181, 36
  %184 = icmp slt i32 %183, %182
  %185 = or i1 %180, %184
  %186 = add i32 %63, %conv.i.i
  %187 = add i32 %186, 30
  %188 = add i32 %186, 37
  %189 = icmp slt i32 %188, %187
  %190 = or i1 %185, %189
  %191 = add i32 %63, %conv.i.i
  %192 = add i32 %191, 31
  %193 = add i32 %191, 38
  %194 = icmp slt i32 %193, %192
  %195 = or i1 %190, %194
  br i1 %195, label %pregion_for_entry.pregion_for_init.i.i.preheader166, label %vector.ph

pregion_for_entry.pregion_for_init.i.i.preheader166: ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  br label %pregion_for_entry.pregion_for_init.i.i

vector.ph:                                        ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %broadcast.splatinsert = insertelement <8 x float> undef, float %21, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %196 = trunc i64 %mul3.i.i.i to i32
  %197 = mul nsw i32 %25, %196
  %198 = add nsw i32 %197, %conv.i.i
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %13, i64 %199
  %201 = bitcast float* %200 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %201, align 4, !tbaa !12, !llvm.access.group !16
  %202 = fmul <8 x float> %broadcast.splat, %wide.load
  %203 = bitcast float* %200 to <8 x float>*
  store <8 x float> %202, <8 x float>* %203, align 4, !tbaa !12, !llvm.access.group !16
  %204 = add nsw i32 %197, %conv.i.i.1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float, float* %13, i64 %205
  %207 = bitcast float* %206 to <8 x float>*
  %wide.load115 = load <8 x float>, <8 x float>* %207, align 4, !tbaa !12, !llvm.access.group !16
  %208 = fmul <8 x float> %broadcast.splat, %wide.load115
  %209 = bitcast float* %206 to <8 x float>*
  store <8 x float> %208, <8 x float>* %209, align 4, !tbaa !12, !llvm.access.group !16
  %210 = add nsw i32 %197, %conv.i.i.2
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %13, i64 %211
  %213 = bitcast float* %212 to <8 x float>*
  %wide.load116 = load <8 x float>, <8 x float>* %213, align 4, !tbaa !12, !llvm.access.group !16
  %214 = fmul <8 x float> %broadcast.splat, %wide.load116
  %215 = bitcast float* %212 to <8 x float>*
  store <8 x float> %214, <8 x float>* %215, align 4, !tbaa !12, !llvm.access.group !16
  %216 = add nsw i32 %197, %conv.i.i.3
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float, float* %13, i64 %217
  %219 = bitcast float* %218 to <8 x float>*
  %wide.load117 = load <8 x float>, <8 x float>* %219, align 4, !tbaa !12, !llvm.access.group !16
  %220 = fmul <8 x float> %broadcast.splat, %wide.load117
  %221 = bitcast float* %218 to <8 x float>*
  store <8 x float> %220, <8 x float>* %221, align 4, !tbaa !12, !llvm.access.group !16
  %222 = add nsw i32 %197, %conv.i.i.4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float, float* %13, i64 %223
  %225 = bitcast float* %224 to <8 x float>*
  %wide.load118 = load <8 x float>, <8 x float>* %225, align 4, !tbaa !12, !llvm.access.group !16
  %226 = fmul <8 x float> %broadcast.splat, %wide.load118
  %227 = bitcast float* %224 to <8 x float>*
  store <8 x float> %226, <8 x float>* %227, align 4, !tbaa !12, !llvm.access.group !16
  %228 = add nsw i32 %197, %conv.i.i.5
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %13, i64 %229
  %231 = bitcast float* %230 to <8 x float>*
  %wide.load119 = load <8 x float>, <8 x float>* %231, align 4, !tbaa !12, !llvm.access.group !16
  %232 = fmul <8 x float> %broadcast.splat, %wide.load119
  %233 = bitcast float* %230 to <8 x float>*
  store <8 x float> %232, <8 x float>* %233, align 4, !tbaa !12, !llvm.access.group !16
  %234 = add nsw i32 %197, %conv.i.i.6
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds float, float* %13, i64 %235
  %237 = bitcast float* %236 to <8 x float>*
  %wide.load120 = load <8 x float>, <8 x float>* %237, align 4, !tbaa !12, !llvm.access.group !16
  %238 = fmul <8 x float> %broadcast.splat, %wide.load120
  %239 = bitcast float* %236 to <8 x float>*
  store <8 x float> %238, <8 x float>* %239, align 4, !tbaa !12, !llvm.access.group !16
  %240 = add nsw i32 %197, %conv.i.i.7
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %13, i64 %241
  %243 = bitcast float* %242 to <8 x float>*
  %wide.load121 = load <8 x float>, <8 x float>* %243, align 4, !tbaa !12, !llvm.access.group !16
  %244 = fmul <8 x float> %broadcast.splat, %wide.load121
  %245 = bitcast float* %242 to <8 x float>*
  store <8 x float> %244, <8 x float>* %245, align 4, !tbaa !12, !llvm.access.group !16
  %246 = add nsw i32 %197, %conv.i.i.8
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %13, i64 %247
  %249 = bitcast float* %248 to <8 x float>*
  %wide.load122 = load <8 x float>, <8 x float>* %249, align 4, !tbaa !12, !llvm.access.group !16
  %250 = fmul <8 x float> %broadcast.splat, %wide.load122
  %251 = bitcast float* %248 to <8 x float>*
  store <8 x float> %250, <8 x float>* %251, align 4, !tbaa !12, !llvm.access.group !16
  %252 = add nsw i32 %197, %conv.i.i.9
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float, float* %13, i64 %253
  %255 = bitcast float* %254 to <8 x float>*
  %wide.load123 = load <8 x float>, <8 x float>* %255, align 4, !tbaa !12, !llvm.access.group !16
  %256 = fmul <8 x float> %broadcast.splat, %wide.load123
  %257 = bitcast float* %254 to <8 x float>*
  store <8 x float> %256, <8 x float>* %257, align 4, !tbaa !12, !llvm.access.group !16
  %258 = add nsw i32 %197, %conv.i.i.10
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %13, i64 %259
  %261 = bitcast float* %260 to <8 x float>*
  %wide.load124 = load <8 x float>, <8 x float>* %261, align 4, !tbaa !12, !llvm.access.group !16
  %262 = fmul <8 x float> %broadcast.splat, %wide.load124
  %263 = bitcast float* %260 to <8 x float>*
  store <8 x float> %262, <8 x float>* %263, align 4, !tbaa !12, !llvm.access.group !16
  %264 = add nsw i32 %197, %conv.i.i.11
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds float, float* %13, i64 %265
  %267 = bitcast float* %266 to <8 x float>*
  %wide.load125 = load <8 x float>, <8 x float>* %267, align 4, !tbaa !12, !llvm.access.group !16
  %268 = fmul <8 x float> %broadcast.splat, %wide.load125
  %269 = bitcast float* %266 to <8 x float>*
  store <8 x float> %268, <8 x float>* %269, align 4, !tbaa !12, !llvm.access.group !16
  %270 = add nsw i32 %197, %conv.i.i.12
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %13, i64 %271
  %273 = bitcast float* %272 to <8 x float>*
  %wide.load126 = load <8 x float>, <8 x float>* %273, align 4, !tbaa !12, !llvm.access.group !16
  %274 = fmul <8 x float> %broadcast.splat, %wide.load126
  %275 = bitcast float* %272 to <8 x float>*
  store <8 x float> %274, <8 x float>* %275, align 4, !tbaa !12, !llvm.access.group !16
  %276 = add nsw i32 %197, %conv.i.i.13
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds float, float* %13, i64 %277
  %279 = bitcast float* %278 to <8 x float>*
  %wide.load127 = load <8 x float>, <8 x float>* %279, align 4, !tbaa !12, !llvm.access.group !16
  %280 = fmul <8 x float> %broadcast.splat, %wide.load127
  %281 = bitcast float* %278 to <8 x float>*
  store <8 x float> %280, <8 x float>* %281, align 4, !tbaa !12, !llvm.access.group !16
  %282 = add nsw i32 %197, %conv.i.i.14
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds float, float* %13, i64 %283
  %285 = bitcast float* %284 to <8 x float>*
  %wide.load128 = load <8 x float>, <8 x float>* %285, align 4, !tbaa !12, !llvm.access.group !16
  %286 = fmul <8 x float> %broadcast.splat, %wide.load128
  %287 = bitcast float* %284 to <8 x float>*
  store <8 x float> %286, <8 x float>* %287, align 4, !tbaa !12, !llvm.access.group !16
  %288 = add nsw i32 %197, %conv.i.i.15
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds float, float* %13, i64 %289
  %291 = bitcast float* %290 to <8 x float>*
  %wide.load129 = load <8 x float>, <8 x float>* %291, align 4, !tbaa !12, !llvm.access.group !16
  %292 = fmul <8 x float> %broadcast.splat, %wide.load129
  %293 = bitcast float* %290 to <8 x float>*
  store <8 x float> %292, <8 x float>* %293, align 4, !tbaa !12, !llvm.access.group !16
  %294 = add nsw i32 %197, %conv.i.i.16
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds float, float* %13, i64 %295
  %297 = bitcast float* %296 to <8 x float>*
  %wide.load130 = load <8 x float>, <8 x float>* %297, align 4, !tbaa !12, !llvm.access.group !16
  %298 = fmul <8 x float> %broadcast.splat, %wide.load130
  %299 = bitcast float* %296 to <8 x float>*
  store <8 x float> %298, <8 x float>* %299, align 4, !tbaa !12, !llvm.access.group !16
  %300 = add nsw i32 %197, %conv.i.i.17
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds float, float* %13, i64 %301
  %303 = bitcast float* %302 to <8 x float>*
  %wide.load131 = load <8 x float>, <8 x float>* %303, align 4, !tbaa !12, !llvm.access.group !16
  %304 = fmul <8 x float> %broadcast.splat, %wide.load131
  %305 = bitcast float* %302 to <8 x float>*
  store <8 x float> %304, <8 x float>* %305, align 4, !tbaa !12, !llvm.access.group !16
  %306 = add nsw i32 %197, %conv.i.i.18
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds float, float* %13, i64 %307
  %309 = bitcast float* %308 to <8 x float>*
  %wide.load132 = load <8 x float>, <8 x float>* %309, align 4, !tbaa !12, !llvm.access.group !16
  %310 = fmul <8 x float> %broadcast.splat, %wide.load132
  %311 = bitcast float* %308 to <8 x float>*
  store <8 x float> %310, <8 x float>* %311, align 4, !tbaa !12, !llvm.access.group !16
  %312 = add nsw i32 %197, %conv.i.i.19
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds float, float* %13, i64 %313
  %315 = bitcast float* %314 to <8 x float>*
  %wide.load133 = load <8 x float>, <8 x float>* %315, align 4, !tbaa !12, !llvm.access.group !16
  %316 = fmul <8 x float> %broadcast.splat, %wide.load133
  %317 = bitcast float* %314 to <8 x float>*
  store <8 x float> %316, <8 x float>* %317, align 4, !tbaa !12, !llvm.access.group !16
  %318 = add nsw i32 %197, %conv.i.i.20
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds float, float* %13, i64 %319
  %321 = bitcast float* %320 to <8 x float>*
  %wide.load134 = load <8 x float>, <8 x float>* %321, align 4, !tbaa !12, !llvm.access.group !16
  %322 = fmul <8 x float> %broadcast.splat, %wide.load134
  %323 = bitcast float* %320 to <8 x float>*
  store <8 x float> %322, <8 x float>* %323, align 4, !tbaa !12, !llvm.access.group !16
  %324 = add nsw i32 %197, %conv.i.i.21
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds float, float* %13, i64 %325
  %327 = bitcast float* %326 to <8 x float>*
  %wide.load135 = load <8 x float>, <8 x float>* %327, align 4, !tbaa !12, !llvm.access.group !16
  %328 = fmul <8 x float> %broadcast.splat, %wide.load135
  %329 = bitcast float* %326 to <8 x float>*
  store <8 x float> %328, <8 x float>* %329, align 4, !tbaa !12, !llvm.access.group !16
  %330 = add nsw i32 %197, %conv.i.i.22
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds float, float* %13, i64 %331
  %333 = bitcast float* %332 to <8 x float>*
  %wide.load136 = load <8 x float>, <8 x float>* %333, align 4, !tbaa !12, !llvm.access.group !16
  %334 = fmul <8 x float> %broadcast.splat, %wide.load136
  %335 = bitcast float* %332 to <8 x float>*
  store <8 x float> %334, <8 x float>* %335, align 4, !tbaa !12, !llvm.access.group !16
  %336 = add nsw i32 %197, %conv.i.i.23
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds float, float* %13, i64 %337
  %339 = bitcast float* %338 to <8 x float>*
  %wide.load137 = load <8 x float>, <8 x float>* %339, align 4, !tbaa !12, !llvm.access.group !16
  %340 = fmul <8 x float> %broadcast.splat, %wide.load137
  %341 = bitcast float* %338 to <8 x float>*
  store <8 x float> %340, <8 x float>* %341, align 4, !tbaa !12, !llvm.access.group !16
  %342 = add nsw i32 %197, %conv.i.i.24
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds float, float* %13, i64 %343
  %345 = bitcast float* %344 to <8 x float>*
  %wide.load138 = load <8 x float>, <8 x float>* %345, align 4, !tbaa !12, !llvm.access.group !16
  %346 = fmul <8 x float> %broadcast.splat, %wide.load138
  %347 = bitcast float* %344 to <8 x float>*
  store <8 x float> %346, <8 x float>* %347, align 4, !tbaa !12, !llvm.access.group !16
  %348 = add nsw i32 %197, %conv.i.i.25
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds float, float* %13, i64 %349
  %351 = bitcast float* %350 to <8 x float>*
  %wide.load139 = load <8 x float>, <8 x float>* %351, align 4, !tbaa !12, !llvm.access.group !16
  %352 = fmul <8 x float> %broadcast.splat, %wide.load139
  %353 = bitcast float* %350 to <8 x float>*
  store <8 x float> %352, <8 x float>* %353, align 4, !tbaa !12, !llvm.access.group !16
  %354 = add nsw i32 %197, %conv.i.i.26
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds float, float* %13, i64 %355
  %357 = bitcast float* %356 to <8 x float>*
  %wide.load140 = load <8 x float>, <8 x float>* %357, align 4, !tbaa !12, !llvm.access.group !16
  %358 = fmul <8 x float> %broadcast.splat, %wide.load140
  %359 = bitcast float* %356 to <8 x float>*
  store <8 x float> %358, <8 x float>* %359, align 4, !tbaa !12, !llvm.access.group !16
  %360 = add nsw i32 %197, %conv.i.i.27
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds float, float* %13, i64 %361
  %363 = bitcast float* %362 to <8 x float>*
  %wide.load141 = load <8 x float>, <8 x float>* %363, align 4, !tbaa !12, !llvm.access.group !16
  %364 = fmul <8 x float> %broadcast.splat, %wide.load141
  %365 = bitcast float* %362 to <8 x float>*
  store <8 x float> %364, <8 x float>* %365, align 4, !tbaa !12, !llvm.access.group !16
  %366 = add nsw i32 %197, %conv.i.i.28
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds float, float* %13, i64 %367
  %369 = bitcast float* %368 to <8 x float>*
  %wide.load142 = load <8 x float>, <8 x float>* %369, align 4, !tbaa !12, !llvm.access.group !16
  %370 = fmul <8 x float> %broadcast.splat, %wide.load142
  %371 = bitcast float* %368 to <8 x float>*
  store <8 x float> %370, <8 x float>* %371, align 4, !tbaa !12, !llvm.access.group !16
  %372 = add nsw i32 %197, %conv.i.i.29
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds float, float* %13, i64 %373
  %375 = bitcast float* %374 to <8 x float>*
  %wide.load143 = load <8 x float>, <8 x float>* %375, align 4, !tbaa !12, !llvm.access.group !16
  %376 = fmul <8 x float> %broadcast.splat, %wide.load143
  %377 = bitcast float* %374 to <8 x float>*
  store <8 x float> %376, <8 x float>* %377, align 4, !tbaa !12, !llvm.access.group !16
  %378 = add nsw i32 %197, %conv.i.i.30
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds float, float* %13, i64 %379
  %381 = bitcast float* %380 to <8 x float>*
  %wide.load144 = load <8 x float>, <8 x float>* %381, align 4, !tbaa !12, !llvm.access.group !16
  %382 = fmul <8 x float> %broadcast.splat, %wide.load144
  %383 = bitcast float* %380 to <8 x float>*
  store <8 x float> %382, <8 x float>* %383, align 4, !tbaa !12, !llvm.access.group !16
  %384 = add nsw i32 %197, %conv.i.i.31
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds float, float* %13, i64 %385
  %387 = bitcast float* %386 to <8 x float>*
  %wide.load145 = load <8 x float>, <8 x float>* %387, align 4, !tbaa !12, !llvm.access.group !16
  %388 = fmul <8 x float> %broadcast.splat, %wide.load145
  %389 = bitcast float* %386 to <8 x float>*
  store <8 x float> %388, <8 x float>* %389, align 4, !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_gemm.exit

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %mul.i.i.us = mul nsw i32 %25, %conv2.i.i.us
  %mul5.i.i.us = mul nsw i32 %29, %conv2.i.i.us
  %390 = sext i32 %mul5.i.i.us to i64
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_entry.entry.i.i.us.us:                ; preds = %for.end.r_exit.i.i.loopexit.us.us.1165, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.i.us.preheader ], [ %597, %for.end.r_exit.i.i.loopexit.us.us.1165 ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us
  %391 = load float, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us = fmul float %21, %391
  store float %mul3.i.i.us.us, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %392 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

for.end.r_exit.i.i.loopexit.us.us:                ; preds = %for.body.i.i.us.us
  %393 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.1150 = add nuw nsw i64 %393, %mul.i.i.i
  %conv.i.i.us.us.1151 = trunc i64 %add1.i.i.i.us.us.1150 to i32
  %add.i.i.us.us.1152 = add nsw i32 %mul.i.i.us, %conv.i.i.us.us.1151
  %idxprom.i.i.us.us.1153 = sext i32 %add.i.i.us.us.1152 to i64
  %arrayidx.i.i.us.us.1154 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.1153
  %394 = load float, float* %arrayidx.i.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1155 = fmul float %21, %394
  store float %mul3.i.i.us.us.1155, float* %arrayidx.i.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1156 = shl i64 %add1.i.i.i.us.us.1150, 32
  %395 = ashr exact i64 %sext.i.i.us.us.1156, 32
  br label %for.body.i.i.us.us.1164

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %pregion_for_entry.entry.i.i.us.us
  %indvars.iv.next.i.i2.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us ]
  %396 = phi float [ %402, %for.body.i.i.us.us ], [ %mul3.i.i.us.us, %pregion_for_entry.entry.i.i.us.us ]
  %397 = add nsw i64 %indvars.iv.next.i.i2.us.us, %390
  %arrayidx8.i.i.us.us = getelementptr inbounds float, float* %7, i64 %397
  %398 = load float, float* %arrayidx8.i.i.us.us, align 4, !tbaa !12
  %mul9.i.i.us.us = fmul float %17, %398
  %399 = mul nsw i64 %indvars.iv.next.i.i2.us.us, %30
  %400 = add nsw i64 %399, %392
  %arrayidx13.i.i.us.us = getelementptr inbounds float, float* %10, i64 %400
  %401 = load float, float* %arrayidx13.i.i.us.us, align 4, !tbaa !12
  %402 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us, float %401, float %396) #2
  store float %402, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i2.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %for.end.r_exit.i.i.loopexit.us.us, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us:               ; preds = %for.end.r_exit.i.i.loopexit.us.us.1165
  %403 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %403, 1
  %mul.i.i.us.1 = mul nsw i32 %25, %conv2.i.i.us.1
  %mul5.i.i.us.1 = mul nsw i32 %29, %conv2.i.i.us.1
  %404 = sext i32 %mul5.i.i.us.1 to i64
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader166
  %_local_id_y.i.0 = phi i64 [ %437, %pregion_for_entry.pregion_for_init.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader166 ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %mul.i.i = mul nsw i32 %25, %conv2.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %13, i64 %idxprom.i.i
  %405 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i = fmul float %21, %405
  store float %mul3.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.1
  %406 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.1 = fmul float %21, %406
  store float %mul3.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.2 = add nsw i32 %mul.i.i, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.2
  %407 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.2 = fmul float %21, %407
  store float %mul3.i.i.2, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.3 = add nsw i32 %mul.i.i, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.3
  %408 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.3 = fmul float %21, %408
  store float %mul3.i.i.3, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.4 = add nsw i32 %mul.i.i, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.4
  %409 = load float, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.4 = fmul float %21, %409
  store float %mul3.i.i.4, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.5 = add nsw i32 %mul.i.i, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.5
  %410 = load float, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.5 = fmul float %21, %410
  store float %mul3.i.i.5, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.6 = add nsw i32 %mul.i.i, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.6
  %411 = load float, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.6 = fmul float %21, %411
  store float %mul3.i.i.6, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.7 = add nsw i32 %mul.i.i, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.7
  %412 = load float, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.7 = fmul float %21, %412
  store float %mul3.i.i.7, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.8 = add nsw i32 %mul.i.i, %conv.i.i.8
  %idxprom.i.i.8 = sext i32 %add.i.i.8 to i64
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.8
  %413 = load float, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.8 = fmul float %21, %413
  store float %mul3.i.i.8, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.9 = add nsw i32 %mul.i.i, %conv.i.i.9
  %idxprom.i.i.9 = sext i32 %add.i.i.9 to i64
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.9
  %414 = load float, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.9 = fmul float %21, %414
  store float %mul3.i.i.9, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.10 = add nsw i32 %mul.i.i, %conv.i.i.10
  %idxprom.i.i.10 = sext i32 %add.i.i.10 to i64
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.10
  %415 = load float, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.10 = fmul float %21, %415
  store float %mul3.i.i.10, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.11 = add nsw i32 %mul.i.i, %conv.i.i.11
  %idxprom.i.i.11 = sext i32 %add.i.i.11 to i64
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.11
  %416 = load float, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.11 = fmul float %21, %416
  store float %mul3.i.i.11, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.12 = add nsw i32 %mul.i.i, %conv.i.i.12
  %idxprom.i.i.12 = sext i32 %add.i.i.12 to i64
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.12
  %417 = load float, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.12 = fmul float %21, %417
  store float %mul3.i.i.12, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.13 = add nsw i32 %mul.i.i, %conv.i.i.13
  %idxprom.i.i.13 = sext i32 %add.i.i.13 to i64
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.13
  %418 = load float, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.13 = fmul float %21, %418
  store float %mul3.i.i.13, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.14 = add nsw i32 %mul.i.i, %conv.i.i.14
  %idxprom.i.i.14 = sext i32 %add.i.i.14 to i64
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.14
  %419 = load float, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.14 = fmul float %21, %419
  store float %mul3.i.i.14, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.15 = add nsw i32 %mul.i.i, %conv.i.i.15
  %idxprom.i.i.15 = sext i32 %add.i.i.15 to i64
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.15
  %420 = load float, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.15 = fmul float %21, %420
  store float %mul3.i.i.15, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.16 = add nsw i32 %mul.i.i, %conv.i.i.16
  %idxprom.i.i.16 = sext i32 %add.i.i.16 to i64
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.16
  %421 = load float, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.16 = fmul float %21, %421
  store float %mul3.i.i.16, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.17 = add nsw i32 %mul.i.i, %conv.i.i.17
  %idxprom.i.i.17 = sext i32 %add.i.i.17 to i64
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.17
  %422 = load float, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.17 = fmul float %21, %422
  store float %mul3.i.i.17, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.18 = add nsw i32 %mul.i.i, %conv.i.i.18
  %idxprom.i.i.18 = sext i32 %add.i.i.18 to i64
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.18
  %423 = load float, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.18 = fmul float %21, %423
  store float %mul3.i.i.18, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.19 = add nsw i32 %mul.i.i, %conv.i.i.19
  %idxprom.i.i.19 = sext i32 %add.i.i.19 to i64
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.19
  %424 = load float, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.19 = fmul float %21, %424
  store float %mul3.i.i.19, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.20 = add nsw i32 %mul.i.i, %conv.i.i.20
  %idxprom.i.i.20 = sext i32 %add.i.i.20 to i64
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.20
  %425 = load float, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.20 = fmul float %21, %425
  store float %mul3.i.i.20, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.21 = add nsw i32 %mul.i.i, %conv.i.i.21
  %idxprom.i.i.21 = sext i32 %add.i.i.21 to i64
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.21
  %426 = load float, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.21 = fmul float %21, %426
  store float %mul3.i.i.21, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.22 = add nsw i32 %mul.i.i, %conv.i.i.22
  %idxprom.i.i.22 = sext i32 %add.i.i.22 to i64
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.22
  %427 = load float, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.22 = fmul float %21, %427
  store float %mul3.i.i.22, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.23 = add nsw i32 %mul.i.i, %conv.i.i.23
  %idxprom.i.i.23 = sext i32 %add.i.i.23 to i64
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.23
  %428 = load float, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.23 = fmul float %21, %428
  store float %mul3.i.i.23, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.24 = add nsw i32 %mul.i.i, %conv.i.i.24
  %idxprom.i.i.24 = sext i32 %add.i.i.24 to i64
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.24
  %429 = load float, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.24 = fmul float %21, %429
  store float %mul3.i.i.24, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.25 = add nsw i32 %mul.i.i, %conv.i.i.25
  %idxprom.i.i.25 = sext i32 %add.i.i.25 to i64
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.25
  %430 = load float, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.25 = fmul float %21, %430
  store float %mul3.i.i.25, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.26 = add nsw i32 %mul.i.i, %conv.i.i.26
  %idxprom.i.i.26 = sext i32 %add.i.i.26 to i64
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.26
  %431 = load float, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.26 = fmul float %21, %431
  store float %mul3.i.i.26, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.27 = add nsw i32 %mul.i.i, %conv.i.i.27
  %idxprom.i.i.27 = sext i32 %add.i.i.27 to i64
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.27
  %432 = load float, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.27 = fmul float %21, %432
  store float %mul3.i.i.27, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.28 = add nsw i32 %mul.i.i, %conv.i.i.28
  %idxprom.i.i.28 = sext i32 %add.i.i.28 to i64
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.28
  %433 = load float, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.28 = fmul float %21, %433
  store float %mul3.i.i.28, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.29 = add nsw i32 %mul.i.i, %conv.i.i.29
  %idxprom.i.i.29 = sext i32 %add.i.i.29 to i64
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.29
  %434 = load float, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.29 = fmul float %21, %434
  store float %mul3.i.i.29, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.30 = add nsw i32 %mul.i.i, %conv.i.i.30
  %idxprom.i.i.30 = sext i32 %add.i.i.30 to i64
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.30
  %435 = load float, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.30 = fmul float %21, %435
  store float %mul3.i.i.30, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.31 = add nsw i32 %mul.i.i, %conv.i.i.31
  %idxprom.i.i.31 = sext i32 %add.i.i.31 to i64
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.31
  %436 = load float, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.31 = fmul float %21, %436
  store float %mul3.i.i.31, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %437 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond31.not = icmp eq i64 %437, 8
  br i1 %exitcond31.not, label %_pocl_kernel_gemm.exit.loopexit167, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !27

_pocl_kernel_gemm.exit.loopexit:                  ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1
  br label %_pocl_kernel_gemm.exit

_pocl_kernel_gemm.exit.loopexit167:               ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %_pocl_kernel_gemm.exit

_pocl_kernel_gemm.exit:                           ; preds = %_pocl_kernel_gemm.exit.loopexit167, %_pocl_kernel_gemm.exit.loopexit, %vector.ph
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1, %pregion_for_end.i.i.us-lcssa.us.us
  %_local_id_x.i.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us ], [ %589, %for.end.r_exit.i.i.loopexit.us.us.1.1 ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.1
  %438 = load float, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1 = fmul float %21, %438
  store float %mul3.i.i.us.us.1, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %439 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1
  %indvars.iv.next.i.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1 ]
  %440 = phi float [ %446, %for.body.i.i.us.us.1 ], [ %mul3.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1 ]
  %441 = add nsw i64 %indvars.iv.next.i.i2.us.us.1, %404
  %arrayidx8.i.i.us.us.1 = getelementptr inbounds float, float* %7, i64 %441
  %442 = load float, float* %arrayidx8.i.i.us.us.1, align 4, !tbaa !12
  %mul9.i.i.us.us.1 = fmul float %17, %442
  %443 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1, %30
  %444 = add nsw i64 %443, %439
  %arrayidx13.i.i.us.us.1 = getelementptr inbounds float, float* %10, i64 %444
  %445 = load float, float* %arrayidx13.i.i.us.us.1, align 4, !tbaa !12
  %446 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.1, float %445, float %440) #2
  store float %446, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %for.end.r_exit.i.i.loopexit.us.us.1, label %for.body.i.i.us.us.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1:              ; preds = %for.body.i.i.us.us.1
  %447 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %447, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %add.i.i.us.us.1.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.1.1
  %448 = load float, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1.1 = fmul float %21, %448
  store float %mul3.i.i.us.us.1.1, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1.1 = shl i64 %add1.i.i.i.us.us.1.1, 32
  %449 = ashr exact i64 %sext.i.i.us.us.1.1, 32
  br label %for.body.i.i.us.us.1.1

pregion_for_end.i.i.us-lcssa.us.us.1:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1
  %450 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %450, 2
  %mul.i.i.us.2 = mul nsw i32 %25, %conv2.i.i.us.2
  %mul5.i.i.us.2 = mul nsw i32 %29, %conv2.i.i.us.2
  %451 = sext i32 %mul5.i.i.us.2 to i64
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1, %pregion_for_end.i.i.us-lcssa.us.us.1
  %_local_id_x.i.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.1 ], [ %581, %for.end.r_exit.i.i.loopexit.us.us.2.1 ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.2
  %452 = load float, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.2 = fmul float %21, %452
  store float %mul3.i.i.us.us.2, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %453 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2
  %indvars.iv.next.i.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2 ]
  %454 = phi float [ %460, %for.body.i.i.us.us.2 ], [ %mul3.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2 ]
  %455 = add nsw i64 %indvars.iv.next.i.i2.us.us.2, %451
  %arrayidx8.i.i.us.us.2 = getelementptr inbounds float, float* %7, i64 %455
  %456 = load float, float* %arrayidx8.i.i.us.us.2, align 4, !tbaa !12
  %mul9.i.i.us.us.2 = fmul float %17, %456
  %457 = mul nsw i64 %indvars.iv.next.i.i2.us.us.2, %30
  %458 = add nsw i64 %457, %453
  %arrayidx13.i.i.us.us.2 = getelementptr inbounds float, float* %10, i64 %458
  %459 = load float, float* %arrayidx13.i.i.us.us.2, align 4, !tbaa !12
  %460 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.2, float %459, float %454) #2
  store float %460, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %for.end.r_exit.i.i.loopexit.us.us.2, label %for.body.i.i.us.us.2, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2:              ; preds = %for.body.i.i.us.us.2
  %461 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %461, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %add.i.i.us.us.2.1 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.2.1
  %462 = load float, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.2.1 = fmul float %21, %462
  store float %mul3.i.i.us.us.2.1, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2.1 = shl i64 %add1.i.i.i.us.us.2.1, 32
  %463 = ashr exact i64 %sext.i.i.us.us.2.1, 32
  br label %for.body.i.i.us.us.2.1

pregion_for_end.i.i.us-lcssa.us.us.2:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1
  %464 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %464, 3
  %mul.i.i.us.3 = mul nsw i32 %25, %conv2.i.i.us.3
  %mul5.i.i.us.3 = mul nsw i32 %29, %conv2.i.i.us.3
  %465 = sext i32 %mul5.i.i.us.3 to i64
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1, %pregion_for_end.i.i.us-lcssa.us.us.2
  %_local_id_x.i.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.2 ], [ %573, %for.end.r_exit.i.i.loopexit.us.us.3.1 ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.3
  %466 = load float, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.3 = fmul float %21, %466
  store float %mul3.i.i.us.us.3, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %467 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3
  %indvars.iv.next.i.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3 ]
  %468 = phi float [ %474, %for.body.i.i.us.us.3 ], [ %mul3.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3 ]
  %469 = add nsw i64 %indvars.iv.next.i.i2.us.us.3, %465
  %arrayidx8.i.i.us.us.3 = getelementptr inbounds float, float* %7, i64 %469
  %470 = load float, float* %arrayidx8.i.i.us.us.3, align 4, !tbaa !12
  %mul9.i.i.us.us.3 = fmul float %17, %470
  %471 = mul nsw i64 %indvars.iv.next.i.i2.us.us.3, %30
  %472 = add nsw i64 %471, %467
  %arrayidx13.i.i.us.us.3 = getelementptr inbounds float, float* %10, i64 %472
  %473 = load float, float* %arrayidx13.i.i.us.us.3, align 4, !tbaa !12
  %474 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.3, float %473, float %468) #2
  store float %474, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %for.end.r_exit.i.i.loopexit.us.us.3, label %for.body.i.i.us.us.3, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3:              ; preds = %for.body.i.i.us.us.3
  %475 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %475, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %add.i.i.us.us.3.1 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.3.1
  %476 = load float, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.3.1 = fmul float %21, %476
  store float %mul3.i.i.us.us.3.1, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3.1 = shl i64 %add1.i.i.i.us.us.3.1, 32
  %477 = ashr exact i64 %sext.i.i.us.us.3.1, 32
  br label %for.body.i.i.us.us.3.1

pregion_for_end.i.i.us-lcssa.us.us.3:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1
  %478 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %478, 4
  %mul.i.i.us.4 = mul nsw i32 %25, %conv2.i.i.us.4
  %mul5.i.i.us.4 = mul nsw i32 %29, %conv2.i.i.us.4
  %479 = sext i32 %mul5.i.i.us.4 to i64
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1, %pregion_for_end.i.i.us-lcssa.us.us.3
  %_local_id_x.i.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.3 ], [ %565, %for.end.r_exit.i.i.loopexit.us.us.4.1 ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.4
  %480 = load float, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.4 = fmul float %21, %480
  store float %mul3.i.i.us.us.4, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %481 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4
  %indvars.iv.next.i.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4 ]
  %482 = phi float [ %488, %for.body.i.i.us.us.4 ], [ %mul3.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4 ]
  %483 = add nsw i64 %indvars.iv.next.i.i2.us.us.4, %479
  %arrayidx8.i.i.us.us.4 = getelementptr inbounds float, float* %7, i64 %483
  %484 = load float, float* %arrayidx8.i.i.us.us.4, align 4, !tbaa !12
  %mul9.i.i.us.us.4 = fmul float %17, %484
  %485 = mul nsw i64 %indvars.iv.next.i.i2.us.us.4, %30
  %486 = add nsw i64 %485, %481
  %arrayidx13.i.i.us.us.4 = getelementptr inbounds float, float* %10, i64 %486
  %487 = load float, float* %arrayidx13.i.i.us.us.4, align 4, !tbaa !12
  %488 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.4, float %487, float %482) #2
  store float %488, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %for.end.r_exit.i.i.loopexit.us.us.4, label %for.body.i.i.us.us.4, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4:              ; preds = %for.body.i.i.us.us.4
  %489 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %489, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %add.i.i.us.us.4.1 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.4.1
  %490 = load float, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.4.1 = fmul float %21, %490
  store float %mul3.i.i.us.us.4.1, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4.1 = shl i64 %add1.i.i.i.us.us.4.1, 32
  %491 = ashr exact i64 %sext.i.i.us.us.4.1, 32
  br label %for.body.i.i.us.us.4.1

pregion_for_end.i.i.us-lcssa.us.us.4:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1
  %492 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %492, 5
  %mul.i.i.us.5 = mul nsw i32 %25, %conv2.i.i.us.5
  %mul5.i.i.us.5 = mul nsw i32 %29, %conv2.i.i.us.5
  %493 = sext i32 %mul5.i.i.us.5 to i64
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1, %pregion_for_end.i.i.us-lcssa.us.us.4
  %_local_id_x.i.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.4 ], [ %557, %for.end.r_exit.i.i.loopexit.us.us.5.1 ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.5
  %494 = load float, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.5 = fmul float %21, %494
  store float %mul3.i.i.us.us.5, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %495 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5
  %indvars.iv.next.i.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5 ]
  %496 = phi float [ %502, %for.body.i.i.us.us.5 ], [ %mul3.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5 ]
  %497 = add nsw i64 %indvars.iv.next.i.i2.us.us.5, %493
  %arrayidx8.i.i.us.us.5 = getelementptr inbounds float, float* %7, i64 %497
  %498 = load float, float* %arrayidx8.i.i.us.us.5, align 4, !tbaa !12
  %mul9.i.i.us.us.5 = fmul float %17, %498
  %499 = mul nsw i64 %indvars.iv.next.i.i2.us.us.5, %30
  %500 = add nsw i64 %499, %495
  %arrayidx13.i.i.us.us.5 = getelementptr inbounds float, float* %10, i64 %500
  %501 = load float, float* %arrayidx13.i.i.us.us.5, align 4, !tbaa !12
  %502 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.5, float %501, float %496) #2
  store float %502, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %for.end.r_exit.i.i.loopexit.us.us.5, label %for.body.i.i.us.us.5, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5:              ; preds = %for.body.i.i.us.us.5
  %503 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %503, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %add.i.i.us.us.5.1 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.5.1
  %504 = load float, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.5.1 = fmul float %21, %504
  store float %mul3.i.i.us.us.5.1, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5.1 = shl i64 %add1.i.i.i.us.us.5.1, 32
  %505 = ashr exact i64 %sext.i.i.us.us.5.1, 32
  br label %for.body.i.i.us.us.5.1

pregion_for_end.i.i.us-lcssa.us.us.5:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1
  %506 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %506, 6
  %mul.i.i.us.6 = mul nsw i32 %25, %conv2.i.i.us.6
  %mul5.i.i.us.6 = mul nsw i32 %29, %conv2.i.i.us.6
  %507 = sext i32 %mul5.i.i.us.6 to i64
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1, %pregion_for_end.i.i.us-lcssa.us.us.5
  %_local_id_x.i.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.5 ], [ %549, %for.end.r_exit.i.i.loopexit.us.us.6.1 ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.6
  %508 = load float, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.6 = fmul float %21, %508
  store float %mul3.i.i.us.us.6, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %509 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6
  %indvars.iv.next.i.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6 ]
  %510 = phi float [ %516, %for.body.i.i.us.us.6 ], [ %mul3.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6 ]
  %511 = add nsw i64 %indvars.iv.next.i.i2.us.us.6, %507
  %arrayidx8.i.i.us.us.6 = getelementptr inbounds float, float* %7, i64 %511
  %512 = load float, float* %arrayidx8.i.i.us.us.6, align 4, !tbaa !12
  %mul9.i.i.us.us.6 = fmul float %17, %512
  %513 = mul nsw i64 %indvars.iv.next.i.i2.us.us.6, %30
  %514 = add nsw i64 %513, %509
  %arrayidx13.i.i.us.us.6 = getelementptr inbounds float, float* %10, i64 %514
  %515 = load float, float* %arrayidx13.i.i.us.us.6, align 4, !tbaa !12
  %516 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.6, float %515, float %510) #2
  store float %516, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %for.end.r_exit.i.i.loopexit.us.us.6, label %for.body.i.i.us.us.6, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6:              ; preds = %for.body.i.i.us.us.6
  %517 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %517, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %add.i.i.us.us.6.1 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.6.1
  %518 = load float, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.6.1 = fmul float %21, %518
  store float %mul3.i.i.us.us.6.1, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6.1 = shl i64 %add1.i.i.i.us.us.6.1, 32
  %519 = ashr exact i64 %sext.i.i.us.us.6.1, 32
  br label %for.body.i.i.us.us.6.1

pregion_for_end.i.i.us-lcssa.us.us.6:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1
  %520 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %520, 7
  %mul.i.i.us.7 = mul nsw i32 %25, %conv2.i.i.us.7
  %mul5.i.i.us.7 = mul nsw i32 %29, %conv2.i.i.us.7
  %521 = sext i32 %mul5.i.i.us.7 to i64
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1, %pregion_for_end.i.i.us-lcssa.us.us.6
  %_local_id_x.i.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.6 ], [ %541, %for.end.r_exit.i.i.loopexit.us.us.7.1 ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.7
  %522 = load float, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.7 = fmul float %21, %522
  store float %mul3.i.i.us.us.7, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %523 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7
  %indvars.iv.next.i.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7 ]
  %524 = phi float [ %530, %for.body.i.i.us.us.7 ], [ %mul3.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7 ]
  %525 = add nsw i64 %indvars.iv.next.i.i2.us.us.7, %521
  %arrayidx8.i.i.us.us.7 = getelementptr inbounds float, float* %7, i64 %525
  %526 = load float, float* %arrayidx8.i.i.us.us.7, align 4, !tbaa !12
  %mul9.i.i.us.us.7 = fmul float %17, %526
  %527 = mul nsw i64 %indvars.iv.next.i.i2.us.us.7, %30
  %528 = add nsw i64 %527, %523
  %arrayidx13.i.i.us.us.7 = getelementptr inbounds float, float* %10, i64 %528
  %529 = load float, float* %arrayidx13.i.i.us.us.7, align 4, !tbaa !12
  %530 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.7, float %529, float %524) #2
  store float %530, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %for.end.r_exit.i.i.loopexit.us.us.7, label %for.body.i.i.us.us.7, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7:              ; preds = %for.body.i.i.us.us.7
  %531 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %531, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %add.i.i.us.us.7.1 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.7.1
  %532 = load float, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.7.1 = fmul float %21, %532
  store float %mul3.i.i.us.us.7.1, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7.1 = shl i64 %add1.i.i.i.us.us.7.1, 32
  %533 = ashr exact i64 %sext.i.i.us.us.7.1, 32
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %for.end.r_exit.i.i.loopexit.us.us.7
  %indvars.iv.next.i.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %534 = phi float [ %540, %for.body.i.i.us.us.7.1 ], [ %mul3.i.i.us.us.7.1, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %535 = add nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %521
  %arrayidx8.i.i.us.us.7.1 = getelementptr inbounds float, float* %7, i64 %535
  %536 = load float, float* %arrayidx8.i.i.us.us.7.1, align 4, !tbaa !12
  %mul9.i.i.us.us.7.1 = fmul float %17, %536
  %537 = mul nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %30
  %538 = add nsw i64 %537, %533
  %arrayidx13.i.i.us.us.7.1 = getelementptr inbounds float, float* %10, i64 %538
  %539 = load float, float* %arrayidx13.i.i.us.us.7.1, align 4, !tbaa !12
  %540 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.7.1, float %539, float %534) #2
  store float %540, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7.1, label %for.end.r_exit.i.i.loopexit.us.us.7.1, label %for.body.i.i.us.us.7.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7.1:            ; preds = %for.body.i.i.us.us.7.1
  %541 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %541, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_gemm.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !24

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %for.end.r_exit.i.i.loopexit.us.us.6
  %indvars.iv.next.i.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %542 = phi float [ %548, %for.body.i.i.us.us.6.1 ], [ %mul3.i.i.us.us.6.1, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %543 = add nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %507
  %arrayidx8.i.i.us.us.6.1 = getelementptr inbounds float, float* %7, i64 %543
  %544 = load float, float* %arrayidx8.i.i.us.us.6.1, align 4, !tbaa !12
  %mul9.i.i.us.us.6.1 = fmul float %17, %544
  %545 = mul nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %30
  %546 = add nsw i64 %545, %519
  %arrayidx13.i.i.us.us.6.1 = getelementptr inbounds float, float* %10, i64 %546
  %547 = load float, float* %arrayidx13.i.i.us.us.6.1, align 4, !tbaa !12
  %548 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.6.1, float %547, float %542) #2
  store float %548, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6.1, label %for.end.r_exit.i.i.loopexit.us.us.6.1, label %for.body.i.i.us.us.6.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6.1:            ; preds = %for.body.i.i.us.us.6.1
  %549 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %549, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !24

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %for.end.r_exit.i.i.loopexit.us.us.5
  %indvars.iv.next.i.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %550 = phi float [ %556, %for.body.i.i.us.us.5.1 ], [ %mul3.i.i.us.us.5.1, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %551 = add nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %493
  %arrayidx8.i.i.us.us.5.1 = getelementptr inbounds float, float* %7, i64 %551
  %552 = load float, float* %arrayidx8.i.i.us.us.5.1, align 4, !tbaa !12
  %mul9.i.i.us.us.5.1 = fmul float %17, %552
  %553 = mul nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %30
  %554 = add nsw i64 %553, %505
  %arrayidx13.i.i.us.us.5.1 = getelementptr inbounds float, float* %10, i64 %554
  %555 = load float, float* %arrayidx13.i.i.us.us.5.1, align 4, !tbaa !12
  %556 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.5.1, float %555, float %550) #2
  store float %556, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5.1, label %for.end.r_exit.i.i.loopexit.us.us.5.1, label %for.body.i.i.us.us.5.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5.1:            ; preds = %for.body.i.i.us.us.5.1
  %557 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %557, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !24

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %for.end.r_exit.i.i.loopexit.us.us.4
  %indvars.iv.next.i.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %558 = phi float [ %564, %for.body.i.i.us.us.4.1 ], [ %mul3.i.i.us.us.4.1, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %559 = add nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %479
  %arrayidx8.i.i.us.us.4.1 = getelementptr inbounds float, float* %7, i64 %559
  %560 = load float, float* %arrayidx8.i.i.us.us.4.1, align 4, !tbaa !12
  %mul9.i.i.us.us.4.1 = fmul float %17, %560
  %561 = mul nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %30
  %562 = add nsw i64 %561, %491
  %arrayidx13.i.i.us.us.4.1 = getelementptr inbounds float, float* %10, i64 %562
  %563 = load float, float* %arrayidx13.i.i.us.us.4.1, align 4, !tbaa !12
  %564 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.4.1, float %563, float %558) #2
  store float %564, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4.1, label %for.end.r_exit.i.i.loopexit.us.us.4.1, label %for.body.i.i.us.us.4.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4.1:            ; preds = %for.body.i.i.us.us.4.1
  %565 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %565, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !24

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %for.end.r_exit.i.i.loopexit.us.us.3
  %indvars.iv.next.i.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %566 = phi float [ %572, %for.body.i.i.us.us.3.1 ], [ %mul3.i.i.us.us.3.1, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %567 = add nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %465
  %arrayidx8.i.i.us.us.3.1 = getelementptr inbounds float, float* %7, i64 %567
  %568 = load float, float* %arrayidx8.i.i.us.us.3.1, align 4, !tbaa !12
  %mul9.i.i.us.us.3.1 = fmul float %17, %568
  %569 = mul nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %30
  %570 = add nsw i64 %569, %477
  %arrayidx13.i.i.us.us.3.1 = getelementptr inbounds float, float* %10, i64 %570
  %571 = load float, float* %arrayidx13.i.i.us.us.3.1, align 4, !tbaa !12
  %572 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.3.1, float %571, float %566) #2
  store float %572, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3.1, label %for.end.r_exit.i.i.loopexit.us.us.3.1, label %for.body.i.i.us.us.3.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3.1:            ; preds = %for.body.i.i.us.us.3.1
  %573 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %573, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !24

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %for.end.r_exit.i.i.loopexit.us.us.2
  %indvars.iv.next.i.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %574 = phi float [ %580, %for.body.i.i.us.us.2.1 ], [ %mul3.i.i.us.us.2.1, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %575 = add nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %451
  %arrayidx8.i.i.us.us.2.1 = getelementptr inbounds float, float* %7, i64 %575
  %576 = load float, float* %arrayidx8.i.i.us.us.2.1, align 4, !tbaa !12
  %mul9.i.i.us.us.2.1 = fmul float %17, %576
  %577 = mul nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %30
  %578 = add nsw i64 %577, %463
  %arrayidx13.i.i.us.us.2.1 = getelementptr inbounds float, float* %10, i64 %578
  %579 = load float, float* %arrayidx13.i.i.us.us.2.1, align 4, !tbaa !12
  %580 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.2.1, float %579, float %574) #2
  store float %580, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2.1, label %for.end.r_exit.i.i.loopexit.us.us.2.1, label %for.body.i.i.us.us.2.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2.1:            ; preds = %for.body.i.i.us.us.2.1
  %581 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %581, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !24

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %for.end.r_exit.i.i.loopexit.us.us.1
  %indvars.iv.next.i.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %582 = phi float [ %588, %for.body.i.i.us.us.1.1 ], [ %mul3.i.i.us.us.1.1, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %583 = add nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %404
  %arrayidx8.i.i.us.us.1.1 = getelementptr inbounds float, float* %7, i64 %583
  %584 = load float, float* %arrayidx8.i.i.us.us.1.1, align 4, !tbaa !12
  %mul9.i.i.us.us.1.1 = fmul float %17, %584
  %585 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %30
  %586 = add nsw i64 %585, %449
  %arrayidx13.i.i.us.us.1.1 = getelementptr inbounds float, float* %10, i64 %586
  %587 = load float, float* %arrayidx13.i.i.us.us.1.1, align 4, !tbaa !12
  %588 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.1.1, float %587, float %582) #2
  store float %588, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1.1, label %for.end.r_exit.i.i.loopexit.us.us.1.1, label %for.body.i.i.us.us.1.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1.1:            ; preds = %for.body.i.i.us.us.1.1
  %589 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %589, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !24

for.body.i.i.us.us.1164:                          ; preds = %for.body.i.i.us.us.1164, %for.end.r_exit.i.i.loopexit.us.us
  %indvars.iv.next.i.i2.us.us.1158 = phi i64 [ %indvars.iv.next.i.i.us.us.1162, %for.body.i.i.us.us.1164 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us ]
  %590 = phi float [ %596, %for.body.i.i.us.us.1164 ], [ %mul3.i.i.us.us.1155, %for.end.r_exit.i.i.loopexit.us.us ]
  %591 = add nsw i64 %indvars.iv.next.i.i2.us.us.1158, %390
  %arrayidx8.i.i.us.us.1159 = getelementptr inbounds float, float* %7, i64 %591
  %592 = load float, float* %arrayidx8.i.i.us.us.1159, align 4, !tbaa !12
  %mul9.i.i.us.us.1160 = fmul float %17, %592
  %593 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1158, %30
  %594 = add nsw i64 %593, %395
  %arrayidx13.i.i.us.us.1161 = getelementptr inbounds float, float* %10, i64 %594
  %595 = load float, float* %arrayidx13.i.i.us.us.1161, align 4, !tbaa !12
  %596 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.1160, float %595, float %590) #2
  store float %596, float* %arrayidx.i.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1162 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1158, 1
  %exitcond.not.i.i.us.us.1163 = icmp eq i64 %indvars.iv.next.i.i.us.us.1162, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1163, label %for.end.r_exit.i.i.loopexit.us.us.1165, label %for.body.i.i.us.us.1164, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1165:           ; preds = %for.body.i.i.us.us.1164
  %597 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %597, 32
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
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.parallel_accesses", !18}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.parallel_accesses", !17}
!26 = distinct !{!26, !22, !23}
!27 = distinct !{!27, !22, !23}
