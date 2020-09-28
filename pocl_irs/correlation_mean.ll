; ModuleID = './KK/KIGILFKIOCMFGODNJKKCPJJIDHNBMKHCFFGPF/mean_kernel/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_mean_kernel(float* nocapture %0, float* nocapture readonly %1, float %2, i32 %3, i32 %4, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %5, i64 %6, i64 %7, i64 %8) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %6, 8
  %cmp222.i = icmp sgt i32 %4, 0
  %10 = sext i32 %3 to i64
  %wide.trip.count.i = zext i32 %4 to i64
  br i1 %cmp222.i, label %pregion_for_entry.entry.i.us.preheader, label %pregion_for_entry.entry.i.preheader

pregion_for_entry.entry.i.us.preheader:           ; preds = %9
  br label %pregion_for_entry.entry.i.us

pregion_for_entry.entry.i.preheader:              ; preds = %9
  %div.i = fdiv float 0.000000e+00, %2
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <8 x i32> undef, i32 %3, i32 0
  %broadcast.splat14 = shufflevector <8 x i32> %broadcast.splatinsert13, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <8 x i32> undef, i32 %3, i32 0
  %broadcast.splat16 = shufflevector <8 x i32> %broadcast.splatinsert15, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert17 = insertelement <8 x float> undef, float %div.i, i32 0
  %broadcast.splat18 = shufflevector <8 x float> %broadcast.splatinsert17, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert19 = insertelement <8 x float> undef, float %div.i, i32 0
  %broadcast.splat20 = shufflevector <8 x float> %broadcast.splatinsert19, <8 x float> undef, <8 x i32> zeroinitializer
  %11 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %12 = trunc <8 x i64> %11 to <8 x i32>
  %13 = trunc i64 %mul.i.i to i32
  %14 = or i32 %13, 8
  %15 = insertelement <8 x i32> undef, i32 %14, i64 0
  %16 = shufflevector <8 x i32> %15, <8 x i32> undef, <8 x i32> zeroinitializer
  %17 = or <8 x i32> %16, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %18 = icmp sgt <8 x i32> %broadcast.splat14, %12
  %19 = icmp sgt <8 x i32> %broadcast.splat16, %17
  %20 = extractelement <8 x i64> %11, i32 0
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = getelementptr inbounds float, float* %0, i64 %22
  %24 = bitcast float* %23 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %24, i32 4, <8 x i1> %18), !tbaa !12, !llvm.access.group !16
  %25 = getelementptr inbounds float, float* %23, i64 8
  %26 = bitcast float* %25 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %26, i32 4, <8 x i1> %19), !tbaa !12, !llvm.access.group !16
  %27 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %28 = trunc <8 x i64> %27 to <8 x i32>
  %29 = trunc i64 %mul.i.i to i32
  %30 = or i32 %29, 8
  %31 = insertelement <8 x i32> undef, i32 %30, i64 0
  %32 = shufflevector <8 x i32> %31, <8 x i32> undef, <8 x i32> zeroinitializer
  %33 = or <8 x i32> %32, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %34 = icmp sgt <8 x i32> %broadcast.splat14, %28
  %35 = icmp sgt <8 x i32> %broadcast.splat16, %33
  %36 = extractelement <8 x i64> %27, i32 0
  %37 = shl i64 %36, 32
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds float, float* %0, i64 %38
  %40 = bitcast float* %39 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %40, i32 4, <8 x i1> %34), !tbaa !12, !llvm.access.group !16
  %41 = getelementptr inbounds float, float* %39, i64 8
  %42 = bitcast float* %41 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %42, i32 4, <8 x i1> %35), !tbaa !12, !llvm.access.group !16
  %43 = or <8 x i64> %broadcast.splat, <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39>
  %44 = trunc <8 x i64> %43 to <8 x i32>
  %45 = trunc i64 %mul.i.i to i32
  %46 = or i32 %45, 8
  %47 = insertelement <8 x i32> undef, i32 %46, i64 0
  %48 = shufflevector <8 x i32> %47, <8 x i32> undef, <8 x i32> zeroinitializer
  %49 = or <8 x i32> %48, <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %50 = icmp sgt <8 x i32> %broadcast.splat14, %44
  %51 = icmp sgt <8 x i32> %broadcast.splat16, %49
  %52 = extractelement <8 x i64> %43, i32 0
  %53 = shl i64 %52, 32
  %54 = ashr exact i64 %53, 32
  %55 = getelementptr inbounds float, float* %0, i64 %54
  %56 = bitcast float* %55 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %56, i32 4, <8 x i1> %50), !tbaa !12, !llvm.access.group !16
  %57 = getelementptr inbounds float, float* %55, i64 8
  %58 = bitcast float* %57 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %58, i32 4, <8 x i1> %51), !tbaa !12, !llvm.access.group !16
  %59 = or <8 x i64> %broadcast.splat, <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55>
  %60 = trunc <8 x i64> %59 to <8 x i32>
  %61 = trunc i64 %mul.i.i to i32
  %62 = or i32 %61, 8
  %63 = insertelement <8 x i32> undef, i32 %62, i64 0
  %64 = shufflevector <8 x i32> %63, <8 x i32> undef, <8 x i32> zeroinitializer
  %65 = or <8 x i32> %64, <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %66 = icmp sgt <8 x i32> %broadcast.splat14, %60
  %67 = icmp sgt <8 x i32> %broadcast.splat16, %65
  %68 = extractelement <8 x i64> %59, i32 0
  %69 = shl i64 %68, 32
  %70 = ashr exact i64 %69, 32
  %71 = getelementptr inbounds float, float* %0, i64 %70
  %72 = bitcast float* %71 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %72, i32 4, <8 x i1> %66), !tbaa !12, !llvm.access.group !16
  %73 = getelementptr inbounds float, float* %71, i64 8
  %74 = bitcast float* %73 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %74, i32 4, <8 x i1> %67), !tbaa !12, !llvm.access.group !16
  %75 = or <8 x i64> %broadcast.splat, <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71>
  %76 = trunc <8 x i64> %75 to <8 x i32>
  %77 = trunc i64 %mul.i.i to i32
  %78 = or i32 %77, 8
  %79 = insertelement <8 x i32> undef, i32 %78, i64 0
  %80 = shufflevector <8 x i32> %79, <8 x i32> undef, <8 x i32> zeroinitializer
  %81 = or <8 x i32> %80, <i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71>
  %82 = icmp sgt <8 x i32> %broadcast.splat14, %76
  %83 = icmp sgt <8 x i32> %broadcast.splat16, %81
  %84 = extractelement <8 x i64> %75, i32 0
  %85 = shl i64 %84, 32
  %86 = ashr exact i64 %85, 32
  %87 = getelementptr inbounds float, float* %0, i64 %86
  %88 = bitcast float* %87 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %88, i32 4, <8 x i1> %82), !tbaa !12, !llvm.access.group !16
  %89 = getelementptr inbounds float, float* %87, i64 8
  %90 = bitcast float* %89 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %90, i32 4, <8 x i1> %83), !tbaa !12, !llvm.access.group !16
  %91 = or <8 x i64> %broadcast.splat, <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87>
  %92 = trunc <8 x i64> %91 to <8 x i32>
  %93 = trunc i64 %mul.i.i to i32
  %94 = or i32 %93, 8
  %95 = insertelement <8 x i32> undef, i32 %94, i64 0
  %96 = shufflevector <8 x i32> %95, <8 x i32> undef, <8 x i32> zeroinitializer
  %97 = or <8 x i32> %96, <i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87>
  %98 = icmp sgt <8 x i32> %broadcast.splat14, %92
  %99 = icmp sgt <8 x i32> %broadcast.splat16, %97
  %100 = extractelement <8 x i64> %91, i32 0
  %101 = shl i64 %100, 32
  %102 = ashr exact i64 %101, 32
  %103 = getelementptr inbounds float, float* %0, i64 %102
  %104 = bitcast float* %103 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %104, i32 4, <8 x i1> %98), !tbaa !12, !llvm.access.group !16
  %105 = getelementptr inbounds float, float* %103, i64 8
  %106 = bitcast float* %105 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %106, i32 4, <8 x i1> %99), !tbaa !12, !llvm.access.group !16
  %107 = or <8 x i64> %broadcast.splat, <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103>
  %108 = trunc <8 x i64> %107 to <8 x i32>
  %109 = trunc i64 %mul.i.i to i32
  %110 = or i32 %109, 8
  %111 = insertelement <8 x i32> undef, i32 %110, i64 0
  %112 = shufflevector <8 x i32> %111, <8 x i32> undef, <8 x i32> zeroinitializer
  %113 = or <8 x i32> %112, <i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103>
  %114 = icmp sgt <8 x i32> %broadcast.splat14, %108
  %115 = icmp sgt <8 x i32> %broadcast.splat16, %113
  %116 = extractelement <8 x i64> %107, i32 0
  %117 = shl i64 %116, 32
  %118 = ashr exact i64 %117, 32
  %119 = getelementptr inbounds float, float* %0, i64 %118
  %120 = bitcast float* %119 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %120, i32 4, <8 x i1> %114), !tbaa !12, !llvm.access.group !16
  %121 = getelementptr inbounds float, float* %119, i64 8
  %122 = bitcast float* %121 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %122, i32 4, <8 x i1> %115), !tbaa !12, !llvm.access.group !16
  %123 = or <8 x i64> %broadcast.splat, <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119>
  %124 = trunc <8 x i64> %123 to <8 x i32>
  %125 = trunc i64 %mul.i.i to i32
  %126 = or i32 %125, 8
  %127 = insertelement <8 x i32> undef, i32 %126, i64 0
  %128 = shufflevector <8 x i32> %127, <8 x i32> undef, <8 x i32> zeroinitializer
  %129 = or <8 x i32> %128, <i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119>
  %130 = icmp sgt <8 x i32> %broadcast.splat14, %124
  %131 = icmp sgt <8 x i32> %broadcast.splat16, %129
  %132 = extractelement <8 x i64> %123, i32 0
  %133 = shl i64 %132, 32
  %134 = ashr exact i64 %133, 32
  %135 = getelementptr inbounds float, float* %0, i64 %134
  %136 = bitcast float* %135 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %136, i32 4, <8 x i1> %130), !tbaa !12, !llvm.access.group !16
  %137 = getelementptr inbounds float, float* %135, i64 8
  %138 = bitcast float* %137 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %138, i32 4, <8 x i1> %131), !tbaa !12, !llvm.access.group !16
  %139 = or <8 x i64> %broadcast.splat, <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135>
  %140 = trunc <8 x i64> %139 to <8 x i32>
  %141 = trunc i64 %mul.i.i to i32
  %142 = or i32 %141, 8
  %143 = insertelement <8 x i32> undef, i32 %142, i64 0
  %144 = shufflevector <8 x i32> %143, <8 x i32> undef, <8 x i32> zeroinitializer
  %145 = or <8 x i32> %144, <i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135>
  %146 = icmp sgt <8 x i32> %broadcast.splat14, %140
  %147 = icmp sgt <8 x i32> %broadcast.splat16, %145
  %148 = extractelement <8 x i64> %139, i32 0
  %149 = shl i64 %148, 32
  %150 = ashr exact i64 %149, 32
  %151 = getelementptr inbounds float, float* %0, i64 %150
  %152 = bitcast float* %151 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %152, i32 4, <8 x i1> %146), !tbaa !12, !llvm.access.group !16
  %153 = getelementptr inbounds float, float* %151, i64 8
  %154 = bitcast float* %153 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %154, i32 4, <8 x i1> %147), !tbaa !12, !llvm.access.group !16
  %155 = or <8 x i64> %broadcast.splat, <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151>
  %156 = trunc <8 x i64> %155 to <8 x i32>
  %157 = trunc i64 %mul.i.i to i32
  %158 = or i32 %157, 8
  %159 = insertelement <8 x i32> undef, i32 %158, i64 0
  %160 = shufflevector <8 x i32> %159, <8 x i32> undef, <8 x i32> zeroinitializer
  %161 = or <8 x i32> %160, <i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151>
  %162 = icmp sgt <8 x i32> %broadcast.splat14, %156
  %163 = icmp sgt <8 x i32> %broadcast.splat16, %161
  %164 = extractelement <8 x i64> %155, i32 0
  %165 = shl i64 %164, 32
  %166 = ashr exact i64 %165, 32
  %167 = getelementptr inbounds float, float* %0, i64 %166
  %168 = bitcast float* %167 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %168, i32 4, <8 x i1> %162), !tbaa !12, !llvm.access.group !16
  %169 = getelementptr inbounds float, float* %167, i64 8
  %170 = bitcast float* %169 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %170, i32 4, <8 x i1> %163), !tbaa !12, !llvm.access.group !16
  %171 = or <8 x i64> %broadcast.splat, <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167>
  %172 = trunc <8 x i64> %171 to <8 x i32>
  %173 = trunc i64 %mul.i.i to i32
  %174 = or i32 %173, 8
  %175 = insertelement <8 x i32> undef, i32 %174, i64 0
  %176 = shufflevector <8 x i32> %175, <8 x i32> undef, <8 x i32> zeroinitializer
  %177 = or <8 x i32> %176, <i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167>
  %178 = icmp sgt <8 x i32> %broadcast.splat14, %172
  %179 = icmp sgt <8 x i32> %broadcast.splat16, %177
  %180 = extractelement <8 x i64> %171, i32 0
  %181 = shl i64 %180, 32
  %182 = ashr exact i64 %181, 32
  %183 = getelementptr inbounds float, float* %0, i64 %182
  %184 = bitcast float* %183 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %184, i32 4, <8 x i1> %178), !tbaa !12, !llvm.access.group !16
  %185 = getelementptr inbounds float, float* %183, i64 8
  %186 = bitcast float* %185 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %186, i32 4, <8 x i1> %179), !tbaa !12, !llvm.access.group !16
  %187 = or <8 x i64> %broadcast.splat, <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183>
  %188 = trunc <8 x i64> %187 to <8 x i32>
  %189 = trunc i64 %mul.i.i to i32
  %190 = or i32 %189, 8
  %191 = insertelement <8 x i32> undef, i32 %190, i64 0
  %192 = shufflevector <8 x i32> %191, <8 x i32> undef, <8 x i32> zeroinitializer
  %193 = or <8 x i32> %192, <i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183>
  %194 = icmp sgt <8 x i32> %broadcast.splat14, %188
  %195 = icmp sgt <8 x i32> %broadcast.splat16, %193
  %196 = extractelement <8 x i64> %187, i32 0
  %197 = shl i64 %196, 32
  %198 = ashr exact i64 %197, 32
  %199 = getelementptr inbounds float, float* %0, i64 %198
  %200 = bitcast float* %199 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %200, i32 4, <8 x i1> %194), !tbaa !12, !llvm.access.group !16
  %201 = getelementptr inbounds float, float* %199, i64 8
  %202 = bitcast float* %201 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %202, i32 4, <8 x i1> %195), !tbaa !12, !llvm.access.group !16
  %203 = or <8 x i64> %broadcast.splat, <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199>
  %204 = trunc <8 x i64> %203 to <8 x i32>
  %205 = trunc i64 %mul.i.i to i32
  %206 = or i32 %205, 8
  %207 = insertelement <8 x i32> undef, i32 %206, i64 0
  %208 = shufflevector <8 x i32> %207, <8 x i32> undef, <8 x i32> zeroinitializer
  %209 = or <8 x i32> %208, <i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199>
  %210 = icmp sgt <8 x i32> %broadcast.splat14, %204
  %211 = icmp sgt <8 x i32> %broadcast.splat16, %209
  %212 = extractelement <8 x i64> %203, i32 0
  %213 = shl i64 %212, 32
  %214 = ashr exact i64 %213, 32
  %215 = getelementptr inbounds float, float* %0, i64 %214
  %216 = bitcast float* %215 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %216, i32 4, <8 x i1> %210), !tbaa !12, !llvm.access.group !16
  %217 = getelementptr inbounds float, float* %215, i64 8
  %218 = bitcast float* %217 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %218, i32 4, <8 x i1> %211), !tbaa !12, !llvm.access.group !16
  %219 = or <8 x i64> %broadcast.splat, <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215>
  %220 = trunc <8 x i64> %219 to <8 x i32>
  %221 = trunc i64 %mul.i.i to i32
  %222 = or i32 %221, 8
  %223 = insertelement <8 x i32> undef, i32 %222, i64 0
  %224 = shufflevector <8 x i32> %223, <8 x i32> undef, <8 x i32> zeroinitializer
  %225 = or <8 x i32> %224, <i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215>
  %226 = icmp sgt <8 x i32> %broadcast.splat14, %220
  %227 = icmp sgt <8 x i32> %broadcast.splat16, %225
  %228 = extractelement <8 x i64> %219, i32 0
  %229 = shl i64 %228, 32
  %230 = ashr exact i64 %229, 32
  %231 = getelementptr inbounds float, float* %0, i64 %230
  %232 = bitcast float* %231 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %232, i32 4, <8 x i1> %226), !tbaa !12, !llvm.access.group !16
  %233 = getelementptr inbounds float, float* %231, i64 8
  %234 = bitcast float* %233 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %234, i32 4, <8 x i1> %227), !tbaa !12, !llvm.access.group !16
  %235 = or <8 x i64> %broadcast.splat, <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231>
  %236 = trunc <8 x i64> %235 to <8 x i32>
  %237 = trunc i64 %mul.i.i to i32
  %238 = or i32 %237, 8
  %239 = insertelement <8 x i32> undef, i32 %238, i64 0
  %240 = shufflevector <8 x i32> %239, <8 x i32> undef, <8 x i32> zeroinitializer
  %241 = or <8 x i32> %240, <i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231>
  %242 = icmp sgt <8 x i32> %broadcast.splat14, %236
  %243 = icmp sgt <8 x i32> %broadcast.splat16, %241
  %244 = extractelement <8 x i64> %235, i32 0
  %245 = shl i64 %244, 32
  %246 = ashr exact i64 %245, 32
  %247 = getelementptr inbounds float, float* %0, i64 %246
  %248 = bitcast float* %247 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %248, i32 4, <8 x i1> %242), !tbaa !12, !llvm.access.group !16
  %249 = getelementptr inbounds float, float* %247, i64 8
  %250 = bitcast float* %249 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %250, i32 4, <8 x i1> %243), !tbaa !12, !llvm.access.group !16
  %251 = or <8 x i64> %broadcast.splat, <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247>
  %252 = trunc <8 x i64> %251 to <8 x i32>
  %253 = trunc i64 %mul.i.i to i32
  %254 = or i32 %253, 8
  %255 = insertelement <8 x i32> undef, i32 %254, i64 0
  %256 = shufflevector <8 x i32> %255, <8 x i32> undef, <8 x i32> zeroinitializer
  %257 = or <8 x i32> %256, <i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247>
  %258 = icmp sgt <8 x i32> %broadcast.splat14, %252
  %259 = icmp sgt <8 x i32> %broadcast.splat16, %257
  %260 = extractelement <8 x i64> %251, i32 0
  %261 = shl i64 %260, 32
  %262 = ashr exact i64 %261, 32
  %263 = getelementptr inbounds float, float* %0, i64 %262
  %264 = bitcast float* %263 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %264, i32 4, <8 x i1> %258), !tbaa !12, !llvm.access.group !16
  %265 = getelementptr inbounds float, float* %263, i64 8
  %266 = bitcast float* %265 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %266, i32 4, <8 x i1> %259), !tbaa !12, !llvm.access.group !16
  br label %mean_kernel.exit

pregion_for_entry.entry.i.us:                     ; preds = %if.end.r_exit.i.us, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %270, %if.end.r_exit.i.us ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp.i.us = icmp slt i32 %conv.i.us, %3
  br i1 %cmp.i.us, label %if.then.i.us, label %if.end.r_exit.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %sext.i.us = shl i64 %add1.i.i.us, 32
  %idxprom.i.us = ashr exact i64 %sext.i.us, 32
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %idxprom.i.us
  store float 0.000000e+00, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %if.then.i.us
  %indvars.iv.next.i5.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %if.then.i.us ]
  %add8.i2.us = phi float [ %add8.i.us, %for.body.i.us ], [ 0.000000e+00, %if.then.i.us ]
  %267 = mul nsw i64 %indvars.iv.next.i5.us, %10
  %268 = add nsw i64 %267, %idxprom.i.us
  %arrayidx5.i.us = getelementptr inbounds float, float* %1, i64 %268
  %269 = load float, float* %arrayidx5.i.us, align 4, !tbaa !12
  %add8.i.us = fadd float %add8.i2.us, %269
  store float %add8.i.us, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i5.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %for.end.loopexit.i.us, label %for.body.i.us, !llvm.loop !18

for.end.loopexit.i.us:                            ; preds = %for.body.i.us
  %add8.i.us.lcssa = phi float [ %add8.i.us, %for.body.i.us ]
  %div.i.us = fdiv float %add8.i.us.lcssa, %2, !fpmath !20
  store float %div.i.us, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us

if.end.r_exit.i.us:                               ; preds = %for.end.loopexit.i.us, %pregion_for_entry.entry.i.us
  %270 = add nuw nsw i64 %_local_id_x.0.us, 1
  %exitcond.not = icmp eq i64 %270, 256
  br i1 %exitcond.not, label %mean_kernel.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !21

mean_kernel.exit.loopexit:                        ; preds = %if.end.r_exit.i.us
  br label %mean_kernel.exit

mean_kernel.exit:                                 ; preds = %mean_kernel.exit.loopexit, %pregion_for_entry.entry.i.preheader
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_mean_kernel_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
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
  %18 = bitcast i8** %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 4
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp222.i.i = icmp sgt i32 %24, 0
  %25 = sext i32 %20 to i64
  %wide.trip.count.i.i = zext i32 %24 to i64
  br i1 %cmp222.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_entry.entry.i.i.preheader

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.preheader:            ; preds = %5
  %div.i.i = fdiv float 0.000000e+00, %16
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat14 = shufflevector <8 x i32> %broadcast.splatinsert13, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat16 = shufflevector <8 x i32> %broadcast.splatinsert15, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert17 = insertelement <8 x float> undef, float %div.i.i, i32 0
  %broadcast.splat18 = shufflevector <8 x float> %broadcast.splatinsert17, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert19 = insertelement <8 x float> undef, float %div.i.i, i32 0
  %broadcast.splat20 = shufflevector <8 x float> %broadcast.splatinsert19, <8 x float> undef, <8 x i32> zeroinitializer
  %26 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %27 = trunc <8 x i64> %26 to <8 x i32>
  %28 = trunc i64 %mul.i.i.i to i32
  %29 = or i32 %28, 8
  %30 = insertelement <8 x i32> undef, i32 %29, i64 0
  %31 = shufflevector <8 x i32> %30, <8 x i32> undef, <8 x i32> zeroinitializer
  %32 = or <8 x i32> %31, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %33 = icmp sgt <8 x i32> %broadcast.splat14, %27
  %34 = icmp sgt <8 x i32> %broadcast.splat16, %32
  %35 = extractelement <8 x i64> %26, i32 0
  %36 = shl i64 %35, 32
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds float, float* %8, i64 %37
  %39 = bitcast float* %38 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %39, i32 4, <8 x i1> %33), !tbaa !12, !llvm.access.group !16
  %40 = getelementptr inbounds float, float* %38, i64 8
  %41 = bitcast float* %40 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %41, i32 4, <8 x i1> %34), !tbaa !12, !llvm.access.group !16
  %42 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %43 = trunc <8 x i64> %42 to <8 x i32>
  %44 = trunc i64 %mul.i.i.i to i32
  %45 = or i32 %44, 8
  %46 = insertelement <8 x i32> undef, i32 %45, i64 0
  %47 = shufflevector <8 x i32> %46, <8 x i32> undef, <8 x i32> zeroinitializer
  %48 = or <8 x i32> %47, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %49 = icmp sgt <8 x i32> %broadcast.splat14, %43
  %50 = icmp sgt <8 x i32> %broadcast.splat16, %48
  %51 = extractelement <8 x i64> %42, i32 0
  %52 = shl i64 %51, 32
  %53 = ashr exact i64 %52, 32
  %54 = getelementptr inbounds float, float* %8, i64 %53
  %55 = bitcast float* %54 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %55, i32 4, <8 x i1> %49), !tbaa !12, !llvm.access.group !16
  %56 = getelementptr inbounds float, float* %54, i64 8
  %57 = bitcast float* %56 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %57, i32 4, <8 x i1> %50), !tbaa !12, !llvm.access.group !16
  %58 = or <8 x i64> %broadcast.splat, <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39>
  %59 = trunc <8 x i64> %58 to <8 x i32>
  %60 = trunc i64 %mul.i.i.i to i32
  %61 = or i32 %60, 8
  %62 = insertelement <8 x i32> undef, i32 %61, i64 0
  %63 = shufflevector <8 x i32> %62, <8 x i32> undef, <8 x i32> zeroinitializer
  %64 = or <8 x i32> %63, <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %65 = icmp sgt <8 x i32> %broadcast.splat14, %59
  %66 = icmp sgt <8 x i32> %broadcast.splat16, %64
  %67 = extractelement <8 x i64> %58, i32 0
  %68 = shl i64 %67, 32
  %69 = ashr exact i64 %68, 32
  %70 = getelementptr inbounds float, float* %8, i64 %69
  %71 = bitcast float* %70 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %71, i32 4, <8 x i1> %65), !tbaa !12, !llvm.access.group !16
  %72 = getelementptr inbounds float, float* %70, i64 8
  %73 = bitcast float* %72 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %73, i32 4, <8 x i1> %66), !tbaa !12, !llvm.access.group !16
  %74 = or <8 x i64> %broadcast.splat, <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55>
  %75 = trunc <8 x i64> %74 to <8 x i32>
  %76 = trunc i64 %mul.i.i.i to i32
  %77 = or i32 %76, 8
  %78 = insertelement <8 x i32> undef, i32 %77, i64 0
  %79 = shufflevector <8 x i32> %78, <8 x i32> undef, <8 x i32> zeroinitializer
  %80 = or <8 x i32> %79, <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %81 = icmp sgt <8 x i32> %broadcast.splat14, %75
  %82 = icmp sgt <8 x i32> %broadcast.splat16, %80
  %83 = extractelement <8 x i64> %74, i32 0
  %84 = shl i64 %83, 32
  %85 = ashr exact i64 %84, 32
  %86 = getelementptr inbounds float, float* %8, i64 %85
  %87 = bitcast float* %86 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %87, i32 4, <8 x i1> %81), !tbaa !12, !llvm.access.group !16
  %88 = getelementptr inbounds float, float* %86, i64 8
  %89 = bitcast float* %88 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %89, i32 4, <8 x i1> %82), !tbaa !12, !llvm.access.group !16
  %90 = or <8 x i64> %broadcast.splat, <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71>
  %91 = trunc <8 x i64> %90 to <8 x i32>
  %92 = trunc i64 %mul.i.i.i to i32
  %93 = or i32 %92, 8
  %94 = insertelement <8 x i32> undef, i32 %93, i64 0
  %95 = shufflevector <8 x i32> %94, <8 x i32> undef, <8 x i32> zeroinitializer
  %96 = or <8 x i32> %95, <i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71>
  %97 = icmp sgt <8 x i32> %broadcast.splat14, %91
  %98 = icmp sgt <8 x i32> %broadcast.splat16, %96
  %99 = extractelement <8 x i64> %90, i32 0
  %100 = shl i64 %99, 32
  %101 = ashr exact i64 %100, 32
  %102 = getelementptr inbounds float, float* %8, i64 %101
  %103 = bitcast float* %102 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %103, i32 4, <8 x i1> %97), !tbaa !12, !llvm.access.group !16
  %104 = getelementptr inbounds float, float* %102, i64 8
  %105 = bitcast float* %104 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %105, i32 4, <8 x i1> %98), !tbaa !12, !llvm.access.group !16
  %106 = or <8 x i64> %broadcast.splat, <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87>
  %107 = trunc <8 x i64> %106 to <8 x i32>
  %108 = trunc i64 %mul.i.i.i to i32
  %109 = or i32 %108, 8
  %110 = insertelement <8 x i32> undef, i32 %109, i64 0
  %111 = shufflevector <8 x i32> %110, <8 x i32> undef, <8 x i32> zeroinitializer
  %112 = or <8 x i32> %111, <i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87>
  %113 = icmp sgt <8 x i32> %broadcast.splat14, %107
  %114 = icmp sgt <8 x i32> %broadcast.splat16, %112
  %115 = extractelement <8 x i64> %106, i32 0
  %116 = shl i64 %115, 32
  %117 = ashr exact i64 %116, 32
  %118 = getelementptr inbounds float, float* %8, i64 %117
  %119 = bitcast float* %118 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %119, i32 4, <8 x i1> %113), !tbaa !12, !llvm.access.group !16
  %120 = getelementptr inbounds float, float* %118, i64 8
  %121 = bitcast float* %120 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %121, i32 4, <8 x i1> %114), !tbaa !12, !llvm.access.group !16
  %122 = or <8 x i64> %broadcast.splat, <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103>
  %123 = trunc <8 x i64> %122 to <8 x i32>
  %124 = trunc i64 %mul.i.i.i to i32
  %125 = or i32 %124, 8
  %126 = insertelement <8 x i32> undef, i32 %125, i64 0
  %127 = shufflevector <8 x i32> %126, <8 x i32> undef, <8 x i32> zeroinitializer
  %128 = or <8 x i32> %127, <i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103>
  %129 = icmp sgt <8 x i32> %broadcast.splat14, %123
  %130 = icmp sgt <8 x i32> %broadcast.splat16, %128
  %131 = extractelement <8 x i64> %122, i32 0
  %132 = shl i64 %131, 32
  %133 = ashr exact i64 %132, 32
  %134 = getelementptr inbounds float, float* %8, i64 %133
  %135 = bitcast float* %134 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %135, i32 4, <8 x i1> %129), !tbaa !12, !llvm.access.group !16
  %136 = getelementptr inbounds float, float* %134, i64 8
  %137 = bitcast float* %136 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %137, i32 4, <8 x i1> %130), !tbaa !12, !llvm.access.group !16
  %138 = or <8 x i64> %broadcast.splat, <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119>
  %139 = trunc <8 x i64> %138 to <8 x i32>
  %140 = trunc i64 %mul.i.i.i to i32
  %141 = or i32 %140, 8
  %142 = insertelement <8 x i32> undef, i32 %141, i64 0
  %143 = shufflevector <8 x i32> %142, <8 x i32> undef, <8 x i32> zeroinitializer
  %144 = or <8 x i32> %143, <i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119>
  %145 = icmp sgt <8 x i32> %broadcast.splat14, %139
  %146 = icmp sgt <8 x i32> %broadcast.splat16, %144
  %147 = extractelement <8 x i64> %138, i32 0
  %148 = shl i64 %147, 32
  %149 = ashr exact i64 %148, 32
  %150 = getelementptr inbounds float, float* %8, i64 %149
  %151 = bitcast float* %150 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %151, i32 4, <8 x i1> %145), !tbaa !12, !llvm.access.group !16
  %152 = getelementptr inbounds float, float* %150, i64 8
  %153 = bitcast float* %152 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %153, i32 4, <8 x i1> %146), !tbaa !12, !llvm.access.group !16
  %154 = or <8 x i64> %broadcast.splat, <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135>
  %155 = trunc <8 x i64> %154 to <8 x i32>
  %156 = trunc i64 %mul.i.i.i to i32
  %157 = or i32 %156, 8
  %158 = insertelement <8 x i32> undef, i32 %157, i64 0
  %159 = shufflevector <8 x i32> %158, <8 x i32> undef, <8 x i32> zeroinitializer
  %160 = or <8 x i32> %159, <i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135>
  %161 = icmp sgt <8 x i32> %broadcast.splat14, %155
  %162 = icmp sgt <8 x i32> %broadcast.splat16, %160
  %163 = extractelement <8 x i64> %154, i32 0
  %164 = shl i64 %163, 32
  %165 = ashr exact i64 %164, 32
  %166 = getelementptr inbounds float, float* %8, i64 %165
  %167 = bitcast float* %166 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %167, i32 4, <8 x i1> %161), !tbaa !12, !llvm.access.group !16
  %168 = getelementptr inbounds float, float* %166, i64 8
  %169 = bitcast float* %168 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %169, i32 4, <8 x i1> %162), !tbaa !12, !llvm.access.group !16
  %170 = or <8 x i64> %broadcast.splat, <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151>
  %171 = trunc <8 x i64> %170 to <8 x i32>
  %172 = trunc i64 %mul.i.i.i to i32
  %173 = or i32 %172, 8
  %174 = insertelement <8 x i32> undef, i32 %173, i64 0
  %175 = shufflevector <8 x i32> %174, <8 x i32> undef, <8 x i32> zeroinitializer
  %176 = or <8 x i32> %175, <i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151>
  %177 = icmp sgt <8 x i32> %broadcast.splat14, %171
  %178 = icmp sgt <8 x i32> %broadcast.splat16, %176
  %179 = extractelement <8 x i64> %170, i32 0
  %180 = shl i64 %179, 32
  %181 = ashr exact i64 %180, 32
  %182 = getelementptr inbounds float, float* %8, i64 %181
  %183 = bitcast float* %182 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %183, i32 4, <8 x i1> %177), !tbaa !12, !llvm.access.group !16
  %184 = getelementptr inbounds float, float* %182, i64 8
  %185 = bitcast float* %184 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %185, i32 4, <8 x i1> %178), !tbaa !12, !llvm.access.group !16
  %186 = or <8 x i64> %broadcast.splat, <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167>
  %187 = trunc <8 x i64> %186 to <8 x i32>
  %188 = trunc i64 %mul.i.i.i to i32
  %189 = or i32 %188, 8
  %190 = insertelement <8 x i32> undef, i32 %189, i64 0
  %191 = shufflevector <8 x i32> %190, <8 x i32> undef, <8 x i32> zeroinitializer
  %192 = or <8 x i32> %191, <i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167>
  %193 = icmp sgt <8 x i32> %broadcast.splat14, %187
  %194 = icmp sgt <8 x i32> %broadcast.splat16, %192
  %195 = extractelement <8 x i64> %186, i32 0
  %196 = shl i64 %195, 32
  %197 = ashr exact i64 %196, 32
  %198 = getelementptr inbounds float, float* %8, i64 %197
  %199 = bitcast float* %198 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %199, i32 4, <8 x i1> %193), !tbaa !12, !llvm.access.group !16
  %200 = getelementptr inbounds float, float* %198, i64 8
  %201 = bitcast float* %200 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %201, i32 4, <8 x i1> %194), !tbaa !12, !llvm.access.group !16
  %202 = or <8 x i64> %broadcast.splat, <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183>
  %203 = trunc <8 x i64> %202 to <8 x i32>
  %204 = trunc i64 %mul.i.i.i to i32
  %205 = or i32 %204, 8
  %206 = insertelement <8 x i32> undef, i32 %205, i64 0
  %207 = shufflevector <8 x i32> %206, <8 x i32> undef, <8 x i32> zeroinitializer
  %208 = or <8 x i32> %207, <i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183>
  %209 = icmp sgt <8 x i32> %broadcast.splat14, %203
  %210 = icmp sgt <8 x i32> %broadcast.splat16, %208
  %211 = extractelement <8 x i64> %202, i32 0
  %212 = shl i64 %211, 32
  %213 = ashr exact i64 %212, 32
  %214 = getelementptr inbounds float, float* %8, i64 %213
  %215 = bitcast float* %214 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %215, i32 4, <8 x i1> %209), !tbaa !12, !llvm.access.group !16
  %216 = getelementptr inbounds float, float* %214, i64 8
  %217 = bitcast float* %216 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %217, i32 4, <8 x i1> %210), !tbaa !12, !llvm.access.group !16
  %218 = or <8 x i64> %broadcast.splat, <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199>
  %219 = trunc <8 x i64> %218 to <8 x i32>
  %220 = trunc i64 %mul.i.i.i to i32
  %221 = or i32 %220, 8
  %222 = insertelement <8 x i32> undef, i32 %221, i64 0
  %223 = shufflevector <8 x i32> %222, <8 x i32> undef, <8 x i32> zeroinitializer
  %224 = or <8 x i32> %223, <i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199>
  %225 = icmp sgt <8 x i32> %broadcast.splat14, %219
  %226 = icmp sgt <8 x i32> %broadcast.splat16, %224
  %227 = extractelement <8 x i64> %218, i32 0
  %228 = shl i64 %227, 32
  %229 = ashr exact i64 %228, 32
  %230 = getelementptr inbounds float, float* %8, i64 %229
  %231 = bitcast float* %230 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %231, i32 4, <8 x i1> %225), !tbaa !12, !llvm.access.group !16
  %232 = getelementptr inbounds float, float* %230, i64 8
  %233 = bitcast float* %232 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %233, i32 4, <8 x i1> %226), !tbaa !12, !llvm.access.group !16
  %234 = or <8 x i64> %broadcast.splat, <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215>
  %235 = trunc <8 x i64> %234 to <8 x i32>
  %236 = trunc i64 %mul.i.i.i to i32
  %237 = or i32 %236, 8
  %238 = insertelement <8 x i32> undef, i32 %237, i64 0
  %239 = shufflevector <8 x i32> %238, <8 x i32> undef, <8 x i32> zeroinitializer
  %240 = or <8 x i32> %239, <i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215>
  %241 = icmp sgt <8 x i32> %broadcast.splat14, %235
  %242 = icmp sgt <8 x i32> %broadcast.splat16, %240
  %243 = extractelement <8 x i64> %234, i32 0
  %244 = shl i64 %243, 32
  %245 = ashr exact i64 %244, 32
  %246 = getelementptr inbounds float, float* %8, i64 %245
  %247 = bitcast float* %246 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %247, i32 4, <8 x i1> %241), !tbaa !12, !llvm.access.group !16
  %248 = getelementptr inbounds float, float* %246, i64 8
  %249 = bitcast float* %248 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %249, i32 4, <8 x i1> %242), !tbaa !12, !llvm.access.group !16
  %250 = or <8 x i64> %broadcast.splat, <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231>
  %251 = trunc <8 x i64> %250 to <8 x i32>
  %252 = trunc i64 %mul.i.i.i to i32
  %253 = or i32 %252, 8
  %254 = insertelement <8 x i32> undef, i32 %253, i64 0
  %255 = shufflevector <8 x i32> %254, <8 x i32> undef, <8 x i32> zeroinitializer
  %256 = or <8 x i32> %255, <i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231>
  %257 = icmp sgt <8 x i32> %broadcast.splat14, %251
  %258 = icmp sgt <8 x i32> %broadcast.splat16, %256
  %259 = extractelement <8 x i64> %250, i32 0
  %260 = shl i64 %259, 32
  %261 = ashr exact i64 %260, 32
  %262 = getelementptr inbounds float, float* %8, i64 %261
  %263 = bitcast float* %262 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %263, i32 4, <8 x i1> %257), !tbaa !12, !llvm.access.group !16
  %264 = getelementptr inbounds float, float* %262, i64 8
  %265 = bitcast float* %264 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %265, i32 4, <8 x i1> %258), !tbaa !12, !llvm.access.group !16
  %266 = or <8 x i64> %broadcast.splat, <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247>
  %267 = trunc <8 x i64> %266 to <8 x i32>
  %268 = trunc i64 %mul.i.i.i to i32
  %269 = or i32 %268, 8
  %270 = insertelement <8 x i32> undef, i32 %269, i64 0
  %271 = shufflevector <8 x i32> %270, <8 x i32> undef, <8 x i32> zeroinitializer
  %272 = or <8 x i32> %271, <i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247>
  %273 = icmp sgt <8 x i32> %broadcast.splat14, %267
  %274 = icmp sgt <8 x i32> %broadcast.splat16, %272
  %275 = extractelement <8 x i64> %266, i32 0
  %276 = shl i64 %275, 32
  %277 = ashr exact i64 %276, 32
  %278 = getelementptr inbounds float, float* %8, i64 %277
  %279 = bitcast float* %278 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %279, i32 4, <8 x i1> %273), !tbaa !12, !llvm.access.group !16
  %280 = getelementptr inbounds float, float* %278, i64 8
  %281 = bitcast float* %280 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %281, i32 4, <8 x i1> %274), !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_mean_kernel.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %285, %if.end.r_exit.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp sgt i32 %20, %conv.i.i.us
  br i1 %cmp.i.i.us, label %if.then.i.i.us, label %if.end.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %if.then.i.i.us
  %indvars.iv.next.i.i5.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %if.then.i.i.us ]
  %add8.i.i2.us = phi float [ %add8.i.i.us, %for.body.i.i.us ], [ 0.000000e+00, %if.then.i.i.us ]
  %282 = mul nsw i64 %indvars.iv.next.i.i5.us, %25
  %283 = add nsw i64 %282, %idxprom.i.i.us
  %arrayidx5.i.i.us = getelementptr inbounds float, float* %12, i64 %283
  %284 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !12
  %add8.i.i.us = fadd float %add8.i.i2.us, %284
  store float %add8.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i5.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !18

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %add8.i.i.us.lcssa = phi float [ %add8.i.i.us, %for.body.i.i.us ]
  %div.i.i.us = fdiv float %add8.i.i.us.lcssa, %16, !fpmath !20
  store float %div.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %for.end.loopexit.i.i.us, %pregion_for_entry.entry.i.i.us
  %285 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %285, 256
  br i1 %exitcond.not, label %_pocl_kernel_mean_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !21

_pocl_kernel_mean_kernel.exit.loopexit:           ; preds = %if.end.r_exit.i.i.us
  br label %_pocl_kernel_mean_kernel.exit

_pocl_kernel_mean_kernel.exit:                    ; preds = %_pocl_kernel_mean_kernel.exit.loopexit, %pregion_for_entry.entry.i.i.preheader
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_mean_kernel_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
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
  %16 = bitcast i8** %15 to i32**
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr i8*, i8** %0, i64 4
  %20 = bitcast i8** %19 to i32**
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp222.i.i = icmp sgt i32 %22, 0
  %23 = sext i32 %18 to i64
  %wide.trip.count.i.i = zext i32 %22 to i64
  br i1 %cmp222.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_entry.entry.i.i.preheader

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.preheader:            ; preds = %5
  %div.i.i = fdiv float 0.000000e+00, %14
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <8 x i32> undef, i32 %18, i32 0
  %broadcast.splat14 = shufflevector <8 x i32> %broadcast.splatinsert13, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <8 x i32> undef, i32 %18, i32 0
  %broadcast.splat16 = shufflevector <8 x i32> %broadcast.splatinsert15, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert17 = insertelement <8 x float> undef, float %div.i.i, i32 0
  %broadcast.splat18 = shufflevector <8 x float> %broadcast.splatinsert17, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert19 = insertelement <8 x float> undef, float %div.i.i, i32 0
  %broadcast.splat20 = shufflevector <8 x float> %broadcast.splatinsert19, <8 x float> undef, <8 x i32> zeroinitializer
  %24 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %25 = trunc <8 x i64> %24 to <8 x i32>
  %26 = trunc i64 %mul.i.i.i to i32
  %27 = or i32 %26, 8
  %28 = insertelement <8 x i32> undef, i32 %27, i64 0
  %29 = shufflevector <8 x i32> %28, <8 x i32> undef, <8 x i32> zeroinitializer
  %30 = or <8 x i32> %29, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %31 = icmp sgt <8 x i32> %broadcast.splat14, %25
  %32 = icmp sgt <8 x i32> %broadcast.splat16, %30
  %33 = extractelement <8 x i64> %24, i32 0
  %34 = shl i64 %33, 32
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds float, float* %7, i64 %35
  %37 = bitcast float* %36 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %37, i32 4, <8 x i1> %31), !tbaa !12, !llvm.access.group !16
  %38 = getelementptr inbounds float, float* %36, i64 8
  %39 = bitcast float* %38 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %39, i32 4, <8 x i1> %32), !tbaa !12, !llvm.access.group !16
  %40 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %41 = trunc <8 x i64> %40 to <8 x i32>
  %42 = trunc i64 %mul.i.i.i to i32
  %43 = or i32 %42, 8
  %44 = insertelement <8 x i32> undef, i32 %43, i64 0
  %45 = shufflevector <8 x i32> %44, <8 x i32> undef, <8 x i32> zeroinitializer
  %46 = or <8 x i32> %45, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %47 = icmp sgt <8 x i32> %broadcast.splat14, %41
  %48 = icmp sgt <8 x i32> %broadcast.splat16, %46
  %49 = extractelement <8 x i64> %40, i32 0
  %50 = shl i64 %49, 32
  %51 = ashr exact i64 %50, 32
  %52 = getelementptr inbounds float, float* %7, i64 %51
  %53 = bitcast float* %52 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %53, i32 4, <8 x i1> %47), !tbaa !12, !llvm.access.group !16
  %54 = getelementptr inbounds float, float* %52, i64 8
  %55 = bitcast float* %54 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %55, i32 4, <8 x i1> %48), !tbaa !12, !llvm.access.group !16
  %56 = or <8 x i64> %broadcast.splat, <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39>
  %57 = trunc <8 x i64> %56 to <8 x i32>
  %58 = trunc i64 %mul.i.i.i to i32
  %59 = or i32 %58, 8
  %60 = insertelement <8 x i32> undef, i32 %59, i64 0
  %61 = shufflevector <8 x i32> %60, <8 x i32> undef, <8 x i32> zeroinitializer
  %62 = or <8 x i32> %61, <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %63 = icmp sgt <8 x i32> %broadcast.splat14, %57
  %64 = icmp sgt <8 x i32> %broadcast.splat16, %62
  %65 = extractelement <8 x i64> %56, i32 0
  %66 = shl i64 %65, 32
  %67 = ashr exact i64 %66, 32
  %68 = getelementptr inbounds float, float* %7, i64 %67
  %69 = bitcast float* %68 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %69, i32 4, <8 x i1> %63), !tbaa !12, !llvm.access.group !16
  %70 = getelementptr inbounds float, float* %68, i64 8
  %71 = bitcast float* %70 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %71, i32 4, <8 x i1> %64), !tbaa !12, !llvm.access.group !16
  %72 = or <8 x i64> %broadcast.splat, <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55>
  %73 = trunc <8 x i64> %72 to <8 x i32>
  %74 = trunc i64 %mul.i.i.i to i32
  %75 = or i32 %74, 8
  %76 = insertelement <8 x i32> undef, i32 %75, i64 0
  %77 = shufflevector <8 x i32> %76, <8 x i32> undef, <8 x i32> zeroinitializer
  %78 = or <8 x i32> %77, <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %79 = icmp sgt <8 x i32> %broadcast.splat14, %73
  %80 = icmp sgt <8 x i32> %broadcast.splat16, %78
  %81 = extractelement <8 x i64> %72, i32 0
  %82 = shl i64 %81, 32
  %83 = ashr exact i64 %82, 32
  %84 = getelementptr inbounds float, float* %7, i64 %83
  %85 = bitcast float* %84 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %85, i32 4, <8 x i1> %79), !tbaa !12, !llvm.access.group !16
  %86 = getelementptr inbounds float, float* %84, i64 8
  %87 = bitcast float* %86 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %87, i32 4, <8 x i1> %80), !tbaa !12, !llvm.access.group !16
  %88 = or <8 x i64> %broadcast.splat, <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71>
  %89 = trunc <8 x i64> %88 to <8 x i32>
  %90 = trunc i64 %mul.i.i.i to i32
  %91 = or i32 %90, 8
  %92 = insertelement <8 x i32> undef, i32 %91, i64 0
  %93 = shufflevector <8 x i32> %92, <8 x i32> undef, <8 x i32> zeroinitializer
  %94 = or <8 x i32> %93, <i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71>
  %95 = icmp sgt <8 x i32> %broadcast.splat14, %89
  %96 = icmp sgt <8 x i32> %broadcast.splat16, %94
  %97 = extractelement <8 x i64> %88, i32 0
  %98 = shl i64 %97, 32
  %99 = ashr exact i64 %98, 32
  %100 = getelementptr inbounds float, float* %7, i64 %99
  %101 = bitcast float* %100 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %101, i32 4, <8 x i1> %95), !tbaa !12, !llvm.access.group !16
  %102 = getelementptr inbounds float, float* %100, i64 8
  %103 = bitcast float* %102 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %103, i32 4, <8 x i1> %96), !tbaa !12, !llvm.access.group !16
  %104 = or <8 x i64> %broadcast.splat, <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87>
  %105 = trunc <8 x i64> %104 to <8 x i32>
  %106 = trunc i64 %mul.i.i.i to i32
  %107 = or i32 %106, 8
  %108 = insertelement <8 x i32> undef, i32 %107, i64 0
  %109 = shufflevector <8 x i32> %108, <8 x i32> undef, <8 x i32> zeroinitializer
  %110 = or <8 x i32> %109, <i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87>
  %111 = icmp sgt <8 x i32> %broadcast.splat14, %105
  %112 = icmp sgt <8 x i32> %broadcast.splat16, %110
  %113 = extractelement <8 x i64> %104, i32 0
  %114 = shl i64 %113, 32
  %115 = ashr exact i64 %114, 32
  %116 = getelementptr inbounds float, float* %7, i64 %115
  %117 = bitcast float* %116 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %117, i32 4, <8 x i1> %111), !tbaa !12, !llvm.access.group !16
  %118 = getelementptr inbounds float, float* %116, i64 8
  %119 = bitcast float* %118 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %119, i32 4, <8 x i1> %112), !tbaa !12, !llvm.access.group !16
  %120 = or <8 x i64> %broadcast.splat, <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103>
  %121 = trunc <8 x i64> %120 to <8 x i32>
  %122 = trunc i64 %mul.i.i.i to i32
  %123 = or i32 %122, 8
  %124 = insertelement <8 x i32> undef, i32 %123, i64 0
  %125 = shufflevector <8 x i32> %124, <8 x i32> undef, <8 x i32> zeroinitializer
  %126 = or <8 x i32> %125, <i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103>
  %127 = icmp sgt <8 x i32> %broadcast.splat14, %121
  %128 = icmp sgt <8 x i32> %broadcast.splat16, %126
  %129 = extractelement <8 x i64> %120, i32 0
  %130 = shl i64 %129, 32
  %131 = ashr exact i64 %130, 32
  %132 = getelementptr inbounds float, float* %7, i64 %131
  %133 = bitcast float* %132 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %133, i32 4, <8 x i1> %127), !tbaa !12, !llvm.access.group !16
  %134 = getelementptr inbounds float, float* %132, i64 8
  %135 = bitcast float* %134 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %135, i32 4, <8 x i1> %128), !tbaa !12, !llvm.access.group !16
  %136 = or <8 x i64> %broadcast.splat, <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119>
  %137 = trunc <8 x i64> %136 to <8 x i32>
  %138 = trunc i64 %mul.i.i.i to i32
  %139 = or i32 %138, 8
  %140 = insertelement <8 x i32> undef, i32 %139, i64 0
  %141 = shufflevector <8 x i32> %140, <8 x i32> undef, <8 x i32> zeroinitializer
  %142 = or <8 x i32> %141, <i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119>
  %143 = icmp sgt <8 x i32> %broadcast.splat14, %137
  %144 = icmp sgt <8 x i32> %broadcast.splat16, %142
  %145 = extractelement <8 x i64> %136, i32 0
  %146 = shl i64 %145, 32
  %147 = ashr exact i64 %146, 32
  %148 = getelementptr inbounds float, float* %7, i64 %147
  %149 = bitcast float* %148 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %149, i32 4, <8 x i1> %143), !tbaa !12, !llvm.access.group !16
  %150 = getelementptr inbounds float, float* %148, i64 8
  %151 = bitcast float* %150 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %151, i32 4, <8 x i1> %144), !tbaa !12, !llvm.access.group !16
  %152 = or <8 x i64> %broadcast.splat, <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135>
  %153 = trunc <8 x i64> %152 to <8 x i32>
  %154 = trunc i64 %mul.i.i.i to i32
  %155 = or i32 %154, 8
  %156 = insertelement <8 x i32> undef, i32 %155, i64 0
  %157 = shufflevector <8 x i32> %156, <8 x i32> undef, <8 x i32> zeroinitializer
  %158 = or <8 x i32> %157, <i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135>
  %159 = icmp sgt <8 x i32> %broadcast.splat14, %153
  %160 = icmp sgt <8 x i32> %broadcast.splat16, %158
  %161 = extractelement <8 x i64> %152, i32 0
  %162 = shl i64 %161, 32
  %163 = ashr exact i64 %162, 32
  %164 = getelementptr inbounds float, float* %7, i64 %163
  %165 = bitcast float* %164 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %165, i32 4, <8 x i1> %159), !tbaa !12, !llvm.access.group !16
  %166 = getelementptr inbounds float, float* %164, i64 8
  %167 = bitcast float* %166 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %167, i32 4, <8 x i1> %160), !tbaa !12, !llvm.access.group !16
  %168 = or <8 x i64> %broadcast.splat, <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151>
  %169 = trunc <8 x i64> %168 to <8 x i32>
  %170 = trunc i64 %mul.i.i.i to i32
  %171 = or i32 %170, 8
  %172 = insertelement <8 x i32> undef, i32 %171, i64 0
  %173 = shufflevector <8 x i32> %172, <8 x i32> undef, <8 x i32> zeroinitializer
  %174 = or <8 x i32> %173, <i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151>
  %175 = icmp sgt <8 x i32> %broadcast.splat14, %169
  %176 = icmp sgt <8 x i32> %broadcast.splat16, %174
  %177 = extractelement <8 x i64> %168, i32 0
  %178 = shl i64 %177, 32
  %179 = ashr exact i64 %178, 32
  %180 = getelementptr inbounds float, float* %7, i64 %179
  %181 = bitcast float* %180 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %181, i32 4, <8 x i1> %175), !tbaa !12, !llvm.access.group !16
  %182 = getelementptr inbounds float, float* %180, i64 8
  %183 = bitcast float* %182 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %183, i32 4, <8 x i1> %176), !tbaa !12, !llvm.access.group !16
  %184 = or <8 x i64> %broadcast.splat, <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167>
  %185 = trunc <8 x i64> %184 to <8 x i32>
  %186 = trunc i64 %mul.i.i.i to i32
  %187 = or i32 %186, 8
  %188 = insertelement <8 x i32> undef, i32 %187, i64 0
  %189 = shufflevector <8 x i32> %188, <8 x i32> undef, <8 x i32> zeroinitializer
  %190 = or <8 x i32> %189, <i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167>
  %191 = icmp sgt <8 x i32> %broadcast.splat14, %185
  %192 = icmp sgt <8 x i32> %broadcast.splat16, %190
  %193 = extractelement <8 x i64> %184, i32 0
  %194 = shl i64 %193, 32
  %195 = ashr exact i64 %194, 32
  %196 = getelementptr inbounds float, float* %7, i64 %195
  %197 = bitcast float* %196 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %197, i32 4, <8 x i1> %191), !tbaa !12, !llvm.access.group !16
  %198 = getelementptr inbounds float, float* %196, i64 8
  %199 = bitcast float* %198 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %199, i32 4, <8 x i1> %192), !tbaa !12, !llvm.access.group !16
  %200 = or <8 x i64> %broadcast.splat, <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183>
  %201 = trunc <8 x i64> %200 to <8 x i32>
  %202 = trunc i64 %mul.i.i.i to i32
  %203 = or i32 %202, 8
  %204 = insertelement <8 x i32> undef, i32 %203, i64 0
  %205 = shufflevector <8 x i32> %204, <8 x i32> undef, <8 x i32> zeroinitializer
  %206 = or <8 x i32> %205, <i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183>
  %207 = icmp sgt <8 x i32> %broadcast.splat14, %201
  %208 = icmp sgt <8 x i32> %broadcast.splat16, %206
  %209 = extractelement <8 x i64> %200, i32 0
  %210 = shl i64 %209, 32
  %211 = ashr exact i64 %210, 32
  %212 = getelementptr inbounds float, float* %7, i64 %211
  %213 = bitcast float* %212 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %213, i32 4, <8 x i1> %207), !tbaa !12, !llvm.access.group !16
  %214 = getelementptr inbounds float, float* %212, i64 8
  %215 = bitcast float* %214 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %215, i32 4, <8 x i1> %208), !tbaa !12, !llvm.access.group !16
  %216 = or <8 x i64> %broadcast.splat, <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199>
  %217 = trunc <8 x i64> %216 to <8 x i32>
  %218 = trunc i64 %mul.i.i.i to i32
  %219 = or i32 %218, 8
  %220 = insertelement <8 x i32> undef, i32 %219, i64 0
  %221 = shufflevector <8 x i32> %220, <8 x i32> undef, <8 x i32> zeroinitializer
  %222 = or <8 x i32> %221, <i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199>
  %223 = icmp sgt <8 x i32> %broadcast.splat14, %217
  %224 = icmp sgt <8 x i32> %broadcast.splat16, %222
  %225 = extractelement <8 x i64> %216, i32 0
  %226 = shl i64 %225, 32
  %227 = ashr exact i64 %226, 32
  %228 = getelementptr inbounds float, float* %7, i64 %227
  %229 = bitcast float* %228 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %229, i32 4, <8 x i1> %223), !tbaa !12, !llvm.access.group !16
  %230 = getelementptr inbounds float, float* %228, i64 8
  %231 = bitcast float* %230 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %231, i32 4, <8 x i1> %224), !tbaa !12, !llvm.access.group !16
  %232 = or <8 x i64> %broadcast.splat, <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215>
  %233 = trunc <8 x i64> %232 to <8 x i32>
  %234 = trunc i64 %mul.i.i.i to i32
  %235 = or i32 %234, 8
  %236 = insertelement <8 x i32> undef, i32 %235, i64 0
  %237 = shufflevector <8 x i32> %236, <8 x i32> undef, <8 x i32> zeroinitializer
  %238 = or <8 x i32> %237, <i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215>
  %239 = icmp sgt <8 x i32> %broadcast.splat14, %233
  %240 = icmp sgt <8 x i32> %broadcast.splat16, %238
  %241 = extractelement <8 x i64> %232, i32 0
  %242 = shl i64 %241, 32
  %243 = ashr exact i64 %242, 32
  %244 = getelementptr inbounds float, float* %7, i64 %243
  %245 = bitcast float* %244 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %245, i32 4, <8 x i1> %239), !tbaa !12, !llvm.access.group !16
  %246 = getelementptr inbounds float, float* %244, i64 8
  %247 = bitcast float* %246 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %247, i32 4, <8 x i1> %240), !tbaa !12, !llvm.access.group !16
  %248 = or <8 x i64> %broadcast.splat, <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231>
  %249 = trunc <8 x i64> %248 to <8 x i32>
  %250 = trunc i64 %mul.i.i.i to i32
  %251 = or i32 %250, 8
  %252 = insertelement <8 x i32> undef, i32 %251, i64 0
  %253 = shufflevector <8 x i32> %252, <8 x i32> undef, <8 x i32> zeroinitializer
  %254 = or <8 x i32> %253, <i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231>
  %255 = icmp sgt <8 x i32> %broadcast.splat14, %249
  %256 = icmp sgt <8 x i32> %broadcast.splat16, %254
  %257 = extractelement <8 x i64> %248, i32 0
  %258 = shl i64 %257, 32
  %259 = ashr exact i64 %258, 32
  %260 = getelementptr inbounds float, float* %7, i64 %259
  %261 = bitcast float* %260 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %261, i32 4, <8 x i1> %255), !tbaa !12, !llvm.access.group !16
  %262 = getelementptr inbounds float, float* %260, i64 8
  %263 = bitcast float* %262 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %263, i32 4, <8 x i1> %256), !tbaa !12, !llvm.access.group !16
  %264 = or <8 x i64> %broadcast.splat, <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247>
  %265 = trunc <8 x i64> %264 to <8 x i32>
  %266 = trunc i64 %mul.i.i.i to i32
  %267 = or i32 %266, 8
  %268 = insertelement <8 x i32> undef, i32 %267, i64 0
  %269 = shufflevector <8 x i32> %268, <8 x i32> undef, <8 x i32> zeroinitializer
  %270 = or <8 x i32> %269, <i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247>
  %271 = icmp sgt <8 x i32> %broadcast.splat14, %265
  %272 = icmp sgt <8 x i32> %broadcast.splat16, %270
  %273 = extractelement <8 x i64> %264, i32 0
  %274 = shl i64 %273, 32
  %275 = ashr exact i64 %274, 32
  %276 = getelementptr inbounds float, float* %7, i64 %275
  %277 = bitcast float* %276 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat18, <8 x float>* %277, i32 4, <8 x i1> %271), !tbaa !12, !llvm.access.group !16
  %278 = getelementptr inbounds float, float* %276, i64 8
  %279 = bitcast float* %278 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat20, <8 x float>* %279, i32 4, <8 x i1> %272), !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_mean_kernel.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %283, %if.end.r_exit.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp sgt i32 %18, %conv.i.i.us
  br i1 %cmp.i.i.us, label %if.then.i.i.us, label %if.end.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %if.then.i.i.us
  %indvars.iv.next.i.i5.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %if.then.i.i.us ]
  %add8.i.i2.us = phi float [ %add8.i.i.us, %for.body.i.i.us ], [ 0.000000e+00, %if.then.i.i.us ]
  %280 = mul nsw i64 %indvars.iv.next.i.i5.us, %23
  %281 = add nsw i64 %280, %idxprom.i.i.us
  %arrayidx5.i.i.us = getelementptr inbounds float, float* %10, i64 %281
  %282 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !12
  %add8.i.i.us = fadd float %add8.i.i2.us, %282
  store float %add8.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i5.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !18

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %add8.i.i.us.lcssa = phi float [ %add8.i.i.us, %for.body.i.i.us ]
  %div.i.i.us = fdiv float %add8.i.i.us.lcssa, %14, !fpmath !20
  store float %div.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %for.end.loopexit.i.i.us, %pregion_for_entry.entry.i.i.us
  %283 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %283, 256
  br i1 %exitcond.not, label %_pocl_kernel_mean_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !21

_pocl_kernel_mean_kernel.exit.loopexit:           ; preds = %if.end.r_exit.i.i.us
  br label %_pocl_kernel_mean_kernel.exit

_pocl_kernel_mean_kernel.exit:                    ; preds = %_pocl_kernel_mean_kernel.exit.loopexit, %pregion_for_entry.entry.i.i.preheader
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.masked.store.v8f32.p0v8f32(<8 x float>, <8 x float>*, i32 immarg, <8 x i1>) #2

attributes #0 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!opencl.ocl.version = !{!3}
!llvm.ident = !{!4}
!opencl.spir.version = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 1, i32 2}
!4 = !{!"clang version 11.0.0 (git@github.com:llvm/llvm-project.git 91e89f9a5115b0f83b8f026e1ad0e6d1f885fa9b)"}
!5 = !{i32 1, i32 1, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !""}
!10 = !{!"mean", !"data", !"float_n", !"m", !"n"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17}
!17 = distinct !{}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{float 2.500000e+00}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.parallel_accesses", !17}
