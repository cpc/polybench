; ModuleID = './MK/OHILHLNKDJJPACCGIEGGHOGPIDHDLMFMOIFBF/mm3_kernel1/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_mm3_kernel1(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, i32 %3, i32 %4, i32 %5, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %6, i64 %7, i64 %8, i64 %9) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %7, 5
  %mul3.i.i = shl i64 %8, 3
  %cmp31.i = icmp sgt i32 %5, 0
  %11 = sext i32 %4 to i64
  %wide.trip.count.i = zext i32 %5 to i64
  br i1 %cmp31.i, label %pregion_for_entry.pregion_for_init.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.preheader

pregion_for_entry.pregion_for_init.i.preheader:   ; preds = %10
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
  %ident.check = icmp ne i32 %4, 1
  %43 = trunc i64 %8 to i32
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
  br i1 %176, label %pregion_for_entry.pregion_for_init.i.preheader131, label %vector.body

pregion_for_entry.pregion_for_init.i.preheader131: ; preds = %pregion_for_entry.pregion_for_init.i.preheader
  br label %pregion_for_entry.pregion_for_init.i

vector.body:                                      ; preds = %pregion_for_entry.pregion_for_init.i.preheader
  %177 = trunc i64 %mul3.i.i to i32
  %178 = mul nsw i32 %177, %4
  %179 = add nsw i32 %178, %conv.i
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %2, i64 %180
  %182 = bitcast float* %181 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %182, align 4, !tbaa !12, !llvm.access.group !16
  %183 = add nsw i32 %178, %conv.i.1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %2, i64 %184
  %186 = bitcast float* %185 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %186, align 4, !tbaa !12, !llvm.access.group !16
  %187 = add nsw i32 %178, %conv.i.2
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, float* %2, i64 %188
  %190 = bitcast float* %189 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %190, align 4, !tbaa !12, !llvm.access.group !16
  %191 = add nsw i32 %178, %conv.i.3
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %2, i64 %192
  %194 = bitcast float* %193 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %194, align 4, !tbaa !12, !llvm.access.group !16
  %195 = add nsw i32 %178, %conv.i.4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %2, i64 %196
  %198 = bitcast float* %197 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %198, align 4, !tbaa !12, !llvm.access.group !16
  %199 = add nsw i32 %178, %conv.i.5
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %2, i64 %200
  %202 = bitcast float* %201 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %202, align 4, !tbaa !12, !llvm.access.group !16
  %203 = add nsw i32 %178, %conv.i.6
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %2, i64 %204
  %206 = bitcast float* %205 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %206, align 4, !tbaa !12, !llvm.access.group !16
  %207 = add nsw i32 %178, %conv.i.7
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %2, i64 %208
  %210 = bitcast float* %209 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %210, align 4, !tbaa !12, !llvm.access.group !16
  %211 = add nsw i32 %178, %conv.i.8
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float, float* %2, i64 %212
  %214 = bitcast float* %213 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %214, align 4, !tbaa !12, !llvm.access.group !16
  %215 = add nsw i32 %178, %conv.i.9
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %2, i64 %216
  %218 = bitcast float* %217 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %218, align 4, !tbaa !12, !llvm.access.group !16
  %219 = add nsw i32 %178, %conv.i.10
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %2, i64 %220
  %222 = bitcast float* %221 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %222, align 4, !tbaa !12, !llvm.access.group !16
  %223 = add nsw i32 %178, %conv.i.11
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, float* %2, i64 %224
  %226 = bitcast float* %225 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %226, align 4, !tbaa !12, !llvm.access.group !16
  %227 = add nsw i32 %178, %conv.i.12
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %2, i64 %228
  %230 = bitcast float* %229 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %230, align 4, !tbaa !12, !llvm.access.group !16
  %231 = add nsw i32 %178, %conv.i.13
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %2, i64 %232
  %234 = bitcast float* %233 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %234, align 4, !tbaa !12, !llvm.access.group !16
  %235 = add nsw i32 %178, %conv.i.14
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %2, i64 %236
  %238 = bitcast float* %237 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %238, align 4, !tbaa !12, !llvm.access.group !16
  %239 = add nsw i32 %178, %conv.i.15
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %2, i64 %240
  %242 = bitcast float* %241 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %242, align 4, !tbaa !12, !llvm.access.group !16
  %243 = add nsw i32 %178, %conv.i.16
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds float, float* %2, i64 %244
  %246 = bitcast float* %245 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %246, align 4, !tbaa !12, !llvm.access.group !16
  %247 = add nsw i32 %178, %conv.i.17
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds float, float* %2, i64 %248
  %250 = bitcast float* %249 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %250, align 4, !tbaa !12, !llvm.access.group !16
  %251 = add nsw i32 %178, %conv.i.18
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %2, i64 %252
  %254 = bitcast float* %253 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %254, align 4, !tbaa !12, !llvm.access.group !16
  %255 = add nsw i32 %178, %conv.i.19
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, float* %2, i64 %256
  %258 = bitcast float* %257 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %258, align 4, !tbaa !12, !llvm.access.group !16
  %259 = add nsw i32 %178, %conv.i.20
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float* %2, i64 %260
  %262 = bitcast float* %261 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %262, align 4, !tbaa !12, !llvm.access.group !16
  %263 = add nsw i32 %178, %conv.i.21
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float, float* %2, i64 %264
  %266 = bitcast float* %265 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %266, align 4, !tbaa !12, !llvm.access.group !16
  %267 = add nsw i32 %178, %conv.i.22
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds float, float* %2, i64 %268
  %270 = bitcast float* %269 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %270, align 4, !tbaa !12, !llvm.access.group !16
  %271 = add nsw i32 %178, %conv.i.23
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds float, float* %2, i64 %272
  %274 = bitcast float* %273 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %274, align 4, !tbaa !12, !llvm.access.group !16
  %275 = add nsw i32 %178, %conv.i.24
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds float, float* %2, i64 %276
  %278 = bitcast float* %277 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %278, align 4, !tbaa !12, !llvm.access.group !16
  %279 = add nsw i32 %178, %conv.i.25
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds float, float* %2, i64 %280
  %282 = bitcast float* %281 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %282, align 4, !tbaa !12, !llvm.access.group !16
  %283 = add nsw i32 %178, %conv.i.26
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds float, float* %2, i64 %284
  %286 = bitcast float* %285 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %286, align 4, !tbaa !12, !llvm.access.group !16
  %287 = add nsw i32 %178, %conv.i.27
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float* %2, i64 %288
  %290 = bitcast float* %289 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %290, align 4, !tbaa !12, !llvm.access.group !16
  %291 = add nsw i32 %178, %conv.i.28
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds float, float* %2, i64 %292
  %294 = bitcast float* %293 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %294, align 4, !tbaa !12, !llvm.access.group !16
  %295 = add nsw i32 %178, %conv.i.29
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds float, float* %2, i64 %296
  %298 = bitcast float* %297 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %298, align 4, !tbaa !12, !llvm.access.group !16
  %299 = add nsw i32 %178, %conv.i.30
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %2, i64 %300
  %302 = bitcast float* %301 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %302, align 4, !tbaa !12, !llvm.access.group !16
  %303 = add nsw i32 %178, %conv.i.31
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds float, float* %2, i64 %304
  %306 = bitcast float* %305 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %306, align 4, !tbaa !12, !llvm.access.group !16
  br label %mm3_kernel1.exit

pregion_for_entry.pregion_for_init.i.us.preheader: ; preds = %10
  %conv2.i.us = trunc i64 %mul3.i.i to i32
  %mul.i.us = mul nsw i32 %conv2.i.us, %4
  %mul4.i.us = mul nsw i32 %conv2.i.us, %5
  %307 = sext i32 %mul4.i.us to i64
  br label %pregion_for_entry.entry.i.us.us

pregion_for_entry.entry.i.us.us:                  ; preds = %for.end.r_exit.i.loopexit.us.us.1130, %pregion_for_entry.pregion_for_init.i.us.preheader
  %_local_id_x.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.us.preheader ], [ %466, %for.end.r_exit.i.loopexit.us.us.1130 ]
  %add1.i.i.us.us = add nuw nsw i64 %_local_id_x.0.us.us, %mul.i.i
  %conv.i.us.us = trunc i64 %add1.i.i.us.us to i32
  %add.i.us.us = add nsw i32 %mul.i.us, %conv.i.us.us
  %idxprom.i.us.us = sext i32 %add.i.us.us to i64
  %arrayidx.i.us.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us = shl i64 %add1.i.i.us.us, 32
  %308 = ashr exact i64 %sext.i.us.us, 32
  br label %for.body.i.us.us

for.end.r_exit.i.loopexit.us.us:                  ; preds = %for.body.i.us.us
  %309 = or i64 %_local_id_x.0.us.us, 1
  %add1.i.i.us.us.1117 = add nuw nsw i64 %309, %mul.i.i
  %conv.i.us.us.1118 = trunc i64 %add1.i.i.us.us.1117 to i32
  %add.i.us.us.1119 = add nsw i32 %mul.i.us, %conv.i.us.us.1118
  %idxprom.i.us.us.1120 = sext i32 %add.i.us.us.1119 to i64
  %arrayidx.i.us.us.1121 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.1120
  store float 0.000000e+00, float* %arrayidx.i.us.us.1121, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1122 = shl i64 %add1.i.i.us.us.1117, 32
  %310 = ashr exact i64 %sext.i.us.us.1122, 32
  br label %for.body.i.us.us.1129

for.body.i.us.us:                                 ; preds = %for.body.i.us.us, %pregion_for_entry.entry.i.us.us
  %indvars.iv.next.i2.us.us = phi i64 [ %indvars.iv.next.i.us.us, %for.body.i.us.us ], [ 0, %pregion_for_entry.entry.i.us.us ]
  %311 = phi float [ %317, %for.body.i.us.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us ]
  %312 = add nsw i64 %indvars.iv.next.i2.us.us, %307
  %arrayidx7.i.us.us = getelementptr inbounds float, float* %0, i64 %312
  %313 = load float, float* %arrayidx7.i.us.us, align 4, !tbaa !12
  %314 = mul nsw i64 %indvars.iv.next.i2.us.us, %11
  %315 = add nsw i64 %314, %308
  %arrayidx11.i.us.us = getelementptr inbounds float, float* %1, i64 %315
  %316 = load float, float* %arrayidx11.i.us.us, align 4, !tbaa !12
  %317 = tail call float @llvm.fmuladd.f32(float %313, float %316, float %311) #2
  store float %317, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.next.i2.us.us, 1
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %for.end.r_exit.i.loopexit.us.us, label %for.body.i.us.us, !llvm.loop !19

pregion_for_end.i.us-lcssa.us.us:                 ; preds = %for.end.r_exit.i.loopexit.us.us.1130
  %318 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.1 = or i32 %318, 1
  %mul.i.us.1 = mul nsw i32 %conv2.i.us.1, %4
  %mul4.i.us.1 = mul nsw i32 %conv2.i.us.1, %5
  %319 = sext i32 %mul4.i.us.1 to i64
  br label %pregion_for_entry.entry.i.us.us.1

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_entry.pregion_for_init.i, %pregion_for_entry.pregion_for_init.i.preheader131
  %_local_id_y.0 = phi i64 [ %320, %pregion_for_entry.pregion_for_init.i ], [ 0, %pregion_for_entry.pregion_for_init.i.preheader131 ]
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %mul.i = mul nsw i32 %conv2.i, %4
  %add.i = add nsw i32 %mul.i, %conv.i
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %2, i64 %idxprom.i
  store float 0.000000e+00, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.1 = add nsw i32 %mul.i, %conv.i.1
  %idxprom.i.1 = sext i32 %add.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.1
  store float 0.000000e+00, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.2 = add nsw i32 %mul.i, %conv.i.2
  %idxprom.i.2 = sext i32 %add.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.2
  store float 0.000000e+00, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.3 = add nsw i32 %mul.i, %conv.i.3
  %idxprom.i.3 = sext i32 %add.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.3
  store float 0.000000e+00, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.4 = add nsw i32 %mul.i, %conv.i.4
  %idxprom.i.4 = sext i32 %add.i.4 to i64
  %arrayidx.i.4 = getelementptr inbounds float, float* %2, i64 %idxprom.i.4
  store float 0.000000e+00, float* %arrayidx.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.5 = add nsw i32 %mul.i, %conv.i.5
  %idxprom.i.5 = sext i32 %add.i.5 to i64
  %arrayidx.i.5 = getelementptr inbounds float, float* %2, i64 %idxprom.i.5
  store float 0.000000e+00, float* %arrayidx.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.6 = add nsw i32 %mul.i, %conv.i.6
  %idxprom.i.6 = sext i32 %add.i.6 to i64
  %arrayidx.i.6 = getelementptr inbounds float, float* %2, i64 %idxprom.i.6
  store float 0.000000e+00, float* %arrayidx.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.7 = add nsw i32 %mul.i, %conv.i.7
  %idxprom.i.7 = sext i32 %add.i.7 to i64
  %arrayidx.i.7 = getelementptr inbounds float, float* %2, i64 %idxprom.i.7
  store float 0.000000e+00, float* %arrayidx.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.8 = add nsw i32 %mul.i, %conv.i.8
  %idxprom.i.8 = sext i32 %add.i.8 to i64
  %arrayidx.i.8 = getelementptr inbounds float, float* %2, i64 %idxprom.i.8
  store float 0.000000e+00, float* %arrayidx.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.9 = add nsw i32 %mul.i, %conv.i.9
  %idxprom.i.9 = sext i32 %add.i.9 to i64
  %arrayidx.i.9 = getelementptr inbounds float, float* %2, i64 %idxprom.i.9
  store float 0.000000e+00, float* %arrayidx.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.10 = add nsw i32 %mul.i, %conv.i.10
  %idxprom.i.10 = sext i32 %add.i.10 to i64
  %arrayidx.i.10 = getelementptr inbounds float, float* %2, i64 %idxprom.i.10
  store float 0.000000e+00, float* %arrayidx.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.11 = add nsw i32 %mul.i, %conv.i.11
  %idxprom.i.11 = sext i32 %add.i.11 to i64
  %arrayidx.i.11 = getelementptr inbounds float, float* %2, i64 %idxprom.i.11
  store float 0.000000e+00, float* %arrayidx.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.12 = add nsw i32 %mul.i, %conv.i.12
  %idxprom.i.12 = sext i32 %add.i.12 to i64
  %arrayidx.i.12 = getelementptr inbounds float, float* %2, i64 %idxprom.i.12
  store float 0.000000e+00, float* %arrayidx.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.13 = add nsw i32 %mul.i, %conv.i.13
  %idxprom.i.13 = sext i32 %add.i.13 to i64
  %arrayidx.i.13 = getelementptr inbounds float, float* %2, i64 %idxprom.i.13
  store float 0.000000e+00, float* %arrayidx.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.14 = add nsw i32 %mul.i, %conv.i.14
  %idxprom.i.14 = sext i32 %add.i.14 to i64
  %arrayidx.i.14 = getelementptr inbounds float, float* %2, i64 %idxprom.i.14
  store float 0.000000e+00, float* %arrayidx.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.15 = add nsw i32 %mul.i, %conv.i.15
  %idxprom.i.15 = sext i32 %add.i.15 to i64
  %arrayidx.i.15 = getelementptr inbounds float, float* %2, i64 %idxprom.i.15
  store float 0.000000e+00, float* %arrayidx.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.16 = add nsw i32 %mul.i, %conv.i.16
  %idxprom.i.16 = sext i32 %add.i.16 to i64
  %arrayidx.i.16 = getelementptr inbounds float, float* %2, i64 %idxprom.i.16
  store float 0.000000e+00, float* %arrayidx.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.17 = add nsw i32 %mul.i, %conv.i.17
  %idxprom.i.17 = sext i32 %add.i.17 to i64
  %arrayidx.i.17 = getelementptr inbounds float, float* %2, i64 %idxprom.i.17
  store float 0.000000e+00, float* %arrayidx.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.18 = add nsw i32 %mul.i, %conv.i.18
  %idxprom.i.18 = sext i32 %add.i.18 to i64
  %arrayidx.i.18 = getelementptr inbounds float, float* %2, i64 %idxprom.i.18
  store float 0.000000e+00, float* %arrayidx.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.19 = add nsw i32 %mul.i, %conv.i.19
  %idxprom.i.19 = sext i32 %add.i.19 to i64
  %arrayidx.i.19 = getelementptr inbounds float, float* %2, i64 %idxprom.i.19
  store float 0.000000e+00, float* %arrayidx.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.20 = add nsw i32 %mul.i, %conv.i.20
  %idxprom.i.20 = sext i32 %add.i.20 to i64
  %arrayidx.i.20 = getelementptr inbounds float, float* %2, i64 %idxprom.i.20
  store float 0.000000e+00, float* %arrayidx.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.21 = add nsw i32 %mul.i, %conv.i.21
  %idxprom.i.21 = sext i32 %add.i.21 to i64
  %arrayidx.i.21 = getelementptr inbounds float, float* %2, i64 %idxprom.i.21
  store float 0.000000e+00, float* %arrayidx.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.22 = add nsw i32 %mul.i, %conv.i.22
  %idxprom.i.22 = sext i32 %add.i.22 to i64
  %arrayidx.i.22 = getelementptr inbounds float, float* %2, i64 %idxprom.i.22
  store float 0.000000e+00, float* %arrayidx.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.23 = add nsw i32 %mul.i, %conv.i.23
  %idxprom.i.23 = sext i32 %add.i.23 to i64
  %arrayidx.i.23 = getelementptr inbounds float, float* %2, i64 %idxprom.i.23
  store float 0.000000e+00, float* %arrayidx.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.24 = add nsw i32 %mul.i, %conv.i.24
  %idxprom.i.24 = sext i32 %add.i.24 to i64
  %arrayidx.i.24 = getelementptr inbounds float, float* %2, i64 %idxprom.i.24
  store float 0.000000e+00, float* %arrayidx.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.25 = add nsw i32 %mul.i, %conv.i.25
  %idxprom.i.25 = sext i32 %add.i.25 to i64
  %arrayidx.i.25 = getelementptr inbounds float, float* %2, i64 %idxprom.i.25
  store float 0.000000e+00, float* %arrayidx.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.26 = add nsw i32 %mul.i, %conv.i.26
  %idxprom.i.26 = sext i32 %add.i.26 to i64
  %arrayidx.i.26 = getelementptr inbounds float, float* %2, i64 %idxprom.i.26
  store float 0.000000e+00, float* %arrayidx.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.27 = add nsw i32 %mul.i, %conv.i.27
  %idxprom.i.27 = sext i32 %add.i.27 to i64
  %arrayidx.i.27 = getelementptr inbounds float, float* %2, i64 %idxprom.i.27
  store float 0.000000e+00, float* %arrayidx.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.28 = add nsw i32 %mul.i, %conv.i.28
  %idxprom.i.28 = sext i32 %add.i.28 to i64
  %arrayidx.i.28 = getelementptr inbounds float, float* %2, i64 %idxprom.i.28
  store float 0.000000e+00, float* %arrayidx.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.29 = add nsw i32 %mul.i, %conv.i.29
  %idxprom.i.29 = sext i32 %add.i.29 to i64
  %arrayidx.i.29 = getelementptr inbounds float, float* %2, i64 %idxprom.i.29
  store float 0.000000e+00, float* %arrayidx.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.30 = add nsw i32 %mul.i, %conv.i.30
  %idxprom.i.30 = sext i32 %add.i.30 to i64
  %arrayidx.i.30 = getelementptr inbounds float, float* %2, i64 %idxprom.i.30
  store float 0.000000e+00, float* %arrayidx.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.31 = add nsw i32 %mul.i, %conv.i.31
  %idxprom.i.31 = sext i32 %add.i.31 to i64
  %arrayidx.i.31 = getelementptr inbounds float, float* %2, i64 %idxprom.i.31
  store float 0.000000e+00, float* %arrayidx.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %320 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond29.not = icmp eq i64 %320, 8
  br i1 %exitcond29.not, label %mm3_kernel1.exit.loopexit132, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !21

mm3_kernel1.exit.loopexit:                        ; preds = %for.end.r_exit.i.loopexit.us.us.7.1
  br label %mm3_kernel1.exit

mm3_kernel1.exit.loopexit132:                     ; preds = %pregion_for_entry.pregion_for_init.i
  br label %mm3_kernel1.exit

mm3_kernel1.exit:                                 ; preds = %mm3_kernel1.exit.loopexit132, %mm3_kernel1.exit.loopexit, %vector.body
  ret void

pregion_for_entry.entry.i.us.us.1:                ; preds = %for.end.r_exit.i.loopexit.us.us.1.1, %pregion_for_end.i.us-lcssa.us.us
  %_local_id_x.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us ], [ %458, %for.end.r_exit.i.loopexit.us.us.1.1 ]
  %add1.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.0.us.us.1, %mul.i.i
  %conv.i.us.us.1 = trunc i64 %add1.i.i.us.us.1 to i32
  %add.i.us.us.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1
  %idxprom.i.us.us.1 = sext i32 %add.i.us.us.1 to i64
  %arrayidx.i.us.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1 = shl i64 %add1.i.i.us.us.1, 32
  %321 = ashr exact i64 %sext.i.us.us.1, 32
  br label %for.body.i.us.us.1

for.body.i.us.us.1:                               ; preds = %for.body.i.us.us.1, %pregion_for_entry.entry.i.us.us.1
  %indvars.iv.next.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1, %for.body.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.us.us.1 ]
  %322 = phi float [ %328, %for.body.i.us.us.1 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.1 ]
  %323 = add nsw i64 %indvars.iv.next.i2.us.us.1, %319
  %arrayidx7.i.us.us.1 = getelementptr inbounds float, float* %0, i64 %323
  %324 = load float, float* %arrayidx7.i.us.us.1, align 4, !tbaa !12
  %325 = mul nsw i64 %indvars.iv.next.i2.us.us.1, %11
  %326 = add nsw i64 %325, %321
  %arrayidx11.i.us.us.1 = getelementptr inbounds float, float* %1, i64 %326
  %327 = load float, float* %arrayidx11.i.us.us.1, align 4, !tbaa !12
  %328 = tail call float @llvm.fmuladd.f32(float %324, float %327, float %322) #2
  store float %328, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1, 1
  %exitcond.not.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1, label %for.end.r_exit.i.loopexit.us.us.1, label %for.body.i.us.us.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.1:                ; preds = %for.body.i.us.us.1
  %329 = or i64 %_local_id_x.0.us.us.1, 1
  %add1.i.i.us.us.1.1 = add nuw nsw i64 %329, %mul.i.i
  %conv.i.us.us.1.1 = trunc i64 %add1.i.i.us.us.1.1 to i32
  %add.i.us.us.1.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1.1
  %idxprom.i.us.us.1.1 = sext i32 %add.i.us.us.1.1 to i64
  %arrayidx.i.us.us.1.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1.1 = shl i64 %add1.i.i.us.us.1.1, 32
  %330 = ashr exact i64 %sext.i.us.us.1.1, 32
  br label %for.body.i.us.us.1.1

pregion_for_end.i.us-lcssa.us.us.1:               ; preds = %for.end.r_exit.i.loopexit.us.us.1.1
  %331 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.2 = or i32 %331, 2
  %mul.i.us.2 = mul nsw i32 %conv2.i.us.2, %4
  %mul4.i.us.2 = mul nsw i32 %conv2.i.us.2, %5
  %332 = sext i32 %mul4.i.us.2 to i64
  br label %pregion_for_entry.entry.i.us.us.2

pregion_for_entry.entry.i.us.us.2:                ; preds = %for.end.r_exit.i.loopexit.us.us.2.1, %pregion_for_end.i.us-lcssa.us.us.1
  %_local_id_x.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.1 ], [ %450, %for.end.r_exit.i.loopexit.us.us.2.1 ]
  %add1.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.0.us.us.2, %mul.i.i
  %conv.i.us.us.2 = trunc i64 %add1.i.i.us.us.2 to i32
  %add.i.us.us.2 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2
  %idxprom.i.us.us.2 = sext i32 %add.i.us.us.2 to i64
  %arrayidx.i.us.us.2 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2 = shl i64 %add1.i.i.us.us.2, 32
  %333 = ashr exact i64 %sext.i.us.us.2, 32
  br label %for.body.i.us.us.2

for.body.i.us.us.2:                               ; preds = %for.body.i.us.us.2, %pregion_for_entry.entry.i.us.us.2
  %indvars.iv.next.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.us.us.2, %for.body.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.us.us.2 ]
  %334 = phi float [ %340, %for.body.i.us.us.2 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.2 ]
  %335 = add nsw i64 %indvars.iv.next.i2.us.us.2, %332
  %arrayidx7.i.us.us.2 = getelementptr inbounds float, float* %0, i64 %335
  %336 = load float, float* %arrayidx7.i.us.us.2, align 4, !tbaa !12
  %337 = mul nsw i64 %indvars.iv.next.i2.us.us.2, %11
  %338 = add nsw i64 %337, %333
  %arrayidx11.i.us.us.2 = getelementptr inbounds float, float* %1, i64 %338
  %339 = load float, float* %arrayidx11.i.us.us.2, align 4, !tbaa !12
  %340 = tail call float @llvm.fmuladd.f32(float %336, float %339, float %334) #2
  store float %340, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i2.us.us.2, 1
  %exitcond.not.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.us.us.2, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2, label %for.end.r_exit.i.loopexit.us.us.2, label %for.body.i.us.us.2, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.2:                ; preds = %for.body.i.us.us.2
  %341 = or i64 %_local_id_x.0.us.us.2, 1
  %add1.i.i.us.us.2.1 = add nuw nsw i64 %341, %mul.i.i
  %conv.i.us.us.2.1 = trunc i64 %add1.i.i.us.us.2.1 to i32
  %add.i.us.us.2.1 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2.1
  %idxprom.i.us.us.2.1 = sext i32 %add.i.us.us.2.1 to i64
  %arrayidx.i.us.us.2.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2.1 = shl i64 %add1.i.i.us.us.2.1, 32
  %342 = ashr exact i64 %sext.i.us.us.2.1, 32
  br label %for.body.i.us.us.2.1

pregion_for_end.i.us-lcssa.us.us.2:               ; preds = %for.end.r_exit.i.loopexit.us.us.2.1
  %343 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.3 = or i32 %343, 3
  %mul.i.us.3 = mul nsw i32 %conv2.i.us.3, %4
  %mul4.i.us.3 = mul nsw i32 %conv2.i.us.3, %5
  %344 = sext i32 %mul4.i.us.3 to i64
  br label %pregion_for_entry.entry.i.us.us.3

pregion_for_entry.entry.i.us.us.3:                ; preds = %for.end.r_exit.i.loopexit.us.us.3.1, %pregion_for_end.i.us-lcssa.us.us.2
  %_local_id_x.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.2 ], [ %442, %for.end.r_exit.i.loopexit.us.us.3.1 ]
  %add1.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.0.us.us.3, %mul.i.i
  %conv.i.us.us.3 = trunc i64 %add1.i.i.us.us.3 to i32
  %add.i.us.us.3 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3
  %idxprom.i.us.us.3 = sext i32 %add.i.us.us.3 to i64
  %arrayidx.i.us.us.3 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3 = shl i64 %add1.i.i.us.us.3, 32
  %345 = ashr exact i64 %sext.i.us.us.3, 32
  br label %for.body.i.us.us.3

for.body.i.us.us.3:                               ; preds = %for.body.i.us.us.3, %pregion_for_entry.entry.i.us.us.3
  %indvars.iv.next.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.us.us.3, %for.body.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.us.us.3 ]
  %346 = phi float [ %352, %for.body.i.us.us.3 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.3 ]
  %347 = add nsw i64 %indvars.iv.next.i2.us.us.3, %344
  %arrayidx7.i.us.us.3 = getelementptr inbounds float, float* %0, i64 %347
  %348 = load float, float* %arrayidx7.i.us.us.3, align 4, !tbaa !12
  %349 = mul nsw i64 %indvars.iv.next.i2.us.us.3, %11
  %350 = add nsw i64 %349, %345
  %arrayidx11.i.us.us.3 = getelementptr inbounds float, float* %1, i64 %350
  %351 = load float, float* %arrayidx11.i.us.us.3, align 4, !tbaa !12
  %352 = tail call float @llvm.fmuladd.f32(float %348, float %351, float %346) #2
  store float %352, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i2.us.us.3, 1
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3, label %for.end.r_exit.i.loopexit.us.us.3, label %for.body.i.us.us.3, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.3:                ; preds = %for.body.i.us.us.3
  %353 = or i64 %_local_id_x.0.us.us.3, 1
  %add1.i.i.us.us.3.1 = add nuw nsw i64 %353, %mul.i.i
  %conv.i.us.us.3.1 = trunc i64 %add1.i.i.us.us.3.1 to i32
  %add.i.us.us.3.1 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3.1
  %idxprom.i.us.us.3.1 = sext i32 %add.i.us.us.3.1 to i64
  %arrayidx.i.us.us.3.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3.1 = shl i64 %add1.i.i.us.us.3.1, 32
  %354 = ashr exact i64 %sext.i.us.us.3.1, 32
  br label %for.body.i.us.us.3.1

pregion_for_end.i.us-lcssa.us.us.3:               ; preds = %for.end.r_exit.i.loopexit.us.us.3.1
  %355 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.4 = or i32 %355, 4
  %mul.i.us.4 = mul nsw i32 %conv2.i.us.4, %4
  %mul4.i.us.4 = mul nsw i32 %conv2.i.us.4, %5
  %356 = sext i32 %mul4.i.us.4 to i64
  br label %pregion_for_entry.entry.i.us.us.4

pregion_for_entry.entry.i.us.us.4:                ; preds = %for.end.r_exit.i.loopexit.us.us.4.1, %pregion_for_end.i.us-lcssa.us.us.3
  %_local_id_x.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.3 ], [ %434, %for.end.r_exit.i.loopexit.us.us.4.1 ]
  %add1.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.0.us.us.4, %mul.i.i
  %conv.i.us.us.4 = trunc i64 %add1.i.i.us.us.4 to i32
  %add.i.us.us.4 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4
  %idxprom.i.us.us.4 = sext i32 %add.i.us.us.4 to i64
  %arrayidx.i.us.us.4 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4 = shl i64 %add1.i.i.us.us.4, 32
  %357 = ashr exact i64 %sext.i.us.us.4, 32
  br label %for.body.i.us.us.4

for.body.i.us.us.4:                               ; preds = %for.body.i.us.us.4, %pregion_for_entry.entry.i.us.us.4
  %indvars.iv.next.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.us.us.4, %for.body.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.us.us.4 ]
  %358 = phi float [ %364, %for.body.i.us.us.4 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.4 ]
  %359 = add nsw i64 %indvars.iv.next.i2.us.us.4, %356
  %arrayidx7.i.us.us.4 = getelementptr inbounds float, float* %0, i64 %359
  %360 = load float, float* %arrayidx7.i.us.us.4, align 4, !tbaa !12
  %361 = mul nsw i64 %indvars.iv.next.i2.us.us.4, %11
  %362 = add nsw i64 %361, %357
  %arrayidx11.i.us.us.4 = getelementptr inbounds float, float* %1, i64 %362
  %363 = load float, float* %arrayidx11.i.us.us.4, align 4, !tbaa !12
  %364 = tail call float @llvm.fmuladd.f32(float %360, float %363, float %358) #2
  store float %364, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i2.us.us.4, 1
  %exitcond.not.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.us.us.4, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4, label %for.end.r_exit.i.loopexit.us.us.4, label %for.body.i.us.us.4, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.4:                ; preds = %for.body.i.us.us.4
  %365 = or i64 %_local_id_x.0.us.us.4, 1
  %add1.i.i.us.us.4.1 = add nuw nsw i64 %365, %mul.i.i
  %conv.i.us.us.4.1 = trunc i64 %add1.i.i.us.us.4.1 to i32
  %add.i.us.us.4.1 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4.1
  %idxprom.i.us.us.4.1 = sext i32 %add.i.us.us.4.1 to i64
  %arrayidx.i.us.us.4.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4.1 = shl i64 %add1.i.i.us.us.4.1, 32
  %366 = ashr exact i64 %sext.i.us.us.4.1, 32
  br label %for.body.i.us.us.4.1

pregion_for_end.i.us-lcssa.us.us.4:               ; preds = %for.end.r_exit.i.loopexit.us.us.4.1
  %367 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.5 = or i32 %367, 5
  %mul.i.us.5 = mul nsw i32 %conv2.i.us.5, %4
  %mul4.i.us.5 = mul nsw i32 %conv2.i.us.5, %5
  %368 = sext i32 %mul4.i.us.5 to i64
  br label %pregion_for_entry.entry.i.us.us.5

pregion_for_entry.entry.i.us.us.5:                ; preds = %for.end.r_exit.i.loopexit.us.us.5.1, %pregion_for_end.i.us-lcssa.us.us.4
  %_local_id_x.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.4 ], [ %426, %for.end.r_exit.i.loopexit.us.us.5.1 ]
  %add1.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.0.us.us.5, %mul.i.i
  %conv.i.us.us.5 = trunc i64 %add1.i.i.us.us.5 to i32
  %add.i.us.us.5 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5
  %idxprom.i.us.us.5 = sext i32 %add.i.us.us.5 to i64
  %arrayidx.i.us.us.5 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5 = shl i64 %add1.i.i.us.us.5, 32
  %369 = ashr exact i64 %sext.i.us.us.5, 32
  br label %for.body.i.us.us.5

for.body.i.us.us.5:                               ; preds = %for.body.i.us.us.5, %pregion_for_entry.entry.i.us.us.5
  %indvars.iv.next.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.us.us.5, %for.body.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.us.us.5 ]
  %370 = phi float [ %376, %for.body.i.us.us.5 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.5 ]
  %371 = add nsw i64 %indvars.iv.next.i2.us.us.5, %368
  %arrayidx7.i.us.us.5 = getelementptr inbounds float, float* %0, i64 %371
  %372 = load float, float* %arrayidx7.i.us.us.5, align 4, !tbaa !12
  %373 = mul nsw i64 %indvars.iv.next.i2.us.us.5, %11
  %374 = add nsw i64 %373, %369
  %arrayidx11.i.us.us.5 = getelementptr inbounds float, float* %1, i64 %374
  %375 = load float, float* %arrayidx11.i.us.us.5, align 4, !tbaa !12
  %376 = tail call float @llvm.fmuladd.f32(float %372, float %375, float %370) #2
  store float %376, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i2.us.us.5, 1
  %exitcond.not.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.us.us.5, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5, label %for.end.r_exit.i.loopexit.us.us.5, label %for.body.i.us.us.5, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.5:                ; preds = %for.body.i.us.us.5
  %377 = or i64 %_local_id_x.0.us.us.5, 1
  %add1.i.i.us.us.5.1 = add nuw nsw i64 %377, %mul.i.i
  %conv.i.us.us.5.1 = trunc i64 %add1.i.i.us.us.5.1 to i32
  %add.i.us.us.5.1 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5.1
  %idxprom.i.us.us.5.1 = sext i32 %add.i.us.us.5.1 to i64
  %arrayidx.i.us.us.5.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5.1 = shl i64 %add1.i.i.us.us.5.1, 32
  %378 = ashr exact i64 %sext.i.us.us.5.1, 32
  br label %for.body.i.us.us.5.1

pregion_for_end.i.us-lcssa.us.us.5:               ; preds = %for.end.r_exit.i.loopexit.us.us.5.1
  %379 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.6 = or i32 %379, 6
  %mul.i.us.6 = mul nsw i32 %conv2.i.us.6, %4
  %mul4.i.us.6 = mul nsw i32 %conv2.i.us.6, %5
  %380 = sext i32 %mul4.i.us.6 to i64
  br label %pregion_for_entry.entry.i.us.us.6

pregion_for_entry.entry.i.us.us.6:                ; preds = %for.end.r_exit.i.loopexit.us.us.6.1, %pregion_for_end.i.us-lcssa.us.us.5
  %_local_id_x.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.5 ], [ %418, %for.end.r_exit.i.loopexit.us.us.6.1 ]
  %add1.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.0.us.us.6, %mul.i.i
  %conv.i.us.us.6 = trunc i64 %add1.i.i.us.us.6 to i32
  %add.i.us.us.6 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6
  %idxprom.i.us.us.6 = sext i32 %add.i.us.us.6 to i64
  %arrayidx.i.us.us.6 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6 = shl i64 %add1.i.i.us.us.6, 32
  %381 = ashr exact i64 %sext.i.us.us.6, 32
  br label %for.body.i.us.us.6

for.body.i.us.us.6:                               ; preds = %for.body.i.us.us.6, %pregion_for_entry.entry.i.us.us.6
  %indvars.iv.next.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.us.us.6, %for.body.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.us.us.6 ]
  %382 = phi float [ %388, %for.body.i.us.us.6 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.6 ]
  %383 = add nsw i64 %indvars.iv.next.i2.us.us.6, %380
  %arrayidx7.i.us.us.6 = getelementptr inbounds float, float* %0, i64 %383
  %384 = load float, float* %arrayidx7.i.us.us.6, align 4, !tbaa !12
  %385 = mul nsw i64 %indvars.iv.next.i2.us.us.6, %11
  %386 = add nsw i64 %385, %381
  %arrayidx11.i.us.us.6 = getelementptr inbounds float, float* %1, i64 %386
  %387 = load float, float* %arrayidx11.i.us.us.6, align 4, !tbaa !12
  %388 = tail call float @llvm.fmuladd.f32(float %384, float %387, float %382) #2
  store float %388, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i2.us.us.6, 1
  %exitcond.not.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.us.us.6, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6, label %for.end.r_exit.i.loopexit.us.us.6, label %for.body.i.us.us.6, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.6:                ; preds = %for.body.i.us.us.6
  %389 = or i64 %_local_id_x.0.us.us.6, 1
  %add1.i.i.us.us.6.1 = add nuw nsw i64 %389, %mul.i.i
  %conv.i.us.us.6.1 = trunc i64 %add1.i.i.us.us.6.1 to i32
  %add.i.us.us.6.1 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6.1
  %idxprom.i.us.us.6.1 = sext i32 %add.i.us.us.6.1 to i64
  %arrayidx.i.us.us.6.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6.1 = shl i64 %add1.i.i.us.us.6.1, 32
  %390 = ashr exact i64 %sext.i.us.us.6.1, 32
  br label %for.body.i.us.us.6.1

pregion_for_end.i.us-lcssa.us.us.6:               ; preds = %for.end.r_exit.i.loopexit.us.us.6.1
  %391 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.7 = or i32 %391, 7
  %mul.i.us.7 = mul nsw i32 %conv2.i.us.7, %4
  %mul4.i.us.7 = mul nsw i32 %conv2.i.us.7, %5
  %392 = sext i32 %mul4.i.us.7 to i64
  br label %pregion_for_entry.entry.i.us.us.7

pregion_for_entry.entry.i.us.us.7:                ; preds = %for.end.r_exit.i.loopexit.us.us.7.1, %pregion_for_end.i.us-lcssa.us.us.6
  %_local_id_x.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.6 ], [ %410, %for.end.r_exit.i.loopexit.us.us.7.1 ]
  %add1.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.0.us.us.7, %mul.i.i
  %conv.i.us.us.7 = trunc i64 %add1.i.i.us.us.7 to i32
  %add.i.us.us.7 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7
  %idxprom.i.us.us.7 = sext i32 %add.i.us.us.7 to i64
  %arrayidx.i.us.us.7 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7 = shl i64 %add1.i.i.us.us.7, 32
  %393 = ashr exact i64 %sext.i.us.us.7, 32
  br label %for.body.i.us.us.7

for.body.i.us.us.7:                               ; preds = %for.body.i.us.us.7, %pregion_for_entry.entry.i.us.us.7
  %indvars.iv.next.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.us.us.7, %for.body.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.us.us.7 ]
  %394 = phi float [ %400, %for.body.i.us.us.7 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.7 ]
  %395 = add nsw i64 %indvars.iv.next.i2.us.us.7, %392
  %arrayidx7.i.us.us.7 = getelementptr inbounds float, float* %0, i64 %395
  %396 = load float, float* %arrayidx7.i.us.us.7, align 4, !tbaa !12
  %397 = mul nsw i64 %indvars.iv.next.i2.us.us.7, %11
  %398 = add nsw i64 %397, %393
  %arrayidx11.i.us.us.7 = getelementptr inbounds float, float* %1, i64 %398
  %399 = load float, float* %arrayidx11.i.us.us.7, align 4, !tbaa !12
  %400 = tail call float @llvm.fmuladd.f32(float %396, float %399, float %394) #2
  store float %400, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i2.us.us.7, 1
  %exitcond.not.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.us.us.7, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7, label %for.end.r_exit.i.loopexit.us.us.7, label %for.body.i.us.us.7, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.7:                ; preds = %for.body.i.us.us.7
  %401 = or i64 %_local_id_x.0.us.us.7, 1
  %add1.i.i.us.us.7.1 = add nuw nsw i64 %401, %mul.i.i
  %conv.i.us.us.7.1 = trunc i64 %add1.i.i.us.us.7.1 to i32
  %add.i.us.us.7.1 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7.1
  %idxprom.i.us.us.7.1 = sext i32 %add.i.us.us.7.1 to i64
  %arrayidx.i.us.us.7.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7.1 = shl i64 %add1.i.i.us.us.7.1, 32
  %402 = ashr exact i64 %sext.i.us.us.7.1, 32
  br label %for.body.i.us.us.7.1

for.body.i.us.us.7.1:                             ; preds = %for.body.i.us.us.7.1, %for.end.r_exit.i.loopexit.us.us.7
  %indvars.iv.next.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.us.us.7.1, %for.body.i.us.us.7.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.7 ]
  %403 = phi float [ %409, %for.body.i.us.us.7.1 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us.us.7 ]
  %404 = add nsw i64 %indvars.iv.next.i2.us.us.7.1, %392
  %arrayidx7.i.us.us.7.1 = getelementptr inbounds float, float* %0, i64 %404
  %405 = load float, float* %arrayidx7.i.us.us.7.1, align 4, !tbaa !12
  %406 = mul nsw i64 %indvars.iv.next.i2.us.us.7.1, %11
  %407 = add nsw i64 %406, %402
  %arrayidx11.i.us.us.7.1 = getelementptr inbounds float, float* %1, i64 %407
  %408 = load float, float* %arrayidx11.i.us.us.7.1, align 4, !tbaa !12
  %409 = tail call float @llvm.fmuladd.f32(float %405, float %408, float %403) #2
  store float %409, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.7.1, 1
  %exitcond.not.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.us.us.7.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7.1, label %for.end.r_exit.i.loopexit.us.us.7.1, label %for.body.i.us.us.7.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.7.1:              ; preds = %for.body.i.us.us.7.1
  %410 = add nuw nsw i64 %_local_id_x.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %410, 32
  br i1 %exitcond.7.not.1, label %mm3_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.us.us.7, !llvm.loop !24

for.body.i.us.us.6.1:                             ; preds = %for.body.i.us.us.6.1, %for.end.r_exit.i.loopexit.us.us.6
  %indvars.iv.next.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.us.us.6.1, %for.body.i.us.us.6.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.6 ]
  %411 = phi float [ %417, %for.body.i.us.us.6.1 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us.us.6 ]
  %412 = add nsw i64 %indvars.iv.next.i2.us.us.6.1, %380
  %arrayidx7.i.us.us.6.1 = getelementptr inbounds float, float* %0, i64 %412
  %413 = load float, float* %arrayidx7.i.us.us.6.1, align 4, !tbaa !12
  %414 = mul nsw i64 %indvars.iv.next.i2.us.us.6.1, %11
  %415 = add nsw i64 %414, %390
  %arrayidx11.i.us.us.6.1 = getelementptr inbounds float, float* %1, i64 %415
  %416 = load float, float* %arrayidx11.i.us.us.6.1, align 4, !tbaa !12
  %417 = tail call float @llvm.fmuladd.f32(float %413, float %416, float %411) #2
  store float %417, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.6.1, 1
  %exitcond.not.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.us.us.6.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6.1, label %for.end.r_exit.i.loopexit.us.us.6.1, label %for.body.i.us.us.6.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.6.1:              ; preds = %for.body.i.us.us.6.1
  %418 = add nuw nsw i64 %_local_id_x.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %418, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.us.us.6, !llvm.loop !24

for.body.i.us.us.5.1:                             ; preds = %for.body.i.us.us.5.1, %for.end.r_exit.i.loopexit.us.us.5
  %indvars.iv.next.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.us.us.5.1, %for.body.i.us.us.5.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.5 ]
  %419 = phi float [ %425, %for.body.i.us.us.5.1 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us.us.5 ]
  %420 = add nsw i64 %indvars.iv.next.i2.us.us.5.1, %368
  %arrayidx7.i.us.us.5.1 = getelementptr inbounds float, float* %0, i64 %420
  %421 = load float, float* %arrayidx7.i.us.us.5.1, align 4, !tbaa !12
  %422 = mul nsw i64 %indvars.iv.next.i2.us.us.5.1, %11
  %423 = add nsw i64 %422, %378
  %arrayidx11.i.us.us.5.1 = getelementptr inbounds float, float* %1, i64 %423
  %424 = load float, float* %arrayidx11.i.us.us.5.1, align 4, !tbaa !12
  %425 = tail call float @llvm.fmuladd.f32(float %421, float %424, float %419) #2
  store float %425, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.5.1, 1
  %exitcond.not.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.us.us.5.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5.1, label %for.end.r_exit.i.loopexit.us.us.5.1, label %for.body.i.us.us.5.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.5.1:              ; preds = %for.body.i.us.us.5.1
  %426 = add nuw nsw i64 %_local_id_x.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %426, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.us.us.5, !llvm.loop !24

for.body.i.us.us.4.1:                             ; preds = %for.body.i.us.us.4.1, %for.end.r_exit.i.loopexit.us.us.4
  %indvars.iv.next.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.us.us.4.1, %for.body.i.us.us.4.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.4 ]
  %427 = phi float [ %433, %for.body.i.us.us.4.1 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us.us.4 ]
  %428 = add nsw i64 %indvars.iv.next.i2.us.us.4.1, %356
  %arrayidx7.i.us.us.4.1 = getelementptr inbounds float, float* %0, i64 %428
  %429 = load float, float* %arrayidx7.i.us.us.4.1, align 4, !tbaa !12
  %430 = mul nsw i64 %indvars.iv.next.i2.us.us.4.1, %11
  %431 = add nsw i64 %430, %366
  %arrayidx11.i.us.us.4.1 = getelementptr inbounds float, float* %1, i64 %431
  %432 = load float, float* %arrayidx11.i.us.us.4.1, align 4, !tbaa !12
  %433 = tail call float @llvm.fmuladd.f32(float %429, float %432, float %427) #2
  store float %433, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.4.1, 1
  %exitcond.not.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.us.us.4.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4.1, label %for.end.r_exit.i.loopexit.us.us.4.1, label %for.body.i.us.us.4.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.4.1:              ; preds = %for.body.i.us.us.4.1
  %434 = add nuw nsw i64 %_local_id_x.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %434, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.us.us.4, !llvm.loop !24

for.body.i.us.us.3.1:                             ; preds = %for.body.i.us.us.3.1, %for.end.r_exit.i.loopexit.us.us.3
  %indvars.iv.next.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.us.us.3.1, %for.body.i.us.us.3.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.3 ]
  %435 = phi float [ %441, %for.body.i.us.us.3.1 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us.us.3 ]
  %436 = add nsw i64 %indvars.iv.next.i2.us.us.3.1, %344
  %arrayidx7.i.us.us.3.1 = getelementptr inbounds float, float* %0, i64 %436
  %437 = load float, float* %arrayidx7.i.us.us.3.1, align 4, !tbaa !12
  %438 = mul nsw i64 %indvars.iv.next.i2.us.us.3.1, %11
  %439 = add nsw i64 %438, %354
  %arrayidx11.i.us.us.3.1 = getelementptr inbounds float, float* %1, i64 %439
  %440 = load float, float* %arrayidx11.i.us.us.3.1, align 4, !tbaa !12
  %441 = tail call float @llvm.fmuladd.f32(float %437, float %440, float %435) #2
  store float %441, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.3.1, 1
  %exitcond.not.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.us.us.3.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3.1, label %for.end.r_exit.i.loopexit.us.us.3.1, label %for.body.i.us.us.3.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.3.1:              ; preds = %for.body.i.us.us.3.1
  %442 = add nuw nsw i64 %_local_id_x.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %442, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.us.us.3, !llvm.loop !24

for.body.i.us.us.2.1:                             ; preds = %for.body.i.us.us.2.1, %for.end.r_exit.i.loopexit.us.us.2
  %indvars.iv.next.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.us.us.2.1, %for.body.i.us.us.2.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.2 ]
  %443 = phi float [ %449, %for.body.i.us.us.2.1 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us.us.2 ]
  %444 = add nsw i64 %indvars.iv.next.i2.us.us.2.1, %332
  %arrayidx7.i.us.us.2.1 = getelementptr inbounds float, float* %0, i64 %444
  %445 = load float, float* %arrayidx7.i.us.us.2.1, align 4, !tbaa !12
  %446 = mul nsw i64 %indvars.iv.next.i2.us.us.2.1, %11
  %447 = add nsw i64 %446, %342
  %arrayidx11.i.us.us.2.1 = getelementptr inbounds float, float* %1, i64 %447
  %448 = load float, float* %arrayidx11.i.us.us.2.1, align 4, !tbaa !12
  %449 = tail call float @llvm.fmuladd.f32(float %445, float %448, float %443) #2
  store float %449, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.2.1, 1
  %exitcond.not.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.us.us.2.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2.1, label %for.end.r_exit.i.loopexit.us.us.2.1, label %for.body.i.us.us.2.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.2.1:              ; preds = %for.body.i.us.us.2.1
  %450 = add nuw nsw i64 %_local_id_x.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %450, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.us.us.2, !llvm.loop !24

for.body.i.us.us.1.1:                             ; preds = %for.body.i.us.us.1.1, %for.end.r_exit.i.loopexit.us.us.1
  %indvars.iv.next.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.us.us.1.1, %for.body.i.us.us.1.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.1 ]
  %451 = phi float [ %457, %for.body.i.us.us.1.1 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us.us.1 ]
  %452 = add nsw i64 %indvars.iv.next.i2.us.us.1.1, %319
  %arrayidx7.i.us.us.1.1 = getelementptr inbounds float, float* %0, i64 %452
  %453 = load float, float* %arrayidx7.i.us.us.1.1, align 4, !tbaa !12
  %454 = mul nsw i64 %indvars.iv.next.i2.us.us.1.1, %11
  %455 = add nsw i64 %454, %330
  %arrayidx11.i.us.us.1.1 = getelementptr inbounds float, float* %1, i64 %455
  %456 = load float, float* %arrayidx11.i.us.us.1.1, align 4, !tbaa !12
  %457 = tail call float @llvm.fmuladd.f32(float %453, float %456, float %451) #2
  store float %457, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1.1, 1
  %exitcond.not.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.us.us.1.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1.1, label %for.end.r_exit.i.loopexit.us.us.1.1, label %for.body.i.us.us.1.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.1.1:              ; preds = %for.body.i.us.us.1.1
  %458 = add nuw nsw i64 %_local_id_x.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %458, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.us.us.1, !llvm.loop !24

for.body.i.us.us.1129:                            ; preds = %for.body.i.us.us.1129, %for.end.r_exit.i.loopexit.us.us
  %indvars.iv.next.i2.us.us.1124 = phi i64 [ %indvars.iv.next.i.us.us.1127, %for.body.i.us.us.1129 ], [ 0, %for.end.r_exit.i.loopexit.us.us ]
  %459 = phi float [ %465, %for.body.i.us.us.1129 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us.us ]
  %460 = add nsw i64 %indvars.iv.next.i2.us.us.1124, %307
  %arrayidx7.i.us.us.1125 = getelementptr inbounds float, float* %0, i64 %460
  %461 = load float, float* %arrayidx7.i.us.us.1125, align 4, !tbaa !12
  %462 = mul nsw i64 %indvars.iv.next.i2.us.us.1124, %11
  %463 = add nsw i64 %462, %310
  %arrayidx11.i.us.us.1126 = getelementptr inbounds float, float* %1, i64 %463
  %464 = load float, float* %arrayidx11.i.us.us.1126, align 4, !tbaa !12
  %465 = tail call float @llvm.fmuladd.f32(float %461, float %464, float %459) #2
  store float %465, float* %arrayidx.i.us.us.1121, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1127 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1124, 1
  %exitcond.not.i.us.us.1128 = icmp eq i64 %indvars.iv.next.i.us.us.1127, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1128, label %for.end.r_exit.i.loopexit.us.us.1130, label %for.body.i.us.us.1129, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.1130:             ; preds = %for.body.i.us.us.1129
  %466 = add nuw nsw i64 %_local_id_x.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %466, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.us.us, !llvm.loop !24
}

; Function Attrs: nounwind
define void @_pocl_kernel_mm3_kernel1_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %21 = getelementptr i8*, i8** %0, i64 5
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp31.i.i = icmp sgt i32 %24, 0
  %25 = sext i32 %20 to i64
  %wide.trip.count.i.i = zext i32 %24 to i64
  br i1 %cmp31.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  %conv.i.i = trunc i64 %mul.i.i.i to i32
  %26 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.1 = or i32 %26, 1
  %27 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.2 = or i32 %27, 2
  %28 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.3 = or i32 %28, 3
  %29 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.4 = or i32 %29, 4
  %30 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.5 = or i32 %30, 5
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.6 = or i32 %31, 6
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.7 = or i32 %32, 7
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.8 = or i32 %33, 8
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.9 = or i32 %34, 9
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.10 = or i32 %35, 10
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.11 = or i32 %36, 11
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.12 = or i32 %37, 12
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.13 = or i32 %38, 13
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.14 = or i32 %39, 14
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.15 = or i32 %40, 15
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.16 = or i32 %41, 16
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.17 = or i32 %42, 17
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.18 = or i32 %43, 18
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.19 = or i32 %44, 19
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.20 = or i32 %45, 20
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.21 = or i32 %46, 21
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.22 = or i32 %47, 22
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.23 = or i32 %48, 23
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.24 = or i32 %49, 24
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.25 = or i32 %50, 25
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.26 = or i32 %51, 26
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.27 = or i32 %52, 27
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.28 = or i32 %53, 28
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.29 = or i32 %54, 29
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.30 = or i32 %55, 30
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.31 = or i32 %56, 31
  %ident.check = icmp ne i32 %20, 1
  %57 = trunc i64 %3 to i32
  %58 = shl i32 %57, 3
  %59 = add i32 %58, %conv.i.i
  %60 = icmp eq i32 %59, 2147483640
  %61 = or i1 %ident.check, %60
  %62 = add i32 %58, %conv.i.i
  %63 = or i32 %62, 2
  %64 = icmp sgt i32 %63, 2147483640
  %65 = or i1 %61, %64
  %66 = add i32 %58, %conv.i.i
  %67 = or i32 %66, 3
  %68 = icmp sgt i32 %67, 2147483640
  %69 = or i1 %65, %68
  %70 = add i32 %58, %conv.i.i
  %71 = or i32 %70, 4
  %72 = icmp sgt i32 %71, 2147483640
  %73 = or i1 %69, %72
  %74 = add i32 %58, %conv.i.i
  %75 = or i32 %74, 5
  %76 = icmp sgt i32 %75, 2147483640
  %77 = or i1 %73, %76
  %78 = add i32 %58, %conv.i.i
  %79 = or i32 %78, 6
  %80 = icmp sgt i32 %79, 2147483640
  %81 = or i1 %77, %80
  %82 = add i32 %58, %conv.i.i
  %83 = or i32 %82, 7
  %84 = icmp sgt i32 %83, 2147483640
  %85 = or i1 %81, %84
  %86 = add i32 %58, %conv.i.i
  %87 = add i32 %86, 9
  %88 = add i32 %86, 16
  %89 = icmp slt i32 %88, %87
  %90 = or i1 %85, %89
  %91 = add i32 %58, %conv.i.i
  %92 = add i32 %91, 10
  %93 = add i32 %91, 17
  %94 = icmp slt i32 %93, %92
  %95 = or i1 %90, %94
  %96 = add i32 %58, %conv.i.i
  %97 = add i32 %96, 11
  %98 = add i32 %96, 18
  %99 = icmp slt i32 %98, %97
  %100 = or i1 %95, %99
  %101 = add i32 %58, %conv.i.i
  %102 = add i32 %101, 12
  %103 = add i32 %101, 19
  %104 = icmp slt i32 %103, %102
  %105 = or i1 %100, %104
  %106 = add i32 %58, %conv.i.i
  %107 = add i32 %106, 13
  %108 = add i32 %106, 20
  %109 = icmp slt i32 %108, %107
  %110 = or i1 %105, %109
  %111 = add i32 %58, %conv.i.i
  %112 = add i32 %111, 14
  %113 = add i32 %111, 21
  %114 = icmp slt i32 %113, %112
  %115 = or i1 %110, %114
  %116 = add i32 %58, %conv.i.i
  %117 = add i32 %116, 15
  %118 = add i32 %116, 22
  %119 = icmp slt i32 %118, %117
  %120 = or i1 %115, %119
  %121 = add i32 %58, %conv.i.i
  %122 = add i32 %121, 17
  %123 = add i32 %121, 24
  %124 = icmp slt i32 %123, %122
  %125 = or i1 %120, %124
  %126 = add i32 %58, %conv.i.i
  %127 = add i32 %126, 18
  %128 = add i32 %126, 25
  %129 = icmp slt i32 %128, %127
  %130 = or i1 %125, %129
  %131 = add i32 %58, %conv.i.i
  %132 = add i32 %131, 19
  %133 = add i32 %131, 26
  %134 = icmp slt i32 %133, %132
  %135 = or i1 %130, %134
  %136 = add i32 %58, %conv.i.i
  %137 = add i32 %136, 20
  %138 = add i32 %136, 27
  %139 = icmp slt i32 %138, %137
  %140 = or i1 %135, %139
  %141 = add i32 %58, %conv.i.i
  %142 = add i32 %141, 21
  %143 = add i32 %141, 28
  %144 = icmp slt i32 %143, %142
  %145 = or i1 %140, %144
  %146 = add i32 %58, %conv.i.i
  %147 = add i32 %146, 22
  %148 = add i32 %146, 29
  %149 = icmp slt i32 %148, %147
  %150 = or i1 %145, %149
  %151 = add i32 %58, %conv.i.i
  %152 = add i32 %151, 23
  %153 = add i32 %151, 30
  %154 = icmp slt i32 %153, %152
  %155 = or i1 %150, %154
  %156 = add i32 %58, %conv.i.i
  %157 = add i32 %156, 25
  %158 = add i32 %156, 32
  %159 = icmp slt i32 %158, %157
  %160 = or i1 %155, %159
  %161 = add i32 %58, %conv.i.i
  %162 = add i32 %161, 26
  %163 = add i32 %161, 33
  %164 = icmp slt i32 %163, %162
  %165 = or i1 %160, %164
  %166 = add i32 %58, %conv.i.i
  %167 = add i32 %166, 27
  %168 = add i32 %166, 34
  %169 = icmp slt i32 %168, %167
  %170 = or i1 %165, %169
  %171 = add i32 %58, %conv.i.i
  %172 = add i32 %171, 28
  %173 = add i32 %171, 35
  %174 = icmp slt i32 %173, %172
  %175 = or i1 %170, %174
  %176 = add i32 %58, %conv.i.i
  %177 = add i32 %176, 29
  %178 = add i32 %176, 36
  %179 = icmp slt i32 %178, %177
  %180 = or i1 %175, %179
  %181 = add i32 %58, %conv.i.i
  %182 = add i32 %181, 30
  %183 = add i32 %181, 37
  %184 = icmp slt i32 %183, %182
  %185 = or i1 %180, %184
  %186 = add i32 %58, %conv.i.i
  %187 = add i32 %186, 31
  %188 = add i32 %186, 38
  %189 = icmp slt i32 %188, %187
  %190 = or i1 %185, %189
  br i1 %190, label %pregion_for_entry.pregion_for_init.i.i.preheader131, label %vector.body

pregion_for_entry.pregion_for_init.i.i.preheader131: ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  br label %pregion_for_entry.pregion_for_init.i.i

vector.body:                                      ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %191 = trunc i64 %mul3.i.i.i to i32
  %192 = mul nsw i32 %20, %191
  %193 = add nsw i32 %192, %conv.i.i
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %16, i64 %194
  %196 = bitcast float* %195 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %196, align 4, !tbaa !12, !llvm.access.group !16
  %197 = add nsw i32 %192, %conv.i.i.1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %16, i64 %198
  %200 = bitcast float* %199 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %200, align 4, !tbaa !12, !llvm.access.group !16
  %201 = add nsw i32 %192, %conv.i.i.2
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %16, i64 %202
  %204 = bitcast float* %203 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %204, align 4, !tbaa !12, !llvm.access.group !16
  %205 = add nsw i32 %192, %conv.i.i.3
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %16, i64 %206
  %208 = bitcast float* %207 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %208, align 4, !tbaa !12, !llvm.access.group !16
  %209 = add nsw i32 %192, %conv.i.i.4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %16, i64 %210
  %212 = bitcast float* %211 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %212, align 4, !tbaa !12, !llvm.access.group !16
  %213 = add nsw i32 %192, %conv.i.i.5
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %16, i64 %214
  %216 = bitcast float* %215 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %216, align 4, !tbaa !12, !llvm.access.group !16
  %217 = add nsw i32 %192, %conv.i.i.6
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %16, i64 %218
  %220 = bitcast float* %219 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %220, align 4, !tbaa !12, !llvm.access.group !16
  %221 = add nsw i32 %192, %conv.i.i.7
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %16, i64 %222
  %224 = bitcast float* %223 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %224, align 4, !tbaa !12, !llvm.access.group !16
  %225 = add nsw i32 %192, %conv.i.i.8
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds float, float* %16, i64 %226
  %228 = bitcast float* %227 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %228, align 4, !tbaa !12, !llvm.access.group !16
  %229 = add nsw i32 %192, %conv.i.i.9
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float, float* %16, i64 %230
  %232 = bitcast float* %231 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %232, align 4, !tbaa !12, !llvm.access.group !16
  %233 = add nsw i32 %192, %conv.i.i.10
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %16, i64 %234
  %236 = bitcast float* %235 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %236, align 4, !tbaa !12, !llvm.access.group !16
  %237 = add nsw i32 %192, %conv.i.i.11
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %16, i64 %238
  %240 = bitcast float* %239 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %240, align 4, !tbaa !12, !llvm.access.group !16
  %241 = add nsw i32 %192, %conv.i.i.12
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %16, i64 %242
  %244 = bitcast float* %243 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %244, align 4, !tbaa !12, !llvm.access.group !16
  %245 = add nsw i32 %192, %conv.i.i.13
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %16, i64 %246
  %248 = bitcast float* %247 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %248, align 4, !tbaa !12, !llvm.access.group !16
  %249 = add nsw i32 %192, %conv.i.i.14
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %16, i64 %250
  %252 = bitcast float* %251 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %252, align 4, !tbaa !12, !llvm.access.group !16
  %253 = add nsw i32 %192, %conv.i.i.15
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float, float* %16, i64 %254
  %256 = bitcast float* %255 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %256, align 4, !tbaa !12, !llvm.access.group !16
  %257 = add nsw i32 %192, %conv.i.i.16
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %16, i64 %258
  %260 = bitcast float* %259 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %260, align 4, !tbaa !12, !llvm.access.group !16
  %261 = add nsw i32 %192, %conv.i.i.17
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %16, i64 %262
  %264 = bitcast float* %263 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %264, align 4, !tbaa !12, !llvm.access.group !16
  %265 = add nsw i32 %192, %conv.i.i.18
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %16, i64 %266
  %268 = bitcast float* %267 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %268, align 4, !tbaa !12, !llvm.access.group !16
  %269 = add nsw i32 %192, %conv.i.i.19
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %16, i64 %270
  %272 = bitcast float* %271 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %272, align 4, !tbaa !12, !llvm.access.group !16
  %273 = add nsw i32 %192, %conv.i.i.20
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds float, float* %16, i64 %274
  %276 = bitcast float* %275 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %276, align 4, !tbaa !12, !llvm.access.group !16
  %277 = add nsw i32 %192, %conv.i.i.21
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds float, float* %16, i64 %278
  %280 = bitcast float* %279 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %280, align 4, !tbaa !12, !llvm.access.group !16
  %281 = add nsw i32 %192, %conv.i.i.22
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds float, float* %16, i64 %282
  %284 = bitcast float* %283 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %284, align 4, !tbaa !12, !llvm.access.group !16
  %285 = add nsw i32 %192, %conv.i.i.23
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds float, float* %16, i64 %286
  %288 = bitcast float* %287 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %288, align 4, !tbaa !12, !llvm.access.group !16
  %289 = add nsw i32 %192, %conv.i.i.24
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds float, float* %16, i64 %290
  %292 = bitcast float* %291 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %292, align 4, !tbaa !12, !llvm.access.group !16
  %293 = add nsw i32 %192, %conv.i.i.25
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %16, i64 %294
  %296 = bitcast float* %295 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %296, align 4, !tbaa !12, !llvm.access.group !16
  %297 = add nsw i32 %192, %conv.i.i.26
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float, float* %16, i64 %298
  %300 = bitcast float* %299 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %300, align 4, !tbaa !12, !llvm.access.group !16
  %301 = add nsw i32 %192, %conv.i.i.27
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds float, float* %16, i64 %302
  %304 = bitcast float* %303 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %304, align 4, !tbaa !12, !llvm.access.group !16
  %305 = add nsw i32 %192, %conv.i.i.28
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %16, i64 %306
  %308 = bitcast float* %307 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %308, align 4, !tbaa !12, !llvm.access.group !16
  %309 = add nsw i32 %192, %conv.i.i.29
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds float, float* %16, i64 %310
  %312 = bitcast float* %311 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %312, align 4, !tbaa !12, !llvm.access.group !16
  %313 = add nsw i32 %192, %conv.i.i.30
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float, float* %16, i64 %314
  %316 = bitcast float* %315 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %316, align 4, !tbaa !12, !llvm.access.group !16
  %317 = add nsw i32 %192, %conv.i.i.31
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds float, float* %16, i64 %318
  %320 = bitcast float* %319 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %320, align 4, !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_mm3_kernel1.exit

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %mul.i.i.us = mul nsw i32 %20, %conv2.i.i.us
  %mul4.i.i.us = mul nsw i32 %24, %conv2.i.i.us
  %321 = sext i32 %mul4.i.i.us to i64
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_entry.entry.i.i.us.us:                ; preds = %for.end.r_exit.i.i.loopexit.us.us.1130, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.i.us.preheader ], [ %480, %for.end.r_exit.i.i.loopexit.us.us.1130 ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %322 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

for.end.r_exit.i.i.loopexit.us.us:                ; preds = %for.body.i.i.us.us
  %323 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.1117 = add nuw nsw i64 %323, %mul.i.i.i
  %conv.i.i.us.us.1118 = trunc i64 %add1.i.i.i.us.us.1117 to i32
  %add.i.i.us.us.1119 = add nsw i32 %mul.i.i.us, %conv.i.i.us.us.1118
  %idxprom.i.i.us.us.1120 = sext i32 %add.i.i.us.us.1119 to i64
  %arrayidx.i.i.us.us.1121 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.1120
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1121, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1122 = shl i64 %add1.i.i.i.us.us.1117, 32
  %324 = ashr exact i64 %sext.i.i.us.us.1122, 32
  br label %for.body.i.i.us.us.1129

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %pregion_for_entry.entry.i.i.us.us
  %indvars.iv.next.i.i2.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us ]
  %325 = phi float [ %331, %for.body.i.i.us.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us ]
  %326 = add nsw i64 %indvars.iv.next.i.i2.us.us, %321
  %arrayidx7.i.i.us.us = getelementptr inbounds float, float* %8, i64 %326
  %327 = load float, float* %arrayidx7.i.i.us.us, align 4, !tbaa !12
  %328 = mul nsw i64 %indvars.iv.next.i.i2.us.us, %25
  %329 = add nsw i64 %328, %322
  %arrayidx11.i.i.us.us = getelementptr inbounds float, float* %12, i64 %329
  %330 = load float, float* %arrayidx11.i.i.us.us, align 4, !tbaa !12
  %331 = tail call float @llvm.fmuladd.f32(float %327, float %330, float %325) #2
  store float %331, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i2.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %for.end.r_exit.i.i.loopexit.us.us, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us:               ; preds = %for.end.r_exit.i.i.loopexit.us.us.1130
  %332 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %332, 1
  %mul.i.i.us.1 = mul nsw i32 %20, %conv2.i.i.us.1
  %mul4.i.i.us.1 = mul nsw i32 %24, %conv2.i.i.us.1
  %333 = sext i32 %mul4.i.i.us.1 to i64
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader131
  %_local_id_y.i.0 = phi i64 [ %334, %pregion_for_entry.pregion_for_init.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader131 ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %mul.i.i = mul nsw i32 %20, %conv2.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %16, i64 %idxprom.i.i
  store float 0.000000e+00, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.1
  store float 0.000000e+00, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.2 = add nsw i32 %mul.i.i, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.2
  store float 0.000000e+00, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.3 = add nsw i32 %mul.i.i, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.3
  store float 0.000000e+00, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.4 = add nsw i32 %mul.i.i, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.4
  store float 0.000000e+00, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.5 = add nsw i32 %mul.i.i, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.5
  store float 0.000000e+00, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.6 = add nsw i32 %mul.i.i, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.6
  store float 0.000000e+00, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.7 = add nsw i32 %mul.i.i, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.7
  store float 0.000000e+00, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.8 = add nsw i32 %mul.i.i, %conv.i.i.8
  %idxprom.i.i.8 = sext i32 %add.i.i.8 to i64
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.8
  store float 0.000000e+00, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.9 = add nsw i32 %mul.i.i, %conv.i.i.9
  %idxprom.i.i.9 = sext i32 %add.i.i.9 to i64
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.9
  store float 0.000000e+00, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.10 = add nsw i32 %mul.i.i, %conv.i.i.10
  %idxprom.i.i.10 = sext i32 %add.i.i.10 to i64
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.10
  store float 0.000000e+00, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.11 = add nsw i32 %mul.i.i, %conv.i.i.11
  %idxprom.i.i.11 = sext i32 %add.i.i.11 to i64
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.11
  store float 0.000000e+00, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.12 = add nsw i32 %mul.i.i, %conv.i.i.12
  %idxprom.i.i.12 = sext i32 %add.i.i.12 to i64
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.12
  store float 0.000000e+00, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.13 = add nsw i32 %mul.i.i, %conv.i.i.13
  %idxprom.i.i.13 = sext i32 %add.i.i.13 to i64
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.13
  store float 0.000000e+00, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.14 = add nsw i32 %mul.i.i, %conv.i.i.14
  %idxprom.i.i.14 = sext i32 %add.i.i.14 to i64
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.14
  store float 0.000000e+00, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.15 = add nsw i32 %mul.i.i, %conv.i.i.15
  %idxprom.i.i.15 = sext i32 %add.i.i.15 to i64
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.15
  store float 0.000000e+00, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.16 = add nsw i32 %mul.i.i, %conv.i.i.16
  %idxprom.i.i.16 = sext i32 %add.i.i.16 to i64
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.16
  store float 0.000000e+00, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.17 = add nsw i32 %mul.i.i, %conv.i.i.17
  %idxprom.i.i.17 = sext i32 %add.i.i.17 to i64
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.17
  store float 0.000000e+00, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.18 = add nsw i32 %mul.i.i, %conv.i.i.18
  %idxprom.i.i.18 = sext i32 %add.i.i.18 to i64
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.18
  store float 0.000000e+00, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.19 = add nsw i32 %mul.i.i, %conv.i.i.19
  %idxprom.i.i.19 = sext i32 %add.i.i.19 to i64
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.19
  store float 0.000000e+00, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.20 = add nsw i32 %mul.i.i, %conv.i.i.20
  %idxprom.i.i.20 = sext i32 %add.i.i.20 to i64
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.20
  store float 0.000000e+00, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.21 = add nsw i32 %mul.i.i, %conv.i.i.21
  %idxprom.i.i.21 = sext i32 %add.i.i.21 to i64
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.21
  store float 0.000000e+00, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.22 = add nsw i32 %mul.i.i, %conv.i.i.22
  %idxprom.i.i.22 = sext i32 %add.i.i.22 to i64
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.22
  store float 0.000000e+00, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.23 = add nsw i32 %mul.i.i, %conv.i.i.23
  %idxprom.i.i.23 = sext i32 %add.i.i.23 to i64
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.23
  store float 0.000000e+00, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.24 = add nsw i32 %mul.i.i, %conv.i.i.24
  %idxprom.i.i.24 = sext i32 %add.i.i.24 to i64
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.24
  store float 0.000000e+00, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.25 = add nsw i32 %mul.i.i, %conv.i.i.25
  %idxprom.i.i.25 = sext i32 %add.i.i.25 to i64
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.25
  store float 0.000000e+00, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.26 = add nsw i32 %mul.i.i, %conv.i.i.26
  %idxprom.i.i.26 = sext i32 %add.i.i.26 to i64
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.26
  store float 0.000000e+00, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.27 = add nsw i32 %mul.i.i, %conv.i.i.27
  %idxprom.i.i.27 = sext i32 %add.i.i.27 to i64
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.27
  store float 0.000000e+00, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.28 = add nsw i32 %mul.i.i, %conv.i.i.28
  %idxprom.i.i.28 = sext i32 %add.i.i.28 to i64
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.28
  store float 0.000000e+00, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.29 = add nsw i32 %mul.i.i, %conv.i.i.29
  %idxprom.i.i.29 = sext i32 %add.i.i.29 to i64
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.29
  store float 0.000000e+00, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.30 = add nsw i32 %mul.i.i, %conv.i.i.30
  %idxprom.i.i.30 = sext i32 %add.i.i.30 to i64
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.30
  store float 0.000000e+00, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.31 = add nsw i32 %mul.i.i, %conv.i.i.31
  %idxprom.i.i.31 = sext i32 %add.i.i.31 to i64
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.31
  store float 0.000000e+00, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %334 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond29.not = icmp eq i64 %334, 8
  br i1 %exitcond29.not, label %_pocl_kernel_mm3_kernel1.exit.loopexit132, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !26

_pocl_kernel_mm3_kernel1.exit.loopexit:           ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1
  br label %_pocl_kernel_mm3_kernel1.exit

_pocl_kernel_mm3_kernel1.exit.loopexit132:        ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %_pocl_kernel_mm3_kernel1.exit

_pocl_kernel_mm3_kernel1.exit:                    ; preds = %_pocl_kernel_mm3_kernel1.exit.loopexit132, %_pocl_kernel_mm3_kernel1.exit.loopexit, %vector.body
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1, %pregion_for_end.i.i.us-lcssa.us.us
  %_local_id_x.i.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us ], [ %472, %for.end.r_exit.i.i.loopexit.us.us.1.1 ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %335 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1
  %indvars.iv.next.i.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1 ]
  %336 = phi float [ %342, %for.body.i.i.us.us.1 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.1 ]
  %337 = add nsw i64 %indvars.iv.next.i.i2.us.us.1, %333
  %arrayidx7.i.i.us.us.1 = getelementptr inbounds float, float* %8, i64 %337
  %338 = load float, float* %arrayidx7.i.i.us.us.1, align 4, !tbaa !12
  %339 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1, %25
  %340 = add nsw i64 %339, %335
  %arrayidx11.i.i.us.us.1 = getelementptr inbounds float, float* %12, i64 %340
  %341 = load float, float* %arrayidx11.i.i.us.us.1, align 4, !tbaa !12
  %342 = tail call float @llvm.fmuladd.f32(float %338, float %341, float %336) #2
  store float %342, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %for.end.r_exit.i.i.loopexit.us.us.1, label %for.body.i.i.us.us.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1:              ; preds = %for.body.i.i.us.us.1
  %343 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %343, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %add.i.i.us.us.1.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1.1 = shl i64 %add1.i.i.i.us.us.1.1, 32
  %344 = ashr exact i64 %sext.i.i.us.us.1.1, 32
  br label %for.body.i.i.us.us.1.1

pregion_for_end.i.i.us-lcssa.us.us.1:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1
  %345 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %345, 2
  %mul.i.i.us.2 = mul nsw i32 %20, %conv2.i.i.us.2
  %mul4.i.i.us.2 = mul nsw i32 %24, %conv2.i.i.us.2
  %346 = sext i32 %mul4.i.i.us.2 to i64
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1, %pregion_for_end.i.i.us-lcssa.us.us.1
  %_local_id_x.i.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.1 ], [ %464, %for.end.r_exit.i.i.loopexit.us.us.2.1 ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %347 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2
  %indvars.iv.next.i.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2 ]
  %348 = phi float [ %354, %for.body.i.i.us.us.2 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.2 ]
  %349 = add nsw i64 %indvars.iv.next.i.i2.us.us.2, %346
  %arrayidx7.i.i.us.us.2 = getelementptr inbounds float, float* %8, i64 %349
  %350 = load float, float* %arrayidx7.i.i.us.us.2, align 4, !tbaa !12
  %351 = mul nsw i64 %indvars.iv.next.i.i2.us.us.2, %25
  %352 = add nsw i64 %351, %347
  %arrayidx11.i.i.us.us.2 = getelementptr inbounds float, float* %12, i64 %352
  %353 = load float, float* %arrayidx11.i.i.us.us.2, align 4, !tbaa !12
  %354 = tail call float @llvm.fmuladd.f32(float %350, float %353, float %348) #2
  store float %354, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %for.end.r_exit.i.i.loopexit.us.us.2, label %for.body.i.i.us.us.2, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2:              ; preds = %for.body.i.i.us.us.2
  %355 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %355, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %add.i.i.us.us.2.1 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2.1 = shl i64 %add1.i.i.i.us.us.2.1, 32
  %356 = ashr exact i64 %sext.i.i.us.us.2.1, 32
  br label %for.body.i.i.us.us.2.1

pregion_for_end.i.i.us-lcssa.us.us.2:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1
  %357 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %357, 3
  %mul.i.i.us.3 = mul nsw i32 %20, %conv2.i.i.us.3
  %mul4.i.i.us.3 = mul nsw i32 %24, %conv2.i.i.us.3
  %358 = sext i32 %mul4.i.i.us.3 to i64
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1, %pregion_for_end.i.i.us-lcssa.us.us.2
  %_local_id_x.i.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.2 ], [ %456, %for.end.r_exit.i.i.loopexit.us.us.3.1 ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %359 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3
  %indvars.iv.next.i.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3 ]
  %360 = phi float [ %366, %for.body.i.i.us.us.3 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.3 ]
  %361 = add nsw i64 %indvars.iv.next.i.i2.us.us.3, %358
  %arrayidx7.i.i.us.us.3 = getelementptr inbounds float, float* %8, i64 %361
  %362 = load float, float* %arrayidx7.i.i.us.us.3, align 4, !tbaa !12
  %363 = mul nsw i64 %indvars.iv.next.i.i2.us.us.3, %25
  %364 = add nsw i64 %363, %359
  %arrayidx11.i.i.us.us.3 = getelementptr inbounds float, float* %12, i64 %364
  %365 = load float, float* %arrayidx11.i.i.us.us.3, align 4, !tbaa !12
  %366 = tail call float @llvm.fmuladd.f32(float %362, float %365, float %360) #2
  store float %366, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %for.end.r_exit.i.i.loopexit.us.us.3, label %for.body.i.i.us.us.3, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3:              ; preds = %for.body.i.i.us.us.3
  %367 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %367, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %add.i.i.us.us.3.1 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3.1 = shl i64 %add1.i.i.i.us.us.3.1, 32
  %368 = ashr exact i64 %sext.i.i.us.us.3.1, 32
  br label %for.body.i.i.us.us.3.1

pregion_for_end.i.i.us-lcssa.us.us.3:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1
  %369 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %369, 4
  %mul.i.i.us.4 = mul nsw i32 %20, %conv2.i.i.us.4
  %mul4.i.i.us.4 = mul nsw i32 %24, %conv2.i.i.us.4
  %370 = sext i32 %mul4.i.i.us.4 to i64
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1, %pregion_for_end.i.i.us-lcssa.us.us.3
  %_local_id_x.i.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.3 ], [ %448, %for.end.r_exit.i.i.loopexit.us.us.4.1 ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %371 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4
  %indvars.iv.next.i.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4 ]
  %372 = phi float [ %378, %for.body.i.i.us.us.4 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.4 ]
  %373 = add nsw i64 %indvars.iv.next.i.i2.us.us.4, %370
  %arrayidx7.i.i.us.us.4 = getelementptr inbounds float, float* %8, i64 %373
  %374 = load float, float* %arrayidx7.i.i.us.us.4, align 4, !tbaa !12
  %375 = mul nsw i64 %indvars.iv.next.i.i2.us.us.4, %25
  %376 = add nsw i64 %375, %371
  %arrayidx11.i.i.us.us.4 = getelementptr inbounds float, float* %12, i64 %376
  %377 = load float, float* %arrayidx11.i.i.us.us.4, align 4, !tbaa !12
  %378 = tail call float @llvm.fmuladd.f32(float %374, float %377, float %372) #2
  store float %378, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %for.end.r_exit.i.i.loopexit.us.us.4, label %for.body.i.i.us.us.4, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4:              ; preds = %for.body.i.i.us.us.4
  %379 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %379, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %add.i.i.us.us.4.1 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4.1 = shl i64 %add1.i.i.i.us.us.4.1, 32
  %380 = ashr exact i64 %sext.i.i.us.us.4.1, 32
  br label %for.body.i.i.us.us.4.1

pregion_for_end.i.i.us-lcssa.us.us.4:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1
  %381 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %381, 5
  %mul.i.i.us.5 = mul nsw i32 %20, %conv2.i.i.us.5
  %mul4.i.i.us.5 = mul nsw i32 %24, %conv2.i.i.us.5
  %382 = sext i32 %mul4.i.i.us.5 to i64
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1, %pregion_for_end.i.i.us-lcssa.us.us.4
  %_local_id_x.i.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.4 ], [ %440, %for.end.r_exit.i.i.loopexit.us.us.5.1 ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %383 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5
  %indvars.iv.next.i.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5 ]
  %384 = phi float [ %390, %for.body.i.i.us.us.5 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.5 ]
  %385 = add nsw i64 %indvars.iv.next.i.i2.us.us.5, %382
  %arrayidx7.i.i.us.us.5 = getelementptr inbounds float, float* %8, i64 %385
  %386 = load float, float* %arrayidx7.i.i.us.us.5, align 4, !tbaa !12
  %387 = mul nsw i64 %indvars.iv.next.i.i2.us.us.5, %25
  %388 = add nsw i64 %387, %383
  %arrayidx11.i.i.us.us.5 = getelementptr inbounds float, float* %12, i64 %388
  %389 = load float, float* %arrayidx11.i.i.us.us.5, align 4, !tbaa !12
  %390 = tail call float @llvm.fmuladd.f32(float %386, float %389, float %384) #2
  store float %390, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %for.end.r_exit.i.i.loopexit.us.us.5, label %for.body.i.i.us.us.5, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5:              ; preds = %for.body.i.i.us.us.5
  %391 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %391, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %add.i.i.us.us.5.1 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5.1 = shl i64 %add1.i.i.i.us.us.5.1, 32
  %392 = ashr exact i64 %sext.i.i.us.us.5.1, 32
  br label %for.body.i.i.us.us.5.1

pregion_for_end.i.i.us-lcssa.us.us.5:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1
  %393 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %393, 6
  %mul.i.i.us.6 = mul nsw i32 %20, %conv2.i.i.us.6
  %mul4.i.i.us.6 = mul nsw i32 %24, %conv2.i.i.us.6
  %394 = sext i32 %mul4.i.i.us.6 to i64
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1, %pregion_for_end.i.i.us-lcssa.us.us.5
  %_local_id_x.i.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.5 ], [ %432, %for.end.r_exit.i.i.loopexit.us.us.6.1 ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %395 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6
  %indvars.iv.next.i.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6 ]
  %396 = phi float [ %402, %for.body.i.i.us.us.6 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.6 ]
  %397 = add nsw i64 %indvars.iv.next.i.i2.us.us.6, %394
  %arrayidx7.i.i.us.us.6 = getelementptr inbounds float, float* %8, i64 %397
  %398 = load float, float* %arrayidx7.i.i.us.us.6, align 4, !tbaa !12
  %399 = mul nsw i64 %indvars.iv.next.i.i2.us.us.6, %25
  %400 = add nsw i64 %399, %395
  %arrayidx11.i.i.us.us.6 = getelementptr inbounds float, float* %12, i64 %400
  %401 = load float, float* %arrayidx11.i.i.us.us.6, align 4, !tbaa !12
  %402 = tail call float @llvm.fmuladd.f32(float %398, float %401, float %396) #2
  store float %402, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %for.end.r_exit.i.i.loopexit.us.us.6, label %for.body.i.i.us.us.6, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6:              ; preds = %for.body.i.i.us.us.6
  %403 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %403, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %add.i.i.us.us.6.1 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6.1 = shl i64 %add1.i.i.i.us.us.6.1, 32
  %404 = ashr exact i64 %sext.i.i.us.us.6.1, 32
  br label %for.body.i.i.us.us.6.1

pregion_for_end.i.i.us-lcssa.us.us.6:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1
  %405 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %405, 7
  %mul.i.i.us.7 = mul nsw i32 %20, %conv2.i.i.us.7
  %mul4.i.i.us.7 = mul nsw i32 %24, %conv2.i.i.us.7
  %406 = sext i32 %mul4.i.i.us.7 to i64
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1, %pregion_for_end.i.i.us-lcssa.us.us.6
  %_local_id_x.i.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.6 ], [ %424, %for.end.r_exit.i.i.loopexit.us.us.7.1 ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %407 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7
  %indvars.iv.next.i.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7 ]
  %408 = phi float [ %414, %for.body.i.i.us.us.7 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.7 ]
  %409 = add nsw i64 %indvars.iv.next.i.i2.us.us.7, %406
  %arrayidx7.i.i.us.us.7 = getelementptr inbounds float, float* %8, i64 %409
  %410 = load float, float* %arrayidx7.i.i.us.us.7, align 4, !tbaa !12
  %411 = mul nsw i64 %indvars.iv.next.i.i2.us.us.7, %25
  %412 = add nsw i64 %411, %407
  %arrayidx11.i.i.us.us.7 = getelementptr inbounds float, float* %12, i64 %412
  %413 = load float, float* %arrayidx11.i.i.us.us.7, align 4, !tbaa !12
  %414 = tail call float @llvm.fmuladd.f32(float %410, float %413, float %408) #2
  store float %414, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %for.end.r_exit.i.i.loopexit.us.us.7, label %for.body.i.i.us.us.7, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7:              ; preds = %for.body.i.i.us.us.7
  %415 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %415, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %add.i.i.us.us.7.1 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7.1 = shl i64 %add1.i.i.i.us.us.7.1, 32
  %416 = ashr exact i64 %sext.i.i.us.us.7.1, 32
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %for.end.r_exit.i.i.loopexit.us.us.7
  %indvars.iv.next.i.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %417 = phi float [ %423, %for.body.i.i.us.us.7.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %418 = add nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %406
  %arrayidx7.i.i.us.us.7.1 = getelementptr inbounds float, float* %8, i64 %418
  %419 = load float, float* %arrayidx7.i.i.us.us.7.1, align 4, !tbaa !12
  %420 = mul nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %25
  %421 = add nsw i64 %420, %416
  %arrayidx11.i.i.us.us.7.1 = getelementptr inbounds float, float* %12, i64 %421
  %422 = load float, float* %arrayidx11.i.i.us.us.7.1, align 4, !tbaa !12
  %423 = tail call float @llvm.fmuladd.f32(float %419, float %422, float %417) #2
  store float %423, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7.1, label %for.end.r_exit.i.i.loopexit.us.us.7.1, label %for.body.i.i.us.us.7.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7.1:            ; preds = %for.body.i.i.us.us.7.1
  %424 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %424, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_mm3_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !24

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %for.end.r_exit.i.i.loopexit.us.us.6
  %indvars.iv.next.i.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %425 = phi float [ %431, %for.body.i.i.us.us.6.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %426 = add nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %394
  %arrayidx7.i.i.us.us.6.1 = getelementptr inbounds float, float* %8, i64 %426
  %427 = load float, float* %arrayidx7.i.i.us.us.6.1, align 4, !tbaa !12
  %428 = mul nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %25
  %429 = add nsw i64 %428, %404
  %arrayidx11.i.i.us.us.6.1 = getelementptr inbounds float, float* %12, i64 %429
  %430 = load float, float* %arrayidx11.i.i.us.us.6.1, align 4, !tbaa !12
  %431 = tail call float @llvm.fmuladd.f32(float %427, float %430, float %425) #2
  store float %431, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6.1, label %for.end.r_exit.i.i.loopexit.us.us.6.1, label %for.body.i.i.us.us.6.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6.1:            ; preds = %for.body.i.i.us.us.6.1
  %432 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %432, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !24

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %for.end.r_exit.i.i.loopexit.us.us.5
  %indvars.iv.next.i.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %433 = phi float [ %439, %for.body.i.i.us.us.5.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %434 = add nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %382
  %arrayidx7.i.i.us.us.5.1 = getelementptr inbounds float, float* %8, i64 %434
  %435 = load float, float* %arrayidx7.i.i.us.us.5.1, align 4, !tbaa !12
  %436 = mul nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %25
  %437 = add nsw i64 %436, %392
  %arrayidx11.i.i.us.us.5.1 = getelementptr inbounds float, float* %12, i64 %437
  %438 = load float, float* %arrayidx11.i.i.us.us.5.1, align 4, !tbaa !12
  %439 = tail call float @llvm.fmuladd.f32(float %435, float %438, float %433) #2
  store float %439, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5.1, label %for.end.r_exit.i.i.loopexit.us.us.5.1, label %for.body.i.i.us.us.5.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5.1:            ; preds = %for.body.i.i.us.us.5.1
  %440 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %440, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !24

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %for.end.r_exit.i.i.loopexit.us.us.4
  %indvars.iv.next.i.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %441 = phi float [ %447, %for.body.i.i.us.us.4.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %442 = add nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %370
  %arrayidx7.i.i.us.us.4.1 = getelementptr inbounds float, float* %8, i64 %442
  %443 = load float, float* %arrayidx7.i.i.us.us.4.1, align 4, !tbaa !12
  %444 = mul nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %25
  %445 = add nsw i64 %444, %380
  %arrayidx11.i.i.us.us.4.1 = getelementptr inbounds float, float* %12, i64 %445
  %446 = load float, float* %arrayidx11.i.i.us.us.4.1, align 4, !tbaa !12
  %447 = tail call float @llvm.fmuladd.f32(float %443, float %446, float %441) #2
  store float %447, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4.1, label %for.end.r_exit.i.i.loopexit.us.us.4.1, label %for.body.i.i.us.us.4.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4.1:            ; preds = %for.body.i.i.us.us.4.1
  %448 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %448, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !24

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %for.end.r_exit.i.i.loopexit.us.us.3
  %indvars.iv.next.i.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %449 = phi float [ %455, %for.body.i.i.us.us.3.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %450 = add nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %358
  %arrayidx7.i.i.us.us.3.1 = getelementptr inbounds float, float* %8, i64 %450
  %451 = load float, float* %arrayidx7.i.i.us.us.3.1, align 4, !tbaa !12
  %452 = mul nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %25
  %453 = add nsw i64 %452, %368
  %arrayidx11.i.i.us.us.3.1 = getelementptr inbounds float, float* %12, i64 %453
  %454 = load float, float* %arrayidx11.i.i.us.us.3.1, align 4, !tbaa !12
  %455 = tail call float @llvm.fmuladd.f32(float %451, float %454, float %449) #2
  store float %455, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3.1, label %for.end.r_exit.i.i.loopexit.us.us.3.1, label %for.body.i.i.us.us.3.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3.1:            ; preds = %for.body.i.i.us.us.3.1
  %456 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %456, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !24

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %for.end.r_exit.i.i.loopexit.us.us.2
  %indvars.iv.next.i.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %457 = phi float [ %463, %for.body.i.i.us.us.2.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %458 = add nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %346
  %arrayidx7.i.i.us.us.2.1 = getelementptr inbounds float, float* %8, i64 %458
  %459 = load float, float* %arrayidx7.i.i.us.us.2.1, align 4, !tbaa !12
  %460 = mul nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %25
  %461 = add nsw i64 %460, %356
  %arrayidx11.i.i.us.us.2.1 = getelementptr inbounds float, float* %12, i64 %461
  %462 = load float, float* %arrayidx11.i.i.us.us.2.1, align 4, !tbaa !12
  %463 = tail call float @llvm.fmuladd.f32(float %459, float %462, float %457) #2
  store float %463, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2.1, label %for.end.r_exit.i.i.loopexit.us.us.2.1, label %for.body.i.i.us.us.2.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2.1:            ; preds = %for.body.i.i.us.us.2.1
  %464 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %464, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !24

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %for.end.r_exit.i.i.loopexit.us.us.1
  %indvars.iv.next.i.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %465 = phi float [ %471, %for.body.i.i.us.us.1.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %466 = add nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %333
  %arrayidx7.i.i.us.us.1.1 = getelementptr inbounds float, float* %8, i64 %466
  %467 = load float, float* %arrayidx7.i.i.us.us.1.1, align 4, !tbaa !12
  %468 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %25
  %469 = add nsw i64 %468, %344
  %arrayidx11.i.i.us.us.1.1 = getelementptr inbounds float, float* %12, i64 %469
  %470 = load float, float* %arrayidx11.i.i.us.us.1.1, align 4, !tbaa !12
  %471 = tail call float @llvm.fmuladd.f32(float %467, float %470, float %465) #2
  store float %471, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1.1, label %for.end.r_exit.i.i.loopexit.us.us.1.1, label %for.body.i.i.us.us.1.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1.1:            ; preds = %for.body.i.i.us.us.1.1
  %472 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %472, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !24

for.body.i.i.us.us.1129:                          ; preds = %for.body.i.i.us.us.1129, %for.end.r_exit.i.i.loopexit.us.us
  %indvars.iv.next.i.i2.us.us.1124 = phi i64 [ %indvars.iv.next.i.i.us.us.1127, %for.body.i.i.us.us.1129 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us ]
  %473 = phi float [ %479, %for.body.i.i.us.us.1129 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us ]
  %474 = add nsw i64 %indvars.iv.next.i.i2.us.us.1124, %321
  %arrayidx7.i.i.us.us.1125 = getelementptr inbounds float, float* %8, i64 %474
  %475 = load float, float* %arrayidx7.i.i.us.us.1125, align 4, !tbaa !12
  %476 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1124, %25
  %477 = add nsw i64 %476, %324
  %arrayidx11.i.i.us.us.1126 = getelementptr inbounds float, float* %12, i64 %477
  %478 = load float, float* %arrayidx11.i.i.us.us.1126, align 4, !tbaa !12
  %479 = tail call float @llvm.fmuladd.f32(float %475, float %478, float %473) #2
  store float %479, float* %arrayidx.i.i.us.us.1121, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1127 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1124, 1
  %exitcond.not.i.i.us.us.1128 = icmp eq i64 %indvars.iv.next.i.i.us.us.1127, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1128, label %for.end.r_exit.i.i.loopexit.us.us.1130, label %for.body.i.i.us.us.1129, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1130:           ; preds = %for.body.i.i.us.us.1129
  %480 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %480, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !24
}

; Function Attrs: nounwind
define void @_pocl_kernel_mm3_kernel1_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %18 = getelementptr i8*, i8** %0, i64 5
  %19 = bitcast i8** %18 to i32**
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp31.i.i = icmp sgt i32 %21, 0
  %22 = sext i32 %17 to i64
  %wide.trip.count.i.i = zext i32 %21 to i64
  br i1 %cmp31.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  %conv.i.i = trunc i64 %mul.i.i.i to i32
  %23 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.1 = or i32 %23, 1
  %24 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.2 = or i32 %24, 2
  %25 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.3 = or i32 %25, 3
  %26 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.4 = or i32 %26, 4
  %27 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.5 = or i32 %27, 5
  %28 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.6 = or i32 %28, 6
  %29 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.7 = or i32 %29, 7
  %30 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.8 = or i32 %30, 8
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.9 = or i32 %31, 9
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.10 = or i32 %32, 10
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.11 = or i32 %33, 11
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.12 = or i32 %34, 12
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.13 = or i32 %35, 13
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.14 = or i32 %36, 14
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.15 = or i32 %37, 15
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.16 = or i32 %38, 16
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.17 = or i32 %39, 17
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.18 = or i32 %40, 18
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.19 = or i32 %41, 19
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.20 = or i32 %42, 20
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.21 = or i32 %43, 21
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.22 = or i32 %44, 22
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.23 = or i32 %45, 23
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.24 = or i32 %46, 24
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.25 = or i32 %47, 25
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.26 = or i32 %48, 26
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.27 = or i32 %49, 27
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.28 = or i32 %50, 28
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.29 = or i32 %51, 29
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.30 = or i32 %52, 30
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.31 = or i32 %53, 31
  %ident.check = icmp ne i32 %17, 1
  %54 = trunc i64 %3 to i32
  %55 = shl i32 %54, 3
  %56 = add i32 %55, %conv.i.i
  %57 = icmp eq i32 %56, 2147483640
  %58 = or i1 %ident.check, %57
  %59 = add i32 %55, %conv.i.i
  %60 = or i32 %59, 2
  %61 = icmp sgt i32 %60, 2147483640
  %62 = or i1 %58, %61
  %63 = add i32 %55, %conv.i.i
  %64 = or i32 %63, 3
  %65 = icmp sgt i32 %64, 2147483640
  %66 = or i1 %62, %65
  %67 = add i32 %55, %conv.i.i
  %68 = or i32 %67, 4
  %69 = icmp sgt i32 %68, 2147483640
  %70 = or i1 %66, %69
  %71 = add i32 %55, %conv.i.i
  %72 = or i32 %71, 5
  %73 = icmp sgt i32 %72, 2147483640
  %74 = or i1 %70, %73
  %75 = add i32 %55, %conv.i.i
  %76 = or i32 %75, 6
  %77 = icmp sgt i32 %76, 2147483640
  %78 = or i1 %74, %77
  %79 = add i32 %55, %conv.i.i
  %80 = or i32 %79, 7
  %81 = icmp sgt i32 %80, 2147483640
  %82 = or i1 %78, %81
  %83 = add i32 %55, %conv.i.i
  %84 = add i32 %83, 9
  %85 = add i32 %83, 16
  %86 = icmp slt i32 %85, %84
  %87 = or i1 %82, %86
  %88 = add i32 %55, %conv.i.i
  %89 = add i32 %88, 10
  %90 = add i32 %88, 17
  %91 = icmp slt i32 %90, %89
  %92 = or i1 %87, %91
  %93 = add i32 %55, %conv.i.i
  %94 = add i32 %93, 11
  %95 = add i32 %93, 18
  %96 = icmp slt i32 %95, %94
  %97 = or i1 %92, %96
  %98 = add i32 %55, %conv.i.i
  %99 = add i32 %98, 12
  %100 = add i32 %98, 19
  %101 = icmp slt i32 %100, %99
  %102 = or i1 %97, %101
  %103 = add i32 %55, %conv.i.i
  %104 = add i32 %103, 13
  %105 = add i32 %103, 20
  %106 = icmp slt i32 %105, %104
  %107 = or i1 %102, %106
  %108 = add i32 %55, %conv.i.i
  %109 = add i32 %108, 14
  %110 = add i32 %108, 21
  %111 = icmp slt i32 %110, %109
  %112 = or i1 %107, %111
  %113 = add i32 %55, %conv.i.i
  %114 = add i32 %113, 15
  %115 = add i32 %113, 22
  %116 = icmp slt i32 %115, %114
  %117 = or i1 %112, %116
  %118 = add i32 %55, %conv.i.i
  %119 = add i32 %118, 17
  %120 = add i32 %118, 24
  %121 = icmp slt i32 %120, %119
  %122 = or i1 %117, %121
  %123 = add i32 %55, %conv.i.i
  %124 = add i32 %123, 18
  %125 = add i32 %123, 25
  %126 = icmp slt i32 %125, %124
  %127 = or i1 %122, %126
  %128 = add i32 %55, %conv.i.i
  %129 = add i32 %128, 19
  %130 = add i32 %128, 26
  %131 = icmp slt i32 %130, %129
  %132 = or i1 %127, %131
  %133 = add i32 %55, %conv.i.i
  %134 = add i32 %133, 20
  %135 = add i32 %133, 27
  %136 = icmp slt i32 %135, %134
  %137 = or i1 %132, %136
  %138 = add i32 %55, %conv.i.i
  %139 = add i32 %138, 21
  %140 = add i32 %138, 28
  %141 = icmp slt i32 %140, %139
  %142 = or i1 %137, %141
  %143 = add i32 %55, %conv.i.i
  %144 = add i32 %143, 22
  %145 = add i32 %143, 29
  %146 = icmp slt i32 %145, %144
  %147 = or i1 %142, %146
  %148 = add i32 %55, %conv.i.i
  %149 = add i32 %148, 23
  %150 = add i32 %148, 30
  %151 = icmp slt i32 %150, %149
  %152 = or i1 %147, %151
  %153 = add i32 %55, %conv.i.i
  %154 = add i32 %153, 25
  %155 = add i32 %153, 32
  %156 = icmp slt i32 %155, %154
  %157 = or i1 %152, %156
  %158 = add i32 %55, %conv.i.i
  %159 = add i32 %158, 26
  %160 = add i32 %158, 33
  %161 = icmp slt i32 %160, %159
  %162 = or i1 %157, %161
  %163 = add i32 %55, %conv.i.i
  %164 = add i32 %163, 27
  %165 = add i32 %163, 34
  %166 = icmp slt i32 %165, %164
  %167 = or i1 %162, %166
  %168 = add i32 %55, %conv.i.i
  %169 = add i32 %168, 28
  %170 = add i32 %168, 35
  %171 = icmp slt i32 %170, %169
  %172 = or i1 %167, %171
  %173 = add i32 %55, %conv.i.i
  %174 = add i32 %173, 29
  %175 = add i32 %173, 36
  %176 = icmp slt i32 %175, %174
  %177 = or i1 %172, %176
  %178 = add i32 %55, %conv.i.i
  %179 = add i32 %178, 30
  %180 = add i32 %178, 37
  %181 = icmp slt i32 %180, %179
  %182 = or i1 %177, %181
  %183 = add i32 %55, %conv.i.i
  %184 = add i32 %183, 31
  %185 = add i32 %183, 38
  %186 = icmp slt i32 %185, %184
  %187 = or i1 %182, %186
  br i1 %187, label %pregion_for_entry.pregion_for_init.i.i.preheader131, label %vector.body

pregion_for_entry.pregion_for_init.i.i.preheader131: ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  br label %pregion_for_entry.pregion_for_init.i.i

vector.body:                                      ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %188 = trunc i64 %mul3.i.i.i to i32
  %189 = mul nsw i32 %17, %188
  %190 = add nsw i32 %189, %conv.i.i
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float* %13, i64 %191
  %193 = bitcast float* %192 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %193, align 4, !tbaa !12, !llvm.access.group !16
  %194 = add nsw i32 %189, %conv.i.i.1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %13, i64 %195
  %197 = bitcast float* %196 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %197, align 4, !tbaa !12, !llvm.access.group !16
  %198 = add nsw i32 %189, %conv.i.i.2
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %13, i64 %199
  %201 = bitcast float* %200 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %201, align 4, !tbaa !12, !llvm.access.group !16
  %202 = add nsw i32 %189, %conv.i.i.3
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %13, i64 %203
  %205 = bitcast float* %204 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %205, align 4, !tbaa !12, !llvm.access.group !16
  %206 = add nsw i32 %189, %conv.i.i.4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %13, i64 %207
  %209 = bitcast float* %208 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %209, align 4, !tbaa !12, !llvm.access.group !16
  %210 = add nsw i32 %189, %conv.i.i.5
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %13, i64 %211
  %213 = bitcast float* %212 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %213, align 4, !tbaa !12, !llvm.access.group !16
  %214 = add nsw i32 %189, %conv.i.i.6
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %13, i64 %215
  %217 = bitcast float* %216 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %217, align 4, !tbaa !12, !llvm.access.group !16
  %218 = add nsw i32 %189, %conv.i.i.7
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %13, i64 %219
  %221 = bitcast float* %220 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %221, align 4, !tbaa !12, !llvm.access.group !16
  %222 = add nsw i32 %189, %conv.i.i.8
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float, float* %13, i64 %223
  %225 = bitcast float* %224 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %225, align 4, !tbaa !12, !llvm.access.group !16
  %226 = add nsw i32 %189, %conv.i.i.9
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %13, i64 %227
  %229 = bitcast float* %228 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %229, align 4, !tbaa !12, !llvm.access.group !16
  %230 = add nsw i32 %189, %conv.i.i.10
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %13, i64 %231
  %233 = bitcast float* %232 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %233, align 4, !tbaa !12, !llvm.access.group !16
  %234 = add nsw i32 %189, %conv.i.i.11
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds float, float* %13, i64 %235
  %237 = bitcast float* %236 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %237, align 4, !tbaa !12, !llvm.access.group !16
  %238 = add nsw i32 %189, %conv.i.i.12
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %13, i64 %239
  %241 = bitcast float* %240 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %241, align 4, !tbaa !12, !llvm.access.group !16
  %242 = add nsw i32 %189, %conv.i.i.13
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %13, i64 %243
  %245 = bitcast float* %244 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %245, align 4, !tbaa !12, !llvm.access.group !16
  %246 = add nsw i32 %189, %conv.i.i.14
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %13, i64 %247
  %249 = bitcast float* %248 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %249, align 4, !tbaa !12, !llvm.access.group !16
  %250 = add nsw i32 %189, %conv.i.i.15
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %13, i64 %251
  %253 = bitcast float* %252 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %253, align 4, !tbaa !12, !llvm.access.group !16
  %254 = add nsw i32 %189, %conv.i.i.16
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %13, i64 %255
  %257 = bitcast float* %256 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %257, align 4, !tbaa !12, !llvm.access.group !16
  %258 = add nsw i32 %189, %conv.i.i.17
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %13, i64 %259
  %261 = bitcast float* %260 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %261, align 4, !tbaa !12, !llvm.access.group !16
  %262 = add nsw i32 %189, %conv.i.i.18
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float, float* %13, i64 %263
  %265 = bitcast float* %264 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %265, align 4, !tbaa !12, !llvm.access.group !16
  %266 = add nsw i32 %189, %conv.i.i.19
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %13, i64 %267
  %269 = bitcast float* %268 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %269, align 4, !tbaa !12, !llvm.access.group !16
  %270 = add nsw i32 %189, %conv.i.i.20
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %13, i64 %271
  %273 = bitcast float* %272 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %273, align 4, !tbaa !12, !llvm.access.group !16
  %274 = add nsw i32 %189, %conv.i.i.21
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %13, i64 %275
  %277 = bitcast float* %276 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %277, align 4, !tbaa !12, !llvm.access.group !16
  %278 = add nsw i32 %189, %conv.i.i.22
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %13, i64 %279
  %281 = bitcast float* %280 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %281, align 4, !tbaa !12, !llvm.access.group !16
  %282 = add nsw i32 %189, %conv.i.i.23
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds float, float* %13, i64 %283
  %285 = bitcast float* %284 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %285, align 4, !tbaa !12, !llvm.access.group !16
  %286 = add nsw i32 %189, %conv.i.i.24
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %13, i64 %287
  %289 = bitcast float* %288 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %289, align 4, !tbaa !12, !llvm.access.group !16
  %290 = add nsw i32 %189, %conv.i.i.25
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, float* %13, i64 %291
  %293 = bitcast float* %292 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %293, align 4, !tbaa !12, !llvm.access.group !16
  %294 = add nsw i32 %189, %conv.i.i.26
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds float, float* %13, i64 %295
  %297 = bitcast float* %296 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %297, align 4, !tbaa !12, !llvm.access.group !16
  %298 = add nsw i32 %189, %conv.i.i.27
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %13, i64 %299
  %301 = bitcast float* %300 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %301, align 4, !tbaa !12, !llvm.access.group !16
  %302 = add nsw i32 %189, %conv.i.i.28
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %13, i64 %303
  %305 = bitcast float* %304 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %305, align 4, !tbaa !12, !llvm.access.group !16
  %306 = add nsw i32 %189, %conv.i.i.29
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds float, float* %13, i64 %307
  %309 = bitcast float* %308 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %309, align 4, !tbaa !12, !llvm.access.group !16
  %310 = add nsw i32 %189, %conv.i.i.30
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds float, float* %13, i64 %311
  %313 = bitcast float* %312 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %313, align 4, !tbaa !12, !llvm.access.group !16
  %314 = add nsw i32 %189, %conv.i.i.31
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds float, float* %13, i64 %315
  %317 = bitcast float* %316 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %317, align 4, !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_mm3_kernel1.exit

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %mul.i.i.us = mul nsw i32 %17, %conv2.i.i.us
  %mul4.i.i.us = mul nsw i32 %21, %conv2.i.i.us
  %318 = sext i32 %mul4.i.i.us to i64
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_entry.entry.i.i.us.us:                ; preds = %for.end.r_exit.i.i.loopexit.us.us.1130, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.i.us.preheader ], [ %477, %for.end.r_exit.i.i.loopexit.us.us.1130 ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %319 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

for.end.r_exit.i.i.loopexit.us.us:                ; preds = %for.body.i.i.us.us
  %320 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.1117 = add nuw nsw i64 %320, %mul.i.i.i
  %conv.i.i.us.us.1118 = trunc i64 %add1.i.i.i.us.us.1117 to i32
  %add.i.i.us.us.1119 = add nsw i32 %mul.i.i.us, %conv.i.i.us.us.1118
  %idxprom.i.i.us.us.1120 = sext i32 %add.i.i.us.us.1119 to i64
  %arrayidx.i.i.us.us.1121 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.1120
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1121, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1122 = shl i64 %add1.i.i.i.us.us.1117, 32
  %321 = ashr exact i64 %sext.i.i.us.us.1122, 32
  br label %for.body.i.i.us.us.1129

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %pregion_for_entry.entry.i.i.us.us
  %indvars.iv.next.i.i2.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us ]
  %322 = phi float [ %328, %for.body.i.i.us.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us ]
  %323 = add nsw i64 %indvars.iv.next.i.i2.us.us, %318
  %arrayidx7.i.i.us.us = getelementptr inbounds float, float* %7, i64 %323
  %324 = load float, float* %arrayidx7.i.i.us.us, align 4, !tbaa !12
  %325 = mul nsw i64 %indvars.iv.next.i.i2.us.us, %22
  %326 = add nsw i64 %325, %319
  %arrayidx11.i.i.us.us = getelementptr inbounds float, float* %10, i64 %326
  %327 = load float, float* %arrayidx11.i.i.us.us, align 4, !tbaa !12
  %328 = tail call float @llvm.fmuladd.f32(float %324, float %327, float %322) #2
  store float %328, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i2.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %for.end.r_exit.i.i.loopexit.us.us, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us:               ; preds = %for.end.r_exit.i.i.loopexit.us.us.1130
  %329 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %329, 1
  %mul.i.i.us.1 = mul nsw i32 %17, %conv2.i.i.us.1
  %mul4.i.i.us.1 = mul nsw i32 %21, %conv2.i.i.us.1
  %330 = sext i32 %mul4.i.i.us.1 to i64
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader131
  %_local_id_y.i.0 = phi i64 [ %331, %pregion_for_entry.pregion_for_init.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader131 ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %mul.i.i = mul nsw i32 %17, %conv2.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %13, i64 %idxprom.i.i
  store float 0.000000e+00, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.1
  store float 0.000000e+00, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.2 = add nsw i32 %mul.i.i, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.2
  store float 0.000000e+00, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.3 = add nsw i32 %mul.i.i, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.3
  store float 0.000000e+00, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.4 = add nsw i32 %mul.i.i, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.4
  store float 0.000000e+00, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.5 = add nsw i32 %mul.i.i, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.5
  store float 0.000000e+00, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.6 = add nsw i32 %mul.i.i, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.6
  store float 0.000000e+00, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.7 = add nsw i32 %mul.i.i, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.7
  store float 0.000000e+00, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.8 = add nsw i32 %mul.i.i, %conv.i.i.8
  %idxprom.i.i.8 = sext i32 %add.i.i.8 to i64
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.8
  store float 0.000000e+00, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.9 = add nsw i32 %mul.i.i, %conv.i.i.9
  %idxprom.i.i.9 = sext i32 %add.i.i.9 to i64
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.9
  store float 0.000000e+00, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.10 = add nsw i32 %mul.i.i, %conv.i.i.10
  %idxprom.i.i.10 = sext i32 %add.i.i.10 to i64
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.10
  store float 0.000000e+00, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.11 = add nsw i32 %mul.i.i, %conv.i.i.11
  %idxprom.i.i.11 = sext i32 %add.i.i.11 to i64
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.11
  store float 0.000000e+00, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.12 = add nsw i32 %mul.i.i, %conv.i.i.12
  %idxprom.i.i.12 = sext i32 %add.i.i.12 to i64
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.12
  store float 0.000000e+00, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.13 = add nsw i32 %mul.i.i, %conv.i.i.13
  %idxprom.i.i.13 = sext i32 %add.i.i.13 to i64
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.13
  store float 0.000000e+00, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.14 = add nsw i32 %mul.i.i, %conv.i.i.14
  %idxprom.i.i.14 = sext i32 %add.i.i.14 to i64
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.14
  store float 0.000000e+00, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.15 = add nsw i32 %mul.i.i, %conv.i.i.15
  %idxprom.i.i.15 = sext i32 %add.i.i.15 to i64
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.15
  store float 0.000000e+00, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.16 = add nsw i32 %mul.i.i, %conv.i.i.16
  %idxprom.i.i.16 = sext i32 %add.i.i.16 to i64
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.16
  store float 0.000000e+00, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.17 = add nsw i32 %mul.i.i, %conv.i.i.17
  %idxprom.i.i.17 = sext i32 %add.i.i.17 to i64
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.17
  store float 0.000000e+00, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.18 = add nsw i32 %mul.i.i, %conv.i.i.18
  %idxprom.i.i.18 = sext i32 %add.i.i.18 to i64
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.18
  store float 0.000000e+00, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.19 = add nsw i32 %mul.i.i, %conv.i.i.19
  %idxprom.i.i.19 = sext i32 %add.i.i.19 to i64
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.19
  store float 0.000000e+00, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.20 = add nsw i32 %mul.i.i, %conv.i.i.20
  %idxprom.i.i.20 = sext i32 %add.i.i.20 to i64
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.20
  store float 0.000000e+00, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.21 = add nsw i32 %mul.i.i, %conv.i.i.21
  %idxprom.i.i.21 = sext i32 %add.i.i.21 to i64
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.21
  store float 0.000000e+00, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.22 = add nsw i32 %mul.i.i, %conv.i.i.22
  %idxprom.i.i.22 = sext i32 %add.i.i.22 to i64
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.22
  store float 0.000000e+00, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.23 = add nsw i32 %mul.i.i, %conv.i.i.23
  %idxprom.i.i.23 = sext i32 %add.i.i.23 to i64
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.23
  store float 0.000000e+00, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.24 = add nsw i32 %mul.i.i, %conv.i.i.24
  %idxprom.i.i.24 = sext i32 %add.i.i.24 to i64
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.24
  store float 0.000000e+00, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.25 = add nsw i32 %mul.i.i, %conv.i.i.25
  %idxprom.i.i.25 = sext i32 %add.i.i.25 to i64
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.25
  store float 0.000000e+00, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.26 = add nsw i32 %mul.i.i, %conv.i.i.26
  %idxprom.i.i.26 = sext i32 %add.i.i.26 to i64
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.26
  store float 0.000000e+00, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.27 = add nsw i32 %mul.i.i, %conv.i.i.27
  %idxprom.i.i.27 = sext i32 %add.i.i.27 to i64
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.27
  store float 0.000000e+00, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.28 = add nsw i32 %mul.i.i, %conv.i.i.28
  %idxprom.i.i.28 = sext i32 %add.i.i.28 to i64
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.28
  store float 0.000000e+00, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.29 = add nsw i32 %mul.i.i, %conv.i.i.29
  %idxprom.i.i.29 = sext i32 %add.i.i.29 to i64
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.29
  store float 0.000000e+00, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.30 = add nsw i32 %mul.i.i, %conv.i.i.30
  %idxprom.i.i.30 = sext i32 %add.i.i.30 to i64
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.30
  store float 0.000000e+00, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.31 = add nsw i32 %mul.i.i, %conv.i.i.31
  %idxprom.i.i.31 = sext i32 %add.i.i.31 to i64
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.31
  store float 0.000000e+00, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %331 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond29.not = icmp eq i64 %331, 8
  br i1 %exitcond29.not, label %_pocl_kernel_mm3_kernel1.exit.loopexit132, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !27

_pocl_kernel_mm3_kernel1.exit.loopexit:           ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1
  br label %_pocl_kernel_mm3_kernel1.exit

_pocl_kernel_mm3_kernel1.exit.loopexit132:        ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %_pocl_kernel_mm3_kernel1.exit

_pocl_kernel_mm3_kernel1.exit:                    ; preds = %_pocl_kernel_mm3_kernel1.exit.loopexit132, %_pocl_kernel_mm3_kernel1.exit.loopexit, %vector.body
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1, %pregion_for_end.i.i.us-lcssa.us.us
  %_local_id_x.i.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us ], [ %469, %for.end.r_exit.i.i.loopexit.us.us.1.1 ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %332 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1
  %indvars.iv.next.i.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1 ]
  %333 = phi float [ %339, %for.body.i.i.us.us.1 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.1 ]
  %334 = add nsw i64 %indvars.iv.next.i.i2.us.us.1, %330
  %arrayidx7.i.i.us.us.1 = getelementptr inbounds float, float* %7, i64 %334
  %335 = load float, float* %arrayidx7.i.i.us.us.1, align 4, !tbaa !12
  %336 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1, %22
  %337 = add nsw i64 %336, %332
  %arrayidx11.i.i.us.us.1 = getelementptr inbounds float, float* %10, i64 %337
  %338 = load float, float* %arrayidx11.i.i.us.us.1, align 4, !tbaa !12
  %339 = tail call float @llvm.fmuladd.f32(float %335, float %338, float %333) #2
  store float %339, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %for.end.r_exit.i.i.loopexit.us.us.1, label %for.body.i.i.us.us.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1:              ; preds = %for.body.i.i.us.us.1
  %340 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %340, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %add.i.i.us.us.1.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1.1 = shl i64 %add1.i.i.i.us.us.1.1, 32
  %341 = ashr exact i64 %sext.i.i.us.us.1.1, 32
  br label %for.body.i.i.us.us.1.1

pregion_for_end.i.i.us-lcssa.us.us.1:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1
  %342 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %342, 2
  %mul.i.i.us.2 = mul nsw i32 %17, %conv2.i.i.us.2
  %mul4.i.i.us.2 = mul nsw i32 %21, %conv2.i.i.us.2
  %343 = sext i32 %mul4.i.i.us.2 to i64
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1, %pregion_for_end.i.i.us-lcssa.us.us.1
  %_local_id_x.i.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.1 ], [ %461, %for.end.r_exit.i.i.loopexit.us.us.2.1 ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %344 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2
  %indvars.iv.next.i.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2 ]
  %345 = phi float [ %351, %for.body.i.i.us.us.2 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.2 ]
  %346 = add nsw i64 %indvars.iv.next.i.i2.us.us.2, %343
  %arrayidx7.i.i.us.us.2 = getelementptr inbounds float, float* %7, i64 %346
  %347 = load float, float* %arrayidx7.i.i.us.us.2, align 4, !tbaa !12
  %348 = mul nsw i64 %indvars.iv.next.i.i2.us.us.2, %22
  %349 = add nsw i64 %348, %344
  %arrayidx11.i.i.us.us.2 = getelementptr inbounds float, float* %10, i64 %349
  %350 = load float, float* %arrayidx11.i.i.us.us.2, align 4, !tbaa !12
  %351 = tail call float @llvm.fmuladd.f32(float %347, float %350, float %345) #2
  store float %351, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %for.end.r_exit.i.i.loopexit.us.us.2, label %for.body.i.i.us.us.2, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2:              ; preds = %for.body.i.i.us.us.2
  %352 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %352, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %add.i.i.us.us.2.1 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2.1 = shl i64 %add1.i.i.i.us.us.2.1, 32
  %353 = ashr exact i64 %sext.i.i.us.us.2.1, 32
  br label %for.body.i.i.us.us.2.1

pregion_for_end.i.i.us-lcssa.us.us.2:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1
  %354 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %354, 3
  %mul.i.i.us.3 = mul nsw i32 %17, %conv2.i.i.us.3
  %mul4.i.i.us.3 = mul nsw i32 %21, %conv2.i.i.us.3
  %355 = sext i32 %mul4.i.i.us.3 to i64
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1, %pregion_for_end.i.i.us-lcssa.us.us.2
  %_local_id_x.i.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.2 ], [ %453, %for.end.r_exit.i.i.loopexit.us.us.3.1 ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %356 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3
  %indvars.iv.next.i.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3 ]
  %357 = phi float [ %363, %for.body.i.i.us.us.3 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.3 ]
  %358 = add nsw i64 %indvars.iv.next.i.i2.us.us.3, %355
  %arrayidx7.i.i.us.us.3 = getelementptr inbounds float, float* %7, i64 %358
  %359 = load float, float* %arrayidx7.i.i.us.us.3, align 4, !tbaa !12
  %360 = mul nsw i64 %indvars.iv.next.i.i2.us.us.3, %22
  %361 = add nsw i64 %360, %356
  %arrayidx11.i.i.us.us.3 = getelementptr inbounds float, float* %10, i64 %361
  %362 = load float, float* %arrayidx11.i.i.us.us.3, align 4, !tbaa !12
  %363 = tail call float @llvm.fmuladd.f32(float %359, float %362, float %357) #2
  store float %363, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %for.end.r_exit.i.i.loopexit.us.us.3, label %for.body.i.i.us.us.3, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3:              ; preds = %for.body.i.i.us.us.3
  %364 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %364, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %add.i.i.us.us.3.1 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3.1 = shl i64 %add1.i.i.i.us.us.3.1, 32
  %365 = ashr exact i64 %sext.i.i.us.us.3.1, 32
  br label %for.body.i.i.us.us.3.1

pregion_for_end.i.i.us-lcssa.us.us.3:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1
  %366 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %366, 4
  %mul.i.i.us.4 = mul nsw i32 %17, %conv2.i.i.us.4
  %mul4.i.i.us.4 = mul nsw i32 %21, %conv2.i.i.us.4
  %367 = sext i32 %mul4.i.i.us.4 to i64
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1, %pregion_for_end.i.i.us-lcssa.us.us.3
  %_local_id_x.i.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.3 ], [ %445, %for.end.r_exit.i.i.loopexit.us.us.4.1 ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %368 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4
  %indvars.iv.next.i.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4 ]
  %369 = phi float [ %375, %for.body.i.i.us.us.4 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.4 ]
  %370 = add nsw i64 %indvars.iv.next.i.i2.us.us.4, %367
  %arrayidx7.i.i.us.us.4 = getelementptr inbounds float, float* %7, i64 %370
  %371 = load float, float* %arrayidx7.i.i.us.us.4, align 4, !tbaa !12
  %372 = mul nsw i64 %indvars.iv.next.i.i2.us.us.4, %22
  %373 = add nsw i64 %372, %368
  %arrayidx11.i.i.us.us.4 = getelementptr inbounds float, float* %10, i64 %373
  %374 = load float, float* %arrayidx11.i.i.us.us.4, align 4, !tbaa !12
  %375 = tail call float @llvm.fmuladd.f32(float %371, float %374, float %369) #2
  store float %375, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %for.end.r_exit.i.i.loopexit.us.us.4, label %for.body.i.i.us.us.4, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4:              ; preds = %for.body.i.i.us.us.4
  %376 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %376, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %add.i.i.us.us.4.1 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4.1 = shl i64 %add1.i.i.i.us.us.4.1, 32
  %377 = ashr exact i64 %sext.i.i.us.us.4.1, 32
  br label %for.body.i.i.us.us.4.1

pregion_for_end.i.i.us-lcssa.us.us.4:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1
  %378 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %378, 5
  %mul.i.i.us.5 = mul nsw i32 %17, %conv2.i.i.us.5
  %mul4.i.i.us.5 = mul nsw i32 %21, %conv2.i.i.us.5
  %379 = sext i32 %mul4.i.i.us.5 to i64
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1, %pregion_for_end.i.i.us-lcssa.us.us.4
  %_local_id_x.i.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.4 ], [ %437, %for.end.r_exit.i.i.loopexit.us.us.5.1 ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %380 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5
  %indvars.iv.next.i.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5 ]
  %381 = phi float [ %387, %for.body.i.i.us.us.5 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.5 ]
  %382 = add nsw i64 %indvars.iv.next.i.i2.us.us.5, %379
  %arrayidx7.i.i.us.us.5 = getelementptr inbounds float, float* %7, i64 %382
  %383 = load float, float* %arrayidx7.i.i.us.us.5, align 4, !tbaa !12
  %384 = mul nsw i64 %indvars.iv.next.i.i2.us.us.5, %22
  %385 = add nsw i64 %384, %380
  %arrayidx11.i.i.us.us.5 = getelementptr inbounds float, float* %10, i64 %385
  %386 = load float, float* %arrayidx11.i.i.us.us.5, align 4, !tbaa !12
  %387 = tail call float @llvm.fmuladd.f32(float %383, float %386, float %381) #2
  store float %387, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %for.end.r_exit.i.i.loopexit.us.us.5, label %for.body.i.i.us.us.5, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5:              ; preds = %for.body.i.i.us.us.5
  %388 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %388, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %add.i.i.us.us.5.1 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5.1 = shl i64 %add1.i.i.i.us.us.5.1, 32
  %389 = ashr exact i64 %sext.i.i.us.us.5.1, 32
  br label %for.body.i.i.us.us.5.1

pregion_for_end.i.i.us-lcssa.us.us.5:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1
  %390 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %390, 6
  %mul.i.i.us.6 = mul nsw i32 %17, %conv2.i.i.us.6
  %mul4.i.i.us.6 = mul nsw i32 %21, %conv2.i.i.us.6
  %391 = sext i32 %mul4.i.i.us.6 to i64
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1, %pregion_for_end.i.i.us-lcssa.us.us.5
  %_local_id_x.i.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.5 ], [ %429, %for.end.r_exit.i.i.loopexit.us.us.6.1 ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %392 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6
  %indvars.iv.next.i.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6 ]
  %393 = phi float [ %399, %for.body.i.i.us.us.6 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.6 ]
  %394 = add nsw i64 %indvars.iv.next.i.i2.us.us.6, %391
  %arrayidx7.i.i.us.us.6 = getelementptr inbounds float, float* %7, i64 %394
  %395 = load float, float* %arrayidx7.i.i.us.us.6, align 4, !tbaa !12
  %396 = mul nsw i64 %indvars.iv.next.i.i2.us.us.6, %22
  %397 = add nsw i64 %396, %392
  %arrayidx11.i.i.us.us.6 = getelementptr inbounds float, float* %10, i64 %397
  %398 = load float, float* %arrayidx11.i.i.us.us.6, align 4, !tbaa !12
  %399 = tail call float @llvm.fmuladd.f32(float %395, float %398, float %393) #2
  store float %399, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %for.end.r_exit.i.i.loopexit.us.us.6, label %for.body.i.i.us.us.6, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6:              ; preds = %for.body.i.i.us.us.6
  %400 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %400, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %add.i.i.us.us.6.1 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6.1 = shl i64 %add1.i.i.i.us.us.6.1, 32
  %401 = ashr exact i64 %sext.i.i.us.us.6.1, 32
  br label %for.body.i.i.us.us.6.1

pregion_for_end.i.i.us-lcssa.us.us.6:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1
  %402 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %402, 7
  %mul.i.i.us.7 = mul nsw i32 %17, %conv2.i.i.us.7
  %mul4.i.i.us.7 = mul nsw i32 %21, %conv2.i.i.us.7
  %403 = sext i32 %mul4.i.i.us.7 to i64
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1, %pregion_for_end.i.i.us-lcssa.us.us.6
  %_local_id_x.i.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.6 ], [ %421, %for.end.r_exit.i.i.loopexit.us.us.7.1 ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %404 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7
  %indvars.iv.next.i.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7 ]
  %405 = phi float [ %411, %for.body.i.i.us.us.7 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.7 ]
  %406 = add nsw i64 %indvars.iv.next.i.i2.us.us.7, %403
  %arrayidx7.i.i.us.us.7 = getelementptr inbounds float, float* %7, i64 %406
  %407 = load float, float* %arrayidx7.i.i.us.us.7, align 4, !tbaa !12
  %408 = mul nsw i64 %indvars.iv.next.i.i2.us.us.7, %22
  %409 = add nsw i64 %408, %404
  %arrayidx11.i.i.us.us.7 = getelementptr inbounds float, float* %10, i64 %409
  %410 = load float, float* %arrayidx11.i.i.us.us.7, align 4, !tbaa !12
  %411 = tail call float @llvm.fmuladd.f32(float %407, float %410, float %405) #2
  store float %411, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %for.end.r_exit.i.i.loopexit.us.us.7, label %for.body.i.i.us.us.7, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7:              ; preds = %for.body.i.i.us.us.7
  %412 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %412, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %add.i.i.us.us.7.1 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7.1 = shl i64 %add1.i.i.i.us.us.7.1, 32
  %413 = ashr exact i64 %sext.i.i.us.us.7.1, 32
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %for.end.r_exit.i.i.loopexit.us.us.7
  %indvars.iv.next.i.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %414 = phi float [ %420, %for.body.i.i.us.us.7.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %415 = add nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %403
  %arrayidx7.i.i.us.us.7.1 = getelementptr inbounds float, float* %7, i64 %415
  %416 = load float, float* %arrayidx7.i.i.us.us.7.1, align 4, !tbaa !12
  %417 = mul nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %22
  %418 = add nsw i64 %417, %413
  %arrayidx11.i.i.us.us.7.1 = getelementptr inbounds float, float* %10, i64 %418
  %419 = load float, float* %arrayidx11.i.i.us.us.7.1, align 4, !tbaa !12
  %420 = tail call float @llvm.fmuladd.f32(float %416, float %419, float %414) #2
  store float %420, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7.1, label %for.end.r_exit.i.i.loopexit.us.us.7.1, label %for.body.i.i.us.us.7.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7.1:            ; preds = %for.body.i.i.us.us.7.1
  %421 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %421, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_mm3_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !24

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %for.end.r_exit.i.i.loopexit.us.us.6
  %indvars.iv.next.i.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %422 = phi float [ %428, %for.body.i.i.us.us.6.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %423 = add nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %391
  %arrayidx7.i.i.us.us.6.1 = getelementptr inbounds float, float* %7, i64 %423
  %424 = load float, float* %arrayidx7.i.i.us.us.6.1, align 4, !tbaa !12
  %425 = mul nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %22
  %426 = add nsw i64 %425, %401
  %arrayidx11.i.i.us.us.6.1 = getelementptr inbounds float, float* %10, i64 %426
  %427 = load float, float* %arrayidx11.i.i.us.us.6.1, align 4, !tbaa !12
  %428 = tail call float @llvm.fmuladd.f32(float %424, float %427, float %422) #2
  store float %428, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6.1, label %for.end.r_exit.i.i.loopexit.us.us.6.1, label %for.body.i.i.us.us.6.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6.1:            ; preds = %for.body.i.i.us.us.6.1
  %429 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %429, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !24

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %for.end.r_exit.i.i.loopexit.us.us.5
  %indvars.iv.next.i.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %430 = phi float [ %436, %for.body.i.i.us.us.5.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %431 = add nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %379
  %arrayidx7.i.i.us.us.5.1 = getelementptr inbounds float, float* %7, i64 %431
  %432 = load float, float* %arrayidx7.i.i.us.us.5.1, align 4, !tbaa !12
  %433 = mul nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %22
  %434 = add nsw i64 %433, %389
  %arrayidx11.i.i.us.us.5.1 = getelementptr inbounds float, float* %10, i64 %434
  %435 = load float, float* %arrayidx11.i.i.us.us.5.1, align 4, !tbaa !12
  %436 = tail call float @llvm.fmuladd.f32(float %432, float %435, float %430) #2
  store float %436, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5.1, label %for.end.r_exit.i.i.loopexit.us.us.5.1, label %for.body.i.i.us.us.5.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5.1:            ; preds = %for.body.i.i.us.us.5.1
  %437 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %437, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !24

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %for.end.r_exit.i.i.loopexit.us.us.4
  %indvars.iv.next.i.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %438 = phi float [ %444, %for.body.i.i.us.us.4.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %439 = add nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %367
  %arrayidx7.i.i.us.us.4.1 = getelementptr inbounds float, float* %7, i64 %439
  %440 = load float, float* %arrayidx7.i.i.us.us.4.1, align 4, !tbaa !12
  %441 = mul nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %22
  %442 = add nsw i64 %441, %377
  %arrayidx11.i.i.us.us.4.1 = getelementptr inbounds float, float* %10, i64 %442
  %443 = load float, float* %arrayidx11.i.i.us.us.4.1, align 4, !tbaa !12
  %444 = tail call float @llvm.fmuladd.f32(float %440, float %443, float %438) #2
  store float %444, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4.1, label %for.end.r_exit.i.i.loopexit.us.us.4.1, label %for.body.i.i.us.us.4.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4.1:            ; preds = %for.body.i.i.us.us.4.1
  %445 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %445, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !24

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %for.end.r_exit.i.i.loopexit.us.us.3
  %indvars.iv.next.i.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %446 = phi float [ %452, %for.body.i.i.us.us.3.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %447 = add nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %355
  %arrayidx7.i.i.us.us.3.1 = getelementptr inbounds float, float* %7, i64 %447
  %448 = load float, float* %arrayidx7.i.i.us.us.3.1, align 4, !tbaa !12
  %449 = mul nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %22
  %450 = add nsw i64 %449, %365
  %arrayidx11.i.i.us.us.3.1 = getelementptr inbounds float, float* %10, i64 %450
  %451 = load float, float* %arrayidx11.i.i.us.us.3.1, align 4, !tbaa !12
  %452 = tail call float @llvm.fmuladd.f32(float %448, float %451, float %446) #2
  store float %452, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3.1, label %for.end.r_exit.i.i.loopexit.us.us.3.1, label %for.body.i.i.us.us.3.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3.1:            ; preds = %for.body.i.i.us.us.3.1
  %453 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %453, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !24

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %for.end.r_exit.i.i.loopexit.us.us.2
  %indvars.iv.next.i.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %454 = phi float [ %460, %for.body.i.i.us.us.2.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %455 = add nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %343
  %arrayidx7.i.i.us.us.2.1 = getelementptr inbounds float, float* %7, i64 %455
  %456 = load float, float* %arrayidx7.i.i.us.us.2.1, align 4, !tbaa !12
  %457 = mul nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %22
  %458 = add nsw i64 %457, %353
  %arrayidx11.i.i.us.us.2.1 = getelementptr inbounds float, float* %10, i64 %458
  %459 = load float, float* %arrayidx11.i.i.us.us.2.1, align 4, !tbaa !12
  %460 = tail call float @llvm.fmuladd.f32(float %456, float %459, float %454) #2
  store float %460, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2.1, label %for.end.r_exit.i.i.loopexit.us.us.2.1, label %for.body.i.i.us.us.2.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2.1:            ; preds = %for.body.i.i.us.us.2.1
  %461 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %461, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !24

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %for.end.r_exit.i.i.loopexit.us.us.1
  %indvars.iv.next.i.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %462 = phi float [ %468, %for.body.i.i.us.us.1.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %463 = add nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %330
  %arrayidx7.i.i.us.us.1.1 = getelementptr inbounds float, float* %7, i64 %463
  %464 = load float, float* %arrayidx7.i.i.us.us.1.1, align 4, !tbaa !12
  %465 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %22
  %466 = add nsw i64 %465, %341
  %arrayidx11.i.i.us.us.1.1 = getelementptr inbounds float, float* %10, i64 %466
  %467 = load float, float* %arrayidx11.i.i.us.us.1.1, align 4, !tbaa !12
  %468 = tail call float @llvm.fmuladd.f32(float %464, float %467, float %462) #2
  store float %468, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1.1, label %for.end.r_exit.i.i.loopexit.us.us.1.1, label %for.body.i.i.us.us.1.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1.1:            ; preds = %for.body.i.i.us.us.1.1
  %469 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %469, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !24

for.body.i.i.us.us.1129:                          ; preds = %for.body.i.i.us.us.1129, %for.end.r_exit.i.i.loopexit.us.us
  %indvars.iv.next.i.i2.us.us.1124 = phi i64 [ %indvars.iv.next.i.i.us.us.1127, %for.body.i.i.us.us.1129 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us ]
  %470 = phi float [ %476, %for.body.i.i.us.us.1129 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us ]
  %471 = add nsw i64 %indvars.iv.next.i.i2.us.us.1124, %318
  %arrayidx7.i.i.us.us.1125 = getelementptr inbounds float, float* %7, i64 %471
  %472 = load float, float* %arrayidx7.i.i.us.us.1125, align 4, !tbaa !12
  %473 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1124, %22
  %474 = add nsw i64 %473, %321
  %arrayidx11.i.i.us.us.1126 = getelementptr inbounds float, float* %10, i64 %474
  %475 = load float, float* %arrayidx11.i.i.us.us.1126, align 4, !tbaa !12
  %476 = tail call float @llvm.fmuladd.f32(float %472, float %475, float %470) #2
  store float %476, float* %arrayidx.i.i.us.us.1121, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1127 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1124, 1
  %exitcond.not.i.i.us.us.1128 = icmp eq i64 %indvars.iv.next.i.i.us.us.1127, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1128, label %for.end.r_exit.i.i.loopexit.us.us.1130, label %for.body.i.i.us.us.1129, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1130:           ; preds = %for.body.i.i.us.us.1129
  %477 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %477, 32
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
!5 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"int", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !"", !""}
!10 = !{!"A", !"B", !"E", !"ni", !"nj", !"nk"}
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
