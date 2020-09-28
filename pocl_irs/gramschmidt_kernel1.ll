; ModuleID = './KJ/PLAOGDMDEAHKMIGEICILPNJNPJGMEGIKFDLHM/gramschmidt_kernel1/256-1-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_gramschmidt_kernel1(float* nocapture readonly %0, float* nocapture %1, float* nocapture readnone %2, i32 %3, i32 %4, i32 %5, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %6, i64 %7, i64 %8, i64 %9) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %7, 8
  %cmp227.i = icmp sgt i32 %4, 0
  %11 = sext i32 %5 to i64
  %12 = sext i32 %3 to i64
  %wide.trip.count.i = zext i32 %4 to i64
  %mul10.i = mul nsw i32 %5, %3
  %add11.i = add nsw i32 %mul10.i, %3
  %idxprom12.i = sext i32 %add11.i to i64
  %arrayidx13.i = getelementptr inbounds float, float* %1, i64 %idxprom12.i
  br i1 %cmp227.i, label %pregion_for_entry.entry.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.us.preheader:           ; preds = %10
  br label %pregion_for_entry.entry.i.us

vector.ph:                                        ; preds = %10
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %62, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %62 ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %62 ]
  %13 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %14 = trunc <8 x i64> %13 to <8 x i32>
  %15 = icmp eq <8 x i32> %14, zeroinitializer
  %16 = extractelement <8 x i1> %15, i32 0
  %17 = extractelement <8 x i1> %15, i32 1
  %18 = or i1 %16, %17
  %19 = extractelement <8 x i1> %15, i32 2
  %20 = or i1 %18, %19
  %21 = extractelement <8 x i1> %15, i32 3
  %22 = or i1 %20, %21
  %23 = extractelement <8 x i1> %15, i32 4
  %24 = or i1 %22, %23
  %25 = extractelement <8 x i1> %15, i32 5
  %26 = or i1 %24, %25
  %27 = extractelement <8 x i1> %15, i32 6
  %28 = or i1 %26, %27
  %29 = extractelement <8 x i1> %15, i32 7
  %30 = or i1 %28, %29
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %31 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %32 = trunc <8 x i64> %31 to <8 x i32>
  %33 = icmp eq <8 x i32> %32, zeroinitializer
  %34 = extractelement <8 x i1> %33, i32 0
  %35 = extractelement <8 x i1> %33, i32 1
  %36 = or i1 %34, %35
  %37 = extractelement <8 x i1> %33, i32 2
  %38 = or i1 %36, %37
  %39 = extractelement <8 x i1> %33, i32 3
  %40 = or i1 %38, %39
  %41 = extractelement <8 x i1> %33, i32 4
  %42 = or i1 %40, %41
  %43 = extractelement <8 x i1> %33, i32 5
  %44 = or i1 %42, %43
  %45 = extractelement <8 x i1> %33, i32 6
  %46 = or i1 %44, %45
  %47 = extractelement <8 x i1> %33, i32 7
  %48 = or i1 %46, %47
  %49 = xor i1 %30, true
  %50 = xor i1 %48, true
  %51 = xor i1 %49, true
  %52 = xor i1 %50, true
  %53 = or i1 %51, %52
  br i1 %53, label %61, label %62

pregion_for_entry.entry.i.us:                     ; preds = %if.end.r_exit.i.us.1, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %60, %if.end.r_exit.i.us.1 ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp.i.us = icmp eq i32 %conv.i.us, 0
  br i1 %cmp.i.us, label %for.body.i.us.preheader, label %if.end.r_exit.i.us.1

for.body.i.us.preheader:                          ; preds = %pregion_for_entry.entry.i.us
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %for.body.i.us.preheader
  %54 = phi float [ %58, %for.body.i.us ], [ 0.000000e+00, %for.body.i.us.preheader ]
  %indvars.iv.next.i1.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %for.body.i.us.preheader ]
  %55 = mul nsw i64 %indvars.iv.next.i1.us, %11
  %56 = add nsw i64 %55, %12
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %56
  %57 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %58 = tail call float @llvm.fmuladd.f32(float %57, float %57, float %54) #2
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.next.i1.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %for.end.loopexit.i.us, label %for.body.i.us, !llvm.loop !16

for.end.loopexit.i.us:                            ; preds = %for.body.i.us
  %.lcssa = phi float [ %58, %for.body.i.us ]
  %59 = tail call float @llvm.sqrt.f32(float %.lcssa) #2
  store float %59, float* %arrayidx13.i, align 4, !tbaa !12, !llvm.access.group !18
  br label %if.end.r_exit.i.us.1

gramschmidt_kernel1.exit.loopexit:                ; preds = %if.end.r_exit.i.us.1
  br label %gramschmidt_kernel1.exit

gramschmidt_kernel1.exit.loopexit23:              ; preds = %62
  br label %gramschmidt_kernel1.exit

gramschmidt_kernel1.exit:                         ; preds = %gramschmidt_kernel1.exit.loopexit23, %gramschmidt_kernel1.exit.loopexit
  ret void

if.end.r_exit.i.us.1:                             ; preds = %for.end.loopexit.i.us, %pregion_for_entry.entry.i.us
  %60 = add nuw nsw i64 %_local_id_x.0.us, 2
  %exitcond.not.1 = icmp eq i64 %60, 256
  br i1 %exitcond.not.1, label %gramschmidt_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !20

61:                                               ; preds = %vector.body
  store float 0.000000e+00, float* %arrayidx13.i, align 4, !tbaa !12
  br label %62

62:                                               ; preds = %61, %vector.body
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %63 = icmp eq i64 %index.next.1, 256
  br i1 %63, label %gramschmidt_kernel1.exit.loopexit23, label %vector.body, !llvm.loop !22
}

; Function Attrs: nounwind
define void @_pocl_kernel_gramschmidt_kernel1_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float***
  %7 = load float**, float*** %6, align 8
  %8 = load float*, float** %7, align 8
  %9 = getelementptr i8*, i8** %0, i64 1
  %10 = bitcast i8** %9 to float***
  %11 = load float**, float*** %10, align 8
  %12 = load float*, float** %11, align 8
  %13 = getelementptr i8*, i8** %0, i64 3
  %14 = bitcast i8** %13 to i32**
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr i8*, i8** %0, i64 4
  %18 = bitcast i8** %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 5
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp227.i.i = icmp sgt i32 %20, 0
  %25 = sext i32 %24 to i64
  %26 = sext i32 %16 to i64
  %wide.trip.count.i.i = zext i32 %20 to i64
  %mul10.i.i = mul nsw i32 %24, %16
  %add11.i.i = add nsw i32 %mul10.i.i, %16
  %idxprom12.i.i = sext i32 %add11.i.i to i64
  %arrayidx13.i.i = getelementptr inbounds float, float* %12, i64 %idxprom12.i.i
  br i1 %cmp227.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.ph:                                        ; preds = %5
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %76, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %76 ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %76 ]
  %27 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %28 = trunc <8 x i64> %27 to <8 x i32>
  %29 = icmp eq <8 x i32> %28, zeroinitializer
  %30 = extractelement <8 x i1> %29, i32 0
  %31 = extractelement <8 x i1> %29, i32 1
  %32 = or i1 %30, %31
  %33 = extractelement <8 x i1> %29, i32 2
  %34 = or i1 %32, %33
  %35 = extractelement <8 x i1> %29, i32 3
  %36 = or i1 %34, %35
  %37 = extractelement <8 x i1> %29, i32 4
  %38 = or i1 %36, %37
  %39 = extractelement <8 x i1> %29, i32 5
  %40 = or i1 %38, %39
  %41 = extractelement <8 x i1> %29, i32 6
  %42 = or i1 %40, %41
  %43 = extractelement <8 x i1> %29, i32 7
  %44 = or i1 %42, %43
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %45 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %46 = trunc <8 x i64> %45 to <8 x i32>
  %47 = icmp eq <8 x i32> %46, zeroinitializer
  %48 = extractelement <8 x i1> %47, i32 0
  %49 = extractelement <8 x i1> %47, i32 1
  %50 = or i1 %48, %49
  %51 = extractelement <8 x i1> %47, i32 2
  %52 = or i1 %50, %51
  %53 = extractelement <8 x i1> %47, i32 3
  %54 = or i1 %52, %53
  %55 = extractelement <8 x i1> %47, i32 4
  %56 = or i1 %54, %55
  %57 = extractelement <8 x i1> %47, i32 5
  %58 = or i1 %56, %57
  %59 = extractelement <8 x i1> %47, i32 6
  %60 = or i1 %58, %59
  %61 = extractelement <8 x i1> %47, i32 7
  %62 = or i1 %60, %61
  %63 = xor i1 %44, true
  %64 = xor i1 %62, true
  %65 = xor i1 %63, true
  %66 = xor i1 %64, true
  %67 = or i1 %65, %66
  br i1 %67, label %75, label %76

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %74, %if.end.r_exit.i.i.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp eq i32 %conv.i.i.us, 0
  br i1 %cmp.i.i.us, label %for.body.i.i.us.preheader, label %if.end.r_exit.i.i.us.1

for.body.i.i.us.preheader:                        ; preds = %pregion_for_entry.entry.i.i.us
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %for.body.i.i.us.preheader
  %68 = phi float [ %72, %for.body.i.i.us ], [ 0.000000e+00, %for.body.i.i.us.preheader ]
  %indvars.iv.next.i.i1.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %for.body.i.i.us.preheader ]
  %69 = mul nsw i64 %indvars.iv.next.i.i1.us, %25
  %70 = add nsw i64 %69, %26
  %arrayidx.i.i.us = getelementptr inbounds float, float* %8, i64 %70
  %71 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %72 = tail call float @llvm.fmuladd.f32(float %71, float %71, float %68) #2
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i1.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !16

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %.lcssa = phi float [ %72, %for.body.i.i.us ]
  %73 = tail call float @llvm.sqrt.f32(float %.lcssa) #2
  store float %73, float* %arrayidx13.i.i, align 4, !tbaa !12, !llvm.access.group !18
  br label %if.end.r_exit.i.i.us.1

_pocl_kernel_gramschmidt_kernel1.exit.loopexit:   ; preds = %if.end.r_exit.i.i.us.1
  br label %_pocl_kernel_gramschmidt_kernel1.exit

_pocl_kernel_gramschmidt_kernel1.exit.loopexit23: ; preds = %76
  br label %_pocl_kernel_gramschmidt_kernel1.exit

_pocl_kernel_gramschmidt_kernel1.exit:            ; preds = %_pocl_kernel_gramschmidt_kernel1.exit.loopexit23, %_pocl_kernel_gramschmidt_kernel1.exit.loopexit
  ret void

if.end.r_exit.i.i.us.1:                           ; preds = %for.end.loopexit.i.i.us, %pregion_for_entry.entry.i.i.us
  %74 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %74, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_gramschmidt_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !20

75:                                               ; preds = %vector.body
  store float 0.000000e+00, float* %arrayidx13.i.i, align 4, !tbaa !12
  br label %76

76:                                               ; preds = %75, %vector.body
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %77 = icmp eq i64 %index.next.1, 256
  br i1 %77, label %_pocl_kernel_gramschmidt_kernel1.exit.loopexit23, label %vector.body, !llvm.loop !24
}

; Function Attrs: nounwind
define void @_pocl_kernel_gramschmidt_kernel1_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 3
  %12 = bitcast i8** %11 to i32**
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr i8*, i8** %0, i64 4
  %16 = bitcast i8** %15 to i32**
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr i8*, i8** %0, i64 5
  %20 = bitcast i8** %19 to i32**
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %mul.i.i.i = shl i64 %2, 8
  %cmp227.i.i = icmp sgt i32 %18, 0
  %23 = sext i32 %22 to i64
  %24 = sext i32 %14 to i64
  %wide.trip.count.i.i = zext i32 %18 to i64
  %mul10.i.i = mul nsw i32 %22, %14
  %add11.i.i = add nsw i32 %mul10.i.i, %14
  %idxprom12.i.i = sext i32 %add11.i.i to i64
  %arrayidx13.i.i = getelementptr inbounds float, float* %10, i64 %idxprom12.i.i
  br i1 %cmp227.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %5
  br label %pregion_for_entry.entry.i.i.us

vector.ph:                                        ; preds = %5
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %74, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %74 ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.1, %74 ]
  %25 = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %26 = trunc <8 x i64> %25 to <8 x i32>
  %27 = icmp eq <8 x i32> %26, zeroinitializer
  %28 = extractelement <8 x i1> %27, i32 0
  %29 = extractelement <8 x i1> %27, i32 1
  %30 = or i1 %28, %29
  %31 = extractelement <8 x i1> %27, i32 2
  %32 = or i1 %30, %31
  %33 = extractelement <8 x i1> %27, i32 3
  %34 = or i1 %32, %33
  %35 = extractelement <8 x i1> %27, i32 4
  %36 = or i1 %34, %35
  %37 = extractelement <8 x i1> %27, i32 5
  %38 = or i1 %36, %37
  %39 = extractelement <8 x i1> %27, i32 6
  %40 = or i1 %38, %39
  %41 = extractelement <8 x i1> %27, i32 7
  %42 = or i1 %40, %41
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %43 = add nuw nsw <8 x i64> %vec.ind.next, %broadcast.splat
  %44 = trunc <8 x i64> %43 to <8 x i32>
  %45 = icmp eq <8 x i32> %44, zeroinitializer
  %46 = extractelement <8 x i1> %45, i32 0
  %47 = extractelement <8 x i1> %45, i32 1
  %48 = or i1 %46, %47
  %49 = extractelement <8 x i1> %45, i32 2
  %50 = or i1 %48, %49
  %51 = extractelement <8 x i1> %45, i32 3
  %52 = or i1 %50, %51
  %53 = extractelement <8 x i1> %45, i32 4
  %54 = or i1 %52, %53
  %55 = extractelement <8 x i1> %45, i32 5
  %56 = or i1 %54, %55
  %57 = extractelement <8 x i1> %45, i32 6
  %58 = or i1 %56, %57
  %59 = extractelement <8 x i1> %45, i32 7
  %60 = or i1 %58, %59
  %61 = xor i1 %42, true
  %62 = xor i1 %60, true
  %63 = xor i1 %61, true
  %64 = xor i1 %62, true
  %65 = or i1 %63, %64
  br i1 %65, label %73, label %74

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us.1, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %72, %if.end.r_exit.i.i.us.1 ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp.i.i.us = icmp eq i32 %conv.i.i.us, 0
  br i1 %cmp.i.i.us, label %for.body.i.i.us.preheader, label %if.end.r_exit.i.i.us.1

for.body.i.i.us.preheader:                        ; preds = %pregion_for_entry.entry.i.i.us
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us, %for.body.i.i.us.preheader
  %66 = phi float [ %70, %for.body.i.i.us ], [ 0.000000e+00, %for.body.i.i.us.preheader ]
  %indvars.iv.next.i.i1.us = phi i64 [ %indvars.iv.next.i.i.us, %for.body.i.i.us ], [ 0, %for.body.i.i.us.preheader ]
  %67 = mul nsw i64 %indvars.iv.next.i.i1.us, %23
  %68 = add nsw i64 %67, %24
  %arrayidx.i.i.us = getelementptr inbounds float, float* %7, i64 %68
  %69 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %70 = tail call float @llvm.fmuladd.f32(float %69, float %69, float %66) #2
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i.i1.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %for.end.loopexit.i.i.us, label %for.body.i.i.us, !llvm.loop !16

for.end.loopexit.i.i.us:                          ; preds = %for.body.i.i.us
  %.lcssa = phi float [ %70, %for.body.i.i.us ]
  %71 = tail call float @llvm.sqrt.f32(float %.lcssa) #2
  store float %71, float* %arrayidx13.i.i, align 4, !tbaa !12, !llvm.access.group !18
  br label %if.end.r_exit.i.i.us.1

_pocl_kernel_gramschmidt_kernel1.exit.loopexit:   ; preds = %if.end.r_exit.i.i.us.1
  br label %_pocl_kernel_gramschmidt_kernel1.exit

_pocl_kernel_gramschmidt_kernel1.exit.loopexit23: ; preds = %74
  br label %_pocl_kernel_gramschmidt_kernel1.exit

_pocl_kernel_gramschmidt_kernel1.exit:            ; preds = %_pocl_kernel_gramschmidt_kernel1.exit.loopexit23, %_pocl_kernel_gramschmidt_kernel1.exit.loopexit
  ret void

if.end.r_exit.i.i.us.1:                           ; preds = %for.end.loopexit.i.i.us, %pregion_for_entry.entry.i.i.us
  %72 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %72, 256
  br i1 %exitcond.not.1, label %_pocl_kernel_gramschmidt_kernel1.exit.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !20

73:                                               ; preds = %vector.body
  store float 0.000000e+00, float* %arrayidx13.i.i, align 4, !tbaa !12
  br label %74

74:                                               ; preds = %73, %vector.body
  %index.next.1 = add nuw nsw i64 %index, 16
  %vec.ind.next.1 = add <8 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %75 = icmp eq i64 %index.next.1, 256
  br i1 %75, label %_pocl_kernel_gramschmidt_kernel1.exit.loopexit23, label %vector.body, !llvm.loop !25
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
!5 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"int", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !"", !""}
!10 = !{!"a", !"r", !"q", !"k", !"ni", !"nj"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!19}
!19 = distinct !{}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.parallel_accesses", !19}
!22 = distinct !{!22, !21, !23}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = distinct !{!24, !21, !23}
!25 = distinct !{!25, !21, !23}
