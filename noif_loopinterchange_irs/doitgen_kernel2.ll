; ModuleID = './PC/LODKLALPMLHGJCMLFIPEKMGDGBPCPGOBHFLKB/doitgen_kernel2/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_doitgen_kernel2(i32 %0, i32 %1, i32 %2, float* nocapture %3, float* nocapture readnone %4, float* nocapture readonly %5, i32 %6, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %7, i64 %8, i64 %9, i64 %10) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %8, 5
  %mul3.i.i = shl i64 %9, 3
  %mul3.i = mul i32 %6, %1
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
  br label %pregion_for_entry.pregion_for_init.i

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_entry.pregion_for_init.i, %11
  %_local_id_y.0 = phi i64 [ 0, %11 ], [ %139, %pregion_for_entry.pregion_for_init.i ]
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %reass.add.i = add i32 %mul3.i, %conv2.i
  %reass.mul.i = mul i32 %reass.add.i, %2
  %add5.i = add i32 %reass.mul.i, %conv.i
  %idxprom.i = sext i32 %add5.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %5, i64 %idxprom.i
  %43 = bitcast float* %arrayidx.i to i32*
  %44 = load i32, i32* %43, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i = getelementptr inbounds float, float* %3, i64 %idxprom.i
  %45 = bitcast float* %arrayidx12.i to i32*
  store i32 %44, i32* %45, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.1 = add i32 %reass.mul.i, %conv.i.1
  %idxprom.i.1 = sext i32 %add5.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.1
  %46 = bitcast float* %arrayidx.i.1 to i32*
  %47 = load i32, i32* %46, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.1 = getelementptr inbounds float, float* %3, i64 %idxprom.i.1
  %48 = bitcast float* %arrayidx12.i.1 to i32*
  store i32 %47, i32* %48, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.2 = add i32 %reass.mul.i, %conv.i.2
  %idxprom.i.2 = sext i32 %add5.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds float, float* %5, i64 %idxprom.i.2
  %49 = bitcast float* %arrayidx.i.2 to i32*
  %50 = load i32, i32* %49, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.2 = getelementptr inbounds float, float* %3, i64 %idxprom.i.2
  %51 = bitcast float* %arrayidx12.i.2 to i32*
  store i32 %50, i32* %51, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.3 = add i32 %reass.mul.i, %conv.i.3
  %idxprom.i.3 = sext i32 %add5.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds float, float* %5, i64 %idxprom.i.3
  %52 = bitcast float* %arrayidx.i.3 to i32*
  %53 = load i32, i32* %52, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.3 = getelementptr inbounds float, float* %3, i64 %idxprom.i.3
  %54 = bitcast float* %arrayidx12.i.3 to i32*
  store i32 %53, i32* %54, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.4 = add i32 %reass.mul.i, %conv.i.4
  %idxprom.i.4 = sext i32 %add5.i.4 to i64
  %arrayidx.i.4 = getelementptr inbounds float, float* %5, i64 %idxprom.i.4
  %55 = bitcast float* %arrayidx.i.4 to i32*
  %56 = load i32, i32* %55, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.4 = getelementptr inbounds float, float* %3, i64 %idxprom.i.4
  %57 = bitcast float* %arrayidx12.i.4 to i32*
  store i32 %56, i32* %57, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.5 = add i32 %reass.mul.i, %conv.i.5
  %idxprom.i.5 = sext i32 %add5.i.5 to i64
  %arrayidx.i.5 = getelementptr inbounds float, float* %5, i64 %idxprom.i.5
  %58 = bitcast float* %arrayidx.i.5 to i32*
  %59 = load i32, i32* %58, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.5 = getelementptr inbounds float, float* %3, i64 %idxprom.i.5
  %60 = bitcast float* %arrayidx12.i.5 to i32*
  store i32 %59, i32* %60, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.6 = add i32 %reass.mul.i, %conv.i.6
  %idxprom.i.6 = sext i32 %add5.i.6 to i64
  %arrayidx.i.6 = getelementptr inbounds float, float* %5, i64 %idxprom.i.6
  %61 = bitcast float* %arrayidx.i.6 to i32*
  %62 = load i32, i32* %61, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.6 = getelementptr inbounds float, float* %3, i64 %idxprom.i.6
  %63 = bitcast float* %arrayidx12.i.6 to i32*
  store i32 %62, i32* %63, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.7 = add i32 %reass.mul.i, %conv.i.7
  %idxprom.i.7 = sext i32 %add5.i.7 to i64
  %arrayidx.i.7 = getelementptr inbounds float, float* %5, i64 %idxprom.i.7
  %64 = bitcast float* %arrayidx.i.7 to i32*
  %65 = load i32, i32* %64, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.7 = getelementptr inbounds float, float* %3, i64 %idxprom.i.7
  %66 = bitcast float* %arrayidx12.i.7 to i32*
  store i32 %65, i32* %66, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.8 = add i32 %reass.mul.i, %conv.i.8
  %idxprom.i.8 = sext i32 %add5.i.8 to i64
  %arrayidx.i.8 = getelementptr inbounds float, float* %5, i64 %idxprom.i.8
  %67 = bitcast float* %arrayidx.i.8 to i32*
  %68 = load i32, i32* %67, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.8 = getelementptr inbounds float, float* %3, i64 %idxprom.i.8
  %69 = bitcast float* %arrayidx12.i.8 to i32*
  store i32 %68, i32* %69, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.9 = add i32 %reass.mul.i, %conv.i.9
  %idxprom.i.9 = sext i32 %add5.i.9 to i64
  %arrayidx.i.9 = getelementptr inbounds float, float* %5, i64 %idxprom.i.9
  %70 = bitcast float* %arrayidx.i.9 to i32*
  %71 = load i32, i32* %70, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.9 = getelementptr inbounds float, float* %3, i64 %idxprom.i.9
  %72 = bitcast float* %arrayidx12.i.9 to i32*
  store i32 %71, i32* %72, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.10 = add i32 %reass.mul.i, %conv.i.10
  %idxprom.i.10 = sext i32 %add5.i.10 to i64
  %arrayidx.i.10 = getelementptr inbounds float, float* %5, i64 %idxprom.i.10
  %73 = bitcast float* %arrayidx.i.10 to i32*
  %74 = load i32, i32* %73, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.10 = getelementptr inbounds float, float* %3, i64 %idxprom.i.10
  %75 = bitcast float* %arrayidx12.i.10 to i32*
  store i32 %74, i32* %75, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.11 = add i32 %reass.mul.i, %conv.i.11
  %idxprom.i.11 = sext i32 %add5.i.11 to i64
  %arrayidx.i.11 = getelementptr inbounds float, float* %5, i64 %idxprom.i.11
  %76 = bitcast float* %arrayidx.i.11 to i32*
  %77 = load i32, i32* %76, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.11 = getelementptr inbounds float, float* %3, i64 %idxprom.i.11
  %78 = bitcast float* %arrayidx12.i.11 to i32*
  store i32 %77, i32* %78, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.12 = add i32 %reass.mul.i, %conv.i.12
  %idxprom.i.12 = sext i32 %add5.i.12 to i64
  %arrayidx.i.12 = getelementptr inbounds float, float* %5, i64 %idxprom.i.12
  %79 = bitcast float* %arrayidx.i.12 to i32*
  %80 = load i32, i32* %79, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.12 = getelementptr inbounds float, float* %3, i64 %idxprom.i.12
  %81 = bitcast float* %arrayidx12.i.12 to i32*
  store i32 %80, i32* %81, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.13 = add i32 %reass.mul.i, %conv.i.13
  %idxprom.i.13 = sext i32 %add5.i.13 to i64
  %arrayidx.i.13 = getelementptr inbounds float, float* %5, i64 %idxprom.i.13
  %82 = bitcast float* %arrayidx.i.13 to i32*
  %83 = load i32, i32* %82, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.13 = getelementptr inbounds float, float* %3, i64 %idxprom.i.13
  %84 = bitcast float* %arrayidx12.i.13 to i32*
  store i32 %83, i32* %84, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.14 = add i32 %reass.mul.i, %conv.i.14
  %idxprom.i.14 = sext i32 %add5.i.14 to i64
  %arrayidx.i.14 = getelementptr inbounds float, float* %5, i64 %idxprom.i.14
  %85 = bitcast float* %arrayidx.i.14 to i32*
  %86 = load i32, i32* %85, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.14 = getelementptr inbounds float, float* %3, i64 %idxprom.i.14
  %87 = bitcast float* %arrayidx12.i.14 to i32*
  store i32 %86, i32* %87, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.15 = add i32 %reass.mul.i, %conv.i.15
  %idxprom.i.15 = sext i32 %add5.i.15 to i64
  %arrayidx.i.15 = getelementptr inbounds float, float* %5, i64 %idxprom.i.15
  %88 = bitcast float* %arrayidx.i.15 to i32*
  %89 = load i32, i32* %88, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.15 = getelementptr inbounds float, float* %3, i64 %idxprom.i.15
  %90 = bitcast float* %arrayidx12.i.15 to i32*
  store i32 %89, i32* %90, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.16 = add i32 %reass.mul.i, %conv.i.16
  %idxprom.i.16 = sext i32 %add5.i.16 to i64
  %arrayidx.i.16 = getelementptr inbounds float, float* %5, i64 %idxprom.i.16
  %91 = bitcast float* %arrayidx.i.16 to i32*
  %92 = load i32, i32* %91, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.16 = getelementptr inbounds float, float* %3, i64 %idxprom.i.16
  %93 = bitcast float* %arrayidx12.i.16 to i32*
  store i32 %92, i32* %93, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.17 = add i32 %reass.mul.i, %conv.i.17
  %idxprom.i.17 = sext i32 %add5.i.17 to i64
  %arrayidx.i.17 = getelementptr inbounds float, float* %5, i64 %idxprom.i.17
  %94 = bitcast float* %arrayidx.i.17 to i32*
  %95 = load i32, i32* %94, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.17 = getelementptr inbounds float, float* %3, i64 %idxprom.i.17
  %96 = bitcast float* %arrayidx12.i.17 to i32*
  store i32 %95, i32* %96, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.18 = add i32 %reass.mul.i, %conv.i.18
  %idxprom.i.18 = sext i32 %add5.i.18 to i64
  %arrayidx.i.18 = getelementptr inbounds float, float* %5, i64 %idxprom.i.18
  %97 = bitcast float* %arrayidx.i.18 to i32*
  %98 = load i32, i32* %97, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.18 = getelementptr inbounds float, float* %3, i64 %idxprom.i.18
  %99 = bitcast float* %arrayidx12.i.18 to i32*
  store i32 %98, i32* %99, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.19 = add i32 %reass.mul.i, %conv.i.19
  %idxprom.i.19 = sext i32 %add5.i.19 to i64
  %arrayidx.i.19 = getelementptr inbounds float, float* %5, i64 %idxprom.i.19
  %100 = bitcast float* %arrayidx.i.19 to i32*
  %101 = load i32, i32* %100, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.19 = getelementptr inbounds float, float* %3, i64 %idxprom.i.19
  %102 = bitcast float* %arrayidx12.i.19 to i32*
  store i32 %101, i32* %102, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.20 = add i32 %reass.mul.i, %conv.i.20
  %idxprom.i.20 = sext i32 %add5.i.20 to i64
  %arrayidx.i.20 = getelementptr inbounds float, float* %5, i64 %idxprom.i.20
  %103 = bitcast float* %arrayidx.i.20 to i32*
  %104 = load i32, i32* %103, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.20 = getelementptr inbounds float, float* %3, i64 %idxprom.i.20
  %105 = bitcast float* %arrayidx12.i.20 to i32*
  store i32 %104, i32* %105, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.21 = add i32 %reass.mul.i, %conv.i.21
  %idxprom.i.21 = sext i32 %add5.i.21 to i64
  %arrayidx.i.21 = getelementptr inbounds float, float* %5, i64 %idxprom.i.21
  %106 = bitcast float* %arrayidx.i.21 to i32*
  %107 = load i32, i32* %106, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.21 = getelementptr inbounds float, float* %3, i64 %idxprom.i.21
  %108 = bitcast float* %arrayidx12.i.21 to i32*
  store i32 %107, i32* %108, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.22 = add i32 %reass.mul.i, %conv.i.22
  %idxprom.i.22 = sext i32 %add5.i.22 to i64
  %arrayidx.i.22 = getelementptr inbounds float, float* %5, i64 %idxprom.i.22
  %109 = bitcast float* %arrayidx.i.22 to i32*
  %110 = load i32, i32* %109, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.22 = getelementptr inbounds float, float* %3, i64 %idxprom.i.22
  %111 = bitcast float* %arrayidx12.i.22 to i32*
  store i32 %110, i32* %111, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.23 = add i32 %reass.mul.i, %conv.i.23
  %idxprom.i.23 = sext i32 %add5.i.23 to i64
  %arrayidx.i.23 = getelementptr inbounds float, float* %5, i64 %idxprom.i.23
  %112 = bitcast float* %arrayidx.i.23 to i32*
  %113 = load i32, i32* %112, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.23 = getelementptr inbounds float, float* %3, i64 %idxprom.i.23
  %114 = bitcast float* %arrayidx12.i.23 to i32*
  store i32 %113, i32* %114, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.24 = add i32 %reass.mul.i, %conv.i.24
  %idxprom.i.24 = sext i32 %add5.i.24 to i64
  %arrayidx.i.24 = getelementptr inbounds float, float* %5, i64 %idxprom.i.24
  %115 = bitcast float* %arrayidx.i.24 to i32*
  %116 = load i32, i32* %115, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.24 = getelementptr inbounds float, float* %3, i64 %idxprom.i.24
  %117 = bitcast float* %arrayidx12.i.24 to i32*
  store i32 %116, i32* %117, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.25 = add i32 %reass.mul.i, %conv.i.25
  %idxprom.i.25 = sext i32 %add5.i.25 to i64
  %arrayidx.i.25 = getelementptr inbounds float, float* %5, i64 %idxprom.i.25
  %118 = bitcast float* %arrayidx.i.25 to i32*
  %119 = load i32, i32* %118, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.25 = getelementptr inbounds float, float* %3, i64 %idxprom.i.25
  %120 = bitcast float* %arrayidx12.i.25 to i32*
  store i32 %119, i32* %120, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.26 = add i32 %reass.mul.i, %conv.i.26
  %idxprom.i.26 = sext i32 %add5.i.26 to i64
  %arrayidx.i.26 = getelementptr inbounds float, float* %5, i64 %idxprom.i.26
  %121 = bitcast float* %arrayidx.i.26 to i32*
  %122 = load i32, i32* %121, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.26 = getelementptr inbounds float, float* %3, i64 %idxprom.i.26
  %123 = bitcast float* %arrayidx12.i.26 to i32*
  store i32 %122, i32* %123, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.27 = add i32 %reass.mul.i, %conv.i.27
  %idxprom.i.27 = sext i32 %add5.i.27 to i64
  %arrayidx.i.27 = getelementptr inbounds float, float* %5, i64 %idxprom.i.27
  %124 = bitcast float* %arrayidx.i.27 to i32*
  %125 = load i32, i32* %124, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.27 = getelementptr inbounds float, float* %3, i64 %idxprom.i.27
  %126 = bitcast float* %arrayidx12.i.27 to i32*
  store i32 %125, i32* %126, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.28 = add i32 %reass.mul.i, %conv.i.28
  %idxprom.i.28 = sext i32 %add5.i.28 to i64
  %arrayidx.i.28 = getelementptr inbounds float, float* %5, i64 %idxprom.i.28
  %127 = bitcast float* %arrayidx.i.28 to i32*
  %128 = load i32, i32* %127, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.28 = getelementptr inbounds float, float* %3, i64 %idxprom.i.28
  %129 = bitcast float* %arrayidx12.i.28 to i32*
  store i32 %128, i32* %129, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.29 = add i32 %reass.mul.i, %conv.i.29
  %idxprom.i.29 = sext i32 %add5.i.29 to i64
  %arrayidx.i.29 = getelementptr inbounds float, float* %5, i64 %idxprom.i.29
  %130 = bitcast float* %arrayidx.i.29 to i32*
  %131 = load i32, i32* %130, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.29 = getelementptr inbounds float, float* %3, i64 %idxprom.i.29
  %132 = bitcast float* %arrayidx12.i.29 to i32*
  store i32 %131, i32* %132, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.30 = add i32 %reass.mul.i, %conv.i.30
  %idxprom.i.30 = sext i32 %add5.i.30 to i64
  %arrayidx.i.30 = getelementptr inbounds float, float* %5, i64 %idxprom.i.30
  %133 = bitcast float* %arrayidx.i.30 to i32*
  %134 = load i32, i32* %133, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.30 = getelementptr inbounds float, float* %3, i64 %idxprom.i.30
  %135 = bitcast float* %arrayidx12.i.30 to i32*
  store i32 %134, i32* %135, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.31 = add i32 %reass.mul.i, %conv.i.31
  %idxprom.i.31 = sext i32 %add5.i.31 to i64
  %arrayidx.i.31 = getelementptr inbounds float, float* %5, i64 %idxprom.i.31
  %136 = bitcast float* %arrayidx.i.31 to i32*
  %137 = load i32, i32* %136, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.31 = getelementptr inbounds float, float* %3, i64 %idxprom.i.31
  %138 = bitcast float* %arrayidx12.i.31 to i32*
  store i32 %137, i32* %138, align 4, !tbaa !12, !llvm.access.group !16
  %139 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond1.not = icmp eq i64 %139, 8
  br i1 %exitcond1.not, label %doitgen_kernel2.exit, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !19

doitgen_kernel2.exit:                             ; preds = %pregion_for_entry.pregion_for_init.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_doitgen_kernel2_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
  %6 = getelementptr i8*, i8** %0, i64 1
  %7 = bitcast i8** %6 to i32**
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr i8*, i8** %0, i64 2
  %11 = bitcast i8** %10 to i32**
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr i8*, i8** %0, i64 3
  %15 = bitcast i8** %14 to float***
  %16 = load float**, float*** %15, align 8
  %17 = load float*, float** %16, align 8
  %18 = getelementptr i8*, i8** %0, i64 5
  %19 = bitcast i8** %18 to float***
  %20 = load float**, float*** %19, align 8
  %21 = load float*, float** %20, align 8
  %22 = getelementptr i8*, i8** %0, i64 6
  %23 = bitcast i8** %22 to i32**
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %mul3.i.i = mul i32 %25, %9
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
  %33 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %34 = shufflevector <8 x i64> %33, <8 x i64> undef, <8 x i32> zeroinitializer
  %35 = trunc <8 x i64> %34 to <8 x i32>
  %36 = or <8 x i32> %35, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %37 = trunc <8 x i64> %34 to <8 x i32>
  %38 = or <8 x i32> %37, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %39 = trunc <8 x i64> %34 to <8 x i32>
  %40 = or <8 x i32> %39, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %169, %pregion_for_entry.pregion_for_init.i.i ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %reass.add.i.i = add i32 %mul3.i.i, %conv2.i.i
  %reass.mul.i.i = mul i32 %reass.add.i.i, %13
  %add5.i.i = add i32 %reass.mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add5.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %21, i64 %idxprom.i.i
  %41 = bitcast float* %arrayidx.i.i to i32*
  %42 = load i32, i32* %41, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i = getelementptr inbounds float, float* %17, i64 %idxprom.i.i
  %43 = bitcast float* %arrayidx12.i.i to i32*
  store i32 %42, i32* %43, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.1 = add i32 %reass.mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add5.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.1
  %44 = bitcast float* %arrayidx.i.i.1 to i32*
  %45 = load i32, i32* %44, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.1 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.1
  %46 = bitcast float* %arrayidx12.i.i.1 to i32*
  store i32 %45, i32* %46, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.2 = add i32 %reass.mul.i.i, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add5.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.2
  %47 = bitcast float* %arrayidx.i.i.2 to i32*
  %48 = load i32, i32* %47, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.2 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.2
  %49 = bitcast float* %arrayidx12.i.i.2 to i32*
  store i32 %48, i32* %49, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.3 = add i32 %reass.mul.i.i, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add5.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.3
  %50 = bitcast float* %arrayidx.i.i.3 to i32*
  %51 = load i32, i32* %50, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.3 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.3
  %52 = bitcast float* %arrayidx12.i.i.3 to i32*
  store i32 %51, i32* %52, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.4 = add i32 %reass.mul.i.i, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add5.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.4
  %53 = bitcast float* %arrayidx.i.i.4 to i32*
  %54 = load i32, i32* %53, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.4 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.4
  %55 = bitcast float* %arrayidx12.i.i.4 to i32*
  store i32 %54, i32* %55, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.5 = add i32 %reass.mul.i.i, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add5.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.5
  %56 = bitcast float* %arrayidx.i.i.5 to i32*
  %57 = load i32, i32* %56, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.5 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.5
  %58 = bitcast float* %arrayidx12.i.i.5 to i32*
  store i32 %57, i32* %58, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.6 = add i32 %reass.mul.i.i, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add5.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.6
  %59 = bitcast float* %arrayidx.i.i.6 to i32*
  %60 = load i32, i32* %59, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.6 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.6
  %61 = bitcast float* %arrayidx12.i.i.6 to i32*
  store i32 %60, i32* %61, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.7 = add i32 %reass.mul.i.i, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add5.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.7
  %62 = bitcast float* %arrayidx.i.i.7 to i32*
  %63 = load i32, i32* %62, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.7 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.7
  %64 = bitcast float* %arrayidx12.i.i.7 to i32*
  store i32 %63, i32* %64, align 4, !tbaa !12, !llvm.access.group !16
  %65 = insertelement <8 x i32> undef, i32 %reass.mul.i.i, i32 0
  %66 = shufflevector <8 x i32> %65, <8 x i32> undef, <8 x i32> zeroinitializer
  %67 = add <8 x i32> %66, %36
  %68 = sext <8 x i32> %67 to <8 x i64>
  %69 = extractelement <8 x i64> %68, i32 0
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %21, i64 %69
  %70 = bitcast float* %arrayidx.i.i.8 to i32*
  %71 = load i32, i32* %70, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.8 = getelementptr inbounds float, float* %17, i64 %69
  %72 = bitcast float* %arrayidx12.i.i.8 to i32*
  store i32 %71, i32* %72, align 4, !tbaa !12, !llvm.access.group !16
  %73 = extractelement <8 x i64> %68, i32 1
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %21, i64 %73
  %74 = bitcast float* %arrayidx.i.i.9 to i32*
  %75 = load i32, i32* %74, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.9 = getelementptr inbounds float, float* %17, i64 %73
  %76 = bitcast float* %arrayidx12.i.i.9 to i32*
  store i32 %75, i32* %76, align 4, !tbaa !12, !llvm.access.group !16
  %77 = extractelement <8 x i64> %68, i32 2
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %21, i64 %77
  %78 = bitcast float* %arrayidx.i.i.10 to i32*
  %79 = load i32, i32* %78, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.10 = getelementptr inbounds float, float* %17, i64 %77
  %80 = bitcast float* %arrayidx12.i.i.10 to i32*
  store i32 %79, i32* %80, align 4, !tbaa !12, !llvm.access.group !16
  %81 = extractelement <8 x i64> %68, i32 3
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %21, i64 %81
  %82 = bitcast float* %arrayidx.i.i.11 to i32*
  %83 = load i32, i32* %82, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.11 = getelementptr inbounds float, float* %17, i64 %81
  %84 = bitcast float* %arrayidx12.i.i.11 to i32*
  store i32 %83, i32* %84, align 4, !tbaa !12, !llvm.access.group !16
  %85 = extractelement <8 x i64> %68, i32 4
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %21, i64 %85
  %86 = bitcast float* %arrayidx.i.i.12 to i32*
  %87 = load i32, i32* %86, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.12 = getelementptr inbounds float, float* %17, i64 %85
  %88 = bitcast float* %arrayidx12.i.i.12 to i32*
  store i32 %87, i32* %88, align 4, !tbaa !12, !llvm.access.group !16
  %89 = extractelement <8 x i64> %68, i32 5
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %21, i64 %89
  %90 = bitcast float* %arrayidx.i.i.13 to i32*
  %91 = load i32, i32* %90, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.13 = getelementptr inbounds float, float* %17, i64 %89
  %92 = bitcast float* %arrayidx12.i.i.13 to i32*
  store i32 %91, i32* %92, align 4, !tbaa !12, !llvm.access.group !16
  %93 = extractelement <8 x i64> %68, i32 6
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %21, i64 %93
  %94 = bitcast float* %arrayidx.i.i.14 to i32*
  %95 = load i32, i32* %94, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.14 = getelementptr inbounds float, float* %17, i64 %93
  %96 = bitcast float* %arrayidx12.i.i.14 to i32*
  store i32 %95, i32* %96, align 4, !tbaa !12, !llvm.access.group !16
  %97 = extractelement <8 x i64> %68, i32 7
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %21, i64 %97
  %98 = bitcast float* %arrayidx.i.i.15 to i32*
  %99 = load i32, i32* %98, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.15 = getelementptr inbounds float, float* %17, i64 %97
  %100 = bitcast float* %arrayidx12.i.i.15 to i32*
  store i32 %99, i32* %100, align 4, !tbaa !12, !llvm.access.group !16
  %101 = add <8 x i32> %66, %38
  %102 = sext <8 x i32> %101 to <8 x i64>
  %103 = extractelement <8 x i64> %102, i32 0
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %21, i64 %103
  %104 = bitcast float* %arrayidx.i.i.16 to i32*
  %105 = load i32, i32* %104, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.16 = getelementptr inbounds float, float* %17, i64 %103
  %106 = bitcast float* %arrayidx12.i.i.16 to i32*
  store i32 %105, i32* %106, align 4, !tbaa !12, !llvm.access.group !16
  %107 = extractelement <8 x i64> %102, i32 1
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %21, i64 %107
  %108 = bitcast float* %arrayidx.i.i.17 to i32*
  %109 = load i32, i32* %108, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.17 = getelementptr inbounds float, float* %17, i64 %107
  %110 = bitcast float* %arrayidx12.i.i.17 to i32*
  store i32 %109, i32* %110, align 4, !tbaa !12, !llvm.access.group !16
  %111 = extractelement <8 x i64> %102, i32 2
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %21, i64 %111
  %112 = bitcast float* %arrayidx.i.i.18 to i32*
  %113 = load i32, i32* %112, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.18 = getelementptr inbounds float, float* %17, i64 %111
  %114 = bitcast float* %arrayidx12.i.i.18 to i32*
  store i32 %113, i32* %114, align 4, !tbaa !12, !llvm.access.group !16
  %115 = extractelement <8 x i64> %102, i32 3
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %21, i64 %115
  %116 = bitcast float* %arrayidx.i.i.19 to i32*
  %117 = load i32, i32* %116, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.19 = getelementptr inbounds float, float* %17, i64 %115
  %118 = bitcast float* %arrayidx12.i.i.19 to i32*
  store i32 %117, i32* %118, align 4, !tbaa !12, !llvm.access.group !16
  %119 = extractelement <8 x i64> %102, i32 4
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %21, i64 %119
  %120 = bitcast float* %arrayidx.i.i.20 to i32*
  %121 = load i32, i32* %120, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.20 = getelementptr inbounds float, float* %17, i64 %119
  %122 = bitcast float* %arrayidx12.i.i.20 to i32*
  store i32 %121, i32* %122, align 4, !tbaa !12, !llvm.access.group !16
  %123 = extractelement <8 x i64> %102, i32 5
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %21, i64 %123
  %124 = bitcast float* %arrayidx.i.i.21 to i32*
  %125 = load i32, i32* %124, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.21 = getelementptr inbounds float, float* %17, i64 %123
  %126 = bitcast float* %arrayidx12.i.i.21 to i32*
  store i32 %125, i32* %126, align 4, !tbaa !12, !llvm.access.group !16
  %127 = extractelement <8 x i64> %102, i32 6
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %21, i64 %127
  %128 = bitcast float* %arrayidx.i.i.22 to i32*
  %129 = load i32, i32* %128, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.22 = getelementptr inbounds float, float* %17, i64 %127
  %130 = bitcast float* %arrayidx12.i.i.22 to i32*
  store i32 %129, i32* %130, align 4, !tbaa !12, !llvm.access.group !16
  %131 = extractelement <8 x i64> %102, i32 7
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %21, i64 %131
  %132 = bitcast float* %arrayidx.i.i.23 to i32*
  %133 = load i32, i32* %132, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.23 = getelementptr inbounds float, float* %17, i64 %131
  %134 = bitcast float* %arrayidx12.i.i.23 to i32*
  store i32 %133, i32* %134, align 4, !tbaa !12, !llvm.access.group !16
  %135 = add <8 x i32> %66, %40
  %136 = sext <8 x i32> %135 to <8 x i64>
  %137 = extractelement <8 x i64> %136, i32 0
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %21, i64 %137
  %138 = bitcast float* %arrayidx.i.i.24 to i32*
  %139 = load i32, i32* %138, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.24 = getelementptr inbounds float, float* %17, i64 %137
  %140 = bitcast float* %arrayidx12.i.i.24 to i32*
  store i32 %139, i32* %140, align 4, !tbaa !12, !llvm.access.group !16
  %141 = extractelement <8 x i64> %136, i32 1
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %21, i64 %141
  %142 = bitcast float* %arrayidx.i.i.25 to i32*
  %143 = load i32, i32* %142, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.25 = getelementptr inbounds float, float* %17, i64 %141
  %144 = bitcast float* %arrayidx12.i.i.25 to i32*
  store i32 %143, i32* %144, align 4, !tbaa !12, !llvm.access.group !16
  %145 = extractelement <8 x i64> %136, i32 2
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %21, i64 %145
  %146 = bitcast float* %arrayidx.i.i.26 to i32*
  %147 = load i32, i32* %146, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.26 = getelementptr inbounds float, float* %17, i64 %145
  %148 = bitcast float* %arrayidx12.i.i.26 to i32*
  store i32 %147, i32* %148, align 4, !tbaa !12, !llvm.access.group !16
  %149 = extractelement <8 x i64> %136, i32 3
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %21, i64 %149
  %150 = bitcast float* %arrayidx.i.i.27 to i32*
  %151 = load i32, i32* %150, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.27 = getelementptr inbounds float, float* %17, i64 %149
  %152 = bitcast float* %arrayidx12.i.i.27 to i32*
  store i32 %151, i32* %152, align 4, !tbaa !12, !llvm.access.group !16
  %153 = extractelement <8 x i64> %136, i32 4
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %21, i64 %153
  %154 = bitcast float* %arrayidx.i.i.28 to i32*
  %155 = load i32, i32* %154, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.28 = getelementptr inbounds float, float* %17, i64 %153
  %156 = bitcast float* %arrayidx12.i.i.28 to i32*
  store i32 %155, i32* %156, align 4, !tbaa !12, !llvm.access.group !16
  %157 = extractelement <8 x i64> %136, i32 5
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %21, i64 %157
  %158 = bitcast float* %arrayidx.i.i.29 to i32*
  %159 = load i32, i32* %158, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.29 = getelementptr inbounds float, float* %17, i64 %157
  %160 = bitcast float* %arrayidx12.i.i.29 to i32*
  store i32 %159, i32* %160, align 4, !tbaa !12, !llvm.access.group !16
  %161 = extractelement <8 x i64> %136, i32 6
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %21, i64 %161
  %162 = bitcast float* %arrayidx.i.i.30 to i32*
  %163 = load i32, i32* %162, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.30 = getelementptr inbounds float, float* %17, i64 %161
  %164 = bitcast float* %arrayidx12.i.i.30 to i32*
  store i32 %163, i32* %164, align 4, !tbaa !12, !llvm.access.group !16
  %165 = extractelement <8 x i64> %136, i32 7
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %21, i64 %165
  %166 = bitcast float* %arrayidx.i.i.31 to i32*
  %167 = load i32, i32* %166, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.31 = getelementptr inbounds float, float* %17, i64 %165
  %168 = bitcast float* %arrayidx12.i.i.31 to i32*
  store i32 %167, i32* %168, align 4, !tbaa !12, !llvm.access.group !16
  %169 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond1.not = icmp eq i64 %169, 8
  br i1 %exitcond1.not, label %_pocl_kernel_doitgen_kernel2.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !19

_pocl_kernel_doitgen_kernel2.exit:                ; preds = %pregion_for_entry.pregion_for_init.i.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_doitgen_kernel2_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
  %6 = getelementptr i8*, i8** %0, i64 1
  %7 = bitcast i8** %6 to i32**
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr i8*, i8** %0, i64 2
  %11 = bitcast i8** %10 to i32**
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr i8*, i8** %0, i64 3
  %15 = bitcast i8** %14 to float**
  %16 = load float*, float** %15, align 8
  %17 = getelementptr i8*, i8** %0, i64 5
  %18 = bitcast i8** %17 to float**
  %19 = load float*, float** %18, align 8
  %20 = getelementptr i8*, i8** %0, i64 6
  %21 = bitcast i8** %20 to i32**
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %mul3.i.i = mul i32 %23, %9
  %conv.i.i = trunc i64 %mul.i.i.i to i32
  %24 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.1 = or i32 %24, 1
  %25 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.2 = or i32 %25, 2
  %26 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.3 = or i32 %26, 3
  %27 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.4 = or i32 %27, 4
  %28 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.5 = or i32 %28, 5
  %29 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.6 = or i32 %29, 6
  %30 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.7 = or i32 %30, 7
  %31 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %32 = shufflevector <8 x i64> %31, <8 x i64> undef, <8 x i32> zeroinitializer
  %33 = trunc <8 x i64> %32 to <8 x i32>
  %34 = or <8 x i32> %33, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %35 = trunc <8 x i64> %32 to <8 x i32>
  %36 = or <8 x i32> %35, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %37 = trunc <8 x i64> %32 to <8 x i32>
  %38 = or <8 x i32> %37, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_entry.pregion_for_init.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %167, %pregion_for_entry.pregion_for_init.i.i ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %reass.add.i.i = add i32 %mul3.i.i, %conv2.i.i
  %reass.mul.i.i = mul i32 %reass.add.i.i, %13
  %add5.i.i = add i32 %reass.mul.i.i, %conv.i.i
  %idxprom.i.i = sext i32 %add5.i.i to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %19, i64 %idxprom.i.i
  %39 = bitcast float* %arrayidx.i.i to i32*
  %40 = load i32, i32* %39, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i = getelementptr inbounds float, float* %16, i64 %idxprom.i.i
  %41 = bitcast float* %arrayidx12.i.i to i32*
  store i32 %40, i32* %41, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.1 = add i32 %reass.mul.i.i, %conv.i.i.1
  %idxprom.i.i.1 = sext i32 %add5.i.i.1 to i64
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.1
  %42 = bitcast float* %arrayidx.i.i.1 to i32*
  %43 = load i32, i32* %42, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.1
  %44 = bitcast float* %arrayidx12.i.i.1 to i32*
  store i32 %43, i32* %44, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.2 = add i32 %reass.mul.i.i, %conv.i.i.2
  %idxprom.i.i.2 = sext i32 %add5.i.i.2 to i64
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.2
  %45 = bitcast float* %arrayidx.i.i.2 to i32*
  %46 = load i32, i32* %45, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.2
  %47 = bitcast float* %arrayidx12.i.i.2 to i32*
  store i32 %46, i32* %47, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.3 = add i32 %reass.mul.i.i, %conv.i.i.3
  %idxprom.i.i.3 = sext i32 %add5.i.i.3 to i64
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.3
  %48 = bitcast float* %arrayidx.i.i.3 to i32*
  %49 = load i32, i32* %48, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.3
  %50 = bitcast float* %arrayidx12.i.i.3 to i32*
  store i32 %49, i32* %50, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.4 = add i32 %reass.mul.i.i, %conv.i.i.4
  %idxprom.i.i.4 = sext i32 %add5.i.i.4 to i64
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.4
  %51 = bitcast float* %arrayidx.i.i.4 to i32*
  %52 = load i32, i32* %51, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.4 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.4
  %53 = bitcast float* %arrayidx12.i.i.4 to i32*
  store i32 %52, i32* %53, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.5 = add i32 %reass.mul.i.i, %conv.i.i.5
  %idxprom.i.i.5 = sext i32 %add5.i.i.5 to i64
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.5
  %54 = bitcast float* %arrayidx.i.i.5 to i32*
  %55 = load i32, i32* %54, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.5 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.5
  %56 = bitcast float* %arrayidx12.i.i.5 to i32*
  store i32 %55, i32* %56, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.6 = add i32 %reass.mul.i.i, %conv.i.i.6
  %idxprom.i.i.6 = sext i32 %add5.i.i.6 to i64
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.6
  %57 = bitcast float* %arrayidx.i.i.6 to i32*
  %58 = load i32, i32* %57, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.6 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.6
  %59 = bitcast float* %arrayidx12.i.i.6 to i32*
  store i32 %58, i32* %59, align 4, !tbaa !12, !llvm.access.group !16
  %add5.i.i.7 = add i32 %reass.mul.i.i, %conv.i.i.7
  %idxprom.i.i.7 = sext i32 %add5.i.i.7 to i64
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.7
  %60 = bitcast float* %arrayidx.i.i.7 to i32*
  %61 = load i32, i32* %60, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.7 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.7
  %62 = bitcast float* %arrayidx12.i.i.7 to i32*
  store i32 %61, i32* %62, align 4, !tbaa !12, !llvm.access.group !16
  %63 = insertelement <8 x i32> undef, i32 %reass.mul.i.i, i32 0
  %64 = shufflevector <8 x i32> %63, <8 x i32> undef, <8 x i32> zeroinitializer
  %65 = add <8 x i32> %64, %34
  %66 = sext <8 x i32> %65 to <8 x i64>
  %67 = extractelement <8 x i64> %66, i32 0
  %arrayidx.i.i.8 = getelementptr inbounds float, float* %19, i64 %67
  %68 = bitcast float* %arrayidx.i.i.8 to i32*
  %69 = load i32, i32* %68, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.8 = getelementptr inbounds float, float* %16, i64 %67
  %70 = bitcast float* %arrayidx12.i.i.8 to i32*
  store i32 %69, i32* %70, align 4, !tbaa !12, !llvm.access.group !16
  %71 = extractelement <8 x i64> %66, i32 1
  %arrayidx.i.i.9 = getelementptr inbounds float, float* %19, i64 %71
  %72 = bitcast float* %arrayidx.i.i.9 to i32*
  %73 = load i32, i32* %72, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.9 = getelementptr inbounds float, float* %16, i64 %71
  %74 = bitcast float* %arrayidx12.i.i.9 to i32*
  store i32 %73, i32* %74, align 4, !tbaa !12, !llvm.access.group !16
  %75 = extractelement <8 x i64> %66, i32 2
  %arrayidx.i.i.10 = getelementptr inbounds float, float* %19, i64 %75
  %76 = bitcast float* %arrayidx.i.i.10 to i32*
  %77 = load i32, i32* %76, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.10 = getelementptr inbounds float, float* %16, i64 %75
  %78 = bitcast float* %arrayidx12.i.i.10 to i32*
  store i32 %77, i32* %78, align 4, !tbaa !12, !llvm.access.group !16
  %79 = extractelement <8 x i64> %66, i32 3
  %arrayidx.i.i.11 = getelementptr inbounds float, float* %19, i64 %79
  %80 = bitcast float* %arrayidx.i.i.11 to i32*
  %81 = load i32, i32* %80, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.11 = getelementptr inbounds float, float* %16, i64 %79
  %82 = bitcast float* %arrayidx12.i.i.11 to i32*
  store i32 %81, i32* %82, align 4, !tbaa !12, !llvm.access.group !16
  %83 = extractelement <8 x i64> %66, i32 4
  %arrayidx.i.i.12 = getelementptr inbounds float, float* %19, i64 %83
  %84 = bitcast float* %arrayidx.i.i.12 to i32*
  %85 = load i32, i32* %84, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.12 = getelementptr inbounds float, float* %16, i64 %83
  %86 = bitcast float* %arrayidx12.i.i.12 to i32*
  store i32 %85, i32* %86, align 4, !tbaa !12, !llvm.access.group !16
  %87 = extractelement <8 x i64> %66, i32 5
  %arrayidx.i.i.13 = getelementptr inbounds float, float* %19, i64 %87
  %88 = bitcast float* %arrayidx.i.i.13 to i32*
  %89 = load i32, i32* %88, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.13 = getelementptr inbounds float, float* %16, i64 %87
  %90 = bitcast float* %arrayidx12.i.i.13 to i32*
  store i32 %89, i32* %90, align 4, !tbaa !12, !llvm.access.group !16
  %91 = extractelement <8 x i64> %66, i32 6
  %arrayidx.i.i.14 = getelementptr inbounds float, float* %19, i64 %91
  %92 = bitcast float* %arrayidx.i.i.14 to i32*
  %93 = load i32, i32* %92, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.14 = getelementptr inbounds float, float* %16, i64 %91
  %94 = bitcast float* %arrayidx12.i.i.14 to i32*
  store i32 %93, i32* %94, align 4, !tbaa !12, !llvm.access.group !16
  %95 = extractelement <8 x i64> %66, i32 7
  %arrayidx.i.i.15 = getelementptr inbounds float, float* %19, i64 %95
  %96 = bitcast float* %arrayidx.i.i.15 to i32*
  %97 = load i32, i32* %96, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.15 = getelementptr inbounds float, float* %16, i64 %95
  %98 = bitcast float* %arrayidx12.i.i.15 to i32*
  store i32 %97, i32* %98, align 4, !tbaa !12, !llvm.access.group !16
  %99 = add <8 x i32> %64, %36
  %100 = sext <8 x i32> %99 to <8 x i64>
  %101 = extractelement <8 x i64> %100, i32 0
  %arrayidx.i.i.16 = getelementptr inbounds float, float* %19, i64 %101
  %102 = bitcast float* %arrayidx.i.i.16 to i32*
  %103 = load i32, i32* %102, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.16 = getelementptr inbounds float, float* %16, i64 %101
  %104 = bitcast float* %arrayidx12.i.i.16 to i32*
  store i32 %103, i32* %104, align 4, !tbaa !12, !llvm.access.group !16
  %105 = extractelement <8 x i64> %100, i32 1
  %arrayidx.i.i.17 = getelementptr inbounds float, float* %19, i64 %105
  %106 = bitcast float* %arrayidx.i.i.17 to i32*
  %107 = load i32, i32* %106, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.17 = getelementptr inbounds float, float* %16, i64 %105
  %108 = bitcast float* %arrayidx12.i.i.17 to i32*
  store i32 %107, i32* %108, align 4, !tbaa !12, !llvm.access.group !16
  %109 = extractelement <8 x i64> %100, i32 2
  %arrayidx.i.i.18 = getelementptr inbounds float, float* %19, i64 %109
  %110 = bitcast float* %arrayidx.i.i.18 to i32*
  %111 = load i32, i32* %110, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.18 = getelementptr inbounds float, float* %16, i64 %109
  %112 = bitcast float* %arrayidx12.i.i.18 to i32*
  store i32 %111, i32* %112, align 4, !tbaa !12, !llvm.access.group !16
  %113 = extractelement <8 x i64> %100, i32 3
  %arrayidx.i.i.19 = getelementptr inbounds float, float* %19, i64 %113
  %114 = bitcast float* %arrayidx.i.i.19 to i32*
  %115 = load i32, i32* %114, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.19 = getelementptr inbounds float, float* %16, i64 %113
  %116 = bitcast float* %arrayidx12.i.i.19 to i32*
  store i32 %115, i32* %116, align 4, !tbaa !12, !llvm.access.group !16
  %117 = extractelement <8 x i64> %100, i32 4
  %arrayidx.i.i.20 = getelementptr inbounds float, float* %19, i64 %117
  %118 = bitcast float* %arrayidx.i.i.20 to i32*
  %119 = load i32, i32* %118, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.20 = getelementptr inbounds float, float* %16, i64 %117
  %120 = bitcast float* %arrayidx12.i.i.20 to i32*
  store i32 %119, i32* %120, align 4, !tbaa !12, !llvm.access.group !16
  %121 = extractelement <8 x i64> %100, i32 5
  %arrayidx.i.i.21 = getelementptr inbounds float, float* %19, i64 %121
  %122 = bitcast float* %arrayidx.i.i.21 to i32*
  %123 = load i32, i32* %122, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.21 = getelementptr inbounds float, float* %16, i64 %121
  %124 = bitcast float* %arrayidx12.i.i.21 to i32*
  store i32 %123, i32* %124, align 4, !tbaa !12, !llvm.access.group !16
  %125 = extractelement <8 x i64> %100, i32 6
  %arrayidx.i.i.22 = getelementptr inbounds float, float* %19, i64 %125
  %126 = bitcast float* %arrayidx.i.i.22 to i32*
  %127 = load i32, i32* %126, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.22 = getelementptr inbounds float, float* %16, i64 %125
  %128 = bitcast float* %arrayidx12.i.i.22 to i32*
  store i32 %127, i32* %128, align 4, !tbaa !12, !llvm.access.group !16
  %129 = extractelement <8 x i64> %100, i32 7
  %arrayidx.i.i.23 = getelementptr inbounds float, float* %19, i64 %129
  %130 = bitcast float* %arrayidx.i.i.23 to i32*
  %131 = load i32, i32* %130, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.23 = getelementptr inbounds float, float* %16, i64 %129
  %132 = bitcast float* %arrayidx12.i.i.23 to i32*
  store i32 %131, i32* %132, align 4, !tbaa !12, !llvm.access.group !16
  %133 = add <8 x i32> %64, %38
  %134 = sext <8 x i32> %133 to <8 x i64>
  %135 = extractelement <8 x i64> %134, i32 0
  %arrayidx.i.i.24 = getelementptr inbounds float, float* %19, i64 %135
  %136 = bitcast float* %arrayidx.i.i.24 to i32*
  %137 = load i32, i32* %136, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.24 = getelementptr inbounds float, float* %16, i64 %135
  %138 = bitcast float* %arrayidx12.i.i.24 to i32*
  store i32 %137, i32* %138, align 4, !tbaa !12, !llvm.access.group !16
  %139 = extractelement <8 x i64> %134, i32 1
  %arrayidx.i.i.25 = getelementptr inbounds float, float* %19, i64 %139
  %140 = bitcast float* %arrayidx.i.i.25 to i32*
  %141 = load i32, i32* %140, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.25 = getelementptr inbounds float, float* %16, i64 %139
  %142 = bitcast float* %arrayidx12.i.i.25 to i32*
  store i32 %141, i32* %142, align 4, !tbaa !12, !llvm.access.group !16
  %143 = extractelement <8 x i64> %134, i32 2
  %arrayidx.i.i.26 = getelementptr inbounds float, float* %19, i64 %143
  %144 = bitcast float* %arrayidx.i.i.26 to i32*
  %145 = load i32, i32* %144, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.26 = getelementptr inbounds float, float* %16, i64 %143
  %146 = bitcast float* %arrayidx12.i.i.26 to i32*
  store i32 %145, i32* %146, align 4, !tbaa !12, !llvm.access.group !16
  %147 = extractelement <8 x i64> %134, i32 3
  %arrayidx.i.i.27 = getelementptr inbounds float, float* %19, i64 %147
  %148 = bitcast float* %arrayidx.i.i.27 to i32*
  %149 = load i32, i32* %148, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.27 = getelementptr inbounds float, float* %16, i64 %147
  %150 = bitcast float* %arrayidx12.i.i.27 to i32*
  store i32 %149, i32* %150, align 4, !tbaa !12, !llvm.access.group !16
  %151 = extractelement <8 x i64> %134, i32 4
  %arrayidx.i.i.28 = getelementptr inbounds float, float* %19, i64 %151
  %152 = bitcast float* %arrayidx.i.i.28 to i32*
  %153 = load i32, i32* %152, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.28 = getelementptr inbounds float, float* %16, i64 %151
  %154 = bitcast float* %arrayidx12.i.i.28 to i32*
  store i32 %153, i32* %154, align 4, !tbaa !12, !llvm.access.group !16
  %155 = extractelement <8 x i64> %134, i32 5
  %arrayidx.i.i.29 = getelementptr inbounds float, float* %19, i64 %155
  %156 = bitcast float* %arrayidx.i.i.29 to i32*
  %157 = load i32, i32* %156, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.29 = getelementptr inbounds float, float* %16, i64 %155
  %158 = bitcast float* %arrayidx12.i.i.29 to i32*
  store i32 %157, i32* %158, align 4, !tbaa !12, !llvm.access.group !16
  %159 = extractelement <8 x i64> %134, i32 6
  %arrayidx.i.i.30 = getelementptr inbounds float, float* %19, i64 %159
  %160 = bitcast float* %arrayidx.i.i.30 to i32*
  %161 = load i32, i32* %160, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.30 = getelementptr inbounds float, float* %16, i64 %159
  %162 = bitcast float* %arrayidx12.i.i.30 to i32*
  store i32 %161, i32* %162, align 4, !tbaa !12, !llvm.access.group !16
  %163 = extractelement <8 x i64> %134, i32 7
  %arrayidx.i.i.31 = getelementptr inbounds float, float* %19, i64 %163
  %164 = bitcast float* %arrayidx.i.i.31 to i32*
  %165 = load i32, i32* %164, align 4, !tbaa !12, !llvm.access.group !16
  %arrayidx12.i.i.31 = getelementptr inbounds float, float* %16, i64 %163
  %166 = bitcast float* %arrayidx12.i.i.31 to i32*
  store i32 %165, i32* %166, align 4, !tbaa !12, !llvm.access.group !16
  %167 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond1.not = icmp eq i64 %167, 8
  br i1 %exitcond1.not, label %_pocl_kernel_doitgen_kernel2.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !19

_pocl_kernel_doitgen_kernel2.exit:                ; preds = %pregion_for_entry.pregion_for_init.i.i
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
!5 = !{i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"int", !"int", !"int", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int"}
!8 = !{!"int", !"int", !"int", !"float*", !"float*", !"float*", !"int"}
!9 = !{!"", !"", !"", !"", !"", !"", !""}
!10 = !{!"nr", !"nq", !"np", !"A", !"C4", !"sum", !"r"}
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
