; ModuleID = './MD/IIIGLHNEOAEFDIKEMFGADDCPMLJPFPEHBPJHD/gemver_kernel2/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_gemver_kernel2(float* nocapture readonly %0, float* nocapture %1, float* nocapture readonly %2, float* nocapture readonly %3, float %4, i32 %5, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %6, i64 %7, i64 %8, i64 %9) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %7, 8
  %cmp24.i = icmp sgt i32 %5, 0
  %11 = zext i32 %5 to i64
  br i1 %cmp24.i, label %pregion_for_entry.entry.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.us.preheader:           ; preds = %10
  br label %pregion_for_entry.entry.i.us

vector.memcheck:                                  ; preds = %10
  %12 = trunc i64 %7 to i32
  %13 = shl i32 %12, 8
  %14 = sext i32 %13 to i64
  %scevgep = getelementptr float, float* %1, i64 %14
  %15 = add nsw i64 %14, 256
  %scevgep13 = getelementptr float, float* %1, i64 %15
  %scevgep15 = getelementptr float, float* %3, i64 %14
  %scevgep17 = getelementptr float, float* %3, i64 %15
  %bound0 = icmp ult float* %scevgep, %scevgep17
  %bound1 = icmp ult float* %scevgep15, %scevgep13
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.preheader, label %vector.body

pregion_for_entry.entry.i.preheader:              ; preds = %vector.memcheck
  br label %pregion_for_entry.entry.i

vector.body:                                      ; preds = %vector.memcheck
  %16 = shl i64 %7, 40
  %17 = ashr exact i64 %16, 32
  %18 = getelementptr inbounds float, float* %1, i64 %17
  %19 = bitcast float* %18 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %19, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %20 = getelementptr inbounds float, float* %18, i64 8
  %21 = bitcast float* %20 to <8 x float>*
  %wide.load19 = load <8 x float>, <8 x float>* %21, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %22 = getelementptr inbounds float, float* %18, i64 16
  %23 = bitcast float* %22 to <8 x float>*
  %wide.load20 = load <8 x float>, <8 x float>* %23, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %24 = getelementptr inbounds float, float* %18, i64 24
  %25 = bitcast float* %24 to <8 x float>*
  %wide.load21 = load <8 x float>, <8 x float>* %25, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %26 = getelementptr inbounds float, float* %3, i64 %17
  %27 = bitcast float* %26 to <8 x float>*
  %wide.load22 = load <8 x float>, <8 x float>* %27, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %28 = getelementptr inbounds float, float* %26, i64 8
  %29 = bitcast float* %28 to <8 x float>*
  %wide.load23 = load <8 x float>, <8 x float>* %29, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %30 = getelementptr inbounds float, float* %26, i64 16
  %31 = bitcast float* %30 to <8 x float>*
  %wide.load24 = load <8 x float>, <8 x float>* %31, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %32 = getelementptr inbounds float, float* %26, i64 24
  %33 = bitcast float* %32 to <8 x float>*
  %wide.load25 = load <8 x float>, <8 x float>* %33, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %34 = fadd <8 x float> %wide.load22, %wide.load
  %35 = fadd <8 x float> %wide.load23, %wide.load19
  %36 = fadd <8 x float> %wide.load24, %wide.load20
  %37 = fadd <8 x float> %wide.load25, %wide.load21
  %38 = bitcast float* %18 to <8 x float>*
  store <8 x float> %34, <8 x float>* %38, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %39 = bitcast float* %20 to <8 x float>*
  store <8 x float> %35, <8 x float>* %39, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %40 = bitcast float* %22 to <8 x float>*
  store <8 x float> %36, <8 x float>* %40, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %41 = bitcast float* %24 to <8 x float>*
  store <8 x float> %37, <8 x float>* %41, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %42 = shl i64 %7, 40
  %43 = ashr exact i64 %42, 32
  %44 = or i64 %43, 32
  %45 = getelementptr inbounds float, float* %1, i64 %44
  %46 = bitcast float* %45 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %46, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %47 = getelementptr inbounds float, float* %45, i64 8
  %48 = bitcast float* %47 to <8 x float>*
  %wide.load19.1 = load <8 x float>, <8 x float>* %48, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %49 = getelementptr inbounds float, float* %45, i64 16
  %50 = bitcast float* %49 to <8 x float>*
  %wide.load20.1 = load <8 x float>, <8 x float>* %50, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %51 = getelementptr inbounds float, float* %45, i64 24
  %52 = bitcast float* %51 to <8 x float>*
  %wide.load21.1 = load <8 x float>, <8 x float>* %52, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %53 = getelementptr inbounds float, float* %3, i64 %44
  %54 = bitcast float* %53 to <8 x float>*
  %wide.load22.1 = load <8 x float>, <8 x float>* %54, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %55 = getelementptr inbounds float, float* %53, i64 8
  %56 = bitcast float* %55 to <8 x float>*
  %wide.load23.1 = load <8 x float>, <8 x float>* %56, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %57 = getelementptr inbounds float, float* %53, i64 16
  %58 = bitcast float* %57 to <8 x float>*
  %wide.load24.1 = load <8 x float>, <8 x float>* %58, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %59 = getelementptr inbounds float, float* %53, i64 24
  %60 = bitcast float* %59 to <8 x float>*
  %wide.load25.1 = load <8 x float>, <8 x float>* %60, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %61 = fadd <8 x float> %wide.load22.1, %wide.load.1
  %62 = fadd <8 x float> %wide.load23.1, %wide.load19.1
  %63 = fadd <8 x float> %wide.load24.1, %wide.load20.1
  %64 = fadd <8 x float> %wide.load25.1, %wide.load21.1
  %65 = bitcast float* %45 to <8 x float>*
  store <8 x float> %61, <8 x float>* %65, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %66 = bitcast float* %47 to <8 x float>*
  store <8 x float> %62, <8 x float>* %66, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %67 = bitcast float* %49 to <8 x float>*
  store <8 x float> %63, <8 x float>* %67, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %68 = bitcast float* %51 to <8 x float>*
  store <8 x float> %64, <8 x float>* %68, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %69 = shl i64 %7, 40
  %70 = ashr exact i64 %69, 32
  %71 = or i64 %70, 64
  %72 = getelementptr inbounds float, float* %1, i64 %71
  %73 = bitcast float* %72 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %73, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %74 = getelementptr inbounds float, float* %72, i64 8
  %75 = bitcast float* %74 to <8 x float>*
  %wide.load19.2 = load <8 x float>, <8 x float>* %75, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %76 = getelementptr inbounds float, float* %72, i64 16
  %77 = bitcast float* %76 to <8 x float>*
  %wide.load20.2 = load <8 x float>, <8 x float>* %77, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %78 = getelementptr inbounds float, float* %72, i64 24
  %79 = bitcast float* %78 to <8 x float>*
  %wide.load21.2 = load <8 x float>, <8 x float>* %79, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %80 = getelementptr inbounds float, float* %3, i64 %71
  %81 = bitcast float* %80 to <8 x float>*
  %wide.load22.2 = load <8 x float>, <8 x float>* %81, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %82 = getelementptr inbounds float, float* %80, i64 8
  %83 = bitcast float* %82 to <8 x float>*
  %wide.load23.2 = load <8 x float>, <8 x float>* %83, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %84 = getelementptr inbounds float, float* %80, i64 16
  %85 = bitcast float* %84 to <8 x float>*
  %wide.load24.2 = load <8 x float>, <8 x float>* %85, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %86 = getelementptr inbounds float, float* %80, i64 24
  %87 = bitcast float* %86 to <8 x float>*
  %wide.load25.2 = load <8 x float>, <8 x float>* %87, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %88 = fadd <8 x float> %wide.load22.2, %wide.load.2
  %89 = fadd <8 x float> %wide.load23.2, %wide.load19.2
  %90 = fadd <8 x float> %wide.load24.2, %wide.load20.2
  %91 = fadd <8 x float> %wide.load25.2, %wide.load21.2
  %92 = bitcast float* %72 to <8 x float>*
  store <8 x float> %88, <8 x float>* %92, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %93 = bitcast float* %74 to <8 x float>*
  store <8 x float> %89, <8 x float>* %93, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %94 = bitcast float* %76 to <8 x float>*
  store <8 x float> %90, <8 x float>* %94, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %95 = bitcast float* %78 to <8 x float>*
  store <8 x float> %91, <8 x float>* %95, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %96 = shl i64 %7, 40
  %97 = ashr exact i64 %96, 32
  %98 = or i64 %97, 96
  %99 = getelementptr inbounds float, float* %1, i64 %98
  %100 = bitcast float* %99 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %100, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %101 = getelementptr inbounds float, float* %99, i64 8
  %102 = bitcast float* %101 to <8 x float>*
  %wide.load19.3 = load <8 x float>, <8 x float>* %102, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %103 = getelementptr inbounds float, float* %99, i64 16
  %104 = bitcast float* %103 to <8 x float>*
  %wide.load20.3 = load <8 x float>, <8 x float>* %104, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %105 = getelementptr inbounds float, float* %99, i64 24
  %106 = bitcast float* %105 to <8 x float>*
  %wide.load21.3 = load <8 x float>, <8 x float>* %106, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %107 = getelementptr inbounds float, float* %3, i64 %98
  %108 = bitcast float* %107 to <8 x float>*
  %wide.load22.3 = load <8 x float>, <8 x float>* %108, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %109 = getelementptr inbounds float, float* %107, i64 8
  %110 = bitcast float* %109 to <8 x float>*
  %wide.load23.3 = load <8 x float>, <8 x float>* %110, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %111 = getelementptr inbounds float, float* %107, i64 16
  %112 = bitcast float* %111 to <8 x float>*
  %wide.load24.3 = load <8 x float>, <8 x float>* %112, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %113 = getelementptr inbounds float, float* %107, i64 24
  %114 = bitcast float* %113 to <8 x float>*
  %wide.load25.3 = load <8 x float>, <8 x float>* %114, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %115 = fadd <8 x float> %wide.load22.3, %wide.load.3
  %116 = fadd <8 x float> %wide.load23.3, %wide.load19.3
  %117 = fadd <8 x float> %wide.load24.3, %wide.load20.3
  %118 = fadd <8 x float> %wide.load25.3, %wide.load21.3
  %119 = bitcast float* %99 to <8 x float>*
  store <8 x float> %115, <8 x float>* %119, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %120 = bitcast float* %101 to <8 x float>*
  store <8 x float> %116, <8 x float>* %120, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %121 = bitcast float* %103 to <8 x float>*
  store <8 x float> %117, <8 x float>* %121, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %122 = bitcast float* %105 to <8 x float>*
  store <8 x float> %118, <8 x float>* %122, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %123 = shl i64 %7, 40
  %124 = ashr exact i64 %123, 32
  %125 = or i64 %124, 128
  %126 = getelementptr inbounds float, float* %1, i64 %125
  %127 = bitcast float* %126 to <8 x float>*
  %wide.load.4 = load <8 x float>, <8 x float>* %127, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %128 = getelementptr inbounds float, float* %126, i64 8
  %129 = bitcast float* %128 to <8 x float>*
  %wide.load19.4 = load <8 x float>, <8 x float>* %129, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %130 = getelementptr inbounds float, float* %126, i64 16
  %131 = bitcast float* %130 to <8 x float>*
  %wide.load20.4 = load <8 x float>, <8 x float>* %131, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %132 = getelementptr inbounds float, float* %126, i64 24
  %133 = bitcast float* %132 to <8 x float>*
  %wide.load21.4 = load <8 x float>, <8 x float>* %133, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %134 = getelementptr inbounds float, float* %3, i64 %125
  %135 = bitcast float* %134 to <8 x float>*
  %wide.load22.4 = load <8 x float>, <8 x float>* %135, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %136 = getelementptr inbounds float, float* %134, i64 8
  %137 = bitcast float* %136 to <8 x float>*
  %wide.load23.4 = load <8 x float>, <8 x float>* %137, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %138 = getelementptr inbounds float, float* %134, i64 16
  %139 = bitcast float* %138 to <8 x float>*
  %wide.load24.4 = load <8 x float>, <8 x float>* %139, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %140 = getelementptr inbounds float, float* %134, i64 24
  %141 = bitcast float* %140 to <8 x float>*
  %wide.load25.4 = load <8 x float>, <8 x float>* %141, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %142 = fadd <8 x float> %wide.load22.4, %wide.load.4
  %143 = fadd <8 x float> %wide.load23.4, %wide.load19.4
  %144 = fadd <8 x float> %wide.load24.4, %wide.load20.4
  %145 = fadd <8 x float> %wide.load25.4, %wide.load21.4
  %146 = bitcast float* %126 to <8 x float>*
  store <8 x float> %142, <8 x float>* %146, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %147 = bitcast float* %128 to <8 x float>*
  store <8 x float> %143, <8 x float>* %147, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %148 = bitcast float* %130 to <8 x float>*
  store <8 x float> %144, <8 x float>* %148, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %149 = bitcast float* %132 to <8 x float>*
  store <8 x float> %145, <8 x float>* %149, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %150 = shl i64 %7, 40
  %151 = ashr exact i64 %150, 32
  %152 = or i64 %151, 160
  %153 = getelementptr inbounds float, float* %1, i64 %152
  %154 = bitcast float* %153 to <8 x float>*
  %wide.load.5 = load <8 x float>, <8 x float>* %154, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %155 = getelementptr inbounds float, float* %153, i64 8
  %156 = bitcast float* %155 to <8 x float>*
  %wide.load19.5 = load <8 x float>, <8 x float>* %156, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %157 = getelementptr inbounds float, float* %153, i64 16
  %158 = bitcast float* %157 to <8 x float>*
  %wide.load20.5 = load <8 x float>, <8 x float>* %158, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %159 = getelementptr inbounds float, float* %153, i64 24
  %160 = bitcast float* %159 to <8 x float>*
  %wide.load21.5 = load <8 x float>, <8 x float>* %160, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %161 = getelementptr inbounds float, float* %3, i64 %152
  %162 = bitcast float* %161 to <8 x float>*
  %wide.load22.5 = load <8 x float>, <8 x float>* %162, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %163 = getelementptr inbounds float, float* %161, i64 8
  %164 = bitcast float* %163 to <8 x float>*
  %wide.load23.5 = load <8 x float>, <8 x float>* %164, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %165 = getelementptr inbounds float, float* %161, i64 16
  %166 = bitcast float* %165 to <8 x float>*
  %wide.load24.5 = load <8 x float>, <8 x float>* %166, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %167 = getelementptr inbounds float, float* %161, i64 24
  %168 = bitcast float* %167 to <8 x float>*
  %wide.load25.5 = load <8 x float>, <8 x float>* %168, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %169 = fadd <8 x float> %wide.load22.5, %wide.load.5
  %170 = fadd <8 x float> %wide.load23.5, %wide.load19.5
  %171 = fadd <8 x float> %wide.load24.5, %wide.load20.5
  %172 = fadd <8 x float> %wide.load25.5, %wide.load21.5
  %173 = bitcast float* %153 to <8 x float>*
  store <8 x float> %169, <8 x float>* %173, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %174 = bitcast float* %155 to <8 x float>*
  store <8 x float> %170, <8 x float>* %174, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %175 = bitcast float* %157 to <8 x float>*
  store <8 x float> %171, <8 x float>* %175, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %176 = bitcast float* %159 to <8 x float>*
  store <8 x float> %172, <8 x float>* %176, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %177 = shl i64 %7, 40
  %178 = ashr exact i64 %177, 32
  %179 = or i64 %178, 192
  %180 = getelementptr inbounds float, float* %1, i64 %179
  %181 = bitcast float* %180 to <8 x float>*
  %wide.load.6 = load <8 x float>, <8 x float>* %181, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %182 = getelementptr inbounds float, float* %180, i64 8
  %183 = bitcast float* %182 to <8 x float>*
  %wide.load19.6 = load <8 x float>, <8 x float>* %183, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %184 = getelementptr inbounds float, float* %180, i64 16
  %185 = bitcast float* %184 to <8 x float>*
  %wide.load20.6 = load <8 x float>, <8 x float>* %185, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %186 = getelementptr inbounds float, float* %180, i64 24
  %187 = bitcast float* %186 to <8 x float>*
  %wide.load21.6 = load <8 x float>, <8 x float>* %187, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %188 = getelementptr inbounds float, float* %3, i64 %179
  %189 = bitcast float* %188 to <8 x float>*
  %wide.load22.6 = load <8 x float>, <8 x float>* %189, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %190 = getelementptr inbounds float, float* %188, i64 8
  %191 = bitcast float* %190 to <8 x float>*
  %wide.load23.6 = load <8 x float>, <8 x float>* %191, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %192 = getelementptr inbounds float, float* %188, i64 16
  %193 = bitcast float* %192 to <8 x float>*
  %wide.load24.6 = load <8 x float>, <8 x float>* %193, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %194 = getelementptr inbounds float, float* %188, i64 24
  %195 = bitcast float* %194 to <8 x float>*
  %wide.load25.6 = load <8 x float>, <8 x float>* %195, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %196 = fadd <8 x float> %wide.load22.6, %wide.load.6
  %197 = fadd <8 x float> %wide.load23.6, %wide.load19.6
  %198 = fadd <8 x float> %wide.load24.6, %wide.load20.6
  %199 = fadd <8 x float> %wide.load25.6, %wide.load21.6
  %200 = bitcast float* %180 to <8 x float>*
  store <8 x float> %196, <8 x float>* %200, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %201 = bitcast float* %182 to <8 x float>*
  store <8 x float> %197, <8 x float>* %201, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %202 = bitcast float* %184 to <8 x float>*
  store <8 x float> %198, <8 x float>* %202, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %203 = bitcast float* %186 to <8 x float>*
  store <8 x float> %199, <8 x float>* %203, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %204 = shl i64 %7, 40
  %205 = ashr exact i64 %204, 32
  %206 = or i64 %205, 224
  %207 = getelementptr inbounds float, float* %1, i64 %206
  %208 = bitcast float* %207 to <8 x float>*
  %wide.load.7 = load <8 x float>, <8 x float>* %208, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %209 = getelementptr inbounds float, float* %207, i64 8
  %210 = bitcast float* %209 to <8 x float>*
  %wide.load19.7 = load <8 x float>, <8 x float>* %210, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %211 = getelementptr inbounds float, float* %207, i64 16
  %212 = bitcast float* %211 to <8 x float>*
  %wide.load20.7 = load <8 x float>, <8 x float>* %212, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %213 = getelementptr inbounds float, float* %207, i64 24
  %214 = bitcast float* %213 to <8 x float>*
  %wide.load21.7 = load <8 x float>, <8 x float>* %214, align 4, !tbaa !12, !alias.scope !16, !noalias !19
  %215 = getelementptr inbounds float, float* %3, i64 %206
  %216 = bitcast float* %215 to <8 x float>*
  %wide.load22.7 = load <8 x float>, <8 x float>* %216, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %217 = getelementptr inbounds float, float* %215, i64 8
  %218 = bitcast float* %217 to <8 x float>*
  %wide.load23.7 = load <8 x float>, <8 x float>* %218, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %219 = getelementptr inbounds float, float* %215, i64 16
  %220 = bitcast float* %219 to <8 x float>*
  %wide.load24.7 = load <8 x float>, <8 x float>* %220, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %221 = getelementptr inbounds float, float* %215, i64 24
  %222 = bitcast float* %221 to <8 x float>*
  %wide.load25.7 = load <8 x float>, <8 x float>* %222, align 4, !tbaa !12, !alias.scope !19, !llvm.access.group !21
  %223 = fadd <8 x float> %wide.load22.7, %wide.load.7
  %224 = fadd <8 x float> %wide.load23.7, %wide.load19.7
  %225 = fadd <8 x float> %wide.load24.7, %wide.load20.7
  %226 = fadd <8 x float> %wide.load25.7, %wide.load21.7
  %227 = bitcast float* %207 to <8 x float>*
  store <8 x float> %223, <8 x float>* %227, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %228 = bitcast float* %209 to <8 x float>*
  store <8 x float> %224, <8 x float>* %228, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %229 = bitcast float* %211 to <8 x float>*
  store <8 x float> %225, <8 x float>* %229, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  %230 = bitcast float* %213 to <8 x float>*
  store <8 x float> %226, <8 x float>* %230, align 4, !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !21
  br label %gemver_kernel2.exit

pregion_for_entry.entry.i.us:                     ; preds = %for.end.loopexit.i.us.1, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %254, %for.end.loopexit.i.us.1 ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %sext23.i.us = shl i64 %add1.i.i.us, 32
  %idxprom6.i.us = ashr exact i64 %sext23.i.us, 32
  %arrayidx7.i.us = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us
  %.pre.i2.us7 = load float, float* %arrayidx7.i.us, align 4, !tbaa !12
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %pregion_for_entry.entry.i.us
  %indvars.iv.next.i5.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %pregion_for_entry.entry.i.us ]
  %231 = phi float [ %236, %for.body.i.us ], [ %.pre.i2.us7, %pregion_for_entry.entry.i.us ]
  %232 = mul nuw nsw i64 %indvars.iv.next.i5.us, %11
  %233 = add nsw i64 %232, %idxprom6.i.us
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %233
  %234 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %mul2.i.us = fmul float %234, %4
  %arrayidx4.i.us = getelementptr inbounds float, float* %2, i64 %indvars.iv.next.i5.us
  %235 = load float, float* %arrayidx4.i.us, align 4, !tbaa !12
  %236 = tail call float @llvm.fmuladd.f32(float %mul2.i.us, float %235, float %231) #2
  store float %236, float* %arrayidx7.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i5.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %11
  br i1 %exitcond.not.i.us, label %for.end.loopexit.i.us, label %for.body.i.us, !llvm.loop !23

for.end.loopexit.i.us:                            ; preds = %for.body.i.us
  %.lcssa = phi float [ %236, %for.body.i.us ]
  %arrayidx9.i.us = getelementptr inbounds float, float* %3, i64 %idxprom6.i.us
  %237 = load float, float* %arrayidx9.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.us = fadd float %.lcssa, %237
  store float %add12.i.us, float* %arrayidx7.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %238 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1 = add nuw nsw i64 %238, %mul.i.i
  %sext23.i.us.1 = shl i64 %add1.i.i.us.1, 32
  %idxprom6.i.us.1 = ashr exact i64 %sext23.i.us.1, 32
  %arrayidx7.i.us.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.1
  %.pre.i2.us7.1 = load float, float* %arrayidx7.i.us.1, align 4, !tbaa !12
  br label %for.body.i.us.1

pregion_for_entry.entry.i:                        ; preds = %pregion_for_entry.entry.i, %pregion_for_entry.entry.i.preheader
  %_local_id_x.0 = phi i64 [ %246, %pregion_for_entry.entry.i ], [ 0, %pregion_for_entry.entry.i.preheader ]
  %add1.i.i = add nuw nsw i64 %_local_id_x.0, %mul.i.i
  %sext23.i = shl i64 %add1.i.i, 32
  %idxprom6.i = ashr exact i64 %sext23.i, 32
  %arrayidx7.i = getelementptr inbounds float, float* %1, i64 %idxprom6.i
  %.pre1.i16 = load float, float* %arrayidx7.i, align 4, !tbaa !12
  %arrayidx9.i = getelementptr inbounds float, float* %3, i64 %idxprom6.i
  %239 = load float, float* %arrayidx9.i, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i = fadd float %239, %.pre1.i16
  store float %add12.i, float* %arrayidx7.i, align 4, !tbaa !12, !llvm.access.group !21
  %240 = or i64 %_local_id_x.0, 1
  %add1.i.i.1 = add nuw nsw i64 %240, %mul.i.i
  %sext23.i.1 = shl i64 %add1.i.i.1, 32
  %idxprom6.i.1 = ashr exact i64 %sext23.i.1, 32
  %arrayidx7.i.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.1
  %.pre1.i16.1 = load float, float* %arrayidx7.i.1, align 4, !tbaa !12
  %arrayidx9.i.1 = getelementptr inbounds float, float* %3, i64 %idxprom6.i.1
  %241 = load float, float* %arrayidx9.i.1, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.1 = fadd float %241, %.pre1.i16.1
  store float %add12.i.1, float* %arrayidx7.i.1, align 4, !tbaa !12, !llvm.access.group !21
  %242 = or i64 %_local_id_x.0, 2
  %add1.i.i.2 = add nuw nsw i64 %242, %mul.i.i
  %sext23.i.2 = shl i64 %add1.i.i.2, 32
  %idxprom6.i.2 = ashr exact i64 %sext23.i.2, 32
  %arrayidx7.i.2 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.2
  %.pre1.i16.2 = load float, float* %arrayidx7.i.2, align 4, !tbaa !12
  %arrayidx9.i.2 = getelementptr inbounds float, float* %3, i64 %idxprom6.i.2
  %243 = load float, float* %arrayidx9.i.2, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.2 = fadd float %243, %.pre1.i16.2
  store float %add12.i.2, float* %arrayidx7.i.2, align 4, !tbaa !12, !llvm.access.group !21
  %244 = or i64 %_local_id_x.0, 3
  %add1.i.i.3 = add nuw nsw i64 %244, %mul.i.i
  %sext23.i.3 = shl i64 %add1.i.i.3, 32
  %idxprom6.i.3 = ashr exact i64 %sext23.i.3, 32
  %arrayidx7.i.3 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.3
  %.pre1.i16.3 = load float, float* %arrayidx7.i.3, align 4, !tbaa !12
  %arrayidx9.i.3 = getelementptr inbounds float, float* %3, i64 %idxprom6.i.3
  %245 = load float, float* %arrayidx9.i.3, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.3 = fadd float %245, %.pre1.i16.3
  store float %add12.i.3, float* %arrayidx7.i.3, align 4, !tbaa !12, !llvm.access.group !21
  %246 = add nuw nsw i64 %_local_id_x.0, 4
  %exitcond9.not.3 = icmp eq i64 %246, 256
  br i1 %exitcond9.not.3, label %gemver_kernel2.exit.loopexit29, label %pregion_for_entry.entry.i, !llvm.loop !25

gemver_kernel2.exit.loopexit:                     ; preds = %for.end.loopexit.i.us.1
  br label %gemver_kernel2.exit

gemver_kernel2.exit.loopexit29:                   ; preds = %pregion_for_entry.entry.i
  br label %gemver_kernel2.exit

gemver_kernel2.exit:                              ; preds = %gemver_kernel2.exit.loopexit29, %gemver_kernel2.exit.loopexit, %vector.body
  ret void

for.body.i.us.1:                                  ; preds = %for.body.i.us.1, %for.end.loopexit.i.us
  %indvars.iv.next.i5.us.1 = phi i64 [ %indvars.iv.next.i.us.1, %for.body.i.us.1 ], [ 0, %for.end.loopexit.i.us ]
  %247 = phi float [ %252, %for.body.i.us.1 ], [ %.pre.i2.us7.1, %for.end.loopexit.i.us ]
  %248 = mul nuw nsw i64 %indvars.iv.next.i5.us.1, %11
  %249 = add nsw i64 %248, %idxprom6.i.us.1
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %0, i64 %249
  %250 = load float, float* %arrayidx.i.us.1, align 4, !tbaa !12
  %mul2.i.us.1 = fmul float %250, %4
  %arrayidx4.i.us.1 = getelementptr inbounds float, float* %2, i64 %indvars.iv.next.i5.us.1
  %251 = load float, float* %arrayidx4.i.us.1, align 4, !tbaa !12
  %252 = tail call float @llvm.fmuladd.f32(float %mul2.i.us.1, float %251, float %247) #2
  store float %252, float* %arrayidx7.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.next.i5.us.1, 1
  %exitcond.not.i.us.1 = icmp eq i64 %indvars.iv.next.i.us.1, %11
  br i1 %exitcond.not.i.us.1, label %for.end.loopexit.i.us.1, label %for.body.i.us.1, !llvm.loop !23

for.end.loopexit.i.us.1:                          ; preds = %for.body.i.us.1
  %.lcssa30 = phi float [ %252, %for.body.i.us.1 ]
  %arrayidx9.i.us.1 = getelementptr inbounds float, float* %3, i64 %idxprom6.i.us.1
  %253 = load float, float* %arrayidx9.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.us.1 = fadd float %.lcssa30, %253
  store float %add12.i.us.1, float* %arrayidx7.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  %254 = add nuw nsw i64 %_local_id_x.0.us, 2
  %exitcond.not.1 = icmp eq i64 %254, 256
  br i1 %exitcond.not.1, label %gemver_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !28
}

; Function Attrs: nounwind
define void @_pocl_kernel_gemver_kernel2_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %18 = bitcast i8** %17 to float***
  %19 = load float**, float*** %18, align 8
  %20 = load float*, float** %19, align 8
  %21 = getelementptr i8*, i8** %0, i64 4
  %22 = bitcast i8** %21 to float**
  %23 = load float*, float** %22, align 8
  %24 = load float, float* %23, align 4
  %25 = getelementptr i8*, i8** %0, i64 5
  %26 = bitcast i8** %25 to i32**
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp24.i.i = icmp sgt i32 %28, 0
  %29 = zext i32 %28 to i64
  br i1 %cmp24.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %5
  %30 = trunc i64 %2 to i32
  %31 = shl i32 %30, 8
  %32 = sext i32 %31 to i64
  %scevgep = getelementptr float, float* %12, i64 %32
  %33 = add nsw i64 %32, 256
  %scevgep13 = getelementptr float, float* %12, i64 %33
  %scevgep15 = getelementptr float, float* %20, i64 %32
  %scevgep17 = getelementptr float, float* %20, i64 %33
  %bound0 = icmp ult float* %scevgep, %scevgep17
  %bound1 = icmp ult float* %scevgep15, %scevgep13
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.i.preheader, label %vector.body

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck
  br label %pregion_for_entry.entry.i.i

vector.body:                                      ; preds = %vector.memcheck
  %34 = shl i64 %2, 40
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds float, float* %12, i64 %35
  %37 = bitcast float* %36 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %37, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %38 = getelementptr inbounds float, float* %36, i64 8
  %39 = bitcast float* %38 to <8 x float>*
  %wide.load19 = load <8 x float>, <8 x float>* %39, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %40 = getelementptr inbounds float, float* %36, i64 16
  %41 = bitcast float* %40 to <8 x float>*
  %wide.load20 = load <8 x float>, <8 x float>* %41, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %42 = getelementptr inbounds float, float* %36, i64 24
  %43 = bitcast float* %42 to <8 x float>*
  %wide.load21 = load <8 x float>, <8 x float>* %43, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %44 = getelementptr inbounds float, float* %20, i64 %35
  %45 = bitcast float* %44 to <8 x float>*
  %wide.load22 = load <8 x float>, <8 x float>* %45, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %46 = getelementptr inbounds float, float* %44, i64 8
  %47 = bitcast float* %46 to <8 x float>*
  %wide.load23 = load <8 x float>, <8 x float>* %47, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %48 = getelementptr inbounds float, float* %44, i64 16
  %49 = bitcast float* %48 to <8 x float>*
  %wide.load24 = load <8 x float>, <8 x float>* %49, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %50 = getelementptr inbounds float, float* %44, i64 24
  %51 = bitcast float* %50 to <8 x float>*
  %wide.load25 = load <8 x float>, <8 x float>* %51, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %52 = fadd <8 x float> %wide.load22, %wide.load
  %53 = fadd <8 x float> %wide.load23, %wide.load19
  %54 = fadd <8 x float> %wide.load24, %wide.load20
  %55 = fadd <8 x float> %wide.load25, %wide.load21
  %56 = bitcast float* %36 to <8 x float>*
  store <8 x float> %52, <8 x float>* %56, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %57 = bitcast float* %38 to <8 x float>*
  store <8 x float> %53, <8 x float>* %57, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %58 = bitcast float* %40 to <8 x float>*
  store <8 x float> %54, <8 x float>* %58, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %59 = bitcast float* %42 to <8 x float>*
  store <8 x float> %55, <8 x float>* %59, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %60 = shl i64 %2, 40
  %61 = ashr exact i64 %60, 32
  %62 = or i64 %61, 32
  %63 = getelementptr inbounds float, float* %12, i64 %62
  %64 = bitcast float* %63 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %64, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %65 = getelementptr inbounds float, float* %63, i64 8
  %66 = bitcast float* %65 to <8 x float>*
  %wide.load19.1 = load <8 x float>, <8 x float>* %66, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %67 = getelementptr inbounds float, float* %63, i64 16
  %68 = bitcast float* %67 to <8 x float>*
  %wide.load20.1 = load <8 x float>, <8 x float>* %68, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %69 = getelementptr inbounds float, float* %63, i64 24
  %70 = bitcast float* %69 to <8 x float>*
  %wide.load21.1 = load <8 x float>, <8 x float>* %70, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %71 = getelementptr inbounds float, float* %20, i64 %62
  %72 = bitcast float* %71 to <8 x float>*
  %wide.load22.1 = load <8 x float>, <8 x float>* %72, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %73 = getelementptr inbounds float, float* %71, i64 8
  %74 = bitcast float* %73 to <8 x float>*
  %wide.load23.1 = load <8 x float>, <8 x float>* %74, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %75 = getelementptr inbounds float, float* %71, i64 16
  %76 = bitcast float* %75 to <8 x float>*
  %wide.load24.1 = load <8 x float>, <8 x float>* %76, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %77 = getelementptr inbounds float, float* %71, i64 24
  %78 = bitcast float* %77 to <8 x float>*
  %wide.load25.1 = load <8 x float>, <8 x float>* %78, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %79 = fadd <8 x float> %wide.load22.1, %wide.load.1
  %80 = fadd <8 x float> %wide.load23.1, %wide.load19.1
  %81 = fadd <8 x float> %wide.load24.1, %wide.load20.1
  %82 = fadd <8 x float> %wide.load25.1, %wide.load21.1
  %83 = bitcast float* %63 to <8 x float>*
  store <8 x float> %79, <8 x float>* %83, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %84 = bitcast float* %65 to <8 x float>*
  store <8 x float> %80, <8 x float>* %84, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %85 = bitcast float* %67 to <8 x float>*
  store <8 x float> %81, <8 x float>* %85, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %86 = bitcast float* %69 to <8 x float>*
  store <8 x float> %82, <8 x float>* %86, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %87 = shl i64 %2, 40
  %88 = ashr exact i64 %87, 32
  %89 = or i64 %88, 64
  %90 = getelementptr inbounds float, float* %12, i64 %89
  %91 = bitcast float* %90 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %91, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %92 = getelementptr inbounds float, float* %90, i64 8
  %93 = bitcast float* %92 to <8 x float>*
  %wide.load19.2 = load <8 x float>, <8 x float>* %93, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %94 = getelementptr inbounds float, float* %90, i64 16
  %95 = bitcast float* %94 to <8 x float>*
  %wide.load20.2 = load <8 x float>, <8 x float>* %95, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %96 = getelementptr inbounds float, float* %90, i64 24
  %97 = bitcast float* %96 to <8 x float>*
  %wide.load21.2 = load <8 x float>, <8 x float>* %97, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %98 = getelementptr inbounds float, float* %20, i64 %89
  %99 = bitcast float* %98 to <8 x float>*
  %wide.load22.2 = load <8 x float>, <8 x float>* %99, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %100 = getelementptr inbounds float, float* %98, i64 8
  %101 = bitcast float* %100 to <8 x float>*
  %wide.load23.2 = load <8 x float>, <8 x float>* %101, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %102 = getelementptr inbounds float, float* %98, i64 16
  %103 = bitcast float* %102 to <8 x float>*
  %wide.load24.2 = load <8 x float>, <8 x float>* %103, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %104 = getelementptr inbounds float, float* %98, i64 24
  %105 = bitcast float* %104 to <8 x float>*
  %wide.load25.2 = load <8 x float>, <8 x float>* %105, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %106 = fadd <8 x float> %wide.load22.2, %wide.load.2
  %107 = fadd <8 x float> %wide.load23.2, %wide.load19.2
  %108 = fadd <8 x float> %wide.load24.2, %wide.load20.2
  %109 = fadd <8 x float> %wide.load25.2, %wide.load21.2
  %110 = bitcast float* %90 to <8 x float>*
  store <8 x float> %106, <8 x float>* %110, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %111 = bitcast float* %92 to <8 x float>*
  store <8 x float> %107, <8 x float>* %111, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %112 = bitcast float* %94 to <8 x float>*
  store <8 x float> %108, <8 x float>* %112, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %113 = bitcast float* %96 to <8 x float>*
  store <8 x float> %109, <8 x float>* %113, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %114 = shl i64 %2, 40
  %115 = ashr exact i64 %114, 32
  %116 = or i64 %115, 96
  %117 = getelementptr inbounds float, float* %12, i64 %116
  %118 = bitcast float* %117 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %118, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %119 = getelementptr inbounds float, float* %117, i64 8
  %120 = bitcast float* %119 to <8 x float>*
  %wide.load19.3 = load <8 x float>, <8 x float>* %120, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %121 = getelementptr inbounds float, float* %117, i64 16
  %122 = bitcast float* %121 to <8 x float>*
  %wide.load20.3 = load <8 x float>, <8 x float>* %122, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %123 = getelementptr inbounds float, float* %117, i64 24
  %124 = bitcast float* %123 to <8 x float>*
  %wide.load21.3 = load <8 x float>, <8 x float>* %124, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %125 = getelementptr inbounds float, float* %20, i64 %116
  %126 = bitcast float* %125 to <8 x float>*
  %wide.load22.3 = load <8 x float>, <8 x float>* %126, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %127 = getelementptr inbounds float, float* %125, i64 8
  %128 = bitcast float* %127 to <8 x float>*
  %wide.load23.3 = load <8 x float>, <8 x float>* %128, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %129 = getelementptr inbounds float, float* %125, i64 16
  %130 = bitcast float* %129 to <8 x float>*
  %wide.load24.3 = load <8 x float>, <8 x float>* %130, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %131 = getelementptr inbounds float, float* %125, i64 24
  %132 = bitcast float* %131 to <8 x float>*
  %wide.load25.3 = load <8 x float>, <8 x float>* %132, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %133 = fadd <8 x float> %wide.load22.3, %wide.load.3
  %134 = fadd <8 x float> %wide.load23.3, %wide.load19.3
  %135 = fadd <8 x float> %wide.load24.3, %wide.load20.3
  %136 = fadd <8 x float> %wide.load25.3, %wide.load21.3
  %137 = bitcast float* %117 to <8 x float>*
  store <8 x float> %133, <8 x float>* %137, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %138 = bitcast float* %119 to <8 x float>*
  store <8 x float> %134, <8 x float>* %138, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %139 = bitcast float* %121 to <8 x float>*
  store <8 x float> %135, <8 x float>* %139, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %140 = bitcast float* %123 to <8 x float>*
  store <8 x float> %136, <8 x float>* %140, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %141 = shl i64 %2, 40
  %142 = ashr exact i64 %141, 32
  %143 = or i64 %142, 128
  %144 = getelementptr inbounds float, float* %12, i64 %143
  %145 = bitcast float* %144 to <8 x float>*
  %wide.load.4 = load <8 x float>, <8 x float>* %145, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %146 = getelementptr inbounds float, float* %144, i64 8
  %147 = bitcast float* %146 to <8 x float>*
  %wide.load19.4 = load <8 x float>, <8 x float>* %147, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %148 = getelementptr inbounds float, float* %144, i64 16
  %149 = bitcast float* %148 to <8 x float>*
  %wide.load20.4 = load <8 x float>, <8 x float>* %149, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %150 = getelementptr inbounds float, float* %144, i64 24
  %151 = bitcast float* %150 to <8 x float>*
  %wide.load21.4 = load <8 x float>, <8 x float>* %151, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %152 = getelementptr inbounds float, float* %20, i64 %143
  %153 = bitcast float* %152 to <8 x float>*
  %wide.load22.4 = load <8 x float>, <8 x float>* %153, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %154 = getelementptr inbounds float, float* %152, i64 8
  %155 = bitcast float* %154 to <8 x float>*
  %wide.load23.4 = load <8 x float>, <8 x float>* %155, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %156 = getelementptr inbounds float, float* %152, i64 16
  %157 = bitcast float* %156 to <8 x float>*
  %wide.load24.4 = load <8 x float>, <8 x float>* %157, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %158 = getelementptr inbounds float, float* %152, i64 24
  %159 = bitcast float* %158 to <8 x float>*
  %wide.load25.4 = load <8 x float>, <8 x float>* %159, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %160 = fadd <8 x float> %wide.load22.4, %wide.load.4
  %161 = fadd <8 x float> %wide.load23.4, %wide.load19.4
  %162 = fadd <8 x float> %wide.load24.4, %wide.load20.4
  %163 = fadd <8 x float> %wide.load25.4, %wide.load21.4
  %164 = bitcast float* %144 to <8 x float>*
  store <8 x float> %160, <8 x float>* %164, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %165 = bitcast float* %146 to <8 x float>*
  store <8 x float> %161, <8 x float>* %165, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %166 = bitcast float* %148 to <8 x float>*
  store <8 x float> %162, <8 x float>* %166, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %167 = bitcast float* %150 to <8 x float>*
  store <8 x float> %163, <8 x float>* %167, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %168 = shl i64 %2, 40
  %169 = ashr exact i64 %168, 32
  %170 = or i64 %169, 160
  %171 = getelementptr inbounds float, float* %12, i64 %170
  %172 = bitcast float* %171 to <8 x float>*
  %wide.load.5 = load <8 x float>, <8 x float>* %172, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %173 = getelementptr inbounds float, float* %171, i64 8
  %174 = bitcast float* %173 to <8 x float>*
  %wide.load19.5 = load <8 x float>, <8 x float>* %174, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %175 = getelementptr inbounds float, float* %171, i64 16
  %176 = bitcast float* %175 to <8 x float>*
  %wide.load20.5 = load <8 x float>, <8 x float>* %176, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %177 = getelementptr inbounds float, float* %171, i64 24
  %178 = bitcast float* %177 to <8 x float>*
  %wide.load21.5 = load <8 x float>, <8 x float>* %178, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %179 = getelementptr inbounds float, float* %20, i64 %170
  %180 = bitcast float* %179 to <8 x float>*
  %wide.load22.5 = load <8 x float>, <8 x float>* %180, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %181 = getelementptr inbounds float, float* %179, i64 8
  %182 = bitcast float* %181 to <8 x float>*
  %wide.load23.5 = load <8 x float>, <8 x float>* %182, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %183 = getelementptr inbounds float, float* %179, i64 16
  %184 = bitcast float* %183 to <8 x float>*
  %wide.load24.5 = load <8 x float>, <8 x float>* %184, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %185 = getelementptr inbounds float, float* %179, i64 24
  %186 = bitcast float* %185 to <8 x float>*
  %wide.load25.5 = load <8 x float>, <8 x float>* %186, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %187 = fadd <8 x float> %wide.load22.5, %wide.load.5
  %188 = fadd <8 x float> %wide.load23.5, %wide.load19.5
  %189 = fadd <8 x float> %wide.load24.5, %wide.load20.5
  %190 = fadd <8 x float> %wide.load25.5, %wide.load21.5
  %191 = bitcast float* %171 to <8 x float>*
  store <8 x float> %187, <8 x float>* %191, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %192 = bitcast float* %173 to <8 x float>*
  store <8 x float> %188, <8 x float>* %192, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %193 = bitcast float* %175 to <8 x float>*
  store <8 x float> %189, <8 x float>* %193, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %194 = bitcast float* %177 to <8 x float>*
  store <8 x float> %190, <8 x float>* %194, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %195 = shl i64 %2, 40
  %196 = ashr exact i64 %195, 32
  %197 = or i64 %196, 192
  %198 = getelementptr inbounds float, float* %12, i64 %197
  %199 = bitcast float* %198 to <8 x float>*
  %wide.load.6 = load <8 x float>, <8 x float>* %199, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %200 = getelementptr inbounds float, float* %198, i64 8
  %201 = bitcast float* %200 to <8 x float>*
  %wide.load19.6 = load <8 x float>, <8 x float>* %201, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %202 = getelementptr inbounds float, float* %198, i64 16
  %203 = bitcast float* %202 to <8 x float>*
  %wide.load20.6 = load <8 x float>, <8 x float>* %203, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %204 = getelementptr inbounds float, float* %198, i64 24
  %205 = bitcast float* %204 to <8 x float>*
  %wide.load21.6 = load <8 x float>, <8 x float>* %205, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %206 = getelementptr inbounds float, float* %20, i64 %197
  %207 = bitcast float* %206 to <8 x float>*
  %wide.load22.6 = load <8 x float>, <8 x float>* %207, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %208 = getelementptr inbounds float, float* %206, i64 8
  %209 = bitcast float* %208 to <8 x float>*
  %wide.load23.6 = load <8 x float>, <8 x float>* %209, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %210 = getelementptr inbounds float, float* %206, i64 16
  %211 = bitcast float* %210 to <8 x float>*
  %wide.load24.6 = load <8 x float>, <8 x float>* %211, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %212 = getelementptr inbounds float, float* %206, i64 24
  %213 = bitcast float* %212 to <8 x float>*
  %wide.load25.6 = load <8 x float>, <8 x float>* %213, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %214 = fadd <8 x float> %wide.load22.6, %wide.load.6
  %215 = fadd <8 x float> %wide.load23.6, %wide.load19.6
  %216 = fadd <8 x float> %wide.load24.6, %wide.load20.6
  %217 = fadd <8 x float> %wide.load25.6, %wide.load21.6
  %218 = bitcast float* %198 to <8 x float>*
  store <8 x float> %214, <8 x float>* %218, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %219 = bitcast float* %200 to <8 x float>*
  store <8 x float> %215, <8 x float>* %219, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %220 = bitcast float* %202 to <8 x float>*
  store <8 x float> %216, <8 x float>* %220, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %221 = bitcast float* %204 to <8 x float>*
  store <8 x float> %217, <8 x float>* %221, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %222 = shl i64 %2, 40
  %223 = ashr exact i64 %222, 32
  %224 = or i64 %223, 224
  %225 = getelementptr inbounds float, float* %12, i64 %224
  %226 = bitcast float* %225 to <8 x float>*
  %wide.load.7 = load <8 x float>, <8 x float>* %226, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %227 = getelementptr inbounds float, float* %225, i64 8
  %228 = bitcast float* %227 to <8 x float>*
  %wide.load19.7 = load <8 x float>, <8 x float>* %228, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %229 = getelementptr inbounds float, float* %225, i64 16
  %230 = bitcast float* %229 to <8 x float>*
  %wide.load20.7 = load <8 x float>, <8 x float>* %230, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %231 = getelementptr inbounds float, float* %225, i64 24
  %232 = bitcast float* %231 to <8 x float>*
  %wide.load21.7 = load <8 x float>, <8 x float>* %232, align 4, !tbaa !12, !alias.scope !29, !noalias !32
  %233 = getelementptr inbounds float, float* %20, i64 %224
  %234 = bitcast float* %233 to <8 x float>*
  %wide.load22.7 = load <8 x float>, <8 x float>* %234, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %235 = getelementptr inbounds float, float* %233, i64 8
  %236 = bitcast float* %235 to <8 x float>*
  %wide.load23.7 = load <8 x float>, <8 x float>* %236, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %237 = getelementptr inbounds float, float* %233, i64 16
  %238 = bitcast float* %237 to <8 x float>*
  %wide.load24.7 = load <8 x float>, <8 x float>* %238, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %239 = getelementptr inbounds float, float* %233, i64 24
  %240 = bitcast float* %239 to <8 x float>*
  %wide.load25.7 = load <8 x float>, <8 x float>* %240, align 4, !tbaa !12, !alias.scope !32, !llvm.access.group !21
  %241 = fadd <8 x float> %wide.load22.7, %wide.load.7
  %242 = fadd <8 x float> %wide.load23.7, %wide.load19.7
  %243 = fadd <8 x float> %wide.load24.7, %wide.load20.7
  %244 = fadd <8 x float> %wide.load25.7, %wide.load21.7
  %245 = bitcast float* %225 to <8 x float>*
  store <8 x float> %241, <8 x float>* %245, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %246 = bitcast float* %227 to <8 x float>*
  store <8 x float> %242, <8 x float>* %246, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %247 = bitcast float* %229 to <8 x float>*
  store <8 x float> %243, <8 x float>* %247, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  %248 = bitcast float* %231 to <8 x float>*
  store <8 x float> %244, <8 x float>* %248, align 4, !tbaa !12, !alias.scope !29, !noalias !32, !llvm.access.group !21
  br label %_pocl_kernel_gemver_kernel2.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %for.end.loopexit.i.i.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %272, %for.end.loopexit.i.i.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %sext23.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom6.i.i.us = ashr exact i64 %sext23.i.i.us, 32
  %arrayidx7.i.i.us = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us
  %.pre.i.i2.us7 = load float, float* %arrayidx7.i.i.us, align 4, !tbaa !12
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %pregion_for_entry.entry.i.i.us
  %indvars.iv.next.i.i5.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us ]
  %249 = phi float [ %254, %for.body.i.i.us ], [ %.pre.i.i2.us7, %pregion_for_entry.entry.i.i.us ]
  %250 = mul nuw nsw i64 %indvars.iv.next.i.i5.us, %29
  %251 = add nsw i64 %250, %idxprom6.i.i.us
  %arrayidx.i.i.us = getelementptr inbounds float, float* %8, i64 %251
  %252 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %mul2.i.i.us = fmul float %24, %252
  %arrayidx4.i.i.us = getelementptr inbounds float, float* %16, i64 %indvars.iv.next.i.i5.us
  %253 = load float, float* %arrayidx4.i.i.us, align 4, !tbaa !12
  %254 = tail call float @llvm.fmuladd.f32(float %mul2.i.i.us, float %253, float %249) #2
  store float %254, float* %arrayidx7.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i5.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %29
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !23

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %.lcssa = phi float [ %254, %for.body.i.i.us ]
  %arrayidx9.i.i.us = getelementptr inbounds float, float* %20, i64 %idxprom6.i.i.us
  %255 = load float, float* %arrayidx9.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.i.us = fadd float %.lcssa, %255
  store float %add12.i.i.us, float* %arrayidx7.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %256 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %256, %mul.i.i.i
  %sext23.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom6.i.i.us.1 = ashr exact i64 %sext23.i.i.us.1, 32
  %arrayidx7.i.i.us.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.1
  %.pre.i.i2.us7.1 = load float, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12
  br label %for.body.i.i.us.1

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %264, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %sext23.i.i = shl i64 %add1.i.i.i, 32
  %idxprom6.i.i = ashr exact i64 %sext23.i.i, 32
  %arrayidx7.i.i = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i
  %.pre1.i.i16 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12
  %arrayidx9.i.i = getelementptr inbounds float, float* %20, i64 %idxprom6.i.i
  %257 = load float, float* %arrayidx9.i.i, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.i = fadd float %257, %.pre1.i.i16
  store float %add12.i.i, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !21
  %258 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %258, %mul.i.i.i
  %sext23.i.i.1 = shl i64 %add1.i.i.i.1, 32
  %idxprom6.i.i.1 = ashr exact i64 %sext23.i.i.1, 32
  %arrayidx7.i.i.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.1
  %.pre1.i.i16.1 = load float, float* %arrayidx7.i.i.1, align 4, !tbaa !12
  %arrayidx9.i.i.1 = getelementptr inbounds float, float* %20, i64 %idxprom6.i.i.1
  %259 = load float, float* %arrayidx9.i.i.1, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.i.1 = fadd float %259, %.pre1.i.i16.1
  store float %add12.i.i.1, float* %arrayidx7.i.i.1, align 4, !tbaa !12, !llvm.access.group !21
  %260 = or i64 %_local_id_x.i.0, 2
  %add1.i.i.i.2 = add nuw nsw i64 %260, %mul.i.i.i
  %sext23.i.i.2 = shl i64 %add1.i.i.i.2, 32
  %idxprom6.i.i.2 = ashr exact i64 %sext23.i.i.2, 32
  %arrayidx7.i.i.2 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.2
  %.pre1.i.i16.2 = load float, float* %arrayidx7.i.i.2, align 4, !tbaa !12
  %arrayidx9.i.i.2 = getelementptr inbounds float, float* %20, i64 %idxprom6.i.i.2
  %261 = load float, float* %arrayidx9.i.i.2, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.i.2 = fadd float %261, %.pre1.i.i16.2
  store float %add12.i.i.2, float* %arrayidx7.i.i.2, align 4, !tbaa !12, !llvm.access.group !21
  %262 = or i64 %_local_id_x.i.0, 3
  %add1.i.i.i.3 = add nuw nsw i64 %262, %mul.i.i.i
  %sext23.i.i.3 = shl i64 %add1.i.i.i.3, 32
  %idxprom6.i.i.3 = ashr exact i64 %sext23.i.i.3, 32
  %arrayidx7.i.i.3 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.3
  %.pre1.i.i16.3 = load float, float* %arrayidx7.i.i.3, align 4, !tbaa !12
  %arrayidx9.i.i.3 = getelementptr inbounds float, float* %20, i64 %idxprom6.i.i.3
  %263 = load float, float* %arrayidx9.i.i.3, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.i.3 = fadd float %263, %.pre1.i.i16.3
  store float %add12.i.i.3, float* %arrayidx7.i.i.3, align 4, !tbaa !12, !llvm.access.group !21
  %264 = add nuw nsw i64 %_local_id_x.i.0, 4
  %exitcond9.not.3 = icmp eq i64 %264, 256
  br i1 %exitcond9.not.3, label %_pocl_kernel_gemver_kernel2.exit.loopexit29, label %pregion_for_entry.entry.i.i, !llvm.loop !34

_pocl_kernel_gemver_kernel2.exit.loopexit:        ; preds = %for.end.loopexit.i.i.us.1
  br label %_pocl_kernel_gemver_kernel2.exit

_pocl_kernel_gemver_kernel2.exit.loopexit29:      ; preds = %pregion_for_entry.entry.i.i
  br label %_pocl_kernel_gemver_kernel2.exit

_pocl_kernel_gemver_kernel2.exit:                 ; preds = %_pocl_kernel_gemver_kernel2.exit.loopexit29, %_pocl_kernel_gemver_kernel2.exit.loopexit, %vector.body
  ret void

for.body.i.i.us.1:                                ; preds = %for.body.i.i.us.1, %for.end.loopexit.i.i.us
  %indvars.iv.next.i.i5.us.1 = phi i64 [ %indvars.iv.next.i.i.us.1, %for.body.i.i.us.1 ], [ 0, %for.end.loopexit.i.i.us ]
  %265 = phi float [ %270, %for.body.i.i.us.1 ], [ %.pre.i.i2.us7.1, %for.end.loopexit.i.i.us ]
  %266 = mul nuw nsw i64 %indvars.iv.next.i.i5.us.1, %29
  %267 = add nsw i64 %266, %idxprom6.i.i.us.1
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %8, i64 %267
  %268 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %mul2.i.i.us.1 = fmul float %24, %268
  %arrayidx4.i.i.us.1 = getelementptr inbounds float, float* %16, i64 %indvars.iv.next.i.i5.us.1
  %269 = load float, float* %arrayidx4.i.i.us.1, align 4, !tbaa !12
  %270 = tail call float @llvm.fmuladd.f32(float %mul2.i.i.us.1, float %269, float %265) #2
  store float %270, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.i.us.1 = add nuw nsw i64 %indvars.iv.next.i.i5.us.1, 1
  %exitcond.not.i.i.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.1, %29
  br i1 %exitcond.not.i.i.us.1, label %for.end.loopexit.i.i.us.1, label %for.body.i.i.us.1, !llvm.loop !23

for.end.loopexit.i.i.us.1:                        ; preds = %for.body.i.i.us.1
  %.lcssa30 = phi float [ %270, %for.body.i.i.us.1 ]
  %arrayidx9.i.i.us.1 = getelementptr inbounds float, float* %20, i64 %idxprom6.i.i.us.1
  %271 = load float, float* %arrayidx9.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.i.us.1 = fadd float %.lcssa30, %271
  store float %add12.i.i.us.1, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  %272 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %272, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_gemver_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !28
}

; Function Attrs: nounwind
define void @_pocl_kernel_gemver_kernel2_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %17 = getelementptr i8*, i8** %0, i64 4
  %18 = bitcast i8** %17 to float**
  %19 = load float*, float** %18, align 8
  %20 = load float, float* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 5
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp24.i.i = icmp sgt i32 %24, 0
  %25 = zext i32 %24 to i64
  br i1 %cmp24.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %5
  %26 = trunc i64 %2 to i32
  %27 = shl i32 %26, 8
  %28 = sext i32 %27 to i64
  %scevgep = getelementptr float, float* %10, i64 %28
  %29 = add nsw i64 %28, 256
  %scevgep13 = getelementptr float, float* %10, i64 %29
  %scevgep15 = getelementptr float, float* %16, i64 %28
  %scevgep17 = getelementptr float, float* %16, i64 %29
  %bound0 = icmp ult float* %scevgep, %scevgep17
  %bound1 = icmp ult float* %scevgep15, %scevgep13
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.i.preheader, label %vector.body

pregion_for_entry.entry.i.i.preheader:            ; preds = %vector.memcheck
  br label %pregion_for_entry.entry.i.i

vector.body:                                      ; preds = %vector.memcheck
  %30 = shl i64 %2, 40
  %31 = ashr exact i64 %30, 32
  %32 = getelementptr inbounds float, float* %10, i64 %31
  %33 = bitcast float* %32 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %33, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %34 = getelementptr inbounds float, float* %32, i64 8
  %35 = bitcast float* %34 to <8 x float>*
  %wide.load19 = load <8 x float>, <8 x float>* %35, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %36 = getelementptr inbounds float, float* %32, i64 16
  %37 = bitcast float* %36 to <8 x float>*
  %wide.load20 = load <8 x float>, <8 x float>* %37, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %38 = getelementptr inbounds float, float* %32, i64 24
  %39 = bitcast float* %38 to <8 x float>*
  %wide.load21 = load <8 x float>, <8 x float>* %39, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %40 = getelementptr inbounds float, float* %16, i64 %31
  %41 = bitcast float* %40 to <8 x float>*
  %wide.load22 = load <8 x float>, <8 x float>* %41, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %42 = getelementptr inbounds float, float* %40, i64 8
  %43 = bitcast float* %42 to <8 x float>*
  %wide.load23 = load <8 x float>, <8 x float>* %43, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %44 = getelementptr inbounds float, float* %40, i64 16
  %45 = bitcast float* %44 to <8 x float>*
  %wide.load24 = load <8 x float>, <8 x float>* %45, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %46 = getelementptr inbounds float, float* %40, i64 24
  %47 = bitcast float* %46 to <8 x float>*
  %wide.load25 = load <8 x float>, <8 x float>* %47, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %48 = fadd <8 x float> %wide.load22, %wide.load
  %49 = fadd <8 x float> %wide.load23, %wide.load19
  %50 = fadd <8 x float> %wide.load24, %wide.load20
  %51 = fadd <8 x float> %wide.load25, %wide.load21
  %52 = bitcast float* %32 to <8 x float>*
  store <8 x float> %48, <8 x float>* %52, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %53 = bitcast float* %34 to <8 x float>*
  store <8 x float> %49, <8 x float>* %53, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %54 = bitcast float* %36 to <8 x float>*
  store <8 x float> %50, <8 x float>* %54, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %55 = bitcast float* %38 to <8 x float>*
  store <8 x float> %51, <8 x float>* %55, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %56 = shl i64 %2, 40
  %57 = ashr exact i64 %56, 32
  %58 = or i64 %57, 32
  %59 = getelementptr inbounds float, float* %10, i64 %58
  %60 = bitcast float* %59 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %60, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %61 = getelementptr inbounds float, float* %59, i64 8
  %62 = bitcast float* %61 to <8 x float>*
  %wide.load19.1 = load <8 x float>, <8 x float>* %62, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %63 = getelementptr inbounds float, float* %59, i64 16
  %64 = bitcast float* %63 to <8 x float>*
  %wide.load20.1 = load <8 x float>, <8 x float>* %64, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %65 = getelementptr inbounds float, float* %59, i64 24
  %66 = bitcast float* %65 to <8 x float>*
  %wide.load21.1 = load <8 x float>, <8 x float>* %66, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %67 = getelementptr inbounds float, float* %16, i64 %58
  %68 = bitcast float* %67 to <8 x float>*
  %wide.load22.1 = load <8 x float>, <8 x float>* %68, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %69 = getelementptr inbounds float, float* %67, i64 8
  %70 = bitcast float* %69 to <8 x float>*
  %wide.load23.1 = load <8 x float>, <8 x float>* %70, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %71 = getelementptr inbounds float, float* %67, i64 16
  %72 = bitcast float* %71 to <8 x float>*
  %wide.load24.1 = load <8 x float>, <8 x float>* %72, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %73 = getelementptr inbounds float, float* %67, i64 24
  %74 = bitcast float* %73 to <8 x float>*
  %wide.load25.1 = load <8 x float>, <8 x float>* %74, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %75 = fadd <8 x float> %wide.load22.1, %wide.load.1
  %76 = fadd <8 x float> %wide.load23.1, %wide.load19.1
  %77 = fadd <8 x float> %wide.load24.1, %wide.load20.1
  %78 = fadd <8 x float> %wide.load25.1, %wide.load21.1
  %79 = bitcast float* %59 to <8 x float>*
  store <8 x float> %75, <8 x float>* %79, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %80 = bitcast float* %61 to <8 x float>*
  store <8 x float> %76, <8 x float>* %80, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %81 = bitcast float* %63 to <8 x float>*
  store <8 x float> %77, <8 x float>* %81, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %82 = bitcast float* %65 to <8 x float>*
  store <8 x float> %78, <8 x float>* %82, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %83 = shl i64 %2, 40
  %84 = ashr exact i64 %83, 32
  %85 = or i64 %84, 64
  %86 = getelementptr inbounds float, float* %10, i64 %85
  %87 = bitcast float* %86 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %87, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %88 = getelementptr inbounds float, float* %86, i64 8
  %89 = bitcast float* %88 to <8 x float>*
  %wide.load19.2 = load <8 x float>, <8 x float>* %89, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %90 = getelementptr inbounds float, float* %86, i64 16
  %91 = bitcast float* %90 to <8 x float>*
  %wide.load20.2 = load <8 x float>, <8 x float>* %91, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %92 = getelementptr inbounds float, float* %86, i64 24
  %93 = bitcast float* %92 to <8 x float>*
  %wide.load21.2 = load <8 x float>, <8 x float>* %93, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %94 = getelementptr inbounds float, float* %16, i64 %85
  %95 = bitcast float* %94 to <8 x float>*
  %wide.load22.2 = load <8 x float>, <8 x float>* %95, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %96 = getelementptr inbounds float, float* %94, i64 8
  %97 = bitcast float* %96 to <8 x float>*
  %wide.load23.2 = load <8 x float>, <8 x float>* %97, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %98 = getelementptr inbounds float, float* %94, i64 16
  %99 = bitcast float* %98 to <8 x float>*
  %wide.load24.2 = load <8 x float>, <8 x float>* %99, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %100 = getelementptr inbounds float, float* %94, i64 24
  %101 = bitcast float* %100 to <8 x float>*
  %wide.load25.2 = load <8 x float>, <8 x float>* %101, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %102 = fadd <8 x float> %wide.load22.2, %wide.load.2
  %103 = fadd <8 x float> %wide.load23.2, %wide.load19.2
  %104 = fadd <8 x float> %wide.load24.2, %wide.load20.2
  %105 = fadd <8 x float> %wide.load25.2, %wide.load21.2
  %106 = bitcast float* %86 to <8 x float>*
  store <8 x float> %102, <8 x float>* %106, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %107 = bitcast float* %88 to <8 x float>*
  store <8 x float> %103, <8 x float>* %107, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %108 = bitcast float* %90 to <8 x float>*
  store <8 x float> %104, <8 x float>* %108, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %109 = bitcast float* %92 to <8 x float>*
  store <8 x float> %105, <8 x float>* %109, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %110 = shl i64 %2, 40
  %111 = ashr exact i64 %110, 32
  %112 = or i64 %111, 96
  %113 = getelementptr inbounds float, float* %10, i64 %112
  %114 = bitcast float* %113 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %114, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %115 = getelementptr inbounds float, float* %113, i64 8
  %116 = bitcast float* %115 to <8 x float>*
  %wide.load19.3 = load <8 x float>, <8 x float>* %116, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %117 = getelementptr inbounds float, float* %113, i64 16
  %118 = bitcast float* %117 to <8 x float>*
  %wide.load20.3 = load <8 x float>, <8 x float>* %118, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %119 = getelementptr inbounds float, float* %113, i64 24
  %120 = bitcast float* %119 to <8 x float>*
  %wide.load21.3 = load <8 x float>, <8 x float>* %120, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %121 = getelementptr inbounds float, float* %16, i64 %112
  %122 = bitcast float* %121 to <8 x float>*
  %wide.load22.3 = load <8 x float>, <8 x float>* %122, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %123 = getelementptr inbounds float, float* %121, i64 8
  %124 = bitcast float* %123 to <8 x float>*
  %wide.load23.3 = load <8 x float>, <8 x float>* %124, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %125 = getelementptr inbounds float, float* %121, i64 16
  %126 = bitcast float* %125 to <8 x float>*
  %wide.load24.3 = load <8 x float>, <8 x float>* %126, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %127 = getelementptr inbounds float, float* %121, i64 24
  %128 = bitcast float* %127 to <8 x float>*
  %wide.load25.3 = load <8 x float>, <8 x float>* %128, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %129 = fadd <8 x float> %wide.load22.3, %wide.load.3
  %130 = fadd <8 x float> %wide.load23.3, %wide.load19.3
  %131 = fadd <8 x float> %wide.load24.3, %wide.load20.3
  %132 = fadd <8 x float> %wide.load25.3, %wide.load21.3
  %133 = bitcast float* %113 to <8 x float>*
  store <8 x float> %129, <8 x float>* %133, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %134 = bitcast float* %115 to <8 x float>*
  store <8 x float> %130, <8 x float>* %134, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %135 = bitcast float* %117 to <8 x float>*
  store <8 x float> %131, <8 x float>* %135, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %136 = bitcast float* %119 to <8 x float>*
  store <8 x float> %132, <8 x float>* %136, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %137 = shl i64 %2, 40
  %138 = ashr exact i64 %137, 32
  %139 = or i64 %138, 128
  %140 = getelementptr inbounds float, float* %10, i64 %139
  %141 = bitcast float* %140 to <8 x float>*
  %wide.load.4 = load <8 x float>, <8 x float>* %141, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %142 = getelementptr inbounds float, float* %140, i64 8
  %143 = bitcast float* %142 to <8 x float>*
  %wide.load19.4 = load <8 x float>, <8 x float>* %143, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %144 = getelementptr inbounds float, float* %140, i64 16
  %145 = bitcast float* %144 to <8 x float>*
  %wide.load20.4 = load <8 x float>, <8 x float>* %145, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %146 = getelementptr inbounds float, float* %140, i64 24
  %147 = bitcast float* %146 to <8 x float>*
  %wide.load21.4 = load <8 x float>, <8 x float>* %147, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %148 = getelementptr inbounds float, float* %16, i64 %139
  %149 = bitcast float* %148 to <8 x float>*
  %wide.load22.4 = load <8 x float>, <8 x float>* %149, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %150 = getelementptr inbounds float, float* %148, i64 8
  %151 = bitcast float* %150 to <8 x float>*
  %wide.load23.4 = load <8 x float>, <8 x float>* %151, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %152 = getelementptr inbounds float, float* %148, i64 16
  %153 = bitcast float* %152 to <8 x float>*
  %wide.load24.4 = load <8 x float>, <8 x float>* %153, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %154 = getelementptr inbounds float, float* %148, i64 24
  %155 = bitcast float* %154 to <8 x float>*
  %wide.load25.4 = load <8 x float>, <8 x float>* %155, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %156 = fadd <8 x float> %wide.load22.4, %wide.load.4
  %157 = fadd <8 x float> %wide.load23.4, %wide.load19.4
  %158 = fadd <8 x float> %wide.load24.4, %wide.load20.4
  %159 = fadd <8 x float> %wide.load25.4, %wide.load21.4
  %160 = bitcast float* %140 to <8 x float>*
  store <8 x float> %156, <8 x float>* %160, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %161 = bitcast float* %142 to <8 x float>*
  store <8 x float> %157, <8 x float>* %161, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %162 = bitcast float* %144 to <8 x float>*
  store <8 x float> %158, <8 x float>* %162, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %163 = bitcast float* %146 to <8 x float>*
  store <8 x float> %159, <8 x float>* %163, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %164 = shl i64 %2, 40
  %165 = ashr exact i64 %164, 32
  %166 = or i64 %165, 160
  %167 = getelementptr inbounds float, float* %10, i64 %166
  %168 = bitcast float* %167 to <8 x float>*
  %wide.load.5 = load <8 x float>, <8 x float>* %168, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %169 = getelementptr inbounds float, float* %167, i64 8
  %170 = bitcast float* %169 to <8 x float>*
  %wide.load19.5 = load <8 x float>, <8 x float>* %170, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %171 = getelementptr inbounds float, float* %167, i64 16
  %172 = bitcast float* %171 to <8 x float>*
  %wide.load20.5 = load <8 x float>, <8 x float>* %172, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %173 = getelementptr inbounds float, float* %167, i64 24
  %174 = bitcast float* %173 to <8 x float>*
  %wide.load21.5 = load <8 x float>, <8 x float>* %174, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %175 = getelementptr inbounds float, float* %16, i64 %166
  %176 = bitcast float* %175 to <8 x float>*
  %wide.load22.5 = load <8 x float>, <8 x float>* %176, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %177 = getelementptr inbounds float, float* %175, i64 8
  %178 = bitcast float* %177 to <8 x float>*
  %wide.load23.5 = load <8 x float>, <8 x float>* %178, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %179 = getelementptr inbounds float, float* %175, i64 16
  %180 = bitcast float* %179 to <8 x float>*
  %wide.load24.5 = load <8 x float>, <8 x float>* %180, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %181 = getelementptr inbounds float, float* %175, i64 24
  %182 = bitcast float* %181 to <8 x float>*
  %wide.load25.5 = load <8 x float>, <8 x float>* %182, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %183 = fadd <8 x float> %wide.load22.5, %wide.load.5
  %184 = fadd <8 x float> %wide.load23.5, %wide.load19.5
  %185 = fadd <8 x float> %wide.load24.5, %wide.load20.5
  %186 = fadd <8 x float> %wide.load25.5, %wide.load21.5
  %187 = bitcast float* %167 to <8 x float>*
  store <8 x float> %183, <8 x float>* %187, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %188 = bitcast float* %169 to <8 x float>*
  store <8 x float> %184, <8 x float>* %188, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %189 = bitcast float* %171 to <8 x float>*
  store <8 x float> %185, <8 x float>* %189, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %190 = bitcast float* %173 to <8 x float>*
  store <8 x float> %186, <8 x float>* %190, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %191 = shl i64 %2, 40
  %192 = ashr exact i64 %191, 32
  %193 = or i64 %192, 192
  %194 = getelementptr inbounds float, float* %10, i64 %193
  %195 = bitcast float* %194 to <8 x float>*
  %wide.load.6 = load <8 x float>, <8 x float>* %195, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %196 = getelementptr inbounds float, float* %194, i64 8
  %197 = bitcast float* %196 to <8 x float>*
  %wide.load19.6 = load <8 x float>, <8 x float>* %197, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %198 = getelementptr inbounds float, float* %194, i64 16
  %199 = bitcast float* %198 to <8 x float>*
  %wide.load20.6 = load <8 x float>, <8 x float>* %199, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %200 = getelementptr inbounds float, float* %194, i64 24
  %201 = bitcast float* %200 to <8 x float>*
  %wide.load21.6 = load <8 x float>, <8 x float>* %201, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %202 = getelementptr inbounds float, float* %16, i64 %193
  %203 = bitcast float* %202 to <8 x float>*
  %wide.load22.6 = load <8 x float>, <8 x float>* %203, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %204 = getelementptr inbounds float, float* %202, i64 8
  %205 = bitcast float* %204 to <8 x float>*
  %wide.load23.6 = load <8 x float>, <8 x float>* %205, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %206 = getelementptr inbounds float, float* %202, i64 16
  %207 = bitcast float* %206 to <8 x float>*
  %wide.load24.6 = load <8 x float>, <8 x float>* %207, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %208 = getelementptr inbounds float, float* %202, i64 24
  %209 = bitcast float* %208 to <8 x float>*
  %wide.load25.6 = load <8 x float>, <8 x float>* %209, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %210 = fadd <8 x float> %wide.load22.6, %wide.load.6
  %211 = fadd <8 x float> %wide.load23.6, %wide.load19.6
  %212 = fadd <8 x float> %wide.load24.6, %wide.load20.6
  %213 = fadd <8 x float> %wide.load25.6, %wide.load21.6
  %214 = bitcast float* %194 to <8 x float>*
  store <8 x float> %210, <8 x float>* %214, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %215 = bitcast float* %196 to <8 x float>*
  store <8 x float> %211, <8 x float>* %215, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %216 = bitcast float* %198 to <8 x float>*
  store <8 x float> %212, <8 x float>* %216, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %217 = bitcast float* %200 to <8 x float>*
  store <8 x float> %213, <8 x float>* %217, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %218 = shl i64 %2, 40
  %219 = ashr exact i64 %218, 32
  %220 = or i64 %219, 224
  %221 = getelementptr inbounds float, float* %10, i64 %220
  %222 = bitcast float* %221 to <8 x float>*
  %wide.load.7 = load <8 x float>, <8 x float>* %222, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %223 = getelementptr inbounds float, float* %221, i64 8
  %224 = bitcast float* %223 to <8 x float>*
  %wide.load19.7 = load <8 x float>, <8 x float>* %224, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %225 = getelementptr inbounds float, float* %221, i64 16
  %226 = bitcast float* %225 to <8 x float>*
  %wide.load20.7 = load <8 x float>, <8 x float>* %226, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %227 = getelementptr inbounds float, float* %221, i64 24
  %228 = bitcast float* %227 to <8 x float>*
  %wide.load21.7 = load <8 x float>, <8 x float>* %228, align 4, !tbaa !12, !alias.scope !35, !noalias !38
  %229 = getelementptr inbounds float, float* %16, i64 %220
  %230 = bitcast float* %229 to <8 x float>*
  %wide.load22.7 = load <8 x float>, <8 x float>* %230, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %231 = getelementptr inbounds float, float* %229, i64 8
  %232 = bitcast float* %231 to <8 x float>*
  %wide.load23.7 = load <8 x float>, <8 x float>* %232, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %233 = getelementptr inbounds float, float* %229, i64 16
  %234 = bitcast float* %233 to <8 x float>*
  %wide.load24.7 = load <8 x float>, <8 x float>* %234, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %235 = getelementptr inbounds float, float* %229, i64 24
  %236 = bitcast float* %235 to <8 x float>*
  %wide.load25.7 = load <8 x float>, <8 x float>* %236, align 4, !tbaa !12, !alias.scope !38, !llvm.access.group !21
  %237 = fadd <8 x float> %wide.load22.7, %wide.load.7
  %238 = fadd <8 x float> %wide.load23.7, %wide.load19.7
  %239 = fadd <8 x float> %wide.load24.7, %wide.load20.7
  %240 = fadd <8 x float> %wide.load25.7, %wide.load21.7
  %241 = bitcast float* %221 to <8 x float>*
  store <8 x float> %237, <8 x float>* %241, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %242 = bitcast float* %223 to <8 x float>*
  store <8 x float> %238, <8 x float>* %242, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %243 = bitcast float* %225 to <8 x float>*
  store <8 x float> %239, <8 x float>* %243, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  %244 = bitcast float* %227 to <8 x float>*
  store <8 x float> %240, <8 x float>* %244, align 4, !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !21
  br label %_pocl_kernel_gemver_kernel2.exit

pregion_for_entry.entry.i.i.us:                   ; preds = %for.end.loopexit.i.i.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %268, %for.end.loopexit.i.i.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %sext23.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom6.i.i.us = ashr exact i64 %sext23.i.i.us, 32
  %arrayidx7.i.i.us = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us
  %.pre.i.i2.us7 = load float, float* %arrayidx7.i.i.us, align 4, !tbaa !12
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %pregion_for_entry.entry.i.i.us
  %indvars.iv.next.i.i5.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us ]
  %245 = phi float [ %250, %for.body.i.i.us ], [ %.pre.i.i2.us7, %pregion_for_entry.entry.i.i.us ]
  %246 = mul nuw nsw i64 %indvars.iv.next.i.i5.us, %25
  %247 = add nsw i64 %246, %idxprom6.i.i.us
  %arrayidx.i.i.us = getelementptr inbounds float, float* %7, i64 %247
  %248 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %mul2.i.i.us = fmul float %20, %248
  %arrayidx4.i.i.us = getelementptr inbounds float, float* %13, i64 %indvars.iv.next.i.i5.us
  %249 = load float, float* %arrayidx4.i.i.us, align 4, !tbaa !12
  %250 = tail call float @llvm.fmuladd.f32(float %mul2.i.i.us, float %249, float %245) #2
  store float %250, float* %arrayidx7.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i5.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %25
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !23

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %.lcssa = phi float [ %250, %for.body.i.i.us ]
  %arrayidx9.i.i.us = getelementptr inbounds float, float* %16, i64 %idxprom6.i.i.us
  %251 = load float, float* %arrayidx9.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.i.us = fadd float %.lcssa, %251
  store float %add12.i.i.us, float* %arrayidx7.i.i.us, align 4, !tbaa !12, !llvm.access.group !21
  %252 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1 = add nuw nsw i64 %252, %mul.i.i.i
  %sext23.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom6.i.i.us.1 = ashr exact i64 %sext23.i.i.us.1, 32
  %arrayidx7.i.i.us.1 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.us.1
  %.pre.i.i2.us7.1 = load float, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12
  br label %for.body.i.i.us.1

pregion_for_entry.entry.i.i:                      ; preds = %pregion_for_entry.entry.i.i, %pregion_for_entry.entry.i.i.preheader
  %_local_id_x.i.0 = phi i64 [ %260, %pregion_for_entry.entry.i.i ], [ 0, %pregion_for_entry.entry.i.i.preheader ]
  %add1.i.i.i = add nuw nsw i64 %_local_id_x.i.0, %mul.i.i.i
  %sext23.i.i = shl i64 %add1.i.i.i, 32
  %idxprom6.i.i = ashr exact i64 %sext23.i.i, 32
  %arrayidx7.i.i = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i
  %.pre1.i.i16 = load float, float* %arrayidx7.i.i, align 4, !tbaa !12
  %arrayidx9.i.i = getelementptr inbounds float, float* %16, i64 %idxprom6.i.i
  %253 = load float, float* %arrayidx9.i.i, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.i = fadd float %253, %.pre1.i.i16
  store float %add12.i.i, float* %arrayidx7.i.i, align 4, !tbaa !12, !llvm.access.group !21
  %254 = or i64 %_local_id_x.i.0, 1
  %add1.i.i.i.1 = add nuw nsw i64 %254, %mul.i.i.i
  %sext23.i.i.1 = shl i64 %add1.i.i.i.1, 32
  %idxprom6.i.i.1 = ashr exact i64 %sext23.i.i.1, 32
  %arrayidx7.i.i.1 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.1
  %.pre1.i.i16.1 = load float, float* %arrayidx7.i.i.1, align 4, !tbaa !12
  %arrayidx9.i.i.1 = getelementptr inbounds float, float* %16, i64 %idxprom6.i.i.1
  %255 = load float, float* %arrayidx9.i.i.1, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.i.1 = fadd float %255, %.pre1.i.i16.1
  store float %add12.i.i.1, float* %arrayidx7.i.i.1, align 4, !tbaa !12, !llvm.access.group !21
  %256 = or i64 %_local_id_x.i.0, 2
  %add1.i.i.i.2 = add nuw nsw i64 %256, %mul.i.i.i
  %sext23.i.i.2 = shl i64 %add1.i.i.i.2, 32
  %idxprom6.i.i.2 = ashr exact i64 %sext23.i.i.2, 32
  %arrayidx7.i.i.2 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.2
  %.pre1.i.i16.2 = load float, float* %arrayidx7.i.i.2, align 4, !tbaa !12
  %arrayidx9.i.i.2 = getelementptr inbounds float, float* %16, i64 %idxprom6.i.i.2
  %257 = load float, float* %arrayidx9.i.i.2, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.i.2 = fadd float %257, %.pre1.i.i16.2
  store float %add12.i.i.2, float* %arrayidx7.i.i.2, align 4, !tbaa !12, !llvm.access.group !21
  %258 = or i64 %_local_id_x.i.0, 3
  %add1.i.i.i.3 = add nuw nsw i64 %258, %mul.i.i.i
  %sext23.i.i.3 = shl i64 %add1.i.i.i.3, 32
  %idxprom6.i.i.3 = ashr exact i64 %sext23.i.i.3, 32
  %arrayidx7.i.i.3 = getelementptr inbounds float, float* %10, i64 %idxprom6.i.i.3
  %.pre1.i.i16.3 = load float, float* %arrayidx7.i.i.3, align 4, !tbaa !12
  %arrayidx9.i.i.3 = getelementptr inbounds float, float* %16, i64 %idxprom6.i.i.3
  %259 = load float, float* %arrayidx9.i.i.3, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.i.3 = fadd float %259, %.pre1.i.i16.3
  store float %add12.i.i.3, float* %arrayidx7.i.i.3, align 4, !tbaa !12, !llvm.access.group !21
  %260 = add nuw nsw i64 %_local_id_x.i.0, 4
  %exitcond9.not.3 = icmp eq i64 %260, 256
  br i1 %exitcond9.not.3, label %_pocl_kernel_gemver_kernel2.exit.loopexit29, label %pregion_for_entry.entry.i.i, !llvm.loop !40

_pocl_kernel_gemver_kernel2.exit.loopexit:        ; preds = %for.end.loopexit.i.i.us.1
  br label %_pocl_kernel_gemver_kernel2.exit

_pocl_kernel_gemver_kernel2.exit.loopexit29:      ; preds = %pregion_for_entry.entry.i.i
  br label %_pocl_kernel_gemver_kernel2.exit

_pocl_kernel_gemver_kernel2.exit:                 ; preds = %_pocl_kernel_gemver_kernel2.exit.loopexit29, %_pocl_kernel_gemver_kernel2.exit.loopexit, %vector.body
  ret void

for.body.i.i.us.1:                                ; preds = %for.body.i.i.us.1, %for.end.loopexit.i.i.us
  %indvars.iv.next.i.i5.us.1 = phi i64 [ %indvars.iv.next.i.i.us.1, %for.body.i.i.us.1 ], [ 0, %for.end.loopexit.i.i.us ]
  %261 = phi float [ %266, %for.body.i.i.us.1 ], [ %.pre.i.i2.us7.1, %for.end.loopexit.i.i.us ]
  %262 = mul nuw nsw i64 %indvars.iv.next.i.i5.us.1, %25
  %263 = add nsw i64 %262, %idxprom6.i.i.us.1
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %7, i64 %263
  %264 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %mul2.i.i.us.1 = fmul float %20, %264
  %arrayidx4.i.i.us.1 = getelementptr inbounds float, float* %13, i64 %indvars.iv.next.i.i5.us.1
  %265 = load float, float* %arrayidx4.i.i.us.1, align 4, !tbaa !12
  %266 = tail call float @llvm.fmuladd.f32(float %mul2.i.i.us.1, float %265, float %261) #2
  store float %266, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  %indvars.iv.next.i.i.us.1 = add nuw nsw i64 %indvars.iv.next.i.i5.us.1, 1
  %exitcond.not.i.i.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.1, %25
  br i1 %exitcond.not.i.i.us.1, label %for.end.loopexit.i.i.us.1, label %for.body.i.i.us.1, !llvm.loop !23

for.end.loopexit.i.i.us.1:                        ; preds = %for.body.i.i.us.1
  %.lcssa30 = phi float [ %266, %for.body.i.i.us.1 ]
  %arrayidx9.i.i.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom6.i.i.us.1
  %267 = load float, float* %arrayidx9.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  %add12.i.i.us.1 = fadd float %.lcssa30, %267
  store float %add12.i.i.us.1, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !21
  %268 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %268, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_gemver_kernel2.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !28
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
!5 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"float*", !"float", !"int"}
!9 = !{!"", !"", !"", !"", !"", !""}
!10 = !{!"A", !"X", !"Y", !"Z", !"beta", !"n"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = !{!22}
!22 = distinct !{}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !26, !27}
!26 = !{!"llvm.loop.parallel_accesses", !22}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = distinct !{!28, !26}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !26, !27}
!35 = !{!36}
!36 = distinct !{!36, !37}
!37 = distinct !{!37, !"LVerDomain"}
!38 = !{!39}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !26, !27}
