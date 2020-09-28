; ModuleID = './IM/LPOFLBCNGMPCFBLKDOKKPEEFCAHNALJDLPAIB/runJacobi1D_kernel1/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_runJacobi1D_kernel1(float* nocapture readonly %0, float* nocapture %1, i32 %2, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %3, i64 %4, i64 %5, i64 %6) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
vector.ph:
  %mul.i.i = shl i64 %4, 8
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %vector.body ]
  %7 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %8 = shl <8 x i64> %7, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %9 = add <8 x i64> %8, <i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296>
  %10 = ashr exact <8 x i64> %9, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %11 = getelementptr inbounds float, float* %0, <8 x i64> %10
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %11, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x float> undef), !tbaa !12, !llvm.access.group !16
  %12 = extractelement <8 x i64> %8, i32 0
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds float, float* %0, i64 %13
  %15 = bitcast float* %14 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %15, align 4, !tbaa !12, !llvm.access.group !16
  %16 = fadd <8 x float> %wide.masked.gather, %wide.load
  %17 = add <8 x i64> %8, <i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296>
  %18 = ashr exact <8 x i64> %17, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %19 = getelementptr inbounds float, float* %0, <8 x i64> %18
  %wide.masked.gather1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %19, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x float> undef), !tbaa !12, !llvm.access.group !16
  %20 = fadd <8 x float> %16, %wide.masked.gather1
  %21 = fmul <8 x float> %20, <float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000>
  %22 = getelementptr inbounds float, float* %1, i64 %13
  %23 = bitcast float* %22 to <8 x float>*
  store <8 x float> %21, <8 x float>* %23, align 4, !tbaa !12, !llvm.access.group !16
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %24 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %25 = shl <8 x i64> %24, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %26 = add <8 x i64> %25, <i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296>
  %27 = ashr exact <8 x i64> %26, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %28 = getelementptr inbounds float, float* %0, <8 x i64> %27
  %wide.masked.gather.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %28, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x float> undef), !tbaa !12, !llvm.access.group !16
  %29 = extractelement <8 x i64> %25, i32 0
  %30 = ashr exact i64 %29, 32
  %31 = getelementptr inbounds float, float* %0, i64 %30
  %32 = bitcast float* %31 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %32, align 4, !tbaa !12, !llvm.access.group !16
  %33 = fadd <8 x float> %wide.masked.gather.1, %wide.load.1
  %34 = add <8 x i64> %25, <i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296>
  %35 = ashr exact <8 x i64> %34, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %36 = getelementptr inbounds float, float* %0, <8 x i64> %35
  %wide.masked.gather1.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %36, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x float> undef), !tbaa !12, !llvm.access.group !16
  %37 = fadd <8 x float> %33, %wide.masked.gather1.1
  %38 = fmul <8 x float> %37, <float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000>
  %39 = getelementptr inbounds float, float* %1, i64 %30
  %40 = bitcast float* %39 to <8 x float>*
  store <8 x float> %38, <8 x float>* %40, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %41 = icmp eq i64 %index.next.1, 256
  br i1 %41, label %runJacobi1D_kernel1.exit, label %vector.body, !llvm.loop !18

runJacobi1D_kernel1.exit:                         ; preds = %vector.body
  ret void
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_runJacobi1D_kernel1_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
vector.ph:
  %5 = bitcast i8** %0 to float***
  %6 = load float**, float*** %5, align 8
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float***
  %10 = load float**, float*** %9, align 8
  %11 = load float*, float** %10, align 8
  %mul.i.i.i = shl i64 %2, 8
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %vector.body ]
  %12 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %13 = shl <8 x i64> %12, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %14 = add <8 x i64> %13, <i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296>
  %15 = ashr exact <8 x i64> %14, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %16 = getelementptr inbounds float, float* %7, <8 x i64> %15
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %16, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x float> undef), !tbaa !12, !llvm.access.group !16
  %17 = extractelement <8 x i64> %13, i32 0
  %18 = ashr exact i64 %17, 32
  %19 = getelementptr inbounds float, float* %7, i64 %18
  %20 = bitcast float* %19 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %20, align 4, !tbaa !12, !llvm.access.group !16
  %21 = fadd <8 x float> %wide.masked.gather, %wide.load
  %22 = add <8 x i64> %13, <i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296>
  %23 = ashr exact <8 x i64> %22, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %24 = getelementptr inbounds float, float* %7, <8 x i64> %23
  %wide.masked.gather1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %24, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x float> undef), !tbaa !12, !llvm.access.group !16
  %25 = fadd <8 x float> %21, %wide.masked.gather1
  %26 = fmul <8 x float> %25, <float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000>
  %27 = getelementptr inbounds float, float* %11, i64 %18
  %28 = bitcast float* %27 to <8 x float>*
  store <8 x float> %26, <8 x float>* %28, align 4, !tbaa !12, !llvm.access.group !16
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %29 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %30 = shl <8 x i64> %29, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %31 = add <8 x i64> %30, <i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296>
  %32 = ashr exact <8 x i64> %31, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %33 = getelementptr inbounds float, float* %7, <8 x i64> %32
  %wide.masked.gather.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %33, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x float> undef), !tbaa !12, !llvm.access.group !16
  %34 = extractelement <8 x i64> %30, i32 0
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds float, float* %7, i64 %35
  %37 = bitcast float* %36 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %37, align 4, !tbaa !12, !llvm.access.group !16
  %38 = fadd <8 x float> %wide.masked.gather.1, %wide.load.1
  %39 = add <8 x i64> %30, <i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296>
  %40 = ashr exact <8 x i64> %39, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %41 = getelementptr inbounds float, float* %7, <8 x i64> %40
  %wide.masked.gather1.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %41, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x float> undef), !tbaa !12, !llvm.access.group !16
  %42 = fadd <8 x float> %38, %wide.masked.gather1.1
  %43 = fmul <8 x float> %42, <float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000>
  %44 = getelementptr inbounds float, float* %11, i64 %35
  %45 = bitcast float* %44 to <8 x float>*
  store <8 x float> %43, <8 x float>* %45, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %46 = icmp eq i64 %index.next.1, 256
  br i1 %46, label %_pocl_kernel_runJacobi1D_kernel1.exit, label %vector.body, !llvm.loop !21

_pocl_kernel_runJacobi1D_kernel1.exit:            ; preds = %vector.body
  ret void
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_runJacobi1D_kernel1_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
vector.ph:
  %5 = bitcast i8** %0 to float**
  %6 = load float*, float** %5, align 8
  %7 = getelementptr i8*, i8** %0, i64 1
  %8 = bitcast i8** %7 to float**
  %9 = load float*, float** %8, align 8
  %mul.i.i.i = shl i64 %2, 8
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %vector.body ]
  %10 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %11 = shl <8 x i64> %10, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %12 = add <8 x i64> %11, <i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296>
  %13 = ashr exact <8 x i64> %12, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %14 = getelementptr inbounds float, float* %6, <8 x i64> %13
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %14, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x float> undef), !tbaa !12, !llvm.access.group !16
  %15 = extractelement <8 x i64> %11, i32 0
  %16 = ashr exact i64 %15, 32
  %17 = getelementptr inbounds float, float* %6, i64 %16
  %18 = bitcast float* %17 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %18, align 4, !tbaa !12, !llvm.access.group !16
  %19 = fadd <8 x float> %wide.masked.gather, %wide.load
  %20 = add <8 x i64> %11, <i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296>
  %21 = ashr exact <8 x i64> %20, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %22 = getelementptr inbounds float, float* %6, <8 x i64> %21
  %wide.masked.gather1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %22, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x float> undef), !tbaa !12, !llvm.access.group !16
  %23 = fadd <8 x float> %19, %wide.masked.gather1
  %24 = fmul <8 x float> %23, <float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000>
  %25 = getelementptr inbounds float, float* %9, i64 %16
  %26 = bitcast float* %25 to <8 x float>*
  store <8 x float> %24, <8 x float>* %26, align 4, !tbaa !12, !llvm.access.group !16
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %27 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %28 = shl <8 x i64> %27, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %29 = add <8 x i64> %28, <i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296>
  %30 = ashr exact <8 x i64> %29, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %31 = getelementptr inbounds float, float* %6, <8 x i64> %30
  %wide.masked.gather.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %31, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x float> undef), !tbaa !12, !llvm.access.group !16
  %32 = extractelement <8 x i64> %28, i32 0
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds float, float* %6, i64 %33
  %35 = bitcast float* %34 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %35, align 4, !tbaa !12, !llvm.access.group !16
  %36 = fadd <8 x float> %wide.masked.gather.1, %wide.load.1
  %37 = add <8 x i64> %28, <i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296>
  %38 = ashr exact <8 x i64> %37, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %39 = getelementptr inbounds float, float* %6, <8 x i64> %38
  %wide.masked.gather1.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %39, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x float> undef), !tbaa !12, !llvm.access.group !16
  %40 = fadd <8 x float> %36, %wide.masked.gather1.1
  %41 = fmul <8 x float> %40, <float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000>
  %42 = getelementptr inbounds float, float* %9, i64 %33
  %43 = bitcast float* %42 to <8 x float>*
  store <8 x float> %41, <8 x float>* %43, align 4, !tbaa !12, !llvm.access.group !16
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %44 = icmp eq i64 %index.next.1, 256
  br i1 %44, label %_pocl_kernel_runJacobi1D_kernel1.exit, label %vector.body, !llvm.loop !22

_pocl_kernel_runJacobi1D_kernel1.exit:            ; preds = %vector.body
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*>, i32 immarg, <8 x i1>, <8 x float>) #2

attributes #0 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree norecurse nounwind }
attributes #2 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!opencl.ocl.version = !{!3}
!llvm.ident = !{!4}
!opencl.spir.version = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 1, i32 2}
!4 = !{!"clang version 11.0.0 (git@github.com:llvm/llvm-project.git 91e89f9a5115b0f83b8f026e1ad0e6d1f885fa9b)"}
!5 = !{i32 1, i32 1, i32 0}
!6 = !{!"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"int"}
!8 = !{!"float*", !"float*", !"int"}
!9 = !{!"", !"", !""}
!10 = !{!"A", !"B", !"n"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17}
!17 = distinct !{}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.parallel_accesses", !17}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = distinct !{!21, !19, !20}
!22 = distinct !{!22, !19, !20}
