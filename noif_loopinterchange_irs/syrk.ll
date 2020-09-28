; ModuleID = './FG/BCMINMMLBJDBKPEAEILJBDNJAFNJHLMGIDCPP/syrk_kernel/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_syrk_kernel(float* nocapture readonly %0, float* nocapture %1, float %2, float %3, i32 %4, i32 %5, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %6, i64 %7, i64 %8, i64 %9) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %7, 5
  %mul3.i.i = shl i64 %8, 3
  %cmp34.i = icmp sgt i32 %4, 0
  %wide.trip.count.i = zext i32 %4 to i64
  br i1 %cmp34.i, label %pregion_for_entry.pregion_for_init.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.preheader

pregion_for_entry.pregion_for_init.i.preheader:   ; preds = %10
  %conv.i = trunc i64 %mul.i.i to i32
  %11 = trunc i64 %mul.i.i to i32
  %conv.i.1 = or i32 %11, 1
  %12 = trunc i64 %mul.i.i to i32
  %conv.i.2 = or i32 %12, 2
  %13 = trunc i64 %mul.i.i to i32
  %conv.i.3 = or i32 %13, 3
  %14 = trunc i64 %mul.i.i to i32
  %conv.i.4 = or i32 %14, 4
  %15 = trunc i64 %mul.i.i to i32
  %conv.i.5 = or i32 %15, 5
  %16 = trunc i64 %mul.i.i to i32
  %conv.i.6 = or i32 %16, 6
  %17 = trunc i64 %mul.i.i to i32
  %conv.i.7 = or i32 %17, 7
  %18 = trunc i64 %mul.i.i to i32
  %conv.i.8 = or i32 %18, 8
  %19 = trunc i64 %mul.i.i to i32
  %conv.i.9 = or i32 %19, 9
  %20 = trunc i64 %mul.i.i to i32
  %conv.i.10 = or i32 %20, 10
  %21 = trunc i64 %mul.i.i to i32
  %conv.i.11 = or i32 %21, 11
  %22 = trunc i64 %mul.i.i to i32
  %conv.i.12 = or i32 %22, 12
  %23 = trunc i64 %mul.i.i to i32
  %conv.i.13 = or i32 %23, 13
  %24 = trunc i64 %mul.i.i to i32
  %conv.i.14 = or i32 %24, 14
  %25 = trunc i64 %mul.i.i to i32
  %conv.i.15 = or i32 %25, 15
  %26 = trunc i64 %mul.i.i to i32
  %conv.i.16 = or i32 %26, 16
  %27 = trunc i64 %mul.i.i to i32
  %conv.i.17 = or i32 %27, 17
  %28 = trunc i64 %mul.i.i to i32
  %conv.i.18 = or i32 %28, 18
  %29 = trunc i64 %mul.i.i to i32
  %conv.i.19 = or i32 %29, 19
  %30 = trunc i64 %mul.i.i to i32
  %conv.i.20 = or i32 %30, 20
  %31 = trunc i64 %mul.i.i to i32
  %conv.i.21 = or i32 %31, 21
  %32 = trunc i64 %mul.i.i to i32
  %conv.i.22 = or i32 %32, 22
  %33 = trunc i64 %mul.i.i to i32
  %conv.i.23 = or i32 %33, 23
  %34 = trunc i64 %mul.i.i to i32
  %conv.i.24 = or i32 %34, 24
  %35 = trunc i64 %mul.i.i to i32
  %conv.i.25 = or i32 %35, 25
  %36 = trunc i64 %mul.i.i to i32
  %conv.i.26 = or i32 %36, 26
  %37 = trunc i64 %mul.i.i to i32
  %conv.i.27 = or i32 %37, 27
  %38 = trunc i64 %mul.i.i to i32
  %conv.i.28 = or i32 %38, 28
  %39 = trunc i64 %mul.i.i to i32
  %conv.i.29 = or i32 %39, 29
  %40 = trunc i64 %mul.i.i to i32
  %conv.i.30 = or i32 %40, 30
  %41 = trunc i64 %mul.i.i to i32
  %conv.i.31 = or i32 %41, 31
  %ident.check = icmp ne i32 %5, 1
  %42 = trunc i64 %8 to i32
  %43 = shl i32 %42, 3
  %44 = add i32 %43, %conv.i
  %45 = icmp eq i32 %44, 2147483640
  %46 = or i1 %ident.check, %45
  %47 = add i32 %43, %conv.i
  %48 = or i32 %47, 2
  %49 = icmp sgt i32 %48, 2147483640
  %50 = or i1 %46, %49
  %51 = add i32 %43, %conv.i
  %52 = or i32 %51, 3
  %53 = icmp sgt i32 %52, 2147483640
  %54 = or i1 %50, %53
  %55 = add i32 %43, %conv.i
  %56 = or i32 %55, 4
  %57 = icmp sgt i32 %56, 2147483640
  %58 = or i1 %54, %57
  %59 = add i32 %43, %conv.i
  %60 = or i32 %59, 5
  %61 = icmp sgt i32 %60, 2147483640
  %62 = or i1 %58, %61
  %63 = add i32 %43, %conv.i
  %64 = or i32 %63, 6
  %65 = icmp sgt i32 %64, 2147483640
  %66 = or i1 %62, %65
  %67 = add i32 %43, %conv.i
  %68 = or i32 %67, 7
  %69 = icmp sgt i32 %68, 2147483640
  %70 = or i1 %66, %69
  %71 = add i32 %43, %conv.i
  %72 = add i32 %71, 9
  %73 = add i32 %71, 16
  %74 = icmp slt i32 %73, %72
  %75 = or i1 %70, %74
  %76 = add i32 %43, %conv.i
  %77 = add i32 %76, 10
  %78 = add i32 %76, 17
  %79 = icmp slt i32 %78, %77
  %80 = or i1 %75, %79
  %81 = add i32 %43, %conv.i
  %82 = add i32 %81, 11
  %83 = add i32 %81, 18
  %84 = icmp slt i32 %83, %82
  %85 = or i1 %80, %84
  %86 = add i32 %43, %conv.i
  %87 = add i32 %86, 12
  %88 = add i32 %86, 19
  %89 = icmp slt i32 %88, %87
  %90 = or i1 %85, %89
  %91 = add i32 %43, %conv.i
  %92 = add i32 %91, 13
  %93 = add i32 %91, 20
  %94 = icmp slt i32 %93, %92
  %95 = or i1 %90, %94
  %96 = add i32 %43, %conv.i
  %97 = add i32 %96, 14
  %98 = add i32 %96, 21
  %99 = icmp slt i32 %98, %97
  %100 = or i1 %95, %99
  %101 = add i32 %43, %conv.i
  %102 = add i32 %101, 15
  %103 = add i32 %101, 22
  %104 = icmp slt i32 %103, %102
  %105 = or i1 %100, %104
  %106 = add i32 %43, %conv.i
  %107 = add i32 %106, 17
  %108 = add i32 %106, 24
  %109 = icmp slt i32 %108, %107
  %110 = or i1 %105, %109
  %111 = add i32 %43, %conv.i
  %112 = add i32 %111, 18
  %113 = add i32 %111, 25
  %114 = icmp slt i32 %113, %112
  %115 = or i1 %110, %114
  %116 = add i32 %43, %conv.i
  %117 = add i32 %116, 19
  %118 = add i32 %116, 26
  %119 = icmp slt i32 %118, %117
  %120 = or i1 %115, %119
  %121 = add i32 %43, %conv.i
  %122 = add i32 %121, 20
  %123 = add i32 %121, 27
  %124 = icmp slt i32 %123, %122
  %125 = or i1 %120, %124
  %126 = add i32 %43, %conv.i
  %127 = add i32 %126, 21
  %128 = add i32 %126, 28
  %129 = icmp slt i32 %128, %127
  %130 = or i1 %125, %129
  %131 = add i32 %43, %conv.i
  %132 = add i32 %131, 22
  %133 = add i32 %131, 29
  %134 = icmp slt i32 %133, %132
  %135 = or i1 %130, %134
  %136 = add i32 %43, %conv.i
  %137 = add i32 %136, 23
  %138 = add i32 %136, 30
  %139 = icmp slt i32 %138, %137
  %140 = or i1 %135, %139
  %141 = add i32 %43, %conv.i
  %142 = add i32 %141, 25
  %143 = add i32 %141, 32
  %144 = icmp slt i32 %143, %142
  %145 = or i1 %140, %144
  %146 = add i32 %43, %conv.i
  %147 = add i32 %146, 26
  %148 = add i32 %146, 33
  %149 = icmp slt i32 %148, %147
  %150 = or i1 %145, %149
  %151 = add i32 %43, %conv.i
  %152 = add i32 %151, 27
  %153 = add i32 %151, 34
  %154 = icmp slt i32 %153, %152
  %155 = or i1 %150, %154
  %156 = add i32 %43, %conv.i
  %157 = add i32 %156, 28
  %158 = add i32 %156, 35
  %159 = icmp slt i32 %158, %157
  %160 = or i1 %155, %159
  %161 = add i32 %43, %conv.i
  %162 = add i32 %161, 29
  %163 = add i32 %161, 36
  %164 = icmp slt i32 %163, %162
  %165 = or i1 %160, %164
  %166 = add i32 %43, %conv.i
  %167 = add i32 %166, 30
  %168 = add i32 %166, 37
  %169 = icmp slt i32 %168, %167
  %170 = or i1 %165, %169
  %171 = add i32 %43, %conv.i
  %172 = add i32 %171, 31
  %173 = add i32 %171, 38
  %174 = icmp slt i32 %173, %172
  %175 = or i1 %170, %174
  br i1 %175, label %pregion_for_entry.pregion_for_init.i.preheader166, label %vector.ph

pregion_for_entry.pregion_for_init.i.preheader166: ; preds = %pregion_for_entry.pregion_for_init.i.preheader
  br label %pregion_for_entry.pregion_for_init.i

vector.ph:                                        ; preds = %pregion_for_entry.pregion_for_init.i.preheader
  %broadcast.splatinsert = insertelement <8 x float> undef, float %3, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %176 = trunc i64 %mul3.i.i to i32
  %177 = mul nsw i32 %176, %5
  %178 = add nsw i32 %177, %conv.i
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %1, i64 %179
  %181 = bitcast float* %180 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %181, align 4, !tbaa !12, !llvm.access.group !16
  %182 = fmul <8 x float> %wide.load, %broadcast.splat
  %183 = bitcast float* %180 to <8 x float>*
  store <8 x float> %182, <8 x float>* %183, align 4, !tbaa !12, !llvm.access.group !16
  %184 = add nsw i32 %177, %conv.i.1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %1, i64 %185
  %187 = bitcast float* %186 to <8 x float>*
  %wide.load115 = load <8 x float>, <8 x float>* %187, align 4, !tbaa !12, !llvm.access.group !16
  %188 = fmul <8 x float> %wide.load115, %broadcast.splat
  %189 = bitcast float* %186 to <8 x float>*
  store <8 x float> %188, <8 x float>* %189, align 4, !tbaa !12, !llvm.access.group !16
  %190 = add nsw i32 %177, %conv.i.2
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float* %1, i64 %191
  %193 = bitcast float* %192 to <8 x float>*
  %wide.load116 = load <8 x float>, <8 x float>* %193, align 4, !tbaa !12, !llvm.access.group !16
  %194 = fmul <8 x float> %wide.load116, %broadcast.splat
  %195 = bitcast float* %192 to <8 x float>*
  store <8 x float> %194, <8 x float>* %195, align 4, !tbaa !12, !llvm.access.group !16
  %196 = add nsw i32 %177, %conv.i.3
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %1, i64 %197
  %199 = bitcast float* %198 to <8 x float>*
  %wide.load117 = load <8 x float>, <8 x float>* %199, align 4, !tbaa !12, !llvm.access.group !16
  %200 = fmul <8 x float> %wide.load117, %broadcast.splat
  %201 = bitcast float* %198 to <8 x float>*
  store <8 x float> %200, <8 x float>* %201, align 4, !tbaa !12, !llvm.access.group !16
  %202 = add nsw i32 %177, %conv.i.4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %1, i64 %203
  %205 = bitcast float* %204 to <8 x float>*
  %wide.load118 = load <8 x float>, <8 x float>* %205, align 4, !tbaa !12, !llvm.access.group !16
  %206 = fmul <8 x float> %wide.load118, %broadcast.splat
  %207 = bitcast float* %204 to <8 x float>*
  store <8 x float> %206, <8 x float>* %207, align 4, !tbaa !12, !llvm.access.group !16
  %208 = add nsw i32 %177, %conv.i.5
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %1, i64 %209
  %211 = bitcast float* %210 to <8 x float>*
  %wide.load119 = load <8 x float>, <8 x float>* %211, align 4, !tbaa !12, !llvm.access.group !16
  %212 = fmul <8 x float> %wide.load119, %broadcast.splat
  %213 = bitcast float* %210 to <8 x float>*
  store <8 x float> %212, <8 x float>* %213, align 4, !tbaa !12, !llvm.access.group !16
  %214 = add nsw i32 %177, %conv.i.6
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %1, i64 %215
  %217 = bitcast float* %216 to <8 x float>*
  %wide.load120 = load <8 x float>, <8 x float>* %217, align 4, !tbaa !12, !llvm.access.group !16
  %218 = fmul <8 x float> %wide.load120, %broadcast.splat
  %219 = bitcast float* %216 to <8 x float>*
  store <8 x float> %218, <8 x float>* %219, align 4, !tbaa !12, !llvm.access.group !16
  %220 = add nsw i32 %177, %conv.i.7
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, float* %1, i64 %221
  %223 = bitcast float* %222 to <8 x float>*
  %wide.load121 = load <8 x float>, <8 x float>* %223, align 4, !tbaa !12, !llvm.access.group !16
  %224 = fmul <8 x float> %wide.load121, %broadcast.splat
  %225 = bitcast float* %222 to <8 x float>*
  store <8 x float> %224, <8 x float>* %225, align 4, !tbaa !12, !llvm.access.group !16
  %226 = add nsw i32 %177, %conv.i.8
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %1, i64 %227
  %229 = bitcast float* %228 to <8 x float>*
  %wide.load122 = load <8 x float>, <8 x float>* %229, align 4, !tbaa !12, !llvm.access.group !16
  %230 = fmul <8 x float> %wide.load122, %broadcast.splat
  %231 = bitcast float* %228 to <8 x float>*
  store <8 x float> %230, <8 x float>* %231, align 4, !tbaa !12, !llvm.access.group !16
  %232 = add nsw i32 %177, %conv.i.9
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %1, i64 %233
  %235 = bitcast float* %234 to <8 x float>*
  %wide.load123 = load <8 x float>, <8 x float>* %235, align 4, !tbaa !12, !llvm.access.group !16
  %236 = fmul <8 x float> %wide.load123, %broadcast.splat
  %237 = bitcast float* %234 to <8 x float>*
  store <8 x float> %236, <8 x float>* %237, align 4, !tbaa !12, !llvm.access.group !16
  %238 = add nsw i32 %177, %conv.i.10
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %1, i64 %239
  %241 = bitcast float* %240 to <8 x float>*
  %wide.load124 = load <8 x float>, <8 x float>* %241, align 4, !tbaa !12, !llvm.access.group !16
  %242 = fmul <8 x float> %wide.load124, %broadcast.splat
  %243 = bitcast float* %240 to <8 x float>*
  store <8 x float> %242, <8 x float>* %243, align 4, !tbaa !12, !llvm.access.group !16
  %244 = add nsw i32 %177, %conv.i.11
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %1, i64 %245
  %247 = bitcast float* %246 to <8 x float>*
  %wide.load125 = load <8 x float>, <8 x float>* %247, align 4, !tbaa !12, !llvm.access.group !16
  %248 = fmul <8 x float> %wide.load125, %broadcast.splat
  %249 = bitcast float* %246 to <8 x float>*
  store <8 x float> %248, <8 x float>* %249, align 4, !tbaa !12, !llvm.access.group !16
  %250 = add nsw i32 %177, %conv.i.12
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %1, i64 %251
  %253 = bitcast float* %252 to <8 x float>*
  %wide.load126 = load <8 x float>, <8 x float>* %253, align 4, !tbaa !12, !llvm.access.group !16
  %254 = fmul <8 x float> %wide.load126, %broadcast.splat
  %255 = bitcast float* %252 to <8 x float>*
  store <8 x float> %254, <8 x float>* %255, align 4, !tbaa !12, !llvm.access.group !16
  %256 = add nsw i32 %177, %conv.i.13
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %1, i64 %257
  %259 = bitcast float* %258 to <8 x float>*
  %wide.load127 = load <8 x float>, <8 x float>* %259, align 4, !tbaa !12, !llvm.access.group !16
  %260 = fmul <8 x float> %wide.load127, %broadcast.splat
  %261 = bitcast float* %258 to <8 x float>*
  store <8 x float> %260, <8 x float>* %261, align 4, !tbaa !12, !llvm.access.group !16
  %262 = add nsw i32 %177, %conv.i.14
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float, float* %1, i64 %263
  %265 = bitcast float* %264 to <8 x float>*
  %wide.load128 = load <8 x float>, <8 x float>* %265, align 4, !tbaa !12, !llvm.access.group !16
  %266 = fmul <8 x float> %wide.load128, %broadcast.splat
  %267 = bitcast float* %264 to <8 x float>*
  store <8 x float> %266, <8 x float>* %267, align 4, !tbaa !12, !llvm.access.group !16
  %268 = add nsw i32 %177, %conv.i.15
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds float, float* %1, i64 %269
  %271 = bitcast float* %270 to <8 x float>*
  %wide.load129 = load <8 x float>, <8 x float>* %271, align 4, !tbaa !12, !llvm.access.group !16
  %272 = fmul <8 x float> %wide.load129, %broadcast.splat
  %273 = bitcast float* %270 to <8 x float>*
  store <8 x float> %272, <8 x float>* %273, align 4, !tbaa !12, !llvm.access.group !16
  %274 = add nsw i32 %177, %conv.i.16
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %1, i64 %275
  %277 = bitcast float* %276 to <8 x float>*
  %wide.load130 = load <8 x float>, <8 x float>* %277, align 4, !tbaa !12, !llvm.access.group !16
  %278 = fmul <8 x float> %wide.load130, %broadcast.splat
  %279 = bitcast float* %276 to <8 x float>*
  store <8 x float> %278, <8 x float>* %279, align 4, !tbaa !12, !llvm.access.group !16
  %280 = add nsw i32 %177, %conv.i.17
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds float, float* %1, i64 %281
  %283 = bitcast float* %282 to <8 x float>*
  %wide.load131 = load <8 x float>, <8 x float>* %283, align 4, !tbaa !12, !llvm.access.group !16
  %284 = fmul <8 x float> %wide.load131, %broadcast.splat
  %285 = bitcast float* %282 to <8 x float>*
  store <8 x float> %284, <8 x float>* %285, align 4, !tbaa !12, !llvm.access.group !16
  %286 = add nsw i32 %177, %conv.i.18
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %1, i64 %287
  %289 = bitcast float* %288 to <8 x float>*
  %wide.load132 = load <8 x float>, <8 x float>* %289, align 4, !tbaa !12, !llvm.access.group !16
  %290 = fmul <8 x float> %wide.load132, %broadcast.splat
  %291 = bitcast float* %288 to <8 x float>*
  store <8 x float> %290, <8 x float>* %291, align 4, !tbaa !12, !llvm.access.group !16
  %292 = add nsw i32 %177, %conv.i.19
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float, float* %1, i64 %293
  %295 = bitcast float* %294 to <8 x float>*
  %wide.load133 = load <8 x float>, <8 x float>* %295, align 4, !tbaa !12, !llvm.access.group !16
  %296 = fmul <8 x float> %wide.load133, %broadcast.splat
  %297 = bitcast float* %294 to <8 x float>*
  store <8 x float> %296, <8 x float>* %297, align 4, !tbaa !12, !llvm.access.group !16
  %298 = add nsw i32 %177, %conv.i.20
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %1, i64 %299
  %301 = bitcast float* %300 to <8 x float>*
  %wide.load134 = load <8 x float>, <8 x float>* %301, align 4, !tbaa !12, !llvm.access.group !16
  %302 = fmul <8 x float> %wide.load134, %broadcast.splat
  %303 = bitcast float* %300 to <8 x float>*
  store <8 x float> %302, <8 x float>* %303, align 4, !tbaa !12, !llvm.access.group !16
  %304 = add nsw i32 %177, %conv.i.21
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds float, float* %1, i64 %305
  %307 = bitcast float* %306 to <8 x float>*
  %wide.load135 = load <8 x float>, <8 x float>* %307, align 4, !tbaa !12, !llvm.access.group !16
  %308 = fmul <8 x float> %wide.load135, %broadcast.splat
  %309 = bitcast float* %306 to <8 x float>*
  store <8 x float> %308, <8 x float>* %309, align 4, !tbaa !12, !llvm.access.group !16
  %310 = add nsw i32 %177, %conv.i.22
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds float, float* %1, i64 %311
  %313 = bitcast float* %312 to <8 x float>*
  %wide.load136 = load <8 x float>, <8 x float>* %313, align 4, !tbaa !12, !llvm.access.group !16
  %314 = fmul <8 x float> %wide.load136, %broadcast.splat
  %315 = bitcast float* %312 to <8 x float>*
  store <8 x float> %314, <8 x float>* %315, align 4, !tbaa !12, !llvm.access.group !16
  %316 = add nsw i32 %177, %conv.i.23
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds float, float* %1, i64 %317
  %319 = bitcast float* %318 to <8 x float>*
  %wide.load137 = load <8 x float>, <8 x float>* %319, align 4, !tbaa !12, !llvm.access.group !16
  %320 = fmul <8 x float> %wide.load137, %broadcast.splat
  %321 = bitcast float* %318 to <8 x float>*
  store <8 x float> %320, <8 x float>* %321, align 4, !tbaa !12, !llvm.access.group !16
  %322 = add nsw i32 %177, %conv.i.24
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds float, float* %1, i64 %323
  %325 = bitcast float* %324 to <8 x float>*
  %wide.load138 = load <8 x float>, <8 x float>* %325, align 4, !tbaa !12, !llvm.access.group !16
  %326 = fmul <8 x float> %wide.load138, %broadcast.splat
  %327 = bitcast float* %324 to <8 x float>*
  store <8 x float> %326, <8 x float>* %327, align 4, !tbaa !12, !llvm.access.group !16
  %328 = add nsw i32 %177, %conv.i.25
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds float, float* %1, i64 %329
  %331 = bitcast float* %330 to <8 x float>*
  %wide.load139 = load <8 x float>, <8 x float>* %331, align 4, !tbaa !12, !llvm.access.group !16
  %332 = fmul <8 x float> %wide.load139, %broadcast.splat
  %333 = bitcast float* %330 to <8 x float>*
  store <8 x float> %332, <8 x float>* %333, align 4, !tbaa !12, !llvm.access.group !16
  %334 = add nsw i32 %177, %conv.i.26
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds float, float* %1, i64 %335
  %337 = bitcast float* %336 to <8 x float>*
  %wide.load140 = load <8 x float>, <8 x float>* %337, align 4, !tbaa !12, !llvm.access.group !16
  %338 = fmul <8 x float> %wide.load140, %broadcast.splat
  %339 = bitcast float* %336 to <8 x float>*
  store <8 x float> %338, <8 x float>* %339, align 4, !tbaa !12, !llvm.access.group !16
  %340 = add nsw i32 %177, %conv.i.27
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds float, float* %1, i64 %341
  %343 = bitcast float* %342 to <8 x float>*
  %wide.load141 = load <8 x float>, <8 x float>* %343, align 4, !tbaa !12, !llvm.access.group !16
  %344 = fmul <8 x float> %wide.load141, %broadcast.splat
  %345 = bitcast float* %342 to <8 x float>*
  store <8 x float> %344, <8 x float>* %345, align 4, !tbaa !12, !llvm.access.group !16
  %346 = add nsw i32 %177, %conv.i.28
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds float, float* %1, i64 %347
  %349 = bitcast float* %348 to <8 x float>*
  %wide.load142 = load <8 x float>, <8 x float>* %349, align 4, !tbaa !12, !llvm.access.group !16
  %350 = fmul <8 x float> %wide.load142, %broadcast.splat
  %351 = bitcast float* %348 to <8 x float>*
  store <8 x float> %350, <8 x float>* %351, align 4, !tbaa !12, !llvm.access.group !16
  %352 = add nsw i32 %177, %conv.i.29
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds float, float* %1, i64 %353
  %355 = bitcast float* %354 to <8 x float>*
  %wide.load143 = load <8 x float>, <8 x float>* %355, align 4, !tbaa !12, !llvm.access.group !16
  %356 = fmul <8 x float> %wide.load143, %broadcast.splat
  %357 = bitcast float* %354 to <8 x float>*
  store <8 x float> %356, <8 x float>* %357, align 4, !tbaa !12, !llvm.access.group !16
  %358 = add nsw i32 %177, %conv.i.30
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds float, float* %1, i64 %359
  %361 = bitcast float* %360 to <8 x float>*
  %wide.load144 = load <8 x float>, <8 x float>* %361, align 4, !tbaa !12, !llvm.access.group !16
  %362 = fmul <8 x float> %wide.load144, %broadcast.splat
  %363 = bitcast float* %360 to <8 x float>*
  store <8 x float> %362, <8 x float>* %363, align 4, !tbaa !12, !llvm.access.group !16
  %364 = add nsw i32 %177, %conv.i.31
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds float, float* %1, i64 %365
  %367 = bitcast float* %366 to <8 x float>*
  %wide.load145 = load <8 x float>, <8 x float>* %367, align 4, !tbaa !12, !llvm.access.group !16
  %368 = fmul <8 x float> %wide.load145, %broadcast.splat
  %369 = bitcast float* %366 to <8 x float>*
  store <8 x float> %368, <8 x float>* %369, align 4, !tbaa !12, !llvm.access.group !16
  br label %syrk_kernel.exit

pregion_for_entry.pregion_for_init.i.us.preheader: ; preds = %10
  %conv2.i.us = trunc i64 %mul3.i.i to i32
  %mul.i.us = mul nsw i32 %conv2.i.us, %5
  %mul5.i.us = mul nsw i32 %conv2.i.us, %4
  %370 = sext i32 %mul5.i.us to i64
  br label %pregion_for_entry.entry.i.us.us

pregion_for_entry.entry.i.us.us:                  ; preds = %for.end.r_exit.i.loopexit.us.us.1165, %pregion_for_entry.pregion_for_init.i.us.preheader
  %_local_id_x.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.us.preheader ], [ %561, %for.end.r_exit.i.loopexit.us.us.1165 ]
  %add1.i.i.us.us = add nuw nsw i64 %_local_id_x.0.us.us, %mul.i.i
  %conv.i.us.us = trunc i64 %add1.i.i.us.us to i32
  %add.i.us.us = add nsw i32 %mul.i.us, %conv.i.us.us
  %idxprom.i.us.us = sext i32 %add.i.us.us to i64
  %arrayidx.i.us.us = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us
  %371 = load float, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us = fmul float %371, %3
  store float %mul3.i.us.us, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us = mul nsw i32 %conv.i.us.us, %4
  %372 = sext i32 %mul10.i.us.us to i64
  br label %for.body.i.us.us

for.end.r_exit.i.loopexit.us.us:                  ; preds = %for.body.i.us.us
  %373 = or i64 %_local_id_x.0.us.us, 1
  %add1.i.i.us.us.1150 = add nuw nsw i64 %373, %mul.i.i
  %conv.i.us.us.1151 = trunc i64 %add1.i.i.us.us.1150 to i32
  %add.i.us.us.1152 = add nsw i32 %mul.i.us, %conv.i.us.us.1151
  %idxprom.i.us.us.1153 = sext i32 %add.i.us.us.1152 to i64
  %arrayidx.i.us.us.1154 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.1153
  %374 = load float, float* %arrayidx.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.1155 = fmul float %374, %3
  store float %mul3.i.us.us.1155, float* %arrayidx.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.1156 = mul nsw i32 %conv.i.us.us.1151, %4
  %375 = sext i32 %mul10.i.us.us.1156 to i64
  br label %for.body.i.us.us.1164

for.body.i.us.us:                                 ; preds = %for.body.i.us.us, %pregion_for_entry.entry.i.us.us
  %indvars.iv.next.i2.us.us = phi i64 [ %indvars.iv.next.i.us.us, %for.body.i.us.us ], [ 0, %pregion_for_entry.entry.i.us.us ]
  %376 = phi float [ %381, %for.body.i.us.us ], [ %mul3.i.us.us, %pregion_for_entry.entry.i.us.us ]
  %377 = add nsw i64 %indvars.iv.next.i2.us.us, %370
  %arrayidx8.i.us.us = getelementptr inbounds float, float* %0, i64 %377
  %378 = load float, float* %arrayidx8.i.us.us, align 4, !tbaa !12
  %mul9.i.us.us = fmul float %378, %2
  %379 = add nsw i64 %indvars.iv.next.i2.us.us, %372
  %arrayidx13.i.us.us = getelementptr inbounds float, float* %0, i64 %379
  %380 = load float, float* %arrayidx13.i.us.us, align 4, !tbaa !12
  %381 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us, float %380, float %376) #2
  store float %381, float* %arrayidx.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.next.i2.us.us, 1
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %for.end.r_exit.i.loopexit.us.us, label %for.body.i.us.us, !llvm.loop !19

pregion_for_end.i.us-lcssa.us.us:                 ; preds = %for.end.r_exit.i.loopexit.us.us.1165
  %382 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.1 = or i32 %382, 1
  %mul.i.us.1 = mul nsw i32 %conv2.i.us.1, %5
  %mul5.i.us.1 = mul nsw i32 %conv2.i.us.1, %4
  %383 = sext i32 %mul5.i.us.1 to i64
  br label %pregion_for_entry.entry.i.us.us.1

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_entry.pregion_for_init.i, %pregion_for_entry.pregion_for_init.i.preheader166
  %_local_id_y.0 = phi i64 [ %416, %pregion_for_entry.pregion_for_init.i ], [ 0, %pregion_for_entry.pregion_for_init.i.preheader166 ]
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %mul.i = mul nsw i32 %conv2.i, %5
  %add.i = add nsw i32 %mul.i, %conv.i
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %1, i64 %idxprom.i
  %384 = load float, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i = fmul float %384, %3
  store float %mul3.i, float* %arrayidx.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.1 = add nsw i32 %mul.i, %conv.i.1
  %idxprom.i.1 = sext i32 %add.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.1
  %385 = load float, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.1 = fmul float %385, %3
  store float %mul3.i.1, float* %arrayidx.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.2 = add nsw i32 %mul.i, %conv.i.2
  %idxprom.i.2 = sext i32 %add.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.2
  %386 = load float, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.2 = fmul float %386, %3
  store float %mul3.i.2, float* %arrayidx.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.3 = add nsw i32 %mul.i, %conv.i.3
  %idxprom.i.3 = sext i32 %add.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.3
  %387 = load float, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.3 = fmul float %387, %3
  store float %mul3.i.3, float* %arrayidx.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.4 = add nsw i32 %mul.i, %conv.i.4
  %idxprom.i.4 = sext i32 %add.i.4 to i64
  %arrayidx.i.4 = getelementptr inbounds float, float* %1, i64 %idxprom.i.4
  %388 = load float, float* %arrayidx.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.4 = fmul float %388, %3
  store float %mul3.i.4, float* %arrayidx.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.5 = add nsw i32 %mul.i, %conv.i.5
  %idxprom.i.5 = sext i32 %add.i.5 to i64
  %arrayidx.i.5 = getelementptr inbounds float, float* %1, i64 %idxprom.i.5
  %389 = load float, float* %arrayidx.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.5 = fmul float %389, %3
  store float %mul3.i.5, float* %arrayidx.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.6 = add nsw i32 %mul.i, %conv.i.6
  %idxprom.i.6 = sext i32 %add.i.6 to i64
  %arrayidx.i.6 = getelementptr inbounds float, float* %1, i64 %idxprom.i.6
  %390 = load float, float* %arrayidx.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.6 = fmul float %390, %3
  store float %mul3.i.6, float* %arrayidx.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.7 = add nsw i32 %mul.i, %conv.i.7
  %idxprom.i.7 = sext i32 %add.i.7 to i64
  %arrayidx.i.7 = getelementptr inbounds float, float* %1, i64 %idxprom.i.7
  %391 = load float, float* %arrayidx.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.7 = fmul float %391, %3
  store float %mul3.i.7, float* %arrayidx.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.8 = add nsw i32 %mul.i, %conv.i.8
  %idxprom.i.8 = sext i32 %add.i.8 to i64
  %arrayidx.i.8 = getelementptr inbounds float, float* %1, i64 %idxprom.i.8
  %392 = load float, float* %arrayidx.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.8 = fmul float %392, %3
  store float %mul3.i.8, float* %arrayidx.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.9 = add nsw i32 %mul.i, %conv.i.9
  %idxprom.i.9 = sext i32 %add.i.9 to i64
  %arrayidx.i.9 = getelementptr inbounds float, float* %1, i64 %idxprom.i.9
  %393 = load float, float* %arrayidx.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.9 = fmul float %393, %3
  store float %mul3.i.9, float* %arrayidx.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.10 = add nsw i32 %mul.i, %conv.i.10
  %idxprom.i.10 = sext i32 %add.i.10 to i64
  %arrayidx.i.10 = getelementptr inbounds float, float* %1, i64 %idxprom.i.10
  %394 = load float, float* %arrayidx.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.10 = fmul float %394, %3
  store float %mul3.i.10, float* %arrayidx.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.11 = add nsw i32 %mul.i, %conv.i.11
  %idxprom.i.11 = sext i32 %add.i.11 to i64
  %arrayidx.i.11 = getelementptr inbounds float, float* %1, i64 %idxprom.i.11
  %395 = load float, float* %arrayidx.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.11 = fmul float %395, %3
  store float %mul3.i.11, float* %arrayidx.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.12 = add nsw i32 %mul.i, %conv.i.12
  %idxprom.i.12 = sext i32 %add.i.12 to i64
  %arrayidx.i.12 = getelementptr inbounds float, float* %1, i64 %idxprom.i.12
  %396 = load float, float* %arrayidx.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.12 = fmul float %396, %3
  store float %mul3.i.12, float* %arrayidx.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.13 = add nsw i32 %mul.i, %conv.i.13
  %idxprom.i.13 = sext i32 %add.i.13 to i64
  %arrayidx.i.13 = getelementptr inbounds float, float* %1, i64 %idxprom.i.13
  %397 = load float, float* %arrayidx.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.13 = fmul float %397, %3
  store float %mul3.i.13, float* %arrayidx.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.14 = add nsw i32 %mul.i, %conv.i.14
  %idxprom.i.14 = sext i32 %add.i.14 to i64
  %arrayidx.i.14 = getelementptr inbounds float, float* %1, i64 %idxprom.i.14
  %398 = load float, float* %arrayidx.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.14 = fmul float %398, %3
  store float %mul3.i.14, float* %arrayidx.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.15 = add nsw i32 %mul.i, %conv.i.15
  %idxprom.i.15 = sext i32 %add.i.15 to i64
  %arrayidx.i.15 = getelementptr inbounds float, float* %1, i64 %idxprom.i.15
  %399 = load float, float* %arrayidx.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.15 = fmul float %399, %3
  store float %mul3.i.15, float* %arrayidx.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.16 = add nsw i32 %mul.i, %conv.i.16
  %idxprom.i.16 = sext i32 %add.i.16 to i64
  %arrayidx.i.16 = getelementptr inbounds float, float* %1, i64 %idxprom.i.16
  %400 = load float, float* %arrayidx.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.16 = fmul float %400, %3
  store float %mul3.i.16, float* %arrayidx.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.17 = add nsw i32 %mul.i, %conv.i.17
  %idxprom.i.17 = sext i32 %add.i.17 to i64
  %arrayidx.i.17 = getelementptr inbounds float, float* %1, i64 %idxprom.i.17
  %401 = load float, float* %arrayidx.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.17 = fmul float %401, %3
  store float %mul3.i.17, float* %arrayidx.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.18 = add nsw i32 %mul.i, %conv.i.18
  %idxprom.i.18 = sext i32 %add.i.18 to i64
  %arrayidx.i.18 = getelementptr inbounds float, float* %1, i64 %idxprom.i.18
  %402 = load float, float* %arrayidx.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.18 = fmul float %402, %3
  store float %mul3.i.18, float* %arrayidx.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.19 = add nsw i32 %mul.i, %conv.i.19
  %idxprom.i.19 = sext i32 %add.i.19 to i64
  %arrayidx.i.19 = getelementptr inbounds float, float* %1, i64 %idxprom.i.19
  %403 = load float, float* %arrayidx.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.19 = fmul float %403, %3
  store float %mul3.i.19, float* %arrayidx.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.20 = add nsw i32 %mul.i, %conv.i.20
  %idxprom.i.20 = sext i32 %add.i.20 to i64
  %arrayidx.i.20 = getelementptr inbounds float, float* %1, i64 %idxprom.i.20
  %404 = load float, float* %arrayidx.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.20 = fmul float %404, %3
  store float %mul3.i.20, float* %arrayidx.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.21 = add nsw i32 %mul.i, %conv.i.21
  %idxprom.i.21 = sext i32 %add.i.21 to i64
  %arrayidx.i.21 = getelementptr inbounds float, float* %1, i64 %idxprom.i.21
  %405 = load float, float* %arrayidx.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.21 = fmul float %405, %3
  store float %mul3.i.21, float* %arrayidx.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.22 = add nsw i32 %mul.i, %conv.i.22
  %idxprom.i.22 = sext i32 %add.i.22 to i64
  %arrayidx.i.22 = getelementptr inbounds float, float* %1, i64 %idxprom.i.22
  %406 = load float, float* %arrayidx.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.22 = fmul float %406, %3
  store float %mul3.i.22, float* %arrayidx.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.23 = add nsw i32 %mul.i, %conv.i.23
  %idxprom.i.23 = sext i32 %add.i.23 to i64
  %arrayidx.i.23 = getelementptr inbounds float, float* %1, i64 %idxprom.i.23
  %407 = load float, float* %arrayidx.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.23 = fmul float %407, %3
  store float %mul3.i.23, float* %arrayidx.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.24 = add nsw i32 %mul.i, %conv.i.24
  %idxprom.i.24 = sext i32 %add.i.24 to i64
  %arrayidx.i.24 = getelementptr inbounds float, float* %1, i64 %idxprom.i.24
  %408 = load float, float* %arrayidx.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.24 = fmul float %408, %3
  store float %mul3.i.24, float* %arrayidx.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.25 = add nsw i32 %mul.i, %conv.i.25
  %idxprom.i.25 = sext i32 %add.i.25 to i64
  %arrayidx.i.25 = getelementptr inbounds float, float* %1, i64 %idxprom.i.25
  %409 = load float, float* %arrayidx.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.25 = fmul float %409, %3
  store float %mul3.i.25, float* %arrayidx.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.26 = add nsw i32 %mul.i, %conv.i.26
  %idxprom.i.26 = sext i32 %add.i.26 to i64
  %arrayidx.i.26 = getelementptr inbounds float, float* %1, i64 %idxprom.i.26
  %410 = load float, float* %arrayidx.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.26 = fmul float %410, %3
  store float %mul3.i.26, float* %arrayidx.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.27 = add nsw i32 %mul.i, %conv.i.27
  %idxprom.i.27 = sext i32 %add.i.27 to i64
  %arrayidx.i.27 = getelementptr inbounds float, float* %1, i64 %idxprom.i.27
  %411 = load float, float* %arrayidx.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.27 = fmul float %411, %3
  store float %mul3.i.27, float* %arrayidx.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.28 = add nsw i32 %mul.i, %conv.i.28
  %idxprom.i.28 = sext i32 %add.i.28 to i64
  %arrayidx.i.28 = getelementptr inbounds float, float* %1, i64 %idxprom.i.28
  %412 = load float, float* %arrayidx.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.28 = fmul float %412, %3
  store float %mul3.i.28, float* %arrayidx.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.29 = add nsw i32 %mul.i, %conv.i.29
  %idxprom.i.29 = sext i32 %add.i.29 to i64
  %arrayidx.i.29 = getelementptr inbounds float, float* %1, i64 %idxprom.i.29
  %413 = load float, float* %arrayidx.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.29 = fmul float %413, %3
  store float %mul3.i.29, float* %arrayidx.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.30 = add nsw i32 %mul.i, %conv.i.30
  %idxprom.i.30 = sext i32 %add.i.30 to i64
  %arrayidx.i.30 = getelementptr inbounds float, float* %1, i64 %idxprom.i.30
  %414 = load float, float* %arrayidx.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.30 = fmul float %414, %3
  store float %mul3.i.30, float* %arrayidx.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.31 = add nsw i32 %mul.i, %conv.i.31
  %idxprom.i.31 = sext i32 %add.i.31 to i64
  %arrayidx.i.31 = getelementptr inbounds float, float* %1, i64 %idxprom.i.31
  %415 = load float, float* %arrayidx.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.31 = fmul float %415, %3
  store float %mul3.i.31, float* %arrayidx.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %416 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond31.not = icmp eq i64 %416, 8
  br i1 %exitcond31.not, label %syrk_kernel.exit.loopexit167, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !21

syrk_kernel.exit.loopexit:                        ; preds = %for.end.r_exit.i.loopexit.us.us.7.1
  br label %syrk_kernel.exit

syrk_kernel.exit.loopexit167:                     ; preds = %pregion_for_entry.pregion_for_init.i
  br label %syrk_kernel.exit

syrk_kernel.exit:                                 ; preds = %syrk_kernel.exit.loopexit167, %syrk_kernel.exit.loopexit, %vector.ph
  ret void

pregion_for_entry.entry.i.us.us.1:                ; preds = %for.end.r_exit.i.loopexit.us.us.1.1, %pregion_for_end.i.us-lcssa.us.us
  %_local_id_x.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us ], [ %554, %for.end.r_exit.i.loopexit.us.us.1.1 ]
  %add1.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.0.us.us.1, %mul.i.i
  %conv.i.us.us.1 = trunc i64 %add1.i.i.us.us.1 to i32
  %add.i.us.us.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1
  %idxprom.i.us.us.1 = sext i32 %add.i.us.us.1 to i64
  %arrayidx.i.us.us.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.1
  %417 = load float, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.1 = fmul float %417, %3
  store float %mul3.i.us.us.1, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.1 = mul nsw i32 %conv.i.us.us.1, %4
  %418 = sext i32 %mul10.i.us.us.1 to i64
  br label %for.body.i.us.us.1

for.body.i.us.us.1:                               ; preds = %for.body.i.us.us.1, %pregion_for_entry.entry.i.us.us.1
  %indvars.iv.next.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1, %for.body.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.us.us.1 ]
  %419 = phi float [ %424, %for.body.i.us.us.1 ], [ %mul3.i.us.us.1, %pregion_for_entry.entry.i.us.us.1 ]
  %420 = add nsw i64 %indvars.iv.next.i2.us.us.1, %383
  %arrayidx8.i.us.us.1 = getelementptr inbounds float, float* %0, i64 %420
  %421 = load float, float* %arrayidx8.i.us.us.1, align 4, !tbaa !12
  %mul9.i.us.us.1 = fmul float %421, %2
  %422 = add nsw i64 %indvars.iv.next.i2.us.us.1, %418
  %arrayidx13.i.us.us.1 = getelementptr inbounds float, float* %0, i64 %422
  %423 = load float, float* %arrayidx13.i.us.us.1, align 4, !tbaa !12
  %424 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.1, float %423, float %419) #2
  store float %424, float* %arrayidx.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1, 1
  %exitcond.not.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1, label %for.end.r_exit.i.loopexit.us.us.1, label %for.body.i.us.us.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.1:                ; preds = %for.body.i.us.us.1
  %425 = or i64 %_local_id_x.0.us.us.1, 1
  %add1.i.i.us.us.1.1 = add nuw nsw i64 %425, %mul.i.i
  %conv.i.us.us.1.1 = trunc i64 %add1.i.i.us.us.1.1 to i32
  %add.i.us.us.1.1 = add nsw i32 %mul.i.us.1, %conv.i.us.us.1.1
  %idxprom.i.us.us.1.1 = sext i32 %add.i.us.us.1.1 to i64
  %arrayidx.i.us.us.1.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.1.1
  %426 = load float, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.1.1 = fmul float %426, %3
  store float %mul3.i.us.us.1.1, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.1.1 = mul nsw i32 %conv.i.us.us.1.1, %4
  %427 = sext i32 %mul10.i.us.us.1.1 to i64
  br label %for.body.i.us.us.1.1

pregion_for_end.i.us-lcssa.us.us.1:               ; preds = %for.end.r_exit.i.loopexit.us.us.1.1
  %428 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.2 = or i32 %428, 2
  %mul.i.us.2 = mul nsw i32 %conv2.i.us.2, %5
  %mul5.i.us.2 = mul nsw i32 %conv2.i.us.2, %4
  %429 = sext i32 %mul5.i.us.2 to i64
  br label %pregion_for_entry.entry.i.us.us.2

pregion_for_entry.entry.i.us.us.2:                ; preds = %for.end.r_exit.i.loopexit.us.us.2.1, %pregion_for_end.i.us-lcssa.us.us.1
  %_local_id_x.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.1 ], [ %547, %for.end.r_exit.i.loopexit.us.us.2.1 ]
  %add1.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.0.us.us.2, %mul.i.i
  %conv.i.us.us.2 = trunc i64 %add1.i.i.us.us.2 to i32
  %add.i.us.us.2 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2
  %idxprom.i.us.us.2 = sext i32 %add.i.us.us.2 to i64
  %arrayidx.i.us.us.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.2
  %430 = load float, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.2 = fmul float %430, %3
  store float %mul3.i.us.us.2, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.2 = mul nsw i32 %conv.i.us.us.2, %4
  %431 = sext i32 %mul10.i.us.us.2 to i64
  br label %for.body.i.us.us.2

for.body.i.us.us.2:                               ; preds = %for.body.i.us.us.2, %pregion_for_entry.entry.i.us.us.2
  %indvars.iv.next.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.us.us.2, %for.body.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.us.us.2 ]
  %432 = phi float [ %437, %for.body.i.us.us.2 ], [ %mul3.i.us.us.2, %pregion_for_entry.entry.i.us.us.2 ]
  %433 = add nsw i64 %indvars.iv.next.i2.us.us.2, %429
  %arrayidx8.i.us.us.2 = getelementptr inbounds float, float* %0, i64 %433
  %434 = load float, float* %arrayidx8.i.us.us.2, align 4, !tbaa !12
  %mul9.i.us.us.2 = fmul float %434, %2
  %435 = add nsw i64 %indvars.iv.next.i2.us.us.2, %431
  %arrayidx13.i.us.us.2 = getelementptr inbounds float, float* %0, i64 %435
  %436 = load float, float* %arrayidx13.i.us.us.2, align 4, !tbaa !12
  %437 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.2, float %436, float %432) #2
  store float %437, float* %arrayidx.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i2.us.us.2, 1
  %exitcond.not.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.us.us.2, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2, label %for.end.r_exit.i.loopexit.us.us.2, label %for.body.i.us.us.2, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.2:                ; preds = %for.body.i.us.us.2
  %438 = or i64 %_local_id_x.0.us.us.2, 1
  %add1.i.i.us.us.2.1 = add nuw nsw i64 %438, %mul.i.i
  %conv.i.us.us.2.1 = trunc i64 %add1.i.i.us.us.2.1 to i32
  %add.i.us.us.2.1 = add nsw i32 %mul.i.us.2, %conv.i.us.us.2.1
  %idxprom.i.us.us.2.1 = sext i32 %add.i.us.us.2.1 to i64
  %arrayidx.i.us.us.2.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.2.1
  %439 = load float, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.2.1 = fmul float %439, %3
  store float %mul3.i.us.us.2.1, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.2.1 = mul nsw i32 %conv.i.us.us.2.1, %4
  %440 = sext i32 %mul10.i.us.us.2.1 to i64
  br label %for.body.i.us.us.2.1

pregion_for_end.i.us-lcssa.us.us.2:               ; preds = %for.end.r_exit.i.loopexit.us.us.2.1
  %441 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.3 = or i32 %441, 3
  %mul.i.us.3 = mul nsw i32 %conv2.i.us.3, %5
  %mul5.i.us.3 = mul nsw i32 %conv2.i.us.3, %4
  %442 = sext i32 %mul5.i.us.3 to i64
  br label %pregion_for_entry.entry.i.us.us.3

pregion_for_entry.entry.i.us.us.3:                ; preds = %for.end.r_exit.i.loopexit.us.us.3.1, %pregion_for_end.i.us-lcssa.us.us.2
  %_local_id_x.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.2 ], [ %540, %for.end.r_exit.i.loopexit.us.us.3.1 ]
  %add1.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.0.us.us.3, %mul.i.i
  %conv.i.us.us.3 = trunc i64 %add1.i.i.us.us.3 to i32
  %add.i.us.us.3 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3
  %idxprom.i.us.us.3 = sext i32 %add.i.us.us.3 to i64
  %arrayidx.i.us.us.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.3
  %443 = load float, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.3 = fmul float %443, %3
  store float %mul3.i.us.us.3, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.3 = mul nsw i32 %conv.i.us.us.3, %4
  %444 = sext i32 %mul10.i.us.us.3 to i64
  br label %for.body.i.us.us.3

for.body.i.us.us.3:                               ; preds = %for.body.i.us.us.3, %pregion_for_entry.entry.i.us.us.3
  %indvars.iv.next.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.us.us.3, %for.body.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.us.us.3 ]
  %445 = phi float [ %450, %for.body.i.us.us.3 ], [ %mul3.i.us.us.3, %pregion_for_entry.entry.i.us.us.3 ]
  %446 = add nsw i64 %indvars.iv.next.i2.us.us.3, %442
  %arrayidx8.i.us.us.3 = getelementptr inbounds float, float* %0, i64 %446
  %447 = load float, float* %arrayidx8.i.us.us.3, align 4, !tbaa !12
  %mul9.i.us.us.3 = fmul float %447, %2
  %448 = add nsw i64 %indvars.iv.next.i2.us.us.3, %444
  %arrayidx13.i.us.us.3 = getelementptr inbounds float, float* %0, i64 %448
  %449 = load float, float* %arrayidx13.i.us.us.3, align 4, !tbaa !12
  %450 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.3, float %449, float %445) #2
  store float %450, float* %arrayidx.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i2.us.us.3, 1
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3, label %for.end.r_exit.i.loopexit.us.us.3, label %for.body.i.us.us.3, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.3:                ; preds = %for.body.i.us.us.3
  %451 = or i64 %_local_id_x.0.us.us.3, 1
  %add1.i.i.us.us.3.1 = add nuw nsw i64 %451, %mul.i.i
  %conv.i.us.us.3.1 = trunc i64 %add1.i.i.us.us.3.1 to i32
  %add.i.us.us.3.1 = add nsw i32 %mul.i.us.3, %conv.i.us.us.3.1
  %idxprom.i.us.us.3.1 = sext i32 %add.i.us.us.3.1 to i64
  %arrayidx.i.us.us.3.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.3.1
  %452 = load float, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.3.1 = fmul float %452, %3
  store float %mul3.i.us.us.3.1, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.3.1 = mul nsw i32 %conv.i.us.us.3.1, %4
  %453 = sext i32 %mul10.i.us.us.3.1 to i64
  br label %for.body.i.us.us.3.1

pregion_for_end.i.us-lcssa.us.us.3:               ; preds = %for.end.r_exit.i.loopexit.us.us.3.1
  %454 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.4 = or i32 %454, 4
  %mul.i.us.4 = mul nsw i32 %conv2.i.us.4, %5
  %mul5.i.us.4 = mul nsw i32 %conv2.i.us.4, %4
  %455 = sext i32 %mul5.i.us.4 to i64
  br label %pregion_for_entry.entry.i.us.us.4

pregion_for_entry.entry.i.us.us.4:                ; preds = %for.end.r_exit.i.loopexit.us.us.4.1, %pregion_for_end.i.us-lcssa.us.us.3
  %_local_id_x.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.3 ], [ %533, %for.end.r_exit.i.loopexit.us.us.4.1 ]
  %add1.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.0.us.us.4, %mul.i.i
  %conv.i.us.us.4 = trunc i64 %add1.i.i.us.us.4 to i32
  %add.i.us.us.4 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4
  %idxprom.i.us.us.4 = sext i32 %add.i.us.us.4 to i64
  %arrayidx.i.us.us.4 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.4
  %456 = load float, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.4 = fmul float %456, %3
  store float %mul3.i.us.us.4, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.4 = mul nsw i32 %conv.i.us.us.4, %4
  %457 = sext i32 %mul10.i.us.us.4 to i64
  br label %for.body.i.us.us.4

for.body.i.us.us.4:                               ; preds = %for.body.i.us.us.4, %pregion_for_entry.entry.i.us.us.4
  %indvars.iv.next.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.us.us.4, %for.body.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.us.us.4 ]
  %458 = phi float [ %463, %for.body.i.us.us.4 ], [ %mul3.i.us.us.4, %pregion_for_entry.entry.i.us.us.4 ]
  %459 = add nsw i64 %indvars.iv.next.i2.us.us.4, %455
  %arrayidx8.i.us.us.4 = getelementptr inbounds float, float* %0, i64 %459
  %460 = load float, float* %arrayidx8.i.us.us.4, align 4, !tbaa !12
  %mul9.i.us.us.4 = fmul float %460, %2
  %461 = add nsw i64 %indvars.iv.next.i2.us.us.4, %457
  %arrayidx13.i.us.us.4 = getelementptr inbounds float, float* %0, i64 %461
  %462 = load float, float* %arrayidx13.i.us.us.4, align 4, !tbaa !12
  %463 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.4, float %462, float %458) #2
  store float %463, float* %arrayidx.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i2.us.us.4, 1
  %exitcond.not.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.us.us.4, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4, label %for.end.r_exit.i.loopexit.us.us.4, label %for.body.i.us.us.4, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.4:                ; preds = %for.body.i.us.us.4
  %464 = or i64 %_local_id_x.0.us.us.4, 1
  %add1.i.i.us.us.4.1 = add nuw nsw i64 %464, %mul.i.i
  %conv.i.us.us.4.1 = trunc i64 %add1.i.i.us.us.4.1 to i32
  %add.i.us.us.4.1 = add nsw i32 %mul.i.us.4, %conv.i.us.us.4.1
  %idxprom.i.us.us.4.1 = sext i32 %add.i.us.us.4.1 to i64
  %arrayidx.i.us.us.4.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.4.1
  %465 = load float, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.4.1 = fmul float %465, %3
  store float %mul3.i.us.us.4.1, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.4.1 = mul nsw i32 %conv.i.us.us.4.1, %4
  %466 = sext i32 %mul10.i.us.us.4.1 to i64
  br label %for.body.i.us.us.4.1

pregion_for_end.i.us-lcssa.us.us.4:               ; preds = %for.end.r_exit.i.loopexit.us.us.4.1
  %467 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.5 = or i32 %467, 5
  %mul.i.us.5 = mul nsw i32 %conv2.i.us.5, %5
  %mul5.i.us.5 = mul nsw i32 %conv2.i.us.5, %4
  %468 = sext i32 %mul5.i.us.5 to i64
  br label %pregion_for_entry.entry.i.us.us.5

pregion_for_entry.entry.i.us.us.5:                ; preds = %for.end.r_exit.i.loopexit.us.us.5.1, %pregion_for_end.i.us-lcssa.us.us.4
  %_local_id_x.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.4 ], [ %526, %for.end.r_exit.i.loopexit.us.us.5.1 ]
  %add1.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.0.us.us.5, %mul.i.i
  %conv.i.us.us.5 = trunc i64 %add1.i.i.us.us.5 to i32
  %add.i.us.us.5 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5
  %idxprom.i.us.us.5 = sext i32 %add.i.us.us.5 to i64
  %arrayidx.i.us.us.5 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.5
  %469 = load float, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.5 = fmul float %469, %3
  store float %mul3.i.us.us.5, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.5 = mul nsw i32 %conv.i.us.us.5, %4
  %470 = sext i32 %mul10.i.us.us.5 to i64
  br label %for.body.i.us.us.5

for.body.i.us.us.5:                               ; preds = %for.body.i.us.us.5, %pregion_for_entry.entry.i.us.us.5
  %indvars.iv.next.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.us.us.5, %for.body.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.us.us.5 ]
  %471 = phi float [ %476, %for.body.i.us.us.5 ], [ %mul3.i.us.us.5, %pregion_for_entry.entry.i.us.us.5 ]
  %472 = add nsw i64 %indvars.iv.next.i2.us.us.5, %468
  %arrayidx8.i.us.us.5 = getelementptr inbounds float, float* %0, i64 %472
  %473 = load float, float* %arrayidx8.i.us.us.5, align 4, !tbaa !12
  %mul9.i.us.us.5 = fmul float %473, %2
  %474 = add nsw i64 %indvars.iv.next.i2.us.us.5, %470
  %arrayidx13.i.us.us.5 = getelementptr inbounds float, float* %0, i64 %474
  %475 = load float, float* %arrayidx13.i.us.us.5, align 4, !tbaa !12
  %476 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.5, float %475, float %471) #2
  store float %476, float* %arrayidx.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i2.us.us.5, 1
  %exitcond.not.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.us.us.5, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5, label %for.end.r_exit.i.loopexit.us.us.5, label %for.body.i.us.us.5, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.5:                ; preds = %for.body.i.us.us.5
  %477 = or i64 %_local_id_x.0.us.us.5, 1
  %add1.i.i.us.us.5.1 = add nuw nsw i64 %477, %mul.i.i
  %conv.i.us.us.5.1 = trunc i64 %add1.i.i.us.us.5.1 to i32
  %add.i.us.us.5.1 = add nsw i32 %mul.i.us.5, %conv.i.us.us.5.1
  %idxprom.i.us.us.5.1 = sext i32 %add.i.us.us.5.1 to i64
  %arrayidx.i.us.us.5.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.5.1
  %478 = load float, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.5.1 = fmul float %478, %3
  store float %mul3.i.us.us.5.1, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.5.1 = mul nsw i32 %conv.i.us.us.5.1, %4
  %479 = sext i32 %mul10.i.us.us.5.1 to i64
  br label %for.body.i.us.us.5.1

pregion_for_end.i.us-lcssa.us.us.5:               ; preds = %for.end.r_exit.i.loopexit.us.us.5.1
  %480 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.6 = or i32 %480, 6
  %mul.i.us.6 = mul nsw i32 %conv2.i.us.6, %5
  %mul5.i.us.6 = mul nsw i32 %conv2.i.us.6, %4
  %481 = sext i32 %mul5.i.us.6 to i64
  br label %pregion_for_entry.entry.i.us.us.6

pregion_for_entry.entry.i.us.us.6:                ; preds = %for.end.r_exit.i.loopexit.us.us.6.1, %pregion_for_end.i.us-lcssa.us.us.5
  %_local_id_x.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.5 ], [ %519, %for.end.r_exit.i.loopexit.us.us.6.1 ]
  %add1.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.0.us.us.6, %mul.i.i
  %conv.i.us.us.6 = trunc i64 %add1.i.i.us.us.6 to i32
  %add.i.us.us.6 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6
  %idxprom.i.us.us.6 = sext i32 %add.i.us.us.6 to i64
  %arrayidx.i.us.us.6 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.6
  %482 = load float, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.6 = fmul float %482, %3
  store float %mul3.i.us.us.6, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.6 = mul nsw i32 %conv.i.us.us.6, %4
  %483 = sext i32 %mul10.i.us.us.6 to i64
  br label %for.body.i.us.us.6

for.body.i.us.us.6:                               ; preds = %for.body.i.us.us.6, %pregion_for_entry.entry.i.us.us.6
  %indvars.iv.next.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.us.us.6, %for.body.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.us.us.6 ]
  %484 = phi float [ %489, %for.body.i.us.us.6 ], [ %mul3.i.us.us.6, %pregion_for_entry.entry.i.us.us.6 ]
  %485 = add nsw i64 %indvars.iv.next.i2.us.us.6, %481
  %arrayidx8.i.us.us.6 = getelementptr inbounds float, float* %0, i64 %485
  %486 = load float, float* %arrayidx8.i.us.us.6, align 4, !tbaa !12
  %mul9.i.us.us.6 = fmul float %486, %2
  %487 = add nsw i64 %indvars.iv.next.i2.us.us.6, %483
  %arrayidx13.i.us.us.6 = getelementptr inbounds float, float* %0, i64 %487
  %488 = load float, float* %arrayidx13.i.us.us.6, align 4, !tbaa !12
  %489 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.6, float %488, float %484) #2
  store float %489, float* %arrayidx.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i2.us.us.6, 1
  %exitcond.not.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.us.us.6, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6, label %for.end.r_exit.i.loopexit.us.us.6, label %for.body.i.us.us.6, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.6:                ; preds = %for.body.i.us.us.6
  %490 = or i64 %_local_id_x.0.us.us.6, 1
  %add1.i.i.us.us.6.1 = add nuw nsw i64 %490, %mul.i.i
  %conv.i.us.us.6.1 = trunc i64 %add1.i.i.us.us.6.1 to i32
  %add.i.us.us.6.1 = add nsw i32 %mul.i.us.6, %conv.i.us.us.6.1
  %idxprom.i.us.us.6.1 = sext i32 %add.i.us.us.6.1 to i64
  %arrayidx.i.us.us.6.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.6.1
  %491 = load float, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.6.1 = fmul float %491, %3
  store float %mul3.i.us.us.6.1, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.6.1 = mul nsw i32 %conv.i.us.us.6.1, %4
  %492 = sext i32 %mul10.i.us.us.6.1 to i64
  br label %for.body.i.us.us.6.1

pregion_for_end.i.us-lcssa.us.us.6:               ; preds = %for.end.r_exit.i.loopexit.us.us.6.1
  %493 = trunc i64 %mul3.i.i to i32
  %conv2.i.us.7 = or i32 %493, 7
  %mul.i.us.7 = mul nsw i32 %conv2.i.us.7, %5
  %mul5.i.us.7 = mul nsw i32 %conv2.i.us.7, %4
  %494 = sext i32 %mul5.i.us.7 to i64
  br label %pregion_for_entry.entry.i.us.us.7

pregion_for_entry.entry.i.us.us.7:                ; preds = %for.end.r_exit.i.loopexit.us.us.7.1, %pregion_for_end.i.us-lcssa.us.us.6
  %_local_id_x.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.us-lcssa.us.us.6 ], [ %512, %for.end.r_exit.i.loopexit.us.us.7.1 ]
  %add1.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.0.us.us.7, %mul.i.i
  %conv.i.us.us.7 = trunc i64 %add1.i.i.us.us.7 to i32
  %add.i.us.us.7 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7
  %idxprom.i.us.us.7 = sext i32 %add.i.us.us.7 to i64
  %arrayidx.i.us.us.7 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.7
  %495 = load float, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.7 = fmul float %495, %3
  store float %mul3.i.us.us.7, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.7 = mul nsw i32 %conv.i.us.us.7, %4
  %496 = sext i32 %mul10.i.us.us.7 to i64
  br label %for.body.i.us.us.7

for.body.i.us.us.7:                               ; preds = %for.body.i.us.us.7, %pregion_for_entry.entry.i.us.us.7
  %indvars.iv.next.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.us.us.7, %for.body.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.us.us.7 ]
  %497 = phi float [ %502, %for.body.i.us.us.7 ], [ %mul3.i.us.us.7, %pregion_for_entry.entry.i.us.us.7 ]
  %498 = add nsw i64 %indvars.iv.next.i2.us.us.7, %494
  %arrayidx8.i.us.us.7 = getelementptr inbounds float, float* %0, i64 %498
  %499 = load float, float* %arrayidx8.i.us.us.7, align 4, !tbaa !12
  %mul9.i.us.us.7 = fmul float %499, %2
  %500 = add nsw i64 %indvars.iv.next.i2.us.us.7, %496
  %arrayidx13.i.us.us.7 = getelementptr inbounds float, float* %0, i64 %500
  %501 = load float, float* %arrayidx13.i.us.us.7, align 4, !tbaa !12
  %502 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.7, float %501, float %497) #2
  store float %502, float* %arrayidx.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i2.us.us.7, 1
  %exitcond.not.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.us.us.7, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7, label %for.end.r_exit.i.loopexit.us.us.7, label %for.body.i.us.us.7, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.7:                ; preds = %for.body.i.us.us.7
  %503 = or i64 %_local_id_x.0.us.us.7, 1
  %add1.i.i.us.us.7.1 = add nuw nsw i64 %503, %mul.i.i
  %conv.i.us.us.7.1 = trunc i64 %add1.i.i.us.us.7.1 to i32
  %add.i.us.us.7.1 = add nsw i32 %mul.i.us.7, %conv.i.us.us.7.1
  %idxprom.i.us.us.7.1 = sext i32 %add.i.us.us.7.1 to i64
  %arrayidx.i.us.us.7.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.7.1
  %504 = load float, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.us.us.7.1 = fmul float %504, %3
  store float %mul3.i.us.us.7.1, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.us.us.7.1 = mul nsw i32 %conv.i.us.us.7.1, %4
  %505 = sext i32 %mul10.i.us.us.7.1 to i64
  br label %for.body.i.us.us.7.1

for.body.i.us.us.7.1:                             ; preds = %for.body.i.us.us.7.1, %for.end.r_exit.i.loopexit.us.us.7
  %indvars.iv.next.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.us.us.7.1, %for.body.i.us.us.7.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.7 ]
  %506 = phi float [ %511, %for.body.i.us.us.7.1 ], [ %mul3.i.us.us.7.1, %for.end.r_exit.i.loopexit.us.us.7 ]
  %507 = add nsw i64 %indvars.iv.next.i2.us.us.7.1, %494
  %arrayidx8.i.us.us.7.1 = getelementptr inbounds float, float* %0, i64 %507
  %508 = load float, float* %arrayidx8.i.us.us.7.1, align 4, !tbaa !12
  %mul9.i.us.us.7.1 = fmul float %508, %2
  %509 = add nsw i64 %indvars.iv.next.i2.us.us.7.1, %505
  %arrayidx13.i.us.us.7.1 = getelementptr inbounds float, float* %0, i64 %509
  %510 = load float, float* %arrayidx13.i.us.us.7.1, align 4, !tbaa !12
  %511 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.7.1, float %510, float %506) #2
  store float %511, float* %arrayidx.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.7.1, 1
  %exitcond.not.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.us.us.7.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.7.1, label %for.end.r_exit.i.loopexit.us.us.7.1, label %for.body.i.us.us.7.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.7.1:              ; preds = %for.body.i.us.us.7.1
  %512 = add nuw nsw i64 %_local_id_x.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %512, 32
  br i1 %exitcond.7.not.1, label %syrk_kernel.exit.loopexit, label %pregion_for_entry.entry.i.us.us.7, !llvm.loop !24

for.body.i.us.us.6.1:                             ; preds = %for.body.i.us.us.6.1, %for.end.r_exit.i.loopexit.us.us.6
  %indvars.iv.next.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.us.us.6.1, %for.body.i.us.us.6.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.6 ]
  %513 = phi float [ %518, %for.body.i.us.us.6.1 ], [ %mul3.i.us.us.6.1, %for.end.r_exit.i.loopexit.us.us.6 ]
  %514 = add nsw i64 %indvars.iv.next.i2.us.us.6.1, %481
  %arrayidx8.i.us.us.6.1 = getelementptr inbounds float, float* %0, i64 %514
  %515 = load float, float* %arrayidx8.i.us.us.6.1, align 4, !tbaa !12
  %mul9.i.us.us.6.1 = fmul float %515, %2
  %516 = add nsw i64 %indvars.iv.next.i2.us.us.6.1, %492
  %arrayidx13.i.us.us.6.1 = getelementptr inbounds float, float* %0, i64 %516
  %517 = load float, float* %arrayidx13.i.us.us.6.1, align 4, !tbaa !12
  %518 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.6.1, float %517, float %513) #2
  store float %518, float* %arrayidx.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.6.1, 1
  %exitcond.not.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.us.us.6.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.6.1, label %for.end.r_exit.i.loopexit.us.us.6.1, label %for.body.i.us.us.6.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.6.1:              ; preds = %for.body.i.us.us.6.1
  %519 = add nuw nsw i64 %_local_id_x.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %519, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.us.us.6, !llvm.loop !24

for.body.i.us.us.5.1:                             ; preds = %for.body.i.us.us.5.1, %for.end.r_exit.i.loopexit.us.us.5
  %indvars.iv.next.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.us.us.5.1, %for.body.i.us.us.5.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.5 ]
  %520 = phi float [ %525, %for.body.i.us.us.5.1 ], [ %mul3.i.us.us.5.1, %for.end.r_exit.i.loopexit.us.us.5 ]
  %521 = add nsw i64 %indvars.iv.next.i2.us.us.5.1, %468
  %arrayidx8.i.us.us.5.1 = getelementptr inbounds float, float* %0, i64 %521
  %522 = load float, float* %arrayidx8.i.us.us.5.1, align 4, !tbaa !12
  %mul9.i.us.us.5.1 = fmul float %522, %2
  %523 = add nsw i64 %indvars.iv.next.i2.us.us.5.1, %479
  %arrayidx13.i.us.us.5.1 = getelementptr inbounds float, float* %0, i64 %523
  %524 = load float, float* %arrayidx13.i.us.us.5.1, align 4, !tbaa !12
  %525 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.5.1, float %524, float %520) #2
  store float %525, float* %arrayidx.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.5.1, 1
  %exitcond.not.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.us.us.5.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.5.1, label %for.end.r_exit.i.loopexit.us.us.5.1, label %for.body.i.us.us.5.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.5.1:              ; preds = %for.body.i.us.us.5.1
  %526 = add nuw nsw i64 %_local_id_x.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %526, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.us.us.5, !llvm.loop !24

for.body.i.us.us.4.1:                             ; preds = %for.body.i.us.us.4.1, %for.end.r_exit.i.loopexit.us.us.4
  %indvars.iv.next.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.us.us.4.1, %for.body.i.us.us.4.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.4 ]
  %527 = phi float [ %532, %for.body.i.us.us.4.1 ], [ %mul3.i.us.us.4.1, %for.end.r_exit.i.loopexit.us.us.4 ]
  %528 = add nsw i64 %indvars.iv.next.i2.us.us.4.1, %455
  %arrayidx8.i.us.us.4.1 = getelementptr inbounds float, float* %0, i64 %528
  %529 = load float, float* %arrayidx8.i.us.us.4.1, align 4, !tbaa !12
  %mul9.i.us.us.4.1 = fmul float %529, %2
  %530 = add nsw i64 %indvars.iv.next.i2.us.us.4.1, %466
  %arrayidx13.i.us.us.4.1 = getelementptr inbounds float, float* %0, i64 %530
  %531 = load float, float* %arrayidx13.i.us.us.4.1, align 4, !tbaa !12
  %532 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.4.1, float %531, float %527) #2
  store float %532, float* %arrayidx.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.4.1, 1
  %exitcond.not.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.us.us.4.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.4.1, label %for.end.r_exit.i.loopexit.us.us.4.1, label %for.body.i.us.us.4.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.4.1:              ; preds = %for.body.i.us.us.4.1
  %533 = add nuw nsw i64 %_local_id_x.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %533, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.us.us.4, !llvm.loop !24

for.body.i.us.us.3.1:                             ; preds = %for.body.i.us.us.3.1, %for.end.r_exit.i.loopexit.us.us.3
  %indvars.iv.next.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.us.us.3.1, %for.body.i.us.us.3.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.3 ]
  %534 = phi float [ %539, %for.body.i.us.us.3.1 ], [ %mul3.i.us.us.3.1, %for.end.r_exit.i.loopexit.us.us.3 ]
  %535 = add nsw i64 %indvars.iv.next.i2.us.us.3.1, %442
  %arrayidx8.i.us.us.3.1 = getelementptr inbounds float, float* %0, i64 %535
  %536 = load float, float* %arrayidx8.i.us.us.3.1, align 4, !tbaa !12
  %mul9.i.us.us.3.1 = fmul float %536, %2
  %537 = add nsw i64 %indvars.iv.next.i2.us.us.3.1, %453
  %arrayidx13.i.us.us.3.1 = getelementptr inbounds float, float* %0, i64 %537
  %538 = load float, float* %arrayidx13.i.us.us.3.1, align 4, !tbaa !12
  %539 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.3.1, float %538, float %534) #2
  store float %539, float* %arrayidx.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.3.1, 1
  %exitcond.not.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.us.us.3.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3.1, label %for.end.r_exit.i.loopexit.us.us.3.1, label %for.body.i.us.us.3.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.3.1:              ; preds = %for.body.i.us.us.3.1
  %540 = add nuw nsw i64 %_local_id_x.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %540, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.us.us.3, !llvm.loop !24

for.body.i.us.us.2.1:                             ; preds = %for.body.i.us.us.2.1, %for.end.r_exit.i.loopexit.us.us.2
  %indvars.iv.next.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.us.us.2.1, %for.body.i.us.us.2.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.2 ]
  %541 = phi float [ %546, %for.body.i.us.us.2.1 ], [ %mul3.i.us.us.2.1, %for.end.r_exit.i.loopexit.us.us.2 ]
  %542 = add nsw i64 %indvars.iv.next.i2.us.us.2.1, %429
  %arrayidx8.i.us.us.2.1 = getelementptr inbounds float, float* %0, i64 %542
  %543 = load float, float* %arrayidx8.i.us.us.2.1, align 4, !tbaa !12
  %mul9.i.us.us.2.1 = fmul float %543, %2
  %544 = add nsw i64 %indvars.iv.next.i2.us.us.2.1, %440
  %arrayidx13.i.us.us.2.1 = getelementptr inbounds float, float* %0, i64 %544
  %545 = load float, float* %arrayidx13.i.us.us.2.1, align 4, !tbaa !12
  %546 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.2.1, float %545, float %541) #2
  store float %546, float* %arrayidx.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.2.1, 1
  %exitcond.not.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.us.us.2.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.2.1, label %for.end.r_exit.i.loopexit.us.us.2.1, label %for.body.i.us.us.2.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.2.1:              ; preds = %for.body.i.us.us.2.1
  %547 = add nuw nsw i64 %_local_id_x.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %547, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.us.us.2, !llvm.loop !24

for.body.i.us.us.1.1:                             ; preds = %for.body.i.us.us.1.1, %for.end.r_exit.i.loopexit.us.us.1
  %indvars.iv.next.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.us.us.1.1, %for.body.i.us.us.1.1 ], [ 0, %for.end.r_exit.i.loopexit.us.us.1 ]
  %548 = phi float [ %553, %for.body.i.us.us.1.1 ], [ %mul3.i.us.us.1.1, %for.end.r_exit.i.loopexit.us.us.1 ]
  %549 = add nsw i64 %indvars.iv.next.i2.us.us.1.1, %383
  %arrayidx8.i.us.us.1.1 = getelementptr inbounds float, float* %0, i64 %549
  %550 = load float, float* %arrayidx8.i.us.us.1.1, align 4, !tbaa !12
  %mul9.i.us.us.1.1 = fmul float %550, %2
  %551 = add nsw i64 %indvars.iv.next.i2.us.us.1.1, %427
  %arrayidx13.i.us.us.1.1 = getelementptr inbounds float, float* %0, i64 %551
  %552 = load float, float* %arrayidx13.i.us.us.1.1, align 4, !tbaa !12
  %553 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.1.1, float %552, float %548) #2
  store float %553, float* %arrayidx.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1.1, 1
  %exitcond.not.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.us.us.1.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1.1, label %for.end.r_exit.i.loopexit.us.us.1.1, label %for.body.i.us.us.1.1, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.1.1:              ; preds = %for.body.i.us.us.1.1
  %554 = add nuw nsw i64 %_local_id_x.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %554, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.us.us.1, !llvm.loop !24

for.body.i.us.us.1164:                            ; preds = %for.body.i.us.us.1164, %for.end.r_exit.i.loopexit.us.us
  %indvars.iv.next.i2.us.us.1158 = phi i64 [ %indvars.iv.next.i.us.us.1162, %for.body.i.us.us.1164 ], [ 0, %for.end.r_exit.i.loopexit.us.us ]
  %555 = phi float [ %560, %for.body.i.us.us.1164 ], [ %mul3.i.us.us.1155, %for.end.r_exit.i.loopexit.us.us ]
  %556 = add nsw i64 %indvars.iv.next.i2.us.us.1158, %370
  %arrayidx8.i.us.us.1159 = getelementptr inbounds float, float* %0, i64 %556
  %557 = load float, float* %arrayidx8.i.us.us.1159, align 4, !tbaa !12
  %mul9.i.us.us.1160 = fmul float %557, %2
  %558 = add nsw i64 %indvars.iv.next.i2.us.us.1158, %375
  %arrayidx13.i.us.us.1161 = getelementptr inbounds float, float* %0, i64 %558
  %559 = load float, float* %arrayidx13.i.us.us.1161, align 4, !tbaa !12
  %560 = tail call float @llvm.fmuladd.f32(float %mul9.i.us.us.1160, float %559, float %555) #2
  store float %560, float* %arrayidx.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.us.1162 = add nuw nsw i64 %indvars.iv.next.i2.us.us.1158, 1
  %exitcond.not.i.us.us.1163 = icmp eq i64 %indvars.iv.next.i.us.us.1162, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1163, label %for.end.r_exit.i.loopexit.us.us.1165, label %for.body.i.us.us.1164, !llvm.loop !19

for.end.r_exit.i.loopexit.us.us.1165:             ; preds = %for.body.i.us.us.1164
  %561 = add nuw nsw i64 %_local_id_x.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %561, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.us.us, !llvm.loop !24
}

; Function Attrs: nounwind
define void @_pocl_kernel_syrk_kernel_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float***
  %7 = load float**, float*** %6, align 8
  %8 = load float*, float** %7, align 8
  %9 = getelementptr i8*, i8** %0, i64 1
  %10 = bitcast i8** %9 to float***
  %11 = load float**, float*** %10, align 8
  %12 = load float*, float** %11, align 8
  %13 = getelementptr i8*, i8** %0, i64 2
  %14 = bitcast i8** %13 to float**
  %15 = load float*, float** %14, align 8
  %16 = load float, float* %15, align 4
  %17 = getelementptr i8*, i8** %0, i64 3
  %18 = bitcast i8** %17 to float**
  %19 = load float*, float** %18, align 8
  %20 = load float, float* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 4
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr i8*, i8** %0, i64 5
  %26 = bitcast i8** %25 to i32**
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp34.i.i = icmp sgt i32 %24, 0
  %wide.trip.count.i.i = zext i32 %24 to i64
  br i1 %cmp34.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

pregion_for_entry.pregion_for_init.i.i.preheader: ; preds = %5
  %conv.i.i = trunc i64 %mul.i.i.i to i32
  %29 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.1 = or i32 %29, 1
  %30 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.2 = or i32 %30, 2
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.3 = or i32 %31, 3
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.4 = or i32 %32, 4
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.5 = or i32 %33, 5
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.6 = or i32 %34, 6
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.7 = or i32 %35, 7
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.8 = or i32 %36, 8
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.9 = or i32 %37, 9
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.10 = or i32 %38, 10
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.11 = or i32 %39, 11
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.12 = or i32 %40, 12
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.13 = or i32 %41, 13
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.14 = or i32 %42, 14
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.15 = or i32 %43, 15
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.16 = or i32 %44, 16
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.17 = or i32 %45, 17
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.18 = or i32 %46, 18
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.19 = or i32 %47, 19
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.20 = or i32 %48, 20
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.21 = or i32 %49, 21
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.22 = or i32 %50, 22
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.23 = or i32 %51, 23
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.24 = or i32 %52, 24
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.25 = or i32 %53, 25
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.26 = or i32 %54, 26
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.27 = or i32 %55, 27
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.28 = or i32 %56, 28
  %57 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.29 = or i32 %57, 29
  %58 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.30 = or i32 %58, 30
  %59 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.31 = or i32 %59, 31
  %ident.check = icmp ne i32 %28, 1
  %60 = trunc i64 %3 to i32
  %61 = shl i32 %60, 3
  %62 = add i32 %61, %conv.i.i
  %63 = icmp eq i32 %62, 2147483640
  %64 = or i1 %ident.check, %63
  %65 = add i32 %61, %conv.i.i
  %66 = or i32 %65, 2
  %67 = icmp sgt i32 %66, 2147483640
  %68 = or i1 %64, %67
  %69 = add i32 %61, %conv.i.i
  %70 = or i32 %69, 3
  %71 = icmp sgt i32 %70, 2147483640
  %72 = or i1 %68, %71
  %73 = add i32 %61, %conv.i.i
  %74 = or i32 %73, 4
  %75 = icmp sgt i32 %74, 2147483640
  %76 = or i1 %72, %75
  %77 = add i32 %61, %conv.i.i
  %78 = or i32 %77, 5
  %79 = icmp sgt i32 %78, 2147483640
  %80 = or i1 %76, %79
  %81 = add i32 %61, %conv.i.i
  %82 = or i32 %81, 6
  %83 = icmp sgt i32 %82, 2147483640
  %84 = or i1 %80, %83
  %85 = add i32 %61, %conv.i.i
  %86 = or i32 %85, 7
  %87 = icmp sgt i32 %86, 2147483640
  %88 = or i1 %84, %87
  %89 = add i32 %61, %conv.i.i
  %90 = add i32 %89, 9
  %91 = add i32 %89, 16
  %92 = icmp slt i32 %91, %90
  %93 = or i1 %88, %92
  %94 = add i32 %61, %conv.i.i
  %95 = add i32 %94, 10
  %96 = add i32 %94, 17
  %97 = icmp slt i32 %96, %95
  %98 = or i1 %93, %97
  %99 = add i32 %61, %conv.i.i
  %100 = add i32 %99, 11
  %101 = add i32 %99, 18
  %102 = icmp slt i32 %101, %100
  %103 = or i1 %98, %102
  %104 = add i32 %61, %conv.i.i
  %105 = add i32 %104, 12
  %106 = add i32 %104, 19
  %107 = icmp slt i32 %106, %105
  %108 = or i1 %103, %107
  %109 = add i32 %61, %conv.i.i
  %110 = add i32 %109, 13
  %111 = add i32 %109, 20
  %112 = icmp slt i32 %111, %110
  %113 = or i1 %108, %112
  %114 = add i32 %61, %conv.i.i
  %115 = add i32 %114, 14
  %116 = add i32 %114, 21
  %117 = icmp slt i32 %116, %115
  %118 = or i1 %113, %117
  %119 = add i32 %61, %conv.i.i
  %120 = add i32 %119, 15
  %121 = add i32 %119, 22
  %122 = icmp slt i32 %121, %120
  %123 = or i1 %118, %122
  %124 = add i32 %61, %conv.i.i
  %125 = add i32 %124, 17
  %126 = add i32 %124, 24
  %127 = icmp slt i32 %126, %125
  %128 = or i1 %123, %127
  %129 = add i32 %61, %conv.i.i
  %130 = add i32 %129, 18
  %131 = add i32 %129, 25
  %132 = icmp slt i32 %131, %130
  %133 = or i1 %128, %132
  %134 = add i32 %61, %conv.i.i
  %135 = add i32 %134, 19
  %136 = add i32 %134, 26
  %137 = icmp slt i32 %136, %135
  %138 = or i1 %133, %137
  %139 = add i32 %61, %conv.i.i
  %140 = add i32 %139, 20
  %141 = add i32 %139, 27
  %142 = icmp slt i32 %141, %140
  %143 = or i1 %138, %142
  %144 = add i32 %61, %conv.i.i
  %145 = add i32 %144, 21
  %146 = add i32 %144, 28
  %147 = icmp slt i32 %146, %145
  %148 = or i1 %143, %147
  %149 = add i32 %61, %conv.i.i
  %150 = add i32 %149, 22
  %151 = add i32 %149, 29
  %152 = icmp slt i32 %151, %150
  %153 = or i1 %148, %152
  %154 = add i32 %61, %conv.i.i
  %155 = add i32 %154, 23
  %156 = add i32 %154, 30
  %157 = icmp slt i32 %156, %155
  %158 = or i1 %153, %157
  %159 = add i32 %61, %conv.i.i
  %160 = add i32 %159, 25
  %161 = add i32 %159, 32
  %162 = icmp slt i32 %161, %160
  %163 = or i1 %158, %162
  %164 = add i32 %61, %conv.i.i
  %165 = add i32 %164, 26
  %166 = add i32 %164, 33
  %167 = icmp slt i32 %166, %165
  %168 = or i1 %163, %167
  %169 = add i32 %61, %conv.i.i
  %170 = add i32 %169, 27
  %171 = add i32 %169, 34
  %172 = icmp slt i32 %171, %170
  %173 = or i1 %168, %172
  %174 = add i32 %61, %conv.i.i
  %175 = add i32 %174, 28
  %176 = add i32 %174, 35
  %177 = icmp slt i32 %176, %175
  %178 = or i1 %173, %177
  %179 = add i32 %61, %conv.i.i
  %180 = add i32 %179, 29
  %181 = add i32 %179, 36
  %182 = icmp slt i32 %181, %180
  %183 = or i1 %178, %182
  %184 = add i32 %61, %conv.i.i
  %185 = add i32 %184, 30
  %186 = add i32 %184, 37
  %187 = icmp slt i32 %186, %185
  %188 = or i1 %183, %187
  %189 = add i32 %61, %conv.i.i
  %190 = add i32 %189, 31
  %191 = add i32 %189, 38
  %192 = icmp slt i32 %191, %190
  %193 = or i1 %188, %192
  br i1 %193, label %pregion_for_entry.pregion_for_init.i.i.preheader166, label %vector.ph

pregion_for_entry.pregion_for_init.i.i.preheader166: ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  br label %pregion_for_entry.pregion_for_init.i.i

vector.ph:                                        ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %broadcast.splatinsert = insertelement <8 x float> undef, float %20, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %194 = trunc i64 %mul3.i.i.i to i32
  %195 = mul nsw i32 %28, %194
  %196 = add nsw i32 %195, %conv.i.i
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %12, i64 %197
  %199 = bitcast float* %198 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %199, align 4, !tbaa !12, !llvm.access.group !16
  %200 = fmul <8 x float> %broadcast.splat, %wide.load
  %201 = bitcast float* %198 to <8 x float>*
  store <8 x float> %200, <8 x float>* %201, align 4, !tbaa !12, !llvm.access.group !16
  %202 = add nsw i32 %195, %conv.i.i.1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %12, i64 %203
  %205 = bitcast float* %204 to <8 x float>*
  %wide.load115 = load <8 x float>, <8 x float>* %205, align 4, !tbaa !12, !llvm.access.group !16
  %206 = fmul <8 x float> %broadcast.splat, %wide.load115
  %207 = bitcast float* %204 to <8 x float>*
  store <8 x float> %206, <8 x float>* %207, align 4, !tbaa !12, !llvm.access.group !16
  %208 = add nsw i32 %195, %conv.i.i.2
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %12, i64 %209
  %211 = bitcast float* %210 to <8 x float>*
  %wide.load116 = load <8 x float>, <8 x float>* %211, align 4, !tbaa !12, !llvm.access.group !16
  %212 = fmul <8 x float> %broadcast.splat, %wide.load116
  %213 = bitcast float* %210 to <8 x float>*
  store <8 x float> %212, <8 x float>* %213, align 4, !tbaa !12, !llvm.access.group !16
  %214 = add nsw i32 %195, %conv.i.i.3
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %12, i64 %215
  %217 = bitcast float* %216 to <8 x float>*
  %wide.load117 = load <8 x float>, <8 x float>* %217, align 4, !tbaa !12, !llvm.access.group !16
  %218 = fmul <8 x float> %broadcast.splat, %wide.load117
  %219 = bitcast float* %216 to <8 x float>*
  store <8 x float> %218, <8 x float>* %219, align 4, !tbaa !12, !llvm.access.group !16
  %220 = add nsw i32 %195, %conv.i.i.4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, float* %12, i64 %221
  %223 = bitcast float* %222 to <8 x float>*
  %wide.load118 = load <8 x float>, <8 x float>* %223, align 4, !tbaa !12, !llvm.access.group !16
  %224 = fmul <8 x float> %broadcast.splat, %wide.load118
  %225 = bitcast float* %222 to <8 x float>*
  store <8 x float> %224, <8 x float>* %225, align 4, !tbaa !12, !llvm.access.group !16
  %226 = add nsw i32 %195, %conv.i.i.5
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %12, i64 %227
  %229 = bitcast float* %228 to <8 x float>*
  %wide.load119 = load <8 x float>, <8 x float>* %229, align 4, !tbaa !12, !llvm.access.group !16
  %230 = fmul <8 x float> %broadcast.splat, %wide.load119
  %231 = bitcast float* %228 to <8 x float>*
  store <8 x float> %230, <8 x float>* %231, align 4, !tbaa !12, !llvm.access.group !16
  %232 = add nsw i32 %195, %conv.i.i.6
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %12, i64 %233
  %235 = bitcast float* %234 to <8 x float>*
  %wide.load120 = load <8 x float>, <8 x float>* %235, align 4, !tbaa !12, !llvm.access.group !16
  %236 = fmul <8 x float> %broadcast.splat, %wide.load120
  %237 = bitcast float* %234 to <8 x float>*
  store <8 x float> %236, <8 x float>* %237, align 4, !tbaa !12, !llvm.access.group !16
  %238 = add nsw i32 %195, %conv.i.i.7
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %12, i64 %239
  %241 = bitcast float* %240 to <8 x float>*
  %wide.load121 = load <8 x float>, <8 x float>* %241, align 4, !tbaa !12, !llvm.access.group !16
  %242 = fmul <8 x float> %broadcast.splat, %wide.load121
  %243 = bitcast float* %240 to <8 x float>*
  store <8 x float> %242, <8 x float>* %243, align 4, !tbaa !12, !llvm.access.group !16
  %244 = add nsw i32 %195, %conv.i.i.8
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %12, i64 %245
  %247 = bitcast float* %246 to <8 x float>*
  %wide.load122 = load <8 x float>, <8 x float>* %247, align 4, !tbaa !12, !llvm.access.group !16
  %248 = fmul <8 x float> %broadcast.splat, %wide.load122
  %249 = bitcast float* %246 to <8 x float>*
  store <8 x float> %248, <8 x float>* %249, align 4, !tbaa !12, !llvm.access.group !16
  %250 = add nsw i32 %195, %conv.i.i.9
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %12, i64 %251
  %253 = bitcast float* %252 to <8 x float>*
  %wide.load123 = load <8 x float>, <8 x float>* %253, align 4, !tbaa !12, !llvm.access.group !16
  %254 = fmul <8 x float> %broadcast.splat, %wide.load123
  %255 = bitcast float* %252 to <8 x float>*
  store <8 x float> %254, <8 x float>* %255, align 4, !tbaa !12, !llvm.access.group !16
  %256 = add nsw i32 %195, %conv.i.i.10
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %12, i64 %257
  %259 = bitcast float* %258 to <8 x float>*
  %wide.load124 = load <8 x float>, <8 x float>* %259, align 4, !tbaa !12, !llvm.access.group !16
  %260 = fmul <8 x float> %broadcast.splat, %wide.load124
  %261 = bitcast float* %258 to <8 x float>*
  store <8 x float> %260, <8 x float>* %261, align 4, !tbaa !12, !llvm.access.group !16
  %262 = add nsw i32 %195, %conv.i.i.11
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float, float* %12, i64 %263
  %265 = bitcast float* %264 to <8 x float>*
  %wide.load125 = load <8 x float>, <8 x float>* %265, align 4, !tbaa !12, !llvm.access.group !16
  %266 = fmul <8 x float> %broadcast.splat, %wide.load125
  %267 = bitcast float* %264 to <8 x float>*
  store <8 x float> %266, <8 x float>* %267, align 4, !tbaa !12, !llvm.access.group !16
  %268 = add nsw i32 %195, %conv.i.i.12
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds float, float* %12, i64 %269
  %271 = bitcast float* %270 to <8 x float>*
  %wide.load126 = load <8 x float>, <8 x float>* %271, align 4, !tbaa !12, !llvm.access.group !16
  %272 = fmul <8 x float> %broadcast.splat, %wide.load126
  %273 = bitcast float* %270 to <8 x float>*
  store <8 x float> %272, <8 x float>* %273, align 4, !tbaa !12, !llvm.access.group !16
  %274 = add nsw i32 %195, %conv.i.i.13
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %12, i64 %275
  %277 = bitcast float* %276 to <8 x float>*
  %wide.load127 = load <8 x float>, <8 x float>* %277, align 4, !tbaa !12, !llvm.access.group !16
  %278 = fmul <8 x float> %broadcast.splat, %wide.load127
  %279 = bitcast float* %276 to <8 x float>*
  store <8 x float> %278, <8 x float>* %279, align 4, !tbaa !12, !llvm.access.group !16
  %280 = add nsw i32 %195, %conv.i.i.14
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds float, float* %12, i64 %281
  %283 = bitcast float* %282 to <8 x float>*
  %wide.load128 = load <8 x float>, <8 x float>* %283, align 4, !tbaa !12, !llvm.access.group !16
  %284 = fmul <8 x float> %broadcast.splat, %wide.load128
  %285 = bitcast float* %282 to <8 x float>*
  store <8 x float> %284, <8 x float>* %285, align 4, !tbaa !12, !llvm.access.group !16
  %286 = add nsw i32 %195, %conv.i.i.15
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %12, i64 %287
  %289 = bitcast float* %288 to <8 x float>*
  %wide.load129 = load <8 x float>, <8 x float>* %289, align 4, !tbaa !12, !llvm.access.group !16
  %290 = fmul <8 x float> %broadcast.splat, %wide.load129
  %291 = bitcast float* %288 to <8 x float>*
  store <8 x float> %290, <8 x float>* %291, align 4, !tbaa !12, !llvm.access.group !16
  %292 = add nsw i32 %195, %conv.i.i.16
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float, float* %12, i64 %293
  %295 = bitcast float* %294 to <8 x float>*
  %wide.load130 = load <8 x float>, <8 x float>* %295, align 4, !tbaa !12, !llvm.access.group !16
  %296 = fmul <8 x float> %broadcast.splat, %wide.load130
  %297 = bitcast float* %294 to <8 x float>*
  store <8 x float> %296, <8 x float>* %297, align 4, !tbaa !12, !llvm.access.group !16
  %298 = add nsw i32 %195, %conv.i.i.17
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %12, i64 %299
  %301 = bitcast float* %300 to <8 x float>*
  %wide.load131 = load <8 x float>, <8 x float>* %301, align 4, !tbaa !12, !llvm.access.group !16
  %302 = fmul <8 x float> %broadcast.splat, %wide.load131
  %303 = bitcast float* %300 to <8 x float>*
  store <8 x float> %302, <8 x float>* %303, align 4, !tbaa !12, !llvm.access.group !16
  %304 = add nsw i32 %195, %conv.i.i.18
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds float, float* %12, i64 %305
  %307 = bitcast float* %306 to <8 x float>*
  %wide.load132 = load <8 x float>, <8 x float>* %307, align 4, !tbaa !12, !llvm.access.group !16
  %308 = fmul <8 x float> %broadcast.splat, %wide.load132
  %309 = bitcast float* %306 to <8 x float>*
  store <8 x float> %308, <8 x float>* %309, align 4, !tbaa !12, !llvm.access.group !16
  %310 = add nsw i32 %195, %conv.i.i.19
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds float, float* %12, i64 %311
  %313 = bitcast float* %312 to <8 x float>*
  %wide.load133 = load <8 x float>, <8 x float>* %313, align 4, !tbaa !12, !llvm.access.group !16
  %314 = fmul <8 x float> %broadcast.splat, %wide.load133
  %315 = bitcast float* %312 to <8 x float>*
  store <8 x float> %314, <8 x float>* %315, align 4, !tbaa !12, !llvm.access.group !16
  %316 = add nsw i32 %195, %conv.i.i.20
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds float, float* %12, i64 %317
  %319 = bitcast float* %318 to <8 x float>*
  %wide.load134 = load <8 x float>, <8 x float>* %319, align 4, !tbaa !12, !llvm.access.group !16
  %320 = fmul <8 x float> %broadcast.splat, %wide.load134
  %321 = bitcast float* %318 to <8 x float>*
  store <8 x float> %320, <8 x float>* %321, align 4, !tbaa !12, !llvm.access.group !16
  %322 = add nsw i32 %195, %conv.i.i.21
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds float, float* %12, i64 %323
  %325 = bitcast float* %324 to <8 x float>*
  %wide.load135 = load <8 x float>, <8 x float>* %325, align 4, !tbaa !12, !llvm.access.group !16
  %326 = fmul <8 x float> %broadcast.splat, %wide.load135
  %327 = bitcast float* %324 to <8 x float>*
  store <8 x float> %326, <8 x float>* %327, align 4, !tbaa !12, !llvm.access.group !16
  %328 = add nsw i32 %195, %conv.i.i.22
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds float, float* %12, i64 %329
  %331 = bitcast float* %330 to <8 x float>*
  %wide.load136 = load <8 x float>, <8 x float>* %331, align 4, !tbaa !12, !llvm.access.group !16
  %332 = fmul <8 x float> %broadcast.splat, %wide.load136
  %333 = bitcast float* %330 to <8 x float>*
  store <8 x float> %332, <8 x float>* %333, align 4, !tbaa !12, !llvm.access.group !16
  %334 = add nsw i32 %195, %conv.i.i.23
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds float, float* %12, i64 %335
  %337 = bitcast float* %336 to <8 x float>*
  %wide.load137 = load <8 x float>, <8 x float>* %337, align 4, !tbaa !12, !llvm.access.group !16
  %338 = fmul <8 x float> %broadcast.splat, %wide.load137
  %339 = bitcast float* %336 to <8 x float>*
  store <8 x float> %338, <8 x float>* %339, align 4, !tbaa !12, !llvm.access.group !16
  %340 = add nsw i32 %195, %conv.i.i.24
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds float, float* %12, i64 %341
  %343 = bitcast float* %342 to <8 x float>*
  %wide.load138 = load <8 x float>, <8 x float>* %343, align 4, !tbaa !12, !llvm.access.group !16
  %344 = fmul <8 x float> %broadcast.splat, %wide.load138
  %345 = bitcast float* %342 to <8 x float>*
  store <8 x float> %344, <8 x float>* %345, align 4, !tbaa !12, !llvm.access.group !16
  %346 = add nsw i32 %195, %conv.i.i.25
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds float, float* %12, i64 %347
  %349 = bitcast float* %348 to <8 x float>*
  %wide.load139 = load <8 x float>, <8 x float>* %349, align 4, !tbaa !12, !llvm.access.group !16
  %350 = fmul <8 x float> %broadcast.splat, %wide.load139
  %351 = bitcast float* %348 to <8 x float>*
  store <8 x float> %350, <8 x float>* %351, align 4, !tbaa !12, !llvm.access.group !16
  %352 = add nsw i32 %195, %conv.i.i.26
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds float, float* %12, i64 %353
  %355 = bitcast float* %354 to <8 x float>*
  %wide.load140 = load <8 x float>, <8 x float>* %355, align 4, !tbaa !12, !llvm.access.group !16
  %356 = fmul <8 x float> %broadcast.splat, %wide.load140
  %357 = bitcast float* %354 to <8 x float>*
  store <8 x float> %356, <8 x float>* %357, align 4, !tbaa !12, !llvm.access.group !16
  %358 = add nsw i32 %195, %conv.i.i.27
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds float, float* %12, i64 %359
  %361 = bitcast float* %360 to <8 x float>*
  %wide.load141 = load <8 x float>, <8 x float>* %361, align 4, !tbaa !12, !llvm.access.group !16
  %362 = fmul <8 x float> %broadcast.splat, %wide.load141
  %363 = bitcast float* %360 to <8 x float>*
  store <8 x float> %362, <8 x float>* %363, align 4, !tbaa !12, !llvm.access.group !16
  %364 = add nsw i32 %195, %conv.i.i.28
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds float, float* %12, i64 %365
  %367 = bitcast float* %366 to <8 x float>*
  %wide.load142 = load <8 x float>, <8 x float>* %367, align 4, !tbaa !12, !llvm.access.group !16
  %368 = fmul <8 x float> %broadcast.splat, %wide.load142
  %369 = bitcast float* %366 to <8 x float>*
  store <8 x float> %368, <8 x float>* %369, align 4, !tbaa !12, !llvm.access.group !16
  %370 = add nsw i32 %195, %conv.i.i.29
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds float, float* %12, i64 %371
  %373 = bitcast float* %372 to <8 x float>*
  %wide.load143 = load <8 x float>, <8 x float>* %373, align 4, !tbaa !12, !llvm.access.group !16
  %374 = fmul <8 x float> %broadcast.splat, %wide.load143
  %375 = bitcast float* %372 to <8 x float>*
  store <8 x float> %374, <8 x float>* %375, align 4, !tbaa !12, !llvm.access.group !16
  %376 = add nsw i32 %195, %conv.i.i.30
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds float, float* %12, i64 %377
  %379 = bitcast float* %378 to <8 x float>*
  %wide.load144 = load <8 x float>, <8 x float>* %379, align 4, !tbaa !12, !llvm.access.group !16
  %380 = fmul <8 x float> %broadcast.splat, %wide.load144
  %381 = bitcast float* %378 to <8 x float>*
  store <8 x float> %380, <8 x float>* %381, align 4, !tbaa !12, !llvm.access.group !16
  %382 = add nsw i32 %195, %conv.i.i.31
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds float, float* %12, i64 %383
  %385 = bitcast float* %384 to <8 x float>*
  %wide.load145 = load <8 x float>, <8 x float>* %385, align 4, !tbaa !12, !llvm.access.group !16
  %386 = fmul <8 x float> %broadcast.splat, %wide.load145
  %387 = bitcast float* %384 to <8 x float>*
  store <8 x float> %386, <8 x float>* %387, align 4, !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_syrk_kernel.exit

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %mul.i.i.us = mul nsw i32 %28, %conv2.i.i.us
  %mul5.i.i.us = mul nsw i32 %24, %conv2.i.i.us
  %388 = sext i32 %mul5.i.i.us to i64
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_entry.entry.i.i.us.us:                ; preds = %for.end.r_exit.i.i.loopexit.us.us.1165, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.i.us.preheader ], [ %579, %for.end.r_exit.i.i.loopexit.us.us.1165 ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us
  %389 = load float, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us = fmul float %20, %389
  store float %mul3.i.i.us.us, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us = mul nsw i32 %24, %conv.i.i.us.us
  %390 = sext i32 %mul10.i.i.us.us to i64
  br label %for.body.i.i.us.us

for.end.r_exit.i.i.loopexit.us.us:                ; preds = %for.body.i.i.us.us
  %391 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.1150 = add nuw nsw i64 %391, %mul.i.i.i
  %conv.i.i.us.us.1151 = trunc i64 %add1.i.i.i.us.us.1150 to i32
  %add.i.i.us.us.1152 = add nsw i32 %mul.i.i.us, %conv.i.i.us.us.1151
  %idxprom.i.i.us.us.1153 = sext i32 %add.i.i.us.us.1152 to i64
  %arrayidx.i.i.us.us.1154 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.1153
  %392 = load float, float* %arrayidx.i.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1155 = fmul float %20, %392
  store float %mul3.i.i.us.us.1155, float* %arrayidx.i.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.1156 = mul nsw i32 %24, %conv.i.i.us.us.1151
  %393 = sext i32 %mul10.i.i.us.us.1156 to i64
  br label %for.body.i.i.us.us.1164

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %pregion_for_entry.entry.i.i.us.us
  %indvars.iv.next.i.i2.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us ]
  %394 = phi float [ %399, %for.body.i.i.us.us ], [ %mul3.i.i.us.us, %pregion_for_entry.entry.i.i.us.us ]
  %395 = add nsw i64 %indvars.iv.next.i.i2.us.us, %388
  %arrayidx8.i.i.us.us = getelementptr inbounds float, float* %8, i64 %395
  %396 = load float, float* %arrayidx8.i.i.us.us, align 4, !tbaa !12
  %mul9.i.i.us.us = fmul float %16, %396
  %397 = add nsw i64 %indvars.iv.next.i.i2.us.us, %390
  %arrayidx13.i.i.us.us = getelementptr inbounds float, float* %8, i64 %397
  %398 = load float, float* %arrayidx13.i.i.us.us, align 4, !tbaa !12
  %399 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us, float %398, float %394) #2
  store float %399, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i2.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %for.end.r_exit.i.i.loopexit.us.us, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us:               ; preds = %for.end.r_exit.i.i.loopexit.us.us.1165
  %400 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %400, 1
  %mul.i.i.us.1 = mul nsw i32 %28, %conv2.i.i.us.1
  %mul5.i.i.us.1 = mul nsw i32 %24, %conv2.i.i.us.1
  %401 = sext i32 %mul5.i.i.us.1 to i64
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader166
  %_local_id_y.i.0 = phi i64 [ %434, %pregion_for_entry.pregion_for_init.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader166 ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %mul.i.i = mul nsw i32 %28, %conv2.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %12, i64 %idxprom.i.i
  %402 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i = fmul float %20, %402
  store float %mul3.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.1
  %403 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.1 = fmul float %20, %403
  store float %mul3.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.2 = add nsw i32 %mul.i.i, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.2
  %404 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.2 = fmul float %20, %404
  store float %mul3.i.i.2, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.3 = add nsw i32 %mul.i.i, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.3
  %405 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.3 = fmul float %20, %405
  store float %mul3.i.i.3, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.4 = add nsw i32 %mul.i.i, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.4
  %406 = load float, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.4 = fmul float %20, %406
  store float %mul3.i.i.4, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.5 = add nsw i32 %mul.i.i, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.5
  %407 = load float, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.5 = fmul float %20, %407
  store float %mul3.i.i.5, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.6 = add nsw i32 %mul.i.i, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.6
  %408 = load float, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.6 = fmul float %20, %408
  store float %mul3.i.i.6, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.7 = add nsw i32 %mul.i.i, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.7
  %409 = load float, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.7 = fmul float %20, %409
  store float %mul3.i.i.7, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.8 = add nsw i32 %mul.i.i, %conv.i.i.8
  %idxprom.i.i.8 = sext i32 %add.i.i.8 to i64
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.8
  %410 = load float, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.8 = fmul float %20, %410
  store float %mul3.i.i.8, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.9 = add nsw i32 %mul.i.i, %conv.i.i.9
  %idxprom.i.i.9 = sext i32 %add.i.i.9 to i64
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.9
  %411 = load float, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.9 = fmul float %20, %411
  store float %mul3.i.i.9, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.10 = add nsw i32 %mul.i.i, %conv.i.i.10
  %idxprom.i.i.10 = sext i32 %add.i.i.10 to i64
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.10
  %412 = load float, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.10 = fmul float %20, %412
  store float %mul3.i.i.10, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.11 = add nsw i32 %mul.i.i, %conv.i.i.11
  %idxprom.i.i.11 = sext i32 %add.i.i.11 to i64
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.11
  %413 = load float, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.11 = fmul float %20, %413
  store float %mul3.i.i.11, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.12 = add nsw i32 %mul.i.i, %conv.i.i.12
  %idxprom.i.i.12 = sext i32 %add.i.i.12 to i64
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.12
  %414 = load float, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.12 = fmul float %20, %414
  store float %mul3.i.i.12, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.13 = add nsw i32 %mul.i.i, %conv.i.i.13
  %idxprom.i.i.13 = sext i32 %add.i.i.13 to i64
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.13
  %415 = load float, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.13 = fmul float %20, %415
  store float %mul3.i.i.13, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.14 = add nsw i32 %mul.i.i, %conv.i.i.14
  %idxprom.i.i.14 = sext i32 %add.i.i.14 to i64
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.14
  %416 = load float, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.14 = fmul float %20, %416
  store float %mul3.i.i.14, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.15 = add nsw i32 %mul.i.i, %conv.i.i.15
  %idxprom.i.i.15 = sext i32 %add.i.i.15 to i64
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.15
  %417 = load float, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.15 = fmul float %20, %417
  store float %mul3.i.i.15, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.16 = add nsw i32 %mul.i.i, %conv.i.i.16
  %idxprom.i.i.16 = sext i32 %add.i.i.16 to i64
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.16
  %418 = load float, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.16 = fmul float %20, %418
  store float %mul3.i.i.16, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.17 = add nsw i32 %mul.i.i, %conv.i.i.17
  %idxprom.i.i.17 = sext i32 %add.i.i.17 to i64
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.17
  %419 = load float, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.17 = fmul float %20, %419
  store float %mul3.i.i.17, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.18 = add nsw i32 %mul.i.i, %conv.i.i.18
  %idxprom.i.i.18 = sext i32 %add.i.i.18 to i64
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.18
  %420 = load float, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.18 = fmul float %20, %420
  store float %mul3.i.i.18, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.19 = add nsw i32 %mul.i.i, %conv.i.i.19
  %idxprom.i.i.19 = sext i32 %add.i.i.19 to i64
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.19
  %421 = load float, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.19 = fmul float %20, %421
  store float %mul3.i.i.19, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.20 = add nsw i32 %mul.i.i, %conv.i.i.20
  %idxprom.i.i.20 = sext i32 %add.i.i.20 to i64
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.20
  %422 = load float, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.20 = fmul float %20, %422
  store float %mul3.i.i.20, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.21 = add nsw i32 %mul.i.i, %conv.i.i.21
  %idxprom.i.i.21 = sext i32 %add.i.i.21 to i64
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.21
  %423 = load float, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.21 = fmul float %20, %423
  store float %mul3.i.i.21, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.22 = add nsw i32 %mul.i.i, %conv.i.i.22
  %idxprom.i.i.22 = sext i32 %add.i.i.22 to i64
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.22
  %424 = load float, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.22 = fmul float %20, %424
  store float %mul3.i.i.22, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.23 = add nsw i32 %mul.i.i, %conv.i.i.23
  %idxprom.i.i.23 = sext i32 %add.i.i.23 to i64
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.23
  %425 = load float, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.23 = fmul float %20, %425
  store float %mul3.i.i.23, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.24 = add nsw i32 %mul.i.i, %conv.i.i.24
  %idxprom.i.i.24 = sext i32 %add.i.i.24 to i64
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.24
  %426 = load float, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.24 = fmul float %20, %426
  store float %mul3.i.i.24, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.25 = add nsw i32 %mul.i.i, %conv.i.i.25
  %idxprom.i.i.25 = sext i32 %add.i.i.25 to i64
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.25
  %427 = load float, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.25 = fmul float %20, %427
  store float %mul3.i.i.25, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.26 = add nsw i32 %mul.i.i, %conv.i.i.26
  %idxprom.i.i.26 = sext i32 %add.i.i.26 to i64
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.26
  %428 = load float, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.26 = fmul float %20, %428
  store float %mul3.i.i.26, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.27 = add nsw i32 %mul.i.i, %conv.i.i.27
  %idxprom.i.i.27 = sext i32 %add.i.i.27 to i64
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.27
  %429 = load float, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.27 = fmul float %20, %429
  store float %mul3.i.i.27, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.28 = add nsw i32 %mul.i.i, %conv.i.i.28
  %idxprom.i.i.28 = sext i32 %add.i.i.28 to i64
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.28
  %430 = load float, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.28 = fmul float %20, %430
  store float %mul3.i.i.28, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.29 = add nsw i32 %mul.i.i, %conv.i.i.29
  %idxprom.i.i.29 = sext i32 %add.i.i.29 to i64
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.29
  %431 = load float, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.29 = fmul float %20, %431
  store float %mul3.i.i.29, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.30 = add nsw i32 %mul.i.i, %conv.i.i.30
  %idxprom.i.i.30 = sext i32 %add.i.i.30 to i64
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.30
  %432 = load float, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.30 = fmul float %20, %432
  store float %mul3.i.i.30, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.31 = add nsw i32 %mul.i.i, %conv.i.i.31
  %idxprom.i.i.31 = sext i32 %add.i.i.31 to i64
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.31
  %433 = load float, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.31 = fmul float %20, %433
  store float %mul3.i.i.31, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %434 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond31.not = icmp eq i64 %434, 8
  br i1 %exitcond31.not, label %_pocl_kernel_syrk_kernel.exit.loopexit167, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !26

_pocl_kernel_syrk_kernel.exit.loopexit:           ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1
  br label %_pocl_kernel_syrk_kernel.exit

_pocl_kernel_syrk_kernel.exit.loopexit167:        ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %_pocl_kernel_syrk_kernel.exit

_pocl_kernel_syrk_kernel.exit:                    ; preds = %_pocl_kernel_syrk_kernel.exit.loopexit167, %_pocl_kernel_syrk_kernel.exit.loopexit, %vector.ph
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1, %pregion_for_end.i.i.us-lcssa.us.us
  %_local_id_x.i.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us ], [ %572, %for.end.r_exit.i.i.loopexit.us.us.1.1 ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.1
  %435 = load float, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1 = fmul float %20, %435
  store float %mul3.i.i.us.us.1, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.1 = mul nsw i32 %24, %conv.i.i.us.us.1
  %436 = sext i32 %mul10.i.i.us.us.1 to i64
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1
  %indvars.iv.next.i.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1 ]
  %437 = phi float [ %442, %for.body.i.i.us.us.1 ], [ %mul3.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1 ]
  %438 = add nsw i64 %indvars.iv.next.i.i2.us.us.1, %401
  %arrayidx8.i.i.us.us.1 = getelementptr inbounds float, float* %8, i64 %438
  %439 = load float, float* %arrayidx8.i.i.us.us.1, align 4, !tbaa !12
  %mul9.i.i.us.us.1 = fmul float %16, %439
  %440 = add nsw i64 %indvars.iv.next.i.i2.us.us.1, %436
  %arrayidx13.i.i.us.us.1 = getelementptr inbounds float, float* %8, i64 %440
  %441 = load float, float* %arrayidx13.i.i.us.us.1, align 4, !tbaa !12
  %442 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.1, float %441, float %437) #2
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
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.1.1
  %444 = load float, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1.1 = fmul float %20, %444
  store float %mul3.i.i.us.us.1.1, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.1.1 = mul nsw i32 %24, %conv.i.i.us.us.1.1
  %445 = sext i32 %mul10.i.i.us.us.1.1 to i64
  br label %for.body.i.i.us.us.1.1

pregion_for_end.i.i.us-lcssa.us.us.1:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1
  %446 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %446, 2
  %mul.i.i.us.2 = mul nsw i32 %28, %conv2.i.i.us.2
  %mul5.i.i.us.2 = mul nsw i32 %24, %conv2.i.i.us.2
  %447 = sext i32 %mul5.i.i.us.2 to i64
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1, %pregion_for_end.i.i.us-lcssa.us.us.1
  %_local_id_x.i.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.1 ], [ %565, %for.end.r_exit.i.i.loopexit.us.us.2.1 ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.2
  %448 = load float, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.2 = fmul float %20, %448
  store float %mul3.i.i.us.us.2, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.2 = mul nsw i32 %24, %conv.i.i.us.us.2
  %449 = sext i32 %mul10.i.i.us.us.2 to i64
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2
  %indvars.iv.next.i.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2 ]
  %450 = phi float [ %455, %for.body.i.i.us.us.2 ], [ %mul3.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2 ]
  %451 = add nsw i64 %indvars.iv.next.i.i2.us.us.2, %447
  %arrayidx8.i.i.us.us.2 = getelementptr inbounds float, float* %8, i64 %451
  %452 = load float, float* %arrayidx8.i.i.us.us.2, align 4, !tbaa !12
  %mul9.i.i.us.us.2 = fmul float %16, %452
  %453 = add nsw i64 %indvars.iv.next.i.i2.us.us.2, %449
  %arrayidx13.i.i.us.us.2 = getelementptr inbounds float, float* %8, i64 %453
  %454 = load float, float* %arrayidx13.i.i.us.us.2, align 4, !tbaa !12
  %455 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.2, float %454, float %450) #2
  store float %455, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %for.end.r_exit.i.i.loopexit.us.us.2, label %for.body.i.i.us.us.2, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2:              ; preds = %for.body.i.i.us.us.2
  %456 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %456, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %add.i.i.us.us.2.1 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.2.1
  %457 = load float, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.2.1 = fmul float %20, %457
  store float %mul3.i.i.us.us.2.1, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.2.1 = mul nsw i32 %24, %conv.i.i.us.us.2.1
  %458 = sext i32 %mul10.i.i.us.us.2.1 to i64
  br label %for.body.i.i.us.us.2.1

pregion_for_end.i.i.us-lcssa.us.us.2:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1
  %459 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %459, 3
  %mul.i.i.us.3 = mul nsw i32 %28, %conv2.i.i.us.3
  %mul5.i.i.us.3 = mul nsw i32 %24, %conv2.i.i.us.3
  %460 = sext i32 %mul5.i.i.us.3 to i64
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1, %pregion_for_end.i.i.us-lcssa.us.us.2
  %_local_id_x.i.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.2 ], [ %558, %for.end.r_exit.i.i.loopexit.us.us.3.1 ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.3
  %461 = load float, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.3 = fmul float %20, %461
  store float %mul3.i.i.us.us.3, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.3 = mul nsw i32 %24, %conv.i.i.us.us.3
  %462 = sext i32 %mul10.i.i.us.us.3 to i64
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3
  %indvars.iv.next.i.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3 ]
  %463 = phi float [ %468, %for.body.i.i.us.us.3 ], [ %mul3.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3 ]
  %464 = add nsw i64 %indvars.iv.next.i.i2.us.us.3, %460
  %arrayidx8.i.i.us.us.3 = getelementptr inbounds float, float* %8, i64 %464
  %465 = load float, float* %arrayidx8.i.i.us.us.3, align 4, !tbaa !12
  %mul9.i.i.us.us.3 = fmul float %16, %465
  %466 = add nsw i64 %indvars.iv.next.i.i2.us.us.3, %462
  %arrayidx13.i.i.us.us.3 = getelementptr inbounds float, float* %8, i64 %466
  %467 = load float, float* %arrayidx13.i.i.us.us.3, align 4, !tbaa !12
  %468 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.3, float %467, float %463) #2
  store float %468, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %for.end.r_exit.i.i.loopexit.us.us.3, label %for.body.i.i.us.us.3, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3:              ; preds = %for.body.i.i.us.us.3
  %469 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %469, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %add.i.i.us.us.3.1 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.3.1
  %470 = load float, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.3.1 = fmul float %20, %470
  store float %mul3.i.i.us.us.3.1, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.3.1 = mul nsw i32 %24, %conv.i.i.us.us.3.1
  %471 = sext i32 %mul10.i.i.us.us.3.1 to i64
  br label %for.body.i.i.us.us.3.1

pregion_for_end.i.i.us-lcssa.us.us.3:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1
  %472 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %472, 4
  %mul.i.i.us.4 = mul nsw i32 %28, %conv2.i.i.us.4
  %mul5.i.i.us.4 = mul nsw i32 %24, %conv2.i.i.us.4
  %473 = sext i32 %mul5.i.i.us.4 to i64
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1, %pregion_for_end.i.i.us-lcssa.us.us.3
  %_local_id_x.i.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.3 ], [ %551, %for.end.r_exit.i.i.loopexit.us.us.4.1 ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.4
  %474 = load float, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.4 = fmul float %20, %474
  store float %mul3.i.i.us.us.4, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.4 = mul nsw i32 %24, %conv.i.i.us.us.4
  %475 = sext i32 %mul10.i.i.us.us.4 to i64
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4
  %indvars.iv.next.i.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4 ]
  %476 = phi float [ %481, %for.body.i.i.us.us.4 ], [ %mul3.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4 ]
  %477 = add nsw i64 %indvars.iv.next.i.i2.us.us.4, %473
  %arrayidx8.i.i.us.us.4 = getelementptr inbounds float, float* %8, i64 %477
  %478 = load float, float* %arrayidx8.i.i.us.us.4, align 4, !tbaa !12
  %mul9.i.i.us.us.4 = fmul float %16, %478
  %479 = add nsw i64 %indvars.iv.next.i.i2.us.us.4, %475
  %arrayidx13.i.i.us.us.4 = getelementptr inbounds float, float* %8, i64 %479
  %480 = load float, float* %arrayidx13.i.i.us.us.4, align 4, !tbaa !12
  %481 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.4, float %480, float %476) #2
  store float %481, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %for.end.r_exit.i.i.loopexit.us.us.4, label %for.body.i.i.us.us.4, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4:              ; preds = %for.body.i.i.us.us.4
  %482 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %482, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %add.i.i.us.us.4.1 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.4.1
  %483 = load float, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.4.1 = fmul float %20, %483
  store float %mul3.i.i.us.us.4.1, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.4.1 = mul nsw i32 %24, %conv.i.i.us.us.4.1
  %484 = sext i32 %mul10.i.i.us.us.4.1 to i64
  br label %for.body.i.i.us.us.4.1

pregion_for_end.i.i.us-lcssa.us.us.4:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1
  %485 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %485, 5
  %mul.i.i.us.5 = mul nsw i32 %28, %conv2.i.i.us.5
  %mul5.i.i.us.5 = mul nsw i32 %24, %conv2.i.i.us.5
  %486 = sext i32 %mul5.i.i.us.5 to i64
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1, %pregion_for_end.i.i.us-lcssa.us.us.4
  %_local_id_x.i.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.4 ], [ %544, %for.end.r_exit.i.i.loopexit.us.us.5.1 ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.5
  %487 = load float, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.5 = fmul float %20, %487
  store float %mul3.i.i.us.us.5, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.5 = mul nsw i32 %24, %conv.i.i.us.us.5
  %488 = sext i32 %mul10.i.i.us.us.5 to i64
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5
  %indvars.iv.next.i.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5 ]
  %489 = phi float [ %494, %for.body.i.i.us.us.5 ], [ %mul3.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5 ]
  %490 = add nsw i64 %indvars.iv.next.i.i2.us.us.5, %486
  %arrayidx8.i.i.us.us.5 = getelementptr inbounds float, float* %8, i64 %490
  %491 = load float, float* %arrayidx8.i.i.us.us.5, align 4, !tbaa !12
  %mul9.i.i.us.us.5 = fmul float %16, %491
  %492 = add nsw i64 %indvars.iv.next.i.i2.us.us.5, %488
  %arrayidx13.i.i.us.us.5 = getelementptr inbounds float, float* %8, i64 %492
  %493 = load float, float* %arrayidx13.i.i.us.us.5, align 4, !tbaa !12
  %494 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.5, float %493, float %489) #2
  store float %494, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %for.end.r_exit.i.i.loopexit.us.us.5, label %for.body.i.i.us.us.5, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5:              ; preds = %for.body.i.i.us.us.5
  %495 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %495, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %add.i.i.us.us.5.1 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.5.1
  %496 = load float, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.5.1 = fmul float %20, %496
  store float %mul3.i.i.us.us.5.1, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.5.1 = mul nsw i32 %24, %conv.i.i.us.us.5.1
  %497 = sext i32 %mul10.i.i.us.us.5.1 to i64
  br label %for.body.i.i.us.us.5.1

pregion_for_end.i.i.us-lcssa.us.us.5:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1
  %498 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %498, 6
  %mul.i.i.us.6 = mul nsw i32 %28, %conv2.i.i.us.6
  %mul5.i.i.us.6 = mul nsw i32 %24, %conv2.i.i.us.6
  %499 = sext i32 %mul5.i.i.us.6 to i64
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1, %pregion_for_end.i.i.us-lcssa.us.us.5
  %_local_id_x.i.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.5 ], [ %537, %for.end.r_exit.i.i.loopexit.us.us.6.1 ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.6
  %500 = load float, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.6 = fmul float %20, %500
  store float %mul3.i.i.us.us.6, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.6 = mul nsw i32 %24, %conv.i.i.us.us.6
  %501 = sext i32 %mul10.i.i.us.us.6 to i64
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6
  %indvars.iv.next.i.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6 ]
  %502 = phi float [ %507, %for.body.i.i.us.us.6 ], [ %mul3.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6 ]
  %503 = add nsw i64 %indvars.iv.next.i.i2.us.us.6, %499
  %arrayidx8.i.i.us.us.6 = getelementptr inbounds float, float* %8, i64 %503
  %504 = load float, float* %arrayidx8.i.i.us.us.6, align 4, !tbaa !12
  %mul9.i.i.us.us.6 = fmul float %16, %504
  %505 = add nsw i64 %indvars.iv.next.i.i2.us.us.6, %501
  %arrayidx13.i.i.us.us.6 = getelementptr inbounds float, float* %8, i64 %505
  %506 = load float, float* %arrayidx13.i.i.us.us.6, align 4, !tbaa !12
  %507 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.6, float %506, float %502) #2
  store float %507, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %for.end.r_exit.i.i.loopexit.us.us.6, label %for.body.i.i.us.us.6, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6:              ; preds = %for.body.i.i.us.us.6
  %508 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %508, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %add.i.i.us.us.6.1 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.6.1
  %509 = load float, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.6.1 = fmul float %20, %509
  store float %mul3.i.i.us.us.6.1, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.6.1 = mul nsw i32 %24, %conv.i.i.us.us.6.1
  %510 = sext i32 %mul10.i.i.us.us.6.1 to i64
  br label %for.body.i.i.us.us.6.1

pregion_for_end.i.i.us-lcssa.us.us.6:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1
  %511 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %511, 7
  %mul.i.i.us.7 = mul nsw i32 %28, %conv2.i.i.us.7
  %mul5.i.i.us.7 = mul nsw i32 %24, %conv2.i.i.us.7
  %512 = sext i32 %mul5.i.i.us.7 to i64
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1, %pregion_for_end.i.i.us-lcssa.us.us.6
  %_local_id_x.i.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.6 ], [ %530, %for.end.r_exit.i.i.loopexit.us.us.7.1 ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.7
  %513 = load float, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.7 = fmul float %20, %513
  store float %mul3.i.i.us.us.7, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.7 = mul nsw i32 %24, %conv.i.i.us.us.7
  %514 = sext i32 %mul10.i.i.us.us.7 to i64
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7
  %indvars.iv.next.i.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7 ]
  %515 = phi float [ %520, %for.body.i.i.us.us.7 ], [ %mul3.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7 ]
  %516 = add nsw i64 %indvars.iv.next.i.i2.us.us.7, %512
  %arrayidx8.i.i.us.us.7 = getelementptr inbounds float, float* %8, i64 %516
  %517 = load float, float* %arrayidx8.i.i.us.us.7, align 4, !tbaa !12
  %mul9.i.i.us.us.7 = fmul float %16, %517
  %518 = add nsw i64 %indvars.iv.next.i.i2.us.us.7, %514
  %arrayidx13.i.i.us.us.7 = getelementptr inbounds float, float* %8, i64 %518
  %519 = load float, float* %arrayidx13.i.i.us.us.7, align 4, !tbaa !12
  %520 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.7, float %519, float %515) #2
  store float %520, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %for.end.r_exit.i.i.loopexit.us.us.7, label %for.body.i.i.us.us.7, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7:              ; preds = %for.body.i.i.us.us.7
  %521 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %521, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %add.i.i.us.us.7.1 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us.us.7.1
  %522 = load float, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.7.1 = fmul float %20, %522
  store float %mul3.i.i.us.us.7.1, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.7.1 = mul nsw i32 %24, %conv.i.i.us.us.7.1
  %523 = sext i32 %mul10.i.i.us.us.7.1 to i64
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %for.end.r_exit.i.i.loopexit.us.us.7
  %indvars.iv.next.i.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %524 = phi float [ %529, %for.body.i.i.us.us.7.1 ], [ %mul3.i.i.us.us.7.1, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %525 = add nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %512
  %arrayidx8.i.i.us.us.7.1 = getelementptr inbounds float, float* %8, i64 %525
  %526 = load float, float* %arrayidx8.i.i.us.us.7.1, align 4, !tbaa !12
  %mul9.i.i.us.us.7.1 = fmul float %16, %526
  %527 = add nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %523
  %arrayidx13.i.i.us.us.7.1 = getelementptr inbounds float, float* %8, i64 %527
  %528 = load float, float* %arrayidx13.i.i.us.us.7.1, align 4, !tbaa !12
  %529 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.7.1, float %528, float %524) #2
  store float %529, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7.1, label %for.end.r_exit.i.i.loopexit.us.us.7.1, label %for.body.i.i.us.us.7.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7.1:            ; preds = %for.body.i.i.us.us.7.1
  %530 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %530, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_syrk_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !24

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %for.end.r_exit.i.i.loopexit.us.us.6
  %indvars.iv.next.i.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %531 = phi float [ %536, %for.body.i.i.us.us.6.1 ], [ %mul3.i.i.us.us.6.1, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %532 = add nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %499
  %arrayidx8.i.i.us.us.6.1 = getelementptr inbounds float, float* %8, i64 %532
  %533 = load float, float* %arrayidx8.i.i.us.us.6.1, align 4, !tbaa !12
  %mul9.i.i.us.us.6.1 = fmul float %16, %533
  %534 = add nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %510
  %arrayidx13.i.i.us.us.6.1 = getelementptr inbounds float, float* %8, i64 %534
  %535 = load float, float* %arrayidx13.i.i.us.us.6.1, align 4, !tbaa !12
  %536 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.6.1, float %535, float %531) #2
  store float %536, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6.1, label %for.end.r_exit.i.i.loopexit.us.us.6.1, label %for.body.i.i.us.us.6.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6.1:            ; preds = %for.body.i.i.us.us.6.1
  %537 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %537, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !24

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %for.end.r_exit.i.i.loopexit.us.us.5
  %indvars.iv.next.i.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %538 = phi float [ %543, %for.body.i.i.us.us.5.1 ], [ %mul3.i.i.us.us.5.1, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %539 = add nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %486
  %arrayidx8.i.i.us.us.5.1 = getelementptr inbounds float, float* %8, i64 %539
  %540 = load float, float* %arrayidx8.i.i.us.us.5.1, align 4, !tbaa !12
  %mul9.i.i.us.us.5.1 = fmul float %16, %540
  %541 = add nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %497
  %arrayidx13.i.i.us.us.5.1 = getelementptr inbounds float, float* %8, i64 %541
  %542 = load float, float* %arrayidx13.i.i.us.us.5.1, align 4, !tbaa !12
  %543 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.5.1, float %542, float %538) #2
  store float %543, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5.1, label %for.end.r_exit.i.i.loopexit.us.us.5.1, label %for.body.i.i.us.us.5.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5.1:            ; preds = %for.body.i.i.us.us.5.1
  %544 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %544, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !24

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %for.end.r_exit.i.i.loopexit.us.us.4
  %indvars.iv.next.i.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %545 = phi float [ %550, %for.body.i.i.us.us.4.1 ], [ %mul3.i.i.us.us.4.1, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %546 = add nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %473
  %arrayidx8.i.i.us.us.4.1 = getelementptr inbounds float, float* %8, i64 %546
  %547 = load float, float* %arrayidx8.i.i.us.us.4.1, align 4, !tbaa !12
  %mul9.i.i.us.us.4.1 = fmul float %16, %547
  %548 = add nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %484
  %arrayidx13.i.i.us.us.4.1 = getelementptr inbounds float, float* %8, i64 %548
  %549 = load float, float* %arrayidx13.i.i.us.us.4.1, align 4, !tbaa !12
  %550 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.4.1, float %549, float %545) #2
  store float %550, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4.1, label %for.end.r_exit.i.i.loopexit.us.us.4.1, label %for.body.i.i.us.us.4.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4.1:            ; preds = %for.body.i.i.us.us.4.1
  %551 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %551, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !24

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %for.end.r_exit.i.i.loopexit.us.us.3
  %indvars.iv.next.i.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %552 = phi float [ %557, %for.body.i.i.us.us.3.1 ], [ %mul3.i.i.us.us.3.1, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %553 = add nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %460
  %arrayidx8.i.i.us.us.3.1 = getelementptr inbounds float, float* %8, i64 %553
  %554 = load float, float* %arrayidx8.i.i.us.us.3.1, align 4, !tbaa !12
  %mul9.i.i.us.us.3.1 = fmul float %16, %554
  %555 = add nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %471
  %arrayidx13.i.i.us.us.3.1 = getelementptr inbounds float, float* %8, i64 %555
  %556 = load float, float* %arrayidx13.i.i.us.us.3.1, align 4, !tbaa !12
  %557 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.3.1, float %556, float %552) #2
  store float %557, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3.1, label %for.end.r_exit.i.i.loopexit.us.us.3.1, label %for.body.i.i.us.us.3.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3.1:            ; preds = %for.body.i.i.us.us.3.1
  %558 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %558, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !24

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %for.end.r_exit.i.i.loopexit.us.us.2
  %indvars.iv.next.i.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %559 = phi float [ %564, %for.body.i.i.us.us.2.1 ], [ %mul3.i.i.us.us.2.1, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %560 = add nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %447
  %arrayidx8.i.i.us.us.2.1 = getelementptr inbounds float, float* %8, i64 %560
  %561 = load float, float* %arrayidx8.i.i.us.us.2.1, align 4, !tbaa !12
  %mul9.i.i.us.us.2.1 = fmul float %16, %561
  %562 = add nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %458
  %arrayidx13.i.i.us.us.2.1 = getelementptr inbounds float, float* %8, i64 %562
  %563 = load float, float* %arrayidx13.i.i.us.us.2.1, align 4, !tbaa !12
  %564 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.2.1, float %563, float %559) #2
  store float %564, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2.1, label %for.end.r_exit.i.i.loopexit.us.us.2.1, label %for.body.i.i.us.us.2.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2.1:            ; preds = %for.body.i.i.us.us.2.1
  %565 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %565, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !24

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %for.end.r_exit.i.i.loopexit.us.us.1
  %indvars.iv.next.i.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %566 = phi float [ %571, %for.body.i.i.us.us.1.1 ], [ %mul3.i.i.us.us.1.1, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %567 = add nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %401
  %arrayidx8.i.i.us.us.1.1 = getelementptr inbounds float, float* %8, i64 %567
  %568 = load float, float* %arrayidx8.i.i.us.us.1.1, align 4, !tbaa !12
  %mul9.i.i.us.us.1.1 = fmul float %16, %568
  %569 = add nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %445
  %arrayidx13.i.i.us.us.1.1 = getelementptr inbounds float, float* %8, i64 %569
  %570 = load float, float* %arrayidx13.i.i.us.us.1.1, align 4, !tbaa !12
  %571 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.1.1, float %570, float %566) #2
  store float %571, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1.1, label %for.end.r_exit.i.i.loopexit.us.us.1.1, label %for.body.i.i.us.us.1.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1.1:            ; preds = %for.body.i.i.us.us.1.1
  %572 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %572, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !24

for.body.i.i.us.us.1164:                          ; preds = %for.body.i.i.us.us.1164, %for.end.r_exit.i.i.loopexit.us.us
  %indvars.iv.next.i.i2.us.us.1158 = phi i64 [ %indvars.iv.next.i.i.us.us.1162, %for.body.i.i.us.us.1164 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us ]
  %573 = phi float [ %578, %for.body.i.i.us.us.1164 ], [ %mul3.i.i.us.us.1155, %for.end.r_exit.i.i.loopexit.us.us ]
  %574 = add nsw i64 %indvars.iv.next.i.i2.us.us.1158, %388
  %arrayidx8.i.i.us.us.1159 = getelementptr inbounds float, float* %8, i64 %574
  %575 = load float, float* %arrayidx8.i.i.us.us.1159, align 4, !tbaa !12
  %mul9.i.i.us.us.1160 = fmul float %16, %575
  %576 = add nsw i64 %indvars.iv.next.i.i2.us.us.1158, %393
  %arrayidx13.i.i.us.us.1161 = getelementptr inbounds float, float* %8, i64 %576
  %577 = load float, float* %arrayidx13.i.i.us.us.1161, align 4, !tbaa !12
  %578 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.1160, float %577, float %573) #2
  store float %578, float* %arrayidx.i.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1162 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1158, 1
  %exitcond.not.i.i.us.us.1163 = icmp eq i64 %indvars.iv.next.i.i.us.us.1162, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1163, label %for.end.r_exit.i.i.loopexit.us.us.1165, label %for.body.i.i.us.us.1164, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1165:           ; preds = %for.body.i.i.us.us.1164
  %579 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %579, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.us-lcssa.us.us, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !24
}

; Function Attrs: nounwind
define void @_pocl_kernel_syrk_kernel_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 2
  %12 = bitcast i8** %11 to float**
  %13 = load float*, float** %12, align 8
  %14 = load float, float* %13, align 4
  %15 = getelementptr i8*, i8** %0, i64 3
  %16 = bitcast i8** %15 to float**
  %17 = load float*, float** %16, align 8
  %18 = load float, float* %17, align 4
  %19 = getelementptr i8*, i8** %0, i64 4
  %20 = bitcast i8** %19 to i32**
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr i8*, i8** %0, i64 5
  %24 = bitcast i8** %23 to i32**
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %25, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %cmp34.i.i = icmp sgt i32 %22, 0
  %wide.trip.count.i.i = zext i32 %22 to i64
  br i1 %cmp34.i.i, label %pregion_for_entry.pregion_for_init.i.i.us.preheader, label %pregion_for_entry.pregion_for_init.i.i.preheader

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
  %ident.check = icmp ne i32 %26, 1
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
  br i1 %191, label %pregion_for_entry.pregion_for_init.i.i.preheader166, label %vector.ph

pregion_for_entry.pregion_for_init.i.i.preheader166: ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  br label %pregion_for_entry.pregion_for_init.i.i

vector.ph:                                        ; preds = %pregion_for_entry.pregion_for_init.i.i.preheader
  %broadcast.splatinsert = insertelement <8 x float> undef, float %18, i32 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> undef, <8 x i32> zeroinitializer
  %192 = trunc i64 %mul3.i.i.i to i32
  %193 = mul nsw i32 %26, %192
  %194 = add nsw i32 %193, %conv.i.i
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %10, i64 %195
  %197 = bitcast float* %196 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %197, align 4, !tbaa !12, !llvm.access.group !16
  %198 = fmul <8 x float> %broadcast.splat, %wide.load
  %199 = bitcast float* %196 to <8 x float>*
  store <8 x float> %198, <8 x float>* %199, align 4, !tbaa !12, !llvm.access.group !16
  %200 = add nsw i32 %193, %conv.i.i.1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %10, i64 %201
  %203 = bitcast float* %202 to <8 x float>*
  %wide.load115 = load <8 x float>, <8 x float>* %203, align 4, !tbaa !12, !llvm.access.group !16
  %204 = fmul <8 x float> %broadcast.splat, %wide.load115
  %205 = bitcast float* %202 to <8 x float>*
  store <8 x float> %204, <8 x float>* %205, align 4, !tbaa !12, !llvm.access.group !16
  %206 = add nsw i32 %193, %conv.i.i.2
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %10, i64 %207
  %209 = bitcast float* %208 to <8 x float>*
  %wide.load116 = load <8 x float>, <8 x float>* %209, align 4, !tbaa !12, !llvm.access.group !16
  %210 = fmul <8 x float> %broadcast.splat, %wide.load116
  %211 = bitcast float* %208 to <8 x float>*
  store <8 x float> %210, <8 x float>* %211, align 4, !tbaa !12, !llvm.access.group !16
  %212 = add nsw i32 %193, %conv.i.i.3
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %10, i64 %213
  %215 = bitcast float* %214 to <8 x float>*
  %wide.load117 = load <8 x float>, <8 x float>* %215, align 4, !tbaa !12, !llvm.access.group !16
  %216 = fmul <8 x float> %broadcast.splat, %wide.load117
  %217 = bitcast float* %214 to <8 x float>*
  store <8 x float> %216, <8 x float>* %217, align 4, !tbaa !12, !llvm.access.group !16
  %218 = add nsw i32 %193, %conv.i.i.4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %10, i64 %219
  %221 = bitcast float* %220 to <8 x float>*
  %wide.load118 = load <8 x float>, <8 x float>* %221, align 4, !tbaa !12, !llvm.access.group !16
  %222 = fmul <8 x float> %broadcast.splat, %wide.load118
  %223 = bitcast float* %220 to <8 x float>*
  store <8 x float> %222, <8 x float>* %223, align 4, !tbaa !12, !llvm.access.group !16
  %224 = add nsw i32 %193, %conv.i.i.5
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %10, i64 %225
  %227 = bitcast float* %226 to <8 x float>*
  %wide.load119 = load <8 x float>, <8 x float>* %227, align 4, !tbaa !12, !llvm.access.group !16
  %228 = fmul <8 x float> %broadcast.splat, %wide.load119
  %229 = bitcast float* %226 to <8 x float>*
  store <8 x float> %228, <8 x float>* %229, align 4, !tbaa !12, !llvm.access.group !16
  %230 = add nsw i32 %193, %conv.i.i.6
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %10, i64 %231
  %233 = bitcast float* %232 to <8 x float>*
  %wide.load120 = load <8 x float>, <8 x float>* %233, align 4, !tbaa !12, !llvm.access.group !16
  %234 = fmul <8 x float> %broadcast.splat, %wide.load120
  %235 = bitcast float* %232 to <8 x float>*
  store <8 x float> %234, <8 x float>* %235, align 4, !tbaa !12, !llvm.access.group !16
  %236 = add nsw i32 %193, %conv.i.i.7
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %10, i64 %237
  %239 = bitcast float* %238 to <8 x float>*
  %wide.load121 = load <8 x float>, <8 x float>* %239, align 4, !tbaa !12, !llvm.access.group !16
  %240 = fmul <8 x float> %broadcast.splat, %wide.load121
  %241 = bitcast float* %238 to <8 x float>*
  store <8 x float> %240, <8 x float>* %241, align 4, !tbaa !12, !llvm.access.group !16
  %242 = add nsw i32 %193, %conv.i.i.8
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %10, i64 %243
  %245 = bitcast float* %244 to <8 x float>*
  %wide.load122 = load <8 x float>, <8 x float>* %245, align 4, !tbaa !12, !llvm.access.group !16
  %246 = fmul <8 x float> %broadcast.splat, %wide.load122
  %247 = bitcast float* %244 to <8 x float>*
  store <8 x float> %246, <8 x float>* %247, align 4, !tbaa !12, !llvm.access.group !16
  %248 = add nsw i32 %193, %conv.i.i.9
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds float, float* %10, i64 %249
  %251 = bitcast float* %250 to <8 x float>*
  %wide.load123 = load <8 x float>, <8 x float>* %251, align 4, !tbaa !12, !llvm.access.group !16
  %252 = fmul <8 x float> %broadcast.splat, %wide.load123
  %253 = bitcast float* %250 to <8 x float>*
  store <8 x float> %252, <8 x float>* %253, align 4, !tbaa !12, !llvm.access.group !16
  %254 = add nsw i32 %193, %conv.i.i.10
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %10, i64 %255
  %257 = bitcast float* %256 to <8 x float>*
  %wide.load124 = load <8 x float>, <8 x float>* %257, align 4, !tbaa !12, !llvm.access.group !16
  %258 = fmul <8 x float> %broadcast.splat, %wide.load124
  %259 = bitcast float* %256 to <8 x float>*
  store <8 x float> %258, <8 x float>* %259, align 4, !tbaa !12, !llvm.access.group !16
  %260 = add nsw i32 %193, %conv.i.i.11
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %10, i64 %261
  %263 = bitcast float* %262 to <8 x float>*
  %wide.load125 = load <8 x float>, <8 x float>* %263, align 4, !tbaa !12, !llvm.access.group !16
  %264 = fmul <8 x float> %broadcast.splat, %wide.load125
  %265 = bitcast float* %262 to <8 x float>*
  store <8 x float> %264, <8 x float>* %265, align 4, !tbaa !12, !llvm.access.group !16
  %266 = add nsw i32 %193, %conv.i.i.12
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %10, i64 %267
  %269 = bitcast float* %268 to <8 x float>*
  %wide.load126 = load <8 x float>, <8 x float>* %269, align 4, !tbaa !12, !llvm.access.group !16
  %270 = fmul <8 x float> %broadcast.splat, %wide.load126
  %271 = bitcast float* %268 to <8 x float>*
  store <8 x float> %270, <8 x float>* %271, align 4, !tbaa !12, !llvm.access.group !16
  %272 = add nsw i32 %193, %conv.i.i.13
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float* %10, i64 %273
  %275 = bitcast float* %274 to <8 x float>*
  %wide.load127 = load <8 x float>, <8 x float>* %275, align 4, !tbaa !12, !llvm.access.group !16
  %276 = fmul <8 x float> %broadcast.splat, %wide.load127
  %277 = bitcast float* %274 to <8 x float>*
  store <8 x float> %276, <8 x float>* %277, align 4, !tbaa !12, !llvm.access.group !16
  %278 = add nsw i32 %193, %conv.i.i.14
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %10, i64 %279
  %281 = bitcast float* %280 to <8 x float>*
  %wide.load128 = load <8 x float>, <8 x float>* %281, align 4, !tbaa !12, !llvm.access.group !16
  %282 = fmul <8 x float> %broadcast.splat, %wide.load128
  %283 = bitcast float* %280 to <8 x float>*
  store <8 x float> %282, <8 x float>* %283, align 4, !tbaa !12, !llvm.access.group !16
  %284 = add nsw i32 %193, %conv.i.i.15
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds float, float* %10, i64 %285
  %287 = bitcast float* %286 to <8 x float>*
  %wide.load129 = load <8 x float>, <8 x float>* %287, align 4, !tbaa !12, !llvm.access.group !16
  %288 = fmul <8 x float> %broadcast.splat, %wide.load129
  %289 = bitcast float* %286 to <8 x float>*
  store <8 x float> %288, <8 x float>* %289, align 4, !tbaa !12, !llvm.access.group !16
  %290 = add nsw i32 %193, %conv.i.i.16
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, float* %10, i64 %291
  %293 = bitcast float* %292 to <8 x float>*
  %wide.load130 = load <8 x float>, <8 x float>* %293, align 4, !tbaa !12, !llvm.access.group !16
  %294 = fmul <8 x float> %broadcast.splat, %wide.load130
  %295 = bitcast float* %292 to <8 x float>*
  store <8 x float> %294, <8 x float>* %295, align 4, !tbaa !12, !llvm.access.group !16
  %296 = add nsw i32 %193, %conv.i.i.17
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds float, float* %10, i64 %297
  %299 = bitcast float* %298 to <8 x float>*
  %wide.load131 = load <8 x float>, <8 x float>* %299, align 4, !tbaa !12, !llvm.access.group !16
  %300 = fmul <8 x float> %broadcast.splat, %wide.load131
  %301 = bitcast float* %298 to <8 x float>*
  store <8 x float> %300, <8 x float>* %301, align 4, !tbaa !12, !llvm.access.group !16
  %302 = add nsw i32 %193, %conv.i.i.18
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %10, i64 %303
  %305 = bitcast float* %304 to <8 x float>*
  %wide.load132 = load <8 x float>, <8 x float>* %305, align 4, !tbaa !12, !llvm.access.group !16
  %306 = fmul <8 x float> %broadcast.splat, %wide.load132
  %307 = bitcast float* %304 to <8 x float>*
  store <8 x float> %306, <8 x float>* %307, align 4, !tbaa !12, !llvm.access.group !16
  %308 = add nsw i32 %193, %conv.i.i.19
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %10, i64 %309
  %311 = bitcast float* %310 to <8 x float>*
  %wide.load133 = load <8 x float>, <8 x float>* %311, align 4, !tbaa !12, !llvm.access.group !16
  %312 = fmul <8 x float> %broadcast.splat, %wide.load133
  %313 = bitcast float* %310 to <8 x float>*
  store <8 x float> %312, <8 x float>* %313, align 4, !tbaa !12, !llvm.access.group !16
  %314 = add nsw i32 %193, %conv.i.i.20
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds float, float* %10, i64 %315
  %317 = bitcast float* %316 to <8 x float>*
  %wide.load134 = load <8 x float>, <8 x float>* %317, align 4, !tbaa !12, !llvm.access.group !16
  %318 = fmul <8 x float> %broadcast.splat, %wide.load134
  %319 = bitcast float* %316 to <8 x float>*
  store <8 x float> %318, <8 x float>* %319, align 4, !tbaa !12, !llvm.access.group !16
  %320 = add nsw i32 %193, %conv.i.i.21
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds float, float* %10, i64 %321
  %323 = bitcast float* %322 to <8 x float>*
  %wide.load135 = load <8 x float>, <8 x float>* %323, align 4, !tbaa !12, !llvm.access.group !16
  %324 = fmul <8 x float> %broadcast.splat, %wide.load135
  %325 = bitcast float* %322 to <8 x float>*
  store <8 x float> %324, <8 x float>* %325, align 4, !tbaa !12, !llvm.access.group !16
  %326 = add nsw i32 %193, %conv.i.i.22
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %10, i64 %327
  %329 = bitcast float* %328 to <8 x float>*
  %wide.load136 = load <8 x float>, <8 x float>* %329, align 4, !tbaa !12, !llvm.access.group !16
  %330 = fmul <8 x float> %broadcast.splat, %wide.load136
  %331 = bitcast float* %328 to <8 x float>*
  store <8 x float> %330, <8 x float>* %331, align 4, !tbaa !12, !llvm.access.group !16
  %332 = add nsw i32 %193, %conv.i.i.23
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds float, float* %10, i64 %333
  %335 = bitcast float* %334 to <8 x float>*
  %wide.load137 = load <8 x float>, <8 x float>* %335, align 4, !tbaa !12, !llvm.access.group !16
  %336 = fmul <8 x float> %broadcast.splat, %wide.load137
  %337 = bitcast float* %334 to <8 x float>*
  store <8 x float> %336, <8 x float>* %337, align 4, !tbaa !12, !llvm.access.group !16
  %338 = add nsw i32 %193, %conv.i.i.24
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds float, float* %10, i64 %339
  %341 = bitcast float* %340 to <8 x float>*
  %wide.load138 = load <8 x float>, <8 x float>* %341, align 4, !tbaa !12, !llvm.access.group !16
  %342 = fmul <8 x float> %broadcast.splat, %wide.load138
  %343 = bitcast float* %340 to <8 x float>*
  store <8 x float> %342, <8 x float>* %343, align 4, !tbaa !12, !llvm.access.group !16
  %344 = add nsw i32 %193, %conv.i.i.25
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float, float* %10, i64 %345
  %347 = bitcast float* %346 to <8 x float>*
  %wide.load139 = load <8 x float>, <8 x float>* %347, align 4, !tbaa !12, !llvm.access.group !16
  %348 = fmul <8 x float> %broadcast.splat, %wide.load139
  %349 = bitcast float* %346 to <8 x float>*
  store <8 x float> %348, <8 x float>* %349, align 4, !tbaa !12, !llvm.access.group !16
  %350 = add nsw i32 %193, %conv.i.i.26
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds float, float* %10, i64 %351
  %353 = bitcast float* %352 to <8 x float>*
  %wide.load140 = load <8 x float>, <8 x float>* %353, align 4, !tbaa !12, !llvm.access.group !16
  %354 = fmul <8 x float> %broadcast.splat, %wide.load140
  %355 = bitcast float* %352 to <8 x float>*
  store <8 x float> %354, <8 x float>* %355, align 4, !tbaa !12, !llvm.access.group !16
  %356 = add nsw i32 %193, %conv.i.i.27
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds float, float* %10, i64 %357
  %359 = bitcast float* %358 to <8 x float>*
  %wide.load141 = load <8 x float>, <8 x float>* %359, align 4, !tbaa !12, !llvm.access.group !16
  %360 = fmul <8 x float> %broadcast.splat, %wide.load141
  %361 = bitcast float* %358 to <8 x float>*
  store <8 x float> %360, <8 x float>* %361, align 4, !tbaa !12, !llvm.access.group !16
  %362 = add nsw i32 %193, %conv.i.i.28
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float* %10, i64 %363
  %365 = bitcast float* %364 to <8 x float>*
  %wide.load142 = load <8 x float>, <8 x float>* %365, align 4, !tbaa !12, !llvm.access.group !16
  %366 = fmul <8 x float> %broadcast.splat, %wide.load142
  %367 = bitcast float* %364 to <8 x float>*
  store <8 x float> %366, <8 x float>* %367, align 4, !tbaa !12, !llvm.access.group !16
  %368 = add nsw i32 %193, %conv.i.i.29
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds float, float* %10, i64 %369
  %371 = bitcast float* %370 to <8 x float>*
  %wide.load143 = load <8 x float>, <8 x float>* %371, align 4, !tbaa !12, !llvm.access.group !16
  %372 = fmul <8 x float> %broadcast.splat, %wide.load143
  %373 = bitcast float* %370 to <8 x float>*
  store <8 x float> %372, <8 x float>* %373, align 4, !tbaa !12, !llvm.access.group !16
  %374 = add nsw i32 %193, %conv.i.i.30
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds float, float* %10, i64 %375
  %377 = bitcast float* %376 to <8 x float>*
  %wide.load144 = load <8 x float>, <8 x float>* %377, align 4, !tbaa !12, !llvm.access.group !16
  %378 = fmul <8 x float> %broadcast.splat, %wide.load144
  %379 = bitcast float* %376 to <8 x float>*
  store <8 x float> %378, <8 x float>* %379, align 4, !tbaa !12, !llvm.access.group !16
  %380 = add nsw i32 %193, %conv.i.i.31
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds float, float* %10, i64 %381
  %383 = bitcast float* %382 to <8 x float>*
  %wide.load145 = load <8 x float>, <8 x float>* %383, align 4, !tbaa !12, !llvm.access.group !16
  %384 = fmul <8 x float> %broadcast.splat, %wide.load145
  %385 = bitcast float* %382 to <8 x float>*
  store <8 x float> %384, <8 x float>* %385, align 4, !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_syrk_kernel.exit

pregion_for_entry.pregion_for_init.i.i.us.preheader: ; preds = %5
  %conv2.i.i.us = trunc i64 %mul3.i.i.i to i32
  %mul.i.i.us = mul nsw i32 %26, %conv2.i.i.us
  %mul5.i.i.us = mul nsw i32 %22, %conv2.i.i.us
  %386 = sext i32 %mul5.i.i.us to i64
  br label %pregion_for_entry.entry.i.i.us.us

pregion_for_entry.entry.i.i.us.us:                ; preds = %for.end.r_exit.i.i.loopexit.us.us.1165, %pregion_for_entry.pregion_for_init.i.i.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i.i.us.preheader ], [ %577, %for.end.r_exit.i.i.loopexit.us.us.1165 ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %add.i.i.us.us = add nsw i32 %mul.i.i.us, %conv.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us
  %387 = load float, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us = fmul float %18, %387
  store float %mul3.i.i.us.us, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us = mul nsw i32 %22, %conv.i.i.us.us
  %388 = sext i32 %mul10.i.i.us.us to i64
  br label %for.body.i.i.us.us

for.end.r_exit.i.i.loopexit.us.us:                ; preds = %for.body.i.i.us.us
  %389 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.1150 = add nuw nsw i64 %389, %mul.i.i.i
  %conv.i.i.us.us.1151 = trunc i64 %add1.i.i.i.us.us.1150 to i32
  %add.i.i.us.us.1152 = add nsw i32 %mul.i.i.us, %conv.i.i.us.us.1151
  %idxprom.i.i.us.us.1153 = sext i32 %add.i.i.us.us.1152 to i64
  %arrayidx.i.i.us.us.1154 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.1153
  %390 = load float, float* %arrayidx.i.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1155 = fmul float %18, %390
  store float %mul3.i.i.us.us.1155, float* %arrayidx.i.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.1156 = mul nsw i32 %22, %conv.i.i.us.us.1151
  %391 = sext i32 %mul10.i.i.us.us.1156 to i64
  br label %for.body.i.i.us.us.1164

for.body.i.i.us.us:                               ; preds = %for.body.i.i.us.us, %pregion_for_entry.entry.i.i.us.us
  %indvars.iv.next.i.i2.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %for.body.i.i.us.us ], [ 0, %pregion_for_entry.entry.i.i.us.us ]
  %392 = phi float [ %397, %for.body.i.i.us.us ], [ %mul3.i.i.us.us, %pregion_for_entry.entry.i.i.us.us ]
  %393 = add nsw i64 %indvars.iv.next.i.i2.us.us, %386
  %arrayidx8.i.i.us.us = getelementptr inbounds float, float* %7, i64 %393
  %394 = load float, float* %arrayidx8.i.i.us.us, align 4, !tbaa !12
  %mul9.i.i.us.us = fmul float %14, %394
  %395 = add nsw i64 %indvars.iv.next.i.i2.us.us, %388
  %arrayidx13.i.i.us.us = getelementptr inbounds float, float* %7, i64 %395
  %396 = load float, float* %arrayidx13.i.i.us.us, align 4, !tbaa !12
  %397 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us, float %396, float %392) #2
  store float %397, float* %arrayidx.i.i.us.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.next.i.i2.us.us, 1
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us, label %for.end.r_exit.i.i.loopexit.us.us, label %for.body.i.i.us.us, !llvm.loop !19

pregion_for_end.i.i.us-lcssa.us.us:               ; preds = %for.end.r_exit.i.i.loopexit.us.us.1165
  %398 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.1 = or i32 %398, 1
  %mul.i.i.us.1 = mul nsw i32 %26, %conv2.i.i.us.1
  %mul5.i.i.us.1 = mul nsw i32 %22, %conv2.i.i.us.1
  %399 = sext i32 %mul5.i.i.us.1 to i64
  br label %pregion_for_entry.entry.i.i.us.us.1

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %pregion_for_entry.pregion_for_init.i.i.preheader166
  %_local_id_y.i.0 = phi i64 [ %432, %pregion_for_entry.pregion_for_init.i.i ], [ 0, %pregion_for_entry.pregion_for_init.i.i.preheader166 ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %mul.i.i = mul nsw i32 %26, %conv2.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %10, i64 %idxprom.i.i
  %400 = load float, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i = fmul float %18, %400
  store float %mul3.i.i, float* %arrayidx.i.i, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.1
  %401 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.1 = fmul float %18, %401
  store float %mul3.i.i.1, float* %arrayidx.i.i.1, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.2 = add nsw i32 %mul.i.i, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.2
  %402 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.2 = fmul float %18, %402
  store float %mul3.i.i.2, float* %arrayidx.i.i.2, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.3 = add nsw i32 %mul.i.i, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.3
  %403 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.3 = fmul float %18, %403
  store float %mul3.i.i.3, float* %arrayidx.i.i.3, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.4 = add nsw i32 %mul.i.i, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.4
  %404 = load float, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.4 = fmul float %18, %404
  store float %mul3.i.i.4, float* %arrayidx.i.i.4, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.5 = add nsw i32 %mul.i.i, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.5
  %405 = load float, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.5 = fmul float %18, %405
  store float %mul3.i.i.5, float* %arrayidx.i.i.5, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.6 = add nsw i32 %mul.i.i, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.6
  %406 = load float, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.6 = fmul float %18, %406
  store float %mul3.i.i.6, float* %arrayidx.i.i.6, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.7 = add nsw i32 %mul.i.i, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.7
  %407 = load float, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.7 = fmul float %18, %407
  store float %mul3.i.i.7, float* %arrayidx.i.i.7, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.8 = add nsw i32 %mul.i.i, %conv.i.i.8
  %idxprom.i.i.8 = sext i32 %add.i.i.8 to i64
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.8
  %408 = load float, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.8 = fmul float %18, %408
  store float %mul3.i.i.8, float* %arrayidx.i.i.8, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.9 = add nsw i32 %mul.i.i, %conv.i.i.9
  %idxprom.i.i.9 = sext i32 %add.i.i.9 to i64
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.9
  %409 = load float, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.9 = fmul float %18, %409
  store float %mul3.i.i.9, float* %arrayidx.i.i.9, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.10 = add nsw i32 %mul.i.i, %conv.i.i.10
  %idxprom.i.i.10 = sext i32 %add.i.i.10 to i64
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.10
  %410 = load float, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.10 = fmul float %18, %410
  store float %mul3.i.i.10, float* %arrayidx.i.i.10, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.11 = add nsw i32 %mul.i.i, %conv.i.i.11
  %idxprom.i.i.11 = sext i32 %add.i.i.11 to i64
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.11
  %411 = load float, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.11 = fmul float %18, %411
  store float %mul3.i.i.11, float* %arrayidx.i.i.11, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.12 = add nsw i32 %mul.i.i, %conv.i.i.12
  %idxprom.i.i.12 = sext i32 %add.i.i.12 to i64
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.12
  %412 = load float, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.12 = fmul float %18, %412
  store float %mul3.i.i.12, float* %arrayidx.i.i.12, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.13 = add nsw i32 %mul.i.i, %conv.i.i.13
  %idxprom.i.i.13 = sext i32 %add.i.i.13 to i64
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.13
  %413 = load float, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.13 = fmul float %18, %413
  store float %mul3.i.i.13, float* %arrayidx.i.i.13, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.14 = add nsw i32 %mul.i.i, %conv.i.i.14
  %idxprom.i.i.14 = sext i32 %add.i.i.14 to i64
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.14
  %414 = load float, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.14 = fmul float %18, %414
  store float %mul3.i.i.14, float* %arrayidx.i.i.14, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.15 = add nsw i32 %mul.i.i, %conv.i.i.15
  %idxprom.i.i.15 = sext i32 %add.i.i.15 to i64
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.15
  %415 = load float, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.15 = fmul float %18, %415
  store float %mul3.i.i.15, float* %arrayidx.i.i.15, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.16 = add nsw i32 %mul.i.i, %conv.i.i.16
  %idxprom.i.i.16 = sext i32 %add.i.i.16 to i64
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.16
  %416 = load float, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.16 = fmul float %18, %416
  store float %mul3.i.i.16, float* %arrayidx.i.i.16, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.17 = add nsw i32 %mul.i.i, %conv.i.i.17
  %idxprom.i.i.17 = sext i32 %add.i.i.17 to i64
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.17
  %417 = load float, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.17 = fmul float %18, %417
  store float %mul3.i.i.17, float* %arrayidx.i.i.17, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.18 = add nsw i32 %mul.i.i, %conv.i.i.18
  %idxprom.i.i.18 = sext i32 %add.i.i.18 to i64
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.18
  %418 = load float, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.18 = fmul float %18, %418
  store float %mul3.i.i.18, float* %arrayidx.i.i.18, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.19 = add nsw i32 %mul.i.i, %conv.i.i.19
  %idxprom.i.i.19 = sext i32 %add.i.i.19 to i64
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.19
  %419 = load float, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.19 = fmul float %18, %419
  store float %mul3.i.i.19, float* %arrayidx.i.i.19, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.20 = add nsw i32 %mul.i.i, %conv.i.i.20
  %idxprom.i.i.20 = sext i32 %add.i.i.20 to i64
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.20
  %420 = load float, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.20 = fmul float %18, %420
  store float %mul3.i.i.20, float* %arrayidx.i.i.20, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.21 = add nsw i32 %mul.i.i, %conv.i.i.21
  %idxprom.i.i.21 = sext i32 %add.i.i.21 to i64
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.21
  %421 = load float, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.21 = fmul float %18, %421
  store float %mul3.i.i.21, float* %arrayidx.i.i.21, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.22 = add nsw i32 %mul.i.i, %conv.i.i.22
  %idxprom.i.i.22 = sext i32 %add.i.i.22 to i64
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.22
  %422 = load float, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.22 = fmul float %18, %422
  store float %mul3.i.i.22, float* %arrayidx.i.i.22, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.23 = add nsw i32 %mul.i.i, %conv.i.i.23
  %idxprom.i.i.23 = sext i32 %add.i.i.23 to i64
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.23
  %423 = load float, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.23 = fmul float %18, %423
  store float %mul3.i.i.23, float* %arrayidx.i.i.23, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.24 = add nsw i32 %mul.i.i, %conv.i.i.24
  %idxprom.i.i.24 = sext i32 %add.i.i.24 to i64
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.24
  %424 = load float, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.24 = fmul float %18, %424
  store float %mul3.i.i.24, float* %arrayidx.i.i.24, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.25 = add nsw i32 %mul.i.i, %conv.i.i.25
  %idxprom.i.i.25 = sext i32 %add.i.i.25 to i64
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.25
  %425 = load float, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.25 = fmul float %18, %425
  store float %mul3.i.i.25, float* %arrayidx.i.i.25, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.26 = add nsw i32 %mul.i.i, %conv.i.i.26
  %idxprom.i.i.26 = sext i32 %add.i.i.26 to i64
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.26
  %426 = load float, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.26 = fmul float %18, %426
  store float %mul3.i.i.26, float* %arrayidx.i.i.26, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.27 = add nsw i32 %mul.i.i, %conv.i.i.27
  %idxprom.i.i.27 = sext i32 %add.i.i.27 to i64
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.27
  %427 = load float, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.27 = fmul float %18, %427
  store float %mul3.i.i.27, float* %arrayidx.i.i.27, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.28 = add nsw i32 %mul.i.i, %conv.i.i.28
  %idxprom.i.i.28 = sext i32 %add.i.i.28 to i64
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.28
  %428 = load float, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.28 = fmul float %18, %428
  store float %mul3.i.i.28, float* %arrayidx.i.i.28, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.29 = add nsw i32 %mul.i.i, %conv.i.i.29
  %idxprom.i.i.29 = sext i32 %add.i.i.29 to i64
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.29
  %429 = load float, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.29 = fmul float %18, %429
  store float %mul3.i.i.29, float* %arrayidx.i.i.29, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.30 = add nsw i32 %mul.i.i, %conv.i.i.30
  %idxprom.i.i.30 = sext i32 %add.i.i.30 to i64
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.30
  %430 = load float, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.30 = fmul float %18, %430
  store float %mul3.i.i.30, float* %arrayidx.i.i.30, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.31 = add nsw i32 %mul.i.i, %conv.i.i.31
  %idxprom.i.i.31 = sext i32 %add.i.i.31 to i64
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.31
  %431 = load float, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.31 = fmul float %18, %431
  store float %mul3.i.i.31, float* %arrayidx.i.i.31, align 4, !tbaa !12, !llvm.access.group !16
  %432 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond31.not = icmp eq i64 %432, 8
  br i1 %exitcond31.not, label %_pocl_kernel_syrk_kernel.exit.loopexit167, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !27

_pocl_kernel_syrk_kernel.exit.loopexit:           ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1
  br label %_pocl_kernel_syrk_kernel.exit

_pocl_kernel_syrk_kernel.exit.loopexit167:        ; preds = %pregion_for_entry.pregion_for_init.i.i
  br label %_pocl_kernel_syrk_kernel.exit

_pocl_kernel_syrk_kernel.exit:                    ; preds = %_pocl_kernel_syrk_kernel.exit.loopexit167, %_pocl_kernel_syrk_kernel.exit.loopexit, %vector.ph
  ret void

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1, %pregion_for_end.i.i.us-lcssa.us.us
  %_local_id_x.i.0.us.us.1 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us ], [ %570, %for.end.r_exit.i.i.loopexit.us.us.1.1 ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.1
  %433 = load float, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1 = fmul float %18, %433
  store float %mul3.i.i.us.us.1, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.1 = mul nsw i32 %22, %conv.i.i.us.us.1
  %434 = sext i32 %mul10.i.i.us.us.1 to i64
  br label %for.body.i.i.us.us.1

for.body.i.i.us.us.1:                             ; preds = %for.body.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1
  %indvars.iv.next.i.i2.us.us.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1, %for.body.i.i.us.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.us.1 ]
  %435 = phi float [ %440, %for.body.i.i.us.us.1 ], [ %mul3.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1 ]
  %436 = add nsw i64 %indvars.iv.next.i.i2.us.us.1, %399
  %arrayidx8.i.i.us.us.1 = getelementptr inbounds float, float* %7, i64 %436
  %437 = load float, float* %arrayidx8.i.i.us.us.1, align 4, !tbaa !12
  %mul9.i.i.us.us.1 = fmul float %14, %437
  %438 = add nsw i64 %indvars.iv.next.i.i2.us.us.1, %434
  %arrayidx13.i.i.us.us.1 = getelementptr inbounds float, float* %7, i64 %438
  %439 = load float, float* %arrayidx13.i.i.us.us.1, align 4, !tbaa !12
  %440 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.1, float %439, float %435) #2
  store float %440, float* %arrayidx.i.i.us.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1, 1
  %exitcond.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1, label %for.end.r_exit.i.i.loopexit.us.us.1, label %for.body.i.i.us.us.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1:              ; preds = %for.body.i.i.us.us.1
  %441 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %441, %mul.i.i.i
  %conv.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %add.i.i.us.us.1.1 = add nsw i32 %mul.i.i.us.1, %conv.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.1.1
  %442 = load float, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.1.1 = fmul float %18, %442
  store float %mul3.i.i.us.us.1.1, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.1.1 = mul nsw i32 %22, %conv.i.i.us.us.1.1
  %443 = sext i32 %mul10.i.i.us.us.1.1 to i64
  br label %for.body.i.i.us.us.1.1

pregion_for_end.i.i.us-lcssa.us.us.1:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.1.1
  %444 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.2 = or i32 %444, 2
  %mul.i.i.us.2 = mul nsw i32 %26, %conv2.i.i.us.2
  %mul5.i.i.us.2 = mul nsw i32 %22, %conv2.i.i.us.2
  %445 = sext i32 %mul5.i.i.us.2 to i64
  br label %pregion_for_entry.entry.i.i.us.us.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1, %pregion_for_end.i.i.us-lcssa.us.us.1
  %_local_id_x.i.0.us.us.2 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.1 ], [ %563, %for.end.r_exit.i.i.loopexit.us.us.2.1 ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.2
  %446 = load float, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.2 = fmul float %18, %446
  store float %mul3.i.i.us.us.2, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.2 = mul nsw i32 %22, %conv.i.i.us.us.2
  %447 = sext i32 %mul10.i.i.us.us.2 to i64
  br label %for.body.i.i.us.us.2

for.body.i.i.us.us.2:                             ; preds = %for.body.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2
  %indvars.iv.next.i.i2.us.us.2 = phi i64 [ %indvars.iv.next.i.i.us.us.2, %for.body.i.i.us.us.2 ], [ 0, %pregion_for_entry.entry.i.i.us.us.2 ]
  %448 = phi float [ %453, %for.body.i.i.us.us.2 ], [ %mul3.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2 ]
  %449 = add nsw i64 %indvars.iv.next.i.i2.us.us.2, %445
  %arrayidx8.i.i.us.us.2 = getelementptr inbounds float, float* %7, i64 %449
  %450 = load float, float* %arrayidx8.i.i.us.us.2, align 4, !tbaa !12
  %mul9.i.i.us.us.2 = fmul float %14, %450
  %451 = add nsw i64 %indvars.iv.next.i.i2.us.us.2, %447
  %arrayidx13.i.i.us.us.2 = getelementptr inbounds float, float* %7, i64 %451
  %452 = load float, float* %arrayidx13.i.i.us.us.2, align 4, !tbaa !12
  %453 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.2, float %452, float %448) #2
  store float %453, float* %arrayidx.i.i.us.us.2, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2, 1
  %exitcond.not.i.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.i.us.us.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2, label %for.end.r_exit.i.i.loopexit.us.us.2, label %for.body.i.i.us.us.2, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2:              ; preds = %for.body.i.i.us.us.2
  %454 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %454, %mul.i.i.i
  %conv.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %add.i.i.us.us.2.1 = add nsw i32 %mul.i.i.us.2, %conv.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.2.1
  %455 = load float, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.2.1 = fmul float %18, %455
  store float %mul3.i.i.us.us.2.1, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.2.1 = mul nsw i32 %22, %conv.i.i.us.us.2.1
  %456 = sext i32 %mul10.i.i.us.us.2.1 to i64
  br label %for.body.i.i.us.us.2.1

pregion_for_end.i.i.us-lcssa.us.us.2:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.2.1
  %457 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.3 = or i32 %457, 3
  %mul.i.i.us.3 = mul nsw i32 %26, %conv2.i.i.us.3
  %mul5.i.i.us.3 = mul nsw i32 %22, %conv2.i.i.us.3
  %458 = sext i32 %mul5.i.i.us.3 to i64
  br label %pregion_for_entry.entry.i.i.us.us.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1, %pregion_for_end.i.i.us-lcssa.us.us.2
  %_local_id_x.i.0.us.us.3 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.2 ], [ %556, %for.end.r_exit.i.i.loopexit.us.us.3.1 ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.3
  %459 = load float, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.3 = fmul float %18, %459
  store float %mul3.i.i.us.us.3, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.3 = mul nsw i32 %22, %conv.i.i.us.us.3
  %460 = sext i32 %mul10.i.i.us.us.3 to i64
  br label %for.body.i.i.us.us.3

for.body.i.i.us.us.3:                             ; preds = %for.body.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3
  %indvars.iv.next.i.i2.us.us.3 = phi i64 [ %indvars.iv.next.i.i.us.us.3, %for.body.i.i.us.us.3 ], [ 0, %pregion_for_entry.entry.i.i.us.us.3 ]
  %461 = phi float [ %466, %for.body.i.i.us.us.3 ], [ %mul3.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3 ]
  %462 = add nsw i64 %indvars.iv.next.i.i2.us.us.3, %458
  %arrayidx8.i.i.us.us.3 = getelementptr inbounds float, float* %7, i64 %462
  %463 = load float, float* %arrayidx8.i.i.us.us.3, align 4, !tbaa !12
  %mul9.i.i.us.us.3 = fmul float %14, %463
  %464 = add nsw i64 %indvars.iv.next.i.i2.us.us.3, %460
  %arrayidx13.i.i.us.us.3 = getelementptr inbounds float, float* %7, i64 %464
  %465 = load float, float* %arrayidx13.i.i.us.us.3, align 4, !tbaa !12
  %466 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.3, float %465, float %461) #2
  store float %466, float* %arrayidx.i.i.us.us.3, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3, 1
  %exitcond.not.i.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.i.us.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3, label %for.end.r_exit.i.i.loopexit.us.us.3, label %for.body.i.i.us.us.3, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3:              ; preds = %for.body.i.i.us.us.3
  %467 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %467, %mul.i.i.i
  %conv.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %add.i.i.us.us.3.1 = add nsw i32 %mul.i.i.us.3, %conv.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.3.1
  %468 = load float, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.3.1 = fmul float %18, %468
  store float %mul3.i.i.us.us.3.1, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.3.1 = mul nsw i32 %22, %conv.i.i.us.us.3.1
  %469 = sext i32 %mul10.i.i.us.us.3.1 to i64
  br label %for.body.i.i.us.us.3.1

pregion_for_end.i.i.us-lcssa.us.us.3:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.3.1
  %470 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.4 = or i32 %470, 4
  %mul.i.i.us.4 = mul nsw i32 %26, %conv2.i.i.us.4
  %mul5.i.i.us.4 = mul nsw i32 %22, %conv2.i.i.us.4
  %471 = sext i32 %mul5.i.i.us.4 to i64
  br label %pregion_for_entry.entry.i.i.us.us.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1, %pregion_for_end.i.i.us-lcssa.us.us.3
  %_local_id_x.i.0.us.us.4 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.3 ], [ %549, %for.end.r_exit.i.i.loopexit.us.us.4.1 ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.4
  %472 = load float, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.4 = fmul float %18, %472
  store float %mul3.i.i.us.us.4, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.4 = mul nsw i32 %22, %conv.i.i.us.us.4
  %473 = sext i32 %mul10.i.i.us.us.4 to i64
  br label %for.body.i.i.us.us.4

for.body.i.i.us.us.4:                             ; preds = %for.body.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4
  %indvars.iv.next.i.i2.us.us.4 = phi i64 [ %indvars.iv.next.i.i.us.us.4, %for.body.i.i.us.us.4 ], [ 0, %pregion_for_entry.entry.i.i.us.us.4 ]
  %474 = phi float [ %479, %for.body.i.i.us.us.4 ], [ %mul3.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4 ]
  %475 = add nsw i64 %indvars.iv.next.i.i2.us.us.4, %471
  %arrayidx8.i.i.us.us.4 = getelementptr inbounds float, float* %7, i64 %475
  %476 = load float, float* %arrayidx8.i.i.us.us.4, align 4, !tbaa !12
  %mul9.i.i.us.us.4 = fmul float %14, %476
  %477 = add nsw i64 %indvars.iv.next.i.i2.us.us.4, %473
  %arrayidx13.i.i.us.us.4 = getelementptr inbounds float, float* %7, i64 %477
  %478 = load float, float* %arrayidx13.i.i.us.us.4, align 4, !tbaa !12
  %479 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.4, float %478, float %474) #2
  store float %479, float* %arrayidx.i.i.us.us.4, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4, 1
  %exitcond.not.i.i.us.us.4 = icmp eq i64 %indvars.iv.next.i.i.us.us.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4, label %for.end.r_exit.i.i.loopexit.us.us.4, label %for.body.i.i.us.us.4, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4:              ; preds = %for.body.i.i.us.us.4
  %480 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %480, %mul.i.i.i
  %conv.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %add.i.i.us.us.4.1 = add nsw i32 %mul.i.i.us.4, %conv.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.4.1
  %481 = load float, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.4.1 = fmul float %18, %481
  store float %mul3.i.i.us.us.4.1, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.4.1 = mul nsw i32 %22, %conv.i.i.us.us.4.1
  %482 = sext i32 %mul10.i.i.us.us.4.1 to i64
  br label %for.body.i.i.us.us.4.1

pregion_for_end.i.i.us-lcssa.us.us.4:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.4.1
  %483 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.5 = or i32 %483, 5
  %mul.i.i.us.5 = mul nsw i32 %26, %conv2.i.i.us.5
  %mul5.i.i.us.5 = mul nsw i32 %22, %conv2.i.i.us.5
  %484 = sext i32 %mul5.i.i.us.5 to i64
  br label %pregion_for_entry.entry.i.i.us.us.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1, %pregion_for_end.i.i.us-lcssa.us.us.4
  %_local_id_x.i.0.us.us.5 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.4 ], [ %542, %for.end.r_exit.i.i.loopexit.us.us.5.1 ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.5
  %485 = load float, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.5 = fmul float %18, %485
  store float %mul3.i.i.us.us.5, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.5 = mul nsw i32 %22, %conv.i.i.us.us.5
  %486 = sext i32 %mul10.i.i.us.us.5 to i64
  br label %for.body.i.i.us.us.5

for.body.i.i.us.us.5:                             ; preds = %for.body.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5
  %indvars.iv.next.i.i2.us.us.5 = phi i64 [ %indvars.iv.next.i.i.us.us.5, %for.body.i.i.us.us.5 ], [ 0, %pregion_for_entry.entry.i.i.us.us.5 ]
  %487 = phi float [ %492, %for.body.i.i.us.us.5 ], [ %mul3.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5 ]
  %488 = add nsw i64 %indvars.iv.next.i.i2.us.us.5, %484
  %arrayidx8.i.i.us.us.5 = getelementptr inbounds float, float* %7, i64 %488
  %489 = load float, float* %arrayidx8.i.i.us.us.5, align 4, !tbaa !12
  %mul9.i.i.us.us.5 = fmul float %14, %489
  %490 = add nsw i64 %indvars.iv.next.i.i2.us.us.5, %486
  %arrayidx13.i.i.us.us.5 = getelementptr inbounds float, float* %7, i64 %490
  %491 = load float, float* %arrayidx13.i.i.us.us.5, align 4, !tbaa !12
  %492 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.5, float %491, float %487) #2
  store float %492, float* %arrayidx.i.i.us.us.5, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5, 1
  %exitcond.not.i.i.us.us.5 = icmp eq i64 %indvars.iv.next.i.i.us.us.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5, label %for.end.r_exit.i.i.loopexit.us.us.5, label %for.body.i.i.us.us.5, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5:              ; preds = %for.body.i.i.us.us.5
  %493 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %493, %mul.i.i.i
  %conv.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %add.i.i.us.us.5.1 = add nsw i32 %mul.i.i.us.5, %conv.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.5.1
  %494 = load float, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.5.1 = fmul float %18, %494
  store float %mul3.i.i.us.us.5.1, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.5.1 = mul nsw i32 %22, %conv.i.i.us.us.5.1
  %495 = sext i32 %mul10.i.i.us.us.5.1 to i64
  br label %for.body.i.i.us.us.5.1

pregion_for_end.i.i.us-lcssa.us.us.5:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.5.1
  %496 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.6 = or i32 %496, 6
  %mul.i.i.us.6 = mul nsw i32 %26, %conv2.i.i.us.6
  %mul5.i.i.us.6 = mul nsw i32 %22, %conv2.i.i.us.6
  %497 = sext i32 %mul5.i.i.us.6 to i64
  br label %pregion_for_entry.entry.i.i.us.us.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1, %pregion_for_end.i.i.us-lcssa.us.us.5
  %_local_id_x.i.0.us.us.6 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.5 ], [ %535, %for.end.r_exit.i.i.loopexit.us.us.6.1 ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.6
  %498 = load float, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.6 = fmul float %18, %498
  store float %mul3.i.i.us.us.6, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.6 = mul nsw i32 %22, %conv.i.i.us.us.6
  %499 = sext i32 %mul10.i.i.us.us.6 to i64
  br label %for.body.i.i.us.us.6

for.body.i.i.us.us.6:                             ; preds = %for.body.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6
  %indvars.iv.next.i.i2.us.us.6 = phi i64 [ %indvars.iv.next.i.i.us.us.6, %for.body.i.i.us.us.6 ], [ 0, %pregion_for_entry.entry.i.i.us.us.6 ]
  %500 = phi float [ %505, %for.body.i.i.us.us.6 ], [ %mul3.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6 ]
  %501 = add nsw i64 %indvars.iv.next.i.i2.us.us.6, %497
  %arrayidx8.i.i.us.us.6 = getelementptr inbounds float, float* %7, i64 %501
  %502 = load float, float* %arrayidx8.i.i.us.us.6, align 4, !tbaa !12
  %mul9.i.i.us.us.6 = fmul float %14, %502
  %503 = add nsw i64 %indvars.iv.next.i.i2.us.us.6, %499
  %arrayidx13.i.i.us.us.6 = getelementptr inbounds float, float* %7, i64 %503
  %504 = load float, float* %arrayidx13.i.i.us.us.6, align 4, !tbaa !12
  %505 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.6, float %504, float %500) #2
  store float %505, float* %arrayidx.i.i.us.us.6, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6, 1
  %exitcond.not.i.i.us.us.6 = icmp eq i64 %indvars.iv.next.i.i.us.us.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6, label %for.end.r_exit.i.i.loopexit.us.us.6, label %for.body.i.i.us.us.6, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6:              ; preds = %for.body.i.i.us.us.6
  %506 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %506, %mul.i.i.i
  %conv.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %add.i.i.us.us.6.1 = add nsw i32 %mul.i.i.us.6, %conv.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.6.1
  %507 = load float, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.6.1 = fmul float %18, %507
  store float %mul3.i.i.us.us.6.1, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.6.1 = mul nsw i32 %22, %conv.i.i.us.us.6.1
  %508 = sext i32 %mul10.i.i.us.us.6.1 to i64
  br label %for.body.i.i.us.us.6.1

pregion_for_end.i.i.us-lcssa.us.us.6:             ; preds = %for.end.r_exit.i.i.loopexit.us.us.6.1
  %509 = trunc i64 %mul3.i.i.i to i32
  %conv2.i.i.us.7 = or i32 %509, 7
  %mul.i.i.us.7 = mul nsw i32 %26, %conv2.i.i.us.7
  %mul5.i.i.us.7 = mul nsw i32 %22, %conv2.i.i.us.7
  %510 = sext i32 %mul5.i.i.us.7 to i64
  br label %pregion_for_entry.entry.i.i.us.us.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %for.end.r_exit.i.i.loopexit.us.us.7.1, %pregion_for_end.i.i.us-lcssa.us.us.6
  %_local_id_x.i.0.us.us.7 = phi i64 [ 0, %pregion_for_end.i.i.us-lcssa.us.us.6 ], [ %528, %for.end.r_exit.i.i.loopexit.us.us.7.1 ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.7
  %511 = load float, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.7 = fmul float %18, %511
  store float %mul3.i.i.us.us.7, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.7 = mul nsw i32 %22, %conv.i.i.us.us.7
  %512 = sext i32 %mul10.i.i.us.us.7 to i64
  br label %for.body.i.i.us.us.7

for.body.i.i.us.us.7:                             ; preds = %for.body.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7
  %indvars.iv.next.i.i2.us.us.7 = phi i64 [ %indvars.iv.next.i.i.us.us.7, %for.body.i.i.us.us.7 ], [ 0, %pregion_for_entry.entry.i.i.us.us.7 ]
  %513 = phi float [ %518, %for.body.i.i.us.us.7 ], [ %mul3.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7 ]
  %514 = add nsw i64 %indvars.iv.next.i.i2.us.us.7, %510
  %arrayidx8.i.i.us.us.7 = getelementptr inbounds float, float* %7, i64 %514
  %515 = load float, float* %arrayidx8.i.i.us.us.7, align 4, !tbaa !12
  %mul9.i.i.us.us.7 = fmul float %14, %515
  %516 = add nsw i64 %indvars.iv.next.i.i2.us.us.7, %512
  %arrayidx13.i.i.us.us.7 = getelementptr inbounds float, float* %7, i64 %516
  %517 = load float, float* %arrayidx13.i.i.us.us.7, align 4, !tbaa !12
  %518 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.7, float %517, float %513) #2
  store float %518, float* %arrayidx.i.i.us.us.7, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7, 1
  %exitcond.not.i.i.us.us.7 = icmp eq i64 %indvars.iv.next.i.i.us.us.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7, label %for.end.r_exit.i.i.loopexit.us.us.7, label %for.body.i.i.us.us.7, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7:              ; preds = %for.body.i.i.us.us.7
  %519 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %519, %mul.i.i.i
  %conv.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %add.i.i.us.us.7.1 = add nsw i32 %mul.i.i.us.7, %conv.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us.us.7.1
  %520 = load float, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul3.i.i.us.us.7.1 = fmul float %18, %520
  store float %mul3.i.i.us.us.7.1, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul10.i.i.us.us.7.1 = mul nsw i32 %22, %conv.i.i.us.us.7.1
  %521 = sext i32 %mul10.i.i.us.us.7.1 to i64
  br label %for.body.i.i.us.us.7.1

for.body.i.i.us.us.7.1:                           ; preds = %for.body.i.i.us.us.7.1, %for.end.r_exit.i.i.loopexit.us.us.7
  %indvars.iv.next.i.i2.us.us.7.1 = phi i64 [ %indvars.iv.next.i.i.us.us.7.1, %for.body.i.i.us.us.7.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %522 = phi float [ %527, %for.body.i.i.us.us.7.1 ], [ %mul3.i.i.us.us.7.1, %for.end.r_exit.i.i.loopexit.us.us.7 ]
  %523 = add nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %510
  %arrayidx8.i.i.us.us.7.1 = getelementptr inbounds float, float* %7, i64 %523
  %524 = load float, float* %arrayidx8.i.i.us.us.7.1, align 4, !tbaa !12
  %mul9.i.i.us.us.7.1 = fmul float %14, %524
  %525 = add nsw i64 %indvars.iv.next.i.i2.us.us.7.1, %521
  %arrayidx13.i.i.us.us.7.1 = getelementptr inbounds float, float* %7, i64 %525
  %526 = load float, float* %arrayidx13.i.i.us.us.7.1, align 4, !tbaa !12
  %527 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.7.1, float %526, float %522) #2
  store float %527, float* %arrayidx.i.i.us.us.7.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.7.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.7.1, 1
  %exitcond.not.i.i.us.us.7.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.7.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.7.1, label %for.end.r_exit.i.i.loopexit.us.us.7.1, label %for.body.i.i.us.us.7.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.7.1:            ; preds = %for.body.i.i.us.us.7.1
  %528 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %528, 32
  br i1 %exitcond.7.not.1, label %_pocl_kernel_syrk_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !24

for.body.i.i.us.us.6.1:                           ; preds = %for.body.i.i.us.us.6.1, %for.end.r_exit.i.i.loopexit.us.us.6
  %indvars.iv.next.i.i2.us.us.6.1 = phi i64 [ %indvars.iv.next.i.i.us.us.6.1, %for.body.i.i.us.us.6.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %529 = phi float [ %534, %for.body.i.i.us.us.6.1 ], [ %mul3.i.i.us.us.6.1, %for.end.r_exit.i.i.loopexit.us.us.6 ]
  %530 = add nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %497
  %arrayidx8.i.i.us.us.6.1 = getelementptr inbounds float, float* %7, i64 %530
  %531 = load float, float* %arrayidx8.i.i.us.us.6.1, align 4, !tbaa !12
  %mul9.i.i.us.us.6.1 = fmul float %14, %531
  %532 = add nsw i64 %indvars.iv.next.i.i2.us.us.6.1, %508
  %arrayidx13.i.i.us.us.6.1 = getelementptr inbounds float, float* %7, i64 %532
  %533 = load float, float* %arrayidx13.i.i.us.us.6.1, align 4, !tbaa !12
  %534 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.6.1, float %533, float %529) #2
  store float %534, float* %arrayidx.i.i.us.us.6.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.6.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.6.1, 1
  %exitcond.not.i.i.us.us.6.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.6.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.6.1, label %for.end.r_exit.i.i.loopexit.us.us.6.1, label %for.body.i.i.us.us.6.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.6.1:            ; preds = %for.body.i.i.us.us.6.1
  %535 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %535, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.6, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !24

for.body.i.i.us.us.5.1:                           ; preds = %for.body.i.i.us.us.5.1, %for.end.r_exit.i.i.loopexit.us.us.5
  %indvars.iv.next.i.i2.us.us.5.1 = phi i64 [ %indvars.iv.next.i.i.us.us.5.1, %for.body.i.i.us.us.5.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %536 = phi float [ %541, %for.body.i.i.us.us.5.1 ], [ %mul3.i.i.us.us.5.1, %for.end.r_exit.i.i.loopexit.us.us.5 ]
  %537 = add nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %484
  %arrayidx8.i.i.us.us.5.1 = getelementptr inbounds float, float* %7, i64 %537
  %538 = load float, float* %arrayidx8.i.i.us.us.5.1, align 4, !tbaa !12
  %mul9.i.i.us.us.5.1 = fmul float %14, %538
  %539 = add nsw i64 %indvars.iv.next.i.i2.us.us.5.1, %495
  %arrayidx13.i.i.us.us.5.1 = getelementptr inbounds float, float* %7, i64 %539
  %540 = load float, float* %arrayidx13.i.i.us.us.5.1, align 4, !tbaa !12
  %541 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.5.1, float %540, float %536) #2
  store float %541, float* %arrayidx.i.i.us.us.5.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.5.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.5.1, 1
  %exitcond.not.i.i.us.us.5.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.5.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.5.1, label %for.end.r_exit.i.i.loopexit.us.us.5.1, label %for.body.i.i.us.us.5.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.5.1:            ; preds = %for.body.i.i.us.us.5.1
  %542 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %542, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.5, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !24

for.body.i.i.us.us.4.1:                           ; preds = %for.body.i.i.us.us.4.1, %for.end.r_exit.i.i.loopexit.us.us.4
  %indvars.iv.next.i.i2.us.us.4.1 = phi i64 [ %indvars.iv.next.i.i.us.us.4.1, %for.body.i.i.us.us.4.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %543 = phi float [ %548, %for.body.i.i.us.us.4.1 ], [ %mul3.i.i.us.us.4.1, %for.end.r_exit.i.i.loopexit.us.us.4 ]
  %544 = add nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %471
  %arrayidx8.i.i.us.us.4.1 = getelementptr inbounds float, float* %7, i64 %544
  %545 = load float, float* %arrayidx8.i.i.us.us.4.1, align 4, !tbaa !12
  %mul9.i.i.us.us.4.1 = fmul float %14, %545
  %546 = add nsw i64 %indvars.iv.next.i.i2.us.us.4.1, %482
  %arrayidx13.i.i.us.us.4.1 = getelementptr inbounds float, float* %7, i64 %546
  %547 = load float, float* %arrayidx13.i.i.us.us.4.1, align 4, !tbaa !12
  %548 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.4.1, float %547, float %543) #2
  store float %548, float* %arrayidx.i.i.us.us.4.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.4.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.4.1, 1
  %exitcond.not.i.i.us.us.4.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.4.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.4.1, label %for.end.r_exit.i.i.loopexit.us.us.4.1, label %for.body.i.i.us.us.4.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.4.1:            ; preds = %for.body.i.i.us.us.4.1
  %549 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %549, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.4, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !24

for.body.i.i.us.us.3.1:                           ; preds = %for.body.i.i.us.us.3.1, %for.end.r_exit.i.i.loopexit.us.us.3
  %indvars.iv.next.i.i2.us.us.3.1 = phi i64 [ %indvars.iv.next.i.i.us.us.3.1, %for.body.i.i.us.us.3.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %550 = phi float [ %555, %for.body.i.i.us.us.3.1 ], [ %mul3.i.i.us.us.3.1, %for.end.r_exit.i.i.loopexit.us.us.3 ]
  %551 = add nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %458
  %arrayidx8.i.i.us.us.3.1 = getelementptr inbounds float, float* %7, i64 %551
  %552 = load float, float* %arrayidx8.i.i.us.us.3.1, align 4, !tbaa !12
  %mul9.i.i.us.us.3.1 = fmul float %14, %552
  %553 = add nsw i64 %indvars.iv.next.i.i2.us.us.3.1, %469
  %arrayidx13.i.i.us.us.3.1 = getelementptr inbounds float, float* %7, i64 %553
  %554 = load float, float* %arrayidx13.i.i.us.us.3.1, align 4, !tbaa !12
  %555 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.3.1, float %554, float %550) #2
  store float %555, float* %arrayidx.i.i.us.us.3.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.3.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.3.1, 1
  %exitcond.not.i.i.us.us.3.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.3.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.3.1, label %for.end.r_exit.i.i.loopexit.us.us.3.1, label %for.body.i.i.us.us.3.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.3.1:            ; preds = %for.body.i.i.us.us.3.1
  %556 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %556, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.3, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !24

for.body.i.i.us.us.2.1:                           ; preds = %for.body.i.i.us.us.2.1, %for.end.r_exit.i.i.loopexit.us.us.2
  %indvars.iv.next.i.i2.us.us.2.1 = phi i64 [ %indvars.iv.next.i.i.us.us.2.1, %for.body.i.i.us.us.2.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %557 = phi float [ %562, %for.body.i.i.us.us.2.1 ], [ %mul3.i.i.us.us.2.1, %for.end.r_exit.i.i.loopexit.us.us.2 ]
  %558 = add nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %445
  %arrayidx8.i.i.us.us.2.1 = getelementptr inbounds float, float* %7, i64 %558
  %559 = load float, float* %arrayidx8.i.i.us.us.2.1, align 4, !tbaa !12
  %mul9.i.i.us.us.2.1 = fmul float %14, %559
  %560 = add nsw i64 %indvars.iv.next.i.i2.us.us.2.1, %456
  %arrayidx13.i.i.us.us.2.1 = getelementptr inbounds float, float* %7, i64 %560
  %561 = load float, float* %arrayidx13.i.i.us.us.2.1, align 4, !tbaa !12
  %562 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.2.1, float %561, float %557) #2
  store float %562, float* %arrayidx.i.i.us.us.2.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.2.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.2.1, 1
  %exitcond.not.i.i.us.us.2.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.2.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.2.1, label %for.end.r_exit.i.i.loopexit.us.us.2.1, label %for.body.i.i.us.us.2.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.2.1:            ; preds = %for.body.i.i.us.us.2.1
  %563 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %563, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.2, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !24

for.body.i.i.us.us.1.1:                           ; preds = %for.body.i.i.us.us.1.1, %for.end.r_exit.i.i.loopexit.us.us.1
  %indvars.iv.next.i.i2.us.us.1.1 = phi i64 [ %indvars.iv.next.i.i.us.us.1.1, %for.body.i.i.us.us.1.1 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %564 = phi float [ %569, %for.body.i.i.us.us.1.1 ], [ %mul3.i.i.us.us.1.1, %for.end.r_exit.i.i.loopexit.us.us.1 ]
  %565 = add nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %399
  %arrayidx8.i.i.us.us.1.1 = getelementptr inbounds float, float* %7, i64 %565
  %566 = load float, float* %arrayidx8.i.i.us.us.1.1, align 4, !tbaa !12
  %mul9.i.i.us.us.1.1 = fmul float %14, %566
  %567 = add nsw i64 %indvars.iv.next.i.i2.us.us.1.1, %443
  %arrayidx13.i.i.us.us.1.1 = getelementptr inbounds float, float* %7, i64 %567
  %568 = load float, float* %arrayidx13.i.i.us.us.1.1, align 4, !tbaa !12
  %569 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.1.1, float %568, float %564) #2
  store float %569, float* %arrayidx.i.i.us.us.1.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1.1, 1
  %exitcond.not.i.i.us.us.1.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.1.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1.1, label %for.end.r_exit.i.i.loopexit.us.us.1.1, label %for.body.i.i.us.us.1.1, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1.1:            ; preds = %for.body.i.i.us.us.1.1
  %570 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %570, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.us-lcssa.us.us.1, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !24

for.body.i.i.us.us.1164:                          ; preds = %for.body.i.i.us.us.1164, %for.end.r_exit.i.i.loopexit.us.us
  %indvars.iv.next.i.i2.us.us.1158 = phi i64 [ %indvars.iv.next.i.i.us.us.1162, %for.body.i.i.us.us.1164 ], [ 0, %for.end.r_exit.i.i.loopexit.us.us ]
  %571 = phi float [ %576, %for.body.i.i.us.us.1164 ], [ %mul3.i.i.us.us.1155, %for.end.r_exit.i.i.loopexit.us.us ]
  %572 = add nsw i64 %indvars.iv.next.i.i2.us.us.1158, %386
  %arrayidx8.i.i.us.us.1159 = getelementptr inbounds float, float* %7, i64 %572
  %573 = load float, float* %arrayidx8.i.i.us.us.1159, align 4, !tbaa !12
  %mul9.i.i.us.us.1160 = fmul float %14, %573
  %574 = add nsw i64 %indvars.iv.next.i.i2.us.us.1158, %391
  %arrayidx13.i.i.us.us.1161 = getelementptr inbounds float, float* %7, i64 %574
  %575 = load float, float* %arrayidx13.i.i.us.us.1161, align 4, !tbaa !12
  %576 = tail call float @llvm.fmuladd.f32(float %mul9.i.i.us.us.1160, float %575, float %571) #2
  store float %576, float* %arrayidx.i.i.us.us.1154, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.us.1162 = add nuw nsw i64 %indvars.iv.next.i.i2.us.us.1158, 1
  %exitcond.not.i.i.us.us.1163 = icmp eq i64 %indvars.iv.next.i.i.us.us.1162, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.us.1163, label %for.end.r_exit.i.i.loopexit.us.us.1165, label %for.body.i.i.us.us.1164, !llvm.loop !19

for.end.r_exit.i.i.loopexit.us.us.1165:           ; preds = %for.body.i.i.us.us.1164
  %577 = add nuw nsw i64 %_local_id_x.i.0.us.us, 2
  %exitcond.not.1 = icmp eq i64 %577, 32
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
!5 = !{i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"DATA_TYPE", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float", !"float", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !"", !""}
!10 = !{!"a", !"c", !"alpha", !"beta", !"ni", !"nj"}
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
