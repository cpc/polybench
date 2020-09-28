; ModuleID = './KK/KIGILFKIOCMFGODNJKKCPJJIDHNBMKHCFFGPF/std_kernel/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_std_kernel(float* nocapture readonly %0, float* nocapture %1, float* nocapture readonly %2, float %3, float %4, i32 %5, i32 %6, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %7, i64 %8, i64 %9, i64 %10) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %8, 8
  %cmp259.i = icmp sgt i32 %6, 0
  %12 = sext i32 %5 to i64
  %wide.trip.count.i = zext i32 %6 to i64
  br i1 %cmp259.i, label %pregion_for_entry.entry.i.us.preheader, label %pregion_for_entry.entry.i.preheader

pregion_for_entry.entry.i.us.preheader:           ; preds = %11
  br label %pregion_for_entry.entry.i.us

pregion_for_entry.entry.i.preheader:              ; preds = %11
  %div.i = fdiv float 0.000000e+00, %3
  %13 = tail call float @llvm.sqrt.f32(float %div.i) #2
  %cmp27.i = fcmp ugt float %13, %4
  %storemerge.i = select i1 %cmp27.i, float %13, float 1.000000e+00
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert12 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat13 = shufflevector <8 x i32> %broadcast.splatinsert12, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat15 = shufflevector <8 x i32> %broadcast.splatinsert14, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert16 = insertelement <8 x float> undef, float %storemerge.i, i32 0
  %broadcast.splat17 = shufflevector <8 x float> %broadcast.splatinsert16, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert18 = insertelement <8 x float> undef, float %storemerge.i, i32 0
  %broadcast.splat19 = shufflevector <8 x float> %broadcast.splatinsert18, <8 x float> undef, <8 x i32> zeroinitializer
  %14 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %15 = trunc <8 x i64> %14 to <8 x i32>
  %16 = trunc i64 %mul.i.i to i32
  %17 = or i32 %16, 8
  %18 = insertelement <8 x i32> undef, i32 %17, i64 0
  %19 = shufflevector <8 x i32> %18, <8 x i32> undef, <8 x i32> zeroinitializer
  %20 = or <8 x i32> %19, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %21 = icmp sgt <8 x i32> %broadcast.splat13, %15
  %22 = icmp sgt <8 x i32> %broadcast.splat15, %20
  %23 = extractelement <8 x i64> %14, i32 0
  %24 = shl i64 %23, 32
  %25 = ashr exact i64 %24, 32
  %26 = getelementptr inbounds float, float* %1, i64 %25
  %27 = bitcast float* %26 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %27, i32 4, <8 x i1> %21), !tbaa !12, !llvm.access.group !16
  %28 = getelementptr inbounds float, float* %26, i64 8
  %29 = bitcast float* %28 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %29, i32 4, <8 x i1> %22), !tbaa !12, !llvm.access.group !16
  %30 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %31 = trunc <8 x i64> %30 to <8 x i32>
  %32 = trunc i64 %mul.i.i to i32
  %33 = or i32 %32, 8
  %34 = insertelement <8 x i32> undef, i32 %33, i64 0
  %35 = shufflevector <8 x i32> %34, <8 x i32> undef, <8 x i32> zeroinitializer
  %36 = or <8 x i32> %35, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %37 = icmp sgt <8 x i32> %broadcast.splat13, %31
  %38 = icmp sgt <8 x i32> %broadcast.splat15, %36
  %39 = extractelement <8 x i64> %30, i32 0
  %40 = shl i64 %39, 32
  %41 = ashr exact i64 %40, 32
  %42 = getelementptr inbounds float, float* %1, i64 %41
  %43 = bitcast float* %42 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %43, i32 4, <8 x i1> %37), !tbaa !12, !llvm.access.group !16
  %44 = getelementptr inbounds float, float* %42, i64 8
  %45 = bitcast float* %44 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %45, i32 4, <8 x i1> %38), !tbaa !12, !llvm.access.group !16
  %46 = or <8 x i64> %broadcast.splat, <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39>
  %47 = trunc <8 x i64> %46 to <8 x i32>
  %48 = trunc i64 %mul.i.i to i32
  %49 = or i32 %48, 8
  %50 = insertelement <8 x i32> undef, i32 %49, i64 0
  %51 = shufflevector <8 x i32> %50, <8 x i32> undef, <8 x i32> zeroinitializer
  %52 = or <8 x i32> %51, <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %53 = icmp sgt <8 x i32> %broadcast.splat13, %47
  %54 = icmp sgt <8 x i32> %broadcast.splat15, %52
  %55 = extractelement <8 x i64> %46, i32 0
  %56 = shl i64 %55, 32
  %57 = ashr exact i64 %56, 32
  %58 = getelementptr inbounds float, float* %1, i64 %57
  %59 = bitcast float* %58 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %59, i32 4, <8 x i1> %53), !tbaa !12, !llvm.access.group !16
  %60 = getelementptr inbounds float, float* %58, i64 8
  %61 = bitcast float* %60 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %61, i32 4, <8 x i1> %54), !tbaa !12, !llvm.access.group !16
  %62 = or <8 x i64> %broadcast.splat, <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55>
  %63 = trunc <8 x i64> %62 to <8 x i32>
  %64 = trunc i64 %mul.i.i to i32
  %65 = or i32 %64, 8
  %66 = insertelement <8 x i32> undef, i32 %65, i64 0
  %67 = shufflevector <8 x i32> %66, <8 x i32> undef, <8 x i32> zeroinitializer
  %68 = or <8 x i32> %67, <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %69 = icmp sgt <8 x i32> %broadcast.splat13, %63
  %70 = icmp sgt <8 x i32> %broadcast.splat15, %68
  %71 = extractelement <8 x i64> %62, i32 0
  %72 = shl i64 %71, 32
  %73 = ashr exact i64 %72, 32
  %74 = getelementptr inbounds float, float* %1, i64 %73
  %75 = bitcast float* %74 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %75, i32 4, <8 x i1> %69), !tbaa !12, !llvm.access.group !16
  %76 = getelementptr inbounds float, float* %74, i64 8
  %77 = bitcast float* %76 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %77, i32 4, <8 x i1> %70), !tbaa !12, !llvm.access.group !16
  %78 = or <8 x i64> %broadcast.splat, <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71>
  %79 = trunc <8 x i64> %78 to <8 x i32>
  %80 = trunc i64 %mul.i.i to i32
  %81 = or i32 %80, 8
  %82 = insertelement <8 x i32> undef, i32 %81, i64 0
  %83 = shufflevector <8 x i32> %82, <8 x i32> undef, <8 x i32> zeroinitializer
  %84 = or <8 x i32> %83, <i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71>
  %85 = icmp sgt <8 x i32> %broadcast.splat13, %79
  %86 = icmp sgt <8 x i32> %broadcast.splat15, %84
  %87 = extractelement <8 x i64> %78, i32 0
  %88 = shl i64 %87, 32
  %89 = ashr exact i64 %88, 32
  %90 = getelementptr inbounds float, float* %1, i64 %89
  %91 = bitcast float* %90 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %91, i32 4, <8 x i1> %85), !tbaa !12, !llvm.access.group !16
  %92 = getelementptr inbounds float, float* %90, i64 8
  %93 = bitcast float* %92 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %93, i32 4, <8 x i1> %86), !tbaa !12, !llvm.access.group !16
  %94 = or <8 x i64> %broadcast.splat, <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87>
  %95 = trunc <8 x i64> %94 to <8 x i32>
  %96 = trunc i64 %mul.i.i to i32
  %97 = or i32 %96, 8
  %98 = insertelement <8 x i32> undef, i32 %97, i64 0
  %99 = shufflevector <8 x i32> %98, <8 x i32> undef, <8 x i32> zeroinitializer
  %100 = or <8 x i32> %99, <i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87>
  %101 = icmp sgt <8 x i32> %broadcast.splat13, %95
  %102 = icmp sgt <8 x i32> %broadcast.splat15, %100
  %103 = extractelement <8 x i64> %94, i32 0
  %104 = shl i64 %103, 32
  %105 = ashr exact i64 %104, 32
  %106 = getelementptr inbounds float, float* %1, i64 %105
  %107 = bitcast float* %106 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %107, i32 4, <8 x i1> %101), !tbaa !12, !llvm.access.group !16
  %108 = getelementptr inbounds float, float* %106, i64 8
  %109 = bitcast float* %108 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %109, i32 4, <8 x i1> %102), !tbaa !12, !llvm.access.group !16
  %110 = or <8 x i64> %broadcast.splat, <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103>
  %111 = trunc <8 x i64> %110 to <8 x i32>
  %112 = trunc i64 %mul.i.i to i32
  %113 = or i32 %112, 8
  %114 = insertelement <8 x i32> undef, i32 %113, i64 0
  %115 = shufflevector <8 x i32> %114, <8 x i32> undef, <8 x i32> zeroinitializer
  %116 = or <8 x i32> %115, <i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103>
  %117 = icmp sgt <8 x i32> %broadcast.splat13, %111
  %118 = icmp sgt <8 x i32> %broadcast.splat15, %116
  %119 = extractelement <8 x i64> %110, i32 0
  %120 = shl i64 %119, 32
  %121 = ashr exact i64 %120, 32
  %122 = getelementptr inbounds float, float* %1, i64 %121
  %123 = bitcast float* %122 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %123, i32 4, <8 x i1> %117), !tbaa !12, !llvm.access.group !16
  %124 = getelementptr inbounds float, float* %122, i64 8
  %125 = bitcast float* %124 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %125, i32 4, <8 x i1> %118), !tbaa !12, !llvm.access.group !16
  %126 = or <8 x i64> %broadcast.splat, <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119>
  %127 = trunc <8 x i64> %126 to <8 x i32>
  %128 = trunc i64 %mul.i.i to i32
  %129 = or i32 %128, 8
  %130 = insertelement <8 x i32> undef, i32 %129, i64 0
  %131 = shufflevector <8 x i32> %130, <8 x i32> undef, <8 x i32> zeroinitializer
  %132 = or <8 x i32> %131, <i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119>
  %133 = icmp sgt <8 x i32> %broadcast.splat13, %127
  %134 = icmp sgt <8 x i32> %broadcast.splat15, %132
  %135 = extractelement <8 x i64> %126, i32 0
  %136 = shl i64 %135, 32
  %137 = ashr exact i64 %136, 32
  %138 = getelementptr inbounds float, float* %1, i64 %137
  %139 = bitcast float* %138 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %139, i32 4, <8 x i1> %133), !tbaa !12, !llvm.access.group !16
  %140 = getelementptr inbounds float, float* %138, i64 8
  %141 = bitcast float* %140 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %141, i32 4, <8 x i1> %134), !tbaa !12, !llvm.access.group !16
  %142 = or <8 x i64> %broadcast.splat, <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135>
  %143 = trunc <8 x i64> %142 to <8 x i32>
  %144 = trunc i64 %mul.i.i to i32
  %145 = or i32 %144, 8
  %146 = insertelement <8 x i32> undef, i32 %145, i64 0
  %147 = shufflevector <8 x i32> %146, <8 x i32> undef, <8 x i32> zeroinitializer
  %148 = or <8 x i32> %147, <i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135>
  %149 = icmp sgt <8 x i32> %broadcast.splat13, %143
  %150 = icmp sgt <8 x i32> %broadcast.splat15, %148
  %151 = extractelement <8 x i64> %142, i32 0
  %152 = shl i64 %151, 32
  %153 = ashr exact i64 %152, 32
  %154 = getelementptr inbounds float, float* %1, i64 %153
  %155 = bitcast float* %154 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %155, i32 4, <8 x i1> %149), !tbaa !12, !llvm.access.group !16
  %156 = getelementptr inbounds float, float* %154, i64 8
  %157 = bitcast float* %156 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %157, i32 4, <8 x i1> %150), !tbaa !12, !llvm.access.group !16
  %158 = or <8 x i64> %broadcast.splat, <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151>
  %159 = trunc <8 x i64> %158 to <8 x i32>
  %160 = trunc i64 %mul.i.i to i32
  %161 = or i32 %160, 8
  %162 = insertelement <8 x i32> undef, i32 %161, i64 0
  %163 = shufflevector <8 x i32> %162, <8 x i32> undef, <8 x i32> zeroinitializer
  %164 = or <8 x i32> %163, <i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151>
  %165 = icmp sgt <8 x i32> %broadcast.splat13, %159
  %166 = icmp sgt <8 x i32> %broadcast.splat15, %164
  %167 = extractelement <8 x i64> %158, i32 0
  %168 = shl i64 %167, 32
  %169 = ashr exact i64 %168, 32
  %170 = getelementptr inbounds float, float* %1, i64 %169
  %171 = bitcast float* %170 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %171, i32 4, <8 x i1> %165), !tbaa !12, !llvm.access.group !16
  %172 = getelementptr inbounds float, float* %170, i64 8
  %173 = bitcast float* %172 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %173, i32 4, <8 x i1> %166), !tbaa !12, !llvm.access.group !16
  %174 = or <8 x i64> %broadcast.splat, <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167>
  %175 = trunc <8 x i64> %174 to <8 x i32>
  %176 = trunc i64 %mul.i.i to i32
  %177 = or i32 %176, 8
  %178 = insertelement <8 x i32> undef, i32 %177, i64 0
  %179 = shufflevector <8 x i32> %178, <8 x i32> undef, <8 x i32> zeroinitializer
  %180 = or <8 x i32> %179, <i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167>
  %181 = icmp sgt <8 x i32> %broadcast.splat13, %175
  %182 = icmp sgt <8 x i32> %broadcast.splat15, %180
  %183 = extractelement <8 x i64> %174, i32 0
  %184 = shl i64 %183, 32
  %185 = ashr exact i64 %184, 32
  %186 = getelementptr inbounds float, float* %1, i64 %185
  %187 = bitcast float* %186 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %187, i32 4, <8 x i1> %181), !tbaa !12, !llvm.access.group !16
  %188 = getelementptr inbounds float, float* %186, i64 8
  %189 = bitcast float* %188 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %189, i32 4, <8 x i1> %182), !tbaa !12, !llvm.access.group !16
  %190 = or <8 x i64> %broadcast.splat, <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183>
  %191 = trunc <8 x i64> %190 to <8 x i32>
  %192 = trunc i64 %mul.i.i to i32
  %193 = or i32 %192, 8
  %194 = insertelement <8 x i32> undef, i32 %193, i64 0
  %195 = shufflevector <8 x i32> %194, <8 x i32> undef, <8 x i32> zeroinitializer
  %196 = or <8 x i32> %195, <i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183>
  %197 = icmp sgt <8 x i32> %broadcast.splat13, %191
  %198 = icmp sgt <8 x i32> %broadcast.splat15, %196
  %199 = extractelement <8 x i64> %190, i32 0
  %200 = shl i64 %199, 32
  %201 = ashr exact i64 %200, 32
  %202 = getelementptr inbounds float, float* %1, i64 %201
  %203 = bitcast float* %202 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %203, i32 4, <8 x i1> %197), !tbaa !12, !llvm.access.group !16
  %204 = getelementptr inbounds float, float* %202, i64 8
  %205 = bitcast float* %204 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %205, i32 4, <8 x i1> %198), !tbaa !12, !llvm.access.group !16
  %206 = or <8 x i64> %broadcast.splat, <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199>
  %207 = trunc <8 x i64> %206 to <8 x i32>
  %208 = trunc i64 %mul.i.i to i32
  %209 = or i32 %208, 8
  %210 = insertelement <8 x i32> undef, i32 %209, i64 0
  %211 = shufflevector <8 x i32> %210, <8 x i32> undef, <8 x i32> zeroinitializer
  %212 = or <8 x i32> %211, <i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199>
  %213 = icmp sgt <8 x i32> %broadcast.splat13, %207
  %214 = icmp sgt <8 x i32> %broadcast.splat15, %212
  %215 = extractelement <8 x i64> %206, i32 0
  %216 = shl i64 %215, 32
  %217 = ashr exact i64 %216, 32
  %218 = getelementptr inbounds float, float* %1, i64 %217
  %219 = bitcast float* %218 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %219, i32 4, <8 x i1> %213), !tbaa !12, !llvm.access.group !16
  %220 = getelementptr inbounds float, float* %218, i64 8
  %221 = bitcast float* %220 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %221, i32 4, <8 x i1> %214), !tbaa !12, !llvm.access.group !16
  %222 = or <8 x i64> %broadcast.splat, <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215>
  %223 = trunc <8 x i64> %222 to <8 x i32>
  %224 = trunc i64 %mul.i.i to i32
  %225 = or i32 %224, 8
  %226 = insertelement <8 x i32> undef, i32 %225, i64 0
  %227 = shufflevector <8 x i32> %226, <8 x i32> undef, <8 x i32> zeroinitializer
  %228 = or <8 x i32> %227, <i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215>
  %229 = icmp sgt <8 x i32> %broadcast.splat13, %223
  %230 = icmp sgt <8 x i32> %broadcast.splat15, %228
  %231 = extractelement <8 x i64> %222, i32 0
  %232 = shl i64 %231, 32
  %233 = ashr exact i64 %232, 32
  %234 = getelementptr inbounds float, float* %1, i64 %233
  %235 = bitcast float* %234 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %235, i32 4, <8 x i1> %229), !tbaa !12, !llvm.access.group !16
  %236 = getelementptr inbounds float, float* %234, i64 8
  %237 = bitcast float* %236 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %237, i32 4, <8 x i1> %230), !tbaa !12, !llvm.access.group !16
  %238 = or <8 x i64> %broadcast.splat, <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231>
  %239 = trunc <8 x i64> %238 to <8 x i32>
  %240 = trunc i64 %mul.i.i to i32
  %241 = or i32 %240, 8
  %242 = insertelement <8 x i32> undef, i32 %241, i64 0
  %243 = shufflevector <8 x i32> %242, <8 x i32> undef, <8 x i32> zeroinitializer
  %244 = or <8 x i32> %243, <i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231>
  %245 = icmp sgt <8 x i32> %broadcast.splat13, %239
  %246 = icmp sgt <8 x i32> %broadcast.splat15, %244
  %247 = extractelement <8 x i64> %238, i32 0
  %248 = shl i64 %247, 32
  %249 = ashr exact i64 %248, 32
  %250 = getelementptr inbounds float, float* %1, i64 %249
  %251 = bitcast float* %250 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %251, i32 4, <8 x i1> %245), !tbaa !12, !llvm.access.group !16
  %252 = getelementptr inbounds float, float* %250, i64 8
  %253 = bitcast float* %252 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %253, i32 4, <8 x i1> %246), !tbaa !12, !llvm.access.group !16
  %254 = or <8 x i64> %broadcast.splat, <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247>
  %255 = trunc <8 x i64> %254 to <8 x i32>
  %256 = trunc i64 %mul.i.i to i32
  %257 = or i32 %256, 8
  %258 = insertelement <8 x i32> undef, i32 %257, i64 0
  %259 = shufflevector <8 x i32> %258, <8 x i32> undef, <8 x i32> zeroinitializer
  %260 = or <8 x i32> %259, <i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247>
  %261 = icmp sgt <8 x i32> %broadcast.splat13, %255
  %262 = icmp sgt <8 x i32> %broadcast.splat15, %260
  %263 = extractelement <8 x i64> %254, i32 0
  %264 = shl i64 %263, 32
  %265 = ashr exact i64 %264, 32
  %266 = getelementptr inbounds float, float* %1, i64 %265
  %267 = bitcast float* %266 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %267, i32 4, <8 x i1> %261), !tbaa !12, !llvm.access.group !16
  %268 = getelementptr inbounds float, float* %266, i64 8
  %269 = bitcast float* %268 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %269, i32 4, <8 x i1> %262), !tbaa !12, !llvm.access.group !16
  br label %std_kernel.exit

pregion_for_entry.entry.i.us:                     ; preds = %if.end32.r_exit.i.us, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %277, %if.end32.r_exit.i.us ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp.i.us = icmp slt i32 %conv.i.us, %5
  br i1 %cmp.i.us, label %if.then.i.us, label %if.end32.r_exit.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %sext.i.us = shl i64 %add1.i.i.us, 32
  %idxprom.i.us = ashr exact i64 %sext.i.us, 32
  %arrayidx.i.us = getelementptr inbounds float, float* %1, i64 %idxprom.i.us
  store float 0.000000e+00, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx7.i.us = getelementptr inbounds float, float* %0, i64 %idxprom.i.us
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %if.then.i.us
  %indvars.iv.next.i4.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %if.then.i.us ]
  %270 = phi float [ %275, %for.body.i.us ], [ 0.000000e+00, %if.then.i.us ]
  %271 = mul nsw i64 %indvars.iv.next.i4.us, %12
  %272 = add nsw i64 %271, %idxprom.i.us
  %arrayidx5.i.us = getelementptr inbounds float, float* %2, i64 %272
  %273 = load float, float* %arrayidx5.i.us, align 4, !tbaa !12
  %274 = load float, float* %arrayidx7.i.us, align 4, !tbaa !12
  %sub.i.us = fsub float %273, %274
  %275 = tail call float @llvm.fmuladd.f32(float %sub.i.us, float %sub.i.us, float %270) #2
  store float %275, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i4.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %for.end.loopexit.i.us, label %for.body.i.us, !llvm.loop !18

for.end.loopexit.i.us:                            ; preds = %for.body.i.us
  %.lcssa = phi float [ %275, %for.body.i.us ]
  %div.i.us = fdiv float %.lcssa, %3, !fpmath !20
  %276 = tail call float @llvm.sqrt.f32(float %div.i.us) #2
  %cmp27.i.us = fcmp ugt float %276, %4
  %storemerge.i.us = select i1 %cmp27.i.us, float %276, float 1.000000e+00
  store float %storemerge.i.us, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end32.r_exit.i.us

if.end32.r_exit.i.us:                             ; preds = %for.end.loopexit.i.us, %pregion_for_entry.entry.i.us
  %277 = add nuw nsw i64 %_local_id_x.0.us, 1
  %exitcond.not = icmp eq i64 %277, 256
  br i1 %exitcond.not, label %std_kernel.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !21

std_kernel.exit.loopexit:                         ; preds = %if.end32.r_exit.i.us
  br label %std_kernel.exit

std_kernel.exit:                                  ; preds = %std_kernel.exit.loopexit, %pregion_for_entry.entry.i.preheader
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_std_kernel_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %mul.i.i.i = shl i64 %2, 8
  %cmp259.i.i = icmp sgt i32 %32, 0
  %33 = sext i32 %28 to i64
  %wide.trip.count.i.i = zext i32 %32 to i64
  br i1 %cmp259.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_entry.entry.i.i.preheader

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.preheader:            ; preds = %5
  %div.i.i = fdiv float 0.000000e+00, %20
  %34 = tail call float @llvm.sqrt.f32(float %div.i.i) #2
  %cmp27.i.i = fcmp ugt float %34, %24
  %storemerge.i.i = select i1 %cmp27.i.i, float %34, float 1.000000e+00
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert12 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat13 = shufflevector <8 x i32> %broadcast.splatinsert12, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <8 x i32> undef, i32 %28, i32 0
  %broadcast.splat15 = shufflevector <8 x i32> %broadcast.splatinsert14, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert16 = insertelement <8 x float> undef, float %storemerge.i.i, i32 0
  %broadcast.splat17 = shufflevector <8 x float> %broadcast.splatinsert16, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert18 = insertelement <8 x float> undef, float %storemerge.i.i, i32 0
  %broadcast.splat19 = shufflevector <8 x float> %broadcast.splatinsert18, <8 x float> undef, <8 x i32> zeroinitializer
  %35 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %36 = trunc <8 x i64> %35 to <8 x i32>
  %37 = trunc i64 %mul.i.i.i to i32
  %38 = or i32 %37, 8
  %39 = insertelement <8 x i32> undef, i32 %38, i64 0
  %40 = shufflevector <8 x i32> %39, <8 x i32> undef, <8 x i32> zeroinitializer
  %41 = or <8 x i32> %40, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %42 = icmp sgt <8 x i32> %broadcast.splat13, %36
  %43 = icmp sgt <8 x i32> %broadcast.splat15, %41
  %44 = extractelement <8 x i64> %35, i32 0
  %45 = shl i64 %44, 32
  %46 = ashr exact i64 %45, 32
  %47 = getelementptr inbounds float, float* %12, i64 %46
  %48 = bitcast float* %47 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %48, i32 4, <8 x i1> %42), !tbaa !12, !llvm.access.group !16
  %49 = getelementptr inbounds float, float* %47, i64 8
  %50 = bitcast float* %49 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %50, i32 4, <8 x i1> %43), !tbaa !12, !llvm.access.group !16
  %51 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %52 = trunc <8 x i64> %51 to <8 x i32>
  %53 = trunc i64 %mul.i.i.i to i32
  %54 = or i32 %53, 8
  %55 = insertelement <8 x i32> undef, i32 %54, i64 0
  %56 = shufflevector <8 x i32> %55, <8 x i32> undef, <8 x i32> zeroinitializer
  %57 = or <8 x i32> %56, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %58 = icmp sgt <8 x i32> %broadcast.splat13, %52
  %59 = icmp sgt <8 x i32> %broadcast.splat15, %57
  %60 = extractelement <8 x i64> %51, i32 0
  %61 = shl i64 %60, 32
  %62 = ashr exact i64 %61, 32
  %63 = getelementptr inbounds float, float* %12, i64 %62
  %64 = bitcast float* %63 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %64, i32 4, <8 x i1> %58), !tbaa !12, !llvm.access.group !16
  %65 = getelementptr inbounds float, float* %63, i64 8
  %66 = bitcast float* %65 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %66, i32 4, <8 x i1> %59), !tbaa !12, !llvm.access.group !16
  %67 = or <8 x i64> %broadcast.splat, <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39>
  %68 = trunc <8 x i64> %67 to <8 x i32>
  %69 = trunc i64 %mul.i.i.i to i32
  %70 = or i32 %69, 8
  %71 = insertelement <8 x i32> undef, i32 %70, i64 0
  %72 = shufflevector <8 x i32> %71, <8 x i32> undef, <8 x i32> zeroinitializer
  %73 = or <8 x i32> %72, <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %74 = icmp sgt <8 x i32> %broadcast.splat13, %68
  %75 = icmp sgt <8 x i32> %broadcast.splat15, %73
  %76 = extractelement <8 x i64> %67, i32 0
  %77 = shl i64 %76, 32
  %78 = ashr exact i64 %77, 32
  %79 = getelementptr inbounds float, float* %12, i64 %78
  %80 = bitcast float* %79 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %80, i32 4, <8 x i1> %74), !tbaa !12, !llvm.access.group !16
  %81 = getelementptr inbounds float, float* %79, i64 8
  %82 = bitcast float* %81 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %82, i32 4, <8 x i1> %75), !tbaa !12, !llvm.access.group !16
  %83 = or <8 x i64> %broadcast.splat, <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55>
  %84 = trunc <8 x i64> %83 to <8 x i32>
  %85 = trunc i64 %mul.i.i.i to i32
  %86 = or i32 %85, 8
  %87 = insertelement <8 x i32> undef, i32 %86, i64 0
  %88 = shufflevector <8 x i32> %87, <8 x i32> undef, <8 x i32> zeroinitializer
  %89 = or <8 x i32> %88, <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %90 = icmp sgt <8 x i32> %broadcast.splat13, %84
  %91 = icmp sgt <8 x i32> %broadcast.splat15, %89
  %92 = extractelement <8 x i64> %83, i32 0
  %93 = shl i64 %92, 32
  %94 = ashr exact i64 %93, 32
  %95 = getelementptr inbounds float, float* %12, i64 %94
  %96 = bitcast float* %95 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %96, i32 4, <8 x i1> %90), !tbaa !12, !llvm.access.group !16
  %97 = getelementptr inbounds float, float* %95, i64 8
  %98 = bitcast float* %97 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %98, i32 4, <8 x i1> %91), !tbaa !12, !llvm.access.group !16
  %99 = or <8 x i64> %broadcast.splat, <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71>
  %100 = trunc <8 x i64> %99 to <8 x i32>
  %101 = trunc i64 %mul.i.i.i to i32
  %102 = or i32 %101, 8
  %103 = insertelement <8 x i32> undef, i32 %102, i64 0
  %104 = shufflevector <8 x i32> %103, <8 x i32> undef, <8 x i32> zeroinitializer
  %105 = or <8 x i32> %104, <i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71>
  %106 = icmp sgt <8 x i32> %broadcast.splat13, %100
  %107 = icmp sgt <8 x i32> %broadcast.splat15, %105
  %108 = extractelement <8 x i64> %99, i32 0
  %109 = shl i64 %108, 32
  %110 = ashr exact i64 %109, 32
  %111 = getelementptr inbounds float, float* %12, i64 %110
  %112 = bitcast float* %111 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %112, i32 4, <8 x i1> %106), !tbaa !12, !llvm.access.group !16
  %113 = getelementptr inbounds float, float* %111, i64 8
  %114 = bitcast float* %113 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %114, i32 4, <8 x i1> %107), !tbaa !12, !llvm.access.group !16
  %115 = or <8 x i64> %broadcast.splat, <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87>
  %116 = trunc <8 x i64> %115 to <8 x i32>
  %117 = trunc i64 %mul.i.i.i to i32
  %118 = or i32 %117, 8
  %119 = insertelement <8 x i32> undef, i32 %118, i64 0
  %120 = shufflevector <8 x i32> %119, <8 x i32> undef, <8 x i32> zeroinitializer
  %121 = or <8 x i32> %120, <i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87>
  %122 = icmp sgt <8 x i32> %broadcast.splat13, %116
  %123 = icmp sgt <8 x i32> %broadcast.splat15, %121
  %124 = extractelement <8 x i64> %115, i32 0
  %125 = shl i64 %124, 32
  %126 = ashr exact i64 %125, 32
  %127 = getelementptr inbounds float, float* %12, i64 %126
  %128 = bitcast float* %127 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %128, i32 4, <8 x i1> %122), !tbaa !12, !llvm.access.group !16
  %129 = getelementptr inbounds float, float* %127, i64 8
  %130 = bitcast float* %129 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %130, i32 4, <8 x i1> %123), !tbaa !12, !llvm.access.group !16
  %131 = or <8 x i64> %broadcast.splat, <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103>
  %132 = trunc <8 x i64> %131 to <8 x i32>
  %133 = trunc i64 %mul.i.i.i to i32
  %134 = or i32 %133, 8
  %135 = insertelement <8 x i32> undef, i32 %134, i64 0
  %136 = shufflevector <8 x i32> %135, <8 x i32> undef, <8 x i32> zeroinitializer
  %137 = or <8 x i32> %136, <i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103>
  %138 = icmp sgt <8 x i32> %broadcast.splat13, %132
  %139 = icmp sgt <8 x i32> %broadcast.splat15, %137
  %140 = extractelement <8 x i64> %131, i32 0
  %141 = shl i64 %140, 32
  %142 = ashr exact i64 %141, 32
  %143 = getelementptr inbounds float, float* %12, i64 %142
  %144 = bitcast float* %143 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %144, i32 4, <8 x i1> %138), !tbaa !12, !llvm.access.group !16
  %145 = getelementptr inbounds float, float* %143, i64 8
  %146 = bitcast float* %145 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %146, i32 4, <8 x i1> %139), !tbaa !12, !llvm.access.group !16
  %147 = or <8 x i64> %broadcast.splat, <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119>
  %148 = trunc <8 x i64> %147 to <8 x i32>
  %149 = trunc i64 %mul.i.i.i to i32
  %150 = or i32 %149, 8
  %151 = insertelement <8 x i32> undef, i32 %150, i64 0
  %152 = shufflevector <8 x i32> %151, <8 x i32> undef, <8 x i32> zeroinitializer
  %153 = or <8 x i32> %152, <i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119>
  %154 = icmp sgt <8 x i32> %broadcast.splat13, %148
  %155 = icmp sgt <8 x i32> %broadcast.splat15, %153
  %156 = extractelement <8 x i64> %147, i32 0
  %157 = shl i64 %156, 32
  %158 = ashr exact i64 %157, 32
  %159 = getelementptr inbounds float, float* %12, i64 %158
  %160 = bitcast float* %159 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %160, i32 4, <8 x i1> %154), !tbaa !12, !llvm.access.group !16
  %161 = getelementptr inbounds float, float* %159, i64 8
  %162 = bitcast float* %161 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %162, i32 4, <8 x i1> %155), !tbaa !12, !llvm.access.group !16
  %163 = or <8 x i64> %broadcast.splat, <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135>
  %164 = trunc <8 x i64> %163 to <8 x i32>
  %165 = trunc i64 %mul.i.i.i to i32
  %166 = or i32 %165, 8
  %167 = insertelement <8 x i32> undef, i32 %166, i64 0
  %168 = shufflevector <8 x i32> %167, <8 x i32> undef, <8 x i32> zeroinitializer
  %169 = or <8 x i32> %168, <i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135>
  %170 = icmp sgt <8 x i32> %broadcast.splat13, %164
  %171 = icmp sgt <8 x i32> %broadcast.splat15, %169
  %172 = extractelement <8 x i64> %163, i32 0
  %173 = shl i64 %172, 32
  %174 = ashr exact i64 %173, 32
  %175 = getelementptr inbounds float, float* %12, i64 %174
  %176 = bitcast float* %175 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %176, i32 4, <8 x i1> %170), !tbaa !12, !llvm.access.group !16
  %177 = getelementptr inbounds float, float* %175, i64 8
  %178 = bitcast float* %177 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %178, i32 4, <8 x i1> %171), !tbaa !12, !llvm.access.group !16
  %179 = or <8 x i64> %broadcast.splat, <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151>
  %180 = trunc <8 x i64> %179 to <8 x i32>
  %181 = trunc i64 %mul.i.i.i to i32
  %182 = or i32 %181, 8
  %183 = insertelement <8 x i32> undef, i32 %182, i64 0
  %184 = shufflevector <8 x i32> %183, <8 x i32> undef, <8 x i32> zeroinitializer
  %185 = or <8 x i32> %184, <i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151>
  %186 = icmp sgt <8 x i32> %broadcast.splat13, %180
  %187 = icmp sgt <8 x i32> %broadcast.splat15, %185
  %188 = extractelement <8 x i64> %179, i32 0
  %189 = shl i64 %188, 32
  %190 = ashr exact i64 %189, 32
  %191 = getelementptr inbounds float, float* %12, i64 %190
  %192 = bitcast float* %191 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %192, i32 4, <8 x i1> %186), !tbaa !12, !llvm.access.group !16
  %193 = getelementptr inbounds float, float* %191, i64 8
  %194 = bitcast float* %193 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %194, i32 4, <8 x i1> %187), !tbaa !12, !llvm.access.group !16
  %195 = or <8 x i64> %broadcast.splat, <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167>
  %196 = trunc <8 x i64> %195 to <8 x i32>
  %197 = trunc i64 %mul.i.i.i to i32
  %198 = or i32 %197, 8
  %199 = insertelement <8 x i32> undef, i32 %198, i64 0
  %200 = shufflevector <8 x i32> %199, <8 x i32> undef, <8 x i32> zeroinitializer
  %201 = or <8 x i32> %200, <i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167>
  %202 = icmp sgt <8 x i32> %broadcast.splat13, %196
  %203 = icmp sgt <8 x i32> %broadcast.splat15, %201
  %204 = extractelement <8 x i64> %195, i32 0
  %205 = shl i64 %204, 32
  %206 = ashr exact i64 %205, 32
  %207 = getelementptr inbounds float, float* %12, i64 %206
  %208 = bitcast float* %207 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %208, i32 4, <8 x i1> %202), !tbaa !12, !llvm.access.group !16
  %209 = getelementptr inbounds float, float* %207, i64 8
  %210 = bitcast float* %209 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %210, i32 4, <8 x i1> %203), !tbaa !12, !llvm.access.group !16
  %211 = or <8 x i64> %broadcast.splat, <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183>
  %212 = trunc <8 x i64> %211 to <8 x i32>
  %213 = trunc i64 %mul.i.i.i to i32
  %214 = or i32 %213, 8
  %215 = insertelement <8 x i32> undef, i32 %214, i64 0
  %216 = shufflevector <8 x i32> %215, <8 x i32> undef, <8 x i32> zeroinitializer
  %217 = or <8 x i32> %216, <i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183>
  %218 = icmp sgt <8 x i32> %broadcast.splat13, %212
  %219 = icmp sgt <8 x i32> %broadcast.splat15, %217
  %220 = extractelement <8 x i64> %211, i32 0
  %221 = shl i64 %220, 32
  %222 = ashr exact i64 %221, 32
  %223 = getelementptr inbounds float, float* %12, i64 %222
  %224 = bitcast float* %223 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %224, i32 4, <8 x i1> %218), !tbaa !12, !llvm.access.group !16
  %225 = getelementptr inbounds float, float* %223, i64 8
  %226 = bitcast float* %225 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %226, i32 4, <8 x i1> %219), !tbaa !12, !llvm.access.group !16
  %227 = or <8 x i64> %broadcast.splat, <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199>
  %228 = trunc <8 x i64> %227 to <8 x i32>
  %229 = trunc i64 %mul.i.i.i to i32
  %230 = or i32 %229, 8
  %231 = insertelement <8 x i32> undef, i32 %230, i64 0
  %232 = shufflevector <8 x i32> %231, <8 x i32> undef, <8 x i32> zeroinitializer
  %233 = or <8 x i32> %232, <i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199>
  %234 = icmp sgt <8 x i32> %broadcast.splat13, %228
  %235 = icmp sgt <8 x i32> %broadcast.splat15, %233
  %236 = extractelement <8 x i64> %227, i32 0
  %237 = shl i64 %236, 32
  %238 = ashr exact i64 %237, 32
  %239 = getelementptr inbounds float, float* %12, i64 %238
  %240 = bitcast float* %239 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %240, i32 4, <8 x i1> %234), !tbaa !12, !llvm.access.group !16
  %241 = getelementptr inbounds float, float* %239, i64 8
  %242 = bitcast float* %241 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %242, i32 4, <8 x i1> %235), !tbaa !12, !llvm.access.group !16
  %243 = or <8 x i64> %broadcast.splat, <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215>
  %244 = trunc <8 x i64> %243 to <8 x i32>
  %245 = trunc i64 %mul.i.i.i to i32
  %246 = or i32 %245, 8
  %247 = insertelement <8 x i32> undef, i32 %246, i64 0
  %248 = shufflevector <8 x i32> %247, <8 x i32> undef, <8 x i32> zeroinitializer
  %249 = or <8 x i32> %248, <i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215>
  %250 = icmp sgt <8 x i32> %broadcast.splat13, %244
  %251 = icmp sgt <8 x i32> %broadcast.splat15, %249
  %252 = extractelement <8 x i64> %243, i32 0
  %253 = shl i64 %252, 32
  %254 = ashr exact i64 %253, 32
  %255 = getelementptr inbounds float, float* %12, i64 %254
  %256 = bitcast float* %255 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %256, i32 4, <8 x i1> %250), !tbaa !12, !llvm.access.group !16
  %257 = getelementptr inbounds float, float* %255, i64 8
  %258 = bitcast float* %257 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %258, i32 4, <8 x i1> %251), !tbaa !12, !llvm.access.group !16
  %259 = or <8 x i64> %broadcast.splat, <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231>
  %260 = trunc <8 x i64> %259 to <8 x i32>
  %261 = trunc i64 %mul.i.i.i to i32
  %262 = or i32 %261, 8
  %263 = insertelement <8 x i32> undef, i32 %262, i64 0
  %264 = shufflevector <8 x i32> %263, <8 x i32> undef, <8 x i32> zeroinitializer
  %265 = or <8 x i32> %264, <i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231>
  %266 = icmp sgt <8 x i32> %broadcast.splat13, %260
  %267 = icmp sgt <8 x i32> %broadcast.splat15, %265
  %268 = extractelement <8 x i64> %259, i32 0
  %269 = shl i64 %268, 32
  %270 = ashr exact i64 %269, 32
  %271 = getelementptr inbounds float, float* %12, i64 %270
  %272 = bitcast float* %271 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %272, i32 4, <8 x i1> %266), !tbaa !12, !llvm.access.group !16
  %273 = getelementptr inbounds float, float* %271, i64 8
  %274 = bitcast float* %273 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %274, i32 4, <8 x i1> %267), !tbaa !12, !llvm.access.group !16
  %275 = or <8 x i64> %broadcast.splat, <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247>
  %276 = trunc <8 x i64> %275 to <8 x i32>
  %277 = trunc i64 %mul.i.i.i to i32
  %278 = or i32 %277, 8
  %279 = insertelement <8 x i32> undef, i32 %278, i64 0
  %280 = shufflevector <8 x i32> %279, <8 x i32> undef, <8 x i32> zeroinitializer
  %281 = or <8 x i32> %280, <i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247>
  %282 = icmp sgt <8 x i32> %broadcast.splat13, %276
  %283 = icmp sgt <8 x i32> %broadcast.splat15, %281
  %284 = extractelement <8 x i64> %275, i32 0
  %285 = shl i64 %284, 32
  %286 = ashr exact i64 %285, 32
  %287 = getelementptr inbounds float, float* %12, i64 %286
  %288 = bitcast float* %287 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %288, i32 4, <8 x i1> %282), !tbaa !12, !llvm.access.group !16
  %289 = getelementptr inbounds float, float* %287, i64 8
  %290 = bitcast float* %289 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %290, i32 4, <8 x i1> %283), !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_std_kernel.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end32.r_exit.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %298, %if.end32.r_exit.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp sgt i32 %28, %conv.i.i.us
  br i1 %cmp.i.i.us, label %if.then.i.i.us, label %if.end32.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx7.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %if.then.i.i.us
  %indvars.iv.next.i.i4.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %if.then.i.i.us ]
  %291 = phi float [ %296, %for.body.i.i.us ], [ 0.000000e+00, %if.then.i.i.us ]
  %292 = mul nsw i64 %indvars.iv.next.i.i4.us, %33
  %293 = add nsw i64 %292, %idxprom.i.i.us
  %arrayidx5.i.i.us = getelementptr inbounds float, float* %16, i64 %293
  %294 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !12
  %295 = load float, float* %arrayidx7.i.i.us, align 4, !tbaa !12
  %sub.i.i.us = fsub float %294, %295
  %296 = tail call float @llvm.fmuladd.f32(float %sub.i.i.us, float %sub.i.i.us, float %291) #2
  store float %296, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i4.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !18

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %.lcssa = phi float [ %296, %for.body.i.i.us ]
  %div.i.i.us = fdiv float %.lcssa, %20, !fpmath !20
  %297 = tail call float @llvm.sqrt.f32(float %div.i.i.us) #2
  %cmp27.i.i.us = fcmp ugt float %297, %24
  %storemerge.i.i.us = select i1 %cmp27.i.i.us, float %297, float 1.000000e+00
  store float %storemerge.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end32.r_exit.i.i.us

if.end32.r_exit.i.i.us:                           ; preds = %for.end.loopexit.i.i.us, %pregion_for_entry.entry.i.i.us
  %298 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %298, 256
  br i1 %exitcond.not, label %_pocl_kernel_std_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !21

_pocl_kernel_std_kernel.exit.loopexit:            ; preds = %if.end32.r_exit.i.i.us
  br label %_pocl_kernel_std_kernel.exit

_pocl_kernel_std_kernel.exit:                     ; preds = %_pocl_kernel_std_kernel.exit.loopexit, %pregion_for_entry.entry.i.i.preheader
  ret void
}

; Function Attrs: nounwind
define void @_pocl_kernel_std_kernel_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %mul.i.i.i = shl i64 %2, 8
  %cmp259.i.i = icmp sgt i32 %29, 0
  %30 = sext i32 %25 to i64
  %wide.trip.count.i.i = zext i32 %29 to i64
  br i1 %cmp259.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_entry.entry.i.i.preheader

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

pregion_for_entry.entry.i.i.preheader:            ; preds = %5
  %div.i.i = fdiv float 0.000000e+00, %17
  %31 = tail call float @llvm.sqrt.f32(float %div.i.i) #2
  %cmp27.i.i = fcmp ugt float %31, %21
  %storemerge.i.i = select i1 %cmp27.i.i, float %31, float 1.000000e+00
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert12 = insertelement <8 x i32> undef, i32 %25, i32 0
  %broadcast.splat13 = shufflevector <8 x i32> %broadcast.splatinsert12, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <8 x i32> undef, i32 %25, i32 0
  %broadcast.splat15 = shufflevector <8 x i32> %broadcast.splatinsert14, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert16 = insertelement <8 x float> undef, float %storemerge.i.i, i32 0
  %broadcast.splat17 = shufflevector <8 x float> %broadcast.splatinsert16, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert18 = insertelement <8 x float> undef, float %storemerge.i.i, i32 0
  %broadcast.splat19 = shufflevector <8 x float> %broadcast.splatinsert18, <8 x float> undef, <8 x i32> zeroinitializer
  %32 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %33 = trunc <8 x i64> %32 to <8 x i32>
  %34 = trunc i64 %mul.i.i.i to i32
  %35 = or i32 %34, 8
  %36 = insertelement <8 x i32> undef, i32 %35, i64 0
  %37 = shufflevector <8 x i32> %36, <8 x i32> undef, <8 x i32> zeroinitializer
  %38 = or <8 x i32> %37, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %39 = icmp sgt <8 x i32> %broadcast.splat13, %33
  %40 = icmp sgt <8 x i32> %broadcast.splat15, %38
  %41 = extractelement <8 x i64> %32, i32 0
  %42 = shl i64 %41, 32
  %43 = ashr exact i64 %42, 32
  %44 = getelementptr inbounds float, float* %10, i64 %43
  %45 = bitcast float* %44 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %45, i32 4, <8 x i1> %39), !tbaa !12, !llvm.access.group !16
  %46 = getelementptr inbounds float, float* %44, i64 8
  %47 = bitcast float* %46 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %47, i32 4, <8 x i1> %40), !tbaa !12, !llvm.access.group !16
  %48 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %49 = trunc <8 x i64> %48 to <8 x i32>
  %50 = trunc i64 %mul.i.i.i to i32
  %51 = or i32 %50, 8
  %52 = insertelement <8 x i32> undef, i32 %51, i64 0
  %53 = shufflevector <8 x i32> %52, <8 x i32> undef, <8 x i32> zeroinitializer
  %54 = or <8 x i32> %53, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %55 = icmp sgt <8 x i32> %broadcast.splat13, %49
  %56 = icmp sgt <8 x i32> %broadcast.splat15, %54
  %57 = extractelement <8 x i64> %48, i32 0
  %58 = shl i64 %57, 32
  %59 = ashr exact i64 %58, 32
  %60 = getelementptr inbounds float, float* %10, i64 %59
  %61 = bitcast float* %60 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %61, i32 4, <8 x i1> %55), !tbaa !12, !llvm.access.group !16
  %62 = getelementptr inbounds float, float* %60, i64 8
  %63 = bitcast float* %62 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %63, i32 4, <8 x i1> %56), !tbaa !12, !llvm.access.group !16
  %64 = or <8 x i64> %broadcast.splat, <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39>
  %65 = trunc <8 x i64> %64 to <8 x i32>
  %66 = trunc i64 %mul.i.i.i to i32
  %67 = or i32 %66, 8
  %68 = insertelement <8 x i32> undef, i32 %67, i64 0
  %69 = shufflevector <8 x i32> %68, <8 x i32> undef, <8 x i32> zeroinitializer
  %70 = or <8 x i32> %69, <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %71 = icmp sgt <8 x i32> %broadcast.splat13, %65
  %72 = icmp sgt <8 x i32> %broadcast.splat15, %70
  %73 = extractelement <8 x i64> %64, i32 0
  %74 = shl i64 %73, 32
  %75 = ashr exact i64 %74, 32
  %76 = getelementptr inbounds float, float* %10, i64 %75
  %77 = bitcast float* %76 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %77, i32 4, <8 x i1> %71), !tbaa !12, !llvm.access.group !16
  %78 = getelementptr inbounds float, float* %76, i64 8
  %79 = bitcast float* %78 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %79, i32 4, <8 x i1> %72), !tbaa !12, !llvm.access.group !16
  %80 = or <8 x i64> %broadcast.splat, <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55>
  %81 = trunc <8 x i64> %80 to <8 x i32>
  %82 = trunc i64 %mul.i.i.i to i32
  %83 = or i32 %82, 8
  %84 = insertelement <8 x i32> undef, i32 %83, i64 0
  %85 = shufflevector <8 x i32> %84, <8 x i32> undef, <8 x i32> zeroinitializer
  %86 = or <8 x i32> %85, <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %87 = icmp sgt <8 x i32> %broadcast.splat13, %81
  %88 = icmp sgt <8 x i32> %broadcast.splat15, %86
  %89 = extractelement <8 x i64> %80, i32 0
  %90 = shl i64 %89, 32
  %91 = ashr exact i64 %90, 32
  %92 = getelementptr inbounds float, float* %10, i64 %91
  %93 = bitcast float* %92 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %93, i32 4, <8 x i1> %87), !tbaa !12, !llvm.access.group !16
  %94 = getelementptr inbounds float, float* %92, i64 8
  %95 = bitcast float* %94 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %95, i32 4, <8 x i1> %88), !tbaa !12, !llvm.access.group !16
  %96 = or <8 x i64> %broadcast.splat, <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71>
  %97 = trunc <8 x i64> %96 to <8 x i32>
  %98 = trunc i64 %mul.i.i.i to i32
  %99 = or i32 %98, 8
  %100 = insertelement <8 x i32> undef, i32 %99, i64 0
  %101 = shufflevector <8 x i32> %100, <8 x i32> undef, <8 x i32> zeroinitializer
  %102 = or <8 x i32> %101, <i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71>
  %103 = icmp sgt <8 x i32> %broadcast.splat13, %97
  %104 = icmp sgt <8 x i32> %broadcast.splat15, %102
  %105 = extractelement <8 x i64> %96, i32 0
  %106 = shl i64 %105, 32
  %107 = ashr exact i64 %106, 32
  %108 = getelementptr inbounds float, float* %10, i64 %107
  %109 = bitcast float* %108 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %109, i32 4, <8 x i1> %103), !tbaa !12, !llvm.access.group !16
  %110 = getelementptr inbounds float, float* %108, i64 8
  %111 = bitcast float* %110 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %111, i32 4, <8 x i1> %104), !tbaa !12, !llvm.access.group !16
  %112 = or <8 x i64> %broadcast.splat, <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87>
  %113 = trunc <8 x i64> %112 to <8 x i32>
  %114 = trunc i64 %mul.i.i.i to i32
  %115 = or i32 %114, 8
  %116 = insertelement <8 x i32> undef, i32 %115, i64 0
  %117 = shufflevector <8 x i32> %116, <8 x i32> undef, <8 x i32> zeroinitializer
  %118 = or <8 x i32> %117, <i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87>
  %119 = icmp sgt <8 x i32> %broadcast.splat13, %113
  %120 = icmp sgt <8 x i32> %broadcast.splat15, %118
  %121 = extractelement <8 x i64> %112, i32 0
  %122 = shl i64 %121, 32
  %123 = ashr exact i64 %122, 32
  %124 = getelementptr inbounds float, float* %10, i64 %123
  %125 = bitcast float* %124 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %125, i32 4, <8 x i1> %119), !tbaa !12, !llvm.access.group !16
  %126 = getelementptr inbounds float, float* %124, i64 8
  %127 = bitcast float* %126 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %127, i32 4, <8 x i1> %120), !tbaa !12, !llvm.access.group !16
  %128 = or <8 x i64> %broadcast.splat, <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103>
  %129 = trunc <8 x i64> %128 to <8 x i32>
  %130 = trunc i64 %mul.i.i.i to i32
  %131 = or i32 %130, 8
  %132 = insertelement <8 x i32> undef, i32 %131, i64 0
  %133 = shufflevector <8 x i32> %132, <8 x i32> undef, <8 x i32> zeroinitializer
  %134 = or <8 x i32> %133, <i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103>
  %135 = icmp sgt <8 x i32> %broadcast.splat13, %129
  %136 = icmp sgt <8 x i32> %broadcast.splat15, %134
  %137 = extractelement <8 x i64> %128, i32 0
  %138 = shl i64 %137, 32
  %139 = ashr exact i64 %138, 32
  %140 = getelementptr inbounds float, float* %10, i64 %139
  %141 = bitcast float* %140 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %141, i32 4, <8 x i1> %135), !tbaa !12, !llvm.access.group !16
  %142 = getelementptr inbounds float, float* %140, i64 8
  %143 = bitcast float* %142 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %143, i32 4, <8 x i1> %136), !tbaa !12, !llvm.access.group !16
  %144 = or <8 x i64> %broadcast.splat, <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119>
  %145 = trunc <8 x i64> %144 to <8 x i32>
  %146 = trunc i64 %mul.i.i.i to i32
  %147 = or i32 %146, 8
  %148 = insertelement <8 x i32> undef, i32 %147, i64 0
  %149 = shufflevector <8 x i32> %148, <8 x i32> undef, <8 x i32> zeroinitializer
  %150 = or <8 x i32> %149, <i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119>
  %151 = icmp sgt <8 x i32> %broadcast.splat13, %145
  %152 = icmp sgt <8 x i32> %broadcast.splat15, %150
  %153 = extractelement <8 x i64> %144, i32 0
  %154 = shl i64 %153, 32
  %155 = ashr exact i64 %154, 32
  %156 = getelementptr inbounds float, float* %10, i64 %155
  %157 = bitcast float* %156 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %157, i32 4, <8 x i1> %151), !tbaa !12, !llvm.access.group !16
  %158 = getelementptr inbounds float, float* %156, i64 8
  %159 = bitcast float* %158 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %159, i32 4, <8 x i1> %152), !tbaa !12, !llvm.access.group !16
  %160 = or <8 x i64> %broadcast.splat, <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135>
  %161 = trunc <8 x i64> %160 to <8 x i32>
  %162 = trunc i64 %mul.i.i.i to i32
  %163 = or i32 %162, 8
  %164 = insertelement <8 x i32> undef, i32 %163, i64 0
  %165 = shufflevector <8 x i32> %164, <8 x i32> undef, <8 x i32> zeroinitializer
  %166 = or <8 x i32> %165, <i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135>
  %167 = icmp sgt <8 x i32> %broadcast.splat13, %161
  %168 = icmp sgt <8 x i32> %broadcast.splat15, %166
  %169 = extractelement <8 x i64> %160, i32 0
  %170 = shl i64 %169, 32
  %171 = ashr exact i64 %170, 32
  %172 = getelementptr inbounds float, float* %10, i64 %171
  %173 = bitcast float* %172 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %173, i32 4, <8 x i1> %167), !tbaa !12, !llvm.access.group !16
  %174 = getelementptr inbounds float, float* %172, i64 8
  %175 = bitcast float* %174 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %175, i32 4, <8 x i1> %168), !tbaa !12, !llvm.access.group !16
  %176 = or <8 x i64> %broadcast.splat, <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151>
  %177 = trunc <8 x i64> %176 to <8 x i32>
  %178 = trunc i64 %mul.i.i.i to i32
  %179 = or i32 %178, 8
  %180 = insertelement <8 x i32> undef, i32 %179, i64 0
  %181 = shufflevector <8 x i32> %180, <8 x i32> undef, <8 x i32> zeroinitializer
  %182 = or <8 x i32> %181, <i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151>
  %183 = icmp sgt <8 x i32> %broadcast.splat13, %177
  %184 = icmp sgt <8 x i32> %broadcast.splat15, %182
  %185 = extractelement <8 x i64> %176, i32 0
  %186 = shl i64 %185, 32
  %187 = ashr exact i64 %186, 32
  %188 = getelementptr inbounds float, float* %10, i64 %187
  %189 = bitcast float* %188 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %189, i32 4, <8 x i1> %183), !tbaa !12, !llvm.access.group !16
  %190 = getelementptr inbounds float, float* %188, i64 8
  %191 = bitcast float* %190 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %191, i32 4, <8 x i1> %184), !tbaa !12, !llvm.access.group !16
  %192 = or <8 x i64> %broadcast.splat, <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167>
  %193 = trunc <8 x i64> %192 to <8 x i32>
  %194 = trunc i64 %mul.i.i.i to i32
  %195 = or i32 %194, 8
  %196 = insertelement <8 x i32> undef, i32 %195, i64 0
  %197 = shufflevector <8 x i32> %196, <8 x i32> undef, <8 x i32> zeroinitializer
  %198 = or <8 x i32> %197, <i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167>
  %199 = icmp sgt <8 x i32> %broadcast.splat13, %193
  %200 = icmp sgt <8 x i32> %broadcast.splat15, %198
  %201 = extractelement <8 x i64> %192, i32 0
  %202 = shl i64 %201, 32
  %203 = ashr exact i64 %202, 32
  %204 = getelementptr inbounds float, float* %10, i64 %203
  %205 = bitcast float* %204 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %205, i32 4, <8 x i1> %199), !tbaa !12, !llvm.access.group !16
  %206 = getelementptr inbounds float, float* %204, i64 8
  %207 = bitcast float* %206 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %207, i32 4, <8 x i1> %200), !tbaa !12, !llvm.access.group !16
  %208 = or <8 x i64> %broadcast.splat, <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183>
  %209 = trunc <8 x i64> %208 to <8 x i32>
  %210 = trunc i64 %mul.i.i.i to i32
  %211 = or i32 %210, 8
  %212 = insertelement <8 x i32> undef, i32 %211, i64 0
  %213 = shufflevector <8 x i32> %212, <8 x i32> undef, <8 x i32> zeroinitializer
  %214 = or <8 x i32> %213, <i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183>
  %215 = icmp sgt <8 x i32> %broadcast.splat13, %209
  %216 = icmp sgt <8 x i32> %broadcast.splat15, %214
  %217 = extractelement <8 x i64> %208, i32 0
  %218 = shl i64 %217, 32
  %219 = ashr exact i64 %218, 32
  %220 = getelementptr inbounds float, float* %10, i64 %219
  %221 = bitcast float* %220 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %221, i32 4, <8 x i1> %215), !tbaa !12, !llvm.access.group !16
  %222 = getelementptr inbounds float, float* %220, i64 8
  %223 = bitcast float* %222 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %223, i32 4, <8 x i1> %216), !tbaa !12, !llvm.access.group !16
  %224 = or <8 x i64> %broadcast.splat, <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199>
  %225 = trunc <8 x i64> %224 to <8 x i32>
  %226 = trunc i64 %mul.i.i.i to i32
  %227 = or i32 %226, 8
  %228 = insertelement <8 x i32> undef, i32 %227, i64 0
  %229 = shufflevector <8 x i32> %228, <8 x i32> undef, <8 x i32> zeroinitializer
  %230 = or <8 x i32> %229, <i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199>
  %231 = icmp sgt <8 x i32> %broadcast.splat13, %225
  %232 = icmp sgt <8 x i32> %broadcast.splat15, %230
  %233 = extractelement <8 x i64> %224, i32 0
  %234 = shl i64 %233, 32
  %235 = ashr exact i64 %234, 32
  %236 = getelementptr inbounds float, float* %10, i64 %235
  %237 = bitcast float* %236 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %237, i32 4, <8 x i1> %231), !tbaa !12, !llvm.access.group !16
  %238 = getelementptr inbounds float, float* %236, i64 8
  %239 = bitcast float* %238 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %239, i32 4, <8 x i1> %232), !tbaa !12, !llvm.access.group !16
  %240 = or <8 x i64> %broadcast.splat, <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215>
  %241 = trunc <8 x i64> %240 to <8 x i32>
  %242 = trunc i64 %mul.i.i.i to i32
  %243 = or i32 %242, 8
  %244 = insertelement <8 x i32> undef, i32 %243, i64 0
  %245 = shufflevector <8 x i32> %244, <8 x i32> undef, <8 x i32> zeroinitializer
  %246 = or <8 x i32> %245, <i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215>
  %247 = icmp sgt <8 x i32> %broadcast.splat13, %241
  %248 = icmp sgt <8 x i32> %broadcast.splat15, %246
  %249 = extractelement <8 x i64> %240, i32 0
  %250 = shl i64 %249, 32
  %251 = ashr exact i64 %250, 32
  %252 = getelementptr inbounds float, float* %10, i64 %251
  %253 = bitcast float* %252 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %253, i32 4, <8 x i1> %247), !tbaa !12, !llvm.access.group !16
  %254 = getelementptr inbounds float, float* %252, i64 8
  %255 = bitcast float* %254 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %255, i32 4, <8 x i1> %248), !tbaa !12, !llvm.access.group !16
  %256 = or <8 x i64> %broadcast.splat, <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231>
  %257 = trunc <8 x i64> %256 to <8 x i32>
  %258 = trunc i64 %mul.i.i.i to i32
  %259 = or i32 %258, 8
  %260 = insertelement <8 x i32> undef, i32 %259, i64 0
  %261 = shufflevector <8 x i32> %260, <8 x i32> undef, <8 x i32> zeroinitializer
  %262 = or <8 x i32> %261, <i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231>
  %263 = icmp sgt <8 x i32> %broadcast.splat13, %257
  %264 = icmp sgt <8 x i32> %broadcast.splat15, %262
  %265 = extractelement <8 x i64> %256, i32 0
  %266 = shl i64 %265, 32
  %267 = ashr exact i64 %266, 32
  %268 = getelementptr inbounds float, float* %10, i64 %267
  %269 = bitcast float* %268 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %269, i32 4, <8 x i1> %263), !tbaa !12, !llvm.access.group !16
  %270 = getelementptr inbounds float, float* %268, i64 8
  %271 = bitcast float* %270 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %271, i32 4, <8 x i1> %264), !tbaa !12, !llvm.access.group !16
  %272 = or <8 x i64> %broadcast.splat, <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247>
  %273 = trunc <8 x i64> %272 to <8 x i32>
  %274 = trunc i64 %mul.i.i.i to i32
  %275 = or i32 %274, 8
  %276 = insertelement <8 x i32> undef, i32 %275, i64 0
  %277 = shufflevector <8 x i32> %276, <8 x i32> undef, <8 x i32> zeroinitializer
  %278 = or <8 x i32> %277, <i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247>
  %279 = icmp sgt <8 x i32> %broadcast.splat13, %273
  %280 = icmp sgt <8 x i32> %broadcast.splat15, %278
  %281 = extractelement <8 x i64> %272, i32 0
  %282 = shl i64 %281, 32
  %283 = ashr exact i64 %282, 32
  %284 = getelementptr inbounds float, float* %10, i64 %283
  %285 = bitcast float* %284 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat17, <8 x float>* %285, i32 4, <8 x i1> %279), !tbaa !12, !llvm.access.group !16
  %286 = getelementptr inbounds float, float* %284, i64 8
  %287 = bitcast float* %286 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %broadcast.splat19, <8 x float>* %287, i32 4, <8 x i1> %280), !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_std_kernel.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end32.r_exit.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %295, %if.end32.r_exit.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp sgt i32 %25, %conv.i.i.us
  br i1 %cmp.i.i.us, label %if.then.i.i.us, label %if.end32.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx7.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %if.then.i.i.us
  %indvars.iv.next.i.i4.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %if.then.i.i.us ]
  %288 = phi float [ %293, %for.body.i.i.us ], [ 0.000000e+00, %if.then.i.i.us ]
  %289 = mul nsw i64 %indvars.iv.next.i.i4.us, %30
  %290 = add nsw i64 %289, %idxprom.i.i.us
  %arrayidx5.i.i.us = getelementptr inbounds float, float* %13, i64 %290
  %291 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !12
  %292 = load float, float* %arrayidx7.i.i.us, align 4, !tbaa !12
  %sub.i.i.us = fsub float %291, %292
  %293 = tail call float @llvm.fmuladd.f32(float %sub.i.i.us, float %sub.i.i.us, float %288) #2
  store float %293, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i4.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !18

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %.lcssa = phi float [ %293, %for.body.i.i.us ]
  %div.i.i.us = fdiv float %.lcssa, %17, !fpmath !20
  %294 = tail call float @llvm.sqrt.f32(float %div.i.i.us) #2
  %cmp27.i.i.us = fcmp ugt float %294, %21
  %storemerge.i.i.us = select i1 %cmp27.i.i.us, float %294, float 1.000000e+00
  store float %storemerge.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end32.r_exit.i.i.us

if.end32.r_exit.i.i.us:                           ; preds = %for.end.loopexit.i.i.us, %pregion_for_entry.entry.i.i.us
  %295 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %295, 256
  br i1 %exitcond.not, label %_pocl_kernel_std_kernel.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !21

_pocl_kernel_std_kernel.exit.loopexit:            ; preds = %if.end32.r_exit.i.i.us
  br label %_pocl_kernel_std_kernel.exit

_pocl_kernel_std_kernel.exit:                     ; preds = %_pocl_kernel_std_kernel.exit.loopexit, %pregion_for_entry.entry.i.i.preheader
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.masked.store.v8f32.p0v8f32(<8 x float>, <8 x float>*, i32 immarg, <8 x i1>) #3

attributes #0 = { nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

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
!10 = !{!"mean", !"std", !"data", !"float_n", !"eps", !"m", !"n"}
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
