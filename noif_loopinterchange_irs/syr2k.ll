; ModuleID = './PK/CLOKNECBBMFHBPJIHLPGBOACEAGGLMBCHDLNJ/syr2k_kernel/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_syr2k_kernel(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, float %3, float %4, i32 %5, i32 %6, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %7, i64 %8, i64 %9, i64 %10) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %8, 5
  %mul3.i.i = shl i64 %9, 3
  %cmp53.i = icmp sgt i32 %5, 0
  %wide.trip.count.i = zext i32 %5 to i64
  br i1 %cmp53.i, label %pregion_for_entry.pregion_for_init.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.preheader

pregion_for_entry.pregion_for_init.i.preheader:   ; preds = %11
  %conv.i = trunc i64 %mul.i.i to i32
  %12 = trunc i64 %mul.i.i to i32
  %conv.i.1 = or i32 %12, 1
  %13 = trunc i64 %mul.i.i to i32
  %conv.i.2 = or i32 %13, 2
  %14 = trunc i64 %mul.i.i to i32
  %conv.i.3 = or i32 %14, 3
  %15 = trunc i64 %mul.i.i to i32
  %conv.i.4 = or i32 %15, 4
  %16 = trunc i64 %mul.i.i to i32
  %conv.i.5 = or i32 %16, 5
  %17 = trunc i64 %mul.i.i to i32
  %conv.i.6 = or i32 %17, 6
  %18 = trunc i64 %mul.i.i to i32
  %conv.i.7 = or i32 %18, 7
  %19 = trunc i64 %mul.i.i to i32
  %conv.i.8 = or i32 %19, 8
  %20 = trunc i64 %mul.i.i to i32
  %conv.i.9 = or i32 %20, 9
  %21 = trunc i64 %mul.i.i to i32
  %conv.i.10 = or i32 %21, 10
  %22 = trunc i64 %mul.i.i to i32
  %conv.i.11 = or i32 %22, 11
  %23 = trunc i64 %mul.i.i to i32
  %conv.i.12 = or i32 %23, 12
  %24 = trunc i64 %mul.i.i to i32
  %conv.i.13 = or i32 %24, 13
  %25 = trunc i64 %mul.i.i to i32
  %conv.i.14 = or i32 %25, 14
  %26 = trunc i64 %mul.i.i to i32
  %conv.i.15 = or i32 %26, 15
  %27 = trunc i64 %mul.i.i to i32
  %conv.i.16 = or i32 %27, 16
  %28 = trunc i64 %mul.i.i to i32
  %conv.i.17 = or i32 %28, 17
  %29 = trunc i64 %mul.i.i to i32
  %conv.i.18 = or i32 %29, 18
  %30 = trunc i64 %mul.i.i to i32
  %conv.i.19 = or i32 %30, 19
  %31 = trunc i64 %mul.i.i to i32
  %conv.i.20 = or i32 %31, 20
  %32 = trunc i64 %mul.i.i to i32
  %conv.i.21 = or i32 %32, 21
  %33 = trunc i64 %mul.i.i to i32
  %conv.i.22 = or i32 %33, 22
  %34 = trunc i64 %mul.i.i to i32
  %conv.i.23 = or i32 %34, 23
  %35 = trunc i64 %mul.i.i to i32
  %conv.i.24 = or i32 %35, 24
  %36 = trunc i64 %mul.i.i to i32
  %conv.i.25 = or i32 %36, 25
  %37 = trunc i64 %mul.i.i to i32
  %conv.i.26 = or i32 %37, 26
  %38 = trunc i64 %mul.i.i to i32
  %conv.i.27 = or i32 %38, 27
  %39 = trunc i64 %mul.i.i to i32
  %conv.i.28 = or i32 %39, 28
  %40 = trunc i64 %mul.i.i to i32
  %conv.i.29 = or i32 %40, 29
  %41 = trunc i64 %mul.i.i to i32
  %conv.i.30 = or i32 %41, 30
  %42 = trunc i64 %mul.i.i to i32
  %conv.i.31 = or i32 %42, 31
  %ident.check = icmp ne i32 %6, 1
  %43 = trunc i64 %9 to i32
  %44 = shl i32 %43, 3
  %45 = add i32 %44, %conv.i
  %46 = icmp eq i32 %45, 2147483640
  %47 = or i1 %ident.check, %46
  %48 = add i32 %44, %conv.i
  %49 = or i32 %48, 2
  %50 = icmp sgt i32 %49, 2147483640
  %51 = or i1 %47, %50
  %52 = add i32 %44, %conv.i
  %53 = or i32 %52, 3
  %54 = icmp sgt i32 %53, 2147483640
  %55 = or i1 %51, %54
  %56 = add i32 %44, %conv.i
  %57 = or i32 %56, 4
  %58 = icmp sgt i32 %57, 2147483640
  %59 = or i1 %55, %58
  %60 = add i32 %44, %conv.i
  %61 = or i32 %60, 5
  %62 = icmp sgt i32 %61, 2147483640
  %63 = or i1 %59, %62
  %64 = add i32 %44, %conv.i
  %65 = or i32 %64, 6
  %66 = icmp sgt i32 %65, 2147483640
  %67 = or i1 %63, %66
  %68 = add i32 %44, %conv.i
  %69 = or i32 %68, 7
  %70 = icmp sgt i32 %69, 2147483640
  %71 = or i1 %67, %70
  %72 = add i32 %44, %conv.i
  %73 = add i32 %72, 9
  %74 = add i32 %72, 16
  %75 = icmp slt i32 %74, %73
  %76 = or i1 %71, %75
  %77 = add i32 %44, %conv.i
  %78 = add i32 %77, 10
  %79 = add i32 %77, 17
  %80 = icmp slt i32 %79, %78
  %81 = or i1 %76, %80
  %82 = add i32 %44, %conv.i
  %83 = add i32 %82, 11
  %84 = add i32 %82, 18
  %85 = icmp slt i32 %84, %83
  %86 = or i1 %81, %85
  %87 = add i32 %44, %conv.i
  %88 = add i32 %87, 12
  %89 = add i32 %87, 19
  %90 = icmp slt i32 %89, %88
  %91 = or i1 %86, %90
  %92 = add i32 %44, %conv.i
  %93 = add i32 %92, 13
  %94 = add i32 %92, 20
  %95 = icmp slt i32 %94, %93
  %96 = or i1 %91, %95
  %97 = add i32 %44, %conv.i
  %98 = add i32 %97, 14
  %99 = add i32 %97, 21
  %100 = icmp slt i32 %99, %98
  %101 = or i1 %96, %100
  %102 = add i32 %44, %conv.i
  %103 = add i32 %102, 15
  %104 = add i32 %102, 22
  %105 = icmp slt i32 %104, %103
  %106 = or i1 %101, %105
  %107 = add i32 %44, %conv.i
  %108 = add i32 %107, 17
  %109 = add i32 %107, 24
  %110 = icmp slt i32 %109, %108
  %111 = or i1 %106, %110
  %112 = add i32 %44, %conv.i
  %113 = add i32 %112, 18
  %114 = add i32 %112, 25
  %115 = icmp slt i32 %114, %113
  %116 = or i1 %111, %115
  %117 = add i32 %44, %conv.i
  %118 = add i32 %117, 19
  %119 = add i32 %117, 26
  %120 = icmp slt i32 %119, %118
  %121 = or i1 %116, %120
  %122 = add i32 %44, %conv.i
  %123 = add i32 %122, 20
  %124 = add i32 %122, 27
  %125 = icmp slt i32 %124, %123
  %126 = or i1 %121, %125
  %127 = add i32 %44, %conv.i
  %128 = add i32 %127, 21
  %129 = add i32 %127, 28
  %130 = icmp slt i32 %129, %128
  %131 = or i1 %126, %130
  %132 = add i32 %44, %conv.i
  %133 = add i32 %132, 22
  %134 = add i32 %132, 29
  %135 = icmp slt i32 %134, %133
  %136 = or i1 %131, %135
  %137 = add i32 %44, %conv.i
  %138 = add i32 %137, 23
  %139 = add i32 %137, 30
  %140 = icmp slt i32 %139, %138
  %141 = or i1 %136, %140
  %142 = add i32 %44, %conv.i
  %143 = add i32 %142, 25
  %144 = add i32 %142, 32
  %145 = icmp slt i32 %144, %143
  %146 = or i1 %141, %145
  %147 = add i32 %44, %conv.i
  %148 = add i32 %147, 26
  %149 = add i32 %147, 33
  %150 = icmp slt i32 %149, %148
  %151 = or i1 %146, %150
  %152 = add i32 %44, %conv.i
  %153 = add i32 %152, 27
  %154 = add i32 %152, 34
  %155 = icmp slt i32 %154, %153
  %156 = or i1 %151, %155
  %157 = add i32 %44, %conv.i
  %158 = add i32 %157, 28
  %159 = add i32 %157, 35
  %160 = icmp slt i32 %159, %158
  %161 = or i1 %156, %160
  %162 = add i32 %44, %conv.i
  %163 = add i32 %162, 29
  %164 = add i32 %162, 36
  %165 = icmp slt i32 %164, %163
  %166 = or i1 %161, %165
  %167 = add i32 %44, %conv.i
  %168 = add i32 %167, 30
  %169 = add i32 %167, 37
  %170 = icmp slt i32 %169, %168
  %171 = or i1 %166, %170
  %172 = add i32 %44, %conv.i
  %173 = add i32 %172, 31
  %174 = add i32 %172, 38
  %175 = icmp slt i32 %174, %173
  %176 = or i1 %171, %175
  br i1 %176, label %pregion_for_entry.pregion_for_init.i.preheader156, label %vector.ph

pregion_for_entry.pregion_for_init.i.preheader156: ; preds = %pregion_for_entry.pregion_for_init.i.preheader
  br label %pregion_for_entry.pregion_for_init.i

vector.ph:                                        ; preds = %pregion_for_entry.pregion_for_init.i.preheader
  %broadcast.splatinsert = insertelement <8 x float> undef, float %4, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %177 = trunc i64 %mul3.i.i to i32
  %178 = mul nsw i32 %177, %6
  %179 = add nsw i32 %178, %conv.i
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %2, i64 %180
  %182 = bitcast float* %181 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %182, align 4, !tbaa !12, !llvm.access.group !16
  %183 = fmul <8 x float> %wide.load, %broadcast.splat
  %184 = bitcast float* %181 to <8 x float>*
  store <8 x float> %183, <8 x float>* %184, align 4, !tbaa !12, !llvm.access.group !16
  %185 = add nsw i32 %178, %conv.i.1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %2, i64 %186
  %188 = bitcast float* %187 to <8 x float>*
  %wide.load122 = load <8 x float>, <8 x float>* %188, align 4, !tbaa !12, !llvm.access.group !16
  %189 = fmul <8 x float> %wide.load122, %broadcast.splat
  %190 = bitcast float* %187 to <8 x float>*
  store <8 x float> %189, <8 x float>* %190, align 4, !tbaa !12, !llvm.access.group !16
  %191 = add nsw i32 %178, %conv.i.2
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %2, i64 %192
  %194 = bitcast float* %193 to <8 x float>*
  %wide.load123 = load <8 x float>, <8 x float>* %194, align 4, !tbaa !12, !llvm.access.group !16
  %195 = fmul <8 x float> %wide.load123, %broadcast.splat
  %196 = bitcast float* %193 to <8 x float>*
  store <8 x float> %195, <8 x float>* %196, align 4, !tbaa !12, !llvm.access.group !16
  %197 = add nsw i32 %178, %conv.i.3
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %2, i64 %198
  %200 = bitcast float* %199 to <8 x float>*
  %wide.load124 = load <8 x float>, <8 x float>* %200, align 4, !tbaa !12, !llvm.access.group !16
  %201 = fmul <8 x float> %wide.load124, %broadcast.splat
  %202 = bitcast float* %199 to <8 x float>*
  store <8 x float> %201, <8 x float>* %202, align 4, !tbaa !12, !llvm.access.group !16
  %203 = add nsw i32 %178, %conv.i.4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %2, i64 %204
  %206 = bitcast float* %205 to <8 x float>*
  %wide.load125 = load <8 x float>, <8 x float>* %206, align 4, !tbaa !12, !llvm.access.group !16
  %207 = fmul <8 x float> %wide.load125, %broadcast.splat
  %208 = bitcast float* %205 to <8 x float>*
  store <8 x float> %207, <8 x float>* %208, align 4, !tbaa !12, !llvm.access.group !16
  %209 = add nsw i32 %178, %conv.i.5
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %2, i64 %210
  %212 = bitcast float* %211 to <8 x float>*
  %wide.load126 = load <8 x float>, <8 x float>* %212, align 4, !tbaa !12, !llvm.access.group !16
  %213 = fmul <8 x float> %wide.load126, %broadcast.splat
  %214 = bitcast float* %211 to <8 x float>*
  store <8 x float> %213, <8 x float>* %214, align 4, !tbaa !12, !llvm.access.group !16
  %215 = add nsw i32 %178, %conv.i.6
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %2, i64 %216
  %218 = bitcast float* %217 to <8 x float>*
  %wide.load127 = load <8 x float>, <8 x float>* %218, align 4, !tbaa !12, !llvm.access.group !16
  %219 = fmul <8 x float> %wide.load127, %broadcast.splat
  %220 = bitcast float* %217 to <8 x float>*
  store <8 x float> %219, <8 x float>* %220, align 4, !tbaa !12, !llvm.access.group !16
  %221 = add nsw i32 %178, %conv.i.7
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %2, i64 %222
  %224 = bitcast float* %223 to <8 x float>*
  %wide.load128 = load <8 x float>, <8 x float>* %224, align 4, !tbaa !12, !llvm.access.group !16
  %225 = fmul <8 x float> %wide.load128, %broadcast.splat
  %226 = bitcast float* %223 to <8 x float>*
  store <8 x float> %225, <8 x float>* %226, align 4, !tbaa !12, !llvm.access.group !16
  %227 = add nsw i32 %178, %conv.i.8
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %2, i64 %228
  %230 = bitcast float* %229 to <8 x float>*
  %wide.load129 = load <8 x float>, <8 x float>* %230, align 4, !tbaa !12, !llvm.access.group !16
  %231 = fmul <8 x float> %wide.load129, %broadcast.splat
  %232 = bitcast float* %229 to <8 x float>*
  store <8 x float> %231, <8 x float>* %232, align 4, !tbaa !12, !llvm.access.group !16
  %233 = add nsw i32 %178, %conv.i.9
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %2, i64 %234
  %236 = bitcast float* %235 to <8 x float>*
  %wide.load130 = load <8 x float>, <8 x float>* %236, align 4, !tbaa !12, !llvm.access.group !16
  %237 = fmul <8 x float> %wide.load130, %broadcast.splat
  %238 = bitcast float* %235 to <8 x float>*
  store <8 x float> %237, <8 x float>* %238, align 4, !tbaa !12, !llvm.access.group !16
  %239 = add nsw i32 %178, %conv.i.10
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %2, i64 %240
  %242 = bitcast float* %241 to <8 x float>*
  %wide.load131 = load <8 x float>, <8 x float>* %242, align 4, !tbaa !12, !llvm.access.group !16
  %243 = fmul <8 x float> %wide.load131, %broadcast.splat
  %244 = bitcast float* %241 to <8 x float>*
  store <8 x float> %243, <8 x float>* %244, align 4, !tbaa !12, !llvm.access.group !16
  %245 = add nsw i32 %178, %conv.i.11
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %2, i64 %246
  %248 = bitcast float* %247 to <8 x float>*
  %wide.load132 = load <8 x float>, <8 x float>* %248, align 4, !tbaa !12, !llvm.access.group !16
  %249 = fmul <8 x float> %wide.load132, %broadcast.splat
  %250 = bitcast float* %247 to <8 x float>*
  store <8 x float> %249, <8 x float>* %250, align 4, !tbaa !12, !llvm.access.group !16
  %251 = add nsw i32 %178, %conv.i.12
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %2, i64 %252
  %254 = bitcast float* %253 to <8 x float>*
  %wide.load133 = load <8 x float>, <8 x float>* %254, align 4, !tbaa !12, !llvm.access.group !16
  %255 = fmul <8 x float> %wide.load133, %broadcast.splat
  %256 = bitcast float* %253 to <8 x float>*
  store <8 x float> %255, <8 x float>* %256, align 4, !tbaa !12, !llvm.access.group !16
  %257 = add nsw i32 %178, %conv.i.13
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %2, i64 %258
  %260 = bitcast float* %259 to <8 x float>*
  %wide.load134 = load <8 x float>, <8 x float>* %260, align 4, !tbaa !12, !llvm.access.group !16
  %261 = fmul <8 x float> %wide.load134, %broadcast.splat
  %262 = bitcast float* %259 to <8 x float>*
  store <8 x float> %261, <8 x float>* %262, align 4, !tbaa !12, !llvm.access.group !16
  %263 = add nsw i32 %178, %conv.i.14
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float, float* %2, i64 %264
  %266 = bitcast float* %265 to <8 x float>*
  %wide.load135 = load <8 x float>, <8 x float>* %266, align 4, !tbaa !12, !llvm.access.group !16
  %267 = fmul <8 x float> %wide.load135, %broadcast.splat
  %268 = bitcast float* %265 to <8 x float>*
  store <8 x float> %267, <8 x float>* %268, align 4, !tbaa !12, !llvm.access.group !16
  %269 = add nsw i32 %178, %conv.i.15
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %2, i64 %270
  %272 = bitcast float* %271 to <8 x float>*
  %wide.load136 = load <8 x float>, <8 x float>* %272, align 4, !tbaa !12, !llvm.access.group !16
  %273 = fmul <8 x float> %wide.load136, %broadcast.splat
  %274 = bitcast float* %271 to <8 x float>*
  store <8 x float> %273, <8 x float>* %274, align 4, !tbaa !12, !llvm.access.group !16
  %275 = add nsw i32 %178, %conv.i.16
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds float, float* %2, i64 %276
  %278 = bitcast float* %277 to <8 x float>*
  %wide.load137 = load <8 x float>, <8 x float>* %278, align 4, !tbaa !12, !llvm.access.group !16
  %279 = fmul <8 x float> %wide.load137, %broadcast.splat
  %280 = bitcast float* %277 to <8 x float>*
  store <8 x float> %279, <8 x float>* %280, align 4, !tbaa !12, !llvm.access.group !16
  %281 = add nsw i32 %178, %conv.i.17
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds float, float* %2, i64 %282
  %284 = bitcast float* %283 to <8 x float>*
  %wide.load138 = load <8 x float>, <8 x float>* %284, align 4, !tbaa !12, !llvm.access.group !16
  %285 = fmul <8 x float> %wide.load138, %broadcast.splat
  %286 = bitcast float* %283 to <8 x float>*
  store <8 x float> %285, <8 x float>* %286, align 4, !tbaa !12, !llvm.access.group !16
  %287 = add nsw i32 %178, %conv.i.18
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float* %2, i64 %288
  %290 = bitcast float* %289 to <8 x float>*
  %wide.load139 = load <8 x float>, <8 x float>* %290, align 4, !tbaa !12, !llvm.access.group !16
  %291 = fmul <8 x float> %wide.load139, %broadcast.splat
  %292 = bitcast float* %289 to <8 x float>*
  store <8 x float> %291, <8 x float>* %292, align 4, !tbaa !12, !llvm.access.group !16
  %293 = add nsw i32 %178, %conv.i.19
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %2, i64 %294
  %296 = bitcast float* %295 to <8 x float>*
  %wide.load140 = load <8 x float>, <8 x float>* %296, align 4, !tbaa !12, !llvm.access.group !16
  %297 = fmul <8 x float> %wide.load140, %broadcast.splat
  %298 = bitcast float* %295 to <8 x float>*
  store <8 x float> %297, <8 x float>* %298, align 4, !tbaa !12, !llvm.access.group !16
  %299 = add nsw i32 %178, %conv.i.20
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %2, i64 %300
  %302 = bitcast float* %301 to <8 x float>*
  %wide.load141 = load <8 x float>, <8 x float>* %302, align 4, !tbaa !12, !llvm.access.group !16
  %303 = fmul <8 x float> %wide.load141, %broadcast.splat
  %304 = bitcast float* %301 to <8 x float>*
  store <8 x float> %303, <8 x float>* %304, align 4, !tbaa !12, !llvm.access.group !16
  %305 = add nsw i32 %178, %conv.i.21
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %2, i64 %306
  %308 = bitcast float* %307 to <8 x float>*
  %wide.load142 = load <8 x float>, <8 x float>* %308, align 4, !tbaa !12, !llvm.access.group !16
  %309 = fmul <8 x float> %wide.load142, %broadcast.splat
  %310 = bitcast float* %307 to <8 x float>*
  store <8 x float> %309, <8 x float>* %310, align 4, !tbaa !12, !llvm.access.group !16
  %311 = add nsw i32 %178, %conv.i.22
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds float, float* %2, i64 %312
  %314 = bitcast float* %313 to <8 x float>*
  %wide.load143 = load <8 x float>, <8 x float>* %314, align 4, !tbaa !12, !llvm.access.group !16
  %315 = fmul <8 x float> %wide.load143, %broadcast.splat
  %316 = bitcast float* %313 to <8 x float>*
  store <8 x float> %315, <8 x float>* %316, align 4, !tbaa !12, !llvm.access.group !16
  %317 = add nsw i32 %178, %conv.i.23
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds float, float* %2, i64 %318
  %320 = bitcast float* %319 to <8 x float>*
  %wide.load144 = load <8 x float>, <8 x float>* %320, align 4, !tbaa !12, !llvm.access.group !16
  %321 = fmul <8 x float> %wide.load144, %broadcast.splat
  %322 = bitcast float* %319 to <8 x float>*
  store <8 x float> %321, <8 x float>* %322, align 4, !tbaa !12, !llvm.access.group !16
  %323 = add nsw i32 %178, %conv.i.24
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds float, float* %2, i64 %324
  %326 = bitcast float* %325 to <8 x float>*
  %wide.load145 = load <8 x float>, <8 x float>* %326, align 4, !tbaa !12, !llvm.access.group !16
  %327 = fmul <8 x float> %wide.load145, %broadcast.splat
  %328 = bitcast float* %325 to <8 x float>*
  store <8 x float> %327, <8 x float>* %328, align 4, !tbaa !12, !llvm.access.group !16
  %329 = add nsw i32 %178, %conv.i.25
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds float, float* %2, i64 %330
  %332 = bitcast float* %331 to <8 x float>*
  %wide.load146 = load <8 x float>, <8 x float>* %332, align 4, !tbaa !12, !llvm.access.group !16
  %333 = fmul <8 x float> %wide.load146, %broadcast.splat
  %334 = bitcast float* %331 to <8 x float>*
  store <8 x float> %333, <8 x float>* %334, align 4, !tbaa !12, !llvm.access.group !16
  %335 = add nsw i32 %178, %conv.i.26
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds float, float* %2, i64 %336
  %338 = bitcast float* %337 to <8 x float>*
  %wide.load147 = load <8 x float>, <8 x float>* %338, align 4, !tbaa !12, !llvm.access.group !16
  %339 = fmul <8 x float> %wide.load147, %broadcast.splat
  %340 = bitcast float* %337 to <8 x float>*
  store <8 x float> %339, <8 x float>* %340, align 4, !tbaa !12, !llvm.access.group !16
  %341 = add nsw i32 %178, %conv.i.27
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds float, float* %2, i64 %342
  %344 = bitcast float* %343 to <8 x float>*
  %wide.load148 = load <8 x float>, <8 x float>* %344, align 4, !tbaa !12, !llvm.access.group !16
  %345 = fmul <8 x float> %wide.load148, %broadcast.splat
  %346 = bitcast float* %343 to <8 x float>*
  store <8 x float> %345, <8 x float>* %346, align 4, !tbaa !12, !llvm.access.group !16
  %347 = add nsw i32 %178, %conv.i.28
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds float, float* %2, i64 %348
  %350 = bitcast float* %349 to <8 x float>*
  %wide.load149 = load <8 x float>, <8 x float>* %350, align 4, !tbaa !12, !llvm.access.group !16
  %351 = fmul <8 x float> %wide.load149, %broadcast.splat
  %352 = bitcast float* %349 to <8 x float>*
  store <8 x float> %351, <8 x float>* %352, align 4, !tbaa !12, !llvm.access.group !16
  %353 = add nsw i32 %178, %conv.i.29
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds float, float* %2, i64 %354
  %356 = bitcast float* %355 to <8 x float>*
  %wide.load150 = load <8 x float>, <8 x float>* %356, align 4, !tbaa !12, !llvm.access.group !16
  %357 = fmul <8 x float> %wide.load150, %broadcast.splat
  %358 = bitcast float* %355 to <8 x float>*
  store <8 x float> %357, <8 x float>* %358, align 4, !tbaa !12, !llvm.access.group !16
  %359 = add nsw i32 %178, %conv.i.30
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds float, float* %2, i64 %360
  %362 = bitcast float* %361 to <8 x float>*
  %wide.load151 = load <8 x float>, <8 x float>* %362, align 4, !tbaa !12, !llvm.access.group !16
  %363 = fmul <8 x float> %wide.load151, %broadcast.splat
  %364 = bitcast float* %361 to <8 x float>*
  store <8 x float> %363, <8 x float>* %364, align 4, !tbaa !12, !llvm.access.group !16
  %365 = add nsw i32 %178, %conv.i.31
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds float, float* %2, i64 %366
  %368 = bitcast float* %367 to <8 x float>*
  %wide.load152 = load <8 x float>, <8 x float>* %368, align 4, !tbaa !12, !llvm.access.group !16
  %369 = fmul <8 x float> %wide.load152, %broadcast.splat
  %370 = bitcast float* %367 to <8 x float>*
  store <8 x float> %369, <8 x float>* %370, align 4, !tbaa !12, !llvm.access.group !16
  br label %syr2k_kernel.exit

pregion_for_entry.pregion_for_init.i.us.preheader: ; preds = %11
  %conv2.i.us = trunc i64 %mul3.i.i to i32
  %mul.i.us = mul nsw i32 %conv2.i.us, %6
  %mul5.i.us = mul nsw i32 %conv2.i.us, %5
  %371 = sext i32 %mul5.i.us to i64
  br label %pregion_for_entry.entry.i.us.us

pregion_for_entry.entry.i.us.us:                  ; preds = %for.end.r_exit.i.loopexit.us.us, %pregion_for_entry.pregion_for_init.i.us.preheader
  %_local_id_x.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.us.preheader ], [ %374, %for.end.r_exit.i.loopexit.us.us ]
  %add1.i.i.us.us = add nuw nsw i64 %_local_id_x.0.us.us, %mul.i.i
  %conv.i.us.us = trunc i64 %add1.i.i.us.us to i32
  %add.i.us.us = add nsw i32 %mul.i.us, %conv.i.us.us
  %idxprom.i.us.us = sext i32 %add.i.us.us to i64
  %arrayidx.i.us.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us
  %372 = load float, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us = fmul float %372, %4
  store float %mul3.i.us.us, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us = mul nsw i32 %conv.i.us.us, %5
  %373 = sext i32 %mul10.i.us.us to i64
  br label %for.body.i.us.us

for.end.r_exit.i.loopexit.us.us:                  ; preds = %for.body.i.us.us
  %374 = add nuw nsw i64 %_local_id_x.0.us.us, 1
  %exitcond.not = icmp eq i64 %374, 32
  br i1 %exitcond.not, label %pregion_for_end.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.us.us, !llvm.loop !19

for.body.i.us.us:                                 ; preds = %for.body.i.us.us, %pregion_for_entry.entry.i.us.us
  %indvars.iv.next.i3.us.us = phi i64 [ %indvars.iv.next.i.us.us, %for.body.i.us.us ], [ 0, %pregion_for_entry.entry.i.us.us ]
  %add29.i1.us.us = phi float [ %add29.i.us.us, %for.body.i.us.us ], [ %mul3.i.us.us, %pregion_for_entry.entry.i.us.us ]
  %375 = add nsw i64 %indvars.iv.next.i3.us.us, %371
  %arrayidx8.i.us.us = getelementptr inbounds float, float* %0, i64 %375
  %376 = load float, float* %arrayidx8.i.us.us, align 4, !tbaa !12
  %mul9.i.us.us = fmul float %376, %3
  %377 = add nsw i64 %indvars.iv.next.i3.us.us, %373
  %arrayidx13.i.us.us = getelementptr inbounds float, float* %1, i64 %377
  %378 = load float, float* %arrayidx13.i.us.us, align 4, !tbaa !12
  %arrayidx18.i.us.us = getelementptr inbounds float, float* %1, i64 %375
  %379 = load float, float* %arrayidx18.i.us.us, align 4, !tbaa !12
  %mul19.i.us.us = fmul float %379, %3
  %arrayidx23.i.us.us = getelementptr inbounds float, float* %0, i64 %377
  %380 = load float, float* %arrayidx23.i.us.us, align 4, !tbaa !12
  %mul24.i.us.us = fmul float %mul19.i.us.us, %380
  %381 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us, float %378, float %mul24.i.us.us) #2
  %add29.i.us.us = fadd float %add29.i1.us.us, %381
  store float %add29.i.us.us, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.next.i3.us.us, 1
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %for.end.r_exit.i.loopexit.us.us, label %for.body.i.us.us, !llvm.loop !21

pregion_for_end.i.us-lcssa.us.us:                 ; preds = %for.end.r_exit.i.loopexit.us.us
  %382 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.1 = or i32 %382, 1
  %mul.i.us.1 = mul nsw i32 %conv2.i.us.1, %6
  %mul5.i.us.1 = mul nsw i32 %conv2.i.us.1, %5
  %383 = sext i32 %mul5.i.us.1 to i64
  br label %pregion_for_entry.entry.i.us.us.1

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_entry.pregion_for_init.i, %pregion_for_entry.pregion_for_init.i.preheader156
  %_local_id_y.0 = phi i64 [ %416, %pregion_for_entry.pregion_for_init.i ], [ 0, %pregion_for_entry.pregion_for_init.i.preheader156 ]
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %mul.i = mul nsw i32 %conv2.i, %6
  %add.i = add nsw i32 %mul.i, %conv.i
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %2, i64 %idxprom.i
  %384 = load float, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i = fmul float %384, %4
  store float %mul3.i, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.1 = add nsw i32 %mul.i, %conv.i.1
  %idxprom.i.1 = sext i32 %add.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.1
  %385 = load float, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.1 = fmul float %385, %4
  store float %mul3.i.1, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.2 = add nsw i32 %mul.i, %conv.i.2
  %idxprom.i.2 = sext i32 %add.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.2
  %386 = load float, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.2 = fmul float %386, %4
  store float %mul3.i.2, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.3 = add nsw i32 %mul.i, %conv.i.3
  %idxprom.i.3 = sext i32 %add.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.3
  %387 = load float, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.3 = fmul float %387, %4
  store float %mul3.i.3, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.4 = add nsw i32 %mul.i, %conv.i.4
  %idxprom.i.4 = sext i32 %add.i.4 to i64
  %arrayidx.i.4 = getelementptr inbounds float, float* %2, i64 %idxprom.i.4
  %388 = load float, float* %arrayidx.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.4 = fmul float %388, %4
  store float %mul3.i.4, float* %arrayidx.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.5 = add nsw i32 %mul.i, %conv.i.5
  %idxprom.i.5 = sext i32 %add.i.5 to i64
  %arrayidx.i.5 = getelementptr inbounds float, float* %2, i64 %idxprom.i.5
  %389 = load float, float* %arrayidx.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.5 = fmul float %389, %4
  store float %mul3.i.5, float* %arrayidx.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.6 = add nsw i32 %mul.i, %conv.i.6
  %idxprom.i.6 = sext i32 %add.i.6 to i64
  %arrayidx.i.6 = getelementptr inbounds float, float* %2, i64 %idxprom.i.6
  %390 = load float, float* %arrayidx.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.6 = fmul float %390, %4
  store float %mul3.i.6, float* %arrayidx.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.7 = add nsw i32 %mul.i, %conv.i.7
  %idxprom.i.7 = sext i32 %add.i.7 to i64
  %arrayidx.i.7 = getelementptr inbounds float, float* %2, i64 %idxprom.i.7
  %391 = load float, float* %arrayidx.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.7 = fmul float %391, %4
  store float %mul3.i.7, float* %arrayidx.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.8 = add nsw i32 %mul.i, %conv.i.8
  %idxprom.i.8 = sext i32 %add.i.8 to i64
  %arrayidx.i.8 = getelementptr inbounds float, float* %2, i64 %idxprom.i.8
  %392 = load float, float* %arrayidx.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.8 = fmul float %392, %4
  store float %mul3.i.8, float* %arrayidx.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.9 = add nsw i32 %mul.i, %conv.i.9
  %idxprom.i.9 = sext i32 %add.i.9 to i64
  %arrayidx.i.9 = getelementptr inbounds float, float* %2, i64 %idxprom.i.9
  %393 = load float, float* %arrayidx.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.9 = fmul float %393, %4
  store float %mul3.i.9, float* %arrayidx.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.10 = add nsw i32 %mul.i, %conv.i.10
  %idxprom.i.10 = sext i32 %add.i.10 to i64
  %arrayidx.i.10 = getelementptr inbounds float, float* %2, i64 %idxprom.i.10
  %394 = load float, float* %arrayidx.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.10 = fmul float %394, %4
  store float %mul3.i.10, float* %arrayidx.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.11 = add nsw i32 %mul.i, %conv.i.11
  %idxprom.i.11 = sext i32 %add.i.11 to i64
  %arrayidx.i.11 = getelementptr inbounds float, float* %2, i64 %idxprom.i.11
  %395 = load float, float* %arrayidx.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.11 = fmul float %395, %4
  store float %mul3.i.11, float* %arrayidx.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.12 = add nsw i32 %mul.i, %conv.i.12
  %idxprom.i.12 = sext i32 %add.i.12 to i64
  %arrayidx.i.12 = getelementptr inbounds float, float* %2, i64 %idxprom.i.12
  %396 = load float, float* %arrayidx.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.12 = fmul float %396, %4
  store float %mul3.i.12, float* %arrayidx.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.13 = add nsw i32 %mul.i, %conv.i.13
  %idxprom.i.13 = sext i32 %add.i.13 to i64
  %arrayidx.i.13 = getelementptr inbounds float, float* %2, i64 %idxprom.i.13
  %397 = load float, float* %arrayidx.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.13 = fmul float %397, %4
  store float %mul3.i.13, float* %arrayidx.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.14 = add nsw i32 %mul.i, %conv.i.14
  %idxprom.i.14 = sext i32 %add.i.14 to i64
  %arrayidx.i.14 = getelementptr inbounds float, float* %2, i64 %idxprom.i.14
  %398 = load float, float* %arrayidx.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.14 = fmul float %398, %4
  store float %mul3.i.14, float* %arrayidx.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.15 = add nsw i32 %mul.i, %conv.i.15
  %idxprom.i.15 = sext i32 %add.i.15 to i64
  %arrayidx.i.15 = getelementptr inbounds float, float* %2, i64 %idxprom.i.15
  %399 = load float, float* %arrayidx.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.15 = fmul float %399, %4
  store float %mul3.i.15, float* %arrayidx.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.16 = add nsw i32 %mul.i, %conv.i.16
  %idxprom.i.16 = sext i32 %add.i.16 to i64
  %arrayidx.i.16 = getelementptr inbounds float, float* %2, i64 %idxprom.i.16
  %400 = load float, float* %arrayidx.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.16 = fmul float %400, %4
  store float %mul3.i.16, float* %arrayidx.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.17 = add nsw i32 %mul.i, %conv.i.17
  %idxprom.i.17 = sext i32 %add.i.17 to i64
  %arrayidx.i.17 = getelementptr inbounds float, float* %2, i64 %idxprom.i.17
  %401 = load float, float* %arrayidx.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.17 = fmul float %401, %4
  store float %mul3.i.17, float* %arrayidx.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.18 = add nsw i32 %mul.i, %conv.i.18
  %idxprom.i.18 = sext i32 %add.i.18 to i64
  %arrayidx.i.18 = getelementptr inbounds float, float* %2, i64 %idxprom.i.18
  %402 = load float, float* %arrayidx.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.18 = fmul float %402, %4
  store float %mul3.i.18, float* %arrayidx.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.19 = add nsw i32 %mul.i, %conv.i.19
  %idxprom.i.19 = sext i32 %add.i.19 to i64
  %arrayidx.i.19 = getelementptr inbounds float, float* %2, i64 %idxprom.i.19
  %403 = load float, float* %arrayidx.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.19 = fmul float %403, %4
  store float %mul3.i.19, float* %arrayidx.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.20 = add nsw i32 %mul.i, %conv.i.20
  %idxprom.i.20 = sext i32 %add.i.20 to i64
  %arrayidx.i.20 = getelementptr inbounds float, float* %2, i64 %idxprom.i.20
  %404 = load float, float* %arrayidx.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.20 = fmul float %404, %4
  store float %mul3.i.20, float* %arrayidx.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.21 = add nsw i32 %mul.i, %conv.i.21
  %idxprom.i.21 = sext i32 %add.i.21 to i64
  %arrayidx.i.21 = getelementptr inbounds float, float* %2, i64 %idxprom.i.21
  %405 = load float, float* %arrayidx.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.21 = fmul float %405, %4
  store float %mul3.i.21, float* %arrayidx.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.22 = add nsw i32 %mul.i, %conv.i.22
  %idxprom.i.22 = sext i32 %add.i.22 to i64
  %arrayidx.i.22 = getelementptr inbounds float, float* %2, i64 %idxprom.i.22
  %406 = load float, float* %arrayidx.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.22 = fmul float %406, %4
  store float %mul3.i.22, float* %arrayidx.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.23 = add nsw i32 %mul.i, %conv.i.23
  %idxprom.i.23 = sext i32 %add.i.23 to i64
  %arrayidx.i.23 = getelementptr inbounds float, float* %2, i64 %idxprom.i.23
  %407 = load float, float* %arrayidx.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.23 = fmul float %407, %4
  store float %mul3.i.23, float* %arrayidx.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.24 = add nsw i32 %mul.i, %conv.i.24
  %idxprom.i.24 = sext i32 %add.i.24 to i64
  %arrayidx.i.24 = getelementptr inbounds float, float* %2, i64 %idxprom.i.24
  %408 = load float, float* %arrayidx.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.24 = fmul float %408, %4
  store float %mul3.i.24, float* %arrayidx.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.25 = add nsw i32 %mul.i, %conv.i.25
  %idxprom.i.25 = sext i32 %add.i.25 to i64
  %arrayidx.i.25 = getelementptr inbounds float, float* %2, i64 %idxprom.i.25
  %409 = load float, float* %arrayidx.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.25 = fmul float %409, %4
  store float %mul3.i.25, float* %arrayidx.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.26 = add nsw i32 %mul.i, %conv.i.26
  %idxprom.i.26 = sext i32 %add.i.26 to i64
  %arrayidx.i.26 = getelementptr inbounds float, float* %2, i64 %idxprom.i.26
  %410 = load float, float* %arrayidx.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.26 = fmul float %410, %4
  store float %mul3.i.26, float* %arrayidx.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.27 = add nsw i32 %mul.i, %conv.i.27
  %idxprom.i.27 = sext i32 %add.i.27 to i64
  %arrayidx.i.27 = getelementptr inbounds float, float* %2, i64 %idxprom.i.27
  %411 = load float, float* %arrayidx.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.27 = fmul float %411, %4
  store float %mul3.i.27, float* %arrayidx.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.28 = add nsw i32 %mul.i, %conv.i.28
  %idxprom.i.28 = sext i32 %add.i.28 to i64
  %arrayidx.i.28 = getelementptr inbounds float, float* %2, i64 %idxprom.i.28
  %412 = load float, float* %arrayidx.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.28 = fmul float %412, %4
  store float %mul3.i.28, float* %arrayidx.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.29 = add nsw i32 %mul.i, %conv.i.29
  %idxprom.i.29 = sext i32 %add.i.29 to i64
  %arrayidx.i.29 = getelementptr inbounds float, float* %2, i64 %idxprom.i.29
  %413 = load float, float* %arrayidx.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.29 = fmul float %413, %4
  store float %mul3.i.29, float* %arrayidx.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.30 = add nsw i32 %mul.i, %conv.i.30
  %idxprom.i.30 = sext i32 %add.i.30 to i64
  %arrayidx.i.30 = getelementptr inbounds float, float* %2, i64 %idxprom.i.30
  %414 = load float, float* %arrayidx.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.30 = fmul float %414, %4
  store float %mul3.i.30, float* %arrayidx.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.31 = add nsw i32 %mul.i, %conv.i.31
  %idxprom.i.31 = sext i32 %add.i.31 to i64
  %arrayidx.i.31 = getelementptr inbounds float, float* %2, i64 %idxprom.i.31
  %415 = load float, float* %arrayidx.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.31 = fmul float %415, %4
  store float %mul3.i.31, float* %arrayidx.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %416 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond38.not = icmp eq i64 %416, 8
  br i1 %exitcond38.not, label %syr2k_kernel.exit.loopexit157, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !23

syr2k_kernel.exit.loopexit:                       ; preds = %for.end.r_exit.i.loopexit.us.us.7
  br label %syr2k_kernel.exit

syr2k_kernel.exit.loopexit157:                    ; preds = %pregion_for_entry.pregion_for_init.i
  br label %syr2k_kernel.exit

syr2k_kernel.exit:                                ; preds = %syr2k_kernel.exit.loopexit157, %syr2k_kernel.exit.loopexit, %vector.ph
  ret void

pregion_for_entry.entry.i.us.us.1:                ; preds = %for.end.r_exit.i.loopexit.us.us.1, %pregion_for_end.i.us-lcssa.us.us
  %_local_id_x.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us ], [ %426, %for.end.r_exit.i.loopexit.us.us.1 ]
  %add1.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.0.us.us.1, %mul.i.i
  %conv.i.us.us.1 = trunc i64 %add1.i.i.us.us.1 to i32
  %add.i.us.us.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1
  %idxprom.i.us.us.1 = sext i32 %add.i.us.us.1 to i64
  %arrayidx.i.us.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.1
  %417 = load float, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.1 = fmul float %417, %4
  store float %mul3.i.us.us.1, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.1 = mul nsw i32 %conv.i.us.us.1, %5
  %418 = sext i32 %mul10.i.us.us.1 to i64
  br label %for.body.i.us.us.1

for.body.i.us.us.1:                               ; preds = %for.body.i.us.us.1, %pregion_for_entry.entry.i.us.us.1
  %indvars.iv.next.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1, %for.body.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.us.us.1 ]
  %add29.i1.us.us.1 = phi float [ %add29.i.us.us.1, %for.body.i.us.us.1 ], [ %mul3.i.us.us.1, %pregion_for_entry.entry.i.us.us.1 ]
  %419 = add nsw i64 %indvars.iv.next.i3.us.us.1, %383
  %arrayidx8.i.us.us.1 = getelementptr inbounds float, float* %0, i64 %419
  %420 = load float, float* %arrayidx8.i.us.us.1, align 4, !tbaa !12
  %mul9.i.us.us.1 = fmul float %420, %3
  %421 = add nsw i64 %indvars.iv.next.i3.us.us.1, %418
  %arrayidx13.i.us.us.1 = getelementptr inbounds float, float* %1, i64 %421
  %422 = load float, float* %arrayidx13.i.us.us.1, align 4, !tbaa !12
  %arrayidx18.i.us.us.1 = getelementptr inbounds float, float* %1, i64 %419
  %423 = load float, float* %arrayidx18.i.us.us.1, align 4, !tbaa !12
  %mul19.i.us.us.1 = fmul float %423, %3
  %arrayidx23.i.us.us.1 = getelementptr inbounds float, float* %0, i64 %421
  %424 = load float, float* %arrayidx23.i.us.us.1, align 4, !tbaa !12
  %mul24.i.us.us.1 = fmul float %mul19.i.us.us.1, %424
  %425 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.1, float %422, float %mul24.i.us.us.1) #2
  %add29.i.us.us.1 = fadd float %add29.i1.us.us.1, %425
  store float %add29.i.us.us.1, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i3.us.us.1, 1
  %exitcond.not.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1, label %for.end.r_exit.i.loopexit.us.us.1, label %for.body.i.us.us.1, !llvm.loop !21

for.end.r_exit.i.loopexit.us.us.1:                ; preds = %for.body.i.us.us.1
  %426 = add nuw nsw i64 %_local_id_x.0.us.us.1, 1
  %exitcond.1.not = icmp eq i64 %426, 32
  br i1 %exitcond.1.not, label %pregion_for_end.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.us.us.1, !llvm.loop !19

pregion_for_end.i.us-lcssa.us.us.1:               ; preds = %for.end.r_exit.i.loopexit.us.us.1
  %427 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.2 = or i32 %427, 2
  %mul.i.us.2 = mul nsw i32 %conv2.i.us.2, %6
  %mul5.i.us.2 = mul nsw i32 %conv2.i.us.2, %5
  %428 = sext i32 %mul5.i.us.2 to i64
  br label %pregion_for_entry.entry.i.us.us.2

pregion_for_entry.entry.i.us.us.2:                ; preds = %for.end.r_exit.i.loopexit.us.us.2, %pregion_for_end.i.us-lcssa.us.us.1
  %_local_id_x.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.1 ], [ %438, %for.end.r_exit.i.loopexit.us.us.2 ]
  %add1.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.0.us.us.2, %mul.i.i
  %conv.i.us.us.2 = trunc i64 %add1.i.i.us.us.2 to i32
  %add.i.us.us.2 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2
  %idxprom.i.us.us.2 = sext i32 %add.i.us.us.2 to i64
  %arrayidx.i.us.us.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.2
  %429 = load float, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.2 = fmul float %429, %4
  store float %mul3.i.us.us.2, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.2 = mul nsw i32 %conv.i.us.us.2, %5
  %430 = sext i32 %mul10.i.us.us.2 to i64
  br label %for.body.i.us.us.2

for.body.i.us.us.2:                               ; preds = %for.body.i.us.us.2, %pregion_for_entry.entry.i.us.us.2
  %indvars.iv.next.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.us.us.2, %for.body.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.us.us.2 ]
  %add29.i1.us.us.2 = phi float [ %add29.i.us.us.2, %for.body.i.us.us.2 ], [ %mul3.i.us.us.2, %pregion_for_entry.entry.i.us.us.2 ]
  %431 = add nsw i64 %indvars.iv.next.i3.us.us.2, %428
  %arrayidx8.i.us.us.2 = getelementptr inbounds float, float* %0, i64 %431
  %432 = load float, float* %arrayidx8.i.us.us.2, align 4, !tbaa !12
  %mul9.i.us.us.2 = fmul float %432, %3
  %433 = add nsw i64 %indvars.iv.next.i3.us.us.2, %430
  %arrayidx13.i.us.us.2 = getelementptr inbounds float, float* %1, i64 %433
  %434 = load float, float* %arrayidx13.i.us.us.2, align 4, !tbaa !12
  %arrayidx18.i.us.us.2 = getelementptr inbounds float, float* %1, i64 %431
  %435 = load float, float* %arrayidx18.i.us.us.2, align 4, !tbaa !12
  %mul19.i.us.us.2 = fmul float %435, %3
  %arrayidx23.i.us.us.2 = getelementptr inbounds float, float* %0, i64 %433
  %436 = load float, float* %arrayidx23.i.us.us.2, align 4, !tbaa !12
  %mul24.i.us.us.2 = fmul float %mul19.i.us.us.2, %436
  %437 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.2, float %434, float %mul24.i.us.us.2) #2
  %add29.i.us.us.2 = fadd float %add29.i1.us.us.2, %437
  store float %add29.i.us.us.2, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i3.us.us.2, 1
  %exitcond.not.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.us.us.2, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2, label %for.end.r_exit.i.loopexit.us.us.2, label %for.body.i.us.us.2, !llvm.loop !21

for.end.r_exit.i.loopexit.us.us.2:                ; preds = %for.body.i.us.us.2
  %438 = add nuw nsw i64 %_local_id_x.0.us.us.2, 1
  %exitcond.2.not = icmp eq i64 %438, 32
  br i1 %exitcond.2.not, label %pregion_for_end.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.us.us.2, !llvm.loop !19

pregion_for_end.i.us-lcssa.us.us.2:               ; preds = %for.end.r_exit.i.loopexit.us.us.2
  %439 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.3 = or i32 %439, 3
  %mul.i.us.3 = mul nsw i32 %conv2.i.us.3, %6
  %mul5.i.us.3 = mul nsw i32 %conv2.i.us.3, %5
  %440 = sext i32 %mul5.i.us.3 to i64
  br label %pregion_for_entry.entry.i.us.us.3

pregion_for_entry.entry.i.us.us.3:                ; preds = %for.end.r_exit.i.loopexit.us.us.3, %pregion_for_end.i.us-lcssa.us.us.2
  %_local_id_x.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.2 ], [ %450, %for.end.r_exit.i.loopexit.us.us.3 ]
  %add1.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.0.us.us.3, %mul.i.i
  %conv.i.us.us.3 = trunc i64 %add1.i.i.us.us.3 to i32
  %add.i.us.us.3 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3
  %idxprom.i.us.us.3 = sext i32 %add.i.us.us.3 to i64
  %arrayidx.i.us.us.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.3
  %441 = load float, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.3 = fmul float %441, %4
  store float %mul3.i.us.us.3, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.3 = mul nsw i32 %conv.i.us.us.3, %5
  %442 = sext i32 %mul10.i.us.us.3 to i64
  br label %for.body.i.us.us.3

for.body.i.us.us.3:                               ; preds = %for.body.i.us.us.3, %pregion_for_entry.entry.i.us.us.3
  %indvars.iv.next.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.us.us.3, %for.body.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.us.us.3 ]
  %add29.i1.us.us.3 = phi float [ %add29.i.us.us.3, %for.body.i.us.us.3 ], [ %mul3.i.us.us.3, %pregion_for_entry.entry.i.us.us.3 ]
  %443 = add nsw i64 %indvars.iv.next.i3.us.us.3, %440
  %arrayidx8.i.us.us.3 = getelementptr inbounds float, float* %0, i64 %443
  %444 = load float, float* %arrayidx8.i.us.us.3, align 4, !tbaa !12
  %mul9.i.us.us.3 = fmul float %444, %3
  %445 = add nsw i64 %indvars.iv.next.i3.us.us.3, %442
  %arrayidx13.i.us.us.3 = getelementptr inbounds float, float* %1, i64 %445
  %446 = load float, float* %arrayidx13.i.us.us.3, align 4, !tbaa !12
  %arrayidx18.i.us.us.3 = getelementptr inbounds float, float* %1, i64 %443
  %447 = load float, float* %arrayidx18.i.us.us.3, align 4, !tbaa !12
  %mul19.i.us.us.3 = fmul float %447, %3
  %arrayidx23.i.us.us.3 = getelementptr inbounds float, float* %0, i64 %445
  %448 = load float, float* %arrayidx23.i.us.us.3, align 4, !tbaa !12
  %mul24.i.us.us.3 = fmul float %mul19.i.us.us.3, %448
  %449 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.3, float %446, float %mul24.i.us.us.3) #2
  %add29.i.us.us.3 = fadd float %add29.i1.us.us.3, %449
  store float %add29.i.us.us.3, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i3.us.us.3, 1
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3, label %for.end.r_exit.i.loopexit.us.us.3, label %for.body.i.us.us.3, !llvm.loop !21

for.end.r_exit.i.loopexit.us.us.3:                ; preds = %for.body.i.us.us.3
  %450 = add nuw nsw i64 %_local_id_x.0.us.us.3, 1
  %exitcond.3.not = icmp eq i64 %450, 32
  br i1 %exitcond.3.not, label %pregion_for_end.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.us.us.3, !llvm.loop !19

pregion_for_end.i.us-lcssa.us.us.3:               ; preds = %for.end.r_exit.i.loopexit.us.us.3
  %451 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.4 = or i32 %451, 4
  %mul.i.us.4 = mul nsw i32 %conv2.i.us.4, %6
  %mul5.i.us.4 = mul nsw i32 %conv2.i.us.4, %5
  %452 = sext i32 %mul5.i.us.4 to i64
  br label %pregion_for_entry.entry.i.us.us.4

pregion_for_entry.entry.i.us.us.4:                ; preds = %for.end.r_exit.i.loopexit.us.us.4, %pregion_for_end.i.us-lcssa.us.us.3
  %_local_id_x.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.3 ], [ %462, %for.end.r_exit.i.loopexit.us.us.4 ]
  %add1.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.0.us.us.4, %mul.i.i
  %conv.i.us.us.4 = trunc i64 %add1.i.i.us.us.4 to i32
  %add.i.us.us.4 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4
  %idxprom.i.us.us.4 = sext i32 %add.i.us.us.4 to i64
  %arrayidx.i.us.us.4 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.4
  %453 = load float, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.4 = fmul float %453, %4
  store float %mul3.i.us.us.4, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.4 = mul nsw i32 %conv.i.us.us.4, %5
  %454 = sext i32 %mul10.i.us.us.4 to i64
  br label %for.body.i.us.us.4

for.body.i.us.us.4:                               ; preds = %for.body.i.us.us.4, %pregion_for_entry.entry.i.us.us.4
  %indvars.iv.next.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.us.us.4, %for.body.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.us.us.4 ]
  %add29.i1.us.us.4 = phi float [ %add29.i.us.us.4, %for.body.i.us.us.4 ], [ %mul3.i.us.us.4, %pregion_for_entry.entry.i.us.us.4 ]
  %455 = add nsw i64 %indvars.iv.next.i3.us.us.4, %452
  %arrayidx8.i.us.us.4 = getelementptr inbounds float, float* %0, i64 %455
  %456 = load float, float* %arrayidx8.i.us.us.4, align 4, !tbaa !12
  %mul9.i.us.us.4 = fmul float %456, %3
  %457 = add nsw i64 %indvars.iv.next.i3.us.us.4, %454
  %arrayidx13.i.us.us.4 = getelementptr inbounds float, float* %1, i64 %457
  %458 = load float, float* %arrayidx13.i.us.us.4, align 4, !tbaa !12
  %arrayidx18.i.us.us.4 = getelementptr inbounds float, float* %1, i64 %455
  %459 = load float, float* %arrayidx18.i.us.us.4, align 4, !tbaa !12
  %mul19.i.us.us.4 = fmul float %459, %3
  %arrayidx23.i.us.us.4 = getelementptr inbounds float, float* %0, i64 %457
  %460 = load float, float* %arrayidx23.i.us.us.4, align 4, !tbaa !12
  %mul24.i.us.us.4 = fmul float %mul19.i.us.us.4, %460
  %461 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.4, float %458, float %mul24.i.us.us.4) #2
  %add29.i.us.us.4 = fadd float %add29.i1.us.us.4, %461
  store float %add29.i.us.us.4, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i3.us.us.4, 1
  %exitcond.not.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.us.us.4, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4, label %for.end.r_exit.i.loopexit.us.us.4, label %for.body.i.us.us.4, !llvm.loop !21

for.end.r_exit.i.loopexit.us.us.4:                ; preds = %for.body.i.us.us.4
  %462 = add nuw nsw i64 %_local_id_x.0.us.us.4, 1
  %exitcond.4.not = icmp eq i64 %462, 32
  br i1 %exitcond.4.not, label %pregion_for_end.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.us.us.4, !llvm.loop !19

pregion_for_end.i.us-lcssa.us.us.4:               ; preds = %for.end.r_exit.i.loopexit.us.us.4
  %463 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.5 = or i32 %463, 5
  %mul.i.us.5 = mul nsw i32 %conv2.i.us.5, %6
  %mul5.i.us.5 = mul nsw i32 %conv2.i.us.5, %5
  %464 = sext i32 %mul5.i.us.5 to i64
  br label %pregion_for_entry.entry.i.us.us.5

pregion_for_entry.entry.i.us.us.5:                ; preds = %for.end.r_exit.i.loopexit.us.us.5, %pregion_for_end.i.us-lcssa.us.us.4
  %_local_id_x.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.4 ], [ %474, %for.end.r_exit.i.loopexit.us.us.5 ]
  %add1.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.0.us.us.5, %mul.i.i
  %conv.i.us.us.5 = trunc i64 %add1.i.i.us.us.5 to i32
  %add.i.us.us.5 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5
  %idxprom.i.us.us.5 = sext i32 %add.i.us.us.5 to i64
  %arrayidx.i.us.us.5 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.5
  %465 = load float, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.5 = fmul float %465, %4
  store float %mul3.i.us.us.5, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.5 = mul nsw i32 %conv.i.us.us.5, %5
  %466 = sext i32 %mul10.i.us.us.5 to i64
  br label %for.body.i.us.us.5

for.body.i.us.us.5:                               ; preds = %for.body.i.us.us.5, %pregion_for_entry.entry.i.us.us.5
  %indvars.iv.next.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.us.us.5, %for.body.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.us.us.5 ]
  %add29.i1.us.us.5 = phi float [ %add29.i.us.us.5, %for.body.i.us.us.5 ], [ %mul3.i.us.us.5, %pregion_for_entry.entry.i.us.us.5 ]
  %467 = add nsw i64 %indvars.iv.next.i3.us.us.5, %464
  %arrayidx8.i.us.us.5 = getelementptr inbounds float, float* %0, i64 %467
  %468 = load float, float* %arrayidx8.i.us.us.5, align 4, !tbaa !12
  %mul9.i.us.us.5 = fmul float %468, %3
  %469 = add nsw i64 %indvars.iv.next.i3.us.us.5, %466
  %arrayidx13.i.us.us.5 = getelementptr inbounds float, float* %1, i64 %469
  %470 = load float, float* %arrayidx13.i.us.us.5, align 4, !tbaa !12
  %arrayidx18.i.us.us.5 = getelementptr inbounds float, float* %1, i64 %467
  %471 = load float, float* %arrayidx18.i.us.us.5, align 4, !tbaa !12
  %mul19.i.us.us.5 = fmul float %471, %3
  %arrayidx23.i.us.us.5 = getelementptr inbounds float, float* %0, i64 %469
  %472 = load float, float* %arrayidx23.i.us.us.5, align 4, !tbaa !12
  %mul24.i.us.us.5 = fmul float %mul19.i.us.us.5, %472
  %473 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.5, float %470, float %mul24.i.us.us.5) #2
  %add29.i.us.us.5 = fadd float %add29.i1.us.us.5, %473
  store float %add29.i.us.us.5, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i3.us.us.5, 1
  %exitcond.not.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.us.us.5, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5, label %for.end.r_exit.i.loopexit.us.us.5, label %for.body.i.us.us.5, !llvm.loop !21

for.end.r_exit.i.loopexit.us.us.5:                ; preds = %for.body.i.us.us.5
  %474 = add nuw nsw i64 %_local_id_x.0.us.us.5, 1
  %exitcond.5.not = icmp eq i64 %474, 32
  br i1 %exitcond.5.not, label %pregion_for_end.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.us.us.5, !llvm.loop !19

pregion_for_end.i.us-lcssa.us.us.5:               ; preds = %for.end.r_exit.i.loopexit.us.us.5
  %475 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.6 = or i32 %475, 6
  %mul.i.us.6 = mul nsw i32 %conv2.i.us.6, %6
  %mul5.i.us.6 = mul nsw i32 %conv2.i.us.6, %5
  %476 = sext i32 %mul5.i.us.6 to i64
  br label %pregion_for_entry.entry.i.us.us.6

pregion_for_entry.entry.i.us.us.6:                ; preds = %for.end.r_exit.i.loopexit.us.us.6, %pregion_for_end.i.us-lcssa.us.us.5
  %_local_id_x.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.5 ], [ %486, %for.end.r_exit.i.loopexit.us.us.6 ]
  %add1.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.0.us.us.6, %mul.i.i
  %conv.i.us.us.6 = trunc i64 %add1.i.i.us.us.6 to i32
  %add.i.us.us.6 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6
  %idxprom.i.us.us.6 = sext i32 %add.i.us.us.6 to i64
  %arrayidx.i.us.us.6 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.6
  %477 = load float, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.6 = fmul float %477, %4
  store float %mul3.i.us.us.6, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.6 = mul nsw i32 %conv.i.us.us.6, %5
  %478 = sext i32 %mul10.i.us.us.6 to i64
  br label %for.body.i.us.us.6

for.body.i.us.us.6:                               ; preds = %for.body.i.us.us.6, %pregion_for_entry.entry.i.us.us.6
  %indvars.iv.next.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.us.us.6, %for.body.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.us.us.6 ]
  %add29.i1.us.us.6 = phi float [ %add29.i.us.us.6, %for.body.i.us.us.6 ], [ %mul3.i.us.us.6, %pregion_for_entry.entry.i.us.us.6 ]
  %479 = add nsw i64 %indvars.iv.next.i3.us.us.6, %476
  %arrayidx8.i.us.us.6 = getelementptr inbounds float, float* %0, i64 %479
  %480 = load float, float* %arrayidx8.i.us.us.6, align 4, !tbaa !12
  %mul9.i.us.us.6 = fmul float %480, %3
  %481 = add nsw i64 %indvars.iv.next.i3.us.us.6, %478
  %arrayidx13.i.us.us.6 = getelementptr inbounds float, float* %1, i64 %481
  %482 = load float, float* %arrayidx13.i.us.us.6, align 4, !tbaa !12
  %arrayidx18.i.us.us.6 = getelementptr inbounds float, float* %1, i64 %479
  %483 = load float, float* %arrayidx18.i.us.us.6, align 4, !tbaa !12
  %mul19.i.us.us.6 = fmul float %483, %3
  %arrayidx23.i.us.us.6 = getelementptr inbounds float, float* %0, i64 %481
  %484 = load float, float* %arrayidx23.i.us.us.6, align 4, !tbaa !12
  %mul24.i.us.us.6 = fmul float %mul19.i.us.us.6, %484
  %485 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.6, float %482, float %mul24.i.us.us.6) #2
  %add29.i.us.us.6 = fadd float %add29.i1.us.us.6, %485
  store float %add29.i.us.us.6, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i3.us.us.6, 1
  %exitcond.not.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.us.us.6, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6, label %for.end.r_exit.i.loopexit.us.us.6, label %for.body.i.us.us.6, !llvm.loop !21

for.end.r_exit.i.loopexit.us.us.6:                ; preds = %for.body.i.us.us.6
  %486 = add nuw nsw i64 %_local_id_x.0.us.us.6, 1
  %exitcond.6.not = icmp eq i64 %486, 32
  br i1 %exitcond.6.not, label %pregion_for_end.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.us.us.6, !llvm.loop !19

pregion_for_end.i.us-lcssa.us.us.6:               ; preds = %for.end.r_exit.i.loopexit.us.us.6
  %487 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.7 = or i32 %487, 7
  %mul.i.us.7 = mul nsw i32 %conv2.i.us.7, %6
  %mul5.i.us.7 = mul nsw i32 %conv2.i.us.7, %5
  %488 = sext i32 %mul5.i.us.7 to i64
  br label %pregion_for_entry.entry.i.us.us.7

pregion_for_entry.entry.i.us.us.7:                ; preds = %for.end.r_exit.i.loopexit.us.us.7, %pregion_for_end.i.us-lcssa.us.us.6
  %_local_id_x.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.6 ], [ %498, %for.end.r_exit.i.loopexit.us.us.7 ]
  %add1.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.0.us.us.7, %mul.i.i
  %conv.i.us.us.7 = trunc i64 %add1.i.i.us.us.7 to i32
  %add.i.us.us.7 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7
  %idxprom.i.us.us.7 = sext i32 %add.i.us.us.7 to i64
  %arrayidx.i.us.us.7 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.7
  %489 = load float, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.7 = fmul float %489, %4
  store float %mul3.i.us.us.7, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.7 = mul nsw i32 %conv.i.us.us.7, %5
  %490 = sext i32 %mul10.i.us.us.7 to i64
  br label %for.body.i.us.us.7

for.body.i.us.us.7:                               ; preds = %for.body.i.us.us.7, %pregion_for_entry.entry.i.us.us.7
  %indvars.iv.next.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.us.us.7, %for.body.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.us.us.7 ]
  %add29.i1.us.us.7 = phi float [ %add29.i.us.us.7, %for.body.i.us.us.7 ], [ %mul3.i.us.us.7, %pregion_for_entry.entry.i.us.us.7 ]
  %491 = add nsw i64 %indvars.iv.next.i3.us.us.7, %488
  %arrayidx8.i.us.us.7 = getelementptr inbounds float, float* %0, i64 %491
  %492 = load float, float* %arrayidx8.i.us.us.7, align 4, !tbaa !12
  %mul9.i.us.us.7 = fmul float %492, %3
  %493 = add nsw i64 %indvars.iv.next.i3.us.us.7, %490
  %arrayidx13.i.us.us.7 = getelementptr inbounds float, float* %1, i64 %493
  %494 = load float, float* %arrayidx13.i.us.us.7, align 4, !tbaa !12
  %arrayidx18.i.us.us.7 = getelementptr inbounds float, float* %1, i64 %491
  %495 = load float, float* %arrayidx18.i.us.us.7, align 4, !tbaa !12
  %mul19.i.us.us.7 = fmul float %495, %3
  %arrayidx23.i.us.us.7 = getelementptr inbounds float, float* %0, i64 %493
  %496 = load float, float* %arrayidx23.i.us.us.7, align 4, !tbaa !12
  %mul24.i.us.us.7 = fmul float %mul19.i.us.us.7, %496
  %497 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.7, float %494, float %mul24.i.us.us.7) #2
  %add29.i.us.us.7 = fadd float %add29.i1.us.us.7, %497
  store float %add29.i.us.us.7, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i3.us.us.7, 1
  %exitcond.not.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.us.us.7, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7, label %for.end.r_exit.i.loopexit.us.us.7, label %for.body.i.us.us.7, !llvm.loop !21

for.end.r_exit.i.loopexit.us.us.7:                ; preds = %for.body.i.us.us.7
  %498 = add nuw nsw i64 %_local_id_x.0.us.us.7, 1
  %exitcond.7.not = icmp eq i64 %498, 32
  br i1 %exitcond.7.not, label %syr2k_kernel.exit.loopexit, label %pregion_for_entry.entry.i.us.us.7, !llvm.loop !19
}

; Function Attrs: nounwind
define void @_pocl_kernel_syr2k_kernel_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp53.i.i = icmp sgt i32 %28, 0
  %wide.trip.count.i.i = zext i32 %28 to i64
  br i1 %cmp53.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  %conv.i.i = trunc i64 %mul.i.i.i to i32
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.1 = or i32 %33, 1
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.2 = or i32 %34, 2
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.3 = or i32 %35, 3
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.4 = or i32 %36, 4
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.5 = or i32 %37, 5
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.6 = or i32 %38, 6
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.7 = or i32 %39, 7
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.8 = or i32 %40, 8
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.9 = or i32 %41, 9
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.10 = or i32 %42, 10
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.11 = or i32 %43, 11
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.12 = or i32 %44, 12
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.13 = or i32 %45, 13
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.14 = or i32 %46, 14
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.15 = or i32 %47, 15
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.16 = or i32 %48, 16
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.17 = or i32 %49, 17
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.18 = or i32 %50, 18
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.19 = or i32 %51, 19
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.20 = or i32 %52, 20
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.21 = or i32 %53, 21
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.22 = or i32 %54, 22
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.23 = or i32 %55, 23
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.24 = or i32 %56, 24
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.25 = or i32 %57, 25
  %58 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.26 = or i32 %58, 26
  %59 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.27 = or i32 %59, 27
  %60 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.28 = or i32 %60, 28
  %61 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.29 = or i32 %61, 29
  %62 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.30 = or i32 %62, 30
  %63 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.31 = or i32 %63, 31
  %ident.check = icmp ne i32 %32, 1
  %64 = trunc i64 %3 to i32
  %65 = shl i32 %64, 3
  %66 = add i32 %65, %conv.i.i
  %67 = icmp eq i32 %66, 2147483640
  %68 = or i1 %ident.check, %67
  %69 = add i32 %65, %conv.i.i
  %70 = or i32 %69, 2
  %71 = icmp sgt i32 %70, 2147483640
  %72 = or i1 %68, %71
  %73 = add i32 %65, %conv.i.i
  %74 = or i32 %73, 3
  %75 = icmp sgt i32 %74, 2147483640
  %76 = or i1 %72, %75
  %77 = add i32 %65, %conv.i.i
  %78 = or i32 %77, 4
  %79 = icmp sgt i32 %78, 2147483640
  %80 = or i1 %76, %79
  %81 = add i32 %65, %conv.i.i
  %82 = or i32 %81, 5
  %83 = icmp sgt i32 %82, 2147483640
  %84 = or i1 %80, %83
  %85 = add i32 %65, %conv.i.i
  %86 = or i32 %85, 6
  %87 = icmp sgt i32 %86, 2147483640
  %88 = or i1 %84, %87
  %89 = add i32 %65, %conv.i.i
  %90 = or i32 %89, 7
  %91 = icmp sgt i32 %90, 2147483640
  %92 = or i1 %88, %91
  %93 = add i32 %65, %conv.i.i
  %94 = add i32 %93, 9
  %95 = add i32 %93, 16
  %96 = icmp slt i32 %95, %94
  %97 = or i1 %92, %96
  %98 = add i32 %65, %conv.i.i
  %99 = add i32 %98, 10
  %100 = add i32 %98, 17
  %101 = icmp slt i32 %100, %99
  %102 = or i1 %97, %101
  %103 = add i32 %65, %conv.i.i
  %104 = add i32 %103, 11
  %105 = add i32 %103, 18
  %106 = icmp slt i32 %105, %104
  %107 = or i1 %102, %106
  %108 = add i32 %65, %conv.i.i
  %109 = add i32 %108, 12
  %110 = add i32 %108, 19
  %111 = icmp slt i32 %110, %109
  %112 = or i1 %107, %111
  %113 = add i32 %65, %conv.i.i
  %114 = add i32 %113, 13
  %115 = add i32 %113, 20
  %116 = icmp slt i32 %115, %114
  %117 = or i1 %112, %116
  %118 = add i32 %65, %conv.i.i
  %119 = add i32 %118, 14
  %120 = add i32 %118, 21
  %121 = icmp slt i32 %120, %119
  %122 = or i1 %117, %121
  %123 = add i32 %65, %conv.i.i
  %124 = add i32 %123, 15
  %125 = add i32 %123, 22
  %126 = icmp slt i32 %125, %124
  %127 = or i1 %122, %126
  %128 = add i32 %65, %conv.i.i
  %129 = add i32 %128, 17
  %130 = add i32 %128, 24
  %131 = icmp slt i32 %130, %129
  %132 = or i1 %127, %131
  %133 = add i32 %65, %conv.i.i
  %134 = add i32 %133, 18
  %135 = add i32 %133, 25
  %136 = icmp slt i32 %135, %134
  %137 = or i1 %132, %136
  %138 = add i32 %65, %conv.i.i
  %139 = add i32 %138, 19
  %140 = add i32 %138, 26
  %141 = icmp slt i32 %140, %139
  %142 = or i1 %137, %141
  %143 = add i32 %65, %conv.i.i
  %144 = add i32 %143, 20
  %145 = add i32 %143, 27
  %146 = icmp slt i32 %145, %144
  %147 = or i1 %142, %146
  %148 = add i32 %65, %conv.i.i
  %149 = add i32 %148, 21
  %150 = add i32 %148, 28
  %151 = icmp slt i32 %150, %149
  %152 = or i1 %147, %151
  %153 = add i32 %65, %conv.i.i
  %154 = add i32 %153, 22
  %155 = add i32 %153, 29
  %156 = icmp slt i32 %155, %154
  %157 = or i1 %152, %156
  %158 = add i32 %65, %conv.i.i
  %159 = add i32 %158, 23
  %160 = add i32 %158, 30
  %161 = icmp slt i32 %160, %159
  %162 = or i1 %157, %161
  %163 = add i32 %65, %conv.i.i
  %164 = add i32 %163, 25
  %165 = add i32 %163, 32
  %166 = icmp slt i32 %165, %164
  %167 = or i1 %162, %166
  %168 = add i32 %65, %conv.i.i
  %169 = add i32 %168, 26
  %170 = add i32 %168, 33
  %171 = icmp slt i32 %170, %169
  %172 = or i1 %167, %171
  %173 = add i32 %65, %conv.i.i
  %174 = add i32 %173, 27
  %175 = add i32 %173, 34
  %176 = icmp slt i32 %175, %174
  %177 = or i1 %172, %176
  %178 = add i32 %65, %conv.i.i
  %179 = add i32 %178, 28
  %180 = add i32 %178, 35
  %181 = icmp slt i32 %180, %179
  %182 = or i1 %177, %181
  %183 = add i32 %65, %conv.i.i
  %184 = add i32 %183, 29
  %185 = add i32 %183, 36
  %186 = icmp slt i32 %185, %184
  %187 = or i1 %182, %186
  %188 = add i32 %65, %conv.i.i
  %189 = add i32 %188, 30
  %190 = add i32 %188, 37
  %191 = icmp slt i32 %190, %189
  %192 = or i1 %187, %191
  %193 = add i32 %65, %conv.i.i
  %194 = add i32 %193, 31
  %195 = add i32 %193, 38
  %196 = icmp slt i32 %195, %194
  %197 = or i1 %192, %196
  br i1 %197, label %pregion_for_entry.pregion_for_init.i.i.preheader156, label %vector.ph

pregion_for_entry.pregion_for_init.i.i.preheader156: ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  br label %pregion_for_entry.pregion_for_init.i.i

vector.ph:                                        ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %broadcast.splatinsert = insertelement <8 x float> undef, float %24, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %198 = trunc i64 %mul3.i.i.i to i32
  %199 = mul nsw i32 %32, %198
  %200 = add nsw i32 %199, %conv.i.i
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %16, i64 %201
  %203 = bitcast float* %202 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %203, align 4, !tbaa !12, !llvm.access.group !16
  %204 = fmul <8 x float> %broadcast.splat, %wide.load
  %205 = bitcast float* %202 to <8 x float>*
  store <8 x float> %204, <8 x float>* %205, align 4, !tbaa !12, !llvm.access.group !16
  %206 = add nsw i32 %199, %conv.i.i.1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %16, i64 %207
  %209 = bitcast float* %208 to <8 x float>*
  %wide.load122 = load <8 x float>, <8 x float>* %209, align 4, !tbaa !12, !llvm.access.group !16
  %210 = fmul <8 x float> %broadcast.splat, %wide.load122
  %211 = bitcast float* %208 to <8 x float>*
  store <8 x float> %210, <8 x float>* %211, align 4, !tbaa !12, !llvm.access.group !16
  %212 = add nsw i32 %199, %conv.i.i.2
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %16, i64 %213
  %215 = bitcast float* %214 to <8 x float>*
  %wide.load123 = load <8 x float>, <8 x float>* %215, align 4, !tbaa !12, !llvm.access.group !16
  %216 = fmul <8 x float> %broadcast.splat, %wide.load123
  %217 = bitcast float* %214 to <8 x float>*
  store <8 x float> %216, <8 x float>* %217, align 4, !tbaa !12, !llvm.access.group !16
  %218 = add nsw i32 %199, %conv.i.i.3
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %16, i64 %219
  %221 = bitcast float* %220 to <8 x float>*
  %wide.load124 = load <8 x float>, <8 x float>* %221, align 4, !tbaa !12, !llvm.access.group !16
  %222 = fmul <8 x float> %broadcast.splat, %wide.load124
  %223 = bitcast float* %220 to <8 x float>*
  store <8 x float> %222, <8 x float>* %223, align 4, !tbaa !12, !llvm.access.group !16
  %224 = add nsw i32 %199, %conv.i.i.4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %16, i64 %225
  %227 = bitcast float* %226 to <8 x float>*
  %wide.load125 = load <8 x float>, <8 x float>* %227, align 4, !tbaa !12, !llvm.access.group !16
  %228 = fmul <8 x float> %broadcast.splat, %wide.load125
  %229 = bitcast float* %226 to <8 x float>*
  store <8 x float> %228, <8 x float>* %229, align 4, !tbaa !12, !llvm.access.group !16
  %230 = add nsw i32 %199, %conv.i.i.5
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %16, i64 %231
  %233 = bitcast float* %232 to <8 x float>*
  %wide.load126 = load <8 x float>, <8 x float>* %233, align 4, !tbaa !12, !llvm.access.group !16
  %234 = fmul <8 x float> %broadcast.splat, %wide.load126
  %235 = bitcast float* %232 to <8 x float>*
  store <8 x float> %234, <8 x float>* %235, align 4, !tbaa !12, !llvm.access.group !16
  %236 = add nsw i32 %199, %conv.i.i.6
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %16, i64 %237
  %239 = bitcast float* %238 to <8 x float>*
  %wide.load127 = load <8 x float>, <8 x float>* %239, align 4, !tbaa !12, !llvm.access.group !16
  %240 = fmul <8 x float> %broadcast.splat, %wide.load127
  %241 = bitcast float* %238 to <8 x float>*
  store <8 x float> %240, <8 x float>* %241, align 4, !tbaa !12, !llvm.access.group !16
  %242 = add nsw i32 %199, %conv.i.i.7
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %16, i64 %243
  %245 = bitcast float* %244 to <8 x float>*
  %wide.load128 = load <8 x float>, <8 x float>* %245, align 4, !tbaa !12, !llvm.access.group !16
  %246 = fmul <8 x float> %broadcast.splat, %wide.load128
  %247 = bitcast float* %244 to <8 x float>*
  store <8 x float> %246, <8 x float>* %247, align 4, !tbaa !12, !llvm.access.group !16
  %248 = add nsw i32 %199, %conv.i.i.8
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds float, float* %16, i64 %249
  %251 = bitcast float* %250 to <8 x float>*
  %wide.load129 = load <8 x float>, <8 x float>* %251, align 4, !tbaa !12, !llvm.access.group !16
  %252 = fmul <8 x float> %broadcast.splat, %wide.load129
  %253 = bitcast float* %250 to <8 x float>*
  store <8 x float> %252, <8 x float>* %253, align 4, !tbaa !12, !llvm.access.group !16
  %254 = add nsw i32 %199, %conv.i.i.9
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %16, i64 %255
  %257 = bitcast float* %256 to <8 x float>*
  %wide.load130 = load <8 x float>, <8 x float>* %257, align 4, !tbaa !12, !llvm.access.group !16
  %258 = fmul <8 x float> %broadcast.splat, %wide.load130
  %259 = bitcast float* %256 to <8 x float>*
  store <8 x float> %258, <8 x float>* %259, align 4, !tbaa !12, !llvm.access.group !16
  %260 = add nsw i32 %199, %conv.i.i.10
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %16, i64 %261
  %263 = bitcast float* %262 to <8 x float>*
  %wide.load131 = load <8 x float>, <8 x float>* %263, align 4, !tbaa !12, !llvm.access.group !16
  %264 = fmul <8 x float> %broadcast.splat, %wide.load131
  %265 = bitcast float* %262 to <8 x float>*
  store <8 x float> %264, <8 x float>* %265, align 4, !tbaa !12, !llvm.access.group !16
  %266 = add nsw i32 %199, %conv.i.i.11
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %16, i64 %267
  %269 = bitcast float* %268 to <8 x float>*
  %wide.load132 = load <8 x float>, <8 x float>* %269, align 4, !tbaa !12, !llvm.access.group !16
  %270 = fmul <8 x float> %broadcast.splat, %wide.load132
  %271 = bitcast float* %268 to <8 x float>*
  store <8 x float> %270, <8 x float>* %271, align 4, !tbaa !12, !llvm.access.group !16
  %272 = add nsw i32 %199, %conv.i.i.12
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float* %16, i64 %273
  %275 = bitcast float* %274 to <8 x float>*
  %wide.load133 = load <8 x float>, <8 x float>* %275, align 4, !tbaa !12, !llvm.access.group !16
  %276 = fmul <8 x float> %broadcast.splat, %wide.load133
  %277 = bitcast float* %274 to <8 x float>*
  store <8 x float> %276, <8 x float>* %277, align 4, !tbaa !12, !llvm.access.group !16
  %278 = add nsw i32 %199, %conv.i.i.13
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %16, i64 %279
  %281 = bitcast float* %280 to <8 x float>*
  %wide.load134 = load <8 x float>, <8 x float>* %281, align 4, !tbaa !12, !llvm.access.group !16
  %282 = fmul <8 x float> %broadcast.splat, %wide.load134
  %283 = bitcast float* %280 to <8 x float>*
  store <8 x float> %282, <8 x float>* %283, align 4, !tbaa !12, !llvm.access.group !16
  %284 = add nsw i32 %199, %conv.i.i.14
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds float, float* %16, i64 %285
  %287 = bitcast float* %286 to <8 x float>*
  %wide.load135 = load <8 x float>, <8 x float>* %287, align 4, !tbaa !12, !llvm.access.group !16
  %288 = fmul <8 x float> %broadcast.splat, %wide.load135
  %289 = bitcast float* %286 to <8 x float>*
  store <8 x float> %288, <8 x float>* %289, align 4, !tbaa !12, !llvm.access.group !16
  %290 = add nsw i32 %199, %conv.i.i.15
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, float* %16, i64 %291
  %293 = bitcast float* %292 to <8 x float>*
  %wide.load136 = load <8 x float>, <8 x float>* %293, align 4, !tbaa !12, !llvm.access.group !16
  %294 = fmul <8 x float> %broadcast.splat, %wide.load136
  %295 = bitcast float* %292 to <8 x float>*
  store <8 x float> %294, <8 x float>* %295, align 4, !tbaa !12, !llvm.access.group !16
  %296 = add nsw i32 %199, %conv.i.i.16
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds float, float* %16, i64 %297
  %299 = bitcast float* %298 to <8 x float>*
  %wide.load137 = load <8 x float>, <8 x float>* %299, align 4, !tbaa !12, !llvm.access.group !16
  %300 = fmul <8 x float> %broadcast.splat, %wide.load137
  %301 = bitcast float* %298 to <8 x float>*
  store <8 x float> %300, <8 x float>* %301, align 4, !tbaa !12, !llvm.access.group !16
  %302 = add nsw i32 %199, %conv.i.i.17
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %16, i64 %303
  %305 = bitcast float* %304 to <8 x float>*
  %wide.load138 = load <8 x float>, <8 x float>* %305, align 4, !tbaa !12, !llvm.access.group !16
  %306 = fmul <8 x float> %broadcast.splat, %wide.load138
  %307 = bitcast float* %304 to <8 x float>*
  store <8 x float> %306, <8 x float>* %307, align 4, !tbaa !12, !llvm.access.group !16
  %308 = add nsw i32 %199, %conv.i.i.18
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %16, i64 %309
  %311 = bitcast float* %310 to <8 x float>*
  %wide.load139 = load <8 x float>, <8 x float>* %311, align 4, !tbaa !12, !llvm.access.group !16
  %312 = fmul <8 x float> %broadcast.splat, %wide.load139
  %313 = bitcast float* %310 to <8 x float>*
  store <8 x float> %312, <8 x float>* %313, align 4, !tbaa !12, !llvm.access.group !16
  %314 = add nsw i32 %199, %conv.i.i.19
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds float, float* %16, i64 %315
  %317 = bitcast float* %316 to <8 x float>*
  %wide.load140 = load <8 x float>, <8 x float>* %317, align 4, !tbaa !12, !llvm.access.group !16
  %318 = fmul <8 x float> %broadcast.splat, %wide.load140
  %319 = bitcast float* %316 to <8 x float>*
  store <8 x float> %318, <8 x float>* %319, align 4, !tbaa !12, !llvm.access.group !16
  %320 = add nsw i32 %199, %conv.i.i.20
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds float, float* %16, i64 %321
  %323 = bitcast float* %322 to <8 x float>*
  %wide.load141 = load <8 x float>, <8 x float>* %323, align 4, !tbaa !12, !llvm.access.group !16
  %324 = fmul <8 x float> %broadcast.splat, %wide.load141
  %325 = bitcast float* %322 to <8 x float>*
  store <8 x float> %324, <8 x float>* %325, align 4, !tbaa !12, !llvm.access.group !16
  %326 = add nsw i32 %199, %conv.i.i.21
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %16, i64 %327
  %329 = bitcast float* %328 to <8 x float>*
  %wide.load142 = load <8 x float>, <8 x float>* %329, align 4, !tbaa !12, !llvm.access.group !16
  %330 = fmul <8 x float> %broadcast.splat, %wide.load142
  %331 = bitcast float* %328 to <8 x float>*
  store <8 x float> %330, <8 x float>* %331, align 4, !tbaa !12, !llvm.access.group !16
  %332 = add nsw i32 %199, %conv.i.i.22
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds float, float* %16, i64 %333
  %335 = bitcast float* %334 to <8 x float>*
  %wide.load143 = load <8 x float>, <8 x float>* %335, align 4, !tbaa !12, !llvm.access.group !16
  %336 = fmul <8 x float> %broadcast.splat, %wide.load143
  %337 = bitcast float* %334 to <8 x float>*
  store <8 x float> %336, <8 x float>* %337, align 4, !tbaa !12, !llvm.access.group !16
  %338 = add nsw i32 %199, %conv.i.i.23
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds float, float* %16, i64 %339
  %341 = bitcast float* %340 to <8 x float>*
  %wide.load144 = load <8 x float>, <8 x float>* %341, align 4, !tbaa !12, !llvm.access.group !16
  %342 = fmul <8 x float> %broadcast.splat, %wide.load144
  %343 = bitcast float* %340 to <8 x float>*
  store <8 x float> %342, <8 x float>* %343, align 4, !tbaa !12, !llvm.access.group !16
  %344 = add nsw i32 %199, %conv.i.i.24
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float, float* %16, i64 %345
  %347 = bitcast float* %346 to <8 x float>*
  %wide.load145 = load <8 x float>, <8 x float>* %347, align 4, !tbaa !12, !llvm.access.group !16
  %348 = fmul <8 x float> %broadcast.splat, %wide.load145
  %349 = bitcast float* %346 to <8 x float>*
  store <8 x float> %348, <8 x float>* %349, align 4, !tbaa !12, !llvm.access.group !16
  %350 = add nsw i32 %199, %conv.i.i.25
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds float, float* %16, i64 %351
  %353 = bitcast float* %352 to <8 x float>*
  %wide.load146 = load <8 x float>, <8 x float>* %353, align 4, !tbaa !12, !llvm.access.group !16
  %354 = fmul <8 x float> %broadcast.splat, %wide.load146
  %355 = bitcast float* %352 to <8 x float>*
  store <8 x float> %354, <8 x float>* %355, align 4, !tbaa !12, !llvm.access.group !16
  %356 = add nsw i32 %199, %conv.i.i.26
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds float, float* %16, i64 %357
  %359 = bitcast float* %358 to <8 x float>*
  %wide.load147 = load <8 x float>, <8 x float>* %359, align 4, !tbaa !12, !llvm.access.group !16
  %360 = fmul <8 x float> %broadcast.splat, %wide.load147
  %361 = bitcast float* %358 to <8 x float>*
  store <8 x float> %360, <8 x float>* %361, align 4, !tbaa !12, !llvm.access.group !16
  %362 = add nsw i32 %199, %conv.i.i.27
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float* %16, i64 %363
  %365 = bitcast float* %364 to <8 x float>*
  %wide.load148 = load <8 x float>, <8 x float>* %365, align 4, !tbaa !12, !llvm.access.group !16
  %366 = fmul <8 x float> %broadcast.splat, %wide.load148
  %367 = bitcast float* %364 to <8 x float>*
  store <8 x float> %366, <8 x float>* %367, align 4, !tbaa !12, !llvm.access.group !16
  %368 = add nsw i32 %199, %conv.i.i.28
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds float, float* %16, i64 %369
  %371 = bitcast float* %370 to <8 x float>*
  %wide.load149 = load <8 x float>, <8 x float>* %371, align 4, !tbaa !12, !llvm.access.group !16
  %372 = fmul <8 x float> %broadcast.splat, %wide.load149
  %373 = bitcast float* %370 to <8 x float>*
  store <8 x float> %372, <8 x float>* %373, align 4, !tbaa !12, !llvm.access.group !16
  %374 = add nsw i32 %199, %conv.i.i.29
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds float, float* %16, i64 %375
  %377 = bitcast float* %376 to <8 x float>*
  %wide.load150 = load <8 x float>, <8 x float>* %377, align 4, !tbaa !12, !llvm.access.group !16
  %378 = fmul <8 x float> %broadcast.splat, %wide.load150
  %379 = bitcast float* %376 to <8 x float>*
  store <8 x float> %378, <8 x float>* %379, align 4, !tbaa !12, !llvm.access.group !16
  %380 = add nsw i32 %199, %conv.i.i.30
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds float, float* %16, i64 %381
  %383 = bitcast float* %382 to <8 x float>*
  %wide.load151 = load <8 x float>, <8 x float>* %383, align 4, !tbaa !12, !llvm.access.group !16
  %384 = fmul <8 x float> %broadcast.splat, %wide.load151
  %385 = bitcast float* %382 to <8 x float>*
  store <8 x float> %384, <8 x float>* %385, align 4, !tbaa !12, !llvm.access.group !16
  %386 = add nsw i32 %199, %conv.i.i.31
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds float, float* %16, i64 %387
  %389 = bitcast float* %388 to <8 x float>*
  %wide.load152 = load <8 x float>, <8 x float>* %389, align 4, !tbaa !12, !llvm.access.group !16
  %390 = fmul <8 x float> %broadcast.splat, %wide.load152
  %391 = bitcast float* %388 to <8 x float>*
  store <8 x float> %390, <8 x float>* %391, align 4, !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_syr2k_kernel.exit

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %mul.i.i.us = mul nsw i32 %32, %conv2.i.i.us
  %mul5.i.i.us = mul nsw i32 %28, %conv2.i.i.us
  %392 = sext i32 %mul5.i.i.us to i64
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_entry.entry.i.i.us.us:                ; preds = %for.end.r_exit.i.i.loopexit.us.us, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.i.us.preheader ], [ %395, %for.end.r_exit.i.i.loopexit.us.us ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us
  %393 = load float, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us = fmul float %24, %393
  store float %mul3.i.i.us.us, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us = mul nsw i32 %28, %conv.i.i.us.us
  %394 = sext i32 %mul10.i.i.us.us to i64
  br label %for.body.i.i.us.us

for.end.r_exit.i.i.loopexit.us.us:                ; preds = %for.body.i.i.us.us
  %395 = add nuw nsw i64 %_local_id_x.i.0.us.us, 1
  %exitcond.not = icmp eq i64 %395, 32
  br i1 %exitcond.not, label %pregion_for_end.i.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !19

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %pregion_for_entry.entry.i.i.us.us
  %indvars.iv.next.i.i3.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us ]
  %add29.i.i1.us.us = phi float [ %add29.i.i.us.us, %for.body.i.i.us.us ], [ %mul3.i.i.us.us, %pregion_for_entry.entry.i.i.us.us ]
  %396 = add nsw i64 %indvars.iv.next.i.i3.us.us, %392
  %arrayidx8.i.i.us.us = getelementptr inbounds float, float* %8, i64 %396
  %397 = load float, float* %arrayidx8.i.i.us.us, align 4, !tbaa !12
  %mul9.i.i.us.us = fmul float %20, %397
  %398 = add nsw i64 %indvars.iv.next.i.i3.us.us, %394
  %arrayidx13.i.i.us.us = getelementptr inbounds float, float* %12, i64 %398
  %399 = load float, float* %arrayidx13.i.i.us.us, align 4, !tbaa !12
  %arrayidx18.i.i.us.us = getelementptr inbounds float, float* %12, i64 %396
  %400 = load float, float* %arrayidx18.i.i.us.us, align 4, !tbaa !12
  %mul19.i.i.us.us = fmul float %20, %400
  %arrayidx23.i.i.us.us = getelementptr inbounds float, float* %8, i64 %398
  %401 = load float, float* %arrayidx23.i.i.us.us, align 4, !tbaa !12
  %mul24.i.i.us.us = fmul float %mul19.i.i.us.us, %401
  %402 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us, float %399, float %mul24.i.i.us.us) #2
  %add29.i.i.us.us = fadd float %add29.i.i1.us.us, %402
  store float %add29.i.i.us.us, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i3.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %for.end.r_exit.i.i.loopexit.us.us, label %for.body.i.i.us.us, !llvm.loop !21

pregion_for_end.i.i.us-lcssa.us.us:               ; preds = %for.end.r_exit.i.i.loopexit.us.us
  %403 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %403, 1
  %mul.i.i.us.1 = mul nsw i32 %32, %conv2.i.i.us.1
  %mul5.i.i.us.1 = mul nsw i32 %28, %conv2.i.i.us.1
  %404 = sext i32 %mul5.i.i.us.1 to i64
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader156
  %_local_id_y.i.0 = phi i64 [ %437, %pregion_for_entry.pregion_for_init.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader156 ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %mul.i.i = mul nsw i32 %32, %conv2.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %16, i64 %idxprom.i.i
  %405 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i = fmul float %24, %405
  store float %mul3.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.1
  %406 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.1 = fmul float %24, %406
  store float %mul3.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.2 = add nsw i32 %mul.i.i, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.2
  %407 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.2 = fmul float %24, %407
  store float %mul3.i.i.2, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.3 = add nsw i32 %mul.i.i, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.3
  %408 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.3 = fmul float %24, %408
  store float %mul3.i.i.3, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.4 = add nsw i32 %mul.i.i, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.4
  %409 = load float, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.4 = fmul float %24, %409
  store float %mul3.i.i.4, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.5 = add nsw i32 %mul.i.i, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.5
  %410 = load float, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.5 = fmul float %24, %410
  store float %mul3.i.i.5, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.6 = add nsw i32 %mul.i.i, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.6
  %411 = load float, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.6 = fmul float %24, %411
  store float %mul3.i.i.6, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.7 = add nsw i32 %mul.i.i, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.7
  %412 = load float, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.7 = fmul float %24, %412
  store float %mul3.i.i.7, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.8 = add nsw i32 %mul.i.i, %conv.i.i.8
  %idxprom.i.i.8 = sext i32 %add.i.i.8 to i64
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.8
  %413 = load float, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.8 = fmul float %24, %413
  store float %mul3.i.i.8, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.9 = add nsw i32 %mul.i.i, %conv.i.i.9
  %idxprom.i.i.9 = sext i32 %add.i.i.9 to i64
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.9
  %414 = load float, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.9 = fmul float %24, %414
  store float %mul3.i.i.9, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.10 = add nsw i32 %mul.i.i, %conv.i.i.10
  %idxprom.i.i.10 = sext i32 %add.i.i.10 to i64
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.10
  %415 = load float, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.10 = fmul float %24, %415
  store float %mul3.i.i.10, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.11 = add nsw i32 %mul.i.i, %conv.i.i.11
  %idxprom.i.i.11 = sext i32 %add.i.i.11 to i64
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.11
  %416 = load float, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.11 = fmul float %24, %416
  store float %mul3.i.i.11, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.12 = add nsw i32 %mul.i.i, %conv.i.i.12
  %idxprom.i.i.12 = sext i32 %add.i.i.12 to i64
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.12
  %417 = load float, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.12 = fmul float %24, %417
  store float %mul3.i.i.12, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.13 = add nsw i32 %mul.i.i, %conv.i.i.13
  %idxprom.i.i.13 = sext i32 %add.i.i.13 to i64
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.13
  %418 = load float, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.13 = fmul float %24, %418
  store float %mul3.i.i.13, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.14 = add nsw i32 %mul.i.i, %conv.i.i.14
  %idxprom.i.i.14 = sext i32 %add.i.i.14 to i64
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.14
  %419 = load float, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.14 = fmul float %24, %419
  store float %mul3.i.i.14, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.15 = add nsw i32 %mul.i.i, %conv.i.i.15
  %idxprom.i.i.15 = sext i32 %add.i.i.15 to i64
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.15
  %420 = load float, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.15 = fmul float %24, %420
  store float %mul3.i.i.15, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.16 = add nsw i32 %mul.i.i, %conv.i.i.16
  %idxprom.i.i.16 = sext i32 %add.i.i.16 to i64
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.16
  %421 = load float, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.16 = fmul float %24, %421
  store float %mul3.i.i.16, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.17 = add nsw i32 %mul.i.i, %conv.i.i.17
  %idxprom.i.i.17 = sext i32 %add.i.i.17 to i64
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.17
  %422 = load float, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.17 = fmul float %24, %422
  store float %mul3.i.i.17, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.18 = add nsw i32 %mul.i.i, %conv.i.i.18
  %idxprom.i.i.18 = sext i32 %add.i.i.18 to i64
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.18
  %423 = load float, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.18 = fmul float %24, %423
  store float %mul3.i.i.18, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.19 = add nsw i32 %mul.i.i, %conv.i.i.19
  %idxprom.i.i.19 = sext i32 %add.i.i.19 to i64
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.19
  %424 = load float, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.19 = fmul float %24, %424
  store float %mul3.i.i.19, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.20 = add nsw i32 %mul.i.i, %conv.i.i.20
  %idxprom.i.i.20 = sext i32 %add.i.i.20 to i64
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.20
  %425 = load float, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.20 = fmul float %24, %425
  store float %mul3.i.i.20, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.21 = add nsw i32 %mul.i.i, %conv.i.i.21
  %idxprom.i.i.21 = sext i32 %add.i.i.21 to i64
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.21
  %426 = load float, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.21 = fmul float %24, %426
  store float %mul3.i.i.21, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.22 = add nsw i32 %mul.i.i, %conv.i.i.22
  %idxprom.i.i.22 = sext i32 %add.i.i.22 to i64
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.22
  %427 = load float, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.22 = fmul float %24, %427
  store float %mul3.i.i.22, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.23 = add nsw i32 %mul.i.i, %conv.i.i.23
  %idxprom.i.i.23 = sext i32 %add.i.i.23 to i64
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.23
  %428 = load float, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.23 = fmul float %24, %428
  store float %mul3.i.i.23, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.24 = add nsw i32 %mul.i.i, %conv.i.i.24
  %idxprom.i.i.24 = sext i32 %add.i.i.24 to i64
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.24
  %429 = load float, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.24 = fmul float %24, %429
  store float %mul3.i.i.24, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.25 = add nsw i32 %mul.i.i, %conv.i.i.25
  %idxprom.i.i.25 = sext i32 %add.i.i.25 to i64
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.25
  %430 = load float, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.25 = fmul float %24, %430
  store float %mul3.i.i.25, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.26 = add nsw i32 %mul.i.i, %conv.i.i.26
  %idxprom.i.i.26 = sext i32 %add.i.i.26 to i64
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.26
  %431 = load float, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.26 = fmul float %24, %431
  store float %mul3.i.i.26, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.27 = add nsw i32 %mul.i.i, %conv.i.i.27
  %idxprom.i.i.27 = sext i32 %add.i.i.27 to i64
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.27
  %432 = load float, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.27 = fmul float %24, %432
  store float %mul3.i.i.27, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.28 = add nsw i32 %mul.i.i, %conv.i.i.28
  %idxprom.i.i.28 = sext i32 %add.i.i.28 to i64
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.28
  %433 = load float, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.28 = fmul float %24, %433
  store float %mul3.i.i.28, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.29 = add nsw i32 %mul.i.i, %conv.i.i.29
  %idxprom.i.i.29 = sext i32 %add.i.i.29 to i64
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.29
  %434 = load float, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.29 = fmul float %24, %434
  store float %mul3.i.i.29, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.30 = add nsw i32 %mul.i.i, %conv.i.i.30
  %idxprom.i.i.30 = sext i32 %add.i.i.30 to i64
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.30
  %435 = load float, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.30 = fmul float %24, %435
  store float %mul3.i.i.30, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.31 = add nsw i32 %mul.i.i, %conv.i.i.31
  %idxprom.i.i.31 = sext i32 %add.i.i.31 to i64
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.31
  %436 = load float, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.31 = fmul float %24, %436
  store float %mul3.i.i.31, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %437 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond38.not = icmp eq i64 %437, 8
  br i1 %exitcond38.not, label %_pocl_kernel_syr2k_kernel.exit.loopexit157, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !26

_pocl_kernel_syr2k_kernel.exit.loopexit:          ; preds = %for.end.r_exit.i.i.loopexit.us.us.7
  br label %_pocl_kernel_syr2k_kernel.exit

_pocl_kernel_syr2k_kernel.exit.loopexit157:       ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %_pocl_kernel_syr2k_kernel.exit

_pocl_kernel_syr2k_kernel.exit:                   ; preds = %_pocl_kernel_syr2k_kernel.exit.loopexit157, %_pocl_kernel_syr2k_kernel.exit.loopexit, %vector.ph
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.1, %pregion_for_end.i.i.us-lcssa.us.us
  %_local_id_x.i.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us ], [ %447, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.1
  %438 = load float, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1 = fmul float %24, %438
  store float %mul3.i.i.us.us.1, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.1 = mul nsw i32 %28, %conv.i.i.us.us.1
  %439 = sext i32 %mul10.i.i.us.us.1 to i64
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1
  %indvars.iv.next.i.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1 ]
  %add29.i.i1.us.us.1 = phi float [ %add29.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ %mul3.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1 ]
  %440 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %404
  %arrayidx8.i.i.us.us.1 = getelementptr inbounds float, float* %8, i64 %440
  %441 = load float, float* %arrayidx8.i.i.us.us.1, align 4, !tbaa !12
  %mul9.i.i.us.us.1 = fmul float %20, %441
  %442 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %439
  %arrayidx13.i.i.us.us.1 = getelementptr inbounds float, float* %12, i64 %442
  %443 = load float, float* %arrayidx13.i.i.us.us.1, align 4, !tbaa !12
  %arrayidx18.i.i.us.us.1 = getelementptr inbounds float, float* %12, i64 %440
  %444 = load float, float* %arrayidx18.i.i.us.us.1, align 4, !tbaa !12
  %mul19.i.i.us.us.1 = fmul float %20, %444
  %arrayidx23.i.i.us.us.1 = getelementptr inbounds float, float* %8, i64 %442
  %445 = load float, float* %arrayidx23.i.i.us.us.1, align 4, !tbaa !12
  %mul24.i.i.us.us.1 = fmul float %mul19.i.i.us.us.1, %445
  %446 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.1, float %443, float %mul24.i.i.us.us.1) #2
  %add29.i.i.us.us.1 = fadd float %add29.i.i1.us.us.1, %446
  store float %add29.i.i.us.us.1, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %for.end.r_exit.i.i.loopexit.us.us.1, label %for.body.i.i.us.us.1, !llvm.loop !21

for.end.r_exit.i.i.loopexit.us.us.1:              ; preds = %for.body.i.i.us.us.1
  %447 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 1
  %exitcond.1.not = icmp eq i64 %447, 32
  br i1 %exitcond.1.not, label %pregion_for_end.i.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us.1:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.1
  %448 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %448, 2
  %mul.i.i.us.2 = mul nsw i32 %32, %conv2.i.i.us.2
  %mul5.i.i.us.2 = mul nsw i32 %28, %conv2.i.i.us.2
  %449 = sext i32 %mul5.i.i.us.2 to i64
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.2, %pregion_for_end.i.i.us-lcssa.us.us.1
  %_local_id_x.i.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.1 ], [ %459, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.2
  %450 = load float, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.2 = fmul float %24, %450
  store float %mul3.i.i.us.us.2, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.2 = mul nsw i32 %28, %conv.i.i.us.us.2
  %451 = sext i32 %mul10.i.i.us.us.2 to i64
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2
  %indvars.iv.next.i.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2 ]
  %add29.i.i1.us.us.2 = phi float [ %add29.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ %mul3.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2 ]
  %452 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %449
  %arrayidx8.i.i.us.us.2 = getelementptr inbounds float, float* %8, i64 %452
  %453 = load float, float* %arrayidx8.i.i.us.us.2, align 4, !tbaa !12
  %mul9.i.i.us.us.2 = fmul float %20, %453
  %454 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %451
  %arrayidx13.i.i.us.us.2 = getelementptr inbounds float, float* %12, i64 %454
  %455 = load float, float* %arrayidx13.i.i.us.us.2, align 4, !tbaa !12
  %arrayidx18.i.i.us.us.2 = getelementptr inbounds float, float* %12, i64 %452
  %456 = load float, float* %arrayidx18.i.i.us.us.2, align 4, !tbaa !12
  %mul19.i.i.us.us.2 = fmul float %20, %456
  %arrayidx23.i.i.us.us.2 = getelementptr inbounds float, float* %8, i64 %454
  %457 = load float, float* %arrayidx23.i.i.us.us.2, align 4, !tbaa !12
  %mul24.i.i.us.us.2 = fmul float %mul19.i.i.us.us.2, %457
  %458 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.2, float %455, float %mul24.i.i.us.us.2) #2
  %add29.i.i.us.us.2 = fadd float %add29.i.i1.us.us.2, %458
  store float %add29.i.i.us.us.2, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %for.end.r_exit.i.i.loopexit.us.us.2, label %for.body.i.i.us.us.2, !llvm.loop !21

for.end.r_exit.i.i.loopexit.us.us.2:              ; preds = %for.body.i.i.us.us.2
  %459 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 1
  %exitcond.2.not = icmp eq i64 %459, 32
  br i1 %exitcond.2.not, label %pregion_for_end.i.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us.2:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.2
  %460 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %460, 3
  %mul.i.i.us.3 = mul nsw i32 %32, %conv2.i.i.us.3
  %mul5.i.i.us.3 = mul nsw i32 %28, %conv2.i.i.us.3
  %461 = sext i32 %mul5.i.i.us.3 to i64
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.3, %pregion_for_end.i.i.us-lcssa.us.us.2
  %_local_id_x.i.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.2 ], [ %471, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.3
  %462 = load float, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.3 = fmul float %24, %462
  store float %mul3.i.i.us.us.3, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.3 = mul nsw i32 %28, %conv.i.i.us.us.3
  %463 = sext i32 %mul10.i.i.us.us.3 to i64
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3
  %indvars.iv.next.i.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3 ]
  %add29.i.i1.us.us.3 = phi float [ %add29.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ %mul3.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3 ]
  %464 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %461
  %arrayidx8.i.i.us.us.3 = getelementptr inbounds float, float* %8, i64 %464
  %465 = load float, float* %arrayidx8.i.i.us.us.3, align 4, !tbaa !12
  %mul9.i.i.us.us.3 = fmul float %20, %465
  %466 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %463
  %arrayidx13.i.i.us.us.3 = getelementptr inbounds float, float* %12, i64 %466
  %467 = load float, float* %arrayidx13.i.i.us.us.3, align 4, !tbaa !12
  %arrayidx18.i.i.us.us.3 = getelementptr inbounds float, float* %12, i64 %464
  %468 = load float, float* %arrayidx18.i.i.us.us.3, align 4, !tbaa !12
  %mul19.i.i.us.us.3 = fmul float %20, %468
  %arrayidx23.i.i.us.us.3 = getelementptr inbounds float, float* %8, i64 %466
  %469 = load float, float* %arrayidx23.i.i.us.us.3, align 4, !tbaa !12
  %mul24.i.i.us.us.3 = fmul float %mul19.i.i.us.us.3, %469
  %470 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.3, float %467, float %mul24.i.i.us.us.3) #2
  %add29.i.i.us.us.3 = fadd float %add29.i.i1.us.us.3, %470
  store float %add29.i.i.us.us.3, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %for.end.r_exit.i.i.loopexit.us.us.3, label %for.body.i.i.us.us.3, !llvm.loop !21

for.end.r_exit.i.i.loopexit.us.us.3:              ; preds = %for.body.i.i.us.us.3
  %471 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 1
  %exitcond.3.not = icmp eq i64 %471, 32
  br i1 %exitcond.3.not, label %pregion_for_end.i.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us.3:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.3
  %472 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %472, 4
  %mul.i.i.us.4 = mul nsw i32 %32, %conv2.i.i.us.4
  %mul5.i.i.us.4 = mul nsw i32 %28, %conv2.i.i.us.4
  %473 = sext i32 %mul5.i.i.us.4 to i64
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.4, %pregion_for_end.i.i.us-lcssa.us.us.3
  %_local_id_x.i.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.3 ], [ %483, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.4
  %474 = load float, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.4 = fmul float %24, %474
  store float %mul3.i.i.us.us.4, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.4 = mul nsw i32 %28, %conv.i.i.us.us.4
  %475 = sext i32 %mul10.i.i.us.us.4 to i64
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4
  %indvars.iv.next.i.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4 ]
  %add29.i.i1.us.us.4 = phi float [ %add29.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ %mul3.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4 ]
  %476 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %473
  %arrayidx8.i.i.us.us.4 = getelementptr inbounds float, float* %8, i64 %476
  %477 = load float, float* %arrayidx8.i.i.us.us.4, align 4, !tbaa !12
  %mul9.i.i.us.us.4 = fmul float %20, %477
  %478 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %475
  %arrayidx13.i.i.us.us.4 = getelementptr inbounds float, float* %12, i64 %478
  %479 = load float, float* %arrayidx13.i.i.us.us.4, align 4, !tbaa !12
  %arrayidx18.i.i.us.us.4 = getelementptr inbounds float, float* %12, i64 %476
  %480 = load float, float* %arrayidx18.i.i.us.us.4, align 4, !tbaa !12
  %mul19.i.i.us.us.4 = fmul float %20, %480
  %arrayidx23.i.i.us.us.4 = getelementptr inbounds float, float* %8, i64 %478
  %481 = load float, float* %arrayidx23.i.i.us.us.4, align 4, !tbaa !12
  %mul24.i.i.us.us.4 = fmul float %mul19.i.i.us.us.4, %481
  %482 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.4, float %479, float %mul24.i.i.us.us.4) #2
  %add29.i.i.us.us.4 = fadd float %add29.i.i1.us.us.4, %482
  store float %add29.i.i.us.us.4, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %for.end.r_exit.i.i.loopexit.us.us.4, label %for.body.i.i.us.us.4, !llvm.loop !21

for.end.r_exit.i.i.loopexit.us.us.4:              ; preds = %for.body.i.i.us.us.4
  %483 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 1
  %exitcond.4.not = icmp eq i64 %483, 32
  br i1 %exitcond.4.not, label %pregion_for_end.i.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us.4:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.4
  %484 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %484, 5
  %mul.i.i.us.5 = mul nsw i32 %32, %conv2.i.i.us.5
  %mul5.i.i.us.5 = mul nsw i32 %28, %conv2.i.i.us.5
  %485 = sext i32 %mul5.i.i.us.5 to i64
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.5, %pregion_for_end.i.i.us-lcssa.us.us.4
  %_local_id_x.i.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.4 ], [ %495, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.5
  %486 = load float, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.5 = fmul float %24, %486
  store float %mul3.i.i.us.us.5, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.5 = mul nsw i32 %28, %conv.i.i.us.us.5
  %487 = sext i32 %mul10.i.i.us.us.5 to i64
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5
  %indvars.iv.next.i.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5 ]
  %add29.i.i1.us.us.5 = phi float [ %add29.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ %mul3.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5 ]
  %488 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %485
  %arrayidx8.i.i.us.us.5 = getelementptr inbounds float, float* %8, i64 %488
  %489 = load float, float* %arrayidx8.i.i.us.us.5, align 4, !tbaa !12
  %mul9.i.i.us.us.5 = fmul float %20, %489
  %490 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %487
  %arrayidx13.i.i.us.us.5 = getelementptr inbounds float, float* %12, i64 %490
  %491 = load float, float* %arrayidx13.i.i.us.us.5, align 4, !tbaa !12
  %arrayidx18.i.i.us.us.5 = getelementptr inbounds float, float* %12, i64 %488
  %492 = load float, float* %arrayidx18.i.i.us.us.5, align 4, !tbaa !12
  %mul19.i.i.us.us.5 = fmul float %20, %492
  %arrayidx23.i.i.us.us.5 = getelementptr inbounds float, float* %8, i64 %490
  %493 = load float, float* %arrayidx23.i.i.us.us.5, align 4, !tbaa !12
  %mul24.i.i.us.us.5 = fmul float %mul19.i.i.us.us.5, %493
  %494 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.5, float %491, float %mul24.i.i.us.us.5) #2
  %add29.i.i.us.us.5 = fadd float %add29.i.i1.us.us.5, %494
  store float %add29.i.i.us.us.5, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %for.end.r_exit.i.i.loopexit.us.us.5, label %for.body.i.i.us.us.5, !llvm.loop !21

for.end.r_exit.i.i.loopexit.us.us.5:              ; preds = %for.body.i.i.us.us.5
  %495 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 1
  %exitcond.5.not = icmp eq i64 %495, 32
  br i1 %exitcond.5.not, label %pregion_for_end.i.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us.5:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.5
  %496 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %496, 6
  %mul.i.i.us.6 = mul nsw i32 %32, %conv2.i.i.us.6
  %mul5.i.i.us.6 = mul nsw i32 %28, %conv2.i.i.us.6
  %497 = sext i32 %mul5.i.i.us.6 to i64
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.6, %pregion_for_end.i.i.us-lcssa.us.us.5
  %_local_id_x.i.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.5 ], [ %507, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.6
  %498 = load float, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.6 = fmul float %24, %498
  store float %mul3.i.i.us.us.6, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.6 = mul nsw i32 %28, %conv.i.i.us.us.6
  %499 = sext i32 %mul10.i.i.us.us.6 to i64
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6
  %indvars.iv.next.i.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6 ]
  %add29.i.i1.us.us.6 = phi float [ %add29.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ %mul3.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6 ]
  %500 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %497
  %arrayidx8.i.i.us.us.6 = getelementptr inbounds float, float* %8, i64 %500
  %501 = load float, float* %arrayidx8.i.i.us.us.6, align 4, !tbaa !12
  %mul9.i.i.us.us.6 = fmul float %20, %501
  %502 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %499
  %arrayidx13.i.i.us.us.6 = getelementptr inbounds float, float* %12, i64 %502
  %503 = load float, float* %arrayidx13.i.i.us.us.6, align 4, !tbaa !12
  %arrayidx18.i.i.us.us.6 = getelementptr inbounds float, float* %12, i64 %500
  %504 = load float, float* %arrayidx18.i.i.us.us.6, align 4, !tbaa !12
  %mul19.i.i.us.us.6 = fmul float %20, %504
  %arrayidx23.i.i.us.us.6 = getelementptr inbounds float, float* %8, i64 %502
  %505 = load float, float* %arrayidx23.i.i.us.us.6, align 4, !tbaa !12
  %mul24.i.i.us.us.6 = fmul float %mul19.i.i.us.us.6, %505
  %506 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.6, float %503, float %mul24.i.i.us.us.6) #2
  %add29.i.i.us.us.6 = fadd float %add29.i.i1.us.us.6, %506
  store float %add29.i.i.us.us.6, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %for.end.r_exit.i.i.loopexit.us.us.6, label %for.body.i.i.us.us.6, !llvm.loop !21

for.end.r_exit.i.i.loopexit.us.us.6:              ; preds = %for.body.i.i.us.us.6
  %507 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 1
  %exitcond.6.not = icmp eq i64 %507, 32
  br i1 %exitcond.6.not, label %pregion_for_end.i.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us.6:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.6
  %508 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %508, 7
  %mul.i.i.us.7 = mul nsw i32 %32, %conv2.i.i.us.7
  %mul5.i.i.us.7 = mul nsw i32 %28, %conv2.i.i.us.7
  %509 = sext i32 %mul5.i.i.us.7 to i64
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.7, %pregion_for_end.i.i.us-lcssa.us.us.6
  %_local_id_x.i.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.6 ], [ %519, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.7
  %510 = load float, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.7 = fmul float %24, %510
  store float %mul3.i.i.us.us.7, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.7 = mul nsw i32 %28, %conv.i.i.us.us.7
  %511 = sext i32 %mul10.i.i.us.us.7 to i64
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7
  %indvars.iv.next.i.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7 ]
  %add29.i.i1.us.us.7 = phi float [ %add29.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ %mul3.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7 ]
  %512 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %509
  %arrayidx8.i.i.us.us.7 = getelementptr inbounds float, float* %8, i64 %512
  %513 = load float, float* %arrayidx8.i.i.us.us.7, align 4, !tbaa !12
  %mul9.i.i.us.us.7 = fmul float %20, %513
  %514 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %511
  %arrayidx13.i.i.us.us.7 = getelementptr inbounds float, float* %12, i64 %514
  %515 = load float, float* %arrayidx13.i.i.us.us.7, align 4, !tbaa !12
  %arrayidx18.i.i.us.us.7 = getelementptr inbounds float, float* %12, i64 %512
  %516 = load float, float* %arrayidx18.i.i.us.us.7, align 4, !tbaa !12
  %mul19.i.i.us.us.7 = fmul float %20, %516
  %arrayidx23.i.i.us.us.7 = getelementptr inbounds float, float* %8, i64 %514
  %517 = load float, float* %arrayidx23.i.i.us.us.7, align 4, !tbaa !12
  %mul24.i.i.us.us.7 = fmul float %mul19.i.i.us.us.7, %517
  %518 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.7, float %515, float %mul24.i.i.us.us.7) #2
  %add29.i.i.us.us.7 = fadd float %add29.i.i1.us.us.7, %518
  store float %add29.i.i.us.us.7, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %for.end.r_exit.i.i.loopexit.us.us.7, label %for.body.i.i.us.us.7, !llvm.loop !21

for.end.r_exit.i.i.loopexit.us.us.7:              ; preds = %for.body.i.i.us.us.7
  %519 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 1
  %exitcond.7.not = icmp eq i64 %519, 32
  br i1 %exitcond.7.not, label %_pocl_kernel_syr2k_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !19
}

; Function Attrs: nounwind
define void @_pocl_kernel_syr2k_kernel_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp53.i.i = icmp sgt i32 %25, 0
  %wide.trip.count.i.i = zext i32 %25 to i64
  br i1 %cmp53.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

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
  %ident.check = icmp ne i32 %29, 1
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
  br i1 %194, label %pregion_for_entry.pregion_for_init.i.i.preheader156, label %vector.ph

pregion_for_entry.pregion_for_init.i.i.preheader156: ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  br label %pregion_for_entry.pregion_for_init.i.i

vector.ph:                                        ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %broadcast.splatinsert = insertelement <8 x float> undef, float %21, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %195 = trunc i64 %mul3.i.i.i to i32
  %196 = mul nsw i32 %29, %195
  %197 = add nsw i32 %196, %conv.i.i
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %13, i64 %198
  %200 = bitcast float* %199 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %200, align 4, !tbaa !12, !llvm.access.group !16
  %201 = fmul <8 x float> %broadcast.splat, %wide.load
  %202 = bitcast float* %199 to <8 x float>*
  store <8 x float> %201, <8 x float>* %202, align 4, !tbaa !12, !llvm.access.group !16
  %203 = add nsw i32 %196, %conv.i.i.1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %13, i64 %204
  %206 = bitcast float* %205 to <8 x float>*
  %wide.load122 = load <8 x float>, <8 x float>* %206, align 4, !tbaa !12, !llvm.access.group !16
  %207 = fmul <8 x float> %broadcast.splat, %wide.load122
  %208 = bitcast float* %205 to <8 x float>*
  store <8 x float> %207, <8 x float>* %208, align 4, !tbaa !12, !llvm.access.group !16
  %209 = add nsw i32 %196, %conv.i.i.2
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %13, i64 %210
  %212 = bitcast float* %211 to <8 x float>*
  %wide.load123 = load <8 x float>, <8 x float>* %212, align 4, !tbaa !12, !llvm.access.group !16
  %213 = fmul <8 x float> %broadcast.splat, %wide.load123
  %214 = bitcast float* %211 to <8 x float>*
  store <8 x float> %213, <8 x float>* %214, align 4, !tbaa !12, !llvm.access.group !16
  %215 = add nsw i32 %196, %conv.i.i.3
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %13, i64 %216
  %218 = bitcast float* %217 to <8 x float>*
  %wide.load124 = load <8 x float>, <8 x float>* %218, align 4, !tbaa !12, !llvm.access.group !16
  %219 = fmul <8 x float> %broadcast.splat, %wide.load124
  %220 = bitcast float* %217 to <8 x float>*
  store <8 x float> %219, <8 x float>* %220, align 4, !tbaa !12, !llvm.access.group !16
  %221 = add nsw i32 %196, %conv.i.i.4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %13, i64 %222
  %224 = bitcast float* %223 to <8 x float>*
  %wide.load125 = load <8 x float>, <8 x float>* %224, align 4, !tbaa !12, !llvm.access.group !16
  %225 = fmul <8 x float> %broadcast.splat, %wide.load125
  %226 = bitcast float* %223 to <8 x float>*
  store <8 x float> %225, <8 x float>* %226, align 4, !tbaa !12, !llvm.access.group !16
  %227 = add nsw i32 %196, %conv.i.i.5
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %13, i64 %228
  %230 = bitcast float* %229 to <8 x float>*
  %wide.load126 = load <8 x float>, <8 x float>* %230, align 4, !tbaa !12, !llvm.access.group !16
  %231 = fmul <8 x float> %broadcast.splat, %wide.load126
  %232 = bitcast float* %229 to <8 x float>*
  store <8 x float> %231, <8 x float>* %232, align 4, !tbaa !12, !llvm.access.group !16
  %233 = add nsw i32 %196, %conv.i.i.6
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %13, i64 %234
  %236 = bitcast float* %235 to <8 x float>*
  %wide.load127 = load <8 x float>, <8 x float>* %236, align 4, !tbaa !12, !llvm.access.group !16
  %237 = fmul <8 x float> %broadcast.splat, %wide.load127
  %238 = bitcast float* %235 to <8 x float>*
  store <8 x float> %237, <8 x float>* %238, align 4, !tbaa !12, !llvm.access.group !16
  %239 = add nsw i32 %196, %conv.i.i.7
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %13, i64 %240
  %242 = bitcast float* %241 to <8 x float>*
  %wide.load128 = load <8 x float>, <8 x float>* %242, align 4, !tbaa !12, !llvm.access.group !16
  %243 = fmul <8 x float> %broadcast.splat, %wide.load128
  %244 = bitcast float* %241 to <8 x float>*
  store <8 x float> %243, <8 x float>* %244, align 4, !tbaa !12, !llvm.access.group !16
  %245 = add nsw i32 %196, %conv.i.i.8
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %13, i64 %246
  %248 = bitcast float* %247 to <8 x float>*
  %wide.load129 = load <8 x float>, <8 x float>* %248, align 4, !tbaa !12, !llvm.access.group !16
  %249 = fmul <8 x float> %broadcast.splat, %wide.load129
  %250 = bitcast float* %247 to <8 x float>*
  store <8 x float> %249, <8 x float>* %250, align 4, !tbaa !12, !llvm.access.group !16
  %251 = add nsw i32 %196, %conv.i.i.9
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %13, i64 %252
  %254 = bitcast float* %253 to <8 x float>*
  %wide.load130 = load <8 x float>, <8 x float>* %254, align 4, !tbaa !12, !llvm.access.group !16
  %255 = fmul <8 x float> %broadcast.splat, %wide.load130
  %256 = bitcast float* %253 to <8 x float>*
  store <8 x float> %255, <8 x float>* %256, align 4, !tbaa !12, !llvm.access.group !16
  %257 = add nsw i32 %196, %conv.i.i.10
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %13, i64 %258
  %260 = bitcast float* %259 to <8 x float>*
  %wide.load131 = load <8 x float>, <8 x float>* %260, align 4, !tbaa !12, !llvm.access.group !16
  %261 = fmul <8 x float> %broadcast.splat, %wide.load131
  %262 = bitcast float* %259 to <8 x float>*
  store <8 x float> %261, <8 x float>* %262, align 4, !tbaa !12, !llvm.access.group !16
  %263 = add nsw i32 %196, %conv.i.i.11
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float, float* %13, i64 %264
  %266 = bitcast float* %265 to <8 x float>*
  %wide.load132 = load <8 x float>, <8 x float>* %266, align 4, !tbaa !12, !llvm.access.group !16
  %267 = fmul <8 x float> %broadcast.splat, %wide.load132
  %268 = bitcast float* %265 to <8 x float>*
  store <8 x float> %267, <8 x float>* %268, align 4, !tbaa !12, !llvm.access.group !16
  %269 = add nsw i32 %196, %conv.i.i.12
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %13, i64 %270
  %272 = bitcast float* %271 to <8 x float>*
  %wide.load133 = load <8 x float>, <8 x float>* %272, align 4, !tbaa !12, !llvm.access.group !16
  %273 = fmul <8 x float> %broadcast.splat, %wide.load133
  %274 = bitcast float* %271 to <8 x float>*
  store <8 x float> %273, <8 x float>* %274, align 4, !tbaa !12, !llvm.access.group !16
  %275 = add nsw i32 %196, %conv.i.i.13
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds float, float* %13, i64 %276
  %278 = bitcast float* %277 to <8 x float>*
  %wide.load134 = load <8 x float>, <8 x float>* %278, align 4, !tbaa !12, !llvm.access.group !16
  %279 = fmul <8 x float> %broadcast.splat, %wide.load134
  %280 = bitcast float* %277 to <8 x float>*
  store <8 x float> %279, <8 x float>* %280, align 4, !tbaa !12, !llvm.access.group !16
  %281 = add nsw i32 %196, %conv.i.i.14
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds float, float* %13, i64 %282
  %284 = bitcast float* %283 to <8 x float>*
  %wide.load135 = load <8 x float>, <8 x float>* %284, align 4, !tbaa !12, !llvm.access.group !16
  %285 = fmul <8 x float> %broadcast.splat, %wide.load135
  %286 = bitcast float* %283 to <8 x float>*
  store <8 x float> %285, <8 x float>* %286, align 4, !tbaa !12, !llvm.access.group !16
  %287 = add nsw i32 %196, %conv.i.i.15
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float* %13, i64 %288
  %290 = bitcast float* %289 to <8 x float>*
  %wide.load136 = load <8 x float>, <8 x float>* %290, align 4, !tbaa !12, !llvm.access.group !16
  %291 = fmul <8 x float> %broadcast.splat, %wide.load136
  %292 = bitcast float* %289 to <8 x float>*
  store <8 x float> %291, <8 x float>* %292, align 4, !tbaa !12, !llvm.access.group !16
  %293 = add nsw i32 %196, %conv.i.i.16
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %13, i64 %294
  %296 = bitcast float* %295 to <8 x float>*
  %wide.load137 = load <8 x float>, <8 x float>* %296, align 4, !tbaa !12, !llvm.access.group !16
  %297 = fmul <8 x float> %broadcast.splat, %wide.load137
  %298 = bitcast float* %295 to <8 x float>*
  store <8 x float> %297, <8 x float>* %298, align 4, !tbaa !12, !llvm.access.group !16
  %299 = add nsw i32 %196, %conv.i.i.17
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %13, i64 %300
  %302 = bitcast float* %301 to <8 x float>*
  %wide.load138 = load <8 x float>, <8 x float>* %302, align 4, !tbaa !12, !llvm.access.group !16
  %303 = fmul <8 x float> %broadcast.splat, %wide.load138
  %304 = bitcast float* %301 to <8 x float>*
  store <8 x float> %303, <8 x float>* %304, align 4, !tbaa !12, !llvm.access.group !16
  %305 = add nsw i32 %196, %conv.i.i.18
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %13, i64 %306
  %308 = bitcast float* %307 to <8 x float>*
  %wide.load139 = load <8 x float>, <8 x float>* %308, align 4, !tbaa !12, !llvm.access.group !16
  %309 = fmul <8 x float> %broadcast.splat, %wide.load139
  %310 = bitcast float* %307 to <8 x float>*
  store <8 x float> %309, <8 x float>* %310, align 4, !tbaa !12, !llvm.access.group !16
  %311 = add nsw i32 %196, %conv.i.i.19
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds float, float* %13, i64 %312
  %314 = bitcast float* %313 to <8 x float>*
  %wide.load140 = load <8 x float>, <8 x float>* %314, align 4, !tbaa !12, !llvm.access.group !16
  %315 = fmul <8 x float> %broadcast.splat, %wide.load140
  %316 = bitcast float* %313 to <8 x float>*
  store <8 x float> %315, <8 x float>* %316, align 4, !tbaa !12, !llvm.access.group !16
  %317 = add nsw i32 %196, %conv.i.i.20
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds float, float* %13, i64 %318
  %320 = bitcast float* %319 to <8 x float>*
  %wide.load141 = load <8 x float>, <8 x float>* %320, align 4, !tbaa !12, !llvm.access.group !16
  %321 = fmul <8 x float> %broadcast.splat, %wide.load141
  %322 = bitcast float* %319 to <8 x float>*
  store <8 x float> %321, <8 x float>* %322, align 4, !tbaa !12, !llvm.access.group !16
  %323 = add nsw i32 %196, %conv.i.i.21
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds float, float* %13, i64 %324
  %326 = bitcast float* %325 to <8 x float>*
  %wide.load142 = load <8 x float>, <8 x float>* %326, align 4, !tbaa !12, !llvm.access.group !16
  %327 = fmul <8 x float> %broadcast.splat, %wide.load142
  %328 = bitcast float* %325 to <8 x float>*
  store <8 x float> %327, <8 x float>* %328, align 4, !tbaa !12, !llvm.access.group !16
  %329 = add nsw i32 %196, %conv.i.i.22
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds float, float* %13, i64 %330
  %332 = bitcast float* %331 to <8 x float>*
  %wide.load143 = load <8 x float>, <8 x float>* %332, align 4, !tbaa !12, !llvm.access.group !16
  %333 = fmul <8 x float> %broadcast.splat, %wide.load143
  %334 = bitcast float* %331 to <8 x float>*
  store <8 x float> %333, <8 x float>* %334, align 4, !tbaa !12, !llvm.access.group !16
  %335 = add nsw i32 %196, %conv.i.i.23
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds float, float* %13, i64 %336
  %338 = bitcast float* %337 to <8 x float>*
  %wide.load144 = load <8 x float>, <8 x float>* %338, align 4, !tbaa !12, !llvm.access.group !16
  %339 = fmul <8 x float> %broadcast.splat, %wide.load144
  %340 = bitcast float* %337 to <8 x float>*
  store <8 x float> %339, <8 x float>* %340, align 4, !tbaa !12, !llvm.access.group !16
  %341 = add nsw i32 %196, %conv.i.i.24
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds float, float* %13, i64 %342
  %344 = bitcast float* %343 to <8 x float>*
  %wide.load145 = load <8 x float>, <8 x float>* %344, align 4, !tbaa !12, !llvm.access.group !16
  %345 = fmul <8 x float> %broadcast.splat, %wide.load145
  %346 = bitcast float* %343 to <8 x float>*
  store <8 x float> %345, <8 x float>* %346, align 4, !tbaa !12, !llvm.access.group !16
  %347 = add nsw i32 %196, %conv.i.i.25
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds float, float* %13, i64 %348
  %350 = bitcast float* %349 to <8 x float>*
  %wide.load146 = load <8 x float>, <8 x float>* %350, align 4, !tbaa !12, !llvm.access.group !16
  %351 = fmul <8 x float> %broadcast.splat, %wide.load146
  %352 = bitcast float* %349 to <8 x float>*
  store <8 x float> %351, <8 x float>* %352, align 4, !tbaa !12, !llvm.access.group !16
  %353 = add nsw i32 %196, %conv.i.i.26
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds float, float* %13, i64 %354
  %356 = bitcast float* %355 to <8 x float>*
  %wide.load147 = load <8 x float>, <8 x float>* %356, align 4, !tbaa !12, !llvm.access.group !16
  %357 = fmul <8 x float> %broadcast.splat, %wide.load147
  %358 = bitcast float* %355 to <8 x float>*
  store <8 x float> %357, <8 x float>* %358, align 4, !tbaa !12, !llvm.access.group !16
  %359 = add nsw i32 %196, %conv.i.i.27
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds float, float* %13, i64 %360
  %362 = bitcast float* %361 to <8 x float>*
  %wide.load148 = load <8 x float>, <8 x float>* %362, align 4, !tbaa !12, !llvm.access.group !16
  %363 = fmul <8 x float> %broadcast.splat, %wide.load148
  %364 = bitcast float* %361 to <8 x float>*
  store <8 x float> %363, <8 x float>* %364, align 4, !tbaa !12, !llvm.access.group !16
  %365 = add nsw i32 %196, %conv.i.i.28
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds float, float* %13, i64 %366
  %368 = bitcast float* %367 to <8 x float>*
  %wide.load149 = load <8 x float>, <8 x float>* %368, align 4, !tbaa !12, !llvm.access.group !16
  %369 = fmul <8 x float> %broadcast.splat, %wide.load149
  %370 = bitcast float* %367 to <8 x float>*
  store <8 x float> %369, <8 x float>* %370, align 4, !tbaa !12, !llvm.access.group !16
  %371 = add nsw i32 %196, %conv.i.i.29
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds float, float* %13, i64 %372
  %374 = bitcast float* %373 to <8 x float>*
  %wide.load150 = load <8 x float>, <8 x float>* %374, align 4, !tbaa !12, !llvm.access.group !16
  %375 = fmul <8 x float> %broadcast.splat, %wide.load150
  %376 = bitcast float* %373 to <8 x float>*
  store <8 x float> %375, <8 x float>* %376, align 4, !tbaa !12, !llvm.access.group !16
  %377 = add nsw i32 %196, %conv.i.i.30
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds float, float* %13, i64 %378
  %380 = bitcast float* %379 to <8 x float>*
  %wide.load151 = load <8 x float>, <8 x float>* %380, align 4, !tbaa !12, !llvm.access.group !16
  %381 = fmul <8 x float> %broadcast.splat, %wide.load151
  %382 = bitcast float* %379 to <8 x float>*
  store <8 x float> %381, <8 x float>* %382, align 4, !tbaa !12, !llvm.access.group !16
  %383 = add nsw i32 %196, %conv.i.i.31
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds float, float* %13, i64 %384
  %386 = bitcast float* %385 to <8 x float>*
  %wide.load152 = load <8 x float>, <8 x float>* %386, align 4, !tbaa !12, !llvm.access.group !16
  %387 = fmul <8 x float> %broadcast.splat, %wide.load152
  %388 = bitcast float* %385 to <8 x float>*
  store <8 x float> %387, <8 x float>* %388, align 4, !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_syr2k_kernel.exit

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %mul.i.i.us = mul nsw i32 %29, %conv2.i.i.us
  %mul5.i.i.us = mul nsw i32 %25, %conv2.i.i.us
  %389 = sext i32 %mul5.i.i.us to i64
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_entry.entry.i.i.us.us:                ; preds = %for.end.r_exit.i.i.loopexit.us.us, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.i.us.preheader ], [ %392, %for.end.r_exit.i.i.loopexit.us.us ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us
  %390 = load float, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us = fmul float %21, %390
  store float %mul3.i.i.us.us, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us = mul nsw i32 %25, %conv.i.i.us.us
  %391 = sext i32 %mul10.i.i.us.us to i64
  br label %for.body.i.i.us.us

for.end.r_exit.i.i.loopexit.us.us:                ; preds = %for.body.i.i.us.us
  %392 = add nuw nsw i64 %_local_id_x.i.0.us.us, 1
  %exitcond.not = icmp eq i64 %392, 32
  br i1 %exitcond.not, label %pregion_for_end.i.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !19

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %pregion_for_entry.entry.i.i.us.us
  %indvars.iv.next.i.i3.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us ]
  %add29.i.i1.us.us = phi float [ %add29.i.i.us.us, %for.body.i.i.us.us ], [ %mul3.i.i.us.us, %pregion_for_entry.entry.i.i.us.us ]
  %393 = add nsw i64 %indvars.iv.next.i.i3.us.us, %389
  %arrayidx8.i.i.us.us = getelementptr inbounds float, float* %7, i64 %393
  %394 = load float, float* %arrayidx8.i.i.us.us, align 4, !tbaa !12
  %mul9.i.i.us.us = fmul float %17, %394
  %395 = add nsw i64 %indvars.iv.next.i.i3.us.us, %391
  %arrayidx13.i.i.us.us = getelementptr inbounds float, float* %10, i64 %395
  %396 = load float, float* %arrayidx13.i.i.us.us, align 4, !tbaa !12
  %arrayidx18.i.i.us.us = getelementptr inbounds float, float* %10, i64 %393
  %397 = load float, float* %arrayidx18.i.i.us.us, align 4, !tbaa !12
  %mul19.i.i.us.us = fmul float %17, %397
  %arrayidx23.i.i.us.us = getelementptr inbounds float, float* %7, i64 %395
  %398 = load float, float* %arrayidx23.i.i.us.us, align 4, !tbaa !12
  %mul24.i.i.us.us = fmul float %mul19.i.i.us.us, %398
  %399 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us, float %396, float %mul24.i.i.us.us) #2
  %add29.i.i.us.us = fadd float %add29.i.i1.us.us, %399
  store float %add29.i.i.us.us, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i3.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %for.end.r_exit.i.i.loopexit.us.us, label %for.body.i.i.us.us, !llvm.loop !21

pregion_for_end.i.i.us-lcssa.us.us:               ; preds = %for.end.r_exit.i.i.loopexit.us.us
  %400 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %400, 1
  %mul.i.i.us.1 = mul nsw i32 %29, %conv2.i.i.us.1
  %mul5.i.i.us.1 = mul nsw i32 %25, %conv2.i.i.us.1
  %401 = sext i32 %mul5.i.i.us.1 to i64
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader156
  %_local_id_y.i.0 = phi i64 [ %434, %pregion_for_entry.pregion_for_init.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader156 ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %mul.i.i = mul nsw i32 %29, %conv2.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %13, i64 %idxprom.i.i
  %402 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i = fmul float %21, %402
  store float %mul3.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.1
  %403 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.1 = fmul float %21, %403
  store float %mul3.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.2 = add nsw i32 %mul.i.i, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.2
  %404 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.2 = fmul float %21, %404
  store float %mul3.i.i.2, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.3 = add nsw i32 %mul.i.i, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.3
  %405 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.3 = fmul float %21, %405
  store float %mul3.i.i.3, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.4 = add nsw i32 %mul.i.i, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.4
  %406 = load float, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.4 = fmul float %21, %406
  store float %mul3.i.i.4, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.5 = add nsw i32 %mul.i.i, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.5
  %407 = load float, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.5 = fmul float %21, %407
  store float %mul3.i.i.5, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.6 = add nsw i32 %mul.i.i, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.6
  %408 = load float, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.6 = fmul float %21, %408
  store float %mul3.i.i.6, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.7 = add nsw i32 %mul.i.i, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.7
  %409 = load float, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.7 = fmul float %21, %409
  store float %mul3.i.i.7, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.8 = add nsw i32 %mul.i.i, %conv.i.i.8
  %idxprom.i.i.8 = sext i32 %add.i.i.8 to i64
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.8
  %410 = load float, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.8 = fmul float %21, %410
  store float %mul3.i.i.8, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.9 = add nsw i32 %mul.i.i, %conv.i.i.9
  %idxprom.i.i.9 = sext i32 %add.i.i.9 to i64
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.9
  %411 = load float, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.9 = fmul float %21, %411
  store float %mul3.i.i.9, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.10 = add nsw i32 %mul.i.i, %conv.i.i.10
  %idxprom.i.i.10 = sext i32 %add.i.i.10 to i64
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.10
  %412 = load float, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.10 = fmul float %21, %412
  store float %mul3.i.i.10, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.11 = add nsw i32 %mul.i.i, %conv.i.i.11
  %idxprom.i.i.11 = sext i32 %add.i.i.11 to i64
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.11
  %413 = load float, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.11 = fmul float %21, %413
  store float %mul3.i.i.11, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.12 = add nsw i32 %mul.i.i, %conv.i.i.12
  %idxprom.i.i.12 = sext i32 %add.i.i.12 to i64
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.12
  %414 = load float, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.12 = fmul float %21, %414
  store float %mul3.i.i.12, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.13 = add nsw i32 %mul.i.i, %conv.i.i.13
  %idxprom.i.i.13 = sext i32 %add.i.i.13 to i64
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.13
  %415 = load float, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.13 = fmul float %21, %415
  store float %mul3.i.i.13, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.14 = add nsw i32 %mul.i.i, %conv.i.i.14
  %idxprom.i.i.14 = sext i32 %add.i.i.14 to i64
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.14
  %416 = load float, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.14 = fmul float %21, %416
  store float %mul3.i.i.14, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.15 = add nsw i32 %mul.i.i, %conv.i.i.15
  %idxprom.i.i.15 = sext i32 %add.i.i.15 to i64
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.15
  %417 = load float, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.15 = fmul float %21, %417
  store float %mul3.i.i.15, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.16 = add nsw i32 %mul.i.i, %conv.i.i.16
  %idxprom.i.i.16 = sext i32 %add.i.i.16 to i64
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.16
  %418 = load float, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.16 = fmul float %21, %418
  store float %mul3.i.i.16, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.17 = add nsw i32 %mul.i.i, %conv.i.i.17
  %idxprom.i.i.17 = sext i32 %add.i.i.17 to i64
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.17
  %419 = load float, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.17 = fmul float %21, %419
  store float %mul3.i.i.17, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.18 = add nsw i32 %mul.i.i, %conv.i.i.18
  %idxprom.i.i.18 = sext i32 %add.i.i.18 to i64
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.18
  %420 = load float, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.18 = fmul float %21, %420
  store float %mul3.i.i.18, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.19 = add nsw i32 %mul.i.i, %conv.i.i.19
  %idxprom.i.i.19 = sext i32 %add.i.i.19 to i64
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.19
  %421 = load float, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.19 = fmul float %21, %421
  store float %mul3.i.i.19, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.20 = add nsw i32 %mul.i.i, %conv.i.i.20
  %idxprom.i.i.20 = sext i32 %add.i.i.20 to i64
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.20
  %422 = load float, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.20 = fmul float %21, %422
  store float %mul3.i.i.20, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.21 = add nsw i32 %mul.i.i, %conv.i.i.21
  %idxprom.i.i.21 = sext i32 %add.i.i.21 to i64
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.21
  %423 = load float, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.21 = fmul float %21, %423
  store float %mul3.i.i.21, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.22 = add nsw i32 %mul.i.i, %conv.i.i.22
  %idxprom.i.i.22 = sext i32 %add.i.i.22 to i64
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.22
  %424 = load float, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.22 = fmul float %21, %424
  store float %mul3.i.i.22, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.23 = add nsw i32 %mul.i.i, %conv.i.i.23
  %idxprom.i.i.23 = sext i32 %add.i.i.23 to i64
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.23
  %425 = load float, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.23 = fmul float %21, %425
  store float %mul3.i.i.23, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.24 = add nsw i32 %mul.i.i, %conv.i.i.24
  %idxprom.i.i.24 = sext i32 %add.i.i.24 to i64
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.24
  %426 = load float, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.24 = fmul float %21, %426
  store float %mul3.i.i.24, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.25 = add nsw i32 %mul.i.i, %conv.i.i.25
  %idxprom.i.i.25 = sext i32 %add.i.i.25 to i64
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.25
  %427 = load float, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.25 = fmul float %21, %427
  store float %mul3.i.i.25, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.26 = add nsw i32 %mul.i.i, %conv.i.i.26
  %idxprom.i.i.26 = sext i32 %add.i.i.26 to i64
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.26
  %428 = load float, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.26 = fmul float %21, %428
  store float %mul3.i.i.26, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.27 = add nsw i32 %mul.i.i, %conv.i.i.27
  %idxprom.i.i.27 = sext i32 %add.i.i.27 to i64
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.27
  %429 = load float, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.27 = fmul float %21, %429
  store float %mul3.i.i.27, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.28 = add nsw i32 %mul.i.i, %conv.i.i.28
  %idxprom.i.i.28 = sext i32 %add.i.i.28 to i64
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.28
  %430 = load float, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.28 = fmul float %21, %430
  store float %mul3.i.i.28, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.29 = add nsw i32 %mul.i.i, %conv.i.i.29
  %idxprom.i.i.29 = sext i32 %add.i.i.29 to i64
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.29
  %431 = load float, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.29 = fmul float %21, %431
  store float %mul3.i.i.29, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.30 = add nsw i32 %mul.i.i, %conv.i.i.30
  %idxprom.i.i.30 = sext i32 %add.i.i.30 to i64
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.30
  %432 = load float, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.30 = fmul float %21, %432
  store float %mul3.i.i.30, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.31 = add nsw i32 %mul.i.i, %conv.i.i.31
  %idxprom.i.i.31 = sext i32 %add.i.i.31 to i64
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.31
  %433 = load float, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.31 = fmul float %21, %433
  store float %mul3.i.i.31, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %434 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond38.not = icmp eq i64 %434, 8
  br i1 %exitcond38.not, label %_pocl_kernel_syr2k_kernel.exit.loopexit157, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !27

_pocl_kernel_syr2k_kernel.exit.loopexit:          ; preds = %for.end.r_exit.i.i.loopexit.us.us.7
  br label %_pocl_kernel_syr2k_kernel.exit

_pocl_kernel_syr2k_kernel.exit.loopexit157:       ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %_pocl_kernel_syr2k_kernel.exit

_pocl_kernel_syr2k_kernel.exit:                   ; preds = %_pocl_kernel_syr2k_kernel.exit.loopexit157, %_pocl_kernel_syr2k_kernel.exit.loopexit, %vector.ph
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.1, %pregion_for_end.i.i.us-lcssa.us.us
  %_local_id_x.i.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us ], [ %444, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.1
  %435 = load float, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1 = fmul float %21, %435
  store float %mul3.i.i.us.us.1, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.1 = mul nsw i32 %25, %conv.i.i.us.us.1
  %436 = sext i32 %mul10.i.i.us.us.1 to i64
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1
  %indvars.iv.next.i.i3.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1 ]
  %add29.i.i1.us.us.1 = phi float [ %add29.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ %mul3.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1 ]
  %437 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %401
  %arrayidx8.i.i.us.us.1 = getelementptr inbounds float, float* %7, i64 %437
  %438 = load float, float* %arrayidx8.i.i.us.us.1, align 4, !tbaa !12
  %mul9.i.i.us.us.1 = fmul float %17, %438
  %439 = add nsw i64 %indvars.iv.next.i.i3.us.us.1, %436
  %arrayidx13.i.i.us.us.1 = getelementptr inbounds float, float* %10, i64 %439
  %440 = load float, float* %arrayidx13.i.i.us.us.1, align 4, !tbaa !12
  %arrayidx18.i.i.us.us.1 = getelementptr inbounds float, float* %10, i64 %437
  %441 = load float, float* %arrayidx18.i.i.us.us.1, align 4, !tbaa !12
  %mul19.i.i.us.us.1 = fmul float %17, %441
  %arrayidx23.i.i.us.us.1 = getelementptr inbounds float, float* %7, i64 %439
  %442 = load float, float* %arrayidx23.i.i.us.us.1, align 4, !tbaa !12
  %mul24.i.i.us.us.1 = fmul float %mul19.i.i.us.us.1, %442
  %443 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.1, float %440, float %mul24.i.i.us.us.1) #2
  %add29.i.i.us.us.1 = fadd float %add29.i.i1.us.us.1, %443
  store float %add29.i.i.us.us.1, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %for.end.r_exit.i.i.loopexit.us.us.1, label %for.body.i.i.us.us.1, !llvm.loop !21

for.end.r_exit.i.i.loopexit.us.us.1:              ; preds = %for.body.i.i.us.us.1
  %444 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 1
  %exitcond.1.not = icmp eq i64 %444, 32
  br i1 %exitcond.1.not, label %pregion_for_end.i.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us.1:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.1
  %445 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %445, 2
  %mul.i.i.us.2 = mul nsw i32 %29, %conv2.i.i.us.2
  %mul5.i.i.us.2 = mul nsw i32 %25, %conv2.i.i.us.2
  %446 = sext i32 %mul5.i.i.us.2 to i64
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.2, %pregion_for_end.i.i.us-lcssa.us.us.1
  %_local_id_x.i.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.1 ], [ %456, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.2
  %447 = load float, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.2 = fmul float %21, %447
  store float %mul3.i.i.us.us.2, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.2 = mul nsw i32 %25, %conv.i.i.us.us.2
  %448 = sext i32 %mul10.i.i.us.us.2 to i64
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2
  %indvars.iv.next.i.i3.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2 ]
  %add29.i.i1.us.us.2 = phi float [ %add29.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ %mul3.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2 ]
  %449 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %446
  %arrayidx8.i.i.us.us.2 = getelementptr inbounds float, float* %7, i64 %449
  %450 = load float, float* %arrayidx8.i.i.us.us.2, align 4, !tbaa !12
  %mul9.i.i.us.us.2 = fmul float %17, %450
  %451 = add nsw i64 %indvars.iv.next.i.i3.us.us.2, %448
  %arrayidx13.i.i.us.us.2 = getelementptr inbounds float, float* %10, i64 %451
  %452 = load float, float* %arrayidx13.i.i.us.us.2, align 4, !tbaa !12
  %arrayidx18.i.i.us.us.2 = getelementptr inbounds float, float* %10, i64 %449
  %453 = load float, float* %arrayidx18.i.i.us.us.2, align 4, !tbaa !12
  %mul19.i.i.us.us.2 = fmul float %17, %453
  %arrayidx23.i.i.us.us.2 = getelementptr inbounds float, float* %7, i64 %451
  %454 = load float, float* %arrayidx23.i.i.us.us.2, align 4, !tbaa !12
  %mul24.i.i.us.us.2 = fmul float %mul19.i.i.us.us.2, %454
  %455 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.2, float %452, float %mul24.i.i.us.us.2) #2
  %add29.i.i.us.us.2 = fadd float %add29.i.i1.us.us.2, %455
  store float %add29.i.i.us.us.2, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %for.end.r_exit.i.i.loopexit.us.us.2, label %for.body.i.i.us.us.2, !llvm.loop !21

for.end.r_exit.i.i.loopexit.us.us.2:              ; preds = %for.body.i.i.us.us.2
  %456 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 1
  %exitcond.2.not = icmp eq i64 %456, 32
  br i1 %exitcond.2.not, label %pregion_for_end.i.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us.2:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.2
  %457 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %457, 3
  %mul.i.i.us.3 = mul nsw i32 %29, %conv2.i.i.us.3
  %mul5.i.i.us.3 = mul nsw i32 %25, %conv2.i.i.us.3
  %458 = sext i32 %mul5.i.i.us.3 to i64
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.3, %pregion_for_end.i.i.us-lcssa.us.us.2
  %_local_id_x.i.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.2 ], [ %468, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.3
  %459 = load float, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.3 = fmul float %21, %459
  store float %mul3.i.i.us.us.3, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.3 = mul nsw i32 %25, %conv.i.i.us.us.3
  %460 = sext i32 %mul10.i.i.us.us.3 to i64
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3
  %indvars.iv.next.i.i3.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3 ]
  %add29.i.i1.us.us.3 = phi float [ %add29.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ %mul3.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3 ]
  %461 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %458
  %arrayidx8.i.i.us.us.3 = getelementptr inbounds float, float* %7, i64 %461
  %462 = load float, float* %arrayidx8.i.i.us.us.3, align 4, !tbaa !12
  %mul9.i.i.us.us.3 = fmul float %17, %462
  %463 = add nsw i64 %indvars.iv.next.i.i3.us.us.3, %460
  %arrayidx13.i.i.us.us.3 = getelementptr inbounds float, float* %10, i64 %463
  %464 = load float, float* %arrayidx13.i.i.us.us.3, align 4, !tbaa !12
  %arrayidx18.i.i.us.us.3 = getelementptr inbounds float, float* %10, i64 %461
  %465 = load float, float* %arrayidx18.i.i.us.us.3, align 4, !tbaa !12
  %mul19.i.i.us.us.3 = fmul float %17, %465
  %arrayidx23.i.i.us.us.3 = getelementptr inbounds float, float* %7, i64 %463
  %466 = load float, float* %arrayidx23.i.i.us.us.3, align 4, !tbaa !12
  %mul24.i.i.us.us.3 = fmul float %mul19.i.i.us.us.3, %466
  %467 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.3, float %464, float %mul24.i.i.us.us.3) #2
  %add29.i.i.us.us.3 = fadd float %add29.i.i1.us.us.3, %467
  store float %add29.i.i.us.us.3, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %for.end.r_exit.i.i.loopexit.us.us.3, label %for.body.i.i.us.us.3, !llvm.loop !21

for.end.r_exit.i.i.loopexit.us.us.3:              ; preds = %for.body.i.i.us.us.3
  %468 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 1
  %exitcond.3.not = icmp eq i64 %468, 32
  br i1 %exitcond.3.not, label %pregion_for_end.i.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us.3:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.3
  %469 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %469, 4
  %mul.i.i.us.4 = mul nsw i32 %29, %conv2.i.i.us.4
  %mul5.i.i.us.4 = mul nsw i32 %25, %conv2.i.i.us.4
  %470 = sext i32 %mul5.i.i.us.4 to i64
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.4, %pregion_for_end.i.i.us-lcssa.us.us.3
  %_local_id_x.i.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.3 ], [ %480, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.4
  %471 = load float, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.4 = fmul float %21, %471
  store float %mul3.i.i.us.us.4, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.4 = mul nsw i32 %25, %conv.i.i.us.us.4
  %472 = sext i32 %mul10.i.i.us.us.4 to i64
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4
  %indvars.iv.next.i.i3.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4 ]
  %add29.i.i1.us.us.4 = phi float [ %add29.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ %mul3.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4 ]
  %473 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %470
  %arrayidx8.i.i.us.us.4 = getelementptr inbounds float, float* %7, i64 %473
  %474 = load float, float* %arrayidx8.i.i.us.us.4, align 4, !tbaa !12
  %mul9.i.i.us.us.4 = fmul float %17, %474
  %475 = add nsw i64 %indvars.iv.next.i.i3.us.us.4, %472
  %arrayidx13.i.i.us.us.4 = getelementptr inbounds float, float* %10, i64 %475
  %476 = load float, float* %arrayidx13.i.i.us.us.4, align 4, !tbaa !12
  %arrayidx18.i.i.us.us.4 = getelementptr inbounds float, float* %10, i64 %473
  %477 = load float, float* %arrayidx18.i.i.us.us.4, align 4, !tbaa !12
  %mul19.i.i.us.us.4 = fmul float %17, %477
  %arrayidx23.i.i.us.us.4 = getelementptr inbounds float, float* %7, i64 %475
  %478 = load float, float* %arrayidx23.i.i.us.us.4, align 4, !tbaa !12
  %mul24.i.i.us.us.4 = fmul float %mul19.i.i.us.us.4, %478
  %479 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.4, float %476, float %mul24.i.i.us.us.4) #2
  %add29.i.i.us.us.4 = fadd float %add29.i.i1.us.us.4, %479
  store float %add29.i.i.us.us.4, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %for.end.r_exit.i.i.loopexit.us.us.4, label %for.body.i.i.us.us.4, !llvm.loop !21

for.end.r_exit.i.i.loopexit.us.us.4:              ; preds = %for.body.i.i.us.us.4
  %480 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 1
  %exitcond.4.not = icmp eq i64 %480, 32
  br i1 %exitcond.4.not, label %pregion_for_end.i.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us.4:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.4
  %481 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %481, 5
  %mul.i.i.us.5 = mul nsw i32 %29, %conv2.i.i.us.5
  %mul5.i.i.us.5 = mul nsw i32 %25, %conv2.i.i.us.5
  %482 = sext i32 %mul5.i.i.us.5 to i64
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.5, %pregion_for_end.i.i.us-lcssa.us.us.4
  %_local_id_x.i.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.4 ], [ %492, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.5
  %483 = load float, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.5 = fmul float %21, %483
  store float %mul3.i.i.us.us.5, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.5 = mul nsw i32 %25, %conv.i.i.us.us.5
  %484 = sext i32 %mul10.i.i.us.us.5 to i64
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5
  %indvars.iv.next.i.i3.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5 ]
  %add29.i.i1.us.us.5 = phi float [ %add29.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ %mul3.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5 ]
  %485 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %482
  %arrayidx8.i.i.us.us.5 = getelementptr inbounds float, float* %7, i64 %485
  %486 = load float, float* %arrayidx8.i.i.us.us.5, align 4, !tbaa !12
  %mul9.i.i.us.us.5 = fmul float %17, %486
  %487 = add nsw i64 %indvars.iv.next.i.i3.us.us.5, %484
  %arrayidx13.i.i.us.us.5 = getelementptr inbounds float, float* %10, i64 %487
  %488 = load float, float* %arrayidx13.i.i.us.us.5, align 4, !tbaa !12
  %arrayidx18.i.i.us.us.5 = getelementptr inbounds float, float* %10, i64 %485
  %489 = load float, float* %arrayidx18.i.i.us.us.5, align 4, !tbaa !12
  %mul19.i.i.us.us.5 = fmul float %17, %489
  %arrayidx23.i.i.us.us.5 = getelementptr inbounds float, float* %7, i64 %487
  %490 = load float, float* %arrayidx23.i.i.us.us.5, align 4, !tbaa !12
  %mul24.i.i.us.us.5 = fmul float %mul19.i.i.us.us.5, %490
  %491 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.5, float %488, float %mul24.i.i.us.us.5) #2
  %add29.i.i.us.us.5 = fadd float %add29.i.i1.us.us.5, %491
  store float %add29.i.i.us.us.5, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %for.end.r_exit.i.i.loopexit.us.us.5, label %for.body.i.i.us.us.5, !llvm.loop !21

for.end.r_exit.i.i.loopexit.us.us.5:              ; preds = %for.body.i.i.us.us.5
  %492 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 1
  %exitcond.5.not = icmp eq i64 %492, 32
  br i1 %exitcond.5.not, label %pregion_for_end.i.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us.5:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.5
  %493 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %493, 6
  %mul.i.i.us.6 = mul nsw i32 %29, %conv2.i.i.us.6
  %mul5.i.i.us.6 = mul nsw i32 %25, %conv2.i.i.us.6
  %494 = sext i32 %mul5.i.i.us.6 to i64
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.6, %pregion_for_end.i.i.us-lcssa.us.us.5
  %_local_id_x.i.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.5 ], [ %504, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.6
  %495 = load float, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.6 = fmul float %21, %495
  store float %mul3.i.i.us.us.6, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.6 = mul nsw i32 %25, %conv.i.i.us.us.6
  %496 = sext i32 %mul10.i.i.us.us.6 to i64
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6
  %indvars.iv.next.i.i3.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6 ]
  %add29.i.i1.us.us.6 = phi float [ %add29.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ %mul3.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6 ]
  %497 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %494
  %arrayidx8.i.i.us.us.6 = getelementptr inbounds float, float* %7, i64 %497
  %498 = load float, float* %arrayidx8.i.i.us.us.6, align 4, !tbaa !12
  %mul9.i.i.us.us.6 = fmul float %17, %498
  %499 = add nsw i64 %indvars.iv.next.i.i3.us.us.6, %496
  %arrayidx13.i.i.us.us.6 = getelementptr inbounds float, float* %10, i64 %499
  %500 = load float, float* %arrayidx13.i.i.us.us.6, align 4, !tbaa !12
  %arrayidx18.i.i.us.us.6 = getelementptr inbounds float, float* %10, i64 %497
  %501 = load float, float* %arrayidx18.i.i.us.us.6, align 4, !tbaa !12
  %mul19.i.i.us.us.6 = fmul float %17, %501
  %arrayidx23.i.i.us.us.6 = getelementptr inbounds float, float* %7, i64 %499
  %502 = load float, float* %arrayidx23.i.i.us.us.6, align 4, !tbaa !12
  %mul24.i.i.us.us.6 = fmul float %mul19.i.i.us.us.6, %502
  %503 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.6, float %500, float %mul24.i.i.us.us.6) #2
  %add29.i.i.us.us.6 = fadd float %add29.i.i1.us.us.6, %503
  store float %add29.i.i.us.us.6, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %for.end.r_exit.i.i.loopexit.us.us.6, label %for.body.i.i.us.us.6, !llvm.loop !21

for.end.r_exit.i.i.loopexit.us.us.6:              ; preds = %for.body.i.i.us.us.6
  %504 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 1
  %exitcond.6.not = icmp eq i64 %504, 32
  br i1 %exitcond.6.not, label %pregion_for_end.i.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us.6:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.6
  %505 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %505, 7
  %mul.i.i.us.7 = mul nsw i32 %29, %conv2.i.i.us.7
  %mul5.i.i.us.7 = mul nsw i32 %25, %conv2.i.i.us.7
  %506 = sext i32 %mul5.i.i.us.7 to i64
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.7, %pregion_for_end.i.i.us-lcssa.us.us.6
  %_local_id_x.i.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.6 ], [ %516, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.7
  %507 = load float, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.7 = fmul float %21, %507
  store float %mul3.i.i.us.us.7, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.7 = mul nsw i32 %25, %conv.i.i.us.us.7
  %508 = sext i32 %mul10.i.i.us.us.7 to i64
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7
  %indvars.iv.next.i.i3.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7 ]
  %add29.i.i1.us.us.7 = phi float [ %add29.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ %mul3.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7 ]
  %509 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %506
  %arrayidx8.i.i.us.us.7 = getelementptr inbounds float, float* %7, i64 %509
  %510 = load float, float* %arrayidx8.i.i.us.us.7, align 4, !tbaa !12
  %mul9.i.i.us.us.7 = fmul float %17, %510
  %511 = add nsw i64 %indvars.iv.next.i.i3.us.us.7, %508
  %arrayidx13.i.i.us.us.7 = getelementptr inbounds float, float* %10, i64 %511
  %512 = load float, float* %arrayidx13.i.i.us.us.7, align 4, !tbaa !12
  %arrayidx18.i.i.us.us.7 = getelementptr inbounds float, float* %10, i64 %509
  %513 = load float, float* %arrayidx18.i.i.us.us.7, align 4, !tbaa !12
  %mul19.i.i.us.us.7 = fmul float %17, %513
  %arrayidx23.i.i.us.us.7 = getelementptr inbounds float, float* %7, i64 %511
  %514 = load float, float* %arrayidx23.i.i.us.us.7, align 4, !tbaa !12
  %mul24.i.i.us.us.7 = fmul float %mul19.i.i.us.us.7, %514
  %515 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.7, float %512, float %mul24.i.i.us.us.7) #2
  %add29.i.i.us.us.7 = fadd float %add29.i.i1.us.us.7, %515
  store float %add29.i.i.us.us.7, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i3.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %for.end.r_exit.i.i.loopexit.us.us.7, label %for.body.i.i.us.us.7, !llvm.loop !21

for.end.r_exit.i.i.loopexit.us.us.7:              ; preds = %for.body.i.i.us.us.7
  %516 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 1
  %exitcond.7.not = icmp eq i64 %516, 32
  br i1 %exitcond.7.not, label %_pocl_kernel_syr2k_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !19
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
!5 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"DATA_TYPE", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"float", !"float", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !"", !"", !""}
!10 = !{!"a", !"b", !"c", !"alpha", !"beta", !"ni", !"nj"}
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
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.parallel_accesses", !18}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = distinct !{!26, !24, !25}
!27 = distinct !{!27, !24, !25}
