; ModuleID = 'parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_runJacobi2D_kernel2(float* nocapture %0, float* nocapture readonly %1, i32 %2, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %3, i64 %4, i64 %5, i64 %6) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul3.i.i = shl i64 %5, 3
  %mul.i.i = shl i64 %4, 5
  %conv2.i = trunc i64 %mul.i.i to i32
  %8 = trunc i64 %mul.i.i to i32
  %conv2.i.1 = or i32 %8, 1
  %9 = trunc i64 %mul.i.i to i32
  %conv2.i.2 = or i32 %9, 2
  %10 = trunc i64 %mul.i.i to i32
  %conv2.i.3 = or i32 %10, 3
  %11 = trunc i64 %mul.i.i to i32
  %conv2.i.4 = or i32 %11, 4
  %12 = trunc i64 %mul.i.i to i32
  %conv2.i.5 = or i32 %12, 5
  %13 = trunc i64 %mul.i.i to i32
  %conv2.i.6 = or i32 %13, 6
  %14 = trunc i64 %mul.i.i to i32
  %conv2.i.7 = or i32 %14, 7
  %15 = trunc i64 %mul.i.i to i32
  %conv2.i.8 = or i32 %15, 8
  %16 = trunc i64 %mul.i.i to i32
  %conv2.i.9 = or i32 %16, 9
  %17 = trunc i64 %mul.i.i to i32
  %conv2.i.10 = or i32 %17, 10
  %18 = trunc i64 %mul.i.i to i32
  %conv2.i.11 = or i32 %18, 11
  %19 = trunc i64 %mul.i.i to i32
  %conv2.i.12 = or i32 %19, 12
  %20 = trunc i64 %mul.i.i to i32
  %conv2.i.13 = or i32 %20, 13
  %21 = trunc i64 %mul.i.i to i32
  %conv2.i.14 = or i32 %21, 14
  %22 = trunc i64 %mul.i.i to i32
  %conv2.i.15 = or i32 %22, 15
  %23 = trunc i64 %mul.i.i to i32
  %conv2.i.16 = or i32 %23, 16
  %24 = trunc i64 %mul.i.i to i32
  %conv2.i.17 = or i32 %24, 17
  %25 = trunc i64 %mul.i.i to i32
  %conv2.i.18 = or i32 %25, 18
  %26 = trunc i64 %mul.i.i to i32
  %conv2.i.19 = or i32 %26, 19
  %27 = trunc i64 %mul.i.i to i32
  %conv2.i.20 = or i32 %27, 20
  %28 = trunc i64 %mul.i.i to i32
  %conv2.i.21 = or i32 %28, 21
  %29 = trunc i64 %mul.i.i to i32
  %conv2.i.22 = or i32 %29, 22
  %30 = trunc i64 %mul.i.i to i32
  %conv2.i.23 = or i32 %30, 23
  %31 = trunc i64 %mul.i.i to i32
  %conv2.i.24 = or i32 %31, 24
  %32 = trunc i64 %mul.i.i to i32
  %conv2.i.25 = or i32 %32, 25
  %33 = trunc i64 %mul.i.i to i32
  %conv2.i.26 = or i32 %33, 26
  %34 = trunc i64 %mul.i.i to i32
  %conv2.i.27 = or i32 %34, 27
  %35 = trunc i64 %mul.i.i to i32
  %conv2.i.28 = or i32 %35, 28
  %36 = trunc i64 %mul.i.i to i32
  %conv2.i.29 = or i32 %36, 29
  %37 = trunc i64 %mul.i.i to i32
  %conv2.i.30 = or i32 %37, 30
  %38 = trunc i64 %mul.i.i to i32
  %conv2.i.31 = or i32 %38, 31
  br label %pregion_for_entry.pregion_for_init.i

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_entry.pregion_for_init.i, %7
  %_local_id_y.0 = phi i64 [ 0, %7 ], [ %135, %pregion_for_entry.pregion_for_init.i ]
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv.i = trunc i64 %add6.i.i to i32
  %mul.i = mul nsw i32 %conv.i, %2
  %add.i = add nsw i32 %mul.i, %conv2.i
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %1, i64 %idxprom.i
  %39 = bitcast float* %arrayidx.i to i32*
  %40 = load i32, i32* %39, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i = getelementptr inbounds float, float* %0, i64 %idxprom.i
  %41 = bitcast float* %arrayidx6.i to i32*
  store i32 %40, i32* %41, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.1 = add nsw i32 %mul.i, %conv2.i.1
  %idxprom.i.1 = sext i32 %add.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.1
  %42 = bitcast float* %arrayidx.i.1 to i32*
  %43 = load i32, i32* %42, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.1
  %44 = bitcast float* %arrayidx6.i.1 to i32*
  store i32 %43, i32* %44, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.2 = add nsw i32 %mul.i, %conv2.i.2
  %idxprom.i.2 = sext i32 %add.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.2
  %45 = bitcast float* %arrayidx.i.2 to i32*
  %46 = load i32, i32* %45, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.2
  %47 = bitcast float* %arrayidx6.i.2 to i32*
  store i32 %46, i32* %47, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.3 = add nsw i32 %mul.i, %conv2.i.3
  %idxprom.i.3 = sext i32 %add.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.3
  %48 = bitcast float* %arrayidx.i.3 to i32*
  %49 = load i32, i32* %48, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.3
  %50 = bitcast float* %arrayidx6.i.3 to i32*
  store i32 %49, i32* %50, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.4 = add nsw i32 %mul.i, %conv2.i.4
  %idxprom.i.4 = sext i32 %add.i.4 to i64
  %arrayidx.i.4 = getelementptr inbounds float, float* %1, i64 %idxprom.i.4
  %51 = bitcast float* %arrayidx.i.4 to i32*
  %52 = load i32, i32* %51, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.4 = getelementptr inbounds float, float* %0, i64 %idxprom.i.4
  %53 = bitcast float* %arrayidx6.i.4 to i32*
  store i32 %52, i32* %53, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.5 = add nsw i32 %mul.i, %conv2.i.5
  %idxprom.i.5 = sext i32 %add.i.5 to i64
  %arrayidx.i.5 = getelementptr inbounds float, float* %1, i64 %idxprom.i.5
  %54 = bitcast float* %arrayidx.i.5 to i32*
  %55 = load i32, i32* %54, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.5 = getelementptr inbounds float, float* %0, i64 %idxprom.i.5
  %56 = bitcast float* %arrayidx6.i.5 to i32*
  store i32 %55, i32* %56, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.6 = add nsw i32 %mul.i, %conv2.i.6
  %idxprom.i.6 = sext i32 %add.i.6 to i64
  %arrayidx.i.6 = getelementptr inbounds float, float* %1, i64 %idxprom.i.6
  %57 = bitcast float* %arrayidx.i.6 to i32*
  %58 = load i32, i32* %57, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.6 = getelementptr inbounds float, float* %0, i64 %idxprom.i.6
  %59 = bitcast float* %arrayidx6.i.6 to i32*
  store i32 %58, i32* %59, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.7 = add nsw i32 %mul.i, %conv2.i.7
  %idxprom.i.7 = sext i32 %add.i.7 to i64
  %arrayidx.i.7 = getelementptr inbounds float, float* %1, i64 %idxprom.i.7
  %60 = bitcast float* %arrayidx.i.7 to i32*
  %61 = load i32, i32* %60, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.7 = getelementptr inbounds float, float* %0, i64 %idxprom.i.7
  %62 = bitcast float* %arrayidx6.i.7 to i32*
  store i32 %61, i32* %62, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.8 = add nsw i32 %mul.i, %conv2.i.8
  %idxprom.i.8 = sext i32 %add.i.8 to i64
  %arrayidx.i.8 = getelementptr inbounds float, float* %1, i64 %idxprom.i.8
  %63 = bitcast float* %arrayidx.i.8 to i32*
  %64 = load i32, i32* %63, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.8 = getelementptr inbounds float, float* %0, i64 %idxprom.i.8
  %65 = bitcast float* %arrayidx6.i.8 to i32*
  store i32 %64, i32* %65, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.9 = add nsw i32 %mul.i, %conv2.i.9
  %idxprom.i.9 = sext i32 %add.i.9 to i64
  %arrayidx.i.9 = getelementptr inbounds float, float* %1, i64 %idxprom.i.9
  %66 = bitcast float* %arrayidx.i.9 to i32*
  %67 = load i32, i32* %66, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.9 = getelementptr inbounds float, float* %0, i64 %idxprom.i.9
  %68 = bitcast float* %arrayidx6.i.9 to i32*
  store i32 %67, i32* %68, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.10 = add nsw i32 %mul.i, %conv2.i.10
  %idxprom.i.10 = sext i32 %add.i.10 to i64
  %arrayidx.i.10 = getelementptr inbounds float, float* %1, i64 %idxprom.i.10
  %69 = bitcast float* %arrayidx.i.10 to i32*
  %70 = load i32, i32* %69, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.10 = getelementptr inbounds float, float* %0, i64 %idxprom.i.10
  %71 = bitcast float* %arrayidx6.i.10 to i32*
  store i32 %70, i32* %71, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.11 = add nsw i32 %mul.i, %conv2.i.11
  %idxprom.i.11 = sext i32 %add.i.11 to i64
  %arrayidx.i.11 = getelementptr inbounds float, float* %1, i64 %idxprom.i.11
  %72 = bitcast float* %arrayidx.i.11 to i32*
  %73 = load i32, i32* %72, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.11 = getelementptr inbounds float, float* %0, i64 %idxprom.i.11
  %74 = bitcast float* %arrayidx6.i.11 to i32*
  store i32 %73, i32* %74, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.12 = add nsw i32 %mul.i, %conv2.i.12
  %idxprom.i.12 = sext i32 %add.i.12 to i64
  %arrayidx.i.12 = getelementptr inbounds float, float* %1, i64 %idxprom.i.12
  %75 = bitcast float* %arrayidx.i.12 to i32*
  %76 = load i32, i32* %75, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.12 = getelementptr inbounds float, float* %0, i64 %idxprom.i.12
  %77 = bitcast float* %arrayidx6.i.12 to i32*
  store i32 %76, i32* %77, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.13 = add nsw i32 %mul.i, %conv2.i.13
  %idxprom.i.13 = sext i32 %add.i.13 to i64
  %arrayidx.i.13 = getelementptr inbounds float, float* %1, i64 %idxprom.i.13
  %78 = bitcast float* %arrayidx.i.13 to i32*
  %79 = load i32, i32* %78, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.13 = getelementptr inbounds float, float* %0, i64 %idxprom.i.13
  %80 = bitcast float* %arrayidx6.i.13 to i32*
  store i32 %79, i32* %80, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.14 = add nsw i32 %mul.i, %conv2.i.14
  %idxprom.i.14 = sext i32 %add.i.14 to i64
  %arrayidx.i.14 = getelementptr inbounds float, float* %1, i64 %idxprom.i.14
  %81 = bitcast float* %arrayidx.i.14 to i32*
  %82 = load i32, i32* %81, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.14 = getelementptr inbounds float, float* %0, i64 %idxprom.i.14
  %83 = bitcast float* %arrayidx6.i.14 to i32*
  store i32 %82, i32* %83, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.15 = add nsw i32 %mul.i, %conv2.i.15
  %idxprom.i.15 = sext i32 %add.i.15 to i64
  %arrayidx.i.15 = getelementptr inbounds float, float* %1, i64 %idxprom.i.15
  %84 = bitcast float* %arrayidx.i.15 to i32*
  %85 = load i32, i32* %84, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.15 = getelementptr inbounds float, float* %0, i64 %idxprom.i.15
  %86 = bitcast float* %arrayidx6.i.15 to i32*
  store i32 %85, i32* %86, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.16 = add nsw i32 %mul.i, %conv2.i.16
  %idxprom.i.16 = sext i32 %add.i.16 to i64
  %arrayidx.i.16 = getelementptr inbounds float, float* %1, i64 %idxprom.i.16
  %87 = bitcast float* %arrayidx.i.16 to i32*
  %88 = load i32, i32* %87, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.16 = getelementptr inbounds float, float* %0, i64 %idxprom.i.16
  %89 = bitcast float* %arrayidx6.i.16 to i32*
  store i32 %88, i32* %89, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.17 = add nsw i32 %mul.i, %conv2.i.17
  %idxprom.i.17 = sext i32 %add.i.17 to i64
  %arrayidx.i.17 = getelementptr inbounds float, float* %1, i64 %idxprom.i.17
  %90 = bitcast float* %arrayidx.i.17 to i32*
  %91 = load i32, i32* %90, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.17 = getelementptr inbounds float, float* %0, i64 %idxprom.i.17
  %92 = bitcast float* %arrayidx6.i.17 to i32*
  store i32 %91, i32* %92, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.18 = add nsw i32 %mul.i, %conv2.i.18
  %idxprom.i.18 = sext i32 %add.i.18 to i64
  %arrayidx.i.18 = getelementptr inbounds float, float* %1, i64 %idxprom.i.18
  %93 = bitcast float* %arrayidx.i.18 to i32*
  %94 = load i32, i32* %93, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.18 = getelementptr inbounds float, float* %0, i64 %idxprom.i.18
  %95 = bitcast float* %arrayidx6.i.18 to i32*
  store i32 %94, i32* %95, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.19 = add nsw i32 %mul.i, %conv2.i.19
  %idxprom.i.19 = sext i32 %add.i.19 to i64
  %arrayidx.i.19 = getelementptr inbounds float, float* %1, i64 %idxprom.i.19
  %96 = bitcast float* %arrayidx.i.19 to i32*
  %97 = load i32, i32* %96, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.19 = getelementptr inbounds float, float* %0, i64 %idxprom.i.19
  %98 = bitcast float* %arrayidx6.i.19 to i32*
  store i32 %97, i32* %98, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.20 = add nsw i32 %mul.i, %conv2.i.20
  %idxprom.i.20 = sext i32 %add.i.20 to i64
  %arrayidx.i.20 = getelementptr inbounds float, float* %1, i64 %idxprom.i.20
  %99 = bitcast float* %arrayidx.i.20 to i32*
  %100 = load i32, i32* %99, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.20 = getelementptr inbounds float, float* %0, i64 %idxprom.i.20
  %101 = bitcast float* %arrayidx6.i.20 to i32*
  store i32 %100, i32* %101, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.21 = add nsw i32 %mul.i, %conv2.i.21
  %idxprom.i.21 = sext i32 %add.i.21 to i64
  %arrayidx.i.21 = getelementptr inbounds float, float* %1, i64 %idxprom.i.21
  %102 = bitcast float* %arrayidx.i.21 to i32*
  %103 = load i32, i32* %102, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.21 = getelementptr inbounds float, float* %0, i64 %idxprom.i.21
  %104 = bitcast float* %arrayidx6.i.21 to i32*
  store i32 %103, i32* %104, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.22 = add nsw i32 %mul.i, %conv2.i.22
  %idxprom.i.22 = sext i32 %add.i.22 to i64
  %arrayidx.i.22 = getelementptr inbounds float, float* %1, i64 %idxprom.i.22
  %105 = bitcast float* %arrayidx.i.22 to i32*
  %106 = load i32, i32* %105, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.22 = getelementptr inbounds float, float* %0, i64 %idxprom.i.22
  %107 = bitcast float* %arrayidx6.i.22 to i32*
  store i32 %106, i32* %107, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.23 = add nsw i32 %mul.i, %conv2.i.23
  %idxprom.i.23 = sext i32 %add.i.23 to i64
  %arrayidx.i.23 = getelementptr inbounds float, float* %1, i64 %idxprom.i.23
  %108 = bitcast float* %arrayidx.i.23 to i32*
  %109 = load i32, i32* %108, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.23 = getelementptr inbounds float, float* %0, i64 %idxprom.i.23
  %110 = bitcast float* %arrayidx6.i.23 to i32*
  store i32 %109, i32* %110, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.24 = add nsw i32 %mul.i, %conv2.i.24
  %idxprom.i.24 = sext i32 %add.i.24 to i64
  %arrayidx.i.24 = getelementptr inbounds float, float* %1, i64 %idxprom.i.24
  %111 = bitcast float* %arrayidx.i.24 to i32*
  %112 = load i32, i32* %111, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.24 = getelementptr inbounds float, float* %0, i64 %idxprom.i.24
  %113 = bitcast float* %arrayidx6.i.24 to i32*
  store i32 %112, i32* %113, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.25 = add nsw i32 %mul.i, %conv2.i.25
  %idxprom.i.25 = sext i32 %add.i.25 to i64
  %arrayidx.i.25 = getelementptr inbounds float, float* %1, i64 %idxprom.i.25
  %114 = bitcast float* %arrayidx.i.25 to i32*
  %115 = load i32, i32* %114, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.25 = getelementptr inbounds float, float* %0, i64 %idxprom.i.25
  %116 = bitcast float* %arrayidx6.i.25 to i32*
  store i32 %115, i32* %116, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.26 = add nsw i32 %mul.i, %conv2.i.26
  %idxprom.i.26 = sext i32 %add.i.26 to i64
  %arrayidx.i.26 = getelementptr inbounds float, float* %1, i64 %idxprom.i.26
  %117 = bitcast float* %arrayidx.i.26 to i32*
  %118 = load i32, i32* %117, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.26 = getelementptr inbounds float, float* %0, i64 %idxprom.i.26
  %119 = bitcast float* %arrayidx6.i.26 to i32*
  store i32 %118, i32* %119, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.27 = add nsw i32 %mul.i, %conv2.i.27
  %idxprom.i.27 = sext i32 %add.i.27 to i64
  %arrayidx.i.27 = getelementptr inbounds float, float* %1, i64 %idxprom.i.27
  %120 = bitcast float* %arrayidx.i.27 to i32*
  %121 = load i32, i32* %120, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.27 = getelementptr inbounds float, float* %0, i64 %idxprom.i.27
  %122 = bitcast float* %arrayidx6.i.27 to i32*
  store i32 %121, i32* %122, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.28 = add nsw i32 %mul.i, %conv2.i.28
  %idxprom.i.28 = sext i32 %add.i.28 to i64
  %arrayidx.i.28 = getelementptr inbounds float, float* %1, i64 %idxprom.i.28
  %123 = bitcast float* %arrayidx.i.28 to i32*
  %124 = load i32, i32* %123, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.28 = getelementptr inbounds float, float* %0, i64 %idxprom.i.28
  %125 = bitcast float* %arrayidx6.i.28 to i32*
  store i32 %124, i32* %125, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.29 = add nsw i32 %mul.i, %conv2.i.29
  %idxprom.i.29 = sext i32 %add.i.29 to i64
  %arrayidx.i.29 = getelementptr inbounds float, float* %1, i64 %idxprom.i.29
  %126 = bitcast float* %arrayidx.i.29 to i32*
  %127 = load i32, i32* %126, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.29 = getelementptr inbounds float, float* %0, i64 %idxprom.i.29
  %128 = bitcast float* %arrayidx6.i.29 to i32*
  store i32 %127, i32* %128, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.30 = add nsw i32 %mul.i, %conv2.i.30
  %idxprom.i.30 = sext i32 %add.i.30 to i64
  %arrayidx.i.30 = getelementptr inbounds float, float* %1, i64 %idxprom.i.30
  %129 = bitcast float* %arrayidx.i.30 to i32*
  %130 = load i32, i32* %129, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.30 = getelementptr inbounds float, float* %0, i64 %idxprom.i.30
  %131 = bitcast float* %arrayidx6.i.30 to i32*
  store i32 %130, i32* %131, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.31 = add nsw i32 %mul.i, %conv2.i.31
  %idxprom.i.31 = sext i32 %add.i.31 to i64
  %arrayidx.i.31 = getelementptr inbounds float, float* %1, i64 %idxprom.i.31
  %132 = bitcast float* %arrayidx.i.31 to i32*
  %133 = load i32, i32* %132, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.31 = getelementptr inbounds float, float* %0, i64 %idxprom.i.31
  %134 = bitcast float* %arrayidx6.i.31 to i32*
  store i32 %133, i32* %134, align 4, !tbaa !12, !llvm.access.group !16
  %135 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond1.not = icmp eq i64 %135, 8
  br i1 %exitcond1.not, label %runJacobi2D_kernel2.exit, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !19

runJacobi2D_kernel2.exit:                         ; preds = %pregion_for_entry.pregion_for_init.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_runJacobi2D_kernel2_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
  %6 = bitcast i8** %0 to float***
  %7 = load float**, float*** %6, align 8
  %8 = load float*, float** %7, align 8
  %9 = getelementptr i8*, i8** %0, i64 1
  %10 = bitcast i8** %9 to float***
  %11 = load float**, float*** %10, align 8
  %12 = load float*, float** %11, align 8
  %13 = getelementptr i8*, i8** %0, i64 2
  %14 = bitcast i8** %13 to i32**
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %mul3.i.i.i = shl i64 %3, 3
  %mul.i.i.i = shl i64 %2, 5
  %conv2.i.i = trunc i64 %mul.i.i.i to i32
  %17 = trunc i64 %mul.i.i.i to i32
  %conv2.i.i.1 = or i32 %17, 1
  %18 = trunc i64 %mul.i.i.i to i32
  %conv2.i.i.2 = or i32 %18, 2
  %19 = trunc i64 %mul.i.i.i to i32
  %conv2.i.i.3 = or i32 %19, 3
  %20 = trunc i64 %mul.i.i.i to i32
  %conv2.i.i.4 = or i32 %20, 4
  %21 = trunc i64 %mul.i.i.i to i32
  %conv2.i.i.5 = or i32 %21, 5
  %22 = trunc i64 %mul.i.i.i to i32
  %conv2.i.i.6 = or i32 %22, 6
  %23 = trunc i64 %mul.i.i.i to i32
  %conv2.i.i.7 = or i32 %23, 7
  %24 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %25 = shufflevector <8 x i64> %24, <8 x i64> undef, <8 x i32> zeroinitializer
  %26 = trunc <8 x i64> %25 to <8 x i32>
  %27 = or <8 x i32> %26, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %28 = trunc <8 x i64> %25 to <8 x i32>
  %29 = or <8 x i32> %28, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %30 = trunc <8 x i64> %25 to <8 x i32>
  %31 = or <8 x i32> %30, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %160, %pregion_for_entry.pregion_for_init.i.i ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv.i.i = trunc i64 %add6.i.i.i to i32
  %mul.i.i = mul nsw i32 %16, %conv.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv2.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %12, i64 %idxprom.i.i
  %32 = bitcast float* %arrayidx.i.i to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i = getelementptr inbounds float, float* %8, i64 %idxprom.i.i
  %34 = bitcast float* %arrayidx6.i.i to i32*
  store i32 %33, i32* %34, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv2.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.1
  %35 = bitcast float* %arrayidx.i.i.1 to i32*
  %36 = load i32, i32* %35, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.1 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.1
  %37 = bitcast float* %arrayidx6.i.i.1 to i32*
  store i32 %36, i32* %37, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.2 = add nsw i32 %mul.i.i, %conv2.i.i.2
  %idxprom.i.i.2 = sext i32 %add.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.2
  %38 = bitcast float* %arrayidx.i.i.2 to i32*
  %39 = load i32, i32* %38, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.2 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.2
  %40 = bitcast float* %arrayidx6.i.i.2 to i32*
  store i32 %39, i32* %40, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.3 = add nsw i32 %mul.i.i, %conv2.i.i.3
  %idxprom.i.i.3 = sext i32 %add.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.3
  %41 = bitcast float* %arrayidx.i.i.3 to i32*
  %42 = load i32, i32* %41, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.3 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.3
  %43 = bitcast float* %arrayidx6.i.i.3 to i32*
  store i32 %42, i32* %43, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.4 = add nsw i32 %mul.i.i, %conv2.i.i.4
  %idxprom.i.i.4 = sext i32 %add.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.4
  %44 = bitcast float* %arrayidx.i.i.4 to i32*
  %45 = load i32, i32* %44, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.4 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.4
  %46 = bitcast float* %arrayidx6.i.i.4 to i32*
  store i32 %45, i32* %46, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.5 = add nsw i32 %mul.i.i, %conv2.i.i.5
  %idxprom.i.i.5 = sext i32 %add.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.5
  %47 = bitcast float* %arrayidx.i.i.5 to i32*
  %48 = load i32, i32* %47, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.5 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.5
  %49 = bitcast float* %arrayidx6.i.i.5 to i32*
  store i32 %48, i32* %49, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.6 = add nsw i32 %mul.i.i, %conv2.i.i.6
  %idxprom.i.i.6 = sext i32 %add.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.6
  %50 = bitcast float* %arrayidx.i.i.6 to i32*
  %51 = load i32, i32* %50, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.6 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.6
  %52 = bitcast float* %arrayidx6.i.i.6 to i32*
  store i32 %51, i32* %52, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.7 = add nsw i32 %mul.i.i, %conv2.i.i.7
  %idxprom.i.i.7 = sext i32 %add.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.7
  %53 = bitcast float* %arrayidx.i.i.7 to i32*
  %54 = load i32, i32* %53, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.7 = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.7
  %55 = bitcast float* %arrayidx6.i.i.7 to i32*
  store i32 %54, i32* %55, align 4, !tbaa !12, !llvm.access.group !16
  %56 = insertelement <8 x i32> undef, i32 %mul.i.i, i32 0
  %57 = shufflevector <8 x i32> %56, <8 x i32> undef, <8 x i32> zeroinitializer
  %58 = add nsw <8 x i32> %57, %27
  %59 = sext <8 x i32> %58 to <8 x i64>
  %60 = extractelement <8 x i64> %59, i32 0
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %12, i64 %60
  %61 = bitcast float* %arrayidx.i.i.8 to i32*
  %62 = load i32, i32* %61, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.8 = getelementptr inbounds float, float* %8, i64 %60
  %63 = bitcast float* %arrayidx6.i.i.8 to i32*
  store i32 %62, i32* %63, align 4, !tbaa !12, !llvm.access.group !16
  %64 = extractelement <8 x i64> %59, i32 1
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %12, i64 %64
  %65 = bitcast float* %arrayidx.i.i.9 to i32*
  %66 = load i32, i32* %65, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.9 = getelementptr inbounds float, float* %8, i64 %64
  %67 = bitcast float* %arrayidx6.i.i.9 to i32*
  store i32 %66, i32* %67, align 4, !tbaa !12, !llvm.access.group !16
  %68 = extractelement <8 x i64> %59, i32 2
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %12, i64 %68
  %69 = bitcast float* %arrayidx.i.i.10 to i32*
  %70 = load i32, i32* %69, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.10 = getelementptr inbounds float, float* %8, i64 %68
  %71 = bitcast float* %arrayidx6.i.i.10 to i32*
  store i32 %70, i32* %71, align 4, !tbaa !12, !llvm.access.group !16
  %72 = extractelement <8 x i64> %59, i32 3
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %12, i64 %72
  %73 = bitcast float* %arrayidx.i.i.11 to i32*
  %74 = load i32, i32* %73, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.11 = getelementptr inbounds float, float* %8, i64 %72
  %75 = bitcast float* %arrayidx6.i.i.11 to i32*
  store i32 %74, i32* %75, align 4, !tbaa !12, !llvm.access.group !16
  %76 = extractelement <8 x i64> %59, i32 4
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %12, i64 %76
  %77 = bitcast float* %arrayidx.i.i.12 to i32*
  %78 = load i32, i32* %77, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.12 = getelementptr inbounds float, float* %8, i64 %76
  %79 = bitcast float* %arrayidx6.i.i.12 to i32*
  store i32 %78, i32* %79, align 4, !tbaa !12, !llvm.access.group !16
  %80 = extractelement <8 x i64> %59, i32 5
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %12, i64 %80
  %81 = bitcast float* %arrayidx.i.i.13 to i32*
  %82 = load i32, i32* %81, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.13 = getelementptr inbounds float, float* %8, i64 %80
  %83 = bitcast float* %arrayidx6.i.i.13 to i32*
  store i32 %82, i32* %83, align 4, !tbaa !12, !llvm.access.group !16
  %84 = extractelement <8 x i64> %59, i32 6
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %12, i64 %84
  %85 = bitcast float* %arrayidx.i.i.14 to i32*
  %86 = load i32, i32* %85, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.14 = getelementptr inbounds float, float* %8, i64 %84
  %87 = bitcast float* %arrayidx6.i.i.14 to i32*
  store i32 %86, i32* %87, align 4, !tbaa !12, !llvm.access.group !16
  %88 = extractelement <8 x i64> %59, i32 7
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %12, i64 %88
  %89 = bitcast float* %arrayidx.i.i.15 to i32*
  %90 = load i32, i32* %89, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.15 = getelementptr inbounds float, float* %8, i64 %88
  %91 = bitcast float* %arrayidx6.i.i.15 to i32*
  store i32 %90, i32* %91, align 4, !tbaa !12, !llvm.access.group !16
  %92 = add nsw <8 x i32> %57, %29
  %93 = sext <8 x i32> %92 to <8 x i64>
  %94 = extractelement <8 x i64> %93, i32 0
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %12, i64 %94
  %95 = bitcast float* %arrayidx.i.i.16 to i32*
  %96 = load i32, i32* %95, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.16 = getelementptr inbounds float, float* %8, i64 %94
  %97 = bitcast float* %arrayidx6.i.i.16 to i32*
  store i32 %96, i32* %97, align 4, !tbaa !12, !llvm.access.group !16
  %98 = extractelement <8 x i64> %93, i32 1
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %12, i64 %98
  %99 = bitcast float* %arrayidx.i.i.17 to i32*
  %100 = load i32, i32* %99, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.17 = getelementptr inbounds float, float* %8, i64 %98
  %101 = bitcast float* %arrayidx6.i.i.17 to i32*
  store i32 %100, i32* %101, align 4, !tbaa !12, !llvm.access.group !16
  %102 = extractelement <8 x i64> %93, i32 2
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %12, i64 %102
  %103 = bitcast float* %arrayidx.i.i.18 to i32*
  %104 = load i32, i32* %103, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.18 = getelementptr inbounds float, float* %8, i64 %102
  %105 = bitcast float* %arrayidx6.i.i.18 to i32*
  store i32 %104, i32* %105, align 4, !tbaa !12, !llvm.access.group !16
  %106 = extractelement <8 x i64> %93, i32 3
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %12, i64 %106
  %107 = bitcast float* %arrayidx.i.i.19 to i32*
  %108 = load i32, i32* %107, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.19 = getelementptr inbounds float, float* %8, i64 %106
  %109 = bitcast float* %arrayidx6.i.i.19 to i32*
  store i32 %108, i32* %109, align 4, !tbaa !12, !llvm.access.group !16
  %110 = extractelement <8 x i64> %93, i32 4
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %12, i64 %110
  %111 = bitcast float* %arrayidx.i.i.20 to i32*
  %112 = load i32, i32* %111, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.20 = getelementptr inbounds float, float* %8, i64 %110
  %113 = bitcast float* %arrayidx6.i.i.20 to i32*
  store i32 %112, i32* %113, align 4, !tbaa !12, !llvm.access.group !16
  %114 = extractelement <8 x i64> %93, i32 5
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %12, i64 %114
  %115 = bitcast float* %arrayidx.i.i.21 to i32*
  %116 = load i32, i32* %115, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.21 = getelementptr inbounds float, float* %8, i64 %114
  %117 = bitcast float* %arrayidx6.i.i.21 to i32*
  store i32 %116, i32* %117, align 4, !tbaa !12, !llvm.access.group !16
  %118 = extractelement <8 x i64> %93, i32 6
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %12, i64 %118
  %119 = bitcast float* %arrayidx.i.i.22 to i32*
  %120 = load i32, i32* %119, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.22 = getelementptr inbounds float, float* %8, i64 %118
  %121 = bitcast float* %arrayidx6.i.i.22 to i32*
  store i32 %120, i32* %121, align 4, !tbaa !12, !llvm.access.group !16
  %122 = extractelement <8 x i64> %93, i32 7
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %12, i64 %122
  %123 = bitcast float* %arrayidx.i.i.23 to i32*
  %124 = load i32, i32* %123, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.23 = getelementptr inbounds float, float* %8, i64 %122
  %125 = bitcast float* %arrayidx6.i.i.23 to i32*
  store i32 %124, i32* %125, align 4, !tbaa !12, !llvm.access.group !16
  %126 = add nsw <8 x i32> %57, %31
  %127 = sext <8 x i32> %126 to <8 x i64>
  %128 = extractelement <8 x i64> %127, i32 0
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %12, i64 %128
  %129 = bitcast float* %arrayidx.i.i.24 to i32*
  %130 = load i32, i32* %129, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.24 = getelementptr inbounds float, float* %8, i64 %128
  %131 = bitcast float* %arrayidx6.i.i.24 to i32*
  store i32 %130, i32* %131, align 4, !tbaa !12, !llvm.access.group !16
  %132 = extractelement <8 x i64> %127, i32 1
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %12, i64 %132
  %133 = bitcast float* %arrayidx.i.i.25 to i32*
  %134 = load i32, i32* %133, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.25 = getelementptr inbounds float, float* %8, i64 %132
  %135 = bitcast float* %arrayidx6.i.i.25 to i32*
  store i32 %134, i32* %135, align 4, !tbaa !12, !llvm.access.group !16
  %136 = extractelement <8 x i64> %127, i32 2
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %12, i64 %136
  %137 = bitcast float* %arrayidx.i.i.26 to i32*
  %138 = load i32, i32* %137, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.26 = getelementptr inbounds float, float* %8, i64 %136
  %139 = bitcast float* %arrayidx6.i.i.26 to i32*
  store i32 %138, i32* %139, align 4, !tbaa !12, !llvm.access.group !16
  %140 = extractelement <8 x i64> %127, i32 3
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %12, i64 %140
  %141 = bitcast float* %arrayidx.i.i.27 to i32*
  %142 = load i32, i32* %141, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.27 = getelementptr inbounds float, float* %8, i64 %140
  %143 = bitcast float* %arrayidx6.i.i.27 to i32*
  store i32 %142, i32* %143, align 4, !tbaa !12, !llvm.access.group !16
  %144 = extractelement <8 x i64> %127, i32 4
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %12, i64 %144
  %145 = bitcast float* %arrayidx.i.i.28 to i32*
  %146 = load i32, i32* %145, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.28 = getelementptr inbounds float, float* %8, i64 %144
  %147 = bitcast float* %arrayidx6.i.i.28 to i32*
  store i32 %146, i32* %147, align 4, !tbaa !12, !llvm.access.group !16
  %148 = extractelement <8 x i64> %127, i32 5
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %12, i64 %148
  %149 = bitcast float* %arrayidx.i.i.29 to i32*
  %150 = load i32, i32* %149, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.29 = getelementptr inbounds float, float* %8, i64 %148
  %151 = bitcast float* %arrayidx6.i.i.29 to i32*
  store i32 %150, i32* %151, align 4, !tbaa !12, !llvm.access.group !16
  %152 = extractelement <8 x i64> %127, i32 6
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %12, i64 %152
  %153 = bitcast float* %arrayidx.i.i.30 to i32*
  %154 = load i32, i32* %153, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.30 = getelementptr inbounds float, float* %8, i64 %152
  %155 = bitcast float* %arrayidx6.i.i.30 to i32*
  store i32 %154, i32* %155, align 4, !tbaa !12, !llvm.access.group !16
  %156 = extractelement <8 x i64> %127, i32 7
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %12, i64 %156
  %157 = bitcast float* %arrayidx.i.i.31 to i32*
  %158 = load i32, i32* %157, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.31 = getelementptr inbounds float, float* %8, i64 %156
  %159 = bitcast float* %arrayidx6.i.i.31 to i32*
  store i32 %158, i32* %159, align 4, !tbaa !12, !llvm.access.group !16
  %160 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond1.not = icmp eq i64 %160, 8
  br i1 %exitcond1.not, label %_pocl_kernel_runJacobi2D_kernel2.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !19

_pocl_kernel_runJacobi2D_kernel2.exit:            ; preds = %pregion_for_entry.pregion_for_init.i.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_runJacobi2D_kernel2_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 2
  %12 = bitcast i8** %11 to i32**
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %mul3.i.i.i = shl i64 %3, 3
  %mul.i.i.i = shl i64 %2, 5
  %conv2.i.i = trunc i64 %mul.i.i.i to i32
  %15 = trunc i64 %mul.i.i.i to i32
  %conv2.i.i.1 = or i32 %15, 1
  %16 = trunc i64 %mul.i.i.i to i32
  %conv2.i.i.2 = or i32 %16, 2
  %17 = trunc i64 %mul.i.i.i to i32
  %conv2.i.i.3 = or i32 %17, 3
  %18 = trunc i64 %mul.i.i.i to i32
  %conv2.i.i.4 = or i32 %18, 4
  %19 = trunc i64 %mul.i.i.i to i32
  %conv2.i.i.5 = or i32 %19, 5
  %20 = trunc i64 %mul.i.i.i to i32
  %conv2.i.i.6 = or i32 %20, 6
  %21 = trunc i64 %mul.i.i.i to i32
  %conv2.i.i.7 = or i32 %21, 7
  %22 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %23 = shufflevector <8 x i64> %22, <8 x i64> undef, <8 x i32> zeroinitializer
  %24 = trunc <8 x i64> %23 to <8 x i32>
  %25 = or <8 x i32> %24, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %26 = trunc <8 x i64> %23 to <8 x i32>
  %27 = or <8 x i32> %26, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %28 = trunc <8 x i64> %23 to <8 x i32>
  %29 = or <8 x i32> %28, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %158, %pregion_for_entry.pregion_for_init.i.i ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv.i.i = trunc i64 %add6.i.i.i to i32
  %mul.i.i = mul nsw i32 %14, %conv.i.i
  %add.i.i = add nsw i32 %mul.i.i, %conv2.i.i
  %idxprom.i.i = sext i32 %add.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %10, i64 %idxprom.i.i
  %30 = bitcast float* %arrayidx.i.i to i32*
  %31 = load i32, i32* %30, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i = getelementptr inbounds float, float* %7, i64 %idxprom.i.i
  %32 = bitcast float* %arrayidx6.i.i to i32*
  store i32 %31, i32* %32, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.1 = add nsw i32 %mul.i.i, %conv2.i.i.1
  %idxprom.i.i.1 = sext i32 %add.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.1
  %33 = bitcast float* %arrayidx.i.i.1 to i32*
  %34 = load i32, i32* %33, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.1
  %35 = bitcast float* %arrayidx6.i.i.1 to i32*
  store i32 %34, i32* %35, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.2 = add nsw i32 %mul.i.i, %conv2.i.i.2
  %idxprom.i.i.2 = sext i32 %add.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.2
  %36 = bitcast float* %arrayidx.i.i.2 to i32*
  %37 = load i32, i32* %36, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.2
  %38 = bitcast float* %arrayidx6.i.i.2 to i32*
  store i32 %37, i32* %38, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.3 = add nsw i32 %mul.i.i, %conv2.i.i.3
  %idxprom.i.i.3 = sext i32 %add.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.3
  %39 = bitcast float* %arrayidx.i.i.3 to i32*
  %40 = load i32, i32* %39, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.3
  %41 = bitcast float* %arrayidx6.i.i.3 to i32*
  store i32 %40, i32* %41, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.4 = add nsw i32 %mul.i.i, %conv2.i.i.4
  %idxprom.i.i.4 = sext i32 %add.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.4
  %42 = bitcast float* %arrayidx.i.i.4 to i32*
  %43 = load i32, i32* %42, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.4 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.4
  %44 = bitcast float* %arrayidx6.i.i.4 to i32*
  store i32 %43, i32* %44, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.5 = add nsw i32 %mul.i.i, %conv2.i.i.5
  %idxprom.i.i.5 = sext i32 %add.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.5
  %45 = bitcast float* %arrayidx.i.i.5 to i32*
  %46 = load i32, i32* %45, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.5 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.5
  %47 = bitcast float* %arrayidx6.i.i.5 to i32*
  store i32 %46, i32* %47, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.6 = add nsw i32 %mul.i.i, %conv2.i.i.6
  %idxprom.i.i.6 = sext i32 %add.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.6
  %48 = bitcast float* %arrayidx.i.i.6 to i32*
  %49 = load i32, i32* %48, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.6 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.6
  %50 = bitcast float* %arrayidx6.i.i.6 to i32*
  store i32 %49, i32* %50, align 4, !tbaa !12, !llvm.access.group !16
  %add.i.i.7 = add nsw i32 %mul.i.i, %conv2.i.i.7
  %idxprom.i.i.7 = sext i32 %add.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.7
  %51 = bitcast float* %arrayidx.i.i.7 to i32*
  %52 = load i32, i32* %51, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.7 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.7
  %53 = bitcast float* %arrayidx6.i.i.7 to i32*
  store i32 %52, i32* %53, align 4, !tbaa !12, !llvm.access.group !16
  %54 = insertelement <8 x i32> undef, i32 %mul.i.i, i32 0
  %55 = shufflevector <8 x i32> %54, <8 x i32> undef, <8 x i32> zeroinitializer
  %56 = add nsw <8 x i32> %55, %25
  %57 = sext <8 x i32> %56 to <8 x i64>
  %58 = extractelement <8 x i64> %57, i32 0
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %10, i64 %58
  %59 = bitcast float* %arrayidx.i.i.8 to i32*
  %60 = load i32, i32* %59, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.8 = getelementptr inbounds float, float* %7, i64 %58
  %61 = bitcast float* %arrayidx6.i.i.8 to i32*
  store i32 %60, i32* %61, align 4, !tbaa !12, !llvm.access.group !16
  %62 = extractelement <8 x i64> %57, i32 1
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %10, i64 %62
  %63 = bitcast float* %arrayidx.i.i.9 to i32*
  %64 = load i32, i32* %63, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.9 = getelementptr inbounds float, float* %7, i64 %62
  %65 = bitcast float* %arrayidx6.i.i.9 to i32*
  store i32 %64, i32* %65, align 4, !tbaa !12, !llvm.access.group !16
  %66 = extractelement <8 x i64> %57, i32 2
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %10, i64 %66
  %67 = bitcast float* %arrayidx.i.i.10 to i32*
  %68 = load i32, i32* %67, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.10 = getelementptr inbounds float, float* %7, i64 %66
  %69 = bitcast float* %arrayidx6.i.i.10 to i32*
  store i32 %68, i32* %69, align 4, !tbaa !12, !llvm.access.group !16
  %70 = extractelement <8 x i64> %57, i32 3
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %10, i64 %70
  %71 = bitcast float* %arrayidx.i.i.11 to i32*
  %72 = load i32, i32* %71, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.11 = getelementptr inbounds float, float* %7, i64 %70
  %73 = bitcast float* %arrayidx6.i.i.11 to i32*
  store i32 %72, i32* %73, align 4, !tbaa !12, !llvm.access.group !16
  %74 = extractelement <8 x i64> %57, i32 4
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %10, i64 %74
  %75 = bitcast float* %arrayidx.i.i.12 to i32*
  %76 = load i32, i32* %75, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.12 = getelementptr inbounds float, float* %7, i64 %74
  %77 = bitcast float* %arrayidx6.i.i.12 to i32*
  store i32 %76, i32* %77, align 4, !tbaa !12, !llvm.access.group !16
  %78 = extractelement <8 x i64> %57, i32 5
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %10, i64 %78
  %79 = bitcast float* %arrayidx.i.i.13 to i32*
  %80 = load i32, i32* %79, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.13 = getelementptr inbounds float, float* %7, i64 %78
  %81 = bitcast float* %arrayidx6.i.i.13 to i32*
  store i32 %80, i32* %81, align 4, !tbaa !12, !llvm.access.group !16
  %82 = extractelement <8 x i64> %57, i32 6
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %10, i64 %82
  %83 = bitcast float* %arrayidx.i.i.14 to i32*
  %84 = load i32, i32* %83, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.14 = getelementptr inbounds float, float* %7, i64 %82
  %85 = bitcast float* %arrayidx6.i.i.14 to i32*
  store i32 %84, i32* %85, align 4, !tbaa !12, !llvm.access.group !16
  %86 = extractelement <8 x i64> %57, i32 7
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %10, i64 %86
  %87 = bitcast float* %arrayidx.i.i.15 to i32*
  %88 = load i32, i32* %87, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.15 = getelementptr inbounds float, float* %7, i64 %86
  %89 = bitcast float* %arrayidx6.i.i.15 to i32*
  store i32 %88, i32* %89, align 4, !tbaa !12, !llvm.access.group !16
  %90 = add nsw <8 x i32> %55, %27
  %91 = sext <8 x i32> %90 to <8 x i64>
  %92 = extractelement <8 x i64> %91, i32 0
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %10, i64 %92
  %93 = bitcast float* %arrayidx.i.i.16 to i32*
  %94 = load i32, i32* %93, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.16 = getelementptr inbounds float, float* %7, i64 %92
  %95 = bitcast float* %arrayidx6.i.i.16 to i32*
  store i32 %94, i32* %95, align 4, !tbaa !12, !llvm.access.group !16
  %96 = extractelement <8 x i64> %91, i32 1
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %10, i64 %96
  %97 = bitcast float* %arrayidx.i.i.17 to i32*
  %98 = load i32, i32* %97, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.17 = getelementptr inbounds float, float* %7, i64 %96
  %99 = bitcast float* %arrayidx6.i.i.17 to i32*
  store i32 %98, i32* %99, align 4, !tbaa !12, !llvm.access.group !16
  %100 = extractelement <8 x i64> %91, i32 2
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %10, i64 %100
  %101 = bitcast float* %arrayidx.i.i.18 to i32*
  %102 = load i32, i32* %101, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.18 = getelementptr inbounds float, float* %7, i64 %100
  %103 = bitcast float* %arrayidx6.i.i.18 to i32*
  store i32 %102, i32* %103, align 4, !tbaa !12, !llvm.access.group !16
  %104 = extractelement <8 x i64> %91, i32 3
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %10, i64 %104
  %105 = bitcast float* %arrayidx.i.i.19 to i32*
  %106 = load i32, i32* %105, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.19 = getelementptr inbounds float, float* %7, i64 %104
  %107 = bitcast float* %arrayidx6.i.i.19 to i32*
  store i32 %106, i32* %107, align 4, !tbaa !12, !llvm.access.group !16
  %108 = extractelement <8 x i64> %91, i32 4
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %10, i64 %108
  %109 = bitcast float* %arrayidx.i.i.20 to i32*
  %110 = load i32, i32* %109, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.20 = getelementptr inbounds float, float* %7, i64 %108
  %111 = bitcast float* %arrayidx6.i.i.20 to i32*
  store i32 %110, i32* %111, align 4, !tbaa !12, !llvm.access.group !16
  %112 = extractelement <8 x i64> %91, i32 5
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %10, i64 %112
  %113 = bitcast float* %arrayidx.i.i.21 to i32*
  %114 = load i32, i32* %113, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.21 = getelementptr inbounds float, float* %7, i64 %112
  %115 = bitcast float* %arrayidx6.i.i.21 to i32*
  store i32 %114, i32* %115, align 4, !tbaa !12, !llvm.access.group !16
  %116 = extractelement <8 x i64> %91, i32 6
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %10, i64 %116
  %117 = bitcast float* %arrayidx.i.i.22 to i32*
  %118 = load i32, i32* %117, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.22 = getelementptr inbounds float, float* %7, i64 %116
  %119 = bitcast float* %arrayidx6.i.i.22 to i32*
  store i32 %118, i32* %119, align 4, !tbaa !12, !llvm.access.group !16
  %120 = extractelement <8 x i64> %91, i32 7
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %10, i64 %120
  %121 = bitcast float* %arrayidx.i.i.23 to i32*
  %122 = load i32, i32* %121, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.23 = getelementptr inbounds float, float* %7, i64 %120
  %123 = bitcast float* %arrayidx6.i.i.23 to i32*
  store i32 %122, i32* %123, align 4, !tbaa !12, !llvm.access.group !16
  %124 = add nsw <8 x i32> %55, %29
  %125 = sext <8 x i32> %124 to <8 x i64>
  %126 = extractelement <8 x i64> %125, i32 0
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %10, i64 %126
  %127 = bitcast float* %arrayidx.i.i.24 to i32*
  %128 = load i32, i32* %127, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.24 = getelementptr inbounds float, float* %7, i64 %126
  %129 = bitcast float* %arrayidx6.i.i.24 to i32*
  store i32 %128, i32* %129, align 4, !tbaa !12, !llvm.access.group !16
  %130 = extractelement <8 x i64> %125, i32 1
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %10, i64 %130
  %131 = bitcast float* %arrayidx.i.i.25 to i32*
  %132 = load i32, i32* %131, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.25 = getelementptr inbounds float, float* %7, i64 %130
  %133 = bitcast float* %arrayidx6.i.i.25 to i32*
  store i32 %132, i32* %133, align 4, !tbaa !12, !llvm.access.group !16
  %134 = extractelement <8 x i64> %125, i32 2
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %10, i64 %134
  %135 = bitcast float* %arrayidx.i.i.26 to i32*
  %136 = load i32, i32* %135, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.26 = getelementptr inbounds float, float* %7, i64 %134
  %137 = bitcast float* %arrayidx6.i.i.26 to i32*
  store i32 %136, i32* %137, align 4, !tbaa !12, !llvm.access.group !16
  %138 = extractelement <8 x i64> %125, i32 3
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %10, i64 %138
  %139 = bitcast float* %arrayidx.i.i.27 to i32*
  %140 = load i32, i32* %139, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.27 = getelementptr inbounds float, float* %7, i64 %138
  %141 = bitcast float* %arrayidx6.i.i.27 to i32*
  store i32 %140, i32* %141, align 4, !tbaa !12, !llvm.access.group !16
  %142 = extractelement <8 x i64> %125, i32 4
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %10, i64 %142
  %143 = bitcast float* %arrayidx.i.i.28 to i32*
  %144 = load i32, i32* %143, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.28 = getelementptr inbounds float, float* %7, i64 %142
  %145 = bitcast float* %arrayidx6.i.i.28 to i32*
  store i32 %144, i32* %145, align 4, !tbaa !12, !llvm.access.group !16
  %146 = extractelement <8 x i64> %125, i32 5
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %10, i64 %146
  %147 = bitcast float* %arrayidx.i.i.29 to i32*
  %148 = load i32, i32* %147, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.29 = getelementptr inbounds float, float* %7, i64 %146
  %149 = bitcast float* %arrayidx6.i.i.29 to i32*
  store i32 %148, i32* %149, align 4, !tbaa !12, !llvm.access.group !16
  %150 = extractelement <8 x i64> %125, i32 6
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %10, i64 %150
  %151 = bitcast float* %arrayidx.i.i.30 to i32*
  %152 = load i32, i32* %151, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.30 = getelementptr inbounds float, float* %7, i64 %150
  %153 = bitcast float* %arrayidx6.i.i.30 to i32*
  store i32 %152, i32* %153, align 4, !tbaa !12, !llvm.access.group !16
  %154 = extractelement <8 x i64> %125, i32 7
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %10, i64 %154
  %155 = bitcast float* %arrayidx.i.i.31 to i32*
  %156 = load i32, i32* %155, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx6.i.i.31 = getelementptr inbounds float, float* %7, i64 %154
  %157 = bitcast float* %arrayidx6.i.i.31 to i32*
  store i32 %156, i32* %157, align 4, !tbaa !12, !llvm.access.group !16
  %158 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond1.not = icmp eq i64 %158, 8
  br i1 %exitcond1.not, label %_pocl_kernel_runJacobi2D_kernel2.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !19

_pocl_kernel_runJacobi2D_kernel2.exit:            ; preds = %pregion_for_entry.pregion_for_init.i.i
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
!16 = !{!17, !18}
!17 = distinct !{}
!18 = distinct !{}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.parallel_accesses", !18}
