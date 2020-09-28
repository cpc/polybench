; ModuleID = './DC/PEIMDLPPEFFJPJMNMNJKJHDPNNPAAECGDPFEA/bicgKernel2/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_bicgKernel2(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, i32 %3, i32 %4, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %5, i64 %6, i64 %7, i64 %8) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %6, 8
  %cmp221.i = icmp sgt i32 %3, 0
  %10 = sext i32 %4 to i64
  %wide.trip.count.i = zext i32 %3 to i64
  br i1 %cmp221.i, label %pregion_for_entry.entry.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.us.preheader:           ; preds = %9
  br label %pregion_for_entry.entry.i.us

vector.ph:                                        ; preds = %9
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert11 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat12 = shufflevector <8 x i32> %broadcast.splatinsert11, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <8 x i32> undef, i32 %4, i32 0
  %broadcast.splat14 = shufflevector <8 x i32> %broadcast.splatinsert13, <8 x i32> undef, <8 x i32> zeroinitializer
  %11 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %12 = trunc <8 x i64> %11 to <8 x i32>
  %13 = trunc i64 %mul.i.i to i32
  %14 = or i32 %13, 8
  %15 = insertelement <8 x i32> undef, i32 %14, i64 0
  %16 = shufflevector <8 x i32> %15, <8 x i32> undef, <8 x i32> zeroinitializer
  %17 = or <8 x i32> %16, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %18 = icmp sgt <8 x i32> %broadcast.splat12, %12
  %19 = icmp sgt <8 x i32> %broadcast.splat14, %17
  %20 = extractelement <8 x i64> %11, i32 0
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = getelementptr inbounds float, float* %2, i64 %22
  %24 = bitcast float* %23 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %24, i32 4, <8 x i1> %18), !tbaa !12, !llvm.access.group !16
  %25 = getelementptr inbounds float, float* %23, i64 8
  %26 = bitcast float* %25 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %26, i32 4, <8 x i1> %19), !tbaa !12, !llvm.access.group !16
  %27 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %28 = trunc <8 x i64> %27 to <8 x i32>
  %29 = trunc i64 %mul.i.i to i32
  %30 = or i32 %29, 8
  %31 = insertelement <8 x i32> undef, i32 %30, i64 0
  %32 = shufflevector <8 x i32> %31, <8 x i32> undef, <8 x i32> zeroinitializer
  %33 = or <8 x i32> %32, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %34 = icmp sgt <8 x i32> %broadcast.splat12, %28
  %35 = icmp sgt <8 x i32> %broadcast.splat14, %33
  %36 = extractelement <8 x i64> %27, i32 0
  %37 = shl i64 %36, 32
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds float, float* %2, i64 %38
  %40 = bitcast float* %39 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %40, i32 4, <8 x i1> %34), !tbaa !12, !llvm.access.group !16
  %41 = getelementptr inbounds float, float* %39, i64 8
  %42 = bitcast float* %41 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %42, i32 4, <8 x i1> %35), !tbaa !12, !llvm.access.group !16
  %43 = or <8 x i64> %broadcast.splat, <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39>
  %44 = trunc <8 x i64> %43 to <8 x i32>
  %45 = trunc i64 %mul.i.i to i32
  %46 = or i32 %45, 8
  %47 = insertelement <8 x i32> undef, i32 %46, i64 0
  %48 = shufflevector <8 x i32> %47, <8 x i32> undef, <8 x i32> zeroinitializer
  %49 = or <8 x i32> %48, <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %50 = icmp sgt <8 x i32> %broadcast.splat12, %44
  %51 = icmp sgt <8 x i32> %broadcast.splat14, %49
  %52 = extractelement <8 x i64> %43, i32 0
  %53 = shl i64 %52, 32
  %54 = ashr exact i64 %53, 32
  %55 = getelementptr inbounds float, float* %2, i64 %54
  %56 = bitcast float* %55 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %56, i32 4, <8 x i1> %50), !tbaa !12, !llvm.access.group !16
  %57 = getelementptr inbounds float, float* %55, i64 8
  %58 = bitcast float* %57 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %58, i32 4, <8 x i1> %51), !tbaa !12, !llvm.access.group !16
  %59 = or <8 x i64> %broadcast.splat, <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55>
  %60 = trunc <8 x i64> %59 to <8 x i32>
  %61 = trunc i64 %mul.i.i to i32
  %62 = or i32 %61, 8
  %63 = insertelement <8 x i32> undef, i32 %62, i64 0
  %64 = shufflevector <8 x i32> %63, <8 x i32> undef, <8 x i32> zeroinitializer
  %65 = or <8 x i32> %64, <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %66 = icmp sgt <8 x i32> %broadcast.splat12, %60
  %67 = icmp sgt <8 x i32> %broadcast.splat14, %65
  %68 = extractelement <8 x i64> %59, i32 0
  %69 = shl i64 %68, 32
  %70 = ashr exact i64 %69, 32
  %71 = getelementptr inbounds float, float* %2, i64 %70
  %72 = bitcast float* %71 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %72, i32 4, <8 x i1> %66), !tbaa !12, !llvm.access.group !16
  %73 = getelementptr inbounds float, float* %71, i64 8
  %74 = bitcast float* %73 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %74, i32 4, <8 x i1> %67), !tbaa !12, !llvm.access.group !16
  %75 = or <8 x i64> %broadcast.splat, <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71>
  %76 = trunc <8 x i64> %75 to <8 x i32>
  %77 = trunc i64 %mul.i.i to i32
  %78 = or i32 %77, 8
  %79 = insertelement <8 x i32> undef, i32 %78, i64 0
  %80 = shufflevector <8 x i32> %79, <8 x i32> undef, <8 x i32> zeroinitializer
  %81 = or <8 x i32> %80, <i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71>
  %82 = icmp sgt <8 x i32> %broadcast.splat12, %76
  %83 = icmp sgt <8 x i32> %broadcast.splat14, %81
  %84 = extractelement <8 x i64> %75, i32 0
  %85 = shl i64 %84, 32
  %86 = ashr exact i64 %85, 32
  %87 = getelementptr inbounds float, float* %2, i64 %86
  %88 = bitcast float* %87 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %88, i32 4, <8 x i1> %82), !tbaa !12, !llvm.access.group !16
  %89 = getelementptr inbounds float, float* %87, i64 8
  %90 = bitcast float* %89 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %90, i32 4, <8 x i1> %83), !tbaa !12, !llvm.access.group !16
  %91 = or <8 x i64> %broadcast.splat, <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87>
  %92 = trunc <8 x i64> %91 to <8 x i32>
  %93 = trunc i64 %mul.i.i to i32
  %94 = or i32 %93, 8
  %95 = insertelement <8 x i32> undef, i32 %94, i64 0
  %96 = shufflevector <8 x i32> %95, <8 x i32> undef, <8 x i32> zeroinitializer
  %97 = or <8 x i32> %96, <i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87>
  %98 = icmp sgt <8 x i32> %broadcast.splat12, %92
  %99 = icmp sgt <8 x i32> %broadcast.splat14, %97
  %100 = extractelement <8 x i64> %91, i32 0
  %101 = shl i64 %100, 32
  %102 = ashr exact i64 %101, 32
  %103 = getelementptr inbounds float, float* %2, i64 %102
  %104 = bitcast float* %103 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %104, i32 4, <8 x i1> %98), !tbaa !12, !llvm.access.group !16
  %105 = getelementptr inbounds float, float* %103, i64 8
  %106 = bitcast float* %105 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %106, i32 4, <8 x i1> %99), !tbaa !12, !llvm.access.group !16
  %107 = or <8 x i64> %broadcast.splat, <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103>
  %108 = trunc <8 x i64> %107 to <8 x i32>
  %109 = trunc i64 %mul.i.i to i32
  %110 = or i32 %109, 8
  %111 = insertelement <8 x i32> undef, i32 %110, i64 0
  %112 = shufflevector <8 x i32> %111, <8 x i32> undef, <8 x i32> zeroinitializer
  %113 = or <8 x i32> %112, <i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103>
  %114 = icmp sgt <8 x i32> %broadcast.splat12, %108
  %115 = icmp sgt <8 x i32> %broadcast.splat14, %113
  %116 = extractelement <8 x i64> %107, i32 0
  %117 = shl i64 %116, 32
  %118 = ashr exact i64 %117, 32
  %119 = getelementptr inbounds float, float* %2, i64 %118
  %120 = bitcast float* %119 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %120, i32 4, <8 x i1> %114), !tbaa !12, !llvm.access.group !16
  %121 = getelementptr inbounds float, float* %119, i64 8
  %122 = bitcast float* %121 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %122, i32 4, <8 x i1> %115), !tbaa !12, !llvm.access.group !16
  %123 = or <8 x i64> %broadcast.splat, <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119>
  %124 = trunc <8 x i64> %123 to <8 x i32>
  %125 = trunc i64 %mul.i.i to i32
  %126 = or i32 %125, 8
  %127 = insertelement <8 x i32> undef, i32 %126, i64 0
  %128 = shufflevector <8 x i32> %127, <8 x i32> undef, <8 x i32> zeroinitializer
  %129 = or <8 x i32> %128, <i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119>
  %130 = icmp sgt <8 x i32> %broadcast.splat12, %124
  %131 = icmp sgt <8 x i32> %broadcast.splat14, %129
  %132 = extractelement <8 x i64> %123, i32 0
  %133 = shl i64 %132, 32
  %134 = ashr exact i64 %133, 32
  %135 = getelementptr inbounds float, float* %2, i64 %134
  %136 = bitcast float* %135 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %136, i32 4, <8 x i1> %130), !tbaa !12, !llvm.access.group !16
  %137 = getelementptr inbounds float, float* %135, i64 8
  %138 = bitcast float* %137 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %138, i32 4, <8 x i1> %131), !tbaa !12, !llvm.access.group !16
  %139 = or <8 x i64> %broadcast.splat, <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135>
  %140 = trunc <8 x i64> %139 to <8 x i32>
  %141 = trunc i64 %mul.i.i to i32
  %142 = or i32 %141, 8
  %143 = insertelement <8 x i32> undef, i32 %142, i64 0
  %144 = shufflevector <8 x i32> %143, <8 x i32> undef, <8 x i32> zeroinitializer
  %145 = or <8 x i32> %144, <i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135>
  %146 = icmp sgt <8 x i32> %broadcast.splat12, %140
  %147 = icmp sgt <8 x i32> %broadcast.splat14, %145
  %148 = extractelement <8 x i64> %139, i32 0
  %149 = shl i64 %148, 32
  %150 = ashr exact i64 %149, 32
  %151 = getelementptr inbounds float, float* %2, i64 %150
  %152 = bitcast float* %151 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %152, i32 4, <8 x i1> %146), !tbaa !12, !llvm.access.group !16
  %153 = getelementptr inbounds float, float* %151, i64 8
  %154 = bitcast float* %153 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %154, i32 4, <8 x i1> %147), !tbaa !12, !llvm.access.group !16
  %155 = or <8 x i64> %broadcast.splat, <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151>
  %156 = trunc <8 x i64> %155 to <8 x i32>
  %157 = trunc i64 %mul.i.i to i32
  %158 = or i32 %157, 8
  %159 = insertelement <8 x i32> undef, i32 %158, i64 0
  %160 = shufflevector <8 x i32> %159, <8 x i32> undef, <8 x i32> zeroinitializer
  %161 = or <8 x i32> %160, <i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151>
  %162 = icmp sgt <8 x i32> %broadcast.splat12, %156
  %163 = icmp sgt <8 x i32> %broadcast.splat14, %161
  %164 = extractelement <8 x i64> %155, i32 0
  %165 = shl i64 %164, 32
  %166 = ashr exact i64 %165, 32
  %167 = getelementptr inbounds float, float* %2, i64 %166
  %168 = bitcast float* %167 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %168, i32 4, <8 x i1> %162), !tbaa !12, !llvm.access.group !16
  %169 = getelementptr inbounds float, float* %167, i64 8
  %170 = bitcast float* %169 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %170, i32 4, <8 x i1> %163), !tbaa !12, !llvm.access.group !16
  %171 = or <8 x i64> %broadcast.splat, <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167>
  %172 = trunc <8 x i64> %171 to <8 x i32>
  %173 = trunc i64 %mul.i.i to i32
  %174 = or i32 %173, 8
  %175 = insertelement <8 x i32> undef, i32 %174, i64 0
  %176 = shufflevector <8 x i32> %175, <8 x i32> undef, <8 x i32> zeroinitializer
  %177 = or <8 x i32> %176, <i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167>
  %178 = icmp sgt <8 x i32> %broadcast.splat12, %172
  %179 = icmp sgt <8 x i32> %broadcast.splat14, %177
  %180 = extractelement <8 x i64> %171, i32 0
  %181 = shl i64 %180, 32
  %182 = ashr exact i64 %181, 32
  %183 = getelementptr inbounds float, float* %2, i64 %182
  %184 = bitcast float* %183 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %184, i32 4, <8 x i1> %178), !tbaa !12, !llvm.access.group !16
  %185 = getelementptr inbounds float, float* %183, i64 8
  %186 = bitcast float* %185 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %186, i32 4, <8 x i1> %179), !tbaa !12, !llvm.access.group !16
  %187 = or <8 x i64> %broadcast.splat, <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183>
  %188 = trunc <8 x i64> %187 to <8 x i32>
  %189 = trunc i64 %mul.i.i to i32
  %190 = or i32 %189, 8
  %191 = insertelement <8 x i32> undef, i32 %190, i64 0
  %192 = shufflevector <8 x i32> %191, <8 x i32> undef, <8 x i32> zeroinitializer
  %193 = or <8 x i32> %192, <i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183>
  %194 = icmp sgt <8 x i32> %broadcast.splat12, %188
  %195 = icmp sgt <8 x i32> %broadcast.splat14, %193
  %196 = extractelement <8 x i64> %187, i32 0
  %197 = shl i64 %196, 32
  %198 = ashr exact i64 %197, 32
  %199 = getelementptr inbounds float, float* %2, i64 %198
  %200 = bitcast float* %199 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %200, i32 4, <8 x i1> %194), !tbaa !12, !llvm.access.group !16
  %201 = getelementptr inbounds float, float* %199, i64 8
  %202 = bitcast float* %201 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %202, i32 4, <8 x i1> %195), !tbaa !12, !llvm.access.group !16
  %203 = or <8 x i64> %broadcast.splat, <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199>
  %204 = trunc <8 x i64> %203 to <8 x i32>
  %205 = trunc i64 %mul.i.i to i32
  %206 = or i32 %205, 8
  %207 = insertelement <8 x i32> undef, i32 %206, i64 0
  %208 = shufflevector <8 x i32> %207, <8 x i32> undef, <8 x i32> zeroinitializer
  %209 = or <8 x i32> %208, <i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199>
  %210 = icmp sgt <8 x i32> %broadcast.splat12, %204
  %211 = icmp sgt <8 x i32> %broadcast.splat14, %209
  %212 = extractelement <8 x i64> %203, i32 0
  %213 = shl i64 %212, 32
  %214 = ashr exact i64 %213, 32
  %215 = getelementptr inbounds float, float* %2, i64 %214
  %216 = bitcast float* %215 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %216, i32 4, <8 x i1> %210), !tbaa !12, !llvm.access.group !16
  %217 = getelementptr inbounds float, float* %215, i64 8
  %218 = bitcast float* %217 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %218, i32 4, <8 x i1> %211), !tbaa !12, !llvm.access.group !16
  %219 = or <8 x i64> %broadcast.splat, <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215>
  %220 = trunc <8 x i64> %219 to <8 x i32>
  %221 = trunc i64 %mul.i.i to i32
  %222 = or i32 %221, 8
  %223 = insertelement <8 x i32> undef, i32 %222, i64 0
  %224 = shufflevector <8 x i32> %223, <8 x i32> undef, <8 x i32> zeroinitializer
  %225 = or <8 x i32> %224, <i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215>
  %226 = icmp sgt <8 x i32> %broadcast.splat12, %220
  %227 = icmp sgt <8 x i32> %broadcast.splat14, %225
  %228 = extractelement <8 x i64> %219, i32 0
  %229 = shl i64 %228, 32
  %230 = ashr exact i64 %229, 32
  %231 = getelementptr inbounds float, float* %2, i64 %230
  %232 = bitcast float* %231 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %232, i32 4, <8 x i1> %226), !tbaa !12, !llvm.access.group !16
  %233 = getelementptr inbounds float, float* %231, i64 8
  %234 = bitcast float* %233 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %234, i32 4, <8 x i1> %227), !tbaa !12, !llvm.access.group !16
  %235 = or <8 x i64> %broadcast.splat, <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231>
  %236 = trunc <8 x i64> %235 to <8 x i32>
  %237 = trunc i64 %mul.i.i to i32
  %238 = or i32 %237, 8
  %239 = insertelement <8 x i32> undef, i32 %238, i64 0
  %240 = shufflevector <8 x i32> %239, <8 x i32> undef, <8 x i32> zeroinitializer
  %241 = or <8 x i32> %240, <i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231>
  %242 = icmp sgt <8 x i32> %broadcast.splat12, %236
  %243 = icmp sgt <8 x i32> %broadcast.splat14, %241
  %244 = extractelement <8 x i64> %235, i32 0
  %245 = shl i64 %244, 32
  %246 = ashr exact i64 %245, 32
  %247 = getelementptr inbounds float, float* %2, i64 %246
  %248 = bitcast float* %247 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %248, i32 4, <8 x i1> %242), !tbaa !12, !llvm.access.group !16
  %249 = getelementptr inbounds float, float* %247, i64 8
  %250 = bitcast float* %249 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %250, i32 4, <8 x i1> %243), !tbaa !12, !llvm.access.group !16
  %251 = or <8 x i64> %broadcast.splat, <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247>
  %252 = trunc <8 x i64> %251 to <8 x i32>
  %253 = trunc i64 %mul.i.i to i32
  %254 = or i32 %253, 8
  %255 = insertelement <8 x i32> undef, i32 %254, i64 0
  %256 = shufflevector <8 x i32> %255, <8 x i32> undef, <8 x i32> zeroinitializer
  %257 = or <8 x i32> %256, <i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247>
  %258 = icmp sgt <8 x i32> %broadcast.splat12, %252
  %259 = icmp sgt <8 x i32> %broadcast.splat14, %257
  %260 = extractelement <8 x i64> %251, i32 0
  %261 = shl i64 %260, 32
  %262 = ashr exact i64 %261, 32
  %263 = getelementptr inbounds float, float* %2, i64 %262
  %264 = bitcast float* %263 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %264, i32 4, <8 x i1> %258), !tbaa !12, !llvm.access.group !16
  %265 = getelementptr inbounds float, float* %263, i64 8
  %266 = bitcast float* %265 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %266, i32 4, <8 x i1> %259), !tbaa !12, !llvm.access.group !16
  br label %bicgKernel2.exit

pregion_for_entry.entry.i.us:                     ; preds = %if.end.i.us.1, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %280, %if.end.i.us.1 ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp.i.us = icmp slt i32 %conv.i.us, %4
  br i1 %cmp.i.us, label %if.then.i.us, label %if.end.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %sext.i.us = shl i64 %add1.i.i.us, 32
  %idxprom.i.us = ashr exact i64 %sext.i.us, 32
  %arrayidx.i.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us
  store float 0.000000e+00, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %if.then.i.us
  %indvars.iv.next.i3.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %if.then.i.us ]
  %267 = phi float [ %272, %for.body.i.us ], [ 0.000000e+00, %if.then.i.us ]
  %268 = mul nsw i64 %indvars.iv.next.i3.us, %10
  %269 = add nsw i64 %268, %idxprom.i.us
  %arrayidx5.i.us = getelementptr inbounds float, float* %0, i64 %269
  %270 = load float, float* %arrayidx5.i.us, align 4, !tbaa !12
  %arrayidx7.i.us = getelementptr inbounds float, float* %1, i64 %indvars.iv.next.i3.us
  %271 = load float, float* %arrayidx7.i.us, align 4, !tbaa !12
  %272 = tail call float @llvm.fmuladd.f32(float %270, float %271, float %267) #2
  store float %272, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i3.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %if.end.i.us.loopexit, label %for.body.i.us, !llvm.loop !18

if.end.i.us.loopexit:                             ; preds = %for.body.i.us
  br label %if.end.i.us

if.end.i.us:                                      ; preds = %if.end.i.us.loopexit, %pregion_for_entry.entry.i.us
  %273 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1 = add nuw nsw i64 %273, %mul.i.i
  %conv.i.us.1 = trunc i64 %add1.i.i.us.1 to i32
  %cmp.i.us.1 = icmp slt i32 %conv.i.us.1, %4
  br i1 %cmp.i.us.1, label %if.then.i.us.1, label %if.end.i.us.1

bicgKernel2.exit.loopexit:                        ; preds = %if.end.i.us.1
  br label %bicgKernel2.exit

bicgKernel2.exit:                                 ; preds = %bicgKernel2.exit.loopexit, %vector.ph
  ret void

if.then.i.us.1:                                   ; preds = %if.end.i.us
  %sext.i.us.1 = shl i64 %add1.i.i.us.1, 32
  %idxprom.i.us.1 = ashr exact i64 %sext.i.us.1, 32
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.us.1

for.body.i.us.1:                                  ; preds = %for.body.i.us.1, %if.then.i.us.1
  %indvars.iv.next.i3.us.1 = phi i64 [ %indvars.iv.next.i.us.1, %for.body.i.us.1 ], [ 0, %if.then.i.us.1 ]
  %274 = phi float [ %279, %for.body.i.us.1 ], [ 0.000000e+00, %if.then.i.us.1 ]
  %275 = mul nsw i64 %indvars.iv.next.i3.us.1, %10
  %276 = add nsw i64 %275, %idxprom.i.us.1
  %arrayidx5.i.us.1 = getelementptr inbounds float, float* %0, i64 %276
  %277 = load float, float* %arrayidx5.i.us.1, align 4, !tbaa !12
  %arrayidx7.i.us.1 = getelementptr inbounds float, float* %1, i64 %indvars.iv.next.i3.us.1
  %278 = load float, float* %arrayidx7.i.us.1, align 4, !tbaa !12
  %279 = tail call float @llvm.fmuladd.f32(float %277, float %278, float %274) #2
  store float %279, float* %arrayidx.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.next.i3.us.1, 1
  %exitcond.not.i.us.1 = icmp eq i64 %indvars.iv.next.i.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.1, label %if.end.i.us.1.loopexit, label %for.body.i.us.1, !llvm.loop !18

if.end.i.us.1.loopexit:                           ; preds = %for.body.i.us.1
  br label %if.end.i.us.1

if.end.i.us.1:                                    ; preds = %if.end.i.us.1.loopexit, %if.end.i.us
  %280 = add nuw nsw i64 %_local_id_x.0.us, 2
  %exitcond.not.1 = icmp eq i64 %280, 256
  br i1 %exitcond.not.1, label %bicgKernel2.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !20
}

; Function Attrs: nounwind
define void @_pocl_kernel_bicgKernel2_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %cmp221.i.i = icmp sgt i32 %20, 0
  %25 = sext i32 %24 to i64
  %wide.trip.count.i.i = zext i32 %20 to i64
  br i1 %cmp221.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.ph:                                        ; preds = %5
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert11 = insertelement <8 x i32> undef, i32 %24, i32 0
  %broadcast.splat12 = shufflevector <8 x i32> %broadcast.splatinsert11, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <8 x i32> undef, i32 %24, i32 0
  %broadcast.splat14 = shufflevector <8 x i32> %broadcast.splatinsert13, <8 x i32> undef, <8 x i32> zeroinitializer
  %26 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %27 = trunc <8 x i64> %26 to <8 x i32>
  %28 = trunc i64 %mul.i.i.i to i32
  %29 = or i32 %28, 8
  %30 = insertelement <8 x i32> undef, i32 %29, i64 0
  %31 = shufflevector <8 x i32> %30, <8 x i32> undef, <8 x i32> zeroinitializer
  %32 = or <8 x i32> %31, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %33 = icmp sgt <8 x i32> %broadcast.splat12, %27
  %34 = icmp sgt <8 x i32> %broadcast.splat14, %32
  %35 = extractelement <8 x i64> %26, i32 0
  %36 = shl i64 %35, 32
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds float, float* %16, i64 %37
  %39 = bitcast float* %38 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %39, i32 4, <8 x i1> %33), !tbaa !12, !llvm.access.group !16
  %40 = getelementptr inbounds float, float* %38, i64 8
  %41 = bitcast float* %40 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %41, i32 4, <8 x i1> %34), !tbaa !12, !llvm.access.group !16
  %42 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %43 = trunc <8 x i64> %42 to <8 x i32>
  %44 = trunc i64 %mul.i.i.i to i32
  %45 = or i32 %44, 8
  %46 = insertelement <8 x i32> undef, i32 %45, i64 0
  %47 = shufflevector <8 x i32> %46, <8 x i32> undef, <8 x i32> zeroinitializer
  %48 = or <8 x i32> %47, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %49 = icmp sgt <8 x i32> %broadcast.splat12, %43
  %50 = icmp sgt <8 x i32> %broadcast.splat14, %48
  %51 = extractelement <8 x i64> %42, i32 0
  %52 = shl i64 %51, 32
  %53 = ashr exact i64 %52, 32
  %54 = getelementptr inbounds float, float* %16, i64 %53
  %55 = bitcast float* %54 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %55, i32 4, <8 x i1> %49), !tbaa !12, !llvm.access.group !16
  %56 = getelementptr inbounds float, float* %54, i64 8
  %57 = bitcast float* %56 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %57, i32 4, <8 x i1> %50), !tbaa !12, !llvm.access.group !16
  %58 = or <8 x i64> %broadcast.splat, <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39>
  %59 = trunc <8 x i64> %58 to <8 x i32>
  %60 = trunc i64 %mul.i.i.i to i32
  %61 = or i32 %60, 8
  %62 = insertelement <8 x i32> undef, i32 %61, i64 0
  %63 = shufflevector <8 x i32> %62, <8 x i32> undef, <8 x i32> zeroinitializer
  %64 = or <8 x i32> %63, <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %65 = icmp sgt <8 x i32> %broadcast.splat12, %59
  %66 = icmp sgt <8 x i32> %broadcast.splat14, %64
  %67 = extractelement <8 x i64> %58, i32 0
  %68 = shl i64 %67, 32
  %69 = ashr exact i64 %68, 32
  %70 = getelementptr inbounds float, float* %16, i64 %69
  %71 = bitcast float* %70 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %71, i32 4, <8 x i1> %65), !tbaa !12, !llvm.access.group !16
  %72 = getelementptr inbounds float, float* %70, i64 8
  %73 = bitcast float* %72 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %73, i32 4, <8 x i1> %66), !tbaa !12, !llvm.access.group !16
  %74 = or <8 x i64> %broadcast.splat, <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55>
  %75 = trunc <8 x i64> %74 to <8 x i32>
  %76 = trunc i64 %mul.i.i.i to i32
  %77 = or i32 %76, 8
  %78 = insertelement <8 x i32> undef, i32 %77, i64 0
  %79 = shufflevector <8 x i32> %78, <8 x i32> undef, <8 x i32> zeroinitializer
  %80 = or <8 x i32> %79, <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %81 = icmp sgt <8 x i32> %broadcast.splat12, %75
  %82 = icmp sgt <8 x i32> %broadcast.splat14, %80
  %83 = extractelement <8 x i64> %74, i32 0
  %84 = shl i64 %83, 32
  %85 = ashr exact i64 %84, 32
  %86 = getelementptr inbounds float, float* %16, i64 %85
  %87 = bitcast float* %86 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %87, i32 4, <8 x i1> %81), !tbaa !12, !llvm.access.group !16
  %88 = getelementptr inbounds float, float* %86, i64 8
  %89 = bitcast float* %88 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %89, i32 4, <8 x i1> %82), !tbaa !12, !llvm.access.group !16
  %90 = or <8 x i64> %broadcast.splat, <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71>
  %91 = trunc <8 x i64> %90 to <8 x i32>
  %92 = trunc i64 %mul.i.i.i to i32
  %93 = or i32 %92, 8
  %94 = insertelement <8 x i32> undef, i32 %93, i64 0
  %95 = shufflevector <8 x i32> %94, <8 x i32> undef, <8 x i32> zeroinitializer
  %96 = or <8 x i32> %95, <i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71>
  %97 = icmp sgt <8 x i32> %broadcast.splat12, %91
  %98 = icmp sgt <8 x i32> %broadcast.splat14, %96
  %99 = extractelement <8 x i64> %90, i32 0
  %100 = shl i64 %99, 32
  %101 = ashr exact i64 %100, 32
  %102 = getelementptr inbounds float, float* %16, i64 %101
  %103 = bitcast float* %102 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %103, i32 4, <8 x i1> %97), !tbaa !12, !llvm.access.group !16
  %104 = getelementptr inbounds float, float* %102, i64 8
  %105 = bitcast float* %104 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %105, i32 4, <8 x i1> %98), !tbaa !12, !llvm.access.group !16
  %106 = or <8 x i64> %broadcast.splat, <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87>
  %107 = trunc <8 x i64> %106 to <8 x i32>
  %108 = trunc i64 %mul.i.i.i to i32
  %109 = or i32 %108, 8
  %110 = insertelement <8 x i32> undef, i32 %109, i64 0
  %111 = shufflevector <8 x i32> %110, <8 x i32> undef, <8 x i32> zeroinitializer
  %112 = or <8 x i32> %111, <i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87>
  %113 = icmp sgt <8 x i32> %broadcast.splat12, %107
  %114 = icmp sgt <8 x i32> %broadcast.splat14, %112
  %115 = extractelement <8 x i64> %106, i32 0
  %116 = shl i64 %115, 32
  %117 = ashr exact i64 %116, 32
  %118 = getelementptr inbounds float, float* %16, i64 %117
  %119 = bitcast float* %118 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %119, i32 4, <8 x i1> %113), !tbaa !12, !llvm.access.group !16
  %120 = getelementptr inbounds float, float* %118, i64 8
  %121 = bitcast float* %120 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %121, i32 4, <8 x i1> %114), !tbaa !12, !llvm.access.group !16
  %122 = or <8 x i64> %broadcast.splat, <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103>
  %123 = trunc <8 x i64> %122 to <8 x i32>
  %124 = trunc i64 %mul.i.i.i to i32
  %125 = or i32 %124, 8
  %126 = insertelement <8 x i32> undef, i32 %125, i64 0
  %127 = shufflevector <8 x i32> %126, <8 x i32> undef, <8 x i32> zeroinitializer
  %128 = or <8 x i32> %127, <i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103>
  %129 = icmp sgt <8 x i32> %broadcast.splat12, %123
  %130 = icmp sgt <8 x i32> %broadcast.splat14, %128
  %131 = extractelement <8 x i64> %122, i32 0
  %132 = shl i64 %131, 32
  %133 = ashr exact i64 %132, 32
  %134 = getelementptr inbounds float, float* %16, i64 %133
  %135 = bitcast float* %134 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %135, i32 4, <8 x i1> %129), !tbaa !12, !llvm.access.group !16
  %136 = getelementptr inbounds float, float* %134, i64 8
  %137 = bitcast float* %136 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %137, i32 4, <8 x i1> %130), !tbaa !12, !llvm.access.group !16
  %138 = or <8 x i64> %broadcast.splat, <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119>
  %139 = trunc <8 x i64> %138 to <8 x i32>
  %140 = trunc i64 %mul.i.i.i to i32
  %141 = or i32 %140, 8
  %142 = insertelement <8 x i32> undef, i32 %141, i64 0
  %143 = shufflevector <8 x i32> %142, <8 x i32> undef, <8 x i32> zeroinitializer
  %144 = or <8 x i32> %143, <i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119>
  %145 = icmp sgt <8 x i32> %broadcast.splat12, %139
  %146 = icmp sgt <8 x i32> %broadcast.splat14, %144
  %147 = extractelement <8 x i64> %138, i32 0
  %148 = shl i64 %147, 32
  %149 = ashr exact i64 %148, 32
  %150 = getelementptr inbounds float, float* %16, i64 %149
  %151 = bitcast float* %150 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %151, i32 4, <8 x i1> %145), !tbaa !12, !llvm.access.group !16
  %152 = getelementptr inbounds float, float* %150, i64 8
  %153 = bitcast float* %152 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %153, i32 4, <8 x i1> %146), !tbaa !12, !llvm.access.group !16
  %154 = or <8 x i64> %broadcast.splat, <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135>
  %155 = trunc <8 x i64> %154 to <8 x i32>
  %156 = trunc i64 %mul.i.i.i to i32
  %157 = or i32 %156, 8
  %158 = insertelement <8 x i32> undef, i32 %157, i64 0
  %159 = shufflevector <8 x i32> %158, <8 x i32> undef, <8 x i32> zeroinitializer
  %160 = or <8 x i32> %159, <i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135>
  %161 = icmp sgt <8 x i32> %broadcast.splat12, %155
  %162 = icmp sgt <8 x i32> %broadcast.splat14, %160
  %163 = extractelement <8 x i64> %154, i32 0
  %164 = shl i64 %163, 32
  %165 = ashr exact i64 %164, 32
  %166 = getelementptr inbounds float, float* %16, i64 %165
  %167 = bitcast float* %166 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %167, i32 4, <8 x i1> %161), !tbaa !12, !llvm.access.group !16
  %168 = getelementptr inbounds float, float* %166, i64 8
  %169 = bitcast float* %168 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %169, i32 4, <8 x i1> %162), !tbaa !12, !llvm.access.group !16
  %170 = or <8 x i64> %broadcast.splat, <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151>
  %171 = trunc <8 x i64> %170 to <8 x i32>
  %172 = trunc i64 %mul.i.i.i to i32
  %173 = or i32 %172, 8
  %174 = insertelement <8 x i32> undef, i32 %173, i64 0
  %175 = shufflevector <8 x i32> %174, <8 x i32> undef, <8 x i32> zeroinitializer
  %176 = or <8 x i32> %175, <i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151>
  %177 = icmp sgt <8 x i32> %broadcast.splat12, %171
  %178 = icmp sgt <8 x i32> %broadcast.splat14, %176
  %179 = extractelement <8 x i64> %170, i32 0
  %180 = shl i64 %179, 32
  %181 = ashr exact i64 %180, 32
  %182 = getelementptr inbounds float, float* %16, i64 %181
  %183 = bitcast float* %182 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %183, i32 4, <8 x i1> %177), !tbaa !12, !llvm.access.group !16
  %184 = getelementptr inbounds float, float* %182, i64 8
  %185 = bitcast float* %184 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %185, i32 4, <8 x i1> %178), !tbaa !12, !llvm.access.group !16
  %186 = or <8 x i64> %broadcast.splat, <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167>
  %187 = trunc <8 x i64> %186 to <8 x i32>
  %188 = trunc i64 %mul.i.i.i to i32
  %189 = or i32 %188, 8
  %190 = insertelement <8 x i32> undef, i32 %189, i64 0
  %191 = shufflevector <8 x i32> %190, <8 x i32> undef, <8 x i32> zeroinitializer
  %192 = or <8 x i32> %191, <i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167>
  %193 = icmp sgt <8 x i32> %broadcast.splat12, %187
  %194 = icmp sgt <8 x i32> %broadcast.splat14, %192
  %195 = extractelement <8 x i64> %186, i32 0
  %196 = shl i64 %195, 32
  %197 = ashr exact i64 %196, 32
  %198 = getelementptr inbounds float, float* %16, i64 %197
  %199 = bitcast float* %198 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %199, i32 4, <8 x i1> %193), !tbaa !12, !llvm.access.group !16
  %200 = getelementptr inbounds float, float* %198, i64 8
  %201 = bitcast float* %200 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %201, i32 4, <8 x i1> %194), !tbaa !12, !llvm.access.group !16
  %202 = or <8 x i64> %broadcast.splat, <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183>
  %203 = trunc <8 x i64> %202 to <8 x i32>
  %204 = trunc i64 %mul.i.i.i to i32
  %205 = or i32 %204, 8
  %206 = insertelement <8 x i32> undef, i32 %205, i64 0
  %207 = shufflevector <8 x i32> %206, <8 x i32> undef, <8 x i32> zeroinitializer
  %208 = or <8 x i32> %207, <i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183>
  %209 = icmp sgt <8 x i32> %broadcast.splat12, %203
  %210 = icmp sgt <8 x i32> %broadcast.splat14, %208
  %211 = extractelement <8 x i64> %202, i32 0
  %212 = shl i64 %211, 32
  %213 = ashr exact i64 %212, 32
  %214 = getelementptr inbounds float, float* %16, i64 %213
  %215 = bitcast float* %214 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %215, i32 4, <8 x i1> %209), !tbaa !12, !llvm.access.group !16
  %216 = getelementptr inbounds float, float* %214, i64 8
  %217 = bitcast float* %216 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %217, i32 4, <8 x i1> %210), !tbaa !12, !llvm.access.group !16
  %218 = or <8 x i64> %broadcast.splat, <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199>
  %219 = trunc <8 x i64> %218 to <8 x i32>
  %220 = trunc i64 %mul.i.i.i to i32
  %221 = or i32 %220, 8
  %222 = insertelement <8 x i32> undef, i32 %221, i64 0
  %223 = shufflevector <8 x i32> %222, <8 x i32> undef, <8 x i32> zeroinitializer
  %224 = or <8 x i32> %223, <i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199>
  %225 = icmp sgt <8 x i32> %broadcast.splat12, %219
  %226 = icmp sgt <8 x i32> %broadcast.splat14, %224
  %227 = extractelement <8 x i64> %218, i32 0
  %228 = shl i64 %227, 32
  %229 = ashr exact i64 %228, 32
  %230 = getelementptr inbounds float, float* %16, i64 %229
  %231 = bitcast float* %230 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %231, i32 4, <8 x i1> %225), !tbaa !12, !llvm.access.group !16
  %232 = getelementptr inbounds float, float* %230, i64 8
  %233 = bitcast float* %232 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %233, i32 4, <8 x i1> %226), !tbaa !12, !llvm.access.group !16
  %234 = or <8 x i64> %broadcast.splat, <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215>
  %235 = trunc <8 x i64> %234 to <8 x i32>
  %236 = trunc i64 %mul.i.i.i to i32
  %237 = or i32 %236, 8
  %238 = insertelement <8 x i32> undef, i32 %237, i64 0
  %239 = shufflevector <8 x i32> %238, <8 x i32> undef, <8 x i32> zeroinitializer
  %240 = or <8 x i32> %239, <i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215>
  %241 = icmp sgt <8 x i32> %broadcast.splat12, %235
  %242 = icmp sgt <8 x i32> %broadcast.splat14, %240
  %243 = extractelement <8 x i64> %234, i32 0
  %244 = shl i64 %243, 32
  %245 = ashr exact i64 %244, 32
  %246 = getelementptr inbounds float, float* %16, i64 %245
  %247 = bitcast float* %246 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %247, i32 4, <8 x i1> %241), !tbaa !12, !llvm.access.group !16
  %248 = getelementptr inbounds float, float* %246, i64 8
  %249 = bitcast float* %248 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %249, i32 4, <8 x i1> %242), !tbaa !12, !llvm.access.group !16
  %250 = or <8 x i64> %broadcast.splat, <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231>
  %251 = trunc <8 x i64> %250 to <8 x i32>
  %252 = trunc i64 %mul.i.i.i to i32
  %253 = or i32 %252, 8
  %254 = insertelement <8 x i32> undef, i32 %253, i64 0
  %255 = shufflevector <8 x i32> %254, <8 x i32> undef, <8 x i32> zeroinitializer
  %256 = or <8 x i32> %255, <i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231>
  %257 = icmp sgt <8 x i32> %broadcast.splat12, %251
  %258 = icmp sgt <8 x i32> %broadcast.splat14, %256
  %259 = extractelement <8 x i64> %250, i32 0
  %260 = shl i64 %259, 32
  %261 = ashr exact i64 %260, 32
  %262 = getelementptr inbounds float, float* %16, i64 %261
  %263 = bitcast float* %262 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %263, i32 4, <8 x i1> %257), !tbaa !12, !llvm.access.group !16
  %264 = getelementptr inbounds float, float* %262, i64 8
  %265 = bitcast float* %264 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %265, i32 4, <8 x i1> %258), !tbaa !12, !llvm.access.group !16
  %266 = or <8 x i64> %broadcast.splat, <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247>
  %267 = trunc <8 x i64> %266 to <8 x i32>
  %268 = trunc i64 %mul.i.i.i to i32
  %269 = or i32 %268, 8
  %270 = insertelement <8 x i32> undef, i32 %269, i64 0
  %271 = shufflevector <8 x i32> %270, <8 x i32> undef, <8 x i32> zeroinitializer
  %272 = or <8 x i32> %271, <i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247>
  %273 = icmp sgt <8 x i32> %broadcast.splat12, %267
  %274 = icmp sgt <8 x i32> %broadcast.splat14, %272
  %275 = extractelement <8 x i64> %266, i32 0
  %276 = shl i64 %275, 32
  %277 = ashr exact i64 %276, 32
  %278 = getelementptr inbounds float, float* %16, i64 %277
  %279 = bitcast float* %278 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %279, i32 4, <8 x i1> %273), !tbaa !12, !llvm.access.group !16
  %280 = getelementptr inbounds float, float* %278, i64 8
  %281 = bitcast float* %280 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %281, i32 4, <8 x i1> %274), !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_bicgKernel2.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %295, %if.end.i.i.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp sgt i32 %24, %conv.i.i.us
  br i1 %cmp.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %if.then.i.i.us
  %indvars.iv.next.i.i3.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %if.then.i.i.us ]
  %282 = phi float [ %287, %for.body.i.i.us ], [ 0.000000e+00, %if.then.i.i.us ]
  %283 = mul nsw i64 %indvars.iv.next.i.i3.us, %25
  %284 = add nsw i64 %283, %idxprom.i.i.us
  %arrayidx5.i.i.us = getelementptr inbounds float, float* %8, i64 %284
  %285 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !12
  %arrayidx7.i.i.us = getelementptr inbounds float, float* %12, i64 %indvars.iv.next.i.i3.us
  %286 = load float, float* %arrayidx7.i.i.us, align 4, !tbaa !12
  %287 = tail call float @llvm.fmuladd.f32(float %285, float %286, float %282) #2
  store float %287, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i3.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %if.end.i.i.us.loopexit, label %for.body.i.i.us, !llvm.loop !18

if.end.i.i.us.loopexit:                           ; preds = %for.body.i.i.us
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.end.i.i.us.loopexit, %pregion_for_entry.entry.i.i.us
  %288 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %288, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp.i.i.us.1 = icmp sgt i32 %24, %conv.i.i.us.1
  br i1 %cmp.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

_pocl_kernel_bicgKernel2.exit.loopexit:           ; preds = %if.end.i.i.us.1
  br label %_pocl_kernel_bicgKernel2.exit

_pocl_kernel_bicgKernel2.exit:                    ; preds = %_pocl_kernel_bicgKernel2.exit.loopexit, %vector.ph
  ret void

if.then.i.i.us.1:                                 ; preds = %if.end.i.i.us
  %sext.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom.i.i.us.1 = ashr exact i64 %sext.i.i.us.1, 32
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.i.us.1

for.body.i.i.us.1:                                ; preds = %for.body.i.i.us.1, %if.then.i.i.us.1
  %indvars.iv.next.i.i3.us.1 = phi i64 [ %indvars.iv.next.i.i.us.1, %for.body.i.i.us.1 ], [ 0, %if.then.i.i.us.1 ]
  %289 = phi float [ %294, %for.body.i.i.us.1 ], [ 0.000000e+00, %if.then.i.i.us.1 ]
  %290 = mul nsw i64 %indvars.iv.next.i.i3.us.1, %25
  %291 = add nsw i64 %290, %idxprom.i.i.us.1
  %arrayidx5.i.i.us.1 = getelementptr inbounds float, float* %8, i64 %291
  %292 = load float, float* %arrayidx5.i.i.us.1, align 4, !tbaa !12
  %arrayidx7.i.i.us.1 = getelementptr inbounds float, float* %12, i64 %indvars.iv.next.i.i3.us.1
  %293 = load float, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12
  %294 = tail call float @llvm.fmuladd.f32(float %292, float %293, float %289) #2
  store float %294, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.1, 1
  %exitcond.not.i.i.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.1, label %if.end.i.i.us.1.loopexit, label %for.body.i.i.us.1, !llvm.loop !18

if.end.i.i.us.1.loopexit:                         ; preds = %for.body.i.i.us.1
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.end.i.i.us.1.loopexit, %if.end.i.i.us
  %295 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %295, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_bicgKernel2.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !20
}

; Function Attrs: nounwind
define void @_pocl_kernel_bicgKernel2_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %cmp221.i.i = icmp sgt i32 %17, 0
  %22 = sext i32 %21 to i64
  %wide.trip.count.i.i = zext i32 %17 to i64
  br i1 %cmp221.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.ph:                                        ; preds = %5
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert11 = insertelement <8 x i32> undef, i32 %21, i32 0
  %broadcast.splat12 = shufflevector <8 x i32> %broadcast.splatinsert11, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <8 x i32> undef, i32 %21, i32 0
  %broadcast.splat14 = shufflevector <8 x i32> %broadcast.splatinsert13, <8 x i32> undef, <8 x i32> zeroinitializer
  %23 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %24 = trunc <8 x i64> %23 to <8 x i32>
  %25 = trunc i64 %mul.i.i.i to i32
  %26 = or i32 %25, 8
  %27 = insertelement <8 x i32> undef, i32 %26, i64 0
  %28 = shufflevector <8 x i32> %27, <8 x i32> undef, <8 x i32> zeroinitializer
  %29 = or <8 x i32> %28, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %30 = icmp sgt <8 x i32> %broadcast.splat12, %24
  %31 = icmp sgt <8 x i32> %broadcast.splat14, %29
  %32 = extractelement <8 x i64> %23, i32 0
  %33 = shl i64 %32, 32
  %34 = ashr exact i64 %33, 32
  %35 = getelementptr inbounds float, float* %13, i64 %34
  %36 = bitcast float* %35 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %36, i32 4, <8 x i1> %30), !tbaa !12, !llvm.access.group !16
  %37 = getelementptr inbounds float, float* %35, i64 8
  %38 = bitcast float* %37 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %38, i32 4, <8 x i1> %31), !tbaa !12, !llvm.access.group !16
  %39 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %40 = trunc <8 x i64> %39 to <8 x i32>
  %41 = trunc i64 %mul.i.i.i to i32
  %42 = or i32 %41, 8
  %43 = insertelement <8 x i32> undef, i32 %42, i64 0
  %44 = shufflevector <8 x i32> %43, <8 x i32> undef, <8 x i32> zeroinitializer
  %45 = or <8 x i32> %44, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %46 = icmp sgt <8 x i32> %broadcast.splat12, %40
  %47 = icmp sgt <8 x i32> %broadcast.splat14, %45
  %48 = extractelement <8 x i64> %39, i32 0
  %49 = shl i64 %48, 32
  %50 = ashr exact i64 %49, 32
  %51 = getelementptr inbounds float, float* %13, i64 %50
  %52 = bitcast float* %51 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %52, i32 4, <8 x i1> %46), !tbaa !12, !llvm.access.group !16
  %53 = getelementptr inbounds float, float* %51, i64 8
  %54 = bitcast float* %53 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %54, i32 4, <8 x i1> %47), !tbaa !12, !llvm.access.group !16
  %55 = or <8 x i64> %broadcast.splat, <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39>
  %56 = trunc <8 x i64> %55 to <8 x i32>
  %57 = trunc i64 %mul.i.i.i to i32
  %58 = or i32 %57, 8
  %59 = insertelement <8 x i32> undef, i32 %58, i64 0
  %60 = shufflevector <8 x i32> %59, <8 x i32> undef, <8 x i32> zeroinitializer
  %61 = or <8 x i32> %60, <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %62 = icmp sgt <8 x i32> %broadcast.splat12, %56
  %63 = icmp sgt <8 x i32> %broadcast.splat14, %61
  %64 = extractelement <8 x i64> %55, i32 0
  %65 = shl i64 %64, 32
  %66 = ashr exact i64 %65, 32
  %67 = getelementptr inbounds float, float* %13, i64 %66
  %68 = bitcast float* %67 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %68, i32 4, <8 x i1> %62), !tbaa !12, !llvm.access.group !16
  %69 = getelementptr inbounds float, float* %67, i64 8
  %70 = bitcast float* %69 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %70, i32 4, <8 x i1> %63), !tbaa !12, !llvm.access.group !16
  %71 = or <8 x i64> %broadcast.splat, <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55>
  %72 = trunc <8 x i64> %71 to <8 x i32>
  %73 = trunc i64 %mul.i.i.i to i32
  %74 = or i32 %73, 8
  %75 = insertelement <8 x i32> undef, i32 %74, i64 0
  %76 = shufflevector <8 x i32> %75, <8 x i32> undef, <8 x i32> zeroinitializer
  %77 = or <8 x i32> %76, <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %78 = icmp sgt <8 x i32> %broadcast.splat12, %72
  %79 = icmp sgt <8 x i32> %broadcast.splat14, %77
  %80 = extractelement <8 x i64> %71, i32 0
  %81 = shl i64 %80, 32
  %82 = ashr exact i64 %81, 32
  %83 = getelementptr inbounds float, float* %13, i64 %82
  %84 = bitcast float* %83 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %84, i32 4, <8 x i1> %78), !tbaa !12, !llvm.access.group !16
  %85 = getelementptr inbounds float, float* %83, i64 8
  %86 = bitcast float* %85 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %86, i32 4, <8 x i1> %79), !tbaa !12, !llvm.access.group !16
  %87 = or <8 x i64> %broadcast.splat, <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71>
  %88 = trunc <8 x i64> %87 to <8 x i32>
  %89 = trunc i64 %mul.i.i.i to i32
  %90 = or i32 %89, 8
  %91 = insertelement <8 x i32> undef, i32 %90, i64 0
  %92 = shufflevector <8 x i32> %91, <8 x i32> undef, <8 x i32> zeroinitializer
  %93 = or <8 x i32> %92, <i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71>
  %94 = icmp sgt <8 x i32> %broadcast.splat12, %88
  %95 = icmp sgt <8 x i32> %broadcast.splat14, %93
  %96 = extractelement <8 x i64> %87, i32 0
  %97 = shl i64 %96, 32
  %98 = ashr exact i64 %97, 32
  %99 = getelementptr inbounds float, float* %13, i64 %98
  %100 = bitcast float* %99 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %100, i32 4, <8 x i1> %94), !tbaa !12, !llvm.access.group !16
  %101 = getelementptr inbounds float, float* %99, i64 8
  %102 = bitcast float* %101 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %102, i32 4, <8 x i1> %95), !tbaa !12, !llvm.access.group !16
  %103 = or <8 x i64> %broadcast.splat, <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87>
  %104 = trunc <8 x i64> %103 to <8 x i32>
  %105 = trunc i64 %mul.i.i.i to i32
  %106 = or i32 %105, 8
  %107 = insertelement <8 x i32> undef, i32 %106, i64 0
  %108 = shufflevector <8 x i32> %107, <8 x i32> undef, <8 x i32> zeroinitializer
  %109 = or <8 x i32> %108, <i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87>
  %110 = icmp sgt <8 x i32> %broadcast.splat12, %104
  %111 = icmp sgt <8 x i32> %broadcast.splat14, %109
  %112 = extractelement <8 x i64> %103, i32 0
  %113 = shl i64 %112, 32
  %114 = ashr exact i64 %113, 32
  %115 = getelementptr inbounds float, float* %13, i64 %114
  %116 = bitcast float* %115 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %116, i32 4, <8 x i1> %110), !tbaa !12, !llvm.access.group !16
  %117 = getelementptr inbounds float, float* %115, i64 8
  %118 = bitcast float* %117 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %118, i32 4, <8 x i1> %111), !tbaa !12, !llvm.access.group !16
  %119 = or <8 x i64> %broadcast.splat, <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103>
  %120 = trunc <8 x i64> %119 to <8 x i32>
  %121 = trunc i64 %mul.i.i.i to i32
  %122 = or i32 %121, 8
  %123 = insertelement <8 x i32> undef, i32 %122, i64 0
  %124 = shufflevector <8 x i32> %123, <8 x i32> undef, <8 x i32> zeroinitializer
  %125 = or <8 x i32> %124, <i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103>
  %126 = icmp sgt <8 x i32> %broadcast.splat12, %120
  %127 = icmp sgt <8 x i32> %broadcast.splat14, %125
  %128 = extractelement <8 x i64> %119, i32 0
  %129 = shl i64 %128, 32
  %130 = ashr exact i64 %129, 32
  %131 = getelementptr inbounds float, float* %13, i64 %130
  %132 = bitcast float* %131 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %132, i32 4, <8 x i1> %126), !tbaa !12, !llvm.access.group !16
  %133 = getelementptr inbounds float, float* %131, i64 8
  %134 = bitcast float* %133 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %134, i32 4, <8 x i1> %127), !tbaa !12, !llvm.access.group !16
  %135 = or <8 x i64> %broadcast.splat, <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119>
  %136 = trunc <8 x i64> %135 to <8 x i32>
  %137 = trunc i64 %mul.i.i.i to i32
  %138 = or i32 %137, 8
  %139 = insertelement <8 x i32> undef, i32 %138, i64 0
  %140 = shufflevector <8 x i32> %139, <8 x i32> undef, <8 x i32> zeroinitializer
  %141 = or <8 x i32> %140, <i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119>
  %142 = icmp sgt <8 x i32> %broadcast.splat12, %136
  %143 = icmp sgt <8 x i32> %broadcast.splat14, %141
  %144 = extractelement <8 x i64> %135, i32 0
  %145 = shl i64 %144, 32
  %146 = ashr exact i64 %145, 32
  %147 = getelementptr inbounds float, float* %13, i64 %146
  %148 = bitcast float* %147 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %148, i32 4, <8 x i1> %142), !tbaa !12, !llvm.access.group !16
  %149 = getelementptr inbounds float, float* %147, i64 8
  %150 = bitcast float* %149 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %150, i32 4, <8 x i1> %143), !tbaa !12, !llvm.access.group !16
  %151 = or <8 x i64> %broadcast.splat, <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135>
  %152 = trunc <8 x i64> %151 to <8 x i32>
  %153 = trunc i64 %mul.i.i.i to i32
  %154 = or i32 %153, 8
  %155 = insertelement <8 x i32> undef, i32 %154, i64 0
  %156 = shufflevector <8 x i32> %155, <8 x i32> undef, <8 x i32> zeroinitializer
  %157 = or <8 x i32> %156, <i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135>
  %158 = icmp sgt <8 x i32> %broadcast.splat12, %152
  %159 = icmp sgt <8 x i32> %broadcast.splat14, %157
  %160 = extractelement <8 x i64> %151, i32 0
  %161 = shl i64 %160, 32
  %162 = ashr exact i64 %161, 32
  %163 = getelementptr inbounds float, float* %13, i64 %162
  %164 = bitcast float* %163 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %164, i32 4, <8 x i1> %158), !tbaa !12, !llvm.access.group !16
  %165 = getelementptr inbounds float, float* %163, i64 8
  %166 = bitcast float* %165 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %166, i32 4, <8 x i1> %159), !tbaa !12, !llvm.access.group !16
  %167 = or <8 x i64> %broadcast.splat, <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151>
  %168 = trunc <8 x i64> %167 to <8 x i32>
  %169 = trunc i64 %mul.i.i.i to i32
  %170 = or i32 %169, 8
  %171 = insertelement <8 x i32> undef, i32 %170, i64 0
  %172 = shufflevector <8 x i32> %171, <8 x i32> undef, <8 x i32> zeroinitializer
  %173 = or <8 x i32> %172, <i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151>
  %174 = icmp sgt <8 x i32> %broadcast.splat12, %168
  %175 = icmp sgt <8 x i32> %broadcast.splat14, %173
  %176 = extractelement <8 x i64> %167, i32 0
  %177 = shl i64 %176, 32
  %178 = ashr exact i64 %177, 32
  %179 = getelementptr inbounds float, float* %13, i64 %178
  %180 = bitcast float* %179 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %180, i32 4, <8 x i1> %174), !tbaa !12, !llvm.access.group !16
  %181 = getelementptr inbounds float, float* %179, i64 8
  %182 = bitcast float* %181 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %182, i32 4, <8 x i1> %175), !tbaa !12, !llvm.access.group !16
  %183 = or <8 x i64> %broadcast.splat, <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167>
  %184 = trunc <8 x i64> %183 to <8 x i32>
  %185 = trunc i64 %mul.i.i.i to i32
  %186 = or i32 %185, 8
  %187 = insertelement <8 x i32> undef, i32 %186, i64 0
  %188 = shufflevector <8 x i32> %187, <8 x i32> undef, <8 x i32> zeroinitializer
  %189 = or <8 x i32> %188, <i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167>
  %190 = icmp sgt <8 x i32> %broadcast.splat12, %184
  %191 = icmp sgt <8 x i32> %broadcast.splat14, %189
  %192 = extractelement <8 x i64> %183, i32 0
  %193 = shl i64 %192, 32
  %194 = ashr exact i64 %193, 32
  %195 = getelementptr inbounds float, float* %13, i64 %194
  %196 = bitcast float* %195 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %196, i32 4, <8 x i1> %190), !tbaa !12, !llvm.access.group !16
  %197 = getelementptr inbounds float, float* %195, i64 8
  %198 = bitcast float* %197 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %198, i32 4, <8 x i1> %191), !tbaa !12, !llvm.access.group !16
  %199 = or <8 x i64> %broadcast.splat, <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183>
  %200 = trunc <8 x i64> %199 to <8 x i32>
  %201 = trunc i64 %mul.i.i.i to i32
  %202 = or i32 %201, 8
  %203 = insertelement <8 x i32> undef, i32 %202, i64 0
  %204 = shufflevector <8 x i32> %203, <8 x i32> undef, <8 x i32> zeroinitializer
  %205 = or <8 x i32> %204, <i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183>
  %206 = icmp sgt <8 x i32> %broadcast.splat12, %200
  %207 = icmp sgt <8 x i32> %broadcast.splat14, %205
  %208 = extractelement <8 x i64> %199, i32 0
  %209 = shl i64 %208, 32
  %210 = ashr exact i64 %209, 32
  %211 = getelementptr inbounds float, float* %13, i64 %210
  %212 = bitcast float* %211 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %212, i32 4, <8 x i1> %206), !tbaa !12, !llvm.access.group !16
  %213 = getelementptr inbounds float, float* %211, i64 8
  %214 = bitcast float* %213 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %214, i32 4, <8 x i1> %207), !tbaa !12, !llvm.access.group !16
  %215 = or <8 x i64> %broadcast.splat, <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199>
  %216 = trunc <8 x i64> %215 to <8 x i32>
  %217 = trunc i64 %mul.i.i.i to i32
  %218 = or i32 %217, 8
  %219 = insertelement <8 x i32> undef, i32 %218, i64 0
  %220 = shufflevector <8 x i32> %219, <8 x i32> undef, <8 x i32> zeroinitializer
  %221 = or <8 x i32> %220, <i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199>
  %222 = icmp sgt <8 x i32> %broadcast.splat12, %216
  %223 = icmp sgt <8 x i32> %broadcast.splat14, %221
  %224 = extractelement <8 x i64> %215, i32 0
  %225 = shl i64 %224, 32
  %226 = ashr exact i64 %225, 32
  %227 = getelementptr inbounds float, float* %13, i64 %226
  %228 = bitcast float* %227 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %228, i32 4, <8 x i1> %222), !tbaa !12, !llvm.access.group !16
  %229 = getelementptr inbounds float, float* %227, i64 8
  %230 = bitcast float* %229 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %230, i32 4, <8 x i1> %223), !tbaa !12, !llvm.access.group !16
  %231 = or <8 x i64> %broadcast.splat, <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215>
  %232 = trunc <8 x i64> %231 to <8 x i32>
  %233 = trunc i64 %mul.i.i.i to i32
  %234 = or i32 %233, 8
  %235 = insertelement <8 x i32> undef, i32 %234, i64 0
  %236 = shufflevector <8 x i32> %235, <8 x i32> undef, <8 x i32> zeroinitializer
  %237 = or <8 x i32> %236, <i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215>
  %238 = icmp sgt <8 x i32> %broadcast.splat12, %232
  %239 = icmp sgt <8 x i32> %broadcast.splat14, %237
  %240 = extractelement <8 x i64> %231, i32 0
  %241 = shl i64 %240, 32
  %242 = ashr exact i64 %241, 32
  %243 = getelementptr inbounds float, float* %13, i64 %242
  %244 = bitcast float* %243 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %244, i32 4, <8 x i1> %238), !tbaa !12, !llvm.access.group !16
  %245 = getelementptr inbounds float, float* %243, i64 8
  %246 = bitcast float* %245 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %246, i32 4, <8 x i1> %239), !tbaa !12, !llvm.access.group !16
  %247 = or <8 x i64> %broadcast.splat, <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231>
  %248 = trunc <8 x i64> %247 to <8 x i32>
  %249 = trunc i64 %mul.i.i.i to i32
  %250 = or i32 %249, 8
  %251 = insertelement <8 x i32> undef, i32 %250, i64 0
  %252 = shufflevector <8 x i32> %251, <8 x i32> undef, <8 x i32> zeroinitializer
  %253 = or <8 x i32> %252, <i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231>
  %254 = icmp sgt <8 x i32> %broadcast.splat12, %248
  %255 = icmp sgt <8 x i32> %broadcast.splat14, %253
  %256 = extractelement <8 x i64> %247, i32 0
  %257 = shl i64 %256, 32
  %258 = ashr exact i64 %257, 32
  %259 = getelementptr inbounds float, float* %13, i64 %258
  %260 = bitcast float* %259 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %260, i32 4, <8 x i1> %254), !tbaa !12, !llvm.access.group !16
  %261 = getelementptr inbounds float, float* %259, i64 8
  %262 = bitcast float* %261 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %262, i32 4, <8 x i1> %255), !tbaa !12, !llvm.access.group !16
  %263 = or <8 x i64> %broadcast.splat, <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247>
  %264 = trunc <8 x i64> %263 to <8 x i32>
  %265 = trunc i64 %mul.i.i.i to i32
  %266 = or i32 %265, 8
  %267 = insertelement <8 x i32> undef, i32 %266, i64 0
  %268 = shufflevector <8 x i32> %267, <8 x i32> undef, <8 x i32> zeroinitializer
  %269 = or <8 x i32> %268, <i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247>
  %270 = icmp sgt <8 x i32> %broadcast.splat12, %264
  %271 = icmp sgt <8 x i32> %broadcast.splat14, %269
  %272 = extractelement <8 x i64> %263, i32 0
  %273 = shl i64 %272, 32
  %274 = ashr exact i64 %273, 32
  %275 = getelementptr inbounds float, float* %13, i64 %274
  %276 = bitcast float* %275 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %276, i32 4, <8 x i1> %270), !tbaa !12, !llvm.access.group !16
  %277 = getelementptr inbounds float, float* %275, i64 8
  %278 = bitcast float* %277 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> zeroinitializer, <8 x float>* %278, i32 4, <8 x i1> %271), !tbaa !12, !llvm.access.group !16
  br label %_pocl_kernel_bicgKernel2.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.i.i.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %292, %if.end.i.i.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp sgt i32 %21, %conv.i.i.us
  br i1 %cmp.i.i.us, label %if.then.i.i.us, label %if.end.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %sext.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom.i.i.us = ashr exact i64 %sext.i.i.us, 32
  %arrayidx.i.i.us = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us
  store float 0.000000e+00, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %if.then.i.i.us
  %indvars.iv.next.i.i3.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %if.then.i.i.us ]
  %279 = phi float [ %284, %for.body.i.i.us ], [ 0.000000e+00, %if.then.i.i.us ]
  %280 = mul nsw i64 %indvars.iv.next.i.i3.us, %22
  %281 = add nsw i64 %280, %idxprom.i.i.us
  %arrayidx5.i.i.us = getelementptr inbounds float, float* %7, i64 %281
  %282 = load float, float* %arrayidx5.i.i.us, align 4, !tbaa !12
  %arrayidx7.i.i.us = getelementptr inbounds float, float* %10, i64 %indvars.iv.next.i.i3.us
  %283 = load float, float* %arrayidx7.i.i.us, align 4, !tbaa !12
  %284 = tail call float @llvm.fmuladd.f32(float %282, float %283, float %279) #2
  store float %284, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i3.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %if.end.i.i.us.loopexit, label %for.body.i.i.us, !llvm.loop !18

if.end.i.i.us.loopexit:                           ; preds = %for.body.i.i.us
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.end.i.i.us.loopexit, %pregion_for_entry.entry.i.i.us
  %285 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %285, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp.i.i.us.1 = icmp sgt i32 %21, %conv.i.i.us.1
  br i1 %cmp.i.i.us.1, label %if.then.i.i.us.1, label %if.end.i.i.us.1

_pocl_kernel_bicgKernel2.exit.loopexit:           ; preds = %if.end.i.i.us.1
  br label %_pocl_kernel_bicgKernel2.exit

_pocl_kernel_bicgKernel2.exit:                    ; preds = %_pocl_kernel_bicgKernel2.exit.loopexit, %vector.ph
  ret void

if.then.i.i.us.1:                                 ; preds = %if.end.i.i.us
  %sext.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom.i.i.us.1 = ashr exact i64 %sext.i.i.us.1, 32
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us.1
  store float 0.000000e+00, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  br label %for.body.i.i.us.1

for.body.i.i.us.1:                                ; preds = %for.body.i.i.us.1, %if.then.i.i.us.1
  %indvars.iv.next.i.i3.us.1 = phi i64 [ %indvars.iv.next.i.i.us.1, %for.body.i.i.us.1 ], [ 0, %if.then.i.i.us.1 ]
  %286 = phi float [ %291, %for.body.i.i.us.1 ], [ 0.000000e+00, %if.then.i.i.us.1 ]
  %287 = mul nsw i64 %indvars.iv.next.i.i3.us.1, %22
  %288 = add nsw i64 %287, %idxprom.i.i.us.1
  %arrayidx5.i.i.us.1 = getelementptr inbounds float, float* %7, i64 %288
  %289 = load float, float* %arrayidx5.i.i.us.1, align 4, !tbaa !12
  %arrayidx7.i.i.us.1 = getelementptr inbounds float, float* %10, i64 %indvars.iv.next.i.i3.us.1
  %290 = load float, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12
  %291 = tail call float @llvm.fmuladd.f32(float %289, float %290, float %286) #2
  store float %291, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !16
  %indvars.iv.next.i.i.us.1 = add nuw nsw i64 %indvars.iv.next.i.i3.us.1, 1
  %exitcond.not.i.i.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us.1, label %if.end.i.i.us.1.loopexit, label %for.body.i.i.us.1, !llvm.loop !18

if.end.i.i.us.1.loopexit:                         ; preds = %for.body.i.i.us.1
  br label %if.end.i.i.us.1

if.end.i.i.us.1:                                  ; preds = %if.end.i.i.us.1.loopexit, %if.end.i.i.us
  %292 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %292, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_bicgKernel2.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !20
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
!10 = !{!"A", !"r", !"s", !"nx", !"ny"}
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
