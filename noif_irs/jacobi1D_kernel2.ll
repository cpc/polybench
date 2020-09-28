; ModuleID = './IM/LPOFLBCNGMPCFBLKDOKKPEEFCAHNALJDLPAIB/runJacobi1D_kernel2/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_runJacobi1D_kernel2(float* nocapture %0, float* nocapture readonly %1, i32 %2, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %3, i64 %4, i64 %5, i64 %6) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
vector.ph:
  %mul.i.i = shl i64 %4, 40
  %7 = shl i64 %4, 40
  %8 = ashr exact i64 %7, 32
  %9 = getelementptr inbounds float, float* %1, i64 %8
  %10 = bitcast float* %9 to <8 x i32>*
  %wide.load = load <8 x i32>, <8 x i32>* %10, align 4, !tbaa !12, !llvm.access.group !16
  %11 = getelementptr inbounds float, float* %9, i64 8
  %12 = bitcast float* %11 to <8 x i32>*
  %wide.load1 = load <8 x i32>, <8 x i32>* %12, align 4, !tbaa !12, !llvm.access.group !16
  %13 = getelementptr inbounds float, float* %9, i64 16
  %14 = bitcast float* %13 to <8 x i32>*
  %wide.load2 = load <8 x i32>, <8 x i32>* %14, align 4, !tbaa !12, !llvm.access.group !16
  %15 = getelementptr inbounds float, float* %9, i64 24
  %16 = bitcast float* %15 to <8 x i32>*
  %wide.load3 = load <8 x i32>, <8 x i32>* %16, align 4, !tbaa !12, !llvm.access.group !16
  %17 = getelementptr inbounds float, float* %0, i64 %8
  %18 = bitcast float* %17 to <8 x i32>*
  store <8 x i32> %wide.load, <8 x i32>* %18, align 4, !tbaa !12, !llvm.access.group !16
  %19 = getelementptr inbounds float, float* %17, i64 8
  %20 = bitcast float* %19 to <8 x i32>*
  store <8 x i32> %wide.load1, <8 x i32>* %20, align 4, !tbaa !12, !llvm.access.group !16
  %21 = getelementptr inbounds float, float* %17, i64 16
  %22 = bitcast float* %21 to <8 x i32>*
  store <8 x i32> %wide.load2, <8 x i32>* %22, align 4, !tbaa !12, !llvm.access.group !16
  %23 = getelementptr inbounds float, float* %17, i64 24
  %24 = bitcast float* %23 to <8 x i32>*
  store <8 x i32> %wide.load3, <8 x i32>* %24, align 4, !tbaa !12, !llvm.access.group !16
  %25 = shl i64 %4, 40
  %26 = ashr exact i64 %25, 32
  %27 = or i64 %26, 32
  %28 = getelementptr inbounds float, float* %1, i64 %27
  %29 = bitcast float* %28 to <8 x i32>*
  %wide.load.1 = load <8 x i32>, <8 x i32>* %29, align 4, !tbaa !12, !llvm.access.group !16
  %30 = getelementptr inbounds float, float* %28, i64 8
  %31 = bitcast float* %30 to <8 x i32>*
  %wide.load1.1 = load <8 x i32>, <8 x i32>* %31, align 4, !tbaa !12, !llvm.access.group !16
  %32 = getelementptr inbounds float, float* %28, i64 16
  %33 = bitcast float* %32 to <8 x i32>*
  %wide.load2.1 = load <8 x i32>, <8 x i32>* %33, align 4, !tbaa !12, !llvm.access.group !16
  %34 = getelementptr inbounds float, float* %28, i64 24
  %35 = bitcast float* %34 to <8 x i32>*
  %wide.load3.1 = load <8 x i32>, <8 x i32>* %35, align 4, !tbaa !12, !llvm.access.group !16
  %36 = getelementptr inbounds float, float* %0, i64 %27
  %37 = bitcast float* %36 to <8 x i32>*
  store <8 x i32> %wide.load.1, <8 x i32>* %37, align 4, !tbaa !12, !llvm.access.group !16
  %38 = getelementptr inbounds float, float* %36, i64 8
  %39 = bitcast float* %38 to <8 x i32>*
  store <8 x i32> %wide.load1.1, <8 x i32>* %39, align 4, !tbaa !12, !llvm.access.group !16
  %40 = getelementptr inbounds float, float* %36, i64 16
  %41 = bitcast float* %40 to <8 x i32>*
  store <8 x i32> %wide.load2.1, <8 x i32>* %41, align 4, !tbaa !12, !llvm.access.group !16
  %42 = getelementptr inbounds float, float* %36, i64 24
  %43 = bitcast float* %42 to <8 x i32>*
  store <8 x i32> %wide.load3.1, <8 x i32>* %43, align 4, !tbaa !12, !llvm.access.group !16
  %44 = shl i64 %4, 40
  %45 = ashr exact i64 %44, 32
  %46 = or i64 %45, 64
  %47 = getelementptr inbounds float, float* %1, i64 %46
  %48 = bitcast float* %47 to <8 x i32>*
  %wide.load.2 = load <8 x i32>, <8 x i32>* %48, align 4, !tbaa !12, !llvm.access.group !16
  %49 = getelementptr inbounds float, float* %47, i64 8
  %50 = bitcast float* %49 to <8 x i32>*
  %wide.load1.2 = load <8 x i32>, <8 x i32>* %50, align 4, !tbaa !12, !llvm.access.group !16
  %51 = getelementptr inbounds float, float* %47, i64 16
  %52 = bitcast float* %51 to <8 x i32>*
  %wide.load2.2 = load <8 x i32>, <8 x i32>* %52, align 4, !tbaa !12, !llvm.access.group !16
  %53 = getelementptr inbounds float, float* %47, i64 24
  %54 = bitcast float* %53 to <8 x i32>*
  %wide.load3.2 = load <8 x i32>, <8 x i32>* %54, align 4, !tbaa !12, !llvm.access.group !16
  %55 = getelementptr inbounds float, float* %0, i64 %46
  %56 = bitcast float* %55 to <8 x i32>*
  store <8 x i32> %wide.load.2, <8 x i32>* %56, align 4, !tbaa !12, !llvm.access.group !16
  %57 = getelementptr inbounds float, float* %55, i64 8
  %58 = bitcast float* %57 to <8 x i32>*
  store <8 x i32> %wide.load1.2, <8 x i32>* %58, align 4, !tbaa !12, !llvm.access.group !16
  %59 = getelementptr inbounds float, float* %55, i64 16
  %60 = bitcast float* %59 to <8 x i32>*
  store <8 x i32> %wide.load2.2, <8 x i32>* %60, align 4, !tbaa !12, !llvm.access.group !16
  %61 = getelementptr inbounds float, float* %55, i64 24
  %62 = bitcast float* %61 to <8 x i32>*
  store <8 x i32> %wide.load3.2, <8 x i32>* %62, align 4, !tbaa !12, !llvm.access.group !16
  %63 = shl i64 %4, 40
  %64 = ashr exact i64 %63, 32
  %65 = or i64 %64, 96
  %66 = getelementptr inbounds float, float* %1, i64 %65
  %67 = bitcast float* %66 to <8 x i32>*
  %wide.load.3 = load <8 x i32>, <8 x i32>* %67, align 4, !tbaa !12, !llvm.access.group !16
  %68 = getelementptr inbounds float, float* %66, i64 8
  %69 = bitcast float* %68 to <8 x i32>*
  %wide.load1.3 = load <8 x i32>, <8 x i32>* %69, align 4, !tbaa !12, !llvm.access.group !16
  %70 = getelementptr inbounds float, float* %66, i64 16
  %71 = bitcast float* %70 to <8 x i32>*
  %wide.load2.3 = load <8 x i32>, <8 x i32>* %71, align 4, !tbaa !12, !llvm.access.group !16
  %72 = getelementptr inbounds float, float* %66, i64 24
  %73 = bitcast float* %72 to <8 x i32>*
  %wide.load3.3 = load <8 x i32>, <8 x i32>* %73, align 4, !tbaa !12, !llvm.access.group !16
  %74 = getelementptr inbounds float, float* %0, i64 %65
  %75 = bitcast float* %74 to <8 x i32>*
  store <8 x i32> %wide.load.3, <8 x i32>* %75, align 4, !tbaa !12, !llvm.access.group !16
  %76 = getelementptr inbounds float, float* %74, i64 8
  %77 = bitcast float* %76 to <8 x i32>*
  store <8 x i32> %wide.load1.3, <8 x i32>* %77, align 4, !tbaa !12, !llvm.access.group !16
  %78 = getelementptr inbounds float, float* %74, i64 16
  %79 = bitcast float* %78 to <8 x i32>*
  store <8 x i32> %wide.load2.3, <8 x i32>* %79, align 4, !tbaa !12, !llvm.access.group !16
  %80 = getelementptr inbounds float, float* %74, i64 24
  %81 = bitcast float* %80 to <8 x i32>*
  store <8 x i32> %wide.load3.3, <8 x i32>* %81, align 4, !tbaa !12, !llvm.access.group !16
  %82 = shl i64 %4, 40
  %83 = ashr exact i64 %82, 32
  %84 = or i64 %83, 128
  %85 = getelementptr inbounds float, float* %1, i64 %84
  %86 = bitcast float* %85 to <8 x i32>*
  %wide.load.4 = load <8 x i32>, <8 x i32>* %86, align 4, !tbaa !12, !llvm.access.group !16
  %87 = getelementptr inbounds float, float* %85, i64 8
  %88 = bitcast float* %87 to <8 x i32>*
  %wide.load1.4 = load <8 x i32>, <8 x i32>* %88, align 4, !tbaa !12, !llvm.access.group !16
  %89 = getelementptr inbounds float, float* %85, i64 16
  %90 = bitcast float* %89 to <8 x i32>*
  %wide.load2.4 = load <8 x i32>, <8 x i32>* %90, align 4, !tbaa !12, !llvm.access.group !16
  %91 = getelementptr inbounds float, float* %85, i64 24
  %92 = bitcast float* %91 to <8 x i32>*
  %wide.load3.4 = load <8 x i32>, <8 x i32>* %92, align 4, !tbaa !12, !llvm.access.group !16
  %93 = getelementptr inbounds float, float* %0, i64 %84
  %94 = bitcast float* %93 to <8 x i32>*
  store <8 x i32> %wide.load.4, <8 x i32>* %94, align 4, !tbaa !12, !llvm.access.group !16
  %95 = getelementptr inbounds float, float* %93, i64 8
  %96 = bitcast float* %95 to <8 x i32>*
  store <8 x i32> %wide.load1.4, <8 x i32>* %96, align 4, !tbaa !12, !llvm.access.group !16
  %97 = getelementptr inbounds float, float* %93, i64 16
  %98 = bitcast float* %97 to <8 x i32>*
  store <8 x i32> %wide.load2.4, <8 x i32>* %98, align 4, !tbaa !12, !llvm.access.group !16
  %99 = getelementptr inbounds float, float* %93, i64 24
  %100 = bitcast float* %99 to <8 x i32>*
  store <8 x i32> %wide.load3.4, <8 x i32>* %100, align 4, !tbaa !12, !llvm.access.group !16
  %101 = shl i64 %4, 40
  %102 = ashr exact i64 %101, 32
  %103 = or i64 %102, 160
  %104 = getelementptr inbounds float, float* %1, i64 %103
  %105 = bitcast float* %104 to <8 x i32>*
  %wide.load.5 = load <8 x i32>, <8 x i32>* %105, align 4, !tbaa !12, !llvm.access.group !16
  %106 = getelementptr inbounds float, float* %104, i64 8
  %107 = bitcast float* %106 to <8 x i32>*
  %wide.load1.5 = load <8 x i32>, <8 x i32>* %107, align 4, !tbaa !12, !llvm.access.group !16
  %108 = getelementptr inbounds float, float* %104, i64 16
  %109 = bitcast float* %108 to <8 x i32>*
  %wide.load2.5 = load <8 x i32>, <8 x i32>* %109, align 4, !tbaa !12, !llvm.access.group !16
  %110 = getelementptr inbounds float, float* %104, i64 24
  %111 = bitcast float* %110 to <8 x i32>*
  %wide.load3.5 = load <8 x i32>, <8 x i32>* %111, align 4, !tbaa !12, !llvm.access.group !16
  %112 = getelementptr inbounds float, float* %0, i64 %103
  %113 = bitcast float* %112 to <8 x i32>*
  store <8 x i32> %wide.load.5, <8 x i32>* %113, align 4, !tbaa !12, !llvm.access.group !16
  %114 = getelementptr inbounds float, float* %112, i64 8
  %115 = bitcast float* %114 to <8 x i32>*
  store <8 x i32> %wide.load1.5, <8 x i32>* %115, align 4, !tbaa !12, !llvm.access.group !16
  %116 = getelementptr inbounds float, float* %112, i64 16
  %117 = bitcast float* %116 to <8 x i32>*
  store <8 x i32> %wide.load2.5, <8 x i32>* %117, align 4, !tbaa !12, !llvm.access.group !16
  %118 = getelementptr inbounds float, float* %112, i64 24
  %119 = bitcast float* %118 to <8 x i32>*
  store <8 x i32> %wide.load3.5, <8 x i32>* %119, align 4, !tbaa !12, !llvm.access.group !16
  %120 = shl i64 %4, 40
  %121 = ashr exact i64 %120, 32
  %122 = or i64 %121, 192
  %123 = getelementptr inbounds float, float* %1, i64 %122
  %124 = bitcast float* %123 to <8 x i32>*
  %wide.load.6 = load <8 x i32>, <8 x i32>* %124, align 4, !tbaa !12, !llvm.access.group !16
  %125 = getelementptr inbounds float, float* %123, i64 8
  %126 = bitcast float* %125 to <8 x i32>*
  %wide.load1.6 = load <8 x i32>, <8 x i32>* %126, align 4, !tbaa !12, !llvm.access.group !16
  %127 = getelementptr inbounds float, float* %123, i64 16
  %128 = bitcast float* %127 to <8 x i32>*
  %wide.load2.6 = load <8 x i32>, <8 x i32>* %128, align 4, !tbaa !12, !llvm.access.group !16
  %129 = getelementptr inbounds float, float* %123, i64 24
  %130 = bitcast float* %129 to <8 x i32>*
  %wide.load3.6 = load <8 x i32>, <8 x i32>* %130, align 4, !tbaa !12, !llvm.access.group !16
  %131 = getelementptr inbounds float, float* %0, i64 %122
  %132 = bitcast float* %131 to <8 x i32>*
  store <8 x i32> %wide.load.6, <8 x i32>* %132, align 4, !tbaa !12, !llvm.access.group !16
  %133 = getelementptr inbounds float, float* %131, i64 8
  %134 = bitcast float* %133 to <8 x i32>*
  store <8 x i32> %wide.load1.6, <8 x i32>* %134, align 4, !tbaa !12, !llvm.access.group !16
  %135 = getelementptr inbounds float, float* %131, i64 16
  %136 = bitcast float* %135 to <8 x i32>*
  store <8 x i32> %wide.load2.6, <8 x i32>* %136, align 4, !tbaa !12, !llvm.access.group !16
  %137 = getelementptr inbounds float, float* %131, i64 24
  %138 = bitcast float* %137 to <8 x i32>*
  store <8 x i32> %wide.load3.6, <8 x i32>* %138, align 4, !tbaa !12, !llvm.access.group !16
  %139 = ashr exact i64 %mul.i.i, 32
  %140 = or i64 %139, 224
  %141 = getelementptr inbounds float, float* %1, i64 %140
  %142 = bitcast float* %141 to <8 x i32>*
  %wide.load.7 = load <8 x i32>, <8 x i32>* %142, align 4, !tbaa !12, !llvm.access.group !16
  %143 = getelementptr inbounds float, float* %141, i64 8
  %144 = bitcast float* %143 to <8 x i32>*
  %wide.load1.7 = load <8 x i32>, <8 x i32>* %144, align 4, !tbaa !12, !llvm.access.group !16
  %145 = getelementptr inbounds float, float* %141, i64 16
  %146 = bitcast float* %145 to <8 x i32>*
  %wide.load2.7 = load <8 x i32>, <8 x i32>* %146, align 4, !tbaa !12, !llvm.access.group !16
  %147 = getelementptr inbounds float, float* %141, i64 24
  %148 = bitcast float* %147 to <8 x i32>*
  %wide.load3.7 = load <8 x i32>, <8 x i32>* %148, align 4, !tbaa !12, !llvm.access.group !16
  %149 = getelementptr inbounds float, float* %0, i64 %140
  %150 = bitcast float* %149 to <8 x i32>*
  store <8 x i32> %wide.load.7, <8 x i32>* %150, align 4, !tbaa !12, !llvm.access.group !16
  %151 = getelementptr inbounds float, float* %149, i64 8
  %152 = bitcast float* %151 to <8 x i32>*
  store <8 x i32> %wide.load1.7, <8 x i32>* %152, align 4, !tbaa !12, !llvm.access.group !16
  %153 = getelementptr inbounds float, float* %149, i64 16
  %154 = bitcast float* %153 to <8 x i32>*
  store <8 x i32> %wide.load2.7, <8 x i32>* %154, align 4, !tbaa !12, !llvm.access.group !16
  %155 = getelementptr inbounds float, float* %149, i64 24
  %156 = bitcast float* %155 to <8 x i32>*
  store <8 x i32> %wide.load3.7, <8 x i32>* %156, align 4, !tbaa !12, !llvm.access.group !16
  ret void
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_runJacobi1D_kernel2_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
vector.ph:
  %5 = bitcast i8** %0 to float***
  %6 = load float**, float*** %5, align 8
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float***
  %10 = load float**, float*** %9, align 8
  %11 = load float*, float** %10, align 8
  %mul.i.i.i = shl i64 %2, 40
  %12 = shl i64 %2, 40
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds float, float* %11, i64 %13
  %15 = bitcast float* %14 to <8 x i32>*
  %wide.load = load <8 x i32>, <8 x i32>* %15, align 4, !tbaa !12, !llvm.access.group !16
  %16 = getelementptr inbounds float, float* %14, i64 8
  %17 = bitcast float* %16 to <8 x i32>*
  %wide.load1 = load <8 x i32>, <8 x i32>* %17, align 4, !tbaa !12, !llvm.access.group !16
  %18 = getelementptr inbounds float, float* %14, i64 16
  %19 = bitcast float* %18 to <8 x i32>*
  %wide.load2 = load <8 x i32>, <8 x i32>* %19, align 4, !tbaa !12, !llvm.access.group !16
  %20 = getelementptr inbounds float, float* %14, i64 24
  %21 = bitcast float* %20 to <8 x i32>*
  %wide.load3 = load <8 x i32>, <8 x i32>* %21, align 4, !tbaa !12, !llvm.access.group !16
  %22 = getelementptr inbounds float, float* %7, i64 %13
  %23 = bitcast float* %22 to <8 x i32>*
  store <8 x i32> %wide.load, <8 x i32>* %23, align 4, !tbaa !12, !llvm.access.group !16
  %24 = getelementptr inbounds float, float* %22, i64 8
  %25 = bitcast float* %24 to <8 x i32>*
  store <8 x i32> %wide.load1, <8 x i32>* %25, align 4, !tbaa !12, !llvm.access.group !16
  %26 = getelementptr inbounds float, float* %22, i64 16
  %27 = bitcast float* %26 to <8 x i32>*
  store <8 x i32> %wide.load2, <8 x i32>* %27, align 4, !tbaa !12, !llvm.access.group !16
  %28 = getelementptr inbounds float, float* %22, i64 24
  %29 = bitcast float* %28 to <8 x i32>*
  store <8 x i32> %wide.load3, <8 x i32>* %29, align 4, !tbaa !12, !llvm.access.group !16
  %30 = shl i64 %2, 40
  %31 = ashr exact i64 %30, 32
  %32 = or i64 %31, 32
  %33 = getelementptr inbounds float, float* %11, i64 %32
  %34 = bitcast float* %33 to <8 x i32>*
  %wide.load.1 = load <8 x i32>, <8 x i32>* %34, align 4, !tbaa !12, !llvm.access.group !16
  %35 = getelementptr inbounds float, float* %33, i64 8
  %36 = bitcast float* %35 to <8 x i32>*
  %wide.load1.1 = load <8 x i32>, <8 x i32>* %36, align 4, !tbaa !12, !llvm.access.group !16
  %37 = getelementptr inbounds float, float* %33, i64 16
  %38 = bitcast float* %37 to <8 x i32>*
  %wide.load2.1 = load <8 x i32>, <8 x i32>* %38, align 4, !tbaa !12, !llvm.access.group !16
  %39 = getelementptr inbounds float, float* %33, i64 24
  %40 = bitcast float* %39 to <8 x i32>*
  %wide.load3.1 = load <8 x i32>, <8 x i32>* %40, align 4, !tbaa !12, !llvm.access.group !16
  %41 = getelementptr inbounds float, float* %7, i64 %32
  %42 = bitcast float* %41 to <8 x i32>*
  store <8 x i32> %wide.load.1, <8 x i32>* %42, align 4, !tbaa !12, !llvm.access.group !16
  %43 = getelementptr inbounds float, float* %41, i64 8
  %44 = bitcast float* %43 to <8 x i32>*
  store <8 x i32> %wide.load1.1, <8 x i32>* %44, align 4, !tbaa !12, !llvm.access.group !16
  %45 = getelementptr inbounds float, float* %41, i64 16
  %46 = bitcast float* %45 to <8 x i32>*
  store <8 x i32> %wide.load2.1, <8 x i32>* %46, align 4, !tbaa !12, !llvm.access.group !16
  %47 = getelementptr inbounds float, float* %41, i64 24
  %48 = bitcast float* %47 to <8 x i32>*
  store <8 x i32> %wide.load3.1, <8 x i32>* %48, align 4, !tbaa !12, !llvm.access.group !16
  %49 = shl i64 %2, 40
  %50 = ashr exact i64 %49, 32
  %51 = or i64 %50, 64
  %52 = getelementptr inbounds float, float* %11, i64 %51
  %53 = bitcast float* %52 to <8 x i32>*
  %wide.load.2 = load <8 x i32>, <8 x i32>* %53, align 4, !tbaa !12, !llvm.access.group !16
  %54 = getelementptr inbounds float, float* %52, i64 8
  %55 = bitcast float* %54 to <8 x i32>*
  %wide.load1.2 = load <8 x i32>, <8 x i32>* %55, align 4, !tbaa !12, !llvm.access.group !16
  %56 = getelementptr inbounds float, float* %52, i64 16
  %57 = bitcast float* %56 to <8 x i32>*
  %wide.load2.2 = load <8 x i32>, <8 x i32>* %57, align 4, !tbaa !12, !llvm.access.group !16
  %58 = getelementptr inbounds float, float* %52, i64 24
  %59 = bitcast float* %58 to <8 x i32>*
  %wide.load3.2 = load <8 x i32>, <8 x i32>* %59, align 4, !tbaa !12, !llvm.access.group !16
  %60 = getelementptr inbounds float, float* %7, i64 %51
  %61 = bitcast float* %60 to <8 x i32>*
  store <8 x i32> %wide.load.2, <8 x i32>* %61, align 4, !tbaa !12, !llvm.access.group !16
  %62 = getelementptr inbounds float, float* %60, i64 8
  %63 = bitcast float* %62 to <8 x i32>*
  store <8 x i32> %wide.load1.2, <8 x i32>* %63, align 4, !tbaa !12, !llvm.access.group !16
  %64 = getelementptr inbounds float, float* %60, i64 16
  %65 = bitcast float* %64 to <8 x i32>*
  store <8 x i32> %wide.load2.2, <8 x i32>* %65, align 4, !tbaa !12, !llvm.access.group !16
  %66 = getelementptr inbounds float, float* %60, i64 24
  %67 = bitcast float* %66 to <8 x i32>*
  store <8 x i32> %wide.load3.2, <8 x i32>* %67, align 4, !tbaa !12, !llvm.access.group !16
  %68 = shl i64 %2, 40
  %69 = ashr exact i64 %68, 32
  %70 = or i64 %69, 96
  %71 = getelementptr inbounds float, float* %11, i64 %70
  %72 = bitcast float* %71 to <8 x i32>*
  %wide.load.3 = load <8 x i32>, <8 x i32>* %72, align 4, !tbaa !12, !llvm.access.group !16
  %73 = getelementptr inbounds float, float* %71, i64 8
  %74 = bitcast float* %73 to <8 x i32>*
  %wide.load1.3 = load <8 x i32>, <8 x i32>* %74, align 4, !tbaa !12, !llvm.access.group !16
  %75 = getelementptr inbounds float, float* %71, i64 16
  %76 = bitcast float* %75 to <8 x i32>*
  %wide.load2.3 = load <8 x i32>, <8 x i32>* %76, align 4, !tbaa !12, !llvm.access.group !16
  %77 = getelementptr inbounds float, float* %71, i64 24
  %78 = bitcast float* %77 to <8 x i32>*
  %wide.load3.3 = load <8 x i32>, <8 x i32>* %78, align 4, !tbaa !12, !llvm.access.group !16
  %79 = getelementptr inbounds float, float* %7, i64 %70
  %80 = bitcast float* %79 to <8 x i32>*
  store <8 x i32> %wide.load.3, <8 x i32>* %80, align 4, !tbaa !12, !llvm.access.group !16
  %81 = getelementptr inbounds float, float* %79, i64 8
  %82 = bitcast float* %81 to <8 x i32>*
  store <8 x i32> %wide.load1.3, <8 x i32>* %82, align 4, !tbaa !12, !llvm.access.group !16
  %83 = getelementptr inbounds float, float* %79, i64 16
  %84 = bitcast float* %83 to <8 x i32>*
  store <8 x i32> %wide.load2.3, <8 x i32>* %84, align 4, !tbaa !12, !llvm.access.group !16
  %85 = getelementptr inbounds float, float* %79, i64 24
  %86 = bitcast float* %85 to <8 x i32>*
  store <8 x i32> %wide.load3.3, <8 x i32>* %86, align 4, !tbaa !12, !llvm.access.group !16
  %87 = shl i64 %2, 40
  %88 = ashr exact i64 %87, 32
  %89 = or i64 %88, 128
  %90 = getelementptr inbounds float, float* %11, i64 %89
  %91 = bitcast float* %90 to <8 x i32>*
  %wide.load.4 = load <8 x i32>, <8 x i32>* %91, align 4, !tbaa !12, !llvm.access.group !16
  %92 = getelementptr inbounds float, float* %90, i64 8
  %93 = bitcast float* %92 to <8 x i32>*
  %wide.load1.4 = load <8 x i32>, <8 x i32>* %93, align 4, !tbaa !12, !llvm.access.group !16
  %94 = getelementptr inbounds float, float* %90, i64 16
  %95 = bitcast float* %94 to <8 x i32>*
  %wide.load2.4 = load <8 x i32>, <8 x i32>* %95, align 4, !tbaa !12, !llvm.access.group !16
  %96 = getelementptr inbounds float, float* %90, i64 24
  %97 = bitcast float* %96 to <8 x i32>*
  %wide.load3.4 = load <8 x i32>, <8 x i32>* %97, align 4, !tbaa !12, !llvm.access.group !16
  %98 = getelementptr inbounds float, float* %7, i64 %89
  %99 = bitcast float* %98 to <8 x i32>*
  store <8 x i32> %wide.load.4, <8 x i32>* %99, align 4, !tbaa !12, !llvm.access.group !16
  %100 = getelementptr inbounds float, float* %98, i64 8
  %101 = bitcast float* %100 to <8 x i32>*
  store <8 x i32> %wide.load1.4, <8 x i32>* %101, align 4, !tbaa !12, !llvm.access.group !16
  %102 = getelementptr inbounds float, float* %98, i64 16
  %103 = bitcast float* %102 to <8 x i32>*
  store <8 x i32> %wide.load2.4, <8 x i32>* %103, align 4, !tbaa !12, !llvm.access.group !16
  %104 = getelementptr inbounds float, float* %98, i64 24
  %105 = bitcast float* %104 to <8 x i32>*
  store <8 x i32> %wide.load3.4, <8 x i32>* %105, align 4, !tbaa !12, !llvm.access.group !16
  %106 = shl i64 %2, 40
  %107 = ashr exact i64 %106, 32
  %108 = or i64 %107, 160
  %109 = getelementptr inbounds float, float* %11, i64 %108
  %110 = bitcast float* %109 to <8 x i32>*
  %wide.load.5 = load <8 x i32>, <8 x i32>* %110, align 4, !tbaa !12, !llvm.access.group !16
  %111 = getelementptr inbounds float, float* %109, i64 8
  %112 = bitcast float* %111 to <8 x i32>*
  %wide.load1.5 = load <8 x i32>, <8 x i32>* %112, align 4, !tbaa !12, !llvm.access.group !16
  %113 = getelementptr inbounds float, float* %109, i64 16
  %114 = bitcast float* %113 to <8 x i32>*
  %wide.load2.5 = load <8 x i32>, <8 x i32>* %114, align 4, !tbaa !12, !llvm.access.group !16
  %115 = getelementptr inbounds float, float* %109, i64 24
  %116 = bitcast float* %115 to <8 x i32>*
  %wide.load3.5 = load <8 x i32>, <8 x i32>* %116, align 4, !tbaa !12, !llvm.access.group !16
  %117 = getelementptr inbounds float, float* %7, i64 %108
  %118 = bitcast float* %117 to <8 x i32>*
  store <8 x i32> %wide.load.5, <8 x i32>* %118, align 4, !tbaa !12, !llvm.access.group !16
  %119 = getelementptr inbounds float, float* %117, i64 8
  %120 = bitcast float* %119 to <8 x i32>*
  store <8 x i32> %wide.load1.5, <8 x i32>* %120, align 4, !tbaa !12, !llvm.access.group !16
  %121 = getelementptr inbounds float, float* %117, i64 16
  %122 = bitcast float* %121 to <8 x i32>*
  store <8 x i32> %wide.load2.5, <8 x i32>* %122, align 4, !tbaa !12, !llvm.access.group !16
  %123 = getelementptr inbounds float, float* %117, i64 24
  %124 = bitcast float* %123 to <8 x i32>*
  store <8 x i32> %wide.load3.5, <8 x i32>* %124, align 4, !tbaa !12, !llvm.access.group !16
  %125 = shl i64 %2, 40
  %126 = ashr exact i64 %125, 32
  %127 = or i64 %126, 192
  %128 = getelementptr inbounds float, float* %11, i64 %127
  %129 = bitcast float* %128 to <8 x i32>*
  %wide.load.6 = load <8 x i32>, <8 x i32>* %129, align 4, !tbaa !12, !llvm.access.group !16
  %130 = getelementptr inbounds float, float* %128, i64 8
  %131 = bitcast float* %130 to <8 x i32>*
  %wide.load1.6 = load <8 x i32>, <8 x i32>* %131, align 4, !tbaa !12, !llvm.access.group !16
  %132 = getelementptr inbounds float, float* %128, i64 16
  %133 = bitcast float* %132 to <8 x i32>*
  %wide.load2.6 = load <8 x i32>, <8 x i32>* %133, align 4, !tbaa !12, !llvm.access.group !16
  %134 = getelementptr inbounds float, float* %128, i64 24
  %135 = bitcast float* %134 to <8 x i32>*
  %wide.load3.6 = load <8 x i32>, <8 x i32>* %135, align 4, !tbaa !12, !llvm.access.group !16
  %136 = getelementptr inbounds float, float* %7, i64 %127
  %137 = bitcast float* %136 to <8 x i32>*
  store <8 x i32> %wide.load.6, <8 x i32>* %137, align 4, !tbaa !12, !llvm.access.group !16
  %138 = getelementptr inbounds float, float* %136, i64 8
  %139 = bitcast float* %138 to <8 x i32>*
  store <8 x i32> %wide.load1.6, <8 x i32>* %139, align 4, !tbaa !12, !llvm.access.group !16
  %140 = getelementptr inbounds float, float* %136, i64 16
  %141 = bitcast float* %140 to <8 x i32>*
  store <8 x i32> %wide.load2.6, <8 x i32>* %141, align 4, !tbaa !12, !llvm.access.group !16
  %142 = getelementptr inbounds float, float* %136, i64 24
  %143 = bitcast float* %142 to <8 x i32>*
  store <8 x i32> %wide.load3.6, <8 x i32>* %143, align 4, !tbaa !12, !llvm.access.group !16
  %144 = ashr exact i64 %mul.i.i.i, 32
  %145 = or i64 %144, 224
  %146 = getelementptr inbounds float, float* %11, i64 %145
  %147 = bitcast float* %146 to <8 x i32>*
  %wide.load.7 = load <8 x i32>, <8 x i32>* %147, align 4, !tbaa !12, !llvm.access.group !16
  %148 = getelementptr inbounds float, float* %146, i64 8
  %149 = bitcast float* %148 to <8 x i32>*
  %wide.load1.7 = load <8 x i32>, <8 x i32>* %149, align 4, !tbaa !12, !llvm.access.group !16
  %150 = getelementptr inbounds float, float* %146, i64 16
  %151 = bitcast float* %150 to <8 x i32>*
  %wide.load2.7 = load <8 x i32>, <8 x i32>* %151, align 4, !tbaa !12, !llvm.access.group !16
  %152 = getelementptr inbounds float, float* %146, i64 24
  %153 = bitcast float* %152 to <8 x i32>*
  %wide.load3.7 = load <8 x i32>, <8 x i32>* %153, align 4, !tbaa !12, !llvm.access.group !16
  %154 = getelementptr inbounds float, float* %7, i64 %145
  %155 = bitcast float* %154 to <8 x i32>*
  store <8 x i32> %wide.load.7, <8 x i32>* %155, align 4, !tbaa !12, !llvm.access.group !16
  %156 = getelementptr inbounds float, float* %154, i64 8
  %157 = bitcast float* %156 to <8 x i32>*
  store <8 x i32> %wide.load1.7, <8 x i32>* %157, align 4, !tbaa !12, !llvm.access.group !16
  %158 = getelementptr inbounds float, float* %154, i64 16
  %159 = bitcast float* %158 to <8 x i32>*
  store <8 x i32> %wide.load2.7, <8 x i32>* %159, align 4, !tbaa !12, !llvm.access.group !16
  %160 = getelementptr inbounds float, float* %154, i64 24
  %161 = bitcast float* %160 to <8 x i32>*
  store <8 x i32> %wide.load3.7, <8 x i32>* %161, align 4, !tbaa !12, !llvm.access.group !16
  ret void
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_runJacobi1D_kernel2_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
vector.ph:
  %5 = bitcast i8** %0 to float**
  %6 = load float*, float** %5, align 8
  %7 = getelementptr i8*, i8** %0, i64 1
  %8 = bitcast i8** %7 to float**
  %9 = load float*, float** %8, align 8
  %mul.i.i.i = shl i64 %2, 40
  %10 = shl i64 %2, 40
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds float, float* %9, i64 %11
  %13 = bitcast float* %12 to <8 x i32>*
  %wide.load = load <8 x i32>, <8 x i32>* %13, align 4, !tbaa !12, !llvm.access.group !16
  %14 = getelementptr inbounds float, float* %12, i64 8
  %15 = bitcast float* %14 to <8 x i32>*
  %wide.load1 = load <8 x i32>, <8 x i32>* %15, align 4, !tbaa !12, !llvm.access.group !16
  %16 = getelementptr inbounds float, float* %12, i64 16
  %17 = bitcast float* %16 to <8 x i32>*
  %wide.load2 = load <8 x i32>, <8 x i32>* %17, align 4, !tbaa !12, !llvm.access.group !16
  %18 = getelementptr inbounds float, float* %12, i64 24
  %19 = bitcast float* %18 to <8 x i32>*
  %wide.load3 = load <8 x i32>, <8 x i32>* %19, align 4, !tbaa !12, !llvm.access.group !16
  %20 = getelementptr inbounds float, float* %6, i64 %11
  %21 = bitcast float* %20 to <8 x i32>*
  store <8 x i32> %wide.load, <8 x i32>* %21, align 4, !tbaa !12, !llvm.access.group !16
  %22 = getelementptr inbounds float, float* %20, i64 8
  %23 = bitcast float* %22 to <8 x i32>*
  store <8 x i32> %wide.load1, <8 x i32>* %23, align 4, !tbaa !12, !llvm.access.group !16
  %24 = getelementptr inbounds float, float* %20, i64 16
  %25 = bitcast float* %24 to <8 x i32>*
  store <8 x i32> %wide.load2, <8 x i32>* %25, align 4, !tbaa !12, !llvm.access.group !16
  %26 = getelementptr inbounds float, float* %20, i64 24
  %27 = bitcast float* %26 to <8 x i32>*
  store <8 x i32> %wide.load3, <8 x i32>* %27, align 4, !tbaa !12, !llvm.access.group !16
  %28 = shl i64 %2, 40
  %29 = ashr exact i64 %28, 32
  %30 = or i64 %29, 32
  %31 = getelementptr inbounds float, float* %9, i64 %30
  %32 = bitcast float* %31 to <8 x i32>*
  %wide.load.1 = load <8 x i32>, <8 x i32>* %32, align 4, !tbaa !12, !llvm.access.group !16
  %33 = getelementptr inbounds float, float* %31, i64 8
  %34 = bitcast float* %33 to <8 x i32>*
  %wide.load1.1 = load <8 x i32>, <8 x i32>* %34, align 4, !tbaa !12, !llvm.access.group !16
  %35 = getelementptr inbounds float, float* %31, i64 16
  %36 = bitcast float* %35 to <8 x i32>*
  %wide.load2.1 = load <8 x i32>, <8 x i32>* %36, align 4, !tbaa !12, !llvm.access.group !16
  %37 = getelementptr inbounds float, float* %31, i64 24
  %38 = bitcast float* %37 to <8 x i32>*
  %wide.load3.1 = load <8 x i32>, <8 x i32>* %38, align 4, !tbaa !12, !llvm.access.group !16
  %39 = getelementptr inbounds float, float* %6, i64 %30
  %40 = bitcast float* %39 to <8 x i32>*
  store <8 x i32> %wide.load.1, <8 x i32>* %40, align 4, !tbaa !12, !llvm.access.group !16
  %41 = getelementptr inbounds float, float* %39, i64 8
  %42 = bitcast float* %41 to <8 x i32>*
  store <8 x i32> %wide.load1.1, <8 x i32>* %42, align 4, !tbaa !12, !llvm.access.group !16
  %43 = getelementptr inbounds float, float* %39, i64 16
  %44 = bitcast float* %43 to <8 x i32>*
  store <8 x i32> %wide.load2.1, <8 x i32>* %44, align 4, !tbaa !12, !llvm.access.group !16
  %45 = getelementptr inbounds float, float* %39, i64 24
  %46 = bitcast float* %45 to <8 x i32>*
  store <8 x i32> %wide.load3.1, <8 x i32>* %46, align 4, !tbaa !12, !llvm.access.group !16
  %47 = shl i64 %2, 40
  %48 = ashr exact i64 %47, 32
  %49 = or i64 %48, 64
  %50 = getelementptr inbounds float, float* %9, i64 %49
  %51 = bitcast float* %50 to <8 x i32>*
  %wide.load.2 = load <8 x i32>, <8 x i32>* %51, align 4, !tbaa !12, !llvm.access.group !16
  %52 = getelementptr inbounds float, float* %50, i64 8
  %53 = bitcast float* %52 to <8 x i32>*
  %wide.load1.2 = load <8 x i32>, <8 x i32>* %53, align 4, !tbaa !12, !llvm.access.group !16
  %54 = getelementptr inbounds float, float* %50, i64 16
  %55 = bitcast float* %54 to <8 x i32>*
  %wide.load2.2 = load <8 x i32>, <8 x i32>* %55, align 4, !tbaa !12, !llvm.access.group !16
  %56 = getelementptr inbounds float, float* %50, i64 24
  %57 = bitcast float* %56 to <8 x i32>*
  %wide.load3.2 = load <8 x i32>, <8 x i32>* %57, align 4, !tbaa !12, !llvm.access.group !16
  %58 = getelementptr inbounds float, float* %6, i64 %49
  %59 = bitcast float* %58 to <8 x i32>*
  store <8 x i32> %wide.load.2, <8 x i32>* %59, align 4, !tbaa !12, !llvm.access.group !16
  %60 = getelementptr inbounds float, float* %58, i64 8
  %61 = bitcast float* %60 to <8 x i32>*
  store <8 x i32> %wide.load1.2, <8 x i32>* %61, align 4, !tbaa !12, !llvm.access.group !16
  %62 = getelementptr inbounds float, float* %58, i64 16
  %63 = bitcast float* %62 to <8 x i32>*
  store <8 x i32> %wide.load2.2, <8 x i32>* %63, align 4, !tbaa !12, !llvm.access.group !16
  %64 = getelementptr inbounds float, float* %58, i64 24
  %65 = bitcast float* %64 to <8 x i32>*
  store <8 x i32> %wide.load3.2, <8 x i32>* %65, align 4, !tbaa !12, !llvm.access.group !16
  %66 = shl i64 %2, 40
  %67 = ashr exact i64 %66, 32
  %68 = or i64 %67, 96
  %69 = getelementptr inbounds float, float* %9, i64 %68
  %70 = bitcast float* %69 to <8 x i32>*
  %wide.load.3 = load <8 x i32>, <8 x i32>* %70, align 4, !tbaa !12, !llvm.access.group !16
  %71 = getelementptr inbounds float, float* %69, i64 8
  %72 = bitcast float* %71 to <8 x i32>*
  %wide.load1.3 = load <8 x i32>, <8 x i32>* %72, align 4, !tbaa !12, !llvm.access.group !16
  %73 = getelementptr inbounds float, float* %69, i64 16
  %74 = bitcast float* %73 to <8 x i32>*
  %wide.load2.3 = load <8 x i32>, <8 x i32>* %74, align 4, !tbaa !12, !llvm.access.group !16
  %75 = getelementptr inbounds float, float* %69, i64 24
  %76 = bitcast float* %75 to <8 x i32>*
  %wide.load3.3 = load <8 x i32>, <8 x i32>* %76, align 4, !tbaa !12, !llvm.access.group !16
  %77 = getelementptr inbounds float, float* %6, i64 %68
  %78 = bitcast float* %77 to <8 x i32>*
  store <8 x i32> %wide.load.3, <8 x i32>* %78, align 4, !tbaa !12, !llvm.access.group !16
  %79 = getelementptr inbounds float, float* %77, i64 8
  %80 = bitcast float* %79 to <8 x i32>*
  store <8 x i32> %wide.load1.3, <8 x i32>* %80, align 4, !tbaa !12, !llvm.access.group !16
  %81 = getelementptr inbounds float, float* %77, i64 16
  %82 = bitcast float* %81 to <8 x i32>*
  store <8 x i32> %wide.load2.3, <8 x i32>* %82, align 4, !tbaa !12, !llvm.access.group !16
  %83 = getelementptr inbounds float, float* %77, i64 24
  %84 = bitcast float* %83 to <8 x i32>*
  store <8 x i32> %wide.load3.3, <8 x i32>* %84, align 4, !tbaa !12, !llvm.access.group !16
  %85 = shl i64 %2, 40
  %86 = ashr exact i64 %85, 32
  %87 = or i64 %86, 128
  %88 = getelementptr inbounds float, float* %9, i64 %87
  %89 = bitcast float* %88 to <8 x i32>*
  %wide.load.4 = load <8 x i32>, <8 x i32>* %89, align 4, !tbaa !12, !llvm.access.group !16
  %90 = getelementptr inbounds float, float* %88, i64 8
  %91 = bitcast float* %90 to <8 x i32>*
  %wide.load1.4 = load <8 x i32>, <8 x i32>* %91, align 4, !tbaa !12, !llvm.access.group !16
  %92 = getelementptr inbounds float, float* %88, i64 16
  %93 = bitcast float* %92 to <8 x i32>*
  %wide.load2.4 = load <8 x i32>, <8 x i32>* %93, align 4, !tbaa !12, !llvm.access.group !16
  %94 = getelementptr inbounds float, float* %88, i64 24
  %95 = bitcast float* %94 to <8 x i32>*
  %wide.load3.4 = load <8 x i32>, <8 x i32>* %95, align 4, !tbaa !12, !llvm.access.group !16
  %96 = getelementptr inbounds float, float* %6, i64 %87
  %97 = bitcast float* %96 to <8 x i32>*
  store <8 x i32> %wide.load.4, <8 x i32>* %97, align 4, !tbaa !12, !llvm.access.group !16
  %98 = getelementptr inbounds float, float* %96, i64 8
  %99 = bitcast float* %98 to <8 x i32>*
  store <8 x i32> %wide.load1.4, <8 x i32>* %99, align 4, !tbaa !12, !llvm.access.group !16
  %100 = getelementptr inbounds float, float* %96, i64 16
  %101 = bitcast float* %100 to <8 x i32>*
  store <8 x i32> %wide.load2.4, <8 x i32>* %101, align 4, !tbaa !12, !llvm.access.group !16
  %102 = getelementptr inbounds float, float* %96, i64 24
  %103 = bitcast float* %102 to <8 x i32>*
  store <8 x i32> %wide.load3.4, <8 x i32>* %103, align 4, !tbaa !12, !llvm.access.group !16
  %104 = shl i64 %2, 40
  %105 = ashr exact i64 %104, 32
  %106 = or i64 %105, 160
  %107 = getelementptr inbounds float, float* %9, i64 %106
  %108 = bitcast float* %107 to <8 x i32>*
  %wide.load.5 = load <8 x i32>, <8 x i32>* %108, align 4, !tbaa !12, !llvm.access.group !16
  %109 = getelementptr inbounds float, float* %107, i64 8
  %110 = bitcast float* %109 to <8 x i32>*
  %wide.load1.5 = load <8 x i32>, <8 x i32>* %110, align 4, !tbaa !12, !llvm.access.group !16
  %111 = getelementptr inbounds float, float* %107, i64 16
  %112 = bitcast float* %111 to <8 x i32>*
  %wide.load2.5 = load <8 x i32>, <8 x i32>* %112, align 4, !tbaa !12, !llvm.access.group !16
  %113 = getelementptr inbounds float, float* %107, i64 24
  %114 = bitcast float* %113 to <8 x i32>*
  %wide.load3.5 = load <8 x i32>, <8 x i32>* %114, align 4, !tbaa !12, !llvm.access.group !16
  %115 = getelementptr inbounds float, float* %6, i64 %106
  %116 = bitcast float* %115 to <8 x i32>*
  store <8 x i32> %wide.load.5, <8 x i32>* %116, align 4, !tbaa !12, !llvm.access.group !16
  %117 = getelementptr inbounds float, float* %115, i64 8
  %118 = bitcast float* %117 to <8 x i32>*
  store <8 x i32> %wide.load1.5, <8 x i32>* %118, align 4, !tbaa !12, !llvm.access.group !16
  %119 = getelementptr inbounds float, float* %115, i64 16
  %120 = bitcast float* %119 to <8 x i32>*
  store <8 x i32> %wide.load2.5, <8 x i32>* %120, align 4, !tbaa !12, !llvm.access.group !16
  %121 = getelementptr inbounds float, float* %115, i64 24
  %122 = bitcast float* %121 to <8 x i32>*
  store <8 x i32> %wide.load3.5, <8 x i32>* %122, align 4, !tbaa !12, !llvm.access.group !16
  %123 = shl i64 %2, 40
  %124 = ashr exact i64 %123, 32
  %125 = or i64 %124, 192
  %126 = getelementptr inbounds float, float* %9, i64 %125
  %127 = bitcast float* %126 to <8 x i32>*
  %wide.load.6 = load <8 x i32>, <8 x i32>* %127, align 4, !tbaa !12, !llvm.access.group !16
  %128 = getelementptr inbounds float, float* %126, i64 8
  %129 = bitcast float* %128 to <8 x i32>*
  %wide.load1.6 = load <8 x i32>, <8 x i32>* %129, align 4, !tbaa !12, !llvm.access.group !16
  %130 = getelementptr inbounds float, float* %126, i64 16
  %131 = bitcast float* %130 to <8 x i32>*
  %wide.load2.6 = load <8 x i32>, <8 x i32>* %131, align 4, !tbaa !12, !llvm.access.group !16
  %132 = getelementptr inbounds float, float* %126, i64 24
  %133 = bitcast float* %132 to <8 x i32>*
  %wide.load3.6 = load <8 x i32>, <8 x i32>* %133, align 4, !tbaa !12, !llvm.access.group !16
  %134 = getelementptr inbounds float, float* %6, i64 %125
  %135 = bitcast float* %134 to <8 x i32>*
  store <8 x i32> %wide.load.6, <8 x i32>* %135, align 4, !tbaa !12, !llvm.access.group !16
  %136 = getelementptr inbounds float, float* %134, i64 8
  %137 = bitcast float* %136 to <8 x i32>*
  store <8 x i32> %wide.load1.6, <8 x i32>* %137, align 4, !tbaa !12, !llvm.access.group !16
  %138 = getelementptr inbounds float, float* %134, i64 16
  %139 = bitcast float* %138 to <8 x i32>*
  store <8 x i32> %wide.load2.6, <8 x i32>* %139, align 4, !tbaa !12, !llvm.access.group !16
  %140 = getelementptr inbounds float, float* %134, i64 24
  %141 = bitcast float* %140 to <8 x i32>*
  store <8 x i32> %wide.load3.6, <8 x i32>* %141, align 4, !tbaa !12, !llvm.access.group !16
  %142 = ashr exact i64 %mul.i.i.i, 32
  %143 = or i64 %142, 224
  %144 = getelementptr inbounds float, float* %9, i64 %143
  %145 = bitcast float* %144 to <8 x i32>*
  %wide.load.7 = load <8 x i32>, <8 x i32>* %145, align 4, !tbaa !12, !llvm.access.group !16
  %146 = getelementptr inbounds float, float* %144, i64 8
  %147 = bitcast float* %146 to <8 x i32>*
  %wide.load1.7 = load <8 x i32>, <8 x i32>* %147, align 4, !tbaa !12, !llvm.access.group !16
  %148 = getelementptr inbounds float, float* %144, i64 16
  %149 = bitcast float* %148 to <8 x i32>*
  %wide.load2.7 = load <8 x i32>, <8 x i32>* %149, align 4, !tbaa !12, !llvm.access.group !16
  %150 = getelementptr inbounds float, float* %144, i64 24
  %151 = bitcast float* %150 to <8 x i32>*
  %wide.load3.7 = load <8 x i32>, <8 x i32>* %151, align 4, !tbaa !12, !llvm.access.group !16
  %152 = getelementptr inbounds float, float* %6, i64 %143
  %153 = bitcast float* %152 to <8 x i32>*
  store <8 x i32> %wide.load.7, <8 x i32>* %153, align 4, !tbaa !12, !llvm.access.group !16
  %154 = getelementptr inbounds float, float* %152, i64 8
  %155 = bitcast float* %154 to <8 x i32>*
  store <8 x i32> %wide.load1.7, <8 x i32>* %155, align 4, !tbaa !12, !llvm.access.group !16
  %156 = getelementptr inbounds float, float* %152, i64 16
  %157 = bitcast float* %156 to <8 x i32>*
  store <8 x i32> %wide.load2.7, <8 x i32>* %157, align 4, !tbaa !12, !llvm.access.group !16
  %158 = getelementptr inbounds float, float* %152, i64 24
  %159 = bitcast float* %158 to <8 x i32>*
  store <8 x i32> %wide.load3.7, <8 x i32>* %159, align 4, !tbaa !12, !llvm.access.group !16
  ret void
}

attributes #0 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree norecurse nounwind }

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
