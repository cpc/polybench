; ModuleID = './FJ/CMBPMGMJPKMBGIPFBDGGOOIKBAIEKMOCKNNEK/mm2_kernel1/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_mm2_kernel1(float* nocapture %0, float* nocapture readonly %1, float* nocapture readonly %2, i32 %3, i32 %4, i32 %5, i32 %6, float %7, float %8, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %9, i64 %10, i64 %11, i64 %12) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %10, 5
  %mul3.i.i = shl i64 %11, 3
  %cmp32.i = icmp sgt i32 %5, 0
  %14 = sext i32 %4 to i64
  %wide.trip.count.i = zext i32 %5 to i64
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
  %ident.check = icmp ne i32 %4, 1
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
  br i1 %179, label %pregion_for_entry.pregion_for_init.i.preheader133, label %vector.body

pregion_for_entry.pregion_for_init.i.preheader133: ; preds = %pregion_for_entry.pregion_for_init.i.preheader
  br label %pregion_for_entry.pregion_for_init.i

vector.body:                                      ; preds = %pregion_for_entry.pregion_for_init.i.preheader
  %180 = trunc i64 %mul3.i.i to i32
  %181 = mul nsw i32 %180, %4
  %182 = add nsw i32 %181, %conv.i
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %0, i64 %183
  %185 = bitcast float* %184 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %185, align 4, !tbaa !12, !llvm.access.group !16
  %186 = add nsw i32 %181, %conv.i.1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %0, i64 %187
  %189 = bitcast float* %188 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %189, align 4, !tbaa !12, !llvm.access.group !16
  %190 = add nsw i32 %181, %conv.i.2
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float* %0, i64 %191
  %193 = bitcast float* %192 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %193, align 4, !tbaa !12, !llvm.access.group !16
  %194 = add nsw i32 %181, %conv.i.3
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %0, i64 %195
  %197 = bitcast float* %196 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %197, align 4, !tbaa !12, !llvm.access.group !16
  %198 = add nsw i32 %181, %conv.i.4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %0, i64 %199
  %201 = bitcast float* %200 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %201, align 4, !tbaa !12, !llvm.access.group !16
  %202 = add nsw i32 %181, %conv.i.5
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %0, i64 %203
  %205 = bitcast float* %204 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %205, align 4, !tbaa !12, !llvm.access.group !16
  %206 = add nsw i32 %181, %conv.i.6
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %0, i64 %207
  %209 = bitcast float* %208 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %209, align 4, !tbaa !12, !llvm.access.group !16
  %210 = add nsw i32 %181, %conv.i.7
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %0, i64 %211
  %213 = bitcast float* %212 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %213, align 4, !tbaa !12, !llvm.access.group !16
  %214 = add nsw i32 %181, %conv.i.8
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %0, i64 %215
  %217 = bitcast float* %216 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %217, align 4, !tbaa !12, !llvm.access.group !16
  %218 = add nsw i32 %181, %conv.i.9
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %0, i64 %219
  %221 = bitcast float* %220 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %221, align 4, !tbaa !12, !llvm.access.group !16
  %222 = add nsw i32 %181, %conv.i.10
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float, float* %0, i64 %223
  %225 = bitcast float* %224 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %225, align 4, !tbaa !12, !llvm.access.group !16
  %226 = add nsw i32 %181, %conv.i.11
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %0, i64 %227
  %229 = bitcast float* %228 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %229, align 4, !tbaa !12, !llvm.access.group !16
  %230 = add nsw i32 %181, %conv.i.12
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %0, i64 %231
  %233 = bitcast float* %232 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %233, align 4, !tbaa !12, !llvm.access.group !16
  %234 = add nsw i32 %181, %conv.i.13
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds float, float* %0, i64 %235
  %237 = bitcast float* %236 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %237, align 4, !tbaa !12, !llvm.access.group !16
  %238 = add nsw i32 %181, %conv.i.14
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %0, i64 %239
  %241 = bitcast float* %240 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %241, align 4, !tbaa !12, !llvm.access.group !16
  %242 = add nsw i32 %181, %conv.i.15
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %0, i64 %243
  %245 = bitcast float* %244 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %245, align 4, !tbaa !12, !llvm.access.group !16
  %246 = add nsw i32 %181, %conv.i.16
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %0, i64 %247
  %249 = bitcast float* %248 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %249, align 4, !tbaa !12, !llvm.access.group !16
  %250 = add nsw i32 %181, %conv.i.17
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %0, i64 %251
  %253 = bitcast float* %252 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %253, align 4, !tbaa !12, !llvm.access.group !16
  %254 = add nsw i32 %181, %conv.i.18
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %0, i64 %255
  %257 = bitcast float* %256 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %257, align 4, !tbaa !12, !llvm.access.group !16
  %258 = add nsw i32 %181, %conv.i.19
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %0, i64 %259
  %261 = bitcast float* %260 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %261, align 4, !tbaa !12, !llvm.access.group !16
  %262 = add nsw i32 %181, %conv.i.20
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float, float* %0, i64 %263
  %265 = bitcast float* %264 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %265, align 4, !tbaa !12, !llvm.access.group !16
  %266 = add nsw i32 %181, %conv.i.21
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %0, i64 %267
  %269 = bitcast float* %268 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %269, align 4, !tbaa !12, !llvm.access.group !16
  %270 = add nsw i32 %181, %conv.i.22
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %0, i64 %271
  %273 = bitcast float* %272 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %273, align 4, !tbaa !12, !llvm.access.group !16
  %274 = add nsw i32 %181, %conv.i.23
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %0, i64 %275
  %277 = bitcast float* %276 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %277, align 4, !tbaa !12, !llvm.access.group !16
  %278 = add nsw i32 %181, %conv.i.24
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %0, i64 %279
  %281 = bitcast float* %280 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %281, align 4, !tbaa !12, !llvm.access.group !16
  %282 = add nsw i32 %181, %conv.i.25
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds float, float* %0, i64 %283
  %285 = bitcast float* %284 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %285, align 4, !tbaa !12, !llvm.access.group !16
  %286 = add nsw i32 %181, %conv.i.26
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %0, i64 %287
  %289 = bitcast float* %288 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %289, align 4, !tbaa !12, !llvm.access.group !16
  %290 = add nsw i32 %181, %conv.i.27
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, float* %0, i64 %291
  %293 = bitcast float* %292 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %293, align 4, !tbaa !12, !llvm.access.group !16
  %294 = add nsw i32 %181, %conv.i.28
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds float, float* %0, i64 %295
  %297 = bitcast float* %296 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %297, align 4, !tbaa !12, !llvm.access.group !16
  %298 = add nsw i32 %181, %conv.i.29
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %0, i64 %299
  %301 = bitcast float* %300 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %301, align 4, !tbaa !12, !llvm.access.group !16
  %302 = add nsw i32 %181, %conv.i.30
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %0, i64 %303
  %305 = bitcast float* %304 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %305, align 4, !tbaa !12, !llvm.access.group !16
  %306 = add nsw i32 %181, %conv.i.31
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds float, float* %0, i64 %307
  %309 = bitcast float* %308 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %309, align 4, !tbaa !12, !llvm.access.group !16
  br label %mm2_kernel1.exit

pregion_for_entry.pregion_for_init.i.us.preheader: ; preds = %13
  %conv2.i.us = trunc i64 %mul3.i.i to i32
  %mul.i.us = mul nsw i32 %conv2.i.us, %4
  %mul4.i.us = mul nsw i32 %conv2.i.us, %5
  %310 = sext i32 %mul4.i.us to i64
  br label %pregion_for_entry.entry.i.us.us

pregion_for_entry.entry.i.us.us:                  ; preds = %for.end.r_exit.i.loopexit.us.us.1132, %pregion_for_entry.pregion_for_init.i.us.preheader
  %_local_id_x.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.us.preheader ], [ %469, %for.end.r_exit.i.loopexit.us.us.1132 ]
  %add1.i.i.us.us = add nuw nsw i64 %_local_id_x.0.us.us, %mul.i.i
  %conv.i.us.us = trunc i64 %add1.i.i.us.us to i32
  %add.i.us.us = add nsw i32 %mul.i.us, %conv.i.us.us
  %idxprom.i.us.us = sext i32 %add.i.us.us to i64
  %arrayidx.i.us.us = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us = shl i64 %add1.i.i.us.us, 32
  %311 = ashr exact i64 %sext.i.us.us, 32
  br label %for.body.i.us.us

for.end.r_exit.i.loopexit.us.us:                  ; preds = %for.body.i.us.us
  %312 = or i64 %_local_id_x.0.us.us, 1
  %add1.i.i.us.us.1118 = add nuw nsw i64 %312, %mul.i.i
  %conv.i.us.us.1119 = trunc i64 %add1.i.i.us.us.1118 to i32
  %add.i.us.us.1120 = add nsw i32 %mul.i.us, %conv.i.us.us.1119
  %idxprom.i.us.us.1121 = sext i32 %add.i.us.us.1120 to i64
  %arrayidx.i.us.us.1122 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.1121
  store float 0.000000e+00, float* %arrayidx.i.us.us.1122, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1123 = shl i64 %add1.i.i.us.us.1118, 32
  %313 = ashr exact i64 %sext.i.us.us.1123, 32
  br label %for.body.i.us.us.1131

for.body.i.us.us:                                 ; preds = %for.body.i.us.us, %pregion_for_entry.entry.i.us.us
  %indvars.iv.next.i2.us.us = phi i64 [ %indvars.iv.next.i.us.us, %for.body.i.us.us ], [ 0, %pregion_for_entry.entry.i.us.us ]
  %314 = phi float [ %320, %for.body.i.us.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us ]
  %315 = add nsw i64 %indvars.iv.next.i2.us.us, %310
  %arrayidx7.i.us.us = getelementptr inbounds float, float* %1, i64 %315
  %316 = load float, float* %arrayidx7.i.us.us, align 4, !tbaa !12
  %mul8.i.us.us = fmul float %316, %7
  %317 = mul nsw i64 %indvars.iv.next.i2.us.us, %14
  %318 = add nsw i64 %317, %311
  %arrayidx12.i.us.us = getelementptr inbounds float, float* %2, i64 %318
  %319 = load float, float* %arrayidx12.i.us.us, align 4, !tbaa !12
  %320 = tail call float @llvm.fmuladd.f32(float %mul8.i.us.us, float %319, float %314) #2
  store float %320, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.next.i2.us.us, 1
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %for.end.r_exit.i.loopexit.us.us, label %for.body.i.us.us, !llvm.loop !19

pregion_for_end.i.us-lcssa.us.us:                 ; preds = %for.end.r_exit.i.loopexit.us.us.1132
  %321 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.1 = or i32 %321, 1
  %mul.i.us.1 = mul nsw i32 %conv2.i.us.1, %4
  %mul4.i.us.1 = mul nsw i32 %conv2.i.us.1, %5
  %322 = sext i32 %mul4.i.us.1 to i64
  br label %pregion_for_entry.entry.i.us.us.1

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_entry.pregion_for_init.i, %pregion_for_entry.pregion_for_init.i.preheader133
  %_local_id_y.0 = phi i64 [ %323, %pregion_for_entry.pregion_for_init.i ], [ 0, %pregion_for_entry.pregion_for_init.i.preheader133 ]
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %mul.i = mul nsw i32 %conv2.i, %4
  %add.i = add nsw i32 %mul.i, %conv.i
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %0, i64 %idxprom.i
  store float 0.000000e+00, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.1 = add nsw i32 %mul.i, %conv.i.1
  %idxprom.i.1 = sext i32 %add.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.1
  store float 0.000000e+00, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.2 = add nsw i32 %mul.i, %conv.i.2
  %idxprom.i.2 = sext i32 %add.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.2
  store float 0.000000e+00, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.3 = add nsw i32 %mul.i, %conv.i.3
  %idxprom.i.3 = sext i32 %add.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.3
  store float 0.000000e+00, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.4 = add nsw i32 %mul.i, %conv.i.4
  %idxprom.i.4 = sext i32 %add.i.4 to i64
  %arrayidx.i.4 = getelementptr inbounds float, float* %0, i64 %idxprom.i.4
  store float 0.000000e+00, float* %arrayidx.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.5 = add nsw i32 %mul.i, %conv.i.5
  %idxprom.i.5 = sext i32 %add.i.5 to i64
  %arrayidx.i.5 = getelementptr inbounds float, float* %0, i64 %idxprom.i.5
  store float 0.000000e+00, float* %arrayidx.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.6 = add nsw i32 %mul.i, %conv.i.6
  %idxprom.i.6 = sext i32 %add.i.6 to i64
  %arrayidx.i.6 = getelementptr inbounds float, float* %0, i64 %idxprom.i.6
  store float 0.000000e+00, float* %arrayidx.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.7 = add nsw i32 %mul.i, %conv.i.7
  %idxprom.i.7 = sext i32 %add.i.7 to i64
  %arrayidx.i.7 = getelementptr inbounds float, float* %0, i64 %idxprom.i.7
  store float 0.000000e+00, float* %arrayidx.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.8 = add nsw i32 %mul.i, %conv.i.8
  %idxprom.i.8 = sext i32 %add.i.8 to i64
  %arrayidx.i.8 = getelementptr inbounds float, float* %0, i64 %idxprom.i.8
  store float 0.000000e+00, float* %arrayidx.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.9 = add nsw i32 %mul.i, %conv.i.9
  %idxprom.i.9 = sext i32 %add.i.9 to i64
  %arrayidx.i.9 = getelementptr inbounds float, float* %0, i64 %idxprom.i.9
  store float 0.000000e+00, float* %arrayidx.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.10 = add nsw i32 %mul.i, %conv.i.10
  %idxprom.i.10 = sext i32 %add.i.10 to i64
  %arrayidx.i.10 = getelementptr inbounds float, float* %0, i64 %idxprom.i.10
  store float 0.000000e+00, float* %arrayidx.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.11 = add nsw i32 %mul.i, %conv.i.11
  %idxprom.i.11 = sext i32 %add.i.11 to i64
  %arrayidx.i.11 = getelementptr inbounds float, float* %0, i64 %idxprom.i.11
  store float 0.000000e+00, float* %arrayidx.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.12 = add nsw i32 %mul.i, %conv.i.12
  %idxprom.i.12 = sext i32 %add.i.12 to i64
  %arrayidx.i.12 = getelementptr inbounds float, float* %0, i64 %idxprom.i.12
  store float 0.000000e+00, float* %arrayidx.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.13 = add nsw i32 %mul.i, %conv.i.13
  %idxprom.i.13 = sext i32 %add.i.13 to i64
  %arrayidx.i.13 = getelementptr inbounds float, float* %0, i64 %idxprom.i.13
  store float 0.000000e+00, float* %arrayidx.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.14 = add nsw i32 %mul.i, %conv.i.14
  %idxprom.i.14 = sext i32 %add.i.14 to i64
  %arrayidx.i.14 = getelementptr inbounds float, float* %0, i64 %idxprom.i.14
  store float 0.000000e+00, float* %arrayidx.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.15 = add nsw i32 %mul.i, %conv.i.15
  %idxprom.i.15 = sext i32 %add.i.15 to i64
  %arrayidx.i.15 = getelementptr inbounds float, float* %0, i64 %idxprom.i.15
  store float 0.000000e+00, float* %arrayidx.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.16 = add nsw i32 %mul.i, %conv.i.16
  %idxprom.i.16 = sext i32 %add.i.16 to i64
  %arrayidx.i.16 = getelementptr inbounds float, float* %0, i64 %idxprom.i.16
  store float 0.000000e+00, float* %arrayidx.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.17 = add nsw i32 %mul.i, %conv.i.17
  %idxprom.i.17 = sext i32 %add.i.17 to i64
  %arrayidx.i.17 = getelementptr inbounds float, float* %0, i64 %idxprom.i.17
  store float 0.000000e+00, float* %arrayidx.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.18 = add nsw i32 %mul.i, %conv.i.18
  %idxprom.i.18 = sext i32 %add.i.18 to i64
  %arrayidx.i.18 = getelementptr inbounds float, float* %0, i64 %idxprom.i.18
  store float 0.000000e+00, float* %arrayidx.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.19 = add nsw i32 %mul.i, %conv.i.19
  %idxprom.i.19 = sext i32 %add.i.19 to i64
  %arrayidx.i.19 = getelementptr inbounds float, float* %0, i64 %idxprom.i.19
  store float 0.000000e+00, float* %arrayidx.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.20 = add nsw i32 %mul.i, %conv.i.20
  %idxprom.i.20 = sext i32 %add.i.20 to i64
  %arrayidx.i.20 = getelementptr inbounds float, float* %0, i64 %idxprom.i.20
  store float 0.000000e+00, float* %arrayidx.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.21 = add nsw i32 %mul.i, %conv.i.21
  %idxprom.i.21 = sext i32 %add.i.21 to i64
  %arrayidx.i.21 = getelementptr inbounds float, float* %0, i64 %idxprom.i.21
  store float 0.000000e+00, float* %arrayidx.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.22 = add nsw i32 %mul.i, %conv.i.22
  %idxprom.i.22 = sext i32 %add.i.22 to i64
  %arrayidx.i.22 = getelementptr inbounds float, float* %0, i64 %idxprom.i.22
  store float 0.000000e+00, float* %arrayidx.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.23 = add nsw i32 %mul.i, %conv.i.23
  %idxprom.i.23 = sext i32 %add.i.23 to i64
  %arrayidx.i.23 = getelementptr inbounds float, float* %0, i64 %idxprom.i.23
  store float 0.000000e+00, float* %arrayidx.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.24 = add nsw i32 %mul.i, %conv.i.24
  %idxprom.i.24 = sext i32 %add.i.24 to i64
  %arrayidx.i.24 = getelementptr inbounds float, float* %0, i64 %idxprom.i.24
  store float 0.000000e+00, float* %arrayidx.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.25 = add nsw i32 %mul.i, %conv.i.25
  %idxprom.i.25 = sext i32 %add.i.25 to i64
  %arrayidx.i.25 = getelementptr inbounds float, float* %0, i64 %idxprom.i.25
  store float 0.000000e+00, float* %arrayidx.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.26 = add nsw i32 %mul.i, %conv.i.26
  %idxprom.i.26 = sext i32 %add.i.26 to i64
  %arrayidx.i.26 = getelementptr inbounds float, float* %0, i64 %idxprom.i.26
  store float 0.000000e+00, float* %arrayidx.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.27 = add nsw i32 %mul.i, %conv.i.27
  %idxprom.i.27 = sext i32 %add.i.27 to i64
  %arrayidx.i.27 = getelementptr inbounds float, float* %0, i64 %idxprom.i.27
  store float 0.000000e+00, float* %arrayidx.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.28 = add nsw i32 %mul.i, %conv.i.28
  %idxprom.i.28 = sext i32 %add.i.28 to i64
  %arrayidx.i.28 = getelementptr inbounds float, float* %0, i64 %idxprom.i.28
  store float 0.000000e+00, float* %arrayidx.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.29 = add nsw i32 %mul.i, %conv.i.29
  %idxprom.i.29 = sext i32 %add.i.29 to i64
  %arrayidx.i.29 = getelementptr inbounds float, float* %0, i64 %idxprom.i.29
  store float 0.000000e+00, float* %arrayidx.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.30 = add nsw i32 %mul.i, %conv.i.30
  %idxprom.i.30 = sext i32 %add.i.30 to i64
  %arrayidx.i.30 = getelementptr inbounds float, float* %0, i64 %idxprom.i.30
  store float 0.000000e+00, float* %arrayidx.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.31 = add nsw i32 %mul.i, %conv.i.31
  %idxprom.i.31 = sext i32 %add.i.31 to i64
  %arrayidx.i.31 = getelementptr inbounds float, float* %0, i64 %idxprom.i.31
  store float 0.000000e+00, float* %arrayidx.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %323 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond30.not = icmp eq i64 %323, 8
  br i1 %exitcond30.not, label %mm2_kernel1.exit.loopexit134, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !21

mm2_kernel1.exit.loopexit:                        ; preds = %for.end.r_exit.i.loopexit.us.us.7.1
  br label %mm2_kernel1.exit

mm2_kernel1.exit.loopexit134:                     ; preds = %pregion_for_entry.pregion_for_init.i
  br label %mm2_kernel1.exit

mm2_kernel1.exit:                                 ; preds = %mm2_kernel1.exit.loopexit134, %mm2_kernel1.exit.loopexit, %vector.body
  ret void

pregion_for_entry.entry.i.us.us.1:                ; preds = %for.end.r_exit.i.loopexit.us.us.1.1, %pregion_for_end.i.us-lcssa.us.us
  %_local_id_x.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us ], [ %461, %for.end.r_exit.i.loopexit.us.us.1.1 ]
  %add1.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.0.us.us.1, %mul.i.i
  %conv.i.us.us.1 = trunc i64 %add1.i.i.us.us.1 to i32
  %add.i.us.us.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1
  %idxprom.i.us.us.1 = sext i32 %add.i.us.us.1 to i64
  %arrayidx.i.us.us.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1 = shl i64 %add1.i.i.us.us.1, 32
  %324 = ashr exact i64 %sext.i.us.us.1, 32
  br label %for.body.i.us.us.1

for.body.i.us.us.1:                               ; preds = %for.body.i.us.us.1, %pregion_for_entry.entry.i.us.us.1
  %indvars.iv.next.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1, %for.body.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.us.us.1 ]
  %325 = phi float [ %331, %for.body.i.us.us.1 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.1 ]
  %326 = add nsw i64 %indvars.iv.next.i2.us.us.1, %322
  %arrayidx7.i.us.us.1 = getelementptr inbounds float, float* %1, i64 %326
  %327 = load float, float* %arrayidx7.i.us.us.1, align 4, !tbaa !12
  %mul8.i.us.us.1 = fmul float %327, %7
  %328 = mul nsw i64 %indvars.iv.next.i2.us.us.1, %14
  %329 = add nsw i64 %328, %324
  %arrayidx12.i.us.us.1 = getelementptr inbounds float, float* %2, i64 %329
  %330 = load float, float* %arrayidx12.i.us.us.1, align 4, !tbaa !12
  %331 = tail call float @llvm.fmuladd.f32(float %mul8.i.us.us.1, float %330, float %325) #2
  store float %331, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1, 1
  %exitcond.not.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1, label %for.end.r_exit.i.loopexit.us.us.1, label %for.body.i.us.us.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.1:                ; preds = %for.body.i.us.us.1
  %332 = or i64 %_local_id_x.0.us.us.1, 1
  %add1.i.i.us.us.1.1 = add nuw nsw i64 %332, %mul.i.i
  %conv.i.us.us.1.1 = trunc i64 %add1.i.i.us.us.1.1 to i32
  %add.i.us.us.1.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1.1
  %idxprom.i.us.us.1.1 = sext i32 %add.i.us.us.1.1 to i64
  %arrayidx.i.us.us.1.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.1.1 = shl i64 %add1.i.i.us.us.1.1, 32
  %333 = ashr exact i64 %sext.i.us.us.1.1, 32
  br label %for.body.i.us.us.1.1

pregion_for_end.i.us-lcssa.us.us.1:               ; preds = %for.end.r_exit.i.loopexit.us.us.1.1
  %334 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.2 = or i32 %334, 2
  %mul.i.us.2 = mul nsw i32 %conv2.i.us.2, %4
  %mul4.i.us.2 = mul nsw i32 %conv2.i.us.2, %5
  %335 = sext i32 %mul4.i.us.2 to i64
  br label %pregion_for_entry.entry.i.us.us.2

pregion_for_entry.entry.i.us.us.2:                ; preds = %for.end.r_exit.i.loopexit.us.us.2.1, %pregion_for_end.i.us-lcssa.us.us.1
  %_local_id_x.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.1 ], [ %453, %for.end.r_exit.i.loopexit.us.us.2.1 ]
  %add1.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.0.us.us.2, %mul.i.i
  %conv.i.us.us.2 = trunc i64 %add1.i.i.us.us.2 to i32
  %add.i.us.us.2 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2
  %idxprom.i.us.us.2 = sext i32 %add.i.us.us.2 to i64
  %arrayidx.i.us.us.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2 = shl i64 %add1.i.i.us.us.2, 32
  %336 = ashr exact i64 %sext.i.us.us.2, 32
  br label %for.body.i.us.us.2

for.body.i.us.us.2:                               ; preds = %for.body.i.us.us.2, %pregion_for_entry.entry.i.us.us.2
  %indvars.iv.next.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.us.us.2, %for.body.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.us.us.2 ]
  %337 = phi float [ %343, %for.body.i.us.us.2 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.2 ]
  %338 = add nsw i64 %indvars.iv.next.i2.us.us.2, %335
  %arrayidx7.i.us.us.2 = getelementptr inbounds float, float* %1, i64 %338
  %339 = load float, float* %arrayidx7.i.us.us.2, align 4, !tbaa !12
  %mul8.i.us.us.2 = fmul float %339, %7
  %340 = mul nsw i64 %indvars.iv.next.i2.us.us.2, %14
  %341 = add nsw i64 %340, %336
  %arrayidx12.i.us.us.2 = getelementptr inbounds float, float* %2, i64 %341
  %342 = load float, float* %arrayidx12.i.us.us.2, align 4, !tbaa !12
  %343 = tail call float @llvm.fmuladd.f32(float %mul8.i.us.us.2, float %342, float %337) #2
  store float %343, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i2.us.us.2, 1
  %exitcond.not.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.us.us.2, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2, label %for.end.r_exit.i.loopexit.us.us.2, label %for.body.i.us.us.2, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.2:                ; preds = %for.body.i.us.us.2
  %344 = or i64 %_local_id_x.0.us.us.2, 1
  %add1.i.i.us.us.2.1 = add nuw nsw i64 %344, %mul.i.i
  %conv.i.us.us.2.1 = trunc i64 %add1.i.i.us.us.2.1 to i32
  %add.i.us.us.2.1 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2.1
  %idxprom.i.us.us.2.1 = sext i32 %add.i.us.us.2.1 to i64
  %arrayidx.i.us.us.2.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.2.1 = shl i64 %add1.i.i.us.us.2.1, 32
  %345 = ashr exact i64 %sext.i.us.us.2.1, 32
  br label %for.body.i.us.us.2.1

pregion_for_end.i.us-lcssa.us.us.2:               ; preds = %for.end.r_exit.i.loopexit.us.us.2.1
  %346 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.3 = or i32 %346, 3
  %mul.i.us.3 = mul nsw i32 %conv2.i.us.3, %4
  %mul4.i.us.3 = mul nsw i32 %conv2.i.us.3, %5
  %347 = sext i32 %mul4.i.us.3 to i64
  br label %pregion_for_entry.entry.i.us.us.3

pregion_for_entry.entry.i.us.us.3:                ; preds = %for.end.r_exit.i.loopexit.us.us.3.1, %pregion_for_end.i.us-lcssa.us.us.2
  %_local_id_x.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.2 ], [ %445, %for.end.r_exit.i.loopexit.us.us.3.1 ]
  %add1.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.0.us.us.3, %mul.i.i
  %conv.i.us.us.3 = trunc i64 %add1.i.i.us.us.3 to i32
  %add.i.us.us.3 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3
  %idxprom.i.us.us.3 = sext i32 %add.i.us.us.3 to i64
  %arrayidx.i.us.us.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3 = shl i64 %add1.i.i.us.us.3, 32
  %348 = ashr exact i64 %sext.i.us.us.3, 32
  br label %for.body.i.us.us.3

for.body.i.us.us.3:                               ; preds = %for.body.i.us.us.3, %pregion_for_entry.entry.i.us.us.3
  %indvars.iv.next.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.us.us.3, %for.body.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.us.us.3 ]
  %349 = phi float [ %355, %for.body.i.us.us.3 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.3 ]
  %350 = add nsw i64 %indvars.iv.next.i2.us.us.3, %347
  %arrayidx7.i.us.us.3 = getelementptr inbounds float, float* %1, i64 %350
  %351 = load float, float* %arrayidx7.i.us.us.3, align 4, !tbaa !12
  %mul8.i.us.us.3 = fmul float %351, %7
  %352 = mul nsw i64 %indvars.iv.next.i2.us.us.3, %14
  %353 = add nsw i64 %352, %348
  %arrayidx12.i.us.us.3 = getelementptr inbounds float, float* %2, i64 %353
  %354 = load float, float* %arrayidx12.i.us.us.3, align 4, !tbaa !12
  %355 = tail call float @llvm.fmuladd.f32(float %mul8.i.us.us.3, float %354, float %349) #2
  store float %355, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i2.us.us.3, 1
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3, label %for.end.r_exit.i.loopexit.us.us.3, label %for.body.i.us.us.3, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.3:                ; preds = %for.body.i.us.us.3
  %356 = or i64 %_local_id_x.0.us.us.3, 1
  %add1.i.i.us.us.3.1 = add nuw nsw i64 %356, %mul.i.i
  %conv.i.us.us.3.1 = trunc i64 %add1.i.i.us.us.3.1 to i32
  %add.i.us.us.3.1 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3.1
  %idxprom.i.us.us.3.1 = sext i32 %add.i.us.us.3.1 to i64
  %arrayidx.i.us.us.3.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.3.1 = shl i64 %add1.i.i.us.us.3.1, 32
  %357 = ashr exact i64 %sext.i.us.us.3.1, 32
  br label %for.body.i.us.us.3.1

pregion_for_end.i.us-lcssa.us.us.3:               ; preds = %for.end.r_exit.i.loopexit.us.us.3.1
  %358 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.4 = or i32 %358, 4
  %mul.i.us.4 = mul nsw i32 %conv2.i.us.4, %4
  %mul4.i.us.4 = mul nsw i32 %conv2.i.us.4, %5
  %359 = sext i32 %mul4.i.us.4 to i64
  br label %pregion_for_entry.entry.i.us.us.4

pregion_for_entry.entry.i.us.us.4:                ; preds = %for.end.r_exit.i.loopexit.us.us.4.1, %pregion_for_end.i.us-lcssa.us.us.3
  %_local_id_x.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.3 ], [ %437, %for.end.r_exit.i.loopexit.us.us.4.1 ]
  %add1.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.0.us.us.4, %mul.i.i
  %conv.i.us.us.4 = trunc i64 %add1.i.i.us.us.4 to i32
  %add.i.us.us.4 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4
  %idxprom.i.us.us.4 = sext i32 %add.i.us.us.4 to i64
  %arrayidx.i.us.us.4 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4 = shl i64 %add1.i.i.us.us.4, 32
  %360 = ashr exact i64 %sext.i.us.us.4, 32
  br label %for.body.i.us.us.4

for.body.i.us.us.4:                               ; preds = %for.body.i.us.us.4, %pregion_for_entry.entry.i.us.us.4
  %indvars.iv.next.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.us.us.4, %for.body.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.us.us.4 ]
  %361 = phi float [ %367, %for.body.i.us.us.4 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.4 ]
  %362 = add nsw i64 %indvars.iv.next.i2.us.us.4, %359
  %arrayidx7.i.us.us.4 = getelementptr inbounds float, float* %1, i64 %362
  %363 = load float, float* %arrayidx7.i.us.us.4, align 4, !tbaa !12
  %mul8.i.us.us.4 = fmul float %363, %7
  %364 = mul nsw i64 %indvars.iv.next.i2.us.us.4, %14
  %365 = add nsw i64 %364, %360
  %arrayidx12.i.us.us.4 = getelementptr inbounds float, float* %2, i64 %365
  %366 = load float, float* %arrayidx12.i.us.us.4, align 4, !tbaa !12
  %367 = tail call float @llvm.fmuladd.f32(float %mul8.i.us.us.4, float %366, float %361) #2
  store float %367, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i2.us.us.4, 1
  %exitcond.not.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.us.us.4, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4, label %for.end.r_exit.i.loopexit.us.us.4, label %for.body.i.us.us.4, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.4:                ; preds = %for.body.i.us.us.4
  %368 = or i64 %_local_id_x.0.us.us.4, 1
  %add1.i.i.us.us.4.1 = add nuw nsw i64 %368, %mul.i.i
  %conv.i.us.us.4.1 = trunc i64 %add1.i.i.us.us.4.1 to i32
  %add.i.us.us.4.1 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4.1
  %idxprom.i.us.us.4.1 = sext i32 %add.i.us.us.4.1 to i64
  %arrayidx.i.us.us.4.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.4.1 = shl i64 %add1.i.i.us.us.4.1, 32
  %369 = ashr exact i64 %sext.i.us.us.4.1, 32
  br label %for.body.i.us.us.4.1

pregion_for_end.i.us-lcssa.us.us.4:               ; preds = %for.end.r_exit.i.loopexit.us.us.4.1
  %370 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.5 = or i32 %370, 5
  %mul.i.us.5 = mul nsw i32 %conv2.i.us.5, %4
  %mul4.i.us.5 = mul nsw i32 %conv2.i.us.5, %5
  %371 = sext i32 %mul4.i.us.5 to i64
  br label %pregion_for_entry.entry.i.us.us.5

pregion_for_entry.entry.i.us.us.5:                ; preds = %for.end.r_exit.i.loopexit.us.us.5.1, %pregion_for_end.i.us-lcssa.us.us.4
  %_local_id_x.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.4 ], [ %429, %for.end.r_exit.i.loopexit.us.us.5.1 ]
  %add1.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.0.us.us.5, %mul.i.i
  %conv.i.us.us.5 = trunc i64 %add1.i.i.us.us.5 to i32
  %add.i.us.us.5 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5
  %idxprom.i.us.us.5 = sext i32 %add.i.us.us.5 to i64
  %arrayidx.i.us.us.5 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5 = shl i64 %add1.i.i.us.us.5, 32
  %372 = ashr exact i64 %sext.i.us.us.5, 32
  br label %for.body.i.us.us.5

for.body.i.us.us.5:                               ; preds = %for.body.i.us.us.5, %pregion_for_entry.entry.i.us.us.5
  %indvars.iv.next.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.us.us.5, %for.body.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.us.us.5 ]
  %373 = phi float [ %379, %for.body.i.us.us.5 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.5 ]
  %374 = add nsw i64 %indvars.iv.next.i2.us.us.5, %371
  %arrayidx7.i.us.us.5 = getelementptr inbounds float, float* %1, i64 %374
  %375 = load float, float* %arrayidx7.i.us.us.5, align 4, !tbaa !12
  %mul8.i.us.us.5 = fmul float %375, %7
  %376 = mul nsw i64 %indvars.iv.next.i2.us.us.5, %14
  %377 = add nsw i64 %376, %372
  %arrayidx12.i.us.us.5 = getelementptr inbounds float, float* %2, i64 %377
  %378 = load float, float* %arrayidx12.i.us.us.5, align 4, !tbaa !12
  %379 = tail call float @llvm.fmuladd.f32(float %mul8.i.us.us.5, float %378, float %373) #2
  store float %379, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i2.us.us.5, 1
  %exitcond.not.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.us.us.5, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5, label %for.end.r_exit.i.loopexit.us.us.5, label %for.body.i.us.us.5, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.5:                ; preds = %for.body.i.us.us.5
  %380 = or i64 %_local_id_x.0.us.us.5, 1
  %add1.i.i.us.us.5.1 = add nuw nsw i64 %380, %mul.i.i
  %conv.i.us.us.5.1 = trunc i64 %add1.i.i.us.us.5.1 to i32
  %add.i.us.us.5.1 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5.1
  %idxprom.i.us.us.5.1 = sext i32 %add.i.us.us.5.1 to i64
  %arrayidx.i.us.us.5.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.5.1 = shl i64 %add1.i.i.us.us.5.1, 32
  %381 = ashr exact i64 %sext.i.us.us.5.1, 32
  br label %for.body.i.us.us.5.1

pregion_for_end.i.us-lcssa.us.us.5:               ; preds = %for.end.r_exit.i.loopexit.us.us.5.1
  %382 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.6 = or i32 %382, 6
  %mul.i.us.6 = mul nsw i32 %conv2.i.us.6, %4
  %mul4.i.us.6 = mul nsw i32 %conv2.i.us.6, %5
  %383 = sext i32 %mul4.i.us.6 to i64
  br label %pregion_for_entry.entry.i.us.us.6

pregion_for_entry.entry.i.us.us.6:                ; preds = %for.end.r_exit.i.loopexit.us.us.6.1, %pregion_for_end.i.us-lcssa.us.us.5
  %_local_id_x.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.5 ], [ %421, %for.end.r_exit.i.loopexit.us.us.6.1 ]
  %add1.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.0.us.us.6, %mul.i.i
  %conv.i.us.us.6 = trunc i64 %add1.i.i.us.us.6 to i32
  %add.i.us.us.6 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6
  %idxprom.i.us.us.6 = sext i32 %add.i.us.us.6 to i64
  %arrayidx.i.us.us.6 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6 = shl i64 %add1.i.i.us.us.6, 32
  %384 = ashr exact i64 %sext.i.us.us.6, 32
  br label %for.body.i.us.us.6

for.body.i.us.us.6:                               ; preds = %for.body.i.us.us.6, %pregion_for_entry.entry.i.us.us.6
  %indvars.iv.next.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.us.us.6, %for.body.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.us.us.6 ]
  %385 = phi float [ %391, %for.body.i.us.us.6 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.6 ]
  %386 = add nsw i64 %indvars.iv.next.i2.us.us.6, %383
  %arrayidx7.i.us.us.6 = getelementptr inbounds float, float* %1, i64 %386
  %387 = load float, float* %arrayidx7.i.us.us.6, align 4, !tbaa !12
  %mul8.i.us.us.6 = fmul float %387, %7
  %388 = mul nsw i64 %indvars.iv.next.i2.us.us.6, %14
  %389 = add nsw i64 %388, %384
  %arrayidx12.i.us.us.6 = getelementptr inbounds float, float* %2, i64 %389
  %390 = load float, float* %arrayidx12.i.us.us.6, align 4, !tbaa !12
  %391 = tail call float @llvm.fmuladd.f32(float %mul8.i.us.us.6, float %390, float %385) #2
  store float %391, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i2.us.us.6, 1
  %exitcond.not.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.us.us.6, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6, label %for.end.r_exit.i.loopexit.us.us.6, label %for.body.i.us.us.6, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.6:                ; preds = %for.body.i.us.us.6
  %392 = or i64 %_local_id_x.0.us.us.6, 1
  %add1.i.i.us.us.6.1 = add nuw nsw i64 %392, %mul.i.i
  %conv.i.us.us.6.1 = trunc i64 %add1.i.i.us.us.6.1 to i32
  %add.i.us.us.6.1 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6.1
  %idxprom.i.us.us.6.1 = sext i32 %add.i.us.us.6.1 to i64
  %arrayidx.i.us.us.6.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.6.1 = shl i64 %add1.i.i.us.us.6.1, 32
  %393 = ashr exact i64 %sext.i.us.us.6.1, 32
  br label %for.body.i.us.us.6.1

pregion_for_end.i.us-lcssa.us.us.6:               ; preds = %for.end.r_exit.i.loopexit.us.us.6.1
  %394 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.7 = or i32 %394, 7
  %mul.i.us.7 = mul nsw i32 %conv2.i.us.7, %4
  %mul4.i.us.7 = mul nsw i32 %conv2.i.us.7, %5
  %395 = sext i32 %mul4.i.us.7 to i64
  br label %pregion_for_entry.entry.i.us.us.7

pregion_for_entry.entry.i.us.us.7:                ; preds = %for.end.r_exit.i.loopexit.us.us.7.1, %pregion_for_end.i.us-lcssa.us.us.6
  %_local_id_x.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.6 ], [ %413, %for.end.r_exit.i.loopexit.us.us.7.1 ]
  %add1.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.0.us.us.7, %mul.i.i
  %conv.i.us.us.7 = trunc i64 %add1.i.i.us.us.7 to i32
  %add.i.us.us.7 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7
  %idxprom.i.us.us.7 = sext i32 %add.i.us.us.7 to i64
  %arrayidx.i.us.us.7 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7 = shl i64 %add1.i.i.us.us.7, 32
  %396 = ashr exact i64 %sext.i.us.us.7, 32
  br label %for.body.i.us.us.7

for.body.i.us.us.7:                               ; preds = %for.body.i.us.us.7, %pregion_for_entry.entry.i.us.us.7
  %indvars.iv.next.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.us.us.7, %for.body.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.us.us.7 ]
  %397 = phi float [ %403, %for.body.i.us.us.7 ], [ 0.000000e+00, %pregion_for_entry.entry.i.us.us.7 ]
  %398 = add nsw i64 %indvars.iv.next.i2.us.us.7, %395
  %arrayidx7.i.us.us.7 = getelementptr inbounds float, float* %1, i64 %398
  %399 = load float, float* %arrayidx7.i.us.us.7, align 4, !tbaa !12
  %mul8.i.us.us.7 = fmul float %399, %7
  %400 = mul nsw i64 %indvars.iv.next.i2.us.us.7, %14
  %401 = add nsw i64 %400, %396
  %arrayidx12.i.us.us.7 = getelementptr inbounds float, float* %2, i64 %401
  %402 = load float, float* %arrayidx12.i.us.us.7, align 4, !tbaa !12
  %403 = tail call float @llvm.fmuladd.f32(float %mul8.i.us.us.7, float %402, float %397) #2
  store float %403, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i2.us.us.7, 1
  %exitcond.not.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.us.us.7, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7, label %for.end.r_exit.i.loopexit.us.us.7, label %for.body.i.us.us.7, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.7:                ; preds = %for.body.i.us.us.7
  %404 = or i64 %_local_id_x.0.us.us.7, 1
  %add1.i.i.us.us.7.1 = add nuw nsw i64 %404, %mul.i.i
  %conv.i.us.us.7.1 = trunc i64 %add1.i.i.us.us.7.1 to i32
  %add.i.us.us.7.1 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7.1
  %idxprom.i.us.us.7.1 = sext i32 %add.i.us.us.7.1 to i64
  %arrayidx.i.us.us.7.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.us.us.7.1 = shl i64 %add1.i.i.us.us.7.1, 32
  %405 = ashr exact i64 %sext.i.us.us.7.1, 32
  br label %for.body.i.us.us.7.1

for.body.i.us.us.7.1:                             ; preds = %for.body.i.us.us.7.1, %for.end.r_exit.i.loopexit.us.us.7
  %indvars.iv.next.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.us.us.7.1, %for.body.i.us.us.7.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.7 ]
  %406 = phi float [ %412, %for.body.i.us.us.7.1 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us.us.7 ]
  %407 = add nsw i64 %indvars.iv.next.i2.us.us.7.1, %395
  %arrayidx7.i.us.us.7.1 = getelementptr inbounds float, float* %1, i64 %407
  %408 = load float, float* %arrayidx7.i.us.us.7.1, align 4, !tbaa !12
  %mul8.i.us.us.7.1 = fmul float %408, %7
  %409 = mul nsw i64 %indvars.iv.next.i2.us.us.7.1, %14
  %410 = add nsw i64 %409, %405
  %arrayidx12.i.us.us.7.1 = getelementptr inbounds float, float* %2, i64 %410
  %411 = load float, float* %arrayidx12.i.us.us.7.1, align 4, !tbaa !12
  %412 = tail call float @llvm.fmuladd.f32(float %mul8.i.us.us.7.1, float %411, float %406) #2
  store float %412, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.7.1, 1
  %exitcond.not.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.us.us.7.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7.1, label %for.end.r_exit.i.loopexit.us.us.7.1, label %for.body.i.us.us.7.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.7.1:              ; preds = %for.body.i.us.us.7.1
  %413 = add nuw nsw i64 %_local_id_x.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %413, 32
  br i1 %exitcond.7.not.1, label %mm2_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.us.us.7, !llvm.loop !24

for.body.i.us.us.6.1:                             ; preds = %for.body.i.us.us.6.1, %for.end.r_exit.i.loopexit.us.us.6
  %indvars.iv.next.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.us.us.6.1, %for.body.i.us.us.6.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.6 ]
  %414 = phi float [ %420, %for.body.i.us.us.6.1 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us.us.6 ]
  %415 = add nsw i64 %indvars.iv.next.i2.us.us.6.1, %383
  %arrayidx7.i.us.us.6.1 = getelementptr inbounds float, float* %1, i64 %415
  %416 = load float, float* %arrayidx7.i.us.us.6.1, align 4, !tbaa !12
  %mul8.i.us.us.6.1 = fmul float %416, %7
  %417 = mul nsw i64 %indvars.iv.next.i2.us.us.6.1, %14
  %418 = add nsw i64 %417, %393
  %arrayidx12.i.us.us.6.1 = getelementptr inbounds float, float* %2, i64 %418
  %419 = load float, float* %arrayidx12.i.us.us.6.1, align 4, !tbaa !12
  %420 = tail call float @llvm.fmuladd.f32(float %mul8.i.us.us.6.1, float %419, float %414) #2
  store float %420, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.6.1, 1
  %exitcond.not.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.us.us.6.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6.1, label %for.end.r_exit.i.loopexit.us.us.6.1, label %for.body.i.us.us.6.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.6.1:              ; preds = %for.body.i.us.us.6.1
  %421 = add nuw nsw i64 %_local_id_x.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %421, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.us.us.6, !llvm.loop !24

for.body.i.us.us.5.1:                             ; preds = %for.body.i.us.us.5.1, %for.end.r_exit.i.loopexit.us.us.5
  %indvars.iv.next.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.us.us.5.1, %for.body.i.us.us.5.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.5 ]
  %422 = phi float [ %428, %for.body.i.us.us.5.1 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us.us.5 ]
  %423 = add nsw i64 %indvars.iv.next.i2.us.us.5.1, %371
  %arrayidx7.i.us.us.5.1 = getelementptr inbounds float, float* %1, i64 %423
  %424 = load float, float* %arrayidx7.i.us.us.5.1, align 4, !tbaa !12
  %mul8.i.us.us.5.1 = fmul float %424, %7
  %425 = mul nsw i64 %indvars.iv.next.i2.us.us.5.1, %14
  %426 = add nsw i64 %425, %381
  %arrayidx12.i.us.us.5.1 = getelementptr inbounds float, float* %2, i64 %426
  %427 = load float, float* %arrayidx12.i.us.us.5.1, align 4, !tbaa !12
  %428 = tail call float @llvm.fmuladd.f32(float %mul8.i.us.us.5.1, float %427, float %422) #2
  store float %428, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.5.1, 1
  %exitcond.not.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.us.us.5.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5.1, label %for.end.r_exit.i.loopexit.us.us.5.1, label %for.body.i.us.us.5.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.5.1:              ; preds = %for.body.i.us.us.5.1
  %429 = add nuw nsw i64 %_local_id_x.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %429, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.us.us.5, !llvm.loop !24

for.body.i.us.us.4.1:                             ; preds = %for.body.i.us.us.4.1, %for.end.r_exit.i.loopexit.us.us.4
  %indvars.iv.next.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.us.us.4.1, %for.body.i.us.us.4.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.4 ]
  %430 = phi float [ %436, %for.body.i.us.us.4.1 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us.us.4 ]
  %431 = add nsw i64 %indvars.iv.next.i2.us.us.4.1, %359
  %arrayidx7.i.us.us.4.1 = getelementptr inbounds float, float* %1, i64 %431
  %432 = load float, float* %arrayidx7.i.us.us.4.1, align 4, !tbaa !12
  %mul8.i.us.us.4.1 = fmul float %432, %7
  %433 = mul nsw i64 %indvars.iv.next.i2.us.us.4.1, %14
  %434 = add nsw i64 %433, %369
  %arrayidx12.i.us.us.4.1 = getelementptr inbounds float, float* %2, i64 %434
  %435 = load float, float* %arrayidx12.i.us.us.4.1, align 4, !tbaa !12
  %436 = tail call float @llvm.fmuladd.f32(float %mul8.i.us.us.4.1, float %435, float %430) #2
  store float %436, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.4.1, 1
  %exitcond.not.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.us.us.4.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4.1, label %for.end.r_exit.i.loopexit.us.us.4.1, label %for.body.i.us.us.4.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.4.1:              ; preds = %for.body.i.us.us.4.1
  %437 = add nuw nsw i64 %_local_id_x.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %437, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.us.us.4, !llvm.loop !24

for.body.i.us.us.3.1:                             ; preds = %for.body.i.us.us.3.1, %for.end.r_exit.i.loopexit.us.us.3
  %indvars.iv.next.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.us.us.3.1, %for.body.i.us.us.3.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.3 ]
  %438 = phi float [ %444, %for.body.i.us.us.3.1 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us.us.3 ]
  %439 = add nsw i64 %indvars.iv.next.i2.us.us.3.1, %347
  %arrayidx7.i.us.us.3.1 = getelementptr inbounds float, float* %1, i64 %439
  %440 = load float, float* %arrayidx7.i.us.us.3.1, align 4, !tbaa !12
  %mul8.i.us.us.3.1 = fmul float %440, %7
  %441 = mul nsw i64 %indvars.iv.next.i2.us.us.3.1, %14
  %442 = add nsw i64 %441, %357
  %arrayidx12.i.us.us.3.1 = getelementptr inbounds float, float* %2, i64 %442
  %443 = load float, float* %arrayidx12.i.us.us.3.1, align 4, !tbaa !12
  %444 = tail call float @llvm.fmuladd.f32(float %mul8.i.us.us.3.1, float %443, float %438) #2
  store float %444, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.3.1, 1
  %exitcond.not.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.us.us.3.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3.1, label %for.end.r_exit.i.loopexit.us.us.3.1, label %for.body.i.us.us.3.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.3.1:              ; preds = %for.body.i.us.us.3.1
  %445 = add nuw nsw i64 %_local_id_x.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %445, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.us.us.3, !llvm.loop !24

for.body.i.us.us.2.1:                             ; preds = %for.body.i.us.us.2.1, %for.end.r_exit.i.loopexit.us.us.2
  %indvars.iv.next.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.us.us.2.1, %for.body.i.us.us.2.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.2 ]
  %446 = phi float [ %452, %for.body.i.us.us.2.1 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us.us.2 ]
  %447 = add nsw i64 %indvars.iv.next.i2.us.us.2.1, %335
  %arrayidx7.i.us.us.2.1 = getelementptr inbounds float, float* %1, i64 %447
  %448 = load float, float* %arrayidx7.i.us.us.2.1, align 4, !tbaa !12
  %mul8.i.us.us.2.1 = fmul float %448, %7
  %449 = mul nsw i64 %indvars.iv.next.i2.us.us.2.1, %14
  %450 = add nsw i64 %449, %345
  %arrayidx12.i.us.us.2.1 = getelementptr inbounds float, float* %2, i64 %450
  %451 = load float, float* %arrayidx12.i.us.us.2.1, align 4, !tbaa !12
  %452 = tail call float @llvm.fmuladd.f32(float %mul8.i.us.us.2.1, float %451, float %446) #2
  store float %452, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.2.1, 1
  %exitcond.not.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.us.us.2.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2.1, label %for.end.r_exit.i.loopexit.us.us.2.1, label %for.body.i.us.us.2.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.2.1:              ; preds = %for.body.i.us.us.2.1
  %453 = add nuw nsw i64 %_local_id_x.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %453, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.us.us.2, !llvm.loop !24

for.body.i.us.us.1.1:                             ; preds = %for.body.i.us.us.1.1, %for.end.r_exit.i.loopexit.us.us.1
  %indvars.iv.next.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.us.us.1.1, %for.body.i.us.us.1.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.1 ]
  %454 = phi float [ %460, %for.body.i.us.us.1.1 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us.us.1 ]
  %455 = add nsw i64 %indvars.iv.next.i2.us.us.1.1, %322
  %arrayidx7.i.us.us.1.1 = getelementptr inbounds float, float* %1, i64 %455
  %456 = load float, float* %arrayidx7.i.us.us.1.1, align 4, !tbaa !12
  %mul8.i.us.us.1.1 = fmul float %456, %7
  %457 = mul nsw i64 %indvars.iv.next.i2.us.us.1.1, %14
  %458 = add nsw i64 %457, %333
  %arrayidx12.i.us.us.1.1 = getelementptr inbounds float, float* %2, i64 %458
  %459 = load float, float* %arrayidx12.i.us.us.1.1, align 4, !tbaa !12
  %460 = tail call float @llvm.fmuladd.f32(float %mul8.i.us.us.1.1, float %459, float %454) #2
  store float %460, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1.1, 1
  %exitcond.not.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.us.us.1.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1.1, label %for.end.r_exit.i.loopexit.us.us.1.1, label %for.body.i.us.us.1.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.1.1:              ; preds = %for.body.i.us.us.1.1
  %461 = add nuw nsw i64 %_local_id_x.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %461, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.us.us.1, !llvm.loop !24

for.body.i.us.us.1131:                            ; preds = %for.body.i.us.us.1131, %for.end.r_exit.i.loopexit.us.us
  %indvars.iv.next.i2.us.us.1125 = phi i64 [ %indvars.iv.next.i.us.us.1129, %for.body.i.us.us.1131 ], [ 0, %for.end.r_exit.i.loopexit.us.us ]
  %462 = phi float [ %468, %for.body.i.us.us.1131 ], [ 0.000000e+00, %for.end.r_exit.i.loopexit.us.us ]
  %463 = add nsw i64 %indvars.iv.next.i2.us.us.1125, %310
  %arrayidx7.i.us.us.1126 = getelementptr inbounds float, float* %1, i64 %463
  %464 = load float, float* %arrayidx7.i.us.us.1126, align 4, !tbaa !12
  %mul8.i.us.us.1127 = fmul float %464, %7
  %465 = mul nsw i64 %indvars.iv.next.i2.us.us.1125, %14
  %466 = add nsw i64 %465, %313
  %arrayidx12.i.us.us.1128 = getelementptr inbounds float, float* %2, i64 %466
  %467 = load float, float* %arrayidx12.i.us.us.1128, align 4, !tbaa !12
  %468 = tail call float @llvm.fmuladd.f32(float %mul8.i.us.us.1127, float %467, float %462) #2
  store float %468, float* %arrayidx.i.us.us.1122, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1129 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1125, 1
  %exitcond.not.i.us.us.1130 = icmp eq i64 %indvars.iv.next.i.us.us.1129, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1130, label %for.end.r_exit.i.loopexit.us.us.1132, label %for.body.i.us.us.1131, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.1132:             ; preds = %for.body.i.us.us.1131
  %469 = add nuw nsw i64 %_local_id_x.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %469, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.us.us, !llvm.loop !24
}

; Function Attrs: nounwind
define void @_pocl_kernel_mm2_kernel1_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %25 = getelementptr i8*, i8** %0, i64 7
  %26 = bitcast i8** %25 to float**
  %27 = load float*, float** %26, align 8
  %28 = load float, float* %27, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp32.i.i = icmp sgt i32 %24, 0
  %29 = sext i32 %20 to i64
  %wide.trip.count.i.i = zext i32 %24 to i64
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
  %ident.check = icmp ne i32 %20, 1
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
  br i1 %194, label %pregion_for_entry.pregion_for_init.i.i.preheader133, label %vector.body

pregion_for_entry.pregion_for_init.i.i.preheader133: ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  br label %pregion_for_entry.pregion_for_init.i.i

vector.body:                                      ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %195 = trunc i64 %mul3.i.i.i to i32
  %196 = mul nsw i32 %20, %195
  %197 = add nsw i32 %196, %conv.i.i
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %8, i64 %198
  %200 = bitcast float* %199 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %200, align 4, !tbaa !12, !llvm.access.group !16
  %201 = add nsw i32 %196, %conv.i.i.1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %8, i64 %202
  %204 = bitcast float* %203 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %204, align 4, !tbaa !12, !llvm.access.group !16
  %205 = add nsw i32 %196, %conv.i.i.2
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %8, i64 %206
  %208 = bitcast float* %207 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %208, align 4, !tbaa !12, !llvm.access.group !16
  %209 = add nsw i32 %196, %conv.i.i.3
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %8, i64 %210
  %212 = bitcast float* %211 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %212, align 4, !tbaa !12, !llvm.access.group !16
  %213 = add nsw i32 %196, %conv.i.i.4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %8, i64 %214
  %216 = bitcast float* %215 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %216, align 4, !tbaa !12, !llvm.access.group !16
  %217 = add nsw i32 %196, %conv.i.i.5
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %8, i64 %218
  %220 = bitcast float* %219 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %220, align 4, !tbaa !12, !llvm.access.group !16
  %221 = add nsw i32 %196, %conv.i.i.6
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %8, i64 %222
  %224 = bitcast float* %223 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %224, align 4, !tbaa !12, !llvm.access.group !16
  %225 = add nsw i32 %196, %conv.i.i.7
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds float, float* %8, i64 %226
  %228 = bitcast float* %227 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %228, align 4, !tbaa !12, !llvm.access.group !16
  %229 = add nsw i32 %196, %conv.i.i.8
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float, float* %8, i64 %230
  %232 = bitcast float* %231 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %232, align 4, !tbaa !12, !llvm.access.group !16
  %233 = add nsw i32 %196, %conv.i.i.9
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %8, i64 %234
  %236 = bitcast float* %235 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %236, align 4, !tbaa !12, !llvm.access.group !16
  %237 = add nsw i32 %196, %conv.i.i.10
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %8, i64 %238
  %240 = bitcast float* %239 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %240, align 4, !tbaa !12, !llvm.access.group !16
  %241 = add nsw i32 %196, %conv.i.i.11
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %8, i64 %242
  %244 = bitcast float* %243 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %244, align 4, !tbaa !12, !llvm.access.group !16
  %245 = add nsw i32 %196, %conv.i.i.12
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %8, i64 %246
  %248 = bitcast float* %247 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %248, align 4, !tbaa !12, !llvm.access.group !16
  %249 = add nsw i32 %196, %conv.i.i.13
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %8, i64 %250
  %252 = bitcast float* %251 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %252, align 4, !tbaa !12, !llvm.access.group !16
  %253 = add nsw i32 %196, %conv.i.i.14
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float, float* %8, i64 %254
  %256 = bitcast float* %255 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %256, align 4, !tbaa !12, !llvm.access.group !16
  %257 = add nsw i32 %196, %conv.i.i.15
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %8, i64 %258
  %260 = bitcast float* %259 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %260, align 4, !tbaa !12, !llvm.access.group !16
  %261 = add nsw i32 %196, %conv.i.i.16
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %8, i64 %262
  %264 = bitcast float* %263 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %264, align 4, !tbaa !12, !llvm.access.group !16
  %265 = add nsw i32 %196, %conv.i.i.17
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %8, i64 %266
  %268 = bitcast float* %267 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %268, align 4, !tbaa !12, !llvm.access.group !16
  %269 = add nsw i32 %196, %conv.i.i.18
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %8, i64 %270
  %272 = bitcast float* %271 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %272, align 4, !tbaa !12, !llvm.access.group !16
  %273 = add nsw i32 %196, %conv.i.i.19
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds float, float* %8, i64 %274
  %276 = bitcast float* %275 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %276, align 4, !tbaa !12, !llvm.access.group !16
  %277 = add nsw i32 %196, %conv.i.i.20
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds float, float* %8, i64 %278
  %280 = bitcast float* %279 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %280, align 4, !tbaa !12, !llvm.access.group !16
  %281 = add nsw i32 %196, %conv.i.i.21
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds float, float* %8, i64 %282
  %284 = bitcast float* %283 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %284, align 4, !tbaa !12, !llvm.access.group !16
  %285 = add nsw i32 %196, %conv.i.i.22
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds float, float* %8, i64 %286
  %288 = bitcast float* %287 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %288, align 4, !tbaa !12, !llvm.access.group !16
  %289 = add nsw i32 %196, %conv.i.i.23
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds float, float* %8, i64 %290
  %292 = bitcast float* %291 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %292, align 4, !tbaa !12, !llvm.access.group !16
  %293 = add nsw i32 %196, %conv.i.i.24
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %8, i64 %294
  %296 = bitcast float* %295 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %296, align 4, !tbaa !12, !llvm.access.group !16
  %297 = add nsw i32 %196, %conv.i.i.25
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float, float* %8, i64 %298
  %300 = bitcast float* %299 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %300, align 4, !tbaa !12, !llvm.access.group !16
  %301 = add nsw i32 %196, %conv.i.i.26
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds float, float* %8, i64 %302
  %304 = bitcast float* %303 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %304, align 4, !tbaa !12, !llvm.access.group !16
  %305 = add nsw i32 %196, %conv.i.i.27
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %8, i64 %306
  %308 = bitcast float* %307 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %308, align 4, !tbaa !12, !llvm.access.group !16
  %309 = add nsw i32 %196, %conv.i.i.28
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds float, float* %8, i64 %310
  %312 = bitcast float* %311 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %312, align 4, !tbaa !12, !llvm.access.group !16
  %313 = add nsw i32 %196, %conv.i.i.29
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float, float* %8, i64 %314
  %316 = bitcast float* %315 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %316, align 4, !tbaa !12, !llvm.access.group !16
  %317 = add nsw i32 %196, %conv.i.i.30
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds float, float* %8, i64 %318
  %320 = bitcast float* %319 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %320, align 4, !tbaa !12, !llvm.access.group !16
  %321 = add nsw i32 %196, %conv.i.i.31
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds float, float* %8, i64 %322
  %324 = bitcast float* %323 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %324, align 4, !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_mm2_kernel1.exit

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %mul.i.i.us = mul nsw i32 %20, %conv2.i.i.us
  %mul4.i.i.us = mul nsw i32 %24, %conv2.i.i.us
  %325 = sext i32 %mul4.i.i.us to i64
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_entry.entry.i.i.us.us:                ; preds = %for.end.r_exit.i.i.loopexit.us.us.1132, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.i.us.preheader ], [ %484, %for.end.r_exit.i.i.loopexit.us.us.1132 ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %326 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

for.end.r_exit.i.i.loopexit.us.us:                ; preds = %for.body.i.i.us.us
  %327 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.1118 = add nuw nsw i64 %327, %mul.i.i.i
  %conv.i.i.us.us.1119 = trunc i64 %add1.i.i.i.us.us.1118 to i32
  %add.i.i.us.us.1120 = add nsw i32 %mul.i.i.us, %conv.i.i.us.us.1119
  %idxprom.i.i.us.us.1121 = sext i32 %add.i.i.us.us.1120 to i64
  %arrayidx.i.i.us.us.1122 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.1121
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1122, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1123 = shl i64 %add1.i.i.i.us.us.1118, 32
  %328 = ashr exact i64 %sext.i.i.us.us.1123, 32
  br label %for.body.i.i.us.us.1131

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %pregion_for_entry.entry.i.i.us.us
  %indvars.iv.next.i.i2.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us ]
  %329 = phi float [ %335, %for.body.i.i.us.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us ]
  %330 = add nsw i64 %indvars.iv.next.i.i2.us.us, %325
  %arrayidx7.i.i.us.us = getelementptr inbounds float, float* %12, i64 %330
  %331 = load float, float* %arrayidx7.i.i.us.us, align 4, !tbaa !12
  %mul8.i.i.us.us = fmul float %28, %331
  %332 = mul nsw i64 %indvars.iv.next.i.i2.us.us, %29
  %333 = add nsw i64 %332, %326
  %arrayidx12.i.i.us.us = getelementptr inbounds float, float* %16, i64 %333
  %334 = load float, float* %arrayidx12.i.i.us.us, align 4, !tbaa !12
  %335 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us, float %334, float %329) #2
  store float %335, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i2.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %for.end.r_exit.i.i.loopexit.us.us, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us:               ; preds = %for.end.r_exit.i.i.loopexit.us.us.1132
  %336 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %336, 1
  %mul.i.i.us.1 = mul nsw i32 %20, %conv2.i.i.us.1
  %mul4.i.i.us.1 = mul nsw i32 %24, %conv2.i.i.us.1
  %337 = sext i32 %mul4.i.i.us.1 to i64
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader133
  %_local_id_y.i.0 = phi i64 [ %338, %pregion_for_entry.pregion_for_init.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader133 ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %mul.i.i = mul nsw i32 %20, %conv2.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %8, i64 %idxprom.i.i
  store float 0.000000e+00, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.1
  store float 0.000000e+00, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.2 = add nsw i32 %mul.i.i, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.2
  store float 0.000000e+00, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.3 = add nsw i32 %mul.i.i, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.3
  store float 0.000000e+00, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.4 = add nsw i32 %mul.i.i, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.4
  store float 0.000000e+00, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.5 = add nsw i32 %mul.i.i, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.5
  store float 0.000000e+00, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.6 = add nsw i32 %mul.i.i, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.6
  store float 0.000000e+00, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.7 = add nsw i32 %mul.i.i, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.7
  store float 0.000000e+00, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.8 = add nsw i32 %mul.i.i, %conv.i.i.8
  %idxprom.i.i.8 = sext i32 %add.i.i.8 to i64
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.8
  store float 0.000000e+00, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.9 = add nsw i32 %mul.i.i, %conv.i.i.9
  %idxprom.i.i.9 = sext i32 %add.i.i.9 to i64
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.9
  store float 0.000000e+00, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.10 = add nsw i32 %mul.i.i, %conv.i.i.10
  %idxprom.i.i.10 = sext i32 %add.i.i.10 to i64
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.10
  store float 0.000000e+00, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.11 = add nsw i32 %mul.i.i, %conv.i.i.11
  %idxprom.i.i.11 = sext i32 %add.i.i.11 to i64
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.11
  store float 0.000000e+00, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.12 = add nsw i32 %mul.i.i, %conv.i.i.12
  %idxprom.i.i.12 = sext i32 %add.i.i.12 to i64
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.12
  store float 0.000000e+00, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.13 = add nsw i32 %mul.i.i, %conv.i.i.13
  %idxprom.i.i.13 = sext i32 %add.i.i.13 to i64
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.13
  store float 0.000000e+00, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.14 = add nsw i32 %mul.i.i, %conv.i.i.14
  %idxprom.i.i.14 = sext i32 %add.i.i.14 to i64
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.14
  store float 0.000000e+00, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.15 = add nsw i32 %mul.i.i, %conv.i.i.15
  %idxprom.i.i.15 = sext i32 %add.i.i.15 to i64
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.15
  store float 0.000000e+00, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.16 = add nsw i32 %mul.i.i, %conv.i.i.16
  %idxprom.i.i.16 = sext i32 %add.i.i.16 to i64
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.16
  store float 0.000000e+00, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.17 = add nsw i32 %mul.i.i, %conv.i.i.17
  %idxprom.i.i.17 = sext i32 %add.i.i.17 to i64
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.17
  store float 0.000000e+00, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.18 = add nsw i32 %mul.i.i, %conv.i.i.18
  %idxprom.i.i.18 = sext i32 %add.i.i.18 to i64
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.18
  store float 0.000000e+00, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.19 = add nsw i32 %mul.i.i, %conv.i.i.19
  %idxprom.i.i.19 = sext i32 %add.i.i.19 to i64
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.19
  store float 0.000000e+00, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.20 = add nsw i32 %mul.i.i, %conv.i.i.20
  %idxprom.i.i.20 = sext i32 %add.i.i.20 to i64
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.20
  store float 0.000000e+00, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.21 = add nsw i32 %mul.i.i, %conv.i.i.21
  %idxprom.i.i.21 = sext i32 %add.i.i.21 to i64
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.21
  store float 0.000000e+00, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.22 = add nsw i32 %mul.i.i, %conv.i.i.22
  %idxprom.i.i.22 = sext i32 %add.i.i.22 to i64
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.22
  store float 0.000000e+00, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.23 = add nsw i32 %mul.i.i, %conv.i.i.23
  %idxprom.i.i.23 = sext i32 %add.i.i.23 to i64
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.23
  store float 0.000000e+00, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.24 = add nsw i32 %mul.i.i, %conv.i.i.24
  %idxprom.i.i.24 = sext i32 %add.i.i.24 to i64
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.24
  store float 0.000000e+00, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.25 = add nsw i32 %mul.i.i, %conv.i.i.25
  %idxprom.i.i.25 = sext i32 %add.i.i.25 to i64
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.25
  store float 0.000000e+00, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.26 = add nsw i32 %mul.i.i, %conv.i.i.26
  %idxprom.i.i.26 = sext i32 %add.i.i.26 to i64
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.26
  store float 0.000000e+00, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.27 = add nsw i32 %mul.i.i, %conv.i.i.27
  %idxprom.i.i.27 = sext i32 %add.i.i.27 to i64
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.27
  store float 0.000000e+00, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.28 = add nsw i32 %mul.i.i, %conv.i.i.28
  %idxprom.i.i.28 = sext i32 %add.i.i.28 to i64
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.28
  store float 0.000000e+00, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.29 = add nsw i32 %mul.i.i, %conv.i.i.29
  %idxprom.i.i.29 = sext i32 %add.i.i.29 to i64
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.29
  store float 0.000000e+00, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.30 = add nsw i32 %mul.i.i, %conv.i.i.30
  %idxprom.i.i.30 = sext i32 %add.i.i.30 to i64
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.30
  store float 0.000000e+00, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.31 = add nsw i32 %mul.i.i, %conv.i.i.31
  %idxprom.i.i.31 = sext i32 %add.i.i.31 to i64
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.31
  store float 0.000000e+00, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %338 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond30.not = icmp eq i64 %338, 8
  br i1 %exitcond30.not, label %_pocl_kernel_mm2_kernel1.exit.loopexit134, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !26

_pocl_kernel_mm2_kernel1.exit.loopexit:           ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1
  br label %_pocl_kernel_mm2_kernel1.exit

_pocl_kernel_mm2_kernel1.exit.loopexit134:        ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %_pocl_kernel_mm2_kernel1.exit

_pocl_kernel_mm2_kernel1.exit:                    ; preds = %_pocl_kernel_mm2_kernel1.exit.loopexit134, %_pocl_kernel_mm2_kernel1.exit.loopexit, %vector.body
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1, %pregion_for_end.i.i.us-lcssa.us.us
  %_local_id_x.i.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us ], [ %476, %for.end.r_exit.i.i.loopexit.us.us.1.1 ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %339 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1
  %indvars.iv.next.i.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1 ]
  %340 = phi float [ %346, %for.body.i.i.us.us.1 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.1 ]
  %341 = add nsw i64 %indvars.iv.next.i.i2.us.us.1, %337
  %arrayidx7.i.i.us.us.1 = getelementptr inbounds float, float* %12, i64 %341
  %342 = load float, float* %arrayidx7.i.i.us.us.1, align 4, !tbaa !12
  %mul8.i.i.us.us.1 = fmul float %28, %342
  %343 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1, %29
  %344 = add nsw i64 %343, %339
  %arrayidx12.i.i.us.us.1 = getelementptr inbounds float, float* %16, i64 %344
  %345 = load float, float* %arrayidx12.i.i.us.us.1, align 4, !tbaa !12
  %346 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.1, float %345, float %340) #2
  store float %346, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %for.end.r_exit.i.i.loopexit.us.us.1, label %for.body.i.i.us.us.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1:              ; preds = %for.body.i.i.us.us.1
  %347 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %347, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %add.i.i.us.us.1.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1.1 = shl i64 %add1.i.i.i.us.us.1.1, 32
  %348 = ashr exact i64 %sext.i.i.us.us.1.1, 32
  br label %for.body.i.i.us.us.1.1

pregion_for_end.i.i.us-lcssa.us.us.1:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1
  %349 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %349, 2
  %mul.i.i.us.2 = mul nsw i32 %20, %conv2.i.i.us.2
  %mul4.i.i.us.2 = mul nsw i32 %24, %conv2.i.i.us.2
  %350 = sext i32 %mul4.i.i.us.2 to i64
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1, %pregion_for_end.i.i.us-lcssa.us.us.1
  %_local_id_x.i.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.1 ], [ %468, %for.end.r_exit.i.i.loopexit.us.us.2.1 ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %351 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2
  %indvars.iv.next.i.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2 ]
  %352 = phi float [ %358, %for.body.i.i.us.us.2 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.2 ]
  %353 = add nsw i64 %indvars.iv.next.i.i2.us.us.2, %350
  %arrayidx7.i.i.us.us.2 = getelementptr inbounds float, float* %12, i64 %353
  %354 = load float, float* %arrayidx7.i.i.us.us.2, align 4, !tbaa !12
  %mul8.i.i.us.us.2 = fmul float %28, %354
  %355 = mul nsw i64 %indvars.iv.next.i.i2.us.us.2, %29
  %356 = add nsw i64 %355, %351
  %arrayidx12.i.i.us.us.2 = getelementptr inbounds float, float* %16, i64 %356
  %357 = load float, float* %arrayidx12.i.i.us.us.2, align 4, !tbaa !12
  %358 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.2, float %357, float %352) #2
  store float %358, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %for.end.r_exit.i.i.loopexit.us.us.2, label %for.body.i.i.us.us.2, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2:              ; preds = %for.body.i.i.us.us.2
  %359 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %359, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %add.i.i.us.us.2.1 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2.1 = shl i64 %add1.i.i.i.us.us.2.1, 32
  %360 = ashr exact i64 %sext.i.i.us.us.2.1, 32
  br label %for.body.i.i.us.us.2.1

pregion_for_end.i.i.us-lcssa.us.us.2:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1
  %361 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %361, 3
  %mul.i.i.us.3 = mul nsw i32 %20, %conv2.i.i.us.3
  %mul4.i.i.us.3 = mul nsw i32 %24, %conv2.i.i.us.3
  %362 = sext i32 %mul4.i.i.us.3 to i64
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1, %pregion_for_end.i.i.us-lcssa.us.us.2
  %_local_id_x.i.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.2 ], [ %460, %for.end.r_exit.i.i.loopexit.us.us.3.1 ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %363 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3
  %indvars.iv.next.i.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3 ]
  %364 = phi float [ %370, %for.body.i.i.us.us.3 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.3 ]
  %365 = add nsw i64 %indvars.iv.next.i.i2.us.us.3, %362
  %arrayidx7.i.i.us.us.3 = getelementptr inbounds float, float* %12, i64 %365
  %366 = load float, float* %arrayidx7.i.i.us.us.3, align 4, !tbaa !12
  %mul8.i.i.us.us.3 = fmul float %28, %366
  %367 = mul nsw i64 %indvars.iv.next.i.i2.us.us.3, %29
  %368 = add nsw i64 %367, %363
  %arrayidx12.i.i.us.us.3 = getelementptr inbounds float, float* %16, i64 %368
  %369 = load float, float* %arrayidx12.i.i.us.us.3, align 4, !tbaa !12
  %370 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.3, float %369, float %364) #2
  store float %370, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %for.end.r_exit.i.i.loopexit.us.us.3, label %for.body.i.i.us.us.3, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3:              ; preds = %for.body.i.i.us.us.3
  %371 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %371, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %add.i.i.us.us.3.1 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3.1 = shl i64 %add1.i.i.i.us.us.3.1, 32
  %372 = ashr exact i64 %sext.i.i.us.us.3.1, 32
  br label %for.body.i.i.us.us.3.1

pregion_for_end.i.i.us-lcssa.us.us.3:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1
  %373 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %373, 4
  %mul.i.i.us.4 = mul nsw i32 %20, %conv2.i.i.us.4
  %mul4.i.i.us.4 = mul nsw i32 %24, %conv2.i.i.us.4
  %374 = sext i32 %mul4.i.i.us.4 to i64
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1, %pregion_for_end.i.i.us-lcssa.us.us.3
  %_local_id_x.i.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.3 ], [ %452, %for.end.r_exit.i.i.loopexit.us.us.4.1 ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %375 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4
  %indvars.iv.next.i.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4 ]
  %376 = phi float [ %382, %for.body.i.i.us.us.4 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.4 ]
  %377 = add nsw i64 %indvars.iv.next.i.i2.us.us.4, %374
  %arrayidx7.i.i.us.us.4 = getelementptr inbounds float, float* %12, i64 %377
  %378 = load float, float* %arrayidx7.i.i.us.us.4, align 4, !tbaa !12
  %mul8.i.i.us.us.4 = fmul float %28, %378
  %379 = mul nsw i64 %indvars.iv.next.i.i2.us.us.4, %29
  %380 = add nsw i64 %379, %375
  %arrayidx12.i.i.us.us.4 = getelementptr inbounds float, float* %16, i64 %380
  %381 = load float, float* %arrayidx12.i.i.us.us.4, align 4, !tbaa !12
  %382 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.4, float %381, float %376) #2
  store float %382, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %for.end.r_exit.i.i.loopexit.us.us.4, label %for.body.i.i.us.us.4, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4:              ; preds = %for.body.i.i.us.us.4
  %383 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %383, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %add.i.i.us.us.4.1 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4.1 = shl i64 %add1.i.i.i.us.us.4.1, 32
  %384 = ashr exact i64 %sext.i.i.us.us.4.1, 32
  br label %for.body.i.i.us.us.4.1

pregion_for_end.i.i.us-lcssa.us.us.4:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1
  %385 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %385, 5
  %mul.i.i.us.5 = mul nsw i32 %20, %conv2.i.i.us.5
  %mul4.i.i.us.5 = mul nsw i32 %24, %conv2.i.i.us.5
  %386 = sext i32 %mul4.i.i.us.5 to i64
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1, %pregion_for_end.i.i.us-lcssa.us.us.4
  %_local_id_x.i.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.4 ], [ %444, %for.end.r_exit.i.i.loopexit.us.us.5.1 ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %387 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5
  %indvars.iv.next.i.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5 ]
  %388 = phi float [ %394, %for.body.i.i.us.us.5 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.5 ]
  %389 = add nsw i64 %indvars.iv.next.i.i2.us.us.5, %386
  %arrayidx7.i.i.us.us.5 = getelementptr inbounds float, float* %12, i64 %389
  %390 = load float, float* %arrayidx7.i.i.us.us.5, align 4, !tbaa !12
  %mul8.i.i.us.us.5 = fmul float %28, %390
  %391 = mul nsw i64 %indvars.iv.next.i.i2.us.us.5, %29
  %392 = add nsw i64 %391, %387
  %arrayidx12.i.i.us.us.5 = getelementptr inbounds float, float* %16, i64 %392
  %393 = load float, float* %arrayidx12.i.i.us.us.5, align 4, !tbaa !12
  %394 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.5, float %393, float %388) #2
  store float %394, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %for.end.r_exit.i.i.loopexit.us.us.5, label %for.body.i.i.us.us.5, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5:              ; preds = %for.body.i.i.us.us.5
  %395 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %395, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %add.i.i.us.us.5.1 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5.1 = shl i64 %add1.i.i.i.us.us.5.1, 32
  %396 = ashr exact i64 %sext.i.i.us.us.5.1, 32
  br label %for.body.i.i.us.us.5.1

pregion_for_end.i.i.us-lcssa.us.us.5:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1
  %397 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %397, 6
  %mul.i.i.us.6 = mul nsw i32 %20, %conv2.i.i.us.6
  %mul4.i.i.us.6 = mul nsw i32 %24, %conv2.i.i.us.6
  %398 = sext i32 %mul4.i.i.us.6 to i64
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1, %pregion_for_end.i.i.us-lcssa.us.us.5
  %_local_id_x.i.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.5 ], [ %436, %for.end.r_exit.i.i.loopexit.us.us.6.1 ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %399 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6
  %indvars.iv.next.i.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6 ]
  %400 = phi float [ %406, %for.body.i.i.us.us.6 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.6 ]
  %401 = add nsw i64 %indvars.iv.next.i.i2.us.us.6, %398
  %arrayidx7.i.i.us.us.6 = getelementptr inbounds float, float* %12, i64 %401
  %402 = load float, float* %arrayidx7.i.i.us.us.6, align 4, !tbaa !12
  %mul8.i.i.us.us.6 = fmul float %28, %402
  %403 = mul nsw i64 %indvars.iv.next.i.i2.us.us.6, %29
  %404 = add nsw i64 %403, %399
  %arrayidx12.i.i.us.us.6 = getelementptr inbounds float, float* %16, i64 %404
  %405 = load float, float* %arrayidx12.i.i.us.us.6, align 4, !tbaa !12
  %406 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.6, float %405, float %400) #2
  store float %406, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %for.end.r_exit.i.i.loopexit.us.us.6, label %for.body.i.i.us.us.6, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6:              ; preds = %for.body.i.i.us.us.6
  %407 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %407, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %add.i.i.us.us.6.1 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6.1 = shl i64 %add1.i.i.i.us.us.6.1, 32
  %408 = ashr exact i64 %sext.i.i.us.us.6.1, 32
  br label %for.body.i.i.us.us.6.1

pregion_for_end.i.i.us-lcssa.us.us.6:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1
  %409 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %409, 7
  %mul.i.i.us.7 = mul nsw i32 %20, %conv2.i.i.us.7
  %mul4.i.i.us.7 = mul nsw i32 %24, %conv2.i.i.us.7
  %410 = sext i32 %mul4.i.i.us.7 to i64
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1, %pregion_for_end.i.i.us-lcssa.us.us.6
  %_local_id_x.i.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.6 ], [ %428, %for.end.r_exit.i.i.loopexit.us.us.7.1 ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %411 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7
  %indvars.iv.next.i.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7 ]
  %412 = phi float [ %418, %for.body.i.i.us.us.7 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.7 ]
  %413 = add nsw i64 %indvars.iv.next.i.i2.us.us.7, %410
  %arrayidx7.i.i.us.us.7 = getelementptr inbounds float, float* %12, i64 %413
  %414 = load float, float* %arrayidx7.i.i.us.us.7, align 4, !tbaa !12
  %mul8.i.i.us.us.7 = fmul float %28, %414
  %415 = mul nsw i64 %indvars.iv.next.i.i2.us.us.7, %29
  %416 = add nsw i64 %415, %411
  %arrayidx12.i.i.us.us.7 = getelementptr inbounds float, float* %16, i64 %416
  %417 = load float, float* %arrayidx12.i.i.us.us.7, align 4, !tbaa !12
  %418 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.7, float %417, float %412) #2
  store float %418, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %for.end.r_exit.i.i.loopexit.us.us.7, label %for.body.i.i.us.us.7, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7:              ; preds = %for.body.i.i.us.us.7
  %419 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %419, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %add.i.i.us.us.7.1 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7.1 = shl i64 %add1.i.i.i.us.us.7.1, 32
  %420 = ashr exact i64 %sext.i.i.us.us.7.1, 32
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %for.end.r_exit.i.i.loopexit.us.us.7
  %indvars.iv.next.i.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %421 = phi float [ %427, %for.body.i.i.us.us.7.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %422 = add nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %410
  %arrayidx7.i.i.us.us.7.1 = getelementptr inbounds float, float* %12, i64 %422
  %423 = load float, float* %arrayidx7.i.i.us.us.7.1, align 4, !tbaa !12
  %mul8.i.i.us.us.7.1 = fmul float %28, %423
  %424 = mul nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %29
  %425 = add nsw i64 %424, %420
  %arrayidx12.i.i.us.us.7.1 = getelementptr inbounds float, float* %16, i64 %425
  %426 = load float, float* %arrayidx12.i.i.us.us.7.1, align 4, !tbaa !12
  %427 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.7.1, float %426, float %421) #2
  store float %427, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7.1, label %for.end.r_exit.i.i.loopexit.us.us.7.1, label %for.body.i.i.us.us.7.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7.1:            ; preds = %for.body.i.i.us.us.7.1
  %428 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %428, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_mm2_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !24

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %for.end.r_exit.i.i.loopexit.us.us.6
  %indvars.iv.next.i.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %429 = phi float [ %435, %for.body.i.i.us.us.6.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %430 = add nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %398
  %arrayidx7.i.i.us.us.6.1 = getelementptr inbounds float, float* %12, i64 %430
  %431 = load float, float* %arrayidx7.i.i.us.us.6.1, align 4, !tbaa !12
  %mul8.i.i.us.us.6.1 = fmul float %28, %431
  %432 = mul nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %29
  %433 = add nsw i64 %432, %408
  %arrayidx12.i.i.us.us.6.1 = getelementptr inbounds float, float* %16, i64 %433
  %434 = load float, float* %arrayidx12.i.i.us.us.6.1, align 4, !tbaa !12
  %435 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.6.1, float %434, float %429) #2
  store float %435, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6.1, label %for.end.r_exit.i.i.loopexit.us.us.6.1, label %for.body.i.i.us.us.6.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6.1:            ; preds = %for.body.i.i.us.us.6.1
  %436 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %436, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !24

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %for.end.r_exit.i.i.loopexit.us.us.5
  %indvars.iv.next.i.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %437 = phi float [ %443, %for.body.i.i.us.us.5.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %438 = add nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %386
  %arrayidx7.i.i.us.us.5.1 = getelementptr inbounds float, float* %12, i64 %438
  %439 = load float, float* %arrayidx7.i.i.us.us.5.1, align 4, !tbaa !12
  %mul8.i.i.us.us.5.1 = fmul float %28, %439
  %440 = mul nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %29
  %441 = add nsw i64 %440, %396
  %arrayidx12.i.i.us.us.5.1 = getelementptr inbounds float, float* %16, i64 %441
  %442 = load float, float* %arrayidx12.i.i.us.us.5.1, align 4, !tbaa !12
  %443 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.5.1, float %442, float %437) #2
  store float %443, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5.1, label %for.end.r_exit.i.i.loopexit.us.us.5.1, label %for.body.i.i.us.us.5.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5.1:            ; preds = %for.body.i.i.us.us.5.1
  %444 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %444, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !24

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %for.end.r_exit.i.i.loopexit.us.us.4
  %indvars.iv.next.i.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %445 = phi float [ %451, %for.body.i.i.us.us.4.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %446 = add nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %374
  %arrayidx7.i.i.us.us.4.1 = getelementptr inbounds float, float* %12, i64 %446
  %447 = load float, float* %arrayidx7.i.i.us.us.4.1, align 4, !tbaa !12
  %mul8.i.i.us.us.4.1 = fmul float %28, %447
  %448 = mul nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %29
  %449 = add nsw i64 %448, %384
  %arrayidx12.i.i.us.us.4.1 = getelementptr inbounds float, float* %16, i64 %449
  %450 = load float, float* %arrayidx12.i.i.us.us.4.1, align 4, !tbaa !12
  %451 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.4.1, float %450, float %445) #2
  store float %451, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4.1, label %for.end.r_exit.i.i.loopexit.us.us.4.1, label %for.body.i.i.us.us.4.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4.1:            ; preds = %for.body.i.i.us.us.4.1
  %452 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %452, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !24

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %for.end.r_exit.i.i.loopexit.us.us.3
  %indvars.iv.next.i.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %453 = phi float [ %459, %for.body.i.i.us.us.3.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %454 = add nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %362
  %arrayidx7.i.i.us.us.3.1 = getelementptr inbounds float, float* %12, i64 %454
  %455 = load float, float* %arrayidx7.i.i.us.us.3.1, align 4, !tbaa !12
  %mul8.i.i.us.us.3.1 = fmul float %28, %455
  %456 = mul nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %29
  %457 = add nsw i64 %456, %372
  %arrayidx12.i.i.us.us.3.1 = getelementptr inbounds float, float* %16, i64 %457
  %458 = load float, float* %arrayidx12.i.i.us.us.3.1, align 4, !tbaa !12
  %459 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.3.1, float %458, float %453) #2
  store float %459, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3.1, label %for.end.r_exit.i.i.loopexit.us.us.3.1, label %for.body.i.i.us.us.3.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3.1:            ; preds = %for.body.i.i.us.us.3.1
  %460 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %460, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !24

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %for.end.r_exit.i.i.loopexit.us.us.2
  %indvars.iv.next.i.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %461 = phi float [ %467, %for.body.i.i.us.us.2.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %462 = add nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %350
  %arrayidx7.i.i.us.us.2.1 = getelementptr inbounds float, float* %12, i64 %462
  %463 = load float, float* %arrayidx7.i.i.us.us.2.1, align 4, !tbaa !12
  %mul8.i.i.us.us.2.1 = fmul float %28, %463
  %464 = mul nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %29
  %465 = add nsw i64 %464, %360
  %arrayidx12.i.i.us.us.2.1 = getelementptr inbounds float, float* %16, i64 %465
  %466 = load float, float* %arrayidx12.i.i.us.us.2.1, align 4, !tbaa !12
  %467 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.2.1, float %466, float %461) #2
  store float %467, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2.1, label %for.end.r_exit.i.i.loopexit.us.us.2.1, label %for.body.i.i.us.us.2.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2.1:            ; preds = %for.body.i.i.us.us.2.1
  %468 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %468, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !24

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %for.end.r_exit.i.i.loopexit.us.us.1
  %indvars.iv.next.i.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %469 = phi float [ %475, %for.body.i.i.us.us.1.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %470 = add nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %337
  %arrayidx7.i.i.us.us.1.1 = getelementptr inbounds float, float* %12, i64 %470
  %471 = load float, float* %arrayidx7.i.i.us.us.1.1, align 4, !tbaa !12
  %mul8.i.i.us.us.1.1 = fmul float %28, %471
  %472 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %29
  %473 = add nsw i64 %472, %348
  %arrayidx12.i.i.us.us.1.1 = getelementptr inbounds float, float* %16, i64 %473
  %474 = load float, float* %arrayidx12.i.i.us.us.1.1, align 4, !tbaa !12
  %475 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.1.1, float %474, float %469) #2
  store float %475, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1.1, label %for.end.r_exit.i.i.loopexit.us.us.1.1, label %for.body.i.i.us.us.1.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1.1:            ; preds = %for.body.i.i.us.us.1.1
  %476 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %476, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !24

for.body.i.i.us.us.1131:                          ; preds = %for.body.i.i.us.us.1131, %for.end.r_exit.i.i.loopexit.us.us
  %indvars.iv.next.i.i2.us.us.1125 = phi i64 [ %indvars.iv.next.i.i.us.us.1129, %for.body.i.i.us.us.1131 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us ]
  %477 = phi float [ %483, %for.body.i.i.us.us.1131 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us ]
  %478 = add nsw i64 %indvars.iv.next.i.i2.us.us.1125, %325
  %arrayidx7.i.i.us.us.1126 = getelementptr inbounds float, float* %12, i64 %478
  %479 = load float, float* %arrayidx7.i.i.us.us.1126, align 4, !tbaa !12
  %mul8.i.i.us.us.1127 = fmul float %28, %479
  %480 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1125, %29
  %481 = add nsw i64 %480, %328
  %arrayidx12.i.i.us.us.1128 = getelementptr inbounds float, float* %16, i64 %481
  %482 = load float, float* %arrayidx12.i.i.us.us.1128, align 4, !tbaa !12
  %483 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.1127, float %482, float %477) #2
  store float %483, float* %arrayidx.i.i.us.us.1122, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1129 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1125, 1
  %exitcond.not.i.i.us.us.1130 = icmp eq i64 %indvars.iv.next.i.i.us.us.1129, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1130, label %for.end.r_exit.i.i.loopexit.us.us.1132, label %for.body.i.i.us.us.1131, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1132:           ; preds = %for.body.i.i.us.us.1131
  %484 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %484, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !24
}

; Function Attrs: nounwind
define void @_pocl_kernel_mm2_kernel1_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %22 = getelementptr i8*, i8** %0, i64 7
  %23 = bitcast i8** %22 to float**
  %24 = load float*, float** %23, align 8
  %25 = load float, float* %24, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp32.i.i = icmp sgt i32 %21, 0
  %26 = sext i32 %17 to i64
  %wide.trip.count.i.i = zext i32 %21 to i64
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
  %ident.check = icmp ne i32 %17, 1
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
  br i1 %191, label %pregion_for_entry.pregion_for_init.i.i.preheader133, label %vector.body

pregion_for_entry.pregion_for_init.i.i.preheader133: ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  br label %pregion_for_entry.pregion_for_init.i.i

vector.body:                                      ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %192 = trunc i64 %mul3.i.i.i to i32
  %193 = mul nsw i32 %17, %192
  %194 = add nsw i32 %193, %conv.i.i
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %7, i64 %195
  %197 = bitcast float* %196 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %197, align 4, !tbaa !12, !llvm.access.group !16
  %198 = add nsw i32 %193, %conv.i.i.1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %7, i64 %199
  %201 = bitcast float* %200 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %201, align 4, !tbaa !12, !llvm.access.group !16
  %202 = add nsw i32 %193, %conv.i.i.2
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %7, i64 %203
  %205 = bitcast float* %204 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %205, align 4, !tbaa !12, !llvm.access.group !16
  %206 = add nsw i32 %193, %conv.i.i.3
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %7, i64 %207
  %209 = bitcast float* %208 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %209, align 4, !tbaa !12, !llvm.access.group !16
  %210 = add nsw i32 %193, %conv.i.i.4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %7, i64 %211
  %213 = bitcast float* %212 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %213, align 4, !tbaa !12, !llvm.access.group !16
  %214 = add nsw i32 %193, %conv.i.i.5
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %7, i64 %215
  %217 = bitcast float* %216 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %217, align 4, !tbaa !12, !llvm.access.group !16
  %218 = add nsw i32 %193, %conv.i.i.6
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %7, i64 %219
  %221 = bitcast float* %220 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %221, align 4, !tbaa !12, !llvm.access.group !16
  %222 = add nsw i32 %193, %conv.i.i.7
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float, float* %7, i64 %223
  %225 = bitcast float* %224 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %225, align 4, !tbaa !12, !llvm.access.group !16
  %226 = add nsw i32 %193, %conv.i.i.8
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %7, i64 %227
  %229 = bitcast float* %228 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %229, align 4, !tbaa !12, !llvm.access.group !16
  %230 = add nsw i32 %193, %conv.i.i.9
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %7, i64 %231
  %233 = bitcast float* %232 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %233, align 4, !tbaa !12, !llvm.access.group !16
  %234 = add nsw i32 %193, %conv.i.i.10
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds float, float* %7, i64 %235
  %237 = bitcast float* %236 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %237, align 4, !tbaa !12, !llvm.access.group !16
  %238 = add nsw i32 %193, %conv.i.i.11
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %7, i64 %239
  %241 = bitcast float* %240 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %241, align 4, !tbaa !12, !llvm.access.group !16
  %242 = add nsw i32 %193, %conv.i.i.12
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %7, i64 %243
  %245 = bitcast float* %244 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %245, align 4, !tbaa !12, !llvm.access.group !16
  %246 = add nsw i32 %193, %conv.i.i.13
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %7, i64 %247
  %249 = bitcast float* %248 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %249, align 4, !tbaa !12, !llvm.access.group !16
  %250 = add nsw i32 %193, %conv.i.i.14
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %7, i64 %251
  %253 = bitcast float* %252 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %253, align 4, !tbaa !12, !llvm.access.group !16
  %254 = add nsw i32 %193, %conv.i.i.15
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %7, i64 %255
  %257 = bitcast float* %256 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %257, align 4, !tbaa !12, !llvm.access.group !16
  %258 = add nsw i32 %193, %conv.i.i.16
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %7, i64 %259
  %261 = bitcast float* %260 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %261, align 4, !tbaa !12, !llvm.access.group !16
  %262 = add nsw i32 %193, %conv.i.i.17
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float, float* %7, i64 %263
  %265 = bitcast float* %264 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %265, align 4, !tbaa !12, !llvm.access.group !16
  %266 = add nsw i32 %193, %conv.i.i.18
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %7, i64 %267
  %269 = bitcast float* %268 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %269, align 4, !tbaa !12, !llvm.access.group !16
  %270 = add nsw i32 %193, %conv.i.i.19
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %7, i64 %271
  %273 = bitcast float* %272 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %273, align 4, !tbaa !12, !llvm.access.group !16
  %274 = add nsw i32 %193, %conv.i.i.20
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %7, i64 %275
  %277 = bitcast float* %276 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %277, align 4, !tbaa !12, !llvm.access.group !16
  %278 = add nsw i32 %193, %conv.i.i.21
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %7, i64 %279
  %281 = bitcast float* %280 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %281, align 4, !tbaa !12, !llvm.access.group !16
  %282 = add nsw i32 %193, %conv.i.i.22
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds float, float* %7, i64 %283
  %285 = bitcast float* %284 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %285, align 4, !tbaa !12, !llvm.access.group !16
  %286 = add nsw i32 %193, %conv.i.i.23
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %7, i64 %287
  %289 = bitcast float* %288 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %289, align 4, !tbaa !12, !llvm.access.group !16
  %290 = add nsw i32 %193, %conv.i.i.24
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, float* %7, i64 %291
  %293 = bitcast float* %292 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %293, align 4, !tbaa !12, !llvm.access.group !16
  %294 = add nsw i32 %193, %conv.i.i.25
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds float, float* %7, i64 %295
  %297 = bitcast float* %296 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %297, align 4, !tbaa !12, !llvm.access.group !16
  %298 = add nsw i32 %193, %conv.i.i.26
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %7, i64 %299
  %301 = bitcast float* %300 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %301, align 4, !tbaa !12, !llvm.access.group !16
  %302 = add nsw i32 %193, %conv.i.i.27
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %7, i64 %303
  %305 = bitcast float* %304 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %305, align 4, !tbaa !12, !llvm.access.group !16
  %306 = add nsw i32 %193, %conv.i.i.28
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds float, float* %7, i64 %307
  %309 = bitcast float* %308 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %309, align 4, !tbaa !12, !llvm.access.group !16
  %310 = add nsw i32 %193, %conv.i.i.29
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds float, float* %7, i64 %311
  %313 = bitcast float* %312 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %313, align 4, !tbaa !12, !llvm.access.group !16
  %314 = add nsw i32 %193, %conv.i.i.30
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds float, float* %7, i64 %315
  %317 = bitcast float* %316 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %317, align 4, !tbaa !12, !llvm.access.group !16
  %318 = add nsw i32 %193, %conv.i.i.31
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds float, float* %7, i64 %319
  %321 = bitcast float* %320 to <8 x float>*
  store <8 x float> zeroinitializer, <8 x float>* %321, align 4, !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_mm2_kernel1.exit

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %mul.i.i.us = mul nsw i32 %17, %conv2.i.i.us
  %mul4.i.i.us = mul nsw i32 %21, %conv2.i.i.us
  %322 = sext i32 %mul4.i.i.us to i64
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_entry.entry.i.i.us.us:                ; preds = %for.end.r_exit.i.i.loopexit.us.us.1132, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.i.us.preheader ], [ %481, %for.end.r_exit.i.i.loopexit.us.us.1132 ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us
  store float 0.000000e+00, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us = shl i64 %add1.i.i.i.us.us, 32
  %323 = ashr exact i64 %sext.i.i.us.us, 32
  br label %for.body.i.i.us.us

for.end.r_exit.i.i.loopexit.us.us:                ; preds = %for.body.i.i.us.us
  %324 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.1118 = add nuw nsw i64 %324, %mul.i.i.i
  %conv.i.i.us.us.1119 = trunc i64 %add1.i.i.i.us.us.1118 to i32
  %add.i.i.us.us.1120 = add nsw i32 %mul.i.i.us, %conv.i.i.us.us.1119
  %idxprom.i.i.us.us.1121 = sext i32 %add.i.i.us.us.1120 to i64
  %arrayidx.i.i.us.us.1122 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.1121
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1122, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1123 = shl i64 %add1.i.i.i.us.us.1118, 32
  %325 = ashr exact i64 %sext.i.i.us.us.1123, 32
  br label %for.body.i.i.us.us.1131

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %pregion_for_entry.entry.i.i.us.us
  %indvars.iv.next.i.i2.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us ]
  %326 = phi float [ %332, %for.body.i.i.us.us ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us ]
  %327 = add nsw i64 %indvars.iv.next.i.i2.us.us, %322
  %arrayidx7.i.i.us.us = getelementptr inbounds float, float* %10, i64 %327
  %328 = load float, float* %arrayidx7.i.i.us.us, align 4, !tbaa !12
  %mul8.i.i.us.us = fmul float %25, %328
  %329 = mul nsw i64 %indvars.iv.next.i.i2.us.us, %26
  %330 = add nsw i64 %329, %323
  %arrayidx12.i.i.us.us = getelementptr inbounds float, float* %13, i64 %330
  %331 = load float, float* %arrayidx12.i.i.us.us, align 4, !tbaa !12
  %332 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us, float %331, float %326) #2
  store float %332, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i2.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %for.end.r_exit.i.i.loopexit.us.us, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us:               ; preds = %for.end.r_exit.i.i.loopexit.us.us.1132
  %333 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %333, 1
  %mul.i.i.us.1 = mul nsw i32 %17, %conv2.i.i.us.1
  %mul4.i.i.us.1 = mul nsw i32 %21, %conv2.i.i.us.1
  %334 = sext i32 %mul4.i.i.us.1 to i64
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader133
  %_local_id_y.i.0 = phi i64 [ %335, %pregion_for_entry.pregion_for_init.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader133 ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %mul.i.i = mul nsw i32 %17, %conv2.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %7, i64 %idxprom.i.i
  store float 0.000000e+00, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.1
  store float 0.000000e+00, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.2 = add nsw i32 %mul.i.i, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.2
  store float 0.000000e+00, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.3 = add nsw i32 %mul.i.i, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.3
  store float 0.000000e+00, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.4 = add nsw i32 %mul.i.i, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.4
  store float 0.000000e+00, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.5 = add nsw i32 %mul.i.i, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.5
  store float 0.000000e+00, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.6 = add nsw i32 %mul.i.i, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.6
  store float 0.000000e+00, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.7 = add nsw i32 %mul.i.i, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.7
  store float 0.000000e+00, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.8 = add nsw i32 %mul.i.i, %conv.i.i.8
  %idxprom.i.i.8 = sext i32 %add.i.i.8 to i64
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.8
  store float 0.000000e+00, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.9 = add nsw i32 %mul.i.i, %conv.i.i.9
  %idxprom.i.i.9 = sext i32 %add.i.i.9 to i64
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.9
  store float 0.000000e+00, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.10 = add nsw i32 %mul.i.i, %conv.i.i.10
  %idxprom.i.i.10 = sext i32 %add.i.i.10 to i64
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.10
  store float 0.000000e+00, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.11 = add nsw i32 %mul.i.i, %conv.i.i.11
  %idxprom.i.i.11 = sext i32 %add.i.i.11 to i64
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.11
  store float 0.000000e+00, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.12 = add nsw i32 %mul.i.i, %conv.i.i.12
  %idxprom.i.i.12 = sext i32 %add.i.i.12 to i64
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.12
  store float 0.000000e+00, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.13 = add nsw i32 %mul.i.i, %conv.i.i.13
  %idxprom.i.i.13 = sext i32 %add.i.i.13 to i64
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.13
  store float 0.000000e+00, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.14 = add nsw i32 %mul.i.i, %conv.i.i.14
  %idxprom.i.i.14 = sext i32 %add.i.i.14 to i64
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.14
  store float 0.000000e+00, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.15 = add nsw i32 %mul.i.i, %conv.i.i.15
  %idxprom.i.i.15 = sext i32 %add.i.i.15 to i64
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.15
  store float 0.000000e+00, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.16 = add nsw i32 %mul.i.i, %conv.i.i.16
  %idxprom.i.i.16 = sext i32 %add.i.i.16 to i64
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.16
  store float 0.000000e+00, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.17 = add nsw i32 %mul.i.i, %conv.i.i.17
  %idxprom.i.i.17 = sext i32 %add.i.i.17 to i64
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.17
  store float 0.000000e+00, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.18 = add nsw i32 %mul.i.i, %conv.i.i.18
  %idxprom.i.i.18 = sext i32 %add.i.i.18 to i64
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.18
  store float 0.000000e+00, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.19 = add nsw i32 %mul.i.i, %conv.i.i.19
  %idxprom.i.i.19 = sext i32 %add.i.i.19 to i64
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.19
  store float 0.000000e+00, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.20 = add nsw i32 %mul.i.i, %conv.i.i.20
  %idxprom.i.i.20 = sext i32 %add.i.i.20 to i64
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.20
  store float 0.000000e+00, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.21 = add nsw i32 %mul.i.i, %conv.i.i.21
  %idxprom.i.i.21 = sext i32 %add.i.i.21 to i64
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.21
  store float 0.000000e+00, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.22 = add nsw i32 %mul.i.i, %conv.i.i.22
  %idxprom.i.i.22 = sext i32 %add.i.i.22 to i64
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.22
  store float 0.000000e+00, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.23 = add nsw i32 %mul.i.i, %conv.i.i.23
  %idxprom.i.i.23 = sext i32 %add.i.i.23 to i64
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.23
  store float 0.000000e+00, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.24 = add nsw i32 %mul.i.i, %conv.i.i.24
  %idxprom.i.i.24 = sext i32 %add.i.i.24 to i64
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.24
  store float 0.000000e+00, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.25 = add nsw i32 %mul.i.i, %conv.i.i.25
  %idxprom.i.i.25 = sext i32 %add.i.i.25 to i64
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.25
  store float 0.000000e+00, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.26 = add nsw i32 %mul.i.i, %conv.i.i.26
  %idxprom.i.i.26 = sext i32 %add.i.i.26 to i64
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.26
  store float 0.000000e+00, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.27 = add nsw i32 %mul.i.i, %conv.i.i.27
  %idxprom.i.i.27 = sext i32 %add.i.i.27 to i64
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.27
  store float 0.000000e+00, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.28 = add nsw i32 %mul.i.i, %conv.i.i.28
  %idxprom.i.i.28 = sext i32 %add.i.i.28 to i64
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.28
  store float 0.000000e+00, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.29 = add nsw i32 %mul.i.i, %conv.i.i.29
  %idxprom.i.i.29 = sext i32 %add.i.i.29 to i64
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.29
  store float 0.000000e+00, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.30 = add nsw i32 %mul.i.i, %conv.i.i.30
  %idxprom.i.i.30 = sext i32 %add.i.i.30 to i64
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.30
  store float 0.000000e+00, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.31 = add nsw i32 %mul.i.i, %conv.i.i.31
  %idxprom.i.i.31 = sext i32 %add.i.i.31 to i64
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.31
  store float 0.000000e+00, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %335 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond30.not = icmp eq i64 %335, 8
  br i1 %exitcond30.not, label %_pocl_kernel_mm2_kernel1.exit.loopexit134, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !27

_pocl_kernel_mm2_kernel1.exit.loopexit:           ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1
  br label %_pocl_kernel_mm2_kernel1.exit

_pocl_kernel_mm2_kernel1.exit.loopexit134:        ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %_pocl_kernel_mm2_kernel1.exit

_pocl_kernel_mm2_kernel1.exit:                    ; preds = %_pocl_kernel_mm2_kernel1.exit.loopexit134, %_pocl_kernel_mm2_kernel1.exit.loopexit, %vector.body
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1, %pregion_for_end.i.i.us-lcssa.us.us
  %_local_id_x.i.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us ], [ %473, %for.end.r_exit.i.i.loopexit.us.us.1.1 ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1 = shl i64 %add1.i.i.i.us.us.1, 32
  %336 = ashr exact i64 %sext.i.i.us.us.1, 32
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1
  %indvars.iv.next.i.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1 ]
  %337 = phi float [ %343, %for.body.i.i.us.us.1 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.1 ]
  %338 = add nsw i64 %indvars.iv.next.i.i2.us.us.1, %334
  %arrayidx7.i.i.us.us.1 = getelementptr inbounds float, float* %10, i64 %338
  %339 = load float, float* %arrayidx7.i.i.us.us.1, align 4, !tbaa !12
  %mul8.i.i.us.us.1 = fmul float %25, %339
  %340 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1, %26
  %341 = add nsw i64 %340, %336
  %arrayidx12.i.i.us.us.1 = getelementptr inbounds float, float* %13, i64 %341
  %342 = load float, float* %arrayidx12.i.i.us.us.1, align 4, !tbaa !12
  %343 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.1, float %342, float %337) #2
  store float %343, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %for.end.r_exit.i.i.loopexit.us.us.1, label %for.body.i.i.us.us.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1:              ; preds = %for.body.i.i.us.us.1
  %344 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %344, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %add.i.i.us.us.1.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.1.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.1.1 = shl i64 %add1.i.i.i.us.us.1.1, 32
  %345 = ashr exact i64 %sext.i.i.us.us.1.1, 32
  br label %for.body.i.i.us.us.1.1

pregion_for_end.i.i.us-lcssa.us.us.1:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1
  %346 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %346, 2
  %mul.i.i.us.2 = mul nsw i32 %17, %conv2.i.i.us.2
  %mul4.i.i.us.2 = mul nsw i32 %21, %conv2.i.i.us.2
  %347 = sext i32 %mul4.i.i.us.2 to i64
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1, %pregion_for_end.i.i.us-lcssa.us.us.1
  %_local_id_x.i.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.1 ], [ %465, %for.end.r_exit.i.i.loopexit.us.us.2.1 ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.2
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2 = shl i64 %add1.i.i.i.us.us.2, 32
  %348 = ashr exact i64 %sext.i.i.us.us.2, 32
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2
  %indvars.iv.next.i.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2 ]
  %349 = phi float [ %355, %for.body.i.i.us.us.2 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.2 ]
  %350 = add nsw i64 %indvars.iv.next.i.i2.us.us.2, %347
  %arrayidx7.i.i.us.us.2 = getelementptr inbounds float, float* %10, i64 %350
  %351 = load float, float* %arrayidx7.i.i.us.us.2, align 4, !tbaa !12
  %mul8.i.i.us.us.2 = fmul float %25, %351
  %352 = mul nsw i64 %indvars.iv.next.i.i2.us.us.2, %26
  %353 = add nsw i64 %352, %348
  %arrayidx12.i.i.us.us.2 = getelementptr inbounds float, float* %13, i64 %353
  %354 = load float, float* %arrayidx12.i.i.us.us.2, align 4, !tbaa !12
  %355 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.2, float %354, float %349) #2
  store float %355, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %for.end.r_exit.i.i.loopexit.us.us.2, label %for.body.i.i.us.us.2, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2:              ; preds = %for.body.i.i.us.us.2
  %356 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %356, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %add.i.i.us.us.2.1 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.2.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.2.1 = shl i64 %add1.i.i.i.us.us.2.1, 32
  %357 = ashr exact i64 %sext.i.i.us.us.2.1, 32
  br label %for.body.i.i.us.us.2.1

pregion_for_end.i.i.us-lcssa.us.us.2:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1
  %358 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %358, 3
  %mul.i.i.us.3 = mul nsw i32 %17, %conv2.i.i.us.3
  %mul4.i.i.us.3 = mul nsw i32 %21, %conv2.i.i.us.3
  %359 = sext i32 %mul4.i.i.us.3 to i64
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1, %pregion_for_end.i.i.us-lcssa.us.us.2
  %_local_id_x.i.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.2 ], [ %457, %for.end.r_exit.i.i.loopexit.us.us.3.1 ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.3
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3 = shl i64 %add1.i.i.i.us.us.3, 32
  %360 = ashr exact i64 %sext.i.i.us.us.3, 32
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3
  %indvars.iv.next.i.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3 ]
  %361 = phi float [ %367, %for.body.i.i.us.us.3 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.3 ]
  %362 = add nsw i64 %indvars.iv.next.i.i2.us.us.3, %359
  %arrayidx7.i.i.us.us.3 = getelementptr inbounds float, float* %10, i64 %362
  %363 = load float, float* %arrayidx7.i.i.us.us.3, align 4, !tbaa !12
  %mul8.i.i.us.us.3 = fmul float %25, %363
  %364 = mul nsw i64 %indvars.iv.next.i.i2.us.us.3, %26
  %365 = add nsw i64 %364, %360
  %arrayidx12.i.i.us.us.3 = getelementptr inbounds float, float* %13, i64 %365
  %366 = load float, float* %arrayidx12.i.i.us.us.3, align 4, !tbaa !12
  %367 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.3, float %366, float %361) #2
  store float %367, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %for.end.r_exit.i.i.loopexit.us.us.3, label %for.body.i.i.us.us.3, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3:              ; preds = %for.body.i.i.us.us.3
  %368 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %368, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %add.i.i.us.us.3.1 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.3.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.3.1 = shl i64 %add1.i.i.i.us.us.3.1, 32
  %369 = ashr exact i64 %sext.i.i.us.us.3.1, 32
  br label %for.body.i.i.us.us.3.1

pregion_for_end.i.i.us-lcssa.us.us.3:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1
  %370 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %370, 4
  %mul.i.i.us.4 = mul nsw i32 %17, %conv2.i.i.us.4
  %mul4.i.i.us.4 = mul nsw i32 %21, %conv2.i.i.us.4
  %371 = sext i32 %mul4.i.i.us.4 to i64
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1, %pregion_for_end.i.i.us-lcssa.us.us.3
  %_local_id_x.i.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.3 ], [ %449, %for.end.r_exit.i.i.loopexit.us.us.4.1 ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.4
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4 = shl i64 %add1.i.i.i.us.us.4, 32
  %372 = ashr exact i64 %sext.i.i.us.us.4, 32
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4
  %indvars.iv.next.i.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4 ]
  %373 = phi float [ %379, %for.body.i.i.us.us.4 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.4 ]
  %374 = add nsw i64 %indvars.iv.next.i.i2.us.us.4, %371
  %arrayidx7.i.i.us.us.4 = getelementptr inbounds float, float* %10, i64 %374
  %375 = load float, float* %arrayidx7.i.i.us.us.4, align 4, !tbaa !12
  %mul8.i.i.us.us.4 = fmul float %25, %375
  %376 = mul nsw i64 %indvars.iv.next.i.i2.us.us.4, %26
  %377 = add nsw i64 %376, %372
  %arrayidx12.i.i.us.us.4 = getelementptr inbounds float, float* %13, i64 %377
  %378 = load float, float* %arrayidx12.i.i.us.us.4, align 4, !tbaa !12
  %379 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.4, float %378, float %373) #2
  store float %379, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %for.end.r_exit.i.i.loopexit.us.us.4, label %for.body.i.i.us.us.4, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4:              ; preds = %for.body.i.i.us.us.4
  %380 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %380, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %add.i.i.us.us.4.1 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.4.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.4.1 = shl i64 %add1.i.i.i.us.us.4.1, 32
  %381 = ashr exact i64 %sext.i.i.us.us.4.1, 32
  br label %for.body.i.i.us.us.4.1

pregion_for_end.i.i.us-lcssa.us.us.4:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1
  %382 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %382, 5
  %mul.i.i.us.5 = mul nsw i32 %17, %conv2.i.i.us.5
  %mul4.i.i.us.5 = mul nsw i32 %21, %conv2.i.i.us.5
  %383 = sext i32 %mul4.i.i.us.5 to i64
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1, %pregion_for_end.i.i.us-lcssa.us.us.4
  %_local_id_x.i.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.4 ], [ %441, %for.end.r_exit.i.i.loopexit.us.us.5.1 ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.5
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5 = shl i64 %add1.i.i.i.us.us.5, 32
  %384 = ashr exact i64 %sext.i.i.us.us.5, 32
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5
  %indvars.iv.next.i.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5 ]
  %385 = phi float [ %391, %for.body.i.i.us.us.5 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.5 ]
  %386 = add nsw i64 %indvars.iv.next.i.i2.us.us.5, %383
  %arrayidx7.i.i.us.us.5 = getelementptr inbounds float, float* %10, i64 %386
  %387 = load float, float* %arrayidx7.i.i.us.us.5, align 4, !tbaa !12
  %mul8.i.i.us.us.5 = fmul float %25, %387
  %388 = mul nsw i64 %indvars.iv.next.i.i2.us.us.5, %26
  %389 = add nsw i64 %388, %384
  %arrayidx12.i.i.us.us.5 = getelementptr inbounds float, float* %13, i64 %389
  %390 = load float, float* %arrayidx12.i.i.us.us.5, align 4, !tbaa !12
  %391 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.5, float %390, float %385) #2
  store float %391, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %for.end.r_exit.i.i.loopexit.us.us.5, label %for.body.i.i.us.us.5, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5:              ; preds = %for.body.i.i.us.us.5
  %392 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %392, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %add.i.i.us.us.5.1 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.5.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.5.1 = shl i64 %add1.i.i.i.us.us.5.1, 32
  %393 = ashr exact i64 %sext.i.i.us.us.5.1, 32
  br label %for.body.i.i.us.us.5.1

pregion_for_end.i.i.us-lcssa.us.us.5:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1
  %394 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %394, 6
  %mul.i.i.us.6 = mul nsw i32 %17, %conv2.i.i.us.6
  %mul4.i.i.us.6 = mul nsw i32 %21, %conv2.i.i.us.6
  %395 = sext i32 %mul4.i.i.us.6 to i64
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1, %pregion_for_end.i.i.us-lcssa.us.us.5
  %_local_id_x.i.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.5 ], [ %433, %for.end.r_exit.i.i.loopexit.us.us.6.1 ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.6
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6 = shl i64 %add1.i.i.i.us.us.6, 32
  %396 = ashr exact i64 %sext.i.i.us.us.6, 32
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6
  %indvars.iv.next.i.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6 ]
  %397 = phi float [ %403, %for.body.i.i.us.us.6 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.6 ]
  %398 = add nsw i64 %indvars.iv.next.i.i2.us.us.6, %395
  %arrayidx7.i.i.us.us.6 = getelementptr inbounds float, float* %10, i64 %398
  %399 = load float, float* %arrayidx7.i.i.us.us.6, align 4, !tbaa !12
  %mul8.i.i.us.us.6 = fmul float %25, %399
  %400 = mul nsw i64 %indvars.iv.next.i.i2.us.us.6, %26
  %401 = add nsw i64 %400, %396
  %arrayidx12.i.i.us.us.6 = getelementptr inbounds float, float* %13, i64 %401
  %402 = load float, float* %arrayidx12.i.i.us.us.6, align 4, !tbaa !12
  %403 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.6, float %402, float %397) #2
  store float %403, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %for.end.r_exit.i.i.loopexit.us.us.6, label %for.body.i.i.us.us.6, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6:              ; preds = %for.body.i.i.us.us.6
  %404 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %404, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %add.i.i.us.us.6.1 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.6.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.6.1 = shl i64 %add1.i.i.i.us.us.6.1, 32
  %405 = ashr exact i64 %sext.i.i.us.us.6.1, 32
  br label %for.body.i.i.us.us.6.1

pregion_for_end.i.i.us-lcssa.us.us.6:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1
  %406 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %406, 7
  %mul.i.i.us.7 = mul nsw i32 %17, %conv2.i.i.us.7
  %mul4.i.i.us.7 = mul nsw i32 %21, %conv2.i.i.us.7
  %407 = sext i32 %mul4.i.i.us.7 to i64
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1, %pregion_for_end.i.i.us-lcssa.us.us.6
  %_local_id_x.i.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.6 ], [ %425, %for.end.r_exit.i.i.loopexit.us.us.7.1 ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.7
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7 = shl i64 %add1.i.i.i.us.us.7, 32
  %408 = ashr exact i64 %sext.i.i.us.us.7, 32
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7
  %indvars.iv.next.i.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7 ]
  %409 = phi float [ %415, %for.body.i.i.us.us.7 ], [ 0.000000e+00, %pregion_for_entry.entry.i.i.us.us.7 ]
  %410 = add nsw i64 %indvars.iv.next.i.i2.us.us.7, %407
  %arrayidx7.i.i.us.us.7 = getelementptr inbounds float, float* %10, i64 %410
  %411 = load float, float* %arrayidx7.i.i.us.us.7, align 4, !tbaa !12
  %mul8.i.i.us.us.7 = fmul float %25, %411
  %412 = mul nsw i64 %indvars.iv.next.i.i2.us.us.7, %26
  %413 = add nsw i64 %412, %408
  %arrayidx12.i.i.us.us.7 = getelementptr inbounds float, float* %13, i64 %413
  %414 = load float, float* %arrayidx12.i.i.us.us.7, align 4, !tbaa !12
  %415 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.7, float %414, float %409) #2
  store float %415, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %for.end.r_exit.i.i.loopexit.us.us.7, label %for.body.i.i.us.us.7, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7:              ; preds = %for.body.i.i.us.us.7
  %416 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %416, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %add.i.i.us.us.7.1 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.7.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %sext.i.i.us.us.7.1 = shl i64 %add1.i.i.i.us.us.7.1, 32
  %417 = ashr exact i64 %sext.i.i.us.us.7.1, 32
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %for.end.r_exit.i.i.loopexit.us.us.7
  %indvars.iv.next.i.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %418 = phi float [ %424, %for.body.i.i.us.us.7.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %419 = add nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %407
  %arrayidx7.i.i.us.us.7.1 = getelementptr inbounds float, float* %10, i64 %419
  %420 = load float, float* %arrayidx7.i.i.us.us.7.1, align 4, !tbaa !12
  %mul8.i.i.us.us.7.1 = fmul float %25, %420
  %421 = mul nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %26
  %422 = add nsw i64 %421, %417
  %arrayidx12.i.i.us.us.7.1 = getelementptr inbounds float, float* %13, i64 %422
  %423 = load float, float* %arrayidx12.i.i.us.us.7.1, align 4, !tbaa !12
  %424 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.7.1, float %423, float %418) #2
  store float %424, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7.1, label %for.end.r_exit.i.i.loopexit.us.us.7.1, label %for.body.i.i.us.us.7.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7.1:            ; preds = %for.body.i.i.us.us.7.1
  %425 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %425, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_mm2_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !24

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %for.end.r_exit.i.i.loopexit.us.us.6
  %indvars.iv.next.i.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %426 = phi float [ %432, %for.body.i.i.us.us.6.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %427 = add nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %395
  %arrayidx7.i.i.us.us.6.1 = getelementptr inbounds float, float* %10, i64 %427
  %428 = load float, float* %arrayidx7.i.i.us.us.6.1, align 4, !tbaa !12
  %mul8.i.i.us.us.6.1 = fmul float %25, %428
  %429 = mul nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %26
  %430 = add nsw i64 %429, %405
  %arrayidx12.i.i.us.us.6.1 = getelementptr inbounds float, float* %13, i64 %430
  %431 = load float, float* %arrayidx12.i.i.us.us.6.1, align 4, !tbaa !12
  %432 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.6.1, float %431, float %426) #2
  store float %432, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6.1, label %for.end.r_exit.i.i.loopexit.us.us.6.1, label %for.body.i.i.us.us.6.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6.1:            ; preds = %for.body.i.i.us.us.6.1
  %433 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %433, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !24

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %for.end.r_exit.i.i.loopexit.us.us.5
  %indvars.iv.next.i.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %434 = phi float [ %440, %for.body.i.i.us.us.5.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %435 = add nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %383
  %arrayidx7.i.i.us.us.5.1 = getelementptr inbounds float, float* %10, i64 %435
  %436 = load float, float* %arrayidx7.i.i.us.us.5.1, align 4, !tbaa !12
  %mul8.i.i.us.us.5.1 = fmul float %25, %436
  %437 = mul nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %26
  %438 = add nsw i64 %437, %393
  %arrayidx12.i.i.us.us.5.1 = getelementptr inbounds float, float* %13, i64 %438
  %439 = load float, float* %arrayidx12.i.i.us.us.5.1, align 4, !tbaa !12
  %440 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.5.1, float %439, float %434) #2
  store float %440, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5.1, label %for.end.r_exit.i.i.loopexit.us.us.5.1, label %for.body.i.i.us.us.5.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5.1:            ; preds = %for.body.i.i.us.us.5.1
  %441 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %441, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !24

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %for.end.r_exit.i.i.loopexit.us.us.4
  %indvars.iv.next.i.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %442 = phi float [ %448, %for.body.i.i.us.us.4.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %443 = add nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %371
  %arrayidx7.i.i.us.us.4.1 = getelementptr inbounds float, float* %10, i64 %443
  %444 = load float, float* %arrayidx7.i.i.us.us.4.1, align 4, !tbaa !12
  %mul8.i.i.us.us.4.1 = fmul float %25, %444
  %445 = mul nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %26
  %446 = add nsw i64 %445, %381
  %arrayidx12.i.i.us.us.4.1 = getelementptr inbounds float, float* %13, i64 %446
  %447 = load float, float* %arrayidx12.i.i.us.us.4.1, align 4, !tbaa !12
  %448 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.4.1, float %447, float %442) #2
  store float %448, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4.1, label %for.end.r_exit.i.i.loopexit.us.us.4.1, label %for.body.i.i.us.us.4.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4.1:            ; preds = %for.body.i.i.us.us.4.1
  %449 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %449, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !24

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %for.end.r_exit.i.i.loopexit.us.us.3
  %indvars.iv.next.i.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %450 = phi float [ %456, %for.body.i.i.us.us.3.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %451 = add nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %359
  %arrayidx7.i.i.us.us.3.1 = getelementptr inbounds float, float* %10, i64 %451
  %452 = load float, float* %arrayidx7.i.i.us.us.3.1, align 4, !tbaa !12
  %mul8.i.i.us.us.3.1 = fmul float %25, %452
  %453 = mul nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %26
  %454 = add nsw i64 %453, %369
  %arrayidx12.i.i.us.us.3.1 = getelementptr inbounds float, float* %13, i64 %454
  %455 = load float, float* %arrayidx12.i.i.us.us.3.1, align 4, !tbaa !12
  %456 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.3.1, float %455, float %450) #2
  store float %456, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3.1, label %for.end.r_exit.i.i.loopexit.us.us.3.1, label %for.body.i.i.us.us.3.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3.1:            ; preds = %for.body.i.i.us.us.3.1
  %457 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %457, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !24

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %for.end.r_exit.i.i.loopexit.us.us.2
  %indvars.iv.next.i.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %458 = phi float [ %464, %for.body.i.i.us.us.2.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %459 = add nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %347
  %arrayidx7.i.i.us.us.2.1 = getelementptr inbounds float, float* %10, i64 %459
  %460 = load float, float* %arrayidx7.i.i.us.us.2.1, align 4, !tbaa !12
  %mul8.i.i.us.us.2.1 = fmul float %25, %460
  %461 = mul nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %26
  %462 = add nsw i64 %461, %357
  %arrayidx12.i.i.us.us.2.1 = getelementptr inbounds float, float* %13, i64 %462
  %463 = load float, float* %arrayidx12.i.i.us.us.2.1, align 4, !tbaa !12
  %464 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.2.1, float %463, float %458) #2
  store float %464, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2.1, label %for.end.r_exit.i.i.loopexit.us.us.2.1, label %for.body.i.i.us.us.2.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2.1:            ; preds = %for.body.i.i.us.us.2.1
  %465 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %465, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !24

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %for.end.r_exit.i.i.loopexit.us.us.1
  %indvars.iv.next.i.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %466 = phi float [ %472, %for.body.i.i.us.us.1.1 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %467 = add nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %334
  %arrayidx7.i.i.us.us.1.1 = getelementptr inbounds float, float* %10, i64 %467
  %468 = load float, float* %arrayidx7.i.i.us.us.1.1, align 4, !tbaa !12
  %mul8.i.i.us.us.1.1 = fmul float %25, %468
  %469 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %26
  %470 = add nsw i64 %469, %345
  %arrayidx12.i.i.us.us.1.1 = getelementptr inbounds float, float* %13, i64 %470
  %471 = load float, float* %arrayidx12.i.i.us.us.1.1, align 4, !tbaa !12
  %472 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.1.1, float %471, float %466) #2
  store float %472, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1.1, label %for.end.r_exit.i.i.loopexit.us.us.1.1, label %for.body.i.i.us.us.1.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1.1:            ; preds = %for.body.i.i.us.us.1.1
  %473 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %473, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !24

for.body.i.i.us.us.1131:                          ; preds = %for.body.i.i.us.us.1131, %for.end.r_exit.i.i.loopexit.us.us
  %indvars.iv.next.i.i2.us.us.1125 = phi i64 [ %indvars.iv.next.i.i.us.us.1129, %for.body.i.i.us.us.1131 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us ]
  %474 = phi float [ %480, %for.body.i.i.us.us.1131 ], [ 0.000000e+00, %for.end.r_exit.i.i.loopexit.us.us ]
  %475 = add nsw i64 %indvars.iv.next.i.i2.us.us.1125, %322
  %arrayidx7.i.i.us.us.1126 = getelementptr inbounds float, float* %10, i64 %475
  %476 = load float, float* %arrayidx7.i.i.us.us.1126, align 4, !tbaa !12
  %mul8.i.i.us.us.1127 = fmul float %25, %476
  %477 = mul nsw i64 %indvars.iv.next.i.i2.us.us.1125, %26
  %478 = add nsw i64 %477, %325
  %arrayidx12.i.i.us.us.1128 = getelementptr inbounds float, float* %13, i64 %478
  %479 = load float, float* %arrayidx12.i.i.us.us.1128, align 4, !tbaa !12
  %480 = tail call float @llvm.fmuladd.f32(float %mul8.i.i.us.us.1127, float %479, float %474) #2
  store float %480, float* %arrayidx.i.i.us.us.1122, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1129 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1125, 1
  %exitcond.not.i.i.us.us.1130 = icmp eq i64 %indvars.iv.next.i.i.us.us.1129, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1130, label %for.end.r_exit.i.i.loopexit.us.us.1132, label %for.body.i.i.us.us.1131, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1132:           ; preds = %for.body.i.i.us.us.1131
  %481 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %481, 32
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
!10 = !{!"tmp", !"A", !"B", !"ni", !"nj", !"nk", !"nl", !"alpha", !"beta"}
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
