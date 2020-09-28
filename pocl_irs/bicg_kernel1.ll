; ModuleID = './DC/PEIMDLPPEFFJPJMNMNJKJHDPNNPAAECGDPFEA/bicgKernel1/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_bicgKernel1(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, i32 %3, i32 %4, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %5, i64 %6, i64 %7, i64 %8) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %6, 8
  %cmp221.i = icmp sgt i32 %4, 0
  %wide.trip.count.i = zext i32 %4 to i64
  br i1 %cmp221.i, label %pregion_for_entry.entry.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.us.preheader:           ; preds = %9
  br label %pregion_for_entry.entry.i.us

vector.ph:                                        ; preds = %9
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert10 = insertelement <8 x i32> undef, i32 %3, i32 0
  %broadcast.splat11 = shufflevector <8 x i32> %broadcast.splatinsert10, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert12 = insertelement <8 x i32> undef, i32 %3, i32 0
  %broadcast.splat13 = shufflevector <8 x i32> %broadcast.splatinsert12, <8 x i32> undef, <8 x i32> zeroinitializer
  %10 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %11 = trunc <8 x i64> %10 to <8 x i32>
  %12 = trunc i64 %mul.i.i to i32
  %13 = or i32 %12, 8
  %14 = insertelement <8 x i32> undef, i32 %13, i64 0
  %15 = shufflevector <8 x i32> %14, <8 x i32> undef, <8 x i32> zeroinitializer
  %16 = or <8 x i32> %15, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %17 = icmp sgt <8 x i32> %broadcast.splat11, %11
  %18 = icmp sgt <8 x i32> %broadcast.splat13, %16
  %19 = extractelement <8 x i64> %10, i32 0
  %20 = shl i64 %19, 32
  %21 = ashr exact i64 %20, 32
  %22 = getelementptr inbounds float, float* %2, i64 %21
  %23 = bitcast float* %22 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %23, i32 4, <8 x i1> %17), !tbaa !12, !llvm.access.group !16
  %24 = getelementptr inbounds float, float* %22, i64 8
  %25 = bitcast float* %24 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %25, i32 4, <8 x i1> %18), !tbaa !12, !llvm.access.group !16
  %26 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %27 = trunc <8 x i64> %26 to <8 x i32>
  %28 = trunc i64 %mul.i.i to i32
  %29 = or i32 %28, 8
  %30 = insertelement <8 x i32> undef, i32 %29, i64 0
  %31 = shufflevector <8 x i32> %30, <8 x i32> undef, <8 x i32> zeroinitializer
  %32 = or <8 x i32> %31, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %33 = icmp sgt <8 x i32> %broadcast.splat11, %27
  %34 = icmp sgt <8 x i32> %broadcast.splat13, %32
  %35 = extractelement <8 x i64> %26, i32 0
  %36 = shl i64 %35, 32
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds float, float* %2, i64 %37
  %39 = bitcast float* %38 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %39, i32 4, <8 x i1> %33), !tbaa !12, !llvm.access.group !16
  %40 = getelementptr inbounds float, float* %38, i64 8
  %41 = bitcast float* %40 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %41, i32 4, <8 x i1> %34), !tbaa !12, !llvm.access.group !16
  %42 = or <8 x i64> %broadcast.splat, <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39>
  %43 = trunc <8 x i64> %42 to <8 x i32>
  %44 = trunc i64 %mul.i.i to i32
  %45 = or i32 %44, 8
  %46 = insertelement <8 x i32> undef, i32 %45, i64 0
  %47 = shufflevector <8 x i32> %46, <8 x i32> undef, <8 x i32> zeroinitializer
  %48 = or <8 x i32> %47, <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %49 = icmp sgt <8 x i32> %broadcast.splat11, %43
  %50 = icmp sgt <8 x i32> %broadcast.splat13, %48
  %51 = extractelement <8 x i64> %42, i32 0
  %52 = shl i64 %51, 32
  %53 = ashr exact i64 %52, 32
  %54 = getelementptr inbounds float, float* %2, i64 %53
  %55 = bitcast float* %54 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %55, i32 4, <8 x i1> %49), !tbaa !12, !llvm.access.group !16
  %56 = getelementptr inbounds float, float* %54, i64 8
  %57 = bitcast float* %56 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %57, i32 4, <8 x i1> %50), !tbaa !12, !llvm.access.group !16
  %58 = or <8 x i64> %broadcast.splat, <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55>
  %59 = trunc <8 x i64> %58 to <8 x i32>
  %60 = trunc i64 %mul.i.i to i32
  %61 = or i32 %60, 8
  %62 = insertelement <8 x i32> undef, i32 %61, i64 0
  %63 = shufflevector <8 x i32> %62, <8 x i32> undef, <8 x i32> zeroinitializer
  %64 = or <8 x i32> %63, <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %65 = icmp sgt <8 x i32> %broadcast.splat11, %59
  %66 = icmp sgt <8 x i32> %broadcast.splat13, %64
  %67 = extractelement <8 x i64> %58, i32 0
  %68 = shl i64 %67, 32
  %69 = ashr exact i64 %68, 32
  %70 = getelementptr inbounds float, float* %2, i64 %69
  %71 = bitcast float* %70 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %71, i32 4, <8 x i1> %65), !tbaa !12, !llvm.access.group !16
  %72 = getelementptr inbounds float, float* %70, i64 8
  %73 = bitcast float* %72 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %73, i32 4, <8 x i1> %66), !tbaa !12, !llvm.access.group !16
  %74 = or <8 x i64> %broadcast.splat, <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71>
  %75 = trunc <8 x i64> %74 to <8 x i32>
  %76 = trunc i64 %mul.i.i to i32
  %77 = or i32 %76, 8
  %78 = insertelement <8 x i32> undef, i32 %77, i64 0
  %79 = shufflevector <8 x i32> %78, <8 x i32> undef, <8 x i32> zeroinitializer
  %80 = or <8 x i32> %79, <i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71>
  %81 = icmp sgt <8 x i32> %broadcast.splat11, %75
  %82 = icmp sgt <8 x i32> %broadcast.splat13, %80
  %83 = extractelement <8 x i64> %74, i32 0
  %84 = shl i64 %83, 32
  %85 = ashr exact i64 %84, 32
  %86 = getelementptr inbounds float, float* %2, i64 %85
  %87 = bitcast float* %86 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %87, i32 4, <8 x i1> %81), !tbaa !12, !llvm.access.group !16
  %88 = getelementptr inbounds float, float* %86, i64 8
  %89 = bitcast float* %88 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %89, i32 4, <8 x i1> %82), !tbaa !12, !llvm.access.group !16
  %90 = or <8 x i64> %broadcast.splat, <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87>
  %91 = trunc <8 x i64> %90 to <8 x i32>
  %92 = trunc i64 %mul.i.i to i32
  %93 = or i32 %92, 8
  %94 = insertelement <8 x i32> undef, i32 %93, i64 0
  %95 = shufflevector <8 x i32> %94, <8 x i32> undef, <8 x i32> zeroinitializer
  %96 = or <8 x i32> %95, <i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87>
  %97 = icmp sgt <8 x i32> %broadcast.splat11, %91
  %98 = icmp sgt <8 x i32> %broadcast.splat13, %96
  %99 = extractelement <8 x i64> %90, i32 0
  %100 = shl i64 %99, 32
  %101 = ashr exact i64 %100, 32
  %102 = getelementptr inbounds float, float* %2, i64 %101
  %103 = bitcast float* %102 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %103, i32 4, <8 x i1> %97), !tbaa !12, !llvm.access.group !16
  %104 = getelementptr inbounds float, float* %102, i64 8
  %105 = bitcast float* %104 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %105, i32 4, <8 x i1> %98), !tbaa !12, !llvm.access.group !16
  %106 = or <8 x i64> %broadcast.splat, <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103>
  %107 = trunc <8 x i64> %106 to <8 x i32>
  %108 = trunc i64 %mul.i.i to i32
  %109 = or i32 %108, 8
  %110 = insertelement <8 x i32> undef, i32 %109, i64 0
  %111 = shufflevector <8 x i32> %110, <8 x i32> undef, <8 x i32> zeroinitializer
  %112 = or <8 x i32> %111, <i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103>
  %113 = icmp sgt <8 x i32> %broadcast.splat11, %107
  %114 = icmp sgt <8 x i32> %broadcast.splat13, %112
  %115 = extractelement <8 x i64> %106, i32 0
  %116 = shl i64 %115, 32
  %117 = ashr exact i64 %116, 32
  %118 = getelementptr inbounds float, float* %2, i64 %117
  %119 = bitcast float* %118 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %119, i32 4, <8 x i1> %113), !tbaa !12, !llvm.access.group !16
  %120 = getelementptr inbounds float, float* %118, i64 8
  %121 = bitcast float* %120 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %121, i32 4, <8 x i1> %114), !tbaa !12, !llvm.access.group !16
  %122 = or <8 x i64> %broadcast.splat, <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119>
  %123 = trunc <8 x i64> %122 to <8 x i32>
  %124 = trunc i64 %mul.i.i to i32
  %125 = or i32 %124, 8
  %126 = insertelement <8 x i32> undef, i32 %125, i64 0
  %127 = shufflevector <8 x i32> %126, <8 x i32> undef, <8 x i32> zeroinitializer
  %128 = or <8 x i32> %127, <i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119>
  %129 = icmp sgt <8 x i32> %broadcast.splat11, %123
  %130 = icmp sgt <8 x i32> %broadcast.splat13, %128
  %131 = extractelement <8 x i64> %122, i32 0
  %132 = shl i64 %131, 32
  %133 = ashr exact i64 %132, 32
  %134 = getelementptr inbounds float, float* %2, i64 %133
  %135 = bitcast float* %134 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %135, i32 4, <8 x i1> %129), !tbaa !12, !llvm.access.group !16
  %136 = getelementptr inbounds float, float* %134, i64 8
  %137 = bitcast float* %136 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %137, i32 4, <8 x i1> %130), !tbaa !12, !llvm.access.group !16
  %138 = or <8 x i64> %broadcast.splat, <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135>
  %139 = trunc <8 x i64> %138 to <8 x i32>
  %140 = trunc i64 %mul.i.i to i32
  %141 = or i32 %140, 8
  %142 = insertelement <8 x i32> undef, i32 %141, i64 0
  %143 = shufflevector <8 x i32> %142, <8 x i32> undef, <8 x i32> zeroinitializer
  %144 = or <8 x i32> %143, <i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135>
  %145 = icmp sgt <8 x i32> %broadcast.splat11, %139
  %146 = icmp sgt <8 x i32> %broadcast.splat13, %144
  %147 = extractelement <8 x i64> %138, i32 0
  %148 = shl i64 %147, 32
  %149 = ashr exact i64 %148, 32
  %150 = getelementptr inbounds float, float* %2, i64 %149
  %151 = bitcast float* %150 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %151, i32 4, <8 x i1> %145), !tbaa !12, !llvm.access.group !16
  %152 = getelementptr inbounds float, float* %150, i64 8
  %153 = bitcast float* %152 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %153, i32 4, <8 x i1> %146), !tbaa !12, !llvm.access.group !16
  %154 = or <8 x i64> %broadcast.splat, <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151>
  %155 = trunc <8 x i64> %154 to <8 x i32>
  %156 = trunc i64 %mul.i.i to i32
  %157 = or i32 %156, 8
  %158 = insertelement <8 x i32> undef, i32 %157, i64 0
  %159 = shufflevector <8 x i32> %158, <8 x i32> undef, <8 x i32> zeroinitializer
  %160 = or <8 x i32> %159, <i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151>
  %161 = icmp sgt <8 x i32> %broadcast.splat11, %155
  %162 = icmp sgt <8 x i32> %broadcast.splat13, %160
  %163 = extractelement <8 x i64> %154, i32 0
  %164 = shl i64 %163, 32
  %165 = ashr exact i64 %164, 32
  %166 = getelementptr inbounds float, float* %2, i64 %165
  %167 = bitcast float* %166 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %167, i32 4, <8 x i1> %161), !tbaa !12, !llvm.access.group !16
  %168 = getelementptr inbounds float, float* %166, i64 8
  %169 = bitcast float* %168 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %169, i32 4, <8 x i1> %162), !tbaa !12, !llvm.access.group !16
  %170 = or <8 x i64> %broadcast.splat, <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167>
  %171 = trunc <8 x i64> %170 to <8 x i32>
  %172 = trunc i64 %mul.i.i to i32
  %173 = or i32 %172, 8
  %174 = insertelement <8 x i32> undef, i32 %173, i64 0
  %175 = shufflevector <8 x i32> %174, <8 x i32> undef, <8 x i32> zeroinitializer
  %176 = or <8 x i32> %175, <i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167>
  %177 = icmp sgt <8 x i32> %broadcast.splat11, %171
  %178 = icmp sgt <8 x i32> %broadcast.splat13, %176
  %179 = extractelement <8 x i64> %170, i32 0
  %180 = shl i64 %179, 32
  %181 = ashr exact i64 %180, 32
  %182 = getelementptr inbounds float, float* %2, i64 %181
  %183 = bitcast float* %182 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %183, i32 4, <8 x i1> %177), !tbaa !12, !llvm.access.group !16
  %184 = getelementptr inbounds float, float* %182, i64 8
  %185 = bitcast float* %184 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %185, i32 4, <8 x i1> %178), !tbaa !12, !llvm.access.group !16
  %186 = or <8 x i64> %broadcast.splat, <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183>
  %187 = trunc <8 x i64> %186 to <8 x i32>
  %188 = trunc i64 %mul.i.i to i32
  %189 = or i32 %188, 8
  %190 = insertelement <8 x i32> undef, i32 %189, i64 0
  %191 = shufflevector <8 x i32> %190, <8 x i32> undef, <8 x i32> zeroinitializer
  %192 = or <8 x i32> %191, <i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183>
  %193 = icmp sgt <8 x i32> %broadcast.splat11, %187
  %194 = icmp sgt <8 x i32> %broadcast.splat13, %192
  %195 = extractelement <8 x i64> %186, i32 0
  %196 = shl i64 %195, 32
  %197 = ashr exact i64 %196, 32
  %198 = getelementptr inbounds float, float* %2, i64 %197
  %199 = bitcast float* %198 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %199, i32 4, <8 x i1> %193), !tbaa !12, !llvm.access.group !16
  %200 = getelementptr inbounds float, float* %198, i64 8
  %201 = bitcast float* %200 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %201, i32 4, <8 x i1> %194), !tbaa !12, !llvm.access.group !16
  %202 = or <8 x i64> %broadcast.splat, <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199>
  %203 = trunc <8 x i64> %202 to <8 x i32>
  %204 = trunc i64 %mul.i.i to i32
  %205 = or i32 %204, 8
  %206 = insertelement <8 x i32> undef, i32 %205, i64 0
  %207 = shufflevector <8 x i32> %206, <8 x i32> undef, <8 x i32> zeroinitializer
  %208 = or <8 x i32> %207, <i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199>
  %209 = icmp sgt <8 x i32> %broadcast.splat11, %203
  %210 = icmp sgt <8 x i32> %broadcast.splat13, %208
  %211 = extractelement <8 x i64> %202, i32 0
  %212 = shl i64 %211, 32
  %213 = ashr exact i64 %212, 32
  %214 = getelementptr inbounds float, float* %2, i64 %213
  %215 = bitcast float* %214 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %215, i32 4, <8 x i1> %209), !tbaa !12, !llvm.access.group !16
  %216 = getelementptr inbounds float, float* %214, i64 8
  %217 = bitcast float* %216 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %217, i32 4, <8 x i1> %210), !tbaa !12, !llvm.access.group !16
  %218 = or <8 x i64> %broadcast.splat, <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215>
  %219 = trunc <8 x i64> %218 to <8 x i32>
  %220 = trunc i64 %mul.i.i to i32
  %221 = or i32 %220, 8
  %222 = insertelement <8 x i32> undef, i32 %221, i64 0
  %223 = shufflevector <8 x i32> %222, <8 x i32> undef, <8 x i32> zeroinitializer
  %224 = or <8 x i32> %223, <i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215>
  %225 = icmp sgt <8 x i32> %broadcast.splat11, %219
  %226 = icmp sgt <8 x i32> %broadcast.splat13, %224
  %227 = extractelement <8 x i64> %218, i32 0
  %228 = shl i64 %227, 32
  %229 = ashr exact i64 %228, 32
  %230 = getelementptr inbounds float, float* %2, i64 %229
  %231 = bitcast float* %230 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %231, i32 4, <8 x i1> %225), !tbaa !12, !llvm.access.group !16
  %232 = getelementptr inbounds float, float* %230, i64 8
  %233 = bitcast float* %232 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %233, i32 4, <8 x i1> %226), !tbaa !12, !llvm.access.group !16
  %234 = or <8 x i64> %broadcast.splat, <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231>
  %235 = trunc <8 x i64> %234 to <8 x i32>
  %236 = trunc i64 %mul.i.i to i32
  %237 = or i32 %236, 8
  %238 = insertelement <8 x i32> undef, i32 %237, i64 0
  %239 = shufflevector <8 x i32> %238, <8 x i32> undef, <8 x i32> zeroinitializer
  %240 = or <8 x i32> %239, <i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231>
  %241 = icmp sgt <8 x i32> %broadcast.splat11, %235
  %242 = icmp sgt <8 x i32> %broadcast.splat13, %240
  %243 = extractelement <8 x i64> %234, i32 0
  %244 = shl i64 %243, 32
  %245 = ashr exact i64 %244, 32
  %246 = getelementptr inbounds float, float* %2, i64 %245
  %247 = bitcast float* %246 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %247, i32 4, <8 x i1> %241), !tbaa !12, !llvm.access.group !16
  %248 = getelementptr inbounds float, float* %246, i64 8
  %249 = bitcast float* %248 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %249, i32 4, <8 x i1> %242), !tbaa !12, !llvm.access.group !16
  %250 = or <8 x i64> %broadcast.splat, <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247>
  %251 = trunc <8 x i64> %250 to <8 x i32>
  %252 = trunc i64 %mul.i.i to i32
  %253 = or i32 %252, 8
  %254 = insertelement <8 x i32> undef, i32 %253, i64 0
  %255 = shufflevector <8 x i32> %254, <8 x i32> undef, <8 x i32> zeroinitializer
  %256 = or <8 x i32> %255, <i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247>
  %257 = icmp sgt <8 x i32> %broadcast.splat11, %251
  %258 = icmp sgt <8 x i32> %broadcast.splat13, %256
  %259 = extractelement <8 x i64> %250, i32 0
  %260 = shl i64 %259, 32
  %261 = ashr exact i64 %260, 32
  %262 = getelementptr inbounds float, float* %2, i64 %261
  %263 = bitcast float* %262 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %263, i32 4, <8 x i1> %257), !tbaa !12, !llvm.access.group !16
  %264 = getelementptr inbounds float, float* %262, i64 8
  %265 = bitcast float* %264 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %265, i32 4, <8 x i1> %258), !tbaa !12, !llvm.access.group !16
  br label %bicgKernel1.exit

pregion_for_entry.entry.i.us:                     ; preds = %if.end.i.us.1, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %279, %if.end.i.us.1 ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp.i.us = icmp slt i32 %conv.i.us, %3
  br i1 %cmp.i.us, label %if.then.i.us, label %if.end.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %sext.i.us = shl i64 %add1.i.i.us, 32
  %idxprom.i.us = ashr exact i64 %sext.i.us, 32
  %arrayidx.i.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us
  store float 0.000000e+00, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul.i.us = mul nsw i32 %conv.i.us, %4
  %266 = sext i32 %mul.i.us to i64
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %if.then.i.us
  %indvars.iv.next.i2.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %if.then.i.us ]
  %267 = phi float [ %271, %for.body.i.us ], [ 0.000000e+00, %if.then.i.us ]
  %268 = add nsw i64 %indvars.iv.next.i2.us, %266
  %arrayidx5.i.us = getelementptr inbounds float, float* %0, i64 %268
  %269 = load float, float* %arrayidx5.i.us, align 4, !tbaa !12
  %arrayidx7.i.us = getelementptr inbounds float, float* %1, i64 %indvars.iv.next.i2.us
  %270 = load float, float* %arrayidx7.i.us, align 4, !tbaa !12
  %271 = tail call float @llvm.fmuladd.f32(float %269, float %270, float %267) #2
  store float %271, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i2.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %if.end.i.us.loopexit, label %for.body.i.us, !llvm.loop !18

if.end.i.us.loopexit:                             ; preds = %for.body.i.us
  br label %if.end.i.us

if.end.i.us:                                      ; preds = %if.end.i.us.loopexit, %pregion_for_entry.entry.i.us
  %272 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1 = add nuw nsw i64 %272, %mul.i.i
  %conv.i.us.1 = trunc i64 %add1.i.i.us.1 to i32
  %cmp.i.us.1 = icmp slt i32 %conv.i.us.1, %3
  br i1 %cmp.i.us.1, label %if.then.i.us.1, label %if.end.i.us.1

bicgKernel1.exit.loopexit:                        ; preds = %if.end.i.us.1
  br label %bicgKernel1.exit

bicgKernel1.exit:                                 ; preds = %bicgKernel1.exit.loopexit, %vector.ph
  ret void

if.then.i.us.1:                                   ; preds = %if.end.i.us
  %sext.i.us.1 = shl i64 %add1.i.i.us.1, 32
  %idxprom.i.us.1 = ashr exact i64 %sext.i.us.1, 32
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul.i.us.1 = mul nsw i32 %conv.i.us.1, %4
  %273 = sext i32 %mul.i.us.1 to i64
  br label %for.body.i.us.1

for.body.i.us.1:                                  ; preds = %for.body.i.us.1, %if.then.i.us.1
  %indvars.iv.next.i2.us.1 = phi i64 [ %indvars.iv.next.i.us.1, %for.body.i.us.1 ], [ 0, %if.then.i.us.1 ]
  %274 = phi float [ %278, %for.body.i.us.1 ], [ 0.000000e+00, %if.then.i.us.1 ]
  %275 = add nsw i64 %indvars.iv.next.i2.us.1, %273
  %arrayidx5.i.us.1 = getelementptr inbounds float, float* %0, i64 %275
  %276 = load float, float* %arrayidx5.i.us.1, align 4, !tbaa !12
  %arrayidx7.i.us.1 = getelementptr inbounds float, float* %1, i64 %indvars.iv.next.i2.us.1
  %277 = load float, float* %arrayidx7.i.us.1, align 4, !tbaa !12
  %278 = tail call float @llvm.fmuladd.f32(float %276, float %277, float %274) #2
  store float %278, float* %arrayidx.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.next.i2.us.1, 1
  %exitcond.not.i.us.1 = icmp eq i64 %indvars.iv.next.i.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.1, label %if.end.i.us.1.loopexit, label %for.body.i.us.1, !llvm.loop !18

if.end.i.us.1.loopexit:                           ; preds = %for.body.i.us.1
  br label %if.end.i.us.1

if.end.i.us.1:                                    ; preds = %if.end.i.us.1.loopexit, %if.end.i.us
  %279 = add nuw nsw i64 %_local_id_x.0.us, 2
  %exitcond.not.1 = icmp eq i64 %279, 256
  br i1 %exitcond.not.1, label %bicgKernel1.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !20
}

; Function Attrs: nounwind
define void @_pocl_kernel_bicgKernel1_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %18 = bitcast i8** %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 4
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp221.i.i = icmp sgt i32 %24, 0
  %wide.trip.count.i.i = zext i32 %24 to i64
  br i1 %cmp221.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.ph:                                        ; preds = %5
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert10 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat11 = shufflevector <8 x i32> %broadcast.splatinsert10, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert12 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat13 = shufflevector <8 x i32> %broadcast.splatinsert12, <8 x i32> undef, <8 x i32> zeroinitializer
  %25 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %26 = trunc <8 x i64> %25 to <8 x i32>
  %27 = trunc i64 %mul.i.i.i to i32
  %28 = or i32 %27, 8
  %29 = insertelement <8 x i32> undef, i32 %28, i64 0
  %30 = shufflevector <8 x i32> %29, <8 x i32> undef, <8 x i32> zeroinitializer
  %31 = or <8 x i32> %30, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %32 = icmp sgt <8 x i32> %broadcast.splat11, %26
  %33 = icmp sgt <8 x i32> %broadcast.splat13, %31
  %34 = extractelement <8 x i64> %25, i32 0
  %35 = shl i64 %34, 32
  %36 = ashr exact i64 %35, 32
  %37 = getelementptr inbounds float, float* %16, i64 %36
  %38 = bitcast float* %37 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %38, i32 4, <8 x i1> %32), !tbaa !12, !llvm.access.group !16
  %39 = getelementptr inbounds float, float* %37, i64 8
  %40 = bitcast float* %39 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %40, i32 4, <8 x i1> %33), !tbaa !12, !llvm.access.group !16
  %41 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %42 = trunc <8 x i64> %41 to <8 x i32>
  %43 = trunc i64 %mul.i.i.i to i32
  %44 = or i32 %43, 8
  %45 = insertelement <8 x i32> undef, i32 %44, i64 0
  %46 = shufflevector <8 x i32> %45, <8 x i32> undef, <8 x i32> zeroinitializer
  %47 = or <8 x i32> %46, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %48 = icmp sgt <8 x i32> %broadcast.splat11, %42
  %49 = icmp sgt <8 x i32> %broadcast.splat13, %47
  %50 = extractelement <8 x i64> %41, i32 0
  %51 = shl i64 %50, 32
  %52 = ashr exact i64 %51, 32
  %53 = getelementptr inbounds float, float* %16, i64 %52
  %54 = bitcast float* %53 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %54, i32 4, <8 x i1> %48), !tbaa !12, !llvm.access.group !16
  %55 = getelementptr inbounds float, float* %53, i64 8
  %56 = bitcast float* %55 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %56, i32 4, <8 x i1> %49), !tbaa !12, !llvm.access.group !16
  %57 = or <8 x i64> %broadcast.splat, <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39>
  %58 = trunc <8 x i64> %57 to <8 x i32>
  %59 = trunc i64 %mul.i.i.i to i32
  %60 = or i32 %59, 8
  %61 = insertelement <8 x i32> undef, i32 %60, i64 0
  %62 = shufflevector <8 x i32> %61, <8 x i32> undef, <8 x i32> zeroinitializer
  %63 = or <8 x i32> %62, <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %64 = icmp sgt <8 x i32> %broadcast.splat11, %58
  %65 = icmp sgt <8 x i32> %broadcast.splat13, %63
  %66 = extractelement <8 x i64> %57, i32 0
  %67 = shl i64 %66, 32
  %68 = ashr exact i64 %67, 32
  %69 = getelementptr inbounds float, float* %16, i64 %68
  %70 = bitcast float* %69 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %70, i32 4, <8 x i1> %64), !tbaa !12, !llvm.access.group !16
  %71 = getelementptr inbounds float, float* %69, i64 8
  %72 = bitcast float* %71 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %72, i32 4, <8 x i1> %65), !tbaa !12, !llvm.access.group !16
  %73 = or <8 x i64> %broadcast.splat, <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55>
  %74 = trunc <8 x i64> %73 to <8 x i32>
  %75 = trunc i64 %mul.i.i.i to i32
  %76 = or i32 %75, 8
  %77 = insertelement <8 x i32> undef, i32 %76, i64 0
  %78 = shufflevector <8 x i32> %77, <8 x i32> undef, <8 x i32> zeroinitializer
  %79 = or <8 x i32> %78, <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %80 = icmp sgt <8 x i32> %broadcast.splat11, %74
  %81 = icmp sgt <8 x i32> %broadcast.splat13, %79
  %82 = extractelement <8 x i64> %73, i32 0
  %83 = shl i64 %82, 32
  %84 = ashr exact i64 %83, 32
  %85 = getelementptr inbounds float, float* %16, i64 %84
  %86 = bitcast float* %85 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %86, i32 4, <8 x i1> %80), !tbaa !12, !llvm.access.group !16
  %87 = getelementptr inbounds float, float* %85, i64 8
  %88 = bitcast float* %87 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %88, i32 4, <8 x i1> %81), !tbaa !12, !llvm.access.group !16
  %89 = or <8 x i64> %broadcast.splat, <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71>
  %90 = trunc <8 x i64> %89 to <8 x i32>
  %91 = trunc i64 %mul.i.i.i to i32
  %92 = or i32 %91, 8
  %93 = insertelement <8 x i32> undef, i32 %92, i64 0
  %94 = shufflevector <8 x i32> %93, <8 x i32> undef, <8 x i32> zeroinitializer
  %95 = or <8 x i32> %94, <i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71>
  %96 = icmp sgt <8 x i32> %broadcast.splat11, %90
  %97 = icmp sgt <8 x i32> %broadcast.splat13, %95
  %98 = extractelement <8 x i64> %89, i32 0
  %99 = shl i64 %98, 32
  %100 = ashr exact i64 %99, 32
  %101 = getelementptr inbounds float, float* %16, i64 %100
  %102 = bitcast float* %101 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %102, i32 4, <8 x i1> %96), !tbaa !12, !llvm.access.group !16
  %103 = getelementptr inbounds float, float* %101, i64 8
  %104 = bitcast float* %103 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %104, i32 4, <8 x i1> %97), !tbaa !12, !llvm.access.group !16
  %105 = or <8 x i64> %broadcast.splat, <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87>
  %106 = trunc <8 x i64> %105 to <8 x i32>
  %107 = trunc i64 %mul.i.i.i to i32
  %108 = or i32 %107, 8
  %109 = insertelement <8 x i32> undef, i32 %108, i64 0
  %110 = shufflevector <8 x i32> %109, <8 x i32> undef, <8 x i32> zeroinitializer
  %111 = or <8 x i32> %110, <i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87>
  %112 = icmp sgt <8 x i32> %broadcast.splat11, %106
  %113 = icmp sgt <8 x i32> %broadcast.splat13, %111
  %114 = extractelement <8 x i64> %105, i32 0
  %115 = shl i64 %114, 32
  %116 = ashr exact i64 %115, 32
  %117 = getelementptr inbounds float, float* %16, i64 %116
  %118 = bitcast float* %117 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %118, i32 4, <8 x i1> %112), !tbaa !12, !llvm.access.group !16
  %119 = getelementptr inbounds float, float* %117, i64 8
  %120 = bitcast float* %119 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %120, i32 4, <8 x i1> %113), !tbaa !12, !llvm.access.group !16
  %121 = or <8 x i64> %broadcast.splat, <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103>
  %122 = trunc <8 x i64> %121 to <8 x i32>
  %123 = trunc i64 %mul.i.i.i to i32
  %124 = or i32 %123, 8
  %125 = insertelement <8 x i32> undef, i32 %124, i64 0
  %126 = shufflevector <8 x i32> %125, <8 x i32> undef, <8 x i32> zeroinitializer
  %127 = or <8 x i32> %126, <i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103>
  %128 = icmp sgt <8 x i32> %broadcast.splat11, %122
  %129 = icmp sgt <8 x i32> %broadcast.splat13, %127
  %130 = extractelement <8 x i64> %121, i32 0
  %131 = shl i64 %130, 32
  %132 = ashr exact i64 %131, 32
  %133 = getelementptr inbounds float, float* %16, i64 %132
  %134 = bitcast float* %133 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %134, i32 4, <8 x i1> %128), !tbaa !12, !llvm.access.group !16
  %135 = getelementptr inbounds float, float* %133, i64 8
  %136 = bitcast float* %135 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %136, i32 4, <8 x i1> %129), !tbaa !12, !llvm.access.group !16
  %137 = or <8 x i64> %broadcast.splat, <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119>
  %138 = trunc <8 x i64> %137 to <8 x i32>
  %139 = trunc i64 %mul.i.i.i to i32
  %140 = or i32 %139, 8
  %141 = insertelement <8 x i32> undef, i32 %140, i64 0
  %142 = shufflevector <8 x i32> %141, <8 x i32> undef, <8 x i32> zeroinitializer
  %143 = or <8 x i32> %142, <i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119>
  %144 = icmp sgt <8 x i32> %broadcast.splat11, %138
  %145 = icmp sgt <8 x i32> %broadcast.splat13, %143
  %146 = extractelement <8 x i64> %137, i32 0
  %147 = shl i64 %146, 32
  %148 = ashr exact i64 %147, 32
  %149 = getelementptr inbounds float, float* %16, i64 %148
  %150 = bitcast float* %149 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %150, i32 4, <8 x i1> %144), !tbaa !12, !llvm.access.group !16
  %151 = getelementptr inbounds float, float* %149, i64 8
  %152 = bitcast float* %151 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %152, i32 4, <8 x i1> %145), !tbaa !12, !llvm.access.group !16
  %153 = or <8 x i64> %broadcast.splat, <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135>
  %154 = trunc <8 x i64> %153 to <8 x i32>
  %155 = trunc i64 %mul.i.i.i to i32
  %156 = or i32 %155, 8
  %157 = insertelement <8 x i32> undef, i32 %156, i64 0
  %158 = shufflevector <8 x i32> %157, <8 x i32> undef, <8 x i32> zeroinitializer
  %159 = or <8 x i32> %158, <i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135>
  %160 = icmp sgt <8 x i32> %broadcast.splat11, %154
  %161 = icmp sgt <8 x i32> %broadcast.splat13, %159
  %162 = extractelement <8 x i64> %153, i32 0
  %163 = shl i64 %162, 32
  %164 = ashr exact i64 %163, 32
  %165 = getelementptr inbounds float, float* %16, i64 %164
  %166 = bitcast float* %165 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %166, i32 4, <8 x i1> %160), !tbaa !12, !llvm.access.group !16
  %167 = getelementptr inbounds float, float* %165, i64 8
  %168 = bitcast float* %167 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %168, i32 4, <8 x i1> %161), !tbaa !12, !llvm.access.group !16
  %169 = or <8 x i64> %broadcast.splat, <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151>
  %170 = trunc <8 x i64> %169 to <8 x i32>
  %171 = trunc i64 %mul.i.i.i to i32
  %172 = or i32 %171, 8
  %173 = insertelement <8 x i32> undef, i32 %172, i64 0
  %174 = shufflevector <8 x i32> %173, <8 x i32> undef, <8 x i32> zeroinitializer
  %175 = or <8 x i32> %174, <i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151>
  %176 = icmp sgt <8 x i32> %broadcast.splat11, %170
  %177 = icmp sgt <8 x i32> %broadcast.splat13, %175
  %178 = extractelement <8 x i64> %169, i32 0
  %179 = shl i64 %178, 32
  %180 = ashr exact i64 %179, 32
  %181 = getelementptr inbounds float, float* %16, i64 %180
  %182 = bitcast float* %181 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %182, i32 4, <8 x i1> %176), !tbaa !12, !llvm.access.group !16
  %183 = getelementptr inbounds float, float* %181, i64 8
  %184 = bitcast float* %183 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %184, i32 4, <8 x i1> %177), !tbaa !12, !llvm.access.group !16
  %185 = or <8 x i64> %broadcast.splat, <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167>
  %186 = trunc <8 x i64> %185 to <8 x i32>
  %187 = trunc i64 %mul.i.i.i to i32
  %188 = or i32 %187, 8
  %189 = insertelement <8 x i32> undef, i32 %188, i64 0
  %190 = shufflevector <8 x i32> %189, <8 x i32> undef, <8 x i32> zeroinitializer
  %191 = or <8 x i32> %190, <i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167>
  %192 = icmp sgt <8 x i32> %broadcast.splat11, %186
  %193 = icmp sgt <8 x i32> %broadcast.splat13, %191
  %194 = extractelement <8 x i64> %185, i32 0
  %195 = shl i64 %194, 32
  %196 = ashr exact i64 %195, 32
  %197 = getelementptr inbounds float, float* %16, i64 %196
  %198 = bitcast float* %197 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %198, i32 4, <8 x i1> %192), !tbaa !12, !llvm.access.group !16
  %199 = getelementptr inbounds float, float* %197, i64 8
  %200 = bitcast float* %199 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %200, i32 4, <8 x i1> %193), !tbaa !12, !llvm.access.group !16
  %201 = or <8 x i64> %broadcast.splat, <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183>
  %202 = trunc <8 x i64> %201 to <8 x i32>
  %203 = trunc i64 %mul.i.i.i to i32
  %204 = or i32 %203, 8
  %205 = insertelement <8 x i32> undef, i32 %204, i64 0
  %206 = shufflevector <8 x i32> %205, <8 x i32> undef, <8 x i32> zeroinitializer
  %207 = or <8 x i32> %206, <i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183>
  %208 = icmp sgt <8 x i32> %broadcast.splat11, %202
  %209 = icmp sgt <8 x i32> %broadcast.splat13, %207
  %210 = extractelement <8 x i64> %201, i32 0
  %211 = shl i64 %210, 32
  %212 = ashr exact i64 %211, 32
  %213 = getelementptr inbounds float, float* %16, i64 %212
  %214 = bitcast float* %213 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %214, i32 4, <8 x i1> %208), !tbaa !12, !llvm.access.group !16
  %215 = getelementptr inbounds float, float* %213, i64 8
  %216 = bitcast float* %215 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %216, i32 4, <8 x i1> %209), !tbaa !12, !llvm.access.group !16
  %217 = or <8 x i64> %broadcast.splat, <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199>
  %218 = trunc <8 x i64> %217 to <8 x i32>
  %219 = trunc i64 %mul.i.i.i to i32
  %220 = or i32 %219, 8
  %221 = insertelement <8 x i32> undef, i32 %220, i64 0
  %222 = shufflevector <8 x i32> %221, <8 x i32> undef, <8 x i32> zeroinitializer
  %223 = or <8 x i32> %222, <i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199>
  %224 = icmp sgt <8 x i32> %broadcast.splat11, %218
  %225 = icmp sgt <8 x i32> %broadcast.splat13, %223
  %226 = extractelement <8 x i64> %217, i32 0
  %227 = shl i64 %226, 32
  %228 = ashr exact i64 %227, 32
  %229 = getelementptr inbounds float, float* %16, i64 %228
  %230 = bitcast float* %229 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %230, i32 4, <8 x i1> %224), !tbaa !12, !llvm.access.group !16
  %231 = getelementptr inbounds float, float* %229, i64 8
  %232 = bitcast float* %231 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %232, i32 4, <8 x i1> %225), !tbaa !12, !llvm.access.group !16
  %233 = or <8 x i64> %broadcast.splat, <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215>
  %234 = trunc <8 x i64> %233 to <8 x i32>
  %235 = trunc i64 %mul.i.i.i to i32
  %236 = or i32 %235, 8
  %237 = insertelement <8 x i32> undef, i32 %236, i64 0
  %238 = shufflevector <8 x i32> %237, <8 x i32> undef, <8 x i32> zeroinitializer
  %239 = or <8 x i32> %238, <i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215>
  %240 = icmp sgt <8 x i32> %broadcast.splat11, %234
  %241 = icmp sgt <8 x i32> %broadcast.splat13, %239
  %242 = extractelement <8 x i64> %233, i32 0
  %243 = shl i64 %242, 32
  %244 = ashr exact i64 %243, 32
  %245 = getelementptr inbounds float, float* %16, i64 %244
  %246 = bitcast float* %245 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %246, i32 4, <8 x i1> %240), !tbaa !12, !llvm.access.group !16
  %247 = getelementptr inbounds float, float* %245, i64 8
  %248 = bitcast float* %247 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %248, i32 4, <8 x i1> %241), !tbaa !12, !llvm.access.group !16
  %249 = or <8 x i64> %broadcast.splat, <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231>
  %250 = trunc <8 x i64> %249 to <8 x i32>
  %251 = trunc i64 %mul.i.i.i to i32
  %252 = or i32 %251, 8
  %253 = insertelement <8 x i32> undef, i32 %252, i64 0
  %254 = shufflevector <8 x i32> %253, <8 x i32> undef, <8 x i32> zeroinitializer
  %255 = or <8 x i32> %254, <i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231>
  %256 = icmp sgt <8 x i32> %broadcast.splat11, %250
  %257 = icmp sgt <8 x i32> %broadcast.splat13, %255
  %258 = extractelement <8 x i64> %249, i32 0
  %259 = shl i64 %258, 32
  %260 = ashr exact i64 %259, 32
  %261 = getelementptr inbounds float, float* %16, i64 %260
  %262 = bitcast float* %261 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %262, i32 4, <8 x i1> %256), !tbaa !12, !llvm.access.group !16
  %263 = getelementptr inbounds float, float* %261, i64 8
  %264 = bitcast float* %263 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %264, i32 4, <8 x i1> %257), !tbaa !12, !llvm.access.group !16
  %265 = or <8 x i64> %broadcast.splat, <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247>
  %266 = trunc <8 x i64> %265 to <8 x i32>
  %267 = trunc i64 %mul.i.i.i to i32
  %268 = or i32 %267, 8
  %269 = insertelement <8 x i32> undef, i32 %268, i64 0
  %270 = shufflevector <8 x i32> %269, <8 x i32> undef, <8 x i32> zeroinitializer
  %271 = or <8 x i32> %270, <i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247>
  %272 = icmp sgt <8 x i32> %broadcast.splat11, %266
  %273 = icmp sgt <8 x i32> %broadcast.splat13, %271
  %274 = extractelement <8 x i64> %265, i32 0
  %275 = shl i64 %274, 32
  %276 = ashr exact i64 %275, 32
  %277 = getelementptr inbounds float, float* %16, i64 %276
  %278 = bitcast float* %277 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %278, i32 4, <8 x i1> %272), !tbaa !12, !llvm.access.group !16
  %279 = getelementptr inbounds float, float* %277, i64 8
  %280 = bitcast float* %279 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %280, i32 4, <8 x i1> %273), !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_bicgKernel1.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %294, %if.end.i.i.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp sgt i32 %20, %conv.i.i.us
  br i1 %cmp.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul.i.i.us = mul nsw i32 %24, %conv.i.i.us
  %281 = sext i32 %mul.i.i.us to i64
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %if.then.i.i.us
  %indvars.iv.next.i.i2.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %if.then.i.i.us ]
  %282 = phi float [ %286, %for.body.i.i.us ], [ 0.000000e+00, %if.then.i.i.us ]
  %283 = add nsw i64 %indvars.iv.next.i.i2.us, %281
  %arrayidx5.i.i.us = getelementptr inbounds float, float* %8, i64 %283
  %284 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !12
  %arrayidx7.i.i.us = getelementptr inbounds float, float* %12, i64 %indvars.iv.next.i.i2.us
  %285 = load float, float* %arrayidx7.i.i.us, align 4, !tbaa !12
  %286 = tail call float @llvm.fmuladd.f32(float %284, float %285, float %282) #2
  store float %286, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i2.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %if.end.i.i.us.loopexit, label %for.body.i.i.us, !llvm.loop !18

if.end.i.i.us.loopexit:                           ; preds = %for.body.i.i.us
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.end.i.i.us.loopexit, %pregion_for_entry.entry.i.i.us
  %287 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %287, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp.i.i.us.1 = icmp sgt i32 %20, %conv.i.i.us.1
  br i1 %cmp.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

_pocl_kernel_bicgKernel1.exit.loopexit:           ; preds = %if.end.i.i.us.1
  br label %_pocl_kernel_bicgKernel1.exit

_pocl_kernel_bicgKernel1.exit:                    ; preds = %_pocl_kernel_bicgKernel1.exit.loopexit, %vector.ph
  ret void

if.then.i.i.us.1:                                 ; preds = %if.end.i.i.us
  %sext.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom.i.i.us.1 = ashr exact i64 %sext.i.i.us.1, 32
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul.i.i.us.1 = mul nsw i32 %24, %conv.i.i.us.1
  %288 = sext i32 %mul.i.i.us.1 to i64
  br label %for.body.i.i.us.1

for.body.i.i.us.1:                                ; preds = %for.body.i.i.us.1, %if.then.i.i.us.1
  %indvars.iv.next.i.i2.us.1 = phi i64 [ %indvars.iv.next.i.i.us.1, %for.body.i.i.us.1 ], [ 0, %if.then.i.i.us.1 ]
  %289 = phi float [ %293, %for.body.i.i.us.1 ], [ 0.000000e+00, %if.then.i.i.us.1 ]
  %290 = add nsw i64 %indvars.iv.next.i.i2.us.1, %288
  %arrayidx5.i.i.us.1 = getelementptr inbounds float, float* %8, i64 %290
  %291 = load float, float* %arrayidx5.i.i.us.1, align 4, !tbaa !12
  %arrayidx7.i.i.us.1 = getelementptr inbounds float, float* %12, i64 %indvars.iv.next.i.i2.us.1
  %292 = load float, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12
  %293 = tail call float @llvm.fmuladd.f32(float %291, float %292, float %289) #2
  store float %293, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.1, 1
  %exitcond.not.i.i.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.1, label %if.end.i.i.us.1.loopexit, label %for.body.i.i.us.1, !llvm.loop !18

if.end.i.i.us.1.loopexit:                         ; preds = %for.body.i.i.us.1
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.end.i.i.us.1.loopexit, %if.end.i.i.us
  %294 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %294, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_bicgKernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !20
}

; Function Attrs: nounwind
define void @_pocl_kernel_bicgKernel1_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 2
  %12 = bitcast i8** %11 to float**
  %13 = load float*, float** %12, align 8
  %14 = getelementptr i8*, i8** %0, i64 3
  %15 = bitcast i8** %14 to i32**
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr i8*, i8** %0, i64 4
  %19 = bitcast i8** %18 to i32**
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp221.i.i = icmp sgt i32 %21, 0
  %wide.trip.count.i.i = zext i32 %21 to i64
  br i1 %cmp221.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.ph:                                        ; preds = %5
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert10 = insertelement <8 x i32> undef, i32 %17, i32 0
  %broadcast.splat11 = shufflevector <8 x i32> %broadcast.splatinsert10, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert12 = insertelement <8 x i32> undef, i32 %17, i32 0
  %broadcast.splat13 = shufflevector <8 x i32> %broadcast.splatinsert12, <8 x i32> undef, <8 x i32> zeroinitializer
  %22 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %23 = trunc <8 x i64> %22 to <8 x i32>
  %24 = trunc i64 %mul.i.i.i to i32
  %25 = or i32 %24, 8
  %26 = insertelement <8 x i32> undef, i32 %25, i64 0
  %27 = shufflevector <8 x i32> %26, <8 x i32> undef, <8 x i32> zeroinitializer
  %28 = or <8 x i32> %27, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %29 = icmp sgt <8 x i32> %broadcast.splat11, %23
  %30 = icmp sgt <8 x i32> %broadcast.splat13, %28
  %31 = extractelement <8 x i64> %22, i32 0
  %32 = shl i64 %31, 32
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds float, float* %13, i64 %33
  %35 = bitcast float* %34 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %35, i32 4, <8 x i1> %29), !tbaa !12, !llvm.access.group !16
  %36 = getelementptr inbounds float, float* %34, i64 8
  %37 = bitcast float* %36 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %37, i32 4, <8 x i1> %30), !tbaa !12, !llvm.access.group !16
  %38 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %39 = trunc <8 x i64> %38 to <8 x i32>
  %40 = trunc i64 %mul.i.i.i to i32
  %41 = or i32 %40, 8
  %42 = insertelement <8 x i32> undef, i32 %41, i64 0
  %43 = shufflevector <8 x i32> %42, <8 x i32> undef, <8 x i32> zeroinitializer
  %44 = or <8 x i32> %43, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %45 = icmp sgt <8 x i32> %broadcast.splat11, %39
  %46 = icmp sgt <8 x i32> %broadcast.splat13, %44
  %47 = extractelement <8 x i64> %38, i32 0
  %48 = shl i64 %47, 32
  %49 = ashr exact i64 %48, 32
  %50 = getelementptr inbounds float, float* %13, i64 %49
  %51 = bitcast float* %50 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %51, i32 4, <8 x i1> %45), !tbaa !12, !llvm.access.group !16
  %52 = getelementptr inbounds float, float* %50, i64 8
  %53 = bitcast float* %52 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %53, i32 4, <8 x i1> %46), !tbaa !12, !llvm.access.group !16
  %54 = or <8 x i64> %broadcast.splat, <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39>
  %55 = trunc <8 x i64> %54 to <8 x i32>
  %56 = trunc i64 %mul.i.i.i to i32
  %57 = or i32 %56, 8
  %58 = insertelement <8 x i32> undef, i32 %57, i64 0
  %59 = shufflevector <8 x i32> %58, <8 x i32> undef, <8 x i32> zeroinitializer
  %60 = or <8 x i32> %59, <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %61 = icmp sgt <8 x i32> %broadcast.splat11, %55
  %62 = icmp sgt <8 x i32> %broadcast.splat13, %60
  %63 = extractelement <8 x i64> %54, i32 0
  %64 = shl i64 %63, 32
  %65 = ashr exact i64 %64, 32
  %66 = getelementptr inbounds float, float* %13, i64 %65
  %67 = bitcast float* %66 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %67, i32 4, <8 x i1> %61), !tbaa !12, !llvm.access.group !16
  %68 = getelementptr inbounds float, float* %66, i64 8
  %69 = bitcast float* %68 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %69, i32 4, <8 x i1> %62), !tbaa !12, !llvm.access.group !16
  %70 = or <8 x i64> %broadcast.splat, <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55>
  %71 = trunc <8 x i64> %70 to <8 x i32>
  %72 = trunc i64 %mul.i.i.i to i32
  %73 = or i32 %72, 8
  %74 = insertelement <8 x i32> undef, i32 %73, i64 0
  %75 = shufflevector <8 x i32> %74, <8 x i32> undef, <8 x i32> zeroinitializer
  %76 = or <8 x i32> %75, <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %77 = icmp sgt <8 x i32> %broadcast.splat11, %71
  %78 = icmp sgt <8 x i32> %broadcast.splat13, %76
  %79 = extractelement <8 x i64> %70, i32 0
  %80 = shl i64 %79, 32
  %81 = ashr exact i64 %80, 32
  %82 = getelementptr inbounds float, float* %13, i64 %81
  %83 = bitcast float* %82 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %83, i32 4, <8 x i1> %77), !tbaa !12, !llvm.access.group !16
  %84 = getelementptr inbounds float, float* %82, i64 8
  %85 = bitcast float* %84 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %85, i32 4, <8 x i1> %78), !tbaa !12, !llvm.access.group !16
  %86 = or <8 x i64> %broadcast.splat, <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71>
  %87 = trunc <8 x i64> %86 to <8 x i32>
  %88 = trunc i64 %mul.i.i.i to i32
  %89 = or i32 %88, 8
  %90 = insertelement <8 x i32> undef, i32 %89, i64 0
  %91 = shufflevector <8 x i32> %90, <8 x i32> undef, <8 x i32> zeroinitializer
  %92 = or <8 x i32> %91, <i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71>
  %93 = icmp sgt <8 x i32> %broadcast.splat11, %87
  %94 = icmp sgt <8 x i32> %broadcast.splat13, %92
  %95 = extractelement <8 x i64> %86, i32 0
  %96 = shl i64 %95, 32
  %97 = ashr exact i64 %96, 32
  %98 = getelementptr inbounds float, float* %13, i64 %97
  %99 = bitcast float* %98 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %99, i32 4, <8 x i1> %93), !tbaa !12, !llvm.access.group !16
  %100 = getelementptr inbounds float, float* %98, i64 8
  %101 = bitcast float* %100 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %101, i32 4, <8 x i1> %94), !tbaa !12, !llvm.access.group !16
  %102 = or <8 x i64> %broadcast.splat, <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87>
  %103 = trunc <8 x i64> %102 to <8 x i32>
  %104 = trunc i64 %mul.i.i.i to i32
  %105 = or i32 %104, 8
  %106 = insertelement <8 x i32> undef, i32 %105, i64 0
  %107 = shufflevector <8 x i32> %106, <8 x i32> undef, <8 x i32> zeroinitializer
  %108 = or <8 x i32> %107, <i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87>
  %109 = icmp sgt <8 x i32> %broadcast.splat11, %103
  %110 = icmp sgt <8 x i32> %broadcast.splat13, %108
  %111 = extractelement <8 x i64> %102, i32 0
  %112 = shl i64 %111, 32
  %113 = ashr exact i64 %112, 32
  %114 = getelementptr inbounds float, float* %13, i64 %113
  %115 = bitcast float* %114 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %115, i32 4, <8 x i1> %109), !tbaa !12, !llvm.access.group !16
  %116 = getelementptr inbounds float, float* %114, i64 8
  %117 = bitcast float* %116 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %117, i32 4, <8 x i1> %110), !tbaa !12, !llvm.access.group !16
  %118 = or <8 x i64> %broadcast.splat, <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103>
  %119 = trunc <8 x i64> %118 to <8 x i32>
  %120 = trunc i64 %mul.i.i.i to i32
  %121 = or i32 %120, 8
  %122 = insertelement <8 x i32> undef, i32 %121, i64 0
  %123 = shufflevector <8 x i32> %122, <8 x i32> undef, <8 x i32> zeroinitializer
  %124 = or <8 x i32> %123, <i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103>
  %125 = icmp sgt <8 x i32> %broadcast.splat11, %119
  %126 = icmp sgt <8 x i32> %broadcast.splat13, %124
  %127 = extractelement <8 x i64> %118, i32 0
  %128 = shl i64 %127, 32
  %129 = ashr exact i64 %128, 32
  %130 = getelementptr inbounds float, float* %13, i64 %129
  %131 = bitcast float* %130 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %131, i32 4, <8 x i1> %125), !tbaa !12, !llvm.access.group !16
  %132 = getelementptr inbounds float, float* %130, i64 8
  %133 = bitcast float* %132 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %133, i32 4, <8 x i1> %126), !tbaa !12, !llvm.access.group !16
  %134 = or <8 x i64> %broadcast.splat, <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119>
  %135 = trunc <8 x i64> %134 to <8 x i32>
  %136 = trunc i64 %mul.i.i.i to i32
  %137 = or i32 %136, 8
  %138 = insertelement <8 x i32> undef, i32 %137, i64 0
  %139 = shufflevector <8 x i32> %138, <8 x i32> undef, <8 x i32> zeroinitializer
  %140 = or <8 x i32> %139, <i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119>
  %141 = icmp sgt <8 x i32> %broadcast.splat11, %135
  %142 = icmp sgt <8 x i32> %broadcast.splat13, %140
  %143 = extractelement <8 x i64> %134, i32 0
  %144 = shl i64 %143, 32
  %145 = ashr exact i64 %144, 32
  %146 = getelementptr inbounds float, float* %13, i64 %145
  %147 = bitcast float* %146 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %147, i32 4, <8 x i1> %141), !tbaa !12, !llvm.access.group !16
  %148 = getelementptr inbounds float, float* %146, i64 8
  %149 = bitcast float* %148 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %149, i32 4, <8 x i1> %142), !tbaa !12, !llvm.access.group !16
  %150 = or <8 x i64> %broadcast.splat, <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135>
  %151 = trunc <8 x i64> %150 to <8 x i32>
  %152 = trunc i64 %mul.i.i.i to i32
  %153 = or i32 %152, 8
  %154 = insertelement <8 x i32> undef, i32 %153, i64 0
  %155 = shufflevector <8 x i32> %154, <8 x i32> undef, <8 x i32> zeroinitializer
  %156 = or <8 x i32> %155, <i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135>
  %157 = icmp sgt <8 x i32> %broadcast.splat11, %151
  %158 = icmp sgt <8 x i32> %broadcast.splat13, %156
  %159 = extractelement <8 x i64> %150, i32 0
  %160 = shl i64 %159, 32
  %161 = ashr exact i64 %160, 32
  %162 = getelementptr inbounds float, float* %13, i64 %161
  %163 = bitcast float* %162 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %163, i32 4, <8 x i1> %157), !tbaa !12, !llvm.access.group !16
  %164 = getelementptr inbounds float, float* %162, i64 8
  %165 = bitcast float* %164 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %165, i32 4, <8 x i1> %158), !tbaa !12, !llvm.access.group !16
  %166 = or <8 x i64> %broadcast.splat, <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151>
  %167 = trunc <8 x i64> %166 to <8 x i32>
  %168 = trunc i64 %mul.i.i.i to i32
  %169 = or i32 %168, 8
  %170 = insertelement <8 x i32> undef, i32 %169, i64 0
  %171 = shufflevector <8 x i32> %170, <8 x i32> undef, <8 x i32> zeroinitializer
  %172 = or <8 x i32> %171, <i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151>
  %173 = icmp sgt <8 x i32> %broadcast.splat11, %167
  %174 = icmp sgt <8 x i32> %broadcast.splat13, %172
  %175 = extractelement <8 x i64> %166, i32 0
  %176 = shl i64 %175, 32
  %177 = ashr exact i64 %176, 32
  %178 = getelementptr inbounds float, float* %13, i64 %177
  %179 = bitcast float* %178 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %179, i32 4, <8 x i1> %173), !tbaa !12, !llvm.access.group !16
  %180 = getelementptr inbounds float, float* %178, i64 8
  %181 = bitcast float* %180 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %181, i32 4, <8 x i1> %174), !tbaa !12, !llvm.access.group !16
  %182 = or <8 x i64> %broadcast.splat, <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167>
  %183 = trunc <8 x i64> %182 to <8 x i32>
  %184 = trunc i64 %mul.i.i.i to i32
  %185 = or i32 %184, 8
  %186 = insertelement <8 x i32> undef, i32 %185, i64 0
  %187 = shufflevector <8 x i32> %186, <8 x i32> undef, <8 x i32> zeroinitializer
  %188 = or <8 x i32> %187, <i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167>
  %189 = icmp sgt <8 x i32> %broadcast.splat11, %183
  %190 = icmp sgt <8 x i32> %broadcast.splat13, %188
  %191 = extractelement <8 x i64> %182, i32 0
  %192 = shl i64 %191, 32
  %193 = ashr exact i64 %192, 32
  %194 = getelementptr inbounds float, float* %13, i64 %193
  %195 = bitcast float* %194 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %195, i32 4, <8 x i1> %189), !tbaa !12, !llvm.access.group !16
  %196 = getelementptr inbounds float, float* %194, i64 8
  %197 = bitcast float* %196 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %197, i32 4, <8 x i1> %190), !tbaa !12, !llvm.access.group !16
  %198 = or <8 x i64> %broadcast.splat, <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183>
  %199 = trunc <8 x i64> %198 to <8 x i32>
  %200 = trunc i64 %mul.i.i.i to i32
  %201 = or i32 %200, 8
  %202 = insertelement <8 x i32> undef, i32 %201, i64 0
  %203 = shufflevector <8 x i32> %202, <8 x i32> undef, <8 x i32> zeroinitializer
  %204 = or <8 x i32> %203, <i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183>
  %205 = icmp sgt <8 x i32> %broadcast.splat11, %199
  %206 = icmp sgt <8 x i32> %broadcast.splat13, %204
  %207 = extractelement <8 x i64> %198, i32 0
  %208 = shl i64 %207, 32
  %209 = ashr exact i64 %208, 32
  %210 = getelementptr inbounds float, float* %13, i64 %209
  %211 = bitcast float* %210 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %211, i32 4, <8 x i1> %205), !tbaa !12, !llvm.access.group !16
  %212 = getelementptr inbounds float, float* %210, i64 8
  %213 = bitcast float* %212 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %213, i32 4, <8 x i1> %206), !tbaa !12, !llvm.access.group !16
  %214 = or <8 x i64> %broadcast.splat, <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199>
  %215 = trunc <8 x i64> %214 to <8 x i32>
  %216 = trunc i64 %mul.i.i.i to i32
  %217 = or i32 %216, 8
  %218 = insertelement <8 x i32> undef, i32 %217, i64 0
  %219 = shufflevector <8 x i32> %218, <8 x i32> undef, <8 x i32> zeroinitializer
  %220 = or <8 x i32> %219, <i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199>
  %221 = icmp sgt <8 x i32> %broadcast.splat11, %215
  %222 = icmp sgt <8 x i32> %broadcast.splat13, %220
  %223 = extractelement <8 x i64> %214, i32 0
  %224 = shl i64 %223, 32
  %225 = ashr exact i64 %224, 32
  %226 = getelementptr inbounds float, float* %13, i64 %225
  %227 = bitcast float* %226 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %227, i32 4, <8 x i1> %221), !tbaa !12, !llvm.access.group !16
  %228 = getelementptr inbounds float, float* %226, i64 8
  %229 = bitcast float* %228 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %229, i32 4, <8 x i1> %222), !tbaa !12, !llvm.access.group !16
  %230 = or <8 x i64> %broadcast.splat, <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215>
  %231 = trunc <8 x i64> %230 to <8 x i32>
  %232 = trunc i64 %mul.i.i.i to i32
  %233 = or i32 %232, 8
  %234 = insertelement <8 x i32> undef, i32 %233, i64 0
  %235 = shufflevector <8 x i32> %234, <8 x i32> undef, <8 x i32> zeroinitializer
  %236 = or <8 x i32> %235, <i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215>
  %237 = icmp sgt <8 x i32> %broadcast.splat11, %231
  %238 = icmp sgt <8 x i32> %broadcast.splat13, %236
  %239 = extractelement <8 x i64> %230, i32 0
  %240 = shl i64 %239, 32
  %241 = ashr exact i64 %240, 32
  %242 = getelementptr inbounds float, float* %13, i64 %241
  %243 = bitcast float* %242 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %243, i32 4, <8 x i1> %237), !tbaa !12, !llvm.access.group !16
  %244 = getelementptr inbounds float, float* %242, i64 8
  %245 = bitcast float* %244 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %245, i32 4, <8 x i1> %238), !tbaa !12, !llvm.access.group !16
  %246 = or <8 x i64> %broadcast.splat, <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231>
  %247 = trunc <8 x i64> %246 to <8 x i32>
  %248 = trunc i64 %mul.i.i.i to i32
  %249 = or i32 %248, 8
  %250 = insertelement <8 x i32> undef, i32 %249, i64 0
  %251 = shufflevector <8 x i32> %250, <8 x i32> undef, <8 x i32> zeroinitializer
  %252 = or <8 x i32> %251, <i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231>
  %253 = icmp sgt <8 x i32> %broadcast.splat11, %247
  %254 = icmp sgt <8 x i32> %broadcast.splat13, %252
  %255 = extractelement <8 x i64> %246, i32 0
  %256 = shl i64 %255, 32
  %257 = ashr exact i64 %256, 32
  %258 = getelementptr inbounds float, float* %13, i64 %257
  %259 = bitcast float* %258 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %259, i32 4, <8 x i1> %253), !tbaa !12, !llvm.access.group !16
  %260 = getelementptr inbounds float, float* %258, i64 8
  %261 = bitcast float* %260 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %261, i32 4, <8 x i1> %254), !tbaa !12, !llvm.access.group !16
  %262 = or <8 x i64> %broadcast.splat, <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247>
  %263 = trunc <8 x i64> %262 to <8 x i32>
  %264 = trunc i64 %mul.i.i.i to i32
  %265 = or i32 %264, 8
  %266 = insertelement <8 x i32> undef, i32 %265, i64 0
  %267 = shufflevector <8 x i32> %266, <8 x i32> undef, <8 x i32> zeroinitializer
  %268 = or <8 x i32> %267, <i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247>
  %269 = icmp sgt <8 x i32> %broadcast.splat11, %263
  %270 = icmp sgt <8 x i32> %broadcast.splat13, %268
  %271 = extractelement <8 x i64> %262, i32 0
  %272 = shl i64 %271, 32
  %273 = ashr exact i64 %272, 32
  %274 = getelementptr inbounds float, float* %13, i64 %273
  %275 = bitcast float* %274 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %275, i32 4, <8 x i1> %269), !tbaa !12, !llvm.access.group !16
  %276 = getelementptr inbounds float, float* %274, i64 8
  %277 = bitcast float* %276 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %277, i32 4, <8 x i1> %270), !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_bicgKernel1.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %291, %if.end.i.i.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp sgt i32 %17, %conv.i.i.us
  br i1 %cmp.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %mul.i.i.us = mul nsw i32 %21, %conv.i.i.us
  %278 = sext i32 %mul.i.i.us to i64
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %if.then.i.i.us
  %indvars.iv.next.i.i2.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %if.then.i.i.us ]
  %279 = phi float [ %283, %for.body.i.i.us ], [ 0.000000e+00, %if.then.i.i.us ]
  %280 = add nsw i64 %indvars.iv.next.i.i2.us, %278
  %arrayidx5.i.i.us = getelementptr inbounds float, float* %7, i64 %280
  %281 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !12
  %arrayidx7.i.i.us = getelementptr inbounds float, float* %10, i64 %indvars.iv.next.i.i2.us
  %282 = load float, float* %arrayidx7.i.i.us, align 4, !tbaa !12
  %283 = tail call float @llvm.fmuladd.f32(float %281, float %282, float %279) #2
  store float %283, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i2.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %if.end.i.i.us.loopexit, label %for.body.i.i.us, !llvm.loop !18

if.end.i.i.us.loopexit:                           ; preds = %for.body.i.i.us
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.end.i.i.us.loopexit, %pregion_for_entry.entry.i.i.us
  %284 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %284, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp.i.i.us.1 = icmp sgt i32 %17, %conv.i.i.us.1
  br i1 %cmp.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

_pocl_kernel_bicgKernel1.exit.loopexit:           ; preds = %if.end.i.i.us.1
  br label %_pocl_kernel_bicgKernel1.exit

_pocl_kernel_bicgKernel1.exit:                    ; preds = %_pocl_kernel_bicgKernel1.exit.loopexit, %vector.ph
  ret void

if.then.i.i.us.1:                                 ; preds = %if.end.i.i.us
  %sext.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom.i.i.us.1 = ashr exact i64 %sext.i.i.us.1, 32
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %mul.i.i.us.1 = mul nsw i32 %21, %conv.i.i.us.1
  %285 = sext i32 %mul.i.i.us.1 to i64
  br label %for.body.i.i.us.1

for.body.i.i.us.1:                                ; preds = %for.body.i.i.us.1, %if.then.i.i.us.1
  %indvars.iv.next.i.i2.us.1 = phi i64 [ %indvars.iv.next.i.i.us.1, %for.body.i.i.us.1 ], [ 0, %if.then.i.i.us.1 ]
  %286 = phi float [ %290, %for.body.i.i.us.1 ], [ 0.000000e+00, %if.then.i.i.us.1 ]
  %287 = add nsw i64 %indvars.iv.next.i.i2.us.1, %285
  %arrayidx5.i.i.us.1 = getelementptr inbounds float, float* %7, i64 %287
  %288 = load float, float* %arrayidx5.i.i.us.1, align 4, !tbaa !12
  %arrayidx7.i.i.us.1 = getelementptr inbounds float, float* %10, i64 %indvars.iv.next.i.i2.us.1
  %289 = load float, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12
  %290 = tail call float @llvm.fmuladd.f32(float %288, float %289, float %286) #2
  store float %290, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.1 = add nuw nsw i64 %indvars.iv.next.i.i2.us.1, 1
  %exitcond.not.i.i.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.1, label %if.end.i.i.us.1.loopexit, label %for.body.i.i.us.1, !llvm.loop !18

if.end.i.i.us.1.loopexit:                         ; preds = %for.body.i.i.us.1
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.end.i.i.us.1.loopexit, %if.end.i.i.us
  %291 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %291, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_bicgKernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !20
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
!5 = !{i32 1, i32 1, i32 1, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !""}
!10 = !{!"A", !"p", !"q", !"nx", !"ny"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17}
!17 = distinct !{}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.parallel_accesses", !17}
